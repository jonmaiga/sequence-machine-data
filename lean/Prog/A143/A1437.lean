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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C001
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A143700: a(n) is the least odd number m minimizing A007947(m*(2^n-m)).

The programs for A143700, there is no canonical definition to state claims against.
-/

/-! ## A143700.P260411346182833217

`2^(n+1)-A143701(n+1)`
-/

namespace A143700.P260411346182833217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A143701 (n + 1)

end

end A143700.P260411346182833217

/-! ## A143700.P4556613094812859833

`and(-A143701(n+1), A126646(n))`
-/

namespace A143700.P4556613094812859833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A143701 (n + 1)) (A126646 n)

end

end A143700.P4556613094812859833

/-! ## A143700.P538460930451031328

`A048578(n)-(A143701(n+1)+1)`
-/

namespace A143700.P538460930451031328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (A143701 (n + 1) + 1)

end

end A143700.P538460930451031328

/-! ## A143700.P5690507792209518467

`xor(A000918(n+1), A143701(n+1))`
-/

namespace A143700.P5690507792209518467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000918 (n + 1)) (A143701 (n + 1))

end

end A143700.P5690507792209518467

/-! ## A143700.P16118782055788876193

`A000079(n)+A000079(n)-A143701(n+1)`
-/

namespace A143700.P16118782055788876193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000079 n - A143701 (n + 1))

end

end A143700.P16118782055788876193

/-!
# A143701: a(n) is the least odd number 2^n - m minimizing A007947(m*(2^n - m)).

The programs for A143701, there is no canonical definition to state claims against.
-/

/-! ## A143701.P11561853225329042223

`2^(n+1)-A143700(n+1)`
-/

namespace A143701.P11561853225329042223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A143700 (n + 1)

end

end A143701.P11561853225329042223

/-! ## A143701.P1571038961641730882

`and(-A143700(n+1), A126646(n))`
-/

namespace A143701.P1571038961641730882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A143700 (n + 1)) (A126646 n)

end

end A143701.P1571038961641730882

/-! ## A143701.P17986976726440900703

`xor(A000918(n+1), A143700(n+1))`
-/

namespace A143701.P17986976726440900703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000918 (n + 1)) (A143700 (n + 1))

end

end A143701.P17986976726440900703

/-! ## A143701.P14648156890373179856

`and(-A143700(n+1), ∑[A000079(n)])`
-/

namespace A143701.P14648156890373179856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A143700 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143701.P14648156890373179856

/-! ## A143701.P17316829110022001837

`and(-A143700(n+1), A278755(2*n))`
-/

namespace A143701.P17316829110022001837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A143700 (n + 1)) (A278755 (2 * n))

end

end A143701.P17316829110022001837

/-!
# A143702: a(n) is the minimal values of A007947((2^n)*m*(2^n-m)).

The programs for A143702, there is no canonical definition to state claims against.
-/

/-! ## A143702.P7329670499226250951

`2*A143703(n+1)`
-/

namespace A143702.P7329670499226250951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143703 (n + 1)

end

end A143702.P7329670499226250951

/-! ## A143702.P15155587880403108634

`lcm(2, A143703(A000027(n+1)))`
-/

namespace A143702.P15155587880403108634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A143703 (A000027 (n + 1)).toNat)

end

end A143702.P15155587880403108634

/-! ## A143702.P17953846636179351817

`lcm(A010696(n), A143703(n+1))`
-/

namespace A143702.P17953846636179351817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010696 n) (A143703 (n + 1))

end

end A143702.P17953846636179351817

/-! ## A143702.P12132681252920472301

`A143703(n+1)+A143703((n+1)%(n+2))`
-/

namespace A143702.P12132681252920472301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143703 (n + 1) + A143703 ((n + 1) % (n + 2))

end

end A143702.P12132681252920472301

/-! ## A143702.P1018443956066854029

`A143703(A000027(n+1))+A143703(n+1)`
-/

namespace A143702.P1018443956066854029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143703 (A000027 (n + 1)).toNat + A143703 (n + 1)

end

end A143702.P1018443956066854029

/-!
# A143703: a(n) = A143702(n)/2.

The programs for A143703, there is no canonical definition to state claims against.
-/

/-! ## A143703.P12552804835526894981

`A143702(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143703.P12552804835526894981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143702 (n + 1) : ℚ) / 2

end

end A143703.P12552804835526894981

/-! ## A143703.P4505492445780523300

`(A143700(n+1)*A143701(n+1))%A143702(n+1)`
-/

namespace A143703.P4505492445780523300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143700 (n + 1) * A143701 (n + 1)) (A143702 (n + 1))

end

end A143703.P4505492445780523300

/-! ## A143703.P18217911084064124529

`∏{p}[A143702(n+1), A000265(#)]`
-/

namespace A143703.P18217911084064124529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000265 p

end

end A143703.P18217911084064124529

/-! ## A143703.P4554371010003869640

`∏{p}[A143702(n+1), A026741(#)]`
-/

namespace A143703.P4554371010003869640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A026741 p

end

end A143703.P4554371010003869640

/-! ## A143703.P15835374123001368725

`∏{p}[A143702(n+1), A093178(#)]`
-/

namespace A143703.P15835374123001368725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A093178 p

end

end A143703.P15835374123001368725

/-!
# A143708: (1, 2, 3, 2^2, 5, 2*3, 7, 2^3, 3^2, 2*5, 11, 2^2*3, 13, 2*7, 3*5,..) becomes (1^(2+3), 2^(2+5), 2^(3+7), 2^(3+3), 2^(2+5), 11^(2+2), 3^(13+2), 7^(3+5),..).

The programs for A143708, there is no canonical definition to state claims against.
-/

/-! ## A143708.P6072851950246055335

`A062383((∑[∑[n+4]+2]-6)^and(2, -n)!)`
-/

namespace A143708.P6072851950246055335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6) ^ Nat.factorial (Int.land 2 (-(n : ℤ))).toNat).toNat

end

end A143708.P6072851950246055335

/-!
# A143709: (1, 2, 3, 2^2, 5, 2*3, 7, 2^3, 3^2, 2*5, 11, 2^2*3, 13, 2*7, 3*5,..) becomes (1^2+3, 2^2+5, 2^3+7, 2^3+3, 2^2+5, 11^2+2, 3^13+2, 7^3+5,..).

The programs for A143709, there is no canonical definition to state claims against.
-/

/-! ## A143709.P13294334538005016577

`A118045(A367766(n+1))+A005875(n)`
-/

namespace A143709.P13294334538005016577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118045 (A367766 (n + 1)).toNat + A005875 n

end

end A143709.P13294334538005016577

/-! ## A143709.P16624375798097353987

`A005875(n)*A040861(A254433(n+1))+3`
-/

namespace A143709.P16624375798097353987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A040861 (A254433 (n + 1)).toNat + 3

end

end A143709.P16624375798097353987

/-!
# A143712: Numbers with at least two digits in which all digits except the rightmost are even and the rightmost is odd.

The programs for A143712, the canonical program `A143712.P3954997393582699458` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143712 has offset 1).

The definition of A143712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143712.P11531397343540001183

`A014263(6+n)+1`
-/

namespace A143712.P11531397343540001183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (6 + n) + 1

end

end A143712.P11531397343540001183

namespace A143712

/-- `A014263(6+n)+1` -/
def P11531397343540001183.Spec : Prop :=
  ∀ n, P11531397343540001183.a n = A143712 (n + 1)

end A143712

/-! ## A143712.P3954997393582699458

`A024657(2*n+11)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A143712

/-- `A024657(2*n+11)` -/
def P3954997393582699458.Spec : Prop :=
  ∀ n, P3954997393582699458.a n = A143712 (n + 1)

theorem P3954997393582699458.correct : P3954997393582699458.Spec := by
  intro n
  simp only [A143712, Nat.add_sub_cancel]

end A143712

/-! ## A143712.P4290385158003775393

`2*A007091(n+5)+1`
-/

namespace A143712.P4290385158003775393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007091 (n + 5) + 1

end

end A143712.P4290385158003775393

namespace A143712

/-- `2*A007091(n+5)+1` -/
def P4290385158003775393.Spec : Prop :=
  ∀ n, P4290385158003775393.a n = A143712 (n + 1)

end A143712

/-! ## A143712.P17614983401002478823

`A275775(2*(n+5))+1`
-/

namespace A143712.P17614983401002478823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275775 (2 * (n + 5)) + 1

end

end A143712.P17614983401002478823

namespace A143712

/-- `A275775(2*(n+5))+1` -/
def P17614983401002478823.Spec : Prop :=
  ∀ n, P17614983401002478823.a n = A143712 (n + 1)

end A143712

/-! ## A143712.P13743816823303079588

`∩[A007929(n+1), A024657(n)]`
-/

namespace A143712.P13743816823303079588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143712.P13743816823303079588

namespace A143712

/-- `∩[A007929(n+1), A024657(n)]` -/
def P13743816823303079588.Spec : Prop :=
  ∀ n, (P13743816823303079588.a n : ℤ) = A143712 (n + 1)

end A143712

/-! ## A143712.P13663013178073828734

`∩[A007929(n+1), A242367(n+1)]`
-/

namespace A143712.P13663013178073828734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143712.P13663013178073828734

namespace A143712

/-- `∩[A007929(n+1), A242367(n+1)]` -/
def P13663013178073828734.Spec : Prop :=
  ∀ n, (P13663013178073828734.a n : ℤ) = A143712 (n + 1)

end A143712

/-! ## A143712.P7132816035411843989

`∩[A007929(n+1), A294601(n+1)]`
-/

namespace A143712.P7132816035411843989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143712.P7132816035411843989

namespace A143712

/-- `∩[A007929(n+1), A294601(n+1)]` -/
def P7132816035411843989.Spec : Prop :=
  ∀ n, (P7132816035411843989.a n : ℤ) = A143712 (n + 1)

end A143712

/-! ## A143712.P17059515942167020343

`A005408(A007091(n+5))`
-/

namespace A143712.P17059515942167020343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A007091 (n + 5)).toNat

end

end A143712.P17059515942167020343

namespace A143712

/-- `A005408(A007091(n+5))` -/
def P17059515942167020343.Spec : Prop :=
  ∀ n, P17059515942167020343.a n = A143712 (n + 1)

end A143712

/-! ## A143712.P2730498095161532074

`eq[1, A067898(A073053(n))]+1`
-/

namespace A143712.P2730498095161532074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A073053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143712.P2730498095161532074

namespace A143712

/-- `eq[1, A067898(A073053(n))]+1` -/
def P2730498095161532074.Spec : Prop :=
  ∀ n, (P2730498095161532074.a n : ℤ) = A143712 (n + 1)

end A143712

/-! ## A143712.P1832740590558185512

`A004442(A014263(n+6))`
-/

namespace A143712.P1832740590558185512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A014263 (n + 6)).toNat

end

end A143712.P1832740590558185512

namespace A143712

/-- `A004442(A014263(n+6))` -/
def P1832740590558185512.Spec : Prop :=
  ∀ n, P1832740590558185512.a n = A143712 (n + 1)

end A143712

/-! ## A143712.P6944091617205451590

`eq[A005102(n), A103181(n)]`
-/

namespace A143712.P6944091617205451590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143712.P6944091617205451590

namespace A143712

/-- `eq[A005102(n), A103181(n)]` -/
def P6944091617205451590.Spec : Prop :=
  ∀ n, (P6944091617205451590.a n : ℤ) = A143712 (n + 1)

end A143712

/-! ## A143712.P7226368284638358444

`eq[A103181(n), A144915(n)]`
-/

namespace A143712.P7226368284638358444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143712.P7226368284638358444

namespace A143712

/-- `eq[A103181(n), A144915(n)]` -/
def P7226368284638358444.Spec : Prop :=
  ∀ n, (P7226368284638358444.a n : ℤ) = A143712 (n + 1)

end A143712

/-! ## A143712.P14225265188237130750

`A004273(A007091(n+5)+1)`
-/

namespace A143712.P14225265188237130750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A007091 (n + 5) + 1).toNat

end

end A143712.P14225265188237130750

namespace A143712

/-- `A004273(A007091(n+5)+1)` -/
def P14225265188237130750.Spec : Prop :=
  ∀ n, P14225265188237130750.a n = A143712 (n + 1)

end A143712

/-! ## A143712.P12034550563663240362

`eq[A059628(n), A143190(n+1)]`
-/

namespace A143712.P12034550563663240362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059628 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143712.P12034550563663240362

namespace A143712

/-- `eq[A059628(n), A143190(n+1)]` -/
def P12034550563663240362.Spec : Prop :=
  ∀ n, (P12034550563663240362.a n : ℤ) = A143712 (n + 1)

end A143712

/-! ## A143712.P9604989295076845219

`eq[A057816(n+1)², A196564(n)]`
-/

namespace A143712.P9604989295076845219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057816 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143712.P9604989295076845219

namespace A143712

/-- `eq[A057816(n+1)², A196564(n)]` -/
def P9604989295076845219.Spec : Prop :=
  ∀ n, (P9604989295076845219.a n : ℤ) = A143712 (n + 1)

end A143712

/-! ## A143712.P17847757938701274794

`lt[A059628(n), acot(A059581(n+1))]+1`
-/

namespace A143712.P17847757938701274794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059628 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A059581 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A143712.P17847757938701274794

namespace A143712

/-- `lt[A059628(n), acot(A059581(n+1))]+1` -/
def P17847757938701274794.Spec : Prop :=
  ∀ n, (P17847757938701274794.a n : ℤ) = A143712 (n + 1)

end A143712

/-! ## A143712.P1583695981447620087

`lt[2, A010673(A179051(n))*A045841(n)]`
-/

namespace A143712.P1583695981447620087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A179051 n).toNat * A045841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A143712.P1583695981447620087

namespace A143712

/-- `lt[2, A010673(A179051(n))*A045841(n)]` -/
def P1583695981447620087.Spec : Prop :=
  ∀ n, (P1583695981447620087.a n : ℤ) = A143712 (n + 1)

end A143712

/-!
# A143714: Number of pairs (a,b), 1 <= a <= b <= n, such that (a+b)^2+n^2 is a square.

The programs for A143714, there is no canonical definition to state claims against.
-/

/-! ## A143714.P7336992973657093180

`Δ[A143715(round(acot(n)+n))]`
-/

namespace A143714.P7336992973657093180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143715 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143714.P7336992973657093180

/-! ## A143714.P10350103155994906190

`Δ[A143715(abs(1-n)+1)]`
-/

namespace A143714.P10350103155994906190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143715 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143714.P10350103155994906190

/-! ## A143714.P17234481827479946770

`abs(Δ[A143715(A028310(n))])`
-/

namespace A143714.P17234481827479946770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143715 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A143714.P17234481827479946770

/-! ## A143714.P17643909662078216589

`A143715(n+1)-A143715(round(acot(n)+n))`
-/

namespace A143714.P17643909662078216589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143715 (n + 1) - A143715 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A143714.P17643909662078216589

/-! ## A143714.P16740996659602471420

`Δ[A143715(A028310(n))]/A054977(n)`
-/

namespace A143714.P16740996659602471420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143715 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A054977 n : ℚ)

end

end A143714.P16740996659602471420

/-! ## A143714.P17251639596513510918

`A143715(n+1)-A143715(A028310(n))`
-/

namespace A143714.P17251639596513510918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143715 (n + 1) - A143715 (A028310 n).toNat

end

end A143714.P17251639596513510918

/-! ## A143714.P5243725497544211551

`A143715(n+1)-A143715(A233583(n+1))`
-/

namespace A143714.P5243725497544211551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143715 (n + 1) - A143715 (A233583 (n + 1)).toNat

end

end A143714.P5243725497544211551

/-! ## A143714.P14822595438629679222

`abs(Δ[A143715(A233583(n+1))])`
-/

namespace A143714.P14822595438629679222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143715 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A143714.P14822595438629679222

/-!
# A143715: Number of subsets {a,b,c} of {1,...,n} such that (a+b)^2+c^2 is a square (where c = max(a,b)) and a <= b.

The programs for A143715, there is no canonical definition to state claims against.
-/

/-! ## A143715.P6036523840027425752

`∑[A143714(n+1)]`
-/

namespace A143715.P6036523840027425752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143715.P6036523840027425752

/-!
# A143716: (0, 1, 2, 3, 2^2, 5, 2*3, 7, 2^3, 3^2, 2*5, 11, 2^2*3,..) becomes (1, 2, 3, 4, 5^6, 7, 8*9, 10, 11^12, 13^14, 15*16, 17, 18^19*20,..).

The programs for A143716, there is no canonical definition to state claims against.
-/

/-! ## A143716.P6356709688192708399

`(n+1)^(∑[n-2]+3)!`
-/

namespace A143716.P6356709688192708399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A143716.P6356709688192708399

/-!
# A143718: Complement of A135130.

The programs for A143718, there is no canonical definition to state claims against.
-/

/-! ## A143718.P10395562661113884561

`lt[1, A000265(A323761(n+1))]+1`
-/

namespace A143718.P10395562661113884561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A323761 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A143718.P10395562661113884561

/-! ## A143718.P14414987294918694930

`lt[2, A006530(A324507(n+1))]+1`
-/

namespace A143718.P14414987294918694930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A324507 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A143718.P14414987294918694930

/-! ## A143718.P15103698497326510346

`∩[comp[A135130(n+1)], A130446(n+1)]`
-/

namespace A143718.P15103698497326510346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A143718.P15103698497326510346

/-! ## A143718.P10048402150408753695

`comp[∪[A081135(3*n+1), A135130(n+1)]]`
-/

namespace A143718.P10048402150408753695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081135 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A143718.P10048402150408753695

/-! ## A143718.P13113281243726944326

`comp[∪[A135130(n+1), A220477(3*n+2)]]`
-/

namespace A143718.P13113281243726944326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135130 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220477 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A143718.P13113281243726944326

/-!
# A143719: Let n = Product_{p} p ^ e_p be the prime factorization of n and let M = max{e_p}. Then n is in the sequence iff for all primes q in the range 2 <= q <= M we have e_q >= Sum_{r} floor( log_q (e_r + 1) ).

The programs for A143719, there is no canonical definition to state claims against.
-/

/-! ## A143719.P10853873304668476837

`comp[A143720(n+1)-1]+1`
-/

namespace A143719.P10853873304668476837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A143719.P10853873304668476837

/-! ## A143719.P15419403663269699625

`lt[char[A143720(n+1)], n/A123208(n)]`
-/

namespace A143719.P15419403663269699625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A123208 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A143719.P15419403663269699625

/-! ## A143719.P1666600258155382693

`eq[char[A143720(n+1)], A151933(n)]`
-/

namespace A143719.P1666600258155382693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A143719.P1666600258155382693

/-! ## A143719.P17720660026225187248

`eq[char[A143720(n+1)], A151622(n)]`
-/

namespace A143719.P17720660026225187248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A143719.P17720660026225187248

/-! ## A143719.P15564763469155149845

`A055642(A179781(n+1))+A000378(n+1)`
-/

namespace A143719.P15564763469155149845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A179781 (n + 1)).toNat + A000378 (n + 1)

end

end A143719.P15564763469155149845

/-!
# A143720: Complement of A143719.

The programs for A143720, there is no canonical definition to state claims against.
-/

/-! ## A143720.P2723374958514643047

`eq[char[A143719(n+1)], A151933(n)]`
-/

namespace A143720.P2723374958514643047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143719 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A143720.P2723374958514643047

/-! ## A143720.P3781678579061291361

`lt[A105570(A075681(n+1)), A105570(n)]`
-/

namespace A143720.P3781678579061291361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A075681 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A143720.P3781678579061291361

/-! ## A143720.P10730102312107772816

`A046790(lt[A249787(n), A349279(n+1)])`
-/

namespace A143720.P10730102312107772816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249787 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A143720.P10730102312107772816

/-! ## A143720.P13609016847806859919

`A046790(lt[A084938(n), A336886(2*n+1)])`
-/

namespace A143720.P13609016847806859919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336886 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A143720.P13609016847806859919

/-! ## A143720.P13249682310053879351

`A046790(lt[A008836(n+1), A336886(2*n+1)])`
-/

namespace A143720.P13249682310053879351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336886 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A143720.P13249682310053879351

/-!
# A143721: Aliquot sequence starting at 38.

The programs for A143721, the canonical program `A143721.P7011217225613206170` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143721 has offset 0).

The definition of A143721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143721.P7011217225613206170

`A001065(A028310(a(n-1)))` with `a(0)=38`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143721

/-- `A001065(A028310(a(n-1)))` -/
def P7011217225613206170.Spec : Prop :=
  ∀ n, P7011217225613206170.a n = A143721 n

theorem P7011217225613206170.correct : P7011217225613206170.Spec := by
  intro n
  simp only [A143721]

end A143721

/-!
# A143722: Aliquot sequence starting at 48.

The programs for A143722, the canonical program `A143722.P17896220060263114756` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143722 has offset 0).

The definition of A143722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143722.P17896220060263114756

`A001065(A028310(a(n-1)))` with `a(0)=48`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143722

/-- `A001065(A028310(a(n-1)))` -/
def P17896220060263114756.Spec : Prop :=
  ∀ n, P17896220060263114756.a n = A143722 n

theorem P17896220060263114756.correct : P17896220060263114756.Spec := by
  intro n
  simp only [A143722]

end A143722

/-!
# A143723: Aliquot sequence starting at 52.

The programs for A143723, there is no canonical definition to state claims against.
-/

/-! ## A143723.P11180763155821225582

`A143759(n)-A143733(A325161(n+1))`
-/

namespace A143723.P11180763155821225582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143759 n - A143733 (A325161 (n + 1)).toNat

end

end A143723.P11180763155821225582

/-!
# A143724: Triangle read by rows, inverse Möbius transform of a diagonalized matrix of A116477.

The programs for A143724, the canonical program `A143724.P13957394910154279375` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143724 has offset 1).

The definition of A143724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143724.P13957394910154279375

`∑{d}[A127093(1+n), A332684(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143724

/-- `∑{d}[A127093(1+n), A332684(#)]` -/
def P13957394910154279375.Spec : Prop :=
  ∀ n, P13957394910154279375.a n = A143724 (n + 1)

theorem P13957394910154279375.correct : P13957394910154279375.Spec := by
  intro n
  simp only [A143724, Nat.add_sub_cancel]

end A143724

/-! ## A143724.P13918684151937849988

`A051731(n+1)*A116477(A002260(n+1))`
-/

namespace A143724.P13918684151937849988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A116477 (A002260 (n + 1)).toNat

end

end A143724.P13918684151937849988

namespace A143724

/-- `A051731(n+1)*A116477(A002260(n+1))` -/
def P13918684151937849988.Spec : Prop :=
  ∀ n, P13918684151937849988.a n = A143724 (n + 1)

end A143724

/-! ## A143724.P6205979860331249123

`A051731(n+1)*A116477(A002262(n)+1)`
-/

namespace A143724.P6205979860331249123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A116477 (A002262 n + 1).toNat

end

end A143724.P6205979860331249123

namespace A143724

/-- `A051731(n+1)*A116477(A002262(n)+1)` -/
def P6205979860331249123.Spec : Prop :=
  ∀ n, P6205979860331249123.a n = A143724 (n + 1)

end A143724

/-! ## A143724.P12725179634323812476

`A051731(n+1)*A116477(A050873(n+1))`
-/

namespace A143724.P12725179634323812476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A116477 (A050873 (n + 1)).toNat

end

end A143724.P12725179634323812476

namespace A143724

/-- `A051731(n+1)*A116477(A050873(n+1))` -/
def P12725179634323812476.Spec : Prop :=
  ∀ n, P12725179634323812476.a n = A143724 (n + 1)

end A143724

/-! ## A143724.P17914684640843442966

`A051731(n+1)*A116477(A123275(n+1))`
-/

namespace A143724.P17914684640843442966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A116477 (A123275 (n + 1)).toNat

end

end A143724.P17914684640843442966

namespace A143724

/-- `A051731(n+1)*A116477(A123275(n+1))` -/
def P17914684640843442966.Spec : Prop :=
  ∀ n, P17914684640843442966.a n = A143724 (n + 1)

end A143724

/-! ## A143724.P12565110337194837432

`A116477(A002260(n+1))%A054519(A127093(n+1))`
-/

namespace A143724.P12565110337194837432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116477 (A002260 (n + 1)).toNat) (A054519 (A127093 (n + 1)).toNat)

end

end A143724.P12565110337194837432

namespace A143724

/-- `A116477(A002260(n+1))%A054519(A127093(n+1))` -/
def P12565110337194837432.Spec : Prop :=
  ∀ n, P12565110337194837432.a n = A143724 (n + 1)

end A143724

/-! ## A143724.P13784202442003618548

`A116477(A050873(n+1))%A054519(A127093(n+1))`
-/

namespace A143724.P13784202442003618548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116477 (A050873 (n + 1)).toNat) (A054519 (A127093 (n + 1)).toNat)

