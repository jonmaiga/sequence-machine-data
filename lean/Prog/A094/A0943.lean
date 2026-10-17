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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B002.C004
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A094301: a(0)=0, a(1)=1, a(2)=2; for n>2, a(n) = a(n-1) - a(n-2) + a(n-3)^2.

The programs for A094301, there is no canonical definition to state claims against.
-/

/-! ## A094301.P17658520927229478817

`a(n-1)+a(n-3)²-a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A094301.P17658520927229478817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + (a (n - 3) ^ 2 - a (n - 2))

end

end A094301.P17658520927229478817

/-! ## A094301.P3350454572256004719

`a(n-1)-(a(n-2)-a(n-3)²)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A094301.P3350454572256004719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 3) ^ 2)

end

end A094301.P3350454572256004719

/-!
# A094302: a(1) = 1; if n > a(n-1) then a(n) = n*a(n-1) else a(n) = least integer multiple of a(n-1)/n.

The programs for A094302, there is no canonical definition to state claims against.
-/

/-! ## A094302.P4567892587377816722

`gcd((16-A322347(2*n+3))!, A055773(n+1))`
-/

namespace A094302.P4567892587377816722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (16 - A322347 (2 * n + 3)).toNat : ℤ) (A055773 (n + 1))

end

end A094302.P4567892587377816722

/-! ## A094302.P6481968325224493374

`A055773(n+1)/A280506(A229888(n+2))`
-/

namespace A094302.P6481968325224493374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055773 (n + 1) : ℚ) / (A280506 (A229888 (n + 2)).toNat : ℚ)

end

end A094302.P6481968325224493374

/-! ## A094302.P17914492070297401394

`∏{p}[A055773(n+1)², #]`
-/

namespace A094302.P17914492070297401394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A094302.P17914492070297401394

/-! ## A094302.P12706304989523254113

`A055773(A084193(∑[n]))`
-/

namespace A094302.P12706304989523254113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A094302.P12706304989523254113

/-! ## A094302.P2488920224924170274

`A033862(A055773(n+1))`
-/

namespace A094302.P2488920224924170274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A055773 (n + 1)).toNat

end

end A094302.P2488920224924170274

/-!
# A094303: a(1) = 1, a(2) = 2, and a(n+1) = a(n) * sum of all previous terms up to a(n-1) for n >= 2.

The programs for A094303, there is no canonical definition to state claims against.
-/

/-! ## A094303.P9637443891655814759

`(a(n-2)+a(n-1)/a(n-2))*a(n-1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A094303.P9637443891655814759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  (a (n - 2) + a (n - 1) / a (n - 2)) * a (n - 1)

end

end A094303.P9637443891655814759

/-! ## A094303.P15413638391609445694

`A064847(char[1]+1+n)`
-/

namespace A094303.P15413638391609445694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064847 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A094303.P15413638391609445694

/-! ## A094303.P8620500800859977993

`char[1]+Δ[A003686(n+1)]`
-/

namespace A094303.P8620500800859977993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003686 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A094303.P8620500800859977993

/-! ## A094303.P9248896789100076600

`a(n-1)*A003686(n)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A094303.P9248896789100076600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) * A003686 n

end

end A094303.P9248896789100076600

/-! ## A094303.P13138612040405550623

`lcm(A000034(n), A064847(n+1))`
-/

namespace A094303.P13138612040405550623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A064847 (n + 1))

end

end A094303.P13138612040405550623

/-!
# A094304: Sum of all possible sums formed from all but one of the previous terms, starting 1.

The programs for A094304, there is no canonical definition to state claims against.
-/

/-! ## A094304.P2399471918961940216

`abs((1-n)*abs(1-n)!)`
-/

namespace A094304.P2399471918961940216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((1 - (n : ℤ)) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ))|

end

end A094304.P2399471918961940216

/-! ## A094304.P16010566804743303635

`Δ[abs(1-n)!-floor(acot(n))]`
-/

namespace A094304.P16010566804743303635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094304.P16010566804743303635

/-! ## A094304.P18060399888123495950

`Δ[(n-1)*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A094304.P18060399888123495950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094304.P18060399888123495950

/-! ## A094304.P2964150587567891681

`(n-1)*∏[n-(char[1]+1)]`
-/

namespace A094304.P2964150587567891681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A094304.P2964150587567891681

/-! ## A094304.P16882367835019348323

`Δ[abs(1-n)!-C(2, n+2)]`
-/

namespace A094304.P16882367835019348323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094304.P16882367835019348323

/-! ## A094304.P6175244317243192868

`Δ[(or(-1, a(n-1))+n)!]` with `a(0)=0`
-/

namespace A094304.P6175244317243192868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.factorial (Int.lor (-1) (f1 (n - 1) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094304.P6175244317243192868

/-! ## A094304.P10917254345399302808

`Δ[(n-and(1, a(n-1))!)!]` with `a(0)=0`
-/

namespace A094304.P10917254345399302808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.factorial ((n : ℤ) - (Nat.factorial (Nat.land 1 (f1 (n - 1))) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094304.P10917254345399302808

/-! ## A094304.P12891619699791801704

`(n-2)!+n*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A094304.P12891619699791801704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.factorial ((n : ℤ) - 2).toNat + n * a (n - 1)

end

end A094304.P12891619699791801704

/-! ## A094304.P61262844073374232

`Δ[((n-1)!/a(n-1))!]` with `a(0)=0, a(1)=1`
-/

namespace A094304.P61262844073374232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.factorial (SequenceMachineLib.roundAway ((Nat.factorial ((n : ℤ) - 1).toNat : ℚ) / (f1 (n - 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094304.P61262844073374232

/-! ## A094304.P3305331825534011611

`n*a(n-1)-a(n-1)/(2-n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A094304.P3305331825534011611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (n : ℚ) * a (n - 1) - a (n - 1) / (2 - (n : ℤ) : ℚ)

end

end A094304.P3305331825534011611

/-!
# A094305: Triangle read by rows: T(n,k) = ((n+1)(n+2)/2) * binomial(n,k) (0 <= k <= n).

The programs for A094305, the canonical program `A094305.P14716528496778575982` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094305 has offset 0).

The definition of A094305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094305.P2268916545311492386

`A140880(n)/2`
-/

namespace A094305.P2268916545311492386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140880 n : ℚ) / 2

end

end A094305.P2268916545311492386

namespace A094305

/-- `A140880(n)/2` -/
def P2268916545311492386.Spec : Prop :=
  ∀ n, P2268916545311492386.a n = (A094305 n : ℚ)

end A094305

/-! ## A094305.P12102742385456860515

`C(comp[∑[n]]-n, 2)*A007318(n)`
-/

namespace A094305.P12102742385456860515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) * A007318 n

end

end A094305.P12102742385456860515

namespace A094305

/-- `C(comp[∑[n]]-n, 2)*A007318(n)` -/
def P12102742385456860515.Spec : Prop :=
  ∀ n, P12102742385456860515.a n = A094305 n

end A094305

/-! ## A094305.P7767492884010603817

`A347056(n)-A121547(n)`
-/

namespace A094305.P7767492884010603817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347056 n - A121547 n

end

end A094305.P7767492884010603817

namespace A094305

/-- `A347056(n)-A121547(n)` -/
def P7767492884010603817.Spec : Prop :=
  ∀ n, P7767492884010603817.a n = A094305 n

end A094305

/-! ## A094305.P14716528496778575982

`A007318(n)*A127739(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A094305

/-- `A007318(n)*A127739(n+1)` -/
def P14716528496778575982.Spec : Prop :=
  ∀ n, P14716528496778575982.a n = A094305 n

theorem P14716528496778575982.correct : P14716528496778575982.Spec := by
  intro n
  simp only [A094305]

end A094305

/-! ## A094305.P4708055344705771598

`(A135065(n)+A003506(n+1))/2`
-/

namespace A094305.P4708055344705771598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135065 n + A003506 (n + 1) : ℚ) / 2

end

end A094305.P4708055344705771598

namespace A094305

/-- `(A135065(n)+A003506(n+1))/2` -/
def P4708055344705771598.Spec : Prop :=
  ∀ n, P4708055344705771598.a n = (A094305 n : ℚ)

end A094305

/-! ## A094305.P16018770457392739580

`A063929(n+1)/2*A074909(n)`
-/

namespace A094305.P16018770457392739580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063929 (n + 1) : ℚ) / 2 * (A074909 n : ℚ)

end

end A094305.P16018770457392739580

namespace A094305

/-- `A063929(n+1)/2*A074909(n)` -/
def P16018770457392739580.Spec : Prop :=
  ∀ n, P16018770457392739580.a n = (A094305 n : ℚ)

end A094305

/-! ## A094305.P2658910071499144261

`A127739(n+1)/2*A028326(n)`
-/

namespace A094305.P2658910071499144261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127739 (n + 1) : ℚ) / 2 * (A028326 n : ℚ)

end

end A094305.P2658910071499144261

namespace A094305

/-- `A127739(n+1)/2*A028326(n)` -/
def P2658910071499144261.Spec : Prop :=
  ∀ n, P2658910071499144261.a n = (A094305 n : ℚ)

end A094305

/-! ## A094305.P12196341518304845358

`(A004736(n+1)+n)*A007318(n)`
-/

namespace A094305.P12196341518304845358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + (n : ℤ)) * A007318 n

end

end A094305.P12196341518304845358

namespace A094305

/-- `(A004736(n+1)+n)*A007318(n)` -/
def P12196341518304845358.Spec : Prop :=
  ∀ n, P12196341518304845358.a n = A094305 n

end A094305

/-! ## A094305.P17333995142071482979

`A093375(n+1)+n*A007318(n)`
-/

namespace A094305.P17333995142071482979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) + (n : ℤ) * A007318 n

end

end A094305.P17333995142071482979

namespace A094305

/-- `A093375(n+1)+n*A007318(n)` -/
def P17333995142071482979.Spec : Prop :=
  ∀ n, P17333995142071482979.a n = A094305 n

end A094305

/-! ## A094305.P1706280669889597975

`(A064801(n+1)-n)*A007318(n)`
-/

namespace A094305.P1706280669889597975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064801 (n + 1) - (n : ℤ)) * A007318 n

end

end A094305.P1706280669889597975

namespace A094305

/-- `(A064801(n+1)-n)*A007318(n)` -/
def P1706280669889597975.Spec : Prop :=
  ∀ n, P1706280669889597975.a n = A094305 n

end A094305

/-! ## A094305.P17646735340523232176

`abs((A004736(n+1)+n)*A108086(n))`
-/

namespace A094305.P17646735340523232176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A004736 (n + 1) + (n : ℤ)) * A108086 n|

end

end A094305.P17646735340523232176

namespace A094305

/-- `abs((A004736(n+1)+n)*A108086(n))` -/
def P17646735340523232176.Spec : Prop :=
  ∀ n, P17646735340523232176.a n = A094305 n

end A094305

/-! ## A094305.P15347520871318490367

`abs((A004736(n+1)+n)*A130595(n))`
-/

namespace A094305.P15347520871318490367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A004736 (n + 1) + (n : ℤ)) * A130595 n|

end

end A094305.P15347520871318490367

namespace A094305

/-- `abs((A004736(n+1)+n)*A130595(n))` -/
def P15347520871318490367.Spec : Prop :=
  ∀ n, P15347520871318490367.a n = A094305 n

end A094305

/-! ## A094305.P9013434414468655746

`(A004736(n+1)+n)*sqrt(A008459(n))`
-/

namespace A094305.P9013434414468655746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + (n : ℤ) : ℝ) * Real.sqrt (A008459 n : ℝ)

end

end A094305.P9013434414468655746

namespace A094305

/-- `(A004736(n+1)+n)*sqrt(A008459(n))` -/
def P9013434414468655746.Spec : Prop :=
  ∀ n, P9013434414468655746.a n = (A094305 n : ℝ)

end A094305

/-! ## A094305.P14622934809613564582

`(sqrt(A055461(n+1))+n)*A007318(n)`
-/

namespace A094305.P14622934809613564582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A055461 (n + 1) : ℝ) + (n : ℝ)) * (A007318 n : ℝ)

end

end A094305.P14622934809613564582

namespace A094305

/-- `(sqrt(A055461(n+1))+n)*A007318(n)` -/
def P14622934809613564582.Spec : Prop :=
  ∀ n, P14622934809613564582.a n = (A094305 n : ℝ)

end A094305

/-! ## A094305.P16403275189094589357

`∑[A066182(n+1)-n]*A007318(n)`
-/

namespace A094305.P16403275189094589357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007318 n

end

end A094305.P16403275189094589357

namespace A094305

/-- `∑[A066182(n+1)-n]*A007318(n)` -/
def P16403275189094589357.Spec : Prop :=
  ∀ n, P16403275189094589357.a n = A094305 n

end A094305

/-! ## A094305.P13052180490140591090

`(A004736(n+1)+n)*Δ[A102363(n)]`
-/

namespace A094305.P13052180490140591090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A094305.P13052180490140591090

namespace A094305

/-- `(A004736(n+1)+n)*Δ[A102363(n)]` -/
def P13052180490140591090.Spec : Prop :=
  ∀ n, P13052180490140591090.a n = A094305 n

end A094305

/-! ## A094305.P11216765063396530106

`A003506(n+1)/2*A003057(n+2)`
-/

namespace A094305.P11216765063396530106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) : ℚ) / 2 * (A003057 (n + 2) : ℚ)

end

end A094305.P11216765063396530106

namespace A094305

/-- `A003506(n+1)/2*A003057(n+2)` -/
def P11216765063396530106.Spec : Prop :=
  ∀ n, P11216765063396530106.a n = (A094305 n : ℚ)

end A094305

/-! ## A094305.P18188599132316664460

`A003991(n+1)/2*A014410(n+2)`
-/

namespace A094305.P18188599132316664460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / 2 * (A014410 (n + 2) : ℚ)

end

end A094305.P18188599132316664460

namespace A094305

/-- `A003991(n+1)/2*A014410(n+2)` -/
def P18188599132316664460.Spec : Prop :=
  ∀ n, P18188599132316664460.a n = (A094305 n : ℚ)

end A094305

/-! ## A094305.P8839329910277896210

`A007318(n)*A000217(round(sqrt(2*n+1)))`
-/

namespace A094305.P8839329910277896210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A094305.P8839329910277896210

namespace A094305

/-- `A007318(n)*A000217(round(sqrt(2*n+1)))` -/
def P8839329910277896210.Spec : Prop :=
  ∀ n, P8839329910277896210.a n = A094305 n

end A094305

/-! ## A094305.P7773567545503852912

`A000217(A002024(n+1))*A007318(n)`
-/

namespace A094305.P7773567545503852912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002024 (n + 1)).toNat * A007318 n

end

end A094305.P7773567545503852912

namespace A094305

/-- `A000217(A002024(n+1))*A007318(n)` -/
def P7773567545503852912.Spec : Prop :=
  ∀ n, P7773567545503852912.a n = A094305 n

end A094305

/-!
# A094306: Number of (s(0), s(1), ..., s(n)) such that 0 < s(i) < 6 and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 2, s(n) = 4.

The programs for A094306, the canonical program `A094306.P3055788036748361225` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094306 has offset 2).

The definition of A094306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094306.P3055788036748361225

`4*a(n-1)-2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094306

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)` -/
def P3055788036748361225.Spec : Prop :=
  ∀ n, P3055788036748361225.a n = A094306 (n + 2)

theorem P3055788036748361225.correct : P3055788036748361225.Spec := by
  intro n
  simp only [A094306, Nat.add_sub_cancel]

end A094306

/-! ## A094306.P3392180000940875674

`Δ[A005666(n)-2^n]`
-/

namespace A094306.P3392180000940875674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005666 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094306.P3392180000940875674

namespace A094306

/-- `Δ[A005666(n)-2^n]` -/
def P3392180000940875674.Spec : Prop :=
  ∀ n, P3392180000940875674.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P13920938532352200074

`Δ[A028859(n)-2^n]`
-/

namespace A094306.P13920938532352200074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094306.P13920938532352200074

namespace A094306

/-- `Δ[A028859(n)-2^n]` -/
def P13920938532352200074.Spec : Prop :=
  ∀ n, P13920938532352200074.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P8041660954680810528

`A052945(n+1)-2^n`
-/

namespace A094306.P8041660954680810528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (n + 1) - (2 ^ n : ℤ)

end

end A094306.P8041660954680810528

namespace A094306

/-- `A052945(n+1)-2^n` -/
def P8041660954680810528.Spec : Prop :=
  ∀ n, P8041660954680810528.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P5877277248544898663

`A094297(n+2)-2^(n+1)`
-/

namespace A094306.P5877277248544898663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094297 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A094306.P5877277248544898663

namespace A094306

/-- `A094297(n+2)-2^(n+1)` -/
def P5877277248544898663.Spec : Prop :=
  ∀ n, P5877277248544898663.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P2264551982649752373

`A026150(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A094306.P2264551982649752373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026150 n + 2 * a (n - 1)

end

end A094306.P2264551982649752373

namespace A094306

/-- `A026150(n)+2*a(n-1)` -/
def P2264551982649752373.Spec : Prop :=
  ∀ n, P2264551982649752373.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P12415955342929470001

`A162559(n)-A287594(n)`
-/

namespace A094306.P12415955342929470001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162559 n - A287594 n

end

end A094306.P12415955342929470001

namespace A094306

/-- `A162559(n)-A287594(n)` -/
def P12415955342929470001.Spec : Prop :=
  ∀ n, P12415955342929470001.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P442970473097132144

`Δ[A028859(n)]-∑[A011782(n)]`
-/

namespace A094306.P442970473097132144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A094306.P442970473097132144

namespace A094306

/-- `Δ[A028859(n)]-∑[A011782(n)]` -/
def P442970473097132144.Spec : Prop :=
  ∀ n, P442970473097132144.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P625126956386364914

`A028859(n+1)-A038508(n+1)`
-/

namespace A094306.P625126956386364914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (n + 1) - A038508 (n + 1)

end

end A094306.P625126956386364914

namespace A094306

/-- `A028859(n+1)-A038508(n+1)` -/
def P625126956386364914.Spec : Prop :=
  ∀ n, P625126956386364914.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P10668812333878943247

`Δ[A155020(n+1)-A011782(n+1)]`
-/

namespace A094306.P10668812333878943247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 (n + 1) - A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094306.P10668812333878943247

namespace A094306

/-- `Δ[A155020(n+1)-A011782(n+1)]` -/
def P10668812333878943247.Spec : Prop :=
  ∀ n, P10668812333878943247.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P13659520553031941108

`Δ[A155020(n+1)-∑[A034008(n+1)]]`
-/

namespace A094306.P13659520553031941108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094306.P13659520553031941108

namespace A094306

/-- `Δ[A155020(n+1)-∑[A034008(n+1)]]` -/
def P13659520553031941108.Spec : Prop :=
  ∀ n, P13659520553031941108.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P1194969391562481121

`A005665(n)+A028859(n)-A000225(n)`
-/

namespace A094306.P1194969391562481121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005665 n + (A028859 n - A000225 n)

end

end A094306.P1194969391562481121

namespace A094306

/-- `A005665(n)+A028859(n)-A000225(n)` -/
def P1194969391562481121.Spec : Prop :=
  ∀ n, P1194969391562481121.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P17937502155192147891

`∑[A026150(n)/A000079(n)]*A000079(n)`
-/

namespace A094306.P17937502155192147891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A094306.P17937502155192147891

namespace A094306

/-- `∑[A026150(n)/A000079(n)]*A000079(n)` -/
def P17937502155192147891.Spec : Prop :=
  ∀ n, P17937502155192147891.a n = (A094306 (n + 2) : ℚ)

end A094306

/-! ## A094306.P6391487155014817255

`A028859(n+1)-(A005666(n)+A000051(n))`
-/

namespace A094306.P6391487155014817255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (n + 1) - (A005666 n + A000051 n)

end

end A094306.P6391487155014817255

namespace A094306

/-- `A028859(n+1)-(A005666(n)+A000051(n))` -/
def P6391487155014817255.Spec : Prop :=
  ∀ n, P6391487155014817255.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P1688489354589656836

`A026150(n+1)+A026150(n)-A000079(n)`
-/

namespace A094306.P1688489354589656836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (n + 1) + (A026150 n - A000079 n)

end

end A094306.P1688489354589656836

namespace A094306

/-- `A026150(n+1)+A026150(n)-A000079(n)` -/
def P1688489354589656836.Spec : Prop :=
  ∀ n, P1688489354589656836.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P13047094992416234917

`A028859(n+1)-(A028859(n)+A000079(n))`
-/

namespace A094306.P13047094992416234917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (n + 1) - (A028859 n + A000079 n)

end

end A094306.P13047094992416234917

namespace A094306

/-- `A028859(n+1)-(A028859(n)+A000079(n))` -/
def P13047094992416234917.Spec : Prop :=
  ∀ n, P13047094992416234917.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P6873803557033816540

`A026150(n+1)+A026150(n)-A011782(n+1)`
-/

namespace A094306.P6873803557033816540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (n + 1) + (A026150 n - A011782 (n + 1))

end

end A094306.P6873803557033816540

namespace A094306

/-- `A026150(n+1)+A026150(n)-A011782(n+1)` -/
def P6873803557033816540.Spec : Prop :=
  ∀ n, P6873803557033816540.a n = A094306 (n + 2)

end A094306

/-! ## A094306.P11844380683191526378

`A026150(n+2)-A094297(n+2)`
-/

namespace A094306.P11844380683191526378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (n + 2) - A094297 (n + 2)

end

end A094306.P11844380683191526378

namespace A094306

/-- `A026150(n+2)-A094297(n+2)` -/
def P11844380683191526378.Spec : Prop :=
  ∀ n, P11844380683191526378.a n = A094306 (n + 2)

end A094306

/-!
# A094307: The k-th term of the n-th row of the following triangle is the least common multiple of all numbers from 1 to n except k. Sequence contains the triangle by rows.

The programs for A094307, there is no canonical definition to state claims against.
-/

/-! ## A094307.P7831694234462507843

`A271410(A130328(n)-1)`
-/

namespace A094307.P7831694234462507843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (A130328 n - 1).toNat

end

end A094307.P7831694234462507843

/-! ## A094307.P1350637700287143228

`A271410(A035327(eq[2, A000120(n)]))`
-/

namespace A094307.P1350637700287143228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (A035327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A094307.P1350637700287143228

/-! ## A094307.P15567017849487286100

`lcm(∏{p}[A094310(n+1), #], A125901(n+1))`
-/

namespace A094307.P15567017849487286100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A125901 (n + 1))

end

end A094307.P15567017849487286100

/-! ## A094307.P16453545575190582024

`A328219(A121281(n))`
-/

namespace A094307.P16453545575190582024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328219 (A121281 n).toNat

end

end A094307.P16453545575190582024

/-! ## A094307.P4251641934533553621

`A316431(2*A258566(n+1))`
-/

namespace A094307.P4251641934533553621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A258566 (n + 1)).toNat

end

end A094307.P4251641934533553621

/-!
# A094308: Row sums of A094307.

The programs for A094308, there is no canonical definition to state claims against.
-/

/-! ## A094308.P9185395119591411248

`A181853(∑[n+2]-1)`
-/

namespace A094308.P9185395119591411248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181853 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A094308.P9185395119591411248

/-! ## A094308.P844222398886002167

`record[A181853(A101881(n))]`
-/

namespace A094308.P844222398886002167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181853 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094308.P844222398886002167

/-! ## A094308.P11135997047428467454

`record[root(A181853(n), A152157(n))]`
-/

