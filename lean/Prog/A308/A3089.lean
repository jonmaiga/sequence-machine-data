import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B005.C000
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
# A308900: An explicit example of an infinite sequence with a(1)=1 and, for n >= 2, a(n) and S(n) = Sum_{i=1..n} a(i) have no digit in common.

The programs for A308900, the canonical program `A308900.P5007455974145548793` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308900 has offset 1).

The definition of A308900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308900.P4365756687502558199

`ogf((1+7x)/(1+x-10x^2-10x^3))`
-/

namespace A308900.P4365756687502558199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, 1, -10, -10] n

end

end A308900.P4365756687502558199

namespace A308900

/-- `ogf((1+7x)/(1+x-10x^2-10x^3))` -/
def P4365756687502558199.Spec : Prop :=
  ∀ n, P4365756687502558199.a n = A308900 (n + 1)

end A308900

/-! ## A308900.P5007455974145548793

`abs(∑[10*a(n-2)])` with `a(0)=-1, a(1)=7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308900

/-- `abs(∑[10*a(n-2)])` -/
def P5007455974145548793.Spec : Prop :=
  ∀ n, P5007455974145548793.a n = A308900 (n + 1)

theorem P5007455974145548793.correct : P5007455974145548793.Spec := by
  intro n
  simp only [A308900, Nat.add_sub_cancel]

end A308900

/-! ## A308900.P4479215753627767684

`10*(a(n-2)+a(n-3))-a(n-1)` with `a(0)=1, a(1)=6, a(2)=4`
-/

namespace A308900.P4479215753627767684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 4] fun n a =>
  10 * (a (n - 2) + a (n - 3)) - a (n - 1)

end

end A308900.P4479215753627767684

namespace A308900

/-- `10*(a(n-2)+a(n-3))-a(n-1)` -/
def P4479215753627767684.Spec : Prop :=
  ∀ n, P4479215753627767684.a n = A308900 (n + 1)

end A308900

/-! ## A308900.P8534438263950747541

`Δ[∪[floor(7/9*10^n), floor(10^n/9)]]`
-/

namespace A308900.P8534438263950747541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) / 9 * (10 ^ n : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A308900.P8534438263950747541

namespace A308900

/-- `Δ[∪[floor(7/9*10^n), floor(10^n/9)]]` -/
def P8534438263950747541.Spec : Prop :=
  ∀ n, P8534438263950747541.a n = A308900 (n + 1)

end A308900

/-! ## A308900.P5614214785588699677

`Δ[A094026(n)-A002277(A142150(n))]`
-/

namespace A308900.P5614214785588699677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 n - A002277 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308900.P5614214785588699677

namespace A308900

/-- `Δ[A094026(n)-A002277(A142150(n))]` -/
def P5614214785588699677.Spec : Prop :=
  ∀ n, P5614214785588699677.a n = A308900 (n + 1)

end A308900

/-! ## A308900.P16723052802377682378

`A050250(n+1)%∑[10*a(n-2)]` with `a(0)=4, a(1)=8`
-/

namespace A308900.P16723052802377682378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 8] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050250 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A308900.P16723052802377682378

namespace A308900

/-- `A050250(n+1)%∑[10*a(n-2)]` -/
def P16723052802377682378.Spec : Prop :=
  ∀ n, P16723052802377682378.a n = A308900 (n + 1)

end A308900

/-!
# A308901: Lexicographically earliest overlap-free binary sequence.

The programs for A308901, the canonical program `A308901.P14477176325066974205` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308901 has offset 1).

The definition of A308901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308901.P14477176325066974205

`1-A080813(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A308901

/-- `1-A080813(n+1)` -/
def P14477176325066974205.Spec : Prop :=
  ∀ n, P14477176325066974205.a n = A308901 (n + 1)

theorem P14477176325066974205.correct : P14477176325066974205.Spec := by
  intro n
  simp only [A308901, Nat.add_sub_cancel]

end A308901

/-! ## A308901.P10100382762294687262

`xor(1, A080813(Δ[n²]-n))`
-/

namespace A308901.P10100382762294687262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A080813 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A308901.P10100382762294687262

namespace A308901

/-- `xor(1, A080813(Δ[n²]-n))` -/
def P10100382762294687262.Spec : Prop :=
  ∀ n, P10100382762294687262.a n = A308901 (n + 1)

end A308901

/-! ## A308901.P919605190239085533

`A010059(A008574(n)%(n+2))`
-/

namespace A308901.P919605190239085533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.tmod (A008574 n) (n + 2 : ℤ)).toNat

end

end A308901.P919605190239085533

namespace A308901

/-- `A010059(A008574(n)%(n+2))` -/
def P919605190239085533.Spec : Prop :=
  ∀ n, P919605190239085533.a n = A308901 (n + 1)

end A308901

/-! ## A308901.P13427879490672319438

`floor(acot(A007318(n)*A080813(n+1)))`
-/

namespace A308901.P13427879490672319438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A007318 n * A080813 (n + 1) : ℝ)⌋

end

end A308901.P13427879490672319438

namespace A308901

/-- `floor(acot(A007318(n)*A080813(n+1)))` -/
def P13427879490672319438.Spec : Prop :=
  ∀ n, P13427879490672319438.a n = A308901 (n + 1)

end A308901

/-! ## A308901.P3197840743545259082

`C(n, A000203(n+1)*A080813(n+1))`
-/

namespace A308901.P3197840743545259082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A000203 (n + 1) * A080813 (n + 1)).toNat

end

end A308901.P3197840743545259082

namespace A308901

/-- `C(n, A000203(n+1)*A080813(n+1))` -/
def P3197840743545259082.Spec : Prop :=
  ∀ n, (P3197840743545259082.a n : ℤ) = A308901 (n + 1)

end A308901

/-! ## A308901.P4770996237780441190

`and(A080813(n+1)+1, A000040(n+1)²)`
-/

namespace A308901.P4770996237780441190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080813 (n + 1) + 1) (A000040 (n + 1) ^ 2)

end

end A308901.P4770996237780441190

namespace A308901

/-- `and(A080813(n+1)+1, A000040(n+1)²)` -/
def P4770996237780441190.Spec : Prop :=
  ∀ n, P4770996237780441190.a n = A308901 (n + 1)

end A308901

/-! ## A308901.P14715226498911697847

`floor(acot(A000203(3*n+1)*A080813(n+1)))`
-/

namespace A308901.P14715226498911697847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A000203 (3 * n + 1) * A080813 (n + 1) : ℝ)⌋

end

end A308901.P14715226498911697847

namespace A308901

/-- `floor(acot(A000203(3*n+1)*A080813(n+1)))` -/
def P14715226498911697847.Spec : Prop :=
  ∀ n, P14715226498911697847.a n = A308901 (n + 1)

end A308901

/-! ## A308901.P11534440851903663006

`A010060(abs(10-A004273(n)))`
-/

namespace A308901.P11534440851903663006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 |10 - A004273 n|.toNat

end

end A308901.P11534440851903663006

namespace A308901

/-- `A010060(abs(10-A004273(n)))` -/
def P11534440851903663006.Spec : Prop :=
  ∀ n, P11534440851903663006.a n = A308901 (n + 1)

end A308901

/-! ## A308901.P2100934784823621120

`1-A010059(abs(10-A004273(n)))`
-/

namespace A308901.P2100934784823621120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010059 |10 - A004273 n|.toNat

end

end A308901.P2100934784823621120

namespace A308901

/-- `1-A010059(abs(10-A004273(n)))` -/
def P2100934784823621120.Spec : Prop :=
  ∀ n, P2100934784823621120.a n = A308901 (n + 1)

end A308901

/-! ## A308901.P5581945459741832011

`A000120(abs(10-A004273(n)))%2`
-/

namespace A308901.P5581945459741832011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 |10 - A004273 n|.toNat) 2

end

end A308901.P5581945459741832011

namespace A308901

/-- `A000120(abs(10-A004273(n)))%2` -/
def P5581945459741832011.Spec : Prop :=
  ∀ n, P5581945459741832011.a n = A308901 (n + 1)

end A308901

/-! ## A308901.P4216041870056671086

`A285969(A285971(n+1)+A080813(n+1))`
-/

namespace A308901.P4216041870056671086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285969 (A285971 (n + 1) + A080813 (n + 1)).toNat

end

end A308901.P4216041870056671086

namespace A308901

/-- `A285969(A285971(n+1)+A080813(n+1))` -/
def P4216041870056671086.Spec : Prop :=
  ∀ n, P4216041870056671086.a n = A308901 (n + 1)

end A308901

/-! ## A308901.P17567581681636567356

`A010060(A248057(n+1)+A080813(n+1))`
-/

namespace A308901.P17567581681636567356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A248057 (n + 1) + A080813 (n + 1)).toNat

end

end A308901.P17567581681636567356

namespace A308901

/-- `A010060(A248057(n+1)+A080813(n+1))` -/
def P17567581681636567356.Spec : Prop :=
  ∀ n, P17567581681636567356.a n = A308901 (n + 1)

end A308901

/-! ## A308901.P12874120730877612731

`A010060(A248104(n+1)+A080813(n+1))`
-/

namespace A308901.P12874120730877612731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A248104 (n + 1) + A080813 (n + 1)).toNat

end

end A308901.P12874120730877612731

namespace A308901

/-- `A010060(A248104(n+1)+A080813(n+1))` -/
def P12874120730877612731.Spec : Prop :=
  ∀ n, P12874120730877612731.a n = A308901 (n + 1)

end A308901

/-!
# A308902: Number of partitions of n into 6 squarefree parts.

The programs for A308902, there is no canonical definition to state claims against.
-/

/-! ## A308902.P15678988316853838249

`A308903(n)/A028310(n)`
-/

namespace A308902.P15678988316853838249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308903 n : ℚ) / (A028310 n : ℚ)

end

end A308902.P15678988316853838249

/-! ## A308902.P6290016860801926811

`A308903(n)/A233583(n+1)`
-/

namespace A308902.P6290016860801926811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308903 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A308902.P6290016860801926811

/-! ## A308902.P15707466272637088578

`A308903(n)/(A000007(n)+n)`
-/

namespace A308902.P15707466272637088578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308903 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A308902.P15707466272637088578

/-! ## A308902.P2662932834175475166

`A347657(n)-A347656(n)`
-/

namespace A308902.P2662932834175475166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347657 n - A347656 n

end

end A308902.P2662932834175475166

/-! ## A308902.P1193217288407315862

`A347657(n)-(A347655(n)+A308840(n))`
-/

namespace A308902.P1193217288407315862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347657 n - (A347655 n + A308840 n)

end

end A308902.P1193217288407315862

/-! ## A308902.P8092002360076082661

`A347657(n)-(A308767(n)+A347649(n)+A308840(n))`
-/

namespace A308902.P8092002360076082661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347657 n - (A308767 n + (A347649 n + A308840 n))

end

end A308902.P8092002360076082661

/-!
# A308903: Sum of all the parts in the partitions of n into 6 squarefree parts.

The programs for A308903, there is no canonical definition to state claims against.
-/

/-! ## A308903.P7686685281957235173

`n*A308902(n)`
-/

namespace A308903.P7686685281957235173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A308902 n

end

end A308903.P7686685281957235173

/-! ## A308903.P5068483091270000901

`A308906(n)+A308907(n)+A308908(n)+A308909(n)+A308910(n)+A308911(n)`
-/

namespace A308903.P5068483091270000901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308906 n + A308907 n + A308908 n + A308909 n + A308910 n + A308911 n

end

end A308903.P5068483091270000901

/-! ## A308903.P4567809928031944637

`A308902(n)/A028310(n)^-1`
-/

namespace A308903.P4567809928031944637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308902 n : ℚ) / (A028310 n : ℚ) ^ (-1 : ℤ)

end

end A308903.P4567809928031944637

/-! ## A308903.P15204203735162480819

`A001787(n)%(A011782(n)-A308902(n))`
-/

namespace A308903.P15204203735162480819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001787 n) (A011782 n - A308902 n)

end

end A308903.P15204203735162480819

/-! ## A308903.P7162105187073338785

`n*(A347657(n)-A347656(n))`
-/

namespace A308903.P7162105187073338785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A347657 n - A347656 n)

end

end A308903.P7162105187073338785

/-! ## A308903.P14161095129394738724

`n*(A347657(n)-(A347655(n)+A308840(n)))`
-/

namespace A308903.P14161095129394738724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A347657 n - (A347655 n + A308840 n))

end

end A308903.P14161095129394738724

/-!
# A308904: Largest number k such that exactly half the numbers in [1..k] are prime(n)-smooth.

The programs for A308904, there is no canonical definition to state claims against.
-/

/-! ## A308904.P10725891179549870182

`∑[∑[A001223(A141824(n+5))]]`
-/

namespace A308904.P10725891179549870182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A141824 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308904.P10725891179549870182

/-!
# A308905: Number of numbers k such that exactly half the numbers in [1..k] are prime(n)-smooth.

The programs for A308905, there is no canonical definition to state claims against.
-/

/-! ## A308905.P6203875803995571822

`A277648(A022400(n)+1)`
-/

namespace A308905.P6203875803995571822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277648 (A022400 n + 1).toNat

end

end A308905.P6203875803995571822

/-! ## A308905.P6601948041984658582

`gcd(A036289(n+1), A323054(A088902(n+1)))`
-/

namespace A308905.P6601948041984658582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036289 (n + 1)) (A323054 (A088902 (n + 1)).toNat)

end

end A308905.P6601948041984658582

/-! ## A308905.P10807060270683286416

`A001511(A055265(n+1)+A001006(n))`
-/

namespace A308905.P10807060270683286416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A055265 (n + 1) + A001006 n).toNat

