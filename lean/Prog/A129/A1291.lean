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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B001.C013
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A129100: Triangle T, read by rows, where column n of T = column 0 of T^(2^n) for n>0, such that column 0 (A129092) equals the row sums of the prior row, starting with T(0,0)=1.

The programs for A129100, there is no canonical definition to state claims against.
-/

/-! ## A129100.P9116719765081936586

`A129104(comp[∑[n-1]])`
-/

namespace A129100.P9116719765081936586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129104 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A129100.P9116719765081936586

/-! ## A129100.P9337604164540410621

`A129104(A007401(n+1))%A000051(n)`
-/

namespace A129100.P9337604164540410621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129104 (A007401 (n + 1)).toNat) (A000051 n)

end

end A129100.P9337604164540410621

/-! ## A129100.P18412615133152993954

`A129104(A181133(n+1))%A000051(n)`
-/

namespace A129100.P18412615133152993954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129104 (A181133 (n + 1)).toNat) (A000051 n)

end

end A129100.P18412615133152993954

/-! ## A129100.P6689547175221022060

`gcd(A000038(n), A129104(A007401(n+1)))`
-/

namespace A129100.P6689547175221022060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A129104 (A007401 (n + 1)).toNat)

end

end A129100.P6689547175221022060

/-! ## A129100.P8478733637594176659

`or(A000007(n), A129104(A007401(n+1)))`
-/

namespace A129100.P8478733637594176659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A129104 (A007401 (n + 1)).toNat)

end

end A129100.P8478733637594176659

/-!
# A129101: Column 1 of triangle A129100; also equals column 0 of the matrix square of A129100.

The programs for A129101, there is no canonical definition to state claims against.
-/

/-! ## A129101.P2543166075842387214

`A129100(∑[n+1]+1)`
-/

namespace A129101.P2543166075842387214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A129101.P2543166075842387214

/-! ## A129101.P3374494701650478406

`A129104(∑[n+2]+2)`
-/

namespace A129101.P3374494701650478406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129104 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A129101.P3374494701650478406

/-! ## A129101.P14992738218230982035

`record[A129100(A056536(n+1))]`
-/

namespace A129101.P14992738218230982035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129101.P14992738218230982035

/-! ## A129101.P5624875542492927669

`record[A129104(A254052(n+1))]`
-/

namespace A129101.P5624875542492927669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129104 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129101.P5624875542492927669

/-! ## A129101.P12144456969316473151

`record[A129100(n)/A309914(n)]`
-/

namespace A129101.P12144456969316473151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129100 n : ℚ) / (A309914 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129101.P12144456969316473151

/-!
# A129102: Column 2 of triangle A129100; also equals column 0 of matrix power A129100^4.

The programs for A129102, there is no canonical definition to state claims against.
-/

/-! ## A129102.P13223239958316456408

`A129100(∑[n+2]+3)`
-/

namespace A129102.P13223239958316456408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A129102.P13223239958316456408

/-! ## A129102.P16129886407315140251

`record[A129100(comp[A055802(n+2)])]`
-/

namespace A129102.P16129886407315140251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055802 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129102.P16129886407315140251

/-! ## A129102.P9511215394644896223

`A129104(∑[n+3]+5)`
-/

namespace A129102.P9511215394644896223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129104 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A129102.P9511215394644896223

/-!
# A129103: Column 3 of triangle A129100; also equals column 0 of matrix power A129100^8.

The programs for A129103, there is no canonical definition to state claims against.
-/

/-! ## A129103.P17273220251544539057

`A129100(∑[n+3]+6)`
-/

namespace A129103.P17273220251544539057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A129103.P17273220251544539057

/-! ## A129103.P2682131774672001872

`A008284(n+1)*A129100(A167614(n+2))`
-/

namespace A129103.P2682131774672001872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) * A129100 (A167614 (n + 2)).toNat

end

end A129103.P2682131774672001872

/-! ## A129103.P17197656879835981009

`A129100(A167614(n+2))%A093137(n+2)`
-/

namespace A129103.P17197656879835981009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129100 (A167614 (n + 2)).toNat) (A093137 (n + 2))

end

end A129103.P17197656879835981009

/-!
# A129104: Triangle T, read by rows, where row n (shifted left) of T equals row 0 of matrix power T^n for n>=0.

The programs for A129104, there is no canonical definition to state claims against.
-/

/-! ## A129104.P6068191824855662276

`A129100((2*n+1)%A181133(n+1))`
-/

namespace A129104.P6068191824855662276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (Int.tmod (2 * n + 1 : ℤ) (A181133 (n + 1))).toNat

end

end A129104.P6068191824855662276

/-! ## A129104.P6934505943733054413

`A129100(A083920(n*A023532(n)))`
-/

namespace A129104.P6934505943733054413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (A083920 ((n : ℤ) * A023532 n).toNat).toNat

end

end A129104.P6934505943733054413

/-! ## A129104.P1361191646721171093

`A129100(A083920(n*Δ[A083920(n)]))`
-/

namespace A129104.P1361191646721171093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (A083920 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat).toNat

end

end A129104.P1361191646721171093

/-! ## A129104.P4179233051366376128

`A129100(A083920(n)^Δ[A083920(n)])`
-/

namespace A129104.P4179233051366376128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (SequenceMachineLib.roundAway ((A083920 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A129104.P4179233051366376128

/-! ## A129104.P12882509285997018562

`A129100(A028310(n)-A003056(n+1))`
-/

namespace A129104.P12882509285997018562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (A028310 n - A003056 (n + 1)).toNat

end

end A129104.P12882509285997018562

/-! ## A129104.P3411036660263063291

`A129100(A083920(n)%A008275(n+1))`
-/

namespace A129104.P3411036660263063291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129100 (Int.tmod (A083920 n) (A008275 (n + 1))).toNat

end

end A129104.P3411036660263063291

/-!
# A129107: Decimal expansion of 42223444 = 84446888/2 (see A129106).

The programs for A129107, the canonical program `A129107.P3763966122809766517` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129107 has offset 8).

The definition of A129107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129107.P3763966122809766517

`a(n-1)` with `a(0)=4, a(1)=2, a(2)=2, a(3)=2, a(4)=3, a(5)=4, a(6)=4, a(7)=4, a(8)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129107

/-- `a(n-1)` -/
def P3763966122809766517.Spec : Prop :=
  ∀ n, (P3763966122809766517.a n : ℤ) = A129107 (n + 8)

theorem P3763966122809766517.correct : P3763966122809766517.Spec := by
  intro n
  simp only [A129107, Nat.add_sub_cancel]

end A129107

/-!
# A129108: a(0)=1; a(n) is the smallest positive integer such that lcm(a(n-1), a(n)) = n!.

The programs for A129108, there is no canonical definition to state claims against.
-/

/-! ## A129108.P3420905276357777573

`gcd(A000584(A006882(n)), A053556(n))`
-/

namespace A129108.P3420905276357777573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000584 (A006882 n).toNat) (A053556 n)

end

end A129108.P3420905276357777573

/-! ## A129108.P13433581394411682494

`gcd(A006882(n)², A103360(∑[n]))`
-/

namespace A129108.P13433581394411682494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006882 n ^ 2) (A103360 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A129108.P13433581394411682494

/-! ## A129108.P4574264922685249582

`gcd(A186442(n+1)!, A317279(n))`
-/

namespace A129108.P4574264922685249582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A186442 (n + 1)).toNat : ℤ) (A317279 n)

end

end A129108.P4574264922685249582

/-! ## A129108.P10310599840081078909

`gcd(A002378(A053556(n)), A184877(n))`
-/

namespace A129108.P10310599840081078909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 (A053556 n).toNat) (A184877 n)

end

end A129108.P10310599840081078909

/-! ## A129108.P8532300471403775745

`A184877(A186442(n+1))/A135354(n)`
-/

namespace A129108.P8532300471403775745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184877 (A186442 (n + 1)).toNat : ℚ) / (A135354 n : ℚ)

end

end A129108.P8532300471403775745

/-!
# A129109: Sums of three consecutive hexagonal numbers.

The programs for A129109, the canonical program `A129109.P16517626062351711443` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129109 has offset 0).

The definition of A129109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129109.P16517626062351711443

`6*n²+9*n+7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129109

/-- `6*n²+9*n+7` -/
def P16517626062351711443.Spec : Prop :=
  ∀ n, (P16517626062351711443.a n : ℤ) = A129109 n

theorem P16517626062351711443.correct : P16517626062351711443.Spec := by
  intro n
  simp only [A129109]

end A129109

/-! ## A129109.P16491923124762696296

`∑[a(n-1)+12]` with `a(0)=7, a(1)=15`
-/

namespace A129109.P16491923124762696296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 15] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129109.P16491923124762696296

namespace A129109

/-- `∑[a(n-1)+12]` -/
def P16491923124762696296.Spec : Prop :=
  ∀ n, (P16491923124762696296.a n : ℤ) = A129109 n

end A129109

/-! ## A129109.P13704729400532363401

`∑[ogf((7+x+4x^2)/(1-2x+x^2))]`
-/

namespace A129109.P13704729400532363401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 1, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129109.P13704729400532363401

namespace A129109

/-- `∑[ogf((7+x+4x^2)/(1-2x+x^2))]` -/
def P13704729400532363401.Spec : Prop :=
  ∀ n, P13704729400532363401.a n = A129109 n

end A129109

/-! ## A129109.P12008300529251793972

`ogf((7+x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A129109.P12008300529251793972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 1, 4] [1, -3, 3, -1] n

end

end A129109.P12008300529251793972

namespace A129109

/-- `ogf((7+x+4x^2)/(1-3x+3x^2-x^3))` -/
def P12008300529251793972.Spec : Prop :=
  ∀ n, P12008300529251793972.a n = A129109 n

end A129109

/-! ## A129109.P10292128931013000352

`abs(Δ[xor(2, 4*n*C(n+1, 2))]+3-n)`
-/

namespace A129109.P10292128931013000352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (4 * n * Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3 - (n : ℤ)|

end

end A129109.P10292128931013000352

namespace A129109

/-- `abs(Δ[xor(2, 4*n*C(n+1, 2))]+3-n)` -/
def P10292128931013000352.Spec : Prop :=
  ∀ n, P10292128931013000352.a n = A129109 n

end A129109

/-! ## A129109.P14657704786544320030

`abs((3*n+2)*and(2*(n+1), -2)+3-n)`
-/

namespace A129109.P14657704786544320030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n + 2 : ℤ) * Int.land (2 * (n + 1) : ℤ) (-2) + 3 - (n : ℤ)|

end

end A129109.P14657704786544320030

namespace A129109

/-- `abs((3*n+2)*and(2*(n+1), -2)+3-n)` -/
def P14657704786544320030.Spec : Prop :=
  ∀ n, P14657704786544320030.a n = A129109 n

end A129109

/-! ## A129109.P12512863866510771610

`abs((A016945(n)+1)*(n+1)+3-n)`
-/

namespace A129109.P12512863866510771610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016945 n + 1) * (n + 1 : ℤ) + 3 - (n : ℤ)|

end

end A129109.P12512863866510771610

namespace A129109

/-- `abs((A016945(n)+1)*(n+1)+3-n)` -/
def P12512863866510771610.Spec : Prop :=
  ∀ n, P12512863866510771610.a n = A129109 n

end A129109

/-! ## A129109.P7536967745143395857

`abs(abs((n+1)*A016969(n)+2-n)-n)`
-/

namespace A129109.P7536967745143395857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(n + 1 : ℤ) * A016969 n + 2 - (n : ℤ)| - (n : ℤ))|

end

end A129109.P7536967745143395857

namespace A129109

/-- `abs(abs((n+1)*A016969(n)+2-n)-n)` -/
def P7536967745143395857.Spec : Prop :=
  ∀ n, P7536967745143395857.a n = A129109 n

end A129109

/-! ## A129109.P17659901831509426067

`∑[or(1, A316320(n+1))]`
-/

namespace A129109.P17659901831509426067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316320 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129109.P17659901831509426067

namespace A129109

/-- `∑[or(1, A316320(n+1))]` -/
def P17659901831509426067.Spec : Prop :=
  ∀ n, P17659901831509426067.a n = A129109 n

end A129109

/-! ## A129109.P14563551297724099478

`Δ[(4*n-1)*A000124(n)]`
-/

namespace A129109.P14563551297724099478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n : ℤ) - 1) * A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129109.P14563551297724099478

namespace A129109

/-- `Δ[(4*n-1)*A000124(n)]` -/
def P14563551297724099478.Spec : Prop :=
  ∀ n, P14563551297724099478.a n = A129109 n

end A129109

/-! ## A129109.P4131276147254440899

`Δ[A100175(n+1)+3*C(n, 3)]`
-/

namespace A129109.P4131276147254440899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100175 (n + 1) + (3 * Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129109.P4131276147254440899

namespace A129109

/-- `Δ[A100175(n+1)+3*C(n, 3)]` -/
def P4131276147254440899.Spec : Prop :=
  ∀ n, P4131276147254440899.a n = A129109 n

end A129109

/-! ## A129109.P3492804424073826378

`Δ[A051895(n)-A051890(n)]`
-/

namespace A129109.P3492804424073826378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051895 n - A051890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129109.P3492804424073826378

namespace A129109

/-- `Δ[A051895(n)-A051890(n)]` -/
def P3492804424073826378.Spec : Prop :=
  ∀ n, P3492804424073826378.a n = A129109 n

end A129109

/-! ## A129109.P1813616617039743885

`Δ[A063489(n+1)+A007290(n)]`
-/

namespace A129109.P1813616617039743885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063489 (n + 1) + A007290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129109.P1813616617039743885

namespace A129109

/-- `Δ[A063489(n+1)+A007290(n)]` -/
def P1813616617039743885.Spec : Prop :=
  ∀ n, P1813616617039743885.a n = A129109 n

end A129109

/-! ## A129109.P8344198665835208806

`∑[A016825(A008486(n))+1]`
-/

namespace A129109.P8344198665835208806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A008486 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129109.P8344198665835208806

namespace A129109

/-- `∑[A016825(A008486(n))+1]` -/
def P8344198665835208806.Spec : Prop :=
  ∀ n, P8344198665835208806.a n = A129109 n

end A129109

/-! ## A129109.P3559646147169006278

`A130423(2*(n+1))/(2*(n+1))`
-/

namespace A129109.P3559646147169006278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130423 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A129109.P3559646147169006278

namespace A129109

/-- `A130423(2*(n+1))/(2*(n+1))` -/
def P3559646147169006278.Spec : Prop :=
  ∀ n, P3559646147169006278.a n = (A129109 n : ℚ)

end A129109

/-! ## A129109.P9677359809980470756

`record[3*(A000217(A060819(n+1))+1)+1]`
-/

namespace A129109.P9677359809980470756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000217 (A060819 (n + 1)).toNat + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129109.P9677359809980470756

namespace A129109

/-- `record[3*(A000217(A060819(n+1))+1)+1]` -/
def P9677359809980470756.Spec : Prop :=
  ∀ n, P9677359809980470756.a n = A129109 n

end A129109

/-! ## A129109.P8662213053255656062

`record[A153171(n)+1-n]`
-/

namespace A129109.P8662213053255656062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153171 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129109.P8662213053255656062

namespace A129109

/-- `record[A153171(n)+1-n]` -/
def P8662213053255656062.Spec : Prop :=
  ∀ n, P8662213053255656062.a n = A129109 n

end A129109

/-! ## A129109.P13109002724819408589

`∑[A004767(A008486(n))]`
-/

namespace A129109.P13109002724819408589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129109.P13109002724819408589

namespace A129109

/-- `∑[A004767(A008486(n))]` -/
def P13109002724819408589.Spec : Prop :=
  ∀ n, P13109002724819408589.a n = A129109 n

end A129109

/-! ## A129109.P10821312087416195166

`∑[A004767(record[A280167(n)])]`
-/

namespace A129109.P10821312087416195166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129109.P10821312087416195166

namespace A129109

/-- `∑[A004767(record[A280167(n)])]` -/
def P10821312087416195166.Spec : Prop :=
  ∀ n, P10821312087416195166.a n = A129109 n

end A129109

/-! ## A129109.P13109392816055624492

`∑[A004767(A280167(2*n))]`
-/

namespace A129109.P13109392816055624492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A280167 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129109.P13109392816055624492

namespace A129109

/-- `∑[A004767(A280167(2*n))]` -/
def P13109392816055624492.Spec : Prop :=
  ∀ n, P13109392816055624492.a n = A129109 n

end A129109

/-!
# A129110: A transformation of the Catalan sequence.

The programs for A129110, the canonical program `A129110.P13788463784851798208` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129110 has offset 0).

The definition of A129110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129110.P13788463784851798208

`A105523(n+2)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129110

/-- `A105523(n+2)+1` -/
def P13788463784851798208.Spec : Prop :=
  ∀ n, P13788463784851798208.a n = A129110 n

theorem P13788463784851798208.correct : P13788463784851798208.Spec := by
  intro n
  simp only [A129110]

end A129110

/-! ## A129110.P1979189848217238380

`1-A090192(n+2)`
-/

namespace A129110.P1979189848217238380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A090192 (n + 2)

end

end A129110.P1979189848217238380

namespace A129110

/-- `1-A090192(n+2)` -/
def P1979189848217238380.Spec : Prop :=
  ∀ n, P1979189848217238380.a n = A129110 n

theorem P1979189848217238380.correct : P1979189848217238380.Spec := by
  intro n
  simp only [A129110, Nat.add_sub_cancel, A129110.P1979189848217238380.a, A129110.P13788463784851798208.a, A090192, A090192.P1518387728064855857.a, A105523, A105523.P5299360234432620638.a, A000038, A000038.P13734959004655594922.a, A087960, A087960.P9406527830484805982.a, A097331, A097331.P4426990625459901142.a, A000007, A000007.P6599383543502402472.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A129110

/-! ## A129110.P5511179780970903423

`∑[-Δ[A090192(n+1)]]`
-/

namespace A129110.P5511179780970903423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129110.P5511179780970903423

namespace A129110

/-- `∑[-Δ[A090192(n+1)]]` -/
def P5511179780970903423.Spec : Prop :=
  ∀ n, P5511179780970903423.a n = A129110 n

end A129110

/-! ## A129110.P1827578597967465792

`1-A056594(n+1)*A126120(n+1)`
-/

namespace A129110.P1827578597967465792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056594 (n + 1) * A126120 (n + 1)

end

end A129110.P1827578597967465792

namespace A129110

/-- `1-A056594(n+1)*A126120(n+1)` -/
def P1827578597967465792.Spec : Prop :=
  ∀ n, P1827578597967465792.a n = A129110 n

end A129110

/-! ## A129110.P12999514998979414246

`1-A087960(n+1)*A126120(n+1)`
-/

namespace A129110.P12999514998979414246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087960 (n + 1) * A126120 (n + 1)

end

end A129110.P12999514998979414246

namespace A129110

/-- `1-A087960(n+1)*A126120(n+1)` -/
def P12999514998979414246.Spec : Prop :=
  ∀ n, P12999514998979414246.a n = A129110 n

end A129110

/-! ## A129110.P17576456089840255905

`(A087960(n)-A126120(n+1))*A087960(n)`
-/

namespace A129110.P17576456089840255905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087960 n - A126120 (n + 1)) * A087960 n

end

end A129110.P17576456089840255905

namespace A129110

/-- `(A087960(n)-A126120(n+1))*A087960(n)` -/
def P17576456089840255905.Spec : Prop :=
  ∀ n, P17576456089840255905.a n = A129110 n

end A129110

/-! ## A129110.P4382277607025853769

`1-A104624(n+3)/2`
-/

namespace A129110.P4382277607025853769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A104624 (n + 3) : ℚ) / 2

end

end A129110.P4382277607025853769

namespace A129110

/-- `1-A104624(n+3)/2` -/
def P4382277607025853769.Spec : Prop :=
  ∀ n, P4382277607025853769.a n = (A129110 n : ℚ)

end A129110

/-! ## A129110.P6708853480125906831

`1-A182122(n+3)/2`
-/

namespace A129110.P6708853480125906831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A182122 (n + 3) : ℚ) / 2

end

end A129110.P6708853480125906831

namespace A129110

/-- `1-A182122(n+3)/2` -/
def P6708853480125906831.Spec : Prop :=
  ∀ n, P6708853480125906831.a n = (A129110 n : ℚ)

end A129110

/-! ## A129110.P15412706835653093247

`1-(A214283(n+2)+A214282(n+2))`
-/

namespace A129110.P15412706835653093247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A214283 (n + 2) + A214282 (n + 2))

end

end A129110.P15412706835653093247

namespace A129110

/-- `1-(A214283(n+2)+A214282(n+2))` -/
def P15412706835653093247.Spec : Prop :=
  ∀ n, P15412706835653093247.a n = A129110 n

end A129110

/-! ## A129110.P12523453907293558286

`A071688(n+2)+1-A071684(n+2)`
-/

namespace A129110.P12523453907293558286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071688 (n + 2) + (1 - A071684 (n + 2))

end

end A129110.P12523453907293558286

namespace A129110

/-- `A071688(n+2)+1-A071684(n+2)` -/
def P12523453907293558286.Spec : Prop :=
  ∀ n, P12523453907293558286.a n = A129110 n

end A129110

/-!
# A129111: Sums of three consecutive heptagonal numbers.

The programs for A129111, the canonical program `A129111.P14338602513641853772` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129111 has offset 0).

The definition of A129111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129111.P14338602513641853772

`3*n*(5*n+7)/2+8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129111

/-- `3*n*(5*n+7)/2+8` -/
def P14338602513641853772.Spec : Prop :=
  ∀ n, P14338602513641853772.a n = (A129111 n : ℚ)

end A129111

/-! ## A129111.P13217994457050357048

`∑[a(n-1)+15]` with `a(0)=8, a(1)=18`
-/

namespace A129111.P13217994457050357048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 18] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129111.P13217994457050357048

namespace A129111

/-- `∑[a(n-1)+15]` -/
def P13217994457050357048.Spec : Prop :=
  ∀ n, (P13217994457050357048.a n : ℤ) = A129111 n

end A129111

/-! ## A129111.P2276309244196693936

`∑[ogf((8+2x+5x^2)/(1-2x+x^2))]`
-/

namespace A129111.P2276309244196693936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 2, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129111.P2276309244196693936

namespace A129111

/-- `∑[ogf((8+2x+5x^2)/(1-2x+x^2))]` -/
def P2276309244196693936.Spec : Prop :=
  ∀ n, P2276309244196693936.a n = A129111 n

end A129111

/-! ## A129111.P14129774610529445128

`ogf((8+2x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A129111.P14129774610529445128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 2, 5] [1, -3, 3, -1] n

end

end A129111.P14129774610529445128

namespace A129111

/-- `ogf((8+2x+5x^2)/(1-3x+3x^2-x^3))` -/
def P14129774610529445128.Spec : Prop :=
  ∀ n, P14129774610529445128.a n = A129111 n

end A129111

/-! ## A129111.P17253435419238591220

`Δ[A237616(n)+(n+3)²]`
-/

namespace A129111.P17253435419238591220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 n + ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129111.P17253435419238591220

namespace A129111

/-- `Δ[A237616(n)+(n+3)²]` -/
def P17253435419238591220.Spec : Prop :=
  ∀ n, P17253435419238591220.a n = A129111 n

end A129111

/-! ## A129111.P5029031869456382638

`Δ[(5*n-2)*A000124(n)]`
-/

namespace A129111.P5029031869456382638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((5 * n : ℤ) - 2) * A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129111.P5029031869456382638

namespace A129111

/-- `Δ[(5*n-2)*A000124(n)]` -/
def P5029031869456382638.Spec : Prop :=
  ∀ n, P5029031869456382638.a n = A129111 n

end A129111

/-! ## A129111.P7816546304891247079

`Δ[n*(A145018(n+1)+A014105(n))]`
-/

namespace A129111.P7816546304891247079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A145018 (n + 1) + A014105 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129111.P7816546304891247079

namespace A129111

/-- `Δ[n*(A145018(n+1)+A014105(n))]` -/
def P7816546304891247079.Spec : Prop :=
  ∀ n, P7816546304891247079.a n = A129111 n

end A129111

/-! ## A129111.P422849801622096508

`abs(2-(A000217(3*(n+1)+1)+Δ[A007531(n)]))`
-/

namespace A129111.P422849801622096508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A000217 (3 * (n + 1) + 1) + (f1 (n + 1) - f1 n))|

end

end A129111.P422849801622096508

namespace A129111

/-- `abs(2-(A000217(3*(n+1)+1)+Δ[A007531(n)]))` -/
def P422849801622096508.Spec : Prop :=
  ∀ n, P422849801622096508.a n = A129111 n

end A129111

/-! ## A129111.P9619315061410156345

`Δ[A004188(n)+Δ[A066375(n+1)]]`
-/

namespace A129111.P9619315061410156345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066375 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129111.P9619315061410156345

namespace A129111

/-- `Δ[A004188(n)+Δ[A066375(n+1)]]` -/
def P9619315061410156345.Spec : Prop :=
  ∀ n, P9619315061410156345.a n = A129111 n

end A129111

/-! ## A129111.P12737420774688825822

`∑[A016885(A008486(n))]`
-/

namespace A129111.P12737420774688825822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129111.P12737420774688825822

namespace A129111

/-- `∑[A016885(A008486(n))]` -/
def P12737420774688825822.Spec : Prop :=
  ∀ n, P12737420774688825822.a n = A129111 n

end A129111

/-! ## A129111.P14720073315331919440

`∑[A016885(A028310(3*n))]`
-/

namespace A129111.P14720073315331919440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A028310 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129111.P14720073315331919440

namespace A129111

/-- `∑[A016885(A028310(3*n))]` -/
def P14720073315331919440.Spec : Prop :=
  ∀ n, P14720073315331919440.a n = A129111 n

end A129111

/-! ## A129111.P4784328887453993332

`∑[A016885(A004277(n)+n)]`
-/

namespace A129111.P4784328887453993332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A004277 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129111.P4784328887453993332

namespace A129111

/-- `∑[A016885(A004277(n)+n)]` -/
def P4784328887453993332.Spec : Prop :=
  ∀ n, P4784328887453993332.a n = A129111 n

end A129111

/-! ## A129111.P17808171406676077134

`∑[A016885(A008574(n)-n)]`
-/

namespace A129111.P17808171406676077134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A008574 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129111.P17808171406676077134

namespace A129111

/-- `∑[A016885(A008574(n)-n)]` -/
def P17808171406676077134.Spec : Prop :=
  ∀ n, P17808171406676077134.a n = A129111 n

end A129111

/-! ## A129111.P5966278862123018699

`∑[A016885(record[A080512(n+1)])]`
-/

namespace A129111.P5966278862123018699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129111.P5966278862123018699

namespace A129111

/-- `∑[A016885(record[A080512(n+1)])]` -/
def P5966278862123018699.Spec : Prop :=
  ∀ n, P5966278862123018699.a n = A129111 n

end A129111

/-! ## A129111.P15999297563257629003

`∑[A008706(A033627(n+2))-2]`
-/

namespace A129111.P15999297563257629003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A033627 (n + 2)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129111.P15999297563257629003

namespace A129111

