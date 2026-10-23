import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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

/-!
# A349800: Number of integer compositions of n that are weakly alternating and have at least two adjacent equal parts.

The programs for A349800, there is no canonical definition to state claims against.
-/

/-! ## A349800.P13316170529424234332

`A349052(n)-A025047(n)`
-/

namespace A349800.P13316170529424234332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349052 n - A025047 n

end

end A349800.P13316170529424234332

/-! ## A349800.P13026571803311006148

`A345195(n)+A349052(n)-A003242(n)`
-/

namespace A349800.P13026571803311006148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345195 n + (A349052 n - A003242 n)

end

end A349800.P13026571803311006148

/-! ## A349800.P1261708948414671502

`A345192(n)-A349053(n)`
-/

namespace A349800.P1261708948414671502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345192 n - A349053 n

end

end A349800.P1261708948414671502

/-! ## A349800.P18272527523041513162

`A345192(n)-abs(A349052(n)-ceil(2^(n-1)))`
-/

namespace A349800.P18272527523041513162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345192 n - |A349052 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉|

end

end A349800.P18272527523041513162

/-! ## A349800.P9190191460711544190

`A011782(n)-(A349053(n)+A025047(n))`
-/

namespace A349800.P9190191460711544190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A349053 n + A025047 n)

end

end A349800.P9190191460711544190

/-! ## A349800.P16348266777350213080

`A261983(n)+A345195(n)-A349053(n)`
-/

namespace A349800.P16348266777350213080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261983 n + (A345195 n - A349053 n)

end

end A349800.P16348266777350213080

/-!
# A349801: Number of integer partitions of n into three or more parts or into two equal parts.

The programs for A349801, there is no canonical definition to state claims against.
-/

/-! ## A349801.P7253519293063248263

`A000041(n)-round(cosh(log(acot(n))))`
-/

namespace A349801.P7253519293063248263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ))))

end

end A349801.P7253519293063248263

/-! ## A349801.P541398728607457294

`floor(A000094(n+1)+n/2)`
-/

namespace A349801.P541398728607457294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000094 (n + 1) : ℚ) + (n : ℚ) / 2⌋

end

end A349801.P541398728607457294

/-! ## A349801.P14979470971897205089

`A052810(n)-(ceil(n/2)+1)`
-/

namespace A349801.P14979470971897205089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (⌈(n : ℚ) / 2⌉ + 1)

end

end A349801.P14979470971897205089

/-! ## A349801.P10768376143503676933

`floor(∑{d}[n, A000837(#)]-n/2)`
-/

namespace A349801.P10768376143503676933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), A000837 d : ℤ) : ℚ) - (n : ℚ) / 2⌋

end

end A349801.P10768376143503676933

/-! ## A349801.P11442262249141571402

`A000065(n)-floor(abs((1-n)/2))`
-/

namespace A349801.P11442262249141571402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - ⌊|(1 - (n : ℤ) : ℚ) / 2|⌋

end

end A349801.P11442262249141571402

/-!
# A349802: Triangle read by rows: T(n,k) is the number of binary Lyndon words of length n that begin with exactly k 0's. 0 <= k <= n.

The programs for A349802, there is no canonical definition to state claims against.
-/

/-! ## A349802.P4458168133308122309

`A334028(A333755(n)+A262125(n))`
-/

namespace A349802.P4458168133308122309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A333755 n + A262125 n).toNat

end

end A349802.P4458168133308122309

/-! ## A349802.P15921488483044881780

`A268318(C(A099557(n), A091602(n+1)))`
-/

namespace A349802.P15921488483044881780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268318 (Nat.choose (A099557 n).toNat (A091602 (n + 1)).toNat)

end

end A349802.P15921488483044881780

/-! ## A349802.P6921339843105318322

`A113143(A230730(n+1))%A153738(n+1)`
-/

namespace A349802.P6921339843105318322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113143 (A230730 (n + 1)).toNat) (A153738 (n + 1))

end

end A349802.P6921339843105318322

/-! ## A349802.P1144358213095776944

`A215788(n+1)%(A051168(n)+A208183(n)!)`
-/

namespace A349802.P1144358213095776944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215788 (n + 1)) (A051168 n + (Nat.factorial (A208183 n).toNat : ℤ))

end

end A349802.P1144358213095776944

/-!
# A349803: a(3*n) = 1 + 4*n^2, a(1+3*n) = 2 + 4*n*(n+1), a(2+3*n) = 5 + 4*n*(n+1).

The programs for A349803, the canonical program `A349803.P10627015043597352849` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349803 has offset 0).

The definition of A349803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349803.P10627015043597352849

`a(n-3)+4*A004523(n-1)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A349803

/-- `a(n-3)+4*A004523(n-1)` -/
def P10627015043597352849.Spec : Prop :=
  ∀ n, P10627015043597352849.a n = A349803 n

theorem P10627015043597352849.correct : P10627015043597352849.Spec := by
  intro n
  simp only [A349803]

end A349803

/-! ## A349803.P17565123249736518768

`a(n-6)+8*A004396(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=5, a(4)=10, a(5)=13`
-/

namespace A349803.P17565123249736518768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 5, 10, 13] fun n a =>
  a (n - 6) + 8 * A004396 (n - 3)

end

end A349803.P17565123249736518768

namespace A349803

/-- `a(n-6)+8*A004396(n-3)` -/
def P17565123249736518768.Spec : Prop :=
  ∀ n, P17565123249736518768.a n = A349803 n

end A349803

/-! ## A349803.P1864260277628178945

`round(2*n/3)²+(n%3)!²`
-/

namespace A349803.P1864260277628178945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) ^ 2 + (Nat.factorial (n % 3) ^ 2 : ℤ)

end

end A349803.P1864260277628178945

namespace A349803

/-- `round(2*n/3)²+(n%3)!²` -/
def P1864260277628178945.Spec : Prop :=
  ∀ n, P1864260277628178945.a n = A349803 n

end A349803

/-! ## A349803.P14776789453087893379

`A004396(n)²+A132367(n)²`
-/

namespace A349803.P14776789453087893379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n ^ 2 + A132367 n ^ 2

end

end A349803.P14776789453087893379

namespace A349803

/-- `A004396(n)²+A132367(n)²` -/
def P14776789453087893379.Spec : Prop :=
  ∀ n, P14776789453087893379.a n = A349803 n

end A349803

/-! ## A349803.P6685511474771496801

`A061347(n+1)²+A004396(n)²`
-/

namespace A349803.P6685511474771496801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) ^ 2 + A004396 n ^ 2

end

end A349803.P6685511474771496801

namespace A349803

/-- `A061347(n+1)²+A004396(n)²` -/
def P6685511474771496801.Spec : Prop :=
  ∀ n, P6685511474771496801.a n = A349803 n

end A349803

/-! ## A349803.P16835985688552644902

`round(2*n/3)²+Δ[comp[4*n]]²`
-/

namespace A349803.P16835985688552644902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) ^ 2 + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A349803.P16835985688552644902

namespace A349803

/-- `round(2*n/3)²+Δ[comp[4*n]]²` -/
def P16835985688552644902.Spec : Prop :=
  ∀ n, P16835985688552644902.a n = A349803 n

end A349803

/-! ## A349803.P9734128205564975426

`A261327(A367286(n))`
-/

namespace A349803.P9734128205564975426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (A367286 n).toNat

end

end A349803.P9734128205564975426

namespace A349803

/-- `A261327(A367286(n))` -/
def P9734128205564975426.Spec : Prop :=
  ∀ n, P9734128205564975426.a n = A349803 n

end A349803

/-! ## A349803.P2949912043867654844

`A261327(A006369(n+1)-1)`
-/

namespace A349803.P2949912043867654844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (A006369 (n + 1) - 1).toNat

end

end A349803.P2949912043867654844

namespace A349803

/-- `A261327(A006369(n+1)-1)` -/
def P2949912043867654844.Spec : Prop :=
  ∀ n, P2949912043867654844.a n = A349803 n

end A349803

/-!
# A349806: a(n) = A099610(n) - n^2.

The programs for A349806, there is no canonical definition to state claims against.
-/

/-! ## A349806.P14766423423184386264

`A099610(n+1)-(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349806.P14766423423184386264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099610 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A349806.P14766423423184386264

/-! ## A349806.P403551594514290957

`abs(A000290(n+1)-A099610(n+1))`
-/

namespace A349806.P403551594514290957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (n + 1) - A099610 (n + 1)|

end

end A349806.P403551594514290957

/-! ## A349806.P17079093191706294585

`A099610(n+1)-(n-1)-A014206(n)`
-/

namespace A349806.P17079093191706294585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099610 (n + 1) - ((n : ℤ) - 1) - A014206 n

end

end A349806.P17079093191706294585

/-! ## A349806.P13857177612096428704

`A099610(n+1)-(2*n+1)-A000290(n)`
-/

namespace A349806.P13857177612096428704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099610 (n + 1) - (2 * n + 1 : ℤ) - A000290 n

end

end A349806.P13857177612096428704

/-! ## A349806.P3309669915099560483

`A028310(A099610(n+1)-A000290(n+1))`
-/

namespace A349806.P3309669915099560483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A099610 (n + 1) - A000290 (n + 1)).toNat

end

end A349806.P3309669915099560483

/-! ## A349806.P397309002945217589

`A004442(A099610(n+1))-A005563(n)`
-/

namespace A349806.P397309002945217589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A099610 (n + 1)).toNat - A005563 n

end

end A349806.P397309002945217589

/-! ## A349806.P2961947262495939926

`A026741(A099610(n+1))-∑[A005408(n)]`
-/

namespace A349806.P2961947262495939926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A099610 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349806.P2961947262495939926

/-! ## A349806.P4850419348050680195

`A026741(A099610(n+1))-Δ[A056520(n)]`
-/

namespace A349806.P4850419348050680195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A099610 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A349806.P4850419348050680195

/-!
# A349807: Number of cells in regular n-gon after 2 generations of mitosis.

The programs for A349807, there is no canonical definition to state claims against.
-/

/-! ## A349807.P6635153267600827277

`A349968(n+3)+1-A349967(n+3)`
-/

namespace A349807.P6635153267600827277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349968 (n + 3) + (1 - A349967 (n + 3))

end

end A349807.P6635153267600827277

/-! ## A349807.P1590873368308748832

`A349968(n+3)-A066182(A349967(n+3))`
-/

namespace A349807.P1590873368308748832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349968 (n + 3) - A066182 (A349967 (n + 3)).toNat

end

end A349807.P1590873368308748832

/-! ## A349807.P6967871493321106708

`A350000(C(n+4, 2))`
-/

namespace A349807.P6967871493321106708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350000 (Nat.choose (n + 4) 2)

end

end A349807.P6967871493321106708

/-! ## A349807.P16860184869174574565

`A350000(∑[n+3]+3)`
-/

namespace A349807.P16860184869174574565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350000 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A349807.P16860184869174574565

/-! ## A349807.P5955508757935879600

`abs(1-A350000(A000217(n+3)))+1`
-/

namespace A349807.P5955508757935879600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A350000 (A000217 (n + 3)).toNat| + 1

end

end A349807.P5955508757935879600

/-!
# A349808: Number of cells in a regular 7-gon after n generations of mitosis.

The programs for A349808, the canonical program `A349808.P3985958240337623963` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349808 has offset 0).

The definition of A349808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349808.P3985958240337623963

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=50, a(2)=190, a(3)=400`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349808

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3985958240337623963.Spec : Prop :=
  ∀ n, P3985958240337623963.a n = A349808 n

theorem P3985958240337623963.correct : P3985958240337623963.Spec := by
  intro n
  simp only [A349808]

end A349808

/-! ## A349808.P6345542817106957310

`a(n-1)+70*n` with `a(0)=1, a(1)=50`
-/

namespace A349808.P6345542817106957310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 50] fun n a =>
  a (n - 1) + 70 * n

end

end A349808.P6345542817106957310

namespace A349808

/-- `a(n-1)+70*n` -/
def P6345542817106957310.Spec : Prop :=
  ∀ n, (P6345542817106957310.a n : ℤ) = A349808 n

end A349808

/-! ## A349808.P10712738375422546543

`A026474((n+1)*round(1/acot(5*n)))`
-/

namespace A349808.P10712738375422546543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 ((n + 1 : ℤ) * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ))).toNat

end

end A349808.P10712738375422546543

namespace A349808

/-- `A026474((n+1)*round(1/acot(5*n)))` -/
def P10712738375422546543.Spec : Prop :=
  ∀ n, P10712738375422546543.a n = A349808 n

end A349808

/-! ## A349808.P14968067705335793870

`A026474(A008706(∑[2*n]))`
-/

namespace A349808.P14968067705335793870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 (A008706 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A349808.P14968067705335793870

namespace A349808

/-- `A026474(A008706(∑[2*n]))` -/
def P14968067705335793870.Spec : Prop :=
  ∀ n, P14968067705335793870.a n = A349808 n

end A349808

/-! ## A349808.P8158862699612671945

`A026474((n+1)*A008706(n))`
-/

namespace A349808.P8158862699612671945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 ((n + 1 : ℤ) * A008706 n).toNat

end

end A349808.P8158862699612671945

namespace A349808

/-- `A026474((n+1)*A008706(n))` -/
def P8158862699612671945.Spec : Prop :=
  ∀ n, P8158862699612671945.a n = A349808 n

end A349808

/-!
# A349809: a(n) = n^2 - A099611(n).

The programs for A349809, there is no canonical definition to state claims against.
-/

/-! ## A349809.P15182757656534379485

`(n+4)²-A099611(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349809.P15182757656534379485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) - A099611 (n + 4)

