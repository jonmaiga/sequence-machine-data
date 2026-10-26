import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A069306: Number of 2 X n binary arrays with a path of adjacent 1's from upper left corner to anywhere in right hand column.

The programs for A069306, the canonical program `A069306.P14559750050030937555` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069306 has offset 2).

The definition of A069306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069306.P14559750050030937555

`2*a(n-1)+a(n-2)` with `a(0)=5, a(1)=12`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069306

/-- `2*a(n-1)+a(n-2)` -/
def P14559750050030937555.Spec : Prop :=
  ∀ n, (P14559750050030937555.a n : ℤ) = A069306 (n + 2)

theorem P14559750050030937555.correct : P14559750050030937555.Spec := by
  intro n
  simp only [A069306, Nat.add_sub_cancel]

end A069306

/-! ## A069306.P5781121427932242598

`A000129(n+3)`
-/

namespace A069306.P5781121427932242598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 3)

end

end A069306.P5781121427932242598

namespace A069306

/-- `A000129(n+3)` -/
def P5781121427932242598.Spec : Prop :=
  ∀ n, P5781121427932242598.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P7346222737404043885

`ogf((5+2x)/(1-2x-x^2))`
-/

namespace A069306.P7346222737404043885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2] [1, -2, -1] n

end

end A069306.P7346222737404043885

namespace A069306

/-- `ogf((5+2x)/(1-2x-x^2))` -/
def P7346222737404043885.Spec : Prop :=
  ∀ n, P7346222737404043885.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P13820639089285417738

`round((sqrt(2)+1)*a(n-1))` with `a(0)=5`
-/

namespace A069306.P13820639089285417738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ))

end

end A069306.P13820639089285417738

namespace A069306

