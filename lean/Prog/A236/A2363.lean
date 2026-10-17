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
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

/-!
# A236300: Numbers n of the form x^3 + y^3 + z^3 - 3*x*y*z for x,y,z >= 0, where x + y + z < n.

The programs for A236300, there is no canonical definition to state claims against.
-/

/-! ## A236300.P14380567006747443725

`lt[n%3, A261029(n)²]`
-/

namespace A236300.P14380567006747443725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236300.P14380567006747443725

/-! ## A236300.P14439557289527206622

`lt[A011655(n), A261029(n)]`
-/

namespace A236300.P14439557289527206622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236300.P14439557289527206622

/-! ## A236300.P6759761663578627821

`lt[A010872(n), A261029(n)²]`
-/

namespace A236300.P6759761663578627821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236300.P6759761663578627821

/-! ## A236300.P2473573105016635950

`lt[A014578(n+3), A261029(n)]`
-/

namespace A236300.P2473573105016635950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236300.P2473573105016635950

/-! ## A236300.P17789366159755676625

`lt[A261029(n+3), A261029(n)²]`
-/

namespace A236300.P17789366159755676625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236300.P17789366159755676625

/-! ## A236300.P8641695842487969720

`lt[A000035(round(2*n/3)), A261029(n)]`
-/

namespace A236300.P8641695842487969720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236300.P8641695842487969720

/-! ## A236300.P16326646120771720822

`lt[A010888(3*n+1), A066643(A261029(n))]`
-/

namespace A236300.P16326646120771720822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (A261029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236300.P16326646120771720822

/-! ## A236300.P9992653552581641760

`lt[A279060(A261029(2*n+3)), A261029(n)]`
-/

namespace A236300.P9992653552581641760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A261029 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236300.P9992653552581641760

/-! ## A236300.P386626686283822530

`lt[A261029(n+3), A261029(n)^A056556(n+4)]`
-/

namespace A236300.P386626686283822530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 (n + 3)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261029 n : ℚ) ^ (A056556 (n + 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A236300.P386626686283822530

/-!
# A236303: Prime numbers n such that replacing each digit d in decimal expansion of n with prime(d) produces a prime. Zeros are not allowed.

The programs for A236303, there is no canonical definition to state claims against.
-/

/-! ## A236303.P4710425994041237296

`∩[A038618(n+1), A048381(n+1)]`
-/

namespace A236303.P4710425994041237296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236303.P4710425994041237296

/-! ## A236303.P4846781960323898534

`record[A004719(p?[A048381(n+1)])]`
-/

namespace A236303.P4846781960323898534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048381 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236303.P4846781960323898534

/-! ## A236303.P10589637740775565897

`p?[A048381(n+1)]*A000265(2^n)`
-/

namespace A236303.P10589637740775565897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000265 (2 ^ n)

end

end A236303.P10589637740775565897

/-! ## A236303.P16179293260533112853

`p?[A048381(n+1)]%A032485(n+1)`
-/

namespace A236303.P16179293260533112853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A032485 (n + 1))

end

end A236303.P16179293260533112853

/-! ## A236303.P14132632850806257376

`A154955(A042950(n)+1)+p?[A048381(n+1)]`
-/

namespace A236303.P14132632850806257376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A042950 n + 1).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236303.P14132632850806257376

/-!
# A236305: The number of P-positions in the game of Nim with up to 3 piles, allowing for piles of zero, such that the number of objects in each pile does not exceed n.

The programs for A236305, the canonical program `A236305.P1720342726128366909` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236305 has offset 0).

The definition of A236305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236305.P1720342726128366909

`∑[(a(n-1)+4)%(3*n)+2]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236305

/-- `∑[(a(n-1)+4)%(3*n)+2]` -/
def P1720342726128366909.Spec : Prop :=
  ∀ n, (P1720342726128366909.a n : ℤ) = A236305 n

theorem P1720342726128366909.correct : P1720342726128366909.Spec := by
  intro n
  simp only [A236305]

end A236305

/-! ## A236305.P3937596109109707891

`∑[3*(Δ[n²]-2^ceil(log2(n+1)))]+1`
-/

namespace A236305.P3937596109109707891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A236305.P3937596109109707891

namespace A236305

/-- `∑[3*(Δ[n²]-2^ceil(log2(n+1)))]+1` -/
def P3937596109109707891.Spec : Prop :=
  ∀ n, P3937596109109707891.a n = (A236305 n : ℚ)

end A236305

/-! ## A236305.P2220583710752267924

`A256534(n+1)/4`
-/

namespace A236305.P2220583710752267924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256534 (n + 1) : ℚ) / 4

end

end A236305.P2220583710752267924

namespace A236305

/-- `A256534(n+1)/4` -/
def P2220583710752267924.Spec : Prop :=
  ∀ n, P2220583710752267924.a n = (A236305 n : ℚ)

end A236305

/-! ## A236305.P3721981437659044745

`∑[ceil(A256258(2*n+1)/2)]`
-/

namespace A236305.P3721981437659044745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A256258 (2 * n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236305.P3721981437659044745

namespace A236305

/-- `∑[ceil(A256258(2*n+1)/2)]` -/
def P3721981437659044745.Spec : Prop :=
  ∀ n, P3721981437659044745.a n = A236305 n

end A236305

/-! ## A236305.P18141951567035175567

`abs(A256249(2*n+1)-A256249(n))`
-/

namespace A236305.P18141951567035175567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256249 (2 * n + 1) - A256249 n|

end

end A236305.P18141951567035175567

namespace A236305

/-- `abs(A256249(2*n+1)-A256249(n))` -/
def P18141951567035175567.Spec : Prop :=
  ∀ n, P18141951567035175567.a n = A236305 n

end A236305

/-! ## A236305.P18045480743567985109

`∑[A006257(2*n)+A003602(A006257(2*n+1))]`
-/

namespace A236305.P18045480743567985109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n) + A003602 (A006257 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236305.P18045480743567985109

namespace A236305

/-- `∑[A006257(2*n)+A003602(A006257(2*n+1))]` -/
def P18045480743567985109.Spec : Prop :=
  ∀ n, P18045480743567985109.a n = A236305 n

end A236305

/-! ## A236305.P4624616945579951659

`A000027(A256249(2*n+1)-A256249(n))`
-/

namespace A236305.P4624616945579951659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A256249 (2 * n + 1) - A256249 n).toNat

end

end A236305.P4624616945579951659

namespace A236305

/-- `A000027(A256249(2*n+1)-A256249(n))` -/
def P4624616945579951659.Spec : Prop :=
  ∀ n, P4624616945579951659.a n = A236305 n

end A236305

/-! ## A236305.P5521061254736645389

`∑[A115379(2*n+1)+A115379(2*n)]`
-/

namespace A236305.P5521061254736645389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115379 (2 * n + 1) + A115379 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236305.P5521061254736645389

namespace A236305

/-- `∑[A115379(2*n+1)+A115379(2*n)]` -/
def P5521061254736645389.Spec : Prop :=
  ∀ n, P5521061254736645389.a n = A236305 n

end A236305

/-! ## A236305.P14330913273676715166

`record[A014682(A256249(n+1))/2]`
-/

namespace A236305.P14330913273676715166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (A256249 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236305.P14330913273676715166

namespace A236305

/-- `record[A014682(A256249(n+1))/2]` -/
def P14330913273676715166.Spec : Prop :=
  ∀ n, P14330913273676715166.a n = (A236305 n : ℚ)

end A236305

/-! ## A236305.P12982830472838968560

`A014682(A256249(2*n+1))/2`
-/

namespace A236305.P12982830472838968560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (A256249 (2 * n + 1)).toNat : ℚ) / 2

end

end A236305.P12982830472838968560

namespace A236305

/-- `A014682(A256249(2*n+1))/2` -/
def P12982830472838968560.Spec : Prop :=
  ∀ n, P12982830472838968560.a n = (A236305 n : ℚ)

end A236305

/-! ## A236305.P17162787815662949081

`A016777(A256249(n))`
-/

namespace A236305.P17162787815662949081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A256249 n).toNat

end

end A236305.P17162787815662949081

namespace A236305

/-- `A016777(A256249(n))` -/
def P17162787815662949081.Spec : Prop :=
  ∀ n, P17162787815662949081.a n = A236305 n

end A236305

/-! ## A236305.P3771275927392580089

`A016777(∑[A006257(n)])`
-/

namespace A236305.P3771275927392580089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236305.P3771275927392580089

namespace A236305

/-- `A016777(∑[A006257(n)])` -/
def P3771275927392580089.Spec : Prop :=
  ∀ n, P3771275927392580089.a n = A236305 n

end A236305

/-! ## A236305.P15934198864722148159

`A071054(A266538(n))`
-/

namespace A236305.P15934198864722148159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 (A266538 n).toNat

end

end A236305.P15934198864722148159

namespace A236305

/-- `A071054(A266538(n))` -/
def P15934198864722148159.Spec : Prop :=
  ∀ n, P15934198864722148159.a n = A236305 n

end A236305

/-!
# A236306: Least prime p < prime(n) for which both p and p! are primitive roots modulo prime(n), or 0 if such a prime does not exist.

The programs for A236306, there is no canonical definition to state claims against.
-/

/-! ## A236306.P9612052658166132711

`A076271(3*n+5)%A071178(A072873(n+4))`
-/

namespace A236306.P9612052658166132711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076271 (3 * n + 5)) (A071178 (A072873 (n + 4)).toNat)

end

end A236306.P9612052658166132711

/-!
# A236307: Discriminants d such that the ring of algebraic integers of Q(sqrt(-d)) is not a unique factorization domain.

The programs for A236307, there is no canonical definition to state claims against.
-/

/-! ## A236307.P8832452844821583673

`lt[1, abs(A069158(n+1)*A202084(n+1))]+1`
-/

namespace A236307.P8832452844821583673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069158 (n + 1) * A202084 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A236307.P8832452844821583673

/-! ## A236307.P4136338460135399807

`lt[A284345(n), A202084(A008574(n))]`
-/

namespace A236307.P4136338460135399807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236307.P4136338460135399807

/-! ## A236307.P7687009580715540468

`lt[A284345(n), A202084(A233583(n+1))]`
-/

namespace A236307.P7687009580715540468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236307.P7687009580715540468

/-! ## A236307.P5003779144403197704

`lt[1, A000035(A002033(n))*A202084(n+1)]+1`
-/

namespace A236307.P5003779144403197704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002033 n).toNat * A202084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A236307.P5003779144403197704

/-! ## A236307.P6071334457583037228

`A020725(lt[1, A008966(n+1)*A202084(n+1)])`
-/

namespace A236307.P6071334457583037228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A236307.P6071334457583037228

/-! ## A236307.P14525714269212257359

`A065475(lt[1, A008966(n+1)*A202084(n+1)])`
-/

namespace A236307.P14525714269212257359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A236307.P14525714269212257359

/-! ## A236307.P10149246811188255346

`A020725(lt[1/A202084(n+1), A008966(n+1)])`
-/

namespace A236307.P10149246811188255346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A202084 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A236307.P10149246811188255346

/-! ## A236307.P6780338001358858385

`A065475(lt[1/A202084(n+1), A008966(n+1)])`
-/

namespace A236307.P6780338001358858385
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A202084 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A236307.P6780338001358858385

/-! ## A236307.P14537521646185269749

`A020725(lt[1, A069158(n+1)²*A202084(n+1)])`
-/

namespace A236307.P14537521646185269749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) ^ 2 * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A236307.P14537521646185269749

/-! ## A236307.P15973702852663153740

`lt[1, A191411(n+1)]+1`
-/

namespace A236307.P15973702852663153740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A236307.P15973702852663153740

/-!
# A236309: Total number of distinct least common multiples of (i,j) with 1<=i

The programs for A236309, there is no canonical definition to state claims against.
-/

/-! ## A236309.P2794009795042405964

`A027435(n+1)-1`
-/

namespace A236309.P2794009795042405964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027435 (n + 1) - 1

end

end A236309.P2794009795042405964

/-! ## A236309.P14449808335466691002

`∑[A014665(n+1)]-1`
-/

namespace A236309.P14449808335466691002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236309.P14449808335466691002

/-! ## A236309.P2534376265300503664

`∑[A014665(n+1)%A003600(n)]`
-/

namespace A236309.P2534376265300503664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014665 (n + 1)) (A003600 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236309.P2534376265300503664

/-! ## A236309.P5991977240308583204

`∑[∑{e}[A008578(n+1), #*A014665(n+1)]]`
-/

namespace A236309.P5991977240308583204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p : ℤ) * A014665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236309.P5991977240308583204

/-! ## A236309.P16640895337246256848

`∑[(A022433(n)+A014665(n+1))%A022433(n)]`
-/

namespace A236309.P16640895337246256848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022433 n + A014665 (n + 1)) (A022433 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236309.P16640895337246256848

/-! ## A236309.P12762055682603685508

`A023443(A027435(n+1))`
-/

namespace A236309.P12762055682603685508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A027435 (n + 1)).toNat

end

end A236309.P12762055682603685508

/-!
# A236312: a(n) = floor((n + e)^2), where e is the natural logarithm base.

The programs for A236312, the canonical program `A236312.P13858987405833418281` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236312 has offset 0).

The definition of A236312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+e)²)` (program `A236312.P13858987405833418281`, by `A236312.P13858987405833418281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A236312.P13858987405833418281

`floor((n+e)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236312

/-- `floor((n+e)²)` -/
def P13858987405833418281.Spec : Prop :=
  ∀ n, P13858987405833418281.a n = A236312 n

theorem P13858987405833418281.correct : P13858987405833418281.Spec := by
  intro n
  simp only [A236312]

end A236312

/-! ## A236312.P6677464797519474724

`floor((n+e)^2)+and(2, char[1])`
-/

namespace A236312.P6677464797519474724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) + Real.exp 1) ^ 2⌋ + (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A236312.P6677464797519474724

namespace A236312

/-- `floor((n+e)^2)+and(2, char[1])` -/
def P6677464797519474724.Spec : Prop :=
  ∀ n, P6677464797519474724.a n = A236312 n

end A236312

/-! ## A236312.P7438014635114908817

`floor((n+e)^2)%∑[32*n+23]`
-/

namespace A236312.P7438014635114908817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n : ℝ) + Real.exp 1) ^ 2⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A236312.P7438014635114908817

namespace A236312

/-- `floor((n+e)^2)%∑[32*n+23]` -/
def P7438014635114908817.Spec : Prop :=
  ∀ n, P7438014635114908817.a n = A236312 n

end A236312

/-! ## A236312.P13069765469661567467

`floor((n+e)^2)*A001222(eq[0, A007920(n)])`
-/

namespace A236312.P13069765469661567467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) + Real.exp 1) ^ 2⌋ * A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236312.P13069765469661567467

namespace A236312

/-- `floor((n+e)^2)*A001222(eq[0, A007920(n)])` -/
def P13069765469661567467.Spec : Prop :=
  ∀ n, P13069765469661567467.a n = A236312 n

end A236312

/-! ## A236312.P12765614631337270128

`A000027(floor((n+e)^2))`
-/

namespace A236312.P12765614631337270128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊((n : ℝ) + Real.exp 1) ^ 2⌋.toNat

end

end A236312.P12765614631337270128

namespace A236312

/-- `A000027(floor((n+e)^2))` -/
def P12765614631337270128.Spec : Prop :=
  ∀ n, P12765614631337270128.a n = A236312 n

end A236312

/-! ## A236312.P8675478532388705981

`A007318(∑[n])*floor((n+e)^2)`
-/

namespace A236312.P8675478532388705981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * ⌊((n : ℝ) + Real.exp 1) ^ 2⌋

end

end A236312.P8675478532388705981

namespace A236312

/-- `A007318(∑[n])*floor((n+e)^2)` -/
def P8675478532388705981.Spec : Prop :=
  ∀ n, P8675478532388705981.a n = A236312 n

end A236312

/-! ## A236312.P7182314306839020964

`A000038(A059743(n))+floor((n+e)^2)`
-/

namespace A236312.P7182314306839020964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A059743 n).toNat + ⌊((n : ℝ) + Real.exp 1) ^ 2⌋

end

end A236312.P7182314306839020964

namespace A236312

/-- `A000038(A059743(n))+floor((n+e)^2)` -/
def P7182314306839020964.Spec : Prop :=
  ∀ n, P7182314306839020964.a n = A236312 n

end A236312

/-!
# A236313: Recurrence: a(2n) = 3a(n)-1, a(2n+1) = 1.

The programs for A236313, the canonical program `A236313.P12527248593713284961` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236313 has offset 1).

The definition of A236313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236313.P933178140730940578

`1/2*(1+3^A007814(n+1))`
-/

namespace A236313.P933178140730940578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (1 + (3 : ℚ) ^ (A007814 (n + 1) : ℤ))

end

end A236313.P933178140730940578

namespace A236313

/-- `1/2*(1+3^A007814(n+1))` -/
def P933178140730940578.Spec : Prop :=
  ∀ n, P933178140730940578.a n = (A236313 (n + 1) : ℚ)

end A236313

/-! ## A236313.P12527248593713284961

`A007051(A007814(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A236313

/-- `A007051(A007814(n+1))` -/
def P12527248593713284961.Spec : Prop :=
  ∀ n, P12527248593713284961.a n = A236313 (n + 1)

theorem P12527248593713284961.correct : P12527248593713284961.Spec := by
  intro n
  simp only [A236313, Nat.add_sub_cancel]

end A236313

/-! ## A236313.P5785032023202873254

`ceil(3^val(n+1, 2)/2)`
-/

namespace A236313.P5785032023202873254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2⌉

end

end A236313.P5785032023202873254

namespace A236313

/-- `ceil(3^val(n+1, 2)/2)` -/
def P5785032023202873254.Spec : Prop :=
  ∀ n, P5785032023202873254.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P3756097679727494233

`round(3^val(n+1, 2)/2)`
-/

namespace A236313.P3756097679727494233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2)

end

end A236313.P3756097679727494233

namespace A236313

/-- `round(3^val(n+1, 2)/2)` -/
def P3756097679727494233.Spec : Prop :=
  ∀ n, P3756097679727494233.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P1269087204233426272

`(3^val(n+1, 2)+1)/2`
-/

namespace A236313.P1269087204233426272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ) / 2

end

end A236313.P1269087204233426272

namespace A236313

/-- `(3^val(n+1, 2)+1)/2` -/
def P1269087204233426272.Spec : Prop :=
  ∀ n, P1269087204233426272.a n = (A236313 (n + 1) : ℚ)

end A236313

/-! ## A236313.P10612768432591169436

`Δ[2*a(n-1)+1-a(and(n, n-1))]` with `a(0)=1`
-/