end

end A308905.P10807060270683286416

/-! ## A308905.P12787170004902884928

`A001511(A132075(n+1)+A001006(n))`
-/

namespace A308905.P12787170004902884928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A132075 (n + 1) + A001006 n).toNat

end

end A308905.P12787170004902884928

/-! ## A308905.P3963882342067709500

`A001511(A266644(n+1)+A001006(n))`
-/

namespace A308905.P3963882342067709500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A266644 (n + 1) + A001006 n).toNat

end

end A308905.P3963882342067709500

/-!
# A308906: Sum of the smallest parts in the partitions of n into 6 squarefree parts.

The programs for A308906, there is no canonical definition to state claims against.
-/

/-! ## A308906.P3708396410655501006

`A308903(n)-A308907(n)-A308908(n)-A308909(n)-A308910(n)-A308911(n)`
-/

namespace A308906.P3708396410655501006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308903 n - A308907 n - A308908 n - A308909 n - A308910 n - A308911 n

end

end A308906.P3708396410655501006

/-!
# A308907: Sum of the fifth largest parts in the partitions of n into 6 squarefree parts.

The programs for A308907, there is no canonical definition to state claims against.
-/

/-! ## A308907.P2249613962017854634

`A308903(n)-A308906(n)-A308908(n)-A308909(n)-A308910(n)-A308911(n)`
-/

namespace A308907.P2249613962017854634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308903 n - A308906 n - A308908 n - A308909 n - A308910 n - A308911 n

end

end A308907.P2249613962017854634

/-!
# A308908: Sum of the fourth largest parts in the partitions of n into 6 squarefree parts.

The programs for A308908, there is no canonical definition to state claims against.
-/

/-! ## A308908.P8194190390942142648

`A308903(n)-A308906(n)-A308907(n)-A308909(n)-A308910(n)-A308911(n)`
-/

namespace A308908.P8194190390942142648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308903 n - A308906 n - A308907 n - A308909 n - A308910 n - A308911 n

end

end A308908.P8194190390942142648

/-!
# A308909: Sum of the third largest parts in the partitions of n into 6 squarefree parts.

The programs for A308909, there is no canonical definition to state claims against.
-/

/-! ## A308909.P5006142797662233755

`A308903(n)-A308906(n)-A308907(n)-A308908(n)-A308910(n)-A308911(n)`
-/

namespace A308909.P5006142797662233755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308903 n - A308906 n - A308907 n - A308908 n - A308910 n - A308911 n

end

end A308909.P5006142797662233755

/-!
# A308910: Sum of the second largest parts in the partitions of n into 6 squarefree parts.

The programs for A308910, there is no canonical definition to state claims against.
-/

/-! ## A308910.P10486078929234954197

`A308903(n)-A308906(n)-A308907(n)-A308908(n)-A308909(n)-A308911(n)`
-/

namespace A308910.P10486078929234954197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308903 n - A308906 n - A308907 n - A308908 n - A308909 n - A308911 n

end

end A308910.P10486078929234954197

/-!
# A308911: Sum of the largest parts in the partitions of n into 6 squarefree parts.

The programs for A308911, there is no canonical definition to state claims against.
-/

/-! ## A308911.P5478093515146130491

`A308903(n)-A308906(n)-A308907(n)-A308908(n)-A308909(n)-A308910(n)`
-/

namespace A308911.P5478093515146130491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308903 n - A308906 n - A308907 n - A308908 n - A308909 n - A308910 n

end

end A308911.P5478093515146130491

/-! ## A308911.P3395779726612140014

`A326452(A077168(n+1))`
-/

namespace A308911.P3395779726612140014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326452 (A077168 (n + 1)).toNat

end

end A308911.P3395779726612140014

/-! ## A308911.P16028612880886953821

`A326532(A382083(n+1))`
-/

namespace A308911.P16028612880886953821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326532 (A382083 (n + 1)).toNat

end

end A308911.P16028612880886953821

/-! ## A308911.P11657377999835186591

`A326452(A043319(n+2))`
-/

namespace A308911.P11657377999835186591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326452 (A043319 (n + 2)).toNat

end

end A308911.P11657377999835186591

/-! ## A308911.P3845378229516680487

`A326452(A044916(n+2))`
-/

namespace A308911.P3845378229516680487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326452 (A044916 (n + 2)).toNat

end

end A308911.P3845378229516680487

/-!
# A308912: Highly composite numbers of the 3rd order: numbers k with d_3(k) > d_3(j) for all j < k, where d_3(k) is the 3rd Piltz function, the number of ways of decomposing k into 3 factors (A007425).

The programs for A308912, there is no canonical definition to state claims against.
-/

/-! ## A308912.P3857579499618411546

`A168267(A242474(n+1)+A165878(n))`
-/

namespace A308912.P3857579499618411546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168267 (A242474 (n + 1) + A165878 n).toNat

end

end A308912.P3857579499618411546

/-!
# A308913: Highly composite numbers (A002182) that are not superabundant numbers (A004394).

The programs for A308913, there is no canonical definition to state claims against.
-/

/-! ## A308913.P18365547242199656995

`∩[A002182(n+1), A128699(n+1)]`
-/

namespace A308913.P18365547242199656995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308913.P18365547242199656995

/-! ## A308913.P16549163570003062541

`∩[A004778(n+1), A128699(n+1)]`
-/

namespace A308913.P16549163570003062541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308913.P16549163570003062541

/-! ## A308913.P14860902391805012012

`∩[A128699(n+1), A279930(n+1)]`
-/

namespace A308913.P14860902391805012012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308913.P14860902391805012012

/-! ## A308913.P3819291241862730073

`∩[A128699(n+1), A333655(n+1)]`
-/

namespace A308913.P3819291241862730073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308913.P3819291241862730073

/-!
# A308914: Number of unordered pairs of disjoint self-avoiding paths with nodes that cover all vertices of a convex n-gon; one node paths are not allowed.

The programs for A308914, there is no canonical definition to state claims against.
-/

/-! ## A308914.P567920269552156037

`A111859(A113438(n))`
-/

namespace A308914.P567920269552156037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111859 (A113438 n).toNat

end

end A308914.P567920269552156037

/-! ## A308914.P9590645733728438849

`A137722(A148378(n+1))`
-/

namespace A308914.P9590645733728438849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137722 (A148378 (n + 1)).toNat

end

end A308914.P9590645733728438849

/-!
# A308916: Irregular triangular array: row n shows positions of strict partitions of n among all partitions of n, using Mathematica ordering.

The programs for A308916, there is no canonical definition to state claims against.
-/

/-! ## A308916.P16696142685382808085

`A051850(eq[1, A124769(n)])`
-/

namespace A308916.P16696142685382808085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308916.P16696142685382808085

/-! ## A308916.P14856380496241606032

`A062050(eq[1, A124769(n)])`
-/

namespace A308916.P14856380496241606032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308916.P14856380496241606032

/-! ## A308916.P12640101180183763884

`A051850(eq[A000007(n), A124764(n)])`
-/

namespace A308916.P12640101180183763884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051850 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308916.P12640101180183763884

/-! ## A308916.P13895858089607931366

`A051850(eq[A000038(n), A124764(n)])`
-/

namespace A308916.P13895858089607931366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051850 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308916.P13895858089607931366

/-! ## A308916.P13806914584523602113

`A062050(eq[A000007(n), A124764(n)])`
-/

namespace A308916.P13806914584523602113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A308916.P13806914584523602113

/-!
# A308917: Primes p such that the digits of p^2 are squares.

The programs for A308917, there is no canonical definition to state claims against.
-/

/-! ## A308917.P8998308272672138320

`∩[A038616(n+1), A285550(n+1)]`
-/

namespace A308917.P8998308272672138320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308917.P8998308272672138320

/-! ## A308917.P876243800042769854

`p?[A285550(n+1)]`
-/

namespace A308917.P876243800042769854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A308917.P876243800042769854

/-! ## A308917.P12035844601256474782

`p?[record[A285550(A052938(n))]]`
-/

namespace A308917.P12035844601256474782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285550 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A308917.P12035844601256474782

/-!
# A308919: Sum of all the parts in the partitions of n into 6 primes.

The programs for A308919, there is no canonical definition to state claims against.
-/

/-! ## A308919.P2051623758815652939

`A308920(n)+A308921(n)+A308922(n)+A308923(n)+A308924(n)+A308925(n)`
-/

namespace A308919.P2051623758815652939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308920 n + A308921 n + A308922 n + A308923 n + A308924 n + A308925 n

end

end A308919.P2051623758815652939

/-! ## A308919.P17186647225684922819

`n*(A347610(n)-A347609(n))`
-/

namespace A308919.P17186647225684922819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A347610 n - A347609 n)

end

end A308919.P17186647225684922819

/-! ## A308919.P3588451805222269208

`n*A001222(A000108(A308921(n)))`
-/

namespace A308919.P3588451805222269208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A000108 (A308921 n).toNat).toNat

end

end A308919.P3588451805222269208

/-! ## A308919.P2282234208997621520

`n*A001221(A101879(A308922(n)))`
-/

namespace A308919.P2282234208997621520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (A101879 (A308922 n).toNat).toNat

end

end A308919.P2282234208997621520

/-! ## A308919.P6088781156885053401

`n*A037833(A003179(n))`
-/

namespace A308919.P6088781156885053401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037833 (A003179 n).toNat

end

end A308919.P6088781156885053401

/-!
# A308920: Sum of the smallest parts in the partitions of n into 6 primes.

The programs for A308920, there is no canonical definition to state claims against.
-/

/-! ## A308920.P7078813522243718337

`A308919(n)-A308921(n)-A308922(n)-A308923(n)-A308924(n)-A308925(n)`
-/

namespace A308920.P7078813522243718337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308919 n - A308921 n - A308922 n - A308923 n - A308924 n - A308925 n

end

end A308920.P7078813522243718337

/-!
# A308921: Sum of the fifth largest parts in the partitions of n into 6 primes.

The programs for A308921, there is no canonical definition to state claims against.
-/

/-! ## A308921.P8170851488450562319

`A308919(n)-A308920(n)-A308922(n)-A308923(n)-A308924(n)-A308925(n)`
-/

namespace A308921.P8170851488450562319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308919 n - A308920 n - A308922 n - A308923 n - A308924 n - A308925 n

end

end A308921.P8170851488450562319

/-!
# A308922: Sum of the fourth largest parts in the partitions of n into 6 primes.

The programs for A308922, there is no canonical definition to state claims against.
-/

/-! ## A308922.P2181555020495456139

`A308919(n)-A308920(n)-A308921(n)-A308923(n)-A308924(n)-A308925(n)`
-/

namespace A308922.P2181555020495456139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308919 n - A308920 n - A308921 n - A308923 n - A308924 n - A308925 n

end

end A308922.P2181555020495456139

/-!
# A308923: Sum of the third largest parts in the partitions of n into 6 primes.

The programs for A308923, there is no canonical definition to state claims against.
-/

/-! ## A308923.P17304532503999592662

`A308919(n)-A308920(n)-A308921(n)-A308922(n)-A308924(n)-A308925(n)`
-/

namespace A308923.P17304532503999592662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308919 n - A308920 n - A308921 n - A308922 n - A308924 n - A308925 n

end

end A308923.P17304532503999592662

/-!
# A308924: Sum of the second largest parts in the partitions of n into 6 primes.

The programs for A308924, there is no canonical definition to state claims against.
-/

/-! ## A308924.P10188076887620536986

`A308919(n)-A308920(n)-A308921(n)-A308922(n)-A308923(n)-A308925(n)`
-/

namespace A308924.P10188076887620536986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308919 n - A308920 n - A308921 n - A308922 n - A308923 n - A308925 n

end

end A308924.P10188076887620536986

/-!
# A308925: Sum of the largest parts in the partitions of n into 6 primes.

The programs for A308925, there is no canonical definition to state claims against.
-/

/-! ## A308925.P10744897063937980870

`A308919(n)-A308920(n)-A308921(n)-A308922(n)-A308923(n)-A308924(n)`
-/

namespace A308925.P10744897063937980870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308919 n - A308920 n - A308921 n - A308922 n - A308923 n - A308924 n

end

end A308925.P10744897063937980870

/-!
# A308926: Sum of all the parts in the partitions of n into 7 parts.

The programs for A308926, there is no canonical definition to state claims against.
-/

/-! ## A308926.P5195058527113531731

`n*A026813(n)`
-/

namespace A308926.P5195058527113531731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026813 n

end

end A308926.P5195058527113531731

/-! ## A308926.P7559925211134690694

`A308927(n)+A308928(n)+A308929(n)+A308930(n)+A308931(n)+A308932(n)+A308933(n)`
-/

namespace A308926.P7559925211134690694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308927 n + A308928 n + A308929 n + A308930 n + A308931 n + A308932 n + A308933 n

end

end A308926.P7559925211134690694

/-! ## A308926.P9346115404057323898

`n*(A008636(n)-A001402(n))`
-/

namespace A308926.P9346115404057323898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008636 n - A001402 n)

end

end A308926.P9346115404057323898

/-! ## A308926.P18440016207737084055

`n*(A001996(n)-A060026(n))`
-/

namespace A308926.P18440016207737084055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001996 n - A060026 n)

end

end A308926.P18440016207737084055

/-! ## A308926.P1021224483703505602

`n*(∑[A001996(n)]-A001402(n))`
-/

namespace A308926.P1021224483703505602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A001402 n)

end

end A308926.P1021224483703505602

/-! ## A308926.P11682108999365109904

`n*∑[A001996(n)-A037145(n)]`
-/

namespace A308926.P11682108999365109904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n - A037145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308926.P11682108999365109904

/-! ## A308926.P3380129272600738403