/-- `round((sqrt(2)+1)*a(n-1))` -/
def P13820639089285417738.Spec : Prop :=
  ∀ n, P13820639089285417738.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P10771763630929250193

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=5, a(1)=12`
-/

namespace A069306.P10771763630929250193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 12] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A069306.P10771763630929250193

namespace A069306

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P10771763630929250193.Spec : Prop :=
  ∀ n, (P10771763630929250193.a n : ℤ) = A069306 (n + 2)

theorem P10771763630929250193.correct : P10771763630929250193.Spec := by
  intro n
  simp only [A069306, Nat.add_sub_cancel, A069306.P10771763630929250193.a, A069306.P14559750050030937555.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069306

/-! ## A069306.P11339293083882655741

`A215928(n+3)`
-/

namespace A069306.P11339293083882655741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 3)

end

end A069306.P11339293083882655741

namespace A069306

/-- `A215928(n+3)` -/
def P11339293083882655741.Spec : Prop :=
  ∀ n, P11339293083882655741.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P13554477527269653807

`abs(A077985(n+2))`
-/

namespace A069306.P13554477527269653807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077985 (n + 2)|

end

end A069306.P13554477527269653807

namespace A069306

/-- `abs(A077985(n+2))` -/
def P13554477527269653807.Spec : Prop :=
  ∀ n, P13554477527269653807.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P8143894182965880128

`A005409(n+3)+1`
-/

namespace A069306.P8143894182965880128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (n + 3) + 1

end

end A069306.P8143894182965880128

namespace A069306

/-- `A005409(n+3)+1` -/
def P8143894182965880128.Spec : Prop :=
  ∀ n, P8143894182965880128.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P16579857284962536730

`A052937(n+2)-1`
-/

namespace A069306.P16579857284962536730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 (n + 2) - 1

end

end A069306.P16579857284962536730

namespace A069306

/-- `A052937(n+2)-1` -/
def P16579857284962536730.Spec : Prop :=
  ∀ n, P16579857284962536730.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P6457481267809138757

`A174191(n+3)-1`
-/

namespace A069306.P6457481267809138757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (n + 3) - 1

end

end A069306.P6457481267809138757

namespace A069306

/-- `A174191(n+3)-1` -/
def P6457481267809138757.Spec : Prop :=
  ∀ n, P6457481267809138757.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P3400052299562247699

`A002965(2*(n+3))`
-/

namespace A069306.P3400052299562247699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * (n + 3))

end

end A069306.P3400052299562247699

namespace A069306

/-- `A002965(2*(n+3))` -/
def P3400052299562247699.Spec : Prop :=
  ∀ n, P3400052299562247699.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P16490680433260502553

`A135153(2*(n+3))`
-/

namespace A069306.P16490680433260502553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * (n + 3))

end

end A069306.P16490680433260502553

namespace A069306

/-- `A135153(2*(n+3))` -/
def P16490680433260502553.Spec : Prop :=
  ∀ n, P16490680433260502553.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P3072205379777525331

`A155046(2*(n+3))`
-/

namespace A069306.P3072205379777525331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (2 * (n + 3))

end

end A069306.P3072205379777525331

namespace A069306

/-- `A155046(2*(n+3))` -/
def P3072205379777525331.Spec : Prop :=
  ∀ n, P3072205379777525331.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P3885947965242597517

`A092550(3*(n+3))`
-/

namespace A069306.P3885947965242597517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (3 * (n + 3))

end

end A069306.P3885947965242597517

namespace A069306

/-- `A092550(3*(n+3))` -/
def P3885947965242597517.Spec : Prop :=
  ∀ n, P3885947965242597517.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P4638458343906076684

`A249576(3*(n+3))`
-/

namespace A069306.P4638458343906076684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * (n + 3))

end

end A069306.P4638458343906076684

namespace A069306

/-- `A249576(3*(n+3))` -/
def P4638458343906076684.Spec : Prop :=
  ∀ n, P4638458343906076684.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P14363793901887293033

`A073301(3*n+4)`
-/

namespace A069306.P14363793901887293033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073301 (3 * n + 4)

end

end A069306.P14363793901887293033

namespace A069306

/-- `A073301(3*n+4)` -/
def P14363793901887293033.Spec : Prop :=
  ∀ n, P14363793901887293033.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P12797202449691806139

`A116560(6*(n+3))`
-/

namespace A069306.P12797202449691806139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (6 * (n + 3))

end

end A069306.P12797202449691806139

namespace A069306

/-- `A116560(6*(n+3))` -/
def P12797202449691806139.Spec : Prop :=
  ∀ n, P12797202449691806139.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P1145800234255226344

`xor(1, A111954(n+3))`
-/

namespace A069306.P1145800234255226344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111954 (n + 3))

end

end A069306.P1145800234255226344

namespace A069306

/-- `xor(1, A111954(n+3))` -/
def P1145800234255226344.Spec : Prop :=
  ∀ n, P1145800234255226344.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P343329220574301523

`abs(Δ[A077921(n+1)])`
-/

namespace A069306.P343329220574301523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A069306.P343329220574301523

namespace A069306

/-- `abs(Δ[A077921(n+1)])` -/
def P343329220574301523.Spec : Prop :=
  ∀ n, P343329220574301523.a n = A069306 (n + 2)

end A069306

/-! ## A069306.P15067796647368476951

`∑[A078057(n+1)]+2`
-/

namespace A069306.P15067796647368476951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A069306.P15067796647368476951

namespace A069306

/-- `∑[A078057(n+1)]+2` -/
def P15067796647368476951.Spec : Prop :=
  ∀ n, P15067796647368476951.a n = A069306 (n + 2)

end A069306

/-!
# A069321: Stirling transform of A001563: a(0) = 1 and a(n) = Sum_{k=1..n} Stirling2(n,k)*k*k! for n >= 1.

The programs for A069321, there is no canonical definition to state claims against.
-/

/-! ## A069321.P12160862564773326730

`or(1, Δ[A032109(n)])`
-/

namespace A069321.P12160862564773326730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A069321.P12160862564773326730

/-! ## A069321.P9596047501438088779

`round(Δ[A052856(n)/2])`
-/

namespace A069321.P9596047501438088779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052856 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A069321.P9596047501438088779

/-! ## A069321.P9208610146135545151

`ceil(Δ[A000629(n)/4])`
-/

namespace A069321.P9208610146135545151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000629 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A069321.P9208610146135545151

/-! ## A069321.P4111606430021459107

`Δ[ceil(A002050(n)/4)]`
-/

namespace A069321.P4111606430021459107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002050 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069321.P4111606430021459107

/-! ## A069321.P15441908660167018478

`ceil(Δ[A007047(n)/8])`
-/

namespace A069321.P15441908660167018478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007047 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A069321.P15441908660167018478

/-! ## A069321.P7827093268171410096

`A052876(n)+A000670(n)`
-/

namespace A069321.P7827093268171410096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052876 n + A000670 n

end

end A069321.P7827093268171410096

/-! ## A069321.P5889643358614059044

`A000007(n)+Δ[A032109(n)]`
-/

namespace A069321.P5889643358614059044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A069321.P5889643358614059044

/-! ## A069321.P18237019209338264797

`record[A052841(n)]-A089677(n)`
-/

namespace A069321.P18237019209338264797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A089677 n

end

end A069321.P18237019209338264797

/-! ## A069321.P15210658118677227727

`A052875(n)+A052876(n)+1`
-/

namespace A069321.P15210658118677227727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + (A052876 n + 1)

end

end A069321.P15210658118677227727

/-!
# A069322: Square array read by antidiagonals of floor[(n+k)^(n+k)/(n^n*k^k)].

The programs for A069322, there is no canonical definition to state claims against.
-/

/-! ## A069322.P16978820417355012291

`A346129(or(A000161(n), A103450(n)))`
-/

namespace A069322.P16978820417355012291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (Int.lor (A000161 n) (A103450 n)).toNat

end

end A069322.P16978820417355012291

/-! ## A069322.P6389079062525924114

`A287272(A155864(n))+A071523(A086620(n))`
-/

namespace A069322.P6389079062525924114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A155864 n).toNat + A071523 (A086620 n).toNat

end

end A069322.P6389079062525924114

/-! ## A069322.P13258968839504070586

`A317538(A007318(n)%A352223(n+1))`
-/

namespace A069322.P13258968839504070586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317538 (Int.tmod (A007318 n) (A352223 (n + 1))).toNat

end

end A069322.P13258968839504070586

/-! ## A069322.P15868036346095285850

`A165326(A293603(n))+A074235(A028326(n))`
-/

namespace A069322.P15868036346095285850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A293603 n).toNat + A074235 (A028326 n).toNat

end

end A069322.P15868036346095285850

/-! ## A069322.P2640395905956550670

`A317538(A007318(n))%A100353(3*n+5)`
-/

namespace A069322.P2640395905956550670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317538 (A007318 n).toNat) (A100353 (3 * n + 5))

end

end A069322.P2640395905956550670

/-!
# A069323: Triangle in which n-th row gives ascending sequence of numbers derived from the (3x+1) problem, beginning with n. Numbers in one row share the same number of iteration steps required to reach the value of '1' when applying the (3x+1) algorithm. Each row terminates with a power of 2.

The programs for A069323, there is no canonical definition to state claims against.
-/

/-! ## A069323.P8219794558808716107

`A348752(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=20`
-/

namespace A069323.P8219794558808716107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 20] fun n a =>
  A348752 (a (n - 1)).toNat

end

end A069323.P8219794558808716107

/-!
# A069324: Primes in A068949.

The programs for A069324, there is no canonical definition to state claims against.
-/

/-! ## A069324.P6733243694656963032

`p?[6*comp[∑[3*n-1]]+1]`
-/

namespace A069324.P6733243694656963032
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A069324.P6733243694656963032

/-! ## A069324.P32111861214808776

`or(1, p?[A068949(n+1)])`
-/

namespace A069324.P32111861214808776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A069324.P32111861214808776

/-! ## A069324.P12291118753983095146

`A002476(comp[2^n-(∑[n]+1)])`
-/

namespace A069324.P12291118753983095146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A069324.P12291118753983095146

/-! ## A069324.P7185790541092785364

`A272409(comp[A002662(n)])`
-/

namespace A069324.P7185790541092785364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272409 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A069324.P7185790541092785364

/-!
# A069325: Number of 3 X n binary arrays with path of adjacent 1's from upper right corner to lower left corner.

The programs for A069325, there is no canonical definition to state claims against.
-/

/-! ## A069325.P14753851026761039702

`A359575(∑[n+3]+1)`
-/

namespace A069325.P14753851026761039702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359575 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A069325.P14753851026761039702

/-! ## A069325.P3271463811386793673

`record[gcd(A359575(n+4), A379598(n))]`
-/

namespace A069325.P3271463811386793673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A359575 (n + 4)) (A379598 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069325.P3271463811386793673

/-! ## A069325.P12286614611342295966

`record[A359575(n+1)/A123967(n+2)]`
-/

namespace A069325.P12286614611342295966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359575 (n + 1) : ℚ) / (A123967 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069325.P12286614611342295966

/-! ## A069325.P9571102742959013314

`record[A359575(n+1)%A111548(n+3)]`
-/

namespace A069325.P9571102742959013314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359575 (n + 1)) (A111548 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069325.P9571102742959013314

/-!
# A069326: Number of 4 X n binary arrays with path of adjacent 1's from upper right corner to lower left corner.

The programs for A069326, there is no canonical definition to state claims against.
-/

/-! ## A069326.P7898706734297583883

`A359575(∑[n+3]+7)`
-/

namespace A069326.P7898706734297583883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359575 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A069326.P7898706734297583883

/-! ## A069326.P6100151416372407647

`record[gcd(A359575(n+1), A379598(n+3))]`
-/

namespace A069326.P6100151416372407647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A359575 (n + 1)) (A379598 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069326.P6100151416372407647

/-! ## A069326.P1087607649639409401

`A008836(A110481(n+1))*A359575(A052905(n)+9)`
-/

namespace A069326.P1087607649639409401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A110481 (n + 1)).toNat * A359575 (A052905 n + 9).toNat

end

end A069326.P1087607649639409401

/-!
# A069327: Number of 5 X n binary arrays with path of adjacent 1's from upper right corner to lower left corner.

The programs for A069327, there is no canonical definition to state claims against.
-/

/-! ## A069327.P15115980491159193934

`A359575(A374005(n+1))`
-/

namespace A069327.P15115980491159193934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359575 (A374005 (n + 1)).toNat

end

end A069327.P15115980491159193934

/-! ## A069327.P17345446878541672186

`A359575(A046691(n+3))`
-/

namespace A069327.P17345446878541672186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359575 (A046691 (n + 3)).toNat

end

end A069327.P17345446878541672186

/-!
# A069328: Number of 6 X n binary arrays with path of adjacent 1's from upper right corner to lower left corner.

The programs for A069328, there is no canonical definition to state claims against.
-/

/-! ## A069328.P11825355668040710689

`A359575(A374007(n+1))`
-/

namespace A069328.P11825355668040710689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359575 (A374007 (n + 1)).toNat

end

end A069328.P11825355668040710689

/-!
# A069343: Number of n X n binary arrays with path of adjacent 1's from upper right corner to lower left corner.

The programs for A069343, there is no canonical definition to state claims against.
-/

/-! ## A069343.P7791418085629947855

`A359575((n+1)²+n²)`
-/

namespace A069343.P7791418085629947855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359575 ((n + 1) ^ 2 + n ^ 2)

end

end A069343.P7791418085629947855

/-!
# A069344: Number of n X n symmetric binary arrays with path of adjacent 1's from upper right corner to lower left corner.

The programs for A069344, there is no canonical definition to state claims against.
-/

/-! ## A069344.P5464102311812573667

`A235487(A239765(n)+A048898(n))`
-/

namespace A069344.P5464102311812573667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A239765 n + A048898 n).toNat

end

end A069344.P5464102311812573667

/-!
# A069345: n minus the number of its prime-factors: a(n) = n - A001222(n).

The programs for A069345, the canonical program `A069345.P4010349656515474516` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069345 has offset 1).

The definition of A069345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069345.P4010349656515474516

`n+1-A001222(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A069345

/-- `n+1-A001222(n+1)` -/
def P4010349656515474516.Spec : Prop :=
  ∀ n, P4010349656515474516.a n = A069345 (n + 1)

theorem P4010349656515474516.correct : P4010349656515474516.Spec := by
  intro n
  simp only [A069345, Nat.add_sub_cancel]

end A069345

/-! ## A069345.P4819799971372281580

`1-∑{e}[n+1, #]+n`
-/

namespace A069345.P4819799971372281580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + (n : ℤ)

end

end A069345.P4819799971372281580

namespace A069345

/-- `1-∑{e}[n+1, #]+n` -/
def P4819799971372281580.Spec : Prop :=
  ∀ n, P4819799971372281580.a n = A069345 (n + 1)

end A069345

/-! ## A069345.P17718383381198432622

`n+1-log2(∏{e}[n+1, 2^#])`
-/

namespace A069345.P17718383381198432622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A069345.P17718383381198432622

namespace A069345

/-- `n+1-log2(∏{e}[n+1, 2^#])` -/
def P17718383381198432622.Spec : Prop :=
  ∀ n, P17718383381198432622.a n = (A069345 (n + 1) : ℝ)

end A069345

/-! ## A069345.P16601843112981771761

`xor(-1, ∑{e}[n+1, #])+n+2`
-/

namespace A069345.P16601843112981771761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + (n + 2 : ℤ)

end

end A069345.P16601843112981771761

namespace A069345

/-- `xor(-1, ∑{e}[n+1, #])+n+2` -/
def P16601843112981771761.Spec : Prop :=
  ∀ n, P16601843112981771761.a n = A069345 (n + 1)

end A069345

/-! ## A069345.P4497757398395571075

`n+1-∑{p}[n+1, val(n+1, #)]`
-/

namespace A069345.P4497757398395571075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A069345.P4497757398395571075

namespace A069345

/-- `n+1-∑{p}[n+1, val(n+1, #)]` -/
def P4497757398395571075.Spec : Prop :=
  ∀ n, P4497757398395571075.a n = A069345 (n + 1)

end A069345

/-! ## A069345.P3740308881155513960

`A075795(n+1)+1`
-/

namespace A069345.P3740308881155513960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075795 (n + 1) + 1

end

end A069345.P3740308881155513960

namespace A069345

/-- `A075795(n+1)+1` -/
def P3740308881155513960.Spec : Prop :=
  ∀ n, P3740308881155513960.a n = A069345 (n + 1)

theorem P3740308881155513960.correct : P3740308881155513960.Spec := by
  intro n
  simp only [A069345, Nat.add_sub_cancel, A069345.P3740308881155513960.a, A069345.P4010349656515474516.a, A001222, A001222.P11318177267732088261.a, A075795, A075795.P380277726918487259.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069345

/-! ## A069345.P3636662648435733421

`n+1-Δ[A022559(n)]`
-/

namespace A069345.P3636662648435733421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A069345.P3636662648435733421

namespace A069345

/-- `n+1-Δ[A022559(n)]` -/
def P3636662648435733421.Spec : Prop :=
  ∀ n, P3636662648435733421.a n = A069345 (n + 1)

end A069345

/-! ## A069345.P1171286348675523411

`2-A073093(n+1)+n`
-/

namespace A069345.P1171286348675523411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A073093 (n + 1) + (n : ℤ)

end

end A069345.P1171286348675523411

namespace A069345

/-- `2-A073093(n+1)+n` -/
def P1171286348675523411.Spec : Prop :=
  ∀ n, P1171286348675523411.a n = A069345 (n + 1)

theorem P1171286348675523411.correct : P1171286348675523411.Spec := by
  intro n
  simp only [A069345, Nat.add_sub_cancel, A069345.P1171286348675523411.a, A069345.P4010349656515474516.a, A001222, A001222.P11318177267732088261.a, A073093, A073093.P258081957281391684.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069345

/-! ## A069345.P9343690227038596348

`A317531(2*(n+1))+n`
-/

namespace A069345.P9343690227038596348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (2 * (n + 1)) + (n : ℤ)

end

end A069345.P9343690227038596348

namespace A069345

/-- `A317531(2*(n+1))+n` -/
def P9343690227038596348.Spec : Prop :=
  ∀ n, P9343690227038596348.a n = A069345 (n + 1)

end A069345

/-! ## A069345.P838758245371392689

`Δ[n²]-A222312(n+1)`
-/

namespace A069345.P838758245371392689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A222312 (n + 1)

end

end A069345.P838758245371392689

namespace A069345

/-- `Δ[n²]-A222312(n+1)` -/
def P838758245371392689.Spec : Prop :=
  ∀ n, P838758245371392689.a n = A069345 (n + 1)

theorem P838758245371392689.correct : P838758245371392689.Spec := by
  intro n
  simp only [A069345, Nat.add_sub_cancel, A069345.P838758245371392689.f1, A069345.P838758245371392689.a, A069345.P4010349656515474516.a, A001222, A001222.P11318177267732088261.a, A222312, A222312.P5225546657519994950.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069345

/-! ## A069345.P8968136712975403908

`1-log2(A061142(n+1))+n`
-/

namespace A069345.P8968136712975403908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.logb 2 (A061142 (n + 1) : ℝ) + (n : ℝ)

end

end A069345.P8968136712975403908

namespace A069345

/-- `1-log2(A061142(n+1))+n` -/
def P8968136712975403908.Spec : Prop :=
  ∀ n, P8968136712975403908.a n = (A069345 (n + 1) : ℝ)

end A069345

/-! ## A069345.P6327373224946088389

`2*(n+1)-A064800(n+1)`
-/

namespace A069345.P6327373224946088389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A064800 (n + 1)

end

end A069345.P6327373224946088389

namespace A069345

/-- `2*(n+1)-A064800(n+1)` -/
def P6327373224946088389.Spec : Prop :=
  ∀ n, P6327373224946088389.a n = A069345 (n + 1)

theorem P6327373224946088389.correct : P6327373224946088389.Spec := by
  intro n
  simp only [A069345, Nat.add_sub_cancel, A069345.P6327373224946088389.a, A069345.P4010349656515474516.a, A001222, A001222.P11318177267732088261.a, A064800, A064800.P9178262813478475092.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069345

/-! ## A069345.P12491605997433151826

`n+1-A255201(n+1)/2`
-/

namespace A069345.P12491605997433151826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A255201 (n + 1) : ℚ) / 2

end

end A069345.P12491605997433151826

namespace A069345

/-- `n+1-A255201(n+1)/2` -/
def P12491605997433151826.Spec : Prop :=
  ∀ n, P12491605997433151826.a n = (A069345 (n + 1) : ℚ)

theorem P12491605997433151826.correct : P12491605997433151826.Spec := by
  intro n
  simp only [A069345, Nat.add_sub_cancel, A069345.P12491605997433151826.a, A069345.P4010349656515474516.a, A001222, A001222.P11318177267732088261.a, A255201, A255201.P10260826747868353202.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069345

/-! ## A069345.P6552664571318935141

`n-A387470(n+1)/(n+1)`
-/

namespace A069345.P6552664571318935141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A387470 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A069345.P6552664571318935141

namespace A069345

/-- `n-A387470(n+1)/(n+1)` -/
def P6552664571318935141.Spec : Prop :=
  ∀ n, P6552664571318935141.a n = (A069345 (n + 1) : ℚ)

end A069345

/-! ## A069345.P210286938164188553

`Δ[a(n-1)-(A001222(n)-n)]` with `a(0)=0`
-/

namespace A069345.P210286938164188553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (A001222 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069345.P210286938164188553

namespace A069345

/-- `Δ[a(n-1)-(A001222(n)-n)]` -/
def P210286938164188553.Spec : Prop :=
  ∀ n, P210286938164188553.a n = A069345 (n + 1)

end A069345

/-! ## A069345.P7212685547429768650

`n+1-A066959(n+1)/(n+1)`
-/

namespace A069345.P7212685547429768650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A066959 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A069345.P7212685547429768650

namespace A069345

/-- `n+1-A066959(n+1)/(n+1)` -/
def P7212685547429768650.Spec : Prop :=
  ∀ n, P7212685547429768650.a n = (A069345 (n + 1) : ℚ)

end A069345

/-! ## A069345.P7657039625875315028

`1-(A001222(2*n-(n-1))-n)`
-/

namespace A069345.P7657039625875315028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ))

end

end A069345.P7657039625875315028

namespace A069345

/-- `1-(A001222(2*n-(n-1))-n)` -/
def P7657039625875315028.Spec : Prop :=
  ∀ n, P7657039625875315028.a n = A069345 (n + 1)

end A069345

/-! ## A069345.P8414590635349931562

`n+2-A000005(∏{e}[n+1, 2^#])`
-/

namespace A069345.P8414590635349931562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p)

end

end A069345.P8414590635349931562

namespace A069345

/-- `n+2-A000005(∏{e}[n+1, 2^#])` -/
def P8414590635349931562.Spec : Prop :=
  ∀ n, P8414590635349931562.a n = A069345 (n + 1)

end A069345

/-! ## A069345.P11559671036256404018

`n-A023443(Δ[A022559(n)])`
-/

namespace A069345.P11559671036256404018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (f1 (n + 1) - f1 n).toNat

end

end A069345.P11559671036256404018

namespace A069345

/-- `n-A023443(Δ[A022559(n)])` -/
def P11559671036256404018.Spec : Prop :=
  ∀ n, P11559671036256404018.a n = A069345 (n + 1)

end A069345

/-! ## A069345.P16809170674634001192

`A356068(n+1)+A025532(n)`
-/

namespace A069345.P16809170674634001192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (n + 1) + A025532 n

end

end A069345.P16809170674634001192

namespace A069345

/-- `A356068(n+1)+A025532(n)` -/
def P16809170674634001192.Spec : Prop :=
  ∀ n, P16809170674634001192.a n = A069345 (n + 1)

end A069345

/-!
# A069346: Primes of the form n - Omega(n), where Omega(n) is the number of prime factors of n, A001222(n).

The programs for A069346, the canonical program `A069346.P10393280662014959909` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069346 has offset 1).

The definition of A069346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069346.P10393280662014959909

`eq[char[n-∑{e}[n, #]], ∑{e}[n, #]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069346

/-- `eq[char[n-∑{e}[n, #]], ∑{e}[n, #]]` -/
def P10393280662014959909.Spec : Prop :=
  ∀ n, (P10393280662014959909.a n : ℤ) = A069346 (n + 1)

theorem P10393280662014959909.correct : P10393280662014959909.Spec := by
  intro n
  simp only [A069346, Nat.add_sub_cancel]

end A069346

/-! ## A069346.P16851710173867819645

`record[A014963(A069345(n+4)%A175664(2*n+1))]`
-/

namespace A069346.P16851710173867819645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (A069345 (n + 4)) (A175664 (2 * n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069346.P16851710173867819645

namespace A069346

/-- `record[A014963(A069345(n+4)%A175664(2*n+1))]` -/
def P16851710173867819645.Spec : Prop :=
  ∀ n, P16851710173867819645.a n = A069346 (n + 1)

end A069346

/-! ## A069346.P15128510791161229976

`record[A020639(A069345(n+3)²)]`
-/

namespace A069346.P15128510791161229976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A069345 (n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069346.P15128510791161229976

namespace A069346

/-- `record[A020639(A069345(n+3)²)]` -/
def P15128510791161229976.Spec : Prop :=
  ∀ n, P15128510791161229976.a n = A069346 (n + 1)

end A069346

/-! ## A069346.P10424622766943648664

`A006530(record[p?[n+1-A001222(n+1)]²])`
-/

namespace A069346.P10424622766943648664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069346.P10424622766943648664

namespace A069346

/-- `A006530(record[p?[n+1-A001222(n+1)]²])` -/
def P10424622766943648664.Spec : Prop :=
  ∀ n, P10424622766943648664.a n = A069346 (n + 1)

end A069346

/-! ## A069346.P11985485263523031945

`A020639(record[p?[n+1-A001222(n+1)]²])`
-/

namespace A069346.P11985485263523031945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069346.P11985485263523031945

namespace A069346

/-- `A020639(record[p?[n+1-A001222(n+1)]²])` -/
def P11985485263523031945.Spec : Prop :=
  ∀ n, P11985485263523031945.a n = A069346 (n + 1)

end A069346

/-!
# A069347: Number of ways to represent primes as A069346(n)=k-A001222(k).

The programs for A069347, there is no canonical definition to state claims against.
-/

/-! ## A069347.P758789980716404278

`A349410(A312272(n)+9)`
-/

namespace A069347.P758789980716404278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349410 (A312272 n + 9).toNat

end

end A069347.P758789980716404278

/-! ## A069347.P14725087543314537047

`gcd(A020639(A138876(n+1)), A138862(2*(n+2)))`
-/

namespace A069347.P14725087543314537047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A138876 (n + 1)).toNat) (A138862 (2 * (n + 2)))

end

end A069347.P14725087543314537047

/-! ## A069347.P8414379182322318052

`∏{e}[A000580(n+7)-A010223(n), #]`
-/

namespace A069347.P8414379182322318052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - A010223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A069347.P8414379182322318052

/-! ## A069347.P9166744353762956355

`gcd(A001221(A104182(n+1)), A167450(n+1))`
-/

namespace A069347.P9166744353762956355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A104182 (n + 1)).toNat) (A167450 (n + 1))

end

end A069347.P9166744353762956355

/-! ## A069347.P4709049745861194128

`gcd(A257681(A000045(n)), A333381(3*(n+1)))`
-/

namespace A069347.P4709049745861194128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257681 (A000045 n).toNat) (A333381 (3 * (n + 1)))

end

end A069347.P4709049745861194128

/-!
# A069348: Primes of the form k + Omega(k), where Omega(k) is the number of prime factors of k, A001222(k).

The programs for A069348, the canonical program `A069348.P4647406691888658330` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069348 has offset 1).

The definition of A069348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069348.P4647406691888658330

`p?[A337455(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A069348

/-- `p?[A337455(n+1)]` -/
def P4647406691888658330.Spec : Prop :=
  ∀ n, P4647406691888658330.a n = A069348 (n + 1)

theorem P4647406691888658330.correct : P4647406691888658330.Spec := by
  intro n
  simp only [A069348, Nat.add_sub_cancel]

end A069348

/-! ## A069348.P18418820276790127578

`filter[A337455(n+1), A010051(#)]`
-/

namespace A069348.P18418820276790127578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A069348.P18418820276790127578

namespace A069348

/-- `filter[A337455(n+1), A010051(#)]` -/
def P18418820276790127578.Spec : Prop :=
  ∀ n, P18418820276790127578.a n = A069348 (n + 1)

end A069348

/-! ## A069348.P7583363315995092994

`∩[A000040(n+1), A337455(n+1)]`
-/

namespace A069348.P7583363315995092994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069348.P7583363315995092994

namespace A069348

/-- `∩[A000040(n+1), A337455(n+1)]` -/
def P7583363315995092994.Spec : Prop :=
  ∀ n, (P7583363315995092994.a n : ℤ) = A069348 (n + 1)

end A069348

/-! ## A069348.P2250195776982314601

`∩[A004139(n+1), A337455(n+1)]`
-/

namespace A069348.P2250195776982314601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069348.P2250195776982314601

namespace A069348

/-- `∩[A004139(n+1), A337455(n+1)]` -/
def P2250195776982314601.Spec : Prop :=
  ∀ n, (P2250195776982314601.a n : ℤ) = A069348 (n + 1)

end A069348

/-! ## A069348.P12724108170407315414

`∩[A045319(n+1), A337455(n+1)]`
-/

namespace A069348.P12724108170407315414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069348.P12724108170407315414

namespace A069348

/-- `∩[A045319(n+1), A337455(n+1)]` -/
def P12724108170407315414.Spec : Prop :=
  ∀ n, (P12724108170407315414.a n : ℤ) = A069348 (n + 1)

end A069348

/-! ## A069348.P14135239993114664783

`∩[A065091(n+1), A337455(n+1)]`
-/

namespace A069348.P14135239993114664783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069348.P14135239993114664783

namespace A069348

/-- `∩[A065091(n+1), A337455(n+1)]` -/
def P14135239993114664783.Spec : Prop :=
  ∀ n, (P14135239993114664783.a n : ℤ) = A069348 (n + 1)

end A069348

/-! ## A069348.P13481529904979835857

`∩[A182986(n+1), A337455(n+1)]`
-/

namespace A069348.P13481529904979835857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069348.P13481529904979835857

namespace A069348

/-- `∩[A182986(n+1), A337455(n+1)]` -/
def P13481529904979835857.Spec : Prop :=
  ∀ n, (P13481529904979835857.a n : ℤ) = A069348 (n + 1)

end A069348

/-! ## A069348.P1631207793705396884

`∩[A197636(n+1), A337455(n+1)]`
-/

namespace A069348.P1631207793705396884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069348.P1631207793705396884

namespace A069348

/-- `∩[A197636(n+1), A337455(n+1)]` -/
def P1631207793705396884.Spec : Prop :=
  ∀ n, (P1631207793705396884.a n : ℤ) = A069348 (n + 1)

end A069348

/-! ## A069348.P8193210140094006277

`filter[A337455(n+2), A080339(#)]`
-/

namespace A069348.P8193210140094006277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337455 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A069348.P8193210140094006277

namespace A069348

/-- `filter[A337455(n+2), A080339(#)]` -/
def P8193210140094006277.Spec : Prop :=
  ∀ n, P8193210140094006277.a n = A069348 (n + 1)

end A069348

/-! ## A069348.P2107982846695281997

`filter[A337455(n+2), A080545(#)]`
-/

namespace A069348.P2107982846695281997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337455 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A069348.P2107982846695281997

namespace A069348

/-- `filter[A337455(n+2), A080545(#)]` -/
def P2107982846695281997.Spec : Prop :=
  ∀ n, P2107982846695281997.a n = A069348 (n + 1)

end A069348

/-!
# A069349: Number of ways to represent primes as A069348(n)=k+A001222(k).

The programs for A069349, there is no canonical definition to state claims against.
-/

/-! ## A069349.P17360049924525384492

`gcd(n+1, A179129(A088609(n+1)))`
-/

namespace A069349.P17360049924525384492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A179129 (A088609 (n + 1)).toNat)

end

end A069349.P17360049924525384492

/-! ## A069349.P10879844500670630170

`gcd(∑[A261404(n+1)], A332820(n+1))`
-/

namespace A069349.P10879844500670630170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261404 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A332820 (n + 1))

end

end A069349.P10879844500670630170

/-! ## A069349.P8753813732925294586

`A374997(or(A301672(n), A333766(n)))`
-/

namespace A069349.P8753813732925294586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374997 (Int.lor (A301672 n) (A333766 n)).toNat

end

end A069349.P8753813732925294586

/-! ## A069349.P17888352117405339407

`gcd(A016993(n), A131856(A000032(n)))`
-/

namespace A069349.P17888352117405339407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016993 n) (A131856 (A000032 n).toNat)

end

end A069349.P17888352117405339407

/-! ## A069349.P2089692647775636487

`gcd(n+1, A097509(A000048(n)))`
-/

namespace A069349.P2089692647775636487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A097509 (A000048 n).toNat)

end

end A069349.P2089692647775636487

/-!
# A069350: Primes having no representation of the form n - A001222(n), complement of A069346.

The programs for A069350, the canonical program `A069350.P8083194021190951782` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069350 has offset 1).