namespace A094308.P11135997047428467454
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A181853 n : ℝ) ^ (1 / (A152157 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094308.P11135997047428467454

/-! ## A094308.P7213637106784051829

`record[root(A181853(n), A219347(n))]`
-/

namespace A094308.P7213637106784051829
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A181853 n : ℝ) ^ (1 / (A219347 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094308.P7213637106784051829

/-! ## A094308.P10519459833175455408

`record[gcd(A055137(n), A181853(n))]`
-/

namespace A094308.P10519459833175455408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055137 n) (A181853 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094308.P10519459833175455408

/-!
# A094309: Number of (s(0), s(1), ..., s(n)) such that 0 < s(i) < 6 and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 2, s(n) = 5.

The programs for A094309, the canonical program `A094309.P9864103087808028126` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094309 has offset 3).

The definition of A094309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094309.P9864103087808028126

`4*a(n-1)-2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=14`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094309

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)` -/
def P9864103087808028126.Spec : Prop :=
  ∀ n, P9864103087808028126.a n = A094309 (n + 3)

theorem P9864103087808028126.correct : P9864103087808028126.Spec := by
  intro n
  simp only [A094309, Nat.add_sub_cancel]

end A094309

/-! ## A094309.P3632520087078439162

`∑[A094306(n+2)]`
-/

namespace A094309.P3632520087078439162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094306 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094309.P3632520087078439162

namespace A094309

/-- `∑[A094306(n+2)]` -/
def P3632520087078439162.Spec : Prop :=
  ∀ n, P3632520087078439162.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P14429190277184692358

`∑[A052945(n+1)-2^n]`
-/

namespace A094309.P14429190277184692358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (n + 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094309.P14429190277184692358

namespace A094309

/-- `∑[A052945(n+1)-2^n]` -/
def P14429190277184692358.Spec : Prop :=
  ∀ n, P14429190277184692358.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P9702800298635531025

`∑[abs(Δ[A028859(n)-2^n])]`
-/

namespace A094309.P9702800298635531025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094309.P9702800298635531025

namespace A094309

/-- `∑[abs(Δ[A028859(n)-2^n])]` -/
def P9702800298635531025.Spec : Prop :=
  ∀ n, P9702800298635531025.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P2661552061915648692

`A028859(n+1)-2^(n+1)`
-/

namespace A094309.P2661552061915648692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A094309.P2661552061915648692

namespace A094309

/-- `A028859(n+1)-2^(n+1)` -/
def P2661552061915648692.Spec : Prop :=
  ∀ n, P2661552061915648692.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P9602181991233520125

`A155020(n+2)-2^(n+1)`
-/

namespace A094309.P9602181991233520125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A094309.P9602181991233520125

namespace A094309

/-- `A155020(n+2)-2^(n+1)` -/
def P9602181991233520125.Spec : Prop :=
  ∀ n, P9602181991233520125.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P8062792222017981841

`A038508(n+2)-2^(n+2)`
-/

namespace A094309.P8062792222017981841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038508 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A094309.P8062792222017981841

namespace A094309

/-- `A038508(n+2)-2^(n+2)` -/
def P8062792222017981841.Spec : Prop :=
  ∀ n, P8062792222017981841.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P8717352845477375593

`∑[A026150(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A094309.P8717352845477375593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A094309.P8717352845477375593

namespace A094309

/-- `∑[A026150(n)]+2*a(n-1)` -/
def P8717352845477375593.Spec : Prop :=
  ∀ n, P8717352845477375593.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P18409307333718552969

`record[A155020(n)-A131577(n)]`
-/

namespace A094309.P18409307333718552969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094309.P18409307333718552969

namespace A094309

/-- `record[A155020(n)-A131577(n)]` -/
def P18409307333718552969.Spec : Prop :=
  ∀ n, P18409307333718552969.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P6795448407026981252

`∑[Δ[A028859(n)]-A000079(n)]`
-/

namespace A094309.P6795448407026981252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094309.P6795448407026981252

namespace A094309

/-- `∑[Δ[A028859(n)]-A000079(n)]` -/
def P6795448407026981252.Spec : Prop :=
  ∀ n, P6795448407026981252.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P16222999092032388420

`A005666(n+1)+2-A000051(n+1)`
-/

namespace A094309.P16222999092032388420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005666 (n + 1) + (2 - A000051 (n + 1))

end

end A094309.P16222999092032388420

namespace A094309

/-- `A005666(n+1)+2-A000051(n+1)` -/
def P16222999092032388420.Spec : Prop :=
  ∀ n, P16222999092032388420.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P3746472987942825218

`A176758(n+3)/2`
-/

namespace A094309.P3746472987942825218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176758 (n + 3) : ℚ) / 2

end

end A094309.P3746472987942825218

namespace A094309

/-- `A176758(n+3)/2` -/
def P3746472987942825218.Spec : Prop :=
  ∀ n, P3746472987942825218.a n = (A094309 (n + 3) : ℚ)

end A094309

/-! ## A094309.P9413821843377070595

`A002605(n+3)-A038508(n+2)`
-/

namespace A094309.P9413821843377070595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 3) - A038508 (n + 2)

end

end A094309.P9413821843377070595

namespace A094309

/-- `A002605(n+3)-A038508(n+2)` -/
def P9413821843377070595.Spec : Prop :=
  ∀ n, P9413821843377070595.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P9121502141362704468

`A080040(n+1)+A028859(n+1)-A287594(n+1)`
-/

namespace A094309.P9121502141362704468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (n + 1) + A028859 (n + 1) - A287594 (n + 1)

end

end A094309.P9121502141362704468

namespace A094309

/-- `A080040(n+1)+A028859(n+1)-A287594(n+1)` -/
def P9121502141362704468.Spec : Prop :=
  ∀ n, P9121502141362704468.a n = A094309 (n + 3)

end A094309

/-! ## A094309.P5051837028374764463

`A209240(∑[n+1]+1)`
-/

namespace A094309.P5051837028374764463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209240 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A094309.P5051837028374764463

namespace A094309

/-- `A209240(∑[n+1]+1)` -/
def P5051837028374764463.Spec : Prop :=
  ∀ n, P5051837028374764463.a n = A094309 (n + 3)

end A094309

/-!
# A094310: Triangle read by rows: T(n,k), the k-th term of the n-th row, is the product of all numbers from 1 to n except k: T(n,k) = n!/k.

The programs for A094310, the canonical program `A094310.P9946373677012524602` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094310 has offset 1).

The definition of A094310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094310.P3554975789684455853

`round(sqrt(2*n+1))!/A002260(n+1)`
-/

namespace A094310.P3554975789684455853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A094310.P3554975789684455853

namespace A094310

/-- `round(sqrt(2*n+1))!/A002260(n+1)` -/
def P3554975789684455853.Spec : Prop :=
  ∀ n, P3554975789684455853.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P9946373677012524602

`A077012(A038722(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A094310

/-- `A077012(A038722(n+1))` -/
def P9946373677012524602.Spec : Prop :=
  ∀ n, P9946373677012524602.a n = A094310 (n + 1)

theorem P9946373677012524602.correct : P9946373677012524602.Spec := by
  intro n
  simp only [A094310, Nat.add_sub_cancel]

end A094310

/-! ## A094310.P211256435351167608

`A098361(n)*A135278(n)`
-/

namespace A094310.P211256435351167608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A135278 n

end

end A094310.P211256435351167608

namespace A094310

/-- `A098361(n)*A135278(n)` -/
def P211256435351167608.Spec : Prop :=
  ∀ n, P211256435351167608.a n = A094310 (n + 1)

end A094310

/-! ## A094310.P9781561229222429109

`A074909(n+1)*A098361(n)`
-/

namespace A094310.P9781561229222429109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A098361 n

end

end A094310.P9781561229222429109

namespace A094310

/-- `A074909(n+1)*A098361(n)` -/
def P9781561229222429109.Spec : Prop :=
  ∀ n, P9781561229222429109.a n = A094310 (n + 1)

end A094310

/-! ## A094310.P3178027246053164452

`A173333(n+1)*A233543(n)`
-/

namespace A094310.P3178027246053164452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) * A233543 n

end

end A094310.P3178027246053164452

namespace A094310

/-- `A173333(n+1)*A233543(n)` -/
def P3178027246053164452.Spec : Prop :=
  ∀ n, P3178027246053164452.a n = A094310 (n + 1)

end A094310

/-! ## A094310.P6759138172262339245

`A130493(n+1)/A002260(n+1)`
-/

namespace A094310.P6759138172262339245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A094310.P6759138172262339245

namespace A094310

/-- `A130493(n+1)/A002260(n+1)` -/
def P6759138172262339245.Spec : Prop :=
  ∀ n, P6759138172262339245.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P9283209379117142415

`A130493(n+1)/(A002262(n)+1)`
-/

namespace A094310.P9283209379117142415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A094310.P9283209379117142415

namespace A094310

/-- `A130493(n+1)/(A002262(n)+1)` -/
def P9283209379117142415.Spec : Prop :=
  ∀ n, P9283209379117142415.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P593424717971251425

`∏[A130296(n+1)]/A002260(n+1)`
-/

namespace A094310.P593424717971251425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A094310.P593424717971251425

namespace A094310

/-- `∏[A130296(n+1)]/A002260(n+1)` -/
def P593424717971251425.Spec : Prop :=
  ∀ n, P593424717971251425.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P2328036320113988723

`A000142(A002024(n+1))/A002260(n+1)`
-/

namespace A094310.P2328036320113988723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A002024 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A094310.P2328036320113988723

namespace A094310

/-- `A000142(A002024(n+1))/A002260(n+1)` -/
def P2328036320113988723.Spec : Prop :=
  ∀ n, P2328036320113988723.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P14719537681724032882

`A166350(A004736(n+1)+n)/A002260(n+1)`
-/

namespace A094310.P14719537681724032882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166350 (A004736 (n + 1) + (n : ℤ)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A094310.P14719537681724032882

namespace A094310

/-- `A166350(A004736(n+1)+n)/A002260(n+1)` -/
def P14719537681724032882.Spec : Prop :=
  ∀ n, P14719537681724032882.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P2457593391871753823

`A094587(A061579(n)+A002260(n+1))/A002260(n+1)`
-/

namespace A094310.P2457593391871753823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A061579 n + A002260 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A094310.P2457593391871753823

namespace A094310

/-- `A094587(A061579(n)+A002260(n+1))/A002260(n+1)` -/
def P2457593391871753823.Spec : Prop :=
  ∀ n, P2457593391871753823.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P13071402091690945039

`A162608(A127739(n+1))/(A127739(n+1)-A061579(n))`
-/

namespace A094310.P13071402091690945039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162608 (A127739 (n + 1)).toNat : ℚ) / (A127739 (n + 1) - A061579 n : ℚ)

end

end A094310.P13071402091690945039

namespace A094310

/-- `A162608(A127739(n+1))/(A127739(n+1)-A061579(n))` -/
def P13071402091690945039.Spec : Prop :=
  ∀ n, P13071402091690945039.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P16720986502055723948

`A028421(A014132(n+1)-A002260(n+1))/A002260(n+1)`
-/

namespace A094310.P16720986502055723948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028421 (A014132 (n + 1) - A002260 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A094310.P16720986502055723948

namespace A094310

/-- `A028421(A014132(n+1)-A002260(n+1))/A002260(n+1)` -/
def P16720986502055723948.Spec : Prop :=
  ∀ n, P16720986502055723948.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P6432364760720019880

`A130534(A014132(n+1)-A002260(n+1))/A002260(n+1)`
-/

namespace A094310.P6432364760720019880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130534 (A014132 (n + 1) - A002260 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A094310.P6432364760720019880

namespace A094310

/-- `A130534(A014132(n+1)-A002260(n+1))/A002260(n+1)` -/
def P6432364760720019880.Spec : Prop :=
  ∀ n, P6432364760720019880.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P5722036451138164525

`A051683(n+1)/A133819(n+1)`
-/

namespace A094310.P5722036451138164525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051683 (n + 1) : ℚ) / (A133819 (n + 1) : ℚ)

end

end A094310.P5722036451138164525

namespace A094310

/-- `A051683(n+1)/A133819(n+1)` -/
def P5722036451138164525.Spec : Prop :=
  ∀ n, P5722036451138164525.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P3479976741405196529

`A051683(n+1)/A002260(n+1)²`
-/

namespace A094310.P3479976741405196529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051683 (n + 1) : ℚ) / (A002260 (n + 1) ^ 2 : ℚ)

end

end A094310.P3479976741405196529

namespace A094310

/-- `A051683(n+1)/A002260(n+1)²` -/
def P3479976741405196529.Spec : Prop :=
  ∀ n, P3479976741405196529.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P8717314567772076083

`(A200748(n)+1)/A002260(n+1)²`
-/

namespace A094310.P8717314567772076083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200748 n + 1 : ℚ) / (A002260 (n + 1) ^ 2 : ℚ)

end

end A094310.P8717314567772076083

namespace A094310

/-- `(A200748(n)+1)/A002260(n+1)²` -/
def P8717314567772076083.Spec : Prop :=
  ∀ n, P8717314567772076083.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P2716380403848773728

`A130493(n+1)/A051683(n+1)*A130493(n+1)`
-/

namespace A094310.P2716380403848773728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) / (A051683 (n + 1) : ℚ) * (A130493 (n + 1) : ℚ)

end

end A094310.P2716380403848773728

namespace A094310

/-- `A130493(n+1)/A051683(n+1)*A130493(n+1)` -/
def P2716380403848773728.Spec : Prop :=
  ∀ n, P2716380403848773728.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P10065876199138270926

`Δ[A200748(n)]/A002260(n+1)`
-/

namespace A094310.P10065876199138270926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A094310.P10065876199138270926

namespace A094310

/-- `Δ[A200748(n)]/A002260(n+1)` -/
def P10065876199138270926.Spec : Prop :=
  ∀ n, P10065876199138270926.a n = (A094310 (n + 1) : ℚ)

end A094310

/-! ## A094310.P8387052310934222226

`(A051683(n+2)-A051683(n+1))/A002260(n+1)`
-/

namespace A094310.P8387052310934222226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051683 (n + 2) - A051683 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A094310.P8387052310934222226

namespace A094310

/-- `(A051683(n+2)-A051683(n+1))/A002260(n+1)` -/
def P8387052310934222226.Spec : Prop :=
  ∀ n, P8387052310934222226.a n = (A094310 (n + 1) : ℚ)

end A094310

/-!
# A094311: a(n) = n*(1+n^2)*((2+n^2)^2-n^2)/16.

The programs for A094311, the canonical program `A094311.P7130402841805399466` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094311 has offset 1).

The definition of A094311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094311.P7130402841805399466

`Δ[C(A002817(n)+1, 2)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094311

/-- `Δ[C(A002817(n)+1, 2)]` -/
def P7130402841805399466.Spec : Prop :=
  ∀ n, P7130402841805399466.a n = A094311 (n + 1)

theorem P7130402841805399466.correct : P7130402841805399466.Spec := by
  intro n
  simp only [A094311, Nat.add_sub_cancel]

end A094311

/-! ## A094311.P15500759189796882283

`Δ[C(C(∑[n]+1, 2)+1, 2)]`
-/

namespace A094311.P15500759189796882283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094311.P15500759189796882283

namespace A094311

/-- `Δ[C(C(∑[n]+1, 2)+1, 2)]` -/
def P15500759189796882283.Spec : Prop :=
  ∀ n, P15500759189796882283.a n = A094311 (n + 1)

end A094311

/-! ## A094311.P15404781716253010762

`Δ[A064322(n)]`
-/

namespace A094311.P15404781716253010762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094311.P15404781716253010762

namespace A094311

/-- `Δ[A064322(n)]` -/
def P15404781716253010762.Spec : Prop :=
  ∀ n, P15404781716253010762.a n = A094311 (n + 1)

end A094311

/-! ## A094311.P17684241153426919969

`A064322(n+1)-A064322(n)`
-/

namespace A094311.P17684241153426919969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064322 (n + 1) - A064322 n

end

end A094311.P17684241153426919969

namespace A094311

/-- `A064322(n+1)-A064322(n)` -/
def P17684241153426919969.Spec : Prop :=
  ∀ n, P17684241153426919969.a n = A094311 (n + 1)

end A094311

/-! ## A094311.P12485777567324203153

`record[A064322(abs(1-n))]-A064322(n)`
-/

namespace A094311.P12485777567324203153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064322 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A064322 n

end

end A094311.P12485777567324203153

namespace A094311

/-- `record[A064322(abs(1-n))]-A064322(n)` -/
def P12485777567324203153.Spec : Prop :=
  ∀ n, P12485777567324203153.a n = A094311 (n + 1)

end A094311

/-! ## A094311.P5639457442142663466

`(A075664(n+1)+A006003(n+1))/2`
-/

namespace A094311.P5639457442142663466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075664 (n + 1) + A006003 (n + 1) : ℚ) / 2

end

end A094311.P5639457442142663466

namespace A094311

/-- `(A075664(n+1)+A006003(n+1))/2` -/
def P5639457442142663466.Spec : Prop :=
  ∀ n, P5639457442142663466.a n = (A094311 (n + 1) : ℚ)

end A094311

/-! ## A094311.P17398897384049201798

`Δ[C(A000217(A000217(n))+1, 2)]`
-/

namespace A094311.P17398897384049201798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000217 (A000217 n).toNat + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094311.P17398897384049201798

namespace A094311

/-- `Δ[C(A000217(A000217(n))+1, 2)]` -/
def P17398897384049201798.Spec : Prop :=
  ∀ n, P17398897384049201798.a n = A094311 (n + 1)

end A094311

/-! ## A094311.P14360071847907246926

`Δ[A002817(∑[n])]`
-/

namespace A094311.P14360071847907246926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094311.P14360071847907246926

namespace A094311

/-- `Δ[A002817(∑[n])]` -/
def P14360071847907246926.Spec : Prop :=
  ∀ n, P14360071847907246926.a n = A094311 (n + 1)

end A094311

/-! ## A094311.P11534545056737676774

`Δ[A001621(∑[n])/2]`
-/

namespace A094311.P11534545056737676774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001621 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094311.P11534545056737676774

namespace A094311

/-- `Δ[A001621(∑[n])/2]` -/
def P11534545056737676774.Spec : Prop :=
  ∀ n, P11534545056737676774.a n = (A094311 (n + 1) : ℚ)

end A094311

/-! ## A094311.P882672858317626101

`Δ[C(A000124(∑[n]), 2)]`
-/

namespace A094311.P882672858317626101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000124 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094311.P882672858317626101

namespace A094311

/-- `Δ[C(A000124(∑[n]), 2)]` -/
def P882672858317626101.Spec : Prop :=
  ∀ n, P882672858317626101.a n = A094311 (n + 1)

end A094311

/-! ## A094311.P14867476149349407011

`abs(Δ[A002817(A000217(n))])`
-/

namespace A094311.P14867476149349407011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A094311.P14867476149349407011

namespace A094311

/-- `abs(Δ[A002817(A000217(n))])` -/
def P14867476149349407011.Spec : Prop :=
  ∀ n, P14867476149349407011.a n = A094311 (n + 1)

end A094311

/-!
# A094312: Beginning with 1, re-arrangement of natural numbers such that {a(2n-1)*a(2n)}^(1/2) and {a(2n)+a(2n+1)}/2 are integers.

The programs for A094312, there is no canonical definition to state claims against.
-/

/-! ## A094312.P543387952713430901

`A060780(5^n+1)`
-/

namespace A094312.P543387952713430901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060780 (5 ^ n + 1)

end

end A094312.P543387952713430901

/-! ## A094312.P6775073028957533262

`A289624(Δ[n*A068201(n)])`
-/

namespace A094312.P6775073028957533262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289624 (f1 (n + 1) - f1 n).toNat

end

end A094312.P6775073028957533262

/-!
# A094313: Geometric mean and arithmetic mean alternately of successive pair of terms of A094312.

The programs for A094313, there is no canonical definition to state claims against.
-/

/-! ## A094313.P15428917681069770582

`A180631(a(n-2))+3` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A094313.P15428917681069770582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  A180631 (a (n - 2)).toNat + 3

end

end A094313.P15428917681069770582

/-! ## A094313.P16874795218841185248

`A334922(A068875(n+1))`
-/

namespace A094313.P16874795218841185248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334922 (A068875 (n + 1)).toNat

end

end A094313.P16874795218841185248

/-!
# A094314: Triangle read by rows: T(n,k) = number of ways of seating n couples around a circular table so that exactly k married couples are adjacent (0 <= k <= n).

The programs for A094314, there is no canonical definition to state claims against.
-/

/-! ## A094314.P3135400430595150942

`ceil(A156996(n)/ceil(6/(n+1)))`
-/

namespace A094314.P3135400430595150942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A156996 n : ℚ) / (⌈6 / (n + 1 : ℚ)⌉ : ℚ)⌉

end

end A094314.P3135400430595150942

/-! ## A094314.P17203987911837401799

`A156996(n)-A159075(n)^A060475(n)`
-/

namespace A094314.P17203987911837401799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156996 n : ℚ) - (A159075 n : ℚ) ^ (A060475 n : ℤ)

end

end A094314.P17203987911837401799

/-! ## A094314.P10073693674085762554

`A156996(n)-A159075(n)^A047920(n)`
-/

namespace A094314.P10073693674085762554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156996 n : ℚ) - (A159075 n : ℚ) ^ (A047920 n : ℤ)

end

end A094314.P10073693674085762554

/-! ## A094314.P5480533406885324003

`A156996(A049084(A027379(n))+n)`
-/

namespace A094314.P5480533406885324003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (A049084 (A027379 n).toNat + (n : ℤ)).toNat

end

end A094314.P5480533406885324003

/-! ## A094314.P11264253185249079206

`A167374(A167614(n+1))+A156996(n)`
-/

namespace A094314.P11264253185249079206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (A167614 (n + 1)).toNat + A156996 n

end

end A094314.P11264253185249079206

/-! ## A094314.P2707088109734508150

`A156996(n)-A159075(n)^A000179(n)`
-/

namespace A094314.P2707088109734508150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156996 n : ℚ) - (A159075 n : ℚ) ^ (A000179 n : ℤ)

end

end A094314.P2707088109734508150

/-!
# A094315: Triangle read by rows giving number of circular permutations of n letters such that all letters are displaced by no more than k places from their original position.

The programs for A094315, there is no canonical definition to state claims against.
-/

/-! ## A094315.P7229279953969704992

`A122287(A352729(n)+A319501(n))`
-/

namespace A094315.P7229279953969704992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122287 (A352729 n + A319501 n).toNat

end

end A094315.P7229279953969704992

/-! ## A094315.P12358745167544091429

`A332015(A332020(n+1)+A118599(n+1))`
-/

namespace A094315.P12358745167544091429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 (A332020 (n + 1) + A118599 (n + 1)).toNat

end

end A094315.P12358745167544091429

/-! ## A094315.P12809968566845856552

`and(A037226(A222269(n+1)), A222247(3*(n+1)))`
-/

namespace A094315.P12809968566845856552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037226 (A222269 (n + 1)).toNat) (A222247 (3 * (n + 1)))

end

end A094315.P12809968566845856552

/-!
# A094317: Primes with the property that the sum of the digits that are primes is prime.

The programs for A094317, the canonical program `A094317.P11387171055547034272` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094317 has offset 1).

The definition of A094317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094317.P11387171055547034272

