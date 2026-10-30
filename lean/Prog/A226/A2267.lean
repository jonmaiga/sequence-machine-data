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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A226700: Solutions y/(3*5*13) of the Pell equation x^2 - 61*y^2 = +4.

The programs for A226700, there is no canonical definition to state claims against.
-/

/-! ## A226700.P15333827071797415944

`A226701(n)-∑[A226702(n)]`
-/

namespace A226700.P15333827071797415944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226701 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226700.P15333827071797415944

/-! ## A226700.P192412084712827889

`∑[A226699(n)%A226702(n)]`
-/

namespace A226700.P192412084712827889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226699 n) (A226702 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226700.P192412084712827889

/-! ## A226700.P3516988844937625049

`∑[A226702(n+1)%A226701(n)]`
-/

namespace A226700.P3516988844937625049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226702 (n + 1)) (A226701 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226700.P3516988844937625049

/-!
# A226701: Positive solutions x/(3*13) of the Pell equation x^2 - 61*y^2 = -4.

The programs for A226701, there is no canonical definition to state claims against.
-/

/-! ## A226701.P9644303941852888262

`∑[A226699(n)]-1`
-/

namespace A226701.P9644303941852888262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A226701.P9644303941852888262

/-! ## A226701.P12726173213277943941

`A226700(n)+∑[A226702(n)]`
-/

namespace A226701.P12726173213277943941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226700 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226701.P12726173213277943941

/-! ## A226701.P17836116995235890705

`A226700(n+1)+A226700(n)`
-/

namespace A226701.P17836116995235890705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226700 (n + 1) + A226700 n

end

end A226701.P17836116995235890705

/-!
# A226702: Positive solutions y/5 of the Pell equation x^2 - 61*y^2 = -4.

The programs for A226702, there is no canonical definition to state claims against.
-/

/-! ## A226702.P9473041458840807479

`Δ[A226700(n)]`
-/

namespace A226702.P9473041458840807479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226702.P9473041458840807479

/-! ## A226702.P10948724158657372826

`A226699(n)-a(n-1)` with `a(0)=1`
-/

namespace A226702.P10948724158657372826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226699 n - a (n - 1)

end

end A226702.P10948724158657372826

/-! ## A226702.P10741265348200974087

`A226700(n+1)-A226700(n)`
-/

namespace A226702.P10741265348200974087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226700 (n + 1) - A226700 n

end

end A226702.P10741265348200974087

/-!
# A226705: G.f.: 1 / (1 + 12*x*G(x)^4 - 16*x*G^5) where G(x) = 1 + x*G(x)^6 is the g.f. of A002295.

The programs for A226705, the canonical program `A226705.P13216636788496656456` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226705 has offset 0).

The definition of A226705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226705.P13216636788496656456

`∑{#}[n, C(2*#, n-#)*C(6*n-2*#, #)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226705

/-- `∑{#}[n, C(2*#, n-#)*C(6*n-2*#, #)]` -/
def P13216636788496656456.Spec : Prop :=
  ∀ n, (P13216636788496656456.a n : ℤ) = A226705 n

theorem P13216636788496656456.correct : P13216636788496656456.Spec := by
  intro n
  simp only [A226705]

end A226705

/-! ## A226705.P8810192376588782746

`∑{#}[n, (-3)^(n-#)*C(6*n+1, #)]`
-/

namespace A226705.P8810192376588782746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (6 * n + 1) k : ℚ)

end

end A226705.P8810192376588782746

namespace A226705

/-- `∑{#}[n, (-3)^(n-#)*C(6*n+1, #)]` -/
def P8810192376588782746.Spec : Prop :=
  ∀ n, P8810192376588782746.a n = (A226705 n : ℚ)

end A226705

/-!
# A226706: G.f.: 1 / sqrt(1 + 12*x*G(x)^4 - 16*x*G(x)^5) where G(x) = 1 + x*G(x)^6 is the g.f. of A002295.

The programs for A226706, there is no canonical definition to state claims against.
-/

/-! ## A226706.P6281963402413766684

`A004277(A079199(n+1)-A000045(n))`
-/

namespace A226706.P6281963402413766684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A079199 (n + 1) - A000045 n).toNat

end

end A226706.P6281963402413766684

/-!
# A226707: Least number k such that 5^(2^i) + k is prime for i = 0,1,..,n-1.

The programs for A226707, there is no canonical definition to state claims against.
-/

/-! ## A226707.P2344461183666143938

`A071044(C(2^n, n)+3)`
-/

namespace A226707.P2344461183666143938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (Nat.choose (2 ^ n) n + 3)

end

end A226707.P2344461183666143938

/-!
# A226708: Least number k such that 6^(2^i) + k is prime for i = 0,1,..,n-1.

The programs for A226708, there is no canonical definition to state claims against.
-/

/-! ## A226708.P14400840499547545705

`A325401(xor(3, A215741(n)))`
-/

namespace A226708.P14400840499547545705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.xor 3 (A215741 n)).toNat

end

end A226708.P14400840499547545705

/-! ## A226708.P6338689143006787787

`A267872(floor(sqrt(A342170(n))))`
-/

namespace A226708.P6338689143006787787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (Int.sqrt (A342170 n)).toNat

end

end A226708.P6338689143006787787

/-!
# A226709: Number of n X n (-1,0,1) arrays of determinants of 2X2 subblocks of some (n+1)X(n+1) binary array.

The programs for A226709, there is no canonical definition to state claims against.
-/

/-! ## A226709.P16478569637665417238

`A226717(∑[4*n]+1)`
-/

namespace A226709.P16478569637665417238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226709.P16478569637665417238

/-!
# A226710: Number of n X 1 (-1,0,1) arrays of determinants of 2 X 2 subblocks of some (n+1) X 2 binary array.

The programs for A226710, the canonical program `A226710.P8391678460245909374` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226710 has offset 1).

The definition of A226710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226710.P3620934494402924644

`ogf((3+3x+4x^2+2x^3+x^4)/(1-2x-x^2-2x^3-x^4-x^5))`
-/

namespace A226710.P3620934494402924644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 4, 2, 1] [1, -2, -1, -2, -1, -1] n

end

end A226710.P3620934494402924644

namespace A226710

/-- `ogf((3+3x+4x^2+2x^3+x^4)/(1-2x-x^2-2x^3-x^4-x^5))` -/
def P3620934494402924644.Spec : Prop :=
  ∀ n, P3620934494402924644.a n = A226710 (n + 1)

end A226710

/-! ## A226710.P8391678460245909374

`2*a(n-1)+a(n-2)+2*a(n-3)+a(n-4)+a(n-5)` with `a(0)=3, a(1)=9, a(2)=25, a(3)=67, a(4)=181`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226710

/-- `2*a(n-1)+a(n-2)+2*a(n-3)+a(n-4)+a(n-5)` -/
def P8391678460245909374.Spec : Prop :=
  ∀ n, (P8391678460245909374.a n : ℤ) = A226710 (n + 1)

theorem P8391678460245909374.correct : P8391678460245909374.Spec := by
  intro n
  simp only [A226710, Nat.add_sub_cancel]

end A226710

/-! ## A226710.P10671252944668093550

`A226717(∑[n]+1)`
-/

namespace A226710.P10671252944668093550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226710.P10671252944668093550

namespace A226710

/-- `A226717(∑[n]+1)` -/
def P10671252944668093550.Spec : Prop :=
  ∀ n, P10671252944668093550.a n = A226710 (n + 1)

end A226710

/-! ## A226710.P11951891552912804614

`or(1, A226717(A000124(n)))`
-/

namespace A226710.P11951891552912804614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A226717 (A000124 n).toNat)

end

end A226710.P11951891552912804614

namespace A226710

/-- `or(1, A226717(A000124(n)))` -/
def P11951891552912804614.Spec : Prop :=
  ∀ n, P11951891552912804614.a n = A226710 (n + 1)

end A226710

/-! ## A226710.P17978294802411948632

`record[A010054(n)*A226717(n+1)]`
-/

namespace A226710.P17978294802411948632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A226717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226710.P17978294802411948632

namespace A226710

/-- `record[A010054(n)*A226717(n+1)]` -/
def P17978294802411948632.Spec : Prop :=
  ∀ n, P17978294802411948632.a n = A226710 (n + 1)

end A226710

/-!
# A226711: Number of nX2 (-1,0,1) arrays of determinants of 2X2 subblocks of some (n+1)X3 binary array.

The programs for A226711, there is no canonical definition to state claims against.
-/

/-! ## A226711.P4204384777476369053

`A226717(∑[n+1]+2)`
-/

namespace A226711.P4204384777476369053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A226711.P4204384777476369053

/-! ## A226711.P13948069755323187717

`or(1, A226717(A000096(n)+3))`
-/

namespace A226711.P13948069755323187717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A226717 (A000096 n + 3).toNat)

end

end A226711.P13948069755323187717

/-! ## A226711.P6248785346590761615

`record[A010054(n)*A226717(n+2)]`
-/

namespace A226711.P6248785346590761615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A226717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226711.P6248785346590761615

/-! ## A226711.P11129822500528503852

`record[gcd(A002262(n), A226717(n+2))]`
-/

namespace A226711.P11129822500528503852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A226717 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226711.P11129822500528503852

/-! ## A226711.P5254425643801597293

`A226717(A000096(n)+3)%A226712(n+1)`
-/

namespace A226711.P5254425643801597293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226717 (A000096 n + 3).toNat) (A226712 (n + 1))

end

end A226711.P5254425643801597293

/-!
# A226712: Number of nX3 (-1,0,1) arrays of determinants of 2X2 subblocks of some (n+1)X4 binary array.

The programs for A226712, there is no canonical definition to state claims against.
-/

/-! ## A226712.P13886308614067432474

`A226717(∑[n+2]+4)`
-/

namespace A226712.P13886308614067432474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A226712.P13886308614067432474

/-! ## A226712.P1316874113123885090

`or(1, A226717(A167614(n+1)))`
-/

namespace A226712.P1316874113123885090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A226717 (A167614 (n + 1)).toNat)

end

end A226712.P1316874113123885090

/-! ## A226712.P4645103210589051539

`A226717(A167614(n+1))+A011731(n)`
-/

namespace A226712.P4645103210589051539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A167614 (n + 1)).toNat + A011731 n

end

end A226712.P4645103210589051539

/-! ## A226712.P13779918760208387817

`A226717(A167614(n+1))+A025437(n)`
-/

namespace A226712.P13779918760208387817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A167614 (n + 1)).toNat + A025437 n

end

end A226712.P13779918760208387817

/-! ## A226712.P702270523475134089

`lcm(A033999(n), A226717(A167614(n+1)))`
-/

namespace A226712.P702270523475134089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A226717 (A167614 (n + 1)).toNat)

end

end A226712.P702270523475134089

/-!
# A226713: Number of nX4 (-1,0,1) arrays of determinants of 2X2 subblocks of some (n+1)X5 binary array.

The programs for A226713, there is no canonical definition to state claims against.
-/

/-! ## A226713.P13144207990926186257

`A226717(A374004(n+1))`
-/

namespace A226713.P13144207990926186257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A374004 (n + 1)).toNat

end

end A226713.P13144207990926186257

/-! ## A226713.P14714012430968218543

`A226717(A141214(n)+7)`
-/

namespace A226713.P14714012430968218543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A141214 n + 7).toNat

end

end A226713.P14714012430968218543

/-! ## A226713.P8416011118175155812

`A226717(A052905(n)+9)`
-/

namespace A226713.P8416011118175155812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A052905 n + 9).toNat

end

end A226713.P8416011118175155812

/-! ## A226713.P6148746404922510722

`A226717(A055999(n)+10)`
-/

namespace A226713.P6148746404922510722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A055999 n + 10).toNat

end

end A226713.P6148746404922510722

/-! ## A226713.P12343046558281529486

`A226717(A167614(n+2)+1)`
-/

namespace A226713.P12343046558281529486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A167614 (n + 2) + 1).toNat

end

end A226713.P12343046558281529486

/-!
# A226714: Number of nX5 (-1,0,1) arrays of determinants of 2X2 subblocks of some (n+1)X6 binary array.

The programs for A226714, there is no canonical definition to state claims against.
-/

/-! ## A226714.P3384687984564017609

`A226717(A374005(n+1))`
-/

namespace A226714.P3384687984564017609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A374005 (n + 1)).toNat

end

end A226714.P3384687984564017609

/-! ## A226714.P9718817056054788232

`A226717(A155212(n)+13)`
-/

namespace A226714.P9718817056054788232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A155212 n + 13).toNat

end

end A226714.P9718817056054788232

/-! ## A226714.P12024899543560550701

`A226717(A056000(n)+15)`
-/

namespace A226714.P12024899543560550701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A056000 n + 15).toNat

end

end A226714.P12024899543560550701

/-! ## A226714.P8896488353827957006

`A226717(Δ[A264443(n)])`
-/

namespace A226714.P8896488353827957006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (f1 (n + 1) - f1 n).toNat

end

end A226714.P8896488353827957006

/-! ## A226714.P4168179330603528352

`A226717(eq[2, A092921(n)])`
-/

namespace A226714.P4168179330603528352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226714.P4168179330603528352

/-!
# A226715: Number of n X 6 (-1,0,1) arrays of determinants of 2 X 2 subblocks of some (n+1) X 7 binary array.

The programs for A226715, there is no canonical definition to state claims against.
-/

/-! ## A226715.P481543767934314379

`A226717(A374007(n+1))`
-/

namespace A226715.P481543767934314379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A374007 (n + 1)).toNat

end

end A226715.P481543767934314379

/-! ## A226715.P17201878552918842725

`A226717(A141214(n+2)+9)`
-/

namespace A226715.P17201878552918842725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A141214 (n + 2) + 9).toNat

end

end A226715.P17201878552918842725

/-! ## A226715.P8114691064648192456

`A226717(eq[7, A131818(n+1)])`
-/

namespace A226715.P8114691064648192456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226715.P8114691064648192456

/-! ## A226715.P10650349488561875237

`A226717(A052905(n+3))`
-/

namespace A226715.P10650349488561875237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A052905 (n + 3)).toNat

end

end A226715.P10650349488561875237

/-! ## A226715.P3585382415376804529

`A226717(eq[3, A219347(n)])`
-/

namespace A226715.P3585382415376804529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226715.P3585382415376804529

/-!
# A226716: Number of nX7 (-1,0,1) arrays of determinants of 2X2 subblocks of some (n+1)X8 binary array.

The programs for A226716, there is no canonical definition to state claims against.
-/

/-! ## A226716.P14567552924586173939

`A226717(A374008(n+1))`
-/

namespace A226716.P14567552924586173939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A374008 (n + 1)).toNat

end

end A226716.P14567552924586173939

/-! ## A226716.P18320432778890243134

`A226717(A055999(n+4))`
-/

namespace A226716.P18320432778890243134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (A055999 (n + 4)).toNat

end

end A226716.P18320432778890243134

/-! ## A226716.P17146199924024387054

`A226717(eq[6, A193592(n)])`
-/

namespace A226716.P17146199924024387054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226716.P17146199924024387054

/-! ## A226716.P16557914838107789171

`A226717(eq[2, A219347(n)-2])`
-/

namespace A226716.P16557914838107789171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226716.P16557914838107789171

/-!
# A226718: n! mod tetrahedral(n), that is A000142(n) mod A000292(n).

The programs for A226718, the canonical program `A226718.P1733142447336735156` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226718 has offset 1).

The definition of A226718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226718.P1733142447336735156

`(n+1)!%((n+1)*(n+2)*(n+3)/6)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226718

/-- `(n+1)!%((n+1)*(n+2)*(n+3)/6)` -/
def P1733142447336735156.Spec : Prop :=
  ∀ n, P1733142447336735156.a n = A226718 (n + 1)

theorem P1733142447336735156.correct : P1733142447336735156.Spec := by
  intro n
  simp only [A226718, Nat.add_sub_cancel]

end A226718

/-! ## A226718.P3954574305034062852

`A175624(n+1)%∑[∑[n+1]]`
-/

namespace A226718.P3954574305034062852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175624 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A226718.P3954574305034062852

namespace A226718

/-- `A175624(n+1)%∑[∑[n+1]]` -/
def P3954574305034062852.Spec : Prop :=
  ∀ n, P3954574305034062852.a n = A226718 (n + 1)

end A226718

/-! ## A226718.P2997827422717700724

`lcm(2, A175624(n+1))%A058187(2*n)`
-/

namespace A226718.P2997827422717700724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm 2 (A175624 (n + 1)) : ℤ) (A058187 (2 * n))

end

end A226718.P2997827422717700724

namespace A226718

/-- `lcm(2, A175624(n+1))%A058187(2*n)` -/
def P2997827422717700724.Spec : Prop :=
  ∀ n, P2997827422717700724.a n = A226718 (n + 1)

end A226718

/-! ## A226718.P16376352710490321800

`(A175624(n+1)/A057979(2*n))%A058187(2*n)`
-/

namespace A226718.P16376352710490321800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A175624 (n + 1) : ℚ) / (A057979 (2 * n) : ℚ))) (A058187 (2 * n))

end

end A226718.P16376352710490321800

namespace A226718

/-- `(A175624(n+1)/A057979(2*n))%A058187(2*n)` -/
def P16376352710490321800.Spec : Prop :=
  ∀ n, P16376352710490321800.a n = A226718 (n + 1)

end A226718

/-! ## A226718.P4101676781547655642

`(n+1)!%C(n+3, 3)`
-/

namespace A226718.P4101676781547655642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) % Nat.choose (n + 3) 3

end

end A226718.P4101676781547655642

namespace A226718

/-- `(n+1)!%C(n+3, 3)` -/
def P4101676781547655642.Spec : Prop :=
  ∀ n, (P4101676781547655642.a n : ℤ) = A226718 (n + 1)

end A226718

/-! ## A226718.P10502899735363626159

`A000142(n+1)%A000292(n+1)`
-/

namespace A226718.P10502899735363626159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (n + 1)) (A000292 (n + 1))

end

end A226718.P10502899735363626159

namespace A226718

/-- `A000142(n+1)%A000292(n+1)` -/
def P10502899735363626159.Spec : Prop :=
  ∀ n, P10502899735363626159.a n = A226718 (n + 1)

end A226718

/-!
# A226719: a(n) = the first member of a twin prime pair whose sum equals the sums of n consecutive pairs of twin primes.

The programs for A226719, there is no canonical definition to state claims against.
-/

/-! ## A226719.P20022367833095518

`A364456(A023552(n+1))`
-/

namespace A226719.P20022367833095518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364456 (A023552 (n + 1)).toNat

end

end A226719.P20022367833095518

/-!
# A226720: Complement of A122437.

The programs for A226720, the canonical program `A226720.P9359734811790805252` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226720 has offset 1).

The definition of A226720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226720.P11891933970040743061

`comp[floor(n*log2(6))]+1`
-/

namespace A226720.P11891933970040743061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (6 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A226720.P11891933970040743061

namespace A226720

/-- `comp[floor(n*log2(6))]+1` -/
def P11891933970040743061.Spec : Prop :=
  ∀ n, (P11891933970040743061.a n : ℤ) = A226720 (n + 1)

end A226720

/-! ## A226720.P9359734811790805252

`Δ[A025713(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A226720

/-- `Δ[A025713(n)]` -/
def P9359734811790805252.Spec : Prop :=
  ∀ n, P9359734811790805252.a n = A226720 (n + 1)

theorem P9359734811790805252.correct : P9359734811790805252.Spec := by
  intro n
  simp only [A226720, Nat.add_sub_cancel]

end A226720

/-! ## A226720.P10827343766973844091

`∑[2-A387214(n)]`
-/

namespace A226720.P10827343766973844091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A387214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226720.P10827343766973844091

namespace A226720

/-- `∑[2-A387214(n)]` -/
def P10827343766973844091.Spec : Prop :=
  ∀ n, P10827343766973844091.a n = A226720 (n + 1)

end A226720

/-! ## A226720.P10584721930205864031

`∑[Δ[A156301(n)]+1]`
-/

namespace A226720.P10584721930205864031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226720.P10584721930205864031

namespace A226720

/-- `∑[Δ[A156301(n)]+1]` -/
def P10584721930205864031.Spec : Prop :=
  ∀ n, P10584721930205864031.a n = A226720 (n + 1)

end A226720

/-! ## A226720.P7333068008961151781

`∑[char[A056576(n)]+1]`
-/

namespace A226720.P7333068008961151781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226720.P7333068008961151781

namespace A226720

/-- `∑[char[A056576(n)]+1]` -/
def P7333068008961151781.Spec : Prop :=
  ∀ n, (P7333068008961151781.a n : ℤ) = A226720 (n + 1)

end A226720

/-! ## A226720.P14027279792850673289

`Δ[A022331(n)+∑[n]]`
-/

namespace A226720.P14027279792850673289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022331 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226720.P14027279792850673289

namespace A226720

/-- `Δ[A022331(n)+∑[n]]` -/
def P14027279792850673289.Spec : Prop :=
  ∀ n, P14027279792850673289.a n = A226720 (n + 1)

end A226720

/-! ## A226720.P8243575885547130581

`∑[A143823(Δ[A156301(n)])]`
-/

namespace A226720.P8243575885547130581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226720.P8243575885547130581

namespace A226720

/-- `∑[A143823(Δ[A156301(n)])]` -/
def P8243575885547130581.Spec : Prop :=
  ∀ n, P8243575885547130581.a n = A226720 (n + 1)

end A226720

/-! ## A226720.P9769096308393425938

`∑[A156296(Δ[A156301(n)])]`
-/

namespace A226720.P9769096308393425938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156296 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226720.P9769096308393425938

namespace A226720

/-- `∑[A156296(Δ[A156301(n)])]` -/
def P9769096308393425938.Spec : Prop :=
  ∀ n, P9769096308393425938.a n = A226720 (n + 1)

end A226720

/-! ## A226720.P5771921553727212709

`∑[A309198(Δ[A156301(n)])]`
-/

namespace A226720.P5771921553727212709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309198 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226720.P5771921553727212709

namespace A226720

/-- `∑[A309198(Δ[A156301(n)])]` -/
def P5771921553727212709.Spec : Prop :=
  ∀ n, P5771921553727212709.a n = A226720 (n + 1)

end A226720

/-! ## A226720.P3807980024674240632

`A020915(A020914(A020915(n+1)+n))`
-/

namespace A226720.P3807980024674240632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A020914 (A020915 (n + 1) + (n : ℤ)).toNat).toNat

end

end A226720.P3807980024674240632

namespace A226720

/-- `A020915(A020914(A020915(n+1)+n))` -/
def P3807980024674240632.Spec : Prop :=
  ∀ n, P3807980024674240632.a n = A226720 (n + 1)

end A226720

/-! ## A226720.P8900124943048890353

`A020915(A204399(A020915(n+1)+n))`
-/

namespace A226720.P8900124943048890353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A204399 (A020915 (n + 1) + (n : ℤ)).toNat).toNat