end

end A143724.P13784202442003618548

namespace A143724

/-- `A116477(A050873(n+1))%A054519(A127093(n+1))` -/
def P13784202442003618548.Spec : Prop :=
  ∀ n, P13784202442003618548.a n = A143724 (n + 1)

end A143724

/-! ## A143724.P15790637337315885149

`A051731(n+1)*A116477(A307662(n+1))`
-/

namespace A143724.P15790637337315885149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A116477 (A307662 (n + 1)).toNat

end

end A143724.P15790637337315885149

namespace A143724

/-- `A051731(n+1)*A116477(A307662(n+1))` -/
def P15790637337315885149.Spec : Prop :=
  ∀ n, P15790637337315885149.a n = A143724 (n + 1)

end A143724

/-! ## A143724.P6341333495827671069

`A057427(A156348(n+1))*A116477(A002260(n+1))`
-/

namespace A143724.P6341333495827671069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A156348 (n + 1)).toNat * A116477 (A002260 (n + 1)).toNat

end

end A143724.P6341333495827671069

namespace A143724

/-- `A057427(A156348(n+1))*A116477(A002260(n+1))` -/
def P6341333495827671069.Spec : Prop :=
  ∀ n, P6341333495827671069.a n = A143724 (n + 1)

end A143724

/-!
# A143727: Near-prime numbers: numbers n such that n-2=prime, n+2=prime, n-4=prime, n+4=prime, n-8=prime, n+8=prime.

The programs for A143727, there is no canonical definition to state claims against.
-/

/-! ## A143727.P17649845127787348844

`8+A022008(n+1)`
-/

namespace A143727.P17649845127787348844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 + A022008 (n + 1)

end

end A143727.P17649845127787348844

/-! ## A143727.P8905338336546654974

`A271000(6*n+1)+8`
-/

namespace A143727.P8905338336546654974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (6 * n + 1) + 8

end

end A143727.P8905338336546654974

/-! ## A143727.P8080263100475931293

`abs(A271000(A016969(n))-4)`
-/

namespace A143727.P8080263100475931293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A271000 (A016969 n).toNat - 4|

end

end A143727.P8080263100475931293

/-! ## A143727.P15005329178086494321

`(A271000(A016969(n))-4)%A016961(n)`
-/

namespace A143727.P15005329178086494321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271000 (A016969 n).toNat - 4) (A016961 n)

end

end A143727.P15005329178086494321

/-! ## A143727.P8717839802062395140

`or(A271000(A016969(n))-4, A000007(n))`
-/

namespace A143727.P8717839802062395140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A271000 (A016969 n).toNat - 4) (A000007 n)

end

end A143727.P8717839802062395140

/-! ## A143727.P15817915428843522899

`A000007(n+1)+A271000(A016969(n))-4`
-/

namespace A143727.P15817915428843522899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A271000 (A016969 n).toNat - 4)

end

end A143727.P15817915428843522899

/-! ## A143727.P11624728850850000947

`(A271000(A016969(n))-4)*A010685(A005843(n))`
-/

namespace A143727.P11624728850850000947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271000 (A016969 n).toNat - 4) * A010685 (A005843 n).toNat

end

end A143727.P11624728850850000947

/-! ## A143727.P14411059510039274483

`(A271000(A016969(n))-4)*A057427(A008619(n))`
-/

namespace A143727.P14411059510039274483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271000 (A016969 n).toNat - 4) * A057427 (A008619 n).toNat

end

end A143727.P14411059510039274483

/-! ## A143727.P2055181646663272453

`(A271000(A016969(n))-4)*A057427(A028310(n))`
-/

namespace A143727.P2055181646663272453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271000 (A016969 n).toNat - 4) * A057427 (A028310 n).toNat

end

end A143727.P2055181646663272453

/-! ## A143727.P12646033253081404008

`A007949(A007951(n+1))+A271000(A016969(n))-4`
-/

namespace A143727.P12646033253081404008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A007951 (n + 1)).toNat + (A271000 (A016969 n).toNat - 4)

end

end A143727.P12646033253081404008

/-! ## A143727.P1125339785994103506

`A073097(A007958(n+1))+A271000(A016969(n))-4`
-/

namespace A143727.P1125339785994103506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A007958 (n + 1)).toNat + (A271000 (A016969 n).toNat - 4)

end

end A143727.P1125339785994103506

/-! ## A143727.P12122617095323809089

`A022007(A199004(n+1))+8`
-/

namespace A143727.P12122617095323809089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (A199004 (n + 1)).toNat + 8

end

end A143727.P12122617095323809089

/-! ## A143727.P10667527862085420718

`A007949(A114272(n+1))+A271000(A016969(n))-4`
-/

namespace A143727.P10667527862085420718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A114272 (n + 1)).toNat + (A271000 (A016969 n).toNat - 4)

end

end A143727.P10667527862085420718

/-! ## A143727.P9919368358598308854

`A024164(A000124(n))+A271000(A016969(n))-4`
-/

namespace A143727.P9919368358598308854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024164 (A000124 n).toNat + (A271000 (A016969 n).toNat - 4)

end

end A143727.P9919368358598308854

/-!
# A143728: Triangle read by rows: termwise product of mu(n) and n-th row of A127368.

The programs for A143728, the canonical program `A143728.P7047325683167744552` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143728 has offset 1).

The definition of A143728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143728.P7047325683167744552

`A128227(n)*A128431(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143728

/-- `A128227(n)*A128431(n+1)` -/
def P7047325683167744552.Spec : Prop :=
  ∀ n, P7047325683167744552.a n = A143728 (n + 1)

theorem P7047325683167744552.correct : P7047325683167744552.Spec := by
  intro n
  simp only [A143728, Nat.add_sub_cancel]

end A143728

/-! ## A143728.P18397763035209911369

`A128431(n+1)*A193738(n)`
-/

namespace A143728.P18397763035209911369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128431 (n + 1) * A193738 n

end

end A143728.P18397763035209911369

namespace A143728

/-- `A128431(n+1)*A193738(n)` -/
def P18397763035209911369.Spec : Prop :=
  ∀ n, P18397763035209911369.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P5323185642065823538

`A002260(n+1)*A128431(n+1)`
-/

namespace A143728.P5323185642065823538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128431 (n + 1)

end

end A143728.P5323185642065823538

namespace A143728

/-- `A002260(n+1)*A128431(n+1)` -/
def P5323185642065823538.Spec : Prop :=
  ∀ n, P5323185642065823538.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P6636954631615562245

`(A002262(n)+1)*A128431(n+1)`
-/

namespace A143728.P6636954631615562245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A128431 (n + 1)

end

end A143728.P6636954631615562245

namespace A143728

/-- `(A002262(n)+1)*A128431(n+1)` -/
def P6636954631615562245.Spec : Prop :=
  ∀ n, P6636954631615562245.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P11548415034041289984

`A054527(n+1)*A127368(n+1)`
-/

namespace A143728.P11548415034041289984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A127368 (n + 1)

end

end A143728.P11548415034041289984

namespace A143728

/-- `A054527(n+1)*A127368(n+1)` -/
def P11548415034041289984.Spec : Prop :=
  ∀ n, P11548415034041289984.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P13220176971294863474

`A054532(n+1)*A127368(n+1)`
-/

namespace A143728.P13220176971294863474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (n + 1) * A127368 (n + 1)

end

end A143728.P13220176971294863474

namespace A143728

/-- `A054532(n+1)*A127368(n+1)` -/
def P13220176971294863474.Spec : Prop :=
  ∀ n, P13220176971294863474.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P3411688000045398574

`A080511(n+1)*A128431(n+1)`
-/

namespace A143728.P3411688000045398574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080511 (n + 1) * A128431 (n + 1)

end

end A143728.P3411688000045398574

namespace A143728

/-- `A080511(n+1)*A128431(n+1)` -/
def P3411688000045398574.Spec : Prop :=
  ∀ n, P3411688000045398574.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P3251651086319697613

`A080818(n+1)*A128431(n+1)`
-/

namespace A143728.P3251651086319697613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080818 (n + 1) * A128431 (n + 1)

end

end A143728.P3251651086319697613

namespace A143728

/-- `A080818(n+1)*A128431(n+1)` -/
def P3251651086319697613.Spec : Prop :=
  ∀ n, P3251651086319697613.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P10506640793650478079

`A127368(n+1)*A128431(n+1)`
-/

namespace A143728.P10506640793650478079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1) * A128431 (n + 1)

end

end A143728.P10506640793650478079

namespace A143728

/-- `A127368(n+1)*A128431(n+1)` -/
def P10506640793650478079.Spec : Prop :=
  ∀ n, P10506640793650478079.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P10906063073590404152

`A128077(n+1)*A128431(n+1)`
-/

namespace A143728.P10906063073590404152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128077 (n + 1) * A128431 (n + 1)

end

end A143728.P10906063073590404152

namespace A143728

/-- `A128077(n+1)*A128431(n+1)` -/
def P10906063073590404152.Spec : Prop :=
  ∀ n, P10906063073590404152.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P6174987782916269797

`A128431(n+1)*A164306(n+1)`
-/

namespace A143728.P6174987782916269797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128431 (n + 1) * A164306 (n + 1)

end

end A143728.P6174987782916269797

namespace A143728

/-- `A128431(n+1)*A164306(n+1)` -/
def P6174987782916269797.Spec : Prop :=
  ∀ n, P6174987782916269797.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P17660923143367102948

`A081517(n+1)*A128431(n+1)`
-/

namespace A143728.P17660923143367102948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081517 (n + 1) * A128431 (n + 1)

end

end A143728.P17660923143367102948

namespace A143728

/-- `A081517(n+1)*A128431(n+1)` -/
def P17660923143367102948.Spec : Prop :=
  ∀ n, P17660923143367102948.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P9087033406144106195

`A128431(n+1)*A226314(n+1)`
-/

namespace A143728.P9087033406144106195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128431 (n + 1) * A226314 (n + 1)

end

end A143728.P9087033406144106195

namespace A143728

/-- `A128431(n+1)*A226314(n+1)` -/
def P9087033406144106195.Spec : Prop :=
  ∀ n, P9087033406144106195.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P6080047741306406729

`A128431(n+1)/ratio[A094587(n)]`
-/

namespace A143728.P6080047741306406729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128431 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A143728.P6080047741306406729

namespace A143728

/-- `A128431(n+1)/ratio[A094587(n)]` -/
def P6080047741306406729.Spec : Prop :=
  ∀ n, P6080047741306406729.a n = (A143728 (n + 1) : ℚ)

end A143728

/-! ## A143728.P13027901380027339417

`A080508(n+1)*A128431(n+1)`
-/

namespace A143728.P13027901380027339417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080508 (n + 1) * A128431 (n + 1)

end

end A143728.P13027901380027339417

namespace A143728

/-- `A080508(n+1)*A128431(n+1)` -/
def P13027901380027339417.Spec : Prop :=
  ∀ n, P13027901380027339417.a n = A143728 (n + 1)

end A143728

/-! ## A143728.P11606513127830271869

`A111603(n+1)*A128431(n+1)`
-/

namespace A143728.P11606513127830271869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111603 (n + 1) * A128431 (n + 1)

end

end A143728.P11606513127830271869

namespace A143728

/-- `A111603(n+1)*A128431(n+1)` -/
def P11606513127830271869.Spec : Prop :=
  ∀ n, P11606513127830271869.a n = A143728 (n + 1)

end A143728

/-!
# A143730: a(n) = A141616(n) - A100181(n).

The programs for A143730, the canonical program `A143730.P16899165122371351592` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143730 has offset 1).

The definition of A143730 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100181, A141616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143730.P16899165122371351592

`A141616(n+1)-A100181(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143730

/-- `A141616(n+1)-A100181(n+1)` -/
def P16899165122371351592.Spec : Prop :=
  ∀ n, P16899165122371351592.a n = A143730 (n + 1)

theorem P16899165122371351592.correct : P16899165122371351592.Spec := by
  intro n
  simp only [A143730, Nat.add_sub_cancel]

end A143730

/-! ## A143730.P7650071514403162593

`2+a(round(n-sqrt(n)))` with `a(0)=5`
-/

namespace A143730.P7650071514403162593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  2 + a (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))).toNat