/-- `∑[A008706(A033627(n+2))-2]` -/
def P15999297563257629003.Spec : Prop :=
  ∀ n, P15999297563257629003.a n = A129111 n

end A129111

/-! ## A129111.P9527517495558973160

`∑[A016873(A004277(n)+n)+1]`
-/

namespace A129111.P9527517495558973160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (A004277 n + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129111.P9527517495558973160

namespace A129111

/-- `∑[A016873(A004277(n)+n)+1]` -/
def P9527517495558973160.Spec : Prop :=
  ∀ n, P9527517495558973160.a n = A129111 n

end A129111

/-! ## A129111.P13412466122806946549

`∑[A016885(A028310(n)+A005843(n))]`
-/

namespace A129111.P13412466122806946549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A028310 n + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129111.P13412466122806946549

namespace A129111

/-- `∑[A016885(A028310(n)+A005843(n))]` -/
def P13412466122806946549.Spec : Prop :=
  ∀ n, P13412466122806946549.a n = A129111 n

end A129111

/-! ## A129111.P5386448864004977854

`∑[A004767(A008574(n)-n)+A008574(n)-n]`
-/

namespace A129111.P5386448864004977854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A008574 n - (n : ℤ)).toNat + (A008574 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129111.P5386448864004977854

namespace A129111

/-- `∑[A004767(A008574(n)-n)+A008574(n)-n]` -/
def P5386448864004977854.Spec : Prop :=
  ∀ n, P5386448864004977854.a n = A129111 n

end A129111

/-!
# A129113: Expansion of x^3 / (1 - x - 5*x^2 - x^3 + x^4).

The programs for A129113, the canonical program `A129113.P7556011896060593085` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129113 has offset 0).

The definition of A129113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^3/(1-x-5x^2-x^3+x^4))` (program `A129113.P7556011896060593085`, by `A129113.P7556011896060593085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129113.P7556011896060593085

`ogf(x^3/(1-x-5x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129113

/-- `ogf(x^3/(1-x-5x^2-x^3+x^4))` -/
def P7556011896060593085.Spec : Prop :=
  ∀ n, P7556011896060593085.a n = A129113 n

theorem P7556011896060593085.correct : P7556011896060593085.Spec := by
  intro n
  simp only [A129113]

end A129113

/-! ## A129113.P11894390208227809955

`a(n-1)+5*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A129113.P11894390208227809955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 1) + 5 * a (n - 2) + a (n - 3) - a (n - 4)

end

end A129113.P11894390208227809955

namespace A129113

/-- `a(n-1)+5*a(n-2)+a(n-3)-a(n-4)` -/
def P11894390208227809955.Spec : Prop :=
  ∀ n, P11894390208227809955.a n = A129113 n

end A129113

/-! ## A129113.P14598797066424308423

`A238386(A238395(n+1)*A238428(n))`
-/

namespace A129113.P14598797066424308423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238386 (A238395 (n + 1) * A238428 n).toNat

end

end A129113.P14598797066424308423

namespace A129113

/-- `A238386(A238395(n+1)*A238428(n))` -/
def P14598797066424308423.Spec : Prop :=
  ∀ n, P14598797066424308423.a n = A129113 n

end A129113

/-! ## A129113.P2221823683120221357

`A085858(A035053(n)+A000045(2*n+3))`
-/

namespace A129113.P2221823683120221357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085858 (A035053 n + A000045 (2 * n + 3)).toNat

end

end A129113.P2221823683120221357

namespace A129113

/-- `A085858(A035053(n)+A000045(2*n+3))` -/
def P2221823683120221357.Spec : Prop :=
  ∀ n, P2221823683120221357.a n = A129113 n

end A129113

/-!
# A129114: Number of unrooted unlabeled connected triangular maps on a compact closed oriented surface with 2n faces (and thus 3n edges).

The programs for A129114, there is no canonical definition to state claims against.
-/

/-! ## A129114.P3451175499774325671

`record[A380626(∑[n+3])]`
-/

namespace A129114.P3451175499774325671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380626 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129114.P3451175499774325671

/-! ## A129114.P3605076094738197732

`A380626((2*n+1)*(n+3))`
-/

namespace A129114.P3605076094738197732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380626 ((2 * n + 1) * (n + 3))

end

end A129114.P3605076094738197732

/-!
# A129115: Number of unrooted unlabeled not necessarily connected triangular maps on a compact closed oriented surface with 2n faces (and thus 3n edges).

The programs for A129115, there is no canonical definition to state claims against.
-/

/-! ## A129115.P16909758750811092754

`∑[∑[A064989(A353878(n)+1)]]`
-/

namespace A129115.P16909758750811092754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A353878 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129115.P16909758750811092754

/-!
# A129116: Multifactorial array: A(k,n) = k-tuple factorial of n, for positive n, read by ascending antidiagonals.

The programs for A129116, there is no canonical definition to state claims against.
-/

/-! ## A129116.P10415597205215465495

`A084980(n+1)/A003057(n+2)`
-/

namespace A129116.P10415597205215465495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084980 (n + 1) : ℚ) / (A003057 (n + 2) : ℚ)

end

end A129116.P10415597205215465495

/-! ## A129116.P5856097231248474545

`A084980(n+1)/(A003056(n)+2)`
-/

namespace A129116.P5856097231248474545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084980 (n + 1) : ℚ) / (A003056 n + 2 : ℚ)

end

end A129116.P5856097231248474545

/-! ## A129116.P7475846509376320240

`A084980(n+1)/sqrt(A140978(n+1))`
-/

namespace A129116.P7475846509376320240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A084980 (n + 1) : ℝ) / Real.sqrt (A140978 (n + 1) : ℝ)

end

end A129116.P7475846509376320240

/-! ## A129116.P566702919408465716

`A084980(n+1)/log2(A098354(n+1))`
-/

namespace A129116.P566702919408465716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A084980 (n + 1) : ℝ) / Real.logb 2 (A098354 (n + 1) : ℝ)

end

end A129116.P566702919408465716

/-! ## A129116.P8169050402819060655

`A084980(n+1)/(A014132(n+1)-n)`
-/

namespace A129116.P8169050402819060655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084980 (n + 1) : ℚ) / (A014132 (n + 1) - (n : ℤ) : ℚ)

end

end A129116.P8169050402819060655

/-! ## A129116.P4059296564348556577

`A114423(A380649(n+1))`
-/

namespace A129116.P4059296564348556577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114423 (A380649 (n + 1)).toNat

end

end A129116.P4059296564348556577

/-!
# A129118: For each permutation p of {1,2,...,n} define minabsjump(p) = min(|p(i) - i|, 1<=i<=n); a(n) is the sum of minabsjumps of all p.

The programs for A129118, there is no canonical definition to state claims against.
-/

/-! ## A129118.P4117867175933945036

`A237524(A113956(n))`
-/

namespace A129118.P4117867175933945036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237524 (A113956 n).toNat

end

end A129118.P4117867175933945036

/-! ## A129118.P2043971247436137696

`A105519(9*A000142(n+1))`
-/

namespace A129118.P2043971247436137696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (9 * A000142 (n + 1)).toNat

end

end A129118.P2043971247436137696

/-!
# A129119: Numbers of the form 2*p (with p a prime number) such that p^2+4 is prime.

The programs for A129119, there is no canonical definition to state claims against.
-/

/-! ## A129119.P5398175353147870591

`2*A062324(n+1)`
-/

namespace A129119.P5398175353147870591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062324 (n + 1)

end

end A129119.P5398175353147870591

/-! ## A129119.P16160500437823971193

`2*floor(sqrt(A045637(n+1)))`
-/

namespace A129119.P16160500437823971193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A045637 (n + 1))

end

end A129119.P16160500437823971193

/-! ## A129119.P8485203062727789445

`A062324(A000027(n+1))+A062324(n+1)`
-/

namespace A129119.P8485203062727789445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (A000027 (n + 1)).toNat + A062324 (n + 1)

end

end A129119.P8485203062727789445

/-! ## A129119.P14619788946641824365

`lcm(A000005(A118958(n+1)), A062324(n+1))`
-/

namespace A129119.P14619788946641824365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A118958 (n + 1)).toNat) (A062324 (n + 1))

end

end A129119.P14619788946641824365

/-! ## A129119.P11365407637038741150

`2*p?[A007591(n+1)]`
-/

namespace A129119.P11365407637038741150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129119.P11365407637038741150

/-! ## A129119.P2936438404854408451

`lcm(2, p?[A007591(n+2)])`
-/

namespace A129119.P2936438404854408451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A129119.P2936438404854408451

/-! ## A129119.P4674205304553827434

`2*p?[A089747(n+1)-1]`
-/

namespace A129119.P4674205304553827434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089747 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129119.P4674205304553827434

/-! ## A129119.P6534969272189521706

`2*p?[floor(sqrt(A005473(n+2)))]`
-/

namespace A129119.P6534969272189521706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005473 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129119.P6534969272189521706

/-! ## A129119.P14998823000453359959

`2*∩[A007591(n+1), A042993(n+1)]`
-/

namespace A129119.P14998823000453359959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P14998823000453359959

/-! ## A129119.P3888659814880587233

`2*∩[A007591(n+1), A042986(n+1)]`
-/

namespace A129119.P3888659814880587233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P3888659814880587233

/-! ## A129119.P6352814033739034897

`2*∩[A007591(n+1), A042991(n+1)]`
-/

namespace A129119.P6352814033739034897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P6352814033739034897

/-! ## A129119.P5250130655683361572

`2*∩[A007591(n+1), A040161(n+1)]`
-/

namespace A129119.P5250130655683361572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P5250130655683361572

/-! ## A129119.P4552807163364184527

`2*∩[A007591(n+1), A040169(n+1)]`
-/

namespace A129119.P4552807163364184527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P4552807163364184527

/-! ## A129119.P2285294835050357372

`2*∩[A007591(n+1), A040179(n+1)]`
-/

namespace A129119.P2285294835050357372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P2285294835050357372

/-! ## A129119.P14830300466343538519

`2*∩[A007591(n+1), A040970(n+1)]`
-/

namespace A129119.P14830300466343538519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P14830300466343538519

/-! ## A129119.P7696443779646355154

`2*∩[A007591(n+1), A040972(n+1)]`
-/

namespace A129119.P7696443779646355154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P7696443779646355154

/-! ## A129119.P5166773958276554348

`2*∩[A007591(n+1), A040986(n+1)]`
-/

namespace A129119.P5166773958276554348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P5166773958276554348

/-! ## A129119.P8502326331328028314

`2*∩[A007591(n+1), A040990(n+1)]`
-/

namespace A129119.P8502326331328028314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P8502326331328028314

/-! ## A129119.P8413230333388855109

`2*∩[A007591(n+1), A040159(n+1)]`
-/

namespace A129119.P8413230333388855109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P8413230333388855109

/-! ## A129119.P12099670974451584203

`2*∩[A007591(n+1), A040980(n+1)]`
-/

namespace A129119.P12099670974451584203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129119.P12099670974451584203

/-!
# A129121: Starting numbers x for which the trajectory of x->R(A006370(x)) ends in the cycle 1->4->2->1.

The programs for A129121, there is no canonical definition to state claims against.
-/

/-! ## A129121.P9168680445913007492

`eq[A055396(A272919(n+5)), A333381(n)]`
-/

namespace A129121.P9168680445913007492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A272919 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129121.P9168680445913007492

/-!
# A129122: Numbers k such that A085068(3*k+1) = 7.

The programs for A129122, there is no canonical definition to state claims against.
-/

/-! ## A129122.P2769633784778239991

`eq[7, A083514(n)]`
-/

namespace A129122.P2769633784778239991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129122.P2769633784778239991

/-! ## A129122.P8252479758990817647

`eq[2, A132967(A085068(3*n+1))]`
-/

namespace A129122.P8252479758990817647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132967 (A085068 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129122.P8252479758990817647

/-!
# A129123: Number of 4-tuples of standard tableau with height less than or equal to 2.

The programs for A129123, there is no canonical definition to state claims against.
-/

/-! ## A129123.P16419915669097880527

`A357652(n)-A355481(n)`
-/

namespace A129123.P16419915669097880527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357652 n - A355481 n

end

end A129123.P16419915669097880527

/-! ## A129123.P7777664571374795243

`(A382434(n)+1)/2`
-/

namespace A129123.P7777664571374795243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382434 n + 1 : ℚ) / 2

end

end A129123.P7777664571374795243

/-! ## A129123.P14548394100111046718

`A001246(n)-2*A355481(n)`
-/

namespace A129123.P14548394100111046718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n - 2 * A355481 n

end

end A129123.P14548394100111046718

/-! ## A129123.P2675885535389805387

`2*A357652(n)-A001246(n)`
-/

namespace A129123.P2675885535389805387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A357652 n - A001246 n

end

end A129123.P2675885535389805387

/-! ## A129123.P15396375886584829434

`A000108(n)²-2*A355481(n)`
-/

namespace A129123.P15396375886584829434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2 - 2 * A355481 n

end

end A129123.P15396375886584829434

/-! ## A129123.P10982663538148696712

`2*A357652(n)-A000108(n)²`
-/

namespace A129123.P10982663538148696712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A357652 n - A000108 n ^ 2

end

end A129123.P10982663538148696712

/-!
# A129125: Prune the tree structure defined in sequence A129129 yielding a new irregular table with shape sequence A027336.

The programs for A129125, there is no canonical definition to state claims against.
-/

/-! ## A129125.P9719860678625440775

`filter[A129129(n), A166486(#)]`
-/

namespace A129125.P9719860678625440775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A129125.P9719860678625440775

/-! ## A129125.P2095693698365051938

`A129129(lt[gcd(4, A129129(n)), 3])`
-/

namespace A129125.P2095693698365051938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A129129 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129125.P2095693698365051938

/-! ## A129125.P17652014296359606511

`A129129(eq[0, A239261(A129129(n))])`
-/

namespace A129125.P17652014296359606511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239261 (A129129 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129125.P17652014296359606511

/-! ## A129125.P7543611788790080357

`A333219(record[A267508(n+1)-A071045(n)])`
-/

namespace A129125.P7543611788790080357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (n + 1) - A071045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A129125.P7543611788790080357

/-!
# A129126: Ninth diagonal of table A060850 counting partitions into parts of k kinds.

The programs for A129126, there is no canonical definition to state claims against.
-/

/-! ## A129126.P5335469587846104984

`A144064(A167499(n+8)+3)`
-/

namespace A129126.P5335469587846104984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A167499 (n + 8) + 3).toNat

end

end A129126.P5335469587846104984

/-! ## A129126.P12445467120698392246

`A144064(A253145(n+8)+8)`
-/

namespace A129126.P12445467120698392246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A253145 (n + 8) + 8).toNat

end

end A129126.P12445467120698392246

/-! ## A129126.P15029450668147465345

`A144064(A000217(n+9)+8)`
-/

namespace A129126.P15029450668147465345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 9) + 8).toNat

end

end A129126.P15029450668147465345

/-! ## A129126.P3673070041769138293

`A144064(A034856(n+8)+10)`
-/

namespace A129126.P3673070041769138293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A034856 (n + 8) + 10).toNat

end

end A129126.P3673070041769138293

/-! ## A129126.P18317371278992326320

`A144064(A152947(n+12)-(n+3))`
-/

namespace A129126.P18317371278992326320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A152947 (n + 12) - (n + 3 : ℤ)).toNat

end

end A129126.P18317371278992326320

/-!
# A129127: An irregular table of node numbers (in order of appearance) which generate two children in the tree described by A128628 and A129129.

The programs for A129127, there is no canonical definition to state claims against.
-/

/-! ## A129127.P180657826409535622

`A129125(∑[A124327(n+1)!])`
-/

namespace A129127.P180657826409535622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A124327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129125 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129127.P180657826409535622

/-!
# A129128: List of nodes generating two branches in the tree defined in sequence A129129.

The programs for A129128, there is no canonical definition to state claims against.
-/

/-! ## A129128.P865150012972435872

`A252461(2*n+3)`
-/

namespace A129128.P865150012972435872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252461 (2 * n + 3)

end

end A129128.P865150012972435872

/-! ## A129128.P6185443228710155839

`or(char[1], A252461(A005408(n+1)))`
-/

namespace A129128.P6185443228710155839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252461 (A005408 (n + 1)).toNat)

end

end A129128.P6185443228710155839

/-! ## A129128.P10594340220934007108

`A117368(n+2)*A184726(n+3)`
-/

namespace A129128.P10594340220934007108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117368 (n + 2) * A184726 (n + 3)

end

end A129128.P10594340220934007108

/-! ## A129128.P17470783493946059304

`A032742(2*n+3)*A117368(n+2)`
-/

namespace A129128.P17470783493946059304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * n + 3) * A117368 (n + 2)

end

end A129128.P17470783493946059304

/-! ## A129128.P1108780814015105991

`A252461(A005408(n+1))%A020711(n)`
-/

namespace A129128.P1108780814015105991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252461 (A005408 (n + 1)).toNat) (A020711 n)

end

end A129128.P1108780814015105991

/-! ## A129128.P6496611465278007475

`A252461(A005408(n+1))/A007318(C(6, n))`
-/

namespace A129128.P6496611465278007475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252461 (A005408 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 6 n) : ℚ)

end

end A129128.P6496611465278007475

/-! ## A129128.P8679138820223528425

`A252461(A005408(n+1))/A007318(gcd(n, n+1))`
-/

namespace A129128.P8679138820223528425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252461 (A005408 (n + 1)).toNat : ℚ) / (A007318 (Nat.gcd n (n + 1)) : ℚ)

end

end A129128.P8679138820223528425

/-! ## A129128.P14967804449880874727

`A252461(A005408(n+1))/A008683(A014963(n+1))²`
-/

namespace A129128.P14967804449880874727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252461 (A005408 (n + 1)).toNat : ℚ) / (A008683 (A014963 (n + 1)).toNat ^ 2 : ℚ)

end

end A129128.P14967804449880874727

/-!
# A129129: Irregular triangle T(n,k) read by rows: Heinz numbers of the integer partitions of n in graded reverse-lexicographic order, 1 <= k <= A000041(n).

The programs for A129129, there is no canonical definition to state claims against.
-/

/-! ## A129129.P13912586144890275871

`A333219(A114994(n)+1)`
-/

namespace A129129.P13912586144890275871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A114994 n + 1).toNat

end

end A129129.P13912586144890275871

/-! ## A129129.P13560006426454098319

`A333219(eq[A006257(n), A331856(n)]+1)`
-/

namespace A129129.P13560006426454098319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A129129.P13560006426454098319

/-! ## A129129.P12231081564757331045

`A333219(eq[A124765(n), A267084(n+1)]+1)`
-/

namespace A129129.P12231081564757331045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A129129.P12231081564757331045

/-! ## A129129.P6183654371731607310

`A333219(lt[A124760(n)+1-A000007(n), 2]+1)`
-/

namespace A129129.P6183654371731607310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + (1 - A000007 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A129129.P6183654371731607310

/-! ## A129129.P6306161068649078538

`A333219(eq[1, A124765(2*n+1)]+1)`
-/

namespace A129129.P6306161068649078538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A129129.P6306161068649078538

/-! ## A129129.P12314000591028515778

`A333219(lt[A124760(2*n+1), 1]+1)`
-/

namespace A129129.P12314000591028515778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A129129.P12314000591028515778

/-! ## A129129.P14004454804131022191

`A333219(eq[A246591(2*n), A331856(n)]+1)`
-/

namespace A129129.P14004454804131022191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A129129.P14004454804131022191

/-! ## A129129.P6857996298748865953

`A333219(eq[A233312(n), A330940(n)]+1)`
-/

namespace A129129.P6857996298748865953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233312 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A129129.P6857996298748865953

/-! ## A129129.P17255428246748536330

`∏{e}[A063008(n), A000040(#)]`
-/

namespace A129129.P17255428246748536330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A129129.P17255428246748536330

/-! ## A129129.P11928201938929106835

`∏{e}[A063008(n), A028905(#)]`
-/

namespace A129129.P11928201938929106835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028905 (Nat.factorization (f1 n).natAbs p)

end

end A129129.P11928201938929106835

/-!
# A129130: Number of triples of standard tableaux with the same shape of height less than or equal to three.

The programs for A129130, there is no canonical definition to state claims against.
-/

/-! ## A129130.P9099679014308477092

`A127763(A239373(n))`
-/

namespace A129130.P9099679014308477092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A239373 n).toNat

end

end A129130.P9099679014308477092

/-! ## A129130.P6907516119682677088

`A127757(∑[A239370(n)])`
-/

namespace A129130.P6907516119682677088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129130.P6907516119682677088

/-!
# A129131: Alternately write composite and prime numbers.

The programs for A129131, the canonical program `A129131.P6943603048357520983` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129131 has offset 1).

The definition of A129131 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129131.P6943603048357520983