end

end A226720.P8900124943048890353

namespace A226720

/-- `A020915(A204399(A020915(n+1)+n))` -/
def P8900124943048890353.Spec : Prop :=
  ∀ n, P8900124943048890353.a n = A226720 (n + 1)

end A226720

/-! ## A226720.P4729128391868048019

`A156301(A020914(A156301(n+1)+n))`
-/

namespace A226720.P4729128391868048019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A020914 (A156301 (n + 1) + (n : ℤ)).toNat).toNat

end

end A226720.P4729128391868048019

namespace A226720

/-- `A156301(A020914(A156301(n+1)+n))` -/
def P4729128391868048019.Spec : Prop :=
  ∀ n, P4729128391868048019.a n = A226720 (n + 1)

end A226720

/-! ## A226720.P9441660069153136521

`A020915(A056576(A020915(n+1)+n+1))`
-/

namespace A226720.P9441660069153136521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A056576 (A020915 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A226720.P9441660069153136521

namespace A226720

/-- `A020915(A056576(A020915(n+1)+n+1))` -/
def P9441660069153136521.Spec : Prop :=
  ∀ n, P9441660069153136521.a n = A226720 (n + 1)

end A226720

/-! ## A226720.P13021766959590744111

`(A020915(n+1)+n+1)%A000040(A000040(n+1))`
-/

namespace A226720.P13021766959590744111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020915 (n + 1) + (n + 1 : ℤ)) (A000040 (A000040 (n + 1)).toNat)

end

end A226720.P13021766959590744111

namespace A226720

/-- `(A020915(n+1)+n+1)%A000040(A000040(n+1))` -/
def P13021766959590744111.Spec : Prop :=
  ∀ n, P13021766959590744111.a n = A226720 (n + 1)

end A226720

/-! ## A226720.P3236814176136313269

`A020725(A206805(n+1))`
-/

namespace A226720.P3236814176136313269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A206805 (n + 1)).toNat

end

end A226720.P3236814176136313269

namespace A226720

/-- `A020725(A206805(n+1))` -/
def P3236814176136313269.Spec : Prop :=
  ∀ n, P3236814176136313269.a n = A226720 (n + 1)

end A226720

/-!
# A226721: Position of 2^n in the joint ranking of all the numbers 2^j for j>=0 and 5^k for k>=1; complement of A123384.

The programs for A226721, the canonical program `A226721.P17856605481448909484` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226721 has offset 1).

The definition of A226721 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066344, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226721.P17856605481448909484

`1+A066344(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A226721

/-- `1+A066344(n+1)` -/
def P17856605481448909484.Spec : Prop :=
  ∀ n, P17856605481448909484.a n = A226721 (n + 1)

theorem P17856605481448909484.correct : P17856605481448909484.Spec := by
  intro n
  simp only [A226721, Nat.add_sub_cancel]

end A226721

/-! ## A226721.P8613036703673005084

`comp[floor(n*log2(10))]+1`
-/

namespace A226721.P8613036703673005084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (10 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A226721.P8613036703673005084

namespace A226721

/-- `comp[floor(n*log2(10))]+1` -/
def P8613036703673005084.Spec : Prop :=
  ∀ n, (P8613036703673005084.a n : ℤ) = A226721 (n + 1)

end A226721

/-! ## A226721.P15452862170034285312

`Δ[A025743(n)]`
-/

namespace A226721.P15452862170034285312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226721.P15452862170034285312

namespace A226721

/-- `Δ[A025743(n)]` -/
def P15452862170034285312.Spec : Prop :=
  ∀ n, P15452862170034285312.a n = A226721 (n + 1)

end A226721

/-! ## A226721.P1427421174555315736

`Δ[A022335(n)+∑[n]]`
-/

namespace A226721.P1427421174555315736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022335 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226721.P1427421174555315736

namespace A226721

/-- `Δ[A022335(n)+∑[n]]` -/
def P1427421174555315736.Spec : Prop :=
  ∀ n, P1427421174555315736.a n = A226721 (n + 1)

end A226721

/-! ## A226721.P18226828821546947562

`lt[A006218(n), n^A008952(n)]`
-/

namespace A226721.P18226828821546947562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A008952 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A226721.P18226828821546947562

namespace A226721

/-- `lt[A006218(n), n^A008952(n)]` -/
def P18226828821546947562.Spec : Prop :=
  ∀ n, (P18226828821546947562.a n : ℤ) = A226721 (n + 1)

end A226721

/-! ## A226721.P7210853087187519323

`A020725(A066344(n+1))`
-/

namespace A226721.P7210853087187519323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A066344 (n + 1)).toNat

end

end A226721.P7210853087187519323

namespace A226721

/-- `A020725(A066344(n+1))` -/
def P7210853087187519323.Spec : Prop :=
  ∀ n, P7210853087187519323.a n = A226721 (n + 1)

end A226721

/-! ## A226721.P15002024800081763641

`∑[runs[A210435(n)]]`
-/

namespace A226721.P15002024800081763641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226721.P15002024800081763641

namespace A226721

/-- `∑[runs[A210435(n)]]` -/
def P15002024800081763641.Spec : Prop :=
  ∀ n, (P15002024800081763641.a n : ℤ) = A226721 (n + 1)

end A226721

/-! ## A226721.P10632327901857236635

`∑[runs[n-A192543(n+1)]]`
-/

namespace A226721.P10632327901857236635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A192543 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226721.P10632327901857236635

namespace A226721

/-- `∑[runs[n-A192543(n+1)]]` -/
def P10632327901857236635.Spec : Prop :=
  ∀ n, (P10632327901857236635.a n : ℤ) = A226721 (n + 1)

end A226721

/-! ## A226721.P4303871643206675004

`lt[A004767(n), (n+1)^A008952(n)]`
-/

namespace A226721.P4303871643206675004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008952 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A226721.P4303871643206675004

namespace A226721

/-- `lt[A004767(n), (n+1)^A008952(n)]` -/
def P4303871643206675004.Spec : Prop :=
  ∀ n, (P4303871643206675004.a n : ℤ) = A226721 (n + 1)

end A226721

/-! ## A226721.P16159165294121257671

`floor(∑[3-atan((n+1)^(n+1))])`
-/

namespace A226721.P16159165294121257671
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 - Real.arctan ((n + 1) ^ (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A226721.P16159165294121257671

namespace A226721

/-- `floor(∑[3-atan((n+1)^(n+1))])` -/
def P16159165294121257671.Spec : Prop :=
  ∀ n, P16159165294121257671.a n = A226721 (n + 1)

end A226721

/-!
# A226722: Positions of the numbers 2^n, for n >=0, in the joint ranking of all the numbers 2^h, 3^k, 5^k, for h >= 0, k >= 1.

The programs for A226722, the canonical program `A226722.P14657880171830940678` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226722 has offset 1).

The definition of A226722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226722.P994147382576548248

`A136409(n)+comp[A067497(n)]`
-/

namespace A226722.P994147382576548248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A226722.P994147382576548248

namespace A226722

/-- `A136409(n)+comp[A067497(n)]` -/
def P994147382576548248.Spec : Prop :=
  ∀ n, P994147382576548248.a n = A226722 (n + 1)

end A226722

/-! ## A226722.P17726133349090068274

`A020915(n)+comp[A066343(n+1)]`
-/

namespace A226722.P17726133349090068274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A226722.P17726133349090068274

namespace A226722

/-- `A020915(n)+comp[A066343(n+1)]` -/
def P17726133349090068274.Spec : Prop :=
  ∀ n, P17726133349090068274.a n = A226722 (n + 1)

end A226722

/-! ## A226722.P14657880171830940678

`A156301(n)+A066344(A028310(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A226722

/-- `A156301(n)+A066344(A028310(n))` -/
def P14657880171830940678.Spec : Prop :=
  ∀ n, P14657880171830940678.a n = A226722 (n + 1)

theorem P14657880171830940678.correct : P14657880171830940678.Spec := by
  intro n
  simp only [A226722, Nat.add_sub_cancel]

end A226722

/-! ## A226722.P1698812250876996027

`A206812(A028310(n))+A057427(n)`
-/

namespace A226722.P1698812250876996027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206812 (A028310 n).toNat + A057427 n

end

end A226722.P1698812250876996027

namespace A226722

/-- `A206812(A028310(n))+A057427(n)` -/
def P1698812250876996027.Spec : Prop :=
  ∀ n, P1698812250876996027.a n = A226722 (n + 1)

end A226722

/-! ## A226722.P10668629196239525342

`A206812(A028310(n))+A178334(n)`
-/

namespace A226722.P10668629196239525342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206812 (A028310 n).toNat + A178334 n

end

end A226722.P10668629196239525342

namespace A226722

/-- `A206812(A028310(n))+A178334(n)` -/
def P10668629196239525342.Spec : Prop :=
  ∀ n, P10668629196239525342.a n = A226722 (n + 1)

end A226722

/-! ## A226722.P5632733019858705051

`A206812(A028310(n))+A178489(n)`
-/

namespace A226722.P5632733019858705051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206812 (A028310 n).toNat + A178489 n

end

end A226722.P5632733019858705051

namespace A226722

/-- `A206812(A028310(n))+A178489(n)` -/
def P5632733019858705051.Spec : Prop :=
  ∀ n, P5632733019858705051.a n = A226722 (n + 1)

end A226722

/-! ## A226722.P12741917732489462806

`A206812(A028310(n))-A057428(n)`
-/

namespace A226722.P12741917732489462806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206812 (A028310 n).toNat - A057428 n

end

end A226722.P12741917732489462806

namespace A226722

/-- `A206812(A028310(n))-A057428(n)` -/
def P12741917732489462806.Spec : Prop :=
  ∀ n, P12741917732489462806.a n = A226722 (n + 1)

end A226722

/-! ## A226722.P15155891557486451357

`A206812(A028310(n))+A002828(n²)`
-/

namespace A226722.P15155891557486451357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206812 (A028310 n).toNat + A002828 (n ^ 2)

end

end A226722.P15155891557486451357

namespace A226722

/-- `A206812(A028310(n))+A002828(n²)` -/
def P15155891557486451357.Spec : Prop :=
  ∀ n, P15155891557486451357.a n = A226722 (n + 1)

end A226722

/-! ## A226722.P10310718367433893410

`A206812(A028310(n))+char[A007306(n)]`
-/

namespace A226722.P10310718367433893410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206812 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A226722.P10310718367433893410

namespace A226722

/-- `A206812(A028310(n))+char[A007306(n)]` -/
def P10310718367433893410.Spec : Prop :=
  ∀ n, P10310718367433893410.a n = A226722 (n + 1)

end A226722

/-! ## A226722.P7912334835273871938

`A206812(A028310(n))+A000040(n+1)%2`
-/

namespace A226722.P7912334835273871938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206812 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A226722.P7912334835273871938

namespace A226722

/-- `A206812(A028310(n))+A000040(n+1)%2` -/
def P7912334835273871938.Spec : Prop :=
  ∀ n, P7912334835273871938.a n = A226722 (n + 1)

end A226722

/-!
# A226723: Positions of the numbers 3^n, for n >= 1, in the joint ranking of all the numbers 2^h, 3^k, 5^k, for h >= 0, k >= 1.

The programs for A226723, there is no canonical definition to state claims against.
-/

/-! ## A226723.P9827138129053416413

`A206813(n+1)+1`
-/

namespace A226723.P9827138129053416413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206813 (n + 1) + 1

end

end A226723.P9827138129053416413

/-! ## A226723.P18353188238588244631

`A020725(A206813(n+1))`
-/

namespace A226723.P18353188238588244631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A206813 (n + 1)).toNat

end

end A226723.P18353188238588244631

/-! ## A226723.P5575239136061917081

`A038129(A204399(n+1)+A187829(n+1))`
-/

namespace A226723.P5575239136061917081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038129 (A204399 (n + 1) + A187829 (n + 1)).toNat

end

end A226723.P5575239136061917081

/-! ## A226723.P8143309473900595083

`A329845(n+1)+A020914(A187829(n+1))`
-/

namespace A226723.P8143309473900595083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329845 (n + 1) + A020914 (A187829 (n + 1)).toNat

end

end A226723.P8143309473900595083

/-! ## A226723.P2020067822405053863

`A316865(A081254(n+1))+A022342(2*n+3)`
-/

namespace A226723.P2020067822405053863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A081254 (n + 1)).toNat + A022342 (2 * n + 3)

end

end A226723.P2020067822405053863

/-!
# A226724: Positions of the numbers 5^n, for n >= 1, in the joint ranking of all the numbers 2^h, 3^k, 5^k, for h >= 0, k >= 1.

The programs for A226724, there is no canonical definition to state claims against.
-/

/-! ## A226724.P4473621123476950165

`∑[A129344(n+1)+A022927(n)]`
-/

namespace A226724.P4473621123476950165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129344 (n + 1) + A022927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226724.P4473621123476950165

/-! ## A226724.P9380081323732804617

`A066343(n+1)+∑[A022927(n)]+1`
-/

namespace A226724.P9380081323732804617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226724.P9380081323732804617

/-! ## A226724.P14494056607919002189

`A028310(floor(∑[A022927(n)]+(n+1)*log2(10))+1)`
-/

namespace A226724.P14494056607919002189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n + 1 : ℝ) * Real.logb 2 (10 : ℝ)⌋ + 1).toNat

end

end A226724.P14494056607919002189

/-! ## A226724.P959936937496767300

`1-A001478(floor(∑[A022927(n)]+(n+1)*log2(10)))`
-/

namespace A226724.P959936937496767300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001478 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n + 1 : ℝ) * Real.logb 2 (10 : ℝ)⌋.toNat

end

end A226724.P959936937496767300

/-! ## A226724.P8197785518298799786

`A233583(floor(∑[A022927(n)]+(n+1)*log2(10)))+2`
-/

namespace A226724.P8197785518298799786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n + 1 : ℝ) * Real.logb 2 (10 : ℝ)⌋.toNat + 2

end

end A226724.P8197785518298799786

/-! ## A226724.P1096642503728609611

`A206814(n+1)+1`
-/

namespace A226724.P1096642503728609611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206814 (n + 1) + 1

end

end A226724.P1096642503728609611

/-! ## A226724.P5975213868828145706

`A020725(A206814(n+1))`
-/

namespace A226724.P5975213868828145706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A206814 (n + 1)).toNat

end

end A226724.P5975213868828145706

/-!
# A226725: Denominator of the median of {1, 1/2, 1/3, ..., 1/n}.

The programs for A226725, the canonical program `A226725.P4368939658406098545` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226725 has offset 1).

The definition of A226725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226725.P1639265578187122349

`ogf((1+4x-x^2)/(1-3x^2+3x^4-x^6))`
-/

namespace A226725.P1639265578187122349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1] [1, 0, -3, 0, 3, 0, -1] n

end

end A226725.P1639265578187122349

namespace A226725

/-- `ogf((1+4x-x^2)/(1-3x^2+3x^4-x^6))` -/
def P1639265578187122349.Spec : Prop :=
  ∀ n, P1639265578187122349.a n = A226725 (n + 1)

end A226725

/-! ## A226725.P4368939658406098545

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=2, a(3)=12, a(4)=3, a(5)=24`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226725

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P4368939658406098545.Spec : Prop :=
  ∀ n, P4368939658406098545.a n = A226725 (n + 1)

theorem P4368939658406098545.correct : P4368939658406098545.Spec := by
  intro n
  simp only [A226725, Nat.add_sub_cancel]

end A226725

/-! ## A226725.P15052141391405764961

`(n+1)^(1/2+(-1)^(n+1)/2)*(n+1+2^(1/2+(-1)^(n+1)/2))/2`
-/

namespace A226725.P15052141391405764961
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((1 : ℚ) / 2 + ((-1) ^ (n + 1) : ℚ) / 2 : ℝ) * ((n + 1 : ℝ) + (2 : ℝ) ^ ((1 : ℚ) / 2 + ((-1) ^ (n + 1) : ℚ) / 2 : ℝ)) / 2

end

end A226725.P15052141391405764961

namespace A226725

/-- `(n+1)^(1/2+(-1)^(n+1)/2)*(n+1+2^(1/2+(-1)^(n+1)/2))/2` -/
def P15052141391405764961.Spec : Prop :=
  ∀ n, P15052141391405764961.a n = (A226725 (n + 1) : ℝ)

end A226725

/-! ## A226725.P16741786059019263134

`∑{#}[n+1, (-1)^#*A061579(C(n+2, 2)+#)]`
-/

namespace A226725.P16741786059019263134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A061579 (Nat.choose (n + 2) 2 + k)

end

end A226725.P16741786059019263134

namespace A226725

/-- `∑{#}[n+1, (-1)^#*A061579(C(n+2, 2)+#)]` -/
def P16741786059019263134.Spec : Prop :=
  ∀ n, P16741786059019263134.a n = A226725 (n + 1)

end A226725

/-! ## A226725.P5398281904032085118

`floor((n+2)^(n%2+1)/2)`
-/

namespace A226725.P5398281904032085118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) ^ (n % 2 + 1) : ℚ) / 2⌋