`p?[(n+1)*A003415(A085563(n+1))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A094317

/-- `p?[(n+1)*A003415(A085563(n+1))]` -/
def P11387171055547034272.Spec : Prop :=
  ∀ n, P11387171055547034272.a n = A094317 (n + 1)

theorem P11387171055547034272.correct : P11387171055547034272.Spec := by
  intro n
  simp only [A094317, Nat.add_sub_cancel]

end A094317

/-! ## A094317.P6665649628502637710

`p?[A349467(A094331(2*n+1))]`
-/

namespace A094317.P6665649628502637710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349467 (A094331 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094317.P6665649628502637710

namespace A094317

/-- `p?[A349467(A094331(2*n+1))]` -/
def P6665649628502637710.Spec : Prop :=
  ∀ n, P6665649628502637710.a n = A094317 (n + 1)

end A094317

/-! ## A094317.P14049164006472144942

`A137812(lt[A014777(n), A136175(3*n+4)])`
-/

namespace A094317.P14049164006472144942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136175 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137812 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094317.P14049164006472144942

namespace A094317

/-- `A137812(lt[A014777(n), A136175(3*n+4)])` -/
def P14049164006472144942.Spec : Prop :=
  ∀ n, P14049164006472144942.a n = A094317 (n + 1)

end A094317

/-! ## A094317.P2848971138708181490

`p?[∑[A321271(A063460(n+1))]]`
-/

namespace A094317.P2848971138708181490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321271 (A063460 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094317.P2848971138708181490

namespace A094317

/-- `p?[∑[A321271(A063460(n+1))]]` -/
def P2848971138708181490.Spec : Prop :=
  ∀ n, P2848971138708181490.a n = A094317 (n + 1)

end A094317

/-! ## A094317.P14625060913453257269

`eq[A278663(n), A379095(n+1)]`
-/

namespace A094317.P14625060913453257269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379095 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094317.P14625060913453257269

namespace A094317

/-- `eq[A278663(n), A379095(n+1)]` -/
def P14625060913453257269.Spec : Prop :=
  ∀ n, (P14625060913453257269.a n : ℤ) = A094317 (n + 1)

end A094317

/-!
# A094318: Primes n with property that sum of digits that are 1 or a prime is prime.

The programs for A094318, there is no canonical definition to state claims against.
-/

/-! ## A094318.P4291181562899784912

`∩[A129945(n+1), A087069(n)]`
-/

namespace A094318.P4291181562899784912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094318.P4291181562899784912

/-! ## A094318.P8339141860868976685

`∩[A020661(n+1), A129945(n+1)]`
-/

namespace A094318.P8339141860868976685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094318.P8339141860868976685

/-! ## A094318.P15949944911826736577

`∩[A023748(n+1), A129945(n+1)]`
-/

namespace A094318.P15949944911826736577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094318.P15949944911826736577

/-! ## A094318.P8858607106939720105

`∩[A023754(n+1), A129945(n+1)]`
-/

namespace A094318.P8858607106939720105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094318.P8858607106939720105

/-! ## A094318.P7679995737722119353

`∩[A028793(n+1), A129945(n+1)]`
-/

namespace A094318.P7679995737722119353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094318.P7679995737722119353

/-!
# A094320: Numbers n >= 0 such that Lehmer's polynomial 263*n^2+3 is prime.

The programs for A094320, there is no canonical definition to state claims against.
-/

/-! ## A094320.P7624181768181710843

`record[Δ[A099375(A146922(n+1))]]`
-/

namespace A094320.P7624181768181710843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A146922 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094320.P7624181768181710843

/-! ## A094320.P10616549461561161998

`A283420(n+1)+A257698(A010844(n))`
-/

namespace A094320.P10616549461561161998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283420 (n + 1) + A257698 (A010844 n).toNat

end

end A094320.P10616549461561161998

/-!
# A094321: a(1) = 2. For n>1, let k = largest integer such that the word a(1)a(2)...a(n-1) is of the form xy^k for words x and y (where y has positive length), i.e., the maximal number of repeating blocks at the end of the sequence so far. If k>1, a(n) = k. If k=1, choose a(n) so that the next k (that for a(1),...,a(n)) is as large as possible and if there is more than one choice for this a(n), pick the smallest.

The programs for A094321, there is no canonical definition to state claims against.
-/

/-! ## A094321.P863935720817517238

`p?[A020639(A163227(n+1))%4]`
-/

namespace A094321.P863935720817517238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A163227 (n + 1)).toNat) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094321.P863935720817517238

/-! ## A094321.P14867634063066389142

`p?[A010873(A020639(A163227(n+1)))]`
-/

namespace A094321.P14867634063066389142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A020639 (A163227 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094321.P14867634063066389142

/-! ## A094321.P8559090715150771359

`A091787(A004760(n+3))%A322350(n+1)`
-/

namespace A094321.P8559090715150771359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091787 (A004760 (n + 3)).toNat) (A322350 (n + 1))

end

end A094321.P8559090715150771359

/-! ## A094321.P730400295434186642

`A091787(A004760(n+3)%A091793(n+1))`
-/

namespace A094321.P730400295434186642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091787 (Int.tmod (A004760 (n + 3)) (A091793 (n + 1))).toNat

end

end A094321.P730400295434186642

/-!
# A094322: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k pyramids.

The programs for A094322, there is no canonical definition to state claims against.
-/

/-! ## A094322.P1462700234370468930

`gcd(A071675(n), A081603(A007068(n+1)))`
-/

namespace A094322.P1462700234370468930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071675 n) (A081603 (A007068 (n + 1)).toNat)

end

end A094322.P1462700234370468930

/-!
# A094323: a(n) = n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/30.

The programs for A094323, the canonical program `A094323.P8598785861161221615` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094323 has offset 0).

The definition of A094323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094323.P8598785861161221615

`n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/30`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094323

/-- `n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/30` -/
def P8598785861161221615.Spec : Prop :=
  ∀ n, P8598785861161221615.a n = (A094323 n : ℚ)

end A094323

/-! ## A094323.P2945344099236170642

`A011197(n)/5`
-/

namespace A094323.P2945344099236170642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011197 n : ℚ) / 5

end

end A094323.P2945344099236170642

namespace A094323

/-- `A011197(n)/5` -/
def P2945344099236170642.Spec : Prop :=
  ∀ n, P2945344099236170642.a n = (A094323 n : ℚ)

end A094323

/-! ## A094323.P8702341074752577117

`(A011195(n)+A008574(n)*A011195(n))/5`
-/

namespace A094323.P8702341074752577117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011195 n + A008574 n * A011195 n : ℚ) / 5

end

end A094323.P8702341074752577117

namespace A094323

/-- `(A011195(n)+A008574(n)*A011195(n))/5` -/
def P8702341074752577117.Spec : Prop :=
  ∀ n, P8702341074752577117.a n = (A094323 n : ℚ)

end A094323

/-! ## A094323.P3599797342411383994

`A051836(2*n)-A011195(n)`
-/

namespace A094323.P3599797342411383994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (2 * n) - A011195 n

end

end A094323.P3599797342411383994

namespace A094323

/-- `A051836(2*n)-A011195(n)` -/
def P3599797342411383994.Spec : Prop :=
  ∀ n, P3599797342411383994.a n = A094323 n

end A094323

/-!
# A094328: Iterate the map in A006369 starting at 4.

The programs for A094328, the canonical program `A094328.P14487549777647084262` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094328 has offset 1).

The definition of A094328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094328.P14487549777647084262

`a(n-5)` with `a(0)=4, a(1)=5, a(2)=7, a(3)=9, a(4)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094328

/-- `a(n-5)` -/
def P14487549777647084262.Spec : Prop :=
  ∀ n, (P14487549777647084262.a n : ℤ) = A094328 (n + 1)

theorem P14487549777647084262.correct : P14487549777647084262.Spec := by
  intro n
  simp only [A094328, Nat.add_sub_cancel]

end A094328

/-!
# A094329: Iterate the map in A006369 starting at 16.

The programs for A094329, there is no canonical definition to state claims against.
-/

/-! ## A094329.P14771123239433250441

`A168221(A028396(n))`
-/

namespace A094329.P14771123239433250441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168221 (A028396 n).toNat

end

end A094329.P14771123239433250441

/-! ## A094329.P6399331897033884350

`A006369(a(n-1))` with `a(0)=16`
-/

namespace A094329.P6399331897033884350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A006369 (a (n - 1)).toNat

end

end A094329.P6399331897033884350

/-! ## A094329.P15484995200891856098

`sqrt(A173536(a(n-1)+2))` with `a(0)=16`
-/

namespace A094329.P15484995200891856098
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [16] fun n a =>
  Real.sqrt (A173536 (SequenceMachineLib.roundAway (a (n - 1) + 2)).toNat : ℝ)

end

end A094329.P15484995200891856098

/-! ## A094329.P13184181437969541051

`A265667(a(n-1)+1)-1` with `a(0)=16`
-/

namespace A094329.P13184181437969541051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A265667 (a (n - 1) + 1).toNat - 1

end

end A094329.P13184181437969541051

/-! ## A094329.P6514702718002889223

`lcm(2, A042965(a(n-1)+1))/2` with `a(0)=16`
-/

namespace A094329.P6514702718002889223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [16] fun n a =>
  (Int.lcm 2 (A042965 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat) : ℚ) / 2

end

end A094329.P6514702718002889223

/-! ## A094329.P10949425469454129235

`A168222(A006368(a(n-1)))` with `a(0)=16`
-/

namespace A094329.P10949425469454129235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A168222 (A006368 (a (n - 1)).toNat).toNat

end

end A094329.P10949425469454129235

/-! ## A094329.P9873978161267068744

`A168222(A351412(xor(1, a(n-1))))` with `a(0)=16`
-/

namespace A094329.P9873978161267068744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A168222 (A351412 (Int.xor 1 (a (n - 1))).toNat).toNat

end

end A094329.P9873978161267068744

/-! ## A094329.P14898664237625825133

`A168222(floor(A165355(a(n-1))/2))` with `a(0)=16`
-/

namespace A094329.P14898664237625825133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A168222 ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋.toNat

end

end A094329.P14898664237625825133

/-! ## A094329.P17452568165093533391

`A087627(2*a(n-1))-1` with `a(0)=16`
-/

namespace A094329.P17452568165093533391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A087627 (2 * a (n - 1)).toNat - 1

end

end A094329.P17452568165093533391

/-! ## A094329.P2074187625396183171

`A089598(A047271(a(n-1)))` with `a(0)=16`
-/

namespace A094329.P2074187625396183171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A089598 (A047271 (a (n - 1)).toNat).toNat

end

end A094329.P2074187625396183171

/-!
# A094330: Product of next n numbers divided by n.

The programs for A094330, there is no canonical definition to state claims against.
-/

/-! ## A094330.P9216475219099050358

`n!*C(∑[n+1], ∑[n])`
-/

namespace A094330.P9216475219099050358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A094330.P9216475219099050358

/-! ## A094330.P1718074508966401624

`A057003(n+1)/(n+1)`
-/

namespace A094330.P1718074508966401624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057003 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A094330.P1718074508966401624

/-! ## A094330.P13438684940729623781

`A000142(n)*A014068(n+1)`
-/

namespace A094330.P13438684940729623781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A014068 (n + 1)

end

end A094330.P13438684940729623781

/-! ## A094330.P14375048383860811238

`n!*record[C(A158822(n+1), A025581(n))]`
-/

namespace A094330.P14375048383860811238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158822 (n + 1)).toNat (A025581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094330.P14375048383860811238

/-! ## A094330.P4866387534351580117

`n!*record[C(A158822(n+1), A004736(n+1)-1)]`
-/

namespace A094330.P4866387534351580117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158822 (n + 1)).toNat (A004736 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094330.P4866387534351580117

/-!
# A094331: Least k such that n! < (n+1)(n+2)(n+3)...(n+k).

The programs for A094331, there is no canonical definition to state claims against.
-/

/-! ## A094331.P9718021734991188377

`A075357(ceil(acot(n)+n))`
-/

namespace A094331.P9718021734991188377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A094331.P9718021734991188377

/-! ## A094331.P4221996390511582755

`floor(A075357(n+1)+acot(n))`
-/

namespace A094331.P4221996390511582755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075357 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A094331.P4221996390511582755

/-! ## A094331.P16268902444833777159

`∑[char[A225515(n+1)+n]]+1`
-/

namespace A094331.P16268902444833777159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225515 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A094331.P16268902444833777159

/-! ## A094331.P13495103388838459138

`A075357(n*a(and(1, n))+1)` with `a(0)=1, a(1)=1`
-/

namespace A094331.P13495103388838459138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A075357 ((n : ℤ) * a (Nat.land 1 n) + 1).toNat

end

end A094331.P13495103388838459138

/-! ## A094331.P16655536401375647857

`A028310(A075357(n+1))`
-/

namespace A094331.P16655536401375647857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A075357 (n + 1)).toNat

end

end A094331.P16655536401375647857

/-! ## A094331.P3611533143346372705

`A075357(ceil(sqrt(A014206(n))))`
-/

namespace A094331.P3611533143346372705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 ⌈Real.sqrt (A014206 n : ℝ)⌉.toNat

end

end A094331.P3611533143346372705

/-! ## A094331.P16061350237601066000

`A075357(round(sqrt(A027688(n))))`
-/

namespace A094331.P16061350237601066000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (SequenceMachineLib.roundAway (Real.sqrt (A027688 n : ℝ))).toNat

end

end A094331.P16061350237601066000

/-! ## A094331.P16438084688096690540

`A075357(round(sqrt(A027689(n))))`
-/

namespace A094331.P16438084688096690540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (SequenceMachineLib.roundAway (Real.sqrt (A027689 n : ℝ))).toNat

end

end A094331.P16438084688096690540

/-! ## A094331.P13577689341250561778

`A075357(n+1)+A000007(n)`
-/

namespace A094331.P13577689341250561778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 1) + A000007 n

end

end A094331.P13577689341250561778

/-! ## A094331.P7301835618819482789

`A075357(A004273(n)+2-n)`
-/

namespace A094331.P7301835618819482789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (A004273 n + (2 - (n : ℤ))).toNat

end

end A094331.P7301835618819482789

/-! ## A094331.P10756389542689838839

`A075357(2-(n-A004273(n)))`
-/

namespace A094331.P10756389542689838839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (2 - ((n : ℤ) - A004273 n)).toNat

end

end A094331.P10756389542689838839

/-! ## A094331.P17454746773811210191

`A254667(A075357(n+1)+1)-1`
-/

namespace A094331.P17454746773811210191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A075357 (n + 1) + 1).toNat - 1

end

end A094331.P17454746773811210191

/-! ## A094331.P11174981838617731129

`round(A075357(n+1)+2/A027688(n))`
-/

namespace A094331.P11174981838617731129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075357 (n + 1) : ℚ) + 2 / (A027688 n : ℚ))

end

end A094331.P11174981838617731129

/-! ## A094331.P2741389395561230317

`round(A075357(n+1)+2/A027689(n))`
-/

namespace A094331.P2741389395561230317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075357 (n + 1) : ℚ) + 2 / (A027689 n : ℚ))

end

end A094331.P2741389395561230317

/-! ## A094331.P7083620700245640196

`A075357(n+1)+val(A000040(n+1), 2)`
-/

namespace A094331.P7083620700245640196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A094331.P7083620700245640196

/-! ## A094331.P1044091847062204178

`A075357(n+1)^A001222(A027746(n+1))`
-/

namespace A094331.P1044091847062204178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075357 (n + 1) : ℚ) ^ (A001222 (A027746 (n + 1)).toNat : ℤ)

end

end A094331.P1044091847062204178

/-! ## A094331.P10722710305570575139

`A075357(A254667(n+1))`
-/

namespace A094331.P10722710305570575139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (A254667 (n + 1)).toNat

end

end A094331.P10722710305570575139

/-! ## A094331.P12223417551752958991

`A075357(A080513(A053438(n)))`
-/

namespace A094331.P12223417551752958991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (A080513 (A053438 n).toNat).toNat

end

end A094331.P12223417551752958991

/-! ## A094331.P11365957713649926137

`A075357(A001281(A103517(n)))`
-/

namespace A094331.P11365957713649926137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (A001281 (A103517 n).toNat).toNat

end

end A094331.P11365957713649926137

/-! ## A094331.P16998090511182762710

`A233583(A075357(n+1)+2)-1`
-/

namespace A094331.P16998090511182762710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A075357 (n + 1) + 2).toNat - 1

end

end A094331.P16998090511182762710

/-!
# A094332: Iterate the map in A006368 starting at 12.

The programs for A094332, there is no canonical definition to state claims against.
-/

/-! ## A094332.P4577591430139312779

`A028394(abs(1-n))+A000007(n)`
-/

namespace A094332.P4577591430139312779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028394 |1 - (n : ℤ)|.toNat + A000007 n

end

end A094332.P4577591430139312779

/-! ## A094332.P1522653200037680425

`A028394(abs(1-n))+A014856(A005811(n))`
-/

namespace A094332.P1522653200037680425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028394 |1 - (n : ℤ)|.toNat + A014856 (A005811 n).toNat

end

end A094332.P1522653200037680425

/-! ## A094332.P18106447604661494325

`A055641(A000523(n+1))+A028394(abs(1-n))`
-/

namespace A094332.P18106447604661494325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000523 (n + 1)).toNat + A028394 |1 - (n : ℤ)|.toNat

end

end A094332.P18106447604661494325

/-! ## A094332.P15561462323265858563

`A028394(abs(1-n))+A008683(A093995(n+1))`
-/

namespace A094332.P15561462323265858563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028394 |1 - (n : ℤ)|.toNat + A008683 (A093995 (n + 1)).toNat

end

end A094332.P15561462323265858563

/-! ## A094332.P10141094457412839527

`A240354(2*A053735(n))+A028394(abs(1-n))`
-/

namespace A094332.P10141094457412839527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240354 (2 * A053735 n).toNat + A028394 |1 - (n : ℤ)|.toNat

end

end A094332.P10141094457412839527

/-! ## A094332.P4144139697283576283

`A069517(A215144(n))+A028394(abs(1-n))`
-/

namespace A094332.P4144139697283576283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (A215144 n).toNat + A028394 |1 - (n : ℤ)|.toNat

end

end A094332.P4144139697283576283

/-! ## A094332.P18411312134922696363

`A028394(abs(1-n))+A008683((n+1)²)`
-/

namespace A094332.P18411312134922696363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028394 |1 - (n : ℤ)|.toNat + A008683 ((n + 1) ^ 2)

end

end A094332.P18411312134922696363

/-! ## A094332.P7803476926197634034

`A303709(A008778(n))+A028394(abs(1-n))`
-/

namespace A094332.P7803476926197634034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A008778 n).toNat + A028394 |1 - (n : ℤ)|.toNat

end

end A094332.P7803476926197634034

/-! ## A094332.P15668152246517544796

`A349352(A028394(n))-A349351(A028394(n))`
-/

namespace A094332.P15668152246517544796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349352 (A028394 n).toNat - A349351 (A028394 n).toNat

end

end A094332.P15668152246517544796

/-! ## A094332.P12387104131991102226

`A168221(A028394(n+1))`
-/

namespace A094332.P12387104131991102226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168221 (A028394 (n + 1)).toNat

end

end A094332.P12387104131991102226

/-!
# A094333: a(1) = 1, a(n) = least proper multiple of a(n-1) which is a concatenation of successive numbers. Terms with more than one digit must be a concatenation of at least two successive numbers.

The programs for A094333, there is no canonical definition to state claims against.
-/

/-! ## A094333.P11880351764345400758

`∏[A028898(∑[A093853(n)])]`
-/

namespace A094333.P11880351764345400758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093853 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094333.P11880351764345400758

/-! ## A094333.P3365391217214537996

`∏[∑[A316433(A002524(n))]]`
-/

namespace A094333.P3365391217214537996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316433 (A002524 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094333.P3365391217214537996

/-!
# A094334: a(1) = 1, a(n) = least multiple of a(n-1) which is the reverse concatenation of successive numbers. Terms with more than one digit must be a concatenation of at least two successive numbers.

The programs for A094334, there is no canonical definition to state claims against.
-/

/-! ## A094334.P6149166582481771117

`A227368(a(n-1)+2)` with `a(0)=1, a(1)=2`
-/

namespace A094334.P6149166582481771117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A227368 (a (n - 1) + 2).toNat

end

end A094334.P6149166582481771117

/-! ## A094334.P12431098007065055218

`∑[A359906(A062868(n))]`
-/

namespace A094334.P12431098007065055218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359906 (A062868 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094334.P12431098007065055218

/-!
# A094336: Product of next n numbers divided by the largest factorial divisor.

The programs for A094336, there is no canonical definition to state claims against.
-/

/-! ## A094336.P12605653272818039133

`A011973(n*A042251(n))`
-/

namespace A094336.P12605653272818039133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 ((n : ℤ) * A042251 n).toNat

end

end A094336.P12605653272818039133

/-! ## A094336.P9777398816501617546

`A000265(C(A270929(n+1), or(1, n)))`
-/

namespace A094336.P9777398816501617546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Nat.choose (A270929 (n + 1)).toNat (Nat.lor 1 n))

end

end A094336.P9777398816501617546

/-!
# A094337: a(n) = floor((product of composites among next n numbers)/(product of primes among next n numbers)).

The programs for A094337, there is no canonical definition to state claims against.
-/

/-! ## A094337.P7929921190745072459

`floor(A157625(n+1)/A055773(2*(n+1)))`
-/

namespace A094337.P7929921190745072459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157625 (n + 1) : ℚ) / (A055773 (2 * (n + 1)) : ℚ)⌋

end

end A094337.P7929921190745072459

/-! ## A094337.P11712919195434536943

`floor((n+1)!*A263931(n+1)/A055773(2*(n+1)))`
-/

namespace A094337.P11712919195434536943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.factorial (n + 1) : ℤ) * A263931 (n + 1) : ℚ) / (A055773 (2 * (n + 1)) : ℚ)⌋

end

end A094337.P11712919195434536943

/-! ## A094337.P11624614665722640741

`floor(A000142(n+1)*A263931(n+1)/A055773(2*(n+1)))`
-/

namespace A094337.P11624614665722640741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 (n + 1) * A263931 (n + 1) : ℚ) / (A055773 (2 * (n + 1)) : ℚ)⌋

end

end A094337.P11624614665722640741

/-! ## A094337.P16301300475061418006

`floor(A000142(n+1)*A182923(2*(n+1))/A055773(2*(n+1)))`
-/

namespace A094337.P16301300475061418006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 (n + 1) * A182923 (2 * (n + 1)) : ℚ) / (A055773 (2 * (n + 1)) : ℚ)⌋

end

end A094337.P16301300475061418006

/-! ## A094337.P17378027344689165290

`floor(A000142(n+1)*A212791(2*(n+1))/A055773(2*(n+1)))`
-/

namespace A094337.P17378027344689165290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 (n + 1) * A212791 (2 * (n + 1)) : ℚ) / (A055773 (2 * (n + 1)) : ℚ)⌋

end

end A094337.P17378027344689165290

/-!
# A094338: (Sum of composites among next n numbers)-(sum of primes among next n numbers).

The programs for A094338, the canonical program `A094338.P8537157207539536951` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094338 has offset 1).

The definition of A094338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094338.P8537157207539536951