`n*(A008636(n)-A001401(n)-A026812(n))`
-/

namespace A308926.P3380129272600738403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008636 n - A001401 n - A026812 n)

end

end A308926.P3380129272600738403

/-! ## A308926.P7885160084926161826

`A309626(n)+A309624(n)`
-/

namespace A308926.P7885160084926161826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309626 n + A309624 n

end

end A308926.P7885160084926161826

/-!
# A308927: Sum of the smallest parts in the partitions of n into 7 parts.

The programs for A308927, there is no canonical definition to state claims against.
-/

/-! ## A308927.P7996941323038990985

`A308926(n)-A308928(n)-A308929(n)-A308930(n)-A308931(n)-A308932(n)-A308933(n)`
-/

namespace A308927.P7996941323038990985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308926 n - A308928 n - A308929 n - A308930 n - A308931 n - A308932 n - A308933 n

end

end A308927.P7996941323038990985

/-!
# A308928: Sum of the sixth largest parts in the partitions of n into 7 parts.

The programs for A308928, there is no canonical definition to state claims against.
-/

/-! ## A308928.P17665701904874081493

`A308926(n)-A308927(n)-A308929(n)-A308930(n)-A308931(n)-A308932(n)-A308933(n)`
-/

namespace A308928.P17665701904874081493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308926 n - A308927 n - A308929 n - A308930 n - A308931 n - A308932 n - A308933 n

end

end A308928.P17665701904874081493

/-! ## A308928.P3338606214024271079

`round(A332641(3*n+1)/p?[round(8*n/7)]²)`
-/

namespace A308928.P3338606214024271079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332641 (3 * n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℚ))

end

end A308928.P3338606214024271079

/-! ## A308928.P2124723693178792966

`A007095(A308927(n)%A090573(n))`
-/

namespace A308928.P2124723693178792966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A308927 n) (A090573 n)).toNat

end

end A308928.P2124723693178792966

/-!
# A308929: Sum of the fifth largest parts in the partitions of n into 7 parts.

The programs for A308929, there is no canonical definition to state claims against.
-/

/-! ## A308929.P9050085079548231420

`A308926(n)-A308927(n)-A308928(n)-A308930(n)-A308931(n)-A308932(n)-A308933(n)`
-/

namespace A308929.P9050085079548231420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308926 n - A308927 n - A308928 n - A308930 n - A308931 n - A308932 n - A308933 n

end

end A308929.P9050085079548231420

/-! ## A308929.P13983329821245572497

`round(A008859(n)/A338318(3*n+5))`
-/

namespace A308929.P13983329821245572497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008859 n : ℚ) / (A338318 (3 * n + 5) : ℚ))

end

end A308929.P13983329821245572497

/-!
# A308930: Sum of the fourth largest parts in the partitions of n into 7 parts.

The programs for A308930, there is no canonical definition to state claims against.
-/

/-! ## A308930.P2248179404294821708

`A308926(n)-A308927(n)-A308928(n)-A308929(n)-A308931(n)-A308932(n)-A308933(n)`
-/

namespace A308930.P2248179404294821708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308926 n - A308927 n - A308928 n - A308929 n - A308931 n - A308932 n - A308933 n

end

end A308930.P2248179404294821708

/-! ## A308930.P9755532309428579283

`floor(A247784(A000219(n))/A124866(3*n+2))`
-/

namespace A308930.P9755532309428579283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247784 (A000219 n).toNat : ℚ) / (A124866 (3 * n + 2) : ℚ)⌋

end

end A308930.P9755532309428579283

/-!
# A308931: Sum of the third largest parts in the partitions of n into 7 parts.

The programs for A308931, there is no canonical definition to state claims against.
-/

/-! ## A308931.P2739981409467589079

`A308926(n)-A308927(n)-A308928(n)-A308929(n)-A308930(n)-A308932(n)-A308933(n)`
-/

namespace A308931.P2739981409467589079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308926 n - A308927 n - A308928 n - A308929 n - A308930 n - A308932 n - A308933 n

end

end A308931.P2739981409467589079

/-! ## A308931.P16432233362049040481

`A308996(n+1)-A124762(A318557(2*n+1))`
-/

namespace A308931.P16432233362049040481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308996 (n + 1) - A124762 (A318557 (2 * n + 1)).toNat

end

end A308931.P16432233362049040481

/-!
# A308932: Sum of the second largest parts in the partitions of n into 7 parts.

The programs for A308932, there is no canonical definition to state claims against.
-/

/-! ## A308932.P15742501698470263558

`A308926(n)-A308927(n)-A308928(n)-A308929(n)-A308930(n)-A308931(n)-A308933(n)`
-/

namespace A308932.P15742501698470263558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308926 n - A308927 n - A308928 n - A308929 n - A308930 n - A308931 n - A308933 n

end

end A308932.P15742501698470263558

/-! ## A308932.P14668203835934389747

`A326472(n+2)+A178798(A326472(n+2))`
-/

namespace A308932.P14668203835934389747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326472 (n + 2) + A178798 (A326472 (n + 2)).toNat

end

end A308932.P14668203835934389747

/-! ## A308932.P1306453989500520691

`A326597(n+3)+A178798(A326597(n+3))`
-/

namespace A308932.P1306453989500520691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326597 (n + 3) + A178798 (A326597 (n + 3)).toNat

end

end A308932.P1306453989500520691

/-! ## A308932.P2316435730346643031

`A308997(A043320(n+1))`
-/

namespace A308932.P2316435730346643031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308997 (A043320 (n + 1)).toNat

end

end A308932.P2316435730346643031

/-! ## A308932.P15607109969521191536

`A308997(A044917(n+1))`
-/

namespace A308932.P15607109969521191536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308997 (A044917 (n + 1)).toNat

end

end A308932.P15607109969521191536

/-!
# A308933: Sum of the largest parts in the partitions of n into 7 parts.

The programs for A308933, there is no canonical definition to state claims against.
-/

/-! ## A308933.P15011947305504857732

`A308926(n)-A308927(n)-A308928(n)-A308929(n)-A308930(n)-A308931(n)-A308932(n)`
-/

namespace A308933.P15011947305504857732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308926 n - A308927 n - A308928 n - A308929 n - A308930 n - A308931 n - A308932 n

end

end A308933.P15011947305504857732

/-! ## A308933.P15435666536704520772

`A308998(A043320(n+1))`
-/

namespace A308933.P15435666536704520772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308998 (A043320 (n + 1)).toNat

end

end A308933.P15435666536704520772

/-! ## A308933.P11701194428037316724

`A308998(A044917(n+1))`
-/

namespace A308933.P11701194428037316724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308998 (A044917 (n + 1)).toNat

end

end A308933.P11701194428037316724

/-! ## A308933.P18288350692480932451

`A072088(A308998(n+1))`
-/

namespace A308933.P18288350692480932451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A308998 (n + 1)).toNat

end

end A308933.P18288350692480932451

/-! ## A308933.P7665935833755303861

`A308998(A161953(n+1))`
-/

namespace A308933.P7665935833755303861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308998 (A161953 (n + 1)).toNat

end

end A308933.P7665935833755303861

/-!
# A308934: Number of ways to write n as (2^a*3^b)^2 + (2^c*3^d)^2 + x^2 + 2*y^2, where a,b,c,d,x,y are nonnegative integers with 2^a*3^b >= 2^c*3^d.

The programs for A308934, there is no canonical definition to state claims against.
-/

/-! ## A308934.P15174325930167054454

`A086597(∑[record[A246316(n)]])`
-/

namespace A308934.P15174325930167054454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246316 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308934.P15174325930167054454

/-! ## A308934.P833840006461334581

`A001222(record[A321766(n+1)])`
-/

namespace A308934.P833840006461334581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308934.P833840006461334581

/-! ## A308934.P10913310221190830144

`A086597(∑[record[(2*n+3)²-A273602(n+1)]])`
-/

namespace A308934.P10913310221190830144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273602 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308934.P10913310221190830144

/-! ## A308934.P14479140743943784585

`A001222(A276531(n+1)+A014085(n))`
-/

namespace A308934.P14479140743943784585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276531 (n + 1) + A014085 n).toNat

end

end A308934.P14479140743943784585

/-! ## A308934.P6807344757394211382

`A344174(A254503(n+1)+A101551(n))`
-/

namespace A308934.P6807344757394211382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344174 (A254503 (n + 1) + A101551 n).toNat

end

end A308934.P6807344757394211382

/-!
# A308935: a(n) is the smallest m > n such that n^2*(n^2 + 1) divides m^2*(m^2 + 1).

The programs for A308935, there is no canonical definition to state claims against.
-/

/-! ## A308935.P12338395635476291540

`A331873(A369199(3*n+2)+A323528(n+1))`
-/

namespace A308935.P12338395635476291540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (A369199 (3 * n + 2) + A323528 (n + 1)).toNat

end

end A308935.P12338395635476291540

/-!
# A308936: a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)), with a(n) = ceiling(4*n/5) for n <= 9.

The programs for A308936, the canonical program `A308936.P15483738201705643839` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308936 has offset 1).

The definition of A308936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A308936.P15483738201705643839`, by `A308936.P15483738201705643839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308936.P15483738201705643839

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A308936

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P15483738201705643839.Spec : Prop :=
  ∀ n, (P15483738201705643839.a n : ℤ) = A308936 (n + 1)

theorem P15483738201705643839.correct : P15483738201705643839.Spec := by
  intro n
  simp only [A308936, Nat.add_sub_cancel]

end A308936

/-! ## A308936.P10185978091316313688

`A048766(∑[A194195(or(4, n))]²)`
-/

namespace A308936.P10185978091316313688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (Nat.lor 4 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A308936.P10185978091316313688

namespace A308936

/-- `A048766(∑[A194195(or(4, n))]²)` -/
def P10185978091316313688.Spec : Prop :=
  ∀ n, P10185978091316313688.a n = A308936 (n + 1)

end A308936

/-! ## A308936.P12624078525181783160

`∑[A011558(A332003(2*(n+1)))]`
-/

namespace A308936.P12624078525181783160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A332003 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308936.P12624078525181783160

namespace A308936

/-- `∑[A011558(A332003(2*(n+1)))]` -/
def P12624078525181783160.Spec : Prop :=
  ∀ n, P12624078525181783160.a n = A308936 (n + 1)

end A308936

/-! ## A308936.P17399979585726265051

`A000720(record[A039731(A141213(n))])`
-/

namespace A308936.P17399979585726265051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039731 (A141213 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308936.P17399979585726265051

namespace A308936

/-- `A000720(record[A039731(A141213(n))])` -/
def P17399979585726265051.Spec : Prop :=
  ∀ n, P17399979585726265051.a n = A308936 (n + 1)

end A308936

/-! ## A308936.P8473452874699144369

`A000720(record[A060680(A082663(n+1))])`
-/

namespace A308936.P8473452874699144369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (A082663 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308936.P8473452874699144369

namespace A308936

/-- `A000720(record[A060680(A082663(n+1))])` -/
def P8473452874699144369.Spec : Prop :=
  ∀ n, P8473452874699144369.a n = A308936 (n + 1)

end A308936

/-!
# A308938: Smallest deficient number which is the product of n consecutive primes.

The programs for A308938, there is no canonical definition to state claims against.
-/

/-! ## A308938.P5971502695910526134

`A260443(A000225(n)*A123050(n))`
-/

namespace A308938.P5971502695910526134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A000225 n * A123050 n).toNat

end

end A308938.P5971502695910526134

/-! ## A308938.P10254548613524940914

`A332461(A063905(n+1)^n)`
-/

namespace A308938.P10254548613524940914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (A063905 (n + 1) ^ n).toNat

end

end A308938.P10254548613524940914

/-! ## A308938.P7481477065214503492

`A332462(A063905(n+1)^n)`
-/

namespace A308938.P7481477065214503492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A063905 (n + 1) ^ n).toNat

end

end A308938.P7481477065214503492

/-!
# A308939: Expansion of e.g.f. 1 / (1 - Sum_{k>=1} (2*k - 1)!!*x^k/k!).

The programs for A308939, there is no canonical definition to state claims against.
-/

/-! ## A308939.P12070839736903480696

`A000265(A000142(n))*A000265(A076025(n))`
-/

namespace A308939.P12070839736903480696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000142 n).toNat * A000265 (A076025 n).toNat

end

end A308939.P12070839736903480696

/-! ## A308939.P4688117374768403256

`A000265(A000142(n)*A076025(n))`
-/

namespace A308939.P4688117374768403256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000142 n * A076025 n).toNat

end

end A308939.P4688117374768403256

/-!
# A308940: Expansion of e.g.f. 1 / (1 - Sum_{k>=1} Fibonacci(k)*x^k/k!).

The programs for A308940, there is no canonical definition to state claims against.
-/

/-! ## A308940.P9690131188916062559

`A308754(A301832(n)²)`
-/

namespace A308940.P9690131188916062559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308754 (A301832 n ^ 2).toNat

end

end A308940.P9690131188916062559

/-! ## A308940.P4232556201852102132

`A189709(2*A127715(n))`
-/

namespace A308940.P4232556201852102132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189709 (2 * A127715 n).toNat

end

end A308940.P4232556201852102132

/-!
# A308941: a(n) = Product_{k=1..n} |Stirling1(n,k)| * k!.

The programs for A308941, there is no canonical definition to state claims against.
-/

/-! ## A308941.P1717240755257100457

`A000178(n)*A058807(A028310(n))`
-/

namespace A308941.P1717240755257100457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A058807 (A028310 n).toNat

end

end A308941.P1717240755257100457

/-!
# A308942: a(n) = Product_{k=1..n} Stirling2(n,k) * k!.