end

end A349809.P15182757656534379485

/-! ## A349809.P3215914333658988824

`(n+4)²-A046388(∑[A178133(n+3)])`
-/

namespace A349809.P3215914333658988824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) - A046388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349809.P3215914333658988824

/-! ## A349809.P4908720121441807474

`A020705(n)²%A046388(∑[A178133(n+3)])`
-/

namespace A349809.P4908720121441807474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020705 n ^ 2) (A046388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A349809.P4908720121441807474

/-! ## A349809.P3731609922985104903

`A000290(n+4)%A046388(∑[A178133(n+3)])`
-/

namespace A349809.P3731609922985104903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 4)) (A046388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A349809.P3731609922985104903

/-! ## A349809.P14426072692744923841

`(n+4)²-A046388(A205728(n+4))`
-/

namespace A349809.P14426072692744923841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) - A046388 (A205728 (n + 4)).toNat

end

end A349809.P14426072692744923841

/-! ## A349809.P17299135973648839333

`A020705(n)²%A046388(A205728(n+4))`
-/

namespace A349809.P17299135973648839333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020705 n ^ 2) (A046388 (A205728 (n + 4)).toNat)

end

end A349809.P17299135973648839333

/-! ## A349809.P10326664329176885579

`A000290(n+4)%A046388(A205728(n+4))`
-/

namespace A349809.P10326664329176885579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 4)) (A046388 (A205728 (n + 4)).toNat)

end

end A349809.P10326664329176885579

/-!
# A349810: Numbers k such that Q(k^(1/3)) is a purely real cubic field.

The programs for A349810, there is no canonical definition to state claims against.
-/

/-! ## A349810.P10852341158684508122

`record[A277803(n+2)]`
-/

namespace A349810.P10852341158684508122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277803 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349810.P10852341158684508122

/-! ## A349810.P5114041177994632950

`comp[∪[A299117(n+1), n²]]`
-/

namespace A349810.P5114041177994632950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299117 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A349810.P5114041177994632950

/-! ## A349810.P92822213464553795

`lt[2, A214971(∏{p}[n, #])-n+1]`
-/

namespace A349810.P92822213464553795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214971 (∏ p ∈ Nat.primeFactors (f3 n), p) - (n : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A349810.P92822213464553795

/-! ## A349810.P183750776868334122

`lt[n²+1, A056551(n+1)]+1`
-/

namespace A349810.P183750776868334122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A349810.P183750776868334122

/-! ## A349810.P1614652060239205543

`lt[C(A003557(n+1)², 2), n]+1`
-/

namespace A349810.P1614652060239205543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003557 (n + 1) ^ 2).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A349810.P1614652060239205543

/-! ## A349810.P880182236912359858

`filter[A102750(n+1), A168181(#)]`
-/

namespace A349810.P880182236912359858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A349810.P880182236912359858

/-! ## A349810.P4054316322240078950

`filter[A102750(n+1), A212793(#)]`
-/

namespace A349810.P4054316322240078950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A349810.P4054316322240078950

/-! ## A349810.P3472549133876978924

`filter[A102750(n+1), A359471(#)]`
-/

namespace A349810.P3472549133876978924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A349810.P3472549133876978924

/-! ## A349810.P15338442687079304644

`∩[A102750(n+1), A187320(n)]`
-/

namespace A349810.P15338442687079304644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349810.P15338442687079304644

/-! ## A349810.P1238089599387491550

`∩[A004709(n+1), A102750(n+1)]`
-/

namespace A349810.P1238089599387491550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349810.P1238089599387491550

/-!
# A349812: Triangle read by rows: row 1 is [1]; for n >= 1, row n gives coefficients of expansion of (-1/x + x)*(1/x + 1 + x)^(n-1) in order of increasing powers of x.

The programs for A349812, there is no canonical definition to state claims against.
-/

/-! ## A349812.P16428582473928339152

`Δ[Δ[A027907(n)]-A025177(n+1)]`
-/

namespace A349812.P16428582473928339152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A025177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349812.P16428582473928339152

/-! ## A349812.P4275134616268774928

`A025177(n+1)+A025177(n)-A025564(n+1)`
-/

namespace A349812.P4275134616268774928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (n + 1) + (A025177 n - A025564 (n + 1))

end

end A349812.P4275134616268774928

/-!
# A349814: Irregular triangle read by rows: the right-hand side of the triangle in A349813.

The programs for A349814, there is no canonical definition to state claims against.
-/

/-! ## A349814.P4291884635382243394

`A349813(lt[0, A349813(n)])`
-/

namespace A349814.P4291884635382243394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A349814.P4291884635382243394

/-!
# A349816: Irregular triangle read by rows: the right-hand side of the triangle in A349815.

The programs for A349816, there is no canonical definition to state claims against.
-/

/-! ## A349816.P11939877500497816375

`A349815(lt[0, A349815(n)])`
-/

namespace A349816.P11939877500497816375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A349816.P11939877500497816375

/-!
# A349817: Number of 4 X n Fibonacci minimal checkerboards.

The programs for A349817, there is no canonical definition to state claims against.
-/

/-! ## A349817.P4845562046044144872

`A303249(n+1)+A123715(A002467(n))`
-/

namespace A349817.P4845562046044144872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303249 (n + 1) + A123715 (A002467 n).toNat

end

end A349817.P4845562046044144872

/-!
# A349818: Central column (ignoring the zeros) of A349815, or leading entries in rows of A349816.

The programs for A349818, there is no canonical definition to state claims against.
-/

/-! ## A349818.P12005021352145388392

`A349816(A343941(3*n+1)-and(1, n))`
-/

namespace A349818.P12005021352145388392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349816 (A343941 (3 * n + 1) - (Nat.land 1 n : ℤ)).toNat

end

end A349818.P12005021352145388392

/-! ## A349818.P5873252296553065574

`A349815(A005449(n)+A000720(n+1))`
-/

namespace A349818.P5873252296553065574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349815 (A005449 n + A000720 (n + 1)).toNat

end

end A349818.P5873252296553065574

/-! ## A349818.P3002704841590175126

`A210531(A079570(n+1))+A079569(n+1)`
-/

namespace A349818.P3002704841590175126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210531 (A079570 (n + 1)).toNat + A079569 (n + 1)

end

end A349818.P3002704841590175126

/-!
# A349819: Central column (ignoring the zeros) of A349813, or leading entries in rows of A349814.

The programs for A349819, there is no canonical definition to state claims against.
-/

/-! ## A349819.P2004144703887298536

`A349813(A005449(n)+A000720(n+1))`
-/

namespace A349819.P2004144703887298536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349813 (A005449 n + A000720 (n + 1)).toNat

end

end A349819.P2004144703887298536

/-! ## A349819.P16977037061569607366

`A332925(A112345(6*a(n-1))^A008835(n+1)+1)` with `a(0)=3, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A349819.P16977037061569607366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 3, 4] fun n a =>
  A332925 (SequenceMachineLib.roundAway ((A112345 (6 * a (n - 1)).toNat : ℚ) ^ (A008835 (n + 1) : ℤ) + 1)).toNat

end

end A349819.P16977037061569607366

/-!
# A349820: Primes p such that 2*p is a member of A230624.

The programs for A349820, there is no canonical definition to state claims against.
-/

/-! ## A349820.P16888518424109360356

`p?[2*A350607(n+1)+1]`
-/

namespace A349820.P16888518424109360356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350607 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349820.P16888518424109360356

/-! ## A349820.P11832864879879004333

`p?[ceil(A230624(ϕ²-(ϕ-n))/2)]`
-/

namespace A349820.P11832864879879004333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A230624 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349820.P11832864879879004333

/-!
# A349821: a(n) = A230624(n)/2.

The programs for A349821, there is no canonical definition to state claims against.
-/

/-! ## A349821.P15520600461373420495

`A230624(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349821.P15520600461373420495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230624 (n + 1) : ℚ) / 2

end

end A349821.P15520600461373420495

/-! ## A349821.P9171860668514300909

`floor(A230624(Δ[n²]-n)/2)`
-/

namespace A349821.P9171860668514300909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230624 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A349821.P9171860668514300909

/-! ## A349821.P13080360703039926520

`ceil(A230624(ϕ²-(ϕ-n))/2)`
-/

namespace A349821.P13080360703039926520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A230624 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / 2⌉

end

end A349821.P13080360703039926520

/-! ## A349821.P5536389937228755247

`record[A230624(A141256(n))/2]`
-/

namespace A349821.P5536389937228755247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230624 (A141256 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349821.P5536389937228755247

/-! ## A349821.P9570428022659065925

`record[A230624(A152271(n))/2]`
-/

namespace A349821.P9570428022659065925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230624 (A152271 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349821.P9570428022659065925

/-! ## A349821.P352781568723758125

`record[A230624(A242112(n))/2]`
-/

namespace A349821.P352781568723758125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230624 (A242112 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349821.P352781568723758125

/-! ## A349821.P10027557796472284810

`(∑[A349823(n+1)]-A349823(n+1))/2`
-/

namespace A349821.P10027557796472284810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349823 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A349823 (n + 1) : ℤ) : ℚ) / 2

end

end A349821.P10027557796472284810

/-! ## A349821.P6733738264966180590

`∑[A057427(n)*A349823(A028310(n))/2]`
-/

namespace A349821.P6733738264966180590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n * A349823 (A028310 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349821.P6733738264966180590

/-! ## A349821.P8574456468796516458

`∑[A349823(A028310(n))%A006000(n)/2]`
-/

namespace A349821.P8574456468796516458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A349823 (A028310 n).toNat) (A006000 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349821.P8574456468796516458

/-! ## A349821.P13163737057145694381

`A014682(A230624(n+1))`
-/

namespace A349821.P13163737057145694381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A230624 (n + 1)).toNat

end

end A349821.P13163737057145694381

/-!
# A349823: First differences of A230624.

The programs for A349823, there is no canonical definition to state claims against.
-/

/-! ## A349823.P6595931473771568958

`Δ[A230624(n+1)]`
-/

namespace A349823.P6595931473771568958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349823.P6595931473771568958

/-! ## A349823.P1358693501773398042

`abs(Δ[A230624(ϕ²-(ϕ-n))])`
-/

namespace A349823.P1358693501773398042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230624 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A349823.P1358693501773398042

/-! ## A349823.P4948128569325212177

`Δ[record[A230624(A141256(n))]]`
-/

namespace A349823.P4948128569325212177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230624 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349823.P4948128569325212177

/-! ## A349823.P1906070516965766837

`Δ[record[A230624(A242112(n))]]`
-/

namespace A349823.P1906070516965766837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230624 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349823.P1906070516965766837

/-! ## A349823.P10195721084894064335

`A230624(n+2)-A230624(n+1)`
-/

namespace A349823.P10195721084894064335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230624 (n + 2) - A230624 (n + 1)

end

end A349823.P10195721084894064335

/-! ## A349823.P10443974995736816764

`Δ[2*A349821(n+1)]`
-/

namespace A349823.P10443974995736816764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349823.P10443974995736816764

/-! ## A349823.P7063120810758086581

`A014682(Δ[lcm(4, A349821(n+1))])`
-/

namespace A349823.P7063120810758086581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A349821 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A349823.P7063120810758086581

/-!
# A349824: a(0) = 0; for n >= 1, a(n) = (number of prime factors, counted with repetition) * (sum of prime factors, counted with repetition).

The programs for A349824, the canonical program `A349824.P1865946658813482912` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349824 has offset 0).