`Δ[A051352(A179865(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A094338

/-- `Δ[A051352(A179865(n+1))]` -/
def P8537157207539536951.Spec : Prop :=
  ∀ n, P8537157207539536951.a n = A094338 (n + 1)

theorem P8537157207539536951.correct : P8537157207539536951.Spec := by
  intro n
  simp only [A094338, Nat.add_sub_cancel]

end A094338

/-! ## A094338.P8359633309394320136

`Δ[A051352(A080036(C(n, 2)))]`
-/

namespace A094338.P8359633309394320136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 (A080036 (Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094338.P8359633309394320136

namespace A094338

/-- `Δ[A051352(A080036(C(n, 2)))]` -/
def P8359633309394320136.Spec : Prop :=
  ∀ n, P8359633309394320136.a n = A094338 (n + 1)

end A094338

/-! ## A094338.P16956966810979452445

`Δ[A051352(A027379(n)-2*n)]`
-/

namespace A094338.P16956966810979452445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 (A027379 n - (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094338.P16956966810979452445

namespace A094338

/-- `Δ[A051352(A027379(n)-2*n)]` -/
def P16956966810979452445.Spec : Prop :=
  ∀ n, P16956966810979452445.a n = A094338 (n + 1)

end A094338

/-! ## A094338.P1459126070183205428

`Δ[A051352(A000217(n))]-C(2, n+2)`
-/

namespace A094338.P1459126070183205428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.choose 2 (n + 2) : ℤ)

end

end A094338.P1459126070183205428

namespace A094338

/-- `Δ[A051352(A000217(n))]-C(2, n+2)` -/
def P1459126070183205428.Spec : Prop :=
  ∀ n, P1459126070183205428.a n = A094338 (n + 1)

end A094338

/-! ## A094338.P14809084454190961504

`Δ[A051352(A028310(A000217(n)))]`
-/

namespace A094338.P14809084454190961504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 (A028310 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094338.P14809084454190961504

namespace A094338

/-- `Δ[A051352(A028310(A000217(n)))]` -/
def P14809084454190961504.Spec : Prop :=
  ∀ n, P14809084454190961504.a n = A094338 (n + 1)

end A094338

/-! ## A094338.P9293546912093129988

`Δ[A051352(A007318(A027379(n)))]`
-/

namespace A094338.P9293546912093129988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 (A007318 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094338.P9293546912093129988

namespace A094338

/-- `Δ[A051352(A007318(A027379(n)))]` -/
def P9293546912093129988.Spec : Prop :=
  ∀ n, P9293546912093129988.a n = A094338 (n + 1)

end A094338

/-! ## A094338.P11262638962389356813

`Δ[A051352(A000217(A000007(n)+n))]`
-/

namespace A094338.P11262638962389356813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 (A000217 (A000007 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094338.P11262638962389356813

namespace A094338

/-- `Δ[A051352(A000217(A000007(n)+n))]` -/
def P11262638962389356813.Spec : Prop :=
  ∀ n, P11262638962389356813.a n = A094338 (n + 1)

end A094338

/-!
# A094339: Beginning with 2, least number not occurring earlier that divides the sum of all previous terms.

The programs for A094339, there is no canonical definition to state claims against.
-/

/-! ## A094339.P4620928441793453268

`A109890(A181440(n+1))`
-/

namespace A094339.P4620928441793453268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (A181440 (n + 1)).toNat

end

end A094339.P4620928441793453268

/-! ## A094339.P15940265995819999039

`A109890(A154955(n+1)+1+n)`
-/

namespace A094339.P15940265995819999039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (A154955 (n + 1) + 1 + (n : ℤ)).toNat

end

end A094339.P15940265995819999039

/-! ## A094339.P4066504203719153406

`A109890(n+1)+A008683(A004166(n))`
-/

namespace A094339.P4066504203719153406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 1) + A008683 (A004166 n).toNat

end

end A094339.P4066504203719153406

/-! ## A094339.P16160923131608615872

`A109890(n+1)+A008683(A062383(n))`
-/

namespace A094339.P16160923131608615872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 1) + A008683 (A062383 n).toNat

end

end A094339.P16160923131608615872

/-! ## A094339.P5759375091718336594

`A154271(A000203(n+1))+A109890(n+1)`
-/

namespace A094339.P5759375091718336594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A000203 (n + 1)).toNat + A109890 (n + 1)

end

end A094339.P5759375091718336594

/-! ## A094339.P3252616446115707217

`xor(A109890(n+1), A277936(A060594(n+1)))`
-/

namespace A094339.P3252616446115707217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A109890 (n + 1)) (A277936 (A060594 (n + 1)).toNat)

end

end A094339.P3252616446115707217

/-! ## A094339.P14551221366034100799

`A109890(n+1)+A008683(A139251(n+1))`
-/

namespace A094339.P14551221366034100799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 1) + A008683 (A139251 (n + 1)).toNat

end

end A094339.P14551221366034100799

/-! ## A094339.P839384412568272120

`A109890(n+1)-A010815(A118753(n))`
-/

namespace A094339.P839384412568272120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 1) - A010815 (A118753 n).toNat

end

end A094339.P839384412568272120

/-! ## A094339.P17479157141880452840

`A109890(n+1)+A008683(A232503(n+1))`
-/

namespace A094339.P17479157141880452840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 1) + A008683 (A232503 (n + 1)).toNat

end

end A094339.P17479157141880452840

/-! ## A094339.P1401674393685424073

`xor(A109890(n+1), A242457(A308711(n+1)))`
-/

namespace A094339.P1401674393685424073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A109890 (n + 1)) (A242457 (A308711 (n + 1)).toNat)

end

end A094339.P1401674393685424073

/-! ## A094339.P17336121378884774714

`xor(A109890(n+1), A242457(n²+2))`
-/

namespace A094339.P17336121378884774714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A109890 (n + 1)) (A242457 (n ^ 2 + 2))

end

end A094339.P17336121378884774714

/-!
# A094340: a(n) = n-th partial sum of A094339 divided by A094339(n+1).

The programs for A094340, there is no canonical definition to state claims against.
-/

/-! ## A094340.P4009026838585157370

`A111241(A000038(n)²+n+1)`
-/

namespace A094340.P4009026838585157370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111241 (A000038 n ^ 2 + (n + 1 : ℤ)).toNat

end

end A094340.P4009026838585157370

/-! ## A094340.P16087613269660226062

`A111241(2*A000038(n)+n+1)`
-/

namespace A094340.P16087613269660226062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111241 (2 * A000038 n + (n : ℤ) + 1).toNat

end

end A094340.P16087613269660226062

/-! ## A094340.P7457139566330145020

`∑[A094339(n+1)]/A094339(n+2)`
-/

namespace A094340.P7457139566330145020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A094339 (n + 2) : ℚ)

end

end A094340.P7457139566330145020

/-! ## A094340.P13852690998457018436

`A109735(n+2)/A094339(n+2)-1`
-/

namespace A094340.P13852690998457018436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109735 (n + 2) : ℚ) / (A094339 (n + 2) : ℚ) - 1

end

end A094340.P13852690998457018436

/-! ## A094340.P13978358017956204093

`ceil(acot(n))*A111241(A123108(2*n)+1)`
-/

namespace A094340.P13978358017956204093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A111241 (A123108 (2 * n) + 1).toNat

end

end A094340.P13978358017956204093

/-! ## A094340.P5783961559401814933

`C(2, n+2)+A109735(n+1)/A094339(n+2)`
-/

namespace A094340.P5783961559401814933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℚ) + (A109735 (n + 1) : ℚ) / (A094339 (n + 2) : ℚ)

end

end A094340.P5783961559401814933

/-! ## A094340.P17834199460926038165

`A111241(A123108(2*n)+1)+A000007(n)`
-/

namespace A094340.P17834199460926038165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111241 (A123108 (2 * n) + 1).toNat + A000007 n

end

end A094340.P17834199460926038165

/-! ## A094340.P13656268433783875491

`A000007(n)+A109735(n+1)/A094339(n+2)`
-/

namespace A094340.P13656268433783875491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A109735 (n + 1) : ℚ) / (A094339 (n + 2) : ℚ)

end

end A094340.P13656268433783875491

/-! ## A094340.P2118964981301382016

`A049283(2*n+1)+A109735(n+1)/A094339(n+2)`
-/

namespace A094340.P2118964981301382016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049283 (2 * n + 1) : ℚ) + (A109735 (n + 1) : ℚ) / (A094339 (n + 2) : ℚ)

end

end A094340.P2118964981301382016

/-!
# A094341: Index of the occurrence of n in A094339.

The programs for A094341, there is no canonical definition to state claims against.
-/

/-! ## A094341.P12390842456497509539

`A109736(C(2, C(3, n²))+n)`
-/

namespace A094341.P12390842456497509539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)

end

end A094341.P12390842456497509539

/-! ## A094341.P14697463581870310571

`A181440(A109736(n+1))`
-/

namespace A094341.P14697463581870310571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A109736 (n + 1)).toNat

end

end A094341.P14697463581870310571

/-! ## A094341.P2711958406178128714

`A109736(A240354(n)+1+n)`
-/

namespace A094341.P2711958406178128714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (A240354 n + 1 + (n : ℤ)).toNat

end

end A094341.P2711958406178128714

/-! ## A094341.P17473898195552243809

`A109736(A240356(n)+1+n)`
-/

namespace A094341.P17473898195552243809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (A240356 n + 1 + (n : ℤ)).toNat

end

end A094341.P17473898195552243809

/-! ## A094341.P9715352998166896173

`A109736(A154955(n+1)+1+n)`
-/

namespace A094341.P9715352998166896173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (A154955 (n + 1) + 1 + (n : ℤ)).toNat

end

end A094341.P9715352998166896173

/-! ## A094341.P1922957575366135138

`A109736(A109736(A094339(n+1)))`
-/

namespace A094341.P1922957575366135138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (A109736 (A094339 (n + 1)).toNat).toNat

end

end A094341.P1922957575366135138

/-! ## A094341.P9235851555271174831

`A109736(n+1)+A008683(A004166(n))`
-/

namespace A094341.P9235851555271174831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (n + 1) + A008683 (A004166 n).toNat

end

end A094341.P9235851555271174831

/-! ## A094341.P12797492026967642203

`A109736(n+1)+A008683(A006501(n))`
-/

namespace A094341.P12797492026967642203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (n + 1) + A008683 (A006501 n).toNat

end

end A094341.P12797492026967642203

/-! ## A094341.P5781632568883910774

`A109736(n+1)+A008683(A062383(n))`
-/

namespace A094341.P5781632568883910774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (n + 1) + A008683 (A062383 n).toNat

end

end A094341.P5781632568883910774

/-! ## A094341.P8425875599892983991

`A109736(n+1)+A008683(A077591(n))`
-/

namespace A094341.P8425875599892983991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (n + 1) + A008683 (A077591 n).toNat

end

end A094341.P8425875599892983991

/-!
# A094342: Successive record-setters for tau(n+1)*tau(n-1)/tau(n)^2, where tau(n) is the number of divisors of n.

The programs for A094342, there is no canonical definition to state claims against.
-/

/-! ## A094342.P15521497275486933302

`p?[A189828(A077168(n))]`
-/

namespace A094342.P15521497275486933302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189828 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094342.P15521497275486933302

/-! ## A094342.P6279211994305082811

`A189828(record[A175239(n+1)])`
-/

namespace A094342.P6279211994305082811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094342.P6279211994305082811

/-! ## A094342.P4435272288083425212

`p?[A189828(A065673(n+1))]`
-/

namespace A094342.P4435272288083425212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189828 (A065673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094342.P4435272288083425212

/-! ## A094342.P13064644062096844035

`p?[A189828(A211100(2^n))]`
-/

namespace A094342.P13064644062096844035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189828 (A211100 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094342.P13064644062096844035

/-! ## A094342.P4830811967304131738

`A090481(∑[dr(A256756(n))!])`
-/

namespace A094342.P4830811967304131738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot (A256756 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090481 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094342.P4830811967304131738

/-!
# A094343: List of pairs of primes (p, q) with q - p = 4.

The programs for A094343, there is no canonical definition to state claims against.
-/

/-! ## A094343.P4087943397440668929

`A072541(n+1)-1`
-/

namespace A094343.P4087943397440668929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072541 (n + 1) - 1

end

end A094343.P4087943397440668929

/-! ## A094343.P16709352605907349608

`A286714(gcd(n, n+1))+A072541(n+1)`
-/

namespace A094343.P16709352605907349608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286714 (Nat.gcd n (n + 1)) + A072541 (n + 1)

end

end A094343.P16709352605907349608

/-! ## A094343.P6858289969974870985

`A286714(xor(n, xor(1, n)))+A072541(n+1)`
-/

namespace A094343.P6858289969974870985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286714 (Nat.xor n (Nat.xor 1 n)) + A072541 (n + 1)

end

end A094343.P6858289969974870985

/-! ## A094343.P17941810863666691684

`A118438(ceil(1/(n+1)))+A072541(n+1)`
-/

namespace A094343.P17941810863666691684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118438 ⌈1 / (n + 1 : ℚ)⌉.toNat + A072541 (n + 1)

end

end A094343.P17941810863666691684

/-! ## A094343.P3524896851823381420

`A307428(A093074(n+1))+A072541(n+1)`
-/

namespace A094343.P3524896851823381420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A093074 (n + 1)).toNat + A072541 (n + 1)

end

end A094343.P3524896851823381420

/-! ## A094343.P1611802454606954110

`A307428(A099609(n+1))+A072541(n+1)`
-/

namespace A094343.P1611802454606954110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A099609 (n + 1)).toNat + A072541 (n + 1)

end

end A094343.P1611802454606954110

/-! ## A094343.P6067824675681575462

`A307428(A077800(n+1))+A072541(n+1)`
-/

namespace A094343.P6067824675681575462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A077800 (n + 1)).toNat + A072541 (n + 1)

end

end A094343.P6067824675681575462

/-! ## A094343.P12471198591418769481

`A307428(A124589(n+1))+A072541(n+1)`
-/

namespace A094343.P12471198591418769481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A124589 (n + 1)).toNat + A072541 (n + 1)

end

end A094343.P12471198591418769481

/-! ## A094343.P15799502408683692694

`A007917(A072541(n+1))`
-/

namespace A094343.P15799502408683692694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A072541 (n + 1)).toNat

end

end A094343.P15799502408683692694

/-! ## A094343.P14917728246013502639

`A307428(A094743(n+1))+A072541(n+1)`
-/

namespace A094343.P14917728246013502639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A094743 (n + 1)).toNat + A072541 (n + 1)

end

end A094343.P14917728246013502639

/-! ## A094343.P5675596407819116669

`A307428(A031505(n+1))+A072541(n+1)`
-/

namespace A094343.P5675596407819116669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A031505 (n + 1)).toNat + A072541 (n + 1)

end

end A094343.P5675596407819116669

/-!
# A094344: Triangle T(n,k), 0<= k <= n, read by rows; given by [0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, ...] DELTA [1, 0, 2, 1, 3, 2, 4, 3, 5, 4, 6, 5, ...] where DELTA is the operator defined in A084938.

The programs for A094344, there is no canonical definition to state claims against.
-/

/-! ## A094344.P1776841533790768600

`A151795(A350256(n))+A132393(n)`
-/

namespace A094344.P1776841533790768600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A350256 n).toNat + A132393 n

end

end A094344.P1776841533790768600

/-! ## A094344.P89233269746566799

`A343858(A245111(n))+A132393(n)`
-/

namespace A094344.P89233269746566799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343858 (A245111 n).toNat + A132393 n

end

end A094344.P89233269746566799

/-! ## A094344.P18349482243076450698

`A352363(n)+A151795(A350256(n))`
-/

namespace A094344.P18349482243076450698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352363 n + A151795 (A350256 n).toNat

end

end A094344.P18349482243076450698

/-! ## A094344.P9321252827944474141

`A352363(n)+A343858(A245111(n))`
-/

namespace A094344.P9321252827944474141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352363 n + A343858 (A245111 n).toNat

end

end A094344.P9321252827944474141

/-! ## A094344.P16605026628231660016

`A211183(n)-A124761(A008233(n))`
-/

namespace A094344.P16605026628231660016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211183 n - A124761 (A008233 n).toNat

end

end A094344.P16605026628231660016

/-!
# A094345: Sum of all digits in ternary expansions of 0, ..., n.

The programs for A094345, the canonical program `A094345.P14742956479568859002` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094345 has offset 0).

The definition of A094345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094345.P14742956479568859002

`∑[a(floor(n/3))+n%3]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094345

/-- `∑[a(floor(n/3))+n%3]` -/
def P14742956479568859002.Spec : Prop :=
  ∀ n, (P14742956479568859002.a n : ℤ) = A094345 n

theorem P14742956479568859002.correct : P14742956479568859002.Spec := by
  intro n
  simp only [A094345]

end A094345

/-! ## A094345.P9163593237175526236

`∑[a(floor(n/3))+n-3*floor(n/3)]` with `a(0)=0`
-/

namespace A094345.P9163593237175526236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P9163593237175526236

namespace A094345

/-- `∑[a(floor(n/3))+n-3*floor(n/3)]` -/
def P9163593237175526236.Spec : Prop :=
  ∀ n, P9163593237175526236.a n = A094345 n

end A094345

/-! ## A094345.P4496547497068692607

`∑[A053735(n)]`
-/

namespace A094345.P4496547497068692607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P4496547497068692607

namespace A094345

/-- `∑[A053735(n)]` -/
def P4496547497068692607.Spec : Prop :=
  ∀ n, P4496547497068692607.a n = A094345 n

end A094345

/-! ## A094345.P15203684859709565512

`∑[A365722(3*n)]`
-/

namespace A094345.P15203684859709565512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365722 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P15203684859709565512

namespace A094345

/-- `∑[A365722(3*n)]` -/
def P15203684859709565512.Spec : Prop :=
  ∀ n, P15203684859709565512.a n = A094345 n

end A094345

/-! ## A094345.P8591325742718424858

`∑[A230641(n)-n]`
-/

namespace A094345.P8591325742718424858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P8591325742718424858

namespace A094345

/-- `∑[A230641(n)-n]` -/
def P8591325742718424858.Spec : Prop :=
  ∀ n, P8591325742718424858.a n = A094345 n

end A094345

/-! ## A094345.P16059024626716852078

`∑[n-A344853(n)]`
-/

namespace A094345.P16059024626716852078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A344853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P16059024626716852078

namespace A094345

/-- `∑[n-A344853(n)]` -/
def P16059024626716852078.Spec : Prop :=
  ∀ n, P16059024626716852078.a n = A094345 n

end A094345

/-! ## A094345.P13991984933764888296

`∑[∑{digits}[A007089(n), #]]`
-/

namespace A094345.P13991984933764888296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P13991984933764888296

namespace A094345

/-- `∑[∑{digits}[A007089(n), #]]` -/
def P13991984933764888296.Spec : Prop :=
  ∀ n, (P13991984933764888296.a n : ℤ) = A094345 n

end A094345

/-! ## A094345.P13335559474999411172

`∑[A173523(n+1)-1]`
-/

namespace A094345.P13335559474999411172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P13335559474999411172

namespace A094345

/-- `∑[A173523(n+1)-1]` -/
def P13335559474999411172.Spec : Prop :=
  ∀ n, P13335559474999411172.a n = A094345 n

end A094345

/-! ## A094345.P15479883258678832729

`∑[n-2*A054861(n)]`
-/

namespace A094345.P15479883258678832729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P15479883258678832729

namespace A094345

/-- `∑[n-2*A054861(n)]` -/
def P15479883258678832729.Spec : Prop :=
  ∀ n, P15479883258678832729.a n = A094345 n

end A094345

/-! ## A094345.P6034155102877469500

`∑[2*A089792(n)-n]`
-/

namespace A094345.P6034155102877469500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089792 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P6034155102877469500

namespace A094345

/-- `∑[2*A089792(n)-n]` -/
def P6034155102877469500.Spec : Prop :=
  ∀ n, P6034155102877469500.a n = A094345 n

end A094345

/-! ## A094345.P5570272818211585028

`∑[A003313(A006047(n))]`
-/

namespace A094345.P5570272818211585028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A006047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P5570272818211585028

namespace A094345

/-- `∑[A003313(A006047(n))]` -/
def P5570272818211585028.Spec : Prop :=
  ∀ n, P5570272818211585028.a n = A094345 n

end A094345

/-! ## A094345.P15245756887721354637

`∑[A056239(A331279(n))]`
-/

namespace A094345.P15245756887721354637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A331279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P15245756887721354637

namespace A094345

/-- `∑[A056239(A331279(n))]` -/
def P15245756887721354637.Spec : Prop :=
  ∀ n, P15245756887721354637.a n = A094345 n

end A094345

/-! ## A094345.P3507581835290204771

`∑[A062756(n)+2*A081603(n)]`
-/

namespace A094345.P3507581835290204771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + 2 * A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P3507581835290204771

namespace A094345

/-- `∑[A062756(n)+2*A081603(n)]` -/
def P3507581835290204771.Spec : Prop :=
  ∀ n, P3507581835290204771.a n = A094345 n

end A094345

/-! ## A094345.P9133892651728090016

`∑[A062756(n)+A001222(A117592(n)²)]`
-/