namespace A236313.P10612768432591169436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + (1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236313.P10612768432591169436

namespace A236313

/-- `Δ[2*a(n-1)+1-a(and(n, n-1))]` -/
def P10612768432591169436.Spec : Prop :=
  ∀ n, P10612768432591169436.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P17951846360454626236

`Δ[a(n-1-and(n, n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A236313.P17951846360454626236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((n : ℤ) - 1 - Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236313.P17951846360454626236

namespace A236313

/-- `Δ[a(n-1-and(n, n-1))+a(n-1)]` -/
def P17951846360454626236.Spec : Prop :=
  ∀ n, P17951846360454626236.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P9272142236563118958

`Δ[3*a(floor(n/2))+n-2*floor(n/2)]` with `a(0)=0, a(1)=1`
-/

namespace A236313.P9272142236563118958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat + ((n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236313.P9272142236563118958

namespace A236313

/-- `Δ[3*a(floor(n/2))+n-2*floor(n/2)]` -/
def P9272142236563118958.Spec : Prop :=
  ∀ n, P9272142236563118958.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P17584622464250365326

`A061393(n+1)/2`
-/

namespace A236313.P17584622464250365326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061393 (n + 1) : ℚ) / 2

end

end A236313.P17584622464250365326

namespace A236313

/-- `A061393(n+1)/2` -/
def P17584622464250365326.Spec : Prop :=
  ∀ n, P17584622464250365326.a n = (A236313 (n + 1) : ℚ)

end A236313

/-! ## A236313.P14977242792110379925

`A007051(val(n+1, 2))`
-/

namespace A236313.P14977242792110379925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (SequenceMachineLib.valuation (n + 1) 2)

end

end A236313.P14977242792110379925

namespace A236313

/-- `A007051(val(n+1, 2))` -/
def P14977242792110379925.Spec : Prop :=
  ∀ n, P14977242792110379925.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P3926169146226132437

`Δ[A005823(n+1)/2]`
-/

namespace A236313.P3926169146226132437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236313.P3926169146226132437

namespace A236313

/-- `Δ[A005823(n+1)/2]` -/
def P3926169146226132437.Spec : Prop :=
  ∀ n, P3926169146226132437.a n = (A236313 (n + 1) : ℚ)

end A236313

/-! ## A236313.P13015640301011839720

`A007729(A135481(n))`
-/

namespace A236313.P13015640301011839720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 (A135481 n).toNat

end

end A236313.P13015640301011839720

namespace A236313

/-- `A007729(A135481(n))` -/
def P13015640301011839720.Spec : Prop :=
  ∀ n, P13015640301011839720.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P6338205548668941069

`A003278(A006519(n+1))`
-/

namespace A236313.P6338205548668941069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A006519 (n + 1)).toNat

end

end A236313.P6338205548668941069

namespace A236313

/-- `A003278(A006519(n+1))` -/
def P6338205548668941069.Spec : Prop :=
  ∀ n, P6338205548668941069.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P2092151160389391728

`A147747(A115364(n+1))`
-/

namespace A236313.P2092151160389391728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147747 (A115364 (n + 1)).toNat

end

end A236313.P2092151160389391728

namespace A236313

/-- `A147747(A115364(n+1))` -/
def P2092151160389391728.Spec : Prop :=
  ∀ n, P2092151160389391728.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P11466210915978411190

`A060139(A268361(n+1))`
-/

namespace A236313.P11466210915978411190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060139 (A268361 (n + 1)).toNat

end

end A236313.P11466210915978411190

namespace A236313

/-- `A060139(A268361(n+1))` -/
def P11466210915978411190.Spec : Prop :=
  ∀ n, P11466210915978411190.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P6646047627698736210

`A191109(A330569(n+1))`
-/

namespace A236313.P6646047627698736210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (A330569 (n + 1)).toNat

end

end A236313.P6646047627698736210

namespace A236313

/-- `A191109(A330569(n+1))` -/
def P6646047627698736210.Spec : Prop :=
  ∀ n, P6646047627698736210.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P10301515265128551930

`A324185(A385047(n+1))`
-/

namespace A236313.P10301515265128551930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324185 (A385047 (n + 1)).toNat

end

end A236313.P10301515265128551930

namespace A236313

/-- `A324185(A385047(n+1))` -/
def P10301515265128551930.Spec : Prop :=
  ∀ n, P10301515265128551930.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P12484623460071531948

`A007051(A001511(n+1)-1)`
-/

namespace A236313.P12484623460071531948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A001511 (n + 1) - 1).toNat

end

end A236313.P12484623460071531948

namespace A236313

/-- `A007051(A001511(n+1)-1)` -/
def P12484623460071531948.Spec : Prop :=
  ∀ n, P12484623460071531948.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P8157350959090219795

`A124302(2-A088705(n+1))`
-/

namespace A236313.P8157350959090219795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (2 - A088705 (n + 1)).toNat

end

end A236313.P8157350959090219795

namespace A236313

/-- `A124302(2-A088705(n+1))` -/
def P8157350959090219795.Spec : Prop :=
  ∀ n, P8157350959090219795.a n = A236313 (n + 1)

end A236313

/-! ## A236313.P5276415205565063428

`A032924((n+1)/A000265(n+1))`
-/

namespace A236313.P5276415205565063428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000265 (n + 1) : ℚ))).toNat

end

end A236313.P5276415205565063428

namespace A236313

/-- `A032924((n+1)/A000265(n+1))` -/
def P5276415205565063428.Spec : Prop :=
  ∀ n, P5276415205565063428.a n = A236313 (n + 1)

end A236313

/-!
# A236314: Number of non-overlapping occurrences of n in the decimal representation of n^n.

The programs for A236314, there is no canonical definition to state claims against.
-/

/-! ## A236314.P17533823697638575184

`A255270(A236322(n+1)²²)`
-/

namespace A236314.P17533823697638575184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 ((A236322 (n + 1) ^ 2) ^ 2).toNat

end

end A236314.P17533823697638575184

/-! ## A236314.P16811400388986990323

`A331097(A028557(n))+A236322(n+1)`
-/

namespace A236314.P16811400388986990323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (A028557 n).toNat + A236322 (n + 1)

end

end A236314.P16811400388986990323

/-! ## A236314.P7556476817284799170

`A236322(n+1)%A000040(A236312(n))`
-/

namespace A236314.P7556476817284799170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236322 (n + 1)) (A000040 (A236312 n).toNat)

end

end A236314.P7556476817284799170

/-! ## A236314.P10497477429101298097

`A236322(n+1)+A107078(A219697(2*n+1))`
-/

namespace A236314.P10497477429101298097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236322 (n + 1) + A107078 (A219697 (2 * n + 1)).toNat

end

end A236314.P10497477429101298097

/-! ## A236314.P3719381771690881602

`A236322(n+1)+A137579(A130402(n))`
-/

namespace A236314.P3719381771690881602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236322 (n + 1) + A137579 (A130402 n).toNat

end

end A236314.P3719381771690881602

/-! ## A236314.P17566631091104727304

`A236322(n+1)+A000038(A109805(n+1))`
-/

namespace A236314.P17566631091104727304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236322 (n + 1) + A000038 (A109805 (n + 1)).toNat

end

end A236314.P17566631091104727304

/-! ## A236314.P16885551196156281788

`A236322(n+1)+A000122(A070181(n+1))`
-/

namespace A236314.P16885551196156281788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236322 (n + 1) + A000122 (A070181 (n + 1)).toNat

end

end A236314.P16885551196156281788

/-! ## A236314.P9220276054307460755

`A236322(n+1)+A000038(A119416(n+5))`
-/

namespace A236314.P9220276054307460755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236322 (n + 1) + A000038 (A119416 (n + 5)).toNat

end

end A236314.P9220276054307460755

/-! ## A236314.P14931944618852456352

`and(A137029(n+1), A236322(n+1))`
-/

namespace A236314.P14931944618852456352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137029 (n + 1)) (A236322 (n + 1))

end

end A236314.P14931944618852456352

/-! ## A236314.P15456210014861660810

`A236322(n+1)*A267525(A236312(n+4))`
-/

namespace A236314.P15456210014861660810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236322 (n + 1) * A267525 (A236312 (n + 4)).toNat

end

end A236314.P15456210014861660810

/-!
# A236315: Number of (n+1)X(1+1) 0..3 arrays colored with the maximum plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236315, there is no canonical definition to state claims against.
-/

/-! ## A236315.P14073832074596042496

`A236319(∑[n]+1)`
-/

namespace A236315.P14073832074596042496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236319 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236315.P14073832074596042496

/-! ## A236315.P16706353433741564703

`record[A236319(A286245(n+1))]`
-/

namespace A236315.P16706353433741564703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236319 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236315.P16706353433741564703

/-! ## A236315.P8261370226571162910

`record[A236319(A061857(n+1)+1)]`
-/

namespace A236315.P8261370226571162910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236319 (A061857 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236315.P8261370226571162910

/-! ## A236315.P18420113956901182994

`record[A010054(n)*A236319(n+1)]`
-/

namespace A236315.P18420113956901182994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236315.P18420113956901182994

/-! ## A236315.P2716584689464471971

`record[A103451(n)*A236319(n+1)]`
-/

namespace A236315.P2716584689464471971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236315.P2716584689464471971

/-!
# A236316: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236316, there is no canonical definition to state claims against.
-/

/-! ## A236316.P15275959509846475192

`A236319(∑[n+1]+2)`
-/

namespace A236316.P15275959509846475192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236319 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236316.P15275959509846475192

/-! ## A236316.P18013186075043844342

`record[A236319(A056536(n+1)+1)]`
-/

namespace A236316.P18013186075043844342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236319 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236316.P18013186075043844342

/-! ## A236316.P17834624288777594192

`record[A236319(A061857(n+1)+2)]`
-/

namespace A236316.P17834624288777594192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236319 (A061857 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236316.P17834624288777594192

/-! ## A236316.P14317497758545084133

`record[A010054(n)*A236319(n+2)]`
-/

namespace A236316.P14317497758545084133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236316.P14317497758545084133

/-!
# A236317: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236317, there is no canonical definition to state claims against.
-/

/-! ## A236317.P9286866121356963608

`A236319(∑[n+2]+4)`
-/

namespace A236317.P9286866121356963608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236319 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236317.P9286866121356963608

/-! ## A236317.P6738355442793955220

`record[A236319(A167614(val(n+1, 2)+1))]`
-/

namespace A236317.P6738355442793955220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236319 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236317.P6738355442793955220

/-! ## A236317.P271037199036707061

`lcm((-1)^n, A236319(A167614(n+1)))`
-/

namespace A236317.P271037199036707061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A236319 (A167614 (n + 1)).toNat)

end

end A236317.P271037199036707061

/-!
# A236318: Number of (n+1)X(4+1) 0..3 arrays colored with the maximum plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236318, there is no canonical definition to state claims against.
-/

/-! ## A236318.P1751987948673017948

`A236319(A020752(n+1))`
-/

namespace A236318.P1751987948673017948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236319 (A020752 (n + 1)).toNat

end

end A236318.P1751987948673017948

/-! ## A236318.P17821209012907637213

`A236319(A167614(n+2)+1)`
-/

namespace A236318.P17821209012907637213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236319 (A167614 (n + 2) + 1).toNat

end

end A236318.P17821209012907637213

/-!
# A236320: Conjectured number of Sierpiński numbers less than 10^n.

The programs for A236320, there is no canonical definition to state claims against.
-/

/-! ## A236320.P16276458175147458627

`A237880(n+1)-A236321(n+1)`
-/

namespace A236320.P16276458175147458627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237880 (n + 1) - A236321 (n + 1)

end

end A236320.P16276458175147458627

/-! ## A236320.P2040899643619453399

`A079684(xor(A009239(n), A072090(n)))`
-/

namespace A236320.P2040899643619453399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079684 (Int.xor (A009239 n) (A072090 n)).toNat

end

end A236320.P2040899643619453399

/-! ## A236320.P12760898272911572762

`A195177(A340021(n))-A271325(n+1)`
-/

namespace A236320.P12760898272911572762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A340021 n).toNat - A271325 (n + 1)

end

end A236320.P12760898272911572762

/-! ## A236320.P6340352626486910210

`A237880(n+1)-A224708(A033271(n!))`
-/

namespace A236320.P6340352626486910210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237880 (n + 1) - A224708 (A033271 (Nat.factorial n)).toNat

end

end A236320.P6340352626486910210

/-!
# A236321: Conjectured number of Riesel numbers less than 10^n.

The programs for A236321, there is no canonical definition to state claims against.
-/

/-! ## A236321.P1202891704819293838

`A237880(n+1)-A236320(n+1)`
-/

namespace A236321.P1202891704819293838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237880 (n + 1) - A236320 (n + 1)

end

end A236321.P1202891704819293838

/-! ## A236321.P5943453774489975324

`A224708(A033271(n!))`
-/

namespace A236321.P5943453774489975324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A033271 (Nat.factorial n)).toNat

end

end A236321.P5943453774489975324

/-! ## A236321.P5825526224299933748

`A025444(A000984(n)-A027642(n))`
-/

namespace A236321.P5825526224299933748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A000984 n - A027642 n).toNat

end

end A236321.P5825526224299933748

/-! ## A236321.P3336862364207255163

`A025444(record[A126869(n)]-A027642(n))`
-/

namespace A236321.P3336862364207255163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A027642 n).toNat

end

end A236321.P3336862364207255163

/-!
# A236323: Number of (n+1) X (1+1) 0..1 arrays colored with the sum of the upper and lower median values of each 2 X 2 subblock.

The programs for A236323, the canonical program `A236323.P18243525323189461251` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236323 has offset 1).

The definition of A236323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236323.P18243525323189461251

`a(n-2)+2*a(n-3)+8*a(n-4)` with `a(0)=16, a(1)=32, a(2)=60, a(3)=120`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236323

/-- `a(n-2)+2*a(n-3)+8*a(n-4)` -/
def P18243525323189461251.Spec : Prop :=
  ∀ n, (P18243525323189461251.a n : ℤ) = A236323 (n + 1)

theorem P18243525323189461251.correct : P18243525323189461251.Spec := by
  intro n
  simp only [A236323, Nat.add_sub_cancel]

end A236323

/-! ## A236323.P14211210205080442408

`A103517(or(A000292(n), A006188(n+3)))`
-/

namespace A236323.P14211210205080442408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.lor (A000292 n) (A006188 (n + 3))).toNat

end

end A236323.P14211210205080442408

namespace A236323

/-- `A103517(or(A000292(n), A006188(n+3)))` -/
def P14211210205080442408.Spec : Prop :=
  ∀ n, P14211210205080442408.a n = A236323 (n + 1)

end A236323

/-!
# A236324: Number of (n+1) X (2+1) 0..1 arrays colored with the sum of the upper and lower median values of each 2 X 2 subblock.

The programs for A236324, the canonical program `A236324.P13159437718681908089` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236324 has offset 1).

The definition of A236324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236324.P13159437718681908089

`a(n-3)+4*a(n-4)` with `a(0)=32, a(1)=44, a(2)=60, a(3)=92, a(4)=156`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236324

/-- `a(n-3)+4*a(n-4)` -/
def P13159437718681908089.Spec : Prop :=
  ∀ n, (P13159437718681908089.a n : ℤ) = A236324 (n + 1)

theorem P13159437718681908089.correct : P13159437718681908089.Spec := by
  intro n
  simp only [A236324, Nat.add_sub_cancel]

end A236324

/-! ## A236324.P15498038199942863942

`4*(A342777(A342761(n))+1)`
-/

namespace A236324.P15498038199942863942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A342777 (A342761 n).toNat + 1)

end

end A236324.P15498038199942863942

namespace A236324

/-- `4*(A342777(A342761(n))+1)` -/
def P15498038199942863942.Spec : Prop :=
  ∀ n, P15498038199942863942.a n = A236324 (n + 1)

end A236324

/-!
# A236325: a(n) = |{0 < k < n: m = phi(k)/2 + phi(n-k)/12 is an integer with m! + prime(m) prime}|, where phi(.) is Euler's totient function.

The programs for A236325, there is no canonical definition to state claims against.
-/

/-! ## A236325.P7509196784735538383

`∑{d}[n+1, A234503(#)*A260094((n+1)/#-1)]`
-/

namespace A236325.P7509196784735538383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A234503 d * A260094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A236325.P7509196784735538383

/-! ## A236325.P3072470793479993673

`A071178(A188670(n)^A234503(n+1))`
-/

namespace A236325.P3072470793479993673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.roundAway ((A188670 n : ℚ) ^ (A234503 (n + 1) : ℤ))).toNat

end

end A236325.P3072470793479993673

/-! ## A236325.P9509801044074530908

`A234503(n+1)+A025469(A329453(3*n+4))`
-/

namespace A236325.P9509801044074530908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234503 (n + 1) + A025469 (A329453 (3 * n + 4)).toNat

end

end A236325.P9509801044074530908

/-! ## A236325.P4000355553681485680

`A234503(lt[A187496(n), A071786(n+1)])`
-/

namespace A236325.P4000355553681485680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234503 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A236325.P4000355553681485680

/-! ## A236325.P1321361727397450177

`A234503(lt[A143644(n), A326401(2*(n+1))])`
-/

namespace A236325.P1321361727397450177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326401 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234503 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A236325.P1321361727397450177

/-!
# A236326: a(n)*Pi is the total length of irregular spiral (center points: 1, 2, 3, 4, 5; pattern 1) after n rotations.

The programs for A236326, the canonical program `A236326.P9027039823572451356` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236326 has offset 1).

The definition of A236326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236326.P9027039823572451356

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=3, a(1)=6, a(2)=10, a(3)=17, a(4)=24, a(5)=27`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236326

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P9027039823572451356.Spec : Prop :=
  ∀ n, P9027039823572451356.a n = A236326 (n + 1)

theorem P9027039823572451356.correct : P9027039823572451356.Spec := by
  intro n
  simp only [A236326, Nat.add_sub_cancel]

end A236326

/-! ## A236326.P13382574553923730042

`∑[floor(a(n-5))]` with `a(0)=3, a(1)=3, a(2)=4, a(3)=7, a(4)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A236326.P13382574553923730042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 4, 7, 7] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236326.P13382574553923730042

namespace A236326

/-- `∑[floor(a(n-5))]` -/
def P13382574553923730042.Spec : Prop :=
  ∀ n, (P13382574553923730042.a n : ℤ) = A236326 (n + 1)

end A236326

/-! ## A236326.P4515662187287424209