The definition of A069350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069350.P2993476239546001913

`p?[A386572(n+1)]`
-/

namespace A069350.P2993476239546001913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069350.P2993476239546001913

namespace A069350

/-- `p?[A386572(n+1)]` -/
def P2993476239546001913.Spec : Prop :=
  ∀ n, P2993476239546001913.a n = A069350 (n + 1)

end A069350

/-! ## A069350.P8083194021190951782

`p?[comp[n+1-A001222(n+1)]]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A069350

/-- `p?[comp[n+1-A001222(n+1)]]` -/
def P8083194021190951782.Spec : Prop :=
  ∀ n, (P8083194021190951782.a n : ℤ) = A069350 (n + 1)

theorem P8083194021190951782.correct : P8083194021190951782.Spec := by
  intro n
  simp only [A069350, Nat.add_sub_cancel]

end A069350

/-! ## A069350.P12504046707137854984

`filter[A386572(n+1), A010051(#)]`
-/

namespace A069350.P12504046707137854984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A069350.P12504046707137854984

namespace A069350

/-- `filter[A386572(n+1), A010051(#)]` -/
def P12504046707137854984.Spec : Prop :=
  ∀ n, P12504046707137854984.a n = A069350 (n + 1)

end A069350

/-! ## A069350.P8201566345699516515

`∩[A000040(n+1), A386572(n+1)]`
-/

namespace A069350.P8201566345699516515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P8201566345699516515

namespace A069350

/-- `∩[A000040(n+1), A386572(n+1)]` -/
def P8201566345699516515.Spec : Prop :=
  ∀ n, (P8201566345699516515.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P14532018540110707930

`∩[A004139(n+1), A386572(n+1)]`
-/

namespace A069350.P14532018540110707930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P14532018540110707930

namespace A069350

/-- `∩[A004139(n+1), A386572(n+1)]` -/
def P14532018540110707930.Spec : Prop :=
  ∀ n, (P14532018540110707930.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P4872277808555248208

`∩[A006005(n+1), A386572(n+1)]`
-/

namespace A069350.P4872277808555248208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P4872277808555248208

namespace A069350

/-- `∩[A006005(n+1), A386572(n+1)]` -/
def P4872277808555248208.Spec : Prop :=
  ∀ n, (P4872277808555248208.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P4937720833494609450

`∩[A008578(n+1), A386572(n+1)]`
-/

namespace A069350.P4937720833494609450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P4937720833494609450

namespace A069350

/-- `∩[A008578(n+1), A386572(n+1)]` -/
def P4937720833494609450.Spec : Prop :=
  ∀ n, (P4937720833494609450.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P16762652753364125844

`∩[A033946(n+1), A386572(n+1)]`
-/

namespace A069350.P16762652753364125844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P16762652753364125844

namespace A069350

/-- `∩[A033946(n+1), A386572(n+1)]` -/
def P16762652753364125844.Spec : Prop :=
  ∀ n, (P16762652753364125844.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P17224714785390233124

`∩[A045319(n+1), A386572(n+1)]`
-/

namespace A069350.P17224714785390233124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P17224714785390233124

namespace A069350

/-- `∩[A045319(n+1), A386572(n+1)]` -/
def P17224714785390233124.Spec : Prop :=
  ∀ n, (P17224714785390233124.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P12433561913804516062

`∩[A046022(n+1), A386572(n+1)]`
-/

namespace A069350.P12433561913804516062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P12433561913804516062

namespace A069350

/-- `∩[A046022(n+1), A386572(n+1)]` -/
def P12433561913804516062.Spec : Prop :=
  ∀ n, (P12433561913804516062.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P2341123701926820487

`∩[A051948(n+1), A386572(n+1)]`
-/

namespace A069350.P2341123701926820487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P2341123701926820487

namespace A069350

/-- `∩[A051948(n+1), A386572(n+1)]` -/
def P2341123701926820487.Spec : Prop :=
  ∀ n, (P2341123701926820487.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P5543176945802416029

`∩[A062972(n+1), A386572(n+1)]`
-/

namespace A069350.P5543176945802416029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P5543176945802416029

namespace A069350

/-- `∩[A062972(n+1), A386572(n+1)]` -/
def P5543176945802416029.Spec : Prop :=
  ∀ n, (P5543176945802416029.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P4148536603394639448

`∩[A065091(n+1), A386572(n+1)]`
-/

namespace A069350.P4148536603394639448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P4148536603394639448

namespace A069350

/-- `∩[A065091(n+1), A386572(n+1)]` -/
def P4148536603394639448.Spec : Prop :=
  ∀ n, (P4148536603394639448.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P12128729372092415106

`∩[A066050(n+1), A386572(n+1)]`
-/

namespace A069350.P12128729372092415106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P12128729372092415106

namespace A069350

/-- `∩[A066050(n+1), A386572(n+1)]` -/
def P12128729372092415106.Spec : Prop :=
  ∀ n, (P12128729372092415106.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P13999624811027085957

`∩[A067126(n+1), A386572(n+1)]`
-/

namespace A069350.P13999624811027085957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P13999624811027085957

namespace A069350

/-- `∩[A067126(n+1), A386572(n+1)]` -/
def P13999624811027085957.Spec : Prop :=
  ∀ n, (P13999624811027085957.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P10018723211033786970

`∩[A116974(n+1), A386572(n+1)]`
-/

namespace A069350.P10018723211033786970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P10018723211033786970

namespace A069350

/-- `∩[A116974(n+1), A386572(n+1)]` -/
def P10018723211033786970.Spec : Prop :=
  ∀ n, (P10018723211033786970.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P11540622495017145421

`∩[A158611(n+1), A386572(n+1)]`
-/

namespace A069350.P11540622495017145421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P11540622495017145421

namespace A069350

/-- `∩[A158611(n+1), A386572(n+1)]` -/
def P11540622495017145421.Spec : Prop :=
  ∀ n, (P11540622495017145421.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P7222628321627639481

`∩[A161346(n+1), A386572(n+1)]`
-/

namespace A069350.P7222628321627639481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P7222628321627639481

namespace A069350

/-- `∩[A161346(n+1), A386572(n+1)]` -/
def P7222628321627639481.Spec : Prop :=
  ∀ n, (P7222628321627639481.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P2956339801708780188

`∩[A173919(n+1), A386572(n+1)]`
-/

namespace A069350.P2956339801708780188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P2956339801708780188

namespace A069350

/-- `∩[A173919(n+1), A386572(n+1)]` -/
def P2956339801708780188.Spec : Prop :=
  ∀ n, (P2956339801708780188.a n : ℤ) = A069350 (n + 1)

end A069350

/-! ## A069350.P14037645566037016287

`∩[A174219(n+1), A386572(n+1)]`
-/

namespace A069350.P14037645566037016287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069350.P14037645566037016287

namespace A069350

/-- `∩[A174219(n+1), A386572(n+1)]` -/
def P14037645566037016287.Spec : Prop :=
  ∀ n, (P14037645566037016287.a n : ℤ) = A069350 (n + 1)

end A069350

/-!
# A069351: Primes having no representation of the form n + A001222(n), complement of A069348.

The programs for A069351, the canonical program `A069351.P6582592819762674898` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069351 has offset 1).

The definition of A069351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069351.P6582592819762674898

`∩[A000040(n+1), comp[A001222(n+1)+n]+1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A069351

/-- `∩[A000040(n+1), comp[A001222(n+1)+n]+1]` -/
def P6582592819762674898.Spec : Prop :=
  ∀ n, (P6582592819762674898.a n : ℤ) = A069351 (n + 1)

theorem P6582592819762674898.correct : P6582592819762674898.Spec := by
  intro n
  simp only [A069351, Nat.add_sub_cancel]

end A069351

/-! ## A069351.P17691170046076610335

`p?[comp[A001222(n+1)+1+n]]`
-/

namespace A069351.P17691170046076610335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A069351.P17691170046076610335

namespace A069351

/-- `p?[comp[A001222(n+1)+1+n]]` -/
def P17691170046076610335.Spec : Prop :=
  ∀ n, (P17691170046076610335.a n : ℤ) = A069351 (n + 1)

end A069351

/-! ## A069351.P12973959281106953705

`p?[comp[2*n-(n-1-A001222(2*n-(n-1)))]]`
-/

namespace A069351.P12973959281106953705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A069351.P12973959281106953705

namespace A069351

/-- `p?[comp[2*n-(n-1-A001222(2*n-(n-1)))]]` -/
def P12973959281106953705.Spec : Prop :=
  ∀ n, (P12973959281106953705.a n : ℤ) = A069351 (n + 1)

end A069351

/-! ## A069351.P17373617526482508992

`record[A014963(comp[A001222(n+1)+n]+1)]`
-/

namespace A069351.P17373617526482508992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069351.P17373617526482508992

namespace A069351

/-- `record[A014963(comp[A001222(n+1)+n]+1)]` -/
def P17373617526482508992.Spec : Prop :=
  ∀ n, P17373617526482508992.a n = A069351 (n + 1)

end A069351

/-! ## A069351.P1253822574558330845

`record[A051664(comp[A001222(n+1)+n-1]+2)]`
-/

namespace A069351.P1253822574558330845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + ((n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069351.P1253822574558330845

namespace A069351

/-- `record[A051664(comp[A001222(n+1)+n-1]+2)]` -/
def P1253822574558330845.Spec : Prop :=
  ∀ n, P1253822574558330845.a n = A069351 (n + 1)

end A069351

/-!
# A069352: Total number of prime factors of 3-smooth numbers.

The programs for A069352, there is no canonical definition to state claims against.
-/

/-! ## A069352.P5184278971819958682

`A001222(A033845(n+1))-2`
-/

namespace A069352.P5184278971819958682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033845 (n + 1)).toNat - 2

end

end A069352.P5184278971819958682

/-! ## A069352.P15631072182969141302

`A227861(n+1)-2`
-/

namespace A069352.P15631072182969141302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227861 (n + 1) - 2

end

end A069352.P15631072182969141302

/-! ## A069352.P2744278510716422662

`A023444(A227861(n+1))`
-/

namespace A069352.P2744278510716422662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A227861 (n + 1)).toNat

end

end A069352.P2744278510716422662

/-! ## A069352.P10679991721311075208

`A022328(n+1)+A022329(n+1)`
-/

namespace A069352.P10679991721311075208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (n + 1) + A022329 (n + 1)

end

end A069352.P10679991721311075208

/-! ## A069352.P16152123141027900598

`A022328(n+1)+A134583(n+1)-1`
-/

namespace A069352.P16152123141027900598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (n + 1) + (A134583 (n + 1) - 1)

end

end A069352.P16152123141027900598

/-! ## A069352.P18429048874272253672

`A022329(n+1)+A158456(n+1)-1`
-/

namespace A069352.P18429048874272253672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1) + (A158456 (n + 1) - 1)

end

end A069352.P18429048874272253672

/-! ## A069352.P1475038840909461031

`A134583(n+1)+A158456(n+1)-2`
-/

namespace A069352.P1475038840909461031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134583 (n + 1) + (A158456 (n + 1) - 2)

end

end A069352.P1475038840909461031

/-! ## A069352.P14566493433105264529

`(A086419(n+1)-A022329(n+1))/2`
-/

namespace A069352.P14566493433105264529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086419 (n + 1) - A022329 (n + 1) : ℚ) / 2

end

end A069352.P14566493433105264529

/-! ## A069352.P3568173686582028755

`A022329(n+1)+val(A003586(n+1), 2)`
-/

namespace A069352.P3568173686582028755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1) + (SequenceMachineLib.valuation (A003586 (n + 1)).toNat 2 : ℤ)

end

end A069352.P3568173686582028755

/-! ## A069352.P5915544934090646704

`A022328(n+1)+A022328(A372744(n+1))`
-/

namespace A069352.P5915544934090646704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (n + 1) + A022328 (A372744 (n + 1)).toNat

end

end A069352.P5915544934090646704

/-! ## A069352.P1375471816829846325

`A022329(n+1)+A022329(A372744(n+1))`
-/

namespace A069352.P1375471816829846325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1) + A022329 (A372744 (n + 1)).toNat

end

end A069352.P1375471816829846325

/-! ## A069352.P3294438018413836130

`A124831(eq[2, A124830(n+1)])-2`
-/

namespace A069352.P3294438018413836130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 2

end

end A069352.P3294438018413836130

/-! ## A069352.P13078416016776348072

`A254078(n+2)%A227861(n+1)`
-/

namespace A069352.P13078416016776348072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A227861 (n + 1))

end

end A069352.P13078416016776348072

/-! ## A069352.P5859138627291497381

`∑{e}[∑[A061987(n)], #]`
-/

namespace A069352.P5859138627291497381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A069352.P5859138627291497381

/-! ## A069352.P10392354102313221413

`∑{e}[A003586(n+1), #]`
-/

namespace A069352.P10392354102313221413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A069352.P10392354102313221413

/-! ## A069352.P7051208545535626982

`∑{e}[sqrt(A025620(n+1)), #]`
-/

namespace A069352.P7051208545535626982
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025620 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A069352.P7051208545535626982

/-! ## A069352.P10251571981408884372

`A001222(∑[A061987(n)])`
-/

namespace A069352.P10251571981408884372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069352.P10251571981408884372

/-! ## A069352.P2251938428850542193

`A001222(Δ[A259823(n)])`
-/

namespace A069352.P2251938428850542193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A069352.P2251938428850542193

/-! ## A069352.P8166667550426680648

`A001222(A003586(n+1))`
-/

namespace A069352.P8166667550426680648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003586 (n + 1)).toNat

end

end A069352.P8166667550426680648

/-! ## A069352.P15199279611718530324

`A001222(sqrt(A025620(n+1)))`
-/

namespace A069352.P15199279611718530324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A069352.P15199279611718530324

/-!
# A069353: Numbers of form 2^i*3^j - 1 with i, j >= 0.

The programs for A069353, there is no canonical definition to state claims against.
-/

/-! ## A069353.P17631298621709635962

`A003586(n+1)-1`
-/

namespace A069353.P17631298621709635962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) - 1

end

end A069353.P17631298621709635962

/-! ## A069353.P16177036637173731304

`∑[A061987(n)]-1`
-/

namespace A069353.P16177036637173731304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A069353.P16177036637173731304

/-! ## A069353.P13473496448530273314

`Δ[A259823(n)]-1`
-/

namespace A069353.P13473496448530273314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A069353.P13473496448530273314

/-! ## A069353.P11749672976233755663

`A055600(n+1)-2`
-/

namespace A069353.P11749672976233755663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1) - 2

end

end A069353.P11749672976233755663

/-! ## A069353.P7739141024116073501

`(A190812(n+1)-1)/2`
-/

namespace A069353.P7739141024116073501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190812 (n + 1) - 1 : ℚ) / 2

end

end A069353.P7739141024116073501

/-! ## A069353.P15577963398065615801

`A065119(n+1)/3-1`
-/

namespace A069353.P15577963398065615801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065119 (n + 1) : ℚ) / 3 - 1

end

end A069353.P15577963398065615801

/-! ## A069353.P16523047184164088513

`ceil((A033845(n+1)/3-1)/2)-1`
-/

namespace A069353.P16523047184164088513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A033845 (n + 1) : ℚ) / 3 - 1) / 2⌉ - 1

end

end A069353.P16523047184164088513

/-! ## A069353.P14663330435492829530

`∪[A024023(n), A190812(n+1)]`
-/

namespace A069353.P14663330435492829530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069353.P14663330435492829530

/-! ## A069353.P513208622844391445

`A190812(n+1)%A003586(n+1)`
-/

namespace A069353.P513208622844391445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190812 (n + 1)) (A003586 (n + 1))

end

end A069353.P513208622844391445

/-! ## A069353.P13072161934720367600

`∪[A062318(n+1), A190812(n+1)]`
-/

namespace A069353.P13072161934720367600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069353.P13072161934720367600

/-! ## A069353.P6360928299660234756

`A347982(A140635(n+1))+A003586(n+1)`
-/

namespace A069353.P6360928299660234756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347982 (A140635 (n + 1)).toNat + A003586 (n + 1)

end

end A069353.P6360928299660234756

/-! ## A069353.P2541444606354032251

`A007694(n+2)/2-1`
-/

namespace A069353.P2541444606354032251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (n + 2) : ℚ) / 2 - 1

end

end A069353.P2541444606354032251

/-! ## A069353.P8170104991593300362

`sqrt(A025620(n+1))-1`
-/

namespace A069353.P8170104991593300362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025620 (n + 1) : ℝ) - 1

end

end A069353.P8170104991593300362

/-! ## A069353.P17876169679984741808

`A008836(A026424(n+1))+A003586(n+1)`
-/

namespace A069353.P17876169679984741808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A026424 (n + 1)).toNat + A003586 (n + 1)

end

end A069353.P17876169679984741808

/-! ## A069353.P10323600371429187281

`A186711(A186712(n+1))-1`
-/

namespace A069353.P10323600371429187281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186711 (A186712 (n + 1)).toNat - 1

end

end A069353.P10323600371429187281

/-! ## A069353.P17238782993148363966

`(A000423(n+3)/2-3)/3`
-/

namespace A069353.P17238782993148363966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000423 (n + 3) : ℚ) / 2 - 3) / 3

end

end A069353.P17238782993148363966

/-! ## A069353.P4660625936222795531

`A164560(n+1)%A003586(n+1)`
-/

namespace A069353.P4660625936222795531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164560 (n + 1)) (A003586 (n + 1))

end

end A069353.P4660625936222795531

/-! ## A069353.P9139818715753673585

`A101676(A249734(2*n+5))+A003586(n+1)`
-/

namespace A069353.P9139818715753673585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101676 (A249734 (2 * n + 5)).toNat + A003586 (n + 1)

end

end A069353.P9139818715753673585

/-! ## A069353.P10772981228189223956

`A033999(2*n+1)+record[A003586(A069352(n+2))]`
-/

namespace A069353.P10772981228189223956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A069352 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069353.P10772981228189223956

/-! ## A069353.P13307509202089685691

`record[n/floor(sqrt(A006530(n+1)))]`
-/

namespace A069353.P13307509202089685691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.sqrt (A006530 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069353.P13307509202089685691

/-!
# A069354: Lowest base with simple divisibility test for n primes; smallest B such that omega(B) + omega(B-1) = n.

The programs for A069354, there is no canonical definition to state claims against.
-/

/-! ## A069354.P8090905154099583772

`A059958(n+1)+1`
-/

namespace A069354.P8090905154099583772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059958 (n + 1) + 1

end

end A069354.P8090905154099583772

/-! ## A069354.P1980448099193118404

`ceil(cosh(log(A219017(n+1))))`
-/

namespace A069354.P1980448099193118404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A219017 (n + 1) : ℝ))⌉

end

end A069354.P1980448099193118404

/-! ## A069354.P9808554655209681962

`A027336(∑{p}[n+1, n²%#]%(n+1))+floor(A219017(n+1)/2)`
-/

namespace A069354.P9808554655209681962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 ((∑ p ∈ Nat.primeFactors (f1 n), n ^ 2 % p) % (n + 1)) + ⌊(A219017 (n + 1) : ℚ) / 2⌋

end

end A069354.P9808554655209681962

/-! ## A069354.P16624149316136769777

`A027336(A025901(n))+floor(A219017(n+1)/2)`
-/

namespace A069354.P16624149316136769777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (A025901 n).toNat + ⌊(A219017 (n + 1) : ℚ) / 2⌋

end

end A069354.P16624149316136769777

/-! ## A069354.P1464478565532545672

`A158388(A016969(n))+floor(A219017(n+1)/2)`
-/

namespace A069354.P1464478565532545672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A016969 n).toNat + ⌊(A219017 (n + 1) : ℚ) / 2⌋

end

end A069354.P1464478565532545672

/-!
# A069355: Numbers of form 2^i*3^j - (i+j) with i, j >= 0.

The programs for A069355, there is no canonical definition to state claims against.
-/

/-! ## A069355.P8272009831801758043

`record[A079065(n+1)-A001222(n+1)]`
-/

namespace A069355.P8272009831801758043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (n + 1) - A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069355.P8272009831801758043

/-! ## A069355.P10951368969704961365

`record[A318510(n+1)-A001222(n+1)]`
-/

namespace A069355.P10951368969704961365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318510 (n + 1) - A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069355.P10951368969704961365

/-! ## A069355.P15133477976436240361

`A003586(n+3)-A263297(A003586(n+3))`
-/

namespace A069355.P15133477976436240361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 3) - A263297 (A003586 (n + 3)).toNat