end

end A143730.P7650071514403162593

namespace A143730

/-- `2+a(round(n-sqrt(n)))` -/
def P7650071514403162593.Spec : Prop :=
  ∀ n, (P7650071514403162593.a n : ℤ) = A143730 (n + 1)

end A143730

/-! ## A143730.P3452928176684911977

`2*floor(1/Δ[sqrt(n)])+3`
-/

namespace A143730.P3452928176684911977
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊1 / (f1 (n + 1) - f1 n)⌋ + 3

end

end A143730.P3452928176684911977

namespace A143730

/-- `2*floor(1/Δ[sqrt(n)])+3` -/
def P3452928176684911977.Spec : Prop :=
  ∀ n, P3452928176684911977.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P13487568116263517357

`or(1, floor(2/Δ[sqrt(n)])+2)`
-/

namespace A143730.P13487568116263517357
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (⌊2 / (f1 (n + 1) - f1 n)⌋ + 2)

end

end A143730.P13487568116263517357

namespace A143730

/-- `or(1, floor(2/Δ[sqrt(n)])+2)` -/
def P13487568116263517357.Spec : Prop :=
  ∀ n, P13487568116263517357.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P6845395614049349189

`xor(1, 2*ceil(2*sqrt(n+1)))`
-/

namespace A143730.P6845395614049349189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌈2 * Real.sqrt (n + 1 : ℝ)⌉)

end

end A143730.P6845395614049349189

namespace A143730

/-- `xor(1, 2*ceil(2*sqrt(n+1)))` -/
def P6845395614049349189.Spec : Prop :=
  ∀ n, P6845395614049349189.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P2541984352609197521

`ceil(1/acot(2*ceil(sqrt(4*(n+1)))))`
-/

namespace A143730.P2541984352609197521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot (2 * ⌈Real.sqrt (4 * (n + 1) : ℝ)⌉ : ℝ)⌉

end

end A143730.P2541984352609197521

namespace A143730

/-- `ceil(1/acot(2*ceil(sqrt(4*(n+1)))))` -/
def P2541984352609197521.Spec : Prop :=
  ∀ n, P2541984352609197521.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P411204729856043388

`abs(a(n-floor(a(n-1)/4))+2)` with `a(0)=5`
-/

namespace A143730.P411204729856043388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a ((n : ℤ) - ⌊(a (n - 1) : ℚ) / 4⌋).toNat + 2

end

end A143730.P411204729856043388

namespace A143730

/-- `abs(a(n-floor(a(n-1)/4))+2)` -/
def P411204729856043388.Spec : Prop :=
  ∀ n, (P411204729856043388.a n : ℤ) = A143730 (n + 1)

end A143730

/-! ## A143730.P5003583931758893428

`abs(lt[n, lcm(n, floor(sqrt(n)))]-(n-floor(sqrt(n))))`
-/

namespace A143730.P5003583931758893428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ))|

end

end A143730.P5003583931758893428

namespace A143730

/-- `abs(lt[n, lcm(n, floor(sqrt(n)))]-(n-floor(sqrt(n))))` -/
def P5003583931758893428.Spec : Prop :=
  ∀ n, P5003583931758893428.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P2780860467728830493

`A020735(A000267(n))`
-/

namespace A143730.P2780860467728830493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (A000267 n).toNat

end

end A143730.P2780860467728830493

namespace A143730

/-- `A020735(A000267(n))` -/
def P2780860467728830493.Spec : Prop :=
  ∀ n, P2780860467728830493.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P5002179453053845062

`A004442(A027709(n+1))`
-/

namespace A143730.P5002179453053845062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A027709 (n + 1)).toNat

end

end A143730.P5002179453053845062

namespace A143730

/-- `A004442(A027709(n+1))` -/
def P5002179453053845062.Spec : Prop :=
  ∀ n, P5002179453053845062.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P13662717269500674216

`A005408(A027434(n+1))`
-/

namespace A143730.P13662717269500674216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A027434 (n + 1)).toNat

end

end A143730.P13662717269500674216

namespace A143730

/-- `A005408(A027434(n+1))` -/
def P13662717269500674216.Spec : Prop :=
  ∀ n, P13662717269500674216.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P10317056298955452993

`A144396(A000267(n)+1)`
-/

namespace A143730.P10317056298955452993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A000267 n + 1).toNat

end

end A143730.P10317056298955452993

namespace A143730

/-- `A144396(A000267(n)+1)` -/
def P10317056298955452993.Spec : Prop :=
  ∀ n, P10317056298955452993.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P8052473304866406826

`A023445(A235382(n+1))`
-/

namespace A143730.P8052473304866406826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A235382 (n + 1)).toNat

end

end A143730.P8052473304866406826

namespace A143730

/-- `A023445(A235382(n+1))` -/
def P8052473304866406826.Spec : Prop :=
  ∀ n, P8052473304866406826.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P2636627606967301590

`A004273(A307136(n+1))`
-/

namespace A143730.P2636627606967301590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A307136 (n + 1)).toNat

end

end A143730.P2636627606967301590

namespace A143730

/-- `A004273(A307136(n+1))` -/
def P2636627606967301590.Spec : Prop :=
  ∀ n, P2636627606967301590.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P6459828625128784444

`A130823(A336754(n+1))`
-/

namespace A143730.P6459828625128784444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A336754 (n + 1)).toNat

end

end A143730.P6459828625128784444

namespace A143730

/-- `A130823(A336754(n+1))` -/
def P6459828625128784444.Spec : Prop :=
  ∀ n, P6459828625128784444.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P1963010759518282449

`A004273(A000267(n)+2)`
-/

namespace A143730.P1963010759518282449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000267 n + 2).toNat

end

end A143730.P1963010759518282449

namespace A143730

/-- `A004273(A000267(n)+2)` -/
def P1963010759518282449.Spec : Prop :=
  ∀ n, P1963010759518282449.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P12140174569294729115

`A023446(A235382(n+1)+1)`
-/

namespace A143730.P12140174569294729115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A235382 (n + 1) + 1).toNat

end

end A143730.P12140174569294729115

namespace A143730

/-- `A023446(A235382(n+1)+1)` -/
def P12140174569294729115.Spec : Prop :=
  ∀ n, P12140174569294729115.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P12577632430912519108

`A265359(A161827(n+1))`
-/

namespace A143730.P12577632430912519108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A161827 (n + 1)).toNat

end

end A143730.P12577632430912519108

namespace A143730

/-- `A265359(A161827(n+1))` -/
def P12577632430912519108.Spec : Prop :=
  ∀ n, P12577632430912519108.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P14184469101841097167

`A109613(2*A102515(2*n))`
-/

namespace A143730.P14184469101841097167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A102515 (2 * n)).toNat

end

end A143730.P14184469101841097167

namespace A143730

/-- `A109613(2*A102515(2*n))` -/
def P14184469101841097167.Spec : Prop :=
  ∀ n, P14184469101841097167.a n = A143730 (n + 1)

end A143730

/-! ## A143730.P8810178647963576656

`A131506(4*(n+1))`
-/

namespace A143730.P8810178647963576656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131506 (4 * (n + 1))

end

end A143730.P8810178647963576656

namespace A143730

/-- `A131506(4*(n+1))` -/
def P8810178647963576656.Spec : Prop :=
  ∀ n, P8810178647963576656.a n = A143730 (n + 1)

end A143730

/-!
# A143731: Characteristic function of numbers with at least two distinct prime factors (A024619).

The programs for A143731, the canonical program `A143731.P1534349135649353055` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143731 has offset 1).

The definition of A143731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143731.P5166247155581587177

`abs(A079872(n+1))`
-/

namespace A143731.P5166247155581587177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079872 (n + 1)|

end

end A143731.P5166247155581587177

namespace A143731

/-- `abs(A079872(n+1))` -/
def P5166247155581587177.Spec : Prop :=
  ∀ n, P5166247155581587177.a n = A143731 (n + 1)

end A143731

/-! ## A143731.P1534349135649353055

`A057427(A079275(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143731

/-- `A057427(A079275(n+1))` -/
def P1534349135649353055.Spec : Prop :=
  ∀ n, P1534349135649353055.a n = A143731 (n + 1)

theorem P1534349135649353055.correct : P1534349135649353055.Spec := by
  intro n
  simp only [A143731, Nat.add_sub_cancel]

end A143731

/-! ## A143731.P7909294391788890934

`floor(atan(∑{e}[n+1, atan(#)]))`
-/

namespace A143731.P7909294391788890934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (∑ p ∈ Nat.primeFactors (f1 n), Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋

end

end A143731.P7909294391788890934

namespace A143731

/-- `floor(atan(∑{e}[n+1, atan(#)]))` -/
def P7909294391788890934.Spec : Prop :=
  ∀ n, P7909294391788890934.a n = A143731 (n + 1)

end A143731

/-! ## A143731.P7220636384293947011

`char[lt[1, ∑{p}[n+1, gcd(n, #)]]]`
-/

namespace A143731.P7220636384293947011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.gcd n p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A143731.P7220636384293947011

namespace A143731

/-- `char[lt[1, ∑{p}[n+1, gcd(n, #)]]]` -/
def P7220636384293947011.Spec : Prop :=
  ∀ n, (P7220636384293947011.a n : ℤ) = A143731 (n + 1)

end A143731

/-! ## A143731.P12871179347566509721

`(((-1)^n)%(∏{e}[n+1, #+1]-∑{e}[n+1, #]))²`
-/

namespace A143731.P12871179347566509721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-1) ^ n) (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)) ^ 2

end

end A143731.P12871179347566509721

namespace A143731

/-- `(((-1)^n)%(∏{e}[n+1, #+1]-∑{e}[n+1, #]))²` -/
def P12871179347566509721.Spec : Prop :=
  ∀ n, P12871179347566509721.a n = A143731 (n + 1)

end A143731

/-! ## A143731.P1450850439884723252

`char[A080765(n+1)]`
-/

namespace A143731.P1450850439884723252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A143731.P1450850439884723252

namespace A143731

/-- `char[A080765(n+1)]` -/
def P1450850439884723252.Spec : Prop :=
  ∀ n, (P1450850439884723252.a n : ℤ) = A143731 (n + 1)

end A143731

/-! ## A143731.P11329375167213134037

`1-A010055(n+1)`
-/

namespace A143731.P11329375167213134037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010055 (n + 1)

end

end A143731.P11329375167213134037

namespace A143731

/-- `1-A010055(n+1)` -/
def P11329375167213134037.Spec : Prop :=
  ∀ n, P11329375167213134037.a n = A143731 (n + 1)

end A143731

/-! ## A143731.P13813252571701818365

`4%A287841(n+1)`
-/

namespace A143731.P13813252571701818365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A287841 (n + 1))

end

end A143731.P13813252571701818365

namespace A143731

/-- `4%A287841(n+1)` -/
def P13813252571701818365.Spec : Prop :=
  ∀ n, P13813252571701818365.a n = A143731 (n + 1)

end A143731

/-! ## A143731.P17725676881669526562

`val(A292586(n+1), 3)`
-/

namespace A143731.P17725676881669526562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A292586 (n + 1)).toNat 3

end

end A143731.P17725676881669526562

namespace A143731

/-- `val(A292586(n+1), 3)` -/
def P17725676881669526562.Spec : Prop :=
  ∀ n, (P17725676881669526562.a n : ℤ) = A143731 (n + 1)

end A143731

/-! ## A143731.P12999872032076094246

`floor(log(A083399(n+1)))`
-/

namespace A143731.P12999872032076094246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A083399 (n + 1) : ℝ)⌋

end

end A143731.P12999872032076094246

namespace A143731

/-- `floor(log(A083399(n+1)))` -/
def P12999872032076094246.Spec : Prop :=
  ∀ n, P12999872032076094246.a n = A143731 (n + 1)

end A143731

/-! ## A143731.P5379592687719507899

`floor(atan(A001221(n+1)))`
-/

namespace A143731.P5379592687719507899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A001221 (n + 1) : ℝ)⌋

end

end A143731.P5379592687719507899

namespace A143731

/-- `floor(atan(A001221(n+1)))` -/
def P5379592687719507899.Spec : Prop :=
  ∀ n, P5379592687719507899.a n = A143731 (n + 1)

end A143731

/-! ## A143731.P6395220607088341446

`floor(atan(A081707(n+1)))`
-/

namespace A143731.P6395220607088341446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A081707 (n + 1) : ℝ)⌋

end

end A143731.P6395220607088341446

namespace A143731

/-- `floor(atan(A081707(n+1)))` -/
def P6395220607088341446.Spec : Prop :=
  ∀ n, P6395220607088341446.a n = A143731 (n + 1)

end A143731

/-! ## A143731.P17227787789063953916

`floor(atan(A304455(n+1)))`
-/

namespace A143731.P17227787789063953916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A304455 (n + 1) : ℝ)⌋

end

end A143731.P17227787789063953916

namespace A143731

/-- `floor(atan(A304455(n+1)))` -/
def P17227787789063953916.Spec : Prop :=
  ∀ n, P17227787789063953916.a n = A143731 (n + 1)

end A143731

/-! ## A143731.P991641794444338911

`char[A024619(n+1)-1]`
-/

namespace A143731.P991641794444338911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A143731.P991641794444338911

namespace A143731

/-- `char[A024619(n+1)-1]` -/
def P991641794444338911.Spec : Prop :=
  ∀ n, (P991641794444338911.a n : ℤ) = A143731 (n + 1)

end A143731

/-! ## A143731.P513933563369705680

`char[A074591(n+1)-1]`
-/

namespace A143731.P513933563369705680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A143731.P513933563369705680

namespace A143731

/-- `char[A074591(n+1)-1]` -/
def P513933563369705680.Spec : Prop :=
  ∀ n, (P513933563369705680.a n : ℤ) = A143731 (n + 1)

end A143731

/-! ## A143731.P8157119693752466467

`1-char[A181062(n+1)]`
-/

namespace A143731.P8157119693752466467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A143731.P8157119693752466467

namespace A143731

/-- `1-char[A181062(n+1)]` -/
def P8157119693752466467.Spec : Prop :=
  ∀ n, P8157119693752466467.a n = A143731 (n + 1)

end A143731

/-! ## A143731.P3363471233715370267

`char[lt[1, A284600(n+1)]]`
-/

namespace A143731.P3363471233715370267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A143731.P3363471233715370267

namespace A143731

/-- `char[lt[1, A284600(n+1)]]` -/
def P3363471233715370267.Spec : Prop :=
  ∀ n, (P3363471233715370267.a n : ℤ) = A143731 (n + 1)

end A143731

/-! ## A143731.P12700397922659469926

`char[lt[2, A327162(n+1)]]`
-/

namespace A143731.P12700397922659469926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327162 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A143731.P12700397922659469926

namespace A143731

/-- `char[lt[2, A327162(n+1)]]` -/
def P12700397922659469926.Spec : Prop :=
  ∀ n, (P12700397922659469926.a n : ℤ) = A143731 (n + 1)

end A143731

/-!
# A143732: Concerning hypotenuses of triangles such that the sum of the two legs is a perfect square.

The programs for A143732, there is no canonical definition to state claims against.
-/

/-! ## A143732.P16106794680799255121

