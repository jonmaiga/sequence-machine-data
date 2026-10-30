import SequenceMachineLib.Basic
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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A400600: Largest m such that one defective in an m-item set and one in a disjoint 5-item set can always be identified in at most n adaptive tests, each returning the number of defectives in a selected subset (0 if no positive m is feasible).

The programs for A400600, there is no canonical definition to state claims against.
-/

/-! ## A400600.P9245787258820494542

`A112754(A211386(n))`
-/

namespace A400600.P9245787258820494542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112754 (A211386 n).toNat

end

end A400600.P9245787258820494542

/-! ## A400600.P7797615969965954421

`floor(sqrt(A327204(A016269(n))))-1`
-/

namespace A400600.P7797615969965954421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A327204 (A016269 n).toNat) - 1

end

end A400600.P7797615969965954421

/-!
# A400603: a(1) = 1; a(n+1) = Sum_{k=1..n} a(n/gcd(n,k)) * a(k/gcd(n,k)).

The programs for A400603, there is no canonical definition to state claims against.
-/

/-! ## A400603.P10878968981987177856

`A101176(a(n-1))+1` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A400603.P10878968981987177856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A101176 (a (n - 1)).toNat + 1

end

end A400603.P10878968981987177856

/-! ## A400603.P3884257947127190001

`A087007(A148212(n))`
-/

namespace A400603.P3884257947127190001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087007 (A148212 n).toNat

end

end A400603.P3884257947127190001

/-!
# A400604: a(1) = 1; a(n+1) = Sum_{d|n} Sum_{j|d} a(d) * a(n/d) * a(d/j).

The programs for A400604, there is no canonical definition to state claims against.
-/

/-! ## A400604.P8791794582844244488

`A382702(a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A400604.P8791794582844244488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A382702 (a (n - 1) ^ 2).toNat

end

end A400604.P8791794582844244488

/-!
# A400614: Positions of records in A400612: integers m whose number of divisors d such that the last digit of d equals the first digit of m sets a new record.

The programs for A400614, there is no canonical definition to state claims against.
-/

/-! ## A400614.P14155810755960109068

`filter[A400613(n+1), A349167(#)]`
-/

namespace A400614.P14155810755960109068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A400614.P14155810755960109068

/-!
# A400618: Sum of the distinct entries in the central row and central column of the (2*n + 1) X (2*n + 1) square spiral.

The programs for A400618, the canonical program `A400618.P12185814811426389803` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400618 has offset 0).

The definition of A400618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400618.P12185814811426389803

`4*n*(n*(4*n+6)+5)/3+1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400618

/-- `4*n*(n*(4*n+6)+5)/3+1` -/
def P12185814811426389803.Spec : Prop :=
  ∀ n, P12185814811426389803.a n = (A400618 n : ℚ)

end A400618

/-! ## A400618.P4182487854620958840

`Δ[n*(C(2*n+1, 3)+n-1)]`
-/

namespace A400618.P4182487854620958840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose (2 * n + 1) 3 : ℤ) + ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400618.P4182487854620958840

namespace A400618

/-- `Δ[n*(C(2*n+1, 3)+n-1)]` -/
def P4182487854620958840.Spec : Prop :=
  ∀ n, P4182487854620958840.a n = A400618 n

end A400618

/-! ## A400618.P10055578747908418696

`Δ[n*C(2*n+1, 3)]+2*n`
-/

namespace A400618.P10055578747908418696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ)

end

end A400618.P10055578747908418696

namespace A400618

/-- `Δ[n*C(2*n+1, 3)]+2*n` -/
def P10055578747908418696.Spec : Prop :=
  ∀ n, P10055578747908418696.a n = A400618 n

end A400618

/-! ## A400618.P9589847207914457094

`abs(2*A057813(n)-1)`
-/

namespace A400618.P9589847207914457094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A057813 n - 1|

end

end A400618.P9589847207914457094

namespace A400618

/-- `abs(2*A057813(n)-1)` -/
def P9589847207914457094.Spec : Prop :=
  ∀ n, P9589847207914457094.a n = A400618 n

end A400618

/-! ## A400618.P4425547192078130545

`∑[A008527(n)*A040000(n)]`
-/

namespace A400618.P4425547192078130545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n * A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400618.P4425547192078130545

namespace A400618

/-- `∑[A008527(n)*A040000(n)]` -/
def P4425547192078130545.Spec : Prop :=
  ∀ n, P4425547192078130545.a n = A400618 n

end A400618

/-! ## A400618.P2860644544596765067

`xor(3, 2*A167238(2*n+1))`
-/

namespace A400618.P2860644544596765067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (2 * A167238 (2 * n + 1))

end

end A400618.P2860644544596765067

namespace A400618

/-- `xor(3, 2*A167238(2*n+1))` -/
def P2860644544596765067.Spec : Prop :=
  ∀ n, P2860644544596765067.a n = A400618 n

end A400618

/-! ## A400618.P14918927730217804581

`Δ[A289161(2*n+1)-n]`
-/

namespace A400618.P14918927730217804581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289161 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400618.P14918927730217804581

namespace A400618

/-- `Δ[A289161(2*n+1)-n]` -/
def P14918927730217804581.Spec : Prop :=
  ∀ n, P14918927730217804581.a n = A400618 n

end A400618

/-!
# A400626: Number of connected self-dual unlabeled posets on n elements.

The programs for A400626, there is no canonical definition to state claims against.
-/

/-! ## A400626.P18298035433696617292

`2*A323658(n)-A000608(n)`
-/

namespace A400626.P18298035433696617292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323658 n - A000608 n

end

end A400626.P18298035433696617292

/-!
# A400629: a(1) = 1; a(n+1) = Sum_{d|n} binomial(n,d) * a(n/d) * a(d).

The programs for A400629, there is no canonical definition to state claims against.
-/

/-! ## A400629.P5675916165932732441

`A219635(A148186(n))`
-/

namespace A400629.P5675916165932732441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219635 (A148186 n).toNat

end

end A400629.P5675916165932732441

/-! ## A400629.P11666801374774063939

`Δ[A158292(A158291(n+1))]`
-/

namespace A400629.P11666801374774063939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158292 (A158291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400629.P11666801374774063939

/-!
# A400630: Number of semi-meanders with n crossings and winding number n-4, for n >= 4.

The programs for A400630, the canonical program `A400630.P15238254531042592611` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400630 has offset 4).

The definition of A400630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400630.P15238254531042592611

`floor((n+5)²/2)-10`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400630

/-- `floor((n+5)²/2)-10` -/
def P15238254531042592611.Spec : Prop :=
  ∀ n, P15238254531042592611.a n = A400630 (n + 4)

theorem P15238254531042592611.correct : P15238254531042592611.Spec := by
  intro n
  simp only [A400630, Nat.add_sub_cancel]

end A400630

/-! ## A400630.P17573907414761709980

`((n+4)²+2*(n+4)+(n+4)%2-20)/2`
-/

namespace A400630.P17573907414761709980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 4) ^ 2 + 2 * (n + 4) + (n + 4) % 2 : ℕ) : ℤ) - 20 : ℚ) / 2

end

end A400630.P17573907414761709980

namespace A400630

/-- `((n+4)²+2*(n+4)+(n+4)%2-20)/2` -/
def P17573907414761709980.Spec : Prop :=
  ∀ n, P17573907414761709980.a n = (A400630 (n + 4) : ℚ)

end A400630

/-! ## A400630.P12191845204282932496

`∑[a(n-2)+2]` with `a(0)=2, a(1)=6, a(2)=6`
-/

namespace A400630.P12191845204282932496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 6] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400630.P12191845204282932496

namespace A400630

/-- `∑[a(n-2)+2]` -/
def P12191845204282932496.Spec : Prop :=
  ∀ n, (P12191845204282932496.a n : ℤ) = A400630 (n + 4)

end A400630

/-! ## A400630.P16401614907158007889

`∑[∑[2-a(n-1)]]` with `a(0)=2, a(1)=4, a(2)=0`
-/

namespace A400630.P16401614907158007889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400630.P16401614907158007889

namespace A400630

/-- `∑[∑[2-a(n-1)]]` -/
def P16401614907158007889.Spec : Prop :=
  ∀ n, P16401614907158007889.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P13193269417769554355

`ogf((2+4x-2x^2-2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A400630.P13193269417769554355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -2, -2] [1, -2, 0, 2, -1] n

end

end A400630.P13193269417769554355

namespace A400630

/-- `ogf((2+4x-2x^2-2x^3)/(1-2x+2x^3-x^4))` -/
def P13193269417769554355.Spec : Prop :=
  ∀ n, P13193269417769554355.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P12721986545370582501

`floor(lcm(2, 2*n+1)+(n+1)²/2)`
-/

namespace A400630.P12721986545370582501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n + 1) : ℚ) + ((n + 1) ^ 2 : ℚ) / 2⌋

end

end A400630.P12721986545370582501

namespace A400630

/-- `floor(lcm(2, 2*n+1)+(n+1)²/2)` -/
def P12721986545370582501.Spec : Prop :=
  ∀ n, P12721986545370582501.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P13528369148946758569

`2*(floor((a(n-1)+n+1)/2)+2)` with `a(0)=2`
-/

namespace A400630.P13528369148946758569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (⌊(a (n - 1) + (n : ℤ) + 1 : ℚ) / 2⌋ + 2)

end

end A400630.P13528369148946758569

namespace A400630

/-- `2*(floor((a(n-1)+n+1)/2)+2)` -/
def P13528369148946758569.Spec : Prop :=
  ∀ n, P13528369148946758569.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P17318352461563111073

`2*(2-floor((n-a(n-1))/2-n))` with `a(0)=2`
-/

namespace A400630.P17318352461563111073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (2 - ⌊((n : ℤ) - a (n - 1) : ℚ) / 2 - (n : ℚ)⌋)