The definition of A349824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349824.P1865946658813482912

`∑{e}[n, #*A001414(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A349824

/-- `∑{e}[n, #*A001414(n)]` -/
def P1865946658813482912.Spec : Prop :=
  ∀ n, P1865946658813482912.a n = A349824 n

theorem P1865946658813482912.correct : P1865946658813482912.Spec := by
  intro n
  simp only [A349824]

end A349824

/-! ## A349824.P16148086463826923282

`A001222(A028310(n))*∑{d}[n, A120007(#)]`
-/

namespace A349824.P16148086463826923282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat * (∑ d ∈ Nat.divisors (f1 n), A120007 d)

end

end A349824.P16148086463826923282

namespace A349824

/-- `A001222(A028310(n))*∑{d}[n, A120007(#)]` -/
def P16148086463826923282.Spec : Prop :=
  ∀ n, P16148086463826923282.a n = A349824 n

end A349824

/-! ## A349824.P16631563078269059940

`∑{d}[n, (A000203(A014963(#))-1)*A001222(n)]`
-/

namespace A349824.P16631563078269059940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000203 (A014963 d).toNat - 1) * A001222 n

end

end A349824.P16631563078269059940

namespace A349824

/-- `∑{d}[n, (A000203(A014963(#))-1)*A001222(n)]` -/
def P16631563078269059940.Spec : Prop :=
  ∀ n, P16631563078269059940.a n = A349824 n

end A349824

/-! ## A349824.P6748456267484154641

`A001222(A028310(n))*A001414(A028310(n))`
-/

namespace A349824.P6748456267484154641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat * A001414 (A028310 n).toNat

end

end A349824.P6748456267484154641

namespace A349824

/-- `A001222(A028310(n))*A001414(A028310(n))` -/
def P6748456267484154641.Spec : Prop :=
  ∀ n, P6748456267484154641.a n = A349824 n

end A349824

/-! ## A349824.P14225620238993772461

`A001222(A000007(n)+n)*A001414(A000007(n)+n)`
-/

namespace A349824.P14225620238993772461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000007 n + (n : ℤ)).toNat * A001414 (A000007 n + (n : ℤ)).toNat

end

end A349824.P14225620238993772461

namespace A349824

/-- `A001222(A000007(n)+n)*A001414(A000007(n)+n)` -/
def P14225620238993772461.Spec : Prop :=
  ∀ n, P14225620238993772461.a n = A349824 n

end A349824

/-! ## A349824.P2061306899463276720

`A001222(A123108(2*n))*A001414(A123108(2*n))`
-/

namespace A349824.P2061306899463276720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A123108 (2 * n)).toNat * A001414 (A123108 (2 * n)).toNat

end

end A349824.P2061306899463276720

namespace A349824

/-- `A001222(A123108(2*n))*A001414(A123108(2*n))` -/
def P2061306899463276720.Spec : Prop :=
  ∀ n, P2061306899463276720.a n = A349824 n

end A349824

/-! ## A349824.P17657727284690812401

`A001414(A233583(n+1))*A252736(A008486(n))`
-/

namespace A349824.P17657727284690812401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A233583 (n + 1)).toNat * A252736 (A008486 n).toNat

end

end A349824.P17657727284690812401

namespace A349824

/-- `A001414(A233583(n+1))*A252736(A008486(n))` -/
def P17657727284690812401.Spec : Prop :=
  ∀ n, P17657727284690812401.a n = A349824 n

end A349824

/-!
# A349826: Iterate x -> A349824(x) starting at n; if trajectory reaches a fixed point then that is a(n), if it ends in the loop (28,33) then a(n) = 28, otherwise a(n) = -1.

The programs for A349826, there is no canonical definition to state claims against.
-/

/-! ## A349826.P8901187295114388981

`A001414(A000792(A349824(A349824(A349827(n)))))`
-/

namespace A349826.P8901187295114388981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000792 (A349824 (A349824 (A349827 n).toNat).toNat).toNat).toNat

end

end A349826.P8901187295114388981

/-!
# A349828: List of disc sizes for chamber graph of a certain abstract polytope associated with the Mathieu group M_24.

The programs for A349828, there is no canonical definition to state claims against.
-/

/-! ## A349828.P841255101270176543

`∑[A098527(n+2)]%A034295(2*(n+2))`
-/

namespace A349828.P841255101270176543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A034295 (2 * (n + 2)))

end

end A349828.P841255101270176543

/-! ## A349828.P8144453210529345313

`∑[A098527(n+2)%A093717(3*n+2)]`
-/

namespace A349828.P8144453210529345313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098527 (n + 2)) (A093717 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349828.P8144453210529345313

/-! ## A349828.P10742099002886032438

`A260003(a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A349828.P10742099002886032438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  A260003 (a (n - 1)).toNat

end

end A349828.P10742099002886032438

/-! ## A349828.P9798349905402449637

`A083375(A037294(n+1))`
-/

namespace A349828.P9798349905402449637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A037294 (n + 1)).toNat

end

end A349828.P9798349905402449637

/-! ## A349828.P10299113784774152684

`∑[∑[A101660(A205490(n))]]`
-/

namespace A349828.P10299113784774152684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 (A205490 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349828.P10299113784774152684

/-!
# A349829: Numbers k such that there is a number m with m + s_4(m) = k, where s_b(m) = sum of digits in base-b expansion of m.

The programs for A349829, there is no canonical definition to state claims against.
-/

/-! ## A349829.P2272668316597655821

`comp[A010064(n+1)]`
-/

namespace A349829.P2272668316597655821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A349829.P2272668316597655821

/-! ## A349829.P6862001176517388942

`∪[A230633(n+1), A230634(n+1)]`
-/

namespace A349829.P6862001176517388942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349829.P6862001176517388942

/-! ## A349829.P3086653304835890001

`lt[n, A230632(n)+n]`
-/

namespace A349829.P3086653304835890001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A349829.P3086653304835890001

/-! ## A349829.P396780688547037917

`eq[1, gcd(A151800(n), A230632(n))]`
-/

namespace A349829.P396780688547037917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151800 n) (A230632 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349829.P396780688547037917

/-! ## A349829.P13602870621349365080

`record[A028310(n)%(A230632(n)+n)]`
-/

namespace A349829.P13602870621349365080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A230632 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349829.P13602870621349365080

/-! ## A349829.P11767775465234754572

`record[(A108069(or(1, n))+n)%(A230632(n)+n)]`
-/

namespace A349829.P11767775465234754572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108069 (Nat.lor 1 n) + (n : ℤ)) (A230632 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349829.P11767775465234754572

/-! ## A349829.P13499404963947070087

`record[n*char[A230631(n)]]`
-/

namespace A349829.P13499404963947070087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349829.P13499404963947070087

/-! ## A349829.P10394915393410556136

`record[A008619(A004273(n))%(A230632(n)+n)]`
-/

namespace A349829.P10394915393410556136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A004273 n).toNat) (A230632 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349829.P10394915393410556136

/-!
# A349830: Intersection of A228082 and A349829.

The programs for A349830, there is no canonical definition to state claims against.
-/

/-! ## A349830.P5466145938644402588

`comp[∪[A010061(n+1), A010064(n+1)]]`
-/

namespace A349830.P5466145938644402588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010064 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A349830.P5466145938644402588

/-! ## A349830.P2239163741490567929

`∩[A228082(n+1), A349829(n+1)]`
-/

namespace A349830.P2239163741490567929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349830.P2239163741490567929

/-! ## A349830.P9378914043278888321

`∩[comp[A010064(n+1)], A228082(n+1)]`
-/

namespace A349830.P9378914043278888321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010064 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A349830.P9378914043278888321

/-! ## A349830.P8277130653023734778

`∩[comp[A010061(n+1)], A349829(n+1)]`
-/

namespace A349830.P8277130653023734778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A349830.P8277130653023734778

/-! ## A349830.P3482419746899203810

`∩[comp[A230301(n+1)-1], A349829(n+1)]`
-/

namespace A349830.P3482419746899203810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230301 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A349830.P3482419746899203810

/-! ## A349830.P15752934207863543164

`∩[A228082(n+1), lt[n, A230632(n)+n]]`
-/

namespace A349830.P15752934207863543164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A349830.P15752934207863543164

/-!
# A349831: Even numbers in the intersection of A228082 and A349829.

The programs for A349831, there is no canonical definition to state claims against.
-/

/-! ## A349831.P6974818940591901218

`∩[2*n, A349830(n+1)]`
-/

namespace A349831.P6974818940591901218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349831.P6974818940591901218

/-! ## A349831.P17491987242372738439

`∩[A349830(n+1), A004271(n)]`
-/

namespace A349831.P17491987242372738439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349831.P17491987242372738439

/-! ## A349831.P17999750863241648355

`∩[A349830(n+1), A004275(n)]`
-/

namespace A349831.P17999750863241648355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349831.P17999750863241648355

/-! ## A349831.P13701166672784245172

`∩[A349830(n+1), A005843(n)]`
-/

namespace A349831.P13701166672784245172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349831.P13701166672784245172

/-! ## A349831.P13858311496066160557

`record[A038608(A349830(n+1))]`
-/

namespace A349831.P13858311496066160557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A349830 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349831.P13858311496066160557

/-! ## A349831.P935535079374508474

`filter[A349830(n+1), A059841(#)]`
-/

namespace A349831.P935535079374508474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A349831.P935535079374508474

/-! ## A349831.P18089461406874818642

`filter[A349830(n+1), A266591(#)]`
-/

namespace A349831.P18089461406874818642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A349831.P18089461406874818642

/-!
# A349832: Even numbers that are "generated" (in Kaprekar's sense) in all three bases 2, 4, and 6.

The programs for A349832, there is no canonical definition to state claims against.
-/

/-! ## A349832.P3666872184338228245

`eq[2, Δ[A194462(A194380(n+1))]]`
-/

namespace A349832.P3666872184338228245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194462 (A194380 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349832.P3666872184338228245

/-! ## A349832.P12012273648606274575

`A004277(A288625(n+1))%A206686(n+1)`
-/

namespace A349832.P12012273648606274575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A288625 (n + 1)).toNat) (A206686 (n + 1))

end

end A349832.P12012273648606274575

/-! ## A349832.P9926565307552830488

`eq[A038712(n+1), A059448(A046258(n+1))]`
-/

namespace A349832.P9926565307552830488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (A046258 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349832.P9926565307552830488

/-! ## A349832.P16624891234128310619

`A005843(A288625(n+1)%A140722(n+1))`
-/

namespace A349832.P16624891234128310619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A288625 (n + 1)) (A140722 (n + 1))).toNat

end

end A349832.P16624891234128310619

/-! ## A349832.P1654049616196054884

`(2*A288625(n+1))%A000027(A081186(n))`
-/

namespace A349832.P1654049616196054884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A288625 (n + 1)) (A000027 (A081186 n).toNat)

end

end A349832.P1654049616196054884

/-!
# A349834: Expansion of sqrt(1 + 4*x)/(1 - 4*x).

The programs for A349834, the canonical program `A349834.P13091528776294325392` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349834 has offset 0).

The definition of A349834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349834.P13091528776294325392