`A066249(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A129131

/-- `A066249(n+1)+1` -/
def P6943603048357520983.Spec : Prop :=
  ∀ n, P6943603048357520983.a n = A129131 (n + 1)

theorem P6943603048357520983.correct : P6943603048357520983.Spec := by
  intro n
  simp only [A129131, Nat.add_sub_cancel]

end A129131

/-! ## A129131.P13923899083706161606

`A067747(xor(1, n)+1)`
-/

namespace A129131.P13923899083706161606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (Nat.xor 1 n + 1)

end

end A129131.P13923899083706161606

namespace A129131

/-- `A067747(xor(1, n)+1)` -/
def P13923899083706161606.Spec : Prop :=
  ∀ n, P13923899083706161606.a n = A129131 (n + 1)

theorem P13923899083706161606.correct : P13923899083706161606.Spec := by
  intro n
  simp only [A129131, Nat.add_sub_cancel, A129131.P13923899083706161606.a, A129131.P6943603048357520983.a, A066249, A066249.P1311895009433369201.a, A067747, A067747.P14118183397394803050.a, A000035, A000035.P2023072528413494694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A059841, A059841.P7264174615531153985.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129131

/-! ## A129131.P6422255064076426930

`A067747(-xor(n, -2))`
-/

namespace A129131.P6422255064076426930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (-Int.xor (n : ℤ) (-2)).toNat

end

end A129131.P6422255064076426930

namespace A129131

/-- `A067747(-xor(n, -2))` -/
def P6422255064076426930.Spec : Prop :=
  ∀ n, P6422255064076426930.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P17117593564686559542

`A067747(2-xor(1, 1-n))`
-/

namespace A129131.P17117593564686559542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A129131.P17117593564686559542

namespace A129131

/-- `A067747(2-xor(1, 1-n))` -/
def P17117593564686559542.Spec : Prop :=
  ∀ n, P17117593564686559542.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P14879608412291323338

`A067747(2*or(1, n)-n)`
-/

namespace A129131.P14879608412291323338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * Nat.lor 1 n - n)

end

end A129131.P14879608412291323338

namespace A129131

/-- `A067747(2*or(1, n)-n)` -/
def P14879608412291323338.Spec : Prop :=
  ∀ n, P14879608412291323338.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P658229310690370965

`A067747((-1)^n+1+n)`
-/

namespace A129131.P658229310690370965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 ((-1) ^ n + 1 + (n : ℤ)).toNat

end

end A129131.P658229310690370965

namespace A129131

/-- `A067747((-1)^n+1+n)` -/
def P658229310690370965.Spec : Prop :=
  ∀ n, P658229310690370965.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P16434728393057561257

`A066251(A014681(n+1))+1`
-/

namespace A129131.P16434728393057561257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (A014681 (n + 1)).toNat + 1

end

end A129131.P16434728393057561257

namespace A129131

/-- `A066251(A014681(n+1))+1` -/
def P16434728393057561257.Spec : Prop :=
  ∀ n, P16434728393057561257.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P3388215571595104890

`A066251(A103889(n+1))+1`
-/

namespace A129131.P3388215571595104890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (A103889 (n + 1)).toNat + 1

end

end A129131.P3388215571595104890

namespace A129131

/-- `A066251(A103889(n+1))+1` -/
def P3388215571595104890.Spec : Prop :=
  ∀ n, P3388215571595104890.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P15937409817585702617

`abs(Δ[A073891(n+1)])`
-/

namespace A129131.P15937409817585702617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129131.P15937409817585702617

namespace A129131

/-- `abs(Δ[A073891(n+1)])` -/
def P15937409817585702617.Spec : Prop :=
  ∀ n, P15937409817585702617.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P897605243058473100

`A073846(xor(1, n+2))`
-/

namespace A129131.P897605243058473100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Nat.xor 1 (n + 2))

end

end A129131.P897605243058473100

namespace A129131

/-- `A073846(xor(1, n+2))` -/
def P897605243058473100.Spec : Prop :=
  ∀ n, P897605243058473100.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P8200146052247357489

`A073846(1-xor(n, -2))`
-/

namespace A129131.P8200146052247357489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (1 - Int.xor (n : ℤ) (-2)).toNat

end

end A129131.P8200146052247357489

namespace A129131

/-- `A073846(1-xor(n, -2))` -/
def P8200146052247357489.Spec : Prop :=
  ∀ n, P8200146052247357489.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P10664552619744425733

`A073846((-1)^n+n+2)`
-/

namespace A129131.P10664552619744425733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 ((-1) ^ n + (n + 2 : ℤ)).toNat

end

end A129131.P10664552619744425733

namespace A129131

/-- `A073846((-1)^n+n+2)` -/
def P10664552619744425733.Spec : Prop :=
  ∀ n, P10664552619744425733.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P7134591547879423740

`A066253(A066248(n+1))+1`
-/

namespace A129131.P7134591547879423740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066253 (A066248 (n + 1)).toNat + 1

end

end A129131.P7134591547879423740

namespace A129131

/-- `A066253(A066248(n+1))+1` -/
def P7134591547879423740.Spec : Prop :=
  ∀ n, P7134591547879423740.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P14203939750221813266

`A020725(A066249(n+1))`
-/

namespace A129131.P14203939750221813266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A066249 (n + 1)).toNat

end

end A129131.P14203939750221813266

namespace A129131

/-- `A020725(A066249(n+1))` -/
def P14203939750221813266.Spec : Prop :=
  ∀ n, P14203939750221813266.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P5190762765757734549

`A026239(A067747(n+1))`
-/

namespace A129131.P5190762765757734549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A067747 (n + 1)).toNat

end

end A129131.P5190762765757734549

namespace A129131

/-- `A026239(A067747(n+1))` -/
def P5190762765757734549.Spec : Prop :=
  ∀ n, P5190762765757734549.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P1703605395327855800

`A026239(A073846(n+2))`
-/

namespace A129131.P1703605395327855800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A073846 (n + 2)).toNat

end

end A129131.P1703605395327855800

namespace A129131

/-- `A026239(A073846(n+2))` -/
def P1703605395327855800.Spec : Prop :=
  ∀ n, P1703605395327855800.a n = A129131 (n + 1)

end A129131

/-! ## A129131.P3070413863706434448

`A139636(a(n-2))` with `a(0)=4, a(1)=2`
-/

namespace A129131.P3070413863706434448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n a =>
  A139636 (a (n - 2)).toNat

end

end A129131.P3070413863706434448

namespace A129131

/-- `A139636(a(n-2))` -/
def P3070413863706434448.Spec : Prop :=
  ∀ n, P3070413863706434448.a n = A129131 (n + 1)

end A129131

/-!
# A129132: Partial sums of A051903.

The programs for A129132, the canonical program `A129132.P11396319477814267026` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129132 has offset 1).

The definition of A129132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129132.P11396319477814267026

`∑[a((n+1)/∏{p}[n+1, #]-1)+1]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129132

/-- `∑[a((n+1)/∏{p}[n+1, #]-1)+1]` -/
def P11396319477814267026.Spec : Prop :=
  ∀ n, (P11396319477814267026.a n : ℤ) = A129132 (n + 1)

theorem P11396319477814267026.correct : P11396319477814267026.Spec := by
  intro n
  simp only [A129132, Nat.add_sub_cancel]

end A129132

/-! ## A129132.P3712206422257230134

`∑[A051903(n+1)]`
-/

namespace A129132.P3712206422257230134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P3712206422257230134

namespace A129132

/-- `∑[A051903(n+1)]` -/
def P3712206422257230134.Spec : Prop :=
  ∀ n, P3712206422257230134.a n = A129132 (n + 1)

theorem P3712206422257230134.correct : P3712206422257230134.Spec := by
  intro n
  simp only [A129132, Nat.add_sub_cancel, A129132.P3712206422257230134.f1, A129132.P3712206422257230134.a, A129132.P11396319477814267026.f2, A129132.P11396319477814267026.f1, A129132.P11396319477814267026.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129132

/-! ## A129132.P4593365621642690101

`∑[A067132(n+1)-1]`
-/

namespace A129132.P4593365621642690101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P4593365621642690101

namespace A129132

/-- `∑[A067132(n+1)-1]` -/
def P4593365621642690101.Spec : Prop :=
  ∀ n, P4593365621642690101.a n = A129132 (n + 1)

theorem P4593365621642690101.correct : P4593365621642690101.Spec := by
  intro n
  simp only [A129132, Nat.add_sub_cancel, A129132.P4593365621642690101.f1, A129132.P4593365621642690101.a, A129132.P11396319477814267026.f2, A129132.P11396319477814267026.f1, A129132.P11396319477814267026.a, A067132, A067132.P2149404699775634079.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129132

/-! ## A129132.P18357683981074515799

`∑[val(A046523(n+1), 2)]`
-/

namespace A129132.P18357683981074515799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P18357683981074515799

namespace A129132

/-- `∑[val(A046523(n+1), 2)]` -/
def P18357683981074515799.Spec : Prop :=
  ∀ n, (P18357683981074515799.a n : ℤ) = A129132 (n + 1)

end A129132

/-! ## A129132.P10435606277159376900

`∑[val(A328400(n+1), 2)]`
-/

namespace A129132.P10435606277159376900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328400 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P10435606277159376900

namespace A129132

/-- `∑[val(A328400(n+1), 2)]` -/
def P10435606277159376900.Spec : Prop :=
  ∀ n, (P10435606277159376900.a n : ℤ) = A129132 (n + 1)

end A129132

/-! ## A129132.P5554621336850682553

`∑[A066301(n+1)]+n`
-/

namespace A129132.P5554621336850682553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A129132.P5554621336850682553

namespace A129132

/-- `∑[A066301(n+1)]+n` -/
def P5554621336850682553.Spec : Prop :=
  ∀ n, P5554621336850682553.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P6191837991152974338

`∑[A188385(n+1)/(n+1)]`
-/

namespace A129132.P6191837991152974338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188385 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P6191837991152974338

namespace A129132

/-- `∑[A188385(n+1)/(n+1)]` -/
def P6191837991152974338.Spec : Prop :=
  ∀ n, P6191837991152974338.a n = (A129132 (n + 1) : ℚ)

end A129132

/-! ## A129132.P17809789646198875951

`∑[A007814(A046523(n+1))]`
-/

namespace A129132.P17809789646198875951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P17809789646198875951

namespace A129132

/-- `∑[A007814(A046523(n+1))]` -/
def P17809789646198875951.Spec : Prop :=
  ∀ n, P17809789646198875951.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P7787465688971195920

`∑[A051282(A101296(n+1))]`
-/

namespace A129132.P7787465688971195920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (A101296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P7787465688971195920

namespace A129132

/-- `∑[A051282(A101296(n+1))]` -/
def P7787465688971195920.Spec : Prop :=
  ∀ n, P7787465688971195920.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P8271192552700162470

`∑[A067029(A089247(n+1))]`
-/

namespace A129132.P8271192552700162470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A089247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P8271192552700162470

namespace A129132

/-- `∑[A067029(A089247(n+1))]` -/
def P8271192552700162470.Spec : Prop :=
  ∀ n, P8271192552700162470.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P2051590180353074684

`∑[A001222(A238745(n+1))]`
-/

namespace A129132.P2051590180353074684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238745 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P2051590180353074684

namespace A129132

/-- `∑[A001222(A238745(n+1))]` -/
def P2051590180353074684.Spec : Prop :=
  ∀ n, P2051590180353074684.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P11474140621234094172

`∑[A061395(A181819(n+1))]`
-/

namespace A129132.P11474140621234094172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P11474140621234094172

namespace A129132

/-- `∑[A061395(A181819(n+1))]` -/
def P11474140621234094172.Spec : Prop :=
  ∀ n, P11474140621234094172.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P648359071154120897

`∑[A089309(A046523(n+1)-1)]`
-/

namespace A129132.P648359071154120897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A046523 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P648359071154120897

namespace A129132

/-- `∑[A089309(A046523(n+1)-1)]` -/
def P648359071154120897.Spec : Prop :=
  ∀ n, P648359071154120897.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P494417545330173620

`∑[A001222(A122111(∏{e}[n+1, A000040(#)]))]`
-/

namespace A129132.P494417545330173620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A122111 (∏ p ∈ Nat.primeFactors (f2 n), A000040 (Nat.factorization (f2 n) p)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P494417545330173620

namespace A129132

/-- `∑[A001222(A122111(∏{e}[n+1, A000040(#)]))]` -/
def P494417545330173620.Spec : Prop :=
  ∀ n, P494417545330173620.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P16815442390565722902

`∑[A051903(∑[A005408(n)])/2]`
-/

namespace A129132.P16815442390565722902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051903 (∑ j ∈ Finset.range (n + 1), f2 j).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P16815442390565722902

namespace A129132

/-- `∑[A051903(∑[A005408(n)])/2]` -/
def P16815442390565722902.Spec : Prop :=
  ∀ n, P16815442390565722902.a n = (A129132 (n + 1) : ℚ)

end A129132

/-! ## A129132.P12327710710667890916

`∑[A001222(A304180(n+1))]`
-/

namespace A129132.P12327710710667890916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A304180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P12327710710667890916

namespace A129132

/-- `∑[A001222(A304180(n+1))]` -/
def P12327710710667890916.Spec : Prop :=
  ∀ n, P12327710710667890916.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P7065669200869448382

`∑[A051904(A066638(n+1))]`
-/

namespace A129132.P7065669200869448382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A066638 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P7065669200869448382

namespace A129132

/-- `∑[A051904(A066638(n+1))]` -/
def P7065669200869448382.Spec : Prop :=
  ∀ n, P7065669200869448382.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P3305805901372531363

`∑[A071178(A085079(n+1))]`
-/

namespace A129132.P3305805901372531363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A085079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P3305805901372531363

namespace A129132

/-- `∑[A071178(A085079(n+1))]` -/
def P3305805901372531363.Spec : Prop :=
  ∀ n, P3305805901372531363.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P7713312437829713056

`∑[A061395(A293514(n+1))]`
-/

namespace A129132.P7713312437829713056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A293514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P7713312437829713056

namespace A129132

/-- `∑[A061395(A293514(n+1))]` -/
def P7713312437829713056.Spec : Prop :=
  ∀ n, P7713312437829713056.a n = A129132 (n + 1)

end A129132

/-! ## A129132.P13306018062433767565

`∑[A375359((n+1)²)]`
-/

namespace A129132.P13306018062433767565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129132.P13306018062433767565

namespace A129132

/-- `∑[A375359((n+1)²)]` -/
def P13306018062433767565.Spec : Prop :=
  ∀ n, P13306018062433767565.a n = A129132 (n + 1)

end A129132

/-!
# A129134: Expansion of (1 - phi(-q) * phi(-q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A129134, the canonical program `A129134.P13727256071399545709` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129134 has offset 1).

The definition of A129134 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129134.P13727256071399545709

`A002325(n+1)*(-1)^floor(n/2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A129134

/-- `A002325(n+1)*(-1)^floor(n/2)` -/
def P13727256071399545709.Spec : Prop :=
  ∀ n, P13727256071399545709.a n = (A129134 (n + 1) : ℚ)

end A129134

/-! ## A129134.P10980734889174711119

`1-(A082564(n+1)+2)/2`
-/

namespace A129134.P10980734889174711119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A082564 (n + 1) + 2 : ℚ) / 2

end

end A129134.P10980734889174711119

namespace A129134

/-- `1-(A082564(n+1)+2)/2` -/
def P10980734889174711119.Spec : Prop :=
  ∀ n, P10980734889174711119.a n = (A129134 (n + 1) : ℚ)

end A129134

/-! ## A129134.P5494391760198014801

`(1-and(2, n))*A002325(n+1)`
-/

namespace A129134.P5494391760198014801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A002325 (n + 1)

end

end A129134.P5494391760198014801

namespace A129134

/-- `(1-and(2, n))*A002325(n+1)` -/
def P5494391760198014801.Spec : Prop :=
  ∀ n, P5494391760198014801.a n = A129134 (n + 1)

end A129134

/-! ## A129134.P9667624195070681736

`A133692(n+1)/(n+1-xor(2, n+1))`
-/

namespace A129134.P9667624195070681736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133692 (n + 1) : ℚ) / ((n + 1 : ℤ) - (Nat.xor 2 (n + 1) : ℤ) : ℚ)

end

end A129134.P9667624195070681736

namespace A129134

/-- `A133692(n+1)/(n+1-xor(2, n+1))` -/
def P9667624195070681736.Spec : Prop :=
  ∀ n, P9667624195070681736.a n = (A129134 (n + 1) : ℚ)

end A129134

/-! ## A129134.P8244873109351186240

`A133693(A062828(n+1))`
-/

namespace A129134.P8244873109351186240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133693 (A062828 (n + 1)).toNat

end

end A129134.P8244873109351186240

namespace A129134

/-- `A133693(A062828(n+1))` -/
def P8244873109351186240.Spec : Prop :=
  ∀ n, P8244873109351186240.a n = A129134 (n + 1)

end A129134

/-! ## A129134.P10293221364611267956

`A087960(n)*A133693(n+1)`
-/

namespace A129134.P10293221364611267956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A133693 (n + 1)

end

end A129134.P10293221364611267956

namespace A129134

/-- `A087960(n)*A133693(n+1)` -/
def P10293221364611267956.Spec : Prop :=
  ∀ n, P10293221364611267956.a n = A129134 (n + 1)

end A129134

/-! ## A129134.P14673417844322879820

`A002325(n+1)-A028572(n+1)`
-/

namespace A129134.P14673417844322879820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) - A028572 (n + 1)

end

end A129134.P14673417844322879820

namespace A129134

/-- `A002325(n+1)-A028572(n+1)` -/
def P14673417844322879820.Spec : Prop :=
  ∀ n, P14673417844322879820.a n = A129134 (n + 1)

end A129134

/-! ## A129134.P4644006906801961955

`A033715(n+1)/2-A028572(n+1)`
-/

namespace A129134.P4644006906801961955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033715 (n + 1) : ℚ) / 2 - (A028572 (n + 1) : ℚ)

end

end A129134.P4644006906801961955

namespace A129134

/-- `A033715(n+1)/2-A028572(n+1)` -/
def P4644006906801961955.Spec : Prop :=
  ∀ n, P4644006906801961955.a n = (A129134 (n + 1) : ℚ)

end A129134

/-! ## A129134.P14159654978520456862

`A226225(n+1)-A245572(n+1)/2`
-/

namespace A129134.P14159654978520456862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226225 (n + 1) : ℚ) - (A245572 (n + 1) : ℚ) / 2

end

end A129134.P14159654978520456862

namespace A129134

/-- `A226225(n+1)-A245572(n+1)/2` -/
def P14159654978520456862.Spec : Prop :=
  ∀ n, P14159654978520456862.a n = (A129134 (n + 1) : ℚ)

end A129134

/-! ## A129134.P6712701891609372708

`A057077(2*n)/2*A139093(n+1)`
-/

namespace A129134.P6712701891609372708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057077 (2 * n) : ℚ) / 2 * (A139093 (n + 1) : ℚ)

end

end A129134.P6712701891609372708

namespace A129134

/-- `A057077(2*n)/2*A139093(n+1)` -/
def P6712701891609372708.Spec : Prop :=
  ∀ n, P6712701891609372708.a n = (A129134 (n + 1) : ℚ)

end A129134

/-! ## A129134.P5302333702217616376

`A087960(2*n)/2*A139093(n+1)`
-/

namespace A129134.P5302333702217616376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n) : ℚ) / 2 * (A139093 (n + 1) : ℚ)

end

end A129134.P5302333702217616376

namespace A129134

/-- `A087960(2*n)/2*A139093(n+1)` -/
def P5302333702217616376.Spec : Prop :=
  ∀ n, P5302333702217616376.a n = (A129134 (n + 1) : ℚ)

end A129134

/-! ## A129134.P5950862684759557926

`A033999(2*n+1)/2*A082564(n+1)`
-/

namespace A129134.P5950862684759557926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) : ℚ) / 2 * (A082564 (n + 1) : ℚ)

end

end A129134.P5950862684759557926

namespace A129134

/-- `A033999(2*n+1)/2*A082564(n+1)` -/
def P5950862684759557926.Spec : Prop :=
  ∀ n, P5950862684759557926.a n = (A129134 (n + 1) : ℚ)

end A129134

/-! ## A129134.P16572183616307547440

`A188510(2*n+1)/2*A033715(n+1)`
-/

namespace A129134.P16572183616307547440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188510 (2 * n + 1) : ℚ) / 2 * (A033715 (n + 1) : ℚ)

end

end A129134.P16572183616307547440

namespace A129134

/-- `A188510(2*n+1)/2*A033715(n+1)` -/
def P16572183616307547440.Spec : Prop :=
  ∀ n, P16572183616307547440.a n = (A129134 (n + 1) : ℚ)

end A129134

/-! ## A129134.P12465001564726094884

`A257170(2*n+1)/2*A033715(n+1)`
-/

namespace A129134.P12465001564726094884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257170 (2 * n + 1) : ℚ) / 2 * (A033715 (n + 1) : ℚ)

end

end A129134.P12465001564726094884

namespace A129134

/-- `A257170(2*n+1)/2*A033715(n+1)` -/
def P12465001564726094884.Spec : Prop :=
  ∀ n, P12465001564726094884.a n = (A129134 (n + 1) : ℚ)

end A129134

/-! ## A129134.P5179429389189793467

`A082564(n+1)/A082564(A014973(2*(n+1)))`
-/

namespace A129134.P5179429389189793467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082564 (n + 1) : ℚ) / (A082564 (A014973 (2 * (n + 1))).toNat : ℚ)

end

end A129134.P5179429389189793467

namespace A129134

/-- `A082564(n+1)/A082564(A014973(2*(n+1)))` -/
def P5179429389189793467.Spec : Prop :=
  ∀ n, P5179429389189793467.a n = (A129134 (n + 1) : ℚ)

end A129134

/-!
# A129135: Number of permutations of [n] with exactly 5 fixed points.

The programs for A129135, there is no canonical definition to state claims against.
-/

/-! ## A129135.P400901323909481642

`(n+5)*a(n-1)-(-1)^(n+5)*C(n+5, 5)` with `a(0)=1`
-/

namespace A129135.P400901323909481642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 5 : ℤ) * a (n - 1) - (-1) ^ (n + 5) * (Nat.choose (n + 5) 5 : ℤ)

end

end A129135.P400901323909481642

/-! ## A129135.P15993457181145625273

`C(n+5, 5)*A000166(n)`
-/

namespace A129135.P15993457181145625273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) * A000166 n

end

end A129135.P15993457181145625273

/-! ## A129135.P9226078646161003527

`A098825(A055999(n+3))`
-/

namespace A129135.P9226078646161003527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A055999 (n + 3)).toNat

end

end A129135.P9226078646161003527

/-! ## A129135.P13192504628827425890

`A098825(A000217(n+6)-6)`
-/

namespace A129135.P13192504628827425890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A000217 (n + 6) - 6).toNat

end

end A129135.P13192504628827425890

/-! ## A129135.P15052122381393490432

`∑[∑[A000292(n+1)]]*A000166(n)`
-/

namespace A129135.P15052122381393490432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000166 n

end

end A129135.P15052122381393490432

/-! ## A129135.P12162007586604243134

`A098825(A055998(n+2)+2*(n+4))`
-/

namespace A129135.P12162007586604243134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A055998 (n + 2) + (2 * (n + 4) : ℤ)).toNat

end

end A129135.P12162007586604243134

/-! ## A129135.P2465934788895025082

`A007318(A167499(n+4))*A000166(n)`
-/

namespace A129135.P2465934788895025082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167499 (n + 4)).toNat * A000166 n

end

end A129135.P2465934788895025082

/-! ## A129135.P12452632797828304518

`A135803(n+1)+A135803(n)-A135802(n+1)`
-/

namespace A129135.P12452632797828304518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135803 (n + 1) + (A135803 n - A135802 (n + 1))

end

end A129135.P12452632797828304518

/-!
# A129136: Permutations with exactly 6 fixed points.

The programs for A129136, there is no canonical definition to state claims against.
-/

/-! ## A129136.P11711500531253198049

`C(n+6, 6)*A000166(n)`
-/

namespace A129136.P11711500531253198049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) * A000166 n

end

end A129136.P11711500531253198049

/-! ## A129136.P13244526059573792062

`A098825(eq[7, A193739(n)])`
-/

namespace A129136.P13244526059573792062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129136.P13244526059573792062

/-! ## A129136.P9516051654060595238

`A299338(2*n)*A000166(n)`
-/

namespace A129136.P9516051654060595238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n) * A000166 n

end

end A129136.P9516051654060595238

/-! ## A129136.P15204001578955729441

`A098825(A000096(n+5)+n+1)`
-/

namespace A129136.P15204001578955729441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A129136.P15204001578955729441

/-! ## A129136.P5352973938529224712

`A000166(n)*A299338(A004277(n))`
-/

namespace A129136.P5352973938529224712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A299338 (A004277 n).toNat

end

end A129136.P5352973938529224712

/-! ## A129136.P17080494881766286865

`A000166(n)*A299338(A005408(n))`
-/

namespace A129136.P17080494881766286865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A299338 (A005408 n).toNat

end

end A129136.P17080494881766286865

/-! ## A129136.P8015850387723690083

`A000166(n)*A299338(A005843(n))`
-/

namespace A129136.P8015850387723690083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A299338 (A005843 n).toNat

end

end A129136.P8015850387723690083

/-! ## A129136.P2592773734131832111

`A135804(n+1)+A135804(n)-A135803(n+1)`
-/

namespace A129136.P2592773734131832111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135804 (n + 1) + (A135804 n - A135803 (n + 1))

end

end A129136.P2592773734131832111

/-!
# A129137: Number of trees on [n], rooted at 1, in which 2 is a descendant of 3.

The programs for A129137, there is no canonical definition to state claims against.
-/

/-! ## A129137.P1255299683432531241

`A057500(n+1)/A028310((n²-n)/2)`
-/

namespace A129137.P1255299683432531241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057500 (n + 1) : ℚ) / (A028310 (SequenceMachineLib.roundAway (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2)).toNat : ℚ)

end

end A129137.P1255299683432531241

/-! ## A129137.P11280068488984150434

`A057500(n+1)/A007318(A133263(n))`
-/

namespace A129137.P11280068488984150434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057500 (n + 1) : ℚ) / (A007318 (A133263 n).toNat : ℚ)

end

end A129137.P11280068488984150434

/-! ## A129137.P7590492579118256473

`A057500(n+1)/A179865(A028310(n))`
-/

namespace A129137.P7590492579118256473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057500 (n + 1) : ℚ) / (A179865 (A028310 n).toNat : ℚ)

end

end A129137.P7590492579118256473

/-! ## A129137.P6394352426405745524

`A106239(∑[n]+1)/A028310(A161680(n))`
-/

namespace A129137.P6394352426405745524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106239 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (A028310 (A161680 n).toNat : ℚ)

end

end A129137.P6394352426405745524

/-! ## A129137.P15566038055332096766

`A057500(n+1)/A049323(A152947(n+1))`
-/

namespace A129137.P15566038055332096766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057500 (n + 1) : ℚ) / (A049323 (A152947 (n + 1)).toNat : ℚ)

end

end A129137.P15566038055332096766

/-!
# A129138: a(n) = number of positive divisors of n that are <= phi(n), where phi(n) = A000010(n).

The programs for A129138, the canonical program `A129138.P16114292618221871354` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129138 has offset 1).

The definition of A129138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129138.P16114292618221871354

`A243987(∑[n]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129138

/-- `A243987(∑[n]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P16114292618221871354.Spec : Prop :=
  ∀ n, P16114292618221871354.a n = A129138 (n + 1)

theorem P16114292618221871354.correct : P16114292618221871354.Spec := by
  intro n
  simp only [A129138, Nat.add_sub_cancel]

end A129138

/-! ## A129138.P4942794507507647513

`A243987(A000010(n+1)+∑[n])`
-/

namespace A129138.P4942794507507647513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A000010 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A129138.P4942794507507647513

namespace A129138

/-- `A243987(A000010(n+1)+∑[n])` -/
def P4942794507507647513.Spec : Prop :=
  ∀ n, P4942794507507647513.a n = A129138 (n + 1)

end A129138

/-! ## A129138.P9408700534738580905

`A243987(∑[n+1]-A051953(n+1))`
-/

namespace A129138.P9408700534738580905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A051953 (n + 1)).toNat

end

end A129138.P9408700534738580905

namespace A129138

/-- `A243987(∑[n+1]-A051953(n+1))` -/
def P9408700534738580905.Spec : Prop :=
  ∀ n, P9408700534738580905.a n = A129138 (n + 1)

end A129138

/-! ## A129138.P7761287759367058912

`A243987(A000217(n)+A000010(n+1))`
-/

namespace A129138.P7761287759367058912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A000217 n + A000010 (n + 1)).toNat

end

end A129138.P7761287759367058912

namespace A129138

/-- `A243987(A000217(n)+A000010(n+1))` -/
def P7761287759367058912.Spec : Prop :=
  ∀ n, P7761287759367058912.a n = A129138 (n + 1)

end A129138

/-! ## A129138.P11141762607632032412

`A243987(A109606(n+1)+A000124(n))`
-/

namespace A129138.P11141762607632032412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A109606 (n + 1) + A000124 n).toNat

end

end A129138.P11141762607632032412

namespace A129138

/-- `A243987(A109606(n+1)+A000124(n))` -/
def P11141762607632032412.Spec : Prop :=
  ∀ n, P11141762607632032412.a n = A129138 (n + 1)

end A129138

/-! ## A129138.P5320033222884731707

`A243987(A000217(n)+sqrt(A127473(n+1)))`
-/

namespace A129138.P5320033222884731707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (SequenceMachineLib.roundAway ((A000217 n : ℝ) + Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A129138.P5320033222884731707

namespace A129138

/-- `A243987(A000217(n)+sqrt(A127473(n+1)))` -/
def P5320033222884731707.Spec : Prop :=
  ∀ n, P5320033222884731707.a n = A129138 (n + 1)

end A129138

/-! ## A129138.P8236927364342727437

`A243987(A000124(n)+A000010(n+1)-1)`
-/

namespace A129138.P8236927364342727437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A000124 n + (A000010 (n + 1) - 1)).toNat

end

end A129138.P8236927364342727437

namespace A129138

/-- `A243987(A000124(n)+A000010(n+1)-1)` -/
def P8236927364342727437.Spec : Prop :=
  ∀ n, P8236927364342727437.a n = A129138 (n + 1)

end A129138

/-! ## A129138.P12223561883638160917

`A243987(A000217(n)+∑{d}[n+1, (n+1)/#*A008683(#)])`
-/

namespace A129138.P12223561883638160917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))).toNat

end

end A129138.P12223561883638160917

namespace A129138

/-- `A243987(A000217(n)+∑{d}[n+1, (n+1)/#*A008683(#)])` -/
def P12223561883638160917.Spec : Prop :=
  ∀ n, P12223561883638160917.a n = A129138 (n + 1)

end A129138

/-! ## A129138.P16218208100146969349

`A000005(n+1)-floor(A118759(n)/A000010(n+1))`
-/

namespace A129138.P16218208100146969349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - ⌊(A118759 n : ℚ) / (A000010 (n + 1) : ℚ)⌋

end

end A129138.P16218208100146969349

namespace A129138

/-- `A000005(n+1)-floor(A118759(n)/A000010(n+1))` -/
def P16218208100146969349.Spec : Prop :=
  ∀ n, P16218208100146969349.a n = A129138 (n + 1)

end A129138

/-!
# A129139: a(n) = number of positive integers which are coprime to n and are <= d(n), where d(n) = A000005(n).

The programs for A129139, the canonical program `A129139.P5076504983765274251` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129139 has offset 1).

The definition of A129139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129139.P5076504983765274251

`A078401(A000217(n)+A000005(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129139

/-- `A078401(A000217(n)+A000005(n+1))` -/
def P5076504983765274251.Spec : Prop :=
  ∀ n, P5076504983765274251.a n = A129139 (n + 1)

theorem P5076504983765274251.correct : P5076504983765274251.Spec := by
  intro n
  simp only [A129139, Nat.add_sub_cancel]

end A129139

/-!
# A129142: Start with the empty sequence and append in step k the consecutive numbers 2^k-1 to 2^k+k-2.

The programs for A129142, there is no canonical definition to state claims against.
-/

/-! ## A129142.P8686199808444599531

`2^(row(n)+1)+col(n)-1`
-/

namespace A129142.P8686199808444599531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (SequenceMachineLib.triRow n + 1) : ℤ) + ((SequenceMachineLib.triCol n : ℤ) - 1)

end

end A129142.P8686199808444599531

/-! ## A129142.P13176004387919880640

`A127330(n)+1`
-/

namespace A129142.P13176004387919880640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 n + 1

end

end A129142.P13176004387919880640

/-! ## A129142.P1357013027821032240

`A129143(comp[∑[n]])-1`
-/

namespace A129142.P1357013027821032240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129143 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A129142.P1357013027821032240

/-! ## A129142.P12559791482096163328

`record[A061338(n+1)+n]`
-/

namespace A129142.P12559791482096163328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129142.P12559791482096163328

/-! ## A129142.P16118824193105130912

`record[A162439(n+1)+n]`
-/

namespace A129142.P16118824193105130912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162439 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129142.P16118824193105130912

/-! ## A129142.P11731681843336391350

`A084634(∑[char[∑[n+1]]])+n`
-/

namespace A129142.P11731681843336391350
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084634 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A129142.P11731681843336391350

/-! ## A129142.P11866272680822543803

`A014844(∑[char[∑[n]]])-1+n`
-/

namespace A129142.P11866272680822543803
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014844 (∑ j ∈ Finset.range (n + 1), f1 j) - 1 + (n : ℤ)

end

end A129142.P11866272680822543803

/-! ## A129142.P15685611787754187208

`∏[char[∑[n]]+1]-(1-A002262(n))`
-/

namespace A129142.P15685611787754187208
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (1 - A002262 n)

end

end A129142.P15685611787754187208

/-! ## A129142.P11516531261247602469

`2^∑[char[∑[n]]]+A002260(n+1)-2`
-/

namespace A129142.P11516531261247602469
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + (A002260 (n + 1) - 2)

end

end A129142.P11516531261247602469

/-!
# A129143: Start with the empty sequence and append in step k the consecutive numbers 2^(k-1) to 2^(k-1)+k-1.

The programs for A129143, the canonical program `A129143.P15988714660412797946` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129143 has offset 1).

The definition of A129143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129143.P8727534711859220621

`2^row(n)+col(n)`
-/

namespace A129143.P8727534711859220621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.triRow n + SequenceMachineLib.triCol n

end

end A129143.P8727534711859220621

namespace A129143

/-- `2^row(n)+col(n)` -/
def P8727534711859220621.Spec : Prop :=
  ∀ n, (P8727534711859220621.a n : ℤ) = A129143 (n + 1)

end A129143

/-! ## A129143.P15988714660412797946

`A137688(n)+A002262(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129143

/-- `A137688(n)+A002262(n)` -/
def P15988714660412797946.Spec : Prop :=
  ∀ n, P15988714660412797946.a n = A129143 (n + 1)

theorem P15988714660412797946.correct : P15988714660412797946.Spec := by
  intro n
  simp only [A129143, Nat.add_sub_cancel]

end A129143

/-! ## A129143.P18356731133120026786

`A002262(n)+Δ[A007664(n)]`
-/

namespace A129143.P18356731133120026786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (f1 (n + 1) - f1 n)

end

end A129143.P18356731133120026786

namespace A129143

/-- `A002262(n)+Δ[A007664(n)]` -/
def P18356731133120026786.Spec : Prop :=
  ∀ n, P18356731133120026786.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P2764155653201741216

`A002262(n)+A140513(n)/2`
-/

namespace A129143.P2764155653201741216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) + (A140513 n : ℚ) / 2

end

end A129143.P2764155653201741216

namespace A129143

/-- `A002262(n)+A140513(n)/2` -/
def P2764155653201741216.Spec : Prop :=
  ∀ n, P2764155653201741216.a n = (A129143 (n + 1) : ℚ)

theorem P2764155653201741216.correct : P2764155653201741216.Spec := by
  intro n
  simp only [A129143, Nat.add_sub_cancel, A129143.P2764155653201741216.a, A129143.P15988714660412797946.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A140513, A140513.P13579608035938851890.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A129143

/-! ## A129143.P6259040199673100605

`log2(A059268(n))+A140513(n)/2`
-/

namespace A129143.P6259040199673100605
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) + ((A140513 n : ℚ) / 2 : ℝ)

end

end A129143.P6259040199673100605

namespace A129143

/-- `log2(A059268(n))+A140513(n)/2` -/
def P6259040199673100605.Spec : Prop :=
  ∀ n, P6259040199673100605.a n = (A129143 (n + 1) : ℝ)

end A129143

/-! ## A129143.P10897633106303926410

`A002260(n+1)+A137688(n)-1`
-/

namespace A129143.P10897633106303926410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A137688 n - 1)

end

end A129143.P10897633106303926410

namespace A129143

/-- `A002260(n+1)+A137688(n)-1` -/
def P10897633106303926410.Spec : Prop :=
  ∀ n, P10897633106303926410.a n = A129143 (n + 1)

theorem P10897633106303926410.correct : P10897633106303926410.Spec := by
  intro n
  simp only [A129143, Nat.add_sub_cancel, A129143.P10897633106303926410.a, A129143.P15988714660412797946.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A129143

/-! ## A129143.P7869554299572149306

`A002260(n+1)+Δ[A007664(n)]-1`
-/

namespace A129143.P7869554299572149306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A129143.P7869554299572149306

namespace A129143

/-- `A002260(n+1)+Δ[A007664(n)]-1` -/
def P7869554299572149306.Spec : Prop :=
  ∀ n, P7869554299572149306.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P1068412470451006089

`2^A003056(n)+A002260(n+1)-1`
-/

namespace A129143.P1068412470451006089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ) + (A002260 (n + 1) - 1 : ℚ)

end

end A129143.P1068412470451006089

namespace A129143

/-- `2^A003056(n)+A002260(n+1)-1` -/
def P1068412470451006089.Spec : Prop :=
  ∀ n, P1068412470451006089.a n = (A129143 (n + 1) : ℚ)

end A129143

/-! ## A129143.P2831881295876415525

`A002262(n)+A000079(A003056(n))`
-/

namespace A129143.P2831881295876415525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000079 (A003056 n).toNat

end

end A129143.P2831881295876415525

namespace A129143

/-- `A002262(n)+A000079(A003056(n))` -/
def P2831881295876415525.Spec : Prop :=
  ∀ n, P2831881295876415525.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P11266046273850471427

`A223541(A057944(n))+A002262(n)`
-/

namespace A129143.P11266046273850471427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (A057944 n).toNat + A002262 n

end

end A129143.P11266046273850471427

namespace A129143

/-- `A223541(A057944(n))+A002262(n)` -/
def P11266046273850471427.Spec : Prop :=
  ∀ n, P11266046273850471427.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P7022253455354419647

`A002260(n+1)+A000225(A003056(n))`
-/

namespace A129143.P7022253455354419647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A000225 (A003056 n).toNat

end

end A129143.P7022253455354419647

namespace A129143

/-- `A002260(n+1)+A000225(A003056(n))` -/
def P7022253455354419647.Spec : Prop :=
  ∀ n, P7022253455354419647.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P10605245981925911421

`A011782(A002024(n+1))+A002262(n)`
-/

namespace A129143.P10605245981925911421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002024 (n + 1)).toNat + A002262 n

end

end A129143.P10605245981925911421

namespace A129143

/-- `A011782(A002024(n+1))+A002262(n)` -/
def P10605245981925911421.Spec : Prop :=
  ∀ n, P10605245981925911421.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P10060400640848280389

`A276618(A025581(n)+n)+A002262(n)`
-/

namespace A129143.P10060400640848280389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (A025581 n + (n : ℤ)).toNat + A002262 n

end

end A129143.P10060400640848280389

namespace A129143

/-- `A276618(A025581(n)+n)+A002262(n)` -/
def P10060400640848280389.Spec : Prop :=
  ∀ n, P10060400640848280389.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P13791038092477516759

`A013620(n-A002262(n))+A002262(n)`
-/

namespace A129143.P13791038092477516759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A129143.P13791038092477516759

namespace A129143

/-- `A013620(n-A002262(n))+A002262(n)` -/
def P13791038092477516759.Spec : Prop :=
  ∀ n, P13791038092477516759.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P17824841646856094452

`A036561(n-A002262(n))+A002262(n)`
-/

namespace A129143.P17824841646856094452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A129143.P17824841646856094452

namespace A129143

/-- `A036561(n-A002262(n))+A002262(n)` -/
def P17824841646856094452.Spec : Prop :=
  ∀ n, P17824841646856094452.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P5375327605116777635

`A038207(n-A002262(n))+A002262(n)`
-/

namespace A129143.P5375327605116777635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A129143.P5375327605116777635

namespace A129143

/-- `A038207(n-A002262(n))+A002262(n)` -/
def P5375327605116777635.Spec : Prop :=
  ∀ n, P5375327605116777635.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P5044844568066966643

`A048483(n-A002262(n))+A002262(n)`
-/

namespace A129143.P5044844568066966643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048483 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A129143.P5044844568066966643

namespace A129143

/-- `A048483(n-A002262(n))+A002262(n)` -/
def P5044844568066966643.Spec : Prop :=
  ∀ n, P5044844568066966643.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P17004741216020810587

`A054582(n-A002262(n))+A002262(n)`
-/

namespace A129143.P17004741216020810587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A129143.P17004741216020810587

namespace A129143

/-- `A054582(n-A002262(n))+A002262(n)` -/
def P17004741216020810587.Spec : Prop :=
  ∀ n, P17004741216020810587.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P10038657941654534192

`A055248(n-A002262(n))+A002262(n)`
-/

namespace A129143.P10038657941654534192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A129143.P10038657941654534192

namespace A129143

/-- `A055248(n-A002262(n))+A002262(n)` -/
def P10038657941654534192.Spec : Prop :=
  ∀ n, P10038657941654534192.a n = A129143 (n + 1)

end A129143

/-! ## A129143.P17729183935994598345

`A059473(n-A002262(n))+A002262(n)`
-/

namespace A129143.P17729183935994598345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059473 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A129143.P17729183935994598345

namespace A129143

/-- `A059473(n-A002262(n))+A002262(n)` -/
def P17729183935994598345.Spec : Prop :=
  ∀ n, P17729183935994598345.a n = A129143 (n + 1)

end A129143

/-!
# A129144: a(1)=a(2)=1; for n>2: a(n) = (s = sum of all previous terms) minus (maximal square less than s).

The programs for A129144, the canonical program `A129144.P14517758672769090595` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129144 has offset 1).

The definition of A129144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129144.P14517758672769090595

`Δ[A171746(a(n-2))+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129144

/-- `Δ[A171746(a(n-2))+a(n-1)]` -/
def P14517758672769090595.Spec : Prop :=
  ∀ n, P14517758672769090595.a n = A129144 (n + 1)

theorem P14517758672769090595.correct : P14517758672769090595.Spec := by
  intro n
  simp only [A129144, Nat.add_sub_cancel]

end A129144

/-! ## A129144.P15407489285896439768

`Δ[A094761(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A129144.P15407489285896439768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  A094761 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129144.P15407489285896439768

namespace A129144

/-- `Δ[A094761(a(n-1))]` -/
def P15407489285896439768.Spec : Prop :=
  ∀ n, P15407489285896439768.a n = A129144 (n + 1)

end A129144

/-! ## A129144.P15417120751471767101

`Δ[A071797(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A129144.P15417120751471767101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A071797 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129144.P15417120751471767101

namespace A129144

/-- `Δ[A071797(a(n-1))+a(n-1)]` -/
def P15417120751471767101.Spec : Prop :=
  ∀ n, P15417120751471767101.a n = A129144 (n + 1)

end A129144

/-! ## A129144.P10429271393801375904

`Δ[A053186(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A129144.P10429271393801375904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  A053186 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129144.P10429271393801375904

namespace A129144

/-- `Δ[A053186(a(n-1))+a(n-1)]` -/
def P10429271393801375904.Spec : Prop :=
  ∀ n, P10429271393801375904.a n = A129144 (n + 1)

end A129144

/-! ## A129144.P15826307037023491517

`Δ[2*a(n-1)-A048760(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A129144.P15826307037023491517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  2 * f1 (n - 1) - A048760 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129144.P15826307037023491517

namespace A129144

/-- `Δ[2*a(n-1)-A048760(a(n-1))]` -/
def P15826307037023491517.Spec : Prop :=
  ∀ n, P15826307037023491517.a n = A129144 (n + 1)

end A129144

/-! ## A129144.P16746360060354227789

`A053186(A094763(floor(n-atan(n))))`
-/

namespace A129144.P16746360060354227789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A094763 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat).toNat

end

end A129144.P16746360060354227789

namespace A129144

/-- `A053186(A094763(floor(n-atan(n))))` -/
def P16746360060354227789.Spec : Prop :=
  ∀ n, P16746360060354227789.a n = A129144 (n + 1)

end A129144

/-!
# A129145: Alternately odd prime and odd composite numbers.

The programs for A129145, there is no canonical definition to state claims against.
-/

/-! ## A129145.P10696750643265530776

`A073920(A129131(n+1))`
-/

namespace A129145.P10696750643265530776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073920 (A129131 (n + 1)).toNat

end

end A129145.P10696750643265530776

/-! ## A129145.P8243899604370373586

`A073920(A066249(n+1)+1)`
-/

namespace A129145.P8243899604370373586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073920 (A066249 (n + 1) + 1).toNat

end

end A129145.P8243899604370373586

/-! ## A129145.P5495671296802580061

`A073920(A067747(xor(1, n)+1))`
-/

namespace A129145.P5495671296802580061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073920 (A067747 (Nat.xor 1 n + 1)).toNat

end

end A129145.P5495671296802580061

/-! ## A129145.P16778653726099138531

`A073920(A073846(xor(1, n+2)))`
-/

namespace A129145.P16778653726099138531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073920 (A073846 (Nat.xor 1 (n + 2))).toNat

end

end A129145.P16778653726099138531

/-! ## A129145.P1002832228011213407

`A073920(abs(Δ[A073891(n+1)]))`
-/

namespace A129145.P1002832228011213407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073920 |f1 (n + 1) - f1 n|.toNat

end

end A129145.P1002832228011213407

/-! ## A129145.P15855904657460105084

`A073920(A073846(1-xor(n, -2)))`
-/

namespace A129145.P15855904657460105084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073920 (A073846 (1 - Int.xor (n : ℤ) (-2)).toNat).toNat

end

end A129145.P15855904657460105084

/-! ## A129145.P8109069142553456874

`A073920(A067747(2*or(1, n)-n))`
-/

namespace A129145.P8109069142553456874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073920 (A067747 (2 * Nat.lor 1 n - n)).toNat

end

end A129145.P8109069142553456874

/-!
# A129146: a(n) = n-th odd prime minus n-th odd composite number.

The programs for A129146, the canonical program `A129146.P11255753064502351239` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129146 has offset 1).

The definition of A129146 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129146.P11255753064502351239

`A065091(n+1)-A071904(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129146

/-- `A065091(n+1)-A071904(n+1)` -/
def P11255753064502351239.Spec : Prop :=
  ∀ n, P11255753064502351239.a n = A129146 (n + 1)

theorem P11255753064502351239.correct : P11255753064502351239.Spec := by
  intro n
  simp only [A129146, Nat.add_sub_cancel]

end A129146

/-! ## A129146.P4284501150800409514

`A154115(n+1)-A146538(n+1)`
-/

namespace A129146.P4284501150800409514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) - A146538 (n + 1)

end

end A129146.P4284501150800409514

namespace A129146

/-- `A154115(n+1)-A146538(n+1)` -/
def P4284501150800409514.Spec : Prop :=
  ∀ n, P4284501150800409514.a n = A129146 (n + 1)

theorem P4284501150800409514.correct : P4284501150800409514.Spec := by
  intro n
  simp only [A129146, Nat.add_sub_cancel, A129146.P4284501150800409514.a, A129146.P11255753064502351239.a, A065091, A065091.P6971844946592549357.a, A071904, A071904.P6554188440157640390.a, A146538, A146538.P8666981964067901687.a, A154115, A154115.P220062109648616098.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A086801, A086801.P17699144881820784956.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129146

/-! ## A129146.P16509023543411558677

`∑[A001223(n+1)]-A007921(n+1)`
-/

namespace A129146.P16509023543411558677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007921 (n + 1)

end

end A129146.P16509023543411558677

namespace A129146

/-- `∑[A001223(n+1)]-A007921(n+1)` -/
def P16509023543411558677.Spec : Prop :=
  ∀ n, P16509023543411558677.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P8109902568266248447

`2*A005097(n+1)-A309355(n+1)`
-/

namespace A129146.P8109902568266248447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005097 (n + 1) - A309355 (n + 1)

end

end A129146.P8109902568266248447

namespace A129146

/-- `2*A005097(n+1)-A309355(n+1)` -/
def P8109902568266248447.Spec : Prop :=
  ∀ n, P8109902568266248447.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P5899406721935219304

`2*(A067076(n+1)-comp[A067076(n+1)])`
-/

namespace A129146.P5899406721935219304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A067076 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A129146.P5899406721935219304

namespace A129146

/-- `2*(A067076(n+1)-comp[A067076(n+1)])` -/
def P5899406721935219304.Spec : Prop :=
  ∀ n, P5899406721935219304.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P2233112377024073500

`A067076(n+1)+A067076(n+1)-A146538(n+1)`
-/

namespace A129146.P2233112377024073500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + (A067076 (n + 1) - A146538 (n + 1))

end

end A129146.P2233112377024073500

namespace A129146

/-- `A067076(n+1)+A067076(n+1)-A146538(n+1)` -/
def P2233112377024073500.Spec : Prop :=
  ∀ n, P2233112377024073500.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P8189684168495826590

`A210497(n+1)-(A071904(n+1)+A001223(n+1))`
-/

namespace A129146.P8189684168495826590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) - (A071904 (n + 1) + A001223 (n + 1))

end

end A129146.P8189684168495826590

namespace A129146

/-- `A210497(n+1)-(A071904(n+1)+A001223(n+1))` -/
def P8189684168495826590.Spec : Prop :=
  ∀ n, P8189684168495826590.a n = A129146 (n + 1)

theorem P8189684168495826590.correct : P8189684168495826590.Spec := by
  intro n
  simp only [A129146, Nat.add_sub_cancel, A129146.P8189684168495826590.a, A129146.P11255753064502351239.a, A001223, A001223.P5034056745985311719.a, A065091, A065091.P6971844946592549357.a, A071904, A071904.P6554188440157640390.a, A210497, A210497.P11511747503835237208.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129146

/-! ## A129146.P5256640854338029880

`A040976(n+2)-A007921(n+1)`
-/

namespace A129146.P5256640854338029880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2) - A007921 (n + 1)

end

end A129146.P5256640854338029880

namespace A129146

/-- `A040976(n+2)-A007921(n+1)` -/
def P5256640854338029880.Spec : Prop :=
  ∀ n, P5256640854338029880.a n = A129146 (n + 1)

theorem P5256640854338029880.correct : P5256640854338029880.Spec := by
  intro n
  simp only [A129146, Nat.add_sub_cancel, A129146.P5256640854338029880.a, A129146.P11255753064502351239.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A040976, A040976.P11599754272797435513.a, A065091, A065091.P6971844946592549357.a, A071904, A071904.P6554188440157640390.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129146

/-! ## A129146.P10599713592273601298

`A000040(n+2)-A071904(n+1)`
-/

namespace A129146.P10599713592273601298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A071904 (n + 1)

end

end A129146.P10599713592273601298

namespace A129146

/-- `A000040(n+2)-A071904(n+1)` -/
def P10599713592273601298.Spec : Prop :=
  ∀ n, P10599713592273601298.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P12752599901227086526

`A006005(n+2)-A071904(n+1)`
-/

namespace A129146.P12752599901227086526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) - A071904 (n + 1)

end

end A129146.P12752599901227086526

namespace A129146

/-- `A006005(n+2)-A071904(n+1)` -/
def P12752599901227086526.Spec : Prop :=
  ∀ n, P12752599901227086526.a n = A129146 (n + 1)

theorem P12752599901227086526.correct : P12752599901227086526.Spec := by
  intro n
  simp only [A129146, Nat.add_sub_cancel, A129146.P12752599901227086526.a, A129146.P11255753064502351239.a, A006005, A006005.P1228063357782503489.a, A065091, A065091.P6971844946592549357.a, A071904, A071904.P6554188440157640390.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129146

/-! ## A129146.P3208646900128644326

`A065091(n+1)-A014076(n+2)`
-/

namespace A129146.P3208646900128644326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A014076 (n + 2)

end

end A129146.P3208646900128644326

namespace A129146

/-- `A065091(n+1)-A014076(n+2)` -/
def P3208646900128644326.Spec : Prop :=
  ∀ n, P3208646900128644326.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P7607909568489608638

`A086801(n+2)-A146538(n+1)`
-/

namespace A129146.P7607909568489608638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 2) - A146538 (n + 1)

end

end A129146.P7607909568489608638

namespace A129146

/-- `A086801(n+2)-A146538(n+1)` -/
def P7607909568489608638.Spec : Prop :=
  ∀ n, P7607909568489608638.a n = A129146 (n + 1)

theorem P7607909568489608638.correct : P7607909568489608638.Spec := by
  intro n
  simp only [A129146, Nat.add_sub_cancel, A129146.P7607909568489608638.a, A129146.P11255753064502351239.a, A065091, A065091.P6971844946592549357.a, A071904, A071904.P6554188440157640390.a, A086801, A086801.P17699144881820784956.a, A146538, A146538.P8666981964067901687.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129146

/-! ## A129146.P2370398155897092815

`A006093(n+2)-A309355(n+1)`
-/

namespace A129146.P2370398155897092815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) - A309355 (n + 1)

end

end A129146.P2370398155897092815

namespace A129146

/-- `A006093(n+2)-A309355(n+1)` -/
def P2370398155897092815.Spec : Prop :=
  ∀ n, P2370398155897092815.a n = A129146 (n + 1)

theorem P2370398155897092815.correct : P2370398155897092815.Spec := by
  intro n
  simp only [A129146, Nat.add_sub_cancel, A129146.P2370398155897092815.a, A129146.P11255753064502351239.a, A006093, A006093.P2906174024863549003.a, A065091, A065091.P6971844946592549357.a, A071904, A071904.P6554188440157640390.a, A309355, A309355.P9345418795961828822.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129146

/-! ## A129146.P14630543562928605575

`A039915(n+2)-A309355(n+1)`
-/

namespace A129146.P14630543562928605575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 2) - A309355 (n + 1)

end

end A129146.P14630543562928605575

namespace A129146

/-- `A039915(n+2)-A309355(n+1)` -/
def P14630543562928605575.Spec : Prop :=
  ∀ n, P14630543562928605575.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P9679916485372751111

`A000040(n+2)-A014076(n+2)`
-/

namespace A129146.P9679916485372751111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A014076 (n + 2)

end

end A129146.P9679916485372751111

namespace A129146

/-- `A000040(n+2)-A014076(n+2)` -/
def P9679916485372751111.Spec : Prop :=
  ∀ n, P9679916485372751111.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P6708751386886698971

`A006005(n+2)-A014076(n+2)`
-/

namespace A129146.P6708751386886698971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) - A014076 (n + 2)

end

end A129146.P6708751386886698971

namespace A129146

/-- `A006005(n+2)-A014076(n+2)` -/
def P6708751386886698971.Spec : Prop :=
  ∀ n, P6708751386886698971.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P14532884654403090154

`A078916(n+2)-A165955(n+2)`
-/

namespace A129146.P14532884654403090154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 2) - A165955 (n + 2)

end

end A129146.P14532884654403090154

namespace A129146

/-- `A078916(n+2)-A165955(n+2)` -/
def P14532884654403090154.Spec : Prop :=
  ∀ n, P14532884654403090154.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P17686966697192872961

`A174008(n+2)-A165955(n+2)`
-/

namespace A129146.P17686966697192872961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174008 (n + 2) - A165955 (n + 2)

end

end A129146.P17686966697192872961

namespace A129146

/-- `A174008(n+2)-A165955(n+2)` -/
def P17686966697192872961.Spec : Prop :=
  ∀ n, P17686966697192872961.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P2961071469001139255

`A000040(n+2)-eq[1, A107393(n)]`
-/

namespace A129146.P2961071469001139255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A129146.P2961071469001139255

namespace A129146

/-- `A000040(n+2)-eq[1, A107393(n)]` -/
def P2961071469001139255.Spec : Prop :=
  ∀ n, P2961071469001139255.a n = A129146 (n + 1)

end A129146

/-! ## A129146.P12610118128438282189

`sqrt(A001248(n+2))-A014076(n+2)`
-/

namespace A129146.P12610118128438282189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 2) : ℝ) - (A014076 (n + 2) : ℝ)

end

end A129146.P12610118128438282189

namespace A129146

/-- `sqrt(A001248(n+2))-A014076(n+2)` -/
def P12610118128438282189.Spec : Prop :=
  ∀ n, P12610118128438282189.a n = (A129146 (n + 1) : ℝ)

end A129146

/-!
# A129147: Expansion of c(x(1+2x)), c(x) the g.f. of A000108.

The programs for A129147, there is no canonical definition to state claims against.
-/

/-! ## A129147.P15664471253177783358

`A025229(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A129147.P15664471253177783358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025229 (n + 1) - 2 * a (n - 1)

end

end A129147.P15664471253177783358

/-! ## A129147.P8144824348419823030

`A025239(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A129147.P8144824348419823030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025239 (n + 1) - 2 * a (n - 1)

end

end A129147.P8144824348419823030

/-! ## A129147.P15142825741441920453

`A112689(A151066(n)+A151058(n))`
-/

namespace A129147.P15142825741441920453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A151066 n + A151058 n).toNat

end

end A129147.P15142825741441920453

/-!
# A129148: Expansion of (1-x-sqrt(1-6*x-7*x^2))/(2*(1+2*x)).

The programs for A129148, there is no canonical definition to state claims against.
-/

/-! ## A129148.P12776063486235120176

`abs(Δ[A166078(n)])`
-/

namespace A129148.P12776063486235120176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129148.P12776063486235120176

/-! ## A129148.P6460025482008520976

`record[Δ[A166078(A008611(n))]]`
-/

namespace A129148.P6460025482008520976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166078 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129148.P6460025482008520976

/-! ## A129148.P3115201471414002146

`abs(A166078(n+1)-A166078(n))`
-/

namespace A129148.P3115201471414002146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166078 (n + 1) - A166078 n|

end

end A129148.P3115201471414002146

/-! ## A129148.P1632392810050511849

`lcm(Δ[A166078(n)], A043537(n+1))`
-/

namespace A129148.P1632392810050511849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A043537 (n + 1))

end

end A129148.P1632392810050511849

/-! ## A129148.P15130422616196266467

`gcd(A166078(n+1)-A166078(n), A000038(n))`
-/

namespace A129148.P15130422616196266467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166078 (n + 1) - A166078 n) (A000038 n)

end

end A129148.P15130422616196266467

/-!
# A129149: Permutations with exactly 7 fixed points.

The programs for A129149, there is no canonical definition to state claims against.
-/

/-! ## A129149.P16390952741171932457

`C(n+7, 7)*A000166(n)`
-/

namespace A129149.P16390952741171932457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * A000166 n

end

end A129149.P16390952741171932457

/-! ## A129149.P8047084552476070010

`abs(A182386(n))*C(n+7, 7)`
-/

namespace A129149.P8047084552476070010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| * (Nat.choose (n + 7) 7 : ℤ)

end

end A129149.P8047084552476070010

/-! ## A129149.P8530517363738272565

`C(n+7, 7)*A008290(∑[n])`
-/

namespace A129149.P8530517363738272565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129149.P8530517363738272565

/-! ## A129149.P651395449699290586

`A000166(n)*A000580(n+7)`
-/

namespace A129149.P651395449699290586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A000580 (n + 7)

end

end A129149.P651395449699290586

/-! ## A129149.P127156188963197560

`∑[A299338(2*n)]*A000166(n)`
-/

namespace A129149.P127156188963197560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000166 n

end

end A129149.P127156188963197560

/-! ## A129149.P10508971867301718911

`A000580(n+7)*A008290(A000217(n))`
-/

namespace A129149.P10508971867301718911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A008290 (A000217 n).toNat

end

end A129149.P10508971867301718911

/-! ## A129149.P18127106161318621082

`A000580(n+7)*A047920(A000096(n))`
-/

namespace A129149.P18127106161318621082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A047920 (A000096 n).toNat

end

end A129149.P18127106161318621082

/-! ## A129149.P13636020389184960248

`A135805(n+1)+A135805(n)-A135804(n+1)`
-/

namespace A129149.P13636020389184960248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135805 (n + 1) + (A135805 n - A135804 (n + 1))

end

end A129149.P13636020389184960248

/-! ## A129149.P1641575219318574323

`A098825(eq[8, A193739(n)])`
-/

namespace A129149.P1641575219318574323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129149.P1641575219318574323

/-!
# A129150: The n-th arithmetic derivative of 2^3.

The programs for A129150, there is no canonical definition to state claims against.
-/

/-! ## A129150.P1834622579099791095

`A090636(n+2)`
-/

namespace A129150.P1834622579099791095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090636 (n + 2)

end

end A129150.P1834622579099791095

/-! ## A129150.P17033784080869594313

`4*A129284(n)`
-/

namespace A129150.P17033784080869594313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A129284 n

end

end A129150.P17033784080869594313

/-! ## A129150.P17754856175930106965

`A258651(A000096(n+7)+9)`
-/

namespace A129150.P17754856175930106965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (A000096 (n + 7) + 9).toNat

end

end A129150.P17754856175930106965

/-! ## A129150.P10164392238240087294

`A258651(A000217(n+9)-(n+1))`
-/

namespace A129150.P10164392238240087294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A129150.P10164392238240087294

/-! ## A129150.P1091658720857033785

`record[4*(A129285(A008611(n))-A000038(n))]`
-/

namespace A129150.P1091658720857033785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A129285 (A008611 n).toNat - A000038 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129150.P1091658720857033785

/-!
# A129151: The n-th arithmetic derivative of 3^4.

The programs for A129151, there is no canonical definition to state claims against.
-/

/-! ## A129151.P16145239259148006265

`27*A129285(n)`
-/

namespace A129151.P16145239259148006265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A129285 n

end

end A129151.P16145239259148006265

/-! ## A129151.P7050308837008191117

`27*A129284(n+1)`
-/

namespace A129151.P7050308837008191117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A129284 (n + 1)

end

end A129151.P7050308837008191117

/-! ## A129151.P17361385722942961895

`Δ[27*∑[A129284(n)]]`
-/

namespace A129151.P17361385722942961895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129151.P17361385722942961895

/-! ## A129151.P3167314838789245127

`27*A129150(n+1)/4`
-/

namespace A129151.P3167314838789245127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  27 * ((A129150 (n + 1) : ℚ) / 4)

end

end A129151.P3167314838789245127

/-! ## A129151.P4315882078110769962

`27*record[A129284(abs(1-n))]`
-/

namespace A129151.P4315882078110769962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129284 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129151.P4315882078110769962

/-!
# A129153: Rencontres numbers: permutations with exactly 8 fixed points.

The programs for A129153, there is no canonical definition to state claims against.
-/

/-! ## A129153.P760929483092357481

`C(n+8, 8)*A000166(n)`
-/

namespace A129153.P760929483092357481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℤ) * A000166 n