end

end A400630.P17318352461563111073

namespace A400630

/-- `2*(2-floor((n-a(n-1))/2-n))` -/
def P17318352461563111073.Spec : Prop :=
  ∀ n, P17318352461563111073.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P3054553321945799068

`∑[A103947(n)+n+1]`
-/

namespace A400630.P3054553321945799068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103947 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400630.P3054553321945799068

namespace A400630

/-- `∑[A103947(n)+n+1]` -/
def P3054553321945799068.Spec : Prop :=
  ∀ n, P3054553321945799068.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P8497707667859080123

`2*(A190091(n+1)-(n+1))`
-/

namespace A400630.P8497707667859080123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A190091 (n + 1) - (n + 1 : ℤ))

end

end A400630.P8497707667859080123

namespace A400630

/-- `2*(A190091(n+1)-(n+1))` -/
def P8497707667859080123.Spec : Prop :=
  ∀ n, P8497707667859080123.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P14184517927350608620

`2*(A036573(n+3)-(n+3))`
-/

namespace A400630.P14184517927350608620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036573 (n + 3) - (n + 3 : ℤ))

end

end A400630.P14184517927350608620

namespace A400630

/-- `2*(A036573(n+3)-(n+3))` -/
def P14184517927350608620.Spec : Prop :=
  ∀ n, P14184517927350608620.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P17890754090318380992

`A300576(A004116(n+2))`
-/

namespace A400630.P17890754090318380992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (A004116 (n + 2)).toNat

end

end A400630.P17890754090318380992

namespace A400630

/-- `A300576(A004116(n+2))` -/
def P17890754090318380992.Spec : Prop :=
  ∀ n, P17890754090318380992.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P17447320844811885753

`A005843(A002620(n+1)+2*n+1)`
-/

namespace A400630.P17447320844811885753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002620 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A400630.P17447320844811885753

namespace A400630

/-- `A005843(A002620(n+1)+2*n+1)` -/
def P17447320844811885753.Spec : Prop :=
  ∀ n, P17447320844811885753.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P4822215792451055354

`A023444(A271911(n+2))`
-/

namespace A400630.P4822215792451055354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A271911 (n + 2)).toNat

end

end A400630.P4822215792451055354

namespace A400630

/-- `A023444(A271911(n+2))` -/
def P4822215792451055354.Spec : Prop :=
  ∀ n, P4822215792451055354.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P14889270201240509479

`A052928(A267461(n+1)+n+1)`
-/

namespace A400630.P14889270201240509479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A267461 (n + 1) + (n + 1 : ℤ)).toNat

end

end A400630.P14889270201240509479

namespace A400630

/-- `A052928(A267461(n+1)+n+1)` -/
def P14889270201240509479.Spec : Prop :=
  ∀ n, P14889270201240509479.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P7998081089797946659

`A267460(A267461(n)+2*n+1)`
-/

namespace A400630.P7998081089797946659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267460 (A267461 n + (2 * n + 1 : ℤ)).toNat

end

end A400630.P7998081089797946659

namespace A400630

/-- `A267460(A267461(n)+2*n+1)` -/
def P7998081089797946659.Spec : Prop :=
  ∀ n, P7998081089797946659.a n = A400630 (n + 4)

end A400630

/-! ## A400630.P6832470173395437859

`A052928(A179207(n+2)+2*n+1)`
-/

namespace A400630.P6832470173395437859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A179207 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A400630.P6832470173395437859

namespace A400630

/-- `A052928(A179207(n+2)+2*n+1)` -/
def P6832470173395437859.Spec : Prop :=
  ∀ n, P6832470173395437859.a n = A400630 (n + 4)

end A400630

/-!
# A400640: Number of equivalence classes of monotone Boolean functions of n variables under cyclic rotations of the variables.

The programs for A400640, there is no canonical definition to state claims against.
-/

/-! ## A400640.P14181354974877624387

`A285835(n)+A065027(A367770(n))`
-/

namespace A400640.P14181354974877624387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285835 n + A065027 (A367770 n).toNat

end

end A400640.P14181354974877624387

/-!
# A400641: Number of equivalence classes of self-dual monotone Boolean functions of n variables under cyclic rotations of the variables.

The programs for A400641, there is no canonical definition to state claims against.
-/

/-! ## A400641.P13415039367052546048

`A265730(A148195(n))`
-/

namespace A400641.P13415039367052546048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265730 (A148195 n).toNat

end

end A400641.P13415039367052546048

/-! ## A400641.P14501929251052856781

`A002635(A162695(n)+A071562(n+1))`
-/

namespace A400641.P14501929251052856781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A162695 n + A071562 (n + 1)).toNat

end

end A400641.P14501929251052856781

/-!
# A400644: a(n+1) = round(sqrt(a(n)^2 + a(n-1)^2 + a(n-2)^2)).

The programs for A400644, there is no canonical definition to state claims against.
-/

/-! ## A400644.P8758255299340256876

`floor((A290697(n+6)+1)/4)`
-/

namespace A400644.P8758255299340256876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290697 (n + 6) + 1 : ℚ) / 4⌋

end

end A400644.P8758255299340256876

/-!
# A400645: a(n+1) = round(sqrt(a(n)^2 + a(n-1)^2 + a(n-2)^2 - a(n-3)^2)).

The programs for A400645, there is no canonical definition to state claims against.
-/

/-! ## A400645.P16517235180933503709

`A135661(A295362(n+1))`
-/

namespace A400645.P16517235180933503709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A295362 (n + 1)).toNat

end

end A400645.P16517235180933503709

/-! ## A400645.P8216079430357866707

`A135661(A029886(n)+A000071(n+1))`
-/

namespace A400645.P8216079430357866707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A029886 n + A000071 (n + 1)).toNat

end

end A400645.P8216079430357866707

/-! ## A400645.P16395083463252824905

`A121902(A334269(n+2))`
-/

namespace A400645.P16395083463252824905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A334269 (n + 2)).toNat

end

end A400645.P16395083463252824905

/-! ## A400645.P10269584068777179209

`A000931(A321722(n)*char[1]+n+2)`
-/

namespace A400645.P10269584068777179209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A321722 n * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) + 2).toNat

end

end A400645.P10269584068777179209

/-! ## A400645.P5741770662817525669

`A000931(n+2)*A317624(A016116(n))`
-/

namespace A400645.P5741770662817525669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 2) * A317624 (A016116 n).toNat

end

end A400645.P5741770662817525669

/-!
# A400652: a(0) = 1; a(n) = a(n-1)*a(floor(n/2)) + n for n >= 1.

The programs for A400652, the canonical program `A400652.P6583452065758256833` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400652 has offset 0).

The definition of A400652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(floor(n/2))+n` (program `A400652.P6583452065758256833`, by `A400652.P6583452065758256833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400652.P6583452065758256833