end

end A226725.P5398281904032085118

namespace A226725

/-- `floor((n+2)^(n%2+1)/2)` -/
def P5398281904032085118.Spec : Prop :=
  ∀ n, P5398281904032085118.a n = A226725 (n + 1)

end A226725

/-! ## A226725.P15846752481922998526

`floor((n+2)^gcd(2, n+1)/2)`
-/

namespace A226725.P15846752481922998526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) ^ Nat.gcd 2 (n + 1) : ℚ) / 2⌋

end

end A226725.P15846752481922998526

namespace A226725

/-- `floor((n+2)^gcd(2, n+1)/2)` -/
def P15846752481922998526.Spec : Prop :=
  ∀ n, P15846752481922998526.a n = A226725 (n + 1)

end A226725

/-! ## A226725.P15005341027352295103

`lcm(n+2, floor((n+2)²/2))/(n+2)`
-/

namespace A226725.P15005341027352295103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) ⌊((n + 2) ^ 2 : ℚ) / 2⌋ : ℚ) / (n + 2 : ℚ)

end

end A226725.P15005341027352295103

namespace A226725

/-- `lcm(n+2, floor((n+2)²/2))/(n+2)` -/
def P15005341027352295103.Spec : Prop :=
  ∀ n, P15005341027352295103.a n = (A226725 (n + 1) : ℚ)

end A226725

/-! ## A226725.P5642421913887847102

`∑[n+3]-(a(n-1)+lcm(2, n+1))` with `a(0)=1`
-/

namespace A226725.P5642421913887847102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + (Nat.lcm 2 (n + 1) : ℤ))

end

end A226725.P5642421913887847102

namespace A226725

/-- `∑[n+3]-(a(n-1)+lcm(2, n+1))` -/
def P5642421913887847102.Spec : Prop :=
  ∀ n, P5642421913887847102.a n = A226725 (n + 1)

end A226725

/-! ## A226725.P13265618971134219948

`a(n-2)+gcd(2*a(n-2), (n+1)²)` with `a(0)=1, a(1)=4`
-/

namespace A226725.P13265618971134219948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + Nat.gcd (2 * a (n - 2)) ((n + 1) ^ 2)

end

end A226725.P13265618971134219948

namespace A226725

/-- `a(n-2)+gcd(2*a(n-2), (n+1)²)` -/
def P13265618971134219948.Spec : Prop :=
  ∀ n, (P13265618971134219948.a n : ℤ) = A226725 (n + 1)

end A226725

/-! ## A226725.P7979539281545611528

`(∑[n+1]+a(n-1))%(4*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A226725.P7979539281545611528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)) % (4 * a (n - 2))

end

end A226725.P7979539281545611528

namespace A226725

/-- `(∑[n+1]+a(n-1))%(4*a(n-2))` -/
def P7979539281545611528.Spec : Prop :=
  ∀ n, (P7979539281545611528.a n : ℤ) = A226725 (n + 1)

end A226725

/-! ## A226725.P11412767134037439734

`∑[floor(2*(n+1)/a(n-1))]-a(n-1)` with `a(0)=1`
-/

namespace A226725.P11412767134037439734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊2 * ((n + 1 : ℚ) / (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A226725.P11412767134037439734

namespace A226725

/-- `∑[floor(2*(n+1)/a(n-1))]-a(n-1)` -/
def P11412767134037439734.Spec : Prop :=
  ∀ n, P11412767134037439734.a n = A226725 (n + 1)

end A226725

/-! ## A226725.P861590096316846550

`gcd(∑[n+1]+a(n-1), ∑[n+1]%a(n-1))` with `a(0)=1`
-/

namespace A226725.P861590096316846550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)) ((∑ j ∈ Finset.range (n + 1), f2 j) % a (n - 1))

end

end A226725.P861590096316846550

namespace A226725

/-- `gcd(∑[n+1]+a(n-1), ∑[n+1]%a(n-1))` -/
def P861590096316846550.Spec : Prop :=
  ∀ n, (P861590096316846550.a n : ℤ) = A226725 (n + 1)

end A226725

/-! ## A226725.P14992915755219949333

`A266438(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A226725.P14992915755219949333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266438 n - a (n - 1) + (n : ℤ)

end

end A226725.P14992915755219949333

namespace A226725

/-- `A266438(n)-a(n-1)+n` -/
def P14992915755219949333.Spec : Prop :=
  ∀ n, P14992915755219949333.a n = A226725 (n + 1)

end A226725

/-! ## A226725.P12319108747636857191

`gcd(A027656(n), A241496(n))`
-/

namespace A226725.P12319108747636857191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 n) (A241496 n)

end

end A226725.P12319108747636857191

namespace A226725

/-- `gcd(A027656(n), A241496(n))` -/
def P12319108747636857191.Spec : Prop :=
  ∀ n, (P12319108747636857191.a n : ℤ) = A226725 (n + 1)

end A226725

/-! ## A226725.P7624890440704392709

`A140144(n+1)+A131723(n)`
-/

namespace A226725.P7624890440704392709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140144 (n + 1) + A131723 n

end

end A226725.P7624890440704392709

namespace A226725

/-- `A140144(n+1)+A131723(n)` -/
def P7624890440704392709.Spec : Prop :=
  ∀ n, P7624890440704392709.a n = A226725 (n + 1)

end A226725

/-! ## A226725.P14354430018503005394

`A135301(n+1)-A000292(n)`
-/

namespace A226725.P14354430018503005394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135301 (n + 1) - A000292 n

end

end A226725.P14354430018503005394

namespace A226725

/-- `A135301(n+1)-A000292(n)` -/
def P14354430018503005394.Spec : Prop :=
  ∀ n, P14354430018503005394.a n = A226725 (n + 1)

end A226725

/-! ## A226725.P15920705416326833777

`A097362(n+1)*A152271(n)`
-/

namespace A226725.P15920705416326833777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (n + 1) * A152271 n

end

end A226725.P15920705416326833777

namespace A226725

/-- `A097362(n+1)*A152271(n)` -/
def P15920705416326833777.Spec : Prop :=
  ∀ n, P15920705416326833777.a n = A226725 (n + 1)

end A226725

/-! ## A226725.P16889968231277559668

`A225232(n+3)-A027656(n)`
-/

namespace A226725.P16889968231277559668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225232 (n + 3) - A027656 n

end

end A226725.P16889968231277559668

namespace A226725

/-- `A225232(n+3)-A027656(n)` -/
def P16889968231277559668.Spec : Prop :=
  ∀ n, P16889968231277559668.a n = A226725 (n + 1)

end A226725

/-! ## A226725.P13949656353940390297

`gcd(A143785(n+1), A265225(n))`
-/

namespace A226725.P13949656353940390297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143785 (n + 1)) (A265225 n)

end

end A226725.P13949656353940390297

namespace A226725

/-- `gcd(A143785(n+1), A265225(n))` -/
def P13949656353940390297.Spec : Prop :=
  ∀ n, (P13949656353940390297.a n : ℤ) = A226725 (n + 1)

end A226725

/-! ## A226725.P2675282492867317478

`gcd(A027484(n+2), A225232(n+3))`
-/

namespace A226725.P2675282492867317478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027484 (n + 2)) (A225232 (n + 3))

end

end A226725.P2675282492867317478

namespace A226725

/-- `gcd(A027484(n+2), A225232(n+3))` -/
def P2675282492867317478.Spec : Prop :=
  ∀ n, (P2675282492867317478.a n : ℤ) = A226725 (n + 1)

end A226725

/-!
# A226726: Numbers n such that the product of its decimal digits (A007954) is between n/2-1 and n/2+1.

The programs for A226726, there is no canonical definition to state claims against.
-/

/-! ## A226726.P6406339771207498701

`eq[A004396(A230099(n)), A028310(n)]`
-/

namespace A226726.P6406339771207498701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226726.P6406339771207498701

/-!
# A226727: Places n where A225867(n)=5.

The programs for A226727, there is no canonical definition to state claims against.
-/

/-! ## A226727.P17799557578275203960

`eq[5, A225867(n+6)]+6`
-/

namespace A226727.P17799557578275203960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225867 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 6

end

end A226727.P17799557578275203960

/-! ## A226727.P2751092715712412653

`A020715(eq[5, A225867(n+6)])`
-/

namespace A226727.P2751092715712412653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225867 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226727.P2751092715712412653

/-! ## A226727.P8962806090337920083

`A143616(eq[5, A225867(n+6)])`
-/

namespace A226727.P8962806090337920083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225867 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226727.P8962806090337920083

/-!
# A226729: G.f.: 1 / G(0), where G(k) = 1 - q^(k+1) / (1 - q^(k+1)/G(k+2) ).

The programs for A226729, there is no canonical definition to state claims against.
-/

/-! ## A226729.P9818842926095916458

`A065033(A288260(round(sqrt(n²+1))-1))`
-/

namespace A226729.P9818842926095916458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A288260 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat).toNat

end

end A226729.P9818842926095916458

/-! ## A226729.P7888995862729550637

`A054404(A247594(n)+1)`
-/

namespace A226729.P7888995862729550637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A247594 n + 1).toNat

end

end A226729.P7888995862729550637

/-! ## A226729.P6607462430257290726

`A054404(A036600(n+3)+A036592(n+3))`
-/

namespace A226729.P6607462430257290726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A036600 (n + 3) + A036592 (n + 3)).toNat

end

end A226729.P6607462430257290726

/-! ## A226729.P1728508855905615229

`A257639(n*∑[floor(((ceil(2^(n-1))+1)/2)²)]+1)`
-/

namespace A226729.P1728508855905615229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1 : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A226729.P1728508855905615229

/-! ## A226729.P8464488299584948847

`A172471(A151468(n))`
-/

namespace A226729.P8464488299584948847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A151468 n).toNat

end

end A226729.P8464488299584948847

/-!
# A226730: a(n) = n! + (2*n-1)!/(n-1)!.

The programs for A226730, the canonical program `A226730.P13371083283616344552` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226730 has offset 1).

The definition of A226730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226730.P13371083283616344552

`(n+1)!+(2*(n+1)-1)!/n!`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226730

/-- `(n+1)!+(2*(n+1)-1)!/n!` -/
def P13371083283616344552.Spec : Prop :=
  ∀ n, P13371083283616344552.a n = (A226730 (n + 1) : ℚ)

end A226730

/-! ## A226730.P6469133401934065073

`(n+1)!+∏[4*n+2]/2`
-/

namespace A226730.P6469133401934065073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A226730.P6469133401934065073

namespace A226730

/-- `(n+1)!+∏[4*n+2]/2` -/
def P6469133401934065073.Spec : Prop :=
  ∀ n, P6469133401934065073.a n = (A226730 (n + 1) : ℚ)

end A226730

/-! ## A226730.P8513510814420886743

`(C(2*n+1, n)+1)*(n+1)!`
-/

namespace A226730.P8513510814420886743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) n + 1) * Nat.factorial (n + 1)

end

end A226730.P8513510814420886743

namespace A226730

/-- `(C(2*n+1, n)+1)*(n+1)!` -/
def P8513510814420886743.Spec : Prop :=
  ∀ n, (P8513510814420886743.a n : ℤ) = A226730 (n + 1)

end A226730

/-! ## A226730.P15533853106820876285

`A000407(n)+(n+1)!`
-/

namespace A226730.P15533853106820876285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000407 n + (Nat.factorial (n + 1) : ℤ)

end

end A226730.P15533853106820876285

namespace A226730

/-- `A000407(n)+(n+1)!` -/
def P15533853106820876285.Spec : Prop :=
  ∀ n, P15533853106820876285.a n = A226730 (n + 1)

end A226730

/-! ## A226730.P15275202520555570141

`(A001700(n)+1)*(n+1)!`
-/

namespace A226730.P15275202520555570141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001700 n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A226730.P15275202520555570141

namespace A226730

/-- `(A001700(n)+1)*(n+1)!` -/
def P15275202520555570141.Spec : Prop :=
  ∀ n, P15275202520555570141.a n = A226730 (n + 1)

end A226730

/-! ## A226730.P17004509571984900395

`(A001405(2*n+1)+1)*(n+1)!`
-/

namespace A226730.P17004509571984900395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n + 1) + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A226730.P17004509571984900395

namespace A226730

/-- `(A001405(2*n+1)+1)*(n+1)!` -/
def P17004509571984900395.Spec : Prop :=
  ∀ n, P17004509571984900395.a n = A226730 (n + 1)

end A226730

/-! ## A226730.P17237919085287329331

`((2*n+1)*A000108(n)+1)*(n+1)!`
-/

namespace A226730.P17237919085287329331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * A000108 n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A226730.P17237919085287329331

namespace A226730

/-- `((2*n+1)*A000108(n)+1)*(n+1)!` -/
def P17237919085287329331.Spec : Prop :=
  ∀ n, P17237919085287329331.a n = A226730 (n + 1)

end A226730

/-! ## A226730.P3023390625375250953

`A000407(n)+A000142(n+1)`
-/

namespace A226730.P3023390625375250953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000407 n + A000142 (n + 1)

end

end A226730.P3023390625375250953

namespace A226730

/-- `A000407(n)+A000142(n+1)` -/
def P3023390625375250953.Spec : Prop :=
  ∀ n, P3023390625375250953.a n = A226730 (n + 1)

end A226730

/-! ## A226730.P5651684791666885811

`A000142(n+1)*A260878(n+1)`
-/

namespace A226730.P5651684791666885811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A260878 (n + 1)

end

end A226730.P5651684791666885811

namespace A226730

/-- `A000142(n+1)*A260878(n+1)` -/
def P5651684791666885811.Spec : Prop :=
  ∀ n, P5651684791666885811.a n = A226730 (n + 1)

end A226730

/-! ## A226730.P2626050250030927724

`(A088218(n+1)+1)*A000142(n+1)`
-/

namespace A226730.P2626050250030927724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088218 (n + 1) + 1) * A000142 (n + 1)

end

end A226730.P2626050250030927724

namespace A226730

/-- `(A088218(n+1)+1)*A000142(n+1)` -/
def P2626050250030927724.Spec : Prop :=
  ∀ n, P2626050250030927724.a n = A226730 (n + 1)

end A226730

/-!
# A226731: a(n) = (2n - 1)!/(2n).

The programs for A226731, the canonical program `A226731.P5847774543640285267` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226731 has offset 3).

The definition of A226731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226731.P5847774543640285267

`(2*(n+3)-1)!/(2*(n+3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226731

/-- `(2*(n+3)-1)!/(2*(n+3))` -/
def P5847774543640285267.Spec : Prop :=
  ∀ n, P5847774543640285267.a n = (A226731 (n + 3) : ℚ)

end A226731

/-! ## A226731.P18376999276939608656

`A009445(n+2)/A005843(n+3)`
-/

namespace A226731.P18376999276939608656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009445 (n + 2) : ℚ) / (A005843 (n + 3) : ℚ)

end

end A226731.P18376999276939608656

namespace A226731

/-- `A009445(n+2)/A005843(n+3)` -/
def P18376999276939608656.Spec : Prop :=
  ∀ n, P18376999276939608656.a n = (A226731 (n + 3) : ℚ)

end A226731

/-! ## A226731.P3600709972650640076

`A002674(n+3)/A001105(n+3)`
-/

namespace A226731.P3600709972650640076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002674 (n + 3) : ℚ) / (A001105 (n + 3) : ℚ)

end

end A226731.P3600709972650640076

namespace A226731

/-- `A002674(n+3)/A001105(n+3)` -/
def P3600709972650640076.Spec : Prop :=
  ∀ n, P3600709972650640076.a n = (A226731 (n + 3) : ℚ)

end A226731

/-! ## A226731.P2921163492103124545

`A055637(2*(n+3))`
-/

namespace A226731.P2921163492103124545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055637 (2 * (n + 3))

end

end A226731.P2921163492103124545

namespace A226731

/-- `A055637(2*(n+3))` -/
def P2921163492103124545.Spec : Prop :=
  ∀ n, P2921163492103124545.a n = A226731 (n + 3)

end A226731

/-! ## A226731.P9837334314567848040

`A092043(2*(n+3))`
-/

namespace A226731.P9837334314567848040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092043 (2 * (n + 3))

end

end A226731.P9837334314567848040

namespace A226731

/-- `A092043(2*(n+3))` -/
def P9837334314567848040.Spec : Prop :=
  ∀ n, P9837334314567848040.a n = A226731 (n + 3)

end A226731

/-!
# A226732: Palindromes that cannot be expressed as a nontrivial product of two palindromes.

The programs for A226732, there is no canonical definition to state claims against.
-/

/-! ## A226732.P7203333845791813234

`A033865(∪[A083137(n+1), A084325(n+1)])`
-/

namespace A226732.P7203333845791813234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084325 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A226732.P7203333845791813234

/-! ## A226732.P6343625245890391095

`∩[A071251(n+1), A331913(n+1)]`
-/

namespace A226732.P6343625245890391095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226732.P6343625245890391095

/-! ## A226732.P13262122280263053946

`∩[A082208(n+1), A331784(n+1)]`
-/

namespace A226732.P13262122280263053946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226732.P13262122280263053946

/-! ## A226732.P4846042198084347296

`∩[A083136(n+1), A331784(n+1)]`
-/

namespace A226732.P4846042198084347296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226732.P4846042198084347296

/-! ## A226732.P2095516767860966012

`∩[A117055(n+1), A331784(n+1)]`
-/

namespace A226732.P2095516767860966012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226732.P2095516767860966012

/-!
# A226733: G.f.: 1 / (1 + 8*x*G(x)^2 - 10*x*G(x)^3) where G(x) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A226733, the canonical program `A226733.P4065261527066992437` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226733 has offset 0).

The definition of A226733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226733.P4065261527066992437

`∑{#}[n, C(2*#, n-#)*C(4*n-2*#, #)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226733

/-- `∑{#}[n, C(2*#, n-#)*C(4*n-2*#, #)]` -/
def P4065261527066992437.Spec : Prop :=
  ∀ n, (P4065261527066992437.a n : ℤ) = A226733 n

theorem P4065261527066992437.correct : P4065261527066992437.Spec := by
  intro n
  simp only [A226733]

end A226733

/-! ## A226733.P5338917868313049966

`∑{#}[n, (-3)^(n-#)*C(4*n+1, #)]`
-/

namespace A226733.P5338917868313049966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (4 * n + 1) k : ℚ)

end

end A226733.P5338917868313049966

namespace A226733

/-- `∑{#}[n, (-3)^(n-#)*C(4*n+1, #)]` -/
def P5338917868313049966.Spec : Prop :=
  ∀ n, P5338917868313049966.a n = (A226733 n : ℚ)

end A226733