The programs for A308942, there is no canonical definition to state claims against.
-/

/-! ## A308942.P1605839571236796629

`∏[n!]*A058808(A028310(n))`
-/

namespace A308942.P1605839571236796629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A058808 (A028310 n).toNat

end

end A308942.P1605839571236796629

/-! ## A308942.P14912507196002737993

`A000178(n)*A058808(A028310(n))`
-/

namespace A308942.P14912507196002737993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A058808 (A028310 n).toNat

end

end A308942.P14912507196002737993

/-! ## A308942.P906589888306153492

`A058808(A028310(n))*A290518(∑[n])`
-/

namespace A308942.P906589888306153492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058808 (A028310 n).toNat * A290518 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308942.P906589888306153492

/-! ## A308942.P5637410520600398284

`(A019515(n)-1)*A058808(A028310(n))`
-/

namespace A308942.P5637410520600398284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A019515 n - 1) * A058808 (A028310 n).toNat

end

end A308942.P5637410520600398284

/-! ## A308942.P4580392114497838161

`∏{d}[2^n, A001222(#)!]*A058808(A028310(n))`
-/

namespace A308942.P4580392114497838161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), Nat.factorial (A001222 d).toNat : ℕ) : ℤ) * A058808 (A028310 n).toNat

end

end A308942.P4580392114497838161

/-!
# A308943: a(n) = Product_{d|n} binomial(n,d).

The programs for A308943, there is no canonical definition to state claims against.
-/

/-! ## A308943.P2361978131137934344

`∏{d}[n+1, C(n+1, #)]`
-/

namespace A308943.P2361978131137934344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Nat.choose (n + 1) d

end

end A308943.P2361978131137934344

/-! ## A308943.P14384385335039425906

`∏{d}[n+1, A007318(A000217(n+1)+#)]`
-/

namespace A308943.P14384385335039425906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007318 (A000217 (n + 1) + (d : ℤ)).toNat

end

end A308943.P14384385335039425906

/-! ## A308943.P5858757221078611975

`∏{d}[A131738(n), A007318(A000096(n+1)-#)]`
-/

namespace A308943.P5858757221078611975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A007318 (A000096 (n + 1) - (d : ℤ)).toNat

end

end A308943.P5858757221078611975

/-!
# A308944: a(n) = Product_{k=1..n} lcm(n,k) / (k * gcd(n,k)).

The programs for A308944, the canonical program `A308944.P15802844504427371943` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308944 has offset 1).

The definition of A308944 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127553, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308944.P76072624667293876

`A056916(n+1)/A067911(n+1)`
-/

namespace A308944.P76072624667293876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056916 (n + 1) : ℚ) / (A067911 (n + 1) : ℚ)

end

end A308944.P76072624667293876

namespace A308944

/-- `A056916(n+1)/A067911(n+1)` -/
def P76072624667293876.Spec : Prop :=
  ∀ n, P76072624667293876.a n = (A308944 (n + 1) : ℚ)

end A308944

/-! ## A308944.P15802844504427371943

`A127553(n+1)/(n+1)!`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A308944

/-- `A127553(n+1)/(n+1)!` -/
def P15802844504427371943.Spec : Prop :=
  ∀ n, P15802844504427371943.a n = (A308944 (n + 1) : ℚ)

end A308944

/-! ## A308944.P15102931528025871142

`A056916(n+1)/((n+1)*A051190(n+1))`
-/

namespace A308944.P15102931528025871142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056916 (n + 1) : ℚ) / ((n + 1 : ℤ) * A051190 (n + 1) : ℚ)

end

end A308944.P15102931528025871142

namespace A308944

/-- `A056916(n+1)/((n+1)*A051190(n+1))` -/
def P15102931528025871142.Spec : Prop :=
  ∀ n, P15102931528025871142.a n = (A308944 (n + 1) : ℚ)

end A308944

/-! ## A308944.P657548220478586409

`A056916(n+1)/A276162(A001844(n))`
-/

namespace A308944.P657548220478586409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056916 (n + 1) : ℚ) / (A276162 (A001844 n).toNat : ℚ)

end

end A308944.P657548220478586409

namespace A308944

/-- `A056916(n+1)/A276162(A001844(n))` -/
def P657548220478586409.Spec : Prop :=
  ∀ n, P657548220478586409.a n = (A308944 (n + 1) : ℚ)

end A308944

/-! ## A308944.P12526889351946827474

`A051696(n+1)/A067911(n+1)²*A036505(n)`
-/

namespace A308944.P12526889351946827474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051696 (n + 1) : ℚ) / (A067911 (n + 1) ^ 2 : ℚ) * (A036505 n : ℚ)

end

end A308944.P12526889351946827474

namespace A308944

/-- `A051696(n+1)/A067911(n+1)²*A036505(n)` -/
def P12526889351946827474.Spec : Prop :=
  ∀ n, P12526889351946827474.a n = (A308944 (n + 1) : ℚ)

end A308944

/-!
# A308946: Expansion of e.g.f. 1/(1 - x*(1 + x/2)*exp(x)).

The programs for A308946, there is no canonical definition to state claims against.
-/

/-! ## A308946.P2265049402037252533

`or(A002487(A213102(n)), A213102(n))`
-/

namespace A308946.P2265049402037252533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002487 (A213102 n).toNat) (A213102 n)

end

end A308946.P2265049402037252533

/-! ## A308946.P15171667807632551707

`or(A213102(n), A321738(A001250(n)))`
-/

namespace A308946.P15171667807632551707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213102 n) (A321738 (A001250 n).toNat)

end

end A308946.P15171667807632551707

/-!
# A308947: a(n) = A000129(A214028(n)+1) mod n.

The programs for A308947, there is no canonical definition to state claims against.
-/

/-! ## A308947.P12715487621344683097

`A001333(A214028(n+1))%(n+1)`
-/

namespace A308947.P12715487621344683097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001333 (A214028 (n + 1)).toNat) (n + 1 : ℤ)

end

end A308947.P12715487621344683097

/-! ## A308947.P10800024535198896815

`(A078057(A214028(n+1))+A000007(n))%(n+1)`
-/

namespace A308947.P10800024535198896815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078057 (A214028 (n + 1)).toNat + A000007 n) (n + 1 : ℤ)

end

end A308947.P10800024535198896815

/-! ## A308947.P869365559101253552

`(A078057(A214028(n+1))%(n+1))%A005728(n)`
-/

namespace A308947.P869365559101253552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A078057 (A214028 (n + 1)).toNat) (n + 1 : ℤ)) (A005728 n)

end

end A308947.P869365559101253552

/-! ## A308947.P2747899340867689494

`(A191558(n+1)+A078057(A214028(n+1)))%(n+1)`
-/

namespace A308947.P2747899340867689494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191558 (n + 1) + A078057 (A214028 (n + 1)).toNat) (n + 1 : ℤ)

end

end A308947.P2747899340867689494

/-! ## A308947.P3970629006128504649

`(A078057(A214028(n+1))+∏{d}[n, A001222(#)])%(n+1)`
-/

namespace A308947.P3970629006128504649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078057 (A214028 (n + 1)).toNat + ∏ d ∈ Nat.divisors (f1 n), A001222 d) (n + 1 : ℤ)

end

end A308947.P3970629006128504649

/-! ## A308947.P8016470741529898046

`A078057(A214028(n+1))%A038722(A038722(n+1))`
-/

namespace A308947.P8016470741529898046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078057 (A214028 (n + 1)).toNat) (A038722 (A038722 (n + 1)).toNat)

end

end A308947.P8016470741529898046

/-!
# A308948: a(n) = A006190(A322907(n)+1) mod n.

The programs for A308948, there is no canonical definition to state claims against.
-/

/-! ## A308948.P4947984239384425596

`A003688(A322907(n+1))%(n+1)`
-/

namespace A308948.P4947984239384425596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003688 (A322907 (n + 1)).toNat) (n + 1 : ℤ)

end

end A308948.P4947984239384425596

/-! ## A308948.P4071853711031015389

`A108300(A322907(Δ[n²]+n-2*n))%(n+1)`
-/

namespace A308948.P4071853711031015389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108300 (A322907 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - (2 * n : ℤ))).toNat).toNat) (n + 1 : ℤ)

end

end A308948.P4071853711031015389

/-! ## A308948.P2351063422914254849

`(A108300(A322907(n+1))+A055671(n))%(n+1)`
-/

namespace A308948.P2351063422914254849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108300 (A322907 (n + 1)).toNat + A055671 n) (n + 1 : ℤ)

end

end A308948.P2351063422914254849

/-! ## A308948.P14595853401043148306

`A053183(A075209(n+1))%(n+1)`
-/

namespace A308948.P14595853401043148306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053183 (A075209 (n + 1)).toNat) (n + 1 : ℤ)

end

end A308948.P14595853401043148306

/-! ## A308948.P14627709469496540994

`A263393(gcd(A135814(n), A241349(n+1)))%(n+1)`
-/

namespace A308948.P14627709469496540994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263393 (Int.gcd (A135814 n) (A241349 (n + 1)))) (n + 1 : ℤ)

end

end A308948.P14627709469496540994

/-!
# A308949: a(n) is the greatest divisor of A000129(n) that is coprime to A000129(m) for all positive integers m < n.

The programs for A308949, there is no canonical definition to state claims against.
-/

/-! ## A308949.P14173881311765303139

`lcm(A008555(n+1), A105606(n+1))/A105606(n+1)`
-/

namespace A308949.P14173881311765303139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A008555 (n + 1)) (A105606 (n + 1)) : ℚ) / (A105606 (n + 1) : ℚ)

end

end A308949.P14173881311765303139

/-! ## A308949.P5267840220605434792

`A008555(n+1)/gcd(A008555(n+1), A204268(n+1))`
-/

namespace A308949.P5267840220605434792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008555 (n + 1) : ℚ) / (Int.gcd (A008555 (n + 1)) (A204268 (n + 1)) : ℚ)

end

end A308949.P5267840220605434792

/-! ## A308949.P15257303118865184150

`A034699(A008555(n+1))`
-/

namespace A308949.P15257303118865184150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A008555 (n + 1)).toNat

end

end A308949.P15257303118865184150

/-! ## A308949.P3638822904827514451

`A330741(abs(A077985(n)/A105606(n+1)))`
-/

namespace A308949.P3638822904827514451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (SequenceMachineLib.roundAway |(A077985 n : ℚ) / (A105606 (n + 1) : ℚ)|).toNat

end

end A308949.P3638822904827514451

/-! ## A308949.P13060720600393822692

`A330741(record[A103415(n)]/A105606(n+1))`
-/

namespace A308949.P13060720600393822692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A105606 (n + 1) : ℚ))).toNat

end

end A308949.P13060720600393822692

/-!
# A308950: Number of ways to write n as (p-1)/6 + 2^a*3^b, where p is a prime, and a and b are nonnegative integers.

The programs for A308950, there is no canonical definition to state claims against.
-/

/-! ## A308950.P7612931678925247938

`A086520(record[A131358(n)+A122286(n)])`
-/

namespace A308950.P7612931678925247938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 n + A122286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308950.P7612931678925247938

/-! ## A308950.P7820287720590030986

`xor(A000720(n+1), A107846(A291408(n)))`
-/

namespace A308950.P7820287720590030986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000720 (n + 1)) (A107846 (A291408 n).toNat)

end

end A308950.P7820287720590030986

/-! ## A308950.P4482147222359190895

`xor(A219652(n), A343016(A134602(2*n+5)))`
-/

namespace A308950.P4482147222359190895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A219652 n) (A343016 (A134602 (2 * n + 5)).toNat)

end

end A308950.P4482147222359190895

/-!
# A308951: Number of principal reversible magic squares of order 4n.

The programs for A308951, there is no canonical definition to state claims against.
-/

/-! ## A308951.P8497296941769014493

`A273013(comp[2*(n+1)]+Δ[n²])`
-/

namespace A308951.P8497296941769014493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273013 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

end

end A308951.P8497296941769014493

/-! ## A308951.P15509187552087268218

`A273013(A008574(n))+A000007(n+3)`
-/

namespace A308951.P15509187552087268218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273013 (A008574 n).toNat + A000007 (n + 3)

end

end A308951.P15509187552087268218

/-! ## A308951.P13587315393701192727

`A273013(A008574(n))+A001105(n)%2`
-/

namespace A308951.P13587315393701192727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273013 (A008574 n).toNat + Int.tmod (A001105 n) 2

end

end A308951.P13587315393701192727

/-! ## A308951.P10485629491703038987

`A273013(A008574(n))+val(A001316(n), 3)`
-/

namespace A308951.P10485629491703038987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273013 (A008574 n).toNat + (SequenceMachineLib.valuation (A001316 n).toNat 3 : ℤ)

end

end A308951.P10485629491703038987

/-! ## A308951.P7008018589438430037

`A273013(A008574(n))+char[A071369(n+1)]`
-/

namespace A308951.P7008018589438430037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071369 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273013 (A008574 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308951.P7008018589438430037

/-! ## A308951.P10112998700638235572

`A113017(n+1)%2*A273013(A008574(n))`
-/

namespace A308951.P10112998700638235572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113017 (n + 1)) 2 * A273013 (A008574 n).toNat

end

end A308951.P10112998700638235572

/-! ## A308951.P10839261125404464202

`A273013(A008574(n))+char[A138148(2*(n+2))]`
-/

namespace A308951.P10839261125404464202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138148 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273013 (A008574 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308951.P10839261125404464202

/-!
# A308952: Number of partitions of n into 7 squarefree parts.

The programs for A308952, there is no canonical definition to state claims against.
-/

/-! ## A308952.P11678806338752078178

`A308953(n)/(n-C(2, n))`
-/

namespace A308952.P11678806338752078178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308953 n : ℚ) / ((n : ℤ) - (Nat.choose 2 n : ℤ) : ℚ)