end

end A129153.P760929483092357481

/-! ## A129153.P15150608481830631486

`C(n+8, 8)*A008290(∑[n])`
-/

namespace A129153.P15150608481830631486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129153.P15150608481830631486

/-! ## A129153.P4233044899963854288

`A000166(n)*A000581(n+8)`
-/

namespace A129153.P4233044899963854288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A000581 (n + 8)

end

end A129153.P4233044899963854288

/-! ## A129153.P7427709397854625820

`∑[A000580(n+7)]*A000166(n)`
-/

namespace A129153.P7427709397854625820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000166 n

end

end A129153.P7427709397854625820

/-! ## A129153.P12222618858584540438

`A000581(n+8)*A047920(A000096(n))`
-/

namespace A129153.P12222618858584540438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A047920 (A000096 n).toNat

end

end A129153.P12222618858584540438

/-! ## A129153.P5567295967347468084

`A135806(n+1)+A135806(n)-A135805(n+1)`
-/

namespace A129153.P5567295967347468084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135806 (n + 1) + (A135806 n - A135805 (n + 1))

end

end A129153.P5567295967347468084

/-! ## A129153.P3604360400964718718

`A098825(A134227(n+7)-3)`
-/

namespace A129153.P3604360400964718718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A134227 (n + 7) - 3).toNat