`A208887(4*n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A349834

/-- `A208887(4*n+1)` -/
def P13091528776294325392.Spec : Prop :=
  ∀ n, P13091528776294325392.a n = A349834 n

theorem P13091528776294325392.correct : P13091528776294325392.Spec := by
  intro n
  simp only [A349834]

end A349834

/-! ## A349834.P14479130819787722207

`record[A208887(2*n^(n%2)-1)]`
-/

namespace A349834.P14479130819787722207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208887 (2 * n ^ (n % 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349834.P14479130819787722207

namespace A349834

/-- `record[A208887(2*n^(n%2)-1)]` -/
def P14479130819787722207.Spec : Prop :=
  ∀ n, P14479130819787722207.a n = A349834 n

end A349834

/-! ## A349834.P12526089550520254348

`A104624(2*n)+4*a(n-1)` with `a(0)=1`
-/

namespace A349834.P12526089550520254348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104624 (2 * n) + 4 * a (n - 1)

end

end A349834.P12526089550520254348

namespace A349834

/-- `A104624(2*n)+4*a(n-1)` -/
def P12526089550520254348.Spec : Prop :=
  ∀ n, P12526089550520254348.a n = A349834 n

end A349834

/-! ## A349834.P7851821450959316736

`A182122(2*n)+4*a(n-1)` with `a(0)=1`
-/

namespace A349834.P7851821450959316736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182122 (2 * n) + 4 * a (n - 1)

end

end A349834.P7851821450959316736

namespace A349834

/-- `A182122(2*n)+4*a(n-1)` -/
def P7851821450959316736.Spec : Prop :=
  ∀ n, P7851821450959316736.a n = A349834 n

end A349834

/-! ## A349834.P7640216244342175054

`record[A208887(A209304(n+1))]`
-/

namespace A349834.P7640216244342175054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208887 (A209304 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349834.P7640216244342175054

namespace A349834

/-- `record[A208887(A209304(n+1))]` -/
def P7640216244342175054.Spec : Prop :=
  ∀ n, P7640216244342175054.a n = A349834 n

end A349834

/-!
# A349835: Expansion of (1 + 4*x)/sqrt(1 - 4*x).

The programs for A349835, the canonical program `A349835.P853498659600068463` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349835 has offset 0).

The definition of A349835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349835.P9161809428832832539

`(1-4*n)*A002420(n)`
-/

namespace A349835.P9161809428832832539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (4 * n : ℤ)) * A002420 n

end

end A349835.P9161809428832832539

namespace A349835

/-- `(1-4*n)*A002420(n)` -/
def P9161809428832832539.Spec : Prop :=
  ∀ n, P9161809428832832539.a n = A349835 n

end A349835

/-! ## A349835.P10971687426017251555

`abs(1-4*n)*A089408(2*n)`
-/

namespace A349835.P10971687426017251555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)| * A089408 (2 * n)

end

end A349835.P10971687426017251555

namespace A349835

/-- `abs(1-4*n)*A089408(2*n)` -/
def P10971687426017251555.Spec : Prop :=
  ∀ n, P10971687426017251555.a n = A349835 n

end A349835

/-! ## A349835.P2305620108081879485

`abs(abs(1-4*n)*A104624(2*n))`
-/

namespace A349835.P2305620108081879485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|1 - (4 * n : ℤ)| * A104624 (2 * n))|

end

end A349835.P2305620108081879485

namespace A349835

/-- `abs(abs(1-4*n)*A104624(2*n))` -/
def P2305620108081879485.Spec : Prop :=
  ∀ n, P2305620108081879485.a n = A349835 n

end A349835

/-! ## A349835.P2721826560996232538

`(2-floor(2/acot(4*n)))*A115140(n)`
-/

namespace A349835.P2721826560996232538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ⌊2 / SequenceMachineLib.acot (4 * n : ℝ)⌋) * A115140 n

end

end A349835.P2721826560996232538

namespace A349835

/-- `(2-floor(2/acot(4*n)))*A115140(n)` -/
def P2721826560996232538.Spec : Prop :=
  ∀ n, P2721826560996232538.a n = A349835 n

end A349835

/-! ## A349835.P11991080592299014869

`A028329(n)-A002420(n)`
-/

namespace A349835.P11991080592299014869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A002420 n

end

end A349835.P11991080592299014869

namespace A349835

/-- `A028329(n)-A002420(n)` -/
def P11991080592299014869.Spec : Prop :=
  ∀ n, P11991080592299014869.a n = A349835 n

end A349835

/-! ## A349835.P3181176680567948021

`2*A000984(n)-A002420(n)`
-/

namespace A349835.P3181176680567948021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n - A002420 n

end

end A349835.P3181176680567948021

namespace A349835

/-- `2*A000984(n)-A002420(n)` -/
def P3181176680567948021.Spec : Prop :=
  ∀ n, P3181176680567948021.a n = A349835 n

end A349835

/-! ## A349835.P853498659600068463

`2*A028283(n)-A000984(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A349835

/-- `2*A028283(n)-A000984(n)` -/
def P853498659600068463.Spec : Prop :=
  ∀ n, P853498659600068463.a n = A349835 n

theorem P853498659600068463.correct : P853498659600068463.Spec := by
  intro n
  simp only [A349835]

end A349835

/-! ## A349835.P3109397409897955759

`(A349847(n)+A000984(n))/2`
-/

namespace A349835.P3109397409897955759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349847 n + A000984 n : ℚ) / 2

end

end A349835.P3109397409897955759

namespace A349835

/-- `(A349847(n)+A000984(n))/2` -/
def P3109397409897955759.Spec : Prop :=
  ∀ n, P3109397409897955759.a n = (A349835 n : ℚ)

end A349835

/-! ## A349835.P3327932847946984748

`A002420(n)*A165747(2*n)`
-/

namespace A349835.P3327932847946984748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A165747 (2 * n)

end

end A349835.P3327932847946984748

namespace A349835

/-- `A002420(n)*A165747(2*n)` -/
def P3327932847946984748.Spec : Prop :=
  ∀ n, P3327932847946984748.a n = A349835 n

end A349835

/-! ## A349835.P12737179742386079803

`A111284(2*n+1)*A120588(n)`
-/

namespace A349835.P12737179742386079803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (2 * n + 1) * A120588 n

end

end A349835.P12737179742386079803

namespace A349835

/-- `A111284(2*n+1)*A120588(n)` -/
def P12737179742386079803.Spec : Prop :=
  ∀ n, P12737179742386079803.a n = A349835 n

end A349835

/-!
# A349836: Expansion of Sum_{k>=0} (k * x)^k/(1 - k^2 * x).

The programs for A349836, there is no canonical definition to state claims against.
-/

/-! ## A349836.P9995385164848452405

`A226065(A004278(n+2))`
-/

namespace A349836.P9995385164848452405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226065 (A004278 (n + 2)).toNat

end

end A349836.P9995385164848452405

/-! ## A349836.P2156601096231579311

`A226065(A300576(n+2))`
-/

namespace A349836.P2156601096231579311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226065 (A300576 (n + 2)).toNat

end

end A349836.P2156601096231579311

/-! ## A349836.P2647298561784370408

`A226065(A333183(n+2))`
-/

namespace A349836.P2647298561784370408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226065 (A333183 (n + 2)).toNat

end

end A349836.P2647298561784370408

/-! ## A349836.P4576579036470645347

`A226065(2*A028310(n))`
-/

namespace A349836.P4576579036470645347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226065 (2 * A028310 n).toNat

end

end A349836.P4576579036470645347

/-! ## A349836.P14562428808540237902

`A226065(A233583(2*n+1))`
-/

namespace A349836.P14562428808540237902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226065 (A233583 (2 * n + 1)).toNat

end

end A349836.P14562428808540237902

/-!
# A349838: Irregular table read by rows; the n-th row contains in ascending order the integers m > 1 such that sigma(m) = tau(m)^n; the first row contains 1.

The programs for A349838, there is no canonical definition to state claims against.
-/

/-! ## A349838.P2996988509362656826

`A051281(A349917(n+1))`
-/

namespace A349838.P2996988509362656826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051281 (A349917 (n + 1)).toNat

end

end A349838.P2996988509362656826

/-!
# A349839: Triangle T(n,k) built by placing all ones on the left edge, [1,0,0,0] repeated on the right edge, and filling the body using the Pascal recurrence T(n,k) = T(n-1,k) + T(n-1,k-1).

The programs for A349839, there is no canonical definition to state claims against.
-/

/-! ## A349839.P7518554453021126188

`A102683(A102705(n))+A071919(n)`
-/

namespace A349839.P7518554453021126188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A102705 n).toNat + A071919 n

end

end A349839.P7518554453021126188

/-! ## A349839.P3526322985967962455

`A321791(n)+A102683(A102705(n))`
-/

namespace A349839.P3526322985967962455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321791 n + A102683 (A102705 n).toNat

end

end A349839.P3526322985967962455

/-! ## A349839.P16004411489428709719

`A339779(A088918(A294582(n))+n)`
-/

namespace A349839.P16004411489428709719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (A088918 (A294582 n).toNat + (n : ℤ)).toNat

end

end A349839.P16004411489428709719

/-! ## A349839.P17900271074449546025

`A321791(n)+A085980(A054631(n+1))`
-/

namespace A349839.P17900271074449546025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321791 n + A085980 (A054631 (n + 1)).toNat

end

end A349839.P17900271074449546025

/-! ## A349839.P3802141330193249772

`A339779(n)-A010815(A000567(3*(n+1)))`
-/

namespace A349839.P3802141330193249772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 n - A010815 (A000567 (3 * (n + 1))).toNat

end

end A349839.P3802141330193249772

/-!
# A349840: The number of compositions of n using elements from the set {1,3,5,7,8}.

The programs for A349840, the canonical program `A349840.P17529210721202066716` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349840 has offset 0).

The definition of A349840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349840.P17529210721202066716

`a(n-1)+a(n-3)+a(n-5)+a(n-7)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8, a(7)=13`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349840

/-- `a(n-1)+a(n-3)+a(n-5)+a(n-7)+a(n-8)` -/
def P17529210721202066716.Spec : Prop :=
  ∀ n, (P17529210721202066716.a n : ℤ) = A349840 n

theorem P17529210721202066716.correct : P17529210721202066716.Spec := by
  intro n
  simp only [A349840]

end A349840

/-! ## A349840.P966451796372986986

`round(∑[A295688(n)/3])`
-/

namespace A349840.P966451796372986986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295688 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349840.P966451796372986986

namespace A349840

/-- `round(∑[A295688(n)/3])` -/
def P966451796372986986.Spec : Prop :=
  ∀ n, P966451796372986986.a n = A349840 n

end A349840

/-! ## A349840.P10202580478763029095

`round(A070550(n+1)/3)`
-/

namespace A349840.P10202580478763029095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A070550 (n + 1) : ℚ) / 3)

end

end A349840.P10202580478763029095

namespace A349840

/-- `round(A070550(n+1)/3)` -/
def P10202580478763029095.Spec : Prop :=
  ∀ n, P10202580478763029095.a n = A349840 n

end A349840

/-! ## A349840.P11050836162487879284

`round(A293411(n+2)/6)`
-/

namespace A349840.P11050836162487879284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293411 (n + 2) : ℚ) / 6)

end

end A349840.P11050836162487879284

namespace A349840

/-- `round(A293411(n+2)/6)` -/
def P11050836162487879284.Spec : Prop :=
  ∀ n, P11050836162487879284.a n = A349840 n

end A349840

/-! ## A349840.P7851119641348664653

`ceil(∑[A000032(n+2)/15])`
-/

namespace A349840.P7851119641348664653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 2) : ℚ) / 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A349840.P7851119641348664653

namespace A349840

/-- `ceil(∑[A000032(n+2)/15])` -/
def P7851119641348664653.Spec : Prop :=
  ∀ n, P7851119641348664653.a n = A349840 n

end A349840

/-! ## A349840.P16900402592851222843

`ceil(∑[ϕ^(n+2)]/15)`
-/

namespace A349840.P16900402592851222843
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / 15⌉

end

end A349840.P16900402592851222843

namespace A349840

/-- `ceil(∑[ϕ^(n+2)]/15)` -/
def P16900402592851222843.Spec : Prop :=
  ∀ n, P16900402592851222843.a n = A349840 n

end A349840

/-!
# A349841: Triangle T(n,k) built by placing all ones on the left edge, [1,0,0,0,0] repeated on the right edge, and filling the body using the Pascal recurrence T(n,k) = T(n-1,k) + T(n-1,k-1).

The programs for A349841, there is no canonical definition to state claims against.
-/

/-! ## A349841.P1943088879297596727

`A121262(A127568(n))+A071919(n)`
-/

namespace A349841.P1943088879297596727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A127568 n).toNat + A071919 n

end

end A349841.P1943088879297596727

/-! ## A349841.P9552303696765831389

`A322437(A002379(n))+A071919(n)`
-/

namespace A349841.P9552303696765831389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (A002379 n).toNat + A071919 n

end

end A349841.P9552303696765831389

/-! ## A349841.P4911850904921725849

`A185284(2^(n-C(∑[char[∑[n]]], 2)))+A071919(n)`
-/

namespace A349841.P4911850904921725849
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat + A071919 n

end

end A349841.P4911850904921725849

/-! ## A349841.P3526660914250801279

`A185238(A059268(n))+A071919(n)`
-/

namespace A349841.P3526660914250801279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A059268 n).toNat + A071919 n

end

end A349841.P3526660914250801279

/-! ## A349841.P11453126585165322307

`A071919(n)+A044940(A005169(n))`
-/

namespace A349841.P11453126585165322307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + A044940 (A005169 n).toNat

end

end A349841.P11453126585165322307