`A321901(A322044(n)+A321878(n))`
-/

namespace A143732.P16106794680799255121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321901 (A322044 n + A321878 n).toNat

end

end A143732.P16106794680799255121

/-! ## A143732.P10377496783455401281

`A321904(A322044(n)+A321878(n))`
-/

namespace A143732.P10377496783455401281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (A322044 n + A321878 n).toNat

end

end A143732.P10377496783455401281

/-! ## A143732.P9329377490709447952

`A326154(A215488(n+1))`
-/

namespace A143732.P9329377490709447952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326154 (A215488 (n + 1)).toNat

end

end A143732.P9329377490709447952

/-! ## A143732.P12146998719265643676

`A152157(A119486(n+1)+gcd(4, n))`
-/

namespace A143732.P12146998719265643676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (A119486 (n + 1) + (Nat.gcd 4 n : ℤ)).toNat

end

end A143732.P12146998719265643676

/-! ## A143732.P7467429126963082198

`or(1, A212626(record[A184160(2*n+3)]))`
-/

namespace A143732.P7467429126963082198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A212626 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A143732.P7467429126963082198

/-!
# A143733: Aliquot sequence starting at 62.

The programs for A143733, the canonical program `A143733.P14942451708713840128` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143733 has offset 0).

The definition of A143733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143733.P14942451708713840128

`A001065(A028310(a(n-1)))` with `a(0)=62`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143733

/-- `A001065(A028310(a(n-1)))` -/
def P14942451708713840128.Spec : Prop :=
  ∀ n, P14942451708713840128.a n = A143733 n

theorem P14942451708713840128.correct : P14942451708713840128.Spec := by
  intro n
  simp only [A143733]

end A143733

/-!
# A143737: Aliquot sequence starting at 68.

The programs for A143737, the canonical program `A143737.P5154442546781460554` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143737 has offset 0).

The definition of A143737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143737.P5154442546781460554

`A001065(A028310(a(n-1)))` with `a(0)=68`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143737

/-- `A001065(A028310(a(n-1)))` -/
def P5154442546781460554.Spec : Prop :=
  ∀ n, P5154442546781460554.a n = A143737 n

theorem P5154442546781460554.correct : P5154442546781460554.Spec := by
  intro n
  simp only [A143737]

end A143737

/-!
# A143738: Number of twin primes between n and n^2. Only smaller of twins (terms of A001359) are counted.

The programs for A143738, the canonical program `A143738.P8542796833355571080` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143738 has offset 1).

The definition of A143738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143738.P8542796833355571080

`abs(A071538(abs(1-n)+1)-A071538((n+1)²))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143738

/-- `abs(A071538(abs(1-n)+1)-A071538((n+1)²))` -/
def P8542796833355571080.Spec : Prop :=
  ∀ n, P8542796833355571080.a n = A143738 (n + 1)

theorem P8542796833355571080.correct : P8542796833355571080.Spec := by
  intro n
  simp only [A143738, Nat.add_sub_cancel]

end A143738

/-! ## A143738.P6575955005045936429

`A071538((n+1)²)-A071538(A028310(n))`
-/

namespace A143738.P6575955005045936429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 ((n + 1) ^ 2) - A071538 (A028310 n).toNat

end

end A143738.P6575955005045936429

namespace A143738

/-- `A071538((n+1)²)-A071538(A028310(n))` -/
def P6575955005045936429.Spec : Prop :=
  ∀ n, P6575955005045936429.a n = A143738 (n + 1)

end A143738

/-! ## A143738.P18376758713155358995

`A071538((n+1)²)-A071538(A014684(n+1))`
-/

namespace A143738.P18376758713155358995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 ((n + 1) ^ 2) - A071538 (A014684 (n + 1)).toNat

end

end A143738.P18376758713155358995

namespace A143738

/-- `A071538((n+1)²)-A071538(A014684(n+1))` -/
def P18376758713155358995.Spec : Prop :=
  ∀ n, P18376758713155358995.a n = A143738 (n + 1)

end A143738

/-! ## A143738.P8711405926313528893

`A060970(lt[A303751(2*n+5), A082103(2*n+3)])`
-/

namespace A143738.P8711405926313528893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303751 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082103 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A143738.P8711405926313528893

namespace A143738

/-- `A060970(lt[A303751(2*n+5), A082103(2*n+3)])` -/
def P8711405926313528893.Spec : Prop :=
  ∀ n, P8711405926313528893.a n = A143738 (n + 1)

end A143738

/-! ## A143738.P16678352340276281457

`n-A000120(A004197(A007088(n)))`
-/

namespace A143738.P16678352340276281457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 (A004197 (A007088 n).toNat).toNat

end

end A143738.P16678352340276281457

namespace A143738

/-- `n-A000120(A004197(A007088(n)))` -/
def P16678352340276281457.Spec : Prop :=
  ∀ n, P16678352340276281457.a n = A143738 (n + 1)

end A143738

/-!
# A143739: G.f. A(x) satisfies: A(x) = (1-x)^3*A(x)^2 - x^2*A'(x).

The programs for A143739, there is no canonical definition to state claims against.
-/

/-! ## A143739.P14938984333203773107

`A055768(A003947(n)+A000079(n))`
-/

namespace A143739.P14938984333203773107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055768 (A003947 n + A000079 n).toNat

end

end A143739.P14938984333203773107

/-! ## A143739.P3497530018171510048

`A024417(A276139(n))`
-/

namespace A143739.P3497530018171510048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A276139 n).toNat

end

end A143739.P3497530018171510048

/-!
# A143740: E.g.f. satisfies A(x) = exp(x + x^2/2 * A(x)).

The programs for A143740, there is no canonical definition to state claims against.
-/

/-! ## A143740.P6540050879968304483

`A362377(∑[n+2]-1)`
-/

namespace A143740.P6540050879968304483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362377 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A143740.P6540050879968304483

/-! ## A143740.P12016858669317394809

`A362377(A034856(n+1))+2%A057077(n)`
-/

namespace A143740.P12016858669317394809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362377 (A034856 (n + 1)).toNat + Int.tmod 2 (A057077 n)

end

end A143740.P12016858669317394809

/-! ## A143740.P4747951761778899952

`A362377(A034856(n+1))+A007814(2*n+3)`
-/

namespace A143740.P4747951761778899952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362377 (A034856 (n + 1)).toNat + A007814 (2 * n + 3)

end

end A143740.P4747951761778899952

/-! ## A143740.P11409625902168720156

`A362377(A034856(n+1))%A158047(n)`
-/

namespace A143740.P11409625902168720156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362377 (A034856 (n + 1)).toNat) (A158047 n)

end

end A143740.P11409625902168720156

/-! ## A143740.P8415121541351986664

`∏{e}[2^n, A362377(A034856(#+1))]`
-/

namespace A143740.P8415121541351986664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A362377 (A034856 (Nat.factorization (f1 n) p + 1)).toNat

end

end A143740.P8415121541351986664

/-!
# A143741: Aliquot sequence starting at 72.

The programs for A143741, the canonical program `A143741.P8770090365676448905` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143741 has offset 0).

The definition of A143741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143741.P8770090365676448905

`A001065(A028310(a(n-1)))` with `a(0)=72`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143741

/-- `A001065(A028310(a(n-1)))` -/
def P8770090365676448905.Spec : Prop :=
  ∀ n, P8770090365676448905.a n = A143741 n

theorem P8770090365676448905.correct : P8770090365676448905.Spec := by
  intro n
  simp only [A143741]

end A143741

/-!
# A143742: Starting values that produce a larger juggler number than smaller starting values.

The programs for A143742, there is no canonical definition to state claims against.
-/

/-! ## A143742.P2818797313130683812

`A214125(A214125(n+1)+char[5])`
-/

namespace A143742.P2818797313130683812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214125 (A214125 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A143742.P2818797313130683812

/-! ## A143742.P5488766748345689107

`A034699(A074206(n)+A005867(n))`
-/

namespace A143742.P5488766748345689107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A074206 n + A005867 n).toNat

end

end A143742.P5488766748345689107

/-! ## A143742.P7050968737914175796

`A053585(A074206(n)+A005867(n))`
-/

namespace A143742.P7050968737914175796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A074206 n + A005867 n).toNat

end

end A143742.P7050968737914175796

/-!
# A143744: The number of steps needed to generate the next largest juggler number.

The programs for A143744, there is no canonical definition to state claims against.
-/

/-! ## A143744.P7823983183468723000

`A396851(A143742(n+1))-1`
-/

namespace A143744.P7823983183468723000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396851 (A143742 (n + 1)).toNat - 1

end

end A143744.P7823983183468723000

/-! ## A143744.P13058168438633853103

`A126139(n+1)+and(n, A018252(n+1))`
-/

namespace A143744.P13058168438633853103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126139 (n + 1) + Int.land (n : ℤ) (A018252 (n + 1))

end

end A143744.P13058168438633853103

/-!
# A143745: The next largest juggler number.

The programs for A143745, there is no canonical definition to state claims against.
-/

/-! ## A143745.P3121897213284697037

`record[A094716(n+1)]`
-/

namespace A143745.P3121897213284697037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143745.P3121897213284697037

/-! ## A143745.P7819500762983635798

`A094716(A143742(n+1))`
-/

namespace A143745.P7819500762983635798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094716 (A143742 (n + 1)).toNat

end

end A143745.P7819500762983635798

/-!
# A143748: Complete list of discriminants of definite Eichler orders with class number 2.

The programs for A143748, there is no canonical definition to state claims against.
-/

/-! ## A143748.P10203480567013375627

`∏{e}[A000244(n), A003246(#)]`
-/

namespace A143748.P10203480567013375627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003246 (Nat.factorization (f1 n).natAbs p)

end

end A143748.P10203480567013375627

/-! ## A143748.P5004448595702837998

`∏{e}[A000244(n), A003656(#)]`
-/

namespace A143748.P5004448595702837998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003656 (Nat.factorization (f1 n).natAbs p)

end

end A143748.P5004448595702837998

/-! ## A143748.P7487126070869636749

`∏{e}[A133494(n+1), A003656(#)]`
-/

namespace A143748.P7487126070869636749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003656 (Nat.factorization (f1 n).natAbs p)

end

end A143748.P7487126070869636749

/-! ## A143748.P10404970186386884135

`∏{e}[A108411(2*n), A003246(#)]`
-/

namespace A143748.P10404970186386884135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003246 (Nat.factorization (f1 n).natAbs p)

end

end A143748.P10404970186386884135

/-! ## A143748.P4253274109538725189

`∏{e}[A108411(2*n), A003656(#)]`
-/

namespace A143748.P4253274109538725189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003656 (Nat.factorization (f1 n).natAbs p)

end

end A143748.P4253274109538725189

/-!
# A143749: Series reversion of x * (1 - x) / (1 + 9*x).

The programs for A143749, the canonical program `A143749.P7480393649765018438` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143749 has offset 0).

The definition of A143749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143749.P7480393649765018438

`∑{#}[n-1, C(n+#-1, 2*#)*A000108(#)*9^(n-#-1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A143749

/-- `∑{#}[n-1, C(n+#-1, 2*#)*A000108(#)*9^(n-#-1)]` -/
def P7480393649765018438.Spec : Prop :=
  ∀ n, P7480393649765018438.a n = (A143749 n : ℚ)

end A143749

/-! ## A143749.P13582041336096672865

`A007094(n*A213591(n+1))`
-/

namespace A143749.P13582041336096672865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 ((n : ℤ) * A213591 (n + 1)).toNat

end

end A143749.P13582041336096672865

namespace A143749

/-- `A007094(n*A213591(n+1))` -/
def P13582041336096672865.Spec : Prop :=
  ∀ n, P13582041336096672865.a n = A143749 n

end A143749

/-!
# A143750: a(n)=10^C(n,2)*(1-10^n)/9.

The programs for A143750, the canonical program `A143750.P14422213547905771220` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143750 has offset 0).

The definition of A143750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143750.P14422213547905771220

`10^C(n, 2)*(1-10^n)/9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A143750

/-- `10^C(n, 2)*(1-10^n)/9` -/
def P14422213547905771220.Spec : Prop :=
  ∀ n, P14422213547905771220.a n = (A143750 n : ℚ)

end A143750

/-! ## A143750.P5318398983159480312

`Δ[-A002275(C(n, 2))]`
-/

namespace A143750.P5318398983159480312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002275 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143750.P5318398983159480312

namespace A143750

/-- `Δ[-A002275(C(n, 2))]` -/
def P5318398983159480312.Spec : Prop :=
  ∀ n, P5318398983159480312.a n = A143750 n

end A143750

/-! ## A143750.P5911369949878097823

`Δ[-A002275(A161680(n))]`
-/

namespace A143750.P5911369949878097823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002275 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143750.P5911369949878097823

namespace A143750

/-- `Δ[-A002275(A161680(n))]` -/
def P5911369949878097823.Spec : Prop :=
  ∀ n, P5911369949878097823.a n = A143750 n

end A143750

/-!
# A143752: Expansion of eta(q^3) * eta(q^4) * eta(q^5) * eta(q^60) / (eta(q) * eta(q^12) * eta(q^15) * eta(q^20)) in powers of q.

The programs for A143752, there is no canonical definition to state claims against.
-/

/-! ## A143752.P16775604599740822641

`A145933(n+1)`
-/

namespace A143752.P16775604599740822641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145933 (n + 1)

end

end A143752.P16775604599740822641

/-! ## A143752.P5916154539463036385

`ratio[A145933(n)]*A145933(n)`
-/

namespace A143752.P5916154539463036385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145933 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A145933 n : ℚ)

end

end A143752.P5916154539463036385

/-! ## A143752.P664787094120379946

`or(char[1], A145933(A029579(2*n)))`
-/

namespace A143752.P664787094120379946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A145933 (A029579 (2 * n)).toNat)

end

end A143752.P664787094120379946

/-! ## A143752.P14601430170106196570

`A145933(A008619(2*n))%(A005010(n)-A014551(n))`
-/

namespace A143752.P14601430170106196570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145933 (A008619 (2 * n)).toNat) (A005010 n - A014551 n)

end

end A143752.P14601430170106196570

/-! ## A143752.P13399960787694594628

`A145933(A029579(2*n))%(A005010(n)-A014551(n))`
-/

namespace A143752.P13399960787694594628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145933 (A029579 (2 * n)).toNat) (A005010 n - A014551 n)

end

end A143752.P13399960787694594628

/-! ## A143752.P4692137649437063454

`A145933(n)-A001489(Δ[A145933(n)])`
-/

namespace A143752.P4692137649437063454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145933 n - A001489 (f1 (n + 1) - f1 n).toNat

end

end A143752.P4692137649437063454

/-!
# A143753: Irregular triangle: A120070 read downwards antidiagonals.

The programs for A143753, there is no canonical definition to state claims against.
-/

/-! ## A143753.P9472653634616049756

`(floor(1/Δ[sqrt(n)])+2)*A167430(n+1)`
-/

namespace A143753.P9472653634616049756
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊1 / (f1 (n + 1) - f1 n)⌋ + 2) * A167430 (n + 1)

end

end A143753.P9472653634616049756

/-! ## A143753.P11443240393872128683

`A127735(A246706(n+1))`
-/

namespace A143753.P11443240393872128683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127735 (A246706 (n + 1)).toNat

end

end A143753.P11443240393872128683

/-! ## A143753.P10380201940387114273

`A120070(A090894(n)+2)`
-/

namespace A143753.P10380201940387114273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A090894 n + 2).toNat

end

end A143753.P10380201940387114273

/-! ## A143753.P8080645181175537943

`A075362(eq[0, A071022(n)])`
-/

namespace A143753.P8080645181175537943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143753.P8080645181175537943

/-! ## A143753.P11521818999509607527

`A079904(lt[1, A048994(n)])`
-/

namespace A143753.P11521818999509607527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A143753.P11521818999509607527

/-! ## A143753.P3277903377460456527

`A075362(lt[A071022(n), 1])`
-/

namespace A143753.P3277903377460456527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071022 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A143753.P3277903377460456527

/-! ## A143753.P11658243918748632500

`A079904(lt[1, A130595(n)])`
-/

namespace A143753.P11658243918748632500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A143753.P11658243918748632500

/-! ## A143753.P4623199132438553727

`A120070(A091995(n+1)+1)`
-/

namespace A143753.P4623199132438553727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A091995 (n + 1) + 1).toNat

end

end A143753.P4623199132438553727

/-! ## A143753.P15757151661626134522

`A166494(n+1)*A166866(n)`
-/

namespace A143753.P15757151661626134522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166494 (n + 1) * A166866 n

end

end A143753.P15757151661626134522

/-! ## A143753.P14409667502718933057

`A167430(n+1)*A307136(n+1)`
-/

namespace A143753.P14409667502718933057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (n + 1) * A307136 (n + 1)

end

end A143753.P14409667502718933057

/-!
# A143754: Aliquot sequence starting at 75.

The programs for A143754, the canonical program `A143754.P2508071916945020361` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143754 has offset 0).

The definition of A143754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143754.P2508071916945020361

`A001065(A028310(a(n-1)))` with `a(0)=75`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143754

/-- `A001065(A028310(a(n-1)))` -/
def P2508071916945020361.Spec : Prop :=
  ∀ n, P2508071916945020361.a n = A143754 n

theorem P2508071916945020361.correct : P2508071916945020361.Spec := by
  intro n
  simp only [A143754]

end A143754

/-!
# A143755: Aliquot sequence starting at 80.

The programs for A143755, the canonical program `A143755.P1843957366251075047` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143755 has offset 0).

The definition of A143755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143755.P1843957366251075047

`A001065(A028310(a(n-1)))` with `a(0)=80`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143755

/-- `A001065(A028310(a(n-1)))` -/
def P1843957366251075047.Spec : Prop :=
  ∀ n, P1843957366251075047.a n = A143755 n

theorem P1843957366251075047.correct : P1843957366251075047.Spec := by
  intro n
  simp only [A143755]

end A143755

/-!
# A143756: Aliquot sequence starting at 81.

The programs for A143756, the canonical program `A143756.P18241202892685653242` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143756 has offset 0).

The definition of A143756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143756.P18241202892685653242

`A143758(A188376(n+2))+A143757(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143756

/-- `A143758(A188376(n+2))+A143757(n+1)` -/
def P18241202892685653242.Spec : Prop :=
  ∀ n, P18241202892685653242.a n = A143756 n

theorem P18241202892685653242.correct : P18241202892685653242.Spec := by
  intro n
  simp only [A143756]

end A143756

/-!
# A143757: Aliquot sequence starting at 82.

The programs for A143757, the canonical program `A143757.P11374647760075091587` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143757 has offset 0).