`a(n-1)*a(floor(n/2))+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400652

/-- `a(n-1)*a(floor(n/2))+n` -/
def P6583452065758256833.Spec : Prop :=
  ∀ n, (P6583452065758256833.a n : ℤ) = A400652 n

theorem P6583452065758256833.correct : P6583452065758256833.Spec := by
  intro n
  simp only [A400652]

end A400652

/-! ## A400652.P2397733765211297995

`n-a(n-1)*ceil(-a(floor(n/2)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A400652.P2397733765211297995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - a (n - 1) * (-a ⌊(n : ℚ) / 2⌋.toNat)

end

end A400652.P2397733765211297995

namespace A400652

/-- `n-a(n-1)*ceil(-a(floor(n/2)))` -/
def P2397733765211297995.Spec : Prop :=
  ∀ n, P2397733765211297995.a n = A400652 n

end A400652

/-!
# A400656: Numbers k such that k divides 19^k + 1.

The programs for A400656, there is no canonical definition to state claims against.
-/

/-! ## A400656.P14956689509784369297

`A045586(A113929(n+1))`
-/

namespace A400656.P14956689509784369297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045586 (A113929 (n + 1)).toNat

end

end A400656.P14956689509784369297

/-! ## A400656.P15747633837467358337

`∩[A014489(n), A017919(n)]`
-/

namespace A400656.P15747633837467358337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400656.P15747633837467358337

/-!
# A400662: a(0) = 1; a(n) = Sum_{k=1..n} (-1)^(k+1) * binomial(4*n-3*k,k) * (n-k+1)^k * a(n-k).

The programs for A400662, there is no canonical definition to state claims against.
-/

/-! ## A400662.P17594262629407293477

`A237112(A318477(n))+A193443(n)`
-/

namespace A400662.P17594262629407293477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237112 (A318477 n).toNat + A193443 n

end

end A400662.P17594262629407293477

/-!
# A400664: Expansion of g.f. ((3 - z)/(z^2 - 6*z + 1)^(3/2) - 1/(z - 1)^2) / 2.

The programs for A400664, the canonical program `A400664.P17659407087172067860` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400664 has offset 0).

The definition of A400664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400664.P17659407087172067860

`(n+1)*(∑{#}[n+1, C(n+1, #)²*2^#]-1)/2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400664

/-- `(n+1)*(∑{#}[n+1, C(n+1, #)²*2^#]-1)/2` -/
def P17659407087172067860.Spec : Prop :=
  ∀ n, P17659407087172067860.a n = (A400664 n : ℚ)

end A400664

/-! ## A400664.P9735255494172491839

`(A364634(n+1)-(n+1))/2`
-/

namespace A400664.P9735255494172491839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364634 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A400664.P9735255494172491839

namespace A400664

/-- `(A364634(n+1)-(n+1))/2` -/
def P9735255494172491839.Spec : Prop :=
  ∀ n, P9735255494172491839.a n = (A400664 n : ℚ)

end A400664

/-! ## A400664.P7459693330314566192

`(n+1)*A047665(n+1)`
-/

namespace A400664.P7459693330314566192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047665 (n + 1)

end

end A400664.P7459693330314566192

namespace A400664

/-- `(n+1)*A047665(n+1)` -/
def P7459693330314566192.Spec : Prop :=
  ∀ n, P7459693330314566192.a n = A400664 n

end A400664

/-! ## A400664.P12316587230308700195

`(n+1)*∑[A002002(n+1)]`
-/

namespace A400664.P12316587230308700195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400664.P12316587230308700195

namespace A400664

/-- `(n+1)*∑[A002002(n+1)]` -/
def P12316587230308700195.Spec : Prop :=
  ∀ n, P12316587230308700195.a n = A400664 n

end A400664

/-! ## A400664.P4761215900588326853

`∑[A026003(2*n+1)]*(n+1)`
-/

namespace A400664.P4761215900588326853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℤ)

end

end A400664.P4761215900588326853

namespace A400664

/-- `∑[A026003(2*n+1)]*(n+1)` -/
def P4761215900588326853.Spec : Prop :=
  ∀ n, P4761215900588326853.a n = A400664 n

end A400664

/-! ## A400664.P6011347401980210800

`(n+1)*A047662(A290268(2*n))`
-/

namespace A400664.P6011347401980210800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047662 (A290268 (2 * n)).toNat

end

end A400664.P6011347401980210800

namespace A400664

/-- `(n+1)*A047662(A290268(2*n))` -/
def P6011347401980210800.Spec : Prop :=
  ∀ n, P6011347401980210800.a n = A400664 n

end A400664

/-!
# A400665: Denominators of semiconvergents to log_2(7), which equals log(7)/log(2).

The programs for A400665, there is no canonical definition to state claims against.
-/

/-! ## A400665.P8044505899263024299

`A093875(A349842(n))`
-/

namespace A400665.P8044505899263024299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (A349842 n).toNat

end

end A400665.P8044505899263024299

/-! ## A400665.P3118609375035923443

`A114214(A224521(n))`
-/

namespace A400665.P3118609375035923443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A224521 n).toNat

end

end A400665.P3118609375035923443

/-! ## A400665.P13832973330315406117

`A181796(A195458(n+2))`
-/

namespace A400665.P13832973330315406117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (A195458 (n + 2)).toNat

end

end A400665.P13832973330315406117

/-!
# A400666: The smallest integer k greater than n such that c(k) is divisible by c(n), where c(n) is formed by concatenating 1, 2, 3, ..., n.

The programs for A400666, there is no canonical definition to state claims against.
-/

/-! ## A400666.P10633434575525152508

`A332867(A179310(n+1))+n+1`
-/

namespace A400666.P10633434575525152508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332867 (A179310 (n + 1)).toNat + (n + 1 : ℤ)

end

end A400666.P10633434575525152508

/-! ## A400666.P2229425886425777485

`A332867(A005349(A005349(n+1)))+n+1`
-/

namespace A400666.P2229425886425777485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332867 (A005349 (A005349 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A400666.P2229425886425777485

/-! ## A400666.P1542113385752519659

`A332867(n+1)+A005188(A005188(n+3))`
-/

namespace A400666.P1542113385752519659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332867 (n + 1) + A005188 (A005188 (n + 3)).toNat

end

end A400666.P1542113385752519659

/-!
# A400671: Triangle read by rows: T(n, k) = n + binomial(k, 2).

The programs for A400671, the canonical program `A400671.P12732179933824227219` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400671 has offset 0).

The definition of A400671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+C(col(n), 2)` (program `A400671.P12732179933824227219`, by `A400671.P12732179933824227219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400671.P12732179933824227219

`row(n)+C(col(n), 2)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400671

/-- `row(n)+C(col(n), 2)` -/
def P12732179933824227219.Spec : Prop :=
  ∀ n, (P12732179933824227219.a n : ℤ) = A400671 n

theorem P12732179933824227219.correct : P12732179933824227219.Spec := by
  intro n
  simp only [A400671]

end A400671

/-! ## A400671.P1414538929360065186

`row(n)-col(n)+C(col(n)+1, 2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400671.P1414538929360065186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + (Nat.choose (SequenceMachineLib.triCol n + 1) 2 : ℤ)

end

end A400671.P1414538929360065186

namespace A400671

/-- `row(n)-col(n)+C(col(n)+1, 2)` -/
def P1414538929360065186.Spec : Prop :=
  ∀ n, P1414538929360065186.a n = A400671 n

theorem P1414538929360065186.correct : P1414538929360065186.Spec := by
  intro n
  simp only [A400671, Nat.add_sub_cancel, A400671.P1414538929360065186.a, A400671.P12732179933824227219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400671

/-! ## A400671.P1395095612499869874

`row(n)-col(n)+col(n)*(col(n)+1)/2`
-/

namespace A400671.P1395095612499869874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) + (SequenceMachineLib.triCol n * (SequenceMachineLib.triCol n + 1) : ℚ) / 2

end

end A400671.P1395095612499869874

namespace A400671

/-- `row(n)-col(n)+col(n)*(col(n)+1)/2` -/
def P1395095612499869874.Spec : Prop :=
  ∀ n, P1395095612499869874.a n = (A400671 n : ℚ)

theorem P1395095612499869874.correct : P1395095612499869874.Spec := by
  intro n
  simp only [A400671, Nat.add_sub_cancel, A400671.P1395095612499869874.a, A400671.P12732179933824227219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400671

/-! ## A400671.P2801352208833398307

`C(col(n), 2)+row(n)`
-/

namespace A400671.P2801352208833398307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n) 2 + SequenceMachineLib.triRow n

end

end A400671.P2801352208833398307

namespace A400671

/-- `C(col(n), 2)+row(n)` -/
def P2801352208833398307.Spec : Prop :=
  ∀ n, (P2801352208833398307.a n : ℤ) = A400671 n

theorem P2801352208833398307.correct : P2801352208833398307.Spec := by
  intro n
  simp only [A400671, Nat.add_sub_cancel, A400671.P2801352208833398307.a, A400671.P12732179933824227219.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A400671

/-! ## A400671.P9662587273362781112

`∑{#}[col(n), #]+row(n)-col(n)`
-/

namespace A400671.P9662587273362781112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), k : ℕ) : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A400671.P9662587273362781112

namespace A400671

/-- `∑{#}[col(n), #]+row(n)-col(n)` -/
def P9662587273362781112.Spec : Prop :=
  ∀ n, P9662587273362781112.a n = A400671 n

end A400671

/-! ## A400671.P13041224550660405029

`row(n)+(col(n)²-col(n))/2`
-/

namespace A400671.P13041224550660405029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℚ) + ((SequenceMachineLib.triCol n ^ 2 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2

end

end A400671.P13041224550660405029

namespace A400671

/-- `row(n)+(col(n)²-col(n))/2` -/
def P13041224550660405029.Spec : Prop :=
  ∀ n, P13041224550660405029.a n = (A400671 n : ℚ)

theorem P13041224550660405029.correct : P13041224550660405029.Spec := by
  intro n
  simp only [A400671, Nat.add_sub_cancel, A400671.P13041224550660405029.a, A400671.P12732179933824227219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400671

/-! ## A400671.P16926040309137587751

`row(n)-(col(n)-col(n)²)/2`
-/

namespace A400671.P16926040309137587751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℚ) - ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n ^ 2 : ℤ) : ℚ) / 2

end

end A400671.P16926040309137587751

namespace A400671

/-- `row(n)-(col(n)-col(n)²)/2` -/
def P16926040309137587751.Spec : Prop :=
  ∀ n, P16926040309137587751.a n = (A400671 n : ℚ)

theorem P16926040309137587751.correct : P16926040309137587751.Spec := by
  intro n
  simp only [A400671, Nat.add_sub_cancel, A400671.P16926040309137587751.a, A400671.P12732179933824227219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400671

/-! ## A400671.P13138302319185269749

`col(n)*(col(n)+1)/2+row(n)-col(n)`
-/

namespace A400671.P13138302319185269749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n * (SequenceMachineLib.triCol n + 1) : ℚ) / 2 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ)

end

end A400671.P13138302319185269749

namespace A400671

/-- `col(n)*(col(n)+1)/2+row(n)-col(n)` -/
def P13138302319185269749.Spec : Prop :=
  ∀ n, P13138302319185269749.a n = (A400671 n : ℚ)

theorem P13138302319185269749.correct : P13138302319185269749.Spec := by
  intro n
  simp only [A400671, Nat.add_sub_cancel, A400671.P13138302319185269749.a, A400671.P12732179933824227219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400671

/-! ## A400671.P4883161219845257773

`A130269(n+1)-(n+1)`
-/

namespace A400671.P4883161219845257773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130269 (n + 1) - (n + 1 : ℤ)

end

end A400671.P4883161219845257773

namespace A400671

/-- `A130269(n+1)-(n+1)` -/
def P4883161219845257773.Spec : Prop :=
  ∀ n, P4883161219845257773.a n = A400671 n

end A400671

/-! ## A400671.P4064902209012923250

`A000217(col(n))+row(n)-col(n)`
-/

namespace A400671.P4064902209012923250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.triCol n) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A400671.P4064902209012923250

namespace A400671

/-- `A000217(col(n))+row(n)-col(n)` -/
def P4064902209012923250.Spec : Prop :=
  ∀ n, P4064902209012923250.a n = A400671 n