end

end A069355.P15133477976436240361

/-! ## A069355.P2544676593478939203

`record[A065331(n+1)-A001222(n+1)]`
-/

namespace A069355.P2544676593478939203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1) - A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069355.P2544676593478939203

/-! ## A069355.P18395712288246169172

`record[A065332(n+1)-A001222(n+1)]`
-/

namespace A069355.P18395712288246169172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (n + 1) - A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069355.P18395712288246169172

/-! ## A069355.P4900829605673417533

`record[A065331(n+1)-A169611(n+1)]`
-/

namespace A069355.P4900829605673417533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1) - A169611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069355.P4900829605673417533

/-! ## A069355.P3419402820837284805

`record[A290732(n+1)-A001222(n+1)]`
-/

namespace A069355.P3419402820837284805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290732 (n + 1) - A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069355.P3419402820837284805

/-! ## A069355.P17852514237809488625

`record[(n+1-A001222(n+1))/A065330(n+1)]`
-/

namespace A069355.P17852514237809488625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A001222 (n + 1) : ℚ) / (A065330 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069355.P17852514237809488625

/-! ## A069355.P1071847128839041563

`record[A003962(n+1)-A001222(A003962(n+1))]`
-/

namespace A069355.P1071847128839041563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003962 (n + 1) - A001222 (A003962 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069355.P1071847128839041563

/-! ## A069355.P10174957062022117074

`record[A064553(n+1)-A001222(A064553(n+1))]`
-/

namespace A069355.P10174957062022117074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (n + 1) - A001222 (A064553 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069355.P10174957062022117074

/-!
# A069356: Primes of the form 2^i*3^j - (i+j) with i, j >= 0.

The programs for A069356, there is no canonical definition to state claims against.
-/

/-! ## A069356.P15755698770012205376

`p?[A069355(n+1)]`
-/

namespace A069356.P15755698770012205376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069356.P15755698770012205376

/-! ## A069356.P16058840182137869327

`p?[A003586(n+4)-A069352(n+4)]`
-/

namespace A069356.P16058840182137869327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 4) - A069352 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069356.P16058840182137869327

/-! ## A069356.P8236243181548398907

`record[A006530(A069355(n+2))]`
-/

namespace A069356.P8236243181548398907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A069355 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069356.P8236243181548398907

/-! ## A069356.P7715116071204146607

`record[A020639(A069355(n+3))]`
-/

namespace A069356.P7715116071204146607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A069355 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069356.P7715116071204146607

/-! ## A069356.P12076523983107020220

`filter[A069355(n+1), A010051(#)]`
-/

namespace A069356.P12076523983107020220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A069356.P12076523983107020220

/-!
# A069357: Numbers of form 2^i*3^j + (i+j) with i, j >= 0.

The programs for A069357, there is no canonical definition to state claims against.
-/

/-! ## A069357.P2130640029965790177

`record[A079065(n+1)+A001222(n+1)]`
-/

namespace A069357.P2130640029965790177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (n + 1) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069357.P2130640029965790177

/-! ## A069357.P18166226952353046675

`record[A318510(n+1)+A001222(n+1)]`
-/

namespace A069357.P18166226952353046675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318510 (n + 1) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069357.P18166226952353046675

/-! ## A069357.P90307367740266579

`record[A003962(n+1)+A001222(n+1)]`
-/

namespace A069357.P90307367740266579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003962 (n + 1) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069357.P90307367740266579

/-! ## A069357.P2712760214959891938

`record[A064553(n+1)+A001222(n+1)]`
-/

namespace A069357.P2712760214959891938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (n + 1) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069357.P2712760214959891938

/-! ## A069357.P1220670394167152221

`record[A064558(n+1)+A001222(n+1)]`
-/

namespace A069357.P1220670394167152221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (n + 1) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069357.P1220670394167152221

/-! ## A069357.P16532266928667852405

`record[A065331(n+1)+A001222(n+1)]`
-/

namespace A069357.P16532266928667852405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069357.P16532266928667852405

/-! ## A069357.P7655873705355571364

`record[A065332(n+1)+A001222(n+1)]`
-/

namespace A069357.P7655873705355571364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (n + 1) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069357.P7655873705355571364

/-! ## A069357.P14104913932115955586

`record[A169611(n+1)+A065331(n+1)]`
-/

namespace A069357.P14104913932115955586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + A065331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069357.P14104913932115955586

/-! ## A069357.P11229512034270275050

`record[A290732(n+1)+A001222(n+1)]`
-/

namespace A069357.P11229512034270275050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290732 (n + 1) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069357.P11229512034270275050

/-!
# A069358: Primes of the form 2^i*3^j + (i+j) with i, j >= 0.

The programs for A069358, there is no canonical definition to state claims against.
-/

/-! ## A069358.P16903015519233154067

`p?[A069357(n+1)]`
-/

namespace A069358.P16903015519233154067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069358.P16903015519233154067

/-! ## A069358.P1855816766899478689

`filter[A069357(n+1), A010051(#)]`
-/

namespace A069358.P1855816766899478689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A069358.P1855816766899478689

/-! ## A069358.P3252806203203022501

`filter[A069357(n+1), A257531(#)]`
-/

namespace A069358.P3252806203203022501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A069358.P3252806203203022501

/-! ## A069358.P8194550683856733196

`filter[A069357(n+2), A353787(#)]`
-/

namespace A069358.P8194550683856733196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A069358.P8194550683856733196

/-! ## A069358.P11616113830949444829

`∩[A000040(n+1), A069357(n+1)]`
-/

namespace A069358.P11616113830949444829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069358.P11616113830949444829

/-!
# A069359: a(n) = n * Sum_{p|n} 1/p where p are primes dividing n.

The programs for A069359, the canonical program `A069359.P17776763206282082862` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069359 has offset 1).

The definition of A069359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069359.P10054011326325088992

`A230593(n+1)-(n+1)`
-/

namespace A069359.P10054011326325088992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230593 (n + 1) - (n + 1 : ℤ)

end

end A069359.P10054011326325088992

namespace A069359

/-- `A230593(n+1)-(n+1)` -/
def P10054011326325088992.Spec : Prop :=
  ∀ n, P10054011326325088992.a n = A069359 (n + 1)

theorem P10054011326325088992.correct : P10054011326325088992.Spec := by
  intro n
  simp only [A069359, Nat.add_sub_cancel, A069359.P10054011326325088992.a, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A230593, A230593.P566366063280719726.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069359

/-! ## A069359.P13615919114365294053

`A306369(n+1)-A000010(n+1)`
-/

namespace A069359.P13615919114365294053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306369 (n + 1) - A000010 (n + 1)

end

end A069359.P13615919114365294053

namespace A069359

/-- `A306369(n+1)-A000010(n+1)` -/
def P13615919114365294053.Spec : Prop :=
  ∀ n, P13615919114365294053.a n = A069359 (n + 1)

theorem P13615919114365294053.correct : P13615919114365294053.Spec := by
  intro n
  simp only [A069359, Nat.add_sub_cancel, A069359.P13615919114365294053.a, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A000010, A000010.P4673923239450215316.a, A306369, A306369.P8843425213670804087.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069359

/-! ## A069359.P10773319081275860826

`A003415(n+1)-A329039(n+1)`
-/

namespace A069359.P10773319081275860826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A329039 (n + 1)

end

end A069359.P10773319081275860826

namespace A069359

/-- `A003415(n+1)-A329039(n+1)` -/
def P10773319081275860826.Spec : Prop :=
  ∀ n, P10773319081275860826.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P13483338396463584710

`A048675(A329352(n+1))`
-/

namespace A069359.P13483338396463584710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A329352 (n + 1)).toNat

end

end A069359.P13483338396463584710

namespace A069359

/-- `A048675(A329352(n+1))` -/
def P13483338396463584710.Spec : Prop :=
  ∀ n, P13483338396463584710.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P17776763206282082862

`∑{p}[n+1, ceil(n/#)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069359

/-- `∑{p}[n+1, ceil(n/#)]` -/
def P17776763206282082862.Spec : Prop :=
  ∀ n, P17776763206282082862.a n = A069359 (n + 1)

theorem P17776763206282082862.correct : P17776763206282082862.Spec := by
  intro n
  simp only [A069359, Nat.add_sub_cancel]

end A069359

/-! ## A069359.P16116451278730465160

`floor(∑{p}[n+1, (n+1)/#])`
-/

namespace A069359.P16116451278730465160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)⌋

end

end A069359.P16116451278730465160

namespace A069359

/-- `floor(∑{p}[n+1, (n+1)/#])` -/
def P16116451278730465160.Spec : Prop :=
  ∀ n, P16116451278730465160.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P1999990172241253130

`round(∑{p}[n+1, (n+1)/#])`
-/

namespace A069359.P1999990172241253130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))

end

end A069359.P1999990172241253130

namespace A069359

/-- `round(∑{p}[n+1, (n+1)/#])` -/
def P1999990172241253130.Spec : Prop :=
  ∀ n, P1999990172241253130.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P12510099906081353842

`(n+1)*∑{p}[n+1, 1/#]`
-/

namespace A069359.P12510099906081353842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ))