The definition of A143757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143757.P11374647760075091587

`A001065(A028310(a(n-1)))` with `a(0)=82`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143757

/-- `A001065(A028310(a(n-1)))` -/
def P11374647760075091587.Spec : Prop :=
  ∀ n, P11374647760075091587.a n = A143757 n

theorem P11374647760075091587.correct : P11374647760075091587.Spec := by
  intro n
  simp only [A143757]

end A143757

/-!
# A143758: Aliquot sequence starting at 84.

The programs for A143758, the canonical program `A143758.P5003512289083084374` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143758 has offset 0).

The definition of A143758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143758.P5003512289083084374

`A001065(A028310(a(n-1)))` with `a(0)=84`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143758

/-- `A001065(A028310(a(n-1)))` -/
def P5003512289083084374.Spec : Prop :=
  ∀ n, P5003512289083084374.a n = A143758 n

theorem P5003512289083084374.correct : P5003512289083084374.Spec := by
  intro n
  simp only [A143758]

end A143758

/-!
# A143759: Aliquot sequence starting at 86.

The programs for A143759, there is no canonical definition to state claims against.
-/

/-! ## A143759.P11128651033490217119

`A143723(n)+A143723(n+8)*A246298(n+6)`
-/

namespace A143759.P11128651033490217119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143723 n + A143723 (n + 8) * A246298 (n + 6)

end

end A143759.P11128651033490217119

/-!
# A143760: a(n+1) = a(n)^2 + n^2, a(1) = 1.

The programs for A143760, the canonical program `A143760.P4385929453355343320` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143760 has offset 1).

The definition of A143760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143760.P4385929453355343320

`a(n-1)²+n²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A143760

/-- `a(n-1)²+n²` -/
def P4385929453355343320.Spec : Prop :=
  ∀ n, (P4385929453355343320.a n : ℤ) = A143760 (n + 1)

theorem P4385929453355343320.correct : P4385929453355343320.Spec := by
  intro n
  simp only [A143760, Nat.add_sub_cancel]

end A143760

/-! ## A143760.P14087242680173275177

`∑[2*n]-(n-a(n-1)²)` with `a(0)=1`
-/

namespace A143760.P14087242680173275177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - a (n - 1) ^ 2)

end

end A143760.P14087242680173275177

namespace A143760

/-- `∑[2*n]-(n-a(n-1)²)` -/
def P14087242680173275177.Spec : Prop :=
  ∀ n, P14087242680173275177.a n = A143760 (n + 1)

end A143760

/-! ## A143760.P5834210955427458270

`a(n-1)*a(n-1)+n*n` with `a(0)=1`
-/

namespace A143760.P5834210955427458270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * a (n - 1) + n * n

end

end A143760.P5834210955427458270

namespace A143760

/-- `a(n-1)*a(n-1)+n*n` -/
def P5834210955427458270.Spec : Prop :=
  ∀ n, (P5834210955427458270.a n : ℤ) = A143760 (n + 1)

theorem P5834210955427458270.correct : P5834210955427458270.Spec := by
  intro n
  simp only [A143760, Nat.add_sub_cancel, A143760.P5834210955427458270.a, A143760.P4385929453355343320.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143760

/-! ## A143760.P1431126081023193812

`n-(n*(1-n)-a(n-1)*a(n-1))` with `a(0)=1`
-/

namespace A143760.P1431126081023193812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ((n : ℤ) * (1 - (n : ℤ)) - a (n - 1) * a (n - 1))

end

end A143760.P1431126081023193812

namespace A143760

/-- `n-(n*(1-n)-a(n-1)*a(n-1))` -/
def P1431126081023193812.Spec : Prop :=
  ∀ n, P1431126081023193812.a n = A143760 (n + 1)

end A143760

/-! ## A143760.P18193361545422041439

`n²+a(A023443(n))²` with `a(0)=1`
-/

namespace A143760.P18193361545422041439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ 2 + a (A023443 n).toNat ^ 2

end

end A143760.P18193361545422041439

namespace A143760

/-- `n²+a(A023443(n))²` -/
def P18193361545422041439.Spec : Prop :=
  ∀ n, (P18193361545422041439.a n : ℤ) = A143760 (n + 1)

end A143760

/-!
# A143761: a(n+1) = a(n)^2 - n*a(n) + n^2, a(1) = 1.

The programs for A143761, there is no canonical definition to state claims against.
-/

/-! ## A143761.P14081580456732003324

`(a(n-1)-n)*a(n-1)+n²` with `a(0)=1`
-/

namespace A143761.P14081580456732003324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (n : ℤ)) * a (n - 1) + (n ^ 2 : ℤ)

end

end A143761.P14081580456732003324

/-! ## A143761.P5955533744624813632

`a(n-1)²-n*(a(n-1)-n)` with `a(0)=1`
-/

namespace A143761.P5955533744624813632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 - (n : ℤ) * (a (n - 1) - (n : ℤ))

end

end A143761.P5955533744624813632

/-! ## A143761.P6660623868416139428

`n*n-(n-a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A143761.P6660623868416139428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n * n : ℤ) - ((n : ℤ) - a (n - 1)) * a (n - 1)

end

end A143761.P6660623868416139428

/-! ## A143761.P28644346710190279

`A000290(n)+(a(n-1)-n)*a(n-1)` with `a(0)=1`
-/

namespace A143761.P28644346710190279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000290 n + (a (n - 1) - (n : ℤ)) * a (n - 1)

end

end A143761.P28644346710190279

/-!
# A143762: a(n+1) = a(n)^2 + n*a(n) + n^2, a(1) = 1.

The programs for A143762, there is no canonical definition to state claims against.
-/

/-! ## A143762.P12532665728461990832

`a(n-1)²+n*(a(n-1)+n)` with `a(0)=1`
-/

namespace A143762.P12532665728461990832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 + n * (a (n - 1) + n)

end

end A143762.P12532665728461990832

/-! ## A143762.P11131405202511498289

`lcm(a(n-1)+n, a(n-1))+n²` with `a(0)=1`
-/

namespace A143762.P11131405202511498289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1) + n) (a (n - 1)) + n ^ 2

end

end A143762.P11131405202511498289

/-! ## A143762.P10457538663652465861

`(a(n-1)+n)*a(n-1)+n*n` with `a(0)=1`
-/

namespace A143762.P10457538663652465861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + n) * a (n - 1) + n * n

end

end A143762.P10457538663652465861

/-!
# A143763: a(n+1) = (a(n)-n)^2, a(1) = 1.

The programs for A143763, there is no canonical definition to state claims against.
-/

/-! ## A143763.P1670990886345807395

`(a(n-1)-n)²` with `a(0)=1`
-/

namespace A143763.P1670990886345807395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (n : ℤ)) ^ 2

end

end A143763.P1670990886345807395

/-! ## A143763.P648542052781597858

`(a(n-1)-n)^2` with `a(0)=1`
-/

namespace A143763.P648542052781597858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (n : ℤ)) ^ 2

end

end A143763.P648542052781597858

/-! ## A143763.P7108442626036295325

`(a(n-1)-n)*(a(n-1)-n)` with `a(0)=1`
-/

namespace A143763.P7108442626036295325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (n : ℤ)) * (a (n - 1) - (n : ℤ))

end

end A143763.P7108442626036295325

/-! ## A143763.P7646801704271028700

`A086851(n+1)²`
-/

namespace A143763.P7646801704271028700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086851 (n + 1) ^ 2

end

end A143763.P7646801704271028700

/-! ## A143763.P6794318881647631490

`(n-A086851(n)²)²`
-/

namespace A143763.P6794318881647631490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A086851 n ^ 2) ^ 2

end

end A143763.P6794318881647631490

/-!
# A143764: a(n+1) = (a(n)+n)^2, a(1) = 1.

The programs for A143764, there is no canonical definition to state claims against.
-/

/-! ## A143764.P17044173887767599111

`record[(T(n-1,k)+row(n))²]` with `a(0)=1`
-/

namespace A143764.P17044173887767599111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (SequenceMachineLib.triUp f1 n + SequenceMachineLib.triRow n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143764.P17044173887767599111

/-! ## A143764.P13337473412528595187

`(a(n-1)+n)²` with `a(0)=1`
-/

namespace A143764.P13337473412528595187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + n) ^ 2

end

end A143764.P13337473412528595187

/-! ## A143764.P822435664733392131

`(a(n-1)+n)^2` with `a(0)=1`
-/

namespace A143764.P822435664733392131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + n) ^ 2

end

end A143764.P822435664733392131

/-! ## A143764.P10368267203147036464

`(floor(-a(n-1))-n)²` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A143764.P10368267203147036464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-a (n - 1) - (n : ℤ)) ^ 2

end

end A143764.P10368267203147036464

/-!
# A143765: a(n+1) = a(n)^2 - 3*n*a(n) + n^2, a(1) = 1.

The programs for A143765, there is no canonical definition to state claims against.
-/

/-! ## A143765.P10393619126111647777

`(a(n-1)-n)²-n*a(n-1)` with `a(0)=1`
-/

namespace A143765.P10393619126111647777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (n : ℤ)) ^ 2 - (n : ℤ) * a (n - 1)

end

end A143765.P10393619126111647777

/-! ## A143765.P12069408745166054759

`(a(n-1)-n)*(a(n-1)-n)-n*a(n-1)` with `a(0)=1`
-/

namespace A143765.P12069408745166054759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (n : ℤ)) * (a (n - 1) - (n : ℤ)) - (n : ℤ) * a (n - 1)

end

end A143765.P12069408745166054759

/-!
# A143766: a(n+1) = a(n)^2 + 3*n*a(n) + n^2, a(1) = 1.

The programs for A143766, there is no canonical definition to state claims against.
-/

/-! ## A143766.P17048635620970827202

`(a(n-1)+n)²+n*a(n-1)` with `a(0)=1`
-/

namespace A143766.P17048635620970827202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + n) ^ 2 + n * a (n - 1)

end

end A143766.P17048635620970827202

/-! ## A143766.P15020337879162569528

`lcm(n, a(n-1))+(a(n-1)+n)²` with `a(0)=1`
-/

namespace A143766.P15020337879162569528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm n (a (n - 1)) + (a (n - 1) + n) ^ 2

end

end A143766.P15020337879162569528

/-! ## A143766.P4122436539149621742

`(a(n-1)+n)*(a(n-1)+n)+n*a(n-1)` with `a(0)=1`
-/

namespace A143766.P4122436539149621742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + n) * (a (n - 1) + n) + n * a (n - 1)

end

end A143766.P4122436539149621742

/-!
# A143767: Aliquot sequence starting at 87.

The programs for A143767, the canonical program `A143767.P13231538878095060477` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143767 has offset 0).

The definition of A143767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143767.P13231538878095060477

`A001065(A028310(a(n-1)))` with `a(0)=87`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143767

/-- `A001065(A028310(a(n-1)))` -/
def P13231538878095060477.Spec : Prop :=
  ∀ n, P13231538878095060477.a n = A143767 n

theorem P13231538878095060477.correct : P13231538878095060477.Spec := by
  intro n
  simp only [A143767]

end A143767

/-!
# A143768: E.g.f. satisfies A(x) = exp(x + x^2*A(x)^2).

The programs for A143768, the canonical program `A143768.P1255458937563820111` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143768 has offset 0).

The definition of A143768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143768.P1255458937563820111

`n!*∑{#}[n, C(#, n-#)*(2*(n-#)+1)^(#-1)/#!]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A143768

/-- `n!*∑{#}[n, C(#, n-#)*(2*(n-#)+1)^(#-1)/#!]` -/
def P1255458937563820111.Spec : Prop :=
  ∀ n, P1255458937563820111.a n = (A143768 n : ℚ)

end A143768

/-! ## A143768.P14263238274315998446

`A362483(∑[n+3])`
-/

namespace A143768.P14263238274315998446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362483 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143768.P14263238274315998446

namespace A143768

/-- `A362483(∑[n+3])` -/
def P14263238274315998446.Spec : Prop :=
  ∀ n, P14263238274315998446.a n = A143768 n

end A143768

/-! ## A143768.P18195969749014318247

`A362483(A052905(n)+2)%A245925(2*n+1)`
-/

namespace A143768.P18195969749014318247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362483 (A052905 n + 2).toNat) (A245925 (2 * n + 1))

end

end A143768.P18195969749014318247

namespace A143768

/-- `A362483(A052905(n)+2)%A245925(2*n+1)` -/
def P18195969749014318247.Spec : Prop :=
  ∀ n, P18195969749014318247.a n = A143768 n

end A143768

/-! ## A143768.P2326248031487788369

`A362483(A052905(n)+2)%A001146(n)`
-/

namespace A143768.P2326248031487788369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362483 (A052905 n + 2).toNat) (A001146 n)

end

end A143768.P2326248031487788369

namespace A143768

/-- `A362483(A052905(n)+2)%A001146(n)` -/
def P2326248031487788369.Spec : Prop :=
  ∀ n, P2326248031487788369.a n = A143768 n

end A143768

/-!
# A143769: Expansion of 3*x*(3*x+1)*(2*x-1) / ( (1+x)*(3*x^2+1) ).

The programs for A143769, the canonical program `A143769.P2540488072588617708` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143769 has offset 1).

The definition of A143769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-3-3x+18x^2)/(1+x+3x^2+3x^3))` (program `A143769.P2540488072588617708`, by `A143769.P2540488072588617708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143769.P2540488072588617708

`ogf((-3-3x+18x^2)/(1+x+3x^2+3x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A143769

/-- `ogf((-3-3x+18x^2)/(1+x+3x^2+3x^3))` -/
def P2540488072588617708.Spec : Prop :=
  ∀ n, P2540488072588617708.a n = A143769 (n + 1)

theorem P2540488072588617708.correct : P2540488072588617708.Spec := by
  intro n
  simp only [A143769, Nat.add_sub_cancel]

end A143769

/-! ## A143769.P14479514262759948109

`3/2*((2*(-1)^(n+1)-3)*(-3)^floor((n+1)/2)-3*(-1)^(n+1))`
-/

namespace A143769.P14479514262759948109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * ((2 * (-1) ^ (n + 1) - 3 : ℚ) * (-3 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) - (3 * (-1) ^ (n + 1) : ℚ))

end

end A143769.P14479514262759948109

namespace A143769

/-- `3/2*((2*(-1)^(n+1)-3)*(-3)^floor((n+1)/2)-3*(-1)^(n+1))` -/
def P14479514262759948109.Spec : Prop :=
  ∀ n, P14479514262759948109.a n = (A143769 (n + 1) : ℚ)

end A143769

/-! ## A143769.P10432666543899901502

`A141533(n+2)-2*A141533(n+1)`
-/

namespace A143769.P10432666543899901502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141533 (n + 2) - 2 * A141533 (n + 1)

end

end A143769.P10432666543899901502

namespace A143769

/-- `A141533(n+2)-2*A141533(n+1)` -/
def P10432666543899901502.Spec : Prop :=
  ∀ n, P10432666543899901502.a n = A143769 (n + 1)

end A143769

/-! ## A143769.P2495368400886219780

`Δ[A141533(n+1)]-A141533(n+1)`
-/

namespace A143769.P2495368400886219780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A141533 (n + 1)

end

end A143769.P2495368400886219780

namespace A143769

/-- `Δ[A141533(n+1)]-A141533(n+1)` -/
def P2495368400886219780.Spec : Prop :=
  ∀ n, P2495368400886219780.a n = A143769 (n + 1)

end A143769

/-!
# A143770: Numbers n such that n, 2n, 3n are all highly composite numbers.

The programs for A143770, there is no canonical definition to state claims against.
-/

/-! ## A143770.P34249494774813516

`filter[A309233(n+1), A356310(#)]`
-/

namespace A143770.P34249494774813516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356310 (f1 j).toNat = 1) n)

end

end A143770.P34249494774813516

/-! ## A143770.P13959815165215244870

`filter[A309233(n+2), A353566(#)]`
-/

namespace A143770.P13959815165215244870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309233 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A143770.P13959815165215244870

/-! ## A143770.P1189674651912555237

`record[A253139(A000430(n+1)+9)]`
-/