theorem P4064902209012923250.correct : P4064902209012923250.Spec := by
  intro n
  simp only [A400671, Nat.add_sub_cancel, A400671.P4064902209012923250.a, A400671.P12732179933824227219.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400671

/-!
# A400672: Number of equivalence classes of monotone Boolean functions of n variables that contain their duals.

The programs for A400672, there is no canonical definition to state claims against.
-/

/-! ## A400672.P4414647968636462443

`2*A003183(n)-A003182(n)`
-/

namespace A400672.P4414647968636462443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003183 n - A003182 n

end

end A400672.P4414647968636462443

/-! ## A400672.P17448998445042951845

`A324757(A161701(n))`
-/

namespace A400672.P17448998445042951845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324757 (A161701 n).toNat

end

end A400672.P17448998445042951845

/-! ## A400672.P18428034750637475432

`A324757(A038504(n+1))`
-/

namespace A400672.P18428034750637475432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324757 (A038504 (n + 1)).toNat

end

end A400672.P18428034750637475432

/-!
# A400674: First differences of A365873, divided by 3.

The programs for A400674, there is no canonical definition to state claims against.
-/

/-! ## A400674.P17943910139125190828

`Δ[A365873(n+1)]/3`
-/

namespace A400674.P17943910139125190828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365873 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3

end

end A400674.P17943910139125190828

/-!
# A400676: First differences of A365874, divided by 4.

The programs for A400676, there is no canonical definition to state claims against.
-/

/-! ## A400676.P10390791632185045726

`Δ[A365874(n+1)]/4`
-/

namespace A400676.P10390791632185045726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365874 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 4

end

end A400676.P10390791632185045726

/-!
# A400679: First differences of A400678, divided by 5.

The programs for A400679, there is no canonical definition to state claims against.
-/

/-! ## A400679.P6378218633901567577

`Δ[A400678(n+1)]/5`
-/

namespace A400679.P6378218633901567577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400678 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 5

end

end A400679.P6378218633901567577

/-!
# A400684: Primes p such that p+2 and (p-1)^2+1 are also prime.

The programs for A400684, the canonical program `A400684.P12622242303645712204` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400684 has offset 1).

The definition of A400684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400684.P12622242303645712204

`∩[A001359(n+1), A127435(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A400684

/-- `∩[A001359(n+1), A127435(n+1)]` -/
def P12622242303645712204.Spec : Prop :=
  ∀ n, (P12622242303645712204.a n : ℤ) = A400684 (n + 1)

theorem P12622242303645712204.correct : P12622242303645712204.Spec := by
  intro n
  simp only [A400684, Nat.add_sub_cancel]

end A400684

/-! ## A400684.P15584760934451332980

`∩[A054799(n+1), A127435(n+1)]`
-/

namespace A400684.P15584760934451332980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P15584760934451332980

namespace A400684

/-- `∩[A054799(n+1), A127435(n+1)]` -/
def P15584760934451332980.Spec : Prop :=
  ∀ n, (P15584760934451332980.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P12140734204087374664

`∩[A127435(n+1), A181747(n+1)]`
-/

namespace A400684.P12140734204087374664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P12140734204087374664

namespace A400684

/-- `∩[A127435(n+1), A181747(n+1)]` -/
def P12140734204087374664.Spec : Prop :=
  ∀ n, (P12140734204087374664.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P10876608361647833227

`∩[A063700(n+1), A127435(n+1)]`
-/

namespace A400684.P10876608361647833227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P10876608361647833227

namespace A400684

/-- `∩[A063700(n+1), A127435(n+1)]` -/
def P10876608361647833227.Spec : Prop :=
  ∀ n, (P10876608361647833227.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P13537898640016407465

`∩[A127435(n+1), A280255(n+1)]`
-/

namespace A400684.P13537898640016407465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P13537898640016407465

namespace A400684

/-- `∩[A127435(n+1), A280255(n+1)]` -/
def P13537898640016407465.Spec : Prop :=
  ∀ n, (P13537898640016407465.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P7925669074619664556

`∩[A063693(n+1), A127435(n+1)]`
-/

namespace A400684.P7925669074619664556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P7925669074619664556

namespace A400684

/-- `∩[A063693(n+1), A127435(n+1)]` -/
def P7925669074619664556.Spec : Prop :=
  ∀ n, (P7925669074619664556.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P2217405386937004138

`∩[A127435(n+1), A280590(n+1)]`
-/

namespace A400684.P2217405386937004138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P2217405386937004138

namespace A400684

/-- `∩[A127435(n+1), A280590(n+1)]` -/
def P2217405386937004138.Spec : Prop :=
  ∀ n, (P2217405386937004138.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P5085717105201488585

`∩[A001838(n+1), A127435(n+1)]`
-/

namespace A400684.P5085717105201488585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P5085717105201488585

namespace A400684

/-- `∩[A001838(n+1), A127435(n+1)]` -/
def P5085717105201488585.Spec : Prop :=
  ∀ n, (P5085717105201488585.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P16081406858701263082

`∩[A127435(n+1), A274212(n+1)]`
-/

namespace A400684.P16081406858701263082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P16081406858701263082

namespace A400684

/-- `∩[A127435(n+1), A274212(n+1)]` -/
def P16081406858701263082.Spec : Prop :=
  ∀ n, (P16081406858701263082.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P1382234590183774634

`∩[A066147(n+1), A127435(n+1)]`
-/

namespace A400684.P1382234590183774634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P1382234590183774634

namespace A400684

/-- `∩[A066147(n+1), A127435(n+1)]` -/
def P1382234590183774634.Spec : Prop :=
  ∀ n, (P1382234590183774634.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P8002796341449237652

`∩[A001359(n+1), A090693(n+1)]`
-/

namespace A400684.P8002796341449237652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P8002796341449237652

namespace A400684

/-- `∩[A001359(n+1), A090693(n+1)]` -/
def P8002796341449237652.Spec : Prop :=
  ∀ n, (P8002796341449237652.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P6405299754655862957

`∩[A001838(n+1), A090693(n+1)]`
-/

namespace A400684.P6405299754655862957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P6405299754655862957

namespace A400684

/-- `∩[A001838(n+1), A090693(n+1)]` -/
def P6405299754655862957.Spec : Prop :=
  ∀ n, (P6405299754655862957.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P18332299828106384223

`∩[A054799(n+1), A090693(n+1)]`
-/

namespace A400684.P18332299828106384223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P18332299828106384223

namespace A400684

/-- `∩[A054799(n+1), A090693(n+1)]` -/
def P18332299828106384223.Spec : Prop :=
  ∀ n, (P18332299828106384223.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P489854303236404626

`∩[A063693(n+1), A090693(n+1)]`
-/

namespace A400684.P489854303236404626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P489854303236404626

namespace A400684

/-- `∩[A063693(n+1), A090693(n+1)]` -/
def P489854303236404626.Spec : Prop :=
  ∀ n, (P489854303236404626.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P8397836839656781378

`∩[A090693(n+1), A181747(n+1)]`
-/

namespace A400684.P8397836839656781378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P8397836839656781378

namespace A400684

/-- `∩[A090693(n+1), A181747(n+1)]` -/
def P8397836839656781378.Spec : Prop :=
  ∀ n, (P8397836839656781378.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P13164081816566806606

`∩[A065873(n+1), A127435(n+1)]`
-/

namespace A400684.P13164081816566806606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P13164081816566806606

namespace A400684

/-- `∩[A065873(n+1), A127435(n+1)]` -/
def P13164081816566806606.Spec : Prop :=
  ∀ n, (P13164081816566806606.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P7237696063890899586

`∩[A072282(n+1), A127435(n+1)]`
-/

namespace A400684.P7237696063890899586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P7237696063890899586

namespace A400684

/-- `∩[A072282(n+1), A127435(n+1)]` -/
def P7237696063890899586.Spec : Prop :=
  ∀ n, (P7237696063890899586.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P10498848014744760943

`∩[A067532(n+1), A127435(n+1)]`
-/

namespace A400684.P10498848014744760943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P10498848014744760943

namespace A400684

/-- `∩[A067532(n+1), A127435(n+1)]` -/
def P10498848014744760943.Spec : Prop :=
  ∀ n, (P10498848014744760943.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P9992014257159900804

`∩[A040976(n+1), A127435(n+1)]`
-/

namespace A400684.P9992014257159900804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400684.P9992014257159900804

namespace A400684

/-- `∩[A040976(n+1), A127435(n+1)]` -/
def P9992014257159900804.Spec : Prop :=
  ∀ n, (P9992014257159900804.a n : ℤ) = A400684 (n + 1)

end A400684

/-! ## A400684.P2068155035915689664

`filter[A090693(n+1), A353463(#)]`
-/

namespace A400684.P2068155035915689664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A400684.P2068155035915689664

namespace A400684

/-- `filter[A090693(n+1), A353463(#)]` -/
def P2068155035915689664.Spec : Prop :=
  ∀ n, P2068155035915689664.a n = A400684 (n + 1)

end A400684

/-!
# A400685: a(n) is the number of ways to divide a 2*n X 2*n square into two connected regions of equal area, each having the same perimeter as the square, by a simple lattice path, up to the symmetries of the square.

The programs for A400685, there is no canonical definition to state claims against.
-/

/-! ## A400685.P14624411646440366588

`A235992((a(n-1)+1)*A191128(n)-1)` with `a(0)=1`
-/

namespace A400685.P14624411646440366588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A235992 ((a (n - 1) + 1) * A191128 n - 1).toNat

end

end A400685.P14624411646440366588

/-!
# A400687: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2)^2.

The programs for A400687, the canonical program `A400687.P16773137454345729550` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400687 has offset 1).

The definition of A400687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400687.P16773137454345729550

`a(n-1)+A069268(n+1)²` with `a(0)=1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400687

/-- `a(n-1)+A069268(n+1)²` -/
def P16773137454345729550.Spec : Prop :=
  ∀ n, P16773137454345729550.a n = A400687 (n + 1)

theorem P16773137454345729550.correct : P16773137454345729550.Spec := by
  intro n
  simp only [A400687, Nat.add_sub_cancel]

end A400687

/-! ## A400687.P13700992060717969955

`∑[A069268(n+1)²]`
-/

namespace A400687.P13700992060717969955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069268 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400687.P13700992060717969955

namespace A400687

/-- `∑[A069268(n+1)²]` -/
def P13700992060717969955.Spec : Prop :=
  ∀ n, P13700992060717969955.a n = A400687 (n + 1)

end A400687

/-! ## A400687.P7708094885170065842

`∑[gcd((n+1)!, ∑[n+1])²]`
-/

namespace A400687.P7708094885170065842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400687.P7708094885170065842

namespace A400687

/-- `∑[gcd((n+1)!, ∑[n+1])²]` -/
def P7708094885170065842.Spec : Prop :=
  ∀ n, (P7708094885170065842.a n : ℤ) = A400687 (n + 1)

end A400687

/-! ## A400687.P8972367017110299969

`∑[gcd(A000537(n+1), A224900(n))]`
-/

namespace A400687.P8972367017110299969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000537 (n + 1)) (A224900 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400687.P8972367017110299969

namespace A400687

/-- `∑[gcd(A000537(n+1), A224900(n))]` -/
def P8972367017110299969.Spec : Prop :=
  ∀ n, (P8972367017110299969.a n : ℤ) = A400687 (n + 1)

end A400687

/-!
# A400689: Row sums of the triangle A400688.

The programs for A400689, there is no canonical definition to state claims against.
-/

/-! ## A400689.P10675831646189025977

`A233583(A224509(n+1))`
-/

namespace A400689.P10675831646189025977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A224509 (n + 1)).toNat

end

end A400689.P10675831646189025977

/-!
# A400692: Numbers x such that recursion {x -> A000005(x)*2} reaches the fixed point of 12.

The programs for A400692, there is no canonical definition to state claims against.
-/

/-! ## A400692.P573239862176712958

`filter[A355571(n+1), A359464(#)]`
-/

namespace A400692.P573239862176712958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A400692.P573239862176712958

/-! ## A400692.P1303893505947402500

`∩[A000379(n+1), A355571(n+1)]`
-/

namespace A400692.P1303893505947402500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400692.P1303893505947402500

/-! ## A400692.P17169541639777215124

`∩[A066428(n+1), A355571(n+1)]`
-/

namespace A400692.P17169541639777215124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400692.P17169541639777215124

/-! ## A400692.P16114414514982142186

`∩[A258456(n+1), A331201(n+1)]`
-/

namespace A400692.P16114414514982142186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400692.P16114414514982142186

/-! ## A400692.P1580897623588679146

`lt[A368414(n+1), A256069(A032741(n))]`
-/

namespace A400692.P1580897623588679146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256069 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400692.P1580897623588679146

/-!
# A400693: Sum of cubes of A069268: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2)^3.

The programs for A400693, the canonical program `A400693.P5789945913233644557` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400693 has offset 1).

The definition of A400693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400693.P5789945913233644557

`∑[A069268(n+1)^3]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400693

/-- `∑[A069268(n+1)^3]` -/
def P5789945913233644557.Spec : Prop :=
  ∀ n, P5789945913233644557.a n = A400693 (n + 1)

theorem P5789945913233644557.correct : P5789945913233644557.Spec := by
  intro n
  simp only [A400693, Nat.add_sub_cancel]

end A400693

/-! ## A400693.P8483848880169970382

`∑[A000578(A069268(n+1))]`
-/

namespace A400693.P8483848880169970382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A069268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400693.P8483848880169970382

namespace A400693

/-- `∑[A000578(A069268(n+1))]` -/
def P8483848880169970382.Spec : Prop :=
  ∀ n, P8483848880169970382.a n = A400693 (n + 1)

end A400693

/-! ## A400693.P12766689498435399808

`∑[gcd((n+1)!, ∑[n+1])^3]`
-/

namespace A400693.P12766689498435399808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400693.P12766689498435399808

namespace A400693

/-- `∑[gcd((n+1)!, ∑[n+1])^3]` -/
def P12766689498435399808.Spec : Prop :=
  ∀ n, (P12766689498435399808.a n : ℤ) = A400693 (n + 1)

end A400693

/-!
# A400694: a(n) = mu(n^2 + 2).

The programs for A400694, the canonical program `A400694.P3850939055037617322` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400694 has offset 0).

The definition of A400694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+2)` (program `A400694.P3850939055037617322`, by `A400694.P3850939055037617322.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400694.P3850939055037617322

`A008683(n²+2)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400694

/-- `A008683(n²+2)` -/
def P3850939055037617322.Spec : Prop :=
  ∀ n, P3850939055037617322.a n = A400694 n

theorem P3850939055037617322.correct : P3850939055037617322.Spec := by
  intro n
  simp only [A400694]

end A400694

/-! ## A400694.P9068112747624670790

`∏{e}[n²+2, A240329(#)]`
-/

namespace A400694.P9068112747624670790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A240329 (Nat.factorization (f1 n) p)

end

end A400694.P9068112747624670790

namespace A400694

/-- `∏{e}[n²+2, A240329(#)]` -/
def P9068112747624670790.Spec : Prop :=
  ∀ n, P9068112747624670790.a n = A400694 n

end A400694

/-! ## A400694.P8105659486460985770

`A355689(n²+2)`
-/

namespace A400694.P8105659486460985770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (n ^ 2 + 2)

end

end A400694.P8105659486460985770

namespace A400694

/-- `A355689(n²+2)` -/
def P8105659486460985770.Spec : Prop :=
  ∀ n, P8105659486460985770.a n = A400694 n

end A400694

/-! ## A400694.P2095113323569833114

`A008683(A059100(n))^3`
-/

namespace A400694.P2095113323569833114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A059100 n).toNat ^ 3

end

end A400694.P2095113323569833114

namespace A400694

/-- `A008683(A059100(n))^3` -/
def P2095113323569833114.Spec : Prop :=
  ∀ n, P2095113323569833114.a n = A400694 n

end A400694

/-! ## A400694.P1395981136782857550

`round(A008683(A000290(n)+2)/2)`
-/

namespace A400694.P1395981136782857550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (A000290 n + 2).toNat : ℚ) / 2)