`∑[ceil(a(n-5))]` with `a(0)=3, a(1)=3, a(2)=4, a(3)=7, a(4)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A236326.P4515662187287424209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 4, 7, 7] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236326.P4515662187287424209

namespace A236326

/-- `∑[ceil(a(n-5))]` -/
def P4515662187287424209.Spec : Prop :=
  ∀ n, (P4515662187287424209.a n : ℤ) = A236326 (n + 1)

end A236326

/-! ## A236326.P13755199341959079620

`∑[a(n-5)%8]` with `a(0)=3, a(1)=3, a(2)=4, a(3)=7, a(4)=7`
-/

namespace A236326.P13755199341959079620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 4, 7, 7] fun n f1 =>
  f1 (n - 5) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236326.P13755199341959079620

namespace A236326

/-- `∑[a(n-5)%8]` -/
def P13755199341959079620.Spec : Prop :=
  ∀ n, (P13755199341959079620.a n : ℤ) = A236326 (n + 1)

end A236326

/-! ## A236326.P10816609229137708227

`∑[and(5, A047418(n+1))+3]`
-/

namespace A236326.P10816609229137708227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A047418 (n + 1)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236326.P10816609229137708227

namespace A236326

/-- `∑[and(5, A047418(n+1))+3]` -/
def P10816609229137708227.Spec : Prop :=
  ∀ n, P10816609229137708227.a n = A236326 (n + 1)

end A236326

/-! ## A236326.P12982452927844636602

`A092486(A047263(4*n+5))-3`
-/

namespace A236326.P12982452927844636602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A047263 (4 * n + 5)).toNat - 3

end

end A236326.P12982452927844636602

namespace A236326

/-- `A092486(A047263(4*n+5))-3` -/
def P12982452927844636602.Spec : Prop :=
  ∀ n, P12982452927844636602.a n = A236326 (n + 1)

end A236326

/-! ## A236326.P12208211553956093467

`A109451(∑[A047570(n+1)%8])`
-/

namespace A236326.P12208211553956093467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047570 (n + 1)) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109451 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236326.P12208211553956093467

namespace A236326

/-- `A109451(∑[A047570(n+1)%8])` -/
def P12208211553956093467.Spec : Prop :=
  ∀ n, P12208211553956093467.a n = A236326 (n + 1)

end A236326

/-! ## A236326.P12460794890557996025

`A109451(∑[and(7, A047570(n+1))])`
-/

namespace A236326.P12460794890557996025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A047570 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109451 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236326.P12460794890557996025

namespace A236326

/-- `A109451(∑[and(7, A047570(n+1))])` -/
def P12460794890557996025.Spec : Prop :=
  ∀ n, P12460794890557996025.a n = A236326 (n + 1)

end A236326

/-! ## A236326.P12127079160816227702

`A008486(A250120(3*n+1))-A072154(A219529(3*n+1))`
-/

namespace A236326.P12127079160816227702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A250120 (3 * n + 1)).toNat - A072154 (A219529 (3 * n + 1)).toNat

end

end A236326.P12127079160816227702

namespace A236326

/-- `A008486(A250120(3*n+1))-A072154(A219529(3*n+1))` -/
def P12127079160816227702.Spec : Prop :=
  ∀ n, P12127079160816227702.a n = A236326 (n + 1)

end A236326

/-!
# A236327: a(n)*Pi is the total length of irregular spiral (center points: 1, 2, 3, 4, 5; pattern 2) after n rotations.

The programs for A236327, the canonical program `A236327.P15178036899889787236` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236327 has offset 1).

The definition of A236327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236327.P15178036899889787236

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=8, a(2)=19, a(3)=30, a(4)=32`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236327

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P15178036899889787236.Spec : Prop :=
  ∀ n, P15178036899889787236.a n = A236327 (n + 1)

theorem P15178036899889787236.correct : P15178036899889787236.Spec := by
  intro n
  simp only [A236327, Nat.add_sub_cancel]

end A236327

/-! ## A236327.P9168931377201241762

`∑[C(5, n%4)+1]`
-/

namespace A236327.P9168931377201241762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (n % 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236327.P9168931377201241762

namespace A236327

/-- `∑[C(5, n%4)+1]` -/
def P9168931377201241762.Spec : Prop :=
  ∀ n, (P9168931377201241762.a n : ℤ) = A236327 (n + 1)

end A236327

/-! ## A236327.P13857255122132791202

`∑[C(5, and(3, n))+1]`
-/

namespace A236327.P13857255122132791202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (Nat.land 3 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236327.P13857255122132791202

namespace A236327

/-- `∑[C(5, and(3, n))+1]` -/
def P13857255122132791202.Spec : Prop :=
  ∀ n, (P13857255122132791202.a n : ℤ) = A236327 (n + 1)

end A236327

/-! ## A236327.P16126290958878153290

`a(n-4)+30` with `a(0)=2, a(1)=8, a(2)=19, a(3)=30`
-/

namespace A236327.P16126290958878153290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8, 19, 30] fun n a =>
  a (n - 4) + 30

end

end A236327.P16126290958878153290

namespace A236327

/-- `a(n-4)+30` -/
def P16126290958878153290.Spec : Prop :=
  ∀ n, (P16126290958878153290.a n : ℤ) = A236327 (n + 1)

end A236327

/-! ## A236327.P4809762306021650057

`∑[abs(a(n-4))]` with `a(0)=2, a(1)=6, a(2)=11, a(3)=11`
-/

namespace A236327.P4809762306021650057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 11, 11] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236327.P4809762306021650057

namespace A236327

/-- `∑[abs(a(n-4))]` -/
def P4809762306021650057.Spec : Prop :=
  ∀ n, (P4809762306021650057.a n : ℤ) = A236327 (n + 1)

end A236327

/-! ## A236327.P12894962548365117416

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=6, a(2)=11, a(3)=11`

`floor` is left out, it is the identity on integers.
-/

namespace A236327.P12894962548365117416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 11, 11] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236327.P12894962548365117416

namespace A236327

/-- `∑[floor(a(n-4))]` -/
def P12894962548365117416.Spec : Prop :=
  ∀ n, (P12894962548365117416.a n : ℤ) = A236327 (n + 1)

end A236327

/-! ## A236327.P1382315148496414876

`∑[ceil(a(n-4))]` with `a(0)=2, a(1)=6, a(2)=11, a(3)=11`

`ceil` is left out, it is the identity on integers.
-/

namespace A236327.P1382315148496414876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 11, 11] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236327.P1382315148496414876

namespace A236327

/-- `∑[ceil(a(n-4))]` -/
def P1382315148496414876.Spec : Prop :=
  ∀ n, (P1382315148496414876.a n : ℤ) = A236327 (n + 1)

end A236327

/-! ## A236327.P16992701211060063643

`∑[round(a(n-4))]` with `a(0)=2, a(1)=6, a(2)=11, a(3)=11`

`round` is left out, it is the identity on integers.
-/

namespace A236327.P16992701211060063643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 11, 11] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236327.P16992701211060063643

namespace A236327

/-- `∑[round(a(n-4))]` -/
def P16992701211060063643.Spec : Prop :=
  ∀ n, (P16992701211060063643.a n : ℤ) = A236327 (n + 1)

end A236327

/-! ## A236327.P9671932448487469007

`∑[a(n-4)%35]` with `a(0)=2, a(1)=6, a(2)=11, a(3)=11`
-/

namespace A236327.P9671932448487469007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 11, 11] fun n f1 =>
  f1 (n - 4) % 35

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236327.P9671932448487469007

namespace A236327

/-- `∑[a(n-4)%35]` -/
def P9671932448487469007.Spec : Prop :=
  ∀ n, (P9671932448487469007.a n : ℤ) = A236327 (n + 1)

end A236327

/-! ## A236327.P6243085903227757744

`A118286(A118286(n+1))-A047262(n+2)`
-/

namespace A236327.P6243085903227757744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (A118286 (n + 1)).toNat - A047262 (n + 2)

end

end A236327.P6243085903227757744

namespace A236327

/-- `A118286(A118286(n+1))-A047262(n+2)` -/
def P6243085903227757744.Spec : Prop :=
  ∀ n, P6243085903227757744.a n = A236327 (n + 1)

end A236327

/-!
# A236328: a(n) = sigma(n,1) + sigma(n,2) + ... + sigma(n,n).

The programs for A236328, there is no canonical definition to state claims against.
-/

/-! ## A236328.P17592474215440436851

`A065805(n+1)-A000005(n+1)`
-/

namespace A236328.P17592474215440436851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065805 (n + 1) - A000005 (n + 1)

end

end A236328.P17592474215440436851

/-! ## A236328.P5343178365315383411

`A065805(n+1)-A109974(∑[n])`
-/

namespace A236328.P5343178365315383411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065805 (n + 1) - A109974 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236328.P5343178365315383411

/-! ## A236328.P3624054471737388310

`A065805(n+1)-Δ[A006218(n)]`
-/

namespace A236328.P3624054471737388310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065805 (n + 1) - (f1 (n + 1) - f1 n)

end

end A236328.P3624054471737388310

/-! ## A236328.P15380092262924882836

`A065805(n+1)-A114896(A000217(n))`
-/

namespace A236328.P15380092262924882836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065805 (n + 1) - A114896 (A000217 n).toNat

end

end A236328.P15380092262924882836

/-! ## A236328.P7048885056824677864

`A065805(n+1)+A006218(n)-A006218(n+1)`
-/

namespace A236328.P7048885056824677864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065805 (n + 1) + (A006218 n - A006218 (n + 1))

end

end A236328.P7048885056824677864

/-!
# A236330: Positive integers n such that x^2 - 14xy + y^2 + n = 0 has integer solutions.

The programs for A236330, there is no canonical definition to state claims against.
-/

/-! ## A236330.P3009639743139487005

`16*A084917(n+1)`
-/

namespace A236330.P3009639743139487005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A084917 (n + 1)

end

end A236330.P3009639743139487005

/-! ## A236330.P15557695011602699682

`16*∩[2*n, A084916(n+1)]/2`
-/

namespace A236330.P15557695011602699682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  16 * ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2)

end

end A236330.P15557695011602699682

/-! ## A236330.P668544194941566343

`A008598(A084917(n+1))`
-/

namespace A236330.P668544194941566343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (A084917 (n + 1)).toNat

end

end A236330.P668544194941566343

/-! ## A236330.P16199706038796191761

`16*record[A135997(A084916(n+1))]`
-/

namespace A236330.P16199706038796191761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A084916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236330.P16199706038796191761

/-! ## A236330.P11514903359579974253

`16*record[A025480(A084916(n+2))]`
-/

namespace A236330.P11514903359579974253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A084916 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236330.P11514903359579974253

/-!
# A236331: Positive integers n such that x^2 - 18xy + y^2 + n = 0 has integer solutions.

The programs for A236331, the canonical program `A236331.P7355864695801326223` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236331 has offset 1).

The definition of A236331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236331.P7355864695801326223

`64*A031363(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A236331

/-- `64*A031363(n+1)` -/
def P7355864695801326223.Spec : Prop :=
  ∀ n, P7355864695801326223.a n = A236331 (n + 1)

theorem P7355864695801326223.correct : P7355864695801326223.Spec := by
  intro n
  simp only [A236331, Nat.add_sub_cancel]

end A236331

/-! ## A236331.P15318730186513365496

`64*(lt[0, A035187(n+1)]+1)`
-/

namespace A236331.P15318730186513365496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A236331.P15318730186513365496

namespace A236331

/-- `64*(lt[0, A035187(n+1)]+1)` -/
def P15318730186513365496.Spec : Prop :=
  ∀ n, (P15318730186513365496.a n : ℤ) = A236331 (n + 1)

end A236331

/-! ## A236331.P3334257737835610484

`64*(lt[0, A078473(n+1)]+1)`
-/

namespace A236331.P3334257737835610484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A236331.P3334257737835610484

namespace A236331

/-- `64*(lt[0, A078473(n+1)]+1)` -/
def P3334257737835610484.Spec : Prop :=
  ∀ n, (P3334257737835610484.a n : ℤ) = A236331 (n + 1)

end A236331

/-! ## A236331.P11499792327842053953

`64*(eq[1, gcd(5, A321562(n+1))]+1)`
-/

namespace A236331.P11499792327842053953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A321562 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A236331.P11499792327842053953

namespace A236331

/-- `64*(eq[1, gcd(5, A321562(n+1))]+1)` -/
def P11499792327842053953.Spec : Prop :=
  ∀ n, (P11499792327842053953.a n : ℤ) = A236331 (n + 1)

end A236331

/-! ## A236331.P14275004769831481851

`A152691(A031363(n+1))`
-/

namespace A236331.P14275004769831481851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 (A031363 (n + 1)).toNat

end

end A236331.P14275004769831481851

namespace A236331

/-- `A152691(A031363(n+1))` -/
def P14275004769831481851.Spec : Prop :=
  ∀ n, P14275004769831481851.a n = A236331 (n + 1)

end A236331

/-! ## A236331.P1864631076540204993

`64*(lt[0, A031364(n+1)]+1)`
-/

namespace A236331.P1864631076540204993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A236331.P1864631076540204993

namespace A236331

/-- `64*(lt[0, A031364(n+1)]+1)` -/
def P1864631076540204993.Spec : Prop :=
  ∀ n, (P1864631076540204993.a n : ℤ) = A236331 (n + 1)

end A236331

/-!
# A236332: The number of orbits of 4-tuples of the dihedral group of order 2n acting on {1,2,...,n}.

The programs for A236332, the canonical program `A236332.P12068679823046649745` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236332 has offset 1).

The definition of A236332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236332.P12068679823046649745

`A056107(n)+a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A236332

/-- `A056107(n)+a(n-2)` -/
def P12068679823046649745.Spec : Prop :=
  ∀ n, P12068679823046649745.a n = A236332 (n + 1)

theorem P12068679823046649745.correct : P12068679823046649745.Spec := by
  intro n
  simp only [A236332, Nat.add_sub_cancel]

end A236332

/-! ## A236332.P11462167306639932645

`∑[A289443(n)]+n-a(n-1)` with `a(0)=1`
-/

namespace A236332.P11462167306639932645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289443 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - a (n - 1)

end

end A236332.P11462167306639932645

namespace A236332

/-- `∑[A289443(n)]+n-a(n-1)` -/
def P11462167306639932645.Spec : Prop :=
  ∀ n, P11462167306639932645.a n = A236332 (n + 1)

end A236332

/-! ## A236332.P14202756194326627891

`A168230(n+1)+A158842(n+1)`
-/

namespace A236332.P14202756194326627891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (n + 1) + A158842 (n + 1)

end

end A236332.P14202756194326627891

namespace A236332

/-- `A168230(n+1)+A158842(n+1)` -/
def P14202756194326627891.Spec : Prop :=
  ∀ n, P14202756194326627891.a n = A236332 (n + 1)

end A236332

/-! ## A236332.P9448418788272370710

`(n+1)*A000124(n+1)-A326658(n)`
-/

namespace A236332.P9448418788272370710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000124 (n + 1) - A326658 n

end

end A236332.P9448418788272370710

namespace A236332

/-- `(n+1)*A000124(n+1)-A326658(n)` -/
def P9448418788272370710.Spec : Prop :=
  ∀ n, P9448418788272370710.a n = A236332 (n + 1)

end A236332

/-! ## A236332.P18247068230150698704

`A046092(and(n, A066532(n+2)))+A036486(n+1)`
-/

namespace A236332.P18247068230150698704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (Int.land (n : ℤ) (A066532 (n + 2))).toNat + A036486 (n + 1)

end

end A236332.P18247068230150698704

namespace A236332

/-- `A046092(and(n, A066532(n+2)))+A036486(n+1)` -/
def P18247068230150698704.Spec : Prop :=
  ∀ n, P18247068230150698704.a n = A236332 (n + 1)

end A236332

/-!
# A236333: The (n-2)-th (n>=3) triple of terms gives coefficients of double trinomial P_n(x) = ((n-2)^2*x^2 + n*x + 2)/2 (see comment).

The programs for A236333, the canonical program `A236333.P4796533297437747585` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236333 has offset 3).

The definition of A236333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236333.P4796533297437747585

`A080425(n)+A109595(n+1)/A008620(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A236333

/-- `A080425(n)+A109595(n+1)/A008620(n)` -/
def P4796533297437747585.Spec : Prop :=
  ∀ n, P4796533297437747585.a n = (A236333 (n + 3) : ℚ)

end A236333

/-! ## A236333.P12434862935734226520

`A080425(n)+gcd(A109815(n+1), A109815(n+2))`
-/

namespace A236333.P12434862935734226520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + (Int.gcd (A109815 (n + 1)) (A109815 (n + 2)) : ℤ)

end

end A236333.P12434862935734226520

namespace A236333

/-- `A080425(n)+gcd(A109815(n+1), A109815(n+2))` -/
def P12434862935734226520.Spec : Prop :=
  ∀ n, P12434862935734226520.a n = A236333 (n + 3)

end A236333

/-! ## A236333.P2017249342927073572

`A008619(A051495(2*n+7))%A051495(n+4)`
-/

namespace A236333.P2017249342927073572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A051495 (2 * n + 7)).toNat) (A051495 (n + 4))

end

end A236333.P2017249342927073572

namespace A236333

/-- `A008619(A051495(2*n+7))%A051495(n+4)` -/
def P2017249342927073572.Spec : Prop :=
  ∀ n, P2017249342927073572.a n = A236333 (n + 3)

end A236333

/-!
# A236334: Cubes k such that k-2 is prime.

The programs for A236334, there is no canonical definition to state claims against.
-/

/-! ## A236334.P14884798722954976068

`A038600(n+1)+2`
-/

namespace A236334.P14884798722954976068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038600 (n + 1) + 2

end

end A236334.P14884798722954976068

/-! ## A236334.P13433844997958169011

`A038599(n+1)^3`
-/

namespace A236334.P13433844997958169011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1) ^ 3

end

end A236334.P13433844997958169011

/-! ## A236334.P5349434398039388156

`A038599(A000027(n+1))²*A038599(n+1)`
-/

namespace A236334.P5349434398039388156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (A000027 (n + 1)).toNat ^ 2 * A038599 (n + 1)

end

end A236334.P5349434398039388156

/-! ## A236334.P9866734162355453048

`A038599(A008619(2*n))²*A038599(A008619(2*n))`
-/

namespace A236334.P9866734162355453048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (A008619 (2 * n)).toNat ^ 2 * A038599 (A008619 (2 * n)).toNat

end

end A236334.P9866734162355453048

/-! ## A236334.P9840074236952485454

`A000578(A038599(n+1))`
-/

namespace A236334.P9840074236952485454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A038599 (n + 1)).toNat

end

end A236334.P9840074236952485454

/-! ## A236334.P2446369918454595449

`A000027(A038599(n+1)²)²/A038599(n+1)`
-/

namespace A236334.P2446369918454595449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A038599 (n + 1) ^ 2).toNat ^ 2 : ℚ) / (A038599 (n + 1) : ℚ)

end

end A236334.P2446369918454595449

/-!
# A236335: Lexicographically earliest sequence of positive integers whose graph has no three collinear points.

The programs for A236335, there is no canonical definition to state claims against.
-/

/-! ## A236335.P9847185222551848594

`A236266(n)+1`
-/

namespace A236335.P9847185222551848594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236266 n + 1

end

end A236335.P9847185222551848594

/-! ## A236335.P2688639081649583131

`1-A057428(n)*A236266(n)`
-/

namespace A236335.P2688639081649583131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A236266 n

end

end A236335.P2688639081649583131

/-! ## A236335.P13536403465075325975

`2-(A000120(A001316(n))-A236266(n))`
-/

namespace A236335.P13536403465075325975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000120 (A001316 n).toNat - A236266 n)

end

end A236335.P13536403465075325975

/-! ## A236335.P2871413972030106768

`A008619(2*A236266(n))`
-/

namespace A236335.P2871413972030106768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A236266 n).toNat

end

end A236335.P2871413972030106768

/-! ## A236335.P16416209001251289985

`A000079(n)-(A000225(n)-A236266(n))`
-/

namespace A236335.P16416209001251289985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A000225 n - A236266 n)

end

end A236335.P16416209001251289985

/-!
# A236336: Lexicographically earliest increasing sequence of positive integers whose graph has no three collinear points.

The programs for A236336, there is no canonical definition to state claims against.
-/

/-! ## A236336.P5414290084073388796

`∑[A060130(A050911(n)+1)]`
-/