namespace A143770.P1189674651912555237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (A000430 (n + 1) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143770.P1189674651912555237

/-! ## A143770.P988149954020027636

`record[A262501(3*n+2)]%A262485(n+3)`
-/

namespace A143770.P988149954020027636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A262485 (n + 3))

end

end A143770.P988149954020027636

/-! ## A143770.P17550980877384307851

`record[A253139(A008592(n)-A315470(n)+n+3)]`
-/

namespace A143770.P17550980877384307851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (A008592 n - A315470 n + (n + 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143770.P17550980877384307851

/-!
# A143771: a(n) = gcd(k + n/k), where k is over all divisors of n.

The programs for A143771, there is no canonical definition to state claims against.
-/

/-! ## A143771.P13998477196352986397

`(2+n)/A342918(n+1)`
-/

namespace A143771.P13998477196352986397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + n : ℚ) / (A342918 (n + 1) : ℚ)

end

end A143771.P13998477196352986397

/-! ## A143771.P2250430479312401125

`gcd(A000027(A253560(n+2)), A111234(n+1))`
-/

namespace A143771.P2250430479312401125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A253560 (n + 2)).toNat) (A111234 (n + 1))

end

end A143771.P2250430479312401125

/-! ## A143771.P1644497174878534275

`gcd(n+2, A336642(A088377(n+1)))`
-/

namespace A143771.P1644497174878534275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A336642 (A088377 (n + 1)).toNat)

end

end A143771.P1644497174878534275

/-! ## A143771.P4647425685215671787

`gcd(A089389(n+1), A260717(A000124(n)))`
-/

namespace A143771.P4647425685215671787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089389 (n + 1)) (A260717 (A000124 n).toNat)

end

end A143771.P4647425685215671787

/-! ## A143771.P8119703601192460635

`gcd(A111234(n+1), A273620(A000124(n)))`
-/

namespace A143771.P8119703601192460635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111234 (n + 1)) (A273620 (A000124 n).toNat)

end

end A143771.P8119703601192460635

/-!
# A143772: If m is the n-th composite, then a(n) = gcd(k + m/k), where k is over all divisors of m.

The programs for A143772, the canonical program `A143772.P6477686622307368865` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143772 has offset 1).

The definition of A143772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143772.P6477686622307368865

`gcd(24, A079696(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143772

/-- `gcd(24, A079696(n+1))` -/
def P6477686622307368865.Spec : Prop :=
  ∀ n, (P6477686622307368865.a n : ℤ) = A143772 (n + 1)

theorem P6477686622307368865.correct : P6477686622307368865.Spec := by
  intro n
  simp only [A143772, Nat.add_sub_cancel]

end A143772

/-! ## A143772.P14322613548360752083

`A143771(Δ[A053767(n)])`
-/

namespace A143772.P14322613548360752083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (f1 (n + 1) - f1 n).toNat

end

end A143772.P14322613548360752083

namespace A143772

/-- `A143771(Δ[A053767(n)])` -/
def P14322613548360752083.Spec : Prop :=
  ∀ n, P14322613548360752083.a n = A143772 (n + 1)

end A143772

/-! ## A143772.P13055115524617681421

`A143771(A002808(n+1))`
-/

namespace A143772.P13055115524617681421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (A002808 (n + 1)).toNat

end

end A143772.P13055115524617681421

namespace A143772

/-- `A143771(A002808(n+1))` -/
def P13055115524617681421.Spec : Prop :=
  ∀ n, P13055115524617681421.a n = A143772 (n + 1)

end A143772

/-! ## A143772.P3528235557772670349

`A143771(A018252(2+n))`
-/

namespace A143772.P3528235557772670349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (A018252 (2 + n)).toNat

end

end A143772.P3528235557772670349

namespace A143772

/-- `A143771(A018252(2+n))` -/
def P3528235557772670349.Spec : Prop :=
  ∀ n, P3528235557772670349.a n = A143772 (n + 1)

end A143772

/-! ## A143772.P801097892381509960

`A143771(A141468(n+3))`
-/

namespace A143772.P801097892381509960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (A141468 (n + 3)).toNat

end

end A143772.P801097892381509960

namespace A143772

/-- `A143771(A141468(n+3))` -/
def P801097892381509960.Spec : Prop :=
  ∀ n, P801097892381509960.a n = A143772 (n + 1)

end A143772

/-! ## A143772.P1892346235189088616

`A143771(Δ[A051349(n+1)])`
-/

namespace A143772.P1892346235189088616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (f1 (n + 1) - f1 n).toNat

end

end A143772.P1892346235189088616

namespace A143772

/-- `A143771(Δ[A051349(n+1)])` -/
def P1892346235189088616.Spec : Prop :=
  ∀ n, P1892346235189088616.a n = A143772 (n + 1)

end A143772

/-! ## A143772.P1595284785161301484

`A143771(A060462(n+2)+1)`
-/

namespace A143772.P1595284785161301484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (A060462 (n + 2) + 1).toNat

end

end A143772.P1595284785161301484

namespace A143772

/-- `A143771(A060462(n+2)+1)` -/
def P1595284785161301484.Spec : Prop :=
  ∀ n, P1595284785161301484.a n = A143772 (n + 1)

end A143772

/-! ## A143772.P809602056315706479

`A143771(lt[1, A001222(n+1)]+1)`
-/

namespace A143772.P809602056315706479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A143772.P809602056315706479

namespace A143772

/-- `A143771(lt[1, A001222(n+1)]+1)` -/
def P809602056315706479.Spec : Prop :=
  ∀ n, P809602056315706479.a n = A143772 (n + 1)

end A143772

/-! ## A143772.P1460489233117718234

`A143771(lt[2, A000005(n+1)]+1)`
-/

namespace A143772.P1460489233117718234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A143772.P1460489233117718234

namespace A143772

/-- `A143771(lt[2, A000005(n+1)]+1)` -/
def P1460489233117718234.Spec : Prop :=
  ∀ n, P1460489233117718234.a n = A143772 (n + 1)

end A143772

/-! ## A143772.P11181705071584453037

`gcd(A073766(n+1), A273777(n+1))`
-/

namespace A143772.P11181705071584453037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073766 (n + 1)) (A273777 (n + 1))

end

end A143772.P11181705071584453037

namespace A143772

/-- `gcd(A073766(n+1), A273777(n+1))` -/
def P11181705071584453037.Spec : Prop :=
  ∀ n, (P11181705071584453037.a n : ℤ) = A143772 (n + 1)

end A143772

/-! ## A143772.P18262959996358213578

`A143771(lt[A143771(n+1), n]+1)`
-/

namespace A143772.P18262959996358213578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A143772.P18262959996358213578

namespace A143772

/-- `A143771(lt[A143771(n+1), n]+1)` -/
def P18262959996358213578.Spec : Prop :=
  ∀ n, P18262959996358213578.a n = A143772 (n + 1)

end A143772

/-! ## A143772.P4753011970522915260

`A143771(comp[A006530(n-a(n-1))])` with `a(0)=1, a(1)=0`
-/

namespace A143772.P4753011970522915260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A006530 ((n : ℤ) - f1 (n - 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A143772.P4753011970522915260

namespace A143772

/-- `A143771(comp[A006530(n-a(n-1))])` -/
def P4753011970522915260.Spec : Prop :=
  ∀ n, P4753011970522915260.a n = A143772 (n + 1)

end A143772

/-! ## A143772.P3673425458443219544

`A143771(A053767(n+1)-A053767(n))`
-/

namespace A143772.P3673425458443219544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (A053767 (n + 1) - A053767 n).toNat

end

end A143772.P3673425458443219544

namespace A143772

/-- `A143771(A053767(n+1)-A053767(n))` -/
def P3673425458443219544.Spec : Prop :=
  ∀ n, P3673425458443219544.a n = A143772 (n + 1)

end A143772

/-!
# A143773: Number of partitions of n such that every part is divisible by number of parts.

The programs for A143773, there is no canonical definition to state claims against.
-/

/-! ## A143773.P11706278070258926311

`∑{d}[n+1, A316432(#)]`
-/

namespace A143773.P11706278070258926311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316432 d

end

end A143773.P11706278070258926311

/-! ## A143773.P13122215141188961934

`A025075(A284464(n+1))+1`
-/

namespace A143773.P13122215141188961934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025075 (A284464 (n + 1)).toNat + 1

end

end A143773.P13122215141188961934

/-! ## A143773.P13001567393389097972

`A353328(2^A143112(n+1))`
-/

namespace A143773.P13001567393389097972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A143112 (n + 1) : ℤ))).toNat

end

end A143773.P13001567393389097972

/-! ## A143773.P4950496632747333013

`A161148(n+1)-A014534(A297842(n+1))`
-/

namespace A143773.P4950496632747333013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161148 (n + 1) - A014534 (A297842 (n + 1)).toNat

end

end A143773.P4950496632747333013

/-!
# A143774: Eigentriangle of triangle A022166: T(n,k) = A022166(n,k) * A125812(k).

The programs for A143774, there is no canonical definition to state claims against.
-/

/-! ## A143774.P2764546570464788062

`A022166(C(row(n)+1, 2)+col(n))*A125812(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143774.P2764546570464788062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * A125812 (SequenceMachineLib.triCol n)

end

end A143774.P2764546570464788062

/-! ## A143774.P3784083151542842353

`A329888(A286331(n))`
-/

namespace A143774.P3784083151542842353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A286331 n).toNat

end

end A143774.P3784083151542842353

/-! ## A143774.P12706384731924694349

`A329888(A022166(n)*A288853(n))`
-/

namespace A143774.P12706384731924694349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A022166 n * A288853 n).toNat

end

end A143774.P12706384731924694349

/-! ## A143774.P4917856137320722918

`lcm(A000188(A286331(n)), A233543(n))`
-/

namespace A143774.P4917856137320722918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000188 (A286331 n).toNat) (A233543 n)

end

end A143774.P4917856137320722918

/-! ## A143774.P12156061740807599439

`A000188(A286331(n))*A144328(n+1)`
-/

namespace A143774.P12156061740807599439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A286331 n).toNat * A144328 (n + 1)

end

end A143774.P12156061740807599439

/-!
# A143775: Eigentriangle of triangle A125653.

The programs for A143775, there is no canonical definition to state claims against.
-/

/-! ## A143775.P14854680779257514164

`A125653(n)*A125654(A002262(n))`
-/

namespace A143775.P14854680779257514164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 n * A125654 (A002262 n).toNat

end

end A143775.P14854680779257514164

/-! ## A143775.P11641094571911279385

`A125653(n)*A125654(A025668(n+1))`
-/

namespace A143775.P11641094571911279385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 n * A125654 (A025668 (n + 1)).toNat

end

end A143775.P11641094571911279385

/-! ## A143775.P16769450233825655387

`A125653(n)*A125654(A144328(n+1))`
-/

namespace A143775.P16769450233825655387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 n * A125654 (A144328 (n + 1)).toNat

end

end A143775.P16769450233825655387

/-! ## A143775.P5436662444686604456

`A125653(n)*A125654(A002260(n+1)-1)`
-/

namespace A143775.P5436662444686604456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 n * A125654 (A002260 (n + 1) - 1).toNat

end

end A143775.P5436662444686604456

/-! ## A143775.P5869304068688636712

`A125654(A002262(n))*A359513(A321312(n+1))`
-/

namespace A143775.P5869304068688636712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125654 (A002262 n).toNat * A359513 (A321312 (n + 1)).toNat

end

end A143775.P5869304068688636712

/-!
# A143776: Numbers of the form : p1^p2-p2^p1, p1 and p2 twin primes.

The programs for A143776, there is no canonical definition to state claims against.
-/

/-! ## A143776.P1188279194317441657

`A140893(∑[A028303(n)+1])`
-/

namespace A143776.P1188279194317441657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140893 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143776.P1188279194317441657

/-!
# A143777: Eigentriangle of triangle A022167: T(n,k) = A022167(n,k) * A125813(k).

The programs for A143777, there is no canonical definition to state claims against.
-/

/-! ## A143777.P16081901662624588399

`A022167(C(row(n)+1, 2)+col(n))*A125813(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143777.P16081901662624588399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * A125813 (SequenceMachineLib.triCol n)

end

end A143777.P16081901662624588399

/-! ## A143777.P5763631566325580225

`A022167(n)*A125813(n-C(∑[char[∑[n]]], 2))`
-/

namespace A143777.P5763631566325580225
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n * A125813 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A143777.P5763631566325580225

/-! ## A143777.P5360980325645689530

`A022167(n)*A125813(A002262(n))`
-/

namespace A143777.P5360980325645689530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n * A125813 (A002262 n).toNat

end

end A143777.P5360980325645689530

/-! ## A143777.P14636970781640862492

`A003056(C(A128738(n), A002260(n+1)))`
-/

namespace A143777.P14636970781640862492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A128738 n).toNat (A002260 (n + 1)).toNat)

end

end A143777.P14636970781640862492

/-!
# A143778: Eigentriangle of A001263: T(n,k) = A001263(n+1,k+1)*A102812(k).

The programs for A143778, there is no canonical definition to state claims against.
-/

/-! ## A143778.P87731931759236171

`A001263(C(row(n)+1, 2)+col(n)+1)*A102812(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143778.P87731931759236171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1)) * A102812 (SequenceMachineLib.triCol n)

end

end A143778.P87731931759236171

/-! ## A143778.P16907072138318761599

`A001263(n+1)*A219227(A233543(n))`
-/

namespace A143778.P16907072138318761599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A219227 (A233543 n).toNat

end

end A143778.P16907072138318761599

/-! ## A143778.P5890088471620429845

`A001263(n+1)*A219227(A163351(n)!)`
-/

namespace A143778.P5890088471620429845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A219227 (Nat.factorial (A163351 n).toNat)

end

end A143778.P5890088471620429845

/-! ## A143778.P12256743466943955562

`A155497(n)/A086645(n)*A219227(A233543(n))`
-/

namespace A143778.P12256743466943955562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155497 n : ℚ) / (A086645 n : ℚ) * (A219227 (A233543 n).toNat : ℚ)

end

end A143778.P12256743466943955562

/-! ## A143778.P6241927644393658018

`A342982(n)/A168256(n)*A219227(A233543(n))`
-/

namespace A143778.P6241927644393658018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342982 n : ℚ) / (A168256 n : ℚ) * (A219227 (A233543 n).toNat : ℚ)

end

end A143778.P6241927644393658018

/-!
# A143779: a(n+1) = a(n)^2 - n^2, a(1) = 0.

The programs for A143779, there is no canonical definition to state claims against.
-/

/-! ## A143779.P15363848597032708159

`a(n-1)²-n²` with `a(0)=0`
-/

namespace A143779.P15363848597032708159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 - (n ^ 2 : ℤ)

end

end A143779.P15363848597032708159

/-! ## A143779.P9973797093769989617

`a(n-1)^2-n^(char[1]+2)` with `a(0)=0`
-/

namespace A143779.P9973797093769989617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 - (n ^ ((if ∃ j, f1 j = n then 1 else 0) + 2) : ℤ)

end

end A143779.P9973797093769989617

/-! ## A143779.P12476628892510660595

`(a(n-1)+n)*(a(n-1)-n)` with `a(0)=0`
-/

namespace A143779.P12476628892510660595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (n : ℤ)) * (a (n - 1) - (n : ℤ))

end

end A143779.P12476628892510660595

/-! ## A143779.P15756363137449674989

`a(n-1)*a(n-1)-n*n` with `a(0)=0`
-/

namespace A143779.P15756363137449674989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * a (n - 1) - (n * n : ℤ)

end

end A143779.P15756363137449674989

/-! ## A143779.P16555962332646947247

`(a(n-1)+n)/(a(n-1)-n)^(-1)` with `a(0)=0`
-/

namespace A143779.P16555962332646947247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (n : ℚ)) / (a (n - 1) - (n : ℚ)) ^ (-1 : ℤ)

end

end A143779.P16555962332646947247

/-!
# A143781: b(n) rounded towards zero, where b(0) = 1 and b(n) = b(n-1)^n - n^b(n-1) for n > 0.

The programs for A143781, there is no canonical definition to state claims against.
-/

/-! ## A143781.P9413342600746174998

`A096874(A099349(n+1))`
-/

namespace A143781.P9413342600746174998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096874 (A099349 (n + 1)).toNat

end

end A143781.P9413342600746174998

/-!
# A143784: b(n) rounded towards zero, where b(0) = 5 and b(n) = b(n-1)^n - n^b(n-1) for n > 0.

The programs for A143784, there is no canonical definition to state claims against.
-/

/-! ## A143784.P2398668017196503724

`A143782(n)+A000122(A000258(n))`
-/

namespace A143784.P2398668017196503724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143782 n + A000122 (A000258 n).toNat

end

end A143784.P2398668017196503724

/-! ## A143784.P18114491553373780805

`A143782(n)+A000122(A033638(n))`
-/

namespace A143784.P18114491553373780805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143782 n + A000122 (A033638 n).toNat

end

end A143784.P18114491553373780805

/-! ## A143784.P5428188663768281559

`A143782(n)+A000122(A070939(n))`
-/

namespace A143784.P5428188663768281559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143782 n + A000122 (A070939 n).toNat

end

end A143784.P5428188663768281559

/-!
# A143785: Antidiagonal sums of the triangle A120070.

The programs for A143785, the canonical program `A143785.P13944645931894096478` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143785 has offset 1).

The definition of A143785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143785.P13944645931894096478

`(n+3)*floor((n+2)²/4)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A143785