end

end A129153.P3604360400964718718

/-!
# A129154: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n and having k primitive Dyck factors (n >= 0; 0 <= k <= n).

The programs for A129154, there is no canonical definition to state claims against.
-/

/-! ## A129154.P4405477000945093874

`or(A010051(A088022(n)), A349727(n))`
-/

namespace A129154.P4405477000945093874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A088022 n).toNat) (A349727 n)

end

end A129154.P4405477000945093874

/-! ## A129154.P14217704137884197103

`or(A092573(A131577(n)), A349727(n))`
-/

namespace A129154.P14217704137884197103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092573 (A131577 n).toNat) (A349727 n)

end

end A129154.P14217704137884197103

/-! ## A129154.P931042000329694390

`or(A284948(A017006(n)), A349727(n))`
-/

namespace A129154.P931042000329694390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284948 (A017006 n).toNat) (A349727 n)

end

end A129154.P931042000329694390

/-! ## A129154.P12722981835821866449

`or(A198317(A125278(n)), A349727(n))`
-/

namespace A129154.P12722981835821866449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A198317 (A125278 n).toNat) (A349727 n)

end

end A129154.P12722981835821866449

/-! ## A129154.P13959251008443066798

`or(A010052(A213623(n+2)), A349727(n))`
-/

namespace A129154.P13959251008443066798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (A213623 (n + 2)).toNat) (A349727 n)

end

end A129154.P13959251008443066798

/-!
# A129155: Number of skew Dyck paths of semilength n that have no primitive Dyck factors.

The programs for A129155, there is no canonical definition to state claims against.
-/

/-! ## A129155.P16229396145017112190

`A129154(∑[n])`
-/

namespace A129155.P16229396145017112190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129155.P16229396145017112190

/-! ## A129155.P9441109470019039020

`lcm(1-2*n%2, A129154(n*(n+1)/2))`
-/

namespace A129155.P9441109470019039020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((2 * (n % 2) : ℕ) : ℤ)) (A129154 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A129155.P9441109470019039020

/-! ## A129155.P6166432999965967268

`and(-1, A129154(A000217(n)))`
-/

namespace A129155.P6166432999965967268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A129154 (A000217 n).toNat)

end

end A129155.P6166432999965967268

/-! ## A129155.P13879598360478690664

`lcm(A020985(n), A129154(C(n+1, 2)))`
-/

namespace A129155.P13879598360478690664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A129154 (Nat.choose (n + 1) 2))

end

end A129155.P13879598360478690664

/-! ## A129155.P770217875688755961

`A129154(C(n+1, 2))+A061798(n+1)`
-/

namespace A129155.P770217875688755961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129154 (Nat.choose (n + 1) 2) + A061798 (n + 1)

end

end A129155.P770217875688755961

/-!
# A129156: Number of primitive Dyck factors in all skew Dyck paths of semilength n.

The programs for A129156, there is no canonical definition to state claims against.
-/

/-! ## A129156.P10586801177313114745

`Δ[A033321(n)]-A129158(n)`
-/

namespace A129156.P10586801177313114745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A129158 n

end

end A129156.P10586801177313114745

/-! ## A129156.P18418830403786692360

`A128714(n+1)-A129158(n)`
-/

namespace A129156.P18418830403786692360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128714 (n + 1) - A129158 n

end

end A129156.P18418830403786692360

/-! ## A129156.P9493079961682928078

`A128714(n+1)+A129158(n)*A309873(A016825(n))`
-/

namespace A129156.P9493079961682928078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128714 (n + 1) + A129158 n * A309873 (A016825 n).toNat

end

end A129156.P9493079961682928078

/-! ## A129156.P8721053353299564598

`A004526(A184954(n)+A071356(n))`
-/

namespace A129156.P8721053353299564598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184954 n + A071356 n).toNat

end

end A129156.P8721053353299564598

/-!
# A129157: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n and having k primitive non-Dyck factors (n>=0; 0<=k<=floor((n+1)/3)).

The programs for A129157, there is no canonical definition to state claims against.
-/

/-! ## A129157.P16178067747491149534

`A143120(A027656(n)+A026530(n))`
-/

namespace A129157.P16178067747491149534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143120 (A027656 n + A026530 n).toNat

end

end A129157.P16178067747491149534

/-! ## A129157.P17578148003898114769

`A137940(A345958(n+1)%A124202(n+1))`
-/

namespace A129157.P17578148003898114769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137940 (Int.tmod (A345958 (n + 1)) (A124202 (n + 1))).toNat

end

end A129157.P17578148003898114769

/-!
# A129158: Number of primitive non-Dyck factors in all skew Dyck paths of semilength n.

The programs for A129158, there is no canonical definition to state claims against.
-/

/-! ## A129158.P12437618958802072649

`Δ[A033321(n)]-A129156(n)`
-/

namespace A129158.P12437618958802072649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A129156 n

end

end A129158.P12437618958802072649

/-! ## A129158.P13837266089006987507

`A128714(n+1)-A129156(n)`
-/

namespace A129158.P13837266089006987507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128714 (n + 1) - A129156 n

end

end A129158.P13837266089006987507

/-! ## A129158.P1686166258858178195

`A129169(n)-A129156(n)%A033321(n)`
-/

namespace A129158.P1686166258858178195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129169 n - Int.tmod (A129156 n) (A033321 n)

end

end A129158.P1686166258858178195

/-! ## A129158.P15806916653153391018

`A033321(n+1)-(A129156(n)+A033321(n))`
-/

namespace A129158.P15806916653153391018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 (n + 1) - (A129156 n + A033321 n)

end

end A129158.P15806916653153391018

/-!
# A129160: Sum of the semi-abscissae of the first returns to the axis over all skew Dyck paths of semilength n.

The programs for A129160, the canonical program `A129160.P1319237836063940696` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129160 has offset 1).

The definition of A129160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129160.P11340943530583954130

`A045868(n)+Δ[A128743(n)]`
-/

namespace A129160.P11340943530583954130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n + (f1 (n + 1) - f1 n)

end

end A129160.P11340943530583954130

namespace A129160

/-- `A045868(n)+Δ[A128743(n)]` -/
def P11340943530583954130.Spec : Prop :=
  ∀ n, P11340943530583954130.a n = A129160 (n + 1)

end A129160

/-! ## A129160.P14245686473879312418

`Δ[A128743(n)+Δ[A181768(n)]]`
-/

namespace A129160.P14245686473879312418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128743 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129160.P14245686473879312418

namespace A129160

/-- `Δ[A128743(n)+Δ[A181768(n)]]` -/
def P14245686473879312418.Spec : Prop :=
  ∀ n, P14245686473879312418.a n = A129160 (n + 1)

end A129160

/-! ## A129160.P11590557958316073466

`Δ[A002212(n)+A128743(n)+A057427(n)]`
-/

namespace A129160.P11590557958316073466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n + (A128743 n + A057427 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129160.P11590557958316073466

namespace A129160

/-- `Δ[A002212(n)+A128743(n)+A057427(n)]` -/
def P11590557958316073466.Spec : Prop :=
  ∀ n, P11590557958316073466.a n = A129160 (n + 1)

end A129160

/-! ## A129160.P1319237836063940696

`A026378(n+1)+A026378(n+1)%A085362(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129160

/-- `A026378(n+1)+A026378(n+1)%A085362(n)` -/
def P1319237836063940696.Spec : Prop :=
  ∀ n, P1319237836063940696.a n = A129160 (n + 1)

theorem P1319237836063940696.correct : P1319237836063940696.Spec := by
  intro n
  simp only [A129160, Nat.add_sub_cancel]

end A129160

/-! ## A129160.P13287999311818434780

`Δ[A085362(n)-A163841(A161680(n))]`
-/

namespace A129160.P13287999311818434780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n - A163841 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129160.P13287999311818434780

namespace A129160

/-- `Δ[A085362(n)-A163841(A161680(n))]` -/
def P13287999311818434780.Spec : Prop :=
  ∀ n, P13287999311818434780.a n = A129160 (n + 1)

end A129160

/-!
# A129161: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n and having height k (1 <= k <= n).

The programs for A129161, there is no canonical definition to state claims against.
-/

/-! ## A129161.P17937725255638807053

`A274384(ceil(sqrt(A282629(n))))`
-/

namespace A129161.P17937725255638807053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 ⌈Real.sqrt (A282629 n : ℝ)⌉.toNat

end

end A129161.P17937725255638807053

/-! ## A129161.P15151242386216516713

`A300076(A208919(n+1)+A157221(n))`
-/

namespace A129161.P15151242386216516713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A208919 (n + 1) + A157221 n).toNat

end

end A129161.P15151242386216516713

/-!
# A129162: Sum of heights of all skew Dyck paths of semilength n.

The programs for A129162, there is no canonical definition to state claims against.
-/

/-! ## A129162.P1149839289900645762

`A248186(A150946(n+1))`
-/

namespace A129162.P1149839289900645762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (A150946 (n + 1)).toNat

end

end A129162.P1149839289900645762

/-!
# A129164: Sum of pyramid weights in all skew Dyck paths of semilength n.

The programs for A129164, the canonical program `A129164.P7832225125447669697` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129164 has offset 1).

The definition of A129164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129164.P7832225125447669697

`∑[A026378(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129164

/-- `∑[A026378(n+1)]` -/
def P7832225125447669697.Spec : Prop :=
  ∀ n, P7832225125447669697.a n = A129164 (n + 1)

theorem P7832225125447669697.correct : P7832225125447669697.Spec := by
  intro n
  simp only [A129164, Nat.add_sub_cancel]

end A129164

/-! ## A129164.P9243682647455337067

`∑[A026380(2*n)]`
-/

namespace A129164.P9243682647455337067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026380 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129164.P9243682647455337067

namespace A129164

/-- `∑[A026380(2*n)]` -/
def P9243682647455337067.Spec : Prop :=
  ∀ n, P9243682647455337067.a n = A129164 (n + 1)

end A129164

/-! ## A129164.P2366846281586926703

`∑[A026387(n)/2]`
-/

namespace A129164.P2366846281586926703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026387 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129164.P2366846281586926703

namespace A129164

/-- `∑[A026387(n)/2]` -/
def P2366846281586926703.Spec : Prop :=
  ∀ n, P2366846281586926703.a n = (A129164 (n + 1) : ℚ)

end A129164

/-! ## A129164.P15070643211201540800

`∑[abs(Δ[A242586(n)])]`
-/

namespace A129164.P15070643211201540800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129164.P15070643211201540800

namespace A129164

/-- `∑[abs(Δ[A242586(n)])]` -/
def P15070643211201540800.Spec : Prop :=
  ∀ n, P15070643211201540800.a n = A129164 (n + 1)

end A129164

/-! ## A129164.P10719255808023690091

`∑[A026392(Δ[n²])]`
-/

namespace A129164.P10719255808023690091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129164.P10719255808023690091

namespace A129164

/-- `∑[A026392(Δ[n²])]` -/
def P10719255808023690091.Spec : Prop :=
  ∀ n, P10719255808023690091.a n = A129164 (n + 1)

end A129164

/-! ## A129164.P17896769914137806429

`A242586(n+1)-1`
-/

namespace A129164.P17896769914137806429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 (n + 1) - 1

end

end A129164.P17896769914137806429

namespace A129164

/-- `A242586(n+1)-1` -/
def P17896769914137806429.Spec : Prop :=
  ∀ n, P17896769914137806429.a n = A129164 (n + 1)

end A129164

/-! ## A129164.P1067304365043308557

`∑[A085362(n+1)/2]`
-/

namespace A129164.P1067304365043308557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085362 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129164.P1067304365043308557

namespace A129164

/-- `∑[A085362(n+1)/2]` -/
def P1067304365043308557.Spec : Prop :=
  ∀ n, P1067304365043308557.a n = (A129164 (n + 1) : ℚ)

end A129164

/-! ## A129164.P9573252517495326125

`A026380(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A129164.P9573252517495326125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026380 (n + n) + a (n - 1)

end

end A129164.P9573252517495326125

namespace A129164

/-- `A026380(n+n)+a(n-1)` -/
def P9573252517495326125.Spec : Prop :=
  ∀ n, P9573252517495326125.a n = A129164 (n + 1)

end A129164

/-! ## A129164.P15124523193939474250

`A102319(n+1)-(A097861(n+1)+1)`
-/

namespace A129164.P15124523193939474250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102319 (n + 1) - (A097861 (n + 1) + 1)

end

end A129164.P15124523193939474250

namespace A129164

/-- `A102319(n+1)-(A097861(n+1)+1)` -/
def P15124523193939474250.Spec : Prop :=
  ∀ n, P15124523193939474250.a n = A129164 (n + 1)

end A129164

/-! ## A129164.P12125812687941869458

`∑[Δ[A026375(n)]/2]`
-/

namespace A129164.P12125812687941869458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129164.P12125812687941869458

namespace A129164

/-- `∑[Δ[A026375(n)]/2]` -/
def P12125812687941869458.Spec : Prop :=
  ∀ n, P12125812687941869458.a n = (A129164 (n + 1) : ℚ)

end A129164

/-! ## A129164.P10979974593345751980

`floor(A026375(n+1)/2)`
-/

namespace A129164.P10979974593345751980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026375 (n + 1) : ℚ) / 2⌋

end

end A129164.P10979974593345751980

namespace A129164

/-- `floor(A026375(n+1)/2)` -/
def P10979974593345751980.Spec : Prop :=
  ∀ n, P10979974593345751980.a n = A129164 (n + 1)

end A129164

/-! ## A129164.P12251436395275804501

`(A026380(2*n+1)-1)/2`
-/

namespace A129164.P12251436395275804501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026380 (2 * n + 1) - 1 : ℚ) / 2

end

end A129164.P12251436395275804501

namespace A129164

/-- `(A026380(2*n+1)-1)/2` -/
def P12251436395275804501.Spec : Prop :=
  ∀ n, P12251436395275804501.a n = (A129164 (n + 1) : ℚ)

end A129164

/-! ## A129164.P16149542922474376651

`∑[A126791(∑[n])]`
-/

namespace A129164.P16149542922474376651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126791 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129164.P16149542922474376651

namespace A129164

/-- `∑[A126791(∑[n])]` -/
def P16149542922474376651.Spec : Prop :=
  ∀ n, P16149542922474376651.a n = A129164 (n + 1)

end A129164

/-!
# A129166: Number of skew Dyck paths of semilength n with no base pyramids.

The programs for A129166, there is no canonical definition to state claims against.
-/

/-! ## A129166.P3398311128291727568

`A129165(∑[n])`
-/

namespace A129166.P3398311128291727568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129165 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129166.P3398311128291727568

/-! ## A129166.P2612282900523172562

`A129165(A000217(n))+char[11]`
-/

namespace A129166.P2612282900523172562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129165 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129166.P2612282900523172562

/-! ## A129166.P17546028739868065075

`A129165(A000217(n))%A017439(n)`
-/

namespace A129166.P17546028739868065075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129165 (A000217 n).toNat) (A017439 n)

end

end A129166.P17546028739868065075

/-! ## A129166.P10376712638221980688

`A129165(A000217(n))*A129192(n+1)`
-/

namespace A129166.P10376712638221980688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129165 (A000217 n).toNat * A129192 (n + 1)

end

end A129166.P10376712638221980688

/-! ## A129166.P3137793503634146019

`or(A086971(n+1), A129165(A000217(n)))`
-/

namespace A129166.P3137793503634146019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086971 (n + 1)) (A129165 (A000217 n).toNat)

end

end A129166.P3137793503634146019

/-!
# A129167: Number of base pyramids in all skew Dyck paths of semilength n.

The programs for A129167, the canonical program `A129167.P2551358773714472388` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129167 has offset 0).

The definition of A129167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129167.P11999286463751513250

`abs(A091699(n+1))`
-/

namespace A129167.P11999286463751513250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091699 (n + 1)|

end

end A129167.P11999286463751513250

namespace A129167

/-- `abs(A091699(n+1))` -/
def P11999286463751513250.Spec : Prop :=
  ∀ n, P11999286463751513250.a n = A129167 n

end A129167

/-! ## A129167.P2551358773714472388

`∑[A033321(n)]-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129167

/-- `∑[A033321(n)]-1` -/
def P2551358773714472388.Spec : Prop :=
  ∀ n, P2551358773714472388.a n = A129167 n

theorem P2551358773714472388.correct : P2551358773714472388.Spec := by
  intro n
  simp only [A129167]

end A129167

/-! ## A129167.P8951035589069565977

`A138415(n+1)-1`
-/

namespace A129167.P8951035589069565977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138415 (n + 1) - 1

end

end A129167.P8951035589069565977

namespace A129167

/-- `A138415(n+1)-1` -/
def P8951035589069565977.Spec : Prop :=
  ∀ n, P8951035589069565977.a n = A129167 n

end A129167

/-! ## A129167.P3908795742202393562

`∑[∑[A128714(n)]]+n`
-/

namespace A129167.P3908795742202393562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128714 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A129167.P3908795742202393562

namespace A129167

/-- `∑[∑[A128714(n)]]+n` -/
def P3908795742202393562.Spec : Prop :=
  ∀ n, P3908795742202393562.a n = A129167 n

end A129167

/-! ## A129167.P16184045364091169083

`∑[∑[A128714(A254667(n))]]`
-/

namespace A129167.P16184045364091169083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128714 (A254667 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129167.P16184045364091169083

namespace A129167

/-- `∑[∑[A128714(A254667(n))]]` -/
def P16184045364091169083.Spec : Prop :=
  ∀ n, P16184045364091169083.a n = A129167 n

end A129167

/-! ## A129167.P7638275513359137014

`∑[A033321(n)*A057427(n)]`
-/

namespace A129167.P7638275513359137014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129167.P7638275513359137014

namespace A129167

/-- `∑[A033321(n)*A057427(n)]` -/
def P7638275513359137014.Spec : Prop :=
  ∀ n, P7638275513359137014.a n = A129167 n

end A129167

/-! ## A129167.P2947543010605400881

`∑[xor(A000007(n), A033321(n))]`
-/

namespace A129167.P2947543010605400881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A033321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129167.P2947543010605400881

namespace A129167

/-- `∑[xor(A000007(n), A033321(n))]` -/
def P2947543010605400881.Spec : Prop :=
  ∀ n, P2947543010605400881.a n = A129167 n

end A129167

/-! ## A129167.P15148892599759239639

`A033999(n)*A091699(n+1)`
-/

namespace A129167.P15148892599759239639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A091699 (n + 1)

end

end A129167.P15148892599759239639

namespace A129167

/-- `A033999(n)*A091699(n+1)` -/
def P15148892599759239639.Spec : Prop :=
  ∀ n, P15148892599759239639.a n = A129167 n

end A129167

/-! ## A129167.P4440906317106539932

`lcm(A033999(n+1), A091699(n+1))`
-/

namespace A129167.P4440906317106539932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (n + 1)) (A091699 (n + 1))

end

end A129167.P4440906317106539932

namespace A129167

/-- `lcm(A033999(n+1), A091699(n+1))` -/
def P4440906317106539932.Spec : Prop :=
  ∀ n, (P4440906317106539932.a n : ℤ) = A129167 n

end A129167

/-! ## A129167.P5591746795761559855

`A007317(n+1)-A033321(n)`
-/

namespace A129167.P5591746795761559855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) - A033321 n

end

end A129167.P5591746795761559855

namespace A129167

/-- `A007317(n+1)-A033321(n)` -/
def P5591746795761559855.Spec : Prop :=
  ∀ n, P5591746795761559855.a n = A129167 n

end A129167

/-! ## A129167.P12316240579214664134

`A181768(n+1)-A033321(n)`
-/

namespace A129167.P12316240579214664134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (n + 1) - A033321 n

end

end A129167.P12316240579214664134

namespace A129167

/-- `A181768(n+1)-A033321(n)` -/
def P12316240579214664134.Spec : Prop :=
  ∀ n, P12316240579214664134.a n = A129167 n

end A129167

/-! ## A129167.P11799012760336115028

`A055879(2*(n+1))-A033321(n)`
-/

namespace A129167.P11799012760336115028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (2 * (n + 1)) - A033321 n

end

end A129167.P11799012760336115028

namespace A129167

/-- `A055879(2*(n+1))-A033321(n)` -/
def P11799012760336115028.Spec : Prop :=
  ∀ n, P11799012760336115028.a n = A129167 n

end A129167

/-! ## A129167.P4315190133670802122

`A007317(n+1)+A128714(n)-A002212(n)`
-/

namespace A129167.P4315190133670802122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) + (A128714 n - A002212 n)

end

end A129167.P4315190133670802122

namespace A129167

/-- `A007317(n+1)+A128714(n)-A002212(n)` -/
def P4315190133670802122.Spec : Prop :=
  ∀ n, P4315190133670802122.a n = A129167 n

end A129167

/-! ## A129167.P4830295518343471509

`A007317(n+2)%A033321(n+1)`
-/

namespace A129167.P4830295518343471509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007317 (n + 2)) (A033321 (n + 1))

end

end A129167.P4830295518343471509

namespace A129167

/-- `A007317(n+2)%A033321(n+1)` -/
def P4830295518343471509.Spec : Prop :=
  ∀ n, P4830295518343471509.a n = A129167 n

end A129167

/-! ## A129167.P1929364624968027187

`A128730(n+1)-A128726(n+1)`
-/

namespace A129167.P1929364624968027187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128730 (n + 1) - A128726 (n + 1)

end

end A129167.P1929364624968027187

namespace A129167

/-- `A128730(n+1)-A128726(n+1)` -/
def P1929364624968027187.Spec : Prop :=
  ∀ n, P1929364624968027187.a n = A129167 n

end A129167

/-! ## A129167.P7984858903765904401

`2*A128730(n+1)-A128732(n+1)`
-/

namespace A129167.P7984858903765904401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128730 (n + 1) - A128732 (n + 1)

end

end A129167.P7984858903765904401

namespace A129167

/-- `2*A128730(n+1)-A128732(n+1)` -/
def P7984858903765904401.Spec : Prop :=
  ∀ n, P7984858903765904401.a n = A129167 n

end A129167

/-! ## A129167.P11543645801932924268

`A128732(n+1)-2*A128726(n+1)`
-/

namespace A129167.P11543645801932924268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 (n + 1) - 2 * A128726 (n + 1)

end

end A129167.P11543645801932924268

namespace A129167

/-- `A128732(n+1)-2*A128726(n+1)` -/
def P11543645801932924268.Spec : Prop :=
  ∀ n, P11543645801932924268.a n = A129167 n

end A129167

/-! ## A129167.P5773915139601643819

`A303952(n+1)-(A262664(n+1)+1)`
-/

namespace A129167.P5773915139601643819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303952 (n + 1) - (A262664 (n + 1) + 1)

end

end A129167.P5773915139601643819

namespace A129167

/-- `A303952(n+1)-(A262664(n+1)+1)` -/
def P5773915139601643819.Spec : Prop :=
  ∀ n, P5773915139601643819.a n = A129167 n

end A129167

/-! ## A129167.P9712988529576506601

`∑[A110877(∑[n])]-1`
-/

namespace A129167.P9712988529576506601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A129167.P9712988529576506601