end

end A069359.P12510099906081353842

namespace A069359

/-- `(n+1)*∑{p}[n+1, 1/#]` -/
def P12510099906081353842.Spec : Prop :=
  ∀ n, P12510099906081353842.a n = (A069359 (n + 1) : ℚ)

end A069359

/-! ## A069359.P14608391400951335402

`∑{p}[n+1, (n+1)²/#]/(n+1)`
-/

namespace A069359.P14608391400951335402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1) ^ 2 : ℚ) / (p : ℚ)) / (n + 1 : ℚ)

end

end A069359.P14608391400951335402

namespace A069359

/-- `∑{p}[n+1, (n+1)²/#]/(n+1)` -/
def P14608391400951335402.Spec : Prop :=
  ∀ n, P14608391400951335402.a n = (A069359 (n + 1) : ℚ)

end A069359

/-! ## A069359.P8792631446745772981

`∑{p}[n+1, (n+1)/#]%∑[n+1]`
-/

namespace A069359.P8792631446745772981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A069359.P8792631446745772981

namespace A069359

/-- `∑{p}[n+1, (n+1)/#]%∑[n+1]` -/
def P8792631446745772981.Spec : Prop :=
  ∀ n, P8792631446745772981.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P8354156387432859215

`∑{d}[n+1, A117494(#)]`
-/