end

end A308952.P11678806338752078178

/-! ## A308952.P11682505773729196024

`A308953(n)/A028310(n)`
-/

namespace A308952.P11682505773729196024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308953 n : ℚ) / (A028310 n : ℚ)

end

end A308952.P11682505773729196024

/-! ## A308952.P7972934701435455887

`A308953(n)/A233583(n+1)`
-/

namespace A308952.P7972934701435455887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308953 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A308952.P7972934701435455887

/-! ## A308952.P10366215390184531235

`A308953(n)/(A000007(n)+n)`
-/

namespace A308952.P10366215390184531235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308953 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A308952.P10366215390184531235

/-! ## A308952.P4646879710315023551

`A308953(n)/(n+1-A057427(n))`
-/

namespace A308952.P4646879710315023551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308953 n : ℚ) / ((n + 1 : ℤ) - A057427 n : ℚ)

end

end A308952.P4646879710315023551

/-! ## A308952.P329314875918353793

`A308953(n)/or(n, A322583(n+1))`
-/

namespace A308952.P329314875918353793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308953 n : ℚ) / (Int.lor (n : ℤ) (A322583 (n + 1)) : ℚ)

end

end A308952.P329314875918353793

/-!
# A308953: Sum of all the parts in the partitions of n into 7 squarefree parts.

The programs for A308953, there is no canonical definition to state claims against.
-/

/-! ## A308953.P3701141204806045489

`n*A308952(n)`
-/

namespace A308953.P3701141204806045489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A308952 n

end

end A308953.P3701141204806045489

/-! ## A308953.P7875615330778043050

`A308954(n)+A308955(n)+A308956(n)+A308957(n)+A308958(n)+A308959(n)+A308960(n)`
-/

namespace A308953.P7875615330778043050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308954 n + A308955 n + A308956 n + A308957 n + A308958 n + A308959 n + A308960 n

end

end A308953.P7875615330778043050

/-! ## A308953.P8956528100245645388

`A056822(A056822(n))*A259481(∑[n])`
-/

namespace A308953.P8956528100245645388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056822 (A056822 n).toNat * A259481 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308953.P8956528100245645388

/-! ## A308953.P9172880370118355051

`n*A326443(A043320(n+1))`
-/

namespace A308953.P9172880370118355051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A326443 (A043320 (n + 1)).toNat

end

end A308953.P9172880370118355051

/-! ## A308953.P2155254408979378450

`n*A326443(A044917(n+1))`
-/

namespace A308953.P2155254408979378450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A326443 (A044917 (n + 1)).toNat

end

end A308953.P2155254408979378450

/-!
# A308954: Sum of the smallest parts in the partitions of n into 7 squarefree parts.

The programs for A308954, there is no canonical definition to state claims against.
-/

/-! ## A308954.P565935209053460065

`A308953(n)-A308955(n)-A308956(n)-A308957(n)-A308958(n)-A308959(n)-A308960(n)`
-/

namespace A308954.P565935209053460065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308953 n - A308955 n - A308956 n - A308957 n - A308958 n - A308959 n - A308960 n

end

end A308954.P565935209053460065

/-! ## A308954.P10844868136406598178

`A007095(A308952(n))%A308918(3*n+4)`
-/

namespace A308954.P10844868136406598178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A308952 n).toNat) (A308918 (3 * n + 4))

end

end A308954.P10844868136406598178

/-!
# A308955: Sum of the sixth largest parts in the partitions of n into 7 squarefree parts.

The programs for A308955, there is no canonical definition to state claims against.
-/

/-! ## A308955.P13210037751202932546

`A308953(n)-A308954(n)-A308956(n)-A308957(n)-A308958(n)-A308959(n)-A308960(n)`
-/

namespace A308955.P13210037751202932546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308953 n - A308954 n - A308956 n - A308957 n - A308958 n - A308959 n - A308960 n

end

end A308955.P13210037751202932546

/-!
# A308956: Sum of the fifth largest parts in the partitions of n into 7 squarefree parts.

The programs for A308956, there is no canonical definition to state claims against.
-/

/-! ## A308956.P9505165879566322419

`A308953(n)-A308954(n)-A308955(n)-A308957(n)-A308958(n)-A308959(n)-A308960(n)`
-/

namespace A308956.P9505165879566322419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308953 n - A308954 n - A308955 n - A308957 n - A308958 n - A308959 n - A308960 n

end

end A308956.P9505165879566322419

/-!
# A308957: Sum of the fourth largest parts in the partitions of n into 7 squarefree parts.

The programs for A308957, there is no canonical definition to state claims against.
-/

/-! ## A308957.P3549040829466214724

`A308953(n)-A308954(n)-A308955(n)-A308956(n)-A308958(n)-A308959(n)-A308960(n)`
-/

namespace A308957.P3549040829466214724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308953 n - A308954 n - A308955 n - A308956 n - A308958 n - A308959 n - A308960 n

end

end A308957.P3549040829466214724

/-!
# A308958: Sum of the third largest parts in the partitions of n into 7 squarefree parts.

The programs for A308958, there is no canonical definition to state claims against.
-/

/-! ## A308958.P14787964751246810085

`A308953(n)-A308954(n)-A308955(n)-A308956(n)-A308957(n)-A308959(n)-A308960(n)`
-/

namespace A308958.P14787964751246810085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308953 n - A308954 n - A308955 n - A308956 n - A308957 n - A308959 n - A308960 n

end

end A308958.P14787964751246810085

/-!
# A308959: Sum of the second largest parts in the partitions of n into 7 squarefree parts.

The programs for A308959, there is no canonical definition to state claims against.
-/

/-! ## A308959.P18150210501887078098

`A308953(n)-A308954(n)-A308955(n)-A308956(n)-A308957(n)-A308958(n)-A308960(n)`
-/

namespace A308959.P18150210501887078098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308953 n - A308954 n - A308955 n - A308956 n - A308957 n - A308958 n - A308960 n

end

end A308959.P18150210501887078098

/-! ## A308959.P13046487047613612697

`A326636(n+3)-A185044(A326637(n))`
-/

namespace A308959.P13046487047613612697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 (n + 3) - A185044 (A326637 n).toNat

end

end A308959.P13046487047613612697

/-!
# A308960: Sum of the largest parts in the partitions of n into 7 squarefree parts.

The programs for A308960, there is no canonical definition to state claims against.
-/

/-! ## A308960.P4182148080730757297

`A308953(n)-A308954(n)-A308955(n)-A308956(n)-A308957(n)-A308958(n)-A308959(n)`
-/

namespace A308960.P4182148080730757297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308953 n - A308954 n - A308955 n - A308956 n - A308957 n - A308958 n - A308959 n

end

end A308960.P4182148080730757297

/-! ## A308960.P2039776444998111447

`A326452(A043320(n+1))`
-/

namespace A308960.P2039776444998111447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326452 (A043320 (n + 1)).toNat

end

end A308960.P2039776444998111447

/-! ## A308960.P11412733755990695598

`A326452(A044917(n+1))`
-/

namespace A308960.P11412733755990695598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326452 (A044917 (n + 1)).toNat

end

end A308960.P11412733755990695598

/-! ## A308960.P11611759802329566456

`A326452(A161953(n+1))`
-/

namespace A308960.P11611759802329566456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326452 (A161953 (n + 1)).toNat

end

end A308960.P11611759802329566456

/-! ## A308960.P6904488326972539450

`A326452(A187829(n+1))`
-/

namespace A308960.P6904488326972539450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326452 (A187829 (n + 1)).toNat

end

end A308960.P6904488326972539450

/-!
# A308961: Numbers k not divisible by 10 such that k^2 and 2*k are in A046030.

The programs for A308961, there is no canonical definition to state claims against.
-/

/-! ## A308961.P10418091427335209964

`A322366(lcm(2, 10^n))`
-/

namespace A308961.P10418091427335209964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 (Nat.lcm 2 (10 ^ n))

end

end A308961.P10418091427335209964

/-!
# A308962: Number of permutations of [4n] with exactly 2n increasing runs of odd length.

The programs for A308962, there is no canonical definition to state claims against.
-/

/-! ## A308962.P13318831020101248383

`A097591(A033586(n))`
-/

namespace A308962.P13318831020101248383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097591 (A033586 n).toNat

end

end A308962.P13318831020101248383

/-! ## A308962.P455665551651663080

`record[A097591(n*A106466(n))]`
-/

namespace A308962.P455665551651663080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097591 ((n : ℤ) * A106466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308962.P455665551651663080

/-!
# A308964: Least k > 0 such that A014222(k) == A014222(k+1) (mod n).

The programs for A308964, there is no canonical definition to state claims against.
-/

/-! ## A308964.P6857635397360346824

`abs(1-A185816(n+1)%A192497(n))`
-/

namespace A308964.P6857635397360346824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - Int.tmod (A185816 (n + 1)) (A192497 n)|

end

end A308964.P6857635397360346824

/-! ## A308964.P4053717747600783896

`A006950(A185816(n+1)%A192497(n))`
-/

namespace A308964.P4053717747600783896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (Int.tmod (A185816 (n + 1)) (A192497 n)).toNat

end

end A308964.P4053717747600783896

/-! ## A308964.P17493000418082205965

`A213251(A181776(n+1)%A192497(n))`
-/

namespace A308964.P17493000418082205965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213251 (Int.tmod (A181776 (n + 1)) (A192497 n)).toNat

end

end A308964.P17493000418082205965

/-! ## A308964.P16861105058539750261

`A006950(A185816(n+1))%A192088(n+2)`
-/

namespace A308964.P16861105058539750261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006950 (A185816 (n + 1)).toNat) (A192088 (n + 2))

end

end A308964.P16861105058539750261

/-! ## A308964.P12850153224622503524

`A003991(A181776(n+1))%A171674(2*(n+2))`
-/

namespace A308964.P12850153224622503524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003991 (A181776 (n + 1)).toNat) (A171674 (2 * (n + 2)))

end

end A308964.P12850153224622503524

/-!
# A308966: Integers k > 1 whose least prime factor is greater than log_2(k).

The programs for A308966, there is no canonical definition to state claims against.
-/

/-! ## A308966.P6084573321821436353

`record[A138663(A138663(n+2))]`
-/

namespace A308966.P6084573321821436353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138663 (A138663 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308966.P6084573321821436353

/-! ## A308966.P17209018900350410755

`A020725(lt[A000523(n+2), A285109(n+1)/(n+1)])`
-/

namespace A308966.P17209018900350410755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 2)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A308966.P17209018900350410755

/-! ## A308966.P9311023830592658697

`lt[A070939(2*(n+2))-A020639(n+1), 2]+1`
-/

namespace A308966.P9311023830592658697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * (n + 2)) - A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A308966.P9311023830592658697

/-! ## A308966.P13702522616123872457

`∩[A325461(n+1), A335284(n+1)]`
-/

namespace A308966.P13702522616123872457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308966.P13702522616123872457

/-! ## A308966.P12119185040010114630

`∩[A088450(n+1), A335284(n+1)]`
-/

namespace A308966.P12119185040010114630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308966.P12119185040010114630

/-!
# A308967: Number of prime factors (with multiplicity) of the numerator A001008 of the harmonic number H(n) = Sum_{k=1..n} 1/k.

The programs for A308967, the canonical program `A308967.P12006305153293851796` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308967 has offset 1).

The definition of A308967 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308967.P12006305153293851796