/-!
# A226734: a(n) = A002110(n) mod A000217(n).

The programs for A226734, there is no canonical definition to state claims against.
-/

/-! ## A226734.P2700352101615623764

`Δ[A143293(n)]%∑[n+1]`
-/

namespace A226734.P2700352101615623764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A226734.P2700352101615623764

/-! ## A226734.P12156460817723343405

`∏[Δ[A007504(n)]]%∑[n+1]`
-/

namespace A226734.P12156460817723343405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A226734.P12156460817723343405

/-! ## A226734.P8955088552536155544

`∏[A000040(n+1)]%∑[n+1]`
-/

namespace A226734.P8955088552536155544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A226734.P8955088552536155544

/-! ## A226734.P6587665333288683754

`∏[record[A006530(n+2)]]%∑[n+1]`
-/

namespace A226734.P6587665333288683754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A226734.P6587665333288683754

/-! ## A226734.P8322849070833005163

`∏[record[A014963(n+2)]]%∑[n+1]`
-/

namespace A226734.P8322849070833005163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A226734.P8322849070833005163

/-! ## A226734.P17473157801510138286

`∏[record[A020639(n+2)]]%∑[n+1]`
-/

namespace A226734.P17473157801510138286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A226734.P17473157801510138286

/-! ## A226734.P9423910675596611884

`A002110(n+1)%Δ[A000292(n)]`
-/

namespace A226734.P9423910675596611884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002110 (n + 1)) (f1 (n + 1) - f1 n)

end

end A226734.P9423910675596611884

/-!
# A226736: Triangular numbers such that the binary representation is of the form either Tbt or Tt, where T and t are binary representations of triangular numbers with equal binary length, and b is a binary digit: b = 1 or 0.

The programs for A226736, there is no canonical definition to state claims against.
-/

/-! ## A226736.P3275287374390773454

`A135571(A301982(n+1)+1)`
-/

namespace A226736.P3275287374390773454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135571 (A301982 (n + 1) + 1).toNat

end

end A226736.P3275287374390773454

/-! ## A226736.P17560266197962954110

`C(A341059(A341057(n+3)), 2)`
-/

namespace A226736.P17560266197962954110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341059 (A341057 (n + 3)).toNat).toNat 2

end

end A226736.P17560266197962954110

/-!
# A226737: a(n) = 11^n + n.

The programs for A226737, the canonical program `A226737.P863771708348360538` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226737 has offset 0).

The definition of A226737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+n` (program `A226737.P863771708348360538`, by `A226737.P863771708348360538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226737.P863771708348360538

`11^n+n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226737

/-- `11^n+n` -/
def P863771708348360538.Spec : Prop :=
  ∀ n, (P863771708348360538.a n : ℤ) = A226737 n

theorem P863771708348360538.correct : P863771708348360538.Spec := by
  intro n
  simp only [A226737]

end A226737

/-!
# A226738: Row 3 of array in A226513.

The programs for A226738, there is no canonical definition to state claims against.
-/

/-! ## A226738.P766169583018706404

`A226513(∑[n+4]+2)`
-/

namespace A226738.P766169583018706404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A226738.P766169583018706404

/-! ## A226738.P17525083066239666057

`A091345(n)+A083410(n+1)`
-/

namespace A226738.P17525083066239666057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091345 n + A083410 (n + 1)

end

end A226738.P17525083066239666057

/-! ## A226738.P228720333490843638

`A091345(n)+A327868(2*(n+1))/2`
-/

namespace A226738.P228720333490843638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091345 n : ℚ) + (A327868 (2 * (n + 1)) : ℚ) / 2

end

end A226738.P228720333490843638

/-! ## A226738.P812546100855951319

`record[A226513(A046691(A126759(n)))]`
-/

namespace A226738.P812546100855951319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A046691 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226738.P812546100855951319

/-! ## A226738.P17172289476580381532

`record[A226513(A046691(A286589(n)))]`
-/

namespace A226738.P17172289476580381532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A046691 (A286589 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226738.P17172289476580381532

/-!
# A226739: Row 4 of array in A226513.

The programs for A226739, there is no canonical definition to state claims against.
-/

/-! ## A226739.P4973589963571605419

`A226513(∑[n+5]+5)`
-/

namespace A226739.P4973589963571605419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A226739.P4973589963571605419

/-! ## A226739.P8939854709359680216

`lcm(A033999(n), A226513(A052905(n+2)))`
-/

namespace A226739.P8939854709359680216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A226513 (A052905 (n + 2)).toNat)

end

end A226739.P8939854709359680216

/-! ## A226739.P6871305934395796625

`A316569(3*n)+A226513(A052905(n+2))`
-/

namespace A226739.P6871305934395796625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 (3 * n) + A226513 (A052905 (n + 2)).toNat

end

end A226739.P6871305934395796625

/-! ## A226739.P16813203684527210032

`or(A355744(n+5)!, A226513(A052905(n+2)))`
-/

namespace A226739.P16813203684527210032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A355744 (n + 5)).toNat : ℤ) (A226513 (A052905 (n + 2)).toNat)

end

end A226739.P16813203684527210032

/-! ## A226739.P5915154861076197191

`A226513(A052905(n+2))+A008683(4*(n+1))`
-/

namespace A226739.P5915154861076197191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A052905 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A226739.P5915154861076197191

/-! ## A226739.P14081376161683919829

`A001222(A181943(n+1))*A226513(A052905(n+2))`
-/

namespace A226739.P14081376161683919829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181943 (n + 1)).toNat * A226513 (A052905 (n + 2)).toNat

end

end A226739.P14081376161683919829

/-! ## A226739.P11009981721725564115

`A226513(A052905(n+2))%A123227(n+2)`
-/

namespace A226739.P11009981721725564115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226513 (A052905 (n + 2)).toNat) (A123227 (n + 2))

end

end A226739.P11009981721725564115

/-!
# A226740: Row 5 of array in A226513.

The programs for A226740, there is no canonical definition to state claims against.
-/

/-! ## A226740.P1041334121057885228

`A226513(A055999(n+3))`
-/

namespace A226740.P1041334121057885228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A055999 (n + 3)).toNat

end

end A226740.P1041334121057885228

/-! ## A226740.P16640213220194960811

`A226513(eq[5, A025581(n)])`
-/

namespace A226740.P16640213220194960811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226740.P16640213220194960811

/-! ## A226740.P3985746909985397867

`A226513(eq[11, A099375(n)])`
-/

namespace A226740.P3985746909985397867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226740.P3985746909985397867

/-! ## A226740.P4649290219059793045

`A226513(Δ[A023551(n+1)])`
-/

namespace A226740.P4649290219059793045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (f1 (n + 1) - f1 n).toNat

end

end A226740.P4649290219059793045

/-! ## A226740.P3826365873066407621

`A226513(eq[6, A004736(n+1)])`
-/

namespace A226740.P3826365873066407621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226740.P3826365873066407621

/-!
# A226741: Column 4 of array in A226513.

The programs for A226741, the canonical program `A226741.P10796221440555663408` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226741 has offset 0).

The definition of A226741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226741.P15251887568266633541

`ogf((75-67x+17x^2-x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A226741.P15251887568266633541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [75, -67, 17, -1] [1, -5, 10, -10, 5, -1] n

end

end A226741.P15251887568266633541

namespace A226741

/-- `ogf((75-67x+17x^2-x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15251887568266633541.Spec : Prop :=
  ∀ n, P15251887568266633541.a n = A226741 n

end A226741

/-! ## A226741.P10796221440555663408

`(n+1)^4+12*(n+1)^3+36*(n+1)²+26*(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226741

/-- `(n+1)^4+12*(n+1)^3+36*(n+1)²+26*(n+1)` -/
def P10796221440555663408.Spec : Prop :=
  ∀ n, (P10796221440555663408.a n : ℤ) = A226741 n

theorem P10796221440555663408.correct : P10796221440555663408.Spec := by
  intro n
  simp only [A226741]

end A226741

/-! ## A226741.P12054285272416910710

`(n+1)*(A226514(n+1)+Δ[A226514(n)])`
-/

namespace A226741.P12054285272416910710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A226514 (n + 1) + (f1 (n + 1) - f1 n))

end

end A226741.P12054285272416910710

namespace A226741

/-- `(n+1)*(A226514(n+1)+Δ[A226514(n)])` -/
def P12054285272416910710.Spec : Prop :=
  ∀ n, P12054285272416910710.a n = A226741 n

theorem P12054285272416910710.correct : P12054285272416910710.Spec := by
  intro n
  simp only [A226741, Nat.add_sub_cancel, A226741.P12054285272416910710.f1, A226741.P12054285272416910710.a, A226741.P10796221440555663408.a, A226514, A226514.P8316194481158658202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226741

/-! ## A226741.P3211083192166411097

`∑[A003154(n+1)+∑[A080663(2*n+5)]]`
-/

namespace A226741.P3211083192166411097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080663 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226741.P3211083192166411097

namespace A226741

/-- `∑[A003154(n+1)+∑[A080663(2*n+5)]]` -/
def P3211083192166411097.Spec : Prop :=
  ∀ n, P3211083192166411097.a n = A226741 n

end A226741

/-! ## A226741.P1995347861042840781

`A226513(A155212(n)+12)`
-/

namespace A226741.P1995347861042840781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A155212 n + 12).toNat

end

end A226741.P1995347861042840781

namespace A226741

/-- `A226513(A155212(n)+12)` -/
def P1995347861042840781.Spec : Prop :=
  ∀ n, P1995347861042840781.a n = A226741 n

end A226741

/-! ## A226741.P9682909451225076691

`A226513(eq[3, A141169(n)])`
-/

namespace A226741.P9682909451225076691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226741.P9682909451225076691

namespace A226741

/-- `A226513(eq[3, A141169(n)])` -/
def P9682909451225076691.Spec : Prop :=
  ∀ n, P9682909451225076691.a n = A226741 n

end A226741

/-! ## A226741.P5326145063188505864

`A226513(eq[4, A002262(n)])`
-/

namespace A226741.P5326145063188505864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226741.P5326145063188505864

namespace A226741

/-- `A226513(eq[4, A002262(n)])` -/
def P5326145063188505864.Spec : Prop :=
  ∀ n, P5326145063188505864.a n = A226741 n

end A226741

/-! ## A226741.P4098471009548327615

`A226513(A167614(n+3)+1)`
-/

namespace A226741.P4098471009548327615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A167614 (n + 3) + 1).toNat

end

end A226741.P4098471009548327615

namespace A226741

/-- `A226513(A167614(n+3)+1)` -/
def P4098471009548327615.Spec : Prop :=
  ∀ n, P4098471009548327615.a n = A226741 n

end A226741

/-! ## A226741.P3200728543077531503

`A226513(eq[9, A158405(n+1)])`
-/

namespace A226741.P3200728543077531503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226741.P3200728543077531503

namespace A226741

/-- `A226513(eq[9, A158405(n+1)])` -/
def P3200728543077531503.Spec : Prop :=
  ∀ n, P3200728543077531503.a n = A226741 n

end A226741

/-! ## A226741.P15646320727985033859

`A226513(eq[2, A144328(n+1)-2])`
-/

namespace A226741.P15646320727985033859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226741.P15646320727985033859

namespace A226741

/-- `A226513(eq[2, A144328(n+1)-2])` -/
def P15646320727985033859.Spec : Prop :=
  ∀ n, P15646320727985033859.a n = A226741 n

end A226741

/-!
# A226743: Number of alternating sums of consecutive primes with result 2n-1.

The programs for A226743, there is no canonical definition to state claims against.
-/

/-! ## A226743.P185518919105493141

`A001222(A167614(n+1)+A008619(A192652(n)))`
-/

namespace A226743.P185518919105493141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A167614 (n + 1) + A008619 (A192652 n).toNat).toNat

end

end A226743.P185518919105493141

/-! ## A226743.P8650070473613622078

`A134452(A225420(n+1))+A003056(n)`
-/

namespace A226743.P8650070473613622078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A225420 (n + 1)).toNat + A003056 n

end

end A226743.P8650070473613622078

/-! ## A226743.P8031766498271718961

`A069010(A234018(n+5)+A206904(3*n+4))`
-/

namespace A226743.P8031766498271718961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A234018 (n + 5) + A206904 (3 * n + 4)).toNat

end

end A226743.P8031766498271718961

/-! ## A226743.P2856588659058679623

`A181648(A122111(n+1))%A338904(A213706(n)+2)`
-/

namespace A226743.P2856588659058679623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181648 (A122111 (n + 1)).toNat) (A338904 (A213706 n + 2).toNat)

end

end A226743.P2856588659058679623

/-! ## A226743.P2258959566113429143

`A333766(A371795(n)+xor(n, floor(n/2))+1)`
-/

namespace A226743.P2258959566113429143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A371795 n + (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1)).toNat

end

end A226743.P2258959566113429143

/-!
# A226744: Round((10^n)/(log(10^n) - 1)).

The programs for A226744, the canonical program `A226744.P6867386327487725127` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226744 has offset 1).

The definition of A226744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(10^(n+1)/(log(10^(n+1))-1))` (program `A226744.P6867386327487725127`, by `A226744.P6867386327487725127.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226744.P6867386327487725127

`round(10^(n+1)/(log(10^(n+1))-1))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226744

/-- `round(10^(n+1)/(log(10^(n+1))-1))` -/
def P6867386327487725127.Spec : Prop :=
  ∀ n, P6867386327487725127.a n = A226744 (n + 1)

theorem P6867386327487725127.correct : P6867386327487725127.Spec := by
  intro n
  simp only [A226744, Nat.add_sub_cancel]

end A226744

/-! ## A226744.P9749653797020787526

`A103649(n+1)+A035214(A061600(n))`
-/

namespace A226744.P9749653797020787526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103649 (n + 1) + A035214 (A061600 n).toNat

end

end A226744.P9749653797020787526

namespace A226744

/-- `A103649(n+1)+A035214(A061600(n))` -/
def P9749653797020787526.Spec : Prop :=
  ∀ n, P9749653797020787526.a n = A226744 (n + 1)

end A226744

/-! ## A226744.P6474455717524435824

`A125103(A212342(n))+A103649(n+1)`
-/

namespace A226744.P6474455717524435824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125103 (A212342 n).toNat + A103649 (n + 1)

end

end A226744.P6474455717524435824

namespace A226744

/-- `A125103(A212342(n))+A103649(n+1)` -/
def P6474455717524435824.Spec : Prop :=
  ∀ n, P6474455717524435824.a n = A226744 (n + 1)

end A226744

/-! ## A226744.P4471435975288052031

`A103649(n+1)+A000034(A000010(n+1))`
-/

namespace A226744.P4471435975288052031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103649 (n + 1) + A000034 (A000010 (n + 1)).toNat

end

end A226744.P4471435975288052031

namespace A226744

/-- `A103649(n+1)+A000034(A000010(n+1))` -/
def P4471435975288052031.Spec : Prop :=
  ∀ n, P4471435975288052031.a n = A226744 (n + 1)

end A226744

/-! ## A226744.P13482336209587352328

`A103649(n+1)+A035214(A006005(n+1))`
-/

namespace A226744.P13482336209587352328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103649 (n + 1) + A035214 (A006005 (n + 1)).toNat

end

end A226744.P13482336209587352328

namespace A226744

/-- `A103649(n+1)+A035214(A006005(n+1))` -/
def P13482336209587352328.Spec : Prop :=
  ∀ n, P13482336209587352328.a n = A226744 (n + 1)

end A226744

/-!
# A226745: Least number k such that 9^(2^i) + k is prime for i = 0,1,..,n-1.

The programs for A226745, there is no canonical definition to state claims against.
-/

/-! ## A226745.P138584572929850366

`A226281(A342333(n)+2)`
-/

namespace A226745.P138584572929850366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226281 (A342333 n + 2).toNat

end

end A226745.P138584572929850366

/-! ## A226745.P10422473989885687911

`A226281(A065637(n+1)+1)`
-/

namespace A226745.P10422473989885687911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226281 (A065637 (n + 1) + 1).toNat

end

end A226745.P10422473989885687911

/-!
# A226746: Numbers n such that x^2 = 1 has more than two solutions in the Gaussian integers modulo n.

The programs for A226746, there is no canonical definition to state claims against.
-/

/-! ## A226746.P5240111201904909930

`eq[1, A109607(n)%2]`
-/

namespace A226746.P5240111201904909930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109607 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226746.P5240111201904909930

/-! ## A226746.P11735300523147333547

`eq[0, A000013(n)%4]`
-/

namespace A226746.P11735300523147333547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000013 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226746.P11735300523147333547

/-! ## A226746.P6464225953743062229

`lt[2, A227091(n+1)]+1`
-/

namespace A226746.P6464225953743062229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A226746.P6464225953743062229

/-! ## A226746.P15153162610822167418

`eq[0, A353768((n+1)²)]+1`
-/

namespace A226746.P15153162610822167418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353768 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226746.P15153162610822167418

/-! ## A226746.P6298034839762372762

`comp[A070669(2*(n+1))-n]`
-/

namespace A226746.P6298034839762372762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (2 * (n + 1)) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A226746.P6298034839762372762

/-! ## A226746.P5140268162530908004

`lt[A002618(n+1)%4, 1]+1`
-/

namespace A226746.P5140268162530908004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002618 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A226746.P5140268162530908004

/-! ## A226746.P4476525599135451234

`eq[0, A000010((n+1)²)%4]+1`
-/

namespace A226746.P4476525599135451234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ((n + 1) ^ 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226746.P4476525599135451234

/-! ## A226746.P3990843772916477919

`lt[A000010((n+2)²)%4, 1]+2`
-/

namespace A226746.P3990843772916477919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ((n + 2) ^ 2)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A226746.P3990843772916477919

/-! ## A226746.P4762422287799147086

`lt[A000010((C(2, n)-n)²)%4, 1]`
-/

namespace A226746.P4762422287799147086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (((Nat.choose 2 n : ℤ) - (n : ℤ)) ^ 2).toNat) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A226746.P4762422287799147086

/-! ## A226746.P13686481345083484824

`lt[5, gcd(8, A000010(4*(n+1)))]+1`
-/

namespace A226746.P13686481345083484824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A000010 (4 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226746.P13686481345083484824

/-!
# A226750: Decimal expansion of the number x other than -3 defined by x*e^x = -3/e^3.

The programs for A226750, there is no canonical definition to state claims against.
-/

/-! ## A226750.P3534049938853310829

`9-A194567(n+1)`
-/

namespace A226750.P3534049938853310829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A194567 (n + 1 + 1)

end

end A226750.P3534049938853310829

/-!
# A226751: G.f.: 1 / (1 + 6*x*G(x) - 7*x*G(x)^2), where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A226751, the canonical program `A226751.P7675047536145123585` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226751 has offset 0).

The definition of A226751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226751.P7675047536145123585

`∑{#}[n, C(2*#, n-#)*C(3*n-2*#, #)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226751

/-- `∑{#}[n, C(2*#, n-#)*C(3*n-2*#, #)]` -/
def P7675047536145123585.Spec : Prop :=
  ∀ n, (P7675047536145123585.a n : ℤ) = A226751 n

theorem P7675047536145123585.correct : P7675047536145123585.Spec := by
  intro n
  simp only [A226751]

end A226751

/-! ## A226751.P4226633178102508811

`∑{#}[n, (-3)^(n-#)*C(3*n+1, #)]`
-/

namespace A226751.P4226633178102508811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (3 * n + 1) k : ℚ)

end

end A226751.P4226633178102508811

namespace A226751