namespace A094345.P9133892651728090016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + A001222 (A117592 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P9133892651728090016

namespace A094345

/-- `∑[A062756(n)+A001222(A117592(n)²)]` -/
def P9133892651728090016.Spec : Prop :=
  ∀ n, P9133892651728090016.a n = A094345 n

end A094345

/-! ## A094345.P5533186793669992723

`∑[n-(A054861(A028310(n))+A054861(n))]`
-/

namespace A094345.P5533186793669992723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A054861 (A028310 n).toNat + A054861 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P5533186793669992723

namespace A094345

/-- `∑[n-(A054861(A028310(n))+A054861(n))]` -/
def P5533186793669992723.Spec : Prop :=
  ∀ n, P5533186793669992723.a n = A094345 n

end A094345

/-! ## A094345.P10790612417006249067

`A391637(n+1)-(A391637(n)+A053735(n+1))`
-/

namespace A094345.P10790612417006249067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391637 (n + 1) - (A391637 n + A053735 (n + 1))

end

end A094345.P10790612417006249067

namespace A094345

/-- `A391637(n+1)-(A391637(n)+A053735(n+1))` -/
def P10790612417006249067.Spec : Prop :=
  ∀ n, P10790612417006249067.a n = A094345 n

end A094345

/-! ## A094345.P1885400621421716282

`∑[A078458(A120879(n))]`
-/

namespace A094345.P1885400621421716282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078458 (A120879 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P1885400621421716282

namespace A094345

/-- `∑[A078458(A120879(n))]` -/
def P1885400621421716282.Spec : Prop :=
  ∀ n, P1885400621421716282.a n = A094345 n

end A094345

/-! ## A094345.P11427628129751224874

`∑[A027615(A023717(n))]`
-/

namespace A094345.P11427628129751224874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A023717 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P11427628129751224874

namespace A094345

/-- `∑[A027615(A023717(n))]` -/
def P11427628129751224874.Spec : Prop :=
  ∀ n, P11427628129751224874.a n = A094345 n

end A094345

/-! ## A094345.P11030580934696585019

`∑[A000120(A325985(n))]`
-/

namespace A094345.P11030580934696585019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A325985 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P11030580934696585019

namespace A094345

/-- `∑[A000120(A325985(n))]` -/
def P11030580934696585019.Spec : Prop :=
  ∀ n, P11030580934696585019.a n = A094345 n

end A094345

/-! ## A094345.P12887967226310218024

`∑[A000120(A006288(n))]`
-/

namespace A094345.P12887967226310218024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094345.P12887967226310218024

namespace A094345

/-- `∑[A000120(A006288(n))]` -/
def P12887967226310218024.Spec : Prop :=
  ∀ n, P12887967226310218024.a n = A094345 n

end A094345

/-!
# A094347: a(n) = 14*a(n-1) - a(n-2); a(0) = a(1) = 2.

The programs for A094347, the canonical program `A094347.P11238643487155637029` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094347 has offset 0).

The definition of A094347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-a(n-2)` (program `A094347.P11238643487155637029`, by `A094347.P11238643487155637029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094347.P11238643487155637029

`14*a(n-1)-a(n-2)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094347

/-- `14*a(n-1)-a(n-2)` -/
def P11238643487155637029.Spec : Prop :=
  ∀ n, P11238643487155637029.a n = A094347 n

theorem P11238643487155637029.correct : P11238643487155637029.Spec := by
  intro n
  simp only [A094347]

end A094347

/-! ## A094347.P5440588978724920915

`2*A122571(n+1)`
-/

namespace A094347.P5440588978724920915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122571 (n + 1)

end

end A094347.P5440588978724920915

namespace A094347

/-- `2*A122571(n+1)` -/
def P5440588978724920915.Spec : Prop :=
  ∀ n, P5440588978724920915.a n = A094347 n

end A094347

/-! ## A094347.P12468155112803485835

`A001075(abs(1-2*n))`
-/

namespace A094347.P12468155112803485835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 |1 - (2 * n : ℤ)|.toNat

end

end A094347.P12468155112803485835

namespace A094347

/-- `A001075(abs(1-2*n))` -/
def P12468155112803485835.Spec : Prop :=
  ∀ n, P12468155112803485835.a n = A094347 n

end A094347

/-! ## A094347.P7268317872043651934

`A108413(2*n)²+1`
-/

namespace A094347.P7268317872043651934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108413 (2 * n) ^ 2 + 1

end

end A094347.P7268317872043651934

namespace A094347

/-- `A108413(2*n)²+1` -/
def P7268317872043651934.Spec : Prop :=
  ∀ n, P7268317872043651934.a n = A094347 n

end A094347

/-! ## A094347.P17048863523304477696

`A092184(abs(1-2*n))+1`
-/

namespace A094347.P17048863523304477696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 |1 - (2 * n : ℤ)|.toNat + 1

end

end A094347.P17048863523304477696

namespace A094347

/-- `A092184(abs(1-2*n))+1` -/
def P17048863523304477696.Spec : Prop :=
  ∀ n, P17048863523304477696.a n = A094347 n

end A094347

/-! ## A094347.P1757278135948574352

`lcm(2, A001075(comp[2*(n+1)]))`
-/

namespace A094347.P1757278135948574352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001075 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A094347.P1757278135948574352

namespace A094347

/-- `lcm(2, A001075(comp[2*(n+1)]))` -/
def P1757278135948574352.Spec : Prop :=
  ∀ n, (P1757278135948574352.a n : ℤ) = A094347 n

end A094347

/-! ## A094347.P3514877983760000771

`Δ[A092184(abs(1-n))]²+1`
-/

namespace A094347.P3514877983760000771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A094347.P3514877983760000771

namespace A094347

/-- `Δ[A092184(abs(1-n))]²+1` -/
def P3514877983760000771.Spec : Prop :=
  ∀ n, P3514877983760000771.a n = A094347 n

end A094347

/-! ## A094347.P3283763062389352913

`2*A041083(A004275(n))`
-/

namespace A094347.P3283763062389352913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041083 (A004275 n).toNat

end

end A094347.P3283763062389352913

namespace A094347

/-- `2*A041083(A004275(n))` -/
def P3283763062389352913.Spec : Prop :=
  ∀ n, P3283763062389352913.a n = A094347 n

end A094347

/-! ## A094347.P1482065005694911468

`A002531(A004273(n))²+1`
-/

namespace A094347.P1482065005694911468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (A004273 n).toNat ^ 2 + 1

end

end A094347.P1482065005694911468

namespace A094347

/-- `A002531(A004273(n))²+1` -/
def P1482065005694911468.Spec : Prop :=
  ∀ n, P1482065005694911468.a n = A094347 n

end A094347

/-! ## A094347.P4257823502817447575

`(A001834(n)-A003500(n))²+1`
-/

namespace A094347.P4257823502817447575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001834 n - A003500 n) ^ 2 + 1

end

end A094347.P4257823502817447575

namespace A094347

/-- `(A001834(n)-A003500(n))²+1` -/
def P4257823502817447575.Spec : Prop :=
  ∀ n, P4257823502817447575.a n = A094347 n

end A094347

/-!
# A094348: Numbers n such that, for some numbers (j,k), j<=k, n is the smallest positive multiple of j (or more) of the first k positive integers.

The programs for A094348, there is no canonical definition to state claims against.
-/

/-! ## A094348.P6174834268193048006

`∪[record[A182940(n+1)], A002182(n+5)]`
-/

namespace A094348.P6174834268193048006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182940 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A094348.P6174834268193048006

/-! ## A094348.P17521188949229115405

`∪[A245092(A236021(n+1)), A002182(n+2)]`
-/

namespace A094348.P17521188949229115405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A236021 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094348.P17521188949229115405

/-! ## A094348.P9902527711520267943

`∪[A077006(n+1), A028310(A236021(n+1))]`
-/

namespace A094348.P9902527711520267943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A236021 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094348.P9902527711520267943

/-! ## A094348.P9979455699707186596

`A245092(∪[A077006(n+1), A236021(n+1)])`
-/

namespace A094348.P9979455699707186596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236021 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A094348.P9979455699707186596

/-! ## A094348.P7055095835921679213

`∪[A002182(n+1), A028310(A236021(n+1))]`
-/

namespace A094348.P7055095835921679213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A236021 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094348.P7055095835921679213

/-!
# A094349: Numbers k such that A094291(k) is odd.

The programs for A094349, there is no canonical definition to state claims against.
-/

/-! ## A094349.P3439228360794781346

`∑[gcd(A075220(n+3), A075224(3*n+1))]`
-/

namespace A094349.P3439228360794781346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075220 (n + 3)) (A075224 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094349.P3439228360794781346

/-!
# A094350: Numbers n such that A094291(n) is not a square.

The programs for A094350, there is no canonical definition to state claims against.
-/

/-! ## A094350.P580522436275944599

`lt[A003231(n+1)%5, 2]`
-/

namespace A094350.P580522436275944599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003231 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A094350.P580522436275944599

/-! ## A094350.P5840217005122073214

`lt[2, A249115(n+1)%5]`
-/

namespace A094350.P5840217005122073214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249115 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094350.P5840217005122073214

/-! ## A094350.P16798795621169168373

`floor(atan(5)*A188029(n+1))`
-/

namespace A094350.P16798795621169168373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (5 : ℝ) * (A188029 (n + 1) : ℝ)⌋

end

end A094350.P16798795621169168373

/-! ## A094350.P14385893088849556450

`eq[0, A145466(floor((n+1)*(3-ϕ)))]`
-/

namespace A094350.P14385893088849556450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145466 ⌊(n + 1 : ℝ) * (3 - Real.goldenRatio)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094350.P14385893088849556450

/-!
# A094352: a(n) = b(0)!*b(1)!*...*b(n)! + 1 where b() = sequence A094351.

The programs for A094352, there is no canonical definition to state claims against.
-/

/-! ## A094352.P16799460483233481677

`∏[A094351(n)!]+1`
-/

namespace A094352.P16799460483233481677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A094351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A094352.P16799460483233481677

/-! ## A094352.P16080655193751624629

`∏[A058911(n+1)!]+1`
-/

namespace A094352.P16080655193751624629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058911 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A094352.P16080655193751624629

/-!
# A094354: Squares arising as a partial product in A094353 + 1.

The programs for A094354, there is no canonical definition to state claims against.
-/

/-! ## A094354.P1991790760917347960

`∏[A094353(n+1)]+1`
-/

namespace A094354.P1991790760917347960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A094354.P1991790760917347960

/-! ## A094354.P325792434822214550

`A246696(A001400(n)²)²`
-/

namespace A094354.P325792434822214550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246696 (A001400 n ^ 2).toNat ^ 2

end

end A094354.P325792434822214550

/-!
# A094358: Squarefree products of factors of Fermat numbers (A023394).

The programs for A094358, there is no canonical definition to state claims against.
-/

/-! ## A094358.P8355745698051877219

`record[A000265(n+1)/A000265(A007733(n+1))]`
-/

namespace A094358.P8355745698051877219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A000265 (A007733 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094358.P8355745698051877219

/-! ## A094358.P14754356830779532365

`record[A000265(n+1)/A000265(A007735(n+1))]`
-/

namespace A094358.P14754356830779532365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A000265 (A007735 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094358.P14754356830779532365

/-!
# A094359: Pair reversal of a Jacobsthal sequence.

The programs for A094359, the canonical program `A094359.P14432682136324900740` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094359 has offset 0).

The definition of A094359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094359.P14432682136324900740

`4*(a(n-2)-n%2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094359

/-- `4*(a(n-2)-n%2)+2` -/
def P14432682136324900740.Spec : Prop :=
  ∀ n, P14432682136324900740.a n = A094359 n

theorem P14432682136324900740.correct : P14432682136324900740.Spec := by
  intro n
  simp only [A094359]

end A094359

/-! ## A094359.P10447268298231103071

`4*(a(n-2)+a(n-3))-a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A094359.P10447268298231103071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  4 * (a (n - 2) + a (n - 3)) - a (n - 1)

end

end A094359.P10447268298231103071

namespace A094359

/-- `4*(a(n-2)+a(n-3))-a(n-1)` -/
def P10447268298231103071.Spec : Prop :=
  ∀ n, P10447268298231103071.a n = A094359 n

end A094359

/-! ## A094359.P15343816622331004192

`A078008(xor(1, n))`
-/

namespace A094359.P15343816622331004192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (Nat.xor 1 n)

end

end A094359.P15343816622331004192

namespace A094359

/-- `A078008(xor(1, n))` -/
def P15343816622331004192.Spec : Prop :=
  ∀ n, P15343816622331004192.a n = A094359 n

end A094359

/-! ## A094359.P2162694065857324397

`A153772(xor(1, n))+2`
-/

namespace A094359.P2162694065857324397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 (Nat.xor 1 n) + 2

end

end A094359.P2162694065857324397

namespace A094359

/-- `A153772(xor(1, n))+2` -/
def P2162694065857324397.Spec : Prop :=
  ∀ n, P2162694065857324397.a n = A094359 n

end A094359

/-! ## A094359.P462975384979261745

`A230096(2*xor(1, n))`
-/

namespace A094359.P462975384979261745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 (2 * Nat.xor 1 n)

end

end A094359.P462975384979261745

namespace A094359

/-- `A230096(2*xor(1, n))` -/
def P462975384979261745.Spec : Prop :=
  ∀ n, P462975384979261745.a n = A094359 n

end A094359

/-! ## A094359.P37582533221126675

`A133684(xor(3, 2*n))`
-/

namespace A094359.P37582533221126675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (Nat.xor 3 (2 * n))

end

end A094359.P37582533221126675

namespace A094359

/-- `A133684(xor(3, 2*n))` -/
def P37582533221126675.Spec : Prop :=
  ∀ n, P37582533221126675.a n = A094359 n

end A094359

/-! ## A094359.P5150991441639290527

`A078008(A004442(n))`
-/

namespace A094359.P5150991441639290527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A004442 n).toNat

end

end A094359.P5150991441639290527

namespace A094359

/-- `A078008(A004442(n))` -/
def P5150991441639290527.Spec : Prop :=
  ∀ n, P5150991441639290527.a n = A094359 n

end A094359

/-! ## A094359.P17790063039435918243

`A133684(A166519(n))`
-/

namespace A094359.P17790063039435918243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A166519 n).toNat

end

end A094359.P17790063039435918243

namespace A094359

/-- `A133684(A166519(n))` -/
def P17790063039435918243.Spec : Prop :=
  ∀ n, P17790063039435918243.a n = A094359 n

end A094359

/-! ## A094359.P15777752412756212946

`A078008(A033999(n)+n)`
-/

namespace A094359.P15777752412756212946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A033999 n + (n : ℤ)).toNat

end

end A094359.P15777752412756212946

namespace A094359

/-- `A078008(A033999(n)+n)` -/
def P15777752412756212946.Spec : Prop :=
  ∀ n, P15777752412756212946.a n = A094359 n

end A094359

/-! ## A094359.P17831066941854051294

`A135574(n)+A131720(n)`
-/

namespace A094359.P17831066941854051294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135574 n + A131720 n

end

end A094359.P17831066941854051294

namespace A094359

/-- `A135574(n)+A131720(n)` -/
def P17831066941854051294.Spec : Prop :=
  ∀ n, P17831066941854051294.a n = A094359 n

end A094359

/-! ## A094359.P12318909943732516730

`A092808(n)-A033999(n)`
-/

namespace A094359.P12318909943732516730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 n - A033999 n

end

end A094359.P12318909943732516730

namespace A094359

/-- `A092808(n)-A033999(n)` -/
def P12318909943732516730.Spec : Prop :=
  ∀ n, P12318909943732516730.a n = A094359 n

end A094359

/-! ## A094359.P1488161161350878926

`A213173(n)-A078008(n)`
-/

namespace A094359.P1488161161350878926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n - A078008 n

end

end A094359.P1488161161350878926

namespace A094359

/-- `A213173(n)-A078008(n)` -/
def P1488161161350878926.Spec : Prop :=
  ∀ n, P1488161161350878926.a n = A094359 n

end A094359

/-! ## A094359.P7601922455565921573

`A040001(n)*A136324(n)`
-/

namespace A094359.P7601922455565921573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A136324 n

end

end A094359.P7601922455565921573

namespace A094359

/-- `A040001(n)*A136324(n)` -/
def P7601922455565921573.Spec : Prop :=
  ∀ n, P7601922455565921573.a n = A094359 n

end A094359

/-! ## A094359.P2158406598119551298

`A134451(n)*A136324(n)`
-/

namespace A094359.P2158406598119551298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n * A136324 n

end

end A094359.P2158406598119551298

namespace A094359

/-- `A134451(n)*A136324(n)` -/
def P2158406598119551298.Spec : Prop :=
  ∀ n, P2158406598119551298.a n = A094359 n

end A094359

/-! ## A094359.P13111740612069294747

`lcm(A010131(n), A136324(n))`
-/

namespace A094359.P13111740612069294747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010131 n) (A136324 n)

end

end A094359.P13111740612069294747

namespace A094359

/-- `lcm(A010131(n), A136324(n))` -/
def P13111740612069294747.Spec : Prop :=
  ∀ n, (P13111740612069294747.a n : ℤ) = A094359 n

end A094359

/-! ## A094359.P11553408327215653362

`A016116(n)²-A078008(n)`
-/

namespace A094359.P11553408327215653362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2 - A078008 n

end

end A094359.P11553408327215653362

namespace A094359

/-- `A016116(n)²-A078008(n)` -/
def P11553408327215653362.Spec : Prop :=
  ∀ n, P11553408327215653362.a n = A094359 n

end A094359

/-! ## A094359.P13297213550069130261

`A133684(2*A004442(n)+1)`
-/

namespace A094359.P13297213550069130261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * A004442 n + 1).toNat

end

end A094359.P13297213550069130261

namespace A094359

/-- `A133684(2*A004442(n)+1)` -/
def P13297213550069130261.Spec : Prop :=
  ∀ n, P13297213550069130261.a n = A094359 n

end A094359

/-! ## A094359.P13123897286419086946

`A078008(1-A010673(n)+n)`
-/

namespace A094359.P13123897286419086946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (1 - A010673 n + (n : ℤ)).toNat

end

end A094359.P13123897286419086946

namespace A094359

/-- `A078008(1-A010673(n)+n)` -/
def P13123897286419086946.Spec : Prop :=
  ∀ n, P13123897286419086946.a n = A094359 n

end A094359

/-! ## A094359.P4425777374580716574

`A078008(1-(A010673(n)-n))`
-/

namespace A094359.P4425777374580716574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (1 - (A010673 n - (n : ℤ))).toNat

end

end A094359.P4425777374580716574

namespace A094359

/-- `A078008(1-(A010673(n)-n))` -/
def P4425777374580716574.Spec : Prop :=
  ∀ n, P4425777374580716574.a n = A094359 n

end A094359

/-!
# A094360: Pair reversal of Jacobsthal-Lucas numbers.

The programs for A094360, the canonical program `A094360.P3132273342312156011` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094360 has offset 0).

The definition of A094360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094360.P3132273342312156011

`2^n*(5+3*(-1)^n)/4-(-1)^n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094360

/-- `2^n*(5+3*(-1)^n)/4-(-1)^n` -/
def P3132273342312156011.Spec : Prop :=
  ∀ n, P3132273342312156011.a n = (A094360 n : ℚ)

end A094360

/-! ## A094360.P15354684285721985956

`abs((-2)^xor(1, n)+1)`
-/

namespace A094360.P15354684285721985956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-2) ^ Nat.xor 1 n + 1|

end

end A094360.P15354684285721985956

namespace A094360

/-- `abs((-2)^xor(1, n)+1)` -/
def P15354684285721985956.Spec : Prop :=
  ∀ n, P15354684285721985956.a n = A094360 n

end A094360

/-! ## A094360.P15744088104132776902

`Δ[3*n%2+4*a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A094360.P15744088104132776902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * (n % 2) + 4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094360.P15744088104132776902

namespace A094360

/-- `Δ[3*n%2+4*a(n-2)]` -/
def P15744088104132776902.Spec : Prop :=
  ∀ n, P15744088104132776902.a n = A094360 n

end A094360

/-! ## A094360.P1205693530628284235

`Δ[A277867(n)]`
-/

namespace A094360.P1205693530628284235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094360.P1205693530628284235

namespace A094360

/-- `Δ[A277867(n)]` -/
def P1205693530628284235.Spec : Prop :=
  ∀ n, P1205693530628284235.a n = A094360 n

end A094360

/-! ## A094360.P14844008202597265848

`A014551(xor(1, n))`
-/

namespace A094360.P14844008202597265848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (Nat.xor 1 n)

end

end A094360.P14844008202597265848

namespace A094360

/-- `A014551(xor(1, n))` -/
def P14844008202597265848.Spec : Prop :=
  ∀ n, P14844008202597265848.a n = A094360 n

end A094360

/-! ## A094360.P3867758944401970416

`A014551(A004442(n))`
-/

namespace A094360.P3867758944401970416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (A004442 n).toNat

end

end A094360.P3867758944401970416

namespace A094360

/-- `A014551(A004442(n))` -/
def P3867758944401970416.Spec : Prop :=
  ∀ n, P3867758944401970416.a n = A094360 n

end A094360

/-! ## A094360.P5605220748594782673

`A140407(A042948(n))`
-/

namespace A094360.P5605220748594782673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 (A042948 n).toNat

end

end A094360.P5605220748594782673

namespace A094360

/-- `A140407(A042948(n))` -/
def P5605220748594782673.Spec : Prop :=
  ∀ n, P5605220748594782673.a n = A094360 n

end A094360

/-! ## A094360.P8879550921306449473

`A014551(A033999(n)+n)`
-/

namespace A094360.P8879550921306449473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (A033999 n + (n : ℤ)).toNat

end

end A094360.P8879550921306449473

namespace A094360

/-- `A014551(A033999(n)+n)` -/
def P8879550921306449473.Spec : Prop :=
  ∀ n, P8879550921306449473.a n = A094360 n

end A094360

/-! ## A094360.P9921870330409536638

`abs(or(A110164(n), A284354(n)))`
-/

namespace A094360.P9921870330409536638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A110164 n) (A284354 n)|

end

end A094360.P9921870330409536638

namespace A094360

/-- `abs(or(A110164(n), A284354(n)))` -/
def P9921870330409536638.Spec : Prop :=
  ∀ n, P9921870330409536638.a n = A094360 n

end A094360

/-! ## A094360.P139692208925450280

`abs(or(A122803(n), A284354(n)))`
-/

namespace A094360.P139692208925450280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A122803 n) (A284354 n)|

end

end A094360.P139692208925450280

namespace A094360

/-- `abs(or(A122803(n), A284354(n)))` -/
def P139692208925450280.Spec : Prop :=
  ∀ n, P139692208925450280.a n = A094360 n

end A094360

/-! ## A094360.P12832677471662930137

`Δ[A084221(n)-A000034(n)]`
-/

namespace A094360.P12832677471662930137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094360.P12832677471662930137

namespace A094360

/-- `Δ[A084221(n)-A000034(n)]` -/
def P12832677471662930137.Spec : Prop :=
  ∀ n, P12832677471662930137.a n = A094360 n

end A094360

/-! ## A094360.P9561048880939904228

`A014551(2-A010684(n)+n)`
-/

namespace A094360.P9561048880939904228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (2 - A010684 n + (n : ℤ)).toNat

end

end A094360.P9561048880939904228

namespace A094360

/-- `A014551(2-A010684(n)+n)` -/
def P9561048880939904228.Spec : Prop :=
  ∀ n, P9561048880939904228.a n = A094360 n

end A094360

/-! ## A094360.P4164761958544398766

`A014551(2-(A010684(n)-n))`
-/

namespace A094360.P4164761958544398766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (2 - (A010684 n - (n : ℤ))).toNat

end

end A094360.P4164761958544398766

namespace A094360

/-- `A014551(2-(A010684(n)-n))` -/
def P4164761958544398766.Spec : Prop :=
  ∀ n, P4164761958544398766.a n = A094360 n

end A094360

/-! ## A094360.P7805259510657060418

`A014551(A133730(2*n)+n)`
-/

namespace A094360.P7805259510657060418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (A133730 (2 * n) + (n : ℤ)).toNat

end

end A094360.P7805259510657060418

namespace A094360

/-- `A014551(A133730(2*n)+n)` -/
def P7805259510657060418.Spec : Prop :=
  ∀ n, P7805259510657060418.a n = A094360 n

end A094360

/-! ## A094360.P9076804075095766957

`Δ[or(A052548(n)-2, A277800(n))]`
-/

namespace A094360.P9076804075095766957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052548 n - 2) (A277800 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094360.P9076804075095766957

namespace A094360

/-- `Δ[or(A052548(n)-2, A277800(n))]` -/
def P9076804075095766957.Spec : Prop :=
  ∀ n, P9076804075095766957.a n = A094360 n

end A094360

/-! ## A094360.P18203251658239465492

`A014551(n-A033999(A141310(n)))`
-/

namespace A094360.P18203251658239465492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 ((n : ℤ) - A033999 (A141310 n).toNat).toNat

end

end A094360.P18203251658239465492

namespace A094360

/-- `A014551(n-A033999(A141310(n)))` -/
def P18203251658239465492.Spec : Prop :=
  ∀ n, P18203251658239465492.a n = A094360 n

end A094360

/-! ## A094360.P704457371210446176

`A014551(n+1-A237420(A141310(n)))`
-/

namespace A094360.P704457371210446176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 ((n + 1 : ℤ) - A237420 (A141310 n).toNat).toNat

end

end A094360.P704457371210446176

namespace A094360

/-- `A014551(n+1-A237420(A141310(n)))` -/
def P704457371210446176.Spec : Prop :=
  ∀ n, P704457371210446176.a n = A094360 n

end A094360

/-! ## A094360.P8816632247447348017

`A014551(A014551(n)+n-A000079(n))`
-/

namespace A094360.P8816632247447348017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (A014551 n + ((n : ℤ) - A000079 n)).toNat

end

end A094360.P8816632247447348017

namespace A094360

/-- `A014551(A014551(n)+n-A000079(n))` -/
def P8816632247447348017.Spec : Prop :=
  ∀ n, P8816632247447348017.a n = A094360 n

end A094360

/-! ## A094360.P6094878118010986641

`Δ[A101622(n)-A016116(n)²]`
-/

namespace A094360.P6094878118010986641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n - A016116 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094360.P6094878118010986641

namespace A094360

/-- `Δ[A101622(n)-A016116(n)²]` -/
def P6094878118010986641.Spec : Prop :=
  ∀ n, P6094878118010986641.a n = A094360 n

end A094360

/-!
# A094361: Pair-reversal of 1, 4, 4, 16, 16, ... (A056450).

The programs for A094361, the canonical program `A094361.P9778261584167258452` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094361 has offset 0).

The definition of A094361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094361.P9778261584167258452

`4*a(n-2)` with `a(0)=4, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094361

/-- `4*a(n-2)` -/
def P9778261584167258452.Spec : Prop :=
  ∀ n, (P9778261584167258452.a n : ℤ) = A094361 n

theorem P9778261584167258452.correct : P9778261584167258452.Spec := by
  intro n
  simp only [A094361]

end A094361

/-! ## A094361.P4610289035388911939

`(9*2^n+7*(-2)^n)/4`
-/

namespace A094361.P4610289035388911939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 2 ^ n : ℤ) + 7 * (-2) ^ n : ℚ) / 4

end

end A094361.P4610289035388911939

namespace A094361

/-- `(9*2^n+7*(-2)^n)/4` -/
def P4610289035388911939.Spec : Prop :=
  ∀ n, P4610289035388911939.a n = (A094361 n : ℚ)

end A094361

/-! ## A094361.P14183463516334876758

`2^abs(Δ[lcm(2, n)])`
-/

namespace A094361.P14183463516334876758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|(f1 (n + 1) : ℤ) - (f1 n : ℤ)| : ℤ)

end

end A094361.P14183463516334876758

namespace A094361

/-- `2^abs(Δ[lcm(2, n)])` -/
def P14183463516334876758.Spec : Prop :=
  ∀ n, P14183463516334876758.a n = (A094361 n : ℚ)

end A094361

/-! ## A094361.P7524096351139989830

`4^ceil(xor(1, n)/2)`
-/

namespace A094361.P7524096351139989830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌈(Nat.xor 1 n : ℚ) / 2⌉ : ℤ)

end

end A094361.P7524096351139989830

namespace A094361

/-- `4^ceil(xor(1, n)/2)` -/
def P7524096351139989830.Spec : Prop :=
  ∀ n, P7524096351139989830.a n = (A094361 n : ℚ)

end A094361

/-! ## A094361.P17951143067169568765

`4^round(xor(1, n)/2)`
-/

namespace A094361.P17951143067169568765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) : ℤ)

end

end A094361.P17951143067169568765

namespace A094361

/-- `4^round(xor(1, n)/2)` -/
def P17951143067169568765.Spec : Prop :=
  ∀ n, P17951143067169568765.a n = (A094361 n : ℚ)

end A094361

/-! ## A094361.P9832553688127476707

`4^∑[1-a(n-1)]` with `a(0)=1, a(1)=-1`
-/

namespace A094361.P9832553688127476707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A094361.P9832553688127476707

namespace A094361

/-- `4^∑[1-a(n-1)]` -/
def P9832553688127476707.Spec : Prop :=
  ∀ n, P9832553688127476707.a n = (A094361 n : ℚ)

end A094361

/-! ## A094361.P6240449594831575268

`2^(n+3-gcd(2, n+1)²)`
-/

namespace A094361.P6240449594831575268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 3 : ℤ) - (Nat.gcd 2 (n + 1) ^ 2 : ℤ) : ℤ)

end

end A094361.P6240449594831575268

namespace A094361

/-- `2^(n+3-gcd(2, n+1)²)` -/
def P6240449594831575268.Spec : Prop :=
  ∀ n, P6240449594831575268.a n = (A094361 n : ℚ)

end A094361

/-! ## A094361.P17713430834633590274

`floor(a(n-2)/(1-3/4))` with `a(0)=4, a(1)=1`
-/