`A001222(A001008(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A308967

/-- `A001222(A001008(n+1))` -/
def P12006305153293851796.Spec : Prop :=
  ∀ n, P12006305153293851796.a n = A308967 (n + 1)

theorem P12006305153293851796.correct : P12006305153293851796.Spec := by
  intro n
  simp only [A308967, Nat.add_sub_cancel]

end A308967

/-! ## A308967.P7660995050785821950

`ceil(log2(A129568(n+1)))`
-/

namespace A308967.P7660995050785821950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A129568 (n + 1) : ℝ)⌉

end

end A308967.P7660995050785821950

namespace A308967

/-- `ceil(log2(A129568(n+1)))` -/
def P7660995050785821950.Spec : Prop :=
  ∀ n, P7660995050785821950.a n = A308967 (n + 1)

end A308967

/-! ## A308967.P7744127930991340925

`round(log2(A129568(C(n+1, n))))`
-/

namespace A308967.P7744127930991340925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A129568 (Nat.choose (n + 1) n) : ℝ))

end

end A308967.P7744127930991340925

namespace A308967

/-- `round(log2(A129568(C(n+1, n))))` -/
def P7744127930991340925.Spec : Prop :=
  ∀ n, P7744127930991340925.a n = A308967 (n + 1)

end A308967

/-! ## A308967.P15749144846586637672

`round(log2(A129568(Δ[n²]-n)))`
-/

namespace A308967.P15749144846586637672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A129568 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ))

end

end A308967.P15749144846586637672

namespace A308967

/-- `round(log2(A129568(Δ[n²]-n)))` -/
def P15749144846586637672.Spec : Prop :=
  ∀ n, P15749144846586637672.a n = A308967 (n + 1)

end A308967

/-! ## A308967.P4883389724276558041

`A003313(A129568(n+1))`
-/

namespace A308967.P4883389724276558041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A129568 (n + 1)).toNat

end

end A308967.P4883389724276558041

namespace A308967

/-- `A003313(A129568(n+1))` -/
def P4883389724276558041.Spec : Prop :=
  ∀ n, P4883389724276558041.a n = A308967 (n + 1)

end A308967

/-! ## A308967.P6636713610767333905

`A277011(A129568(n+1)-1)`
-/

namespace A308967.P6636713610767333905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A129568 (n + 1) - 1).toNat

end

end A308967.P6636713610767333905

namespace A308967

/-- `A277011(A129568(n+1)-1)` -/
def P6636713610767333905.Spec : Prop :=
  ∀ n, P6636713610767333905.a n = A308967 (n + 1)

end A308967

/-! ## A308967.P6193063166319540658

`A023416(7*A129568(n+1))`
-/

namespace A308967.P6193063166319540658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (7 * A129568 (n + 1)).toNat

end

end A308967.P6193063166319540658

namespace A308967

/-- `A023416(7*A129568(n+1))` -/
def P6193063166319540658.Spec : Prop :=
  ∀ n, P6193063166319540658.a n = A308967 (n + 1)

end A308967

/-! ## A308967.P17657425528007218509

`A007953(round(log2(A129568(n+1))))`
-/

namespace A308967.P17657425528007218509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway (Real.logb 2 (A129568 (n + 1) : ℝ))).toNat

end

end A308967.P17657425528007218509

namespace A308967

/-- `A007953(round(log2(A129568(n+1))))` -/
def P17657425528007218509.Spec : Prop :=
  ∀ n, P17657425528007218509.a n = A308967 (n + 1)

end A308967

/-! ## A308967.P12849975112233727685

`round(log2(A129568(n+1)))%A000041(n+1)`
-/

namespace A308967.P12849975112233727685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A129568 (n + 1) : ℝ))) (A000041 (n + 1))

end

end A308967.P12849975112233727685

namespace A308967

/-- `round(log2(A129568(n+1)))%A000041(n+1)` -/
def P12849975112233727685.Spec : Prop :=
  ∀ n, P12849975112233727685.a n = A308967 (n + 1)

end A308967

/-! ## A308967.P15209036111350444989

`round(log2(A129568(n+1)))*A014963(4*n+2)`
-/

namespace A308967.P15209036111350444989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A129568 (n + 1) : ℝ)) * A014963 (4 * n + 2)

end

end A308967.P15209036111350444989

namespace A308967

/-- `round(log2(A129568(n+1)))*A014963(4*n+2)` -/
def P15209036111350444989.Spec : Prop :=
  ∀ n, P15209036111350444989.a n = A308967 (n + 1)

end A308967

/-! ## A308967.P4951296379276007029

`A008683(25*(n+2))+round(log2(A129568(n+1)))`
-/

namespace A308967.P4951296379276007029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (25 * (n + 2)) + SequenceMachineLib.roundAway (Real.logb 2 (A129568 (n + 1) : ℝ))

end

end A308967.P4951296379276007029

namespace A308967

/-- `A008683(25*(n+2))+round(log2(A129568(n+1)))` -/
def P4951296379276007029.Spec : Prop :=
  ∀ n, P4951296379276007029.a n = A308967 (n + 1)

end A308967

/-!
# A308968: Table, read by rows: row n contains the prime factors of A001008(n) (numerator of n-th harmonic number), with multiplicity.

The programs for A308968, there is no canonical definition to state claims against.
-/

/-! ## A308968.P2672343055134771349

`A333496(A389186(n))`
-/

namespace A308968.P2672343055134771349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333496 (A389186 n).toNat

end

end A308968.P2672343055134771349

/-! ## A308968.P6335866997051514782

`A154723(record[A361592(n)])`
-/

namespace A308968.P6335866997051514782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154723 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308968.P6335866997051514782

/-!
# A308969: Table, read by rows: row n contains the prime divisors of A001008 (numerator of n-th harmonic number), without repetitions.

The programs for A308969, there is no canonical definition to state claims against.
-/

/-! ## A308969.P16039776322674206178

`A308968(floor(2*n/5)+A002998(n)+1)`
-/

namespace A308969.P16039776322674206178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308968 (⌊2 * ((n : ℚ) / 5)⌋ + (A002998 n + 1)).toNat

end

end A308969.P16039776322674206178

/-! ## A308969.P17223065447642231793

`A308968(A114540(n)+A077739(n+1))`
-/

namespace A308969.P17223065447642231793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308968 (A114540 n + A077739 (n + 1)).toNat

end

end A308969.P17223065447642231793

/-! ## A308969.P4017014020831986988

`A308968(A352462(n+1)+A114540(n))`
-/

namespace A308969.P4017014020831986988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308968 (A352462 (n + 1) + A114540 n).toNat

end

end A308969.P4017014020831986988

/-! ## A308969.P16047207790686781540

`A308970(A077739(n+1)-A283784(n+1))`
-/

namespace A308969.P16047207790686781540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308970 (A077739 (n + 1) - A283784 (n + 1)).toNat

end

end A308969.P16047207790686781540

/-!
# A308970: Smallest prime factor of A001008(n), numerator of n-th harmonic number; a(1) = 1.

The programs for A308970, there is no canonical definition to state claims against.
-/

/-! ## A308970.P11308745870862584189

`A308968(∑[A308967(round(acot(n)+n))])`
-/

namespace A308970.P11308745870862584189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308968 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308970.P11308745870862584189

/-! ## A308970.P6959971904274875630

`A020639(A001008(n+1)%A201062(n+1))`
-/

namespace A308970.P6959971904274875630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A001008 (n + 1)) (A201062 (n + 1))).toNat

end

end A308970.P6959971904274875630

/-! ## A308970.P1921373595093143999

`A020639(A175441(n+1)%A201062(n+1))`
-/

namespace A308970.P1921373595093143999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A175441 (n + 1)) (A201062 (n + 1))).toNat

end

end A308970.P1921373595093143999

/-! ## A308970.P5652463196984936670

`A020639((A064167(n+1)/A002805(n+1))%A201062(n+1))`
-/

namespace A308970.P5652463196984936670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (SequenceMachineLib.roundAway ((A064167 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ))) (A201062 (n + 1))).toNat

end

end A308970.P5652463196984936670

/-!
# A308971: Largest prime factor of A001008(n), numerator of n-th harmonic number; a(1) = 1.

The programs for A308971, the canonical program `A308971.P1753330829675571991` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308971 has offset 1).

The definition of A308971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308971.P1753330829675571991

`A006530(A001008(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A308971

/-- `A006530(A001008(n+1))` -/
def P1753330829675571991.Spec : Prop :=
  ∀ n, P1753330829675571991.a n = A308971 (n + 1)

theorem P1753330829675571991.correct : P1753330829675571991.Spec := by
  intro n
  simp only [A308971, Nat.add_sub_cancel]

end A308971

/-! ## A308971.P18391522277237348046

`A120299(a(floor(A118102(n)/2))+n)` with `a(0)=1`
-/

namespace A308971.P18391522277237348046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120299 (a ⌊(A118102 n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A308971.P18391522277237348046

namespace A308971

/-- `A120299(a(floor(A118102(n)/2))+n)` -/
def P18391522277237348046.Spec : Prop :=
  ∀ n, P18391522277237348046.a n = A308971 (n + 1)

end A308971

/-! ## A308971.P2612576089759350074

`A120299(a(floor(A120325(n)/2))+n)` with `a(0)=1`
-/

namespace A308971.P2612576089759350074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120299 (a ⌊(A120325 n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A308971.P2612576089759350074

namespace A308971

/-- `A120299(a(floor(A120325(n)/2))+n)` -/
def P2612576089759350074.Spec : Prop :=
  ∀ n, P2612576089759350074.a n = A308971 (n + 1)

end A308971

/-! ## A308971.P5134868405304738600

`A120299(n*a(A027642(2*n+3)-1)+1)` with `a(0)=1`
-/

namespace A308971.P5134868405304738600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120299 ((n : ℤ) * a (A027642 (2 * n + 3) - 1).toNat + 1).toNat

end

end A308971.P5134868405304738600

namespace A308971

/-- `A120299(n*a(A027642(2*n+3)-1)+1)` -/
def P5134868405304738600.Spec : Prop :=
  ∀ n, P5134868405304738600.a n = A308971 (n + 1)

end A308971

/-! ## A308971.P7712675085842450583

`A308968(∑[A308967(n+1)]+1)`
-/

namespace A308971.P7712675085842450583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308968 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A308971.P7712675085842450583

namespace A308971

/-- `A308968(∑[A308967(n+1)]+1)` -/
def P7712675085842450583.Spec : Prop :=
  ∀ n, P7712675085842450583.a n = A308971 (n + 1)

end A308971

/-!
# A308972: Least k > 0 such that A114561(k) == A114561(k+1) mod n.

The programs for A308972, there is no canonical definition to state claims against.
-/

/-! ## A308972.P1338494275826608865

`∑{e}[A039649(A306693(n+1)), #]`
-/

namespace A308972.P1338494275826608865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A306693 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A308972.P1338494275826608865

/-! ## A308972.P10480631705728187177

`A008480(A000005(A319446(n+1)²))`
-/

namespace A308972.P10480631705728187177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A000005 (A319446 (n + 1) ^ 2).toNat).toNat

end

end A308972.P10480631705728187177

/-! ## A308972.P245409376460092807

`A277070(A046530(n+1)^A277070(n+1))`
-/

namespace A308972.P245409376460092807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277070 (SequenceMachineLib.roundAway ((A046530 (n + 1) : ℚ) ^ (A277070 (n + 1) : ℤ))).toNat

end

end A308972.P245409376460092807

/-! ## A308972.P12537892886152562635

`gcd(A006093(n+1), A223728(A014612(n+1)))`
-/

namespace A308972.P12537892886152562635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1)) (A223728 (A014612 (n + 1)).toNat)

end

end A308972.P12537892886152562635

/-! ## A308972.P7668208865290299532

`A046072(A272593(A046073(2*(n+1))+1)²+1)`
-/

namespace A308972.P7668208865290299532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A272593 (A046073 (2 * (n + 1)) + 1).toNat ^ 2 + 1).toNat

end

end A308972.P7668208865290299532

/-!
# A308974: Sum of all the parts in the partitions of n into 7 primes.

The programs for A308974, there is no canonical definition to state claims against.
-/

/-! ## A308974.P11439465505944684929

`A308975(n)+A308976(n)+A308977(n)+A308978(n)+A308979(n)+A307637(n)+A308980(n)`
-/

namespace A308974.P11439465505944684929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308975 n + A308976 n + A308977 n + A308978 n + A308979 n + A307637 n + A308980 n

end

end A308974.P11439465505944684929

/-! ## A308974.P6504678886018944345

`n*A001221(A000108(A308975(n)))`
-/

namespace A308974.P6504678886018944345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (A000108 (A308975 n).toNat).toNat

end

end A308974.P6504678886018944345

/-! ## A308974.P13041820532453262543

`n*A001221(A000108(A308976(n)))`
-/

namespace A308974.P13041820532453262543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (A000108 (A308976 n).toNat).toNat

end

end A308974.P13041820532453262543

/-! ## A308974.P9054502253562061165

`n*A001221(A000108(A308977(n)))`
-/

namespace A308974.P9054502253562061165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (A000108 (A308977 n).toNat).toNat

end

end A308974.P9054502253562061165

/-! ## A308974.P4904441671250360063

`n*A190593(A185063(n))`
-/

namespace A308974.P4904441671250360063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A190593 (A185063 n).toNat

end

end A308974.P4904441671250360063

/-!
# A308975: Sum of the smallest parts of the partitions of n into 7 primes.

The programs for A308975, there is no canonical definition to state claims against.
-/

/-! ## A308975.P8499311217505586236

`A308974(n)-A308976(n)-A308977(n)-A308978(n)-A308979(n)-A307637(n)-A308980(n)`
-/

namespace A308975.P8499311217505586236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308974 n - A308976 n - A308977 n - A308978 n - A308979 n - A307637 n - A308980 n

end

end A308975.P8499311217505586236

/-!
# A308976: Sum of the sixth largest parts of the partitions of n into 7 primes.

The programs for A308976, there is no canonical definition to state claims against.
-/

/-! ## A308976.P2069193596518740348

`A308974(n)-A308975(n)-A308977(n)-A308978(n)-A308979(n)-A307637(n)-A308980(n)`
-/

namespace A308976.P2069193596518740348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308974 n - A308975 n - A308977 n - A308978 n - A308979 n - A307637 n - A308980 n

end

end A308976.P2069193596518740348

/-!
# A308977: Sum of the fifth largest parts of the partitions of n into 7 primes.

The programs for A308977, there is no canonical definition to state claims against.
-/

/-! ## A308977.P9503707003606598563

`A308974(n)-A308975(n)-A308976(n)-A308978(n)-A308979(n)-A307637(n)-A308980(n)`
-/

namespace A308977.P9503707003606598563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308974 n - A308975 n - A308976 n - A308978 n - A308979 n - A307637 n - A308980 n

end

end A308977.P9503707003606598563

/-!
# A308978: Sum of the fourth largest parts of the partitions of n into 7 primes.

The programs for A308978, there is no canonical definition to state claims against.
-/

/-! ## A308978.P16901106893203746642

`A308974(n)-A308975(n)-A308976(n)-A308977(n)-A308979(n)-A307637(n)-A308980(n)`
-/

namespace A308978.P16901106893203746642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308974 n - A308975 n - A308976 n - A308977 n - A308979 n - A307637 n - A308980 n

end

end A308978.P16901106893203746642

/-!
# A308979: Sum of the third largest parts in the partitions of n into 7 primes.

The programs for A308979, there is no canonical definition to state claims against.
-/

/-! ## A308979.P10909501767040644190

`A308974(n)-A308975(n)-A308976(n)-A308977(n)-A308978(n)-A307637(n)-A308980(n)`
-/

namespace A308979.P10909501767040644190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308974 n - A308975 n - A308976 n - A308977 n - A308978 n - A307637 n - A308980 n

end

end A308979.P10909501767040644190

/-!
# A308980: Sum of the largest parts in the partitions of n into 7 primes.

The programs for A308980, there is no canonical definition to state claims against.
-/

/-! ## A308980.P9163509037187751126

`A308974(n)-A308975(n)-A308976(n)-A308977(n)-A308978(n)-A308979(n)-A307637(n)`
-/

namespace A308980.P9163509037187751126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308974 n - A308975 n - A308976 n - A308977 n - A308978 n - A308979 n - A307637 n

end

end A308980.P9163509037187751126

/-!
# A308981: Nonnegative integers k such that k^3 - 2*k^2 + k - 1 is not composite.

The programs for A308981, there is no canonical definition to state claims against.
-/

/-! ## A308981.P4601890861506334060

`lt[A001222(abs(A056106(n)-(n+1)*n²)), 2]`
-/

namespace A308981.P4601890861506334060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |A056106 n - ((n + 1) * n ^ 2 : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308981.P4601890861506334060

/-! ## A308981.P11429636647020453511

`eq[1, A323152((n²+1)*A289207(n)+1)]`
-/

namespace A308981.P11429636647020453511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 ((n ^ 2 + 1 : ℤ) * A289207 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308981.P11429636647020453511

/-! ## A308981.P9650758332852785262

`lt[A307828(n+4), Δ[A307865(3*n+2)]]`
-/

namespace A308981.P9650758332852785262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307828 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307865 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308981.P9650758332852785262

/-!
# A308984: If a(n) is not a term of a(0)..a(n-1), then a(n+1) = |a(n) - a(n-1)|, otherwise a(n+1) = a(n) + n - m, where a(m) = a(n), m < n, and m is maximal. a(0)=0, a(1)=1.

The programs for A308984, there is no canonical definition to state claims against.
-/

/-! ## A308984.P6174749475101479062

`A048793(A329564(∑[n]))`
-/

namespace A308984.P6174749475101479062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A329564 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A308984.P6174749475101479062

/-! ## A308984.P17186546394770576096

`A000120((n*A029045(n))²)`
-/

namespace A308984.P17186546394770576096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (((n : ℤ) * A029045 n) ^ 2).toNat

end

end A308984.P17186546394770576096

/-! ## A308984.P3739730296088886298

`∑{e}[record[A347620(A327064(n))], #]`
-/

namespace A308984.P3739730296088886298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347620 (A327064 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A308984.P3739730296088886298

/-! ## A308984.P7960505920492166089

`∑{p}[A185790(n+1), A015716(#)]`
-/

namespace A308984.P7960505920492166089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A015716 p

end

end A308984.P7960505920492166089

/-! ## A308984.P1003710838857374464

`A000120((n*A029218(2*n))²)`
-/

namespace A308984.P1003710838857374464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (((n : ℤ) * A029218 (2 * n)) ^ 2).toNat

end

end A308984.P1003710838857374464

/-!
# A308985: Expansion of Product_{k>=0} (1 + 2*x^(2^k))^2.

The programs for A308985, there is no canonical definition to state claims against.
-/

/-! ## A308985.P6354721590347855606

`A228354(A033621(n+1)+n)`
-/

namespace A308985.P6354721590347855606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A033621 (n + 1) + (n : ℤ)).toNat

end

end A308985.P6354721590347855606

/-! ## A308985.P1274665895573711131

`record[and(A170949(n+1), A261359(n))]`
-/

namespace A308985.P1274665895573711131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170949 (n + 1)) (A261359 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308985.P1274665895573711131

/-! ## A308985.P10498662585741315529

`A228354(A029969(n+1)+n+1)`
-/

namespace A308985.P10498662585741315529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A029969 (n + 1) + (n + 1 : ℤ)).toNat

end

end A308985.P10498662585741315529

/-! ## A308985.P3687102842215880431

`record[and(A049842(n+1), A144885(n+1))]`
-/

namespace A308985.P3687102842215880431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049842 (n + 1)) (A144885 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308985.P3687102842215880431

/-! ## A308985.P2573096213116281121

`record[and(A131319(n+1), A209161(n+1))]`
-/

namespace A308985.P2573096213116281121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131319 (n + 1)) (A209161 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308985.P2573096213116281121

/-!
# A308987: In the sequence {n^2+1} (A002522), color the primes red. When the number of terms m between successive red terms sets a new record, write down m+1.

The programs for A308987, there is no canonical definition to state claims against.
-/

/-! ## A308987.P14531707909160924225

`A000032(C(2, n+2))*A214518(A028310(n))`
-/

namespace A308987.P14531707909160924225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A214518 (A028310 n).toNat

end

end A308987.P14531707909160924225

/-! ## A308987.P16214383694140802722

`A000032(floor(1/(n+1)))*A214518(A028310(n))`
-/

namespace A308987.P16214383694140802722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat * A214518 (A028310 n).toNat

end

end A308987.P16214383694140802722

/-! ## A308987.P755042329878243456

`A000032(C(2, n+2))*A214518(A065033(2*n))`
-/

namespace A308987.P755042329878243456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A214518 (A065033 (2 * n)).toNat

end

end A308987.P755042329878243456

/-! ## A308987.P1575976037292797904

`A014963(A001316(n))*A214518(A028310(n))`
-/

namespace A308987.P1575976037292797904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A214518 (A028310 n).toNat

end

end A308987.P1575976037292797904

/-!
# A308988: a(n) = A293564(n) - 1.

The programs for A308988, there is no canonical definition to state claims against.
-/

/-! ## A308988.P15523359180770450749

`xor(a(C(2, n+2)), A293564(n))` with `a(0)=1`
-/

namespace A308988.P15523359180770450749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (Nat.choose 2 (n + 2))) (A293564 n)

end

end A308988.P15523359180770450749

/-! ## A308988.P5832053819811713717

`A293564(A028310(n))-A054977(n)`
-/

namespace A308988.P5832053819811713717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293564 (A028310 n).toNat - A054977 n

end

end A308988.P5832053819811713717

/-! ## A308988.P17932392901552109294

`A293564(A028310(n))-(A000007(n)+1)`
-/

namespace A308988.P17932392901552109294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293564 (A028310 n).toNat - (A000007 n + 1)

end

end A308988.P17932392901552109294

/-! ## A308988.P3682522007475764024

`A293564(A028310(n))-gcd(2, A000040(n+1))`
-/

namespace A308988.P3682522007475764024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293564 (A028310 n).toNat - (Int.gcd 2 (A000040 (n + 1)) : ℤ)

end

end A308988.P3682522007475764024

/-!
# A308989: Sum of all the parts in the partitions of n into 8 parts.

The programs for A308989, there is no canonical definition to state claims against.
-/

/-! ## A308989.P5585323801586260705

`n*A026814(n)`
-/

namespace A308989.P5585323801586260705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026814 n

end

end A308989.P5585323801586260705

/-! ## A308989.P10231950532852335428

`A308990(n)+A308991(n)+A308992(n)+A308994(n)+A308995(n)+A308996(n)+A308997(n)+A308998(n)`
-/

namespace A308989.P10231950532852335428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308990 n + A308991 n + A308992 n + A308994 n + A308995 n + A308996 n + A308997 n + A308998 n

end

end A308989.P10231950532852335428

/-! ## A308989.P6369072060203964163

`n*(A266776(n)-A060027(n))`
-/

namespace A308989.P6369072060203964163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266776 n - A060027 n)

end

end A308989.P6369072060203964163

/-! ## A308989.P11645263555251948208

`A026814(n)/tan(acot(A028310(n)))`
-/

namespace A308989.P11645263555251948208
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A026814 n : ℝ) / Real.tan (SequenceMachineLib.acot (A028310 n : ℝ))