namespace A129167

/-- `∑[A110877(∑[n])]-1` -/
def P9712988529576506601.Spec : Prop :=
  ∀ n, P9712988529576506601.a n = A129167 n

end A129167

/-!
# A129169: Number of UU's starting at level 0 in all skew Dyck paths of semilength n.

The programs for A129169, the canonical program `A129169.P1929904711446876169` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129169 has offset 0).

The definition of A129169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129169.P1929904711446876169

`A122737(n+2)%A033321(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129169

/-- `A122737(n+2)%A033321(n+1)` -/
def P1929904711446876169.Spec : Prop :=
  ∀ n, P1929904711446876169.a n = A129169 n

theorem P1929904711446876169.correct : P1929904711446876169.Spec := by
  intro n
  simp only [A129169]

end A129169

/-! ## A129169.P14718104914309667152

`A002215(A005408(n+1))%A033321(n+1)`
-/

namespace A129169.P14718104914309667152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002215 (A005408 (n + 1)).toNat) (A033321 (n + 1))

end

end A129169.P14718104914309667152

namespace A129169

/-- `A002215(A005408(n+1))%A033321(n+1)` -/
def P14718104914309667152.Spec : Prop :=
  ∀ n, P14718104914309667152.a n = A129169 n

end A129169

/-! ## A129169.P5849619285688275709

`A002215(A004273(n+2))%A033321(n+1)`
-/

namespace A129169.P5849619285688275709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002215 (A004273 (n + 2)).toNat) (A033321 (n + 1))

end

end A129169.P5849619285688275709

namespace A129169

/-- `A002215(A004273(n+2))%A033321(n+1)` -/
def P5849619285688275709.Spec : Prop :=
  ∀ n, P5849619285688275709.a n = A129169 n

end A129169

/-! ## A129169.P13516446824670274680

`Δ[A033321(n)-A007317(n+1)%A033321(n)]`
-/

namespace A129169.P13516446824670274680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n - Int.tmod (A007317 (n + 1)) (A033321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129169.P13516446824670274680

namespace A129169

/-- `Δ[A033321(n)-A007317(n+1)%A033321(n)]` -/
def P13516446824670274680.Spec : Prop :=
  ∀ n, P13516446824670274680.a n = A129169 n

end A129169

/-! ## A129169.P12067778590331512020

`A110877(A000124(n))-A033321(n)`
-/

namespace A129169.P12067778590331512020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (A000124 n).toNat - A033321 n

end

end A129169.P12067778590331512020

namespace A129169

/-- `A110877(A000124(n))-A033321(n)` -/
def P12067778590331512020.Spec : Prop :=
  ∀ n, P12067778590331512020.a n = A129169 n

end A129169

/-! ## A129169.P198539799730910794

`A110877(A000124(n))-A110877(A000217(n))`
-/

namespace A129169.P198539799730910794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (A000124 n).toNat - A110877 (A000217 n).toNat

end

end A129169.P198539799730910794

namespace A129169

/-- `A110877(A000124(n))-A110877(A000217(n))` -/
def P198539799730910794.Spec : Prop :=
  ∀ n, P198539799730910794.a n = A129169 n

end A129169

/-!
# A129171: Sum of the heights of the peaks in all skew Dyck paths of semilength n.

The programs for A129171, there is no canonical definition to state claims against.
-/

/-! ## A129171.P2954955858601738658

`A027868(A184884(2*n+1))`
-/

namespace A129171.P2954955858601738658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A184884 (2 * n + 1)).toNat

end

end A129171.P2954955858601738658

/-! ## A129171.P7659093027517375258

`(n²-floor(atan(n)))*A239701(A031973(n))`
-/

namespace A129171.P7659093027517375258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - ⌊Real.arctan (n : ℝ)⌋) * A239701 (A031973 n).toNat

end

end A129171.P7659093027517375258

/-!
# A129172: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n such that the area between the x-axis and the path is k (n >= 0, 0 <= k <= n^2).

The programs for A129172, there is no canonical definition to state claims against.
-/

/-! ## A129172.P1707709369055055807

`A001221(A060100(A123547(n)))`
-/

namespace A129172.P1707709369055055807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A060100 (A123547 n).toNat).toNat

end

end A129172.P1707709369055055807

/-! ## A129172.P4923326797534099975

`A000120(A167151(A123547(n)²))`
-/

namespace A129172.P4923326797534099975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A167151 (A123547 n ^ 2).toNat).toNat

end

end A129172.P4923326797534099975

/-! ## A129172.P7593908164366160173

`A001222(A000108(A123547(n)+1))`
-/

namespace A129172.P7593908164366160173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000108 (A123547 n + 1).toNat).toNat

end

end A129172.P7593908164366160173

/-! ## A129172.P6476257523711461890

`∑{e}[A000108(A123547(n)+1), A000032(#)]`
-/

namespace A129172.P6476257523711461890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A123547 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000032 (Nat.factorization (f1 n).natAbs p)

end

end A129172.P6476257523711461890

/-! ## A129172.P13478242460181666229

`∑{e}[A000108(A123547(n)+1), A005117(#)]`
-/

namespace A129172.P13478242460181666229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A123547 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005117 (Nat.factorization (f1 n).natAbs p)

end

end A129172.P13478242460181666229

/-!
# A129173: Total area below all skew Dyck paths of semilength n.

The programs for A129173, there is no canonical definition to state claims against.
-/

/-! ## A129173.P3116802142559738573

`Δ[A129171(n)]-A026378(n+1)`
-/

namespace A129173.P3116802142559738573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026378 (n + 1)

end

end A129173.P3116802142559738573

/-! ## A129173.P3370431126900313881

`A002266(A257285(n)-A006483(n))`
-/

namespace A129173.P3370431126900313881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A257285 n - A006483 n).toNat

end

end A129173.P3370431126900313881

/-!
# A129174: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n such that the sum of the peak-abscissae is k (0 <= k <= n^2).

The programs for A129174, there is no canonical definition to state claims against.
-/

/-! ## A129174.P15645165443090469981

`A226464((n+9)*A069232(n+1))`
-/

namespace A129174.P15645165443090469981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 ((n + 9 : ℤ) * A069232 (n + 1)).toNat

end

end A129174.P15645165443090469981

/-! ## A129174.P13673534598447334497

`A323239(A109588(p?[A245289(n+1)]))`
-/

namespace A129174.P13673534598447334497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A109588 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A129174.P13673534598447334497

/-! ## A129174.P9959242644815596313

`A145361(A128333(n+1))`
-/

namespace A129174.P9959242644815596313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145361 (A128333 (n + 1)).toNat

end

end A129174.P9959242644815596313

/-! ## A129174.P15534280781427088216

`A071002(A046124(n+1))`
-/

namespace A129174.P15534280781427088216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071002 (A046124 (n + 1)).toNat

end

end A129174.P15534280781427088216

/-! ## A129174.P15134921522527520694

`A327216(A324900(n+1))`
-/

namespace A129174.P15134921522527520694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 (A324900 (n + 1)).toNat

end

end A129174.P15134921522527520694

/-!
# A129175: Triangle read by rows: MacMahon's q-analog of the Catalan numbers.

The programs for A129175, there is no canonical definition to state claims against.
-/

/-! ## A129175.P828204925144881798

`A129174(lt[0, A129172(n)])`
-/

namespace A129175.P828204925144881798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129175.P828204925144881798

/-! ## A129175.P2030545471270264240

`A001221(A150360(A081285(n)))`
-/

namespace A129175.P2030545471270264240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A150360 (A081285 n).toNat).toNat

end

end A129175.P2030545471270264240

/-! ## A129175.P12386956940603287955

`A001221(A276086(A081285(n)²))`
-/

namespace A129175.P12386956940603287955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276086 (A081285 n ^ 2).toNat).toNat

end

end A129175.P12386956940603287955

/-! ## A129175.P9785832754835248899

`∑{e}[A150360(A081285(n)), A000265(#)]`
-/

namespace A129175.P9785832754835248899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150360 (A081285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000265 (Nat.factorization (f1 n).natAbs p)

end

end A129175.P9785832754835248899

/-! ## A129175.P17504655163321362716

`∑{e}[A150360(A081285(n)), A002487(#)]`
-/

namespace A129175.P17504655163321362716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150360 (A081285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002487 (Nat.factorization (f1 n).natAbs p)

end

end A129175.P17504655163321362716

/-!
# A129180: Total area below all Schroeder paths of semilength n.

The programs for A129180, the canonical program `A129180.P7619671228952585693` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129180 has offset 0).

The definition of A129180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129180.P7619671228952585693

`Δ[A001108(n)-A123164(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129180

/-- `Δ[A001108(n)-A123164(n)]` -/
def P7619671228952585693.Spec : Prop :=
  ∀ n, P7619671228952585693.a n = A129180 n

theorem P7619671228952585693.correct : P7619671228952585693.Spec := by
  intro n
  simp only [A129180]

end A129180

/-! ## A129180.P13885219157403447501

`A002315(n)-Δ[A123164(n)]`
-/

namespace A129180.P13885219157403447501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n - (f1 (n + 1) - f1 n)

end

end A129180.P13885219157403447501

namespace A129180

/-- `A002315(n)-Δ[A123164(n)]` -/
def P13885219157403447501.Spec : Prop :=
  ∀ n, P13885219157403447501.a n = A129180 n

end A129180

/-! ## A129180.P16269020015792989886

`Δ[A277661(n)]-A002002(n)`
-/

namespace A129180.P16269020015792989886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002002 n

end

end A129180.P16269020015792989886

namespace A129180

/-- `Δ[A277661(n)]-A002002(n)` -/
def P16269020015792989886.Spec : Prop :=
  ∀ n, P16269020015792989886.a n = A129180 n

end A129180

/-! ## A129180.P1493693718535615377

`A110127(n+1)+A110127(n)`
-/

namespace A129180.P1493693718535615377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110127 (n + 1) + A110127 n

end

end A129180.P1493693718535615377

namespace A129180

/-- `A110127(n+1)+A110127(n)` -/
def P1493693718535615377.Spec : Prop :=
  ∀ n, P1493693718535615377.a n = A129180 n

end A129180

/-! ## A129180.P13390315486621993088

`Δ[A111352(2*n+1)-A123164(n)]`
-/

namespace A129180.P13390315486621993088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111352 (2 * n + 1) - A123164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129180.P13390315486621993088

namespace A129180

/-- `Δ[A111352(2*n+1)-A123164(n)]` -/
def P13390315486621993088.Spec : Prop :=
  ∀ n, P13390315486621993088.a n = A129180 n

end A129180

/-!
# A129182: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n such that the area between the x-axis and the path is k (n>=0; 0<=k<=n^2).

The programs for A129182, there is no canonical definition to state claims against.
-/

/-! ## A129182.P9686816468560108434

`A154537(A250486(n))*A215530(A247160(n+1))`
-/

namespace A129182.P9686816468560108434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 (A250486 n).toNat * A215530 (A247160 (n + 1)).toNat

end

end A129182.P9686816468560108434

/-! ## A129182.P12850396823692369958

`and(A088534(A005067(n+1)), A288905(n))`
-/

namespace A129182.P12850396823692369958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088534 (A005067 (n + 1)).toNat) (A288905 n)

end

end A129182.P12850396823692369958

/-! ## A129182.P17557619314038750414

`and(A080956(A334251(n)), A333254(n+1))`
-/

namespace A129182.P17557619314038750414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080956 (A334251 n).toNat) (A333254 (n + 1))

end

end A129182.P17557619314038750414

/-! ## A129182.P15737765188626837334

`A147645(or(A008892(n), A298008(n+1)))`
-/

namespace A129182.P15737765188626837334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147645 (Int.lor (A008892 n) (A298008 (n + 1))).toNat

end

end A129182.P15737765188626837334

/-! ## A129182.P17323315169303120635

`and(A054576(2*n+1), A080956(A334251(n)))`
-/

namespace A129182.P17323315169303120635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054576 (2 * n + 1)) (A080956 (A334251 n).toNat)

end

end A129182.P17323315169303120635

/-!
# A129183: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n such that the sum of the height of the peaks is k (n>=0; n<=k<=floor((n+1)^2/4)).

The programs for A129183, there is no canonical definition to state claims against.
-/

/-! ## A129183.P5868527777821259619

`and(∑[A130058(2*n+5)], A130070(3*n+2))`
-/

namespace A129183.P5868527777821259619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130058 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A130070 (3 * n + 2))

end

end A129183.P5868527777821259619

/-! ## A129183.P18131827673421020879

`A173611(n)%A066012(A240911(n+1))`
-/

namespace A129183.P18131827673421020879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173611 n) (A066012 (A240911 (n + 1)).toNat)

end

end A129183.P18131827673421020879

/-! ## A129183.P17873017511825227775

`and(A117592(A192633(n)), A124084(n+3))`
-/

namespace A129183.P17873017511825227775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117592 (A192633 n).toNat) (A124084 (n + 3))

end

end A129183.P17873017511825227775

/-! ## A129183.P16412912426763880270

`A234696(n+1)%A124844(A020639(n+2))`
-/

namespace A129183.P16412912426763880270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234696 (n + 1)) (A124844 (A020639 (n + 2)).toNat)

end

end A129183.P16412912426763880270

/-!
# A129184: Shift operator, right.

The programs for A129184, the canonical program `A129184.P10440994507416109383` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129184 has offset 1).

The definition of A129184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129184.P10440994507416109383

`A010054(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129184

/-- `A010054(n+2)` -/
def P10440994507416109383.Spec : Prop :=
  ∀ n, P10440994507416109383.a n = A129184 (n + 1)

theorem P10440994507416109383.correct : P10440994507416109383.Spec := by
  intro n
  simp only [A129184, Nat.add_sub_cancel]

end A129184

/-! ## A129184.P1588952241016000161

`T(n-1,k-1)` with `a(0)=0, a(1)=1`
-/

namespace A129184.P1588952241016000161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n

end

end A129184.P1588952241016000161

namespace A129184

/-- `T(n-1,k-1)` -/
def P1588952241016000161.Spec : Prop :=
  ∀ n, (P1588952241016000161.a n : ℤ) = A129184 (n + 1)

end A129184

/-! ## A129184.P17385099593900774898

`char[∑[n]-2]`
-/

namespace A129184.P17385099593900774898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A129184.P17385099593900774898

namespace A129184

/-- `char[∑[n]-2]` -/
def P17385099593900774898.Spec : Prop :=
  ∀ n, (P17385099593900774898.a n : ℤ) = A129184 (n + 1)

end A129184

/-! ## A129184.P2301513504248631177

`and(1, char[∑[n+1]+n])`
-/

namespace A129184.P2301513504248631177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A129184.P2301513504248631177

namespace A129184

/-- `and(1, char[∑[n+1]+n])` -/
def P2301513504248631177.Spec : Prop :=
  ∀ n, (P2301513504248631177.a n : ℤ) = A129184 (n + 1)

end A129184

/-! ## A129184.P2963290989463376234

`or(char[1], char[∑[n+1]+n])`
-/

namespace A129184.P2963290989463376234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = n then 1 else 0)

end

end A129184.P2963290989463376234

namespace A129184

/-- `or(char[1], char[∑[n+1]+n])` -/
def P2963290989463376234.Spec : Prop :=
  ∀ n, (P2963290989463376234.a n : ℤ) = A129184 (n + 1)

end A129184

/-! ## A129184.P7269757957455936833

`Δ[round(sqrt(2*(n+1)+1))]%2`
-/

namespace A129184.P7269757957455936833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A129184.P7269757957455936833

namespace A129184

/-- `Δ[round(sqrt(2*(n+1)+1))]%2` -/
def P7269757957455936833.Spec : Prop :=
  ∀ n, P7269757957455936833.a n = A129184 (n + 1)

end A129184

/-! ## A129184.P4755369436562269285

`(row(n)-col(n))*C(col(n)+1, row(n))`
-/

namespace A129184.P4755369436562269285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (Nat.choose (SequenceMachineLib.triCol n + 1) (SequenceMachineLib.triRow n) : ℤ)

end

end A129184.P4755369436562269285

namespace A129184

/-- `(row(n)-col(n))*C(col(n)+1, row(n))` -/
def P4755369436562269285.Spec : Prop :=
  ∀ n, P4755369436562269285.a n = A129184 (n + 1)

end A129184

/-! ## A129184.P14450980915091605877

`char[C(ceil(n/2), 2)+n]-a(n-1)` with `a(0)=0`
-/

namespace A129184.P14450980915091605877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1)

end

end A129184.P14450980915091605877

namespace A129184

/-- `char[C(ceil(n/2), 2)+n]-a(n-1)` -/
def P14450980915091605877.Spec : Prop :=
  ∀ n, P14450980915091605877.a n = A129184 (n + 1)

end A129184

/-! ## A129184.P17745397599737042548

`C(row(n), col(n)+1)*C(col(n)+1, row(n))`
-/

namespace A129184.P17745397599737042548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triCol n + 1) (SequenceMachineLib.triRow n)

end

end A129184.P17745397599737042548

namespace A129184

/-- `C(row(n), col(n)+1)*C(col(n)+1, row(n))` -/
def P17745397599737042548.Spec : Prop :=
  ∀ n, (P17745397599737042548.a n : ℤ) = A129184 (n + 1)

end A129184

/-! ## A129184.P11605388742819122473

`A023531(n+1)`
-/

namespace A129184.P11605388742819122473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1)

end

end A129184.P11605388742819122473

namespace A129184

/-- `A023531(n+1)` -/
def P11605388742819122473.Spec : Prop :=
  ∀ n, P11605388742819122473.a n = A129184 (n + 1)

end A129184

/-! ## A129184.P16551494172258091485

`A073423(n+2)`
-/

namespace A129184.P16551494172258091485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (n + 2)

end

end A129184.P16551494172258091485

namespace A129184

/-- `A073423(n+2)` -/
def P16551494172258091485.Spec : Prop :=
  ∀ n, P16551494172258091485.a n = A129184 (n + 1)

end A129184

/-! ## A129184.P13780416990348275498

`A073424(n+2)`
-/

namespace A129184.P13780416990348275498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 2)

end

end A129184.P13780416990348275498

namespace A129184

/-- `A073424(n+2)` -/
def P13780416990348275498.Spec : Prop :=
  ∀ n, P13780416990348275498.a n = A129184 (n + 1)

end A129184

/-! ## A129184.P16347618960824839488

`1-abs(A117568(n))`
-/

namespace A129184.P16347618960824839488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A117568 n|

end

end A129184.P16347618960824839488

namespace A129184

/-- `1-abs(A117568(n))` -/
def P16347618960824839488.Spec : Prop :=
  ∀ n, P16347618960824839488.a n = A129184 (n + 1)

end A129184

/-! ## A129184.P17674503463349384884

`log2(A042974(n+1))`
-/

namespace A129184.P17674503463349384884
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A042974 (n + 1) : ℝ)

end

end A129184.P17674503463349384884

namespace A129184

/-- `log2(A042974(n+1))` -/
def P17674503463349384884.Spec : Prop :=
  ∀ n, P17674503463349384884.a n = (A129184 (n + 1) : ℝ)

end A129184

/-! ## A129184.P18106594197420570499

`1-∑[A167374(n)]`
-/

namespace A129184.P18106594197420570499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129184.P18106594197420570499

namespace A129184

/-- `1-∑[A167374(n)]` -/
def P18106594197420570499.Spec : Prop :=
  ∀ n, P18106594197420570499.a n = A129184 (n + 1)

end A129184

/-!
# A129185: Shift operator, left.

The programs for A129185, there is no canonical definition to state claims against.
-/

/-! ## A129185.P5628738584981776639

`char[∑[n%15]-2]`
-/

namespace A129185.P5628738584981776639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A129185.P5628738584981776639

/-! ## A129185.P453596088832733968

`char[∑[and(15, n)]-2]`
-/

namespace A129185.P453596088832733968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 15 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A129185.P453596088832733968

/-! ## A129185.P12537045651564360586

`char[floor(∑[log(7)+n])]`
-/

namespace A129185.P12537045651564360586
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (7 : ℝ) + (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A129185.P12537045651564360586

/-! ## A129185.P7561158827975853157

`Δ[round(sqrt(2*(n+2)))%15]`
-/

namespace A129185.P7561158827975853157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 2) : ℝ))) 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129185.P7561158827975853157

/-! ## A129185.P12793235148325165293

`gcd(17, n+1)*char[∑[n]-2]`
-/

namespace A129185.P12793235148325165293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 17 (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A129185.P12793235148325165293

/-! ## A129185.P8916868648692545070

`round(atan(A132440(n)))`
-/

namespace A129185.P8916868648692545070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A132440 n : ℝ))

end

end A129185.P8916868648692545070

/-! ## A129185.P6543521130491446942

`Δ[A107436(n+3)]`
-/

namespace A129185.P6543521130491446942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129185.P6543521130491446942

/-! ## A129185.P17462724166844499879

`A297199((n+2)²-1)`
-/

namespace A129185.P17462724166844499879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297199 ((n + 2) ^ 2 - 1)

end

end A129185.P17462724166844499879

/-! ## A129185.P3991345440141929558

`and(17, A000005(8*n+17))`
-/

namespace A129185.P3991345440141929558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 17 (A000005 (8 * n + 17))

end

end A129185.P3991345440141929558

/-! ## A129185.P9322606890831932277

`A033683(A071417(n))`
-/

namespace A129185.P9322606890831932277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (A071417 n).toNat

end

end A129185.P9322606890831932277

/-!
# A129186: Right shift operator generating 1's in shifted spaces.

The programs for A129186, the canonical program `A129186.P10302044594592725749` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129186 has offset 0).

The definition of A129186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129186.P4655522519158365110

`char[∑[floor(atan(n)+n)]]`
-/

namespace A129186.P4655522519158365110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A129186.P4655522519158365110

namespace A129186

/-- `char[∑[floor(atan(n)+n)]]` -/
def P4655522519158365110.Spec : Prop :=
  ∀ n, (P4655522519158365110.a n : ℤ) = A129186 n

end A129186

/-! ## A129186.P560656997030386077

`char[abs(∑[1-n])-1]`
-/

namespace A129186.P560656997030386077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j| - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A129186.P560656997030386077

namespace A129186

/-- `char[abs(∑[1-n])-1]` -/
def P560656997030386077.Spec : Prop :=
  ∀ n, (P560656997030386077.a n : ℤ) = A129186 n

end A129186

/-! ## A129186.P5037626112428881193

`(row(n)-col(n))*T(n-1,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A129186.P5037626112428881193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUpLeft a n

end

end A129186.P5037626112428881193

namespace A129186

/-- `(row(n)-col(n))*T(n-1,k-1)` -/
def P5037626112428881193.Spec : Prop :=
  ∀ n, P5037626112428881193.a n = A129186 n

end A129186

/-! ## A129186.P17052359532851956905

`xor(1, char[comp[∑[n-2]]+1])`
-/

namespace A129186.P17052359532851956905
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A129186.P17052359532851956905

namespace A129186

/-- `xor(1, char[comp[∑[n-2]]+1])` -/
def P17052359532851956905.Spec : Prop :=
  ∀ n, (P17052359532851956905.a n : ℤ) = A129186 n

end A129186

/-! ## A129186.P12817704530613582362

`1-char[comp[C(n, 2)-3]+1]`
-/

namespace A129186.P12817704530613582362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129186.P12817704530613582362

namespace A129186

/-- `1-char[comp[C(n, 2)-3]+1]` -/
def P12817704530613582362.Spec : Prop :=
  ∀ n, P12817704530613582362.a n = A129186 n

end A129186

/-! ## A129186.P3448900252395192961

`a(n-∑[char[∑[n]]])` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A129186.P3448900252395192961
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 0] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129186.P3448900252395192961

namespace A129186

/-- `a(n-∑[char[∑[n]]])` -/
def P3448900252395192961.Spec : Prop :=
  ∀ n, (P3448900252395192961.a n : ℤ) = A129186 n

end A129186

/-! ## A129186.P2254837371433571591

`and(3, char[a(n-1)+n])` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A129186.P2254837371433571591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (if ∃ j, f1 j = n then 1 else 0)

end

end A129186.P2254837371433571591

namespace A129186

/-- `and(3, char[a(n-1)+n])` -/
def P2254837371433571591.Spec : Prop :=
  ∀ n, (P2254837371433571591.a n : ℤ) = A129186 n

end A129186

/-! ## A129186.P65021871574690059

`or(char[∑[n+2]-1], char[n^14])`
-/

namespace A129186.P65021871574690059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = (n : ℤ) then 1 else 0) (if ∃ j, f3 j = n then 1 else 0)

end

end A129186.P65021871574690059

namespace A129186

/-- `or(char[∑[n+2]-1], char[n^14])` -/
def P65021871574690059.Spec : Prop :=
  ∀ n, (P65021871574690059.a n : ℤ) = A129186 n

end A129186

/-! ## A129186.P3254974866993447629

`A143038(n)%2`
-/

namespace A129186.P3254974866993447629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143038 n) 2

end

end A129186.P3254974866993447629

namespace A129186

/-- `A143038(n)%2` -/
def P3254974866993447629.Spec : Prop :=
  ∀ n, P3254974866993447629.a n = A129186 n

end A129186

/-! ## A129186.P10433551515153181741

`A183190(n)%2`
-/

namespace A129186.P10433551515153181741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183190 n) 2

end

end A129186.P10433551515153181741

namespace A129186

/-- `A183190(n)%2` -/
def P10433551515153181741.Spec : Prop :=
  ∀ n, P10433551515153181741.a n = A129186 n

end A129186

/-! ## A129186.P11109960062318740361

`A207636(n+1)%2`
-/

namespace A129186.P11109960062318740361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207636 (n + 1)) 2

end

end A129186.P11109960062318740361

namespace A129186

/-- `A207636(n+1)%2` -/
def P11109960062318740361.Spec : Prop :=
  ∀ n, P11109960062318740361.a n = A129186 n

end A129186

/-! ## A129186.P7853016774749869735

`A372606(n+1)%2`
-/

namespace A129186.P7853016774749869735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372606 (n + 1)) 2

end

end A129186.P7853016774749869735

namespace A129186

/-- `A372606(n+1)%2` -/
def P7853016774749869735.Spec : Prop :=
  ∀ n, P7853016774749869735.a n = A129186 n

end A129186

/-! ## A129186.P1646046510015475037

`C(2, A383353(n+1))`
-/

namespace A129186.P1646046510015475037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A383353 (n + 1)).toNat

end

end A129186.P1646046510015475037

namespace A129186

/-- `C(2, A383353(n+1))` -/
def P1646046510015475037.Spec : Prop :=
  ∀ n, (P1646046510015475037.a n : ℤ) = A129186 n

end A129186

/-! ## A129186.P16158205214117219860

`C(C(2, A055830(n)), 2)`
-/

namespace A129186.P16158205214117219860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A055830 n).toNat) 2

end

end A129186.P16158205214117219860

namespace A129186

/-- `C(C(2, A055830(n)), 2)` -/
def P16158205214117219860.Spec : Prop :=
  ∀ n, (P16158205214117219860.a n : ℤ) = A129186 n

end A129186

/-! ## A129186.P10302044594592725749

`A073423(n+2)^n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129186