/-!
# A349842: Expansion of 1/((1 - 2*x)*(1 + x + x^2 + x^3 + x^4)).

The programs for A349842, the canonical program `A349842.P9320178164334017229` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349842 has offset 0).

The definition of A349842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-x^3-x^4-2x^5))` (program `A349842.P9320178164334017229`, by `A349842.P9320178164334017229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A349842.P9320178164334017229

`ogf(1/(1-x-x^2-x^3-x^4-2x^5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349842

/-- `ogf(1/(1-x-x^2-x^3-x^4-2x^5))` -/
def P9320178164334017229.Spec : Prop :=
  ∀ n, P9320178164334017229.a n = A349842 n

theorem P9320178164334017229.correct : P9320178164334017229.Spec := by
  intro n
  simp only [A349842]

end A349842

/-! ## A349842.P12032666079293164532

`2*a(n-1)+a(n-5)-2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=17`
-/

namespace A349842.P12032666079293164532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8, 17] fun n a =>
  2 * a (n - 1) + a (n - 5) - 2 * a (n - 6)

end

end A349842.P12032666079293164532

namespace A349842

/-- `2*a(n-1)+a(n-5)-2*a(n-6)` -/
def P12032666079293164532.Spec : Prop :=
  ∀ n, P12032666079293164532.a n = A349842 n

end A349842

/-! ## A349842.P13874880398853431324

`a(n-1)+A010891(n)+a(n-1)` with `a(0)=1`
-/

namespace A349842.P13874880398853431324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A010891 n + a (n - 1))

end

end A349842.P13874880398853431324

namespace A349842

/-- `a(n-1)+A010891(n)+a(n-1)` -/
def P13874880398853431324.Spec : Prop :=
  ∀ n, P13874880398853431324.a n = A349842 n

end A349842

/-! ## A349842.P16425144627027386768

`ceil(A119610(n+1)/2)`
-/

namespace A349842.P16425144627027386768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119610 (n + 1) : ℚ) / 2⌉

end

end A349842.P16425144627027386768

namespace A349842

/-- `ceil(A119610(n+1)/2)` -/
def P16425144627027386768.Spec : Prop :=
  ∀ n, P16425144627027386768.a n = A349842 n

end A349842

/-! ## A349842.P12121226038110622957

`Δ[Δ[A178459(n+3)]]`
-/

namespace A349842.P12121226038110622957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178459 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349842.P12121226038110622957

namespace A349842

/-- `Δ[Δ[A178459(n+3)]]` -/
def P12121226038110622957.Spec : Prop :=
  ∀ n, P12121226038110622957.a n = A349842 n

end A349842

/-! ## A349842.P2367109918626183793

`round(2^(n+4)/31)`
-/

namespace A349842.P2367109918626183793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ (n + 4) : ℚ) / 31)

end

end A349842.P2367109918626183793

namespace A349842

/-- `round(2^(n+4)/31)` -/
def P2367109918626183793.Spec : Prop :=
  ∀ n, P2367109918626183793.a n = A349842 n

end A349842

/-! ## A349842.P12339707841801801940

`ceil(lcm(8, ∑[2^n])/31)`
-/

namespace A349842.P12339707841801801940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 8 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 31⌉

end

end A349842.P12339707841801801940

namespace A349842

/-- `ceil(lcm(8, ∑[2^n])/31)` -/
def P12339707841801801940.Spec : Prop :=
  ∀ n, P12339707841801801940.a n = A349842 n

end A349842

/-! ## A349842.P6549534863823485454

`ceil(or(8, 16*(2^n-1))/31)`
-/

namespace A349842.P6549534863823485454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 8 (16 * ((2 ^ n : ℤ) - 1)) : ℚ) / 31⌉

end

end A349842.P6549534863823485454

namespace A349842

/-- `ceil(or(8, 16*(2^n-1))/31)` -/
def P6549534863823485454.Spec : Prop :=
  ∀ n, P6549534863823485454.a n = A349842 n

end A349842

/-! ## A349842.P8874295840945083926

`ceil(xor(8, 16*(2^n-1))/31)`
-/

namespace A349842.P8874295840945083926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 8 (16 * ((2 ^ n : ℤ) - 1)) : ℚ) / 31⌉

end

end A349842.P8874295840945083926

namespace A349842

/-- `ceil(xor(8, 16*(2^n-1))/31)` -/
def P8874295840945083926.Spec : Prop :=
  ∀ n, P8874295840945083926.a n = A349842 n

end A349842

/-! ## A349842.P17471682692389296542

`ceil(∑[2^(n+3)]/(floor(acot(n))+31))`
-/

namespace A349842.P17471682692389296542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 31 : ℚ)⌉

end

end A349842.P17471682692389296542

namespace A349842

/-- `ceil(∑[2^(n+3)]/(floor(acot(n))+31))` -/
def P17471682692389296542.Spec : Prop :=
  ∀ n, P17471682692389296542.a n = A349842 n

end A349842

/-! ## A349842.P8158536802324494388

`A183191(∑[n]+1)`
-/

namespace A349842.P8158536802324494388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183191 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A349842.P8158536802324494388

namespace A349842

/-- `A183191(∑[n]+1)` -/
def P8158536802324494388.Spec : Prop :=
  ∀ n, P8158536802324494388.a n = A349842 n

end A349842

/-!
# A349843: Expansion of (1 - x^2)/((1 - x^10)*(1 - x - x^2)).

The programs for A349843, the canonical program `A349843.P8670188451051877494` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349843 has offset 0).

The definition of A349843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x-x^2-x^10+x^11+x^12))` (program `A349843.P8670188451051877494`, by `A349843.P8670188451051877494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A349843.P8670188451051877494

`ogf((1-x^2)/(1-x-x^2-x^10+x^11+x^12))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349843

/-- `ogf((1-x^2)/(1-x-x^2-x^10+x^11+x^12))` -/
def P8670188451051877494.Spec : Prop :=
  ∀ n, P8670188451051877494.a n = A349843 n

theorem P8670188451051877494.correct : P8670188451051877494.Spec := by
  intro n
  simp only [A349843]

end A349843

/-! ## A349843.P4730356080592086868

`a(n-1)+a(n-3)+a(n-5)+a(n-7)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8, a(7)=13, a(8)=21, a(9)=34`
-/

namespace A349843.P4730356080592086868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 5, 8, 13, 21, 34] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 5) + a (n - 7) + a (n - 9) + a (n - 10)

end

end A349843.P4730356080592086868

namespace A349843

/-- `a(n-1)+a(n-3)+a(n-5)+a(n-7)+a(n-9)+a(n-10)` -/
def P4730356080592086868.Spec : Prop :=
  ∀ n, (P4730356080592086868.a n : ℤ) = A349843 n

end A349843

/-! ## A349843.P1701968309047456071

`ceil(∑[A020695(n)/11])`
-/

namespace A349843.P1701968309047456071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020695 n : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A349843.P1701968309047456071

namespace A349843

/-- `ceil(∑[A020695(n)/11])` -/
def P1701968309047456071.Spec : Prop :=
  ∀ n, P1701968309047456071.a n = A349843 n

end A349843

/-! ## A349843.P10238439339605869215

`ceil(∑[A000045(n+3)/11])`
-/

namespace A349843.P10238439339605869215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A349843.P10238439339605869215

namespace A349843

/-- `ceil(∑[A000045(n+3)/11])` -/
def P10238439339605869215.Spec : Prop :=
  ∀ n, P10238439339605869215.a n = A349843 n

end A349843

/-! ## A349843.P7115820085465493906

`round(A020717(n)/11)`
-/

namespace A349843.P7115820085465493906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020717 n : ℚ) / 11)

end

end A349843.P7115820085465493906

namespace A349843

/-- `round(A020717(n)/11)` -/
def P7115820085465493906.Spec : Prop :=
  ∀ n, P7115820085465493906.a n = A349843 n

end A349843

/-! ## A349843.P5350058032085191807

`round(A020743(n)/11)`
-/

namespace A349843.P5350058032085191807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020743 n : ℚ) / 11)

end

end A349843.P5350058032085191807

namespace A349843

/-- `round(A020743(n)/11)` -/
def P5350058032085191807.Spec : Prop :=
  ∀ n, P5350058032085191807.a n = A349843 n

end A349843

/-! ## A349843.P17519949690509975607

`ceil((A000045(n+5)-3)/11)`
-/

namespace A349843.P17519949690509975607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 (n + 5) - 3 : ℚ) / 11⌉

end

end A349843.P17519949690509975607

namespace A349843

/-- `ceil((A000045(n+5)-3)/11)` -/
def P17519949690509975607.Spec : Prop :=
  ∀ n, P17519949690509975607.a n = A349843 n

end A349843

/-!
# A349846: Expansion of -(1 - 8*x) / sqrt(1 - 4*x).

The programs for A349846, the canonical program `A349846.P16777742225792125481` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349846 has offset 0).

The definition of A349846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349846.P16777742225792125481