end

end A308989.P11645263555251948208

/-! ## A308989.P3760384990196972157

`n*(A008637(n)-A008636(n))`
-/

namespace A308989.P3760384990196972157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008637 n - A008636 n)

end

end A308989.P3760384990196972157

/-! ## A308989.P8409311543979004674

`n*(A008637(n)-∑[A001996(n)])`
-/

namespace A308989.P8409311543979004674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008637 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308989.P8409311543979004674

/-! ## A308989.P7566618461140462120

`n*∑[A266776(n)-A001996(n)]`
-/

namespace A308989.P7566618461140462120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n - A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308989.P7566618461140462120

/-! ## A308989.P4158416443880720647

`A309632(n)+A309629(n)`
-/

namespace A308989.P4158416443880720647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309632 n + A309629 n

end

end A308989.P4158416443880720647

/-!
# A308990: Sum of the smallest parts in the partitions of n into 8 parts.

The programs for A308990, there is no canonical definition to state claims against.
-/

/-! ## A308990.P9764349161706188669

`A308989(n)-A308991(n)-A308992(n)-A308994(n)-A308995(n)-A308996(n)-A308997(n)-A308998(n)`
-/

namespace A308990.P9764349161706188669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308989 n - A308991 n - A308992 n - A308994 n - A308995 n - A308996 n - A308997 n - A308998 n

end

end A308990.P9764349161706188669

/-! ## A308990.P11813921721998572280

`A118759(A026814(n)+A339235(n)-1)`
-/

namespace A308990.P11813921721998572280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A026814 n + (A339235 n - 1)).toNat

end

end A308990.P11813921721998572280

/-! ## A308990.P6906499844853745716

`A118759(A026814(n)-(1-A339235(n)))`
-/

namespace A308990.P6906499844853745716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A026814 n - (1 - A339235 n)).toNat

end

end A308990.P6906499844853745716

/-! ## A308990.P1576720837875967727

`A118759(A026814(n))+A008554(A339235(n))`
-/

namespace A308990.P1576720837875967727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A026814 n).toNat + A008554 (A339235 n).toNat

end

end A308990.P1576720837875967727

/-! ## A308990.P2282462537703986159

`A118759(A308991(n))-A152467(A326589(n))`
-/

namespace A308990.P2282462537703986159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A308991 n).toNat - A152467 (A326589 n).toNat

end

end A308990.P2282462537703986159

/-!
# A308991: Sum of the seventh largest parts in the partitions of n into 8 parts.

The programs for A308991, there is no canonical definition to state claims against.
-/

/-! ## A308991.P7342874208874762088

`A308989(n)-A308990(n)-A308992(n)-A308994(n)-A308995(n)-A308996(n)-A308997(n)-A308998(n)`
-/

namespace A308991.P7342874208874762088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308989 n - A308990 n - A308992 n - A308994 n - A308995 n - A308996 n - A308997 n - A308998 n

end

end A308991.P7342874208874762088

/-! ## A308991.P4924576170711590849

`A319473(n)+A137579(A326472(n))`
-/

namespace A308991.P4924576170711590849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319473 n + A137579 (A326472 n).toNat

end

end A308991.P4924576170711590849

/-! ## A308991.P788397113974296251

`floor(A114170(A000041(n+2))/A113518(3*n+5))`
-/

namespace A308991.P788397113974296251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114170 (A000041 (n + 2)).toNat : ℚ) / (A113518 (3 * n + 5) : ℚ)⌋

end

end A308991.P788397113974296251

/-!
# A308992: Sum of the sixth largest parts in the partitions of n into 8 parts.

The programs for A308992, there is no canonical definition to state claims against.
-/

/-! ## A308992.P1656636083606607789

`A308989(n)-A308990(n)-A308991(n)-A308994(n)-A308995(n)-A308996(n)-A308997(n)-A308998(n)`
-/

namespace A308992.P1656636083606607789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308989 n - A308990 n - A308991 n - A308994 n - A308995 n - A308996 n - A308997 n - A308998 n

end

end A308992.P1656636083606607789

/-! ## A308992.P2379278174218262024

`A007095(A308991(n)%A155949(n+1))`
-/

namespace A308992.P2379278174218262024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A308991 n) (A155949 (n + 1))).toNat

end

end A308992.P2379278174218262024

/-! ## A308992.P6558129541137838656

`A055572(A308991(n))`
-/

namespace A308992.P6558129541137838656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A308991 n).toNat

end

end A308992.P6558129541137838656

/-!
# A308993: Multiplicative with a(p) = 1 and a(p^e) = p^a(e) for any e > 1 and prime number p.

The programs for A308993, the canonical program `A308993.P18444456858046890751` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308993 has offset 1).

The definition of A308993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308993.P18444456858046890751