/-- `∑{#}[n, (-3)^(n-#)*C(3*n+1, #)]` -/
def P4226633178102508811.Spec : Prop :=
  ∀ n, P4226633178102508811.a n = (A226751 n : ℚ)

end A226751

/-!
# A226754: Numbers of the form p*q, p and q prime with q=2*p+3.

The programs for A226754, there is no canonical definition to state claims against.
-/

/-! ## A226754.P8301963060801898092

`A023204(n+1)*A089531(n+1)`
-/

namespace A226754.P8301963060801898092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1) * A089531 (n + 1)

end

end A226754.P8301963060801898092

/-! ## A226754.P226070855825660184

`A000040(A089530(n+1))*A089531(n+1)`
-/

namespace A226754.P226070855825660184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A089530 (n + 1)).toNat * A089531 (n + 1)

end

end A226754.P226070855825660184

/-! ## A226754.P13368355750158067989

`p?[A067076(n+1)]*A089531(n+1)`
-/

namespace A226754.P13368355750158067989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A089531 (n + 1)

end

end A226754.P13368355750158067989

/-! ## A226754.P15084383968964836247

`A000040(A089532(n+1))*A023204(n+1)`
-/

namespace A226754.P15084383968964836247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A089532 (n + 1)).toNat * A023204 (n + 1)

end

end A226754.P15084383968964836247

/-! ## A226754.P6705349604397699565

`p?[A072055(n+1)+2]*p?[(n-1)*A001222(2*n+1)]`
-/

namespace A226754.P6705349604397699565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A226754.P6705349604397699565

/-! ## A226754.P11206695268455774139

`p?[(2*n+5)*A001222(n+1)]*A023204(n+1)`
-/

namespace A226754.P11206695268455774139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A023204 (n + 1)

end

end A226754.P11206695268455774139

/-! ## A226754.P403910763398709008

`p?[(2*n+5)*A001222(n+1)]*p?[(n-1)*A001222(2*n+1)]`
-/

namespace A226754.P403910763398709008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) * A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A226754.P403910763398709008

/-! ## A226754.P1614554398795600830

`A014106(A023204(n+1))`
-/

namespace A226754.P1614554398795600830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 (A023204 (n + 1)).toNat

end

end A226754.P1614554398795600830

/-! ## A226754.P11516163666640204871

`record[A000040(n+1)*A076567(A000040(n+1))]`
-/

namespace A226754.P11516163666640204871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A076567 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226754.P11516163666640204871

/-! ## A226754.P9537317003488714869

`record[A006530(n+2)*A076567(A006530(n+2))]`
-/

namespace A226754.P9537317003488714869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A076567 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226754.P9537317003488714869

/-! ## A226754.P12630877997303401149

`record[A008578(n+2)*A076567(A008578(n+2))]`
-/

namespace A226754.P12630877997303401149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A076567 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226754.P12630877997303401149

/-! ## A226754.P13723907519842979805

`record[A014963(n+2)*A076567(A014963(n+2))]`
-/

namespace A226754.P13723907519842979805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A076567 (A014963 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226754.P13723907519842979805

/-! ## A226754.P3259751373132538672

`record[A020639(n+2)*A076567(A020639(n+2))]`
-/

namespace A226754.P3259751373132538672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A076567 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226754.P3259751373132538672

/-! ## A226754.P13623118006504306090

`record[A000040(n+1)*A076565(A000040(n+1)+1)]`
-/

namespace A226754.P13623118006504306090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A076565 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226754.P13623118006504306090

/-! ## A226754.P651653967469360174

`record[A008578(n+2)*A076565(A008578(n+2)+1)]`
-/

namespace A226754.P651653967469360174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A076565 (A008578 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226754.P651653967469360174

/-! ## A226754.P446894749787663971

`A105638(A089531(n+1))`
-/

namespace A226754.P446894749787663971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (A089531 (n + 1)).toNat

end

end A226754.P446894749787663971

/-!
# A226755: Numbers of the form p*q, p and q prime with q=2p-3.

The programs for A226755, there is no canonical definition to state claims against.
-/

/-! ## A226755.P673472324386693503

`A063908(n+1)*A092109(n+1)`
-/

namespace A226755.P673472324386693503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1) * A092109 (n + 1)

end

end A226755.P673472324386693503

/-! ## A226755.P5072224713753820848

`(A241817(n+1)-3)*A063908(n+1)`
-/

namespace A226755.P5072224713753820848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A241817 (n + 1) - 3) * A063908 (n + 1)

end

end A226755.P5072224713753820848

/-! ## A226755.P3078599812093150389

`A241817(n+1)/2*A092109(n+1)`
-/

namespace A226755.P3078599812093150389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241817 (n + 1) : ℚ) / 2 * (A092109 (n + 1) : ℚ)

end

end A226755.P3078599812093150389

/-! ## A226755.P4828536721030593283

`A000217(A092109(n+1)+1)-1`
-/

namespace A226755.P4828536721030593283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A092109 (n + 1) + 1).toNat - 1

end

end A226755.P4828536721030593283

/-! ## A226755.P663331321428560922

`A014107(A063908(n+1))`
-/

namespace A226755.P663331321428560922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 (A063908 (n + 1)).toNat

end

end A226755.P663331321428560922

/-! ## A226755.P212904977214968584

`record[A076565(2*n+1)*A076565(n+1)]`
-/

namespace A226755.P212904977214968584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (2 * n + 1) * A076565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226755.P212904977214968584

/-! ## A226755.P2357646980147360496

`record[A090368(2*(n+1))*A090368(n+2)]`
-/

namespace A226755.P2357646980147360496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (2 * (n + 1)) * A090368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226755.P2357646980147360496

/-! ## A226755.P14600576681407231471

`record[A100005(2*(n+1))*A100005(n+2)]`
-/

namespace A226755.P14600576681407231471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100005 (2 * (n + 1)) * A100005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226755.P14600576681407231471

/-! ## A226755.P5630583070084387436

`record[A100029(2*(n+1))*A100029(n+2)]`
-/

namespace A226755.P5630583070084387436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100029 (2 * (n + 1)) * A100029 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226755.P5630583070084387436

/-! ## A226755.P11091701283183971261

`A000096(A092109(n+1))`
-/

namespace A226755.P11091701283183971261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A092109 (n + 1)).toNat

end

end A226755.P11091701283183971261

/-! ## A226755.P12696138463612210209

`A107386(A241817(n+1))`
-/

namespace A226755.P12696138463612210209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107386 (A241817 (n + 1)).toNat

end

end A226755.P12696138463612210209

/-! ## A226755.P6363337109952711058

`A160050(A092109(n+1)+1)`
-/

namespace A226755.P6363337109952711058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160050 (A092109 (n + 1) + 1).toNat

end

end A226755.P6363337109952711058

/-! ## A226755.P2292980039457548343

`A125650(p?[2*n-A010051(n+1)])`
-/

namespace A226755.P2292980039457548343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125650 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A226755.P2292980039457548343

/-! ## A226755.P14463111697549525875

`record[A053815(2*n+3)*A053815(n+3)]`
-/

namespace A226755.P14463111697549525875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053815 (2 * n + 3) * A053815 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226755.P14463111697549525875

/-! ## A226755.P13952082935045833672

`record[Δ[A061397(2*n+1)*A061397(n+2)]]`
-/

namespace A226755.P13952082935045833672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * n + 1) * A061397 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226755.P13952082935045833672

/-! ## A226755.P5021405858100240512

`record[A051543(2*n+1)*A051543(4*n+1)]`
-/

namespace A226755.P5021405858100240512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (2 * n + 1) * A051543 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226755.P5021405858100240512

/-! ## A226755.P17371286113852965657

`record[A126800(2*n+3)*A126800(4*n+3)]`
-/

namespace A226755.P17371286113852965657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126800 (2 * n + 3) * A126800 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226755.P17371286113852965657

/-! ## A226755.P4295213672151426049

`record[A097706(A110560(2*(n+1)))*A110560(n+1)]`
-/

namespace A226755.P4295213672151426049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A110560 (2 * (n + 1))).toNat * A110560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226755.P4295213672151426049

/-! ## A226755.P14733812386672568502

`A092109(n+1)*A110657(2*A092109(n+1))`
-/

namespace A226755.P14733812386672568502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092109 (n + 1) * A110657 (2 * A092109 (n + 1)).toNat

end

end A226755.P14733812386672568502

/-!
# A226756: Number of elements X in the matrix ring M_2(Z_n) such that X^2 == X (mod n).

The programs for A226756, there is no canonical definition to state claims against.
-/

/-! ## A226756.P330509611952536660

`A124129(n+1)+A062534(∏{e}[n+1, #+1])`
-/

namespace A226756.P330509611952536660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124129 (n + 1) + A062534 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A226756.P330509611952536660

/-! ## A226756.P18382667137308456088

`A282545(A052934(n))*A282562(n)`
-/

namespace A226756.P18382667137308456088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282545 (A052934 n).toNat * A282562 n

end

end A226756.P18382667137308456088

/-!
# A226757: a(n) = number of distinct quadruples of squares modulo n.

The programs for A226757, there is no canonical definition to state claims against.
-/

/-! ## A226757.P1575568216319983871

`A000224(n+1)^4`
-/

namespace A226757.P1575568216319983871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (n + 1) ^ 4

end

end A226757.P1575568216319983871

/-! ## A226757.P7828795221847572217

`(A105612(n+1)+1)^4`
-/

namespace A226757.P7828795221847572217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105612 (n + 1) + 1) ^ 4

end

end A226757.P7828795221847572217

/-! ## A226757.P17804996797557881246

`A000224(-xor(n, -1))²²`
-/

namespace A226757.P17804996797557881246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000224 (-Int.xor (n : ℤ) (-1)).toNat ^ 2) ^ 2

end

end A226757.P17804996797557881246

/-! ## A226757.P9725771149853134069

`A000224(Δ[n²]-n)²²`
-/

namespace A226757.P9725771149853134069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000224 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2) ^ 2

end

end A226757.P9725771149853134069

/-! ## A226757.P9832104135000285870

`(1-A095972(n+1)+n)²²`
-/

namespace A226757.P9832104135000285870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A095972 (n + 1) + (n : ℤ)) ^ 2) ^ 2

end

end A226757.P9832104135000285870

/-! ## A226757.P15919132929175384474

`A000583(A000224(n+1))`
-/

namespace A226757.P15919132929175384474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A000224 (n + 1)).toNat

end

end A226757.P15919132929175384474

/-! ## A226757.P9931699067311741756

`A000290(A000224(n+1)²)`
-/

namespace A226757.P9931699067311741756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000224 (n + 1) ^ 2).toNat

end

end A226757.P9931699067311741756

/-! ## A226757.P14998614434466608649

`A000290(A000224(n+1)*A000224(n+1))`
-/

namespace A226757.P14998614434466608649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000224 (n + 1) * A000224 (n + 1)).toNat

end

end A226757.P14998614434466608649

/-! ## A226757.P12231764442515747070

`Δ[eq[0, A096008(n+1)]]^4`
-/

namespace A226757.P12231764442515747070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 4

end

end A226757.P12231764442515747070

/-!
# A226758: E.g.f.: A(x) = x + sin(A(x)^2).

The programs for A226758, there is no canonical definition to state claims against.
-/

/-! ## A226758.P1513826414553169347

`n!*record[A092392(n)-A185274(n)]`
-/

namespace A226758.P1513826414553169347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A185274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226758.P1513826414553169347

/-! ## A226758.P1010751276435801760

`A000027(A001813(n)-A052721(n))`
-/

namespace A226758.P1010751276435801760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001813 n - A052721 n).toNat

end

end A226758.P1010751276435801760

/-!
# A226759: E.g.f.: A(x) = x + tan(A(x)^2).

The programs for A226759, there is no canonical definition to state claims against.
-/

/-! ## A226759.P9910876882845306856

`A001096(n)!*A095929(n)`
-/

namespace A226759.P9910876882845306856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001096 n).toNat : ℤ) * A095929 n

end

end A226759.P9910876882845306856

/-! ## A226759.P1939365884472845591

`(A348613(∑[2^n])+A000984(n))*n!`
-/

namespace A226759.P1939365884472845591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348613 (∑ j ∈ Finset.range (n + 1), f1 j) + A000984 n) * (Nat.factorial n : ℤ)

end

end A226759.P1939365884472845591

/-!
# A226760: E.g.f.: A(x) = x + tanh(A(x)^2).

The programs for A226760, there is no canonical definition to state claims against.
-/

/-! ## A226760.P11233732832320675037

`A001096(n)!*A147748(n)`
-/

namespace A226760.P11233732832320675037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001096 n).toNat : ℤ) * A147748 n

end

end A226760.P11233732832320675037

/-! ## A226760.P6123014794176470847

`A001813(n)-A267391(A072214(n))`
-/

namespace A226760.P6123014794176470847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n - A267391 (A072214 n).toNat

end

end A226760.P6123014794176470847

/-!
# A226761: G.f.: 1 / (1 + 12*x*G(x)^2 - 13*x*G(x)^3) where G(x) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A226761, the canonical program `A226761.P5258069893202395614` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226761 has offset 0).

The definition of A226761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226761.P5258069893202395614

`∑{#}[n, C(3*#, n-#)*C(4*n-3*#, #)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226761

/-- `∑{#}[n, C(3*#, n-#)*C(4*n-3*#, #)]` -/
def P5258069893202395614.Spec : Prop :=
  ∀ n, (P5258069893202395614.a n : ℤ) = A226761 n

theorem P5258069893202395614.correct : P5258069893202395614.Spec := by
  intro n
  simp only [A226761]

end A226761

/-! ## A226761.P13399021882482341657

`∑{#}[n, (-4)^(n-#)*C(4*n+1, #)]`
-/

namespace A226761.P13399021882482341657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-4 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (4 * n + 1) k : ℚ)

end

end A226761.P13399021882482341657

namespace A226761

/-- `∑{#}[n, (-4)^(n-#)*C(4*n+1, #)]` -/
def P13399021882482341657.Spec : Prop :=
  ∀ n, P13399021882482341657.a n = (A226761 n : ℚ)

end A226761

/-!
# A226762: Greatest k such that 1/k >= mean of {1, 1/2, 1/3, ..., 1/n}.

The programs for A226762, the canonical program `A226762.P15803941217461780660` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226762 has offset 1).

The definition of A226762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226762.P15803941217461780660

`floor((n+1)/∑[1/(n+1)])`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226762

/-- `floor((n+1)/∑[1/(n+1)])` -/
def P15803941217461780660.Spec : Prop :=
  ∀ n, P15803941217461780660.a n = A226762 (n + 1)

theorem P15803941217461780660.correct : P15803941217461780660.Spec := by
  intro n
  simp only [A226762, Nat.add_sub_cancel]

end A226762

/-! ## A226762.P13832066530847818633

`A226763(C(2, n)+1+n)-1`
-/

namespace A226762.P13832066530847818633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (Nat.choose 2 n + 1 + n) - 1

end

end A226762.P13832066530847818633

namespace A226762

/-- `A226763(C(2, n)+1+n)-1` -/
def P13832066530847818633.Spec : Prop :=
  ∀ n, P13832066530847818633.a n = A226762 (n + 1)

end A226762

/-! ## A226762.P4609287095050318792

`A028310(A226763(n+1)-1)`
-/

namespace A226762.P4609287095050318792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A226763 (n + 1) - 1).toNat

end

end A226762.P4609287095050318792

namespace A226762

/-- `A028310(A226763(n+1)-1)` -/
def P4609287095050318792.Spec : Prop :=
  ∀ n, P4609287095050318792.a n = A226762 (n + 1)

end A226762

/-! ## A226762.P8766173758249473886

`A226763(n+1)+A057428(n)`
-/

namespace A226762.P8766173758249473886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (n + 1) + A057428 n

end

end A226762.P8766173758249473886

namespace A226762

/-- `A226763(n+1)+A057428(n)` -/
def P8766173758249473886.Spec : Prop :=
  ∀ n, P8766173758249473886.a n = A226762 (n + 1)

end A226762

/-! ## A226762.P13898991362729116408

`A226763(n+1)-A057427(n)`
-/

namespace A226762.P13898991362729116408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (n + 1) - A057427 n

end

end A226762.P13898991362729116408

namespace A226762

/-- `A226763(n+1)-A057427(n)` -/
def P13898991362729116408.Spec : Prop :=
  ∀ n, P13898991362729116408.a n = A226762 (n + 1)

end A226762

/-! ## A226762.P1473116872673686271