`-(Δ[n²]*A002420(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A349846

/-- `-(Δ[n²]*A002420(n))` -/
def P16777742225792125481.Spec : Prop :=
  ∀ n, P16777742225792125481.a n = A349846 n

theorem P16777742225792125481.correct : P16777742225792125481.Spec := by
  intro n
  simp only [A349846]

end A349846

/-! ## A349846.P1826809651304821386

`-(A002420(n)*A005408(n))`
-/

namespace A349846.P1826809651304821386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002420 n * A005408 n)

end

end A349846.P1826809651304821386

namespace A349846

/-- `-(A002420(n)*A005408(n))` -/
def P1826809651304821386.Spec : Prop :=
  ∀ n, P1826809651304821386.a n = A349846 n

end A349846

/-! ## A349846.P8778137054927333465

`A165747(n+1)*A002420(n)`
-/

namespace A349846.P8778137054927333465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 (n + 1) * A002420 n

end

end A349846.P8778137054927333465

namespace A349846

/-- `A165747(n+1)*A002420(n)` -/
def P8778137054927333465.Spec : Prop :=
  ∀ n, P8778137054927333465.a n = A349846 n

end A349846

/-! ## A349846.P9134660774307532797

`A000984(n)-2*A002420(n)`
-/

namespace A349846.P9134660774307532797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - 2 * A002420 n

end

end A349846.P9134660774307532797

namespace A349846

/-- `A000984(n)-2*A002420(n)` -/
def P9134660774307532797.Spec : Prop :=
  ∀ n, P9134660774307532797.a n = A349846 n

end A349846

/-! ## A349846.P5539204510784868707

`(A165747(n)-2)*A002420(n)`
-/

namespace A349846.P5539204510784868707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A165747 n - 2) * A002420 n

end

end A349846.P5539204510784868707

namespace A349846

/-- `(A165747(n)-2)*A002420(n)` -/
def P5539204510784868707.Spec : Prop :=
  ∀ n, P5539204510784868707.a n = A349846 n

end A349846

/-! ## A349846.P16822040717768849033

`A060747(n+1)/A060747(n)*A000984(n)`
-/

namespace A349846.P16822040717768849033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060747 (n + 1) : ℚ) / (A060747 n : ℚ) * (A000984 n : ℚ)

end

end A349846.P16822040717768849033

namespace A349846

/-- `A060747(n+1)/A060747(n)*A000984(n)` -/
def P16822040717768849033.Spec : Prop :=
  ∀ n, P16822040717768849033.a n = (A349846 n : ℚ)

end A349846

/-! ## A349846.P16095360483094295863

`A000217(n+1)/A060747(n)*A000108(n+1)`
-/

namespace A349846.P16095360483094295863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A060747 n : ℚ) * (A000108 (n + 1) : ℚ)

end

end A349846.P16095360483094295863

namespace A349846

/-- `A000217(n+1)/A060747(n)*A000108(n+1)` -/
def P16095360483094295863.Spec : Prop :=
  ∀ n, P16095360483094295863.a n = (A349846 n : ℚ)

end A349846

/-! ## A349846.P12385969993015027790

`A349847(n)-A028329(n)`
-/

namespace A349846.P12385969993015027790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349847 n - A028329 n

end

end A349846.P12385969993015027790

namespace A349846

/-- `A349847(n)-A028329(n)` -/
def P12385969993015027790.Spec : Prop :=
  ∀ n, P12385969993015027790.a n = A349846 n

end A349846

/-! ## A349846.P10028229996456274879

`A349847(n)-2*A000984(n)`
-/

namespace A349846.P10028229996456274879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349847 n - 2 * A000984 n

end

end A349846.P10028229996456274879

namespace A349846

/-- `A349847(n)-2*A000984(n)` -/
def P10028229996456274879.Spec : Prop :=
  ∀ n, P10028229996456274879.a n = A349846 n

end A349846

/-! ## A349846.P13751810399529113280

`A000984(n+1)/A002420(n+1)*A002420(n)`
-/

namespace A349846.P13751810399529113280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / (A002420 (n + 1) : ℚ) * (A002420 n : ℚ)

end

end A349846.P13751810399529113280

namespace A349846

/-- `A000984(n+1)/A002420(n+1)*A002420(n)` -/
def P13751810399529113280.Spec : Prop :=
  ∀ n, P13751810399529113280.a n = (A349846 n : ℚ)

end A349846

/-! ## A349846.P15181472037430298301

`A002457(n)/A060747(n)`
-/

namespace A349846.P15181472037430298301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002457 n : ℚ) / (A060747 n : ℚ)

end

end A349846.P15181472037430298301

namespace A349846

/-- `A002457(n)/A060747(n)` -/
def P15181472037430298301.Spec : Prop :=
  ∀ n, P15181472037430298301.a n = (A349846 n : ℚ)

end A349846

/-! ## A349846.P9598619605323430195

`A002457(n)/(A005843(n)-1)`
-/

namespace A349846.P9598619605323430195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002457 n : ℚ) / (A005843 n - 1 : ℚ)

end

end A349846.P9598619605323430195

namespace A349846

/-- `A002457(n)/(A005843(n)-1)` -/
def P9598619605323430195.Spec : Prop :=
  ∀ n, P9598619605323430195.a n = (A349846 n : ℚ)

end A349846

/-! ## A349846.P4090875323371040142

`record[A056040(n)/(n-A020639(n+1))]`
-/

namespace A349846.P4090875323371040142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / ((n : ℤ) - A020639 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349846.P4090875323371040142

namespace A349846

/-- `record[A056040(n)/(n-A020639(n+1))]` -/
def P4090875323371040142.Spec : Prop :=
  ∀ n, P4090875323371040142.a n = (A349846 n : ℚ)

end A349846

/-! ## A349846.P14750297510078945894

`C(2*n, n)*ratio[1-2*n]`
-/

namespace A349846.P14750297510078945894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A349846.P14750297510078945894

namespace A349846

/-- `C(2*n, n)*ratio[1-2*n]` -/
def P14750297510078945894.Spec : Prop :=
  ∀ n, P14750297510078945894.a n = (A349846 n : ℚ)

end A349846

/-! ## A349846.P10726655986971863349

`C(2*n, n)/(1-2/(2*n+1))`
-/

namespace A349846.P10726655986971863349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (1 - 2 / (2 * n + 1 : ℚ))

end

end A349846.P10726655986971863349

namespace A349846

/-- `C(2*n, n)/(1-2/(2*n+1))` -/
def P10726655986971863349.Spec : Prop :=
  ∀ n, P10726655986971863349.a n = (A349846 n : ℚ)

end A349846

/-!
# A349847: Expansion of (1 + 8*x) / sqrt(1 - 4*x).

The programs for A349847, the canonical program `A349847.P4438692081841496329` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349847 has offset 0).

The definition of A349847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349847.P409769565702862995

`(1-6*n)*A002420(n)`
-/

namespace A349847.P409769565702862995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (6 * n : ℤ)) * A002420 n

end

end A349847.P409769565702862995

namespace A349847

/-- `(1-6*n)*A002420(n)` -/
def P409769565702862995.Spec : Prop :=
  ∀ n, P409769565702862995.a n = A349847 n

end A349847

/-! ## A349847.P12526765366301671941

`abs(A104624(2*n))*abs(1-6*n)`
-/

namespace A349847.P12526765366301671941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104624 (2 * n)| * |1 - (6 * n : ℤ)|

end

end A349847.P12526765366301671941

namespace A349847

/-- `abs(A104624(2*n))*abs(1-6*n)` -/
def P12526765366301671941.Spec : Prop :=
  ∀ n, P12526765366301671941.a n = A349847 n

end A349847

/-! ## A349847.P11926674757118157055

`A349846(n)+record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=2`
-/

namespace A349847.P11926674757118157055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349846 n : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349847.P11926674757118157055

namespace A349847

/-- `A349846(n)+record[a(n-1)/(floor(n/2)/n-1)]` -/
def P11926674757118157055.Spec : Prop :=
  ∀ n, P11926674757118157055.a n = (A349847 n : ℚ)

end A349847

/-! ## A349847.P4104597491602777611

`A349846(n)+A028329(n)`
-/

namespace A349847.P4104597491602777611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349846 n + A028329 n

end

end A349847.P4104597491602777611

namespace A349847

/-- `A349846(n)+A028329(n)` -/
def P4104597491602777611.Spec : Prop :=
  ∀ n, P4104597491602777611.a n = A349847 n

end A349847

/-! ## A349847.P1187859641528268837

`A349846(n)+2*A000984(n)`
-/

namespace A349847.P1187859641528268837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349846 n + 2 * A000984 n

end

end A349847.P1187859641528268837

namespace A349847

/-- `A349846(n)+2*A000984(n)` -/
def P1187859641528268837.Spec : Prop :=
  ∀ n, P1187859641528268837.a n = A349847 n

end A349847

/-! ## A349847.P4438692081841496329

`2*A349835(n)-A000984(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A349847

/-- `2*A349835(n)-A000984(n)` -/
def P4438692081841496329.Spec : Prop :=
  ∀ n, P4438692081841496329.a n = A349847 n

theorem P4438692081841496329.correct : P4438692081841496329.Spec := by
  intro n
  simp only [A349847]

end A349847

/-! ## A349847.P5469421480504060052

`record[a(n-1)/(floor(n/2)/n-1)]+A002457(n)/(2*n-1)` with `a(0)=2`
-/

namespace A349847.P5469421480504060052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A002457 n : ℚ) / ((2 * n : ℤ) - 1 : ℚ)

end

end A349847.P5469421480504060052

namespace A349847

/-- `record[a(n-1)/(floor(n/2)/n-1)]+A002457(n)/(2*n-1)` -/
def P5469421480504060052.Spec : Prop :=
  ∀ n, P5469421480504060052.a n = (A349847 n : ℚ)

end A349847

/-!
# A349848: a(n) = Sum_{k=1..n} prime(n)^prime(k).

The programs for A349848, there is no canonical definition to state claims against.
-/

/-! ## A349848.P9123606576743234648

`∑{p}[A046853(n+1), A002385(n+1)^#]`
-/

namespace A349848.P9123606576743234648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002385 (n + 1) ^ p

end

end A349848.P9123606576743234648

/-!
# A349849: Number of transitive relations on an n-set with exactly four ordered pairs.

The programs for A349849, there is no canonical definition to state claims against.
-/

/-! ## A349849.P6311727791268894829

`A394722(n)-A393295(n)`
-/

namespace A349849.P6311727791268894829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394722 n - A393295 n

end

end A349849.P6311727791268894829

/-! ## A349849.P10530637823736584638

`A394722(n)-(A393238(n)+A349927(n))`
-/

namespace A349849.P10530637823736584638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394722 n - (A393238 n + A349927 n)

end

end A349849.P10530637823736584638

/-!
# A349852: Expansion of Sum_{k>=0} k * x^k/(1 + k * x).

The programs for A349852, there is no canonical definition to state claims against.
-/

/-! ## A349852.P12487531322066029540

`∑[-Δ[A038125(n)]]`
-/

namespace A349852.P12487531322066029540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038125 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349852.P12487531322066029540

/-! ## A349852.P13234312180066242103

`1-A038125(n+1)`
-/

namespace A349852.P13234312180066242103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038125 (n + 1)

end

end A349852.P13234312180066242103

/-! ## A349852.P11514976339878654606

`A026898(n)-A062811(n+1)`
-/

namespace A349852.P11514976339878654606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n - A062811 (n + 1)

end

end A349852.P11514976339878654606

/-! ## A349852.P12102726289090455513

`A003101(n)+1-A062811(n+1)`
-/

namespace A349852.P12102726289090455513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n + (1 - A062811 (n + 1))

end

end A349852.P12102726289090455513

/-! ## A349852.P4318755071995406797

`A101494(∑[n+1])-A062811(n+1)`
-/

namespace A349852.P4318755071995406797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f1 j) - A062811 (n + 1)

end

end A349852.P4318755071995406797

/-!
# A349853: Expansion of Sum_{k>=0} k^2 * x^k/(1 + k * x).

The programs for A349853, there is no canonical definition to state claims against.
-/

/-! ## A349853.P14189935800712945173

`A038125(n+2)+n`
-/

namespace A349853.P14189935800712945173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038125 (n + 2) + (n : ℤ)

end

end A349853.P14189935800712945173

/-! ## A349853.P11511920099370049955

`∑[1-Δ[A349852(n)]]`
-/

namespace A349853.P11511920099370049955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349853.P11511920099370049955

/-! ## A349853.P6005983198548132053

`1-A349852(n+1)+n`
-/

namespace A349853.P6005983198548132053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A349852 (n + 1) + (n : ℤ)

end

end A349853.P6005983198548132053

/-! ## A349853.P1449916377333711631

`A008619(2*n)-A349852(A008619(2*n))`
-/

namespace A349853.P1449916377333711631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A349852 (A008619 (2 * n)).toNat

end

end A349853.P1449916377333711631

/-! ## A349853.P6980818393780444577

`A062811(n+2)-A003101(n+1)+n`
-/

namespace A349853.P6980818393780444577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062811 (n + 2) - A003101 (n + 1) + (n : ℤ)

end

end A349853.P6980818393780444577

/-!
# A349854: Expansion of Sum_{k>=0} k^3 * x^k/(1 + k * x).

The programs for A349854, there is no canonical definition to state claims against.
-/

/-! ## A349854.P15698152420823166923

`(n+1)²-A349853(n+1)`
-/

namespace A349854.P15698152420823166923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A349853 (n + 1)

end

end A349854.P15698152420823166923

/-! ## A349854.P7211889897159466950

`∑[2*n]-A038125(n+3)`
-/

namespace A349854.P7211889897159466950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A038125 (n + 3)

end

end A349854.P7211889897159466950

/-! ## A349854.P15243832635493515117

`A349852(n+2)-A110331(n)`
-/

namespace A349854.P15243832635493515117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349852 (n + 2) - A110331 n

end

end A349854.P15243832635493515117

/-!
# A349855: Expansion of Sum_{k>=0} k^4 * x^k/(1 + k * x).

The programs for A349855, there is no canonical definition to state claims against.
-/

/-! ## A349855.P12503370139918076288

`(n+1)^3-A349854(n+1)`
-/

namespace A349855.P12503370139918076288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A349854 (n + 1)

end

end A349855.P12503370139918076288

/-! ## A349855.P16554065754240224285

`A349878(n+1)-(A349879(n)+A349854(n+1))`
-/

namespace A349855.P16554065754240224285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349878 (n + 1) - (A349879 n + A349854 (n + 1))

end

end A349855.P16554065754240224285

/-!
# A349856: Expansion of Sum_{k>=0} x^k/(1 + k^2 * x).

The programs for A349856, there is no canonical definition to state claims against.
-/

/-! ## A349856.P8296513327826506529

`1-A349863((2*n)%(n+1))`
-/

namespace A349856.P8296513327826506529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A349863 (2 * n % (n + 1))

end

end A349856.P8296513327826506529

/-! ## A349856.P6115154361161044683

`1-A349863(floor(n/(acot(n)+1)))`
-/

namespace A349856.P6115154361161044683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A349863 ⌊(n : ℝ) / (SequenceMachineLib.acot (n : ℝ) + 1)⌋.toNat

end

end A349856.P6115154361161044683

/-!
# A349858: Expansion of Sum_{k>=0} x^k/(1 + k^4 * x).

The programs for A349858, there is no canonical definition to state claims against.
-/

/-! ## A349858.P2386177278279038480

`A174294(n*(n-1)*(n+1)*(n²+1))%((n²+1)²+1)`
-/

namespace A349858.P2386177278279038480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174294 ((n : ℤ) * (((n : ℤ) - 1) * ((n + 1) * (n ^ 2 + 1) : ℤ))).toNat) ((n ^ 2 + 1) ^ 2 + 1 : ℤ)

end

end A349858.P2386177278279038480

/-!
# A349861: Expansion of Sum_{k>=0} k * x^k/(1 + k^4 * x).

The programs for A349861, there is no canonical definition to state claims against.
-/

/-! ## A349861.P3356170119994419982