/-- `A073423(n+2)^n` -/
def P10302044594592725749.Spec : Prop :=
  ∀ n, P10302044594592725749.a n = A129186 n

theorem P10302044594592725749.correct : P10302044594592725749.Spec := by
  intro n
  simp only [A129186]

end A129186

/-! ## A129186.P16241853022168807282

`C(2, (n*A104578(n))²)`
-/

namespace A129186.P16241853022168807282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (((n : ℤ) * A104578 n) ^ 2).toNat

end

end A129186.P16241853022168807282

namespace A129186

/-- `C(2, (n*A104578(n))²)` -/
def P16241853022168807282.Spec : Prop :=
  ∀ n, (P16241853022168807282.a n : ℤ) = A129186 n

end A129186

/-! ## A129186.P2304619298680582046

`C(2, A103923(n+1)+1)`
-/

namespace A129186.P2304619298680582046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A103923 (n + 1) + 1).toNat

end

end A129186.P2304619298680582046

namespace A129186

/-- `C(2, A103923(n+1)+1)` -/
def P2304619298680582046.Spec : Prop :=
  ∀ n, (P2304619298680582046.a n : ℤ) = A129186 n

end A129186

/-! ## A129186.P15052383237920804805

`(A042974(n+1)-1)^n`
-/

namespace A129186.P15052383237920804805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A042974 (n + 1) - 1) ^ n

end

end A129186.P15052383237920804805

namespace A129186

/-- `(A042974(n+1)-1)^n` -/
def P15052383237920804805.Spec : Prop :=
  ∀ n, P15052383237920804805.a n = A129186 n

end A129186

/-! ## A129186.P9822535654733036943

`A097806(a(n-1)+n)` with `a(0)=1`
-/

namespace A129186.P9822535654733036943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097806 (a (n - 1) + (n : ℤ)).toNat

end

end A129186.P9822535654733036943

namespace A129186

/-- `A097806(a(n-1)+n)` -/
def P9822535654733036943.Spec : Prop :=
  ∀ n, P9822535654733036943.a n = A129186 n

end A129186

/-! ## A129186.P13204523217384155855

`A167371(a(n-1)+n)` with `a(0)=1`
-/

namespace A129186.P13204523217384155855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167371 (a (n - 1) + (n : ℤ)).toNat

end

end A129186.P13204523217384155855

namespace A129186

/-- `A167371(a(n-1)+n)` -/
def P13204523217384155855.Spec : Prop :=
  ∀ n, P13204523217384155855.a n = A129186 n

end A129186

/-!
# A129188: n + n-th prime + n-th composite.

The programs for A129188, the canonical program `A129188.P9160643260024677217` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129188 has offset 1).

The definition of A129188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129188.P9160643260024677217

`n+1+A064799(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129188

/-- `n+1+A064799(n+1)` -/
def P9160643260024677217.Spec : Prop :=
  ∀ n, P9160643260024677217.a n = A129188 (n + 1)

theorem P9160643260024677217.correct : P9160643260024677217.Spec := by
  intro n
  simp only [A129188, Nat.add_sub_cancel]

end A129188

/-! ## A129188.P16509438672199975405

`A129189(n+1)+2*(n+1)`
-/

namespace A129188.P16509438672199975405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129189 (n + 1) + (2 * (n + 1) : ℤ)

end

end A129188.P16509438672199975405

namespace A129188

/-- `A129189(n+1)+2*(n+1)` -/
def P16509438672199975405.Spec : Prop :=
  ∀ n, P16509438672199975405.a n = A129188 (n + 1)

theorem P16509438672199975405.correct : P16509438672199975405.Spec := by
  intro n
  simp only [A129188, Nat.add_sub_cancel, A129188.P16509438672199975405.a, A129188.P9160643260024677217.a, A064799, A064799.P13450618005534133469.a, A129189, A129189.P3252235154664414244.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129188

/-! ## A129188.P11300929840854302541

`A014688(n+1)+Δ[A053767(n)]`
-/

namespace A129188.P11300929840854302541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + (f1 (n + 1) - f1 n)

end

end A129188.P11300929840854302541

namespace A129188

/-- `A014688(n+1)+Δ[A053767(n)]` -/
def P11300929840854302541.Spec : Prop :=
  ∀ n, P11300929840854302541.a n = A129188 (n + 1)

end A129188

/-! ## A129188.P433601198687616935

`A014688(n+1)+A002808(n+1)`
-/

namespace A129188.P433601198687616935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + A002808 (n + 1)

end

end A129188.P433601198687616935

namespace A129188

/-- `A014688(n+1)+A002808(n+1)` -/
def P433601198687616935.Spec : Prop :=
  ∀ n, P433601198687616935.a n = A129188 (n + 1)

end A129188

/-! ## A129188.P14465224556481538251

`A078916(n+1)+A073169(n+1)`
-/

namespace A129188.P14465224556481538251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) + A073169 (n + 1)

end

end A129188.P14465224556481538251

namespace A129188

/-- `A078916(n+1)+A073169(n+1)` -/
def P14465224556481538251.Spec : Prop :=
  ∀ n, P14465224556481538251.a n = A129188 (n + 1)

theorem P14465224556481538251.correct : P14465224556481538251.Spec := by
  intro n
  simp only [A129188, Nat.add_sub_cancel, A129188.P14465224556481538251.a, A129188.P9160643260024677217.a, A064799, A064799.P13450618005534133469.a, A073169, A073169.P14738260624206914448.a, A078916, A078916.P17748288243755169363.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129188

/-! ## A129188.P5081691143831192896

`A161537(n+1)+A000040(n+1)`
-/

namespace A129188.P5081691143831192896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1) + A000040 (n + 1)

end

end A129188.P5081691143831192896

namespace A129188

/-- `A161537(n+1)+A000040(n+1)` -/
def P5081691143831192896.Spec : Prop :=
  ∀ n, P5081691143831192896.a n = A129188 (n + 1)

theorem P5081691143831192896.correct : P5081691143831192896.Spec := by
  intro n
  simp only [A129188, Nat.add_sub_cancel, A129188.P5081691143831192896.a, A129188.P9160643260024677217.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A064799, A064799.P13450618005534133469.a, A161537, A161537.P5701896001486132994.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129188

/-! ## A129188.P16046764126649924248

`A095116(n+1)+A079696(n+1)`
-/

namespace A129188.P16046764126649924248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + A079696 (n + 1)

end

end A129188.P16046764126649924248

namespace A129188

/-- `A095116(n+1)+A079696(n+1)` -/
def P16046764126649924248.Spec : Prop :=
  ∀ n, P16046764126649924248.a n = A129188 (n + 1)

theorem P16046764126649924248.correct : P16046764126649924248.Spec := by
  intro n
  simp only [A129188, Nat.add_sub_cancel, A129188.P16046764126649924248.a, A129188.P9160643260024677217.a, A064799, A064799.P13450618005534133469.a, A079696, A079696.P2621453534582977077.a, A095116, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129188

/-! ## A129188.P695581972577311704

`A014688(n+1)+A018252(n+2)`
-/

namespace A129188.P695581972577311704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + A018252 (n + 2)

end

end A129188.P695581972577311704

namespace A129188

/-- `A014688(n+1)+A018252(n+2)` -/
def P695581972577311704.Spec : Prop :=
  ∀ n, P695581972577311704.a n = A129188 (n + 1)

end A129188

/-! ## A129188.P4401970195602874262

`A141468(n+3)+A014688(n+1)`
-/

namespace A129188.P4401970195602874262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) + A014688 (n + 1)

end

end A129188.P4401970195602874262

namespace A129188

/-- `A141468(n+3)+A014688(n+1)` -/
def P4401970195602874262.Spec : Prop :=
  ∀ n, P4401970195602874262.a n = A129188 (n + 1)

end A129188

/-! ## A129188.P2493340163895080353

`A002808(n+1)+A008864(n+1)+n`
-/

namespace A129188.P2493340163895080353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A008864 (n + 1) + (n : ℤ))

end

end A129188.P2493340163895080353

namespace A129188

/-- `A002808(n+1)+A008864(n+1)+n` -/
def P2493340163895080353.Spec : Prop :=
  ∀ n, P2493340163895080353.a n = A129188 (n + 1)

theorem P2493340163895080353.correct : P2493340163895080353.Spec := by
  intro n
  simp only [A129188, Nat.add_sub_cancel, A129188.P2493340163895080353.a, A129188.P9160643260024677217.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A008864, A008864.P9177617808325052279.a, A064799, A064799.P13450618005534133469.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129188

/-! ## A129188.P15601771436559892310

`A000040(n+1)+A079696(n+1)+n`
-/

namespace A129188.P15601771436559892310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A079696 (n + 1) + (n : ℤ))

end

end A129188.P15601771436559892310

namespace A129188

/-- `A000040(n+1)+A079696(n+1)+n` -/
def P15601771436559892310.Spec : Prop :=
  ∀ n, P15601771436559892310.a n = A129188 (n + 1)

theorem P15601771436559892310.correct : P15601771436559892310.Spec := by
  intro n
  simp only [A129188, Nat.add_sub_cancel, A129188.P15601771436559892310.a, A129188.P9160643260024677217.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A064799, A064799.P13450618005534133469.a, A079696, A079696.P2621453534582977077.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129188

/-! ## A129188.P3142873499037358946

`A008864(n+1)+A018252(n+2)+n`
-/

namespace A129188.P3142873499037358946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A018252 (n + 2) + (n : ℤ)

end

end A129188.P3142873499037358946

namespace A129188

/-- `A008864(n+1)+A018252(n+2)+n` -/
def P3142873499037358946.Spec : Prop :=
  ∀ n, P3142873499037358946.a n = A129188 (n + 1)

end A129188

/-! ## A129188.P1754188182330449167

`A002808(n+1)+A000040(n+1)+1+n`
-/

namespace A129188.P1754188182330449167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A000040 (n + 1) + 1 + (n : ℤ))

end

end A129188.P1754188182330449167

namespace A129188

/-- `A002808(n+1)+A000040(n+1)+1+n` -/
def P1754188182330449167.Spec : Prop :=
  ∀ n, P1754188182330449167.a n = A129188 (n + 1)

theorem P1754188182330449167.correct : P1754188182330449167.Spec := by
  intro n
  simp only [A129188, Nat.add_sub_cancel, A129188.P1754188182330449167.a, A129188.P9160643260024677217.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A064799, A064799.P13450618005534133469.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129188

/-! ## A129188.P14491648603828725999

`n+1+A018252(n+2)+A000040(n+1)`
-/

namespace A129188.P14491648603828725999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A018252 (n + 2) + A000040 (n + 1))

end

end A129188.P14491648603828725999

namespace A129188

/-- `n+1+A018252(n+2)+A000040(n+1)` -/
def P14491648603828725999.Spec : Prop :=
  ∀ n, P14491648603828725999.a n = A129188 (n + 1)

end A129188

/-! ## A129188.P11971594656713355782

`A006093(n+1)+2+A018252(n+2)+n`
-/

namespace A129188.P11971594656713355782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2 + (A018252 (n + 2) + (n : ℤ))

end

end A129188.P11971594656713355782

namespace A129188

/-- `A006093(n+1)+2+A018252(n+2)+n` -/
def P11971594656713355782.Spec : Prop :=
  ∀ n, P11971594656713355782.a n = A129188 (n + 1)

end A129188

/-! ## A129188.P4558183280775274295

`A002808(n+1)+A040976(n+1)+3+n`
-/

namespace A129188.P4558183280775274295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A040976 (n + 1) + 3 + (n : ℤ))

end

end A129188.P4558183280775274295

namespace A129188

/-- `A002808(n+1)+A040976(n+1)+3+n` -/
def P4558183280775274295.Spec : Prop :=
  ∀ n, P4558183280775274295.a n = A129188 (n + 1)

theorem P4558183280775274295.correct : P4558183280775274295.Spec := by
  intro n
  simp only [A129188, Nat.add_sub_cancel, A129188.P4558183280775274295.a, A129188.P9160643260024677217.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A040976, A040976.P11599754272797435513.a, A064799, A064799.P13450618005534133469.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129188

/-! ## A129188.P8144786844803380486

`lt[2, A000005(n+1)]+A000040(n+1)+n+2`
-/

namespace A129188.P8144786844803380486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + (A000040 (n + 1) + (n + 2 : ℤ))

end

end A129188.P8144786844803380486

namespace A129188

/-- `lt[2, A000005(n+1)]+A000040(n+1)+n+2` -/
def P8144786844803380486.Spec : Prop :=
  ∀ n, P8144786844803380486.a n = A129188 (n + 1)

theorem P8144786844803380486.correct : P8144786844803380486.Spec := by
  intro n
  simp only [A129188, Nat.add_sub_cancel, A129188.P8144786844803380486.f1, A129188.P8144786844803380486.f2, A129188.P8144786844803380486.a, A129188.P9160643260024677217.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A064799, A064799.P13450618005534133469.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129188

/-! ## A129188.P17869026147017185157

`lt[A020639(n+1), n]+A000040(n+1)+n+2`
-/

namespace A129188.P17869026147017185157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + A000040 (n + 1) + (n : ℤ) + 2

end

end A129188.P17869026147017185157

namespace A129188

/-- `lt[A020639(n+1), n]+A000040(n+1)+n+2` -/
def P17869026147017185157.Spec : Prop :=
  ∀ n, P17869026147017185157.a n = A129188 (n + 1)

end A129188

/-! ## A129188.P16871144314371352037

`A171639(n+2)+n+1`
-/

namespace A129188.P16871144314371352037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171639 (n + 2) + (n + 1 : ℤ)

end

end A129188.P16871144314371352037

namespace A129188

/-- `A171639(n+2)+n+1` -/
def P16871144314371352037.Spec : Prop :=
  ∀ n, P16871144314371352037.a n = A129188 (n + 1)

end A129188

/-! ## A129188.P10493938068505269284

`A167136(n+2)+A002808(n+1)`
-/

namespace A129188.P10493938068505269284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 2) + A002808 (n + 1)

end

end A129188.P10493938068505269284

namespace A129188

/-- `A167136(n+2)+A002808(n+1)` -/
def P10493938068505269284.Spec : Prop :=
  ∀ n, P10493938068505269284.a n = A129188 (n + 1)

end A129188

/-!
# A129189: n-th prime + n-th composite - n.

The programs for A129189, the canonical program `A129189.P3252235154664414244` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129189 has offset 1).

The definition of A129189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129189.P3252235154664414244

`A064799(n+1)-(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129189

/-- `A064799(n+1)-(n+1)` -/
def P3252235154664414244.Spec : Prop :=
  ∀ n, P3252235154664414244.a n = A129189 (n + 1)

theorem P3252235154664414244.correct : P3252235154664414244.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel]

end A129189

/-! ## A129189.P9043071951226767298

`A129188(n+1)-2*(n+1)`
-/

namespace A129189.P9043071951226767298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129188 (n + 1) - (2 * (n + 1) : ℤ)

end

end A129189.P9043071951226767298

namespace A129189

/-- `A129188(n+1)-2*(n+1)` -/
def P9043071951226767298.Spec : Prop :=
  ∀ n, P9043071951226767298.a n = A129189 (n + 1)

theorem P9043071951226767298.correct : P9043071951226767298.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel, A129189.P9043071951226767298.a, A129189.P3252235154664414244.a, A064799, A064799.P13450618005534133469.a, A129188, A129188.P9160643260024677217.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129189

/-! ## A129189.P17440842634066793943

`A163248(n+1)+A075526(n)`
-/

namespace A129189.P17440842634066793943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163248 (n + 1) + A075526 n

end

end A129189.P17440842634066793943

namespace A129189

/-- `A163248(n+1)+A075526(n)` -/
def P17440842634066793943.Spec : Prop :=
  ∀ n, P17440842634066793943.a n = A129189 (n + 1)

end A129189

/-! ## A129189.P9891416393498717749

`A014689(n+1)+A002808(n+1)`
-/

namespace A129189.P9891416393498717749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + A002808 (n + 1)

end

end A129189.P9891416393498717749

namespace A129189

/-- `A014689(n+1)+A002808(n+1)` -/
def P9891416393498717749.Spec : Prop :=
  ∀ n, P9891416393498717749.a n = A129189 (n + 1)

theorem P9891416393498717749.correct : P9891416393498717749.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel, A129189.P9891416393498717749.a, A129189.P3252235154664414244.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A014689, A014689.P6286543075765329050.a, A064799, A064799.P13450618005534133469.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129189

/-! ## A129189.P17327226283506741111

`A073169(n+1)+A000040(n+1)`
-/

namespace A129189.P17327226283506741111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1) + A000040 (n + 1)

end

end A129189.P17327226283506741111

namespace A129189

/-- `A073169(n+1)+A000040(n+1)` -/
def P17327226283506741111.Spec : Prop :=
  ∀ n, P17327226283506741111.a n = A129189 (n + 1)

theorem P17327226283506741111.correct : P17327226283506741111.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel, A129189.P17327226283506741111.a, A129189.P3252235154664414244.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A064799, A064799.P13450618005534133469.a, A073169, A073169.P14738260624206914448.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129189

/-! ## A129189.P16509070169887886436

`A072668(n+1)+A014692(n+1)`
-/

namespace A129189.P16509070169887886436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + A014692 (n + 1)

end

end A129189.P16509070169887886436

namespace A129189

/-- `A072668(n+1)+A014692(n+1)` -/
def P16509070169887886436.Spec : Prop :=
  ∀ n, P16509070169887886436.a n = A129189 (n + 1)

theorem P16509070169887886436.correct : P16509070169887886436.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel, A129189.P16509070169887886436.a, A129189.P3252235154664414244.a, A014692, A014692.P2004927767556050134.a, A064799, A064799.P13450618005534133469.a, A072668, A072668.P5648318357023435289.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129189

/-! ## A129189.P4053220881240588156

`A079696(n+1)+A065890(n+1)`
-/

namespace A129189.P4053220881240588156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) + A065890 (n + 1)

end

end A129189.P4053220881240588156

namespace A129189

/-- `A079696(n+1)+A065890(n+1)` -/
def P4053220881240588156.Spec : Prop :=
  ∀ n, P4053220881240588156.a n = A129189 (n + 1)

theorem P4053220881240588156.correct : P4053220881240588156.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel, A129189.P4053220881240588156.a, A129189.P3252235154664414244.a, A064799, A064799.P13450618005534133469.a, A065890, A065890.P15936493256530540462.a, A079696, A079696.P2621453534582977077.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A014689, A014689.P6286543075765329050.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129189

/-! ## A129189.P4716244240626229141

`A163249(n+1)+A065310(n+1)`
-/

namespace A129189.P4716244240626229141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163249 (n + 1) + A065310 (n + 1)

end

end A129189.P4716244240626229141

namespace A129189

/-- `A163249(n+1)+A065310(n+1)` -/
def P4716244240626229141.Spec : Prop :=
  ∀ n, P4716244240626229141.a n = A129189 (n + 1)

end A129189

/-! ## A129189.P7821643751042496825

`A014689(n+1)+A018252(n+2)`
-/

namespace A129189.P7821643751042496825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + A018252 (n + 2)

end

end A129189.P7821643751042496825

namespace A129189

/-- `A014689(n+1)+A018252(n+2)` -/
def P7821643751042496825.Spec : Prop :=
  ∀ n, P7821643751042496825.a n = A129189 (n + 1)

end A129189

/-! ## A129189.P221454543333545228

`A141468(n+3)+A014689(n+1)`
-/

namespace A129189.P221454543333545228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) + A014689 (n + 1)

end

end A129189.P221454543333545228

namespace A129189

/-- `A141468(n+3)+A014689(n+1)` -/
def P221454543333545228.Spec : Prop :=
  ∀ n, P221454543333545228.a n = A129189 (n + 1)

end A129189

/-! ## A129189.P13394555503102402866

`A002808(n+1)+A065890(n+1)+1`
-/

namespace A129189.P13394555503102402866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A065890 (n + 1) + 1)

end

end A129189.P13394555503102402866

namespace A129189

/-- `A002808(n+1)+A065890(n+1)+1` -/
def P13394555503102402866.Spec : Prop :=
  ∀ n, P13394555503102402866.a n = A129189 (n + 1)

theorem P13394555503102402866.correct : P13394555503102402866.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel, A129189.P13394555503102402866.a, A129189.P3252235154664414244.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A064799, A064799.P13450618005534133469.a, A065890, A065890.P15936493256530540462.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129189

/-! ## A129189.P15096536681082645740

`A002808(n+1)+A014692(n+1)-1`
-/

namespace A129189.P15096536681082645740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A014692 (n + 1) - 1)

end

end A129189.P15096536681082645740

namespace A129189

/-- `A002808(n+1)+A014692(n+1)-1` -/
def P15096536681082645740.Spec : Prop :=
  ∀ n, P15096536681082645740.a n = A129189 (n + 1)

theorem P15096536681082645740.correct : P15096536681082645740.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel, A129189.P15096536681082645740.a, A129189.P3252235154664414244.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A014692, A014692.P2004927767556050134.a, A064799, A064799.P13450618005534133469.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129189

/-! ## A129189.P17301806940965660227

`A014689(n+1)+A079696(n+1)-1`
-/

namespace A129189.P17301806940965660227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (A079696 (n + 1) - 1)

end

end A129189.P17301806940965660227

namespace A129189

/-- `A014689(n+1)+A079696(n+1)-1` -/
def P17301806940965660227.Spec : Prop :=
  ∀ n, P17301806940965660227.a n = A129189 (n + 1)

theorem P17301806940965660227.correct : P17301806940965660227.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel, A129189.P17301806940965660227.a, A129189.P3252235154664414244.a, A014689, A014689.P6286543075765329050.a, A064799, A064799.P13450618005534133469.a, A079696, A079696.P2621453534582977077.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129189

/-! ## A129189.P15393927721652626676

`A002808(n+1)+A006093(n+1)-n`
-/

namespace A129189.P15393927721652626676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A006093 (n + 1) - (n : ℤ))

end

end A129189.P15393927721652626676

namespace A129189

/-- `A002808(n+1)+A006093(n+1)-n` -/
def P15393927721652626676.Spec : Prop :=
  ∀ n, P15393927721652626676.a n = A129189 (n + 1)

theorem P15393927721652626676.correct : P15393927721652626676.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel, A129189.P15393927721652626676.a, A129189.P3252235154664414244.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A006093, A006093.P2906174024863549003.a, A064799, A064799.P13450618005534133469.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129189

/-! ## A129189.P17766280551205741320

`A000040(n+1)+A072668(n+1)-n`
-/

namespace A129189.P17766280551205741320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A072668 (n + 1) - (n : ℤ))

end

end A129189.P17766280551205741320

namespace A129189

/-- `A000040(n+1)+A072668(n+1)-n` -/
def P17766280551205741320.Spec : Prop :=
  ∀ n, P17766280551205741320.a n = A129189 (n + 1)

theorem P17766280551205741320.correct : P17766280551205741320.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel, A129189.P17766280551205741320.a, A129189.P3252235154664414244.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A064799, A064799.P13450618005534133469.a, A072668, A072668.P5648318357023435289.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129189

/-! ## A129189.P14963955338299636974

`A000040(n+1)+A002808(n+1)-(n+1)`
-/

namespace A129189.P14963955338299636974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A002808 (n + 1) - (n + 1 : ℤ))

end

end A129189.P14963955338299636974

namespace A129189

/-- `A000040(n+1)+A002808(n+1)-(n+1)` -/
def P14963955338299636974.Spec : Prop :=
  ∀ n, P14963955338299636974.a n = A129189 (n + 1)

theorem P14963955338299636974.correct : P14963955338299636974.Spec := by
  intro n
  simp only [A129189, Nat.add_sub_cancel, A129189.P14963955338299636974.a, A129189.P3252235154664414244.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A064799, A064799.P13450618005534133469.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129189

/-! ## A129189.P5017113743172509712

`A000040(n+1)+A018252(n+2)-(n+1)`
-/

namespace A129189.P5017113743172509712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A018252 (n + 2) - (n + 1 : ℤ))

end

end A129189.P5017113743172509712

namespace A129189

/-- `A000040(n+1)+A018252(n+2)-(n+1)` -/
def P5017113743172509712.Spec : Prop :=
  ∀ n, P5017113743172509712.a n = A129189 (n + 1)

end A129189

/-! ## A129189.P972626292035815946

`A018252(n+2)+A040976(n+1)+1-n`
-/

namespace A129189.P972626292035815946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (A040976 (n + 1) + 1) - (n : ℤ)

end

end A129189.P972626292035815946

namespace A129189

/-- `A018252(n+2)+A040976(n+1)+1-n` -/
def P972626292035815946.Spec : Prop :=
  ∀ n, P972626292035815946.a n = A129189 (n + 1)

end A129189

/-! ## A129189.P15795755988472197778

`lt[1, A001222(n+1)]+A000040(n+1)-n`
-/

namespace A129189.P15795755988472197778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + A000040 (n + 1) - (n : ℤ)

end

end A129189.P15795755988472197778

namespace A129189

/-- `lt[1, A001222(n+1)]+A000040(n+1)-n` -/
def P15795755988472197778.Spec : Prop :=
  ∀ n, P15795755988472197778.a n = A129189 (n + 1)

end A129189

/-! ## A129189.P1636208293454395488

`A000040(n+1)+lt[A020639(n+1), n]-n`
-/

namespace A129189.P1636208293454395488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ))

end

end A129189.P1636208293454395488

namespace A129189

/-- `A000040(n+1)+lt[A020639(n+1), n]-n` -/
def P1636208293454395488.Spec : Prop :=
  ∀ n, P1636208293454395488.a n = A129189 (n + 1)

end A129189

/-!
# A129192: Least J such that J*p(n+1)#-K*p(n)#-1 and J*p(n+1)#-K*p(n)#+1 are twin primes for some K>0 and K<p(n+1) with p(n)=n-th prime and p(n)#=product of the first n primes = primorial(n).

The programs for A129192, there is no canonical definition to state claims against.
-/

/-! ## A129192.P16258011539352450631

`A165092(A033630(n²)+1)`
-/

namespace A129192.P16258011539352450631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 (A033630 (n ^ 2) + 1).toNat

end

end A129192.P16258011539352450631

/-! ## A129192.P10073415714060123615

`gcd(A000028(n+1), A109649(A109393(3*n)))`
-/

namespace A129192.P10073415714060123615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000028 (n + 1)) (A109649 (A109393 (3 * n)).toNat)

end

end A129192.P10073415714060123615

/-! ## A129192.P11677117714628862090

`gcd(A067659(A284463(n)), A168111(3*n+4))`
-/

namespace A129192.P11677117714628862090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067659 (A284463 n).toNat) (A168111 (3 * n + 4))

end

end A129192.P11677117714628862090

/-! ## A129192.P5547872429188628073

`A070939(and(A128902(n+3), A336466(n+1)))`
-/

namespace A129192.P5547872429188628073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.land (A128902 (n + 3)) (A336466 (n + 1))).toNat

end

end A129192.P5547872429188628073

/-! ## A129192.P15918661975911804450

`A007318(A188936(n+1)%A162911(3*(n+1)))`
-/

namespace A129192.P15918661975911804450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (A188936 (n + 1)) (A162911 (3 * (n + 1)))).toNat

end

end A129192.P15918661975911804450