end

end A400694.P1395981136782857550

namespace A400694

/-- `round(A008683(A000290(n)+2)/2)` -/
def P1395981136782857550.Spec : Prop :=
  ∀ n, P1395981136782857550.a n = A400694 n

end A400694

/-! ## A400694.P11728224377556166050

`A085639(n²+2)`
-/

namespace A400694.P11728224377556166050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085639 (n ^ 2 + 2)

end

end A400694.P11728224377556166050

namespace A400694

/-- `A085639(n²+2)` -/
def P11728224377556166050.Spec : Prop :=
  ∀ n, P11728224377556166050.a n = A400694 n

end A400694

/-! ## A400694.P12281660972672009331

`A359833(n²+2)`
-/

namespace A400694.P12281660972672009331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359833 (n ^ 2 + 2)

end

end A400694.P12281660972672009331

namespace A400694

/-- `A359833(n²+2)` -/
def P12281660972672009331.Spec : Prop :=
  ∀ n, P12281660972672009331.a n = A400694 n

end A400694

/-! ## A400694.P5386983150155681048

`A055615(n²+2)/(n²+2)`
-/

namespace A400694.P5386983150155681048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n ^ 2 + 2) : ℚ) / (n ^ 2 + 2 : ℚ)

end

end A400694.P5386983150155681048

namespace A400694

/-- `A055615(n²+2)/(n²+2)` -/
def P5386983150155681048.Spec : Prop :=
  ∀ n, P5386983150155681048.a n = (A400694 n : ℚ)

theorem P5386983150155681048.correct : P5386983150155681048.Spec := by
  intro n
  simp only [A400694, Nat.add_sub_cancel, A400694.P5386983150155681048.a, A400694.P3850939055037617322.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A055615, A055615.P8993130195977213181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400694

/-! ## A400694.P16951843650317566277

`A092152(n²+2)`
-/

namespace A400694.P16951843650317566277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n ^ 2 + 2)

end

end A400694.P16951843650317566277

namespace A400694

/-- `A092152(n²+2)` -/
def P16951843650317566277.Spec : Prop :=
  ∀ n, P16951843650317566277.a n = A400694 n

end A400694

/-!
# A400695: a(n) = mu(n^2 + 3).

The programs for A400695, the canonical program `A400695.P9639119796023989076` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400695 has offset 0).

The definition of A400695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+3)` (program `A400695.P9639119796023989076`, by `A400695.P9639119796023989076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400695.P9639119796023989076

`A008683(n²+3)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400695

/-- `A008683(n²+3)` -/
def P9639119796023989076.Spec : Prop :=
  ∀ n, P9639119796023989076.a n = A400695 n

theorem P9639119796023989076.correct : P9639119796023989076.Spec := by
  intro n
  simp only [A400695]

end A400695

/-! ## A400695.P11767716910183034171

`∏{e}[3+n², A011647(#)]`
-/

namespace A400695.P11767716910183034171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A011647 (Nat.factorization (f1 n) p)

end

end A400695.P11767716910183034171

namespace A400695

/-- `∏{e}[3+n², A011647(#)]` -/
def P11767716910183034171.Spec : Prop :=
  ∀ n, P11767716910183034171.a n = A400695 n

end A400695

/-! ## A400695.P10572175254788828506

`A008683(A117950(n))^3`
-/

namespace A400695.P10572175254788828506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A117950 n).toNat ^ 3

end

end A400695.P10572175254788828506

namespace A400695

/-- `A008683(A117950(n))^3` -/
def P10572175254788828506.Spec : Prop :=
  ∀ n, P10572175254788828506.a n = A400695 n

end A400695

/-! ## A400695.P2557124582532776634

`A008683(A117950(n))*A269906(n)`
-/

namespace A400695.P2557124582532776634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A117950 n).toNat * A269906 n