`A283528(A226763(n+1)-a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A226762.P1473116872673686271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A283528 (A226763 (n + 1) - a (n - 1) + 1).toNat + a (n - 1)

end

end A226762.P1473116872673686271

namespace A226762

/-- `A283528(A226763(n+1)-a(n-1)+1)+a(n-1)` -/
def P1473116872673686271.Spec : Prop :=
  ∀ n, P1473116872673686271.a n = A226762 (n + 1)

end A226762

/-! ## A226762.P9549347500860156232

`A226763(n+1)-a(A001222(A001222(n+1)))` with `a(0)=1`
-/

namespace A226762.P9549347500860156232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226763 (n + 1) - a (A001222 (A001222 (n + 1)).toNat).toNat

end

end A226762.P9549347500860156232

namespace A226762

/-- `A226763(n+1)-a(A001222(A001222(n+1)))` -/
def P9549347500860156232.Spec : Prop :=
  ∀ n, P9549347500860156232.a n = A226762 (n + 1)

end A226762

/-! ## A226762.P16463487976375062166

`A226763(n+1)-A151667(gcd(n, A000040(n+1)))`
-/

namespace A226762.P16463487976375062166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (n + 1) - A151667 (Int.gcd (n : ℤ) (A000040 (n + 1)))

end

end A226762.P16463487976375062166

namespace A226762

/-- `A226763(n+1)-A151667(gcd(n, A000040(n+1)))` -/
def P16463487976375062166.Spec : Prop :=
  ∀ n, P16463487976375062166.a n = A226762 (n + 1)

end A226762

/-! ## A226762.P13625186127233840033

`A151667(A130202(n+1))+A226763(n+1)-1`
-/

namespace A226762.P13625186127233840033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151667 (A130202 (n + 1)).toNat + (A226763 (n + 1) - 1)

end

end A226762.P13625186127233840033

namespace A226762

/-- `A151667(A130202(n+1))+A226763(n+1)-1` -/
def P13625186127233840033.Spec : Prop :=
  ∀ n, P13625186127233840033.a n = A226762 (n + 1)

end A226762

/-! ## A226762.P9857804892672256107

`A286103(A114328(n+2))`
-/

namespace A226762.P9857804892672256107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286103 (A114328 (n + 2)).toNat

end

end A226762.P9857804892672256107

namespace A226762

/-- `A286103(A114328(n+2))` -/
def P9857804892672256107.Spec : Prop :=
  ∀ n, P9857804892672256107.a n = A226762 (n + 1)

end A226762

/-!
# A226763: Least k such that 1/k <= mean of {1, 1/2, 1/3, ..., 1/n}.

The programs for A226763, the canonical program `A226763.P12235919397392570975` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226763 has offset 1).

The definition of A226763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226763.P12235919397392570975

`ceil((n+1)/∑[1/(n+1)])`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226763

/-- `ceil((n+1)/∑[1/(n+1)])` -/
def P12235919397392570975.Spec : Prop :=
  ∀ n, P12235919397392570975.a n = A226763 (n + 1)

theorem P12235919397392570975.correct : P12235919397392570975.Spec := by
  intro n
  simp only [A226763, Nat.add_sub_cancel]

end A226763

/-! ## A226763.P18029114729865571199

`char[A038722(n+1)]+floor((n+1)/∑[1/(n+1)])`
-/

namespace A226763.P18029114729865571199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n + 1 : ℚ) / (∑ j ∈ Finset.range (n + 1), f2 j)⌋

end

end A226763.P18029114729865571199

namespace A226763

/-- `char[A038722(n+1)]+floor((n+1)/∑[1/(n+1)])` -/
def P18029114729865571199.Spec : Prop :=
  ∀ n, P18029114729865571199.a n = A226763 (n + 1)

end A226763

/-! ## A226763.P4782468987792519069

`char[A249818(n+1)]+floor((n+1)/∑[1/(n+1)])`
-/

namespace A226763.P4782468987792519069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n + 1 : ℚ) / (∑ j ∈ Finset.range (n + 1), f2 j)⌋

end

end A226763.P4782468987792519069

namespace A226763

/-- `char[A249818(n+1)]+floor((n+1)/∑[1/(n+1)])` -/
def P4782468987792519069.Spec : Prop :=
  ∀ n, P4782468987792519069.a n = A226763 (n + 1)

end A226763

/-! ## A226763.P15576212219811262380

`A226762(n+1)+A057427(n)`
-/

namespace A226763.P15576212219811262380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (n + 1) + A057427 n

end

end A226763.P15576212219811262380

namespace A226763

/-- `A226762(n+1)+A057427(n)` -/
def P15576212219811262380.Spec : Prop :=
  ∀ n, P15576212219811262380.a n = A226763 (n + 1)

end A226763

/-! ## A226763.P1135780144425875138

`A226762(n+1)-A057428(n)`
-/

namespace A226763.P1135780144425875138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (n + 1) - A057428 n

end

end A226763.P1135780144425875138

namespace A226763

/-- `A226762(n+1)-A057428(n)` -/
def P1135780144425875138.Spec : Prop :=
  ∀ n, P1135780144425875138.a n = A226763 (n + 1)

end A226763

/-! ## A226763.P7900052774272522197

`A069782(A226762(n+1)%(n+1)+1)`
-/

namespace A226763.P7900052774272522197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069782 (Int.tmod (A226762 (n + 1)) (n + 1 : ℤ) + 1).toNat

end

end A226763.P7900052774272522197

namespace A226763

/-- `A069782(A226762(n+1)%(n+1)+1)` -/
def P7900052774272522197.Spec : Prop :=
  ∀ n, P7900052774272522197.a n = A226763 (n + 1)

end A226763

/-! ## A226763.P7524398953728719464

`A226762(n+1)+∑[A071642(n+1)]%2`
-/

namespace A226763.P7524398953728719464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (n + 1) + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A226763.P7524398953728719464

namespace A226763

/-- `A226762(n+1)+∑[A071642(n+1)]%2` -/
def P7524398953728719464.Spec : Prop :=
  ∀ n, P7524398953728719464.a n = A226763 (n + 1)

end A226763

/-! ## A226763.P2450570480394661161

`A134869(n+1)+A226762(n+1)-∑[n+1]`
-/

namespace A226763.P2450570480394661161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) + (A226762 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A226763.P2450570480394661161

namespace A226763

/-- `A134869(n+1)+A226762(n+1)-∑[n+1]` -/
def P2450570480394661161.Spec : Prop :=
  ∀ n, P2450570480394661161.a n = A226763 (n + 1)

end A226763

/-! ## A226763.P9856424056673680581

`A226762(n+1)+A056594(A008574(n))`
-/

namespace A226763.P9856424056673680581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (n + 1) + A056594 (A008574 n).toNat

end

end A226763.P9856424056673680581

namespace A226763

/-- `A226762(n+1)+A056594(A008574(n))` -/
def P9856424056673680581.Spec : Prop :=
  ∀ n, P9856424056673680581.a n = A226763 (n + 1)

end A226763

/-! ## A226763.P10895908204002096979

`A343639(A000120(n))+A226762(n+1)`
-/

namespace A226763.P10895908204002096979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 (A000120 n).toNat + A226762 (n + 1)

end

end A226763.P10895908204002096979

namespace A226763

/-- `A343639(A000120(n))+A226762(n+1)` -/
def P10895908204002096979.Spec : Prop :=
  ∀ n, P10895908204002096979.a n = A226763 (n + 1)

end A226763

/-! ## A226763.P11697964517801191636

`A226762(n+1)+A001221(A348470(n+1))`
-/

namespace A226763.P11697964517801191636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (n + 1) + A001221 (A348470 (n + 1)).toNat

end

end A226763.P11697964517801191636

namespace A226763

/-- `A226762(n+1)+A001221(A348470(n+1))` -/
def P11697964517801191636.Spec : Prop :=
  ∀ n, P11697964517801191636.a n = A226763 (n + 1)

end A226763

/-! ## A226763.P4363193436028130920

`A226762(n+1)+C(A134869(n+1), A000124(n+1))`
-/

namespace A226763.P4363193436028130920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (n + 1) + (Nat.choose (A134869 (n + 1)).toNat (A000124 (n + 1)).toNat : ℤ)

end

end A226763.P4363193436028130920

namespace A226763

/-- `A226762(n+1)+C(A134869(n+1), A000124(n+1))` -/
def P4363193436028130920.Spec : Prop :=
  ∀ n, P4363193436028130920.a n = A226763 (n + 1)

end A226763

/-! ## A226763.P830625380376951754

`char[A194962(n+1)]+floor((n+1)/∑[1/(n+1)])`
-/

namespace A226763.P830625380376951754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194962 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n + 1 : ℚ) / (∑ j ∈ Finset.range (n + 1), f2 j)⌋

end

end A226763.P830625380376951754

namespace A226763

/-- `char[A194962(n+1)]+floor((n+1)/∑[1/(n+1)])` -/
def P830625380376951754.Spec : Prop :=
  ∀ n, P830625380376951754.a n = A226763 (n + 1)

end A226763

/-!
# A226764: Least k such that 1 + 1/2 + ... + 1/k < 1/(k+1) + ... + 1/n.

The programs for A226764, there is no canonical definition to state claims against.
-/

/-! ## A226764.P12136954544699697159

`∑[char[A289183(n+1)-3]]`
-/

namespace A226764.P12136954544699697159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289183 (n + 1) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226764.P12136954544699697159

/-! ## A226764.P12230913708805399737

`∑[char[A226183(n+1)-4]]`
-/

namespace A226764.P12230913708805399737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226183 (n + 1) - 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226764.P12230913708805399737

/-! ## A226764.P3614492418821561423

`floor(sqrt(A296241(n+1)/10+n/3+1))`
-/

namespace A226764.P3614492418821561423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A296241 (n + 1) : ℚ) / 10 + (n : ℚ) / 3 + 1 : ℝ)⌋

end

end A226764.P3614492418821561423

/-! ## A226764.P1119232630712521832

`A000196(∑[A266719(A165240(n+1))])`
-/

namespace A226764.P1119232630712521832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (A165240 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226764.P1119232630712521832

/-! ## A226764.P18257080257282888896

`A339183(n)-A010815(A003586(n+1))`
-/

namespace A226764.P18257080257282888896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 n - A010815 (A003586 (n + 1)).toNat

end

end A226764.P18257080257282888896

/-! ## A226764.P8900929570056876369

`floor(A029837(A332668(n))/3)+1`
-/

namespace A226764.P8900929570056876369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029837 (A332668 n).toNat : ℚ) / 3⌋ + 1

end

end A226764.P8900929570056876369

/-! ## A226764.P15967322687883774481

`floor(A321698(n+1)^acot(3))`
-/

namespace A226764.P15967322687883774481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321698 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (3 : ℝ))⌋

end

end A226764.P15967322687883774481

/-! ## A226764.P7115858458537856774

`A390767(A052816(n))`
-/

namespace A226764.P7115858458537856774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390767 (A052816 n).toNat

end

end A226764.P7115858458537856774

/-! ## A226764.P13061472790396815915

`A390767(A087135(n))`
-/

namespace A226764.P13061472790396815915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390767 (A087135 n).toNat

end

end A226764.P13061472790396815915

/-! ## A226764.P3375019470484267292

`A390767(A333147(n))`
-/

namespace A226764.P3375019470484267292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390767 (A333147 n).toNat

end

end A226764.P3375019470484267292

/-!
# A226765: Decimal expansion of (13-5*sqrt(5))/2.

The programs for A226765, there is no canonical definition to state claims against.
-/

/-! ## A226765.P17520162215831572883

`A187426(n+1)`
-/

namespace A226765.P17520162215831572883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187426 (n + 1 + 1)

end

end A226765.P17520162215831572883

/-! ## A226765.P6235297115552753338

`A187798(n+1)`
-/

namespace A226765.P6235297115552753338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187798 (n + 1)

end

end A226765.P6235297115552753338

/-! ## A226765.P6424497318408369646

`9-A019827(n+1)`
-/

namespace A226765.P6424497318408369646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A019827 (n + 1)

end

end A226765.P6424497318408369646

/-! ## A226765.P4148899567502882766

`9-A019863(n+1)`
-/

namespace A226765.P4148899567502882766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A019863 (n + 1)

end

end A226765.P4148899567502882766

/-! ## A226765.P1396743961739228104

`9-A239798(n+2)`
-/

namespace A226765.P1396743961739228104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A239798 (n + 2 + 1)

end

end A226765.P1396743961739228104

/-! ## A226765.P11771083252327762856

`9-A244593(n+2)`
-/

namespace A226765.P11771083252327762856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A244593 (n + 2 + 2)

end

end A226765.P11771083252327762856

/-! ## A226765.P15788637454887663351

`9-A296182(n+2)`
-/

namespace A226765.P15788637454887663351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A296182 (n + 2 + 1)

end

end A226765.P15788637454887663351

/-!
# A226767: Let an integer with k+1 digits as n = d(k)*10^k + d(k-1)*10^(k-1) + ... + d(0)*10^0 and consider the transform T(n) = k*10^d(k) + (k-1)*10^d(k-1) + ... + 0*10^d(0). a(n) gives the fixed points of the transform T(n).

The programs for A226767, there is no canonical definition to state claims against.
-/

/-! ## A226767.P2095359835221276365

`record[A297062(A124734(3*(n+1)))]`
-/

namespace A226767.P2095359835221276365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297062 (A124734 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226767.P2095359835221276365

/-! ## A226767.P5924670497043080888

`A297062(eq[A001687(n), A340654(n+1)])`
-/

namespace A226767.P5924670497043080888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297062 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A226767.P5924670497043080888

/-!
# A226770: Let n+1 have proper divisors 1 < d_1,...,d_k < n+1; consider all proper divisors of n+d_1,...,n+d_k which did not appear earlier. Let them be d_{1,1}, d_{1,2},..., d_{k,1}, d_{k,2},..., d_{k,t}; then consider proper divisors of n+d_{1,1},...,n+d_{k,t} which did not appear earlier, repeat until no new divisor is introduced. a(n) is the total number of different divisors obtained.

The programs for A226770, there is no canonical definition to state claims against.
-/

/-! ## A226770.P16727955036884149057

`A341857(n+1)-A043284(A257582(n+1))`
-/

namespace A226770.P16727955036884149057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341857 (n + 1) - A043284 (A257582 (n + 1)).toNat

end

end A226770.P16727955036884149057

/-! ## A226770.P11295391278992017174

`A022433(n)%A055035(A077168(n))`
-/

namespace A226770.P11295391278992017174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022433 n) (A055035 (A077168 n).toNat)

end

end A226770.P11295391278992017174

/-! ## A226770.P12813802073374662102

`A130479(A022433(n))%A341857(n+1)`
-/

namespace A226770.P12813802073374662102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130479 (A022433 n).toNat) (A341857 (n + 1))

end

end A226770.P12813802073374662102

/-! ## A226770.P5576057807247919842

`A341857(n+1)-A325625(A089047(n+4))`
-/

namespace A226770.P5576057807247919842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341857 (n + 1) - A325625 (A089047 (n + 4)).toNat

end

end A226770.P5576057807247919842

/-! ## A226770.P6304666789257940672

`A341857(A077168(n))-A325625(2*n+5)`
-/

namespace A226770.P6304666789257940672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341857 (A077168 n).toNat - A325625 (2 * n + 5)

end

end A226770.P6304666789257940672

/-!
# A226772: Triangular numbers obtained as the concatenation of n and 2n.

The programs for A226772, there is no canonical definition to state claims against.
-/

/-! ## A226772.P5653118582692564945

`∩[ceil(or(1, n*(n+3))/2), A117304(n+1)]`
-/

namespace A226772.P5653118582692564945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n * (n + 3)) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226772.P5653118582692564945

/-! ## A226772.P11139518659332644194

`∩[A019550(n+2), C(n+1, 2)]`
-/

namespace A226772.P11139518659332644194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A226772.P11139518659332644194

/-! ## A226772.P1005856680590060232

`∩[A019550(n+1), A069497(n+1)]`
-/

namespace A226772.P1005856680590060232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226772.P1005856680590060232

/-! ## A226772.P10462567330800437983

`∩[A019550(n+1), A074315(n+1)]`
-/

namespace A226772.P10462567330800437983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226772.P10462567330800437983

/-!
# A226773: Number of ways to select a simple labeled graph on n nodes and then select a subset of its connected components.

The programs for A226773, there is no canonical definition to state claims against.
-/

/-! ## A226773.P15403331767330797771

`∑{#}[n, C(n, #)*2^(C(#, 2)+C(n-#, 2))]`
-/

namespace A226773.P15403331767330797771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * 2 ^ (Nat.choose k 2 + Nat.choose ((n : ℤ) - (k : ℤ)).toNat 2)

end

end A226773.P15403331767330797771

/-! ## A226773.P2026185497553334719

`A049100(A000172(n))*A305329(n)`
-/

namespace A226773.P2026185497553334719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (A000172 n).toNat * A305329 n

end

end A226773.P2026185497553334719

/-!
# A226774: Integers a(n) = Sum_{i=1..q} 1/d(i) where d(i) are the divisors of A225110(n) for some q.

The programs for A226774, there is no canonical definition to state claims against.
-/

/-! ## A226774.P132769052518714937

`A108775(A225110(n+1))`
-/

namespace A226774.P132769052518714937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (A225110 (n + 1)).toNat

end

end A226774.P132769052518714937

/-! ## A226774.P9457679350502591917

`and(3, A020639(A000005(A130097(n+2)+11)))`
-/

namespace A226774.P9457679350502591917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A020639 (A000005 (A130097 (n + 2) + 11).toNat).toNat)

end

end A226774.P9457679350502591917

/-! ## A226774.P424825820431680846

`A082070(A337861(n+1)-A007814(n+1))`
-/

namespace A226774.P424825820431680846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082070 (A337861 (n + 1) - A007814 (n + 1)).toNat

end

end A226774.P424825820431680846

/-! ## A226774.P18209791729612713695

`A078832(∑{d}[A107315(n+1), #])`
-/

namespace A226774.P18209791729612713695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A226774.P18209791729612713695

/-! ## A226774.P4747565521626302897

`ceil(root(A275374(n+1), A035312(n)))`
-/

namespace A226774.P4747565521626302897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A275374 (n + 1) : ℝ) ^ (1 / (A035312 n : ℝ))⌉

end

end A226774.P4747565521626302897

/-! ## A226774.P17868758588777114739

`A325273(A204221(2*n+1)+1)`
-/

namespace A226774.P17868758588777114739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325273 (A204221 (2 * n + 1) + 1).toNat

end

end A226774.P17868758588777114739

/-! ## A226774.P3506244043615425478

`A078832(2*A107315(n+1)-1)`
-/

namespace A226774.P3506244043615425478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (2 * A107315 (n + 1) - 1).toNat

end

end A226774.P3506244043615425478

/-! ## A226774.P7286981467044434182

`∑{d}[A006530(A107315(n+1)), A340346(#)]`
-/

namespace A226774.P7286981467044434182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A107315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340346 d

end

end A226774.P7286981467044434182

/-! ## A226774.P3481950443004119437

`A078832(A107315(n+1)+A107315(n+1)-1)`
-/

namespace A226774.P3481950443004119437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (A107315 (n + 1) + (A107315 (n + 1) - 1)).toNat

end

end A226774.P3481950443004119437

/-! ## A226774.P12903656384999393394

`A249740(A272528(n+2))`
-/

namespace A226774.P12903656384999393394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A272528 (n + 2)).toNat

end

end A226774.P12903656384999393394

/-!
# A226775: Decimal expansion of the number x other than -2 defined by x*exp(x) = -2/e^2.

The programs for A226775, there is no canonical definition to state claims against.
-/

/-! ## A226775.P12066547356917729608

`9-A256500(n+1)`
-/

namespace A226775.P12066547356917729608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A256500 (n + 1 + 1)

end

end A226775.P12066547356917729608

/-!
# A226778: Numbers having no common divisor > 1 with their reversal in decimal representation (see A043537).

The programs for A226778, there is no canonical definition to state claims against.
-/

/-! ## A226778.P998463203425001773

`eq[1, gcd(n, A004086(n))]`
-/

namespace A226778.P998463203425001773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004086 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226778.P998463203425001773

/-! ## A226778.P6927658822361451211

`eq[1, A055483(n+1)]+1`
-/

namespace A226778.P6927658822361451211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226778.P6927658822361451211

/-! ## A226778.P13414709649632351133

`record[A000027(n+1)/A055483(n+1)]`
-/

namespace A226778.P13414709649632351133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A055483 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226778.P13414709649632351133

/-! ## A226778.P13872361619582423019

`record[lcm(n+1, A056964(n+1))/A056964(n+1)]`
-/