namespace A069359.P8354156387432859215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117494 d

end

end A069359.P8354156387432859215

namespace A069359

/-- `∑{d}[n+1, A117494(#)]` -/
def P8354156387432859215.Spec : Prop :=
  ∀ n, P8354156387432859215.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P12053961141585042067

`∑{d}[n+1, #*A010051((n+1)/#)]`
-/

namespace A069359.P12053961141585042067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069359.P12053961141585042067

namespace A069359

/-- `∑{d}[n+1, #*A010051((n+1)/#)]` -/
def P12053961141585042067.Spec : Prop :=
  ∀ n, P12053961141585042067.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P2341368063075098279

`(n+1)/∏{p}[n+1, #]*A003415(∏{p}[n+1, #])`
-/

namespace A069359.P2341368063075098279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A003415 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A069359.P2341368063075098279

namespace A069359

/-- `(n+1)/∏{p}[n+1, #]*A003415(∏{p}[n+1, #])` -/
def P2341368063075098279.Spec : Prop :=
  ∀ n, P2341368063075098279.a n = (A069359 (n + 1) : ℚ)

end A069359

/-! ## A069359.P3536828073049998910

`A351371(n+1)-A008472(n+1)`
-/

namespace A069359.P3536828073049998910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351371 (n + 1) - A008472 (n + 1)