end

end A400695.P2557124582532776634

namespace A400695

/-- `A008683(A117950(n))*A269906(n)` -/
def P2557124582532776634.Spec : Prop :=
  ∀ n, P2557124582532776634.a n = A400695 n

end A400695

/-! ## A400695.P3554769341166900932

`A008683(A117950(n))+A000007(n+1)`
-/

namespace A400695.P3554769341166900932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A117950 n).toNat + A000007 (n + 1)

end

end A400695.P3554769341166900932

namespace A400695

/-- `A008683(A117950(n))+A000007(n+1)` -/
def P3554769341166900932.Spec : Prop :=
  ∀ n, P3554769341166900932.a n = A400695 n

end A400695

/-! ## A400695.P10046049263526350687

`A376202(3*n+5)+A008683(A117950(n))`
-/

namespace A400695.P10046049263526350687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376202 (3 * n + 5) + A008683 (A117950 n).toNat

end

end A400695.P10046049263526350687

namespace A400695

/-- `A376202(3*n+5)+A008683(A117950(n))` -/
def P10046049263526350687.Spec : Prop :=
  ∀ n, P10046049263526350687.a n = A400695 n

end A400695

/-! ## A400695.P5750515896076088698

`A085639(n²+3)`
-/

namespace A400695.P5750515896076088698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085639 (n ^ 2 + 3)

end

end A400695.P5750515896076088698

namespace A400695

/-- `A085639(n²+3)` -/
def P5750515896076088698.Spec : Prop :=
  ∀ n, P5750515896076088698.a n = A400695 n

end A400695

/-! ## A400695.P2005773314821602090

`A379110(n²+3)`
-/

namespace A400695.P2005773314821602090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379110 (n ^ 2 + 3)

end

end A400695.P2005773314821602090

namespace A400695

/-- `A379110(n²+3)` -/
def P2005773314821602090.Spec : Prop :=
  ∀ n, P2005773314821602090.a n = A400695 n

end A400695

/-! ## A400695.P5650074743015193810

`A086831(A255844(n))`
-/

namespace A400695.P5650074743015193810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (A255844 n).toNat

end

end A400695.P5650074743015193810

namespace A400695

/-- `A086831(A255844(n))` -/
def P5650074743015193810.Spec : Prop :=
  ∀ n, P5650074743015193810.a n = A400695 n

end A400695

/-! ## A400695.P761784599542804901

`A080323(n²+3)`
-/

namespace A400695.P761784599542804901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (n ^ 2 + 3)

end

end A400695.P761784599542804901

namespace A400695

/-- `A080323(n²+3)` -/
def P761784599542804901.Spec : Prop :=
  ∀ n, P761784599542804901.a n = A400695 n

end A400695

/-! ## A400695.P2690539908561180637

`A087003(n²+3)`
-/

namespace A400695.P2690539908561180637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n ^ 2 + 3)

end

end A400695.P2690539908561180637

namespace A400695

/-- `A087003(n²+3)` -/
def P2690539908561180637.Spec : Prop :=
  ∀ n, P2690539908561180637.a n = A400695 n

end A400695

/-! ## A400695.P10567342572003192886

`A197774(n²+3)`
-/

namespace A400695.P10567342572003192886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 (n ^ 2 + 3)

end

end A400695.P10567342572003192886

namespace A400695

/-- `A197774(n²+3)` -/
def P10567342572003192886.Spec : Prop :=
  ∀ n, P10567342572003192886.a n = A400695 n

end A400695

/-! ## A400695.P1703638065562720455

`A210826(n²+3)`
-/

namespace A400695.P1703638065562720455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (n ^ 2 + 3)

end

end A400695.P1703638065562720455

namespace A400695

/-- `A210826(n²+3)` -/
def P1703638065562720455.Spec : Prop :=
  ∀ n, P1703638065562720455.a n = A400695 n

end A400695

/-! ## A400695.P8102461071977032593

`A219009(n²+3)`
-/

namespace A400695.P8102461071977032593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (n ^ 2 + 3)

end

end A400695.P8102461071977032593

namespace A400695

/-- `A219009(n²+3)` -/
def P8102461071977032593.Spec : Prop :=
  ∀ n, P8102461071977032593.a n = A400695 n

end A400695

/-! ## A400695.P9481665898349279893

`A253206(n²+3)`
-/

namespace A400695.P9481665898349279893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253206 (n ^ 2 + 3)

end

end A400695.P9481665898349279893

namespace A400695

/-- `A253206(n²+3)` -/
def P9481665898349279893.Spec : Prop :=
  ∀ n, P9481665898349279893.a n = A400695 n

end A400695

/-!
# A400696: a(n) = A008966(n^2 + 2).

The programs for A400696, the canonical program `A400696.P2770596567942535513` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400696 has offset 0).

The definition of A400696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008966(n²+2)` (program `A400696.P2770596567942535513`, by `A400696.P2770596567942535513.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400696.P2770596567942535513

`A008966(n²+2)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400696

/-- `A008966(n²+2)` -/
def P2770596567942535513.Spec : Prop :=
  ∀ n, P2770596567942535513.a n = A400696 n

theorem P2770596567942535513.correct : P2770596567942535513.Spec := by
  intro n
  simp only [A400696]

end A400696

/-! ## A400696.P9860541207078368524

`abs(A400694(n))`
-/

namespace A400696.P9860541207078368524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A400694 n|

end

end A400696.P9860541207078368524

namespace A400696

/-- `abs(A400694(n))` -/
def P9860541207078368524.Spec : Prop :=
  ∀ n, P9860541207078368524.a n = A400696 n

end A400696

/-! ## A400696.P6258005804302547888

`gcd(A000038(n), A400694(n))`
-/

namespace A400696.P6258005804302547888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A400694 n)

end

end A400696.P6258005804302547888

namespace A400696

/-- `gcd(A000038(n), A400694(n))` -/
def P6258005804302547888.Spec : Prop :=
  ∀ n, (P6258005804302547888.a n : ℤ) = A400696 n

end A400696

/-! ## A400696.P2069564682797348230

`lcm(A020985(n), A400694(n))`
-/

namespace A400696.P2069564682797348230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A400694 n)

end

end A400696.P2069564682797348230

namespace A400696

/-- `lcm(A020985(n), A400694(n))` -/
def P2069564682797348230.Spec : Prop :=
  ∀ n, (P2069564682797348230.a n : ℤ) = A400696 n

end A400696

/-! ## A400696.P16277690566054351786

`floor(1/∏{e}[n²+2, #])`
-/

namespace A400696.P16277690566054351786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌋

end

end A400696.P16277690566054351786

namespace A400696

/-- `floor(1/∏{e}[n²+2, #])` -/
def P16277690566054351786.Spec : Prop :=
  ∀ n, P16277690566054351786.a n = A400696 n

end A400696

/-! ## A400696.P16568808814274707019

`A359834(n²+2)`
-/

namespace A400696.P16568808814274707019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359834 (n ^ 2 + 2)

end

end A400696.P16568808814274707019

namespace A400696

/-- `A359834(n²+2)` -/
def P16568808814274707019.Spec : Prop :=
  ∀ n, P16568808814274707019.a n = A400696 n

end A400696

/-! ## A400696.P61049842354197236

`A008683(n²+2)²`
-/

namespace A400696.P61049842354197236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ 2 + 2) ^ 2

end

end A400696.P61049842354197236

namespace A400696

/-- `A008683(n²+2)²` -/
def P61049842354197236.Spec : Prop :=
  ∀ n, P61049842354197236.a n = A400696 n

end A400696

/-! ## A400696.P12051416742273147785

`A323154(n²+2)`
-/

namespace A400696.P12051416742273147785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323154 (n ^ 2 + 2)

end

end A400696.P12051416742273147785

namespace A400696

/-- `A323154(n²+2)` -/
def P12051416742273147785.Spec : Prop :=
  ∀ n, P12051416742273147785.a n = A400696 n

end A400696

/-! ## A400696.P16319478541822577013

`A340676(n²+2)`
-/

namespace A400696.P16319478541822577013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340676 (n ^ 2 + 2)

end

end A400696.P16319478541822577013

namespace A400696

/-- `A340676(n²+2)` -/
def P16319478541822577013.Spec : Prop :=
  ∀ n, P16319478541822577013.a n = A400696 n

end A400696

/-! ## A400696.P17495944228181686376

`A353559(n²+2)`
-/

namespace A400696.P17495944228181686376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353559 (n ^ 2 + 2)

end

end A400696.P17495944228181686376

namespace A400696

/-- `A353559(n²+2)` -/
def P17495944228181686376.Spec : Prop :=
  ∀ n, P17495944228181686376.a n = A400696 n

end A400696

/-! ## A400696.P3840888152853175441

`A353627(n²+2)`
-/

namespace A400696.P3840888152853175441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n ^ 2 + 2)

end

end A400696.P3840888152853175441

namespace A400696

/-- `A353627(n²+2)` -/
def P3840888152853175441.Spec : Prop :=
  ∀ n, P3840888152853175441.a n = A400696 n

end A400696

/-! ## A400696.P10369635485287253838

`A067856(n²+2)²`
-/

namespace A400696.P10369635485287253838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n ^ 2 + 2) ^ 2

end

end A400696.P10369635485287253838

namespace A400696

/-- `A067856(n²+2)²` -/
def P10369635485287253838.Spec : Prop :=
  ∀ n, P10369635485287253838.a n = A400696 n

end A400696

/-! ## A400696.P14890592130949713318

`A085384(n²+2)²`
-/

namespace A400696.P14890592130949713318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (n ^ 2 + 2) ^ 2

end

end A400696.P14890592130949713318

namespace A400696