namespace A236336.P5414290084073388796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A050911 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236336.P5414290084073388796

/-! ## A236336.P8535335420693141118

`∑[gcd(A039107(5*(n+3)), A089415(n))]`
-/

namespace A236336.P8535335420693141118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039107 (5 * (n + 3))) (A089415 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236336.P8535335420693141118

/-! ## A236336.P5993074893457118512

`A004525(A103139(n+2))-floor(n^sin(59))`
-/

namespace A236336.P5993074893457118512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A103139 (n + 2)).toNat - ⌊(n : ℝ) ^ (Real.sin (59 : ℝ))⌋

end

end A236336.P5993074893457118512

/-! ## A236336.P10368729121111091597

`A281116(A336417(n))+A003592(n+1)`
-/

namespace A236336.P10368729121111091597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A336417 n).toNat + A003592 (n + 1)

end

end A236336.P10368729121111091597

/-!
# A236337: Expansion of (2 - x) / ((1 - x)^2 * (1 - x^3)) in powers of x.

The programs for A236337, the canonical program `A236337.P11694659812285690228` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236337 has offset 0).

The definition of A236337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236337.P11694659812285690228

`2*a(n-3)-a(n-6)+3` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7, a(4)=9, a(5)=11`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236337

/-- `2*a(n-3)-a(n-6)+3` -/
def P11694659812285690228.Spec : Prop :=
  ∀ n, P11694659812285690228.a n = A236337 n

theorem P11694659812285690228.correct : P11694659812285690228.Spec := by
  intro n
  simp only [A236337]

end A236337

/-! ## A236337.P13798655581795515316

`∑[∑[gcd(4, n%3)-2]]`
-/

namespace A236337.P13798655581795515316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n % 3) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P13798655581795515316

namespace A236337

/-- `∑[∑[gcd(4, n%3)-2]]` -/
def P13798655581795515316.Spec : Prop :=
  ∀ n, P13798655581795515316.a n = A236337 n

end A236337

/-! ## A236337.P8393844335317207056

`∑[a(n-3)+1]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A236337.P8393844335317207056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P8393844335317207056

namespace A236337

/-- `∑[a(n-3)+1]` -/
def P8393844335317207056.Spec : Prop :=
  ∀ n, (P8393844335317207056.a n : ℤ) = A236337 n

end A236337

/-! ## A236337.P12383616360986168365

`∑[∑[floor(a(n-3))]]` with `a(0)=2, a(1)=-1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A236337.P12383616360986168365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P12383616360986168365

namespace A236337

/-- `∑[∑[floor(a(n-3))]]` -/
def P12383616360986168365.Spec : Prop :=
  ∀ n, P12383616360986168365.a n = A236337 n

end A236337

/-! ## A236337.P13057052742359286219

`a(n-3)+2+n` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A236337.P13057052742359286219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (n - 3) + 2 + n

end

end A236337.P13057052742359286219

namespace A236337

/-- `a(n-3)+2+n` -/
def P13057052742359286219.Spec : Prop :=
  ∀ n, (P13057052742359286219.a n : ℤ) = A236337 n

end A236337

/-! ## A236337.P7369387872164951938

`∑[∑[(3-((n+1)%3)²)%3]]`
-/

namespace A236337.P7369387872164951938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - ((((n + 1) % 3) ^ 2 : ℕ) : ℤ)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P7369387872164951938

namespace A236337

/-- `∑[∑[(3-((n+1)%3)²)%3]]` -/
def P7369387872164951938.Spec : Prop :=
  ∀ n, P7369387872164951938.a n = A236337 n

end A236337

/-! ## A236337.P12536902608675402031

`∑[∑[3-a(a(n-1))]-n]` with `a(0)=2, a(1)=0`
-/

namespace A236337.P12536902608675402031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  3 - f2 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P12536902608675402031

namespace A236337

/-- `∑[∑[3-a(a(n-1))]-n]` -/
def P12536902608675402031.Spec : Prop :=
  ∀ n, P12536902608675402031.a n = A236337 n

end A236337

/-! ## A236337.P120833600218792659

`∑[ceil((n+1)/3)]+ceil((n+1)/3)`
-/

namespace A236337.P120833600218792659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈(n + 1 : ℚ) / 3⌉

end

end A236337.P120833600218792659

namespace A236337

/-- `∑[ceil((n+1)/3)]+ceil((n+1)/3)` -/
def P120833600218792659.Spec : Prop :=
  ∀ n, P120833600218792659.a n = A236337 n

end A236337

/-! ## A236337.P17508160275280930913

`∑[or(2, A131452(n))-n]`
-/

namespace A236337.P17508160275280930913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A131452 n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P17508160275280930913

namespace A236337

/-- `∑[or(2, A131452(n))-n]` -/
def P17508160275280930913.Spec : Prop :=
  ∀ n, P17508160275280930913.a n = A236337 n

end A236337

/-! ## A236337.P6091295562490603951

`∑[∑[4/A153727(n)-2]]`
-/

namespace A236337.P6091295562490603951
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A153727 n : ℚ) - 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P6091295562490603951

namespace A236337

/-- `∑[∑[4/A153727(n)-2]]` -/
def P6091295562490603951.Spec : Prop :=
  ∀ n, P6091295562490603951.a n = (A236337 n : ℚ)

end A236337

/-! ## A236337.P5841683400536438690

`∑[A047370(n+1)-2*n]`
-/

namespace A236337.P5841683400536438690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P5841683400536438690

namespace A236337

/-- `∑[A047370(n+1)-2*n]` -/
def P5841683400536438690.Spec : Prop :=
  ∀ n, P5841683400536438690.a n = A236337 n

end A236337

/-! ## A236337.P4872900669978587881

`Δ[A014125(n)-A002264(n)]`
-/

namespace A236337.P4872900669978587881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n - A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236337.P4872900669978587881

namespace A236337

/-- `Δ[A014125(n)-A002264(n)]` -/
def P4872900669978587881.Spec : Prop :=
  ∀ n, P4872900669978587881.a n = A236337 n

end A236337

/-! ## A236337.P4636619541957094750

`∑[A079978(n)+∑[A079978(n)]]`
-/

namespace A236337.P4636619541957094750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P4636619541957094750

namespace A236337

/-- `∑[A079978(n)+∑[A079978(n)]]` -/
def P4636619541957094750.Spec : Prop :=
  ∀ n, P4636619541957094750.a n = A236337 n

end A236337

/-! ## A236337.P7865901480861537085

`∑[A002264(n)+2-A011655(n)]`
-/

namespace A236337.P7865901480861537085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n + (2 - A011655 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P7865901480861537085

namespace A236337

/-- `∑[A002264(n)+2-A011655(n)]` -/
def P7865901480861537085.Spec : Prop :=
  ∀ n, P7865901480861537085.a n = A236337 n

end A236337

/-! ## A236337.P5609082012670512539

`∑[A079979(2*n)+∑[A079979(2*n)]]`
-/

namespace A236337.P5609082012670512539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P5609082012670512539

namespace A236337

/-- `∑[A079979(2*n)+∑[A079979(2*n)]]` -/
def P5609082012670512539.Spec : Prop :=
  ∀ n, P5609082012670512539.a n = A236337 n

end A236337

/-! ## A236337.P16460341530537336918

`∑[A093719(2*n)+∑[A093719(2*n)]]`
-/

namespace A236337.P16460341530537336918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P16460341530537336918

namespace A236337

/-- `∑[A093719(2*n)+∑[A093719(2*n)]]` -/
def P16460341530537336918.Spec : Prop :=
  ∀ n, P16460341530537336918.a n = A236337 n

end A236337

/-! ## A236337.P12262515562317614189

`Δ[A001840(n)+∑[A001840(n)]]`
-/

namespace A236337.P12262515562317614189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236337.P12262515562317614189

namespace A236337

/-- `Δ[A001840(n)+∑[A001840(n)]]` -/
def P12262515562317614189.Spec : Prop :=
  ∀ n, P12262515562317614189.a n = A236337 n

end A236337

/-! ## A236337.P7328297596673258434

`∑[A011655(n+1)+A008611(n)]`
-/

namespace A236337.P7328297596673258434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) + A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236337.P7328297596673258434

namespace A236337

/-- `∑[A011655(n+1)+A008611(n)]` -/
def P7328297596673258434.Spec : Prop :=
  ∀ n, P7328297596673258434.a n = A236337 n

end A236337

/-!
# A236339: Association types in 2-dimensional algebra.

The programs for A236339, there is no canonical definition to state claims against.
-/

/-! ## A236339.P14569577341280668263

`A237018(∑[n+3])`
-/

namespace A236339.P14569577341280668263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236339.P14569577341280668263

/-! ## A236339.P5928198059508125033

`record[A237018(A027379(A008611(n)))]`
-/

namespace A236339.P5928198059508125033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A027379 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236339.P5928198059508125033

/-! ## A236339.P17727478463099594977

`record[A237018(A027379(A028242(n)))]`
-/

namespace A236339.P17727478463099594977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A027379 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236339.P17727478463099594977

/-! ## A236339.P18055214800604697571

`record[A237018(A027379(A328399(n)))]`
-/

namespace A236339.P18055214800604697571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A027379 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236339.P18055214800604697571

/-! ## A236339.P7797340974887089527

`record[A237018(A027379(A344180(n)))]`
-/

namespace A236339.P7797340974887089527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A027379 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236339.P7797340974887089527

/-! ## A236339.P2506854858908451659

`record[A237018(A027379(A032742(n+1)))]`
-/

namespace A236339.P2506854858908451659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A027379 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236339.P2506854858908451659

/-! ## A236339.P270999401476460673

`record[A237018(A027379(A101296(n+1)))]`
-/

namespace A236339.P270999401476460673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A027379 (A101296 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236339.P270999401476460673

/-!
# A236340: Number of length n binary words such that maximal runs of 1's are restricted to length one or two and maximal runs of 0's are of odd length.

The programs for A236340, the canonical program `A236340.P6068744357341425797` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236340 has offset 0).

The definition of A236340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236340.P6068744357341425797

`2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236340

/-- `2*a(n-2)+a(n-3)` -/
def P6068744357341425797.Spec : Prop :=
  ∀ n, (P6068744357341425797.a n : ℤ) = A236340 n

theorem P6068744357341425797.correct : P6068744357341425797.Spec := by
  intro n
  simp only [A236340]

end A236340

/-! ## A236340.P1814490369503682860

`2*A066983(n+1)-A105812(n)`
-/

namespace A236340.P1814490369503682860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066983 (n + 1) - A105812 n

end

end A236340.P1814490369503682860

namespace A236340

/-- `2*A066983(n+1)-A105812(n)` -/
def P1814490369503682860.Spec : Prop :=
  ∀ n, P1814490369503682860.a n = A236340 n

end A236340

/-! ## A236340.P13488332083476309634

`A071679(n+1)-Δ[A026625(n)]`
-/

namespace A236340.P13488332083476309634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1) - (f1 (n + 1) - f1 n)

end

end A236340.P13488332083476309634

namespace A236340

/-- `A071679(n+1)-Δ[A026625(n)]` -/
def P13488332083476309634.Spec : Prop :=
  ∀ n, P13488332083476309634.a n = A236340 n

end A236340

/-! ## A236340.P8859410524829148955

`A004277(A006355(n))-A033999(n)`
-/

namespace A236340.P8859410524829148955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A006355 n).toNat - A033999 n

end

end A236340.P8859410524829148955

namespace A236340

/-- `A004277(A006355(n))-A033999(n)` -/
def P8859410524829148955.Spec : Prop :=
  ∀ n, P8859410524829148955.a n = A236340 n

end A236340

/-!
# A236342: Association types in 3-dimensional algebra.

The programs for A236342, there is no canonical definition to state claims against.
-/

/-! ## A236342.P1377978340438216569

`A237018(∑[n+3]+n+3)`
-/

namespace A236342.P1377978340438216569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A236342.P1377978340438216569

/-! ## A236342.P12691887362734063339

`record[A237018(abs(A046691(n)))]`
-/

namespace A236342.P12691887362734063339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236342.P12691887362734063339

/-! ## A236342.P4225251321338293057

`record[A237018(A027379(n)-1)]`
-/

namespace A236342.P4225251321338293057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236342.P4225251321338293057

/-! ## A236342.P12923763530421962407

`record[A237018(abs(3-A000096(n)))]`
-/

namespace A236342.P12923763530421962407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 |3 - A000096 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236342.P12923763530421962407

/-! ## A236342.P2448135981832568292

`record[gcd(A002262(n+4), A237018(n))]`
-/

namespace A236342.P2448135981832568292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 4)) (A237018 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236342.P2448135981832568292

/-! ## A236342.P18344006173441494217

`A237018(A046691(n+2))%A126109(n)²`
-/

namespace A236342.P18344006173441494217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237018 (A046691 (n + 2)).toNat) (A126109 n ^ 2)

end

end A236342.P18344006173441494217

/-!
# A236343: Expansion of (1 - x + 2*x^2 - x^3) / ((1 - x)^2 * (1 - x^3)) in powers of x.

The programs for A236343, the canonical program `A236343.P8922671829094966000` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236343 has offset 0).

The definition of A236343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236343.P8922671829094966000

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236343

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P8922671829094966000.Spec : Prop :=
  ∀ n, P8922671829094966000.a n = A236343 n

theorem P8922671829094966000.correct : P8922671829094966000.Spec := by
  intro n
  simp only [A236343]

end A236343

/-! ## A236343.P10112648648956621976

`∑[∑[xor(1, n%3)]-n]`
-/

namespace A236343.P10112648648956621976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P10112648648956621976

namespace A236343

/-- `∑[∑[xor(1, n%3)]-n]` -/
def P10112648648956621976.Spec : Prop :=
  ∀ n, P10112648648956621976.a n = A236343 n

end A236343

/-! ## A236343.P6337636915067887987

`∑[a(n-3)+1]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A236343.P6337636915067887987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P6337636915067887987

namespace A236343

/-- `∑[a(n-3)+1]` -/
def P6337636915067887987.Spec : Prop :=
  ∀ n, (P6337636915067887987.a n : ℤ) = A236343 n

end A236343

/-! ## A236343.P908562904846336879

`a(n-3)+1+n` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A236343.P908562904846336879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 3) + 1 + n

end

end A236343.P908562904846336879

namespace A236343

/-- `a(n-3)+1+n` -/
def P908562904846336879.Spec : Prop :=
  ∀ n, (P908562904846336879.a n : ℤ) = A236343 n

end A236343

/-! ## A236343.P13666218695653530107

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A236343.P13666218695653530107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P13666218695653530107

namespace A236343

/-- `∑[∑[floor(a(n-3))]]` -/
def P13666218695653530107.Spec : Prop :=
  ∀ n, P13666218695653530107.a n = A236343 n

end A236343

/-! ## A236343.P17153536834936560025

`∑[∑[a(n-3)%4]-n]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A236343.P17153536834936560025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f2 =>
  f2 (n - 3) % 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P17153536834936560025

namespace A236343

/-- `∑[∑[a(n-3)%4]-n]` -/
def P17153536834936560025.Spec : Prop :=
  ∀ n, P17153536834936560025.a n = A236343 n

end A236343

/-! ## A236343.P13084030777868134560

`1-∑[a(n-3)-1]` with `a(0)=0, a(1)=0, a(2)=-2, a(3)=-2`
-/

namespace A236343.P13084030777868134560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -2, -2] fun n f1 =>
  f1 (n - 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P13084030777868134560

namespace A236343

/-- `1-∑[a(n-3)-1]` -/
def P13084030777868134560.Spec : Prop :=
  ∀ n, P13084030777868134560.a n = A236343 n

end A236343

/-! ## A236343.P13519214279915576179

`∑[round(n/3)]+ceil((2*n+1)/3)`
-/

namespace A236343.P13519214279915576179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈(2 * n + 1 : ℚ) / 3⌉

end

end A236343.P13519214279915576179

namespace A236343

/-- `∑[round(n/3)]+ceil((2*n+1)/3)` -/
def P13519214279915576179.Spec : Prop :=
  ∀ n, P13519214279915576179.a n = A236343 n

end A236343

/-! ## A236343.P1071393158957253380

`∑[1-A131380(n)+n]`
-/

namespace A236343.P1071393158957253380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131380 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P1071393158957253380

namespace A236343

/-- `∑[1-A131380(n)+n]` -/
def P1071393158957253380.Spec : Prop :=
  ∀ n, P1071393158957253380.a n = A236343 n

end A236343

/-! ## A236343.P17424206799135169715

`∑[2-A130727(n)+n]`
-/

namespace A236343.P17424206799135169715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130727 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P17424206799135169715

namespace A236343

/-- `∑[2-A130727(n)+n]` -/
def P17424206799135169715.Spec : Prop :=
  ∀ n, P17424206799135169715.a n = A236343 n

end A236343

/-! ## A236343.P10189224729993235610

`∑[∑[2-A224317(n+1)]]`
-/

namespace A236343.P10189224729993235610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A224317 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P10189224729993235610

namespace A236343

/-- `∑[∑[2-A224317(n+1)]]` -/
def P10189224729993235610.Spec : Prop :=
  ∀ n, P10189224729993235610.a n = A236343 n

end A236343

/-! ## A236343.P7375437922256092783

`∑[A047278(n+1)-2*n]`
-/

namespace A236343.P7375437922256092783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047278 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P7375437922256092783

namespace A236343

/-- `∑[A047278(n+1)-2*n]` -/
def P7375437922256092783.Spec : Prop :=
  ∀ n, P7375437922256092783.a n = A236343 n

end A236343

/-! ## A236343.P17736345623973658573

`∑[A047384(n+1)-2*n+1]`
-/

namespace A236343.P17736345623973658573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047384 (n + 1) - (2 * n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P17736345623973658573

namespace A236343

/-- `∑[A047384(n+1)-2*n+1]` -/
def P17736345623973658573.Spec : Prop :=
  ∀ n, P17736345623973658573.a n = A236343 n

end A236343

/-! ## A236343.P6855936813303696736

`∑[A028242(∑[A011655(n)])]`
-/

namespace A236343.P6855936813303696736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P6855936813303696736

namespace A236343

/-- `∑[A028242(∑[A011655(n)])]` -/
def P6855936813303696736.Spec : Prop :=
  ∀ n, P6855936813303696736.a n = A236343 n

end A236343

/-! ## A236343.P352988292039827587

`∑[A028242(2*n-comp[A004767(n)])]`
-/

namespace A236343.P352988292039827587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n - SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P352988292039827587

namespace A236343

/-- `∑[A028242(2*n-comp[A004767(n)])]` -/
def P352988292039827587.Spec : Prop :=
  ∀ n, P352988292039827587.a n = A236343 n

end A236343

/-! ## A236343.P4830456484380938931

`Δ[A014125(n)-Δ[A014125(n)]]`
-/

namespace A236343.P4830456484380938931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236343.P4830456484380938931

namespace A236343

/-- `Δ[A014125(n)-Δ[A014125(n)]]` -/
def P4830456484380938931.Spec : Prop :=
  ∀ n, P4830456484380938931.a n = A236343 n

end A236343

/-! ## A236343.P7243092052882791593

`(A064429(n+1)+A000212(n+1))/2`
-/

namespace A236343.P7243092052882791593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064429 (n + 1) + A000212 (n + 1) : ℚ) / 2

end

end A236343.P7243092052882791593

namespace A236343

/-- `(A064429(n+1)+A000212(n+1))/2` -/
def P7243092052882791593.Spec : Prop :=
  ∀ n, P7243092052882791593.a n = (A236343 n : ℚ)

end A236343

/-! ## A236343.P6223248590543938278

`∑[A011655(n+2)+A002264(n+1)]`
-/

namespace A236343.P6223248590543938278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 2) + A002264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P6223248590543938278