end

end A069359.P3536828073049998910

namespace A069359

/-- `A351371(n+1)-A008472(n+1)` -/
def P3536828073049998910.Spec : Prop :=
  ∀ n, P3536828073049998910.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P15944834849874505695

`A348219(n+1)-A033273(n+1)`
-/

namespace A069359.P15944834849874505695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348219 (n + 1) - A033273 (n + 1)

end

end A069359.P15944834849874505695

namespace A069359

/-- `A348219(n+1)-A033273(n+1)` -/
def P15944834849874505695.Spec : Prop :=
  ∀ n, P15944834849874505695.a n = A069359 (n + 1)

theorem P15944834849874505695.correct : P15944834849874505695.Spec := by
  intro n
  simp only [A069359, Nat.add_sub_cancel, A069359.P15944834849874505695.a, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A033273, A033273.P18420659424697249895.a, A348219, A348219.P15428353027639764716.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069359

/-! ## A069359.P13022778017064408862

`A065967(n+1)-A328260(n+1)`
-/

namespace A069359.P13022778017064408862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065967 (n + 1) - A328260 (n + 1)

end

end A069359.P13022778017064408862

namespace A069359

/-- `A065967(n+1)-A328260(n+1)` -/
def P13022778017064408862.Spec : Prop :=
  ∀ n, P13022778017064408862.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P5623355464428923134

`A328260(n+1)-A065968(n+1)`
-/

namespace A069359.P5623355464428923134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328260 (n + 1) - A065968 (n + 1)

end

end A069359.P5623355464428923134

namespace A069359

/-- `A328260(n+1)-A065968(n+1)` -/
def P5623355464428923134.Spec : Prop :=
  ∀ n, P5623355464428923134.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P15507718868693545810

`A003557(n+1)*A028235(n+1)`
-/

namespace A069359.P15507718868693545810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A028235 (n + 1)

end

end A069359.P15507718868693545810

namespace A069359

/-- `A003557(n+1)*A028235(n+1)` -/
def P15507718868693545810.Spec : Prop :=
  ∀ n, P15507718868693545810.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P705798524173946549

`A380457(n+1)%A386438(n+1)`
-/

namespace A069359.P705798524173946549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380457 (n + 1)) (A386438 (n + 1))

end

end A069359.P705798524173946549

namespace A069359

/-- `A380457(n+1)%A386438(n+1)` -/
def P705798524173946549.Spec : Prop :=
  ∀ n, P705798524173946549.a n = A069359 (n + 1)

end A069359

/-! ## A069359.P9478902926517171758

`A326689(n+1)*A326691(n+1)+1`
-/

namespace A069359.P9478902926517171758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326689 (n + 1) * A326691 (n + 1) + 1

end

end A069359.P9478902926517171758

namespace A069359

/-- `A326689(n+1)*A326691(n+1)+1` -/
def P9478902926517171758.Spec : Prop :=
  ∀ n, P9478902926517171758.a n = A069359 (n + 1)

end A069359

/-!
# A069360: Number of prime pairs (p,q), p <= q, such that (p+q)/2 = 2*n.

The programs for A069360, there is no canonical definition to state claims against.
-/

/-! ## A069360.P13734043897929562979

`A045917(2*(n+1))`
-/

namespace A069360.P13734043897929562979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (2 * (n + 1))

end

end A069360.P13734043897929562979

/-! ## A069360.P16381838219652660149

`A002375(comp[2*(n+1)]+3)`
-/

namespace A069360.P16381838219652660149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)

end

end A069360.P16381838219652660149

/-! ## A069360.P7072139997357503406

`round(1/acot(A061357(2*(n+1))))`
-/