/-!
# A129194: a(n) = (n/2)^2*(3 - (-1)^n).

The programs for A129194, the canonical program `A129194.P14466208917237569440` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129194 has offset 0).

The definition of A129194 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n/2)²*(3-(-1)^n)` (program `A129194.P5942616168204646020`, by `A129194.P5942616168204646020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129194.P16204510156970846432

`lcm(2, n²)/2`
-/

namespace A129194.P16204510156970846432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n ^ 2) : ℚ) / 2

end

end A129194.P16204510156970846432

namespace A129194

/-- `lcm(2, n²)/2` -/
def P16204510156970846432.Spec : Prop :=
  ∀ n, P16204510156970846432.a n = (A129194 n : ℚ)

end A129194

/-! ## A129194.P5141058284685393084

`n²*(1+n%2)/2`
-/

namespace A129194.P5141058284685393084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 * (1 + n % 2) : ℕ) : ℚ) / 2

end

end A129194.P5141058284685393084

namespace A129194

/-- `n²*(1+n%2)/2` -/
def P5141058284685393084.Spec : Prop :=
  ∀ n, P5141058284685393084.a n = (A129194 n : ℚ)

end A129194

/-! ## A129194.P5942616168204646020

`(n/2)²*(3-(-1)^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129194.P5942616168204646020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2 * (3 - (-1) ^ n : ℚ)

end

end A129194.P5942616168204646020

namespace A129194

/-- `(n/2)²*(3-(-1)^n)` -/
def P5942616168204646020.Spec : Prop :=
  ∀ n, P5942616168204646020.a n = (A129194 n : ℚ)

theorem P5942616168204646020.correct : P5942616168204646020.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A129194, Nat.add_sub_cancel, A129194.P5942616168204646020.a, A129194.P14466208917237569440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A129194, Nat.add_sub_cancel, A129194.P5942616168204646020.a, A129194.P14466208917237569440.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A129194

/-! ## A129194.P14466208917237569440

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=9, a(4)=8, a(5)=25`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129194

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P14466208917237569440.Spec : Prop :=
  ∀ n, P14466208917237569440.a n = A129194 n

theorem P14466208917237569440.correct : P14466208917237569440.Spec := by
  intro n
  simp only [A129194]

end A129194

/-! ## A129194.P17838502966929691391

`A000290(n)/A040001(n)`
-/

namespace A129194.P17838502966929691391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 n : ℚ) / (A040001 n : ℚ)

end

end A129194.P17838502966929691391

namespace A129194

/-- `A000290(n)/A040001(n)` -/
def P17838502966929691391.Spec : Prop :=
  ∀ n, P17838502966929691391.a n = (A129194 n : ℚ)

end A129194

/-! ## A129194.P3061706291602054232

`n²/gcd(2, n)`
-/

namespace A129194.P3061706291602054232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A129194.P3061706291602054232

namespace A129194

/-- `n²/gcd(2, n)` -/
def P3061706291602054232.Spec : Prop :=
  ∀ n, P3061706291602054232.a n = (A129194 n : ℚ)

end A129194

/-! ## A129194.P18071787675924070070

`gcd(C(n², 2), n²)`
-/

namespace A129194.P18071787675924070070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (n ^ 2) 2) (n ^ 2)

end

end A129194.P18071787675924070070

namespace A129194

/-- `gcd(C(n², 2), n²)` -/
def P18071787675924070070.Spec : Prop :=
  ∀ n, (P18071787675924070070.a n : ℤ) = A129194 n

end A129194

/-! ## A129194.P7072475020770486626

`sqrt(lcm(4, n^4))/2`
-/

namespace A129194.P7072475020770486626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 4 (n ^ 4) : ℝ) / 2

end

end A129194.P7072475020770486626

namespace A129194

/-- `sqrt(lcm(4, n^4))/2` -/
def P7072475020770486626.Spec : Prop :=
  ∀ n, P7072475020770486626.a n = (A129194 n : ℝ)

end A129194

/-! ## A129194.P960462494927211821

`n²/(2-n%2)`
-/

namespace A129194.P960462494927211821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)

end

end A129194.P960462494927211821

namespace A129194

/-- `n²/(2-n%2)` -/
def P960462494927211821.Spec : Prop :=
  ∀ n, P960462494927211821.a n = (A129194 n : ℚ)

end A129194

/-! ## A129194.P11257177066237126821

`n²/(2-and(1, n))`
-/

namespace A129194.P11257177066237126821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

end

end A129194.P11257177066237126821

namespace A129194

/-- `n²/(2-and(1, n))` -/
def P11257177066237126821.Spec : Prop :=
  ∀ n, P11257177066237126821.a n = (A129194 n : ℚ)

end A129194

/-! ## A129194.P15378726485280167790

`abs(n²/or(n, -2))`
-/

namespace A129194.P15378726485280167790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)|

end

end A129194.P15378726485280167790

namespace A129194

/-- `abs(n²/or(n, -2))` -/
def P15378726485280167790.Spec : Prop :=
  ∀ n, P15378726485280167790.a n = (A129194 n : ℚ)

end A129194

/-! ## A129194.P347157397267253812

`-(n²/or(n, -2))`
-/

namespace A129194.P347157397267253812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n ^ 2 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

end

end A129194.P347157397267253812

namespace A129194

/-- `-(n²/or(n, -2))` -/
def P347157397267253812.Spec : Prop :=
  ∀ n, P347157397267253812.a n = (A129194 n : ℚ)

end A129194

/-! ## A129194.P16236014341336187422

`gcd(n*∑[n], n²²)`
-/

namespace A129194.P16236014341336187422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n * (∑ j ∈ Finset.range (n + 1), f1 j)) ((n ^ 2) ^ 2)

end

end A129194.P16236014341336187422

namespace A129194

/-- `gcd(n*∑[n], n²²)` -/
def P16236014341336187422.Spec : Prop :=
  ∀ n, (P16236014341336187422.a n : ℤ) = A129194 n

end A129194

/-! ## A129194.P2962455227898621945

`Δ[C(n, 2)*floor(n/2)]`
-/

namespace A129194.P2962455227898621945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129194.P2962455227898621945

namespace A129194

/-- `Δ[C(n, 2)*floor(n/2)]` -/
def P2962455227898621945.Spec : Prop :=
  ∀ n, P2962455227898621945.a n = A129194 n

end A129194

/-! ## A129194.P9755195104885227066

`n²/(and(1, n+1)+1)`
-/

namespace A129194.P9755195104885227066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ)

end

end A129194.P9755195104885227066

namespace A129194

/-- `n²/(and(1, n+1)+1)` -/
def P9755195104885227066.Spec : Prop :=
  ∀ n, P9755195104885227066.a n = (A129194 n : ℚ)

end A129194

/-! ## A129194.P14469512862063443702

`n²/val(2*or(2, n), 2)`
-/

namespace A129194.P14469512862063443702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (SequenceMachineLib.valuation (2 * Nat.lor 2 n) 2 : ℚ)

end

end A129194.P14469512862063443702

namespace A129194

/-- `n²/val(2*or(2, n), 2)` -/
def P14469512862063443702.Spec : Prop :=
  ∀ n, P14469512862063443702.a n = (A129194 n : ℚ)

end A129194

/-! ## A129194.P3447633124675838415

`n²/(or(1, n)-(n-1))`
-/

namespace A129194.P3447633124675838415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1) : ℚ)

end

end A129194.P3447633124675838415

namespace A129194

/-- `n²/(or(1, n)-(n-1))` -/
def P3447633124675838415.Spec : Prop :=
  ∀ n, P3447633124675838415.a n = (A129194 n : ℚ)

end A129194

/-! ## A129194.P2942246025596482704

`lcm(n, and(n-1, -2))+n`
-/

namespace A129194.P2942246025596482704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.land ((n : ℤ) - 1) (-2)) + n

end

end A129194.P2942246025596482704

namespace A129194

/-- `lcm(n, and(n-1, -2))+n` -/
def P2942246025596482704.Spec : Prop :=
  ∀ n, (P2942246025596482704.a n : ℤ) = A129194 n

end A129194

/-! ## A129194.P16981164796055129491

`n²/Δ[or(1, n+1)]!`
-/

namespace A129194.P16981164796055129491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A129194.P16981164796055129491

namespace A129194

/-- `n²/Δ[or(1, n+1)]!` -/
def P16981164796055129491.Spec : Prop :=
  ∀ n, P16981164796055129491.a n = (A129194 n : ℚ)

end A129194

/-!
# A129195: a(n) = denominator(n!/4^n).

The programs for A129195, the canonical program `A129195.P4035285138527206210` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129195 has offset 0).

The definition of A129195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129195.P4035285138527206210

`2^A092391(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129195

/-- `2^A092391(n)` -/
def P4035285138527206210.Spec : Prop :=
  ∀ n, P4035285138527206210.a n = (A129195 n : ℚ)

end A129195

/-! ## A129195.P8362031609058418732

`∏[4/gcd(n, 2^(n+2))]`
-/

namespace A129195.P8362031609058418732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd n (2 ^ (n + 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129195.P8362031609058418732

namespace A129195

/-- `∏[4/gcd(n, 2^(n+2))]` -/
def P8362031609058418732.Spec : Prop :=
  ∀ n, P8362031609058418732.a n = (A129195 n : ℚ)

end A129195

/-! ## A129195.P16540828392977246330

`4*a(n-1)/and(n, -n)` with `a(0)=1`
-/

namespace A129195.P16540828392977246330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) / (Int.land (n : ℤ) (-(n : ℤ)) : ℚ))

end

end A129195.P16540828392977246330

namespace A129195

/-- `4*a(n-1)/and(n, -n)` -/
def P16540828392977246330.Spec : Prop :=
  ∀ n, P16540828392977246330.a n = (A129195 n : ℚ)

end A129195

/-! ## A129195.P422531048400039185

`2^(∑[∑{e}[xor(n, -n), 2-#]]+n)`
-/

namespace A129195.P422531048400039185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) : ℤ)

end

end A129195.P422531048400039185

namespace A129195

/-- `2^(∑[∑{e}[xor(n, -n), 2-#]]+n)` -/
def P422531048400039185.Spec : Prop :=
  ∀ n, P422531048400039185.a n = (A129195 n : ℚ)

end A129195

/-! ## A129195.P13165740889656119840

`2^(n+A000120(n))`
-/

namespace A129195.P13165740889656119840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) + A000120 n : ℤ)

end

end A129195.P13165740889656119840

namespace A129195

/-- `2^(n+A000120(n))` -/
def P13165740889656119840.Spec : Prop :=
  ∀ n, P13165740889656119840.a n = (A129195 n : ℚ)

end A129195

/-! ## A129195.P2276756188069228470

`2^n*A001316(n)`
-/

namespace A129195.P2276756188069228470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001316 n

end

end A129195.P2276756188069228470

namespace A129195

/-- `2^n*A001316(n)` -/
def P2276756188069228470.Spec : Prop :=
  ∀ n, P2276756188069228470.a n = A129195 n

end A129195

/-! ## A129195.P10320084088316722812

`2^(A230300(n+1)-1)`
-/

namespace A129195.P10320084088316722812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A230300 (n + 1) - 1 : ℤ)

end

end A129195.P10320084088316722812

namespace A129195

/-- `2^(A230300(n+1)-1)` -/
def P10320084088316722812.Spec : Prop :=
  ∀ n, P10320084088316722812.a n = (A129195 n : ℚ)

end A129195

/-! ## A129195.P4599047882950881142

`A000079(A092391(n))`
-/

namespace A129195.P4599047882950881142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A092391 n).toNat

end

end A129195.P4599047882950881142

namespace A129195

/-- `A000079(A092391(n))` -/
def P4599047882950881142.Spec : Prop :=
  ∀ n, P4599047882950881142.a n = A129195 n

end A129195

/-! ## A129195.P15049312256197021399

`A131577(A092391(n)+1)`
-/

namespace A129195.P15049312256197021399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A092391 n + 1).toNat

end

end A129195.P15049312256197021399

namespace A129195

/-- `A131577(A092391(n)+1)` -/
def P15049312256197021399.Spec : Prop :=
  ∀ n, P15049312256197021399.a n = A129195 n

end A129195

/-! ## A129195.P17236176624530779127

`A011782(A230300(n+1))`
-/

namespace A129195.P17236176624530779127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A230300 (n + 1)).toNat

end

end A129195.P17236176624530779127

namespace A129195

/-- `A011782(A230300(n+1))` -/
def P17236176624530779127.Spec : Prop :=
  ∀ n, P17236176624530779127.a n = A129195 n

end A129195

/-! ## A129195.P6487907167392324096

`A000079(A000120(n)+n)`
-/

namespace A129195.P6487907167392324096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 n + (n : ℤ)).toNat

end

end A129195.P6487907167392324096

namespace A129195

/-- `A000079(A000120(n)+n)` -/
def P6487907167392324096.Spec : Prop :=
  ∀ n, P6487907167392324096.a n = A129195 n

end A129195

/-! ## A129195.P13541181896812296108

`A056450(n)*A060632(n)`
-/

namespace A129195.P13541181896812296108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n * A060632 n

end

end A129195.P13541181896812296108

namespace A129195

/-- `A056450(n)*A060632(n)` -/
def P13541181896812296108.Spec : Prop :=
  ∀ n, P13541181896812296108.a n = A129195 n

end A129195

/-! ## A129195.P13714304301442962832

`A060818(n)*A102376(n)`
-/

namespace A129195.P13714304301442962832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 n * A102376 n

end

end A129195.P13714304301442962832

namespace A129195

/-- `A060818(n)*A102376(n)` -/
def P13714304301442962832.Spec : Prop :=
  ∀ n, P13714304301442962832.a n = A129195 n

end A129195

/-! ## A129195.P13850190426515485194

`A011782(n)*A167275(n)`
-/

namespace A129195.P13850190426515485194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A167275 n

end

end A129195.P13850190426515485194

namespace A129195

/-- `A011782(n)*A167275(n)` -/
def P13850190426515485194.Spec : Prop :=
  ∀ n, P13850190426515485194.a n = A129195 n

end A129195

/-! ## A129195.P6032180276180022701

`A048896(n)*A130188(n)`
-/

namespace A129195.P6032180276180022701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A130188 n

end

end A129195.P6032180276180022701

namespace A129195

/-- `A048896(n)*A130188(n)` -/
def P6032180276180022701.Spec : Prop :=
  ∀ n, P6032180276180022701.a n = A129195 n

end A129195

/-! ## A129195.P17649937898664358646

`A131577(∑[A088705(n)+1])`
-/

namespace A129195.P17649937898664358646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129195.P17649937898664358646

namespace A129195

/-- `A131577(∑[A088705(n)+1])` -/
def P17649937898664358646.Spec : Prop :=
  ∀ n, P17649937898664358646.a n = A129195 n

end A129195

/-! ## A129195.P17202094624228678304

`A001316(n)²*A060818(n)`
-/

namespace A129195.P17202094624228678304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2 * A060818 n

end

end A129195.P17202094624228678304

namespace A129195

/-- `A001316(n)²*A060818(n)` -/
def P17202094624228678304.Spec : Prop :=
  ∀ n, P17202094624228678304.a n = A129195 n

end A129195

/-! ## A129195.P14052210990889097327

`A000079(dr(A007088(n))+n)`
-/

namespace A129195.P14052210990889097327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.digitalRoot (A007088 n) + n)

end

end A129195.P14052210990889097327

namespace A129195

/-- `A000079(dr(A007088(n))+n)` -/
def P14052210990889097327.Spec : Prop :=
  ∀ n, P14052210990889097327.a n = A129195 n

end A129195

/-! ## A129195.P3266437024418911365

`A000079(A230300(n+1)-1)`
-/

namespace A129195.P3266437024418911365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A230300 (n + 1) - 1).toNat

end

end A129195.P3266437024418911365

namespace A129195

/-- `A000079(A230300(n+1)-1)` -/
def P3266437024418911365.Spec : Prop :=
  ∀ n, P3266437024418911365.a n = A129195 n

end A129195

/-! ## A129195.P10092759765205236375

`A011782(A000120(n)+n+1)`
-/

namespace A129195.P10092759765205236375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000120 n + (n + 1 : ℤ)).toNat

end

end A129195.P10092759765205236375

namespace A129195

/-- `A011782(A000120(n)+n+1)` -/
def P10092759765205236375.Spec : Prop :=
  ∀ n, P10092759765205236375.a n = A129195 n

end A129195

/-!
# A129196: a(n) = denominator(3*(3+(-1)^n)/(n+1)^3).

The programs for A129196, the canonical program `A129196.P8034916602911307826` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129196 has offset 0).

The definition of A129196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129196.P8034916602911307826

`(n+1)^3/(gcd(n+1, 2)*gcd(n+1, 3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129196

/-- `(n+1)^3/(gcd(n+1, 2)*gcd(n+1, 3))` -/
def P8034916602911307826.Spec : Prop :=
  ∀ n, P8034916602911307826.a n = (A129196 n : ℚ)

end A129196

/-! ## A129196.P3493026670793398458

`lcm(6, (n+1)^3)/6`
-/

namespace A129196.P3493026670793398458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6

end

end A129196.P3493026670793398458

namespace A129196

/-- `lcm(6, (n+1)^3)/6` -/
def P3493026670793398458.Spec : Prop :=
  ∀ n, P3493026670793398458.a n = (A129196 n : ℚ)

end A129196

/-! ## A129196.P10364245814809672974

`(n+1)^3/gcd(6, n+1)`
-/

namespace A129196.P10364245814809672974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (Nat.gcd 6 (n + 1) : ℚ)

end

end A129196.P10364245814809672974

namespace A129196

/-- `(n+1)^3/gcd(6, n+1)` -/
def P10364245814809672974.Spec : Prop :=
  ∀ n, P10364245814809672974.a n = (A129196 n : ℚ)

end A129196

/-! ## A129196.P10369958687007803030

`gcd((n+1)^3, C((n+1)^3, 6))`
-/

namespace A129196.P10369958687007803030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) ^ 3) (Nat.choose ((n + 1) ^ 3) 6)

end

end A129196.P10369958687007803030

namespace A129196

/-- `gcd((n+1)^3, C((n+1)^3, 6))` -/
def P10369958687007803030.Spec : Prop :=
  ∀ n, (P10369958687007803030.a n : ℤ) = A129196 n

end A129196

/-! ## A129196.P6746579273723823099

`(n+1)²*gcd((n+1)², ∑[n²])`
-/

namespace A129196.P6746579273723823099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * Nat.gcd ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129196.P6746579273723823099

namespace A129196

/-- `(n+1)²*gcd((n+1)², ∑[n²])` -/
def P6746579273723823099.Spec : Prop :=
  ∀ n, (P6746579273723823099.a n : ℤ) = A129196 n

end A129196

/-! ## A129196.P16140998272919986085

`(n+1)*A129202(n)`
-/

namespace A129196.P16140998272919986085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A129202 n

end

end A129196.P16140998272919986085

namespace A129196

/-- `(n+1)*A129202(n)` -/
def P16140998272919986085.Spec : Prop :=
  ∀ n, P16140998272919986085.a n = A129196 n

end A129196

/-! ## A129196.P11694156040482977248

`(n+1)²*A060789(n+1)`
-/

namespace A129196.P11694156040482977248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A060789 (n + 1)

end

end A129196.P11694156040482977248

namespace A129196

/-- `(n+1)²*A060789(n+1)` -/
def P11694156040482977248.Spec : Prop :=
  ∀ n, P11694156040482977248.a n = A129196 n

end A129196

/-! ## A129196.P7142763932081372769

`(n+1)²²/A385555(n+1)`
-/

namespace A129196.P7142763932081372769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℚ) / (A385555 (n + 1) : ℚ)

end

end A129196.P7142763932081372769

namespace A129196

/-- `(n+1)²²/A385555(n+1)` -/
def P7142763932081372769.Spec : Prop :=
  ∀ n, P7142763932081372769.a n = (A129196 n : ℚ)

end A129196

/-! ## A129196.P15306877910509414348

`(n+1)²*A051176(A026741(n+1))`
-/

namespace A129196.P15306877910509414348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A051176 (A026741 (n + 1)).toNat

end

end A129196.P15306877910509414348

namespace A129196

/-- `(n+1)²*A051176(A026741(n+1))` -/
def P15306877910509414348.Spec : Prop :=
  ∀ n, P15306877910509414348.a n = A129196 n

end A129196

/-! ## A129196.P9271609352957476876

`(n+1)^3/A089128(n+1)`
-/

namespace A129196.P9271609352957476876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A089128 (n + 1) : ℚ)

end

end A129196.P9271609352957476876

namespace A129196

/-- `(n+1)^3/A089128(n+1)` -/
def P9271609352957476876.Spec : Prop :=
  ∀ n, P9271609352957476876.a n = (A129196 n : ℚ)

end A129196

/-! ## A129196.P13671963126995022870

`A051176(n+1)*A129194(n+1)`
-/

namespace A129196.P13671963126995022870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1) * A129194 (n + 1)

end

end A129196.P13671963126995022870

namespace A129196

/-- `A051176(n+1)*A129194(n+1)` -/
def P13671963126995022870.Spec : Prop :=
  ∀ n, P13671963126995022870.a n = A129196 n

end A129196

/-! ## A129196.P1528840889703153008

`A026741(n+1)*A046162(n+2)`
-/

namespace A129196.P1528840889703153008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A046162 (n + 2)

end

end A129196.P1528840889703153008

namespace A129196

/-- `A026741(n+1)*A046162(n+2)` -/
def P1528840889703153008.Spec : Prop :=
  ∀ n, P1528840889703153008.a n = A129196 n

end A129196

/-! ## A129196.P12372786415813632800

`A051176(n+1)*A186646(n+1)*A283971(n+1)`
-/

namespace A129196.P12372786415813632800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1) * A186646 (n + 1) * A283971 (n + 1)

end

end A129196.P12372786415813632800

namespace A129196

/-- `A051176(n+1)*A186646(n+1)*A283971(n+1)` -/
def P12372786415813632800.Spec : Prop :=
  ∀ n, P12372786415813632800.a n = A129196 n

end A129196

/-! ## A129196.P16564302538642971528

`(n+1)²*A051724(A022998(n+1))`
-/

namespace A129196.P16564302538642971528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A051724 (A022998 (n + 1)).toNat

end

end A129196.P16564302538642971528

namespace A129196

/-- `(n+1)²*A051724(A022998(n+1))` -/
def P16564302538642971528.Spec : Prop :=
  ∀ n, P16564302538642971528.a n = A129196 n

end A129196

/-! ## A129196.P7886553897658864663

`(n+1)²*A060819(A145064(2*n))`
-/

namespace A129196.P7886553897658864663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A060819 (A145064 (2 * n)).toNat

end

end A129196.P7886553897658864663

namespace A129196

/-- `(n+1)²*A060819(A145064(2*n))` -/
def P7886553897658864663.Spec : Prop :=
  ∀ n, P7886553897658864663.a n = A129196 n

end A129196

/-! ## A129196.P7366364936574876214

`A026741(n+1)²*A237109(2*(n+1))`
-/

namespace A129196.P7366364936574876214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) ^ 2 * A237109 (2 * (n + 1))

end

end A129196.P7366364936574876214

namespace A129196

/-- `A026741(n+1)²*A237109(2*(n+1))` -/
def P7366364936574876214.Spec : Prop :=
  ∀ n, P7366364936574876214.a n = A129196 n

end A129196

/-! ## A129196.P862243678476028187

`A060819(2*(n+1))²*A146307(2*(n+1))`
-/

namespace A129196.P862243678476028187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * (n + 1)) ^ 2 * A146307 (2 * (n + 1))

end

end A129196.P862243678476028187

namespace A129196

/-- `A060819(2*(n+1))²*A146307(2*(n+1))` -/
def P862243678476028187.Spec : Prop :=
  ∀ n, P862243678476028187.a n = A129196 n

end A129196

/-! ## A129196.P13396549667198414141

`gcd(A000330(n+1), A079097(2*n+1))*A079097(2*n+1)`
-/

namespace A129196.P13396549667198414141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000330 (n + 1)) (A079097 (2 * n + 1)) : ℤ) * A079097 (2 * n + 1)

end

end A129196.P13396549667198414141

namespace A129196

/-- `gcd(A000330(n+1), A079097(2*n+1))*A079097(2*n+1)` -/
def P13396549667198414141.Spec : Prop :=
  ∀ n, P13396549667198414141.a n = A129196 n

end A129196

/-! ## A129196.P17676324520489595935

`gcd(A066023(n+1), A331353(n+1))`
-/

namespace A129196.P17676324520489595935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066023 (n + 1)) (A331353 (n + 1))

end

end A129196.P17676324520489595935

namespace A129196

/-- `gcd(A066023(n+1), A331353(n+1))` -/
def P17676324520489595935.Spec : Prop :=
  ∀ n, (P17676324520489595935.a n : ℤ) = A129196 n

end A129196

/-! ## A129196.P7681991296917292475

`A129202(n)-A181983(A129202(n))*A181983(n)`
-/

namespace A129196.P7681991296917292475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129202 n - A181983 (A129202 n).toNat * A181983 n

end

end A129196.P7681991296917292475

namespace A129196

/-- `A129202(n)-A181983(A129202(n))*A181983(n)` -/
def P7681991296917292475.Spec : Prop :=
  ∀ n, P7681991296917292475.a n = A129196 n

end A129196

/-!
# A129197: a(n) = numerator( 3*(3+(-1)^n)/(n+1)^3 ).

The programs for A129197, the canonical program `A129197.P9628709686983065751` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129197 has offset 0).

The definition of A129197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129197.P9628709686983065751

`gcd(12, n*(n+2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129197

/-- `gcd(12, n*(n+2))` -/
def P9628709686983065751.Spec : Prop :=
  ∀ n, (P9628709686983065751.a n : ℤ) = A129197 n

theorem P9628709686983065751.correct : P9628709686983065751.Spec := by
  intro n
  simp only [A129197]

end A129197

/-!
# A129198: Slater-Velez permutation sequence of the 2nd kind.

The programs for A129198, there is no canonical definition to state claims against.
-/

/-! ## A129198.P7243101229951758838

`A345941(C(A072946(n), A302776(2*(n+1))))`
-/

namespace A129198.P7243101229951758838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (Nat.choose (A072946 n).toNat (A302776 (2 * (n + 1))).toNat)

end

end A129198.P7243101229951758838

/-!
# A129199: Absolute differences of A129198.

The programs for A129199, there is no canonical definition to state claims against.
-/

/-! ## A129199.P16071234042844918299

`abs(Δ[A129198(n+1)])`
-/

namespace A129199.P16071234042844918299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129199.P16071234042844918299

/-! ## A129199.P12718232437259080292

`gcd(Δ[A129198(n+1)], A000038(n))`
-/

namespace A129199.P12718232437259080292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A129199.P12718232437259080292

/-! ## A129199.P3340190385721818806

`lcm(Δ[A129198(n+1)], A020985(n))`
-/

namespace A129199.P3340190385721818806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A020985 n)

end

end A129199.P3340190385721818806

/-! ## A129199.P12290203988421995482

`abs(A129198(n+1)-A129198(n+2))`
-/

namespace A129199.P12290203988421995482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129198 (n + 1) - A129198 (n + 2)|

end

end A129199.P12290203988421995482