namespace A236343

/-- `∑[A011655(n+2)+A002264(n+1)]` -/
def P6223248590543938278.Spec : Prop :=
  ∀ n, P6223248590543938278.a n = A236343 n

end A236343

/-! ## A236343.P6173277695402551033

`∑[A133310(2*n)-n]`
-/

namespace A236343.P6173277695402551033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P6173277695402551033

namespace A236343

/-- `∑[A133310(2*n)-n]` -/
def P6173277695402551033.Spec : Prop :=
  ∀ n, P6173277695402551033.a n = A236343 n

end A236343

/-! ## A236343.P10017689149389797608

`∑[1-∑[A132798(2*n)]]`
-/

namespace A236343.P10017689149389797608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132798 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236343.P10017689149389797608

namespace A236343

/-- `∑[1-∑[A132798(2*n)]]` -/
def P10017689149389797608.Spec : Prop :=
  ∀ n, P10017689149389797608.a n = A236343 n

end A236343

/-!
# A236345: a(n) is the Manhattan distance between n and n^2 in a left-aligned triangle with next M natural numbers in row M: 1, 2 3, 4 5 6, 7 8 9 10, etc.

The programs for A236345, there is no canonical definition to state claims against.
-/

/-! ## A236345.P4986011131359530442

`A108872(A077342(n+1)²)-A108872(n+1)`
-/

namespace A236345.P4986011131359530442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (A077342 (n + 1) ^ 2).toNat - A108872 (n + 1)

end

end A236345.P4986011131359530442

/-! ## A236345.P14840329227419397251

`A094727(A242474(n+1)²)-(A051162(n)+1)`
-/

namespace A236345.P14840329227419397251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A242474 (n + 1) ^ 2).toNat - (A051162 n + 1)

end

end A236345.P14840329227419397251

/-! ## A236345.P6766359598857098723

`A094727(A242474(n+1)²)-A094727(n+1)`
-/

namespace A236345.P6766359598857098723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A242474 (n + 1) ^ 2).toNat - A094727 (n + 1)

end

end A236345.P6766359598857098723

/-! ## A236345.P6016351188369557408

`A108872(A242474(n+1)²)-A108872(n+1)`
-/

namespace A236345.P6016351188369557408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (A242474 (n + 1) ^ 2).toNat - A108872 (n + 1)

end

end A236345.P6016351188369557408

/-! ## A236345.P3953179205664604616

`A094727(A151764((n+1)²))-A094727(n+1)`
-/

namespace A236345.P3953179205664604616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A151764 ((n + 1) ^ 2)).toNat - A094727 (n + 1)

end

end A236345.P3953179205664604616

/-!
# A236346: Manhattan distances between n^2 and (n+1)^2 in a left-aligned triangle with next M natural numbers in row M: 1, 2 3, 4 5 6, 7 8 9 10, etc.

The programs for A236346, the canonical program `A236346.P11164933767683975448` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236346 has offset 1).

The definition of A236346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236346.P11164933767683975448

`abs(1-Δ[A057050(n+1)])+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A236346

/-- `abs(1-Δ[A057050(n+1)])+1` -/
def P11164933767683975448.Spec : Prop :=
  ∀ n, P11164933767683975448.a n = A236346 (n + 1)

theorem P11164933767683975448.correct : P11164933767683975448.Spec := by
  intro n
  simp only [A236346, Nat.add_sub_cancel]

end A236346

/-! ## A236346.P3300691291686802134

`A006338(n+1)+abs(Δ[A057049(n+1)])`
-/

namespace A236346.P3300691291686802134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006338 (n + 1) + |f1 (n + 1) - f1 n|

end

end A236346.P3300691291686802134

namespace A236346

/-- `A006338(n+1)+abs(Δ[A057049(n+1)])` -/
def P3300691291686802134.Spec : Prop :=
  ∀ n, P3300691291686802134.a n = A236346 (n + 1)

end A236346

/-! ## A236346.P16535162315587826825

`Δ[A378763(n+3)+A298731(n)]`
-/

namespace A236346.P16535162315587826825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378763 (n + 3) + A298731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236346.P16535162315587826825

namespace A236346

/-- `Δ[A378763(n+3)+A298731(n)]` -/
def P16535162315587826825.Spec : Prop :=
  ∀ n, P16535162315587826825.a n = A236346 (n + 1)

end A236346

/-! ## A236346.P3840068473255420296

`A284315(3*n+1)+A284266(A284306(n))`
-/

namespace A236346.P3840068473255420296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284315 (3 * n + 1) + A284266 (A284306 n).toNat

end

end A236346.P3840068473255420296

namespace A236346

/-- `A284315(3*n+1)+A284266(A284306(n))` -/
def P3840068473255420296.Spec : Prop :=
  ∀ n, P3840068473255420296.a n = A236346 (n + 1)

end A236346

/-!
# A236347: Manhattan distances between n and 2*n in a left-aligned triangle with next M natural numbers in row M: 1, 2 3, 4 5 6, 7 8 9 10, etc.

The programs for A236347, there is no canonical definition to state claims against.
-/

/-! ## A236347.P15064837064580567639

`A039996(A225472(n+2)+1)`
-/

namespace A236347.P15064837064580567639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A225472 (n + 2) + 1).toNat

end

end A236347.P15064837064580567639

/-! ## A236347.P10097859625342350352

`A060130(A288808(n)+A035358(n+1))`
-/

namespace A236347.P10097859625342350352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A288808 n + A035358 (n + 1)).toNat

end

end A236347.P10097859625342350352

/-! ## A236347.P10006004405791320680

`A043532(or(A000714(n), A325256(n)))`
-/

namespace A236347.P10006004405791320680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (Int.lor (A000714 n) (A325256 n)).toNat

end

end A236347.P10006004405791320680

/-! ## A236347.P1374380016238407477

`or(A007814(n+1), A319995(A068236(n)))`
-/

namespace A236347.P1374380016238407477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (n + 1)) (A319995 (A068236 n).toNat)

end

end A236347.P1374380016238407477

/-! ## A236347.P11352376249350506132

`A265745(3*n+2)+A089802(A000079(n))`
-/

namespace A236347.P11352376249350506132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (3 * n + 2) + A089802 (A000079 n).toNat

end

end A236347.P11352376249350506132

/-!
# A236348: Expansion of (1 - x + 2*x^2 + x^3) / ((1 - x) * (1 - x^3)) in powers of x.

The programs for A236348, the canonical program `A236348.P5872937582032852226` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236348 has offset 0).

The definition of A236348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236348.P3708675249703294760

`n+2/sqrt(3)*sin(2*(n+1)*π/3)`
-/

namespace A236348.P3708675249703294760
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) + 2 / Real.sqrt (3 : ℝ) * Real.sin (2 * ((n + 1 : ℝ) * (Real.pi / 3)))

end

end A236348.P3708675249703294760

namespace A236348

/-- `n+2/sqrt(3)*sin(2*(n+1)*π/3)` -/
def P3708675249703294760.Spec : Prop :=
  ∀ n, P3708675249703294760.a n = (A236348 n : ℝ)

end A236348

/-! ## A236348.P5872937582032852226

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236348

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5872937582032852226.Spec : Prop :=
  ∀ n, P5872937582032852226.a n = A236348 n

theorem P5872937582032852226.correct : P5872937582032852226.Spec := by
  intro n
  simp only [A236348]

end A236348

/-! ## A236348.P6736263975240203765

`a(n-3)+3` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A236348.P6736263975240203765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 3) + 3

end

end A236348.P6736263975240203765

namespace A236348

/-- `a(n-3)+3` -/
def P6736263975240203765.Spec : Prop :=
  ∀ n, (P6736263975240203765.a n : ℤ) = A236348 n

end A236348

/-! ## A236348.P95103273893156559

`(n+2)%3-1+n`
-/

namespace A236348.P95103273893156559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) % 3 : ℕ) : ℤ) - 1 + (n : ℤ)

end

end A236348.P95103273893156559

namespace A236348

/-- `(n+2)%3-1+n` -/
def P95103273893156559.Spec : Prop :=
  ∀ n, P95103273893156559.a n = A236348 n

end A236348

/-! ## A236348.P3454304990257172625

`1-((2*n)%3-n)`
-/

namespace A236348.P3454304990257172625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((2 * n % 3 : ℕ) : ℤ) - (n : ℤ))

end

end A236348.P3454304990257172625

namespace A236348

/-- `1-((2*n)%3-n)` -/
def P3454304990257172625.Spec : Prop :=
  ∀ n, P3454304990257172625.a n = A236348 n

end A236348

/-! ## A236348.P3543490030073303732

`-2*n%3+n+1`
-/

namespace A236348.P3543490030073303732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(2 * n : ℤ)) 3 + (n + 1 : ℤ)

end

end A236348.P3543490030073303732

namespace A236348

/-- `-2*n%3+n+1` -/
def P3543490030073303732.Spec : Prop :=
  ∀ n, P3543490030073303732.a n = A236348 n

end A236348

/-! ## A236348.P14797422812318098255

`∑[(-2)^(∑[n]%3)]+n`
-/

namespace A236348.P14797422812318098255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A236348.P14797422812318098255

namespace A236348

/-- `∑[(-2)^(∑[n]%3)]+n` -/
def P14797422812318098255.Spec : Prop :=
  ∀ n, P14797422812318098255.a n = A236348 n

end A236348

/-! ## A236348.P5354182763545022721

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A236348.P5354182763545022721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236348.P5354182763545022721

namespace A236348

/-- `∑[floor(a(n-3))]` -/
def P5354182763545022721.Spec : Prop :=
  ∀ n, P5354182763545022721.a n = A236348 n

end A236348

/-! ## A236348.P16478878018900430111

`3-floor(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A236348.P16478878018900430111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  3 - (-a (n - 3))

end

end A236348.P16478878018900430111

namespace A236348

/-- `3-floor(-a(n-3))` -/
def P16478878018900430111.Spec : Prop :=
  ∀ n, P16478878018900430111.a n = A236348 n

end A236348

/-! ## A236348.P930261014726386932

`3-ceil(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A236348.P930261014726386932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  3 - (-a (n - 3))

end

end A236348.P930261014726386932

namespace A236348

/-- `3-ceil(-a(n-3))` -/
def P930261014726386932.Spec : Prop :=
  ∀ n, P930261014726386932.a n = A236348 n

end A236348

/-! ## A236348.P5198376057400536179

`3-round(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A236348.P5198376057400536179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  3 - (-a (n - 3))

end

end A236348.P5198376057400536179

namespace A236348

/-- `3-round(-a(n-3))` -/
def P5198376057400536179.Spec : Prop :=
  ∀ n, P5198376057400536179.a n = A236348 n

end A236348

/-! ## A236348.P3993414642416060100

`round(cos((2*n+1)%6)+n)`
-/

namespace A236348.P3993414642416060100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (((2 * n + 1) % 6 : ℕ) : ℝ) + (n : ℝ))

end

end A236348.P3993414642416060100

namespace A236348

/-- `round(cos((2*n+1)%6)+n)` -/
def P3993414642416060100.Spec : Prop :=
  ∀ n, P3993414642416060100.a n = A236348 n

end A236348

/-! ## A236348.P12302338414641534565

`2*n+1-3*ceil(n/3)`
-/

namespace A236348.P12302338414641534565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - 3 * ⌈(n : ℚ) / 3⌉

end

end A236348.P12302338414641534565

namespace A236348

/-- `2*n+1-3*ceil(n/3)` -/
def P12302338414641534565.Spec : Prop :=
  ∀ n, P12302338414641534565.a n = A236348 n

end A236348

/-! ## A236348.P13504102226029459615

`A136289(n)%(n+2)`
-/

namespace A236348.P13504102226029459615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136289 n) (n + 2 : ℤ)

end

end A236348.P13504102226029459615

namespace A236348

/-- `A136289(n)%(n+2)` -/
def P13504102226029459615.Spec : Prop :=
  ∀ n, P13504102226029459615.a n = A236348 n

end A236348

/-! ## A236348.P1597141847749085551

`A004482(A064429(n))`
-/

namespace A236348.P1597141847749085551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A064429 n).toNat

end

end A236348.P1597141847749085551

namespace A236348

/-- `A004482(A064429(n))` -/
def P1597141847749085551.Spec : Prop :=
  ∀ n, P1597141847749085551.a n = A236348 n

end A236348

/-! ## A236348.P16018492030301294051

`A330396(A004482(n))`
-/

namespace A236348.P16018492030301294051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (A004482 n).toNat

end

end A236348.P16018492030301294051

namespace A236348

/-- `A330396(A004482(n))` -/
def P16018492030301294051.Spec : Prop :=
  ∀ n, P16018492030301294051.a n = A236348 n

end A236348

/-! ## A236348.P16103737771053423652

`A330396(A061347(n+1)+n)`
-/

namespace A236348.P16103737771053423652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (A061347 (n + 1) + (n : ℤ)).toNat

end

end A236348.P16103737771053423652

namespace A236348

/-- `A330396(A061347(n+1)+n)` -/
def P16103737771053423652.Spec : Prop :=
  ∀ n, P16103737771053423652.a n = A236348 n

end A236348

/-! ## A236348.P11836417284431527017

`A224334(n+1)%A228949(n+2)`
-/

namespace A236348.P11836417284431527017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224334 (n + 1)) (A228949 (n + 2))

end

end A236348.P11836417284431527017

namespace A236348

/-- `A224334(n+1)%A228949(n+2)` -/
def P11836417284431527017.Spec : Prop :=
  ∀ n, P11836417284431527017.a n = A236348 n

end A236348

/-!
# A236349: Number of (n+1)X(1+1) 0..2 arrays colored with the sum of the upper and lower median values of each 2X2 subblock.

The programs for A236349, there is no canonical definition to state claims against.
-/

/-! ## A236349.P13237105261218416547

`A236354(∑[n]+1)`
-/

namespace A236349.P13237105261218416547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236349.P13237105261218416547

/-! ## A236349.P770430889515273091

`record[A236354(A114091(n+1))]`
-/

namespace A236349.P770430889515273091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236349.P770430889515273091

/-! ## A236349.P937117960807288386

`record[A236354(A166017(n+1))]`
-/

namespace A236349.P937117960807288386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236349.P937117960807288386

/-! ## A236349.P4415495980616313212

`record[A236354(A246276(n+1))]`
-/

namespace A236349.P4415495980616313212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236349.P4415495980616313212

/-! ## A236349.P7967783387392309271

`record[A236354(A286235(n+1))]`
-/

namespace A236349.P7967783387392309271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236349.P7967783387392309271

/-!
# A236350: Number of (n+1)X(2+1) 0..2 arrays colored with the sum of the upper and lower median values of each 2X2 subblock.

The programs for A236350, there is no canonical definition to state claims against.
-/

/-! ## A236350.P13288369638099738587

`A236354(∑[n+1]+2)`
-/

namespace A236350.P13288369638099738587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236350.P13288369638099738587

/-! ## A236350.P14984210079544295607

`record[A236354(A114091(n+1)+1)]`
-/

namespace A236350.P14984210079544295607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236350.P14984210079544295607

/-! ## A236350.P696282383091438847

`record[A236354(A166017(n+1)+1)]`
-/

namespace A236350.P696282383091438847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236350.P696282383091438847

/-! ## A236350.P9945080317549963473

`record[A236354(A286235(n+1)+1)]`
-/

namespace A236350.P9945080317549963473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236350.P9945080317549963473

/-! ## A236350.P10507762658284455392

`record[root(A236354(n+2), A309010(n))]`
-/

namespace A236350.P10507762658284455392
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236354 (n + 2) : ℝ) ^ (1 / (A309010 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236350.P10507762658284455392

/-!
# A236351: Number of (n+1)X(3+1) 0..2 arrays colored with the sum of the upper and lower median values of each 2X2 subblock.

The programs for A236351, there is no canonical definition to state claims against.
-/

/-! ## A236351.P16427846358263174897

`A236354(∑[n+2]+4)`
-/

namespace A236351.P16427846358263174897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236351.P16427846358263174897

/-! ## A236351.P17629056875963372090

`lcm(2, A236354(A167614(n+1)))`
-/

namespace A236351.P17629056875963372090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236354 (A167614 (n + 1)).toNat)

end

end A236351.P17629056875963372090

/-! ## A236351.P11066787940959000937

`A236354(A167614(n+1))+A033483(n)`
-/

namespace A236351.P11066787940959000937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A167614 (n + 1)).toNat + A033483 n

end

end A236351.P11066787940959000937

/-! ## A236351.P2034901448349438585

`A236354(A167614(n+1))+A053392(n)`
-/

namespace A236351.P2034901448349438585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A167614 (n + 1)).toNat + A053392 n

end

end A236351.P2034901448349438585

/-! ## A236351.P11364369899398695740

`A236354(A167614(n+1))+A059995(n)`
-/

namespace A236351.P11364369899398695740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A167614 (n + 1)).toNat + A059995 n

end

end A236351.P11364369899398695740

/-!
# A236352: Number of (n+1)X(4+1) 0..2 arrays colored with the sum of the upper and lower median values of each 2X2 subblock.

The programs for A236352, there is no canonical definition to state claims against.
-/

/-! ## A236352.P4939312433742095334

`A236354(∑[n+3]+7)`
-/

namespace A236352.P4939312433742095334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236352.P4939312433742095334

/-!
# A236353: Number of (n+1)X(5+1) 0..2 arrays colored with the sum of the upper and lower median values of each 2X2 subblock.

The programs for A236353, there is no canonical definition to state claims against.
-/

/-! ## A236353.P3652099285530730545

`A236354(A167499(n+3))`
-/

namespace A236353.P3652099285530730545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A167499 (n + 3)).toNat

end

end A236353.P3652099285530730545

/-! ## A236353.P16199874553650252236

`A236354(A155212(n)+13)`
-/

namespace A236353.P16199874553650252236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A155212 n + 13).toNat

end

end A236353.P16199874553650252236

/-! ## A236353.P8138807942418661909

`A236354(A056000(n)+15)`
-/

namespace A236353.P8138807942418661909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (A056000 n + 15).toNat

end

end A236353.P8138807942418661909

/-! ## A236353.P657891939635663862

`A236354(eq[7, A066657(n)])`
-/

namespace A236353.P657891939635663862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236353.P657891939635663862

/-!
# A236357: E.g.f. satisfies: sin(x + A(x)) = A(x)^2.

The programs for A236357, there is no canonical definition to state claims against.
-/

/-! ## A236357.P1587468935561437357

`A033999(A017498(n))*A215188(n+1)`
-/

namespace A236357.P1587468935561437357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A017498 n).toNat * A215188 (n + 1)

end

end A236357.P1587468935561437357

/-! ## A236357.P7022731169042386774