namespace A069360.P7072139997357503406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A061357 (2 * (n + 1)) : ℝ))

end

end A069360.P7072139997357503406

/-! ## A069360.P10808060588721957732

`A002375(2*(n+1))^ceil(abs(sin(n)))`
-/

namespace A069360.P10808060588721957732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002375 (2 * (n + 1)) : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A069360.P10808060588721957732

/-! ## A069360.P232821785282153446

`A002375(2*n+2)+1-ceil(n/(n+11))`
-/

namespace A069360.P232821785282153446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (2 * n + 2) + 1 - ⌈(n : ℚ) / (n + 11 : ℚ)⌉

end

end A069360.P232821785282153446

/-! ## A069360.P13005509715448727345

`A028310(A002375(2*(n+1)))`
-/

namespace A069360.P13005509715448727345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002375 (2 * (n + 1))).toNat

end

end A069360.P13005509715448727345

/-! ## A069360.P1352327545313983221

`A002375(2*(n+1))+A000007(n)`
-/

namespace A069360.P1352327545313983221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (2 * (n + 1)) + A000007 n

end

end A069360.P1352327545313983221

/-! ## A069360.P9248447379595185620

`A063524(n+1)+A002375(2*(n+1))`
-/

namespace A069360.P9248447379595185620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A002375 (2 * (n + 1))

end

end A069360.P9248447379595185620

/-! ## A069360.P4731163816594477153

`A010051(2*(n+1))+A002375(2*(n+1))`
-/

namespace A069360.P4731163816594477153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + A002375 (2 * (n + 1))

end

end A069360.P4731163816594477153

/-! ## A069360.P1736156363129335528

`A061357(2*(n+1))+A010051(2*(n+1))`
-/

namespace A069360.P1736156363129335528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (2 * (n + 1)) + A010051 (2 * (n + 1))

end

end A069360.P1736156363129335528

/-! ## A069360.P5285768297755747070

`A000720(2*(n+1))+A002375(2*(n+1))-A000720(2*n+1)`
-/

namespace A069360.P5285768297755747070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) + (A002375 (2 * (n + 1)) - A000720 (2 * n + 1))

end

end A069360.P5285768297755747070

/-! ## A069360.P14718181873506229986

`A002375(2*(n+1))-A159075(n+1)`
-/

namespace A069360.P14718181873506229986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (2 * (n + 1)) - A159075 (n + 1)

end

end A069360.P14718181873506229986

/-! ## A069360.P3171720845734934603

`A068307(4*n+6)`
-/

namespace A069360.P3171720845734934603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (4 * n + 6)

end

end A069360.P3171720845734934603

/-! ## A069360.P2678161440482464594

`ceil(A035026(2*(n+1))/2)`
-/

namespace A069360.P2678161440482464594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035026 (2 * (n + 1)) : ℚ) / 2⌉

end

end A069360.P2678161440482464594

/-! ## A069360.P15341733014577862514

`ceil(A002372(abs(1-n)+3+n)/2)`
-/

namespace A069360.P15341733014577862514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002372 (|1 - (n : ℤ)| + 3 + (n : ℤ)).toNat : ℚ) / 2⌉

end

end A069360.P15341733014577862514

/-! ## A069360.P7341405616552161073

`A026741(A035026(2*(n+1)))`
-/

namespace A069360.P7341405616552161073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A035026 (2 * (n + 1))).toNat

end

end A069360.P7341405616552161073

/-! ## A069360.P1757972906204711254

`A110654(A035026(2*n+2))`
-/

namespace A069360.P1757972906204711254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A035026 (2 * n + 2)).toNat

end

end A069360.P1757972906204711254

/-! ## A069360.P6524742484756860539

`A004526(A035026(2*(n+1))+1)`
-/

namespace A069360.P6524742484756860539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A035026 (2 * (n + 1)) + 1).toNat

end

end A069360.P6524742484756860539

/-! ## A069360.P2454351707948465994

`A008619(A035026(2*(n+1))-1)`
-/

namespace A069360.P2454351707948465994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A035026 (2 * (n + 1)) - 1).toNat

end

end A069360.P2454351707948465994

/-! ## A069360.P7143125399615789786

`A028310(A002372(2*(n+1))/2)`
-/

namespace A069360.P7143125399615789786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A002372 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A069360.P7143125399615789786

/-!
# A069361: Number of 3 X n binary arrays with a path of adjacent 1's from top row to bottom row.

The programs for A069361, the canonical program `A069361.P15645671292584396017` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069361 has offset 1).

The definition of A069361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069361.P15645671292584396017

`15*a(n-1)-58*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=17, a(2)=197`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069361

/-- `15*a(n-1)-58*a(n-2)+16*a(n-3)` -/
def P15645671292584396017.Spec : Prop :=
  ∀ n, P15645671292584396017.a n = A069361 (n + 1)

theorem P15645671292584396017.correct : P15645671292584396017.Spec := by
  intro n
  simp only [A069361, Nat.add_sub_cancel]

end A069361

/-! ## A069361.P6252970593857444653

`8^(n+1)-A186446(n+1)`
-/

namespace A069361.P6252970593857444653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ (n + 1) : ℤ) - A186446 (n + 1)

end

end A069361.P6252970593857444653

namespace A069361

/-- `8^(n+1)-A186446(n+1)` -/
def P6252970593857444653.Spec : Prop :=
  ∀ n, P6252970593857444653.a n = A069361 (n + 1)

end A069361

/-! ## A069361.P15350906524865464264

`A359576(∑[n+2]+4)`
-/

namespace A069361.P15350906524865464264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A069361.P15350906524865464264

namespace A069361

/-- `A359576(∑[n+2]+4)` -/
def P15350906524865464264.Spec : Prop :=
  ∀ n, P15350906524865464264.a n = A069361 (n + 1)

end A069361

/-!
# A069362: Number of 4 X n binary arrays with a path of adjacent 1's from top row to bottom row.

The programs for A069362, there is no canonical definition to state claims against.
-/

/-! ## A069362.P3264208043282962312

`A359576(A141214(n)+7)`
-/

namespace A069362.P3264208043282962312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (A141214 n + 7).toNat

end

end A069362.P3264208043282962312

/-! ## A069362.P6496678817387633855

`A359576(A167614(n+2)+1)`
-/

namespace A069362.P6496678817387633855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (A167614 (n + 2) + 1).toNat

end

end A069362.P6496678817387633855

/-! ## A069362.P8235532798368932445

`A359576(A000217(n+3)+4)`
-/

namespace A069362.P8235532798368932445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (A000217 (n + 3) + 4).toNat

end

end A069362.P8235532798368932445

/-!
# A069363: Number of 5 X n binary arrays with a path of adjacent 1's from top row to bottom row.

The programs for A069363, there is no canonical definition to state claims against.
-/

/-! ## A069363.P16692834857465600860

`A359576(∑[n+4]+11)`
-/

namespace A069363.P16692834857465600860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A069363.P16692834857465600860

/-! ## A069363.P4429719074017679869

`record[A359576(record[A194879(n+1)])]`
-/

namespace A069363.P4429719074017679869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069363.P4429719074017679869

/-!
# A069364: Number of 6 X n binary arrays with a path of adjacent 1's from top row to bottom row.

The programs for A069364, there is no canonical definition to state claims against.
-/

/-! ## A069364.P1776080193316634250

`A359576(A172336(n+4)+A000124(n))`
-/

namespace A069364.P1776080193316634250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (A172336 (n + 4) + A000124 n).toNat

end

end A069364.P1776080193316634250

/-!
# A069378: Number of n X 3 binary arrays with a path of adjacent 1's from top row to bottom row.

The programs for A069378, there is no canonical definition to state claims against.
-/

/-! ## A069378.P11929673907856398023

`A359576(∑[n+3]+1)`
-/

namespace A069378.P11929673907856398023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A069378.P11929673907856398023

/-! ## A069378.P2125947853563632146

`A369892(∑[n+3]+1)`
-/

namespace A069378.P2125947853563632146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A069378.P2125947853563632146

/-!
# A069379: Number of n X 4 binary arrays with a path of adjacent 1's from top row to bottom row.

The programs for A069379, there is no canonical definition to state claims against.
-/

/-! ## A069379.P9406472655335809389

`A069424(n+1)+2*A069404(n+1)`
-/

namespace A069379.P9406472655335809389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069424 (n + 1) + 2 * A069404 (n + 1)

end

end A069379.P9406472655335809389

/-! ## A069379.P8939313077933062954

`A359576(A141214(n+1))`
-/

namespace A069379.P8939313077933062954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (A141214 (n + 1)).toNat

end

end A069379.P8939313077933062954

/-! ## A069379.P12231354652059323210

`A359576(eq[3, A193592(n)])`
-/

namespace A069379.P12231354652059323210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069379.P12231354652059323210

/-!
# A069380: Number of n X 5 binary arrays with a path of adjacent 1's from top row to bottom row.

The programs for A069380, there is no canonical definition to state claims against.
-/

/-! ## A069380.P16160365992116246942

`A069425(n+1)+2*A069405(n+1)`
-/

namespace A069380.P16160365992116246942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069425 (n + 1) + 2 * A069405 (n + 1)

end

end A069380.P16160365992116246942

/-! ## A069380.P15788186552531588222

`A359576(A167614(n+3)-2+n)`
-/

namespace A069380.P15788186552531588222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (A167614 (n + 3) - 2 + (n : ℤ)).toNat

end

end A069380.P15788186552531588222

/-!
# A069381: Number of n X 6 binary arrays with a path of adjacent 1's from top row to bottom row.

The programs for A069381, there is no canonical definition to state claims against.
-/

/-! ## A069381.P17399068760464786664

`A359576(eq[5, A193592(n)])`
-/

namespace A069381.P17399068760464786664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069381.P17399068760464786664

/-!
# A069382: Number of n X 7 binary arrays with a path of adjacent 1's from top row to bottom row.

The programs for A069382, there is no canonical definition to state claims against.
-/

/-! ## A069382.P11378492683598929143

`A069427(n+1)+2*A069407(n+1)`
-/

namespace A069382.P11378492683598929143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069427 (n + 1) + 2 * A069407 (n + 1)

end

end A069382.P11378492683598929143