namespace A226778.P13872361619582423019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A056964 (n + 1)) : ℚ) / (A056964 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226778.P13872361619582423019

/-! ## A226778.P10841181678803293610

`lt[A055483(n+1), A092067(A001223(n+1)+3)]+1`
-/

namespace A226778.P10841181678803293610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (A001223 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226778.P10841181678803293610

/-! ## A226778.P340611480009234781

`record[A337927(n+1)]`
-/

namespace A226778.P340611480009234781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226778.P340611480009234781

/-! ## A226778.P16605740896246397702

`A337927(eq[n+1, A337927(n+1)]+1)`
-/

namespace A226778.P16605740896246397702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A226778.P16605740896246397702

/-! ## A226778.P13381461263125115149

`record[A008620(n)/A055483(A008620(n))]`
-/

namespace A226778.P13381461263125115149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) / (A055483 (A008620 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226778.P13381461263125115149

/-! ## A226778.P4548486488932154937

`record[A008611(A016789(n))/A055483(n+1)]`
-/

namespace A226778.P4548486488932154937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (A016789 n).toNat : ℚ) / (A055483 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226778.P4548486488932154937

/-! ## A226778.P2760441043145721853

`record[A367825(∑[n])]`
-/

namespace A226778.P2760441043145721853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367825 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226778.P2760441043145721853

/-!
# A226780: Triangular array read by rows. T(n,k) is the number of 2 tuple lists of length n that have exactly k coincidences; n >= 0, 0 <= k <= n.

The programs for A226780, the canonical program `A226780.P5561292902332957787` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226780 has offset 0).

The definition of A226780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226780.P5561292902332957787

`C(row(n), col(n))*A089041(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A226780

/-- `C(row(n), col(n))*A089041(row(n)-col(n))` -/
def P5561292902332957787.Spec : Prop :=
  ∀ n, P5561292902332957787.a n = A226780 n

theorem P5561292902332957787.correct : P5561292902332957787.Spec := by
  intro n
  simp only [A226780]

end A226780

/-!
# A226781: Number of 1's in A132199 preceding the n-th Rowland prime, A137613(n).

The programs for A226781, there is no canonical definition to state claims against.
-/

/-! ## A226781.P4878857235173046931

`A190895(n+2)-(n+2)`
-/

namespace A226781.P4878857235173046931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190895 (n + 2) - (n + 2 : ℤ)

end

end A226781.P4878857235173046931

/-! ## A226781.P14926650263310354209

`(A190894(n+2)-3)/2-n`
-/

namespace A226781.P14926650263310354209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190894 (n + 2) - 3 : ℚ) / 2 - (n : ℚ)

end

end A226781.P14926650263310354209

/-! ## A226781.P925059618751533662

`A168007(2*n+7)/2-(n+2)`
-/

namespace A226781.P925059618751533662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168007 (2 * n + 7) : ℚ) / 2 - (n + 2 : ℚ)

end

end A226781.P925059618751533662

/-! ## A226781.P480329004814882743

`∑[A023443(Δ[A190895(n+1)])]`
-/

namespace A226781.P480329004814882743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190895 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226781.P480329004814882743

/-! ## A226781.P11280198908741989681

`lt[1, A132199(n+1)]-n`
-/

namespace A226781.P11280198908741989681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A226781.P11280198908741989681

/-!
# A226782: If n == 0 (mod 2) then a(n) = 0, otherwise a(n) = 4^(-1) in Z/nZ*.

The programs for A226782, the canonical program `A226782.P7499292873915898756` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226782 has offset 1).

The definition of A226782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226782.P7499292873915898756

`ogf((x^2+4x^4-x^8)/(1-2x^4+x^8))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226782

/-- `ogf((x^2+4x^4-x^8)/(1-2x^4+x^8))` -/
def P7499292873915898756.Spec : Prop :=
  ∀ n, P7499292873915898756.a n = A226782 (n + 1)

theorem P7499292873915898756.correct : P7499292873915898756.Spec := by
  intro n
  simp only [A226782, Nat.add_sub_cancel]

end A226782

/-! ## A226782.P17100480998667045637

`∑[or(1, n)]²%(n+1)`
-/

namespace A226782.P17100480998667045637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % (n + 1)

end

end A226782.P17100480998667045637

namespace A226782

/-- `∑[or(1, n)]²%(n+1)` -/
def P17100480998667045637.Spec : Prop :=
  ∀ n, (P17100480998667045637.a n : ℤ) = A226782 (n + 1)

end A226782

/-! ## A226782.P7753855213480964944

`gcd(n, ∑[n])²%or(1, n)`
-/

namespace A226782.P7753855213480964944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % Nat.lor 1 n

end

end A226782.P7753855213480964944

namespace A226782

/-- `gcd(n, ∑[n])²%or(1, n)` -/
def P7753855213480964944.Spec : Prop :=
  ∀ n, (P7753855213480964944.a n : ℤ) = A226782 (n + 1)

end A226782

/-! ## A226782.P15187056644059088250

`∑[and(n, -2)]²%(n+1)`
-/

namespace A226782.P15187056644059088250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (n + 1 : ℤ)

end

end A226782.P15187056644059088250

namespace A226782

/-- `∑[and(n, -2)]²%(n+1)` -/
def P15187056644059088250.Spec : Prop :=
  ∀ n, P15187056644059088250.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P17270961907253413481

`floor((n²/2)²)%(n+1)`
-/

namespace A226782.P17270961907253413481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n ^ 2 : ℚ) / 2) ^ 2⌋ (n + 1 : ℤ)

end

end A226782.P17270961907253413481

namespace A226782

/-- `floor((n²/2)²)%(n+1)` -/
def P17270961907253413481.Spec : Prop :=
  ∀ n, P17270961907253413481.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P2806468661938257048

`-(∑[∑[and(1, n)-1]]%(lcm(2, n+1)/2))`
-/

namespace A226782.P2806468661938257048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2))

end

end A226782.P2806468661938257048

namespace A226782

/-- `-(∑[∑[and(1, n)-1]]%(lcm(2, n+1)/2))` -/
def P2806468661938257048.Spec : Prop :=
  ∀ n, P2806468661938257048.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P17054110257082564616

`A225126(A158416(n))`
-/

namespace A226782.P17054110257082564616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (A158416 n).toNat

end

end A226782.P17054110257082564616

namespace A226782

/-- `A225126(A158416(n))` -/
def P17054110257082564616.Spec : Prop :=
  ∀ n, P17054110257082564616.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P8616112565913984617

`A373750(A093178(n+1))`
-/

namespace A226782.P8616112565913984617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373750 (A093178 (n + 1)).toNat

end

end A226782.P8616112565913984617

namespace A226782

/-- `A373750(A093178(n+1))` -/
def P8616112565913984617.Spec : Prop :=
  ∀ n, P8616112565913984617.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P12709645327493948173

`A373750(A193356(n+1))`
-/

namespace A226782.P12709645327493948173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373750 (A193356 (n + 1)).toNat

end

end A226782.P12709645327493948173

namespace A226782

/-- `A373750(A193356(n+1))` -/
def P12709645327493948173.Spec : Prop :=
  ∀ n, P12709645327493948173.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P12274753702602861251

`A225126(1-A026741(n)+n)`
-/

namespace A226782.P12274753702602861251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (1 - A026741 n + (n : ℤ)).toNat

end

end A226782.P12274753702602861251

namespace A226782

/-- `A225126(1-A026741(n)+n)` -/
def P12274753702602861251.Spec : Prop :=
  ∀ n, P12274753702602861251.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P8496530362654013510

`A225126(1-(A026741(n)-n))`
-/

namespace A226782.P8496530362654013510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (1 - (A026741 n - (n : ℤ))).toNat

end

end A226782.P8496530362654013510

namespace A226782

/-- `A225126(1-(A026741(n)-n))` -/
def P8496530362654013510.Spec : Prop :=
  ∀ n, P8496530362654013510.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P15000555911359715641

`abs(A131805(n)%A000265(n+1))`
-/

namespace A226782.P15000555911359715641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A131805 n) (A000265 (n + 1))|

end

end A226782.P15000555911359715641

namespace A226782

/-- `abs(A131805(n)%A000265(n+1))` -/
def P15000555911359715641.Spec : Prop :=
  ∀ n, P15000555911359715641.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P13669679467712255302

`abs(A232599(n)%A000265(n+1))`
-/

namespace A226782.P13669679467712255302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A232599 n) (A000265 (n + 1))|

end

end A226782.P13669679467712255302

namespace A226782

/-- `abs(A232599(n)%A000265(n+1))` -/
def P13669679467712255302.Spec : Prop :=
  ∀ n, P13669679467712255302.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P7609584589112326836

`A087620(n)-A065033(A065033(n))`
-/

namespace A226782.P7609584589112326836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087620 n - A065033 (A065033 n).toNat

end

end A226782.P7609584589112326836

namespace A226782

/-- `A087620(n)-A065033(A065033(n))` -/
def P7609584589112326836.Spec : Prop :=
  ∀ n, P7609584589112326836.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P7101926921946594295

`A225126(A000217(n+1)-A092530(n))`
-/

namespace A226782.P7101926921946594295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (A000217 (n + 1) - A092530 n).toNat

end

end A226782.P7101926921946594295

namespace A226782

/-- `A225126(A000217(n+1)-A092530(n))` -/
def P7101926921946594295.Spec : Prop :=
  ∀ n, P7101926921946594295.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P8116669281011912027

`Δ[A093005(A065033(n))]`
-/

namespace A226782.P8116669281011912027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226782.P8116669281011912027

namespace A226782

/-- `Δ[A093005(A065033(n))]` -/
def P8116669281011912027.Spec : Prop :=
  ∀ n, P8116669281011912027.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P18361190936000075178

`A225126(A152271(n+1))`
-/

namespace A226782.P18361190936000075178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (A152271 (n + 1)).toNat

end

end A226782.P18361190936000075178

namespace A226782

/-- `A225126(A152271(n+1))` -/
def P18361190936000075178.Spec : Prop :=
  ∀ n, P18361190936000075178.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P14706503926597387749

`A025480(A050442(n+1)%(2*(n+1)))`
-/

namespace A226782.P14706503926597387749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.tmod (A050442 (n + 1)) (2 * (n + 1) : ℤ)).toNat

end

end A226782.P14706503926597387749

namespace A226782

/-- `A025480(A050442(n+1)%(2*(n+1)))` -/
def P14706503926597387749.Spec : Prop :=
  ∀ n, P14706503926597387749.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P5259396163135282151

`A004525(A050442(n+1)%A317440(n+1))`
-/

namespace A226782.P5259396163135282151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A050442 (n + 1)) (A317440 (n + 1))).toNat

end

end A226782.P5259396163135282151

namespace A226782

/-- `A004525(A050442(n+1)%A317440(n+1))` -/
def P5259396163135282151.Spec : Prop :=
  ∀ n, P5259396163135282151.a n = A226782 (n + 1)

end A226782

/-! ## A226782.P16641156417028174927

`∑[A165326(n+1)]*A225126(A225126(n+2))`
-/

namespace A226782.P16641156417028174927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A225126 (A225126 (n + 2)).toNat

end

end A226782.P16641156417028174927

namespace A226782

/-- `∑[A165326(n+1)]*A225126(A225126(n+2))` -/
def P16641156417028174927.Spec : Prop :=
  ∀ n, P16641156417028174927.a n = A226782 (n + 1)

end A226782

/-!
# A226783: If n=0 (mod 5) then a(n)=0, otherwise a(n)=5^(-1) in Z/nZ*.

The programs for A226783, the canonical program `A226783.P13470346854797341303` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226783 has offset 1).

The definition of A226783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226783.P13470346854797341303

`ogf((x+2x^2+x^3+5x^5+x^6+x^7-x^10)/(1-2x^5+x^10))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226783

/-- `ogf((x+2x^2+x^3+5x^5+x^6+x^7-x^10)/(1-2x^5+x^10))` -/
def P13470346854797341303.Spec : Prop :=
  ∀ n, P13470346854797341303.a n = A226783 (n + 1)

theorem P13470346854797341303.correct : P13470346854797341303.Spec := by
  intro n
  simp only [A226783, Nat.add_sub_cancel]

end A226783

/-! ## A226783.P14284550368577187653

`(5*A008738(n+1)²)%(n+1)`
-/

namespace A226783.P14284550368577187653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A008738 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A226783.P14284550368577187653

namespace A226783

/-- `(5*A008738(n+1)²)%(n+1)` -/
def P14284550368577187653.Spec : Prop :=
  ∀ n, P14284550368577187653.a n = A226783 (n + 1)

end A226783

/-! ## A226783.P17949335354031107567

`(A011930(2*n+1)+n)%(n+1)`
-/

namespace A226783.P17949335354031107567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011930 (2 * n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A226783.P17949335354031107567

namespace A226783

/-- `(A011930(2*n+1)+n)%(n+1)` -/
def P17949335354031107567.Spec : Prop :=
  ∀ n, P17949335354031107567.a n = A226783 (n + 1)

end A226783

/-! ## A226783.P709178813720794865

`A028291(A008458(n))%(n+1)`
-/

namespace A226783.P709178813720794865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028291 (A008458 n).toNat) (n + 1 : ℤ)

end

end A226783.P709178813720794865

namespace A226783

/-- `A028291(A008458(n))%(n+1)` -/
def P709178813720794865.Spec : Prop :=
  ∀ n, P709178813720794865.a n = A226783 (n + 1)

end A226783

/-! ## A226783.P5283400369410311732

`A256225(A250120(2*(n+1)))%(n+1)`
-/

namespace A226783.P5283400369410311732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256225 (A250120 (2 * (n + 1))).toNat) (n + 1 : ℤ)

end

end A226783.P5283400369410311732

namespace A226783

/-- `A256225(A250120(2*(n+1)))%(n+1)` -/
def P5283400369410311732.Spec : Prop :=
  ∀ n, P5283400369410311732.a n = A226783 (n + 1)

end A226783

/-! ## A226783.P7002990686164874901

`A051170(12*(n+1))%(n+1)`
-/

namespace A226783.P7002990686164874901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051170 (12 * (n + 1))) (n + 1 : ℤ)

end

end A226783.P7002990686164874901

namespace A226783

/-- `A051170(12*(n+1))%(n+1)` -/
def P7002990686164874901.Spec : Prop :=
  ∀ n, P7002990686164874901.a n = A226783 (n + 1)

end A226783

/-! ## A226783.P6089430954734325475

`A011795(A017653(n))%(n+1)`
-/

namespace A226783.P6089430954734325475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011795 (A017653 n).toNat) (n + 1 : ℤ)

end

end A226783.P6089430954734325475

namespace A226783

/-- `A011795(A017653(n))%(n+1)` -/
def P6089430954734325475.Spec : Prop :=
  ∀ n, P6089430954734325475.a n = A226783 (n + 1)

end A226783

/-! ## A226783.P6198791517303108837

`A028291(6*(4*n+3))%(n+1)`
-/

namespace A226783.P6198791517303108837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028291 (6 * (4 * n + 3))) (n + 1 : ℤ)

end

end A226783.P6198791517303108837

namespace A226783

/-- `A028291(6*(4*n+3))%(n+1)` -/
def P6198791517303108837.Spec : Prop :=
  ∀ n, P6198791517303108837.a n = A226783 (n + 1)

end A226783

/-! ## A226783.P4996776549858967025

`A033429(Δ[A173690(n)])%(n+1)`
-/

namespace A226783.P4996776549858967025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033429 (f1 (n + 1) - f1 n).toNat) (n + 1 : ℤ)

end

end A226783.P4996776549858967025

namespace A226783

/-- `A033429(Δ[A173690(n)])%(n+1)` -/
def P4996776549858967025.Spec : Prop :=
  ∀ n, P4996776549858967025.a n = A226783 (n + 1)

end A226783

/-! ## A226783.P12809311462904091659

`(n*A118015((n+1)²))%(n+1)`
-/

namespace A226783.P12809311462904091659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A118015 ((n + 1) ^ 2)) (n + 1 : ℤ)

end

end A226783.P12809311462904091659

namespace A226783

/-- `(n*A118015((n+1)²))%(n+1)` -/
def P12809311462904091659.Spec : Prop :=
  ∀ n, P12809311462904091659.a n = A226783 (n + 1)

end A226783

/-!
# A226784: If gcd(n,6) != 1 then a(n)=0, otherwise a(n)=6^(-1) in Z/nZ*.

The programs for A226784, the canonical program `A226784.P11580838244572877127` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226784 has offset 1).

The definition of A226784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226784.P11580838244572877127

`ogf((x^4+6x^6-x^12)/(1-2x^6+x^12))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226784

/-- `ogf((x^4+6x^6-x^12)/(1-2x^6+x^12))` -/
def P11580838244572877127.Spec : Prop :=
  ∀ n, P11580838244572877127.a n = A226784 (n + 1)

theorem P11580838244572877127.correct : P11580838244572877127.Spec := by
  intro n
  simp only [A226784, Nat.add_sub_cancel]

end A226784

/-! ## A226784.P7540790382231416408

`(2*n*A212514(n+1))%(n+1)`
-/

namespace A226784.P7540790382231416408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * ((n : ℤ) * A212514 (n + 1))) (n + 1 : ℤ)

end

end A226784.P7540790382231416408

namespace A226784

/-- `(2*n*A212514(n+1))%(n+1)` -/
def P7540790382231416408.Spec : Prop :=
  ∀ n, P7540790382231416408.a n = A226784 (n + 1)

end A226784

/-! ## A226784.P15483929731189995817

`(A001840(n+1)*A007590(n))%(n+1)`
-/

namespace A226784.P15483929731189995817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001840 (n + 1) * A007590 n) (n + 1 : ℤ)

end

end A226784.P15483929731189995817

namespace A226784

/-- `(A001840(n+1)*A007590(n))%(n+1)` -/
def P15483929731189995817.Spec : Prop :=
  ∀ n, P15483929731189995817.a n = A226784 (n + 1)

end A226784

/-! ## A226784.P2993307015963608769

`(A000982(n+1)*A001840(n+1))%(n+1)`
-/

namespace A226784.P2993307015963608769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000982 (n + 1) * A001840 (n + 1)) (n + 1 : ℤ)

end

end A226784.P2993307015963608769

namespace A226784

/-- `(A000982(n+1)*A001840(n+1))%(n+1)` -/
def P2993307015963608769.Spec : Prop :=
  ∀ n, P2993307015963608769.a n = A226784 (n + 1)

end A226784

/-! ## A226784.P7791904468727415762

`(A000212(n+1)*A007590(n+1))%(n+1)`
-/

namespace A226784.P7791904468727415762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000212 (n + 1) * A007590 (n + 1)) (n + 1 : ℤ)

end

end A226784.P7791904468727415762

namespace A226784

/-- `(A000212(n+1)*A007590(n+1))%(n+1)` -/
def P7791904468727415762.Spec : Prop :=
  ∀ n, P7791904468727415762.a n = A226784 (n + 1)

end A226784

/-! ## A226784.P6500369932120367212

`(A298024(n+1)²*A007518(n+2))%(n+1)`
-/

namespace A226784.P6500369932120367212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298024 (n + 1) ^ 2 * A007518 (n + 2)) (n + 1 : ℤ)

end

end A226784.P6500369932120367212

namespace A226784

/-- `(A298024(n+1)²*A007518(n+2))%(n+1)` -/
def P6500369932120367212.Spec : Prop :=
  ∀ n, P6500369932120367212.a n = A226784 (n + 1)

end A226784

/-!
# A226785: If n=0 (mod 7) then a(n)=0, otherwise a(n)=7^(-1) in Z/nZ*.

The programs for A226785, the canonical program `A226785.P2504612651611828915` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226785 has offset 1).

The definition of A226785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226785.P2504612651611828915