`A033999(A032555(n+1))*A215188(n+1)`
-/

namespace A236357.P7022731169042386774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A032555 (n + 1)).toNat * A215188 (n + 1)

end

end A236357.P7022731169042386774

/-! ## A236357.P11247545247574558861

`A033999(A032559(n+1))*A215188(n+1)`
-/

namespace A236357.P11247545247574558861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A032559 (n + 1)).toNat * A215188 (n + 1)

end

end A236357.P11247545247574558861

/-! ## A236357.P13256331754732350533

`A049347(A119374(n))*A215188(n+1)`
-/

namespace A236357.P13256331754732350533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A119374 n).toNat * A215188 (n + 1)

end

end A236357.P13256331754732350533

/-!
# A236360: Numerator of the mean of all parts of all partitions of n.

The programs for A236360, there is no canonical definition to state claims against.
-/

/-! ## A236360.P10280062540987755301

`A066186(n+1)/A006128(n+1)*A236361(n+1)`
-/

namespace A236360.P10280062540987755301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066186 (n + 1) : ℚ) / (A006128 (n + 1) : ℚ) * (A236361 (n + 1) : ℚ)

end

end A236360.P10280062540987755301

/-!
# A236361: Denominator of the mean of all parts of all partitions of n.

The programs for A236361, there is no canonical definition to state claims against.
-/

/-! ## A236361.P131260990723300960

`A006128(n+1)/A066186(n+1)*A236360(n+1)`
-/

namespace A236361.P131260990723300960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006128 (n + 1) : ℚ) / (A066186 (n + 1) : ℚ) * (A236360 (n + 1) : ℚ)

end

end A236361.P131260990723300960

/-!
# A236362: Number of steps for A114440(n) to reach 1.

The programs for A236362, there is no canonical definition to state claims against.
-/

/-! ## A236362.P17066301611409540757

`ceil(A123580(A092391(n))/8)`
-/

namespace A236362.P17066301611409540757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123580 (A092391 n).toNat : ℚ) / 8⌉

end

end A236362.P17066301611409540757

/-! ## A236362.P5700636067337767421

`A110656(A123580(A092391(n)))`
-/

namespace A236362.P5700636067337767421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A123580 (A092391 n).toNat).toNat

end

end A236362.P5700636067337767421

/-! ## A236362.P583905729487165163

`ceil(n/∑[3/A345253(n+1)])`
-/

namespace A236362.P583905729487165163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A345253 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A236362.P583905729487165163

/-! ## A236362.P8670097659769716341

`A391618(A291442(n+1))`
-/

namespace A236362.P8670097659769716341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A291442 (n + 1)).toNat

end

end A236362.P8670097659769716341

/-! ## A236362.P3120162923406652870

`A121902(A325229(n+1)-1)`
-/

namespace A236362.P3120162923406652870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A325229 (n + 1) - 1).toNat

end

end A236362.P3120162923406652870

/-! ## A236362.P819824516148837878

`round(log(sqrt(A099518(n+1))))`
-/

namespace A236362.P819824516148837878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sqrt (A099518 (n + 1) : ℝ)))

end

end A236362.P819824516148837878

/-! ## A236362.P15276282538523475680

`A004218(A259627(n+2))`
-/

namespace A236362.P15276282538523475680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A259627 (n + 2)).toNat

end

end A236362.P15276282538523475680

/-! ## A236362.P8781685127665876892

`A097430(A081455(n+1))`
-/

namespace A236362.P8781685127665876892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097430 (A081455 (n + 1)).toNat

end

end A236362.P8781685127665876892

/-!
# A236363: Sum of digits of A114440(n).

The programs for A236363, there is no canonical definition to state claims against.
-/

/-! ## A236363.P9049127509996975507

`A007953(A114440(n+1))`
-/

namespace A236363.P9049127509996975507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A114440 (n + 1)).toNat

end

end A236363.P9049127509996975507

/-! ## A236363.P1948885633797128122

`∑{digits}[A114440(A000027(n+1)), #]`
-/

namespace A236363.P1948885633797128122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114440 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A236363.P1948885633797128122

/-! ## A236363.P7286069636296379691

`∑{digits}[A114440(n+1), A010888(#)]`
-/

namespace A236363.P7286069636296379691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010888 x).sum

end

end A236363.P7286069636296379691

/-! ## A236363.P10722114507388651851

`log2(∏{digits}[A114440(n+1), A000079(#)])`
-/

namespace A236363.P10722114507388651851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114440 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x).prod : ℤ) : ℝ)

end

end A236363.P10722114507388651851

/-! ## A236363.P6329427759922591696

`∑{digits}[A114440(n+1), #%A045935(n+1)]`
-/

namespace A236363.P6329427759922591696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.tmod (x : ℤ) (A045935 (n + 1))).sum

end

end A236363.P6329427759922591696

/-! ## A236363.P17629926171522587654

`A114440(C(n+1, n))/A110367(A114440(n+1))`
-/

namespace A236363.P17629926171522587654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114440 (Nat.choose (n + 1) n) : ℚ) / (A110367 (A114440 (n + 1)).toNat : ℚ)

end

end A236363.P17629926171522587654

/-! ## A236363.P5563752110780530535

`A114440(A000027(n+1))/A110367(A114440(n+1))`
-/

namespace A236363.P5563752110780530535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114440 (A000027 (n + 1)).toNat : ℚ) / (A110367 (A114440 (n + 1)).toNat : ℚ)

end

end A236363.P5563752110780530535

/-!
# A236364: Sum of all the middle parts in the partitions of 3n into 3 parts.

The programs for A236364, the canonical program `A236364.P13377447819875335470` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236364 has offset 1).

The definition of A236364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236364.P13440706524878677556

`(n+1)*∑[∑[2^(-1)^n]-1]`
-/

namespace A236364.P13440706524878677556
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((-1) ^ n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236364.P13440706524878677556

namespace A236364

/-- `(n+1)*∑[∑[2^(-1)^n]-1]` -/
def P13440706524878677556.Spec : Prop :=
  ∀ n, P13440706524878677556.a n = (A236364 (n + 1) : ℚ)

end A236364

/-! ## A236364.P13377447819875335470

`∑[3*A085787(n)+1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236364

/-- `∑[3*A085787(n)+1]` -/
def P13377447819875335470.Spec : Prop :=
  ∀ n, P13377447819875335470.a n = A236364 (n + 1)

theorem P13377447819875335470.correct : P13377447819875335470.Spec := by
  intro n
  simp only [A236364, Nat.add_sub_cancel]

end A236364

/-! ## A236364.P1441067827232797445

`∑[∑[5*n-A064680(n)]+1]`
-/

namespace A236364.P1441067827232797445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A064680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P1441067827232797445

namespace A236364

/-- `∑[∑[5*n-A064680(n)]+1]` -/
def P1441067827232797445.Spec : Prop :=
  ∀ n, P1441067827232797445.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P13088596984825779017

`(n+1)*∑[A090773(n+1)]/4`
-/

namespace A236364.P13088596984825779017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 4

end

end A236364.P13088596984825779017

namespace A236364

/-- `(n+1)*∑[A090773(n+1)]/4` -/
def P13088596984825779017.Spec : Prop :=
  ∀ n, P13088596984825779017.a n = (A236364 (n + 1) : ℚ)

end A236364

/-! ## A236364.P12061302506933788006

`∑[A186424(n)+A001318(n)]`
-/

namespace A236364.P12061302506933788006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n + A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P12061302506933788006

namespace A236364

/-- `∑[A186424(n)+A001318(n)]` -/
def P12061302506933788006.Spec : Prop :=
  ∀ n, P12061302506933788006.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P15941405804639167415

`A317614(n+1)+A109900(n)`
-/

namespace A236364.P15941405804639167415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) + A109900 n

end

end A236364.P15941405804639167415

namespace A236364

/-- `A317614(n+1)+A109900(n)` -/
def P15941405804639167415.Spec : Prop :=
  ∀ n, P15941405804639167415.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P16185728917595398202

`A342397(n)+A178946(n+1)`
-/

namespace A236364.P16185728917595398202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342397 n + A178946 (n + 1)

end

end A236364.P16185728917595398202

namespace A236364

/-- `A342397(n)+A178946(n+1)` -/
def P16185728917595398202.Spec : Prop :=
  ∀ n, P16185728917595398202.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P12998938274056927389

`∑[∑[A195140(n)+A004277(n)]]`
-/

namespace A236364.P12998938274056927389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n + A004277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P12998938274056927389

namespace A236364

/-- `∑[∑[A195140(n)+A004277(n)]]` -/
def P12998938274056927389.Spec : Prop :=
  ∀ n, P12998938274056927389.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P7019744996620194148

`∑[A002378(n)+A118277(n)+1]`
-/

namespace A236364.P7019744996620194148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (A118277 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P7019744996620194148

namespace A236364

/-- `∑[A002378(n)+A118277(n)+1]` -/
def P7019744996620194148.Spec : Prop :=
  ∀ n, P7019744996620194148.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P6587589480002754892

`A272459(n+1)+A088003(n+1)`
-/

namespace A236364.P6587589480002754892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272459 (n + 1) + A088003 (n + 1)

end

end A236364.P6587589480002754892

namespace A236364

/-- `A272459(n+1)+A088003(n+1)` -/
def P6587589480002754892.Spec : Prop :=
  ∀ n, P6587589480002754892.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P7075954778026734484

`∑[A062317(n+1)+A132356(n)/4]`
-/

namespace A236364.P7075954778026734484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062317 (n + 1) : ℚ) + (A132356 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P7075954778026734484

namespace A236364

/-- `∑[A062317(n+1)+A132356(n)/4]` -/
def P7075954778026734484.Spec : Prop :=
  ∀ n, P7075954778026734484.a n = (A236364 (n + 1) : ℚ)

end A236364

/-! ## A236364.P15471592281336881825

`A235988(n+1)-(A236370(n+1)+A019298(n+1))`
-/

namespace A236364.P15471592281336881825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235988 (n + 1) - (A236370 (n + 1) + A019298 (n + 1))

end

end A236364.P15471592281336881825

namespace A236364

/-- `A235988(n+1)-(A236370(n+1)+A019298(n+1))` -/
def P15471592281336881825.Spec : Prop :=
  ∀ n, P15471592281336881825.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P11571692767976699275

`∑[∑[A008486(A142150(n)+n)]]`
-/

namespace A236364.P11571692767976699275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A142150 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P11571692767976699275

namespace A236364

/-- `∑[∑[A008486(A142150(n)+n)]]` -/
def P11571692767976699275.Spec : Prop :=
  ∀ n, P11571692767976699275.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P9232312835373517710

`∑[A023054(3*n)]`
-/

namespace A236364.P9232312835373517710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023054 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P9232312835373517710

namespace A236364

/-- `∑[A023054(3*n)]` -/
def P9232312835373517710.Spec : Prop :=
  ∀ n, P9232312835373517710.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P386909319501865964

`∑[∑[A257143(3*n)]]`
-/

namespace A236364.P386909319501865964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P386909319501865964

namespace A236364

/-- `∑[∑[A257143(3*n)]]` -/
def P386909319501865964.Spec : Prop :=
  ∀ n, P386909319501865964.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P17579335279169351320

`∑[∑[abs(A280167(3*n))]]`
-/

namespace A236364.P17579335279169351320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280167 (3 * n)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P17579335279169351320

namespace A236364

/-- `∑[∑[abs(A280167(3*n))]]` -/
def P17579335279169351320.Spec : Prop :=
  ∀ n, P17579335279169351320.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P5309861173715237502

`∑[∑[A080512(A008486(n))]]`
-/

namespace A236364.P5309861173715237502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A008486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P5309861173715237502

namespace A236364

/-- `∑[∑[A080512(A008486(n))]]` -/
def P5309861173715237502.Spec : Prop :=
  ∀ n, P5309861173715237502.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P3384910471850923582

`∑[∑[A080512(A280167(2*n))]]`
-/

namespace A236364.P3384910471850923582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A280167 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P3384910471850923582

namespace A236364

/-- `∑[∑[A080512(A280167(2*n))]]` -/
def P3384910471850923582.Spec : Prop :=
  ∀ n, P3384910471850923582.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P13541167305201741242

`A308266(3*(n+1))`
-/

namespace A236364.P13541167305201741242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308266 (3 * (n + 1))

end

end A236364.P13541167305201741242

namespace A236364

/-- `A308266(3*(n+1))` -/
def P13541167305201741242.Spec : Prop :=
  ∀ n, P13541167305201741242.a n = A236364 (n + 1)

end A236364

/-! ## A236364.P15510089475317347853

`∑[A008672(A008851(3*n+1))]`
-/

namespace A236364.P15510089475317347853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (A008851 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236364.P15510089475317347853

namespace A236364

/-- `∑[A008672(A008851(3*n+1))]` -/
def P15510089475317347853.Spec : Prop :=
  ∀ n, P15510089475317347853.a n = A236364 (n + 1)

end A236364

/-!
# A236365: Primes whose binary and octal representation are also prime when read in decimal.

The programs for A236365, there is no canonical definition to state claims against.
-/

/-! ## A236365.P1225663629244033515

`∩[A065720(n+1), A065726(n+1)]`
-/

namespace A236365.P1225663629244033515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236365.P1225663629244033515

/-! ## A236365.P11252219492352650043

`∩[A036952(n+1), A065726(n+1)]`
-/

namespace A236365.P11252219492352650043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236365.P11252219492352650043

/-! ## A236365.P12301943065014686158

`∩[A036963(n+1), A065720(n+1)]`
-/

namespace A236365.P12301943065014686158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236365.P12301943065014686158

/-! ## A236365.P16667200651855695530

`p?[∩[A036952(n+1), A036963(n+1)]]`
-/

namespace A236365.P16667200651855695530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A236365.P16667200651855695530

/-!
# A236368: a(n) = 4^(n!) - 3^(n!).

The programs for A236368, the canonical program `A236368.P5022910096449504655` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236368 has offset 0).

The definition of A236368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n!-3^n!` (program `A236368.P5022910096449504655`, by `A236368.P5022910096449504655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A236368.P5022910096449504655

`4^n!-3^n!`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236368

/-- `4^n!-3^n!` -/
def P5022910096449504655.Spec : Prop :=
  ∀ n, P5022910096449504655.a n = A236368 n

theorem P5022910096449504655.correct : P5022910096449504655.Spec := by
  intro n
  simp only [A236368]

end A236368

/-!
# A236369: 4^n! - 3^n! + 2^n! - 1.

The programs for A236369, there is no canonical definition to state claims against.
-/

/-! ## A236369.P10539273466416241059

`A083324(n!)-1`
-/

namespace A236369.P10539273466416241059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083324 (Nat.factorial n) - 1

end

end A236369.P10539273466416241059

/-!
# A236370: Sum of the largest parts in the partitions of 3n into 3 parts.

The programs for A236370, the canonical program `A236370.P9565244450043832367` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236370 has offset 1).

The definition of A236370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236370.P9565244450043832367

`∑[A026381(n+2)]+n*(n+1)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A236370

/-- `∑[A026381(n+2)]+n*(n+1)²` -/
def P9565244450043832367.Spec : Prop :=
  ∀ n, P9565244450043832367.a n = A236370 (n + 1)

theorem P9565244450043832367.correct : P9565244450043832367.Spec := by
  intro n
  simp only [A236370, Nat.add_sub_cancel]

end A236370

/-! ## A236370.P14884252431757527151

`∑[A000217(A032766(n))]+(n+1)^3`
-/

namespace A236370.P14884252431757527151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 3 : ℤ)

end

end A236370.P14884252431757527151

namespace A236370

/-- `∑[A000217(A032766(n))]+(n+1)^3` -/
def P14884252431757527151.Spec : Prop :=
  ∀ n, P14884252431757527151.a n = A236370 (n + 1)

end A236370

/-! ## A236370.P11164792200477341848

`A000578(n+1)+∑[A000217(A004526(n)+n)]`
-/

namespace A236370.P11164792200477341848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004526 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236370.P11164792200477341848

namespace A236370

/-- `A000578(n+1)+∑[A000217(A004526(n)+n)]` -/
def P11164792200477341848.Spec : Prop :=
  ∀ n, P11164792200477341848.a n = A236370 (n + 1)

end A236370

/-! ## A236370.P17783411488092041929

`A235988(n+1)-(A236364(n+1)+A019298(n+1))`
-/

namespace A236370.P17783411488092041929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235988 (n + 1) - (A236364 (n + 1) + A019298 (n + 1))

end

end A236370.P17783411488092041929

namespace A236370

/-- `A235988(n+1)-(A236364(n+1)+A019298(n+1))` -/
def P17783411488092041929.Spec : Prop :=
  ∀ n, P17783411488092041929.a n = A236370 (n + 1)

end A236370

/-! ## A236370.P10571243945241098814

`A019298(n)+A006918(A016777(n))`
-/

namespace A236370.P10571243945241098814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n + A006918 (A016777 n).toNat

end

end A236370.P10571243945241098814

namespace A236370

/-- `A019298(n)+A006918(A016777(n))` -/
def P10571243945241098814.Spec : Prop :=
  ∀ n, P10571243945241098814.a n = A236370 (n + 1)

end A236370

/-! ## A236370.P17740287616288761979

`A308265(3*(n+1))`
-/

namespace A236370.P17740287616288761979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308265 (3 * (n + 1))

end

end A236370.P17740287616288761979

namespace A236370

/-- `A308265(3*(n+1))` -/
def P17740287616288761979.Spec : Prop :=
  ∀ n, P17740287616288761979.a n = A236370 (n + 1)

end A236370

/-!
# A236376: Riordan array ((1-x+x^2)/(1-x)^2, x/(1-x)^2).

The programs for A236376, the canonical program `A236376.P3394991007226096712` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236376 has offset 0).

The definition of A236376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236376.P3394991007226096712