`A066990(A057521(n+1)*A071974(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A308993

/-- `A066990(A057521(n+1)*A071974(n+1))` -/
def P18444456858046890751.Spec : Prop :=
  ∀ n, P18444456858046890751.a n = A308993 (n + 1)

theorem P18444456858046890751.correct : P18444456858046890751.Spec := by
  intro n
  simp only [A308993, Nat.add_sub_cancel]

end A308993

/-! ## A308993.P14171676358642054703

`A000188(A066990(A000188(n+1))*A066990(n+1))`
-/

namespace A308993.P14171676358642054703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A066990 (A000188 (n + 1)).toNat * A066990 (n + 1)).toNat

end

end A308993.P14171676358642054703

namespace A308993

/-- `A000188(A066990(A000188(n+1))*A066990(n+1))` -/
def P14171676358642054703.Spec : Prop :=
  ∀ n, P14171676358642054703.a n = A308993 (n + 1)

end A308993

/-! ## A308993.P1177386712511004346

`A007948(n+1)/A007947(A053165(n+1)²)`
-/

namespace A308993.P1177386712511004346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (n + 1) : ℚ) / (A007947 (A053165 (n + 1) ^ 2).toNat : ℚ)

end

end A308993.P1177386712511004346

namespace A308993

/-- `A007948(n+1)/A007947(A053165(n+1)²)` -/
def P1177386712511004346.Spec : Prop :=
  ∀ n, P1177386712511004346.a n = (A308993 (n + 1) : ℚ)

end A308993

/-! ## A308993.P3471121627250176453

`A365297(A372329(n+1))*A365685(n+1)`
-/

namespace A308993.P3471121627250176453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 (A372329 (n + 1)).toNat * A365685 (n + 1)

end

end A308993.P3471121627250176453

namespace A308993

/-- `A365297(A372329(n+1))*A365685(n+1)` -/
def P3471121627250176453.Spec : Prop :=
  ∀ n, P3471121627250176453.a n = A308993 (n + 1)

end A308993

/-! ## A308993.P10737424629759374532

`A007948(A102631(n+1))/A007947((n+1)/A008835(n+1))`
-/

namespace A308993.P10737424629759374532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (A102631 (n + 1)).toNat : ℚ) / (A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat : ℚ)

end

end A308993.P10737424629759374532

namespace A308993

/-- `A007948(A102631(n+1))/A007947((n+1)/A008835(n+1))` -/
def P10737424629759374532.Spec : Prop :=
  ∀ n, P10737424629759374532.a n = (A308993 (n + 1) : ℚ)

end A308993

/-! ## A308993.P788829496571970196

`gcd(A068510(n+3)+A053166(n+1), A000188(n+1))`
-/

namespace A308993.P788829496571970196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068510 (n + 3) + A053166 (n + 1)) (A000188 (n + 1))

end

end A308993.P788829496571970196

namespace A308993

/-- `gcd(A068510(n+3)+A053166(n+1), A000188(n+1))` -/
def P788829496571970196.Spec : Prop :=
  ∀ n, (P788829496571970196.a n : ℤ) = A308993 (n + 1)

end A308993

/-! ## A308993.P5441202552305490527

`gcd(A000188(n+1), A090225(A135481(n)))`
-/

namespace A308993.P5441202552305490527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000188 (n + 1)) (A090225 (A135481 n).toNat)

end

end A308993.P5441202552305490527

namespace A308993

/-- `gcd(A000188(n+1), A090225(A135481(n)))` -/
def P5441202552305490527.Spec : Prop :=
  ∀ n, (P5441202552305490527.a n : ℤ) = A308993 (n + 1)

end A308993

/-! ## A308993.P6166407690773398522

`gcd(A066990(n+1), A153679(A003557(n+1)))`
-/

namespace A308993.P6166407690773398522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066990 (n + 1)) (A153679 (A003557 (n + 1)).toNat)

end

end A308993.P6166407690773398522

namespace A308993

/-- `gcd(A066990(n+1), A153679(A003557(n+1)))` -/
def P6166407690773398522.Spec : Prop :=
  ∀ n, (P6166407690773398522.a n : ℤ) = A308993 (n + 1)

end A308993

/-! ## A308993.P5312079496568529008

`A160377((n+1)/A015052((n+1)²))+1`
-/

namespace A308993.P5312079496568529008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A015052 ((n + 1) ^ 2) : ℚ))).toNat + 1

end

end A308993.P5312079496568529008

namespace A308993

/-- `A160377((n+1)/A015052((n+1)²))+1` -/
def P5312079496568529008.Spec : Prop :=
  ∀ n, P5312079496568529008.a n = A308993 (n + 1)

end A308993

/-! ## A308993.P6346273188647577257

`A007947(A000188(n+1))*A055229(A000189((n+1)²))`
-/

namespace A308993.P6346273188647577257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000188 (n + 1)).toNat * A055229 (A000189 ((n + 1) ^ 2)).toNat

end

end A308993.P6346273188647577257

namespace A308993

/-- `A007947(A000188(n+1))*A055229(A000189((n+1)²))` -/
def P6346273188647577257.Spec : Prop :=
  ∀ n, P6346273188647577257.a n = A308993 (n + 1)

end A308993

/-! ## A308993.P7394528425930983010

`A007947(A000189(n+1))*A055229(A000189((n+1)²))`
-/

namespace A308993.P7394528425930983010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000189 (n + 1)).toNat * A055229 (A000189 ((n + 1) ^ 2)).toNat

end

end A308993.P7394528425930983010

namespace A308993

/-- `A007947(A000189(n+1))*A055229(A000189((n+1)²))` -/
def P7394528425930983010.Spec : Prop :=
  ∀ n, P7394528425930983010.a n = A308993 (n + 1)

end A308993

/-! ## A308993.P15770685956516973815

`A000190(A000188((n+1)²))/A000190(A000189(n+1))`
-/

namespace A308993.P15770685956516973815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000190 (A000188 ((n + 1) ^ 2)).toNat : ℚ) / (A000190 (A000189 (n + 1)).toNat : ℚ)

end

end A308993.P15770685956516973815

namespace A308993

/-- `A000190(A000188((n+1)²))/A000190(A000189(n+1))` -/
def P15770685956516973815.Spec : Prop :=
  ∀ n, P15770685956516973815.a n = (A308993 (n + 1) : ℚ)

end A308993

/-!
# A308994: Sum of the fifth largest parts in the partitions of n into 8 parts.

The programs for A308994, there is no canonical definition to state claims against.
-/

/-! ## A308994.P172754359334152982

`A308989(n)-A308990(n)-A308991(n)-A308992(n)-A308995(n)-A308996(n)-A308997(n)-A308998(n)`
-/

namespace A308994.P172754359334152982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308989 n - A308990 n - A308991 n - A308992 n - A308995 n - A308996 n - A308997 n - A308998 n

end

end A308994.P172754359334152982

/-! ## A308994.P12242961981290371550

`A118759(A308995(n))-A004526(A326593(n))`
-/

namespace A308994.P12242961981290371550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A308995 n).toNat - A004526 (A326593 n).toNat

end

end A308994.P12242961981290371550

/-! ## A308994.P5694296449910364813

`A007095(A308991(n)%A155949(n+1))+A002265(A326466(n))`
-/

namespace A308994.P5694296449910364813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A308991 n) (A155949 (n + 1))).toNat + A002265 (A326466 n).toNat

end

end A308994.P5694296449910364813

/-! ## A308994.P361434875368395090

`A326469(n+1)-A368413(A301361(n+5))`
-/

namespace A308994.P361434875368395090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326469 (n + 1) - A368413 (A301361 (n + 5)).toNat

end

end A308994.P361434875368395090

/-!
# A308995: Sum of the fourth largest parts in the partitions of n into 8 parts.

The programs for A308995, there is no canonical definition to state claims against.
-/

/-! ## A308995.P517476456817943966

`A308989(n)-A308990(n)-A308991(n)-A308992(n)-A308994(n)-A308996(n)-A308997(n)-A308998(n)`
-/

namespace A308995.P517476456817943966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308989 n - A308990 n - A308991 n - A308992 n - A308994 n - A308996 n - A308997 n - A308998 n

end

end A308995.P517476456817943966

/-! ## A308995.P1832335077277374559

`A118759(A308994(n))+A004526(A326593(n))`
-/

namespace A308995.P1832335077277374559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A308994 n).toNat + A004526 (A326593 n).toNat

end

end A308995.P1832335077277374559

/-! ## A308995.P12915517160067732719

`A326470(A077342(n+1))-A101707(A278657(n))`
-/

namespace A308995.P12915517160067732719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326470 (A077342 (n + 1)).toNat - A101707 (A278657 n).toNat

end

end A308995.P12915517160067732719

/-! ## A308995.P1352802245052129816

`A326470(A077342(n+1))-A321537(A069971(n))`
-/

namespace A308995.P1352802245052129816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326470 (A077342 (n + 1)).toNat - A321537 (A069971 n).toNat

end

end A308995.P1352802245052129816

/-! ## A308995.P9281429944292207667

`A326595(A151764(n+2))`
-/

namespace A308995.P9281429944292207667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326595 (A151764 (n + 2)).toNat

end

end A308995.P9281429944292207667

/-!
# A308996: Sum of the third largest parts in the partitions of n into 8 parts.

The programs for A308996, there is no canonical definition to state claims against.
-/

/-! ## A308996.P8248206592623442157

`A308989(n)-A308990(n)-A308991(n)-A308992(n)-A308994(n)-A308995(n)-A308997(n)-A308998(n)`
-/

namespace A308996.P8248206592623442157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308989 n - A308990 n - A308991 n - A308992 n - A308994 n - A308995 n - A308997 n - A308998 n

end

end A308996.P8248206592623442157

/-! ## A308996.P535489760514289374

`A326471(A077342(n+1))-A101707(A278657(n))`
-/

namespace A308996.P535489760514289374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326471 (A077342 (n + 1)).toNat - A101707 (A278657 n).toNat

end

end A308996.P535489760514289374

/-! ## A308996.P10823701399535637001

`A326471(A077342(n+1))-A326466(A099390(n+1))`
-/

namespace A308996.P10823701399535637001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326471 (A077342 (n + 1)).toNat - A326466 (A099390 (n + 1)).toNat

end

end A308996.P10823701399535637001

/-! ## A308996.P14517837005207421288

`A111660(A326598(n))+A026816(n+2)`
-/

namespace A308996.P14517837005207421288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A326598 n).toNat + A026816 (n + 2)

end

end A308996.P14517837005207421288

/-! ## A308996.P9879476230382917774

`A326471(n+1)-A120648(A081572(n))`
-/

namespace A308996.P9879476230382917774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326471 (n + 1) - A120648 (A081572 n).toNat

end

end A308996.P9879476230382917774

/-!
# A308997: Sum of the second largest parts in the partitions of n into 8 parts.

The programs for A308997, there is no canonical definition to state claims against.
-/

/-! ## A308997.P12684474029012064911

`A308989(n)-A308990(n)-A308991(n)-A308992(n)-A308994(n)-A308995(n)-A308996(n)-A308998(n)`
-/

namespace A308997.P12684474029012064911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308989 n - A308990 n - A308991 n - A308992 n - A308994 n - A308995 n - A308996 n - A308998 n

end

end A308997.P12684474029012064911

/-! ## A308997.P2096557658891583314

`A026814(n)+A308998(n)-∑[A026814(n)]`
-/

namespace A308997.P2096557658891583314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 n + (A308998 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308997.P2096557658891583314

/-! ## A308997.P7650607026348909991

`A308998(n)-A118759(∑[A319474(n)])`
-/

namespace A308997.P7650607026348909991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308998 n - A118759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308997.P7650607026348909991

/-! ## A308997.P4113806058259965576

`A326472(A077342(n+1))-A101707(A278657(n))`
-/

namespace A308997.P4113806058259965576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326472 (A077342 (n + 1)).toNat - A101707 (A278657 n).toNat

end

end A308997.P4113806058259965576

/-! ## A308997.P5703804976321200673

`A097448(A326472(n+1))`
-/

namespace A308997.P5703804976321200673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A326472 (n + 1)).toNat

end

end A308997.P5703804976321200673

/-!
# A308998: Sum of the largest parts in the partitions of n into 8 parts.

The programs for A308998, there is no canonical definition to state claims against.
-/

/-! ## A308998.P17935411522395658693

`A308989(n)-A308990(n)-A308991(n)-A308992(n)-A308994(n)-A308995(n)-A308996(n)-A308997(n)`
-/

namespace A308998.P17935411522395658693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308989 n - A308990 n - A308991 n - A308992 n - A308994 n - A308995 n - A308996 n - A308997 n

end

end A308998.P17935411522395658693

/-! ## A308998.P2157036350096634568

`∑[A026814(n)]+A308997(n)-A026814(n)`
-/

namespace A308998.P2157036350096634568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A308997 n - A026814 n)

end

end A308998.P2157036350096634568

/-! ## A308998.P15326182200305637570

`A326473(n+1)-A120648(A081572(n))`
-/

namespace A308998.P15326182200305637570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326473 (n + 1) - A120648 (A081572 n).toNat

end

end A308998.P15326182200305637570

/-! ## A308998.P4841819276910021111

`A326598(n+2)+A178798(A326472(n))`
-/

namespace A308998.P4841819276910021111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326598 (n + 2) + A178798 (A326472 n).toNat

end

end A308998.P4841819276910021111

/-! ## A308998.P11862949122534198069

`A326598(A151764(n+2))`
-/

namespace A308998.P11862949122534198069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326598 (A151764 (n + 2)).toNat

end

end A308998.P11862949122534198069

/-!
# A308999: Irregular triangle T(n,k) read by rows: Lexicographically smallest marks on "perfect rulers" (as defined in A103294) of length n.

The programs for A308999, there is no canonical definition to state claims against.
-/

/-! ## A308999.P5908021500439775589

`A265691(A077342(n+1))-1`
-/

namespace A308999.P5908021500439775589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265691 (A077342 (n + 1)).toNat - 1

end

end A308999.P5908021500439775589

/-! ## A308999.P17243654319138298523

`A265691(A242474(n+1))-1`
-/

namespace A308999.P17243654319138298523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265691 (A242474 (n + 1)).toNat - 1

end

end A308999.P17243654319138298523

/-! ## A308999.P17695060552258533467

`A265691(A351374(n+1))-1`
-/

namespace A308999.P17695060552258533467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265691 (A351374 (n + 1)).toNat - 1

end

end A308999.P17695060552258533467

/-! ## A308999.P5327100511024854801

`A265691(n+1)-A160170(2*(n+1))%4`
-/

namespace A308999.P5327100511024854801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265691 (n + 1) - Int.tmod (A160170 (2 * (n + 1))) 4

end

end A308999.P5327100511024854801

/-! ## A308999.P11925240556137495342

`A359779(A054818(n))+A265691(n+1)`
-/

namespace A308999.P11925240556137495342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359779 (A054818 n).toNat + A265691 (n + 1)

end

end A308999.P11925240556137495342