`A118054(A125260(n+2))`
-/

namespace A349861.P3356170119994419982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118054 (A125260 (n + 2)).toNat

end

end A349861.P3356170119994419982

/-!
# A349862: a(n) is the maximum value of binomial(n-2*k,k) with 0 <= k <= floor(n/3).

The programs for A349862, there is no canonical definition to state claims against.
-/

/-! ## A349862.P12134247955890622139

`C(A286717(n), Δ[A130520(n)])`
-/

namespace A349862.P12134247955890622139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286717 n).toNat (f1 (n + 1) - f1 n).toNat

end

end A349862.P12134247955890622139

/-! ## A349862.P9284883173531557496

`A011973(eq[1, A108756(2*n)])`
-/

namespace A349862.P9284883173531557496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108756 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349862.P9284883173531557496

/-! ## A349862.P13875617527220891467

`C(A286717(n), A002266(n+1))`
-/

namespace A349862.P13875617527220891467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286717 n).toNat (A002266 (n + 1)).toNat

end

end A349862.P13875617527220891467

/-! ## A349862.P10184958282535367365

`C(A194509(3*n+2), Δ[A130520(n)])`
-/

namespace A349862.P10184958282535367365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A194509 (3 * n + 2)).toNat (f1 (n + 1) - f1 n).toNat

end

end A349862.P10184958282535367365

/-! ## A349862.P9903453379068657092

`A264857(A381070(n+2))`
-/

namespace A349862.P9903453379068657092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264857 (A381070 (n + 2)).toNat

end

end A349862.P9903453379068657092

/-!
# A349863: Expansion of Sum_{k>=0} k^2 * x^k/(1 + k^2 * x).

The programs for A349863, there is no canonical definition to state claims against.
-/

/-! ## A349863.P8060424355870094333

`∑[-Δ[A349856(n)]]`
-/

namespace A349863.P8060424355870094333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349856 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349863.P8060424355870094333

/-! ## A349863.P16083089970829463120

`1-A349856(n+1)`
-/

namespace A349863.P16083089970829463120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A349856 (n + 1)

end

end A349863.P16083089970829463120

/-!
# A349864: Smallest k such that A349278(k) = n, or 0 if no such k exists.

The programs for A349864, there is no canonical definition to state claims against.
-/

/-! ## A349864.P2871715032140234448

`record[A175400(n+1)]`
-/

namespace A349864.P2871715032140234448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349864.P2871715032140234448

/-! ## A349864.P7550144291073530364

`A322260(comp[10*n])`
-/

namespace A349864.P7550144291073530364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A349864.P7550144291073530364

/-! ## A349864.P10626906099276121396

`A322260(lt[0, ∏{digits}[n, #]])%78`
-/

namespace A349864.P10626906099276121396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) 78

end

end A349864.P10626906099276121396

/-! ## A349864.P3167509442787506466

`A110548(2*n+3)-(n+2)`
-/

namespace A349864.P3167509442787506466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110548 (2 * n + 3) - (n + 2 : ℤ)

end

end A349864.P3167509442787506466

/-! ## A349864.P1659949235602753514

`∏{e}[A061128(n+1)+2^∑{digits}[n, #], #+1]`
-/

namespace A349864.P1659949235602753514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061128 (n + 1) + (2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A349864.P1659949235602753514

/-!
# A349865: Composite numbers that are missing from A349278.

The programs for A349865, there is no canonical definition to state claims against.
-/

/-! ## A349865.P8529192858187664929

`∪[A349733(n+1), A350061(n+1)]`
-/

namespace A349865.P8529192858187664929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349865.P8529192858187664929

/-! ## A349865.P11768508123086320502

`∩[A002808(n+1), comp[A349278(n+1)]]`
-/

namespace A349865.P11768508123086320502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349278 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A349865.P11768508123086320502

/-! ## A349865.P3655657370902798127

`eq[A010051(n+1), A349864(n+1)]+1`
-/

namespace A349865.P3655657370902798127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349865.P3655657370902798127

/-! ## A349865.P14762379383070408164

`eq[A049084(n+1), A349864(n+1)]+1`
-/

namespace A349865.P14762379383070408164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349865.P14762379383070408164

/-! ## A349865.P12634278906513090070

`A020725(eq[A010051(n+1), A349864(n+1)])`
-/

namespace A349865.P12634278906513090070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A349865.P12634278906513090070

/-!
# A349866: Fixed points of A318996.

The programs for A349866, there is no canonical definition to state claims against.
-/

/-! ## A349866.P11284176258876704309

`A341045(A333001(n+1)+A005940(n+1))`
-/

namespace A349866.P11284176258876704309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341045 (A333001 (n + 1) + A005940 (n + 1)).toNat

end

end A349866.P11284176258876704309

/-!
# A349867: Generalized multiplicative Euler phi function of order 2 (see El Hindi et al. link).

The programs for A349867, there is no canonical definition to state claims against.
-/

/-! ## A349867.P2150850635530961625

`A206941(A120230(n+1))`
-/

namespace A349867.P2150850635530961625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206941 (A120230 (n + 1)).toNat

end

end A349867.P2150850635530961625

/-! ## A349867.P8508954196967161841

`A206941(n+1)^A069283(A003064(n))`
-/

namespace A349867.P8508954196967161841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206941 (n + 1) : ℚ) ^ (A069283 (A003064 n).toNat : ℤ)

end

end A349867.P8508954196967161841

/-! ## A349867.P16288501541451193189

`A327790(A246337(n+1))`
-/

namespace A349867.P16288501541451193189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327790 (A246337 (n + 1)).toNat

end

end A349867.P16288501541451193189

/-!
# A349868: Nobly abundant numbers (A349758) that are not abundant numbers (A005101).

The programs for A349868, there is no canonical definition to state claims against.
-/

/-! ## A349868.P4075929034262008242

`∩[A087244(n+1), A349758(n+1)]`
-/

namespace A349868.P4075929034262008242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349868.P4075929034262008242

/-! ## A349868.P18127067158532939754

`A097217(ceil(log2(A097222(2*n+3))))`
-/

namespace A349868.P18127067158532939754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097217 ⌈Real.logb 2 (A097222 (2 * n + 3) : ℝ)⌉.toNat

end

end A349868.P18127067158532939754

/-!
# A349869: Nobly deficient numbers (A349759) that are not deficient numbers (A005100).

The programs for A349869, there is no canonical definition to state claims against.
-/

/-! ## A349869.P16778760721205370065

`filter[A349759(n+1), A294936(#)]`
-/

namespace A349869.P16778760721205370065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A349869.P16778760721205370065

/-! ## A349869.P5051719478417629039

`∩[A326133(n+1), A349759(n+1)]`
-/

namespace A349869.P5051719478417629039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349869.P5051719478417629039

/-! ## A349869.P14769063473454558331

`∩[A087245(n+1), A349759(n+1)]`
-/

namespace A349869.P14769063473454558331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349869.P14769063473454558331

/-! ## A349869.P11241724220163048621

`∩[A005101(n+1), A349759(n+1)]`
-/

namespace A349869.P11241724220163048621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349869.P11241724220163048621

/-! ## A349869.P3922175985816400976

`∩[A005835(n+1), A349759(n+1)]`
-/

namespace A349869.P3922175985816400976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349869.P3922175985816400976

/-! ## A349869.P2016031531594318886

`∩[A023196(n+1), A349759(n+1)]`
-/

namespace A349869.P2016031531594318886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349869.P2016031531594318886

/-! ## A349869.P18041200377542395008

`∩[A177052(n+1), A349759(n+1)]`
-/

namespace A349869.P18041200377542395008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349869.P18041200377542395008

/-!
# A349870: Numbers k such that k and k+1 are both nobly abundant numbers (A349758).

The programs for A349870, there is no canonical definition to state claims against.
-/

/-! ## A349870.P11600075043284438421

`∩[A349758(n+1)-1, A349758(n+1)]`
-/

namespace A349870.P11600075043284438421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349758 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349870.P11600075043284438421

/-!
# A349874: Expansion of A(x)^3, where A(x) is g.f. of n^n (A000312).

The programs for A349874, there is no canonical definition to state claims against.
-/

/-! ## A349874.P16643953738389015428

`A285469(A091695(n)+n*(n+3)/2)`
-/

namespace A349874.P16643953738389015428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285469 (SequenceMachineLib.roundAway ((A091695 n : ℚ) + (n : ℚ) * ((n + 3 : ℚ) / 2))).toNat

end

end A349874.P16643953738389015428

/-!
# A349877: a(n) is the number of times the map x -> A353314(x) needs to be applied to n to reach a multiple of 3, or -1 if the trajectory never reaches a multiple of 3.

The programs for A349877, there is no canonical definition to state claims against.
-/

/-! ## A349877.P1271494336886761522

`A365367(n+3)-1`
-/

namespace A349877.P1271494336886761522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365367 (n + 3) - 1

end

end A349877.P1271494336886761522

/-! ## A349877.P16762979304737586705

`A023443(A365367(n+3))`
-/

namespace A349877.P16762979304737586705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A365367 (n + 3)).toNat

end

end A349877.P16762979304737586705

/-! ## A349877.P4847156878910586466

`A273888(A365367(n+3)+A355741(2*(n+2)))`
-/

namespace A349877.P4847156878910586466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273888 (A365367 (n + 3) + A355741 (2 * (n + 2))).toNat

end

end A349877.P4847156878910586466

/-! ## A349877.P4604739263443621938

`A273888(A365367(n+3)+A065205(2*n+5))`
-/

namespace A349877.P4604739263443621938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273888 (A365367 (n + 3) + A065205 (2 * n + 5)).toNat

end

end A349877.P4604739263443621938

/-!
# A349878: Expansion of Sum_{k>=0} k^3 * x^k/(1 - k * x).

The programs for A349878, there is no canonical definition to state claims against.
-/

/-! ## A349878.P1217269624882591578

`A062809(n+2)-(n+1)²`
-/

namespace A349878.P1217269624882591578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062809 (n + 2) - ((n + 1) ^ 2 : ℤ)

end

end A349878.P1217269624882591578

/-! ## A349878.P10052550650398358473

`A026898(n+2)-(n+2)²+n`
-/

namespace A349878.P10052550650398358473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (n + 2) - ((n + 2) ^ 2 : ℤ) + (n : ℤ)

end

end A349878.P10052550650398358473

/-! ## A349878.P13824283574509681903

`∑[A047970(n+1)]-A002378(n+1)`
-/

namespace A349878.P13824283574509681903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002378 (n + 1)

end

end A349878.P13824283574509681903

/-! ## A349878.P2596290622012623645

`A110331(n+1)+A026898(n+2)-3`
-/

namespace A349878.P2596290622012623645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110331 (n + 1) + (A026898 (n + 2) - 3)

end

end A349878.P2596290622012623645

/-! ## A349878.P12777132807467298827

`A026898(n+2)-A005843(A000124(n+1))`
-/

namespace A349878.P12777132807467298827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (n + 2) - A005843 (A000124 (n + 1)).toNat

end

end A349878.P12777132807467298827

/-! ## A349878.P1254879005851153727

`A003101(n+2)-(A000217(n+2)+A000217(n))`
-/

namespace A349878.P1254879005851153727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 (n + 2) - (A000217 (n + 2) + A000217 n)

end

end A349878.P1254879005851153727

/-!
# A349879: Expansion of Sum_{k>=0} k^4 * x^k/(1 - k * x).

The programs for A349879, there is no canonical definition to state claims against.
-/

/-! ## A349879.P13423366742431154295

`A349878(n+1)-(n+1)^3`
-/

namespace A349879.P13423366742431154295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349878 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A349879.P13423366742431154295

/-!
# A349880: Expansion of Sum_{k>=0} x^k/(1 - k^3 * x).

The programs for A349880, there is no canonical definition to state claims against.
-/

/-! ## A349880.P14989768332470362587

`A352945(3*n)`
-/

namespace A349880.P14989768332470362587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352945 (3 * n)

end

end A349880.P14989768332470362587

/-! ## A349880.P14241904212618333228

`A352945(A008486(n))+A000007(n)`
-/

namespace A349880.P14241904212618333228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352945 (A008486 n).toNat + A000007 n

end

end A349880.P14241904212618333228

/-! ## A349880.P6412273167617439164

`or(A000007(n), A352945(A008585(n)))`
-/

namespace A349880.P6412273167617439164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A352945 (A008585 n).toNat)

end

end A349880.P6412273167617439164

/-! ## A349880.P13490897371114314179