`A078812(A028310(n))-A165253(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A236376

/-- `A078812(A028310(n))-A165253(n)` -/
def P3394991007226096712.Spec : Prop :=
  ∀ n, P3394991007226096712.a n = A236376 n

theorem P3394991007226096712.correct : P3394991007226096712.Spec := by
  intro n
  simp only [A236376]

end A236376

/-! ## A236376.P4406374612108699678

`A078812(A000007(n)+n)-A165253(n)`
-/

namespace A236376.P4406374612108699678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A000007 n + (n : ℤ)).toNat - A165253 n

end

end A236376.P4406374612108699678

namespace A236376

/-- `A078812(A000007(n)+n)-A165253(n)` -/
def P4406374612108699678.Spec : Prop :=
  ∀ n, P4406374612108699678.a n = A236376 n

end A236376

/-! ## A236376.P16436752751630820060

`A000007(n)-(A165253(n)-A078812(n))`
-/

namespace A236376.P16436752751630820060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A165253 n - A078812 n)

end

end A236376.P16436752751630820060

namespace A236376

/-- `A000007(n)-(A165253(n)-A078812(n))` -/
def P16436752751630820060.Spec : Prop :=
  ∀ n, P16436752751630820060.a n = A236376 n

end A236376

/-! ## A236376.P13946908566530197131

`A078812(n)-(A085478(n)-A128908(n))`
-/

namespace A236376.P13946908566530197131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - (A085478 n - A128908 n)

end

end A236376.P13946908566530197131

namespace A236376

/-- `A078812(n)-(A085478(n)-A128908(n))` -/
def P13946908566530197131.Spec : Prop :=
  ∀ n, P13946908566530197131.a n = A236376 n

end A236376

/-! ## A236376.P6305294624403131303

`A111125(n)-(A078812(n)-A128908(n))`
-/

namespace A236376.P6305294624403131303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111125 n - (A078812 n - A128908 n)

end

end A236376.P6305294624403131303

namespace A236376

/-- `A111125(n)-(A078812(n)-A128908(n))` -/
def P6305294624403131303.Spec : Prop :=
  ∀ n, P6305294624403131303.a n = A236376 n

end A236376

/-! ## A236376.P13205804109646139260

`A128908(n+1)+A128908(n)`
-/

namespace A236376.P13205804109646139260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (n + 1) + A128908 n

end

end A236376.P13205804109646139260

namespace A236376

/-- `A128908(n+1)+A128908(n)` -/
def P13205804109646139260.Spec : Prop :=
  ∀ n, P13205804109646139260.a n = A236376 n

end A236376

/-! ## A236376.P716955665123515723

`abs(Δ[A105812(n)*A128908(n)])`
-/

namespace A236376.P716955665123515723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n * A128908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A236376.P716955665123515723

namespace A236376

/-- `abs(Δ[A105812(n)*A128908(n)])` -/
def P716955665123515723.Spec : Prop :=
  ∀ n, P716955665123515723.a n = A236376 n

end A236376

/-! ## A236376.P16117816498825859561

`A078812(n)-A121314(A038722(n+2))`
-/

namespace A236376.P16117816498825859561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - A121314 (A038722 (n + 2)).toNat

end

end A236376.P16117816498825859561

namespace A236376

/-- `A078812(n)-A121314(A038722(n+2))` -/
def P16117816498825859561.Spec : Prop :=
  ∀ n, P16117816498825859561.a n = A236376 n

end A236376

/-! ## A236376.P6271368429900604575

`A209561(A245300(n)+A002260(n+1))`
-/

namespace A236376.P6271368429900604575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (A245300 n + A002260 (n + 1)).toNat

end

end A236376.P6271368429900604575

namespace A236376

/-- `A209561(A245300(n)+A002260(n+1))` -/
def P6271368429900604575.Spec : Prop :=
  ∀ n, P6271368429900604575.a n = A236376 n

end A236376

/-! ## A236376.P10856915707942428240

`A199881(A292564(n)+A003056(n))`
-/

namespace A236376.P10856915707942428240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199881 (A292564 n + A003056 n).toNat

end

end A236376.P10856915707942428240

namespace A236376

/-- `A199881(A292564(n)+A003056(n))` -/
def P10856915707942428240.Spec : Prop :=
  ∀ n, P10856915707942428240.a n = A236376 n

end A236376

/-!
# A236377: Real part of Sum_{k=0..n} (k + i^k)^2, where i=sqrt(-1).

The programs for A236377, the canonical program `A236377.P339874370298689307` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236377 has offset 0).

The definition of A236377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236377.P339874370298689307

`A000330(n)+A127630(n)-A000035(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A236377

/-- `A000330(n)+A127630(n)-A000035(n)` -/
def P339874370298689307.Spec : Prop :=
  ∀ n, P339874370298689307.a n = A236377 n

theorem P339874370298689307.correct : P339874370298689307.Spec := by
  intro n
  simp only [A236377]

end A236377

/-! ## A236377.P5158296727716718152

`∑[n²]+xor(n, A057077(n))`
-/

namespace A236377.P5158296727716718152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.xor (n : ℤ) (A057077 n)

end

end A236377.P5158296727716718152

namespace A236377

/-- `∑[n²]+xor(n, A057077(n))` -/
def P5158296727716718152.Spec : Prop :=
  ∀ n, P5158296727716718152.a n = A236377 n

end A236377

/-! ## A236377.P5839928316225073341

`∑[A290561(n)²]-A110654(n)`
-/

namespace A236377.P5839928316225073341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290561 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110654 n

end

end A236377.P5839928316225073341

namespace A236377

/-- `∑[A290561(n)²]-A110654(n)` -/
def P5839928316225073341.Spec : Prop :=
  ∀ n, P5839928316225073341.a n = A236377 n

end A236377

/-! ## A236377.P8326779504853722749

`A008619(n)+∑[A033996(A004524(n))]`
-/

namespace A236377.P8326779504853722749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 (A004524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236377.P8326779504853722749

namespace A236377

/-- `A008619(n)+∑[A033996(A004524(n))]` -/
def P8326779504853722749.Spec : Prop :=
  ∀ n, P8326779504853722749.a n = A236377 n

end A236377

/-! ## A236377.P17596622688732630916

`∑[A016754(A004524(n))-A000035(n)]`
-/

namespace A236377.P17596622688732630916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A004524 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236377.P17596622688732630916

namespace A236377

/-- `∑[A016754(A004524(n))-A000035(n)]` -/
def P17596622688732630916.Spec : Prop :=
  ∀ n, P17596622688732630916.a n = A236377 n

end A236377

/-! ## A236377.P966898858451555926

`∑[A290561(n)²]-A004526(n+1)`
-/

namespace A236377.P966898858451555926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290561 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004526 (n + 1)

end

end A236377.P966898858451555926

namespace A236377

/-- `∑[A290561(n)²]-A004526(n+1)` -/
def P966898858451555926.Spec : Prop :=
  ∀ n, P966898858451555926.a n = A236377 n

end A236377

/-! ## A236377.P5572911305433085854

`∑[(A056594(n)+n)²-A056594(n+1)²]`
-/

namespace A236377.P5572911305433085854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 n + (n : ℤ)) ^ 2 - A056594 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236377.P5572911305433085854

namespace A236377

/-- `∑[(A056594(n)+n)²-A056594(n+1)²]` -/
def P5572911305433085854.Spec : Prop :=
  ∀ n, P5572911305433085854.a n = A236377 n

end A236377

/-! ## A236377.P15567146235698439083

`∑[A290561(n)²]-A004525(A052928(n+1))`
-/

namespace A236377.P15567146235698439083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290561 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004525 (A052928 (n + 1)).toNat

end

end A236377.P15567146235698439083

namespace A236377

/-- `∑[A290561(n)²]-A004525(A052928(n+1))` -/
def P15567146235698439083.Spec : Prop :=
  ∀ n, P15567146235698439083.a n = A236377 n

end A236377

/-! ## A236377.P6214888715262169242

`∑[A004442(n*A263426(n))]`
-/

namespace A236377.P6214888715262169242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n : ℤ) * A263426 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236377.P6214888715262169242

namespace A236377

/-- `∑[A004442(n*A263426(n))]` -/
def P6214888715262169242.Spec : Prop :=
  ∀ n, P6214888715262169242.a n = A236377 n

end A236377

/-!
# A236378: Difference between n and the result obtained when n is remultiplied from N to GF(2)[X]: a(n) = n - A234741(n).

The programs for A236378, there is no canonical definition to state claims against.
-/

/-! ## A236378.P11108630430838012360

`A236380(n)-A236379(n)`
-/

namespace A236378.P11108630430838012360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n - A236379 n

end

end A236378.P11108630430838012360

/-! ## A236378.P325180553364222682

`A236380(n)+n-A234742(n)`
-/

namespace A236378.P325180553364222682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n + ((n : ℤ) - A234742 n)

end

end A236378.P325180553364222682

/-! ## A236378.P17797864823899392900

`A028310(n)-A234741(A028310(n))`
-/

namespace A236378.P17797864823899392900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A234741 (A028310 n).toNat

end

end A236378.P17797864823899392900

/-! ## A236378.P7139904825911554135

`A236380(n)-A001489(n)-A234742(n)`
-/

namespace A236378.P7139904825911554135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n - A001489 n - A234742 n

end

end A236378.P7139904825911554135

/-! ## A236378.P11101389327359367804

`A008619(2*n)-1-(A234742(n)-A236380(n))`
-/

namespace A236378.P11101389327359367804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - 1 - (A234742 n - A236380 n)

end

end A236378.P11101389327359367804

/-! ## A236378.P10556699898400834281

`A233583(n+1)-A234741(A233583(n+1))`
-/

namespace A236378.P10556699898400834281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A234741 (A233583 (n + 1)).toNat

end

end A236378.P10556699898400834281

/-! ## A236378.P12635728432064760049

`A236380(n)+A001489(A234742(n)+A001489(n))`
-/

namespace A236378.P12635728432064760049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n + A001489 (A234742 n + A001489 n).toNat

end

end A236378.P12635728432064760049

/-!
# A236379: How much n increases when it is remultiplied from GF(2)[X] to Z: a(n) = A234742(n) - n.

The programs for A236379, there is no canonical definition to state claims against.
-/

/-! ## A236379.P16011888640282285932

`A234742(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A236379.P16011888640282285932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n - (n : ℤ)

end

end A236379.P16011888640282285932

/-! ## A236379.P11446721449487604618

`A236380(n)-A236378(n)`
-/

namespace A236379.P11446721449487604618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n - A236378 n

end

end A236379.P11446721449487604618

/-! ## A236379.P11325380989622458372

`abs(A234742(n)+A001489(n))`
-/

namespace A236379.P11325380989622458372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A234742 n + A001489 n|

end

end A236379.P11325380989622458372

/-! ## A236379.P8207461593889331843

`A001478(n+1)+A234742(n)+1`
-/

namespace A236379.P8207461593889331843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A234742 n + 1)

end

end A236379.P8207461593889331843

/-! ## A236379.P7299319442582879783

`A001489(n)+A054977(n)*A234742(n)`
-/

namespace A236379.P7299319442582879783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A054977 n * A234742 n

end

end A236379.P7299319442582879783

/-!
# A236380: Difference between value of n, when remultiplied "upward", from GF(2)[X] to N, and when remultiplied "downward", from N to GF(2)[X]: a(n) = A234742(n) - A234741(n).

The programs for A236380, there is no canonical definition to state claims against.
-/

/-! ## A236380.P10232246453948508472

`A236378(n)+A236379(n)`
-/

namespace A236380.P10232246453948508472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n + A236379 n

end

end A236380.P10232246453948508472

/-! ## A236380.P2049867078713804701

`A234742(n)+A236378(n)-n`
-/

namespace A236380.P2049867078713804701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n + (A236378 n - (n : ℤ))

end

end A236380.P2049867078713804701

/-! ## A236380.P13612256372352704356

`A001489(n)+A236378(n)+A234742(n)`
-/

namespace A236380.P13612256372352704356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A236378 n + A234742 n)

end

end A236380.P13612256372352704356

/-! ## A236380.P4922879104897394532

`A234742(A028310(n))-A234741(A028310(n))`
-/

namespace A236380.P4922879104897394532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (A028310 n).toNat - A234741 (A028310 n).toNat

end

end A236380.P4922879104897394532

/-! ## A236380.P3330433478987528070

`A234742(A233583(n+1))-A234741(A233583(n+1))`
-/

namespace A236380.P3330433478987528070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (A233583 (n + 1)).toNat - A234741 (A233583 (n + 1)).toNat

end

end A236380.P3330433478987528070

/-! ## A236380.P12267282854731321878

`A236378(n)-A001489(A234742(n)-n)`
-/

namespace A236380.P12267282854731321878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n - A001489 (A234742 n - (n : ℤ)).toNat

end

end A236380.P12267282854731321878

/-!
# A236381: Smallest value of x such that x^2 + y^2 = P, where P is the product of the first n primes of the form 4k + 1, and 0 < x < y.

The programs for A236381, there is no canonical definition to state claims against.
-/

/-! ## A236381.P14565128460965880321

`sqrt(A006278(n+1)-A236382(n+1)²)`
-/

namespace A236381.P14565128460965880321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006278 (n + 1) - A236382 (n + 1) ^ 2 : ℝ)

end

end A236381.P14565128460965880321

/-! ## A236381.P6550077638030854622

`A341678(2^n)`
-/

namespace A236381.P6550077638030854622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341678 (2 ^ n)

end

end A236381.P6550077638030854622

/-! ## A236381.P1874418329161653683

`A341678(A000079(n))%∏[p?[4*n+1]]`
-/

namespace A236381.P1874418329161653683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341678 (A000079 n).toNat) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A236381.P1874418329161653683

/-! ## A236381.P6471850227323483071

`A341678(A000079(n))+A065718(n)`
-/

namespace A236381.P6471850227323483071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341678 (A000079 n).toNat + A065718 n

end

end A236381.P6471850227323483071

/-! ## A236381.P17939742144874906709

`A138908(n)*A341678(A000079(n))`
-/

namespace A236381.P17939742144874906709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138908 n * A341678 (A000079 n).toNat

end

end A236381.P17939742144874906709

/-!
# A236382: Values of y corresponding to the smallest value of x such that x^2 + y^2 = P, where P is the product of the first n primes of the form 4k + 1, and 0 < x < y.

The programs for A236382, there is no canonical definition to state claims against.
-/

/-! ## A236382.P8758759777747509576

`sqrt(A006278(n+1)-A236381(n+1)²)`
-/

namespace A236382.P8758759777747509576
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006278 (n + 1) - A236381 (n + 1) ^ 2 : ℝ)

end

end A236382.P8758759777747509576

/-! ## A236382.P427248728746894643

`sqrt(A006278(n+1)-A341678(2^n)²)`
-/

namespace A236382.P427248728746894643
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006278 (n + 1) - A341678 (2 ^ n) ^ 2 : ℝ)

end

end A236382.P427248728746894643

/-!
# A236384: Number of non-congruent integer triangles with base length n whose apex lies on or within a space bounded by a semicircle of diameter n.

The programs for A236384, the canonical program `A236384.P7308811538325743998` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236384 has offset 1).

The definition of A236384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236384.P10556343316926477570

`∑[A008619(n)]-A247588(n+1)`
-/

namespace A236384.P10556343316926477570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A247588 (n + 1)

end

end A236384.P10556343316926477570

namespace A236384

/-- `∑[A008619(n)]-A247588(n+1)` -/
def P10556343316926477570.Spec : Prop :=
  ∀ n, P10556343316926477570.a n = A236384 (n + 1)

end A236384

/-! ## A236384.P7308811538325743998

`A211340(n+1)-∑[A110654(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A236384

/-- `A211340(n+1)-∑[A110654(n)]` -/
def P7308811538325743998.Spec : Prop :=
  ∀ n, P7308811538325743998.a n = A236384 (n + 1)

theorem P7308811538325743998.correct : P7308811538325743998.Spec := by
  intro n
  simp only [A236384, Nat.add_sub_cancel]

end A236384

/-! ## A236384.P8168504954671297955

`A211340(n+1)-A002620(n+1)`
-/

namespace A236384.P8168504954671297955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211340 (n + 1) - A002620 (n + 1)

end

end A236384.P8168504954671297955

namespace A236384

/-- `A211340(n+1)-A002620(n+1)` -/
def P8168504954671297955.Spec : Prop :=
  ∀ n, P8168504954671297955.a n = A236384 (n + 1)

end A236384

/-! ## A236384.P527169829934148894

`A087811(n+1)-A247588(n+1)`
-/

namespace A236384.P527169829934148894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) - A247588 (n + 1)

end

end A236384.P527169829934148894

namespace A236384

/-- `A087811(n+1)-A247588(n+1)` -/
def P527169829934148894.Spec : Prop :=
  ∀ n, P527169829934148894.a n = A236384 (n + 1)

end A236384

/-! ## A236384.P11585219698243039865

`A002620(n+2)-A247588(n+1)`
-/

namespace A236384.P11585219698243039865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A247588 (n + 1)

end

end A236384.P11585219698243039865

namespace A236384

/-- `A002620(n+2)-A247588(n+1)` -/
def P11585219698243039865.Spec : Prop :=
  ∀ n, P11585219698243039865.a n = A236384 (n + 1)

end A236384

/-! ## A236384.P5281070130983827314

`A211340(n+1)%A076921(n+1)`
-/

namespace A236384.P5281070130983827314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211340 (n + 1)) (A076921 (n + 1))

end

end A236384.P5281070130983827314

namespace A236384

/-- `A211340(n+1)%A076921(n+1)` -/
def P5281070130983827314.Spec : Prop :=
  ∀ n, P5281070130983827314.a n = A236384 (n + 1)

end A236384

/-! ## A236384.P15198074509444022795

`A211340(n+1)-∑[∑[A000035(n)]]`
-/

namespace A236384.P15198074509444022795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211340 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236384.P15198074509444022795

namespace A236384

/-- `A211340(n+1)-∑[∑[A000035(n)]]` -/
def P15198074509444022795.Spec : Prop :=
  ∀ n, P15198074509444022795.a n = A236384 (n + 1)

end A236384

/-! ## A236384.P6107174585813922249

`A211340(n+1)-∑[A004526(n+1)]`
-/

namespace A236384.P6107174585813922249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211340 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236384.P6107174585813922249

namespace A236384

/-- `A211340(n+1)-∑[A004526(n+1)]` -/
def P6107174585813922249.Spec : Prop :=
  ∀ n, P6107174585813922249.a n = A236384 (n + 1)

end A236384

/-! ## A236384.P933841629656923591

`∑[A004526(A036694(n+1))-A004526(n+1)]`
-/

namespace A236384.P933841629656923591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036694 (n + 1)).toNat - A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236384.P933841629656923591

namespace A236384

/-- `∑[A004526(A036694(n+1))-A004526(n+1)]` -/
def P933841629656923591.Spec : Prop :=
  ∀ n, P933841629656923591.a n = A236384 (n + 1)

end A236384

/-! ## A236384.P10004050432066928002

`∑[A008619(A036694(n+1))-A008619(n+1)]`
-/

namespace A236384.P10004050432066928002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036694 (n + 1)).toNat - A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236384.P10004050432066928002

namespace A236384

/-- `∑[A008619(A036694(n+1))-A008619(n+1)]` -/
def P10004050432066928002.Spec : Prop :=
  ∀ n, P10004050432066928002.a n = A236384 (n + 1)

end A236384

/-! ## A236384.P10895212774107964954

`A211340(n+1)+A008619(n)-∑[A008619(n)]`
-/

namespace A236384.P10895212774107964954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211340 (n + 1) + (A008619 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236384.P10895212774107964954

namespace A236384

/-- `A211340(n+1)+A008619(n)-∑[A008619(n)]` -/
def P10895212774107964954.Spec : Prop :=
  ∀ n, P10895212774107964954.a n = A236384 (n + 1)

end A236384

/-!
# A236386: Numbers m such that phi(m) is an oblong number.

The programs for A236386, the canonical program `A236386.P13479699085904531567` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236386 has offset 1).

The definition of A236386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236386.P13479699085904531567