namespace A094361.P17713430834633590274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A094361.P17713430834633590274

namespace A094361

/-- `floor(a(n-2)/(1-3/4))` -/
def P17713430834633590274.Spec : Prop :=
  ∀ n, P17713430834633590274.a n = A094361 n

end A094361

/-! ## A094361.P202938712088526345

`a(n-2)+lcm(3, a(n-2))` with `a(0)=4, a(1)=1`
-/

namespace A094361.P202938712088526345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 2))

end

end A094361.P202938712088526345

namespace A094361

/-- `a(n-2)+lcm(3, a(n-2))` -/
def P202938712088526345.Spec : Prop :=
  ∀ n, (P202938712088526345.a n : ℤ) = A094361 n

end A094361

/-! ## A094361.P9476464863704522737

`∑[a(n-2)+a(n-2)]²` with `a(0)=2, a(1)=-1, a(2)=3`
-/

namespace A094361.P9476464863704522737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 3] fun n f1 =>
  f1 (n - 2) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A094361.P9476464863704522737

namespace A094361

/-- `∑[a(n-2)+a(n-2)]²` -/
def P9476464863704522737.Spec : Prop :=
  ∀ n, P9476464863704522737.a n = A094361 n

end A094361

/-! ## A094361.P10757073651817761850

`Δ[a(n-2)+a(n-2)+1]²` with `a(0)=0, a(1)=2`
-/

namespace A094361.P10757073651817761850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A094361.P10757073651817761850

namespace A094361

/-- `Δ[a(n-2)+a(n-2)+1]²` -/
def P10757073651817761850.Spec : Prop :=
  ∀ n, P10757073651817761850.a n = A094361 n

end A094361

/-! ## A094361.P10909759998931925597

`Δ[1-a(n-2)-a(n-2)]²` with `a(0)=0, a(1)=2`
-/

namespace A094361.P10909759998931925597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  1 - f1 (n - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A094361.P10909759998931925597

namespace A094361

/-- `Δ[1-a(n-2)-a(n-2)]²` -/
def P10909759998931925597.Spec : Prop :=
  ∀ n, P10909759998931925597.a n = A094361 n

end A094361

/-! ## A094361.P7619739173568222162

`a(n-2)+a(n-2)/(1-2/3)` with `a(0)=4, a(1)=1`
-/

namespace A094361.P7619739173568222162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) + a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A094361.P7619739173568222162

namespace A094361

/-- `a(n-2)+a(n-2)/(1-2/3)` -/
def P7619739173568222162.Spec : Prop :=
  ∀ n, P7619739173568222162.a n = (A094361 n : ℚ)

end A094361

/-! ## A094361.P3165108548796381966

`a(n-2)+a(n-2)+a(n-2)+a(n-2)` with `a(0)=4, a(1)=1`
-/

namespace A094361.P3165108548796381966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))

end

end A094361.P3165108548796381966

namespace A094361

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-2)` -/
def P3165108548796381966.Spec : Prop :=
  ∀ n, (P3165108548796381966.a n : ℤ) = A094361 n

theorem P3165108548796381966.correct : P3165108548796381966.Spec := by
  intro n
  simp only [A094361, Nat.add_sub_cancel, A094361.P3165108548796381966.a, A094361.P9778261584167258452.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A094361

/-! ## A094361.P8447922743927018085

`A135530(n)²`
-/

namespace A094361.P8447922743927018085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n ^ 2

end

end A094361.P8447922743927018085

namespace A094361

/-- `A135530(n)²` -/
def P8447922743927018085.Spec : Prop :=
  ∀ n, P8447922743927018085.a n = A094361 n

end A094361

/-! ## A094361.P10803050540030053298

`4^A028242(n)`
-/

namespace A094361.P10803050540030053298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A028242 n : ℤ)

end

end A094361.P10803050540030053298

namespace A094361

/-- `4^A028242(n)` -/
def P10803050540030053298.Spec : Prop :=
  ∀ n, P10803050540030053298.a n = (A094361 n : ℚ)

end A094361

/-! ## A094361.P12879550085892057862

`A056450(xor(1, n))`
-/

namespace A094361.P12879550085892057862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 (Nat.xor 1 n)

end

end A094361.P12879550085892057862

namespace A094361

/-- `A056450(xor(1, n))` -/
def P12879550085892057862.Spec : Prop :=
  ∀ n, P12879550085892057862.a n = A094361 n

end A094361

/-! ## A094361.P2243565569148944808

`A137206(n+1)²`
-/

namespace A094361.P2243565569148944808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 (n + 1) ^ 2

end

end A094361.P2243565569148944808

namespace A094361

/-- `A137206(n+1)²` -/
def P2243565569148944808.Spec : Prop :=
  ∀ n, P2243565569148944808.a n = A094361 n

end A094361

/-! ## A094361.P12671693546061533601

`(A316742(n)+1)²`
-/

namespace A094361.P12671693546061533601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A316742 n + 1) ^ 2

end

end A094361.P12671693546061533601

namespace A094361

/-- `(A316742(n)+1)²` -/
def P12671693546061533601.Spec : Prop :=
  ∀ n, P12671693546061533601.a n = A094361 n

end A094361

/-!
# A094363: Expansion of (eta(q) * eta(q^39)) / (eta(q^3) * eta(q^13)) in powers of q.

The programs for A094363, there is no canonical definition to state claims against.
-/

/-! ## A094363.P14921869584750130385

`A137569(xor(n, A137579(A045674(n))))`
-/

namespace A094363.P14921869584750130385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137569 (Int.xor (n : ℤ) (A137579 (A045674 n).toNat)).toNat

end

end A094363.P14921869584750130385

/-! ## A094363.P17316441785004618071

`A185284(A014261(n+1))+A137569(n)`
-/

namespace A094363.P17316441785004618071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A014261 (n + 1)).toNat + A137569 n

end

end A094363.P17316441785004618071

/-!
# A094364: Expansion of (1-5*x)/(1-10*x-100*x^2).

The programs for A094364, the canonical program `A094364.P9698075557508198151` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094364 has offset 0).

The definition of A094364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094364.P9698075557508198151

`A000032(n)*10^n/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094364

/-- `A000032(n)*10^n/2` -/
def P9698075557508198151.Spec : Prop :=
  ∀ n, P9698075557508198151.a n = (A094364 n : ℚ)

end A094364

/-! ## A094364.P8312123418499051105

`5^n*A084057(n)`
-/

namespace A094364.P8312123418499051105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A084057 n

end

end A094364.P8312123418499051105

namespace A094364

/-- `5^n*A084057(n)` -/
def P8312123418499051105.Spec : Prop :=
  ∀ n, P8312123418499051105.a n = A094364 n

end A094364

/-! ## A094364.P1162261112250586086

`(A001612(n)-1)/2*10^n`
-/

namespace A094364.P1162261112250586086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001612 n - 1 : ℚ) / 2 * (10 ^ n : ℚ)

end

end A094364.P1162261112250586086

namespace A094364

/-- `(A001612(n)-1)/2*10^n` -/
def P1162261112250586086.Spec : Prop :=
  ∀ n, P1162261112250586086.a n = (A094364 n : ℚ)

end A094364

/-! ## A094364.P4789331334755275189

`A329723(n+2)/2*10^n`
-/

namespace A094364.P4789331334755275189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329723 (n + 2) : ℚ) / 2 * (10 ^ n : ℚ)

end

end A094364.P4789331334755275189

namespace A094364

/-- `A329723(n+2)/2*10^n` -/
def P4789331334755275189.Spec : Prop :=
  ∀ n, P4789331334755275189.a n = (A094364 n : ℚ)

end A094364

/-! ## A094364.P4185269996919080479

`Δ[A085449(n)]*A000351(n)`
-/

namespace A094364.P4185269996919080479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000351 n

end

end A094364.P4185269996919080479

namespace A094364

/-- `Δ[A085449(n)]*A000351(n)` -/
def P4185269996919080479.Spec : Prop :=
  ∀ n, P4185269996919080479.a n = A094364 n

end A094364

/-! ## A094364.P10036557812382558654

`A000032(n)/2*A011557(n)`
-/

namespace A094364.P10036557812382558654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / 2 * (A011557 n : ℚ)

end

end A094364.P10036557812382558654

namespace A094364

/-- `A000032(n)/2*A011557(n)` -/
def P10036557812382558654.Spec : Prop :=
  ∀ n, P10036557812382558654.a n = (A094364 n : ℚ)

end A094364

/-! ## A094364.P13558787849733498804

`(Δ[A000045(n)]+A000045(n+1))/2*10^n`
-/

namespace A094364.P13558787849733498804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + A000045 (n + 1) : ℚ) / 2 * (10 ^ n : ℚ)

end

end A094364.P13558787849733498804

namespace A094364

/-- `(Δ[A000045(n)]+A000045(n+1))/2*10^n` -/
def P13558787849733498804.Spec : Prop :=
  ∀ n, P13558787849733498804.a n = (A094364 n : ℚ)

end A094364

/-! ## A094364.P18063097759751647399

`(A085449(n+1)-A085449(n))*A000351(n)`
-/

namespace A094364.P18063097759751647399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085449 (n + 1) - A085449 n) * A000351 n

end

end A094364.P18063097759751647399

namespace A094364

/-- `(A085449(n+1)-A085449(n))*A000351(n)` -/
def P18063097759751647399.Spec : Prop :=
  ∀ n, P18063097759751647399.a n = A094364 n

end A094364

/-!
# A094366: a(n) is the number of two-generated numerical semigroups whose Frobenius number is 2n-1.

The programs for A094366, there is no canonical definition to state claims against.
-/

/-! ## A094366.P4441698882806678730

`A094367(2*n+1)-A094365(2*n+1)`
-/

namespace A094366.P4441698882806678730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094367 (2 * n + 1) - A094365 (2 * n + 1)

end

end A094366.P4441698882806678730

/-! ## A094366.P1143123884453085817

`A325169(A325180(n+1))-Δ[A325166(n+1)]`
-/

namespace A094366.P1143123884453085817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A325180 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A094366.P1143123884453085817

/-! ## A094366.P368817281217227775

`A325169(A325180(n+1))-Δ[A325167(n+1)]`
-/

namespace A094366.P368817281217227775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A325180 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A094366.P368817281217227775

/-! ## A094366.P14671448972154743694

`A131015(A129922(n))`
-/

namespace A094366.P14671448972154743694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131015 (A129922 n).toNat

end

end A094366.P14671448972154743694

/-! ## A094366.P15677369719418162563

`A319394(lt[A278221(n+1), A114225(n)])`
-/

namespace A094366.P15677369719418162563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094366.P15677369719418162563

/-!
# A094369: Numerator of Integrate_{x=0..n} binomial (x, n) dx.

The programs for A094369, there is no canonical definition to state claims against.
-/

/-! ## A094369.P8361593785176613748

`A241186(∑[n]+n)`
-/

namespace A094369.P8361593785176613748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241186 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A094369.P8361593785176613748

/-! ## A094369.P12020778487404594971

`A241186(A000096(n))+char[10]`
-/

namespace A094369.P12020778487404594971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241186 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094369.P12020778487404594971

/-! ## A094369.P3274702863880507049

`A054977(n)*A241186(A000096(n))`
-/

namespace A094369.P3274702863880507049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A241186 (A000096 n).toNat

end

end A094369.P3274702863880507049

/-! ## A094369.P12682850064846170924

`A057427(n)*A241186(A000096(n))`
-/

namespace A094369.P12682850064846170924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A241186 (A000096 n).toNat

end

end A094369.P12682850064846170924

/-! ## A094369.P15449073555268223745

`or(A151949(n), A241186(A000096(n)))`
-/

namespace A094369.P15449073555268223745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151949 n) (A241186 (A000096 n).toNat)

end

end A094369.P15449073555268223745

/-!
# A094370: Denominator of Integrate_{x=0..n} binomial (x, n) dx.

The programs for A094370, there is no canonical definition to state claims against.
-/

/-! ## A094370.P13191737874849478186

`A100621(n)/gcd(n, A100621(n))`
-/

namespace A094370.P13191737874849478186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100621 n : ℚ) / (Int.gcd (n : ℤ) (A100621 n) : ℚ)

end

end A094370.P13191737874849478186

/-! ## A094370.P4756462716733248954

`lcm(A028310(n), A100621(n))/A028310(n)`
-/

namespace A094370.P4756462716733248954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A028310 n) (A100621 n) : ℚ) / (A028310 n : ℚ)

end

end A094370.P4756462716733248954

/-! ## A094370.P10313404004637624626

`A241187(∑[n]+n)`
-/

namespace A094370.P10313404004637624626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241187 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A094370.P10313404004637624626

/-! ## A094370.P2035562812921591859

`A241187(A000096(n))+char[18]`
-/

namespace A094370.P2035562812921591859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241187 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094370.P2035562812921591859

/-! ## A094370.P12689775034990287421

`A007318(∑[n])*A241187(A000096(n))`
-/

namespace A094370.P12689775034990287421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A241187 (A000096 n).toNat

end

end A094370.P12689775034990287421

/-!
# A094371: Numbers with incrementally smallest ratio A002034(n)/n.

The programs for A094371, there is no canonical definition to state claims against.
-/

/-! ## A094371.P6612464923052590988

`A094372(n+1)*A094634(n+1)`
-/

namespace A094371.P6612464923052590988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094372 (n + 1) * A094634 (n + 1)

end

end A094371.P6612464923052590988

/-! ## A094371.P1791465564629109009

`A309836(A094372(n+1))/A094404(n+1)`
-/

namespace A094371.P1791465564629109009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309836 (A094372 (n + 1)).toNat : ℚ) / (A094404 (n + 1) : ℚ)

end

end A094371.P1791465564629109009

/-! ## A094371.P8073237615091487800

`A309836(A094372(n+1))%A007504(n+4)`
-/

namespace A094371.P8073237615091487800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309836 (A094372 (n + 1)).toNat) (A007504 (n + 4))

end

end A094371.P8073237615091487800

/-! ## A094371.P4588313160036715911

`A309836(A094372(n+1))/A007318(A037227(n+1))`
-/

namespace A094371.P4588313160036715911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309836 (A094372 (n + 1)).toNat : ℚ) / (A007318 (A037227 (n + 1)).toNat : ℚ)

end

end A094371.P4588313160036715911

/-! ## A094371.P11545736129679791404

`A309836(A094372(n+1))/A006530(A113061(n+1))`
-/

namespace A094371.P11545736129679791404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309836 (A094372 (n + 1)).toNat : ℚ) / (A006530 (A113061 (n + 1)).toNat : ℚ)

end

end A094371.P11545736129679791404

/-!
# A094372: Denominators of incrementally smallest ratios A002034(n)/n.

The programs for A094372, there is no canonical definition to state claims against.
-/

/-! ## A094372.P14486036087542969947

`A094371(n+1)/A094634(n+1)`
-/

namespace A094372.P14486036087542969947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094371 (n + 1) : ℚ) / (A094634 (n + 1) : ℚ)

end

end A094372.P14486036087542969947

/-! ## A094372.P11152736731069780397

`A345933(A094371(n+1))`
-/

namespace A094372.P11152736731069780397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (A094371 (n + 1)).toNat

end

end A094372.P11152736731069780397

/-! ## A094372.P11595355392722224717

`A094371(n+1)/A002034(A094371(n+1))*A094404(n+1)`
-/

namespace A094372.P11595355392722224717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094371 (n + 1) : ℚ) / (A002034 (A094371 (n + 1)).toNat : ℚ) * (A094404 (n + 1) : ℚ)

end

end A094372.P11595355392722224717

/-!
# A094373: Expansion of (1-x-x^2)/((1-x)*(1-2*x)).

The programs for A094373, the canonical program `A094373.P8694457968209466808` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094373 has offset 0).

The definition of A094373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094373.P8694457968209466808

`2*a(n-1)-1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094373

/-- `2*a(n-1)-1` -/
def P8694457968209466808.Spec : Prop :=
  ∀ n, P8694457968209466808.a n = A094373 n

theorem P8694457968209466808.correct : P8694457968209466808.Spec := by
  intro n
  simp only [A094373]

end A094373

/-! ## A094373.P14084868490534187118

`A131577(n)+1`
-/

namespace A094373.P14084868490534187118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + 1

end

end A094373.P14084868490534187118

namespace A094373

/-- `A131577(n)+1` -/
def P14084868490534187118.Spec : Prop :=
  ∀ n, P14084868490534187118.a n = A094373 n

end A094373

/-! ## A094373.P7845988020871235529

`∑[ceil(2^(n-2))]`
-/

namespace A094373.P7845988020871235529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094373.P7845988020871235529

namespace A094373

/-- `∑[ceil(2^(n-2))]` -/
def P7845988020871235529.Spec : Prop :=
  ∀ n, P7845988020871235529.a n = A094373 n

end A094373

/-! ## A094373.P9046640022618367479

`round(cos(1)+2^(n-1))`
-/

namespace A094373.P9046640022618367479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094373.P9046640022618367479

namespace A094373

/-- `round(cos(1)+2^(n-1))` -/
def P9046640022618367479.Spec : Prop :=
  ∀ n, P9046640022618367479.a n = A094373 n

end A094373

/-! ## A094373.P17082446845500097870

`round(sin(1)+2^(n-1))`
-/

namespace A094373.P17082446845500097870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094373.P17082446845500097870

namespace A094373

/-- `round(sin(1)+2^(n-1))` -/
def P17082446845500097870.Spec : Prop :=
  ∀ n, P17082446845500097870.a n = A094373 n

end A094373

/-! ## A094373.P12863516413747732633

`ceil(2^(n-1)-cos(2))`
-/

namespace A094373.P12863516413747732633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (2 : ℝ)⌉

end

end A094373.P12863516413747732633

namespace A094373

/-- `ceil(2^(n-1)-cos(2))` -/
def P12863516413747732633.Spec : Prop :=
  ∀ n, P12863516413747732633.a n = A094373 n

end A094373

/-! ## A094373.P3206234723249664631

`ceil(sin(3)+2^(n-1))`
-/

namespace A094373.P3206234723249664631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (3 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A094373.P3206234723249664631

namespace A094373

/-- `ceil(sin(3)+2^(n-1))` -/
def P3206234723249664631.Spec : Prop :=
  ∀ n, P3206234723249664631.a n = A094373 n

end A094373

/-! ## A094373.P6169336895329811569

`round(2^(n-1)-cos(3))`
-/

namespace A094373.P6169336895329811569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (3 : ℝ))

end

end A094373.P6169336895329811569

namespace A094373

/-- `round(2^(n-1)-cos(3))` -/
def P6169336895329811569.Spec : Prop :=
  ∀ n, P6169336895329811569.a n = A094373 n

end A094373

/-! ## A094373.P18048543855548667387

`floor(tan(4)+2^(n-1))`
-/

namespace A094373.P18048543855548667387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (4 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A094373.P18048543855548667387

namespace A094373

/-- `floor(tan(4)+2^(n-1))` -/
def P18048543855548667387.Spec : Prop :=
  ∀ n, P18048543855548667387.a n = A094373 n

end A094373

/-! ## A094373.P8979816198378692497

`ceil(2^(n-1)-tan(3))`
-/

namespace A094373.P8979816198378692497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.tan (3 : ℝ)⌉

end

end A094373.P8979816198378692497

namespace A094373

/-- `ceil(2^(n-1)-tan(3))` -/
def P8979816198378692497.Spec : Prop :=
  ∀ n, P8979816198378692497.a n = A094373 n

end A094373

/-! ## A094373.P9083259887373874305

`floor(atan(2)+2^(n-1))`
-/

namespace A094373.P9083259887373874305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (2 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A094373.P9083259887373874305

namespace A094373

/-- `floor(atan(2)+2^(n-1))` -/
def P9083259887373874305.Spec : Prop :=
  ∀ n, P9083259887373874305.a n = A094373 n

end A094373

/-! ## A094373.P6978668407900417527

`round(atan(1)+2^(n-1))`
-/

namespace A094373.P6978668407900417527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094373.P6978668407900417527

namespace A094373

/-- `round(atan(1)+2^(n-1))` -/
def P6978668407900417527.Spec : Prop :=
  ∀ n, P6978668407900417527.a n = A094373 n

end A094373

/-! ## A094373.P13092029646693876130

`floor(sinh(1)+2^(n-1))`
-/

namespace A094373.P13092029646693876130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A094373.P13092029646693876130

namespace A094373

/-- `floor(sinh(1)+2^(n-1))` -/
def P13092029646693876130.Spec : Prop :=
  ∀ n, P13092029646693876130.a n = A094373 n

end A094373

/-! ## A094373.P6502674638589720941

`round(2^(n-1)-sin(4))`
-/

namespace A094373.P6502674638589720941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (4 : ℝ))

end

end A094373.P6502674638589720941

namespace A094373

/-- `round(2^(n-1)-sin(4))` -/
def P6502674638589720941.Spec : Prop :=
  ∀ n, P6502674638589720941.a n = A094373 n

end A094373

/-! ## A094373.P11388476991751992949

`ceil(2^(n-1)-sin(6))`
-/

namespace A094373.P11388476991751992949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (6 : ℝ)⌉

end

end A094373.P11388476991751992949

namespace A094373

/-- `ceil(2^(n-1)-sin(6))` -/
def P11388476991751992949.Spec : Prop :=
  ∀ n, P11388476991751992949.a n = A094373 n

end A094373

/-! ## A094373.P12941419602185893649

`round(tanh(1)+2^(n-1))`
-/

namespace A094373.P12941419602185893649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094373.P12941419602185893649

namespace A094373

/-- `round(tanh(1)+2^(n-1))` -/
def P12941419602185893649.Spec : Prop :=
  ∀ n, P12941419602185893649.a n = A094373 n

end A094373

/-! ## A094373.P5351212187040975016

`round(tan(7)+2^(n-1))`
-/

namespace A094373.P5351212187040975016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (7 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094373.P5351212187040975016

namespace A094373

/-- `round(tan(7)+2^(n-1))` -/
def P5351212187040975016.Spec : Prop :=
  ∀ n, P5351212187040975016.a n = A094373 n

end A094373

/-! ## A094373.P4258283731474283357

`round(cot(1)+2^(n-1))`
-/

namespace A094373.P4258283731474283357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094373.P4258283731474283357

namespace A094373

/-- `round(cot(1)+2^(n-1))` -/
def P4258283731474283357.Spec : Prop :=
  ∀ n, P4258283731474283357.a n = A094373 n

end A094373

/-! ## A094373.P9361470607866544085

`round(acot(1)+2^(n-1))`
-/

namespace A094373.P9361470607866544085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094373.P9361470607866544085

namespace A094373

/-- `round(acot(1)+2^(n-1))` -/
def P9361470607866544085.Spec : Prop :=
  ∀ n, P9361470607866544085.a n = A094373 n

end A094373

/-!
# A094374: a(n) = (3^n-1)/2 + 2^n.

The programs for A094374, the canonical program `A094374.P7354950833004615143` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094374 has offset 0).

The definition of A094374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094374.P7354950833004615143

`A003462(n)+A000079(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094374

/-- `A003462(n)+A000079(n)` -/
def P7354950833004615143.Spec : Prop :=
  ∀ n, P7354950833004615143.a n = A094374 n

theorem P7354950833004615143.correct : P7354950833004615143.Spec := by
  intro n
  simp only [A094374]

end A094374

/-! ## A094374.P10884505798033370508

`(3^n-1)/2+2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094374.P10884505798033370508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - 1 : ℚ) / 2 + (2 ^ n : ℚ)

end

end A094374.P10884505798033370508

namespace A094374

/-- `(3^n-1)/2+2^n` -/
def P10884505798033370508.Spec : Prop :=
  ∀ n, P10884505798033370508.a n = (A094374 n : ℚ)

end A094374

/-! ## A094374.P18029364640257312244

`∑[ceil(2^(n-1)+3^(n-1))^ceil(sin(n)²)]`
-/

namespace A094374.P18029364640257312244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094374.P18029364640257312244

namespace A094374

/-- `∑[ceil(2^(n-1)+3^(n-1))^ceil(sin(n)²)]` -/
def P18029364640257312244.Spec : Prop :=
  ∀ n, P18029364640257312244.a n = (A094374 n : ℚ)

end A094374

/-! ## A094374.P4256459388227282973

`∑[lcm(abs(1-n)-n, ceil(2^(n-1)+3^(n-1)))]`
-/

namespace A094374.P4256459388227282973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (|1 - (n : ℤ)| - (n : ℤ)) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094374.P4256459388227282973

namespace A094374

/-- `∑[lcm(abs(1-n)-n, ceil(2^(n-1)+3^(n-1)))]` -/
def P4256459388227282973.Spec : Prop :=
  ∀ n, (P4256459388227282973.a n : ℤ) = A094374 n

end A094374

/-! ## A094374.P8912797773720119196

`∑[and(abs(1-n)-n, ceil(2^(n-1)+3^(n-1)))]`
-/

namespace A094374.P8912797773720119196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (|1 - (n : ℤ)| - (n : ℤ)) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094374.P8912797773720119196

namespace A094374

/-- `∑[and(abs(1-n)-n, ceil(2^(n-1)+3^(n-1)))]` -/
def P8912797773720119196.Spec : Prop :=
  ∀ n, P8912797773720119196.a n = A094374 n

end A094374

/-! ## A094374.P13787103584302977493

`∑[A085281(n)]`
-/

namespace A094374.P13787103584302977493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094374.P13787103584302977493

namespace A094374

/-- `∑[A085281(n)]` -/
def P13787103584302977493.Spec : Prop :=
  ∀ n, P13787103584302977493.a n = A094374 n

end A094374

/-! ## A094374.P8253156101798527837

`abs(1-A099754(n))`
-/

namespace A094374.P8253156101798527837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A099754 n|

end

end A094374.P8253156101798527837

namespace A094374

/-- `abs(1-A099754(n))` -/
def P8253156101798527837.Spec : Prop :=
  ∀ n, P8253156101798527837.a n = A094374 n

end A094374

/-! ## A094374.P16004433322220407686

`∑[A229194(2*n+1)]`
-/

namespace A094374.P16004433322220407686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094374.P16004433322220407686

namespace A094374

/-- `∑[A229194(2*n+1)]` -/
def P16004433322220407686.Spec : Prop :=
  ∀ n, P16004433322220407686.a n = A094374 n

end A094374

/-! ## A094374.P15684181710149745418

`abs(1-2^n-A007051(n))`
-/

namespace A094374.P15684181710149745418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 ^ n : ℤ) - A007051 n|

end

end A094374.P15684181710149745418

namespace A094374

/-- `abs(1-2^n-A007051(n))` -/
def P15684181710149745418.Spec : Prop :=
  ∀ n, P15684181710149745418.a n = A094374 n

end A094374

/-! ## A094374.P11527748939055684552

`∑[A011782(n)+floor(3^(n-1))]`
-/

namespace A094374.P11527748939055684552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094374.P11527748939055684552

namespace A094374

/-- `∑[A011782(n)+floor(3^(n-1))]` -/
def P11527748939055684552.Spec : Prop :=
  ∀ n, P11527748939055684552.a n = A094374 n

end A094374

/-! ## A094374.P6145349822788033820

`∑[A140429(n)+A011782(n)]`
-/

namespace A094374.P6145349822788033820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094374.P6145349822788033820

namespace A094374

/-- `∑[A140429(n)+A011782(n)]` -/
def P6145349822788033820.Spec : Prop :=
  ∀ n, P6145349822788033820.a n = A094374 n

end A094374

/-! ## A094374.P11639465453441942328

`∑[A007051(n)-A000392(n)]`
-/

namespace A094374.P11639465453441942328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094374.P11639465453441942328

namespace A094374

/-- `∑[A007051(n)-A000392(n)]` -/
def P11639465453441942328.Spec : Prop :=
  ∀ n, P11639465453441942328.a n = A094374 n

end A094374

/-! ## A094374.P12767323960968657925

`abs(A000079(n)+A007051(n)-1)`
-/

namespace A094374.P12767323960968657925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n + (A007051 n - 1)|

end

end A094374.P12767323960968657925

namespace A094374

/-- `abs(A000079(n)+A007051(n)-1)` -/
def P12767323960968657925.Spec : Prop :=
  ∀ n, P12767323960968657925.a n = A094374 n

end A094374

/-! ## A094374.P15215138583079890656

`abs(A011782(n+1)+A007051(n)-1)`
-/

namespace A094374.P15215138583079890656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) + (A007051 n - 1)|

end

end A094374.P15215138583079890656

namespace A094374

/-- `abs(A011782(n+1)+A007051(n)-1)` -/
def P15215138583079890656.Spec : Prop :=
  ∀ n, P15215138583079890656.a n = A094374 n

end A094374

/-! ## A094374.P10182612624718443645

`floor(A085279(n+1)/2)`
-/

namespace A094374.P10182612624718443645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085279 (n + 1) : ℚ) / 2⌋

end

end A094374.P10182612624718443645

namespace A094374

/-- `floor(A085279(n+1)/2)` -/
def P10182612624718443645.Spec : Prop :=
  ∀ n, P10182612624718443645.a n = A094374 n

end A094374

/-! ## A094374.P16802277056352538834

`abs(A001550(n)-A115098(n))`
-/

namespace A094374.P16802277056352538834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n - A115098 n|

end

end A094374.P16802277056352538834

namespace A094374

/-- `abs(A001550(n)-A115098(n))` -/
def P16802277056352538834.Spec : Prop :=
  ∀ n, P16802277056352538834.a n = A094374 n

end A094374

/-! ## A094374.P5863182267448858248

`(A005056(n)+A000079(n))/2`
-/

namespace A094374.P5863182267448858248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005056 n + A000079 n : ℚ) / 2

end

end A094374.P5863182267448858248

namespace A094374

/-- `(A005056(n)+A000079(n))/2` -/
def P5863182267448858248.Spec : Prop :=
  ∀ n, P5863182267448858248.a n = (A094374 n : ℚ)

end A094374

/-! ## A094374.P6491022262310194073

`(A007689(n)+A000225(n))/2`
-/

namespace A094374.P6491022262310194073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007689 n + A000225 n : ℚ) / 2

end

end A094374.P6491022262310194073

namespace A094374

/-- `(A007689(n)+A000225(n))/2` -/
def P6491022262310194073.Spec : Prop :=
  ∀ n, P6491022262310194073.a n = (A094374 n : ℚ)

end A094374

/-! ## A094374.P15863909052807812440

`(A126646(n)+A000244(n))/2`
-/

namespace A094374.P15863909052807812440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n + A000244 n : ℚ) / 2

end

end A094374.P15863909052807812440

namespace A094374

/-- `(A126646(n)+A000244(n))/2` -/
def P15863909052807812440.Spec : Prop :=
  ∀ n, P15863909052807812440.a n = (A094374 n : ℚ)

end A094374

/-!
# A094375: a(n) = (4^n - 2^n)/2 + 3^n.

The programs for A094375, the canonical program `A094375.P7664695882215444958` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094375 has offset 0).

The definition of A094375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094375.P7664695882215444958

`(4^n-2^n)/2+3^n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094375

/-- `(4^n-2^n)/2+3^n` -/
def P7664695882215444958.Spec : Prop :=
  ∀ n, P7664695882215444958.a n = (A094375 n : ℚ)

end A094375

/-! ## A094375.P17788492625620764312

`Δ[A006095(n)+Δ[3^n/4]]`
-/

namespace A094375.P17788492625620764312
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006095 n : ℚ) + (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094375.P17788492625620764312

namespace A094375

/-- `Δ[A006095(n)+Δ[3^n/4]]` -/
def P17788492625620764312.Spec : Prop :=
  ∀ n, P17788492625620764312.a n = (A094375 n : ℚ)

end A094375

/-! ## A094375.P11324427737105613475

`ceil(A001047(n)+(2^n+4^n)/2)`
-/

namespace A094375.P11324427737105613475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001047 n : ℚ) + (2 ^ n + 4 ^ n : ℚ) / 2⌉