/-- `A085384(n²+2)²` -/
def P14890592130949713318.Spec : Prop :=
  ∀ n, P14890592130949713318.a n = A400696 n

end A400696

/-! ## A400696.P16531554303824531724

`A085639(n²+2)²`
-/

namespace A400696.P16531554303824531724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085639 (n ^ 2 + 2) ^ 2

end

end A400696.P16531554303824531724

namespace A400696

/-- `A085639(n²+2)²` -/
def P16531554303824531724.Spec : Prop :=
  ∀ n, P16531554303824531724.a n = A400696 n

end A400696

/-! ## A400696.P6944573792999375675

`A086831(n²+2)²`
-/

namespace A400696.P6944573792999375675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (n ^ 2 + 2) ^ 2

end

end A400696.P6944573792999375675

namespace A400696

/-- `A086831(n²+2)²` -/
def P6944573792999375675.Spec : Prop :=
  ∀ n, P6944573792999375675.a n = A400696 n

end A400696

/-! ## A400696.P471623814268620483

`A080323(n²+2)²`
-/

namespace A400696.P471623814268620483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (n ^ 2 + 2) ^ 2

end

end A400696.P471623814268620483

namespace A400696

/-- `A080323(n²+2)²` -/
def P471623814268620483.Spec : Prop :=
  ∀ n, P471623814268620483.a n = A400696 n

end A400696

/-! ## A400696.P16842010285250821657

`A178411(n²+2)²`
-/

namespace A400696.P16842010285250821657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178411 (n ^ 2 + 2) ^ 2

end

end A400696.P16842010285250821657

namespace A400696

/-- `A178411(n²+2)²` -/
def P16842010285250821657.Spec : Prop :=
  ∀ n, P16842010285250821657.a n = A400696 n

end A400696

/-! ## A400696.P163503221956266853

`and(A094404(n+1), A400694(n))`
-/

namespace A400696.P163503221956266853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094404 (n + 1)) (A400694 n)

end

end A400696.P163503221956266853

namespace A400696

/-- `and(A094404(n+1), A400694(n))` -/
def P163503221956266853.Spec : Prop :=
  ∀ n, P163503221956266853.a n = A400696 n

end A400696

/-! ## A400696.P16266829567748696774

`A069158(n²+2)²`
-/

namespace A400696.P16266829567748696774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n ^ 2 + 2) ^ 2

end

end A400696.P16266829567748696774

namespace A400696

/-- `A069158(n²+2)²` -/
def P16266829567748696774.Spec : Prop :=
  ∀ n, P16266829567748696774.a n = A400696 n

end A400696

/-! ## A400696.P15350353711333983561

`A092152(n²+2)²`
-/

namespace A400696.P15350353711333983561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n ^ 2 + 2) ^ 2

end

end A400696.P15350353711333983561

namespace A400696

/-- `A092152(n²+2)²` -/
def P15350353711333983561.Spec : Prop :=
  ∀ n, P15350353711333983561.a n = A400696 n

end A400696

/-!
# A400697: a(n) = A008966(n^2 + 3).

The programs for A400697, the canonical program `A400697.P17424689115559816129` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400697 has offset 0).

The definition of A400697 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008966(n²+3)` (program `A400697.P17424689115559816129`, by `A400697.P17424689115559816129.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400697.P17424689115559816129