/-- `(n+3)*floor((n+2)²/4)` -/
def P13944645931894096478.Spec : Prop :=
  ∀ n, P13944645931894096478.a n = A143785 (n + 1)

theorem P13944645931894096478.correct : P13944645931894096478.Spec := by
  intro n
  simp only [A143785, Nat.add_sub_cancel]

end A143785

/-! ## A143785.P16395975603345343383

`ogf((3+2x+x^2)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A143785.P16395975603345343383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 1] [1, -2, -1, 4, -1, -2, 1] n

end

end A143785.P16395975603345343383

namespace A143785

/-- `ogf((3+2x+x^2)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P16395975603345343383.Spec : Prop :=
  ∀ n, P16395975603345343383.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P2273179005784790035

`∑[∑[(n+2)*gcd(2, n)-1]]`
-/

namespace A143785.P2273179005784790035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.gcd 2 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143785.P2273179005784790035

namespace A143785

/-- `∑[∑[(n+2)*gcd(2, n)-1]]` -/
def P2273179005784790035.Spec : Prop :=
  ∀ n, P2273179005784790035.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P13360041667867442819

`floor((n+3)*∑[a(n-2)+1])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A143785.P13360041667867442819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143785.P13360041667867442819

namespace A143785

/-- `floor((n+3)*∑[a(n-2)+1])` -/
def P13360041667867442819.Spec : Prop :=
  ∀ n, (P13360041667867442819.a n : ℤ) = A143785 (n + 1)

end A143785

/-! ## A143785.P4066910561053201373

`∑[∑[a(n-2)+(-1)^n+3]]` with `a(0)=3, a(1)=2`
-/

namespace A143785.P4066910561053201373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  f2 (n - 2) + ((-1) ^ n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143785.P4066910561053201373

namespace A143785

/-- `∑[∑[a(n-2)+(-1)^n+3]]` -/
def P4066910561053201373.Spec : Prop :=
  ∀ n, P4066910561053201373.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P9902168376698807270

`∑[∑[a(n-2)+6]-a(n-1)]` with `a(0)=3, a(1)=5`
-/

namespace A143785.P9902168376698807270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f2 =>
  f2 (n - 2) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143785.P9902168376698807270

namespace A143785

/-- `∑[∑[a(n-2)+6]-a(n-1)]` -/
def P9902168376698807270.Spec : Prop :=
  ∀ n, P9902168376698807270.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P13732155582401065083

`∑[∑[(n+2)*and(1, n+1)+n+1]]`
-/

namespace A143785.P13732155582401065083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.land 1 (n + 1) + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143785.P13732155582401065083

namespace A143785

/-- `∑[∑[(n+2)*and(1, n+1)+n+1]]` -/
def P13732155582401065083.Spec : Prop :=
  ∀ n, (P13732155582401065083.a n : ℤ) = A143785 (n + 1)

end A143785

/-! ## A143785.P10529727561112420360

`(n+3)*∑[∑[lcm(2, n+1)]]/(n+2)`
-/

namespace A143785.P10529727561112420360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (n + 2 : ℚ)

end

end A143785.P10529727561112420360

namespace A143785

/-- `(n+3)*∑[∑[lcm(2, n+1)]]/(n+2)` -/
def P10529727561112420360.Spec : Prop :=
  ∀ n, P10529727561112420360.a n = (A143785 (n + 1) : ℚ)

end A143785

/-! ## A143785.P2210192966412422658

`∑[∑[A059029(n+1)]]`
-/

namespace A143785.P2210192966412422658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143785.P2210192966412422658

namespace A143785

/-- `∑[∑[A059029(n+1)]]` -/
def P2210192966412422658.Spec : Prop :=
  ∀ n, P2210192966412422658.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P7595929075189259169

`∑[A133146(n+1)-2]`
-/

namespace A143785.P7595929075189259169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133146 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143785.P7595929075189259169

namespace A143785

/-- `∑[A133146(n+1)-2]` -/
def P7595929075189259169.Spec : Prop :=
  ∀ n, P7595929075189259169.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P13455265600593499176

`∑[A369304(n+1)-n]`
-/

namespace A143785.P13455265600593499176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369304 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143785.P13455265600593499176

namespace A143785

/-- `∑[A369304(n+1)-n]` -/
def P13455265600593499176.Spec : Prop :=
  ∀ n, P13455265600593499176.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P14115175176432741523

`A246695(n)+A171769(n+1)`
-/

namespace A143785.P14115175176432741523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 n + A171769 (n + 1)

end

end A143785.P14115175176432741523

namespace A143785

/-- `A246695(n)+A171769(n+1)` -/
def P14115175176432741523.Spec : Prop :=
  ∀ n, P14115175176432741523.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P14625119035424960866

`A049779(n+2)+A002623(n)`
-/

namespace A143785.P14625119035424960866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049779 (n + 2) + A002623 n

end

end A143785.P14625119035424960866

namespace A143785

/-- `A049779(n+2)+A002623(n)` -/
def P14625119035424960866.Spec : Prop :=
  ∀ n, P14625119035424960866.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P18388464681088826622

`A005993(n)+2*A002623(n)`
-/

namespace A143785.P18388464681088826622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n + 2 * A002623 n

end

end A143785.P18388464681088826622

namespace A143785

/-- `A005993(n)+2*A002623(n)` -/
def P18388464681088826622.Spec : Prop :=
  ∀ n, P18388464681088826622.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P15201589157450686930

`A087811(n+1)+A005996(n+1)`
-/

namespace A143785.P15201589157450686930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + A005996 (n + 1)

end

end A143785.P15201589157450686930

namespace A143785

/-- `A087811(n+1)+A005996(n+1)` -/
def P15201589157450686930.Spec : Prop :=
  ∀ n, P15201589157450686930.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P565428235742593879

`A226292(n+1)+A005998(n+1)`
-/

namespace A143785.P565428235742593879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226292 (n + 1) + A005998 (n + 1)

end

end A143785.P565428235742593879

namespace A143785

/-- `A226292(n+1)+A005998(n+1)` -/
def P565428235742593879.Spec : Prop :=
  ∀ n, P565428235742593879.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P10421385180161244224

`A168380(n+1)+A003451(n+5)`
-/

namespace A143785.P10421385180161244224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 1) + A003451 (n + 5)

end

end A143785.P10421385180161244224

namespace A143785

/-- `A168380(n+1)+A003451(n+5)` -/
def P10421385180161244224.Spec : Prop :=
  ∀ n, P10421385180161244224.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P6857524424632918213

`2*A005996(n+1)-A128624(n+1)`
-/

namespace A143785.P6857524424632918213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005996 (n + 1) - A128624 (n + 1)

end

end A143785.P6857524424632918213

namespace A143785

/-- `2*A005996(n+1)-A128624(n+1)` -/
def P6857524424632918213.Spec : Prop :=
  ∀ n, P6857524424632918213.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P9236239162968352094

`∑[∑[A110654(n+1)+A014682(n+1)]]`
-/

namespace A143785.P9236239162968352094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) + A014682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143785.P9236239162968352094

namespace A143785

/-- `∑[∑[A110654(n+1)+A014682(n+1)]]` -/
def P9236239162968352094.Spec : Prop :=
  ∀ n, P9236239162968352094.a n = A143785 (n + 1)

end A143785

/-! ## A143785.P18091726585315908991

`∑[A032438(n+2)]`
-/

namespace A143785.P18091726585315908991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143785.P18091726585315908991

namespace A143785

/-- `∑[A032438(n+2)]` -/
def P18091726585315908991.Spec : Prop :=
  ∀ n, P18091726585315908991.a n = A143785 (n + 1)

end A143785

/-!
# A143786: Number of arithmetic progressions from m to n; a rectangular array, m>=0, n>=0, by antidiagonals.

The programs for A143786, the canonical program `A143786.P9341438817367999759` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143786 has offset 1).

The definition of A143786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143786.P8568505020265736749

`∏{e}[∑[2*n]%comp[∑[n]]-n, #+1]`
-/

namespace A143786.P8568505020265736749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A143786.P8568505020265736749

namespace A143786

/-- `∏{e}[∑[2*n]%comp[∑[n]]-n, #+1]` -/
def P8568505020265736749.Spec : Prop :=
  ∀ n, (P8568505020265736749.a n : ℤ) = A143786 (n + 1)

end A143786

/-! ## A143786.P3380286299392477125

`∏{e}[2*n+1-∑[char[∑[n]]]², #+1]`
-/

namespace A143786.P3380286299392477125
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A143786.P3380286299392477125

namespace A143786

/-- `∏{e}[2*n+1-∑[char[∑[n]]]², #+1]` -/
def P3380286299392477125.Spec : Prop :=
  ∀ n, (P3380286299392477125.a n : ℤ) = A143786 (n + 1)

end A143786

/-! ## A143786.P9341438817367999759

`dr(∏{e}[A114327(n), #+1])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A143786

/-- `dr(∏{e}[A114327(n), #+1])` -/
def P9341438817367999759.Spec : Prop :=
  ∀ n, (P9341438817367999759.a n : ℤ) = A143786 (n + 1)

theorem P9341438817367999759.correct : P9341438817367999759.Spec := by
  intro n
  simp only [A143786, Nat.add_sub_cancel]

end A143786

/-! ## A143786.P7541294170838348897

`2^∑{e}[A061579(n)-n, log2(#+1)]`
-/

namespace A143786.P7541294170838348897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n - (n : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Real.logb 2 (Nat.factorization (f1 n).natAbs p + 1 : ℝ))

end

end A143786.P7541294170838348897

namespace A143786

/-- `2^∑{e}[A061579(n)-n, log2(#+1)]` -/
def P7541294170838348897.Spec : Prop :=
  ∀ n, P7541294170838348897.a n = (A143786 (n + 1) : ℝ)

end A143786

/-! ## A143786.P10535178534324828185

`A089723(2^abs(row(n)-2*col(n)))`
-/

namespace A143786.P10535178534324828185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|(SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ)| : ℤ))).toNat

end

end A143786.P10535178534324828185

namespace A143786

/-- `A089723(2^abs(row(n)-2*col(n)))` -/
def P10535178534324828185.Spec : Prop :=
  ∀ n, P10535178534324828185.a n = A143786 (n + 1)

end A143786

/-! ## A143786.P2077996500491536938

`lcm(or(1, -n)%2, ∏{e}[A049581(n), #+1])`
-/

namespace A143786.P2077996500491536938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (Int.lor 1 (-(n : ℤ))) 2) ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ)

end

end A143786.P2077996500491536938

namespace A143786

/-- `lcm(or(1, -n)%2, ∏{e}[A049581(n), #+1])` -/
def P2077996500491536938.Spec : Prop :=
  ∀ n, (P2077996500491536938.a n : ℤ) = A143786 (n + 1)

end A143786

/-! ## A143786.P2916784891646781072

`A032741(abs(round(sqrt(2*(n+1)))²-(2*n+1)))+1`
-/

namespace A143786.P2916784891646781072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|.toNat + 1

end

end A143786.P2916784891646781072

namespace A143786

/-- `A032741(abs(round(sqrt(2*(n+1)))²-(2*n+1)))+1` -/
def P2916784891646781072.Spec : Prop :=
  ∀ n, P2916784891646781072.a n = A143786 (n + 1)

end A143786

/-! ## A143786.P15811128949608511681

`A049419(2^abs(round(sqrt(2*(n+1)))²-(2*n+1)))`
-/

namespace A143786.P15811128949608511681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| : ℤ))).toNat

end

end A143786.P15811128949608511681

namespace A143786

/-- `A049419(2^abs(round(sqrt(2*(n+1)))²-(2*n+1)))` -/
def P15811128949608511681.Spec : Prop :=
  ∀ n, P15811128949608511681.a n = A143786 (n + 1)

end A143786

/-! ## A143786.P740577392586483760

`A089723(2^abs(round(sqrt(2*(n+1)))²-(2*n+1)))`
-/

namespace A143786.P740577392586483760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| : ℤ))).toNat

end

end A143786.P740577392586483760

namespace A143786

/-- `A089723(2^abs(round(sqrt(2*(n+1)))²-(2*n+1)))` -/
def P740577392586483760.Spec : Prop :=
  ∀ n, P740577392586483760.a n = A143786 (n + 1)

end A143786

/-! ## A143786.P9825567656596246556

`A000005(char[∑[4*n]]+abs(round(sqrt(2*(n+1)))²-(2*n+1)))`
-/

namespace A143786.P9825567656596246556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|).toNat

end

end A143786.P9825567656596246556

namespace A143786

/-- `A000005(char[∑[4*n]]+abs(round(sqrt(2*(n+1)))²-(2*n+1)))` -/
def P9825567656596246556.Spec : Prop :=
  ∀ n, P9825567656596246556.a n = A143786 (n + 1)

end A143786

/-! ## A143786.P9609945446849756627

`∑{e}[∏{d}[A114327(n), A020639(#)], #]+1`
-/

namespace A143786.P9609945446849756627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, A020639 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A143786.P9609945446849756627

namespace A143786

/-- `∑{e}[∏{d}[A114327(n), A020639(#)], #]+1` -/
def P9609945446849756627.Spec : Prop :=
  ∀ n, (P9609945446849756627.a n : ℤ) = A143786 (n + 1)

end A143786

/-! ## A143786.P5811400058442008810

`A305149(gcd(2^ceil(n/2), A115216(n)))`
-/

namespace A143786.P5811400058442008810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305149 (Int.gcd (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))) (A115216 n))

end

end A143786.P5811400058442008810

namespace A143786

/-- `A305149(gcd(2^ceil(n/2), A115216(n)))` -/
def P5811400058442008810.Spec : Prop :=
  ∀ n, P5811400058442008810.a n = A143786 (n + 1)

end A143786

/-! ## A143786.P3365390644567469904

`A000027(∏{e}[A114327(n), #+1]+1)-1`
-/

namespace A143786.P3365390644567469904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) + 1) - 1

end

end A143786.P3365390644567469904

namespace A143786

/-- `A000027(∏{e}[A114327(n), #+1]+1)-1` -/
def P3365390644567469904.Spec : Prop :=
  ∀ n, P3365390644567469904.a n = A143786 (n + 1)

end A143786

/-! ## A143786.P14219936667877981941

`dr(A000005(A028310(abs(round(sqrt(2*(n+1)))²-(2*n+1)))))`
-/

namespace A143786.P14219936667877981941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000005 (A028310 |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|.toNat).toNat)

end

end A143786.P14219936667877981941

namespace A143786

/-- `dr(A000005(A028310(abs(round(sqrt(2*(n+1)))²-(2*n+1)))))` -/
def P14219936667877981941.Spec : Prop :=
  ∀ n, (P14219936667877981941.a n : ℤ) = A143786 (n + 1)

end A143786

/-!
# A143787: Number of compositions of n into floor((3*j)/2) kinds of j's for all j>=1.

The programs for A143787, the canonical program `A143787.P16915911732339481930` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143787 has offset 0).

The definition of A143787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143787.P16915911732339481930

`ogf((1-x-x^2+x^3)/(1-2x-3x^2+x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A143787

/-- `ogf((1-x-x^2+x^3)/(1-2x-3x^2+x^3))` -/
def P16915911732339481930.Spec : Prop :=
  ∀ n, P16915911732339481930.a n = A143787 n

theorem P16915911732339481930.correct : P16915911732339481930.Spec := by
  intro n
  simp only [A143787]

end A143787

/-! ## A143787.P2131744851818925079

`2*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=11`
-/

namespace A143787.P2131744851818925079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 11] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - a (n - 3)

end

end A143787.P2131744851818925079

namespace A143787

/-- `2*a(n-1)+3*a(n-2)-a(n-3)` -/
def P2131744851818925079.Spec : Prop :=
  ∀ n, P2131744851818925079.a n = A143787 n

end A143787

/-! ## A143787.P10823941409158260110

`A122299(n+2)-A122299(A028310(n))`
-/

namespace A143787.P10823941409158260110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 2) - A122299 (A028310 n).toNat

end

end A143787.P10823941409158260110

namespace A143787

/-- `A122299(n+2)-A122299(A028310(n))` -/
def P10823941409158260110.Spec : Prop :=
  ∀ n, P10823941409158260110.a n = A143787 n

end A143787

/-! ## A143787.P7210053636208871965

`Δ[A122299(n+1)+A122299(A028310(n))]`
-/

namespace A143787.P7210053636208871965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 1) + A122299 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143787.P7210053636208871965

namespace A143787

/-- `Δ[A122299(n+1)+A122299(A028310(n))]` -/
def P7210053636208871965.Spec : Prop :=
  ∀ n, P7210053636208871965.a n = A143787 n

end A143787

/-!
# A143788: Prime numbers p such that p + q = 117810 with q prime and p*q=58905^2-x^2.

The programs for A143788, there is no canonical definition to state claims against.
-/

/-! ## A143788.P11037665951416542437

`p?[eq[A014802(n), A352679(n+2)]]`
-/

namespace A143788.P11037665951416542437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014802 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352679 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A143788.P11037665951416542437

/-! ## A143788.P1564138960165298700

`A151800(A243903(3*n+4)+A084139(n+2))`
-/

namespace A143788.P1564138960165298700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A243903 (3 * n + 4) + A084139 (n + 2)).toNat

end

end A143788.P1564138960165298700

/-!
# A143791: A positive integer k is included if no prime divisor p of k, when p is represented in binary, occurs within k represented in binary.

The programs for A143791, there is no canonical definition to state claims against.
-/

/-! ## A143791.P14307334615200029907

`lt[A143792(n+1), 1]+1`
-/

namespace A143791.P14307334615200029907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143792 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A143791.P14307334615200029907

/-! ## A143791.P12418395031164581379

`filter[1+2*n, A078834(#)]`
-/

namespace A143791.P12418395031164581379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A078834 (f1 j) = 1) n)