`eq[1, A109983(A000010(n+1))]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A236386

/-- `eq[1, A109983(A000010(n+1))]+1` -/
def P13479699085904531567.Spec : Prop :=
  ∀ n, (P13479699085904531567.a n : ℤ) = A236386 (n + 1)

theorem P13479699085904531567.correct : P13479699085904531567.Spec := by
  intro n
  simp only [A236386, Nat.add_sub_cancel]

end A236386

/-! ## A236386.P9584534676529389134

`eq[1, A056737(A000010(abs(1-n)+1))]`
-/

namespace A236386.P9584534676529389134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A000010 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236386.P9584534676529389134

namespace A236386

/-- `eq[1, A056737(A000010(abs(1-n)+1))]` -/
def P9584534676529389134.Spec : Prop :=
  ∀ n, (P9584534676529389134.a n : ℤ) = A236386 (n + 1)

end A236386

/-! ## A236386.P13299799952522860

`record[n+3-A347681(A023022(n+3))]`
-/

namespace A236386.P13299799952522860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A347681 (A023022 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236386.P13299799952522860

namespace A236386

/-- `record[n+3-A347681(A023022(n+3))]` -/
def P13299799952522860.Spec : Prop :=
  ∀ n, P13299799952522860.a n = A236386 (n + 1)

end A236386

/-! ## A236386.P11233505524281296282

`eq[1, A004738(A000010(n+1)+1)]+1`
-/

namespace A236386.P11233505524281296282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236386.P11233505524281296282

namespace A236386

/-- `eq[1, A004738(A000010(n+1)+1)]+1` -/
def P11233505524281296282.Spec : Prop :=
  ∀ n, (P11233505524281296282.a n : ℤ) = A236386 (n + 1)

end A236386

/-! ## A236386.P5643191509027570615

`eq[1, A097285(A000010(n+1)+1)]+1`
-/

namespace A236386.P5643191509027570615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236386.P5643191509027570615

namespace A236386

/-- `eq[1, A097285(A000010(n+1)+1)]+1` -/
def P5643191509027570615.Spec : Prop :=
  ∀ n, (P5643191509027570615.a n : ℤ) = A236386 (n + 1)

end A236386

/-! ## A236386.P11643006368078673097

`eq[1, A256188(A000010(n+2)+1)]+2`
-/

namespace A236386.P11643006368078673097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256188 (A000010 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A236386.P11643006368078673097

namespace A236386

/-- `eq[1, A256188(A000010(n+2)+1)]+2` -/
def P11643006368078673097.Spec : Prop :=
  ∀ n, (P11643006368078673097.a n : ℤ) = A236386 (n + 1)

end A236386

/-!
# A236387: Numbers n such that sigma(n) is an oblong number.

The programs for A236387, the canonical program `A236387.P11788203029548530517` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236387 has offset 1).

The definition of A236387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236387.P12960307933889627458

`eq[0, A267814(A039653(n))]`
-/

namespace A236387.P12960307933889627458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267814 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236387.P12960307933889627458

namespace A236387

/-- `eq[0, A267814(A039653(n))]` -/
def P12960307933889627458.Spec : Prop :=
  ∀ n, (P12960307933889627458.a n : ℤ) = A236387 (n + 1)

end A236387

/-! ## A236387.P11788203029548530517

`eq[1, A196199(A039653(n)+2)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A236387

/-- `eq[1, A196199(A039653(n)+2)]` -/
def P11788203029548530517.Spec : Prop :=
  ∀ n, (P11788203029548530517.a n : ℤ) = A236387 (n + 1)

theorem P11788203029548530517.correct : P11788203029548530517.Spec := by
  intro n
  simp only [A236387, Nat.add_sub_cancel]

end A236387

/-! ## A236387.P2775124119545174395

`eq[1, A005369(A000203(n+1))]+1`
-/

namespace A236387.P2775124119545174395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236387.P2775124119545174395

namespace A236387

/-- `eq[1, A005369(A000203(n+1))]+1` -/
def P2775124119545174395.Spec : Prop :=
  ∀ n, (P2775124119545174395.a n : ℤ) = A236387 (n + 1)

end A236387

/-! ## A236387.P12494090380115334432

`eq[1, A097285(A000203(n+1)+1)]+1`
-/

namespace A236387.P12494090380115334432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236387.P12494090380115334432

namespace A236387

/-- `eq[1, A097285(A000203(n+1)+1)]+1` -/
def P12494090380115334432.Spec : Prop :=
  ∀ n, (P12494090380115334432.a n : ℤ) = A236387 (n + 1)

end A236387

/-! ## A236387.P9942344018097794266

`eq[1, A109447(A000203(n+1)+1)]+1`
-/

namespace A236387.P9942344018097794266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109447 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236387.P9942344018097794266

namespace A236387

/-- `eq[1, A109447(A000203(n+1)+1)]+1` -/
def P9942344018097794266.Spec : Prop :=
  ∀ n, (P9942344018097794266.a n : ℤ) = A236387 (n + 1)

end A236387

/-! ## A236387.P7281007565654129354

`eq[A196199(A039653(n)), A260196(n)]`
-/

namespace A236387.P7281007565654129354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236387.P7281007565654129354

namespace A236387

/-- `eq[A196199(A039653(n)), A260196(n)]` -/
def P7281007565654129354.Spec : Prop :=
  ∀ n, (P7281007565654129354.a n : ℤ) = A236387 (n + 1)

end A236387

/-!
# A236388: Primes in order of first appearance among the prime factors of p+1 where p is a prime.

The programs for A236388, there is no canonical definition to state claims against.
-/

/-! ## A236388.P5936690213231864162

`A154955(n+1)+p?[A132988(n+1)]`
-/

namespace A236388.P5936690213231864162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236388.P5936690213231864162

/-! ## A236388.P12768226740716476708

`A001222(a(n-1))*p?[A132988(n+1)]` with `a(0)=3, a(1)=2`
-/

namespace A236388.P12768226740716476708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A001222 (a (n - 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236388.P12768226740716476708

/-! ## A236388.P4493106822656784036

`A300955(p?[A132988(n+1)])`
-/

namespace A236388.P4493106822656784036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300955 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A236388.P4493106822656784036

/-! ## A236388.P6671930668944660577

`A014963(p?[A132988(n+1)]+C(n, n²))`
-/

namespace A236388.P6671930668944660577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A236388.P6671930668944660577

/-! ## A236388.P4473270714626836471

`p?[A212831(A132988(n+3))]`
-/

namespace A236388.P4473270714626836471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (A132988 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236388.P4473270714626836471

/-! ## A236388.P3130232056295690980

`p?[and(A116362(n), A132988(n+1))]`
-/

namespace A236388.P3130232056295690980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116362 n) (A132988 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236388.P3130232056295690980

/-!
# A236389: a(n) = |{0 < k < n: m = phi(k)/2 + phi(n-k)/12 is an integer with 2^m*p(m) + 1 prime}|, where p(.) is the partition function (A000041).

The programs for A236389, there is no canonical definition to state claims against.
-/

/-! ## A236389.P3418156559687405721

`A236419(n+1)^A323744(A005117(n+1))`
-/

namespace A236389.P3418156559687405721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236419 (n + 1) : ℚ) ^ (A323744 (A005117 (n + 1)).toNat : ℤ)

end

end A236389.P3418156559687405721

/-! ## A236389.P7333433761075354316

`A236419(n+1)-A010815(A275189(2*n+5))`
-/

namespace A236389.P7333433761075354316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236419 (n + 1) - A010815 (A275189 (2 * n + 5)).toNat

end

end A236389.P7333433761075354316

/-! ## A236389.P940278910884005311

`A236419(lt[A209125(n+1), A250120(n)])`
-/

namespace A236389.P940278910884005311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236419 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A236389.P940278910884005311

/-! ## A236389.P12315456509271252856

`A236419(n+1)+A027870(A182731(n+1))`
-/

namespace A236389.P12315456509271252856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236419 (n + 1) + A027870 (A182731 (n + 1)).toNat

end

end A236389.P12315456509271252856

/-!
# A236392: G.f.: (x+x^3+x^4)/(1-x-x^3-2*x^4).

The programs for A236392, the canonical program `A236392.P10552106702680846997` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236392 has offset 0).

The definition of A236392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236392.P10552106702680846997

`a(n-1)+a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236392

/-- `a(n-1)+a(n-3)+2*a(n-4)` -/
def P10552106702680846997.Spec : Prop :=
  ∀ n, (P10552106702680846997.a n : ℤ) = A236392 n

theorem P10552106702680846997.correct : P10552106702680846997.Spec := by
  intro n
  simp only [A236392]

end A236392

/-! ## A236392.P14196988907814196928

`A261221(n)+A000196(A000392(n))`
-/

namespace A236392.P14196988907814196928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 n + A000196 (A000392 n).toNat

end

end A236392.P14196988907814196928

namespace A236392

/-- `A261221(n)+A000196(A000392(n))` -/
def P14196988907814196928.Spec : Prop :=
  ∀ n, P14196988907814196928.a n = A236392 n

end A236392

/-! ## A236392.P14979050523763821262

`A000194(Δ[A191768(n)])`
-/

namespace A236392.P14979050523763821262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (f1 (n + 1) - f1 n).toNat

end

end A236392.P14979050523763821262

namespace A236392

/-- `A000194(Δ[A191768(n)])` -/
def P14979050523763821262.Spec : Prop :=
  ∀ n, P14979050523763821262.a n = A236392 n

end A236392

/-! ## A236392.P17479276468341171447

`Δ[A257639(A019308(n))]`
-/

namespace A236392.P17479276468341171447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A019308 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236392.P17479276468341171447

namespace A236392

/-- `Δ[A257639(A019308(n))]` -/
def P17479276468341171447.Spec : Prop :=
  ∀ n, P17479276468341171447.a n = A236392 n

end A236392

/-! ## A236392.P4408602290426177030

`A180447(A333608(n+1))`
-/

namespace A236392.P4408602290426177030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A333608 (n + 1)).toNat

end

end A236392.P4408602290426177030

namespace A236392

/-- `A180447(A333608(n+1))` -/
def P4408602290426177030.Spec : Prop :=
  ∀ n, P4408602290426177030.a n = A236392 n

end A236392

/-!
# A236393: Number of typable lambda terms of size n with size 0 for the variables.

The programs for A236393, there is no canonical definition to state claims against.
-/

/-! ## A236393.P12680525669286357319

`A241065(floor(sqrt(A071239(n))))`
-/

namespace A236393.P12680525669286357319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241065 (Int.sqrt (A071239 n)).toNat

end

end A236393.P12680525669286357319

/-! ## A236393.P1759390143195170262

`A257639(A024537(n)+A001932(n))-A109537(n+3)`
-/

namespace A236393.P1759390143195170262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A024537 n + A001932 n).toNat - A109537 (n + 3)

end

end A236393.P1759390143195170262

/-! ## A236393.P275302994709889034

`A121900(A129113(n+1))`
-/

namespace A236393.P275302994709889034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A129113 (n + 1)).toNat

end

end A236393.P275302994709889034

/-! ## A236393.P4016906912515058720

`A121900(A148009(n)-1)`
-/

namespace A236393.P4016906912515058720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A148009 n - 1).toNat

end

end A236393.P4016906912515058720

/-! ## A236393.P18357839021167074596

`A121900(xor(1, A148009(n)))`
-/

namespace A236393.P18357839021167074596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (Int.xor 1 (A148009 n)).toNat

end

end A236393.P18357839021167074596

/-!
# A236394: Primes produced by A064526, in order of appearance.

The programs for A236394, there is no canonical definition to state claims against.
-/

/-! ## A236394.P7033153758430908342

`p?[∑{p}[A064526(n), #]]`
-/

namespace A236394.P7033153758430908342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064526 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A236394.P7033153758430908342

/-! ## A236394.P3263210113252332106

`∑{p}[A064526(n+2), #]`
-/

namespace A236394.P3263210113252332106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064526 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A236394.P3263210113252332106

/-! ## A236394.P5167705573943606646

`A006530(A064526(n+2))`
-/

namespace A236394.P5167705573943606646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A064526 (n + 2)).toNat

end

end A236394.P5167705573943606646

/-!
# A236395: a(n) = Fibonacci(p) mod p^2, where p = prime(n).

The programs for A236395, the canonical program `A236395.P3290551735307445708` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236395 has offset 1).

The definition of A236395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236395.P5269734554239599760

`A132634(Δ[A007504(n)])`
-/

namespace A236395.P5269734554239599760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132634 (f1 (n + 1) - f1 n).toNat

end

end A236395.P5269734554239599760

namespace A236395

/-- `A132634(Δ[A007504(n)])` -/
def P5269734554239599760.Spec : Prop :=
  ∀ n, P5269734554239599760.a n = A236395 (n + 1)

end A236395

/-! ## A236395.P3290551735307445708

`A132634(A000040(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236395

/-- `A132634(A000040(n+1))` -/
def P3290551735307445708.Spec : Prop :=
  ∀ n, P3290551735307445708.a n = A236395 (n + 1)

theorem P3290551735307445708.correct : P3290551735307445708.Spec := by
  intro n
  simp only [A236395, Nat.add_sub_cancel]

end A236395

/-! ## A236395.P4379641354335335752

`A132634(A008578(n+2))`
-/

namespace A236395.P4379641354335335752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132634 (A008578 (n + 2)).toNat

end

end A236395.P4379641354335335752

namespace A236395

/-- `A132634(A008578(n+2))` -/
def P4379641354335335752.Spec : Prop :=
  ∀ n, P4379641354335335752.a n = A236395 (n + 1)

end A236395

/-! ## A236395.P17642670750531374790

`A132634(A182986(n+2))`
-/

namespace A236395.P17642670750531374790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132634 (A182986 (n + 2)).toNat

end

end A236395.P17642670750531374790

namespace A236395

/-- `A132634(A182986(n+2))` -/
def P17642670750531374790.Spec : Prop :=
  ∀ n, P17642670750531374790.a n = A236395 (n + 1)

end A236395

/-! ## A236395.P16106795616064991315

`A132634(record[A006530(n+2)])`
-/

namespace A236395.P16106795616064991315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236395.P16106795616064991315

namespace A236395

/-- `A132634(record[A006530(n+2)])` -/
def P16106795616064991315.Spec : Prop :=
  ∀ n, P16106795616064991315.a n = A236395 (n + 1)

end A236395

/-! ## A236395.P8983740813811007777

`A132634(record[A020639(n+2)])`
-/

namespace A236395.P8983740813811007777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236395.P8983740813811007777

namespace A236395

/-- `A132634(record[A020639(n+2)])` -/
def P8983740813811007777.Spec : Prop :=
  ∀ n, P8983740813811007777.a n = A236395 (n + 1)

end A236395

/-! ## A236395.P17421869281127956246

`A132634(eq[n, A000010(n+1)]+1)`
-/

namespace A236395.P17421869281127956246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A236395.P17421869281127956246

namespace A236395

/-- `A132634(eq[n, A000010(n+1)]+1)` -/
def P17421869281127956246.Spec : Prop :=
  ∀ n, P17421869281127956246.a n = A236395 (n + 1)

end A236395

/-! ## A236395.P1821255566921806976

`A132634(record[A014963(n+2)])`
-/

namespace A236395.P1821255566921806976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236395.P1821255566921806976

namespace A236395

/-- `A132634(record[A014963(n+2)])` -/
def P1821255566921806976.Spec : Prop :=
  ∀ n, P1821255566921806976.a n = A236395 (n + 1)

end A236395

/-! ## A236395.P14217723198765578537

`A000045(A000040(n+1))%A001248(n+1)`
-/

namespace A236395.P14217723198765578537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A000040 (n + 1)).toNat) (A001248 (n + 1))

end

end A236395.P14217723198765578537

namespace A236395

/-- `A000045(A000040(n+1))%A001248(n+1)` -/
def P14217723198765578537.Spec : Prop :=
  ∀ n, P14217723198765578537.a n = A236395 (n + 1)

end A236395

/-!
# A236396: Triangle read by rows: T(n,k) = number of rooted labeled trees with n nodes and height <= k, for n >= 1, 0 <= k <= n-1.

The programs for A236396, there is no canonical definition to state claims against.
-/

/-! ## A236396.P18387453210521303639

`A122345(A337994(n))`
-/

namespace A236396.P18387453210521303639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122345 (A337994 n).toNat

end

end A236396.P18387453210521303639

/-! ## A236396.P6643522300548368939

`A122345(A337995(n))`
-/

namespace A236396.P6643522300548368939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122345 (A337995 n).toNat

end

end A236396.P6643522300548368939

/-! ## A236396.P6219685337553522512

`A265513(A256069(n))+A079904(n)`
-/

namespace A236396.P6219685337553522512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265513 (A256069 n).toNat + A079904 n

end

end A236396.P6219685337553522512

/-! ## A236396.P4015178203916430535

`A000120(A278074(n))*A008619(n)`
-/

namespace A236396.P4015178203916430535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A278074 n).toNat * A008619 n

end

end A236396.P4015178203916430535

/-! ## A236396.P3470282452049126646

`A000194(A082171(n)*A256116(n))`
-/

namespace A236396.P3470282452049126646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A082171 n * A256116 n).toNat

end

end A236396.P3470282452049126646

/-!
# A236397: Weight of the largest-weight sunflower-free set of width n.

The programs for A236397, there is no canonical definition to state claims against.
-/

/-! ## A236397.P13380346460648290002

`(A240489(n+1)+4)*2^(n-2)`
-/

namespace A236397.P13380346460648290002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240489 (n + 1) + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A236397.P13380346460648290002

/-! ## A236397.P6336283253947828445

`A036912(A233969(n))`
-/

namespace A236397.P6336283253947828445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036912 (A233969 n).toNat

end

end A236397.P6336283253947828445

/-! ## A236397.P9759762133293458801

`A036912(A280276(n))`
-/

namespace A236397.P9759762133293458801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036912 (A280276 n).toNat

end

end A236397.P9759762133293458801

/-! ## A236397.P5853246173247201495

`A029935(A289920(n))`
-/

namespace A236397.P5853246173247201495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (A289920 n).toNat

end

end A236397.P5853246173247201495

/-!
# A236398: Period 4: repeat 1,1,2,1.

The programs for A236398, the canonical program `A236398.P14561171844355061157` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236398 has offset 1).

The definition of A236398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236398.P14561171844355061157

`a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A236398

/-- `a(n-4)` -/
def P14561171844355061157.Spec : Prop :=
  ∀ n, (P14561171844355061157.a n : ℤ) = A236398 (n + 1)

theorem P14561171844355061157.correct : P14561171844355061157.Spec := by
  intro n
  simp only [A236398, Nat.add_sub_cancel]

end A236398

/-!
# A236399: Left factorial !p, where p = prime(n).

The programs for A236399, there is no canonical definition to state claims against.
-/

/-! ## A236399.P10852524157548040716

`record[A182103(n+2)]`
-/

namespace A236399.P10852524157548040716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182103 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236399.P10852524157548040716

/-! ## A236399.P1357342928441935645

`A003422(p?[comp[n²]])`
-/

namespace A236399.P1357342928441935645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A236399.P1357342928441935645

/-! ## A236399.P11717452462567020956

`A182103(p?[comp[n²]])`
-/

namespace A236399.P11717452462567020956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A236399.P11717452462567020956

/-! ## A236399.P10943132050090547357

`A003422(eq[1, ∑{e}[n, #]])`
-/

namespace A236399.P10943132050090547357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A236399.P10943132050090547357

/-! ## A236399.P5290012813976656357

`A003422(record[p?[∏{p}[n, #]]])`
-/

namespace A236399.P5290012813976656357
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A236399.P5290012813976656357