end

end A094375.P11324427737105613475

namespace A094375

/-- `ceil(A001047(n)+(2^n+4^n)/2)` -/
def P11324427737105613475.Spec : Prop :=
  ∀ n, P11324427737105613475.a n = A094375 n

end A094375

/-! ## A094375.P15588048333742921922

`abs(A005056(n)+(2^n-1)*(2^(n-1)-1))`
-/

namespace A094375.P15588048333742921922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A005056 n : ℚ) + ((2 ^ n : ℤ) - 1 : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)|

end

end A094375.P15588048333742921922

namespace A094375

/-- `abs(A005056(n)+(2^n-1)*(2^(n-1)-1))` -/
def P15588048333742921922.Spec : Prop :=
  ∀ n, P15588048333742921922.a n = (A094375 n : ℚ)

end A094375

/-! ## A094375.P6163238198465510966

`Δ[A007051(n)+A006095(n)]`
-/

namespace A094375.P6163238198465510966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + A006095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094375.P6163238198465510966

namespace A094375

/-- `Δ[A007051(n)+A006095(n)]` -/
def P6163238198465510966.Spec : Prop :=
  ∀ n, P6163238198465510966.a n = A094375 n

end A094375

/-! ## A094375.P3687779545831750558

`Δ[A087433(n)+A000392(n)]`
-/

namespace A094375.P3687779545831750558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087433 n + A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094375.P3687779545831750558

namespace A094375

/-- `Δ[A087433(n)+A000392(n)]` -/
def P3687779545831750558.Spec : Prop :=
  ∀ n, P3687779545831750558.a n = A094375 n

end A094375

/-! ## A094375.P527761818665046130

`(A027649(n)+A000302(n))/2`
-/

namespace A094375.P527761818665046130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027649 n + A000302 n : ℚ) / 2

end

end A094375.P527761818665046130

namespace A094375

/-- `(A027649(n)+A000302(n))/2` -/
def P527761818665046130.Spec : Prop :=
  ∀ n, P527761818665046130.a n = (A094375 n : ℚ)

end A094375

/-! ## A094375.P15626039105112819836

`abs(A000244(n)+Δ[A006095(n)])`
-/

namespace A094375.P15626039105112819836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n + (f1 (n + 1) - f1 n)|

end

end A094375.P15626039105112819836

namespace A094375

/-- `abs(A000244(n)+Δ[A006095(n)])` -/
def P15626039105112819836.Spec : Prop :=
  ∀ n, P15626039105112819836.a n = A094375 n

end A094375

/-! ## A094375.P15389245023123948430

`(A027649(n)+A000079(n)²)/2`
-/

namespace A094375.P15389245023123948430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027649 n + A000079 n ^ 2 : ℚ) / 2

end

end A094375.P15389245023123948430

namespace A094375

/-- `(A027649(n)+A000079(n)²)/2` -/
def P15389245023123948430.Spec : Prop :=
  ∀ n, P15389245023123948430.a n = (A094375 n : ℚ)

end A094375

/-! ## A094375.P8781128727173463665

`(A027649(n)+A122803(n)²)/2`
-/

namespace A094375.P8781128727173463665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027649 n + A122803 n ^ 2 : ℚ) / 2

end

end A094375.P8781128727173463665

namespace A094375

/-- `(A027649(n)+A122803(n)²)/2` -/
def P8781128727173463665.Spec : Prop :=
  ∀ n, P8781128727173463665.a n = (A094375 n : ℚ)

end A094375

/-! ## A094375.P7678953704427758219

`Δ[A007581(n)+A000392(n+1)]`
-/

namespace A094375.P7678953704427758219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n + A000392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094375.P7678953704427758219

namespace A094375

/-- `Δ[A007581(n)+A000392(n+1)]` -/
def P7678953704427758219.Spec : Prop :=
  ∀ n, P7678953704427758219.a n = A094375 n

end A094375

/-! ## A094375.P15535998250629572598

`(A000302(n)+∑[A053581(n)])/2`
-/

namespace A094375.P15535998250629572598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000302 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A094375.P15535998250629572598

namespace A094375

/-- `(A000302(n)+∑[A053581(n)])/2` -/
def P15535998250629572598.Spec : Prop :=
  ∀ n, P15535998250629572598.a n = (A094375 n : ℚ)

end A094375

/-! ## A094375.P6728055692553198152

`A283456(n)%A028400(n)`
-/

namespace A094375.P6728055692553198152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283456 n) (A028400 n)

end

end A094375.P6728055692553198152

namespace A094375

/-- `A283456(n)%A028400(n)` -/
def P6728055692553198152.Spec : Prop :=
  ∀ n, P6728055692553198152.a n = A094375 n

end A094375

/-! ## A094375.P14825274583023368915

`Δ[A007581(n+1)-A134168(n)]`
-/

namespace A094375.P14825274583023368915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (n + 1) - A134168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094375.P14825274583023368915

namespace A094375

/-- `Δ[A007581(n+1)-A134168(n)]` -/
def P14825274583023368915.Spec : Prop :=
  ∀ n, P14825274583023368915.a n = A094375 n

end A094375

/-! ## A094375.P10983638152290712590

`Δ[(A002450(n)+A001047(n))/2]`
-/

namespace A094375.P10983638152290712590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002450 n + A001047 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094375.P10983638152290712590

namespace A094375

/-- `Δ[(A002450(n)+A001047(n))/2]` -/
def P10983638152290712590.Spec : Prop :=
  ∀ n, P10983638152290712590.a n = (A094375 n : ℚ)

end A094375

/-!
# A094379: Least number having exactly n representations as ab+ac+bc with 1 <= a <= b <= c.

The programs for A094379, there is no canonical definition to state claims against.
-/

/-! ## A094379.P3533185468716608140

`lt[A067754(n+1), A131456(n+1)]`
-/

namespace A094379.P3533185468716608140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131456 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094379.P3533185468716608140

/-! ## A094379.P15510109007694152076

`lt[A085900(n), A131456(n+1)^5]`
-/

namespace A094379.P15510109007694152076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131456 (n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094379.P15510109007694152076

/-! ## A094379.P8520270136568536609

`lt[A003056(A002061(n)), A067824(n+1)]`
-/

namespace A094379.P8520270136568536609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A002061 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094379.P8520270136568536609

/-! ## A094379.P11641423655040946058

`lt[A255131(n), A045914(A181801(n+1))]`
-/

namespace A094379.P11641423655040946058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045914 (A181801 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094379.P11641423655040946058

/-! ## A094379.P4657884654205530127

`eq[A003313(n+1), A081604(A100577(n+1))]`
-/

namespace A094379.P4657884654205530127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A100577 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094379.P4657884654205530127

/-!
# A094381: Number of numbers having exactly n representations as ab+ac+bc with 1 <= a <= b <= c.

The programs for A094381, there is no canonical definition to state claims against.
-/

/-! ## A094381.P2292491219039244281

`A341038(3*n+4)+A050320(A093143(n))`
-/

namespace A094381.P2292491219039244281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341038 (3 * n + 4) + A050320 (A093143 n).toNat

end

end A094381.P2292491219039244281

/-!
# A094382: Number of quadruples (p, p+d, p+2*d, p+3*d) of primes with d>0 and p+3*d<=n.

The programs for A094382, there is no canonical definition to state claims against.
-/

/-! ## A094382.P6124466272335740226

`A351908(A033270(n+1)+1)`
-/

namespace A094382.P6124466272335740226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (A033270 (n + 1) + 1).toNat

end

end A094382.P6124466272335740226

/-! ## A094382.P1948907045039873411

`A351908(floor(A000720(n+1)+acot(n)))`
-/

namespace A094382.P1948907045039873411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 ⌊(A000720 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A094382.P1948907045039873411

/-! ## A094382.P4932655351893266256

`A351908(A000720(n+1)^ceil(sin(n)²))`
-/

namespace A094382.P4932655351893266256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (SequenceMachineLib.roundAway ((A000720 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A094382.P4932655351893266256

/-! ## A094382.P1561066936210971295

`A351908(A036234(n+1)+floor(acot(n))-1)`
-/

namespace A094382.P1561066936210971295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (A036234 (n + 1) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A094382.P1561066936210971295

/-! ## A094382.P7797934440342072170

`A351908(A000720(n+1)+A000007(n))`
-/

namespace A094382.P7797934440342072170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (A000720 (n + 1) + A000007 n).toNat

end

end A094382.P7797934440342072170

/-! ## A094382.P10128600565330716375

`A351908(A000720(n+1)+A000038(n))`
-/

namespace A094382.P10128600565330716375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (A000720 (n + 1) + A000038 n).toNat

end

end A094382.P10128600565330716375

/-! ## A094382.P9870293467833918870

`A351908(A028310(n)-A065855(n+1))`
-/

namespace A094382.P9870293467833918870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (A028310 n - A065855 (n + 1)).toNat

end

end A094382.P9870293467833918870

/-! ## A094382.P17825628565347290114

`A351908(A036234(n+1)-A178334(n))`
-/

namespace A094382.P17825628565347290114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (A036234 (n + 1) - A178334 n).toNat

end

end A094382.P17825628565347290114

/-! ## A094382.P18401477590486151069

`A351908(or(A000720(n+1), A205808(n)))`
-/

namespace A094382.P18401477590486151069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (Int.lor (A000720 (n + 1)) (A205808 n)).toNat

end

end A094382.P18401477590486151069

/-! ## A094382.P13643459198080310986

`A351908(A151810(n)+A000720(n+1))`
-/

namespace A094382.P13643459198080310986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (A151810 n + A000720 (n + 1)).toNat

end

end A094382.P13643459198080310986

/-!
# A094383: Primes p such that d>0 exists and p-d, p-2*d and p-3*d are also primes.

The programs for A094383, there is no canonical definition to state claims against.
-/

/-! ## A094383.P12668627533647589805

`A217046(lt[A112561(n), A329820(3*n+1)])`
-/

namespace A094383.P12668627533647589805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329820 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217046 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094383.P12668627533647589805

/-!
# A094384: Determinant of n X n partial Hadamard matrix with coefficient m(i,j) 1<=i,j<=n (see comment).

The programs for A094384, the canonical program `A094384.P17881074935222945273` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094384 has offset 1).

The definition of A094384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094384.P17881074935222945273

`∏[-2*a(and(n, n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094384

/-- `∏[-2*a(and(n, n-1))]` -/
def P17881074935222945273.Spec : Prop :=
  ∀ n, P17881074935222945273.a n = A094384 (n + 1)

theorem P17881074935222945273.correct : P17881074935222945273.Spec := by
  intro n
  simp only [A094384, Nat.add_sub_cancel]

end A094384

/-! ## A094384.P10515510795822583896

`(-2)^∑[a(and(n, n-1))+1]` with `a(0)=0`
-/

namespace A094384.P10515510795822583896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094384.P10515510795822583896

namespace A094384

/-- `(-2)^∑[a(and(n, n-1))+1]` -/
def P10515510795822583896.Spec : Prop :=
  ∀ n, P10515510795822583896.a n = A094384 (n + 1)

end A094384

/-! ## A094384.P9763966187870891401

`(-2)^∑[∑[∑{e}[xor(n, -n), 2-#]]]`
-/

namespace A094384.P9763966187870891401
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, (2 - (Nat.factorization (f3 n).natAbs p : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A094384.P9763966187870891401

namespace A094384

/-- `(-2)^∑[∑[∑{e}[xor(n, -n), 2-#]]]` -/
def P9763966187870891401.Spec : Prop :=
  ∀ n, P9763966187870891401.a n = (A094384 (n + 1) : ℚ)

end A094384

/-! ## A094384.P8795908429031314190

`∏[∏[(-2)^∑{e}[xor(n, -n), 2-#]]]`
-/

namespace A094384.P8795908429031314190
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f3 n).natAbs, (2 - (Nat.factorization (f3 n).natAbs p : ℤ)) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094384.P8795908429031314190

namespace A094384

/-- `∏[∏[(-2)^∑{e}[xor(n, -n), 2-#]]]` -/
def P8795908429031314190.Spec : Prop :=
  ∀ n, P8795908429031314190.a n = (A094384 (n + 1) : ℚ)

end A094384

/-! ## A094384.P16533071429112446696

`∏[-2*a(n-2^floor(log2(n)))]` with `a(0)=1`
-/

namespace A094384.P16533071429112446696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -(2 * f1 (n - 2 ^ Nat.log 2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094384.P16533071429112446696

namespace A094384

/-- `∏[-2*a(n-2^floor(log2(n)))]` -/
def P16533071429112446696.Spec : Prop :=
  ∀ n, P16533071429112446696.a n = A094384 (n + 1)

end A094384

/-! ## A094384.P17692657626852283453

`(-2)^A000788(n)`
-/

namespace A094384.P17692657626852283453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (A000788 n : ℤ)

end

end A094384.P17692657626852283453

namespace A094384

/-- `(-2)^A000788(n)` -/
def P17692657626852283453.Spec : Prop :=
  ∀ n, P17692657626852283453.a n = (A094384 (n + 1) : ℚ)

end A094384

/-! ## A094384.P4697063807094926043

`A122803(A000788(n))`
-/

namespace A094384.P4697063807094926043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A000788 n).toNat

end

end A094384.P4697063807094926043

namespace A094384

/-- `A122803(A000788(n))` -/
def P4697063807094926043.Spec : Prop :=
  ∀ n, P4697063807094926043.a n = A094384 (n + 1)

end A094384

/-!
# A094385: Triangle read by rows: T(n, k) = binomial(2*n, k-1)*binomial(2*n-k-1, n-k)/n for n, k >= 1, and T(n, 0) = 0^n.

The programs for A094385, there is no canonical definition to state claims against.
-/

/-! ## A094385.P4831967283161714808

`abs(A157491(n))`
-/

namespace A094385.P4831967283161714808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157491 n|

end

end A094385.P4831967283161714808

/-! ## A094385.P316209746866288986

`A097807(n)*A157491(n)`
-/

namespace A094385.P316209746866288986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A157491 n

end

end A094385.P316209746866288986

/-! ## A094385.P8234130803441663821

`gcd(A000038(n), A157491(n))`
-/

namespace A094385.P8234130803441663821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A157491 n)

end

end A094385.P8234130803441663821

/-! ## A094385.P482916981212323319

`lcm(A020985(n), A157491(n))`
-/

namespace A094385.P482916981212323319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A157491 n)

end

end A094385.P482916981212323319

/-! ## A094385.P8770890567046559500

`gcd(-A157491(n), A186683(3*n+4))`
-/

namespace A094385.P8770890567046559500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A157491 n) (A186683 (3 * n + 4))

end

end A094385.P8770890567046559500

/-!
# A094386: a(n) = floor(sqrt(3)*2^(n-1)).

The programs for A094386, the canonical program `A094386.P3165738204109953300` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094386 has offset 1).

The definition of A094386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(3)*2^n)` (program `A094386.P3165738204109953300`, by `A094386.P3165738204109953300.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094386.P3165738204109953300

`floor(sqrt(3)*2^n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094386

/-- `floor(sqrt(3)*2^n)` -/
def P3165738204109953300.Spec : Prop :=
  ∀ n, P3165738204109953300.a n = A094386 (n + 1)

theorem P3165738204109953300.correct : P3165738204109953300.Spec := by
  intro n
  simp only [A094386, Nat.add_sub_cancel]

end A094386

/-! ## A094386.P4341563457273720364

`A022838(2^n)`
-/

namespace A094386.P4341563457273720364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (2 ^ n)

end

end A094386.P4341563457273720364

namespace A094386

/-- `A022838(2^n)` -/
def P4341563457273720364.Spec : Prop :=
  ∀ n, P4341563457273720364.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P14678580278088590054

`A293325(n)-1`
-/

namespace A094386.P14678580278088590054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293325 n - 1

end

end A094386.P14678580278088590054

namespace A094386

/-- `A293325(n)-1` -/
def P14678580278088590054.Spec : Prop :=
  ∀ n, P14678580278088590054.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P17830570304452632293

`A221718(2*n)`
-/

namespace A094386.P17830570304452632293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221718 (2 * n)

end

end A094386.P17830570304452632293

namespace A094386

/-- `A221718(2*n)` -/
def P17830570304452632293.Spec : Prop :=
  ∀ n, P17830570304452632293.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P15979120647711000596

`A293326(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A094386.P15979120647711000596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293326 (n - 1) + a (n - 1)

end

end A094386.P15979120647711000596

namespace A094386

/-- `A293326(n-1)+a(n-1)` -/
def P15979120647711000596.Spec : Prop :=
  ∀ n, P15979120647711000596.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P6293207210520001076

`∑[A293326(n)]+1-A293326(n)`
-/

namespace A094386.P6293207210520001076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A293326 n)

end

end A094386.P6293207210520001076

namespace A094386

/-- `∑[A293326(n)]+1-A293326(n)` -/
def P6293207210520001076.Spec : Prop :=
  ∀ n, P6293207210520001076.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P18292987874594058971

`∑[round(sqrt(A002001(n)))]`
-/

namespace A094386.P18292987874594058971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A002001 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094386.P18292987874594058971

namespace A094386

/-- `∑[round(sqrt(A002001(n)))]` -/
def P18292987874594058971.Spec : Prop :=
  ∀ n, P18292987874594058971.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P7556795144950496656

`ceil(sqrt(A140660(n)))-1`
-/

namespace A094386.P7556795144950496656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A140660 n : ℝ)⌉ - 1

end

end A094386.P7556795144950496656

namespace A094386

/-- `ceil(sqrt(A140660(n)))-1` -/
def P7556795144950496656.Spec : Prop :=
  ∀ n, P7556795144950496656.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P10519159179614201752

`ceil(sqrt(Δ[A000302(n)]))-1`
-/

namespace A094386.P10519159179614201752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (n + 1) - f1 n : ℝ)⌉ - 1

end

end A094386.P10519159179614201752

namespace A094386

/-- `ceil(sqrt(Δ[A000302(n)]))-1` -/
def P10519159179614201752.Spec : Prop :=
  ∀ n, P10519159179614201752.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P7498662432732396236

`ceil(sqrt(A181565(2*n)))-1`
-/

namespace A094386.P7498662432732396236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A181565 (2 * n) : ℝ)⌉ - 1

end

end A094386.P7498662432732396236

namespace A094386

/-- `ceil(sqrt(A181565(2*n)))-1` -/
def P7498662432732396236.Spec : Prop :=
  ∀ n, P7498662432732396236.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P916334256798940593

`ceil(sqrt(3*A000079(n)²))-1`
-/

namespace A094386.P916334256798940593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 * A000079 n ^ 2 : ℝ)⌉ - 1

end

end A094386.P916334256798940593

namespace A094386

/-- `ceil(sqrt(3*A000079(n)²))-1` -/
def P916334256798940593.Spec : Prop :=
  ∀ n, P916334256798940593.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P18048366457195072250

`ceil(sqrt(3*A000079(2*n)))-1`
-/

namespace A094386.P18048366457195072250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 * A000079 (2 * n) : ℝ)⌉ - 1

end

end A094386.P18048366457195072250

namespace A094386

/-- `ceil(sqrt(3*A000079(2*n)))-1` -/
def P18048366457195072250.Spec : Prop :=
  ∀ n, P18048366457195072250.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P8188629922172596226

`ceil(sqrt(Δ[4^n]+A000045(n)))-1`
-/

namespace A094386.P8188629922172596226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + A000045 n : ℝ)⌉ - 1