`A352945(A151722(n)+A008486(n))+A151722(n)`
-/

namespace A349880.P13490897371114314179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352945 (A151722 n + A008486 n).toNat + A151722 n

end

end A349880.P13490897371114314179

/-!
# A349881: Expansion of Sum_{k>=0} x^k/(1 - k^4 * x).

The programs for A349881, there is no canonical definition to state claims against.
-/

/-! ## A349881.P6789994847337983587

`A352985(2*n)`
-/

namespace A349881.P6789994847337983587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352985 (2 * n)

end

end A349881.P6789994847337983587

/-! ## A349881.P4406309709388066763

`A352985(A004277(n))+A000007(n)`
-/

namespace A349881.P4406309709388066763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352985 (A004277 n).toNat + A000007 n

end

end A349881.P4406309709388066763

/-! ## A349881.P17619231834638175452

`or(A000007(n), A352985(A005843(n)))`
-/

namespace A349881.P17619231834638175452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A352985 (A005843 n).toNat)

end

end A349881.P17619231834638175452

/-! ## A349881.P17709666114881346404

`or(A003982(n), A352985(A005843(n)))`
-/

namespace A349881.P17709666114881346404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A352985 (A005843 n).toNat)

end

end A349881.P17709666114881346404

/-!
# A349882: Expansion of Sum_{k>=0} k^2 * x^k/(1 - k^2 * x).

The programs for A349882, there is no canonical definition to state claims against.
-/

/-! ## A349882.P9133966087102612522

`A234568(n+1)-1`
-/

namespace A349882.P9133966087102612522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234568 (n + 1) - 1

end

end A349882.P9133966087102612522

/-! ## A349882.P4327399010303703464

`∑[abs(Δ[A234568(n)])]`
-/

namespace A349882.P4327399010303703464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234568 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349882.P4327399010303703464

/-! ## A349882.P6737503648749593259

`A104872(2*(n+1))-1`
-/

namespace A349882.P6737503648749593259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 (2 * (n + 1)) - 1

end

end A349882.P6737503648749593259

/-! ## A349882.P18212796005101816354

`record[Δ[A234568(A057979(n))]]`
-/

namespace A349882.P18212796005101816354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234568 (A057979 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349882.P18212796005101816354

/-! ## A349882.P16116767978168357120

`record[Δ[A234568(A142150(n))]]`
-/

namespace A349882.P16116767978168357120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234568 (A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349882.P16116767978168357120

/-!
# A349883: Expansion of Sum_{k>=0} (k * x)^k/(1 - k^3 * x).

The programs for A349883, there is no canonical definition to state claims against.
-/

/-! ## A349883.P4375780400638602464

`A054353(A143640(n))`
-/

namespace A349883.P4375780400638602464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A143640 n).toNat

end

end A349883.P4375780400638602464

/-!
# A349884: Expansion of Sum_{k>=0} (k * x)^k/(1 + k^2 * x).

The programs for A349884, there is no canonical definition to state claims against.
-/

/-! ## A349884.P15419410179805440910

`A172266(A006125(n))+n!`
-/

namespace A349884.P15419410179805440910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172266 (A006125 n).toNat + (Nat.factorial n : ℤ)

end

end A349884.P15419410179805440910

/-! ## A349884.P3065665421965113744

`A028391(A079804(n+1)-n)`
-/

namespace A349884.P3065665421965113744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A079804 (n + 1) - (n : ℤ)).toNat

end

end A349884.P3065665421965113744

/-!
# A349885: Expansion of Sum_{k>=0} (k * x)^k/(1 + k^3 * x).

The programs for A349885, there is no canonical definition to state claims against.
-/

/-! ## A349885.P7038501412397528314

`2*∑{d}[n+1, #%2]-A319752(∑[floor((n/2)²)])`
-/

namespace A349885.P7038501412397528314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ d ∈ Nat.divisors (f1 n), d % 2) : ℕ) : ℤ) - A319752 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A349885.P7038501412397528314

/-!
# A349890: Triangle read by rows: T(n,k) = n * 2^e(n) - (4^e(n) - 1) / 3 - k * (k - 1) / 2 with e(n) = 1 + floor(log_2(n)) for n >= 1 and 1 <= k <= n.

The programs for A349890, there is no canonical definition to state claims against.
-/

/-! ## A349890.P967451252904915694

`A181497(A002024(n+1))-A112367(n)`
-/

namespace A349890.P967451252904915694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181497 (A002024 (n + 1)).toNat - A112367 n

end

end A349890.P967451252904915694

/-!
# A349893: a(n) = Sum_{k=0..n} k^(k*(n-k)).

The programs for A349893, there is no canonical definition to state claims against.
-/

/-! ## A349893.P11216718946901948612

`∑[A257802(A001187(n))]`
-/

namespace A349893.P11216718946901948612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257802 (A001187 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349893.P11216718946901948612

/-!
# A349894: a(n) = Sum_{k=0..n} (-1)^(n-k) * k^(k*(n-k)).

The programs for A349894, there is no canonical definition to state claims against.
-/

/-! ## A349894.P18032079309058026355

`A080891(n+4)*A330624(A000045(n))`
-/

namespace A349894.P18032079309058026355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (n + 4) * A330624 (A000045 n).toNat

end

end A349894.P18032079309058026355

/-!
# A349895: Length of the longest self avoiding walk through a grid such that either x or y is changed by +1 or -1 in each step, and with 0 <= y, 0 <= x <= y, x + y <= n starting at (0,0) and terminating at (x,y) = (n,0).

The programs for A349895, the canonical program `A349895.P2845120770672316916` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349895 has offset 0).

The definition of A349895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349895.P2845120770672316916

`A087811(n+1)-or(A000035(n), A106466(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349895

/-- `A087811(n+1)-or(A000035(n), A106466(n))` -/
def P2845120770672316916.Spec : Prop :=
  ∀ n, P2845120770672316916.a n = A349895 n

theorem P2845120770672316916.correct : P2845120770672316916.Spec := by
  intro n
  simp only [A349895]

end A349895

/-! ## A349895.P18287740099368575228

`A004525(A213037(n)+∑[(n+1)*(n^3)%4]%(n+1))`
-/

namespace A349895.P18287740099368575228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n ^ 3 % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213037 n + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)).toNat

end

end A349895.P18287740099368575228

namespace A349895

/-- `A004525(A213037(n)+∑[(n+1)*(n^3)%4]%(n+1))` -/
def P18287740099368575228.Spec : Prop :=
  ∀ n, P18287740099368575228.a n = A349895 n

end A349895

/-! ## A349895.P12542611644898004613

`A004525(A000096(n)-A166514(n))`
-/

namespace A349895.P12542611644898004613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000096 n - A166514 n).toNat

end

end A349895.P12542611644898004613

namespace A349895

/-- `A004525(A000096(n)-A166514(n))` -/
def P12542611644898004613.Spec : Prop :=
  ∀ n, P12542611644898004613.a n = A349895 n

end A349895

/-! ## A349895.P13960881612633143131

`A004525(A213037(n)+abs(2*(n-A006368(n))))`
-/

namespace A349895.P13960881612633143131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213037 n + |2 * ((n : ℤ) - A006368 n)|).toNat

end

end A349895.P13960881612633143131

namespace A349895

/-- `A004525(A213037(n)+abs(2*(n-A006368(n))))` -/
def P13960881612633143131.Spec : Prop :=
  ∀ n, P13960881612633143131.a n = A349895 n

end A349895

/-! ## A349895.P18122982472259612984

`A004525(A213037(n)+A059029(n)%A293990(n))`
-/

namespace A349895.P18122982472259612984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213037 n + Int.tmod (A059029 n) (A293990 n)).toNat

end

end A349895.P18122982472259612984

namespace A349895

/-- `A004525(A213037(n)+A059029(n)%A293990(n))` -/
def P18122982472259612984.Spec : Prop :=
  ∀ n, P18122982472259612984.a n = A349895 n

end A349895

/-!
# A349896: Record values in A349876.

The programs for A349896, there is no canonical definition to state claims against.
-/

/-! ## A349896.P12333318447429887597

`record[A349876(n)]`
-/

namespace A349896.P12333318447429887597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349896.P12333318447429887597

/-!
# A349897: Start with b(0)=4. a(n) is the smallest integer such that b(n)=a(n)*b(n-1) has twice as many divisors as b(n-1) has.

The programs for A349897, there is no canonical definition to state claims against.
-/

/-! ## A349897.P4757411964818981489

`∪[A065091(n+1), A240521(n+1)]`
-/

namespace A349897.P4757411964818981489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349897.P4757411964818981489

/-! ## A349897.P8496021944581917895

`∪[A240521(n+1), A351398(n+1)]`
-/

namespace A349897.P8496021944581917895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349897.P8496021944581917895

/-! ## A349897.P13362202231687572370

`∪[A240521(n+1), A000040(n+2)]`
-/

namespace A349897.P13362202231687572370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349897.P13362202231687572370

/-! ## A349897.P11093960713903960624

`∪[A300841(a(n-1)), A065091(n+1)]` with `a(0)=3, a(1)=6`
-/

namespace A349897.P11093960713903960624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n f1 =>
  A300841 (f1 (n - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349897.P11093960713903960624

/-! ## A349897.P17301946413367638620

`∪[A065091(n+1), record[(n+3)*A300840(n+3)]]`
-/

namespace A349897.P17301946413367638620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A300840 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349897.P17301946413367638620

/-!
# A349898: Numbers that appear in A349194.

The programs for A349898, there is no canonical definition to state claims against.
-/

/-! ## A349898.P10244506141125760962

`eq[1, char[A349194(n+1)]]`
-/

namespace A349898.P10244506141125760962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349194 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349898.P10244506141125760962

/-! ## A349898.P8814181665385670811

`lt[A276085(n+1), (n+1)²]+1`
-/

namespace A349898.P8814181665385670811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A349898.P8814181665385670811

/-! ## A349898.P13992711940549889773

`record[gcd(A008621(n), A011778(n+1))]`
-/

namespace A349898.P13992711940549889773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008621 n) (A011778 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349898.P13992711940549889773

/-! ## A349898.P11445387354450799725

`record[gcd(A008616(n), A293221(n+1))]`
-/

namespace A349898.P11445387354450799725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008616 n) (A293221 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349898.P11445387354450799725

/-! ## A349898.P18281547956258726136

`lt[A000007(n), char[A349194(n+1)]]`
-/

namespace A349898.P18281547956258726136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349194 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A349898.P18281547956258726136

/-! ## A349898.P1288896136800452384

`lt[A293543(A006530(∏{p}[n, #])-1), n]`
-/

namespace A349898.P1288896136800452384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 (A006530 (∏ p ∈ Nat.primeFactors (f2 n), p) - 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A349898.P1288896136800452384

/-! ## A349898.P9317509013506003396

`lt[n*A328845(n), A158611(n+1)²]`
-/

namespace A349898.P9317509013506003396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349898.P9317509013506003396

/-! ## A349898.P11324867911954174529

`lt[A122111(n+1), A054403(n+1)]+1`
-/

namespace A349898.P11324867911954174529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A349898.P11324867911954174529

/-! ## A349898.P3420473398959190569

`lt[A276075(n+1), A276038(n+1)]+1`
-/

namespace A349898.P3420473398959190569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A349898.P3420473398959190569

/-! ## A349898.P399736890282029137

`lt[A238589(A006530(n+1)), n+4]+1`
-/

namespace A349898.P399736890282029137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (A006530 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A349898.P399736890282029137

/-!
# A349899: Least number in A349898 divisible by the n-th prime.

The programs for A349899, there is no canonical definition to state claims against.
-/

/-! ## A349899.P16907247545603228291

`A114806(p?[comp[n²]])`
-/

namespace A349899.P16907247545603228291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A349899.P16907247545603228291

/-! ## A349899.P1655533370546106655

`A114806(A390240(n))`
-/

namespace A349899.P1655533370546106655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (A390240 n).toNat

end

end A349899.P1655533370546106655

/-! ## A349899.P9841327859576659384

`A114806(Δ[A007504(n)])`
-/

namespace A349899.P9841327859576659384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (f1 (n + 1) - f1 n).toNat

end

end A349899.P9841327859576659384

/-! ## A349899.P8207291690536722423

`A114806(record[A036262(n)])`
-/

namespace A349899.P8207291690536722423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349899.P8207291690536722423

/-! ## A349899.P6885430006399615020

`A114806(record[A051698(n)])`
-/

namespace A349899.P6885430006399615020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349899.P6885430006399615020