end

end A143791.P12418395031164581379

/-! ## A143791.P5453054725408898659

`record[(2*n+1)/A078834(2*n+1)]`
-/

namespace A143791.P5453054725408898659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A078834 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143791.P5453054725408898659

/-! ## A143791.P2651152263856738924

`record[(2-A078834(n+1))*A109613(n)]`
-/

namespace A143791.P2651152263856738924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A078834 (n + 1)) * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143791.P2651152263856738924

/-! ## A143791.P10195797605913564726

`record[A005408(n)-n*A078834(n+1)]`
-/

namespace A143791.P10195797605913564726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A078834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143791.P10195797605913564726

/-! ## A143791.P10039531595009097319

`record[(2-A078834(n+1))*A086799(n+1)]`
-/

namespace A143791.P10039531595009097319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A078834 (n + 1)) * A086799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143791.P10039531595009097319

/-! ## A143791.P9875574559763520300

`record[A005408(n)/A078834(A005408(n))²]`
-/

namespace A143791.P9875574559763520300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A078834 (A005408 n).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143791.P9875574559763520300

/-! ## A143791.P15075127860682632813

`record[A086799(n+1)*A089810(A078834(n+1))]`
-/

namespace A143791.P15075127860682632813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (n + 1) * A089810 (A078834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143791.P15075127860682632813

/-!
# A143792: a(n) = the number of distinct prime divisors, p, of n that, when p is represented in binary, each p occurs at least once in the binary representation of n.

The programs for A143792, there is no canonical definition to state claims against.
-/

/-! ## A143792.P7319937911425853195

`A001221(gcd(n+1, A078828(n+1)))`
-/

namespace A143792.P7319937911425853195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (n + 1 : ℤ) (A078828 (n + 1)))

end

end A143792.P7319937911425853195

/-! ## A143792.P10947648947582348305

`A335699(A305610(n+1))`
-/

namespace A143792.P10947648947582348305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335699 (A305610 (n + 1)).toNat

end

end A143792.P10947648947582348305

/-! ## A143792.P9234241775317154740

`and(∑{d}[n+1, (#%(n+1))%2], A066540(A034974(3*n+2)))`
-/

namespace A143792.P9234241775317154740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ d ∈ Nat.divisors (f1 n), d % (n + 1) % 2 : ℕ) : ℤ) (A066540 (A034974 (3 * n + 2)).toNat)

end

end A143792.P9234241775317154740

/-! ## A143792.P9491631034657157358

`A007877(gcd(A001065(n+1), A368757(2*n+1)))`
-/

namespace A143792.P9491631034657157358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (Int.gcd (A001065 (n + 1)) (A368757 (2 * n + 1)))

end

end A143792.P9491631034657157358

/-! ## A143792.P15466158626924836608

`C(A257990(A000204(n+1)), A257990(2*(n+1)))`
-/

namespace A143792.P15466158626924836608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257990 (A000204 (n + 1)).toNat).toNat (A257990 (2 * (n + 1))).toNat

end

end A143792.P15466158626924836608

/-!
# A143793: Averages of twin primes of the form : i^2+j^2, as sum of two squares.

The programs for A143793, there is no canonical definition to state claims against.
-/

/-! ## A143793.P7441780606046780757

`A270245(n+2)+1`
-/

namespace A143793.P7441780606046780757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270245 (n + 2) + 1

end

end A143793.P7441780606046780757

/-! ## A143793.P3705872972432202800

`A000203(A270245(n+2))`
-/

namespace A143793.P3705872972432202800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A270245 (n + 2)).toNat

end

end A143793.P3705872972432202800

/-! ## A143793.P211760437414712708

`filter[A014574(n+1), A353814(#)]`
-/

namespace A143793.P211760437414712708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A143793.P211760437414712708

/-! ## A143793.P4796387679292541035

`filter[A217259(n+1), A353814(#)]`
-/

namespace A143793.P4796387679292541035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A143793.P4796387679292541035

/-! ## A143793.P8325135157662137275

`filter[A370395(n+1), A353814(#)]`
-/

namespace A143793.P8325135157662137275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A143793.P8325135157662137275

/-!
# A143794: Primes p, with index k, such that p-k and p+k are both prime.

The programs for A143794, there is no canonical definition to state claims against.
-/

/-! ## A143794.P10164242737880034865

`A107636(n+1)+A064403(n+1)`
-/

namespace A143794.P10164242737880034865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107636 (n + 1) + A064403 (n + 1)

end

end A143794.P10164242737880034865

/-! ## A143794.P7405367560381966358

`A107637(n+1)-A064403(n+1)`
-/

namespace A143794.P7405367560381966358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107637 (n + 1) - A064403 (n + 1)

end

end A143794.P7405367560381966358

/-! ## A143794.P1444348683365094385

`∩[A227420(n+1), A061067(n)]`
-/

namespace A143794.P1444348683365094385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143794.P1444348683365094385

/-! ## A143794.P16536903396513114566

`A064403(n+1)+p?[A061067(n)-A064402(n+1)]`
-/

namespace A143794.P16536903396513114566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061067 n - A064402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064403 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143794.P16536903396513114566

/-! ## A143794.P6754438591334766037

`p?[A227420(n+1)+A064269(n+1)]-A064403(n+1)`
-/

namespace A143794.P6754438591334766037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227420 (n + 1) + A064269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064403 (n + 1)

end

end A143794.P6754438591334766037

/-! ## A143794.P7106233018791656828

`A031215(A064403(n+1)/2)`
-/

namespace A143794.P7106233018791656828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (SequenceMachineLib.roundAway ((A064403 (n + 1) : ℚ) / 2)).toNat

end

end A143794.P7106233018791656828

/-! ## A143794.P13463969320447312038

`∩[A101324(n+1), A061067(n)]`
-/

namespace A143794.P13463969320447312038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143794.P13463969320447312038

/-! ## A143794.P8652291137576718189

`∩[A077510(n+1), A101324(n+1)]`
-/

namespace A143794.P8652291137576718189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143794.P8652291137576718189

/-! ## A143794.P9731084911804902683

`A000040(A064403(n+1))`
-/

namespace A143794.P9731084911804902683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064403 (n + 1)).toNat

end

end A143794.P9731084911804902683

/-! ## A143794.P12866399511530229140

`A008578(A064403(n+1)+1)`
-/

namespace A143794.P12866399511530229140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064403 (n + 1) + 1).toNat

end

end A143794.P12866399511530229140

/-! ## A143794.P404562758354172544

`A046022(A064403(n+1)+2)`
-/

namespace A143794.P404562758354172544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A064403 (n + 1) + 2).toNat

end

end A143794.P404562758354172544

/-! ## A143794.P14270135051235134110

`A065091(A064403(n+1)-1)`
-/

namespace A143794.P14270135051235134110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A064403 (n + 1) - 1).toNat

end

end A143794.P14270135051235134110

/-! ## A143794.P10661727632631633966

`A004139(A064403(n+1)-2)`
-/

namespace A143794.P10661727632631633966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A064403 (n + 1) - 2).toNat

end

end A143794.P10661727632631633966

/-! ## A143794.P17776507975898822660

`A006005(lcm(2, A064403(n+1)))`
-/

namespace A143794.P17776507975898822660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.lcm 2 (A064403 (n + 1)))

end

end A143794.P17776507975898822660

/-! ## A143794.P5982896328099584810

`A006005(A064403(n+1)%A004009(n+1))`
-/

namespace A143794.P5982896328099584810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A064403 (n + 1)) (A004009 (n + 1))).toNat

end

end A143794.P5982896328099584810

/-! ## A143794.P15207500616780614925

`A040976(A064403(n+1))+A004741(A205030(n+1))`
-/

namespace A143794.P15207500616780614925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A064403 (n + 1)).toNat + A004741 (A205030 (n + 1)).toNat

end

end A143794.P15207500616780614925

/-!
# A143795: a(1) = 1, then for n > 1, a(n) = a(n - 1) + 1 for n even, or a(n) = a(n - 1) + 10 for n odd.

The programs for A143795, the canonical program `A143795.P17906021588929670048` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143795 has offset 1).

The definition of A143795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143795.P17906021588929670048

`a(n-2)+11` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A143795

/-- `a(n-2)+11` -/
def P17906021588929670048.Spec : Prop :=
  ∀ n, (P17906021588929670048.a n : ℤ) = A143795 (n + 1)

theorem P17906021588929670048.correct : P17906021588929670048.Spec := by
  intro n
  simp only [A143795, Nat.add_sub_cancel]

end A143795

/-! ## A143795.P3476692732659590644

`ogf((1+x+9x^2)/(1-x-x^2+x^3))`
-/

namespace A143795.P3476692732659590644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 9] [1, -1, -1, 1] n

end

end A143795.P3476692732659590644

namespace A143795

/-- `ogf((1+x+9x^2)/(1-x-x^2+x^3))` -/
def P3476692732659590644.Spec : Prop :=
  ∀ n, P3476692732659590644.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P12581295546684809642

`(22*(n+1)-27-9*(-1)^(n+1))/4`
-/

namespace A143795.P12581295546684809642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 * (n + 1) : ℤ) - 27 - 9 * (-1) ^ (n + 1) : ℚ) / 4

end

end A143795.P12581295546684809642

namespace A143795

/-- `(22*(n+1)-27-9*(-1)^(n+1))/4` -/
def P12581295546684809642.Spec : Prop :=
  ∀ n, P12581295546684809642.a n = (A143795 (n + 1) : ℚ)

theorem P12581295546684809642.correct : P12581295546684809642.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A143795, Nat.add_sub_cancel, A143795.P12581295546684809642.a, A143795.P17906021588929670048.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A143795, Nat.add_sub_cancel, A143795.P12581295546684809642.a, A143795.P17906021588929670048.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A143795

/-! ## A143795.P11841520344476336302

`11+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A143795.P11841520344476336302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  11 + a (n - 2)

end

end A143795.P11841520344476336302

namespace A143795

/-- `11+a(n-2)` -/
def P11841520344476336302.Spec : Prop :=
  ∀ n, (P11841520344476336302.a n : ℤ) = A143795 (n + 1)

theorem P11841520344476336302.correct : P11841520344476336302.Spec := by
  intro n
  simp only [A143795, Nat.add_sub_cancel, A143795.P11841520344476336302.a, A143795.P17906021588929670048.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143795

/-! ## A143795.P9657041822894278206

`∑[gcd(10, n%2)]-9`
-/

namespace A143795.P9657041822894278206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 9

end

end A143795.P9657041822894278206

namespace A143795

/-- `∑[gcd(10, n%2)]-9` -/
def P9657041822894278206.Spec : Prop :=
  ∀ n, P9657041822894278206.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P8882333584798394513

`∑[10^∑{p}[n, val(#, 2)]]`
-/

namespace A143795.P8882333584798394513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143795.P8882333584798394513

namespace A143795

/-- `∑[10^∑{p}[n, val(#, 2)]]` -/
def P8882333584798394513.Spec : Prop :=
  ∀ n, (P8882333584798394513.a n : ℤ) = A143795 (n + 1)

end A143795

/-! ## A143795.P4468232996913713481

`∑[10^val(∏{p}[n, #], 2)]`
-/

namespace A143795.P4468232996913713481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143795.P4468232996913713481

namespace A143795

/-- `∑[10^val(∏{p}[n, #], 2)]` -/
def P4468232996913713481.Spec : Prop :=
  ∀ n, (P4468232996913713481.a n : ℤ) = A143795 (n + 1)

end A143795

/-! ## A143795.P3394864155630550745

`∑[10^∑{p}[n, C(2, #)]]`
-/

namespace A143795.P3394864155630550745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143795.P3394864155630550745

namespace A143795

/-- `∑[10^∑{p}[n, C(2, #)]]` -/
def P3394864155630550745.Spec : Prop :=
  ∀ n, (P3394864155630550745.a n : ℤ) = A143795 (n + 1)

end A143795

/-! ## A143795.P16328728509900380812

`∑[11-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A143795.P16328728509900380812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143795.P16328728509900380812

namespace A143795

/-- `∑[11-a(n-1)]` -/
def P16328728509900380812.Spec : Prop :=
  ∀ n, P16328728509900380812.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P12806277100025458450

`∑[ceil(10^((n-1)%2))]`
-/

namespace A143795.P12806277100025458450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143795.P12806277100025458450

namespace A143795

/-- `∑[ceil(10^((n-1)%2))]` -/
def P12806277100025458450.Spec : Prop :=
  ∀ n, P12806277100025458450.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P1073341548952987156

`∑[∑[ogf((1+x+9x^2)/(1+x))]]`
-/

namespace A143795.P1073341548952987156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 9] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143795.P1073341548952987156

namespace A143795

/-- `∑[∑[ogf((1+x+9x^2)/(1+x))]]` -/
def P1073341548952987156.Spec : Prop :=
  ∀ n, P1073341548952987156.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P14903945797452931764

`3*(4-(1-a(n-2))/3)` with `a(0)=1, a(1)=2`
-/

namespace A143795.P14903945797452931764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (4 - (1 - a (n - 2)) / 3)

end

end A143795.P14903945797452931764

namespace A143795

/-- `3*(4-(1-a(n-2))/3)` -/
def P14903945797452931764.Spec : Prop :=
  ∀ n, P14903945797452931764.a n = (A143795 (n + 1) : ℚ)

end A143795

/-! ## A143795.P11398547163529542967

`∑[A040029(n)]-4`
-/

namespace A143795.P11398547163529542967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A143795.P11398547163529542967

namespace A143795

/-- `∑[A040029(n)]-4` -/
def P11398547163529542967.Spec : Prop :=
  ∀ n, P11398547163529542967.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P2519509947760850230

`A112651(n+1)+1`
-/

namespace A143795.P2519509947760850230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (n + 1) + 1

end

end A143795.P2519509947760850230

namespace A143795

/-- `A112651(n+1)+1` -/
def P2519509947760850230.Spec : Prop :=
  ∀ n, P2519509947760850230.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P7588395379774799121

`∑[A115634(n)²]+n`
-/

namespace A143795.P7588395379774799121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A143795.P7588395379774799121

namespace A143795

/-- `∑[A115634(n)²]+n` -/
def P7588395379774799121.Spec : Prop :=
  ∀ n, P7588395379774799121.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P11215852588596153274

`A146510(n+1)-2*n`
-/

namespace A143795.P11215852588596153274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146510 (n + 1) - (2 * n : ℤ)

end

end A143795.P11215852588596153274

namespace A143795

/-- `A146510(n+1)-2*n` -/
def P11215852588596153274.Spec : Prop :=
  ∀ n, P11215852588596153274.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P13271817902124498380

`3*A168237(n)+n+1`
-/

namespace A143795.P13271817902124498380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A168237 n + (n + 1 : ℤ)

end

end A143795.P13271817902124498380

namespace A143795

/-- `3*A168237(n)+n+1` -/
def P13271817902124498380.Spec : Prop :=
  ∀ n, P13271817902124498380.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P3215994238417217458

`A168418(n+1)-4+n`
-/

namespace A143795.P3215994238417217458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168418 (n + 1) - 4 + (n : ℤ)

end

end A143795.P3215994238417217458

namespace A143795

/-- `A168418(n+1)-4+n` -/
def P3215994238417217458.Spec : Prop :=
  ∀ n, P3215994238417217458.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P15883475902486791804

`A168414(n+1)-5+n`
-/

namespace A143795.P15883475902486791804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168414 (n + 1) - 5 + (n : ℤ)

end

end A143795.P15883475902486791804

namespace A143795

/-- `A168414(n+1)-5+n` -/
def P15883475902486791804.Spec : Prop :=
  ∀ n, P15883475902486791804.a n = A143795 (n + 1)

end A143795

/-! ## A143795.P13787964624617828926

`floor(A146512(n+1)-n/2)`
-/

namespace A143795.P13787964624617828926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A146512 (n + 1) : ℚ) - (n : ℚ) / 2⌋

end

end A143795.P13787964624617828926

namespace A143795

/-- `floor(A146512(n+1)-n/2)` -/
def P13787964624617828926.Spec : Prop :=
  ∀ n, P13787964624617828926.a n = A143795 (n + 1)

end A143795

/-!
# A143798: Twin prime numbers of the form : i^2+j^3, as sum of square and cube.

The programs for A143798, there is no canonical definition to state claims against.
-/

/-! ## A143798.P6587337950975334601

`eq[A164292(n+1), A266528(n)]+1`
-/

namespace A143798.P6587337950975334601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A143798.P6587337950975334601

/-! ## A143798.P9497612582420622300

`∩[A066649(n+1), A167707(n+1)]`
-/

namespace A143798.P9497612582420622300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143798.P9497612582420622300

/-!
# A143799: Lesser of Twin prime numbers of the form : i^2+j^3, as sum of square and cube, if Greater Twin prime number also of the form : i^2+j^3, as sum of square and cube.

The programs for A143799, there is no canonical definition to state claims against.
-/

/-! ## A143799.P7772116356998241444

`∩[A066649(n+1)-2, A066649(n+1)]`
-/

namespace A143799.P7772116356998241444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143799.P7772116356998241444