`A008966(n²+3)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400697

/-- `A008966(n²+3)` -/
def P17424689115559816129.Spec : Prop :=
  ∀ n, P17424689115559816129.a n = A400697 n

theorem P17424689115559816129.correct : P17424689115559816129.Spec := by
  intro n
  simp only [A400697]

end A400697

/-! ## A400697.P11465864468230262438

`abs(A400695(n))`
-/

namespace A400697.P11465864468230262438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A400695 n|

end

end A400697.P11465864468230262438

namespace A400697

/-- `abs(A400695(n))` -/
def P11465864468230262438.Spec : Prop :=
  ∀ n, P11465864468230262438.a n = A400697 n

end A400697

/-! ## A400697.P18165952870902701121

`gcd(A000038(n), A400695(n))`
-/

namespace A400697.P18165952870902701121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A400695 n)

end

end A400697.P18165952870902701121

namespace A400697

/-- `gcd(A000038(n), A400695(n))` -/
def P18165952870902701121.Spec : Prop :=
  ∀ n, (P18165952870902701121.a n : ℤ) = A400697 n

end A400697

/-! ## A400697.P10305038491092130880

`lcm(A000034(n), A400695(n))`
-/

namespace A400697.P10305038491092130880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A400695 n)

end

end A400697.P10305038491092130880

namespace A400697

/-- `lcm(A000034(n), A400695(n))` -/
def P10305038491092130880.Spec : Prop :=
  ∀ n, (P10305038491092130880.a n : ℤ) = A400697 n

end A400697

/-! ## A400697.P13219309591534963679

`and(A001492(n), A400695(n))`
-/

namespace A400697.P13219309591534963679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001492 n) (A400695 n)

end

end A400697.P13219309591534963679

namespace A400697

/-- `and(A001492(n), A400695(n))` -/
def P13219309591534963679.Spec : Prop :=
  ∀ n, P13219309591534963679.a n = A400697 n

end A400697

/-! ## A400697.P5198018484630732185

`and(A007879(n), A400695(n))`
-/

namespace A400697.P5198018484630732185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007879 n) (A400695 n)

end

end A400697.P5198018484630732185

namespace A400697

/-- `and(A007879(n), A400695(n))` -/
def P5198018484630732185.Spec : Prop :=
  ∀ n, P5198018484630732185.a n = A400697 n

end A400697

/-! ## A400697.P10080732942565979719

`and(A010684(n), A400695(n))`
-/

namespace A400697.P10080732942565979719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 n) (A400695 n)

end

end A400697.P10080732942565979719

namespace A400697

/-- `and(A010684(n), A400695(n))` -/
def P10080732942565979719.Spec : Prop :=
  ∀ n, P10080732942565979719.a n = A400697 n

end A400697

/-! ## A400697.P8953918372349425276

`and(A010685(n), A400695(n))`
-/

namespace A400697.P8953918372349425276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010685 n) (A400695 n)

end

end A400697.P8953918372349425276

namespace A400697

/-- `and(A010685(n), A400695(n))` -/
def P8953918372349425276.Spec : Prop :=
  ∀ n, P8953918372349425276.a n = A400697 n

end A400697

/-! ## A400697.P10157047633759589493

`and(A010686(n), A400695(n))`
-/

namespace A400697.P10157047633759589493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010686 n) (A400695 n)

end

end A400697.P10157047633759589493

namespace A400697

/-- `and(A010686(n), A400695(n))` -/
def P10157047633759589493.Spec : Prop :=
  ∀ n, P10157047633759589493.a n = A400697 n

end A400697

/-! ## A400697.P15600399836846186833

`and(A010687(n), A400695(n))`
-/

namespace A400697.P15600399836846186833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010687 n) (A400695 n)

end

end A400697.P15600399836846186833

namespace A400697

/-- `and(A010687(n), A400695(n))` -/
def P15600399836846186833.Spec : Prop :=
  ∀ n, P15600399836846186833.a n = A400697 n

end A400697

/-! ## A400697.P4086852080401180900

`and(A010688(n), A400695(n))`
-/

namespace A400697.P4086852080401180900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010688 n) (A400695 n)

end

end A400697.P4086852080401180900

namespace A400697

/-- `and(A010688(n), A400695(n))` -/
def P4086852080401180900.Spec : Prop :=
  ∀ n, P4086852080401180900.a n = A400697 n

end A400697

/-! ## A400697.P16746724826014482267

`and(A010689(n), A400695(n))`
-/

namespace A400697.P16746724826014482267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010689 n) (A400695 n)

end

end A400697.P16746724826014482267

namespace A400697

/-- `and(A010689(n), A400695(n))` -/
def P16746724826014482267.Spec : Prop :=
  ∀ n, P16746724826014482267.a n = A400697 n

end A400697

/-! ## A400697.P5400624846356999403

`and(A010690(n), A400695(n))`
-/

namespace A400697.P5400624846356999403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010690 n) (A400695 n)

end

end A400697.P5400624846356999403

namespace A400697

/-- `and(A010690(n), A400695(n))` -/
def P5400624846356999403.Spec : Prop :=
  ∀ n, P5400624846356999403.a n = A400697 n

end A400697

/-! ## A400697.P12594119750657183596

`and(A010691(n), A400695(n))`
-/

namespace A400697.P12594119750657183596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010691 n) (A400695 n)

end

end A400697.P12594119750657183596

namespace A400697

/-- `and(A010691(n), A400695(n))` -/
def P12594119750657183596.Spec : Prop :=
  ∀ n, P12594119750657183596.a n = A400697 n

end A400697

/-! ## A400697.P5155055788723758068

`and(A019303(n), A400695(n))`
-/

namespace A400697.P5155055788723758068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019303 n) (A400695 n)

end

end A400697.P5155055788723758068

namespace A400697

/-- `and(A019303(n), A400695(n))` -/
def P5155055788723758068.Spec : Prop :=
  ∀ n, P5155055788723758068.a n = A400697 n

end A400697

/-! ## A400697.P5621126324704722834

`and(A019304(n), A400695(n))`
-/

namespace A400697.P5621126324704722834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019304 n) (A400695 n)

end

end A400697.P5621126324704722834

namespace A400697

/-- `and(A019304(n), A400695(n))` -/
def P5621126324704722834.Spec : Prop :=
  ∀ n, P5621126324704722834.a n = A400697 n

end A400697

/-! ## A400697.P11285953831655067492

`A359155(n²+3)`
-/

namespace A400697.P11285953831655067492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359155 (n ^ 2 + 3)

end

end A400697.P11285953831655067492

namespace A400697

/-- `A359155(n²+3)` -/
def P11285953831655067492.Spec : Prop :=
  ∀ n, P11285953831655067492.a n = A400697 n

end A400697

/-! ## A400697.P3894055325107819999

`A008683(n²+3)²`
-/

namespace A400697.P3894055325107819999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ 2 + 3) ^ 2

end

end A400697.P3894055325107819999

namespace A400697

/-- `A008683(n²+3)²` -/
def P3894055325107819999.Spec : Prop :=
  ∀ n, P3894055325107819999.a n = A400697 n

end A400697

/-! ## A400697.P1611915409098804369

`abs(A008683(A117950(n)))`
-/

namespace A400697.P1611915409098804369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A117950 n).toNat|

end

end A400697.P1611915409098804369

namespace A400697

/-- `abs(A008683(A117950(n)))` -/
def P1611915409098804369.Spec : Prop :=
  ∀ n, P1611915409098804369.a n = A400697 n

end A400697

/-! ## A400697.P9850714693313695370

`and(A221365(n), A400695(n))`
-/

namespace A400697.P9850714693313695370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A221365 n) (A400695 n)

end

end A400697.P9850714693313695370

namespace A400697

/-- `and(A221365(n), A400695(n))` -/
def P9850714693313695370.Spec : Prop :=
  ∀ n, P9850714693313695370.a n = A400697 n

end A400697

/-! ## A400697.P11086780106601658484

`and((n-1)^n, val(2*n+1, 5)!)`
-/

namespace A400697.P11086780106601658484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n : ℤ) - 1) ^ n) (Nat.factorial (SequenceMachineLib.valuation (2 * n + 1) 5) : ℤ)

end

end A400697.P11086780106601658484

namespace A400697

/-- `and((n-1)^n, val(2*n+1, 5)!)` -/
def P11086780106601658484.Spec : Prop :=
  ∀ n, P11086780106601658484.a n = A400697 n

end A400697

/-!
# A400698: a(n) = Sum_{k=0..n} mu(k^2 + 1).

The programs for A400698, the canonical program `A400698.P14154291513535149740` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400698 has offset 0).

The definition of A400698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400698.P14154291513535149740

`A124897(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400698

/-- `A124897(n)+a(n-1)` -/
def P14154291513535149740.Spec : Prop :=
  ∀ n, P14154291513535149740.a n = A400698 n

theorem P14154291513535149740.correct : P14154291513535149740.Spec := by
  intro n
  simp only [A400698]

end A400698

/-! ## A400698.P6323455932884206341

`∑[A008683(1+n²)]`
-/

namespace A400698.P6323455932884206341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (1 + n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P6323455932884206341

namespace A400698

/-- `∑[A008683(1+n²)]` -/
def P6323455932884206341.Spec : Prop :=
  ∀ n, P6323455932884206341.a n = A400698 n

end A400698

/-! ## A400698.P7773070239863443667

`∑[A156277(n²+1)]`
-/

namespace A400698.P7773070239863443667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P7773070239863443667

namespace A400698

/-- `∑[A156277(n²+1)]` -/
def P7773070239863443667.Spec : Prop :=
  ∀ n, P7773070239863443667.a n = A400698 n

end A400698

/-! ## A400698.P13452913203509296813

`∑[A355689(n²+1)]`
-/

namespace A400698.P13452913203509296813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P13452913203509296813

namespace A400698

/-- `∑[A355689(n²+1)]` -/
def P13452913203509296813.Spec : Prop :=
  ∀ n, P13452913203509296813.a n = A400698 n

end A400698

/-! ## A400698.P17009243404404146285

`∑[A359551(n²+1)]`
-/

namespace A400698.P17009243404404146285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359551 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P17009243404404146285

namespace A400698

/-- `∑[A359551(n²+1)]` -/
def P17009243404404146285.Spec : Prop :=
  ∀ n, P17009243404404146285.a n = A400698 n

end A400698

/-! ## A400698.P4564855024289006924

`∑[A085097(n²+1)]`
-/

namespace A400698.P4564855024289006924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085097 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P4564855024289006924

namespace A400698

/-- `∑[A085097(n²+1)]` -/
def P4564855024289006924.Spec : Prop :=
  ∀ n, P4564855024289006924.a n = A400698 n

end A400698

/-! ## A400698.P17283345782222963150

`∑[A359432(n²+1)]`
-/

namespace A400698.P17283345782222963150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359432 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P17283345782222963150

namespace A400698

/-- `∑[A359432(n²+1)]` -/
def P17283345782222963150.Spec : Prop :=
  ∀ n, P17283345782222963150.a n = A400698 n

end A400698

/-! ## A400698.P17341797868905439945

`∑[A359833(n²+1)]`
-/

namespace A400698.P17341797868905439945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359833 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P17341797868905439945

namespace A400698

/-- `∑[A359833(n²+1)]` -/
def P17341797868905439945.Spec : Prop :=
  ∀ n, P17341797868905439945.a n = A400698 n

end A400698

/-! ## A400698.P9202962920182433204

`∑[A117997(n²+1)]`
-/

namespace A400698.P9202962920182433204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117997 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P9202962920182433204

namespace A400698

/-- `∑[A117997(n²+1)]` -/
def P9202962920182433204.Spec : Prop :=
  ∀ n, P9202962920182433204.a n = A400698 n

end A400698

/-! ## A400698.P6034774979153309830

`∑[A364249(n²+1)]`
-/

namespace A400698.P6034774979153309830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364249 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P6034774979153309830

namespace A400698

/-- `∑[A364249(n²+1)]` -/
def P6034774979153309830.Spec : Prop :=
  ∀ n, P6034774979153309830.a n = A400698 n

end A400698

/-! ## A400698.P601044086500846885

`∑[A092152(n²+1)]`
-/

namespace A400698.P601044086500846885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P601044086500846885

namespace A400698

/-- `∑[A092152(n²+1)]` -/
def P601044086500846885.Spec : Prop :=
  ∀ n, P601044086500846885.a n = A400698 n

end A400698

/-! ## A400698.P14072227654729821781

`∑[A197774(n²+1)]`
-/

namespace A400698.P14072227654729821781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P14072227654729821781

namespace A400698

/-- `∑[A197774(n²+1)]` -/
def P14072227654729821781.Spec : Prop :=
  ∀ n, P14072227654729821781.a n = A400698 n

end A400698

/-! ## A400698.P6950074916769228978

`∑[A219009(n²+1)]`
-/

namespace A400698.P6950074916769228978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P6950074916769228978

namespace A400698

/-- `∑[A219009(n²+1)]` -/
def P6950074916769228978.Spec : Prop :=
  ∀ n, P6950074916769228978.a n = A400698 n

end A400698

/-! ## A400698.P18319390332254053868

`∑[A253206(n²+1)]`
-/

namespace A400698.P18319390332254053868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253206 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P18319390332254053868

namespace A400698

/-- `∑[A253206(n²+1)]` -/
def P18319390332254053868.Spec : Prop :=
  ∀ n, P18319390332254053868.a n = A400698 n

end A400698

/-! ## A400698.P16422631100565038415

`∑[A382883(n²+1)]`
-/

namespace A400698.P16422631100565038415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400698.P16422631100565038415

namespace A400698

/-- `∑[A382883(n²+1)]` -/
def P16422631100565038415.Spec : Prop :=
  ∀ n, P16422631100565038415.a n = A400698 n

end A400698

/-!
# A400699: Start with a set of three adjacent collinear points in a hexagonal lattice. Every iteration, add to the set the points in the lattice which are adjacent to at least two points already in the set. This sequence gives the number of points in the set after n iterations.

The programs for A400699, the canonical program `A400699.P5324175900768312914` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400699 has offset 0).

The definition of A400699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400699.P5324175900768312914

`ogf((3+x+2x^2-3x^3+5x^4-2x^5)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400699

/-- `ogf((3+x+2x^2-3x^3+5x^4-2x^5)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P5324175900768312914.Spec : Prop :=
  ∀ n, P5324175900768312914.a n = A400699 n

theorem P5324175900768312914.correct : P5324175900768312914.Spec := by
  intro n
  simp only [A400699]

end A400699

/-! ## A400699.P7708475493070743883

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=3, a(1)=7, a(2)=13, a(3)=19, a(4)=31, a(5)=43`
-/

namespace A400699.P7708475493070743883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 13, 19, 31, 43] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A400699.P7708475493070743883

namespace A400699

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P7708475493070743883.Spec : Prop :=
  ∀ n, P7708475493070743883.a n = A400699 n

end A400699

/-! ## A400699.P2909642833020183433

`A028387(n)+and(2, A163714(n+1))`
-/

namespace A400699.P2909642833020183433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + Int.land 2 (A163714 (n + 1))

end

end A400699.P2909642833020183433

namespace A400699

/-- `A028387(n)+and(2, A163714(n+1))` -/
def P2909642833020183433.Spec : Prop :=
  ∀ n, P2909642833020183433.a n = A400699 n

end A400699

/-! ## A400699.P13696461970722159072

`∩[A026488(n+1), A339267(n+1)]`
-/

namespace A400699.P13696461970722159072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400699.P13696461970722159072

namespace A400699

/-- `∩[A026488(n+1), A339267(n+1)]` -/
def P13696461970722159072.Spec : Prop :=
  ∀ n, (P13696461970722159072.a n : ℤ) = A400699 n

end A400699

/-! ## A400699.P13402441231685836085

`A144917(A001840(n)+2)`
-/

namespace A400699.P13402441231685836085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144917 (A001840 n + 2).toNat

end

end A400699.P13402441231685836085

namespace A400699

/-- `A144917(A001840(n)+2)` -/
def P13402441231685836085.Spec : Prop :=
  ∀ n, P13402441231685836085.a n = A400699 n

end A400699