`ogf((x+x^2+3x^3+3x^4+x^5+7x^7+2x^8+x^9+2x^10+x^11-x^14)/(1-2x^7+x^14))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226785

/-- `ogf((x+x^2+3x^3+3x^4+x^5+7x^7+2x^8+x^9+2x^10+x^11-x^14)/(1-2x^7+x^14))` -/
def P2504612651611828915.Spec : Prop :=
  ∀ n, P2504612651611828915.a n = A226785 (n + 1)

theorem P2504612651611828915.correct : P2504612651611828915.Spec := by
  intro n
  simp only [A226785, Nat.add_sub_cancel]

end A226785

/-! ## A226785.P5643849936210388729

`A011797(A135300(n+1))%(n+1)`
-/

namespace A226785.P5643849936210388729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011797 (A135300 (n + 1)).toNat) (n + 1 : ℤ)

end

end A226785.P5643849936210388729

namespace A226785

/-- `A011797(A135300(n+1))%(n+1)` -/
def P5643849936210388729.Spec : Prop :=
  ∀ n, P5643849936210388729.a n = A226785 (n + 1)

end A226785

/-! ## A226785.P14305673823286590003

`A029125(A158560(n+1))%(n+1)`
-/

namespace A226785.P14305673823286590003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029125 (A158560 (n + 1)).toNat) (n + 1 : ℤ)

end

end A226785.P14305673823286590003

namespace A226785

/-- `A029125(A158560(n+1))%(n+1)` -/
def P14305673823286590003.Spec : Prop :=
  ∀ n, P14305673823286590003.a n = A226785 (n + 1)

end A226785

/-! ## A226785.P4758099426168314189

`A085249(A284567(n))%(n+1)`
-/

namespace A226785.P4758099426168314189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085249 (A284567 n).toNat) (n + 1 : ℤ)

end

end A226785.P4758099426168314189

namespace A226785

/-- `A085249(A284567(n))%(n+1)` -/
def P4758099426168314189.Spec : Prop :=
  ∀ n, P4758099426168314189.a n = A226785 (n + 1)

end A226785

/-! ## A226785.P4015952149855600742

`A140476(A116533(n+1))%(n+1)`
-/

namespace A226785.P4015952149855600742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140476 (A116533 (n + 1)).toNat) (n + 1 : ℤ)

end

end A226785.P4015952149855600742

namespace A226785

/-- `A140476(A116533(n+1))%(n+1)` -/
def P4015952149855600742.Spec : Prop :=
  ∀ n, P4015952149855600742.a n = A226785 (n + 1)

end A226785

/-!
# A226786: If n=0 (mod 2) then a(n)=0, otherwise a(n)=8^(-1) in Z/nZ*.

The programs for A226786, the canonical program `A226786.P16945008953332520997` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226786 has offset 1).

The definition of A226786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226786.P16945008953332520997

`(∑[or(1, n)]^3)%(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226786

/-- `(∑[or(1, n)]^3)%(n+1)` -/
def P16945008953332520997.Spec : Prop :=
  ∀ n, (P16945008953332520997.a n : ℤ) = A226786 (n + 1)

theorem P16945008953332520997.correct : P16945008953332520997.Spec := by
  intro n
  simp only [A226786, Nat.add_sub_cancel]

end A226786

/-! ## A226786.P10111193520508967141

`∑[∑[lcm(2, n²)]]%(n+1)`
-/

namespace A226786.P10111193520508967141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A226786.P10111193520508967141

namespace A226786

/-- `∑[∑[lcm(2, n²)]]%(n+1)` -/
def P10111193520508967141.Spec : Prop :=
  ∀ n, (P10111193520508967141.a n : ℤ) = A226786 (n + 1)

end A226786

/-! ## A226786.P9773967408674400842

`∑[∑[floor(n²/2)]]%(n+1)`
-/

namespace A226786.P9773967408674400842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A226786.P9773967408674400842

namespace A226786

/-- `∑[∑[floor(n²/2)]]%(n+1)` -/
def P9773967408674400842.Spec : Prop :=
  ∀ n, P9773967408674400842.a n = A226786 (n + 1)

end A226786

/-! ## A226786.P2116538804746827704

`A212740(n)%(n+1)-and(1, n)`
-/

namespace A226786.P2116538804746827704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212740 n) (n + 1 : ℤ) - (Nat.land 1 n : ℤ)

end

end A226786.P2116538804746827704

namespace A226786

/-- `A212740(n)%(n+1)-and(1, n)` -/
def P2116538804746827704.Spec : Prop :=
  ∀ n, P2116538804746827704.a n = A226786 (n + 1)

end A226786

/-! ## A226786.P947096087011657327

`A093198(n)%(n+1)*A059841(n)`
-/

namespace A226786.P947096087011657327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093198 n) (n + 1 : ℤ) * A059841 n

end

end A226786.P947096087011657327

namespace A226786

/-- `A093198(n)%(n+1)*A059841(n)` -/
def P947096087011657327.Spec : Prop :=
  ∀ n, P947096087011657327.a n = A226786 (n + 1)

end A226786

/-! ## A226786.P8877660752193458964

`A004526((A000982(n)+n)²%(2*(n+1)))`
-/

namespace A226786.P8877660752193458964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod ((A000982 n + (n : ℤ)) ^ 2) (2 * (n + 1) : ℤ)).toNat

end

end A226786.P8877660752193458964

namespace A226786

/-- `A004526((A000982(n)+n)²%(2*(n+1)))` -/
def P8877660752193458964.Spec : Prop :=
  ∀ n, P8877660752193458964.a n = A226786 (n + 1)

end A226786

/-! ## A226786.P1562484319735030301

`A048154(A031878(n+2))`
-/

namespace A226786.P1562484319735030301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048154 (A031878 (n + 2)).toNat

end

end A226786.P1562484319735030301

namespace A226786

/-- `A048154(A031878(n+2))` -/
def P1562484319735030301.Spec : Prop :=
  ∀ n, P1562484319735030301.a n = A226786 (n + 1)

end A226786

/-!
# A226787: If n=0 (mod 3) then a(n)=0, otherwise a(n)=9^(-1) in Z/nZ*.

The programs for A226787, the canonical program `A226787.P10606524256959691984` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226787 has offset 1).

The definition of A226787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226787.P10606524256959691984

`∑[comp[4*n]]²%(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A226787

/-- `∑[comp[4*n]]²%(n+1)` -/
def P10606524256959691984.Spec : Prop :=
  ∀ n, (P10606524256959691984.a n : ℤ) = A226787 (n + 1)

theorem P10606524256959691984.correct : P10606524256959691984.Spec := by
  intro n
  simp only [A226787, Nat.add_sub_cancel]

end A226787

/-! ## A226787.P1674919227331271383

`A048152(A092092(n+1)+∑[n])`
-/

namespace A226787.P1674919227331271383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A092092 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A226787.P1674919227331271383

namespace A226787

/-- `A048152(A092092(n+1)+∑[n])` -/
def P1674919227331271383.Spec : Prop :=
  ∀ n, P1674919227331271383.a n = A226787 (n + 1)

end A226787

/-! ## A226787.P12775268058404514890

`A048152(A000217(n)+A117909(n)/A010882(n))`
-/

namespace A226787.P12775268058404514890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (A117909 n : ℚ) / (A010882 n : ℚ))).toNat

end

end A226787.P12775268058404514890

namespace A226787

/-- `A048152(A000217(n)+A117909(n)/A010882(n))` -/
def P12775268058404514890.Spec : Prop :=
  ∀ n, P12775268058404514890.a n = A226787 (n + 1)

end A226787

/-! ## A226787.P6679473708144570332

`A048152(A000217(n)+A117909(n)/A087775(n+1))`
-/

namespace A226787.P6679473708144570332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (A117909 n : ℚ) / (A087775 (n + 1) : ℚ))).toNat

end

end A226787.P6679473708144570332

namespace A226787

/-- `A048152(A000217(n)+A117909(n)/A087775(n+1))` -/
def P6679473708144570332.Spec : Prop :=
  ∀ n, P6679473708144570332.a n = A226787 (n + 1)

end A226787

/-! ## A226787.P18109452629566601402

`A118759(floor((n+1)²/3)²%(n+1))`
-/

namespace A226787.P18109452629566601402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (⌊((n + 1) ^ 2 : ℚ) / 3⌋ ^ 2) (n + 1 : ℤ)).toNat

end

end A226787.P18109452629566601402

namespace A226787

/-- `A118759(floor((n+1)²/3)²%(n+1))` -/
def P18109452629566601402.Spec : Prop :=
  ∀ n, P18109452629566601402.a n = A226787 (n + 1)

end A226787

/-! ## A226787.P17789525256690399148

`A000196((Δ[A181286(n)]²%(n+1))²)`
-/

namespace A226787.P17789525256690399148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (n + 1 : ℤ) ^ 2).toNat

end

end A226787.P17789525256690399148

namespace A226787

/-- `A000196((Δ[A181286(n)]²%(n+1))²)` -/
def P17789525256690399148.Spec : Prop :=
  ∀ n, P17789525256690399148.a n = A226787 (n + 1)

end A226787

/-! ## A226787.P6814184276934219226

`n-A000096(A042965((n+1)²))%(n+1)`
-/

namespace A226787.P6814184276934219226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A000096 (A042965 ((n + 1) ^ 2)).toNat) (n + 1 : ℤ)

end

end A226787.P6814184276934219226

namespace A226787

/-- `n-A000096(A042965((n+1)²))%(n+1)` -/
def P6814184276934219226.Spec : Prop :=
  ∀ n, P6814184276934219226.a n = A226787 (n + 1)

end A226787

/-!
# A226788: Triangular numbers obtained as the concatenation of n and n+1.

The programs for A226788, there is no canonical definition to state claims against.
-/

/-! ## A226788.P15016674147387158368

`A001704(A094609(n+1))`
-/

namespace A226788.P15016674147387158368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A094609 (n + 1)).toNat

end

end A226788.P15016674147387158368

/-! ## A226788.P9546698604931127174

`A020338(A094609(n+1))+A007318(∑[n])`
-/

namespace A226788.P9546698604931127174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A094609 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226788.P9546698604931127174

/-! ## A226788.P11738063070158355974

`A020338(A094609(n+1))-or(-1, A000041(n))`
-/

namespace A226788.P11738063070158355974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A094609 (n + 1)).toNat - Int.lor (-1) (A000041 n)

end

end A226788.P11738063070158355974

/-! ## A226788.P16484113684094550268

`A020338(A094609(n+1))+A014963(6*(n+1))`
-/

namespace A226788.P16484113684094550268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A094609 (n + 1)).toNat + A014963 (6 * (n + 1))

end

end A226788.P16484113684094550268

/-! ## A226788.P11852080917327275028

`A020338(A094609(n+1))+A000041(C(2, 2*n))`
-/

namespace A226788.P11852080917327275028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A094609 (n + 1)).toNat + A000041 (Nat.choose 2 (2 * n))

end

end A226788.P11852080917327275028

/-!
# A226790: Numbers of the form (3^j + 5^k)/2, for j and k >= 0.

The programs for A226790, there is no canonical definition to state claims against.
-/

/-! ## A226790.P5636575770728898716

`A226809(n+1)/2`
-/

namespace A226790.P5636575770728898716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226809 (n + 1) : ℚ) / 2

end

end A226790.P5636575770728898716

/-! ## A226790.P4204178098906347993

`floor(A226809(Δ[n²]-n)/2)`
-/

namespace A226790.P4204178098906347993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226809 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A226790.P4204178098906347993

/-! ## A226790.P5665572156226589806

`ceil(A226809(xor(1, 2*n)-n)/2)`
-/

namespace A226790.P5665572156226589806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A226809 (Nat.xor 1 (2 * n) - n) : ℚ) / 2⌉

end

end A226790.P5665572156226589806

/-! ## A226790.P4753133555483226648

`record[A226809(A344180(n))/2]`
-/

namespace A226790.P4753133555483226648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226809 (A344180 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226790.P4753133555483226648

/-! ## A226790.P9439403078728671494

`A014682(A226809(n+1))`
-/

namespace A226790.P9439403078728671494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A226809 (n + 1)).toNat

end

end A226790.P9439403078728671494

/-! ## A226790.P11699777986658777430

`A001281(A226809(n+1))`
-/

namespace A226790.P11699777986658777430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A226809 (n + 1)).toNat

end

end A226790.P11699777986658777430

/-! ## A226790.P10421542578556508893

`A004524(A226809(n+1)+1)`
-/

namespace A226790.P10421542578556508893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A226809 (n + 1) + 1).toNat

end

end A226790.P10421542578556508893

/-! ## A226790.P10888299442006462601

`A004526(A226809(n+1)+1)`
-/

namespace A226790.P10888299442006462601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A226809 (n + 1) + 1).toNat

end

end A226790.P10888299442006462601

/-! ## A226790.P8920227728805211530

`A057979(A226809(n+1)+1)`
-/

namespace A226790.P8920227728805211530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A226809 (n + 1) + 1).toNat

end

end A226790.P8920227728805211530

/-! ## A226790.P18091276366308102760

`A123108(A226809(n+1)+1)`
-/

namespace A226790.P18091276366308102760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A226809 (n + 1) + 1).toNat

end

end A226790.P18091276366308102760

/-!
# A226791: Numbers of the form (3^j + 7^k)/2, for j and k >= 0.

The programs for A226791, there is no canonical definition to state claims against.
-/

/-! ## A226791.P10680235269166370340

`A226816(n+1)/2`
-/

namespace A226791.P10680235269166370340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226816 (n + 1) : ℚ) / 2

end

end A226791.P10680235269166370340

/-! ## A226791.P6977398274840086735

`record[A226816(A323889(n))/2]`
-/

namespace A226791.P6977398274840086735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226816 (A323889 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226791.P6977398274840086735

/-! ## A226791.P8456115160954529642

`record[A226816(A324346(n))/2]`
-/

namespace A226791.P8456115160954529642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226816 (A324346 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226791.P8456115160954529642

/-! ## A226791.P16644189166242091123

`floor(A226816(A008619(2*n))/2)`
-/

namespace A226791.P16644189166242091123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226816 (A008619 (2 * n)).toNat : ℚ) / 2⌋

end

end A226791.P16644189166242091123

/-! ## A226791.P17371282399522492094

`A014682(A226816(n+1))`
-/

namespace A226791.P17371282399522492094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A226816 (n + 1)).toNat

end

end A226791.P17371282399522492094

/-! ## A226791.P13540559772303861742

`A332893(lcm(2, A226816(n+1)))`
-/

namespace A226791.P13540559772303861742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (Int.lcm 2 (A226816 (n + 1)))

end

end A226791.P13540559772303861742

/-!
# A226792: Numbers of the form (5^j + 7^k)/2, for j and k >= 0.

The programs for A226792, there is no canonical definition to state claims against.
-/

/-! ## A226792.P16173499138334647826

`A226818(n+1)/2`
-/

namespace A226792.P16173499138334647826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226818 (n + 1) : ℚ) / 2

end

end A226792.P16173499138334647826

/-! ## A226792.P11591417178515094060

`A014682(A226818(n+1))`
-/

namespace A226792.P11591417178515094060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A226818 (n + 1)).toNat

end

end A226792.P11591417178515094060

/-! ## A226792.P5163168071414541076

`A175126(lcm(2, A226818(n+1)))`
-/

namespace A226792.P5163168071414541076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.lcm 2 (A226818 (n + 1)))

end

end A226792.P5163168071414541076

/-! ## A226792.P15701685352281925427

`∑{d}[A226818(n+1), A348045(#)]`
-/

namespace A226792.P15701685352281925427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A348045 d

end

end A226792.P15701685352281925427

/-! ## A226792.P13936058867667277881

`A175126(A226818(n+1))+A008683(8*(n+1))`
-/

namespace A226792.P13936058867667277881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A226818 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A226792.P13936058867667277881

/-!
# A226793: Numbers of the form (3^j + 9^k)/2, for j and k >= 0.

The programs for A226793, the canonical program `A226793.P10004698446441766598` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226793 has offset 1).

The definition of A226793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226793.P172728772527129120

`A226827(n+1)/2`
-/

namespace A226793.P172728772527129120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226827 (n + 1) : ℚ) / 2

end

end A226793.P172728772527129120

namespace A226793

/-- `A226827(n+1)/2` -/
def P172728772527129120.Spec : Prop :=
  ∀ n, P172728772527129120.a n = (A226793 (n + 1) : ℚ)

end A226793

/-! ## A226793.P10004698446441766598

`A055235(comp[A185869(1+n)])/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A226793

/-- `A055235(comp[A185869(1+n)])/2` -/
def P10004698446441766598.Spec : Prop :=
  ∀ n, P10004698446441766598.a n = (A226793 (n + 1) : ℚ)

end A226793

/-! ## A226793.P13180692194927149647

`A014682(A226827(n+1))`
-/

namespace A226793.P13180692194927149647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A226827 (n + 1)).toNat

end

end A226793.P13180692194927149647

namespace A226793

/-- `A014682(A226827(n+1))` -/
def P13180692194927149647.Spec : Prop :=
  ∀ n, P13180692194927149647.a n = A226793 (n + 1)

end A226793

/-! ## A226793.P7857458854067624191

`A318516(lcm(2, A226827(n+1)))`
-/

namespace A226793.P7857458854067624191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (Int.lcm 2 (A226827 (n + 1)))

end

end A226793.P7857458854067624191

namespace A226793

/-- `A318516(lcm(2, A226827(n+1)))` -/
def P7857458854067624191.Spec : Prop :=
  ∀ n, P7857458854067624191.a n = A226793 (n + 1)

end A226793

/-! ## A226793.P6703581531465473720

`∩[A004773(n), A073216(n)]`
-/

namespace A226793.P6703581531465473720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073216 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226793.P6703581531465473720

namespace A226793

/-- `∩[A004773(n), A073216(n)]` -/
def P6703581531465473720.Spec : Prop :=
  ∀ n, (P6703581531465473720.a n : ℤ) = A226793 (n + 1)

end A226793

/-!
# A226794: Numbers of the form (5^j + 9^k)/2, for j and k >= 0.

The programs for A226794, there is no canonical definition to state claims against.
-/

/-! ## A226794.P2378982072598018778

`A226829(n+1)/2`
-/

namespace A226794.P2378982072598018778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226829 (n + 1) : ℚ) / 2

end

end A226794.P2378982072598018778

/-! ## A226794.P17275923483321505147

`record[A226829(A344180(n))/2]`
-/

namespace A226794.P17275923483321505147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226829 (A344180 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226794.P17275923483321505147

/-! ## A226794.P16574813864854380142

`A226809(eq[1, val(A226809(n+1), 2)]+1)/2`
-/

namespace A226794.P16574813864854380142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A226809 (n + 1)).toNat 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226809 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) : ℚ) / 2

end

end A226794.P16574813864854380142

/-! ## A226794.P3116739658050738915

`∩[2*n+1, A226790(n+1)]`
-/

namespace A226794.P3116739658050738915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226794.P3116739658050738915

/-! ## A226794.P10818065371708822874

`filter[A226790(n+1), A374134(#)]`
-/

namespace A226794.P10818065371708822874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A226794.P10818065371708822874

/-!
# A226795: Numbers of the form (7^j + 9^k)/2, for j and k >= 0.

The programs for A226795, there is no canonical definition to state claims against.
-/

/-! ## A226795.P13757744177394122022

`A226831(n+1)/2`
-/

namespace A226795.P13757744177394122022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226831 (n + 1) : ℚ) / 2

end

end A226795.P13757744177394122022

/-! ## A226795.P2290906712804749210

`A014682(A226831(n+1))`
-/

namespace A226795.P2290906712804749210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A226831 (n + 1)).toNat

end

end A226795.P2290906712804749210

/-! ## A226795.P8039097420380432172

`A273943(lcm(2, A226831(n+1)))`
-/

namespace A226795.P8039097420380432172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A226831 (n + 1)))

end

end A226795.P8039097420380432172

/-! ## A226795.P14561053596100140010

`A273943(A226831(n+1)%A005015(n))`
-/

namespace A226795.P14561053596100140010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A226831 (n + 1)) (A005015 n)).toNat

end

end A226795.P14561053596100140010

/-! ## A226795.P11988251324715934105

`or(A185284(n), A273943(A226831(n+1)))`
-/

namespace A226795.P11988251324715934105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 n) (A273943 (A226831 (n + 1)).toNat)

end

end A226795.P11988251324715934105

/-!
# A226796: Number of nonnegative numbers x < 10^n such that the digits of x^2 occur with an equal frequency of 1.

The programs for A226796, there is no canonical definition to state claims against.
-/

/-! ## A226796.P16646639524790350421

`A226797(n+1)+a(n-1)` with `a(0)=10`
-/

namespace A226796.P16646639524790350421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A226797 (n + 1) + a (n - 1)

end

end A226796.P16646639524790350421

/-!
# A226798: List of triples {a,b,c} with 0 < a < b < c such that a! b! c! is a square, ordered by their sum a + b + c.

The programs for A226798, there is no canonical definition to state claims against.
-/

/-! ## A226798.P4012884894509013604

`A382857(A211857(3*n+1))*A389553(n+1)`
-/

namespace A226798.P4012884894509013604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382857 (A211857 (3 * n + 1)).toNat * A389553 (n + 1)

end

end A226798.P4012884894509013604