end

end A094386.P8188629922172596226

namespace A094386

/-- `ceil(sqrt(Δ[4^n]+A000045(n)))-1` -/
def P8188629922172596226.Spec : Prop :=
  ∀ n, P8188629922172596226.a n = A094386 (n + 1)

end A094386

/-! ## A094386.P8874052709903246526

`ceil(sqrt(A003056(n)+Δ[4^n]))-1`
-/

namespace A094386.P8874052709903246526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A003056 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℝ)⌉ - 1

end

end A094386.P8874052709903246526

namespace A094386

/-- `ceil(sqrt(A003056(n)+Δ[4^n]))-1` -/
def P8874052709903246526.Spec : Prop :=
  ∀ n, P8874052709903246526.a n = A094386 (n + 1)

end A094386

/-!
# A094387: Numbers k such that gcd(k, A000120(k)) = 1.

The programs for A094387, the canonical program `A094387.P8146316033527688361` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094387 has offset 1).

The definition of A094387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094387.P8146316033527688361

`eq[1, gcd(n, A005187(n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094387

/-- `eq[1, gcd(n, A005187(n))]` -/
def P8146316033527688361.Spec : Prop :=
  ∀ n, (P8146316033527688361.a n : ℤ) = A094387 (n + 1)

theorem P8146316033527688361.correct : P8146316033527688361.Spec := by
  intro n
  simp only [A094387, Nat.add_sub_cancel]

end A094387

/-! ## A094387.P16876328451505678857

`eq[1, gcd(n², A000120(n))]`
-/

namespace A094387.P16876328451505678857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A000120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094387.P16876328451505678857

namespace A094387

/-- `eq[1, gcd(n², A000120(n))]` -/
def P16876328451505678857.Spec : Prop :=
  ∀ n, (P16876328451505678857.a n : ℤ) = A094387 (n + 1)

end A094387

/-! ## A094387.P7196712743243631309

`eq[1, A348416(n+1)]+1`
-/

namespace A094387.P7196712743243631309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A094387.P7196712743243631309

namespace A094387

/-- `eq[1, A348416(n+1)]+1` -/
def P7196712743243631309.Spec : Prop :=
  ∀ n, (P7196712743243631309.a n : ℤ) = A094387 (n + 1)

end A094387

/-! ## A094387.P7242059234803101592

`record[(n+1)/gcd(n+1, ∑[A007814(n+1)])]`
-/

namespace A094387.P7242059234803101592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094387.P7242059234803101592

namespace A094387

/-- `record[(n+1)/gcd(n+1, ∑[A007814(n+1)])]` -/
def P7242059234803101592.Spec : Prop :=
  ∀ n, P7242059234803101592.a n = (A094387 (n + 1) : ℚ)

end A094387

/-! ## A094387.P17115661005828689554

`eq[1, gcd(A000584(n), A011371(n))]`
-/

namespace A094387.P17115661005828689554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000584 n) (A011371 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094387.P17115661005828689554

namespace A094387

/-- `eq[1, gcd(A000584(n), A011371(n))]` -/
def P17115661005828689554.Spec : Prop :=
  ∀ n, (P17115661005828689554.a n : ℤ) = A094387 (n + 1)

end A094387

/-! ## A094387.P2202789255447671939

`record[(n+1)/gcd(A000120(n+1), A092391(n+1))]`
-/

namespace A094387.P2202789255447671939
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000120 (n + 1)) (A092391 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094387.P2202789255447671939

namespace A094387

/-- `record[(n+1)/gcd(A000120(n+1), A092391(n+1))]` -/
def P2202789255447671939.Spec : Prop :=
  ∀ n, P2202789255447671939.a n = (A094387 (n + 1) : ℚ)

end A094387

/-! ## A094387.P33384682298800584

`eq[1, gcd(A004134(n), A118759(n))]`
-/

namespace A094387.P33384682298800584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004134 n) (A118759 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094387.P33384682298800584

namespace A094387

/-- `eq[1, gcd(A004134(n), A118759(n))]` -/
def P33384682298800584.Spec : Prop :=
  ∀ n, (P33384682298800584.a n : ℤ) = A094387 (n + 1)

end A094387

/-!
# A094388: Expansion of (1- 2*x - x^2)/((1-x)*(1-3*x)).

The programs for A094388, the canonical program `A094388.P2877217115633599599` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094388 has offset 0).

The definition of A094388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094388.P2877217115633599599

`floor(3^(n-1))+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094388

/-- `floor(3^(n-1))+1` -/
def P2877217115633599599.Spec : Prop :=
  ∀ n, P2877217115633599599.a n = A094388 n

theorem P2877217115633599599.correct : P2877217115633599599.Spec := by
  intro n
  simp only [A094388]

end A094388

/-! ## A094388.P7267128136294230915

`ceil(cos(1)+3^(n-1))`
-/

namespace A094388.P7267128136294230915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (1 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A094388.P7267128136294230915

namespace A094388

/-- `ceil(cos(1)+3^(n-1))` -/
def P7267128136294230915.Spec : Prop :=
  ∀ n, P7267128136294230915.a n = A094388 n

end A094388

/-! ## A094388.P10512827749836909907

`round(cos(1)+3^(n-1))`
-/

namespace A094388.P10512827749836909907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094388.P10512827749836909907

namespace A094388

/-- `round(cos(1)+3^(n-1))` -/
def P10512827749836909907.Spec : Prop :=
  ∀ n, P10512827749836909907.a n = A094388 n

end A094388

/-! ## A094388.P8935806173195656502

`round(sin(1)+3^(n-1))`
-/

namespace A094388.P8935806173195656502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094388.P8935806173195656502

namespace A094388

/-- `round(sin(1)+3^(n-1))` -/
def P8935806173195656502.Spec : Prop :=
  ∀ n, P8935806173195656502.a n = A094388 n

end A094388

/-! ## A094388.P14628019373578326379

`round(3^(n-1)-cos(3))`
-/

namespace A094388.P14628019373578326379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (3 : ℝ))

end

end A094388.P14628019373578326379

namespace A094388

/-- `round(3^(n-1)-cos(3))` -/
def P14628019373578326379.Spec : Prop :=
  ∀ n, P14628019373578326379.a n = A094388 n

end A094388

/-! ## A094388.P7830030315329710080

`ceil(3^(n-1)-cos(4))`
-/

namespace A094388.P7830030315329710080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (4 : ℝ)⌉

end

end A094388.P7830030315329710080

namespace A094388

/-- `ceil(3^(n-1)-cos(4))` -/
def P7830030315329710080.Spec : Prop :=
  ∀ n, P7830030315329710080.a n = A094388 n

end A094388

/-! ## A094388.P5286541673405742049

`round(atan(1)+3^(n-1))`
-/

namespace A094388.P5286541673405742049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (1 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094388.P5286541673405742049

namespace A094388

/-- `round(atan(1)+3^(n-1))` -/
def P5286541673405742049.Spec : Prop :=
  ∀ n, P5286541673405742049.a n = A094388 n

end A094388

/-! ## A094388.P9892815845327720350

`round(3^(n-1)-sin(4))`
-/

namespace A094388.P9892815845327720350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (4 : ℝ))

end

end A094388.P9892815845327720350

namespace A094388

/-- `round(3^(n-1)-sin(4))` -/
def P9892815845327720350.Spec : Prop :=
  ∀ n, P9892815845327720350.a n = A094388 n

end A094388

/-! ## A094388.P6322958267181820937

`round(tan(4)+3^(n-1))`
-/

namespace A094388.P6322958267181820937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (4 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094388.P6322958267181820937

namespace A094388

/-- `round(tan(4)+3^(n-1))` -/
def P6322958267181820937.Spec : Prop :=
  ∀ n, P6322958267181820937.a n = A094388 n

end A094388

/-! ## A094388.P6894033896954154276

`ceil(sin(7)+3^(n-1))`
-/

namespace A094388.P6894033896954154276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (7 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A094388.P6894033896954154276

namespace A094388

/-- `ceil(sin(7)+3^(n-1))` -/
def P6894033896954154276.Spec : Prop :=
  ∀ n, P6894033896954154276.a n = A094388 n

end A094388

/-! ## A094388.P5901737458160848440

`round(tanh(1)+3^(n-1))`
-/

namespace A094388.P5901737458160848440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (1 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094388.P5901737458160848440

namespace A094388

/-- `round(tanh(1)+3^(n-1))` -/
def P5901737458160848440.Spec : Prop :=
  ∀ n, P5901737458160848440.a n = A094388 n

end A094388

/-! ## A094388.P6977142496090803637

`ceil(cot(1)+3^(n-1))`
-/

namespace A094388.P6977142496090803637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (1 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A094388.P6977142496090803637

namespace A094388

/-- `ceil(cot(1)+3^(n-1))` -/
def P6977142496090803637.Spec : Prop :=
  ∀ n, P6977142496090803637.a n = A094388 n

end A094388

/-! ## A094388.P12146527178046518988

`round(cot(1)+3^(n-1))`
-/

namespace A094388.P12146527178046518988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (1 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094388.P12146527178046518988

namespace A094388

/-- `round(cot(1)+3^(n-1))` -/
def P12146527178046518988.Spec : Prop :=
  ∀ n, P12146527178046518988.a n = A094388 n

end A094388

/-! ## A094388.P7172237419785435215

`round(acot(1)+3^(n-1))`
-/

namespace A094388.P7172237419785435215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (1 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A094388.P7172237419785435215

namespace A094388

/-- `round(acot(1)+3^(n-1))` -/
def P7172237419785435215.Spec : Prop :=
  ∀ n, P7172237419785435215.a n = A094388 n

end A094388

/-! ## A094388.P11359637992800721436

`ceil(3^(n-1)-sin(10))`
-/

namespace A094388.P11359637992800721436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (10 : ℝ)⌉

end

end A094388.P11359637992800721436

namespace A094388

/-- `ceil(3^(n-1)-sin(10))` -/
def P11359637992800721436.Spec : Prop :=
  ∀ n, P11359637992800721436.a n = A094388 n

end A094388

/-! ## A094388.P7468240750749717093

`ceil(tan(10)+3^(n-1))`
-/

namespace A094388.P7468240750749717093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (10 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A094388.P7468240750749717093

namespace A094388

/-- `ceil(tan(10)+3^(n-1))` -/
def P7468240750749717093.Spec : Prop :=
  ∀ n, P7468240750749717093.a n = A094388 n

end A094388

/-! ## A094388.P4448520845172603441

`ceil(acot(ϕ)+3^(n-1))`
-/

namespace A094388.P4448520845172603441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot Real.goldenRatio + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A094388.P4448520845172603441

namespace A094388

/-- `ceil(acot(ϕ)+3^(n-1))` -/
def P4448520845172603441.Spec : Prop :=
  ∀ n, P4448520845172603441.a n = A094388 n

end A094388

/-! ## A094388.P1226150641969215461

`∑[3*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A094388.P1226150641969215461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094388.P1226150641969215461

namespace A094388

/-- `∑[3*a(n-1)]` -/
def P1226150641969215461.Spec : Prop :=
  ∀ n, (P1226150641969215461.a n : ℤ) = A094388 n

end A094388

/-!
# A094390: Beatty sequence of exp(Pi/4).

The programs for A094390, the canonical program `A094390.P8820704870184964742` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094390 has offset 1).

The definition of A094390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094390.P8820704870184964742

`floor((n+1)*exp(atan(1)))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094390

/-- `floor((n+1)*exp(atan(1)))` -/
def P8820704870184964742.Spec : Prop :=
  ∀ n, P8820704870184964742.a n = A094390 (n + 1)

theorem P8820704870184964742.correct : P8820704870184964742.Spec := by
  intro n
  simp only [A094390, Nat.add_sub_cancel]

end A094390

/-! ## A094390.P1058190664152213152

`floor((n+1)*exp(acot(1)))`
-/

namespace A094390.P1058190664152213152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp (SequenceMachineLib.acot (1 : ℝ))⌋

end

end A094390.P1058190664152213152

namespace A094390

/-- `floor((n+1)*exp(acot(1)))` -/
def P1058190664152213152.Spec : Prop :=
  ∀ n, P1058190664152213152.a n = A094390 (n + 1)

end A094390

/-! ## A094390.P13053609174718619262

`floor((n+1)*exp(π/4))`
-/

namespace A094390.P13053609174718619262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp (Real.pi / 4)⌋

end

end A094390.P13053609174718619262

namespace A094390

/-- `floor((n+1)*exp(π/4))` -/
def P13053609174718619262.Spec : Prop :=
  ∀ n, P13053609174718619262.a n = A094390 (n + 1)

theorem P13053609174718619262.correct : P13053609174718619262.Spec := by
  intro n
  simp only [A094390, Nat.add_sub_cancel, A094390.P13053609174718619262.a, A094390.P8820704870184964742.a, SequenceMachineLib.memo_apply]
  try simp

end A094390

/-! ## A094390.P6343869824356875047

`ceil((n+1)*exp(atan(1)))-1`
-/

namespace A094390.P6343869824356875047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp (Real.arctan (1 : ℝ))⌉ - 1

end

end A094390.P6343869824356875047

namespace A094390

/-- `ceil((n+1)*exp(atan(1)))-1` -/
def P6343869824356875047.Spec : Prop :=
  ∀ n, P6343869824356875047.a n = A094390 (n + 1)

end A094390

/-! ## A094390.P2227063274032751356

`A076538(3*n+3)+A000122(A338905(n+7))`
-/

namespace A094390.P2227063274032751356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076538 (3 * n + 3) + A000122 (A338905 (n + 7)).toNat

end

end A094390.P2227063274032751356

namespace A094390

/-- `A076538(3*n+3)+A000122(A338905(n+7))` -/
def P2227063274032751356.Spec : Prop :=
  ∀ n, P2227063274032751356.a n = A094390 (n + 1)

end A094390

/-! ## A094390.P14156956000437206147

`A076538(3*(n+1))%A166102(A345435(n+4))`
-/

namespace A094390.P14156956000437206147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076538 (3 * (n + 1))) (A166102 (A345435 (n + 4)).toNat)

end

end A094390.P14156956000437206147

namespace A094390

/-- `A076538(3*(n+1))%A166102(A345435(n+4))` -/
def P14156956000437206147.Spec : Prop :=
  ∀ n, P14156956000437206147.a n = A094390 (n + 1)

end A094390

/-! ## A094390.P8777814815644801010

`A076538(3*(n+1))+A010051(A076579(2*(n+1)))`
-/

namespace A094390.P8777814815644801010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076538 (3 * (n + 1)) + A010051 (A076579 (2 * (n + 1))).toNat

end

end A094390.P8777814815644801010

namespace A094390

/-- `A076538(3*(n+1))+A010051(A076579(2*(n+1)))` -/
def P8777814815644801010.Spec : Prop :=
  ∀ n, P8777814815644801010.a n = A094390 (n + 1)

end A094390

/-!
# A094391: A Beatty sequence using exp(Pi/4)/(exp(Pi/4) - 1).

The programs for A094391, the canonical program `A094391.P4134054012065989547` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094391 has offset 1).

The definition of A094391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094391.P4134054012065989547

`comp[floor(n*exp(atan(1)))]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A094391

/-- `comp[floor(n*exp(atan(1)))]` -/
def P4134054012065989547.Spec : Prop :=
  ∀ n, (P4134054012065989547.a n : ℤ) = A094391 (n + 1)

theorem P4134054012065989547.correct : P4134054012065989547.Spec := by
  intro n
  simp only [A094391, Nat.add_sub_cancel]

end A094391

/-! ## A094391.P15285678217178138002

`comp[floor(n*exp(acot(1)))]`
-/

namespace A094391.P15285678217178138002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.exp (SequenceMachineLib.acot (1 : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A094391.P15285678217178138002

namespace A094391

/-- `comp[floor(n*exp(acot(1)))]` -/
def P15285678217178138002.Spec : Prop :=
  ∀ n, (P15285678217178138002.a n : ℤ) = A094391 (n + 1)

end A094391

/-! ## A094391.P11119151291082650552

`comp[A094390(n+1)-1]+1`
-/

namespace A094391.P11119151291082650552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094390 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094391.P11119151291082650552

namespace A094391

/-- `comp[A094390(n+1)-1]+1` -/
def P11119151291082650552.Spec : Prop :=
  ∀ n, (P11119151291082650552.a n : ℤ) = A094391 (n + 1)

end A094391

/-! ## A094391.P6474892194128488936

`floor(log(A305289(n+1)))`
-/

namespace A094391.P6474892194128488936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A305289 (n + 1) : ℝ)⌋

end

end A094391.P6474892194128488936

namespace A094391

/-- `floor(log(A305289(n+1)))` -/
def P6474892194128488936.Spec : Prop :=
  ∀ n, P6474892194128488936.a n = A094391 (n + 1)

end A094391

/-! ## A094391.P9383170456593448876

`A000196(A265429(3*n+1)+A000196(n))`
-/

namespace A094391.P9383170456593448876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A265429 (3 * n + 1) + A000196 n).toNat

end

end A094391.P9383170456593448876

namespace A094391

/-- `A000196(A265429(3*n+1)+A000196(n))` -/
def P9383170456593448876.Spec : Prop :=
  ∀ n, P9383170456593448876.a n = A094391 (n + 1)

end A094391

/-!
# A094392: Antidiagonals of the tables formed from b(m,2,n,n), which is defined in Du 1989.

The programs for A094392, there is no canonical definition to state claims against.
-/

/-! ## A094392.P18032039318155942037

`ceil(A202453(n+1)/A259448(n+1))`
-/

namespace A094392.P18032039318155942037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A202453 (n + 1) : ℚ) / (A259448 (n + 1) : ℚ)⌉

end

end A094392.P18032039318155942037

/-! ## A094392.P13429814546771599588

`ceil(A209137(n+1)/A293172(n))`
-/

namespace A094392.P13429814546771599588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209137 (n + 1) : ℚ) / (A293172 n : ℚ)⌉

end

end A094392.P13429814546771599588

/-! ## A094392.P6235742297796124408

`ceil(A036355(n)/A235608(n))`
-/

namespace A094392.P6235742297796124408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036355 n : ℚ) / (A235608 n : ℚ)⌉

end

end A094392.P6235742297796124408

/-! ## A094392.P13242879141121973643

`ceil(A038137(n)/A235608(n))`
-/

namespace A094392.P13242879141121973643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038137 n : ℚ) / (A235608 n : ℚ)⌉

end

end A094392.P13242879141121973643

/-! ## A094392.P1817983852459358378

`A062571(A216635(n+1))`
-/

namespace A094392.P1817983852459358378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062571 (A216635 (n + 1)).toNat

end

end A094392.P1817983852459358378

/-!
# A094393: a(n) = floor(A058303*(2^(n-2)+1/2)).

The programs for A094393, there is no canonical definition to state claims against.
-/

/-! ## A094393.P14525174978838096387

`A276796(A198274(n))+7`
-/

namespace A094393.P14525174978838096387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A198274 n).toNat + 7

end

end A094393.P14525174978838096387

/-! ## A094393.P1278310560481933167

`A247971(A005010(n))+6`
-/

namespace A094393.P1278310560481933167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A005010 n).toNat + 6

end

end A094393.P1278310560481933167

/-!
# A094394: Odd composites m that divide Fibonacci(m)-1.

The programs for A094394, there is no canonical definition to state claims against.
-/

/-! ## A094394.P15920122518984671935

`∪[A094401(n+1), A094409(n+1)]`
-/

namespace A094394.P15920122518984671935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094394.P15920122518984671935

/-!
# A094398: Numbers k that divide Lucas(k) + 1.

The programs for A094398, there is no canonical definition to state claims against.
-/

/-! ## A094398.P14773826863132012514

`eq[n, A213060(n+1)]+1`
-/

namespace A094398.P14773826863132012514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A094398.P14773826863132012514

/-! ## A094398.P2684335746506231548

`eq[n, gcd(n, A000032(n)+1)]`
-/

namespace A094398.P2684335746506231548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000032 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094398.P2684335746506231548

/-! ## A094398.P12124517307177744501

`record[gcd(n+1, A000032(n+1)+1)]`
-/

namespace A094398.P12124517307177744501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000032 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094398.P12124517307177744501

/-! ## A094398.P8695061729917994828

`record[gcd(A001612(n), A028310(n))]`
-/

namespace A094398.P8695061729917994828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001612 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094398.P8695061729917994828

/-! ## A094398.P5141184772763054911

`record[2^ceil(log2(n+1))-A201195(n+1)]`
-/

namespace A094398.P5141184772763054911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (A201195 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094398.P5141184772763054911

/-!
# A094399: Odd numbers k that divide Lucas(k) + 1.

The programs for A094399, there is no canonical definition to state claims against.
-/

/-! ## A094399.P14360279082501962981

`A094398(eq[1, and(1, A094398(n+1))]+1)`
-/

namespace A094399.P14360279082501962981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A094398 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A094399.P14360279082501962981

/-! ## A094399.P4353227005347641145

`record[A000265(A094398(n+1))]`
-/

namespace A094399.P4353227005347641145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A094398 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094399.P4353227005347641145

/-! ## A094399.P9820655244803905125

`filter[A094398(n+1), A354819(#)]`
-/

namespace A094399.P9820655244803905125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A094399.P9820655244803905125

/-! ## A094399.P4703994195107579038

`filter[A094398(n+1), A039982(#)]`
-/

namespace A094399.P4703994195107579038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A094399.P4703994195107579038

/-! ## A094399.P13054902415392743935

`filter[A094398(n+1), A093719(#)]`
-/

namespace A094399.P13054902415392743935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A094399.P13054902415392743935

