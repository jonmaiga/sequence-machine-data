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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A124500: Number of 1-2-3-4-5 trees with n edges and with thinning limbs. A 1-2-3-4-5 tree is an ordered tree with vertices of outdegree at most 5. A rooted tree with thinning limbs is such that if a node has k children, all its children have at most k children.

The programs for A124500, there is no canonical definition to state claims against.
-/

/-! ## A124500.P4816468498746672626

`A220872(A082743(n))-A294234(n)`
-/

namespace A124500.P4816468498746672626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220872 (A082743 n).toNat - A294234 n

end

end A124500.P4816468498746672626

/-! ## A124500.P12707393040895489772

`or(A001997(n), A049372(A082743(n)))`
-/

namespace A124500.P12707393040895489772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001997 n) (A049372 (A082743 n).toNat)

end

end A124500.P12707393040895489772

/-! ## A124500.P12903979925986094308

`A054899(A026123(n+2))+A008670(n)`
-/

namespace A124500.P12903979925986094308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A026123 (n + 2)).toNat + A008670 n

end

end A124500.P12903979925986094308

/-! ## A124500.P13469276908746031735

`A220872(n+1)-A056974(A090338(n))`
-/

namespace A124500.P13469276908746031735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220872 (n + 1) - A056974 (A090338 n).toNat

end

end A124500.P13469276908746031735

/-! ## A124500.P190085435891533350

`A220872(n+1)-A185284(A000124(n))`
-/

namespace A124500.P190085435891533350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220872 (n + 1) - A185284 (A000124 n).toNat

end

end A124500.P190085435891533350

/-!
# A124501: Number of 1-2-3-4-5-6 trees with n edges and with thinning limbs. A 1-2-3-4-5-6 tree is an ordered tree with vertices of outdegree at most 6. A rooted tree with thinning limbs is such that if a node has k children, all its children have at most k children.

The programs for A124501, there is no canonical definition to state claims against.
-/

/-! ## A124501.P7551184863773289239

`A124344(n+1)-A002865(A309861(n))`
-/

namespace A124501.P7551184863773289239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124344 (n + 1) - A002865 (A309861 n).toNat

end

end A124501.P7551184863773289239

/-! ## A124501.P4810918343797177388

`A008616(A248114(n+9)+A007051(n))`
-/

namespace A124501.P4810918343797177388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A248114 (n + 9) + A007051 n).toNat

end

end A124501.P4810918343797177388

/-! ## A124501.P14589001139928014268

`A054899(n)+A124344(n+1)-A004915(A309861(n))`
-/

namespace A124501.P14589001139928014268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n + (A124344 (n + 1) - A004915 (A309861 n).toNat)

end

end A124501.P14589001139928014268

/-! ## A124501.P1308389342290923481

`1-(A309861(n)-A247063(A148073(n)%A232859(n+1)))`
-/

namespace A124501.P1308389342290923481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A309861 n - A247063 (Int.tmod (A148073 n) (A232859 (n + 1))).toNat)

end

end A124501.P1308389342290923481

/-! ## A124501.P17656233095178681287

`(A124344(n+1)-A004915(A309861(n)))*A060576(3*n+2)`
-/

namespace A124501.P17656233095178681287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124344 (n + 1) - A004915 (A309861 n).toNat) * A060576 (3 * n + 2)

end

end A124501.P17656233095178681287

/-!
# A124502: a(1)=a(2)=1; thereafter, a(n+1) = a(n) + a(n-1) + 1 if n is a multiple of 5, otherwise a(n+1) = a(n) + a(n-1).

The programs for A124502, the canonical program `A124502.P14764511879974694041` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124502 has offset 1).

The definition of A124502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124502.P14764511879974694041

`round(A020695(n)/(4-ϕ))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124502

/-- `round(A020695(n)/(4-ϕ))` -/
def P14764511879974694041.Spec : Prop :=
  ∀ n, P14764511879974694041.a n = A124502 (n + 1)

theorem P14764511879974694041.correct : P14764511879974694041.Spec := by
  intro n
  simp only [A124502, Nat.add_sub_cancel]

end A124502

/-! ## A124502.P11115457192052512025

`round(A000045(n+3)/(4-ϕ))`
-/

namespace A124502.P11115457192052512025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (n + 3) : ℝ) / (4 - Real.goldenRatio))

end

end A124502.P11115457192052512025

namespace A124502

/-- `round(A000045(n+3)/(4-ϕ))` -/
def P11115457192052512025.Spec : Prop :=
  ∀ n, P11115457192052512025.a n = A124502 (n + 1)

end A124502

/-! ## A124502.P13353196583860238689

`Δ[A192759(n)]`
-/

namespace A124502.P13353196583860238689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124502.P13353196583860238689

namespace A124502

/-- `Δ[A192759(n)]` -/
def P13353196583860238689.Spec : Prop :=
  ∀ n, P13353196583860238689.a n = A124502 (n + 1)

end A124502

/-! ## A124502.P2734754543731486654

`A192759(n+1)-A192759(n)`
-/

namespace A124502.P2734754543731486654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192759 (n + 1) - A192759 n

end

end A124502.P2734754543731486654

namespace A124502

/-- `A192759(n+1)-A192759(n)` -/
def P2734754543731486654.Spec : Prop :=
  ∀ n, P2734754543731486654.a n = A124502 (n + 1)

end A124502

/-! ## A124502.P4002729417723168174

`round(A000285(n+3)/11)`
-/

namespace A124502.P4002729417723168174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000285 (n + 3) : ℚ) / 11)

end

end A124502.P4002729417723168174

namespace A124502

/-- `round(A000285(n+3)/11)` -/
def P4002729417723168174.Spec : Prop :=
  ∀ n, P4002729417723168174.a n = A124502 (n + 1)

end A124502

/-! ## A124502.P499774355117137130

`round(A022308(n+3)/11)`
-/

namespace A124502.P499774355117137130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022308 (n + 3) : ℚ) / 11)

end

end A124502.P499774355117137130

namespace A124502

/-- `round(A022308(n+3)/11)` -/
def P499774355117137130.Spec : Prop :=
  ∀ n, P499774355117137130.a n = A124502 (n + 1)

end A124502

/-! ## A124502.P6331140938177482790

`round(A026625(n+4)/11)`
-/

namespace A124502.P6331140938177482790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A026625 (n + 4) : ℚ) / 11)

end

end A124502.P6331140938177482790

namespace A124502

/-- `round(A026625(n+4)/11)` -/
def P6331140938177482790.Spec : Prop :=
  ∀ n, P6331140938177482790.a n = A124502 (n + 1)

end A124502

/-! ## A124502.P14524955158476377694

`round(A104449(n+4)/11)`
-/

namespace A124502.P14524955158476377694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104449 (n + 4) : ℚ) / 11)

end

end A124502.P14524955158476377694

namespace A124502

/-- `round(A104449(n+4)/11)` -/
def P14524955158476377694.Spec : Prop :=
  ∀ n, P14524955158476377694.a n = A124502 (n + 1)

end A124502

/-!
# A124504: Number of partitions of an n-set without blocks of size 3.

The programs for A124504, there is no canonical definition to state claims against.
-/

/-! ## A124504.P7400305022743014000

`A124503(A001840(n))`
-/

namespace A124504.P7400305022743014000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124503 (A001840 n).toNat

end

end A124504.P7400305022743014000

/-! ## A124504.P12312419753366480527

`A124503(ceil(A000096(n)/3))`
-/

namespace A124504.P12312419753366480527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124503 ⌈(A000096 n : ℚ) / 3⌉.toNat

end

end A124504.P12312419753366480527

/-! ## A124504.P9232224278008598791

`A124503(round(A000096(n)/3))`
-/

namespace A124504.P9232224278008598791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124503 (SequenceMachineLib.roundAway ((A000096 n : ℚ) / 3)).toNat

end

end A124504.P9232224278008598791

/-! ## A124504.P7596596420947038516

`A124503(∑[n]-A000212(n))`
-/

namespace A124504.P7596596420947038516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124503 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000212 n).toNat

end

end A124504.P7596596420947038516

/-! ## A124504.P8673013085357886167

`A000110(n)-A328153(n)`
-/

namespace A124504.P8673013085357886167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A328153 n

end

end A124504.P8673013085357886167

/-! ## A124504.P15172970218680654247

`A000296(n+1)+A000296(n)-A328153(n)`
-/

namespace A124504.P15172970218680654247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 1) + (A000296 n - A328153 n)

end

end A124504.P15172970218680654247

/-!
# A124505: Number of regular n-dimensional simplices that can be inscribed on the vertices of an n-dimensional hypercube.

The programs for A124505, there is no canonical definition to state claims against.
-/

/-! ## A124505.P15901546709097705851

`char[2^n-1]*A141021(ceil(2^(n-1)))`
-/

namespace A124505.P15901546709097705851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A141021 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A124505.P15901546709097705851

/-! ## A124505.P17536540664793500507

`(a(n-1)+5)!*A033716(n)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`
-/

namespace A124505.P17536540664793500507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n a =>
  (Nat.factorial (a (n - 1) + 5).toNat : ℤ) * A033716 n

end

end A124505.P17536540664793500507

/-! ## A124505.P7619142656492946783

`(a(n-1)+5)!*A033721(n)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`
-/

namespace A124505.P7619142656492946783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n a =>
  (Nat.factorial (a (n - 1) + 5).toNat : ℤ) * A033721 n

end

end A124505.P7619142656492946783

/-! ## A124505.P8827205743574029441

`(a(n-1)+5)!*A033739(n)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`
-/

namespace A124505.P8827205743574029441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n a =>
  (Nat.factorial (a (n - 1) + 5).toNat : ℤ) * A033739 n

end

end A124505.P8827205743574029441

/-!
# A124506: Number of numerical semigroups with Frobenius number n; that is, numerical semigroups for which the largest integer not belonging to them is n.

The programs for A124506, there is no canonical definition to state claims against.
-/

/-! ## A124506.P6973961084327303167

`Δ[A326083(n)]`
-/

namespace A124506.P6973961084327303167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124506.P6973961084327303167

/-! ## A124506.P3441108577905725826

`A326083(n+1)-A326083(n)`
-/

namespace A124506.P3441108577905725826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 (n + 1) - A326083 n

end

end A124506.P3441108577905725826

/-! ## A124506.P11290000513351257758

`abs(Δ[A103580(A000038(n)+n)])`
-/

namespace A124506.P11290000513351257758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103580 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A124506.P11290000513351257758

/-! ## A124506.P15872687046626444013

`Δ[A103580(A028310(n))%(2^n)]`
-/

namespace A124506.P15872687046626444013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103580 (A028310 n).toNat) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124506.P15872687046626444013

/-! ## A124506.P8279033486828136158

`Δ[A103580(n)+a(A000038(n))]` with `a(0)=0`
-/

namespace A124506.P8279033486828136158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A103580 n + f1 (A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124506.P8279033486828136158

/-!
# A124507: a(n) = floor(exp(n*Pi/2)).

The programs for A124507, the canonical program `A124507.P13659675939986488414` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124507 has offset 0).

The definition of A124507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124507.P13659675939986488414

`floor(exp(acos(0))^n)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124507

/-- `floor(exp(acos(0))^n)` -/
def P13659675939986488414.Spec : Prop :=
  ∀ n, P13659675939986488414.a n = A124507 n

theorem P13659675939986488414.correct : P13659675939986488414.Spec := by
  intro n
  simp only [A124507]

end A124507

/-! ## A124507.P5349367687013092249

`floor(exp(asin(1))^n)`
-/

namespace A124507.P5349367687013092249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.arcsin (1 : ℝ)) ^ n⌋

end

end A124507.P5349367687013092249

namespace A124507

/-- `floor(exp(asin(1))^n)` -/
def P5349367687013092249.Spec : Prop :=
  ∀ n, P5349367687013092249.a n = A124507 n

theorem P5349367687013092249.correct : P5349367687013092249.Spec := by
  intro n
  simp only [A124507, Nat.add_sub_cancel, A124507.P5349367687013092249.a, A124507.P13659675939986488414.a, SequenceMachineLib.memo_apply]
  try simp

end A124507

/-! ## A124507.P7121684455897435695

`floor(exp(π)^(n/2))`
-/

namespace A124507.P7121684455897435695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp Real.pi ^ ((n : ℚ) / 2 : ℝ)⌋

end

end A124507.P7121684455897435695

namespace A124507

/-- `floor(exp(π)^(n/2))` -/
def P7121684455897435695.Spec : Prop :=
  ∀ n, P7121684455897435695.a n = A124507 n

end A124507

/-! ## A124507.P1366528963856913373

`A347029(n)-A057427(n)`
-/

namespace A124507.P1366528963856913373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347029 n - A057427 n

end

end A124507.P1366528963856913373

namespace A124507

/-- `A347029(n)-A057427(n)` -/
def P1366528963856913373.Spec : Prop :=
  ∀ n, P1366528963856913373.a n = A124507 n

end A124507

/-! ## A124507.P7699389101080587826

`A010051(2*(n+1))+A347029(n)-1`
-/

namespace A124507.P7699389101080587826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (A347029 n - 1)

end

end A124507.P7699389101080587826

namespace A124507

/-- `A010051(2*(n+1))+A347029(n)-1` -/
def P7699389101080587826.Spec : Prop :=
  ∀ n, P7699389101080587826.a n = A124507 n

end A124507

/-!
# A124508: a(n) = 2^BigO(n) * 3^omega(n), where BigO = A001222 and omega = A001221, the numbers of prime factors of n with and without repetitions.

The programs for A124508, the canonical program `A124508.P2921836237820937167` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124508 has offset 1).

The definition of A124508 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A074816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124508.P2921836237820937167

`A061142(n+1)*A074816(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A124508

/-- `A061142(n+1)*A074816(n+1)` -/
def P2921836237820937167.Spec : Prop :=
  ∀ n, P2921836237820937167.a n = A124508 (n + 1)

theorem P2921836237820937167.correct : P2921836237820937167.Spec := by
  intro n
  simp only [A124508, Nat.add_sub_cancel]

end A124508

/-! ## A124508.P17089301274630379446

`∏{e}[n+1, 3*2^#]`
-/

namespace A124508.P17089301274630379446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 * 2 ^ Nat.factorization (f1 n) p

end

end A124508.P17089301274630379446

namespace A124508

/-- `∏{e}[n+1, 3*2^#]` -/
def P17089301274630379446.Spec : Prop :=
  ∀ n, (P17089301274630379446.a n : ℤ) = A124508 (n + 1)

end A124508

/-! ## A124508.P12567626831161405620

`2^∑{e}[n+1, log2(3)+#]`
-/

namespace A124508.P12567626831161405620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), (Real.logb 2 (3 : ℝ) + (Nat.factorization (f1 n) p : ℝ)))

end

end A124508.P12567626831161405620

namespace A124508

/-- `2^∑{e}[n+1, log2(3)+#]` -/
def P12567626831161405620.Spec : Prop :=
  ∀ n, P12567626831161405620.a n = (A124508 (n + 1) : ℝ)

end A124508

/-! ## A124508.P3730211770626143629

`A061142(n+1)*A303822(∏{p}[n+1, #])`
-/

namespace A124508.P3730211770626143629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A303822 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A124508.P3730211770626143629

namespace A124508

/-- `A061142(n+1)*A303822(∏{p}[n+1, #])` -/
def P3730211770626143629.Spec : Prop :=
  ∀ n, P3730211770626143629.a n = A124508 (n + 1)

end A124508

/-! ## A124508.P6998866796024084324

`∑{d}[n+1, A082476(#)*A162510((n+1)/#)]`
-/

namespace A124508.P6998866796024084324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A082476 d * A162510 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124508.P6998866796024084324

namespace A124508

/-- `∑{d}[n+1, A082476(#)*A162510((n+1)/#)]` -/
def P6998866796024084324.Spec : Prop :=
  ∀ n, P6998866796024084324.a n = A124508 (n + 1)

end A124508

/-! ## A124508.P9389633256497748099

`∑{d}[n+1, A061142(#)*A351521((n+1)/#)]`
-/

namespace A124508.P9389633256497748099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061142 d * A351521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124508.P9389633256497748099

namespace A124508

/-- `∑{d}[n+1, A061142(#)*A351521((n+1)/#)]` -/
def P9389633256497748099.Spec : Prop :=
  ∀ n, P9389633256497748099.a n = A124508 (n + 1)

end A124508

/-! ## A124508.P6596217403034345364

`A003959(A034444(n+1))*A061142(n+1)`
-/

namespace A124508.P6596217403034345364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A034444 (n + 1)).toNat * A061142 (n + 1)

end

end A124508.P6596217403034345364

namespace A124508

/-- `A003959(A034444(n+1))*A061142(n+1)` -/
def P6596217403034345364.Spec : Prop :=
  ∀ n, P6596217403034345364.a n = A124508 (n + 1)

end A124508

/-! ## A124508.P3679917336961488251

`A061142(n+1)*A182139(A007947(n+1))`
-/

namespace A124508.P3679917336961488251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A182139 (A007947 (n + 1)).toNat

end

end A124508.P3679917336961488251

namespace A124508

/-- `A061142(n+1)*A182139(A007947(n+1))` -/
def P3679917336961488251.Spec : Prop :=
  ∀ n, P3679917336961488251.a n = A124508 (n + 1)

end A124508

/-!
# A124509: Range of A124508.

The programs for A124509, there is no canonical definition to state claims against.
-/

/-! ## A124509.P7658692522853713337

`A124508(A124510(n+1))`
-/

namespace A124509.P7658692522853713337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124508 (A124510 (n + 1)).toNat

end

end A124509.P7658692522853713337

/-! ## A124509.P14223688367988323783

`∩[A025610(n+1), A187778(n+1)]`
-/

namespace A124509.P14223688367988323783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124509.P14223688367988323783

/-! ## A124509.P2500011909481502738

`∩[A187778(n+1), A279537(n+1)]`
-/

namespace A124509.P2500011909481502738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124509.P2500011909481502738

/-! ## A124509.P12470383299158206622

`∩[A001013(n+1), A187778(n+1)]`
-/

namespace A124509.P12470383299158206622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124509.P12470383299158206622

/-! ## A124509.P17590481501585356516

`∩[A187778(n+1), A333964(n+1)]`
-/

namespace A124509.P17590481501585356516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124509.P17590481501585356516

/-! ## A124509.P15687609874897813623

`∩[A025487(n+1), A187778(n+1)]`
-/

namespace A124509.P15687609874897813623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124509.P15687609874897813623

/-! ## A124509.P11362598352561591236

`∩[A187778(n+1), A250270(n+1)]`
-/

namespace A124509.P11362598352561591236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124509.P11362598352561591236

/-! ## A124509.P4974409598812718170

`∩[A025610(n+1), A329878(n+1)]`
-/

namespace A124509.P4974409598812718170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124509.P4974409598812718170

/-! ## A124509.P4634944981351931779

`∩[A187778(n+1), A324850(n+1)]`
-/

namespace A124509.P4634944981351931779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124509.P4634944981351931779

/-! ## A124509.P8577538234043607140

`∩[A062847(n+1), A187778(n+1)]`
-/

namespace A124509.P8577538234043607140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124509.P8577538234043607140

/-! ## A124509.P9073718888651430604

`∩[A064522(n+1), A187778(n+1)]`
-/

namespace A124509.P9073718888651430604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124509.P9073718888651430604

/-!
# A124510: Smallest m such that A124508(m) = A124509(n).

The programs for A124510, there is no canonical definition to state claims against.
-/

/-! ## A124510.P13450673513850797670

`A229998(A087980(n+1))`
-/

namespace A124510.P13450673513850797670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229998 (A087980 (n + 1)).toNat

end

end A124510.P13450673513850797670

/-! ## A124510.P13208440076698899503

`A330061(A025612(n+1))`
-/

namespace A124510.P13208440076698899503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330061 (A025612 (n + 1)).toNat

end

end A124510.P13208440076698899503

/-! ## A124510.P3069856665130639952

`A229998(A181818(n+1))`
-/

namespace A124510.P3069856665130639952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229998 (A181818 (n + 1)).toNat

end

end A124510.P3069856665130639952

/-! ## A124510.P12424385126666963868

`A229998(A317804(n+1))`
-/

namespace A124510.P12424385126666963868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229998 (A317804 (n + 1)).toNat

end

end A124510.P12424385126666963868

/-! ## A124510.P10093365721727137082

`A229998(A336496(n+1))`
-/

namespace A124510.P10093365721727137082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229998 (A336496 (n + 1)).toNat

end

end A124510.P10093365721727137082

/-!
# A124511: a(n) = A124508(A124508(n)).

The programs for A124511, the canonical program `A124511.P14187117655083472375` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124511 has offset 1).

The definition of A124511 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124508, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124511.P14187117655083472375

`A124508(A124508(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A124511

/-- `A124508(A124508(n+1))` -/
def P14187117655083472375.Spec : Prop :=
  ∀ n, P14187117655083472375.a n = A124511 (n + 1)

theorem P14187117655083472375.correct : P14187117655083472375.Spec := by
  intro n
  simp only [A124511, Nat.add_sub_cancel]

end A124511

/-! ## A124511.P15557393920736998970

`ceil(A124512(n+1)/4)`
-/

namespace A124511.P15557393920736998970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124512 (n + 1) : ℚ) / 4⌉

end

end A124511.P15557393920736998970

namespace A124511

/-- `ceil(A124512(n+1)/4)` -/
def P15557393920736998970.Spec : Prop :=
  ∀ n, P15557393920736998970.a n = A124511 (n + 1)

end A124511

/-! ## A124511.P13204245392486314959

`A124512(n+1)/A123932(n)`
-/

namespace A124511.P13204245392486314959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124512 (n + 1) : ℚ) / (A123932 n : ℚ)

end

end A124511.P13204245392486314959

namespace A124511

/-- `A124512(n+1)/A123932(n)` -/
def P13204245392486314959.Spec : Prop :=
  ∀ n, P13204245392486314959.a n = (A124511 (n + 1) : ℚ)

end A124511

/-! ## A124511.P15429074038534147879

`A124512(n+1)/4%A016885(n)`
-/

namespace A124511.P15429074038534147879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124512 (n + 1) : ℚ) / (Int.tmod 4 (A016885 n) : ℚ)

end

end A124511.P15429074038534147879

namespace A124511

/-- `A124512(n+1)/4%A016885(n)` -/
def P15429074038534147879.Spec : Prop :=
  ∀ n, P15429074038534147879.a n = (A124511 (n + 1) : ℚ)

end A124511

/-! ## A124511.P13369729598798251454

`∏{e}[∏{e}[n+1, A007283(#)], A007283(#)]`
-/

namespace A124511.P13369729598798251454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A007283 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007283 (Nat.factorization (f1 n).natAbs p)

end

end A124511.P13369729598798251454

namespace A124511

/-- `∏{e}[∏{e}[n+1, A007283(#)], A007283(#)]` -/
def P13369729598798251454.Spec : Prop :=
  ∀ n, P13369729598798251454.a n = A124511 (n + 1)

end A124511

/-! ## A124511.P7921909484721041255

`A118510(2^A080256(n+1))`
-/

namespace A124511.P7921909484721041255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A080256 (n + 1) : ℤ))).toNat

end

end A124511.P7921909484721041255

namespace A124511

/-- `A118510(2^A080256(n+1))` -/
def P7921909484721041255.Spec : Prop :=
  ∀ n, P7921909484721041255.a n = A124511 (n + 1)

end A124511

/-! ## A124511.P3135501019264943235

`A117358(2*A124512(n+1))`
-/

namespace A124511.P3135501019264943235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A124512 (n + 1)).toNat

end

end A124511.P3135501019264943235

namespace A124511

/-- `A117358(2*A124512(n+1))` -/
def P3135501019264943235.Spec : Prop :=
  ∀ n, P3135501019264943235.a n = A124511 (n + 1)

end A124511

/-! ## A124511.P10160349024006411400

`A030065(A124512(n+1))`
-/

namespace A124511.P10160349024006411400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A124512 (n + 1)).toNat

end

end A124511.P10160349024006411400

namespace A124511

/-- `A030065(A124512(n+1))` -/
def P10160349024006411400.Spec : Prop :=
  ∀ n, P10160349024006411400.a n = A124511 (n + 1)

end A124511

/-!
# A124512: a(n) = A124508(A124508(A124508(n))).

The programs for A124512, the canonical program `A124512.P16182913871716679802` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124512 has offset 1).

The definition of A124512 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124508, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124512.P6928645003837299718

`A124511(A124508(n+1))`
-/

namespace A124512.P6928645003837299718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124511 (A124508 (n + 1)).toNat

end

end A124512.P6928645003837299718

namespace A124512

/-- `A124511(A124508(n+1))` -/
def P6928645003837299718.Spec : Prop :=
  ∀ n, P6928645003837299718.a n = A124512 (n + 1)

end A124512

/-! ## A124512.P16182913871716679802

`A124508(A124508(A124508(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A124512

/-- `A124508(A124508(A124508(n+1)))` -/
def P16182913871716679802.Spec : Prop :=
  ∀ n, P16182913871716679802.a n = A124512 (n + 1)

theorem P16182913871716679802.correct : P16182913871716679802.Spec := by
  intro n
  simp only [A124512, Nat.add_sub_cancel]

end A124512

/-! ## A124512.P11694222436565862100

`A123932(n)*A124511(n+1)`
-/

namespace A124512.P11694222436565862100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n * A124511 (n + 1)

end

end A124512.P11694222436565862100

namespace A124512

/-- `A123932(n)*A124511(n+1)` -/
def P11694222436565862100.Spec : Prop :=
  ∀ n, P11694222436565862100.a n = A124512 (n + 1)

end A124512

/-! ## A124512.P14580783143758700310

`∏{e}[A124511(n+1), A007283(#)]`
-/

namespace A124512.P14580783143758700310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007283 (Nat.factorization (f1 n).natAbs p)

end

end A124512.P14580783143758700310

namespace A124512

/-- `∏{e}[A124511(n+1), A007283(#)]` -/
def P14580783143758700310.Spec : Prop :=
  ∀ n, P14580783143758700310.a n = A124512 (n + 1)

end A124512

/-! ## A124512.P9221417096880070009

`A014963(A001316(n))²*A124511(n+1)`
-/

namespace A124512.P9221417096880070009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat ^ 2 * A124511 (n + 1)

end

end A124512.P9221417096880070009

namespace A124512

/-- `A014963(A001316(n))²*A124511(n+1)` -/
def P9221417096880070009.Spec : Prop :=
  ∀ n, P9221417096880070009.a n = A124512 (n + 1)

end A124512

/-! ## A124512.P14998700877719737559

`∏{p}[A124511(n+1), A278112(#+1)]*A124511(n+1)`
-/

namespace A124512.P14998700877719737559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A278112 (p + 1)) * A124511 (n + 1)

end

end A124512.P14998700877719737559

namespace A124512

/-- `∏{p}[A124511(n+1), A278112(#+1)]*A124511(n+1)` -/
def P14998700877719737559.Spec : Prop :=
  ∀ n, P14998700877719737559.a n = A124512 (n + 1)

end A124512

/-! ## A124512.P12631837446663719442

`A000005(A008578(n+1))²*A124511(n+1)`
-/

namespace A124512.P12631837446663719442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat ^ 2 * A124511 (n + 1)

end

end A124512.P12631837446663719442

namespace A124512

/-- `A000005(A008578(n+1))²*A124511(n+1)` -/
def P12631837446663719442.Spec : Prop :=
  ∀ n, P12631837446663719442.a n = A124512 (n + 1)

end A124512

/-! ## A124512.P4311536439459236346

`A124511(A124511(n+1)/∏{p}[A124511(n+1), #])`
-/

namespace A124512.P4311536439459236346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124511 (SequenceMachineLib.roundAway ((A124511 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ))).toNat

end

end A124512.P4311536439459236346

namespace A124512

/-- `A124511(A124511(n+1)/∏{p}[A124511(n+1), #])` -/
def P4311536439459236346.Spec : Prop :=
  ∀ n, P4311536439459236346.a n = A124512 (n + 1)

end A124512

/-! ## A124512.P6693403325119046829

`A124511(A061142(n+1)*A074816(n+1))`
-/

namespace A124512.P6693403325119046829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124511 (A061142 (n + 1) * A074816 (n + 1)).toNat

end

end A124512.P6693403325119046829

namespace A124512

/-- `A124511(A061142(n+1)*A074816(n+1))` -/
def P6693403325119046829.Spec : Prop :=
  ∀ n, P6693403325119046829.a n = A124512 (n + 1)

end A124512

/-! ## A124512.P8414288777966273774

`A079579(A124511(n+1))`
-/

namespace A124512.P8414288777966273774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079579 (A124511 (n + 1)).toNat

end

end A124512.P8414288777966273774

namespace A124512

/-- `A079579(A124511(n+1))` -/
def P8414288777966273774.Spec : Prop :=
  ∀ n, P8414288777966273774.a n = A124512 (n + 1)

end A124512

/-! ## A124512.P15273054995509064814

`A124511(A340512(n+1))`
-/

namespace A124512.P15273054995509064814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124511 (A340512 (n + 1)).toNat

end

end A124512.P15273054995509064814

namespace A124512

/-- `A124511(A340512(n+1))` -/
def P15273054995509064814.Spec : Prop :=
  ∀ n, P15273054995509064814.a n = A124512 (n + 1)

end A124512

/-!
# A124514: Numbers k for which 2*k-1, 4*k-1, 8*k-1, 16*k-1, 32*k-1, 64*k-1 and 128*k-1 are primes.

The programs for A124514, there is no canonical definition to state claims against.
-/

/-! ## A124514.P5216417796289357281

`∩[A101320(n+1), A125113(n+1)]`
-/

namespace A124514.P5216417796289357281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124514.P5216417796289357281

/-! ## A124514.P15277820370052509026

`∩[A101320(n+1), A124017(n+1)]`
-/

namespace A124514.P15277820370052509026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124514.P15277820370052509026

/-! ## A124514.P5178703575276717483

`ceil(A278932(n+1)/2)`
-/

namespace A124514.P5178703575276717483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A278932 (n + 1) : ℚ) / 2⌉

end

end A124514.P5178703575276717483

/-! ## A124514.P6566397955730735424

`(A278932(Δ[n²]-n)+1)/2`
-/

namespace A124514.P6566397955730735424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278932 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + 1 : ℚ) / 2

end

end A124514.P6566397955730735424

/-! ## A124514.P12210124630234785723

`round(record[A278932(A305978(n+1))]/2)`
-/

namespace A124514.P12210124630234785723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278932 (A305978 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)

end

end A124514.P12210124630234785723

/-!
# A124515: Numbers k for which 2*k-1, 4*k-1, 8*k-1, 16*k-1, 32*k-1, 64*k-1, 128*k-1 and 256*k-1 are primes.

The programs for A124515, there is no canonical definition to state claims against.
-/

/-! ## A124515.P7897734888666394506

`ceil(A138025(n+1)/2)`
-/

namespace A124515.P7897734888666394506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138025 (n + 1) : ℚ) / 2⌉

end

end A124515.P7897734888666394506

/-! ## A124515.P9284568958956562592

`(A138025(A000027(n+1))+1)/2`
-/

namespace A124515.P9284568958956562592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138025 (A000027 (n + 1)).toNat + 1 : ℚ) / 2

end

end A124515.P9284568958956562592

/-! ## A124515.P11908124982150906021

`round(A138025(n+1)/A137992(3*n+4))`
-/

namespace A124515.P11908124982150906021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A138025 (n + 1) : ℚ) / (A137992 (3 * n + 4) : ℚ))

end

end A124515.P11908124982150906021

/-! ## A124515.P17504219767736517928

`(A138025(n+1)+A121273(2*n+5))/2`
-/

namespace A124515.P17504219767736517928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138025 (n + 1) + A121273 (2 * n + 5) : ℚ) / 2

end

end A124515.P17504219767736517928

/-! ## A124515.P17805450224821645172

`(A138025(n+1)-A321804(A007318(n)))/2`
-/

namespace A124515.P17805450224821645172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138025 (n + 1) - A321804 (A007318 n).toNat : ℚ) / 2

end

end A124515.P17805450224821645172

/-!
# A124518: Numbers k such that 10k-1 and 10k+1 are twin primes.

The programs for A124518, the canonical program `A124518.P12474702938177862271` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124518 has offset 1).

The definition of A124518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124518.P7195278420243111475

`A131356(n+1)+1`
-/

namespace A124518.P7195278420243111475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131356 (n + 1) + 1

end

end A124518.P7195278420243111475

namespace A124518

/-- `A131356(n+1)+1` -/
def P7195278420243111475.Spec : Prop :=
  ∀ n, P7195278420243111475.a n = A124518 (n + 1)

end A124518

/-! ## A124518.P5061688495076462981

`3*A176114(n+1)`
-/

namespace A124518.P5061688495076462981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A176114 (n + 1)

end

end A124518.P5061688495076462981

namespace A124518

/-- `3*A176114(n+1)` -/
def P5061688495076462981.Spec : Prop :=
  ∀ n, P5061688495076462981.a n = A124518 (n + 1)

end A124518

/-! ## A124518.P4173085040054728110

`floor(A282326(n+1)/10)`
-/

namespace A124518.P4173085040054728110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282326 (n + 1) : ℚ) / 10⌋

end

end A124518.P4173085040054728110

namespace A124518

/-- `floor(A282326(n+1)/10)` -/
def P4173085040054728110.Spec : Prop :=
  ∀ n, P4173085040054728110.a n = A124518 (n + 1)

end A124518

/-! ## A124518.P12474702938177862271

`floor((A060229(n+1)+1)/5)/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A124518

/-- `floor((A060229(n+1)+1)/5)/2` -/
def P12474702938177862271.Spec : Prop :=
  ∀ n, P12474702938177862271.a n = (A124518 (n + 1) : ℚ)

end A124518

/-! ## A124518.P15736078405141994226

`∩[A024912(n+1), A105042(n+1)]`
-/

namespace A124518.P15736078405141994226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124518.P15736078405141994226

namespace A124518

/-- `∩[A024912(n+1), A105042(n+1)]` -/
def P15736078405141994226.Spec : Prop :=
  ∀ n, (P15736078405141994226.a n : ℤ) = A124518 (n + 1)

end A124518

/-! ## A124518.P12372812347891085823

`∩[A102700(n+1), A126785(n+1)]+1`
-/

namespace A124518.P12372812347891085823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A124518.P12372812347891085823

namespace A124518

/-- `∩[A102700(n+1), A126785(n+1)]+1` -/
def P12372812347891085823.Spec : Prop :=
  ∀ n, (P12372812347891085823.a n : ℤ) = A124518 (n + 1)

end A124518

/-! ## A124518.P865767662610891894

`∩[A024894(n+1), A153355(n+1)]/2`
-/

namespace A124518.P865767662610891894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153355 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A124518.P865767662610891894

namespace A124518

/-- `∩[A024894(n+1), A153355(n+1)]/2` -/
def P865767662610891894.Spec : Prop :=
  ∀ n, P865767662610891894.a n = (A124518 (n + 1) : ℚ)

end A124518

/-! ## A124518.P8720960359142505151

`A153877(n+1)/2`
-/

namespace A124518.P8720960359142505151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153877 (n + 1) : ℚ) / 2

end

end A124518.P8720960359142505151

namespace A124518

/-- `A153877(n+1)/2` -/
def P8720960359142505151.Spec : Prop :=
  ∀ n, P8720960359142505151.a n = (A124518 (n + 1) : ℚ)

end A124518

/-! ## A124518.P17981079692581583789

`A008486(A176114(n+1))`
-/

namespace A124518.P17981079692581583789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A176114 (n + 1)).toNat

end

end A124518.P17981079692581583789

namespace A124518

/-- `A008486(A176114(n+1))` -/
def P17981079692581583789.Spec : Prop :=
  ∀ n, P17981079692581583789.a n = A124518 (n + 1)

end A124518

/-! ## A124518.P6242520951521517983

`A004485(A131356(n+1))`
-/

namespace A124518.P6242520951521517983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004485 (A131356 (n + 1)).toNat

end

end A124518.P6242520951521517983

namespace A124518

/-- `A004485(A131356(n+1))` -/
def P6242520951521517983.Spec : Prop :=
  ∀ n, P6242520951521517983.a n = A124518 (n + 1)

end A124518

/-! ## A124518.P16679955647997163408

`eq[A048198(n), A099837(n)]`
-/

namespace A124518.P16679955647997163408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124518.P16679955647997163408

namespace A124518

/-- `eq[A048198(n), A099837(n)]` -/
def P16679955647997163408.Spec : Prop :=
  ∀ n, (P16679955647997163408.a n : ℤ) = A124518 (n + 1)

end A124518

/-! ## A124518.P148031458040409652

`A000203(A060229(n+1))/10`
-/

namespace A124518.P148031458040409652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A060229 (n + 1)).toNat : ℚ) / 10

end

end A124518.P148031458040409652

namespace A124518

/-- `A000203(A060229(n+1))/10` -/
def P148031458040409652.Spec : Prop :=
  ∀ n, P148031458040409652.a n = (A124518 (n + 1) : ℚ)

end A124518

/-! ## A124518.P240083954735348636

`eq[1, A353464(A017401(n)-n)]`
-/

namespace A124518.P240083954735348636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A017401 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124518.P240083954735348636

namespace A124518

/-- `eq[1, A353464(A017401(n)-n)]` -/
def P240083954735348636.Spec : Prop :=
  ∀ n, (P240083954735348636.a n : ℤ) = A124518 (n + 1)

end A124518

/-! ## A124518.P3261152186848366347

`A001281(A153877(n+1))`
-/

namespace A124518.P3261152186848366347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A153877 (n + 1)).toNat

end

end A124518.P3261152186848366347

namespace A124518

/-- `A001281(A153877(n+1))` -/
def P3261152186848366347.Spec : Prop :=
  ∀ n, P3261152186848366347.a n = A124518 (n + 1)

end A124518

/-! ## A124518.P11700732067089623188

`A249738(A153877(n+1)+2)`
-/

namespace A124518.P11700732067089623188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A153877 (n + 1) + 2).toNat

end

end A124518.P11700732067089623188

namespace A124518

/-- `A249738(A153877(n+1)+2)` -/
def P11700732067089623188.Spec : Prop :=
  ∀ n, P11700732067089623188.a n = A124518 (n + 1)

end A124518

/-! ## A124518.P12609468686999463534

`eq[2, A096501(A017401(n)-n)]`
-/

namespace A124518.P12609468686999463534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A017401 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124518.P12609468686999463534

namespace A124518

/-- `eq[2, A096501(A017401(n)-n)]` -/
def P12609468686999463534.Spec : Prop :=
  ∀ n, (P12609468686999463534.a n : ℤ) = A124518 (n + 1)

end A124518

/-! ## A124518.P3589378888775810242

`A134119((A060229(n+1)+1)/2)`
-/

namespace A124518.P3589378888775810242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (SequenceMachineLib.roundAway ((A060229 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A124518.P3589378888775810242

namespace A124518

/-- `A134119((A060229(n+1)+1)/2)` -/
def P3589378888775810242.Spec : Prop :=
  ∀ n, P3589378888775810242.a n = A124518 (n + 1)

end A124518

/-! ## A124518.P888865952581131529

`eq[A010882(n), A129950(A017401(n)-n)]`
-/

namespace A124518.P888865952581131529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (A017401 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124518.P888865952581131529

namespace A124518

/-- `eq[A010882(n), A129950(A017401(n)-n)]` -/
def P888865952581131529.Spec : Prop :=
  ∀ n, (P888865952581131529.a n : ℤ) = A124518 (n + 1)

end A124518

/-!
# A124519: Numbers k such that 12*k - 1 and 12*k + 1 are twin primes.

The programs for A124519, the canonical program `A124519.P13216490919456465522` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124519 has offset 1).

The definition of A124519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124519.P13216490919456465522

`A045753(n+2)/3`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A124519

/-- `A045753(n+2)/3` -/
def P13216490919456465522.Spec : Prop :=
  ∀ n, P13216490919456465522.a n = (A124519 (n + 1) : ℚ)

end A124519

/-! ## A124519.P95504936405237605

`A241557(n+3)/6`
-/

namespace A124519.P95504936405237605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241557 (n + 3) : ℚ) / 6

end

end A124519.P95504936405237605

namespace A124519

/-- `A241557(n+3)/6` -/
def P95504936405237605.Spec : Prop :=
  ∀ n, P95504936405237605.a n = (A124519 (n + 1) : ℚ)

end A124519

/-! ## A124519.P14524806093098184452

`record[A002822(n+1)/A020639(A002822(n+1))]`
-/

namespace A124519.P14524806093098184452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002822 (n + 1) : ℚ) / (A020639 (A002822 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124519.P14524806093098184452

namespace A124519

/-- `record[A002822(n+1)/A020639(A002822(n+1))]` -/
def P14524806093098184452.Spec : Prop :=
  ∀ n, P14524806093098184452.a n = (A124519 (n + 1) : ℚ)

end A124519

/-! ## A124519.P1574013866075772653

`∩[A110801(n+1), A138620(n+1)]`
-/

namespace A124519.P1574013866075772653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124519.P1574013866075772653

namespace A124519

/-- `∩[A110801(n+1), A138620(n+1)]` -/
def P1574013866075772653.Spec : Prop :=
  ∀ n, (P1574013866075772653.a n : ℤ) = A124519 (n + 1)

end A124519

/-! ## A124519.P1948024968335074906

`record[A014682(A153196(n+2))-A153196(n+2)]`
-/

namespace A124519.P1948024968335074906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A153196 (n + 2)).toNat - A153196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124519.P1948024968335074906

namespace A124519

/-- `record[A014682(A153196(n+2))-A153196(n+2)]` -/
def P1948024968335074906.Spec : Prop :=
  ∀ n, P1948024968335074906.a n = A124519 (n + 1)

end A124519

/-! ## A124519.P14924488153124403062

`eq[1, A353464(A017401(n)+n)]`
-/

namespace A124519.P14924488153124403062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A017401 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124519.P14924488153124403062

namespace A124519

/-- `eq[1, A353464(A017401(n)+n)]` -/
def P14924488153124403062.Spec : Prop :=
  ∀ n, (P14924488153124403062.a n : ℤ) = A124519 (n + 1)

end A124519

/-! ## A124519.P10626837950429415899

`eq[1, A353464(A190991(n)-n)]`
-/

namespace A124519.P10626837950429415899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A190991 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124519.P10626837950429415899

namespace A124519

/-- `eq[1, A353464(A190991(n)-n)]` -/
def P10626837950429415899.Spec : Prop :=
  ∀ n, (P10626837950429415899.a n : ℤ) = A124519 (n + 1)

end A124519

/-! ## A124519.P6430309359543990827

`eq[1, A100923(2*(n+1))]+1`
-/

namespace A124519.P6430309359543990827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100923 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A124519.P6430309359543990827

namespace A124519

/-- `eq[1, A100923(2*(n+1))]+1` -/
def P6430309359543990827.Spec : Prop :=
  ∀ n, (P6430309359543990827.a n : ℤ) = A124519 (n + 1)

end A124519

/-! ## A124519.P9869841432375543669

`eq[1, A182481(2*(n+1))]+1`
-/

namespace A124519.P9869841432375543669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A124519.P9869841432375543669

namespace A124519

/-- `eq[1, A182481(2*(n+1))]+1` -/
def P9869841432375543669.Spec : Prop :=
  ∀ n, (P9869841432375543669.a n : ℤ) = A124519 (n + 1)

end A124519

/-! ## A124519.P16886923306782157395

`eq[2, A145193(2*(n+1))]+1`
-/

namespace A124519.P16886923306782157395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A124519.P16886923306782157395

namespace A124519

/-- `eq[2, A145193(2*(n+1))]+1` -/
def P16886923306782157395.Spec : Prop :=
  ∀ n, (P16886923306782157395.a n : ℤ) = A124519 (n + 1)

end A124519

/-! ## A124519.P16721333436486908805

`eq[12*n+11, A182482(2*(n+1))]+1`
-/

namespace A124519.P16721333436486908805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182482 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A124519.P16721333436486908805

namespace A124519

/-- `eq[12*n+11, A182482(2*(n+1))]+1` -/
def P16721333436486908805.Spec : Prop :=
  ∀ n, (P16721333436486908805.a n : ℤ) = A124519 (n + 1)

end A124519

/-! ## A124519.P13575672761541168197

`record[A032742(A002822(n+1))]`
-/

namespace A124519.P13575672761541168197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A002822 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124519.P13575672761541168197

namespace A124519

/-- `record[A032742(A002822(n+1))]` -/
def P13575672761541168197.Spec : Prop :=
  ∀ n, P13575672761541168197.a n = A124519 (n + 1)

end A124519

/-! ## A124519.P6926863401588887075

`record[A025480(A002822(n+2))]`
-/

namespace A124519.P6926863401588887075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A002822 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124519.P6926863401588887075

namespace A124519

/-- `record[A025480(A002822(n+2))]` -/
def P6926863401588887075.Spec : Prop :=
  ∀ n, P6926863401588887075.a n = A124519 (n + 1)

end A124519

/-! ## A124519.P13564275874488290073

`record[A025480(A153196(n+2)+1)]`
-/

namespace A124519.P13564275874488290073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A153196 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124519.P13564275874488290073

namespace A124519

/-- `record[A025480(A153196(n+2)+1)]` -/
def P13564275874488290073.Spec : Prop :=
  ∀ n, P13564275874488290073.a n = A124519 (n + 1)

end A124519

/-! ## A124519.P4817934083467723340

`record[A025480(A167379(n+2)/2)]`
-/

namespace A124519.P4817934083467723340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((A167379 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124519.P4817934083467723340

namespace A124519

/-- `record[A025480(A167379(n+2)/2)]` -/
def P4817934083467723340.Spec : Prop :=
  ∀ n, P4817934083467723340.a n = A124519 (n + 1)

end A124519

/-! ## A124519.P5674827011928949407

`A001617(A071698(n+2))`
-/

namespace A124519.P5674827011928949407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A071698 (n + 2)).toNat

end

end A124519.P5674827011928949407

namespace A124519

/-- `A001617(A071698(n+2))` -/
def P5674827011928949407.Spec : Prop :=
  ∀ n, P5674827011928949407.a n = A124519 (n + 1)

end A124519

/-! ## A124519.P16172373711602378296

`A001617(p?[A068228(n+1)-2])`
-/

namespace A124519.P16172373711602378296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A124519.P16172373711602378296

namespace A124519

/-- `A001617(p?[A068228(n+1)-2])` -/
def P16172373711602378296.Spec : Prop :=
  ∀ n, P16172373711602378296.a n = A124519 (n + 1)

end A124519

/-! ## A124519.P7062666956378068467

`A002264(A045753(n+2))`
-/

namespace A124519.P7062666956378068467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A045753 (n + 2)).toNat

end

end A124519.P7062666956378068467

namespace A124519

/-- `A002264(A045753(n+2))` -/
def P7062666956378068467.Spec : Prop :=
  ∀ n, P7062666956378068467.a n = A124519 (n + 1)

end A124519

/-! ## A124519.P13092661685282907553

`record[A025480(A167379(n+2)+1)]`
-/

namespace A124519.P13092661685282907553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A167379 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124519.P13092661685282907553

namespace A124519

/-- `record[A025480(A167379(n+2)+1)]` -/
def P13092661685282907553.Spec : Prop :=
  ∀ n, P13092661685282907553.a n = A124519 (n + 1)

end A124519

/-! ## A124519.P17894615625535434154

`eq[2, A240697(A017569(n)/2)]`
-/

namespace A124519.P17894615625535434154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 (SequenceMachineLib.roundAway ((A017569 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124519.P17894615625535434154

namespace A124519

/-- `eq[2, A240697(A017569(n)/2)]` -/
def P17894615625535434154.Spec : Prop :=
  ∀ n, (P17894615625535434154.a n : ℤ) = A124519 (n + 1)

end A124519

/-!
# A124520: Numbers k such that 14*k - 1 and 14*k + 1 are twin primes.

The programs for A124520, there is no canonical definition to state claims against.
-/

/-! ## A124520.P6692508553558766001

`A173904(n+1)/2`
-/

namespace A124520.P6692508553558766001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173904 (n + 1) : ℚ) / 2

end

end A124520.P6692508553558766001

/-! ## A124520.P7314584564977462940

`A127545(n+1)/14`
-/

namespace A124520.P7314584564977462940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127545 (n + 1) : ℚ) / 14

end

end A124520.P7314584564977462940

/-! ## A124520.P14444953333830832174

`A014682(A173904(n+1))`
-/

namespace A124520.P14444953333830832174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A173904 (n + 1)).toNat

end

end A124520.P14444953333830832174

/-! ## A124520.P14777841523859559988

`∩[A024905(n+1), A165298(n+1)]/2`
-/

namespace A124520.P14777841523859559988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165298 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A124520.P14777841523859559988

/-! ## A124520.P13770555029448907355

`A246425(A173904(n+1)-1)`
-/

namespace A124520.P13770555029448907355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A173904 (n + 1) - 1).toNat

end

end A124520.P13770555029448907355

/-! ## A124520.P1323225509406139574

`A038572(lcm(2, A173904(n+1)))`
-/

namespace A124520.P1323225509406139574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A173904 (n + 1)))

end

end A124520.P1323225509406139574

/-! ## A124520.P14735061930167894856

`A038572(A173904(n+1)+2)-1`
-/

namespace A124520.P14735061930167894856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A173904 (n + 1) + 2).toNat - 1

end

end A124520.P14735061930167894856

/-! ## A124520.P8417724123277957332

`A255591(A173904(n+1)+2*A173904(n+1))`
-/

namespace A124520.P8417724123277957332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A173904 (n + 1) + 2 * A173904 (n + 1)).toNat

end

end A124520.P8417724123277957332

/-! ## A124520.P7103444079672016990

`eq[1, A353464(A190991(n)+n)]`
-/

namespace A124520.P7103444079672016990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A190991 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124520.P7103444079672016990

/-! ## A124520.P5036468434303773709

`A000463(A173904(n+1)-1)`
-/

namespace A124520.P5036468434303773709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A173904 (n + 1) - 1).toNat

end

end A124520.P5036468434303773709

/-! ## A124520.P11772999983519683254

`A008619(A173904(n+1)-1)`
-/

namespace A124520.P11772999983519683254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A173904 (n + 1) - 1).toNat

end

end A124520.P11772999983519683254

/-! ## A124520.P3432523308194038611

`A110654(A173904(n+1)-1)`
-/

namespace A124520.P3432523308194038611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A173904 (n + 1) - 1).toNat

end

end A124520.P3432523308194038611

/-! ## A124520.P5234825184816734392

`A001281(A173904(n+1)+2)-1`
-/

namespace A124520.P5234825184816734392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A173904 (n + 1) + 2).toNat - 1

end

end A124520.P5234825184816734392

/-! ## A124520.P3065885012478849626

`A004525(A173904(n+1)+2)-1`
-/

namespace A124520.P3065885012478849626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A173904 (n + 1) + 2).toNat - 1

end

end A124520.P3065885012478849626

/-! ## A124520.P9239577749464226767

`A246425(2*A173904(n+1))+A173904(n+1)`
-/

namespace A124520.P9239577749464226767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (2 * A173904 (n + 1)).toNat + A173904 (n + 1)

end

end A124520.P9239577749464226767

/-!
# A124521: Numbers k such that 16*k - 1 and 16*k + 1 are twin primes.

The programs for A124521, there is no canonical definition to state claims against.
-/

/-! ## A124521.P13677933257823959688

`record[A318518(A124065(n+2))]`
-/

namespace A124521.P13677933257823959688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A124065 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124521.P13677933257823959688

/-! ## A124521.P15914535330439476455

`record[A064455(A137920(n+2))]`
-/

namespace A124521.P15914535330439476455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A137920 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124521.P15914535330439476455

/-! ## A124521.P17225251747651276880

`record[3*A174571(A124519(n+1))]`
-/

namespace A124521.P17225251747651276880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A174571 (A124519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124521.P17225251747651276880

/-! ## A124521.P17634422110454733047

`A000720(p?[A073846(A124065(n+1))])`
-/

namespace A124521.P17634422110454733047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A124065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A124521.P17634422110454733047

/-! ## A124521.P917539137220717908

`record[lcm(3, A174571(A045753(n+1)))]`
-/

namespace A124521.P917539137220717908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A174571 (A045753 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124521.P917539137220717908

/-!
# A124522: a(n) = smallest k such that 2nk-1 and 2nk+1 are primes.

The programs for A124522, there is no canonical definition to state claims against.
-/

/-! ## A124522.P7901194647305084890

`A071558(2*(n+1))`
-/

namespace A124522.P7901194647305084890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (2 * (n + 1))

end

end A124522.P7901194647305084890

/-! ## A124522.P4518952959602504269

`A071256(2*(n+1))/(2*(n+1))`
-/

namespace A124522.P4518952959602504269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071256 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A124522.P4518952959602504269

/-! ## A124522.P260907274220857373

`lcm(A033999(n), A071558(n+2+n))`
-/

namespace A124522.P260907274220857373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A071558 (n + 2 + n))

end

end A124522.P260907274220857373

/-! ## A124522.P14536505941789858302

`∑{d}[A071558(n+2+n), A000010(#)]`
-/

namespace A124522.P14536505941789858302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A124522.P14536505941789858302

/-! ## A124522.P14918994885395869642

`A071558(n+2+n)%A000096(n+2)`
-/

namespace A124522.P14918994885395869642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071558 (n + 2 + n)) (A000096 (n + 2))

end

end A124522.P14918994885395869642

/-! ## A124522.P13049834407291500

`A071558(n+2+n)+2%A040001(n)`
-/

namespace A124522.P13049834407291500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (n + 2 + n) + Int.tmod 2 (A040001 n)

end

end A124522.P13049834407291500

/-! ## A124522.P661188033069453268

`A071558(Δ[lcm(n, n+1)])%A008589(n+1)`
-/

namespace A124522.P661188033069453268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071558 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A008589 (n + 1))

end

end A124522.P661188033069453268

/-! ## A124522.P15709628367469822840

`A071558(n+2+n)+A000056(n+1)%(n+1)`
-/

namespace A124522.P15709628367469822840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (n + 2 + n) + Int.tmod (A000056 (n + 1)) (n + 1 : ℤ)

end

end A124522.P15709628367469822840

/-! ## A124522.P9254713779531396220

`A071558(A103517(n))-A000038(n)`
-/

namespace A124522.P9254713779531396220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A103517 n).toNat - A000038 n

end

end A124522.P9254713779531396220

/-! ## A124522.P14879332285705057876

`A071558(A005843(n+1))%A000217(n+6)`
-/

namespace A124522.P14879332285705057876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071558 (A005843 (n + 1)).toNat) (A000217 (n + 6))

end

end A124522.P14879332285705057876

/-!
# A124523: Binomial transform of A084239.

The programs for A124523, there is no canonical definition to state claims against.
-/

/-! ## A124523.P13627028928292672117

`A054192(n)+A054161(A185053(n))`
-/

namespace A124523.P13627028928292672117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054192 n + A054161 (A185053 n).toNat

end

end A124523.P13627028928292672117

/-! ## A124523.P6668066344389128471

`A054185(n)-A297247(A297201(n))`
-/

namespace A124523.P6668066344389128471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054185 n - A297247 (A297201 n).toNat

end

end A124523.P6668066344389128471

/-! ## A124523.P13892339532833110378

`A048739(n)+∑[A321936(A011782(n))]`
-/

namespace A124523.P13892339532833110378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124523.P13892339532833110378

/-! ## A124523.P8434276516176878969

`A054192(n)+A051659(A047909(n+1))`
-/

namespace A124523.P8434276516176878969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054192 n + A051659 (A047909 (n + 1)).toNat

end

end A124523.P8434276516176878969

/-!
# A124525: Table (read by antidiagonals) where t(1,1)=1, t(m,n) = number of terms above and to the left of t(m,n) (i.e., number of t(k,j)'s, where 1 <= k <= m, 1 <= j <= n, excluding the t(m,n) case itself) which either divide m or are coprime to n.

The programs for A124525, there is no canonical definition to state claims against.
-/

/-! ## A124525.P14791473291939493768

`xor(A051601(n), A333818(A333964(n+1)))`
-/

namespace A124525.P14791473291939493768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051601 n) (A333818 (A333964 (n + 1)).toNat)

end

end A124525.P14791473291939493768

/-!
# A124526: Triangle, read by rows, where T(n,k) = A049020([n/2],k)*A049020([(n+1)/2],k).

The programs for A124526, there is no canonical definition to state claims against.
-/

/-! ## A124526.P7879524495193568158

`A124418(n)/(n%floor(sqrt(n+1)))!`
-/

namespace A124526.P7879524495193568158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124418 n : ℚ) / (Nat.factorial (n % Nat.sqrt (n + 1)) : ℚ)

end

end A124526.P7879524495193568158

/-! ## A124526.P8221442192588378490

`A124418(n)/A055087(n)!`
-/

namespace A124526.P8221442192588378490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124418 n : ℚ) / (Nat.factorial (A055087 n).toNat : ℚ)

end

end A124526.P8221442192588378490

/-!
# A124527: Row sums of triangle A124526.

The programs for A124527, there is no canonical definition to state claims against.
-/

/-! ## A124527.P4656522277517662319

`A001680(n)-A001222(A323951(n)!)`
-/

namespace A124527.P4656522277517662319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001680 n - A001222 (Nat.factorial (A323951 n).toNat)

end

end A124527.P4656522277517662319

/-! ## A124527.P3139865677146520016

`A328358(n)+A027870(A228343(n+1))`
-/

namespace A124527.P3139865677146520016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328358 n + A027870 (A228343 (n + 1)).toNat

end

end A124527.P3139865677146520016

/-! ## A124527.P15945396331836070147

`A081556(ceil(((4*n-6)*a(n-1)-3*n+5)/(n-1)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A124527.P15945396331836070147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A081556 ⌈(((4 * n : ℤ) - 6) * a (n - 1) - (3 * n : ℤ) + 5 : ℚ) / ((n : ℤ) - 1 : ℚ)⌉.toNat

end

end A124527.P15945396331836070147

/-!
# A124528: a(n) = Sum_{k=0..n} 2^k*A124526(n,k) for n>=0.

The programs for A124528, there is no canonical definition to state claims against.
-/

/-! ## A124528.P18131808417040900742

`A108954(A150889(n)+1)`
-/

namespace A124528.P18131808417040900742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A150889 n + 1).toNat

end

end A124528.P18131808417040900742

/-! ## A124528.P14404582370771836706

`A108954(or(1, A150889(n)))`
-/

namespace A124528.P14404582370771836706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor 1 (A150889 n)).toNat

end

end A124528.P14404582370771836706

/-! ## A124528.P3366378777650466492

`A066888(A328431(n)+A020699(n))`
-/

namespace A124528.P3366378777650466492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (A328431 n + A020699 n).toNat

end

end A124528.P3366378777650466492

/-!
# A124529: a(n) = Sum_{k=0..n} k!*A124526(n+k,k) for n>=0.

The programs for A124529, there is no canonical definition to state claims against.
-/

/-! ## A124529.P6229453836074883301

`∑[A222216(A245110(n))]`
-/

namespace A124529.P6229453836074883301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A245110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124529.P6229453836074883301

/-! ## A124529.P2735407022996302925

`A046699(A225042(n)+A000225(n))`
-/

namespace A124529.P2735407022996302925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A225042 n + A000225 n).toNat

end

end A124529.P2735407022996302925

/-!
# A124530: Rectangular table, read by antidiagonals, such that the g.f. of row n, R_n(y), satisfies: R_n(y) = Sum_{k>=0} y^k * R_k(y)^(n*k) for n>=0, with R_0(y) = 1/(1-y).

The programs for A124530, there is no canonical definition to state claims against.
-/

/-! ## A124530.P6685018007246638858

`A124560(n)-A369054(A165412(2*n+5))`
-/

namespace A124530.P6685018007246638858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 n - A369054 (A165412 (2 * n + 5)).toNat

end

end A124530.P6685018007246638858

/-!
# A124531: Row 1 of rectangular table A124530.

The programs for A124531, there is no canonical definition to state claims against.
-/

/-! ## A124531.P6825622176812904279

`A124539(A000124(n))+ceil(sin(n)²)`
-/

namespace A124531.P6825622176812904279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124539 (A000124 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A124531.P6825622176812904279

/-! ## A124531.P4786643967318297511

`A124539(A000124(n))+A057427(n)`
-/

namespace A124531.P4786643967318297511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124539 (A000124 n).toNat + A057427 n

end

end A124531.P4786643967318297511

/-! ## A124531.P10792936953813877881

`A167383(n)+A124539(A000124(n))`
-/

namespace A124531.P10792936953813877881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167383 n + A124539 (A000124 n).toNat

end

end A124531.P10792936953813877881

/-! ## A124531.P10482005207366871887

`A178334(n)+A124539(A000124(n))`
-/

namespace A124531.P10482005207366871887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A124539 (A000124 n).toNat

end

end A124531.P10482005207366871887

/-! ## A124531.P3677278745704070995

`A124539(A000124(n))+A001221(A000005(n+1))`
-/

namespace A124531.P3677278745704070995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124539 (A000124 n).toNat + A001221 (A000005 (n + 1)).toNat

end

end A124531.P3677278745704070995

/-!
# A124532: Row 2 of rectangular table A124530.

The programs for A124532, there is no canonical definition to state claims against.
-/

/-! ## A124532.P15265989356766665854

`A124530(∑[n+3])`
-/

namespace A124532.P15265989356766665854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124532.P15265989356766665854

/-! ## A124532.P17834211805058132692

`and(-1, A124530(A141214(n)))`
-/

namespace A124532.P17834211805058132692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A124530 (A141214 n).toNat)

end

end A124532.P17834211805058132692

/-! ## A124532.P9971309963784973810

`A124530(A141214(n))+A059995(n)`
-/

namespace A124532.P9971309963784973810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124530 (A141214 n).toNat + A059995 n

end

end A124532.P9971309963784973810

/-! ## A124532.P7814079395122614808

`A178798(n)+A124530(A141214(n))`
-/

namespace A124532.P7814079395122614808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A124530 (A141214 n).toNat

end

end A124532.P7814079395122614808

/-! ## A124532.P12028167950414763744

`A184946(n)+A124530(A141214(n))`
-/

namespace A124532.P12028167950414763744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 n + A124530 (A141214 n).toNat

end

end A124532.P12028167950414763744

/-!
# A124533: Row 3 of rectangular table A124530.

The programs for A124533, there is no canonical definition to state claims against.
-/

/-! ## A124533.P12355040645448503099

`A124530(∑[n+4]+2)`
-/

namespace A124533.P12355040645448503099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124530 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A124533.P12355040645448503099

/-! ## A124533.P10702658660228253039

`A083920(A125657(n)+A065033(2*n))`
-/

namespace A124533.P10702658660228253039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A125657 n + A065033 (2 * n)).toNat

end

end A124533.P10702658660228253039

/-! ## A124533.P7332013058890810578

`A083920(A065033(n)+A125657(n)+A083920(n))`
-/

namespace A124533.P7332013058890810578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A065033 n + (A125657 n + A083920 n)).toNat

end

end A124533.P7332013058890810578

/-!
# A124534: Row 4 of rectangular table A124530.

The programs for A124534, there is no canonical definition to state claims against.
-/

/-! ## A124534.P1891666813636619737

`A321393(A382906(n+5)+A337011(n))`
-/

namespace A124534.P1891666813636619737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (A382906 (n + 5) + A337011 n).toNat

end

end A124534.P1891666813636619737

/-! ## A124534.P4115968886719228075

`A185219((A357136(n)+A214921(n+2))²)`
-/

namespace A124534.P4115968886719228075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185219 ((A357136 n + A214921 (n + 2)) ^ 2).toNat

end

end A124534.P4115968886719228075

/-!
# A124535: Row 5 of rectangular table A124530.

The programs for A124535, there is no canonical definition to state claims against.
-/

/-! ## A124535.P13324527810379260640

`6^∑[floor(∑[gcd(5, n)^n/3])]`
-/

namespace A124535.P13324527810379260640
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 5 n ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A124535.P13324527810379260640

/-!
# A124536: Row 6 of rectangular table A124530.

The programs for A124536, there is no canonical definition to state claims against.
-/

/-! ## A124536.P7356536031800477855

`ceil((∏{p}[floor(18^(n-1)), #]+1)^(n-1))`
-/

namespace A124536.P7356536031800477855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(18 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1 : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A124536.P7356536031800477855

/-! ## A124536.P3778901096410920085

`A340072(5^n)`
-/

namespace A124536.P3778901096410920085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340072 (5 ^ n)

end

end A124536.P3778901096410920085

/-!
# A124537: Main diagonal of rectangular table A124530.

The programs for A124537, there is no canonical definition to state claims against.
-/

/-! ## A124537.P1975056259943529938

`A124530(∑[4*n])`
-/

namespace A124537.P1975056259943529938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124537.P1975056259943529938

/-! ## A124537.P1465661318573077559

`A075989(A052897(n))+1`
-/

namespace A124537.P1465661318573077559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075989 (A052897 n).toNat + 1

end

end A124537.P1465661318573077559

/-!
# A124538: Antidiagonal sums of rectangular table A124530.

The programs for A124538, there is no canonical definition to state claims against.
-/

/-! ## A124538.P11696367921952369195

`∑[A074664(A002034(n!))]`
-/

namespace A124538.P11696367921952369195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074664 (A002034 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124538.P11696367921952369195

/-! ## A124538.P8962338537283307812

`A069283(A036378(2*(n+1)))+A001250(n)`
-/

namespace A124538.P8962338537283307812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A036378 (2 * (n + 1))).toNat + A001250 n

end

end A124538.P8962338537283307812

/-! ## A124538.P7919351577263055641

`ceil(root(A182947(n+2), 3))`
-/

namespace A124538.P7919351577263055641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182947 (n + 2) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A124538.P7919351577263055641

/-!
# A124539: Triangle, read by rows, where row n equals the inverse binomial transform of column n in the rectangular table A124530.

The programs for A124539, there is no canonical definition to state claims against.
-/

/-! ## A124539.P876890060412510326

`∑{d}[A102365(n), A129001(#)]`
-/

namespace A124539.P876890060412510326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A129001 d

end

end A124539.P876890060412510326

/-! ## A124539.P5728753754362779687

`A002262(A101230(A055807(n))²)`
-/

namespace A124539.P5728753754362779687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A101230 (A055807 n).toNat ^ 2).toNat

end

end A124539.P5728753754362779687

/-! ## A124539.P9267536515030390129

`A283657(A257565(n))+A071921(n)`
-/

namespace A124539.P9267536515030390129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283657 (A257565 n).toNat + A071921 n

end

end A124539.P9267536515030390129

/-! ## A124539.P12377244287657709506

`A335382(A055277(n+1)^A001263(n+4))`
-/

namespace A124539.P12377244287657709506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335382 (SequenceMachineLib.roundAway ((A055277 (n + 1) : ℚ) ^ (A001263 (n + 4) : ℤ))).toNat

end

end A124539.P12377244287657709506

/-! ## A124539.P10744050166988725750

`A390670(n+1)^a(n-1)²` with `a(0)=1`
-/

namespace A124539.P10744050166988725750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A390670 (n + 1) : ℝ) ^ (a (n - 1) ^ 2)

end

end A124539.P10744050166988725750

/-!
# A124540: Rectangular table, read by antidiagonals, such that the g.f. of row n, R_n(y), satisfies: R_n(y) = [ Sum_{k>=0} y^k * R_k(y)^n ]^n for n>=0, with R_0(y) = 1.

The programs for A124540, there is no canonical definition to state claims against.
-/

/-! ## A124540.P13827711782119366384

`A124550(n)-A033886(A208673(n))²`
-/

namespace A124540.P13827711782119366384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 n - A033886 (A208673 n).toNat ^ 2

end

end A124540.P13827711782119366384

/-! ## A124540.P14517251146708422052

`and(A124550(n), A230809(A082657(n+1)))`
-/

namespace A124540.P14517251146708422052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124550 n) (A230809 (A082657 (n + 1)).toNat)

end

end A124540.P14517251146708422052

/-! ## A124540.P7006350701715793608

`and(A124550(n), A218388(A078305(n+1)))`
-/

namespace A124540.P7006350701715793608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124550 n) (A218388 (A078305 (n + 1)).toNat)

end

end A124540.P7006350701715793608

/-! ## A124540.P18197243097156707442

`A261780(n)+A082859(A102480(n))`
-/

namespace A124540.P18197243097156707442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 n + A082859 (A102480 n).toNat

end

end A124540.P18197243097156707442

/-! ## A124540.P9635059703850429610

`A307598(A118354(n))+A261780(n)`
-/

namespace A124540.P9635059703850429610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A118354 n).toNat + A261780 n

end

end A124540.P9635059703850429610

/-!
# A124541: G.f.: A(x) = R_2(x)/R_1(x), where R_2(x) and R_1(x) are the g.f.s of row 2 (A124542) and row 1 (A124531), respectively, of table A124540.

The programs for A124541, there is no canonical definition to state claims against.
-/

/-! ## A124541.P3076194689679123460

`A364728(A204089(n))`
-/

namespace A124541.P3076194689679123460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364728 (A204089 n).toNat

end

end A124541.P3076194689679123460

/-! ## A124541.P17592818105947780312

`A008616(Δ[A151104(n)])`
-/

namespace A124541.P17592818105947780312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (f1 (n + 1) - f1 n).toNat

end

end A124541.P17592818105947780312

/-!
# A124542: Row 2 of rectangular table A124540; equals the self-convolution of A124532 (row 2 of table A124530).

The programs for A124542, there is no canonical definition to state claims against.
-/

/-! ## A124542.P14393071142738334052

`A124540(∑[n+3])`
-/

namespace A124542.P14393071142738334052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124542.P14393071142738334052

/-! ## A124542.P16956373904642644623

`record[A124540(A101447(n))]`
-/

namespace A124542.P16956373904642644623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (A101447 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124542.P16956373904642644623

/-! ## A124542.P13845189217457537924

`and(-1, A124540(A141214(n)))`
-/

namespace A124542.P13845189217457537924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A124540 (A141214 n).toNat)

end

end A124542.P13845189217457537924

/-! ## A124542.P5121400310269106487

`record[A124540(A198463(n+1))]`
-/

namespace A124542.P5121400310269106487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (A198463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124542.P5121400310269106487

/-! ## A124542.P15891202611724345124

`record[A124540(A082859(n)+n)]`
-/

namespace A124542.P15891202611724345124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (A082859 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124542.P15891202611724345124

/-!
# A124543: Row 3 of rectangular table A124540; equals the self-convolution cube of A124533 (row 3 of table A124530).

The programs for A124543, there is no canonical definition to state claims against.
-/

/-! ## A124543.P5930571613629644602

`A124540(∑[n+4]+2)`
-/

namespace A124543.P5930571613629644602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A124543.P5930571613629644602

/-! ## A124543.P15069201301022487733

`record[A124540(abs(A046691(n)))]`
-/

namespace A124543.P15069201301022487733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124543.P15069201301022487733

/-! ## A124543.P4009916036407185287

`record[A124540(n*A243148(n))]`
-/

namespace A124543.P4009916036407185287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 ((n : ℤ) * A243148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124543.P4009916036407185287

/-! ## A124543.P10246999723694711953

`record[A124540(n)/A208058(n+3)]`
-/

namespace A124543.P10246999723694711953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124540 n : ℚ) / (A208058 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124543.P10246999723694711953

/-!
# A124544: Row 4 of rectangular table A124540; equals the self-convolution 4th power of A124534 (row 4 of table A124530).

The programs for A124544, there is no canonical definition to state claims against.
-/

/-! ## A124544.P1509998734549630561

`A124540(∑[n+5]+5)`
-/

namespace A124544.P1509998734549630561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A124544.P1509998734549630561

/-! ## A124544.P17933303967290107255

`record[A124540(A052905(n))]`
-/

namespace A124544.P17933303967290107255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124544.P17933303967290107255

/-! ## A124544.P12844961200611386377

`record[A124540(A198463(n+1)-2)]`
-/

namespace A124544.P12844961200611386377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (A198463 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124544.P12844961200611386377

/-!
# A124545: Row 5 of rectangular table A124540; equals the self-convolution 5th power of A124535 (row 5 of table A124530).

The programs for A124545, there is no canonical definition to state claims against.
-/

/-! ## A124545.P5219353308988260012

`record[A124540(∑[n+4])]`
-/

namespace A124545.P5219353308988260012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124545.P5219353308988260012

/-! ## A124545.P17235420734380878797

`A124540(A055999(n+3))`
-/

namespace A124545.P17235420734380878797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (A055999 (n + 3)).toNat

end

end A124545.P17235420734380878797

/-!
# A124546: Row 6 of rectangular table A124540; equals the self-convolution 6th power of A124536 (row 6 of table A124530).

The programs for A124546, there is no canonical definition to state claims against.
-/

/-! ## A124546.P9229323244518170533

`∑[A003255(A286918(n))]`
-/

namespace A124546.P9229323244518170533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003255 (A286918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124546.P9229323244518170533

/-!
# A124547: Main diagonal of rectangular table A124540.

The programs for A124547, there is no canonical definition to state claims against.
-/

/-! ## A124547.P12340926604791813307

`A124540(∑[4*n])`
-/

namespace A124547.P12340926604791813307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124547.P12340926604791813307

/-! ## A124547.P2994830870076483864

`A124540(A046092(n))+char[6]`
-/

namespace A124547.P2994830870076483864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A124547.P2994830870076483864

/-!
# A124548: Secondary diagonal of rectangular table A124540: a(n) = A124540(n+1,n).

The programs for A124548, there is no canonical definition to state claims against.
-/

/-! ## A124548.P14498880631922760136

`(n+1)*A124549(n)`
-/

namespace A124548.P14498880631922760136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A124549 n

end

end A124548.P14498880631922760136

/-! ## A124548.P17826455709399316030

`A124549(n)*A348553(n)`
-/

namespace A124548.P17826455709399316030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124549 n * A348553 n

end

end A124548.P17826455709399316030

/-! ## A124548.P15225733385256404289

`A124549(n)*A194910(∑[char[∑[n]]]²-n)`
-/

namespace A124548.P15225733385256404289
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124549 n * A194910 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A124548.P15225733385256404289

/-! ## A124548.P13425208866220568896

`A124549(n)*A135278(A000217(n))`
-/

namespace A124548.P13425208866220568896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124549 n * A135278 (A000217 n).toNat

end

end A124548.P13425208866220568896

/-! ## A124548.P4865350141943398202

`A124549(n)*A227581(A001844(n))`
-/

namespace A124548.P4865350141943398202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124549 n * A227581 (A001844 n).toNat

end

end A124548.P4865350141943398202

/-!
# A124549: Derived from a diagonal of rectangular table A124540: a(n) = A124540(n+1,n)/(n+1).

The programs for A124549, there is no canonical definition to state claims against.
-/

/-! ## A124549.P13576171564974767084

`A124548(n)/(n+1)`
-/

namespace A124549.P13576171564974767084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124548 n : ℚ) / (n + 1 : ℚ)

end

end A124549.P13576171564974767084

/-! ## A124549.P16225801817374236873

`floor(A124548(n)/A348553(n))`
-/

namespace A124549.P16225801817374236873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124548 n : ℚ) / (A348553 n : ℚ)⌋

end

end A124549.P16225801817374236873

/-! ## A124549.P2045908376675269623

`floor(A124548(n)/A008611(3*n))`
-/

namespace A124549.P2045908376675269623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124548 n : ℚ) / (A008611 (3 * n) : ℚ)⌋

end

end A124549.P2045908376675269623

/-! ## A124549.P17894978716915406101

`A093178(A027445(n))/A005555(n)*A124548(n)`
-/

namespace A124549.P17894978716915406101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093178 (A027445 n).toNat : ℚ) / (A005555 n : ℚ) * (A124548 n : ℚ)

end

end A124549.P17894978716915406101

/-!
# A124550: Rectangular table, read by antidiagonals, such that the g.f. of row n, R_n(y), satisfies: R_n(y) = [ Sum_{k>=0} y^k * R_{n*k}(y) ]^n for n>=0, with R_0(y)=1.

The programs for A124550, there is no canonical definition to state claims against.
-/

/-! ## A124550.P4282295962016590418

`A306024(n)-Δ[A025469(A256116(n))]`
-/

namespace A124550.P4282295962016590418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A256116 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 n - (f1 (n + 1) - f1 n)

end

end A124550.P4282295962016590418

/-! ## A124550.P1469803176032552507

`A306024(n)-A185284(Δ[n²])`
-/

namespace A124550.P1469803176032552507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 n - A185284 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A124550.P1469803176032552507

/-! ## A124550.P5356507931627063054

`xor(A185284(2*n+1), A306024(n))`
-/

namespace A124550.P5356507931627063054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (2 * n + 1)) (A306024 n)

end

end A124550.P5356507931627063054

/-! ## A124550.P15852455953370183699

`A306024(n)-A018843(A008949(n))`
-/

namespace A124550.P15852455953370183699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306024 n - A018843 (A008949 n).toNat

end

end A124550.P15852455953370183699

/-! ## A124550.P6540056042607852661

`A386558(n)%A001359(A386569(n))`
-/

namespace A124550.P6540056042607852661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386558 n) (A001359 (A386569 n).toNat)

end

end A124550.P6540056042607852661

/-!
# A124551: Row 1 of tables A124550 and A124560; also equals the antidiagonal sums of table A124550.

The programs for A124551, there is no canonical definition to state claims against.
-/

/-! ## A124551.P13712831202304118205

`A124560(∑[n+2]-1)`
-/

namespace A124551.P13712831202304118205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A124551.P13712831202304118205

/-! ## A124551.P16284740356592910425

`A124550(∑[n+1]+n)`
-/

namespace A124551.P16284740356592910425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A124551.P16284740356592910425

/-! ## A124551.P8535003875832847061

`and(-1, A124560(A034856(n+1)))`
-/

namespace A124551.P8535003875832847061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A124560 (A034856 (n + 1)).toNat)

end

end A124551.P8535003875832847061

/-! ## A124551.P13889766766355160814

`A000027(A124560(∑[n+1]+n))`
-/

namespace A124551.P13889766766355160814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A124560 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A124551.P13889766766355160814

/-! ## A124551.P12361169320105943225

`A124560(A034856(n+1))%A074580(n)`
-/

namespace A124551.P12361169320105943225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124560 (A034856 (n + 1)).toNat) (A074580 n)

end

end A124551.P12361169320105943225

/-!
# A124552: Row 2 of table A124550; also equals the self-convolution square of A124562, which is row 2 of table A124560.

The programs for A124552, there is no canonical definition to state claims against.
-/

/-! ## A124552.P3881192604769805769

`A124550(∑[n+3])`
-/

namespace A124552.P3881192604769805769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124552.P3881192604769805769

/-! ## A124552.P2030084453294983728

`record[A124550(A072480(n))]`
-/

namespace A124552.P2030084453294983728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (A072480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124552.P2030084453294983728

/-! ## A124552.P8082345893750373155

`record[A124550(A165157(n))]`
-/

namespace A124552.P8082345893750373155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (A165157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124552.P8082345893750373155

/-! ## A124552.P6727767391779129697

`record[A124550(A231204(n))]`
-/

namespace A124552.P6727767391779129697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (A231204 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124552.P6727767391779129697

/-!
# A124553: Row 3 of table A124550; also equals the self-convolution cube of A124563, which is row 3 of table A124560.

The programs for A124553, there is no canonical definition to state claims against.
-/

/-! ## A124553.P13752420460013887707

`A124550(∑[n+4]+2)`
-/

namespace A124553.P13752420460013887707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A124553.P13752420460013887707

/-! ## A124553.P11325612376616603102

`record[A124550(abs(A046691(n)))]`
-/

namespace A124553.P11325612376616603102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124553.P11325612376616603102

/-! ## A124553.P3012691839544350250

`record[A104975(n)*A124550(n+1)]`
-/

namespace A124553.P3012691839544350250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n * A124550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124553.P3012691839544350250

/-! ## A124553.P12665901548027837229

`record[A124550(n*A023531(n+3))]`
-/

namespace A124553.P12665901548027837229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 ((n : ℤ) * A023531 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124553.P12665901548027837229

/-!
# A124554: Row 4 of table A124550; also equals the self-convolution 4th power of A124564, which is row 4 of table A124560.

The programs for A124554, there is no canonical definition to state claims against.
-/

/-! ## A124554.P1245439438082715294

`A124550(∑[n+5]+5)`
-/

namespace A124554.P1245439438082715294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A124554.P1245439438082715294

/-! ## A124554.P5411279276792921503

`record[A124550(A052905(n))]`
-/

namespace A124554.P5411279276792921503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124554.P5411279276792921503

/-! ## A124554.P4076713043306564828

`record[A104975(n)*A124550(n)]`
-/

namespace A124554.P4076713043306564828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n * A124550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124554.P4076713043306564828

/-!
# A124555: Row 5 of table A124550; also equals the self-convolution 5th power of A124565, which is row 5 of table A124560.

The programs for A124555, there is no canonical definition to state claims against.
-/

/-! ## A124555.P16541738935608909813

`record[A124550(∑[n+4])]`
-/

namespace A124555.P16541738935608909813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124555.P16541738935608909813

/-! ## A124555.P6602106491798449882

`A124550(eq[6, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A124555.P6602106491798449882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124555.P6602106491798449882

/-!
# A124556: Row 6 of table A124550; also equals the self-convolution 6th power of A124566, which is row 6 of table A124560.

The programs for A124556, there is no canonical definition to state claims against.
-/

/-! ## A124556.P8479660745793972438

`record[A124550(A294864(n))]`
-/

namespace A124556.P8479660745793972438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (A294864 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124556.P8479660745793972438

/-!
# A124557: Main diagonal of table A124550.

The programs for A124557, there is no canonical definition to state claims against.
-/

/-! ## A124557.P10199929650290640748

`A124550(∑[4*n])`
-/

namespace A124557.P10199929650290640748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124557.P10199929650290640748

/-! ## A124557.P13832529989596402823

`A124550(A046092(n))+char[6]`
-/

namespace A124557.P13832529989596402823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A124557.P13832529989596402823

/-!
# A124558: Secondary diagonal of table A124550; a(n) = A124550(n+1,n).

The programs for A124558, there is no canonical definition to state claims against.
-/

/-! ## A124558.P12344671168389797135

`(n+1)*A124559(n)`
-/

namespace A124558.P12344671168389797135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A124559 n

end

end A124558.P12344671168389797135

/-! ## A124558.P16966674883489150623

`abs((A005408(n)-n)*A124559(n))`
-/

namespace A124558.P16966674883489150623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A005408 n - (n : ℤ)) * A124559 n|

end

end A124558.P16966674883489150623

/-! ## A124558.P14563811200766393402

`A124559(n)*A194910(∑[char[∑[n]]]²-n)`
-/

namespace A124558.P14563811200766393402
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124559 n * A194910 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A124558.P14563811200766393402

/-! ## A124558.P15644591969875435637

`A124559(n)*A131251(A000217(n))`
-/

namespace A124558.P15644591969875435637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124559 n * A131251 (A000217 n).toNat

end

end A124558.P15644591969875435637

/-! ## A124558.P8358276006476045377

`A124559(n)*A237447(A000124(n))`
-/

namespace A124558.P8358276006476045377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124559 n * A237447 (A000124 n).toNat

end

end A124558.P8358276006476045377

/-!
# A124559: Derived from secondary diagonal of table A124550; a(n) = A124550(n+1,n)/(n+1).

The programs for A124559, there is no canonical definition to state claims against.
-/

/-! ## A124559.P5572167789303284804

`A124558(n)/(n+1)`
-/

namespace A124559.P5572167789303284804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124558 n : ℚ) / (n + 1 : ℚ)

end

end A124559.P5572167789303284804

/-! ## A124559.P3785315450256939444

`ceil(A124558(n)/A005496(n))`
-/

namespace A124559.P3785315450256939444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124558 n : ℚ) / (A005496 n : ℚ)⌉

end

end A124559.P3785315450256939444

/-! ## A124559.P8950045556532616375

`abs(A000038(n)-A124558(n)/A005496(n))`
-/

namespace A124559.P8950045556532616375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A000038 n : ℚ) - (A124558 n : ℚ) / (A005496 n : ℚ)|

end

end A124559.P8950045556532616375

/-! ## A124559.P9946694873877366596

`A124558(n)/A005496(n)*A007318(∑[n])`
-/

namespace A124559.P9946694873877366596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124558 n : ℚ) / (A005496 n : ℚ) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A124559.P9946694873877366596

/-! ## A124559.P2250884608242298501

`(A124558(n)/A005496(n))%∏[A141214(n)]`
-/

namespace A124559.P2250884608242298501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A124558 n : ℚ) / (A005496 n : ℚ))) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A124559.P2250884608242298501

/-!
# A124560: Rectangular table, read by antidiagonals, such that the g.f. of row n, R_n(y), satisfies: R_n(y) = Sum_{k>=0} y^k * [R_{n*k}(y)]^(n*k) for n>=0, with R_0(y)=1/(1-y).

The programs for A124560, there is no canonical definition to state claims against.
-/

/-! ## A124560.P12119674782788997369

`A257500(A243631(n))`
-/

namespace A124560.P12119674782788997369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257500 (A243631 n).toNat

end

end A124560.P12119674782788997369

/-! ## A124560.P14765561585366886827

`A342515(2*A144150(n))`
-/

namespace A124560.P14765561585366886827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (2 * A144150 n).toNat

end

end A124560.P14765561585366886827

/-! ## A124560.P4399313949577689951

`A342515(2*A305962(n))`
-/

namespace A124560.P4399313949577689951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (2 * A305962 n).toNat

end

end A124560.P4399313949577689951

/-! ## A124560.P7273022890914172757

`A144150(n)+A025469(A163661(n))`
-/

namespace A124560.P7273022890914172757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 n + A025469 (A163661 n).toNat

end

end A124560.P7273022890914172757

/-! ## A124560.P12774886978346783861

`A144150(n)+A025469(A256116(n))`
-/

namespace A124560.P12774886978346783861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 n + A025469 (A256116 n).toNat

end

end A124560.P12774886978346783861

/-!
# A124561: Antidiagonal sums of rectangular table A124560.

The programs for A124561, there is no canonical definition to state claims against.
-/

/-! ## A124561.P16485334578721492188

`A211352(A084423(n))+A003422(n)`
-/

namespace A124561.P16485334578721492188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211352 (A084423 n).toNat + A003422 n

end

end A124561.P16485334578721492188

/-! ## A124561.P8690131631986527069

`A036234(A102812(n)+A029953(n+1))`
-/

namespace A124561.P8690131631986527069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A102812 n + A029953 (n + 1)).toNat

end

end A124561.P8690131631986527069

/-! ## A124561.P17505935326328950191

`A003422(n)-A215063(A147210(n+1))`
-/

namespace A124561.P17505935326328950191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n - A215063 (A147210 (n + 1)).toNat

end

end A124561.P17505935326328950191

/-!
# A124562: Row 2 of table A124560; also, the self-convolution square equals A124552, which is row 2 of table A124550.

The programs for A124562, there is no canonical definition to state claims against.
-/

/-! ## A124562.P17267937100935514559

`A124560(∑[n+3])`
-/

namespace A124562.P17267937100935514559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124562.P17267937100935514559

/-! ## A124562.P12063157604758362526

`A124560(A141214(n))+char[9]`
-/

namespace A124562.P12063157604758362526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A124562.P12063157604758362526

/-! ## A124562.P4627289132749344586

`A007318(∑[n])*A124560(A141214(n))`
-/

namespace A124562.P4627289132749344586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A124560 (A141214 n).toNat

end

end A124562.P4627289132749344586

/-! ## A124562.P9082354588295062248

`A130132(n+1)+A124560(A141214(n))`
-/

namespace A124562.P9082354588295062248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130132 (n + 1) + A124560 (A141214 n).toNat

end

end A124562.P9082354588295062248

/-! ## A124562.P18389744868064200267

`A124560(A141214(n))^A111891(n+1)`
-/

namespace A124562.P18389744868064200267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124560 (A141214 n).toNat : ℚ) ^ (A111891 (n + 1) : ℤ)

end

end A124562.P18389744868064200267

/-!
# A124563: Row 3 of table A124560; also, the self-convolution cube equals A124553, which is row 3 of table A124550.

The programs for A124563, there is no canonical definition to state claims against.
-/

/-! ## A124563.P17639650546307728336

`A124560(∑[n+4]+2)`
-/

namespace A124563.P17639650546307728336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A124563.P17639650546307728336

/-! ## A124563.P14078266303127013376

`A124560(n)*A124560(A046691(n+2))`
-/

namespace A124563.P14078266303127013376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 n * A124560 (A046691 (n + 2)).toNat

end

end A124563.P14078266303127013376

/-! ## A124563.P10934660967577769574

`lcm(A048805(n), A124560(A046691(n+2)))`
-/

namespace A124563.P10934660967577769574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048805 n) (A124560 (A046691 (n + 2)).toNat)

end

end A124563.P10934660967577769574

/-!
# A124564: Row 4 of table A124560; also, the self-convolution 4th power equals A124554, which is row 4 of table A124550.

The programs for A124564, there is no canonical definition to state claims against.
-/

/-! ## A124564.P6132514165909344316

`A124560(∑[n+5]+5)`
-/

namespace A124564.P6132514165909344316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A124564.P6132514165909344316

/-!
# A124565: Row 5 of table A124560; also, the self-convolution 5th power equals A124555, which is row 5 of table A124550.

The programs for A124565, there is no canonical definition to state claims against.
-/

/-! ## A124565.P3946094081547115697

`A124560(A055999(n+3))`
-/

namespace A124565.P3946094081547115697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 (A055999 (n + 3)).toNat

end

end A124565.P3946094081547115697

/-! ## A124565.P4751366656563909476

`A124560(A134227(n+4))`
-/

namespace A124565.P4751366656563909476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 (A134227 (n + 4)).toNat

end

end A124565.P4751366656563909476

/-!
# A124566: Row 6 of table A124560; also, the self-convolution 6th power equals A124556, which is row 6 of table A124550.

The programs for A124566, there is no canonical definition to state claims against.
-/

/-! ## A124566.P3408899561853057097

`A026741(n^n+(n+2)^(n+1)-2*(n+1)^(n+1))`
-/

namespace A124566.P3408899561853057097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n ^ n : ℤ) + (((n + 2) ^ (n + 1) : ℤ) - (2 * (n + 1) ^ (n + 1) : ℤ))).toNat

end

end A124566.P3408899561853057097

/-!
# A124567: Main diagonal of table A124560.

The programs for A124567, there is no canonical definition to state claims against.
-/

/-! ## A124567.P16474037463536192123

`A124560(∑[4*n])`
-/

namespace A124567.P16474037463536192123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124567.P16474037463536192123

/-! ## A124567.P12974674602610473111

`or(char[1], A124560(A046092(n)))`
-/

namespace A124567.P12974674602610473111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A124560 (A046092 n).toNat)

end

end A124567.P12974674602610473111

/-!
# A124568: Triangle, read by rows, where row n equals the inverse binomial transform of the column n in rectangular table A124550 (starting with row 1).

The programs for A124568, there is no canonical definition to state claims against.
-/

/-! ## A124568.P13707284006645702843

`A321296(A032559(n+1))+A321296(n)`
-/

namespace A124568.P13707284006645702843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321296 (A032559 (n + 1)).toNat + A321296 n

end

end A124568.P13707284006645702843

/-! ## A124568.P17496572373496166584

`A321296(A077739(n+1))+A321296(n)`
-/

namespace A124568.P17496572373496166584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321296 (A077739 (n + 1)).toNat + A321296 n

end

end A124568.P17496572373496166584

/-! ## A124568.P13770649745588179769

`A078644(A192415(n)^A006928(n+1))`
-/

namespace A124568.P13770649745588179769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (SequenceMachineLib.roundAway ((A192415 n : ℚ) ^ (A006928 (n + 1) : ℤ))).toNat

end

end A124568.P13770649745588179769

/-! ## A124568.P4782156263120306649

`A238884(p?[A243238(n+1)])^A105224(n+1)`
-/

namespace A124568.P4782156263120306649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238884 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) ^ (A105224 (n + 1) : ℤ)

end

end A124568.P4782156263120306649

/-!
# A124569: Numbers k such that k, k+2, k+4 and k+6 are squarefree.

The programs for A124569, the canonical program `A124569.P8820123207631878592` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124569 has offset 1).

The definition of A124569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5877 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124569.P8820123207631878592

`∩[A069977(n+1)-4, A069977(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A124569

/-- `∩[A069977(n+1)-4, A069977(n+1)]` -/
def P8820123207631878592.Spec : Prop :=
  ∀ n, (P8820123207631878592.a n : ℤ) = A124569 (n + 1)

theorem P8820123207631878592.correct : P8820123207631878592.Spec := by
  intro n
  simp only [A124569, Nat.add_sub_cancel]

end A124569

/-! ## A124569.P11292617987179053957

`A004273(∩[A272799(n+1)-2, A272799(n+1)])`
-/

namespace A124569.P11292617987179053957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A124569.P11292617987179053957

namespace A124569

/-- `A004273(∩[A272799(n+1)-2, A272799(n+1)])` -/
def P11292617987179053957.Spec : Prop :=
  ∀ n, P11292617987179053957.a n = A124569 (n + 1)

end A124569

/-! ## A124569.P1508211808136810707

`eq[A089655(n+1), A089655(n+5)]`
-/

namespace A124569.P1508211808136810707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089655 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124569.P1508211808136810707

namespace A124569

/-- `eq[A089655(n+1), A089655(n+5)]` -/
def P1508211808136810707.Spec : Prop :=
  ∀ n, (P1508211808136810707.a n : ℤ) = A124569 (n + 1)

end A124569

/-! ## A124569.P1747877352480189414

`lt[A089655(n+1)*A089655(n+5), A089680(n+1)]`
-/

namespace A124569.P1747877352480189414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089655 (n + 1) * A089655 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124569.P1747877352480189414

namespace A124569

/-- `lt[A089655(n+1)*A089655(n+5), A089680(n+1)]` -/
def P1747877352480189414.Spec : Prop :=
  ∀ n, (P1747877352480189414.a n : ℤ) = A124569 (n + 1)

end A124569

/-!
# A124570: Array read by antidiagonals: T(d,k) (k >= 1, d = 1,2,3,4,5,6,...) = smallest semiprime s of k (not necessarily consecutive) semiprimes in arithmetic progression with common difference d, or 0 if there is no such arithmetic progression.

The programs for A124570, there is no canonical definition to state claims against.
-/

/-! ## A124570.P10570825957074372051

`A144470(C(n, 3))+3`
-/

namespace A124570.P10570825957074372051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144470 (Nat.choose n 3) + 3

end

end A124570.P10570825957074372051

/-! ## A124570.P651093963783072322

`A072966(lcm(n, -1%∏{e}[n, #])+5)`
-/

namespace A124570.P651093963783072322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072966 (Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)) + 5)

end

end A124570.P651093963783072322

/-! ## A124570.P752058001837983890

`A367096(A369545(n+1))`
-/

namespace A124570.P752058001837983890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367096 (A369545 (n + 1)).toNat

end

end A124570.P752058001837983890

/-! ## A124570.P3086306693309467893

`A317058(A007872(n+2))`
-/

namespace A124570.P3086306693309467893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317058 (A007872 (n + 2)).toNat

end

end A124570.P3086306693309467893

/-! ## A124570.P15589416263018329246

`A251544(gcd(A057864(n+3), A175178(3*n+5)))`
-/

namespace A124570.P15589416263018329246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251544 (Int.gcd (A057864 (n + 3)) (A175178 (3 * n + 5)))

end

end A124570.P15589416263018329246

/-!
# A124571: Expansion of limit b(n)/x^n where b(n) = b(n-1)^2 + b(n-1)*x, b(1) = x^2.

The programs for A124571, there is no canonical definition to state claims against.
-/

/-! ## A124571.P4112144066320288383

`A134667(A070198(n))+A115008(n)`
-/

namespace A124571.P4112144066320288383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (A070198 n).toNat + A115008 n

end

end A124571.P4112144066320288383

/-! ## A124571.P14795460342257171426

`A115008(n)-A158052(A026029(n))`
-/

namespace A124571.P14795460342257171426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 n - A158052 (A026029 n).toNat

end

end A124571.P14795460342257171426

/-! ## A124571.P14740576223564870826

`A269394(A000045(n+1)-A376615(n+1))`
-/

namespace A124571.P14740576223564870826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A000045 (n + 1) - A376615 (n + 1)).toNat

end

end A124571.P14740576223564870826

/-! ## A124571.P14356585714540942385

`A389523(A148827(n))`
-/

namespace A124571.P14356585714540942385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389523 (A148827 n).toNat

end

end A124571.P14356585714540942385

/-!
# A124572: Triangle read by rows where the n-th row is the first row of M^n, with M the (n+1)-by-(n+1) matrix with (1,3,1,3,1,3,...) on its main diagonal and (3,1,3,1,3,1,...) on its superdiagonal.

The programs for A124572, there is no canonical definition to state claims against.
-/

/-! ## A124572.P5352979624820484278

`A056449(A002262(n))*A140070(n+1)`
-/

namespace A124572.P5352979624820484278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (A002262 n).toNat * A140070 (n + 1)

end

end A124572.P5352979624820484278

/-! ## A124572.P3699797261127891147

`A056449(log2(A059268(n)))*A140070(n+1)`
-/

namespace A124572.P3699797261127891147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A140070 (n + 1)

end

end A124572.P3699797261127891147

/-! ## A124572.P9818370085125775698

`A056449(A002262(n))*A213513(A114276(n+1))`
-/

namespace A124572.P9818370085125775698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (A002262 n).toNat * A213513 (A114276 (n + 1)).toNat

end

end A124572.P9818370085125775698

/-!
# A124577: Define p(alpha) to be the number of H-conjugacy classes where H is a Young subgroup of type alpha of the symmetric group S_n. Then a(n) = sum p(alpha) where |alpha| = n and alpha has at most n parts.

The programs for A124577, there is no canonical definition to state claims against.
-/

/-! ## A124577.P17417973761897120106

`A209664(A028310(∑[n]))`
-/

namespace A124577.P17417973761897120106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209664 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A124577.P17417973761897120106

/-! ## A124577.P12506419526433454112

`A209664(A179865(n+1))`
-/

namespace A124577.P12506419526433454112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209664 (A179865 (n + 1)).toNat

end

end A124577.P12506419526433454112

/-! ## A124577.P3705201344735857152

`A209664(abs(2-A133263(n)))`
-/

namespace A124577.P3705201344735857152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209664 |2 - A133263 n|.toNat

end

end A124577.P3705201344735857152

/-! ## A124577.P11734422129308005065

`A209664(A000007(n)+∑[n])`
-/

namespace A124577.P11734422129308005065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209664 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A124577.P11734422129308005065

/-! ## A124577.P6010510097973364785

`A209664(A106232(n+1)/4)`
-/

namespace A124577.P6010510097973364785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209664 (SequenceMachineLib.roundAway ((A106232 (n + 1) : ℚ) / 4)).toNat

end

end A124577.P6010510097973364785

/-! ## A124577.P3933630114963895473

`A209664(A000217(A000007(n)+n))`
-/

namespace A124577.P3933630114963895473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209664 (A000217 (A000007 n + (n : ℤ)).toNat).toNat

end

end A124577.P3933630114963895473

/-! ## A124577.P12808302449405711754

`A209664(or(A000007(n), A000217(n)))`
-/

namespace A124577.P12808302449405711754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209664 (Int.lor (A000007 n) (A000217 n)).toNat

end

end A124577.P12808302449405711754

/-!
# A124579: Number of natural numbers less than n which have identical Moebius mu values.

The programs for A124579, there is no canonical definition to state claims against.
-/

/-! ## A124579.P12459931253313886704

`A000120(A000014(n)*A324865(n+1))`
-/

namespace A124579.P12459931253313886704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000014 n * A324865 (n + 1)).toNat

end

end A124579.P12459931253313886704

/-! ## A124579.P15172449149862916691

`A004526(n)-A076489(A205489(n+1))`
-/

namespace A124579.P15172449149862916691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A076489 (A205489 (n + 1)).toNat

end

end A124579.P15172449149862916691

/-! ## A124579.P16122087563949971599

`A331594(2*(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A102462(n))`
-/

namespace A124579.P16122087563949971599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331594 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) * (A102462 n : ℚ))).toNat

end

end A124579.P16122087563949971599

/-! ## A124579.P4273979815660849964

`A252735(A077168(n)*A298268(n+1))`
-/

namespace A124579.P4273979815660849964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A077168 n * A298268 (n + 1)).toNat

end

end A124579.P4273979815660849964

/-! ## A124579.P13897570838580638697

`A318995(A077168(n)*A299201(n+1))`
-/

namespace A124579.P13897570838580638697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A077168 n * A299201 (n + 1)).toNat

end

end A124579.P13897570838580638697

/-!
# A124581: Abundant cubes.

The programs for A124581, there is no canonical definition to state claims against.
-/

/-! ## A124581.P11277372094850587814

`∩[A376119(n+1), A000578(n)]`
-/

namespace A124581.P11277372094850587814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124581.P11277372094850587814

/-! ## A124581.P8509145631709772172

`∩[A376119(n+1), A109900(n)]`
-/

namespace A124581.P8509145631709772172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124581.P8509145631709772172

/-! ## A124581.P8466242530930741748

`∩[A184628(n+1), A376119(n+1)]`
-/

namespace A124581.P8466242530930741748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124581.P8466242530930741748

/-! ## A124581.P10240357126749362176

`∩[A363169(n+1), A000578(n)]`
-/

namespace A124581.P10240357126749362176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124581.P10240357126749362176

/-! ## A124581.P8039108615809283724

`∩[A363169(n+1), A109900(n)]`
-/

namespace A124581.P8039108615809283724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124581.P8039108615809283724

/-! ## A124581.P18331674947996886568

`∩[A184628(n+1), A363169(n+1)]`
-/

namespace A124581.P18331674947996886568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124581.P18331674947996886568

/-! ## A124581.P2780643438240956049

`∩[A126200(n+1), A376119(n+1)]`
-/

namespace A124581.P2780643438240956049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124581.P2780643438240956049

/-! ## A124581.P3171244595426122964

`∩[A319389(n+1), A376119(n+1)]`
-/

namespace A124581.P3171244595426122964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124581.P3171244595426122964

/-!
# A124582: 

The programs for A124582, there is no canonical definition to state claims against.
-/

/-! ## A124582.P5619337904273603126

`A134099(n+1)-2`
-/

namespace A124582.P5619337904273603126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134099 (n + 1) - 2

end

end A124582.P5619337904273603126

/-! ## A124582.P5586372907000854516

`A119257(A134101(n+1))-2`
-/

namespace A124582.P5586372907000854516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (A134101 (n + 1)).toNat - 2

end

end A124582.P5586372907000854516

/-! ## A124582.P16837548108014597176

`A083370(n+1)*A088601(A001222(n+2))`
-/

namespace A124582.P16837548108014597176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1) * A088601 (A001222 (n + 2)).toNat

end

end A124582.P16837548108014597176

/-! ## A124582.P14774983366797981463

`A056647(A055229(3*n+5))*A083370(n+1)`
-/

namespace A124582.P14774983366797981463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056647 (A055229 (3 * n + 5)).toNat * A083370 (n + 1)

end

end A124582.P14774983366797981463

/-! ## A124582.P3681782660230169807

`or(A055229(A001222(3*n+5)), A083370(n+1))`
-/

namespace A124582.P3681782660230169807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055229 (A001222 (3 * n + 5)).toNat) (A083370 (n + 1))

end

end A124582.P3681782660230169807

/-! ## A124582.P17900049722375173502

`A083370(n+1)+char[A062773(A007304(n+1)+1)-1]`
-/

namespace A124582.P17900049722375173502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (A007304 (n + 1) + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A124582.P17900049722375173502

/-! ## A124582.P10169436165297377241

`A083370(n+1)+char[A062773(A083370(n+1)+1)-1]`
-/

namespace A124582.P10169436165297377241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (A083370 (n + 1) + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A124582.P10169436165297377241

/-! ## A124582.P13257108530881147256

`∩[A028261(n+1), A083370(n+1)]`
-/

namespace A124582.P13257108530881147256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P13257108530881147256

/-! ## A124582.P6108698371484499655

`∩[A048107(n+1), A083370(n+1)]`
-/

namespace A124582.P6108698371484499655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P6108698371484499655

/-! ## A124582.P7232141455208733329

`∩[A075493(n+1), A083370(n+1)]`
-/

namespace A124582.P7232141455208733329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P7232141455208733329

/-! ## A124582.P11186985265291439332

`∩[A061837(n+1), A067775(n+1)]`
-/

namespace A124582.P11186985265291439332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P11186985265291439332

/-! ## A124582.P3916855951906147629

`∩[A061837(n+1), A083370(n+1)]`
-/

namespace A124582.P3916855951906147629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P3916855951906147629

/-! ## A124582.P10180365270180553706

`∩[A083370(n+1), A286609(n+1)]`
-/

namespace A124582.P10180365270180553706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P10180365270180553706

/-! ## A124582.P1413808478525507687

`∩[A065155(n+1), A083370(n+1)]`
-/

namespace A124582.P1413808478525507687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P1413808478525507687

/-! ## A124582.P17070871709717564724

`∩[A182851(n+1), A083370(n+1)]`
-/

namespace A124582.P17070871709717564724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P17070871709717564724

/-! ## A124582.P14667361213005208108

`∩[A004709(n+1), A083370(n+1)]`
-/

namespace A124582.P14667361213005208108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P14667361213005208108

/-! ## A124582.P16095443794429159819

`∩[A046841(n+1), A083370(n+1)]`
-/

namespace A124582.P16095443794429159819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P16095443794429159819

/-! ## A124582.P7927110264473968996

`∩[A083370(n+1), A304804(n)]`
-/

namespace A124582.P7927110264473968996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304804 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P7927110264473968996

/-! ## A124582.P7991547374252774856

`∩[A083370(n+1), A304808(n)]`
-/

namespace A124582.P7991547374252774856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304808 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P7991547374252774856

/-! ## A124582.P13786307385534432729

`∩[A047252(n+1), A083370(n+1)]`
-/

namespace A124582.P13786307385534432729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124582.P13786307385534432729

/-!
# A124584: Primes p such that q-p >= 10, where q is the next prime after p.

The programs for A124584, the canonical program `A124584.P4878718695736530326` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124584 has offset 1).

The definition of A124584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124584.P648747562586355389

`p?[A167776(n+1)-5]`
-/

namespace A124584.P648747562586355389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167776 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124584.P648747562586355389

namespace A124584

/-- `p?[A167776(n+1)-5]` -/
def P648747562586355389.Spec : Prop :=
  ∀ n, P648747562586355389.a n = A124584 (n + 1)

end A124584

/-! ## A124584.P14441476981952301352

`p?[A138026(n+1)-9]`
-/

namespace A124584.P14441476981952301352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124584.P14441476981952301352

namespace A124584

/-- `p?[A138026(n+1)-9]` -/
def P14441476981952301352.Spec : Prop :=
  ∀ n, P14441476981952301352.a n = A124584 (n + 1)

end A124584

/-! ## A124584.P4878718695736530326

`A045344(lt[7, A046933(n+1)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124584

/-- `A045344(lt[7, A046933(n+1)])` -/
def P4878718695736530326.Spec : Prop :=
  ∀ n, P4878718695736530326.a n = A124584 (n + 1)

theorem P4878718695736530326.correct : P4878718695736530326.Spec := by
  intro n
  simp only [A124584, Nat.add_sub_cancel]

end A124584

/-! ## A124584.P13654451950882204657

`A000040(lt[8, A054541(n+1)])`
-/

namespace A124584.P13654451950882204657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124584.P13654451950882204657

namespace A124584

/-- `A000040(lt[8, A054541(n+1)])` -/
def P13654451950882204657.Spec : Prop :=
  ∀ n, P13654451950882204657.a n = A124584 (n + 1)

end A124584

/-! ## A124584.P4798191562545412253

`A065091(lt[8, A001223(n+1)])`
-/

namespace A124584.P4798191562545412253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124584.P4798191562545412253

namespace A124584

/-- `A065091(lt[8, A001223(n+1)])` -/
def P4798191562545412253.Spec : Prop :=
  ∀ n, P4798191562545412253.a n = A124584 (n + 1)

end A124584

/-! ## A124584.P7851392997111357096

`A000040(lt[9, A076368(n+1)])`
-/

namespace A124584.P7851392997111357096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124584.P7851392997111357096

namespace A124584

/-- `A000040(lt[9, A076368(n+1)])` -/
def P7851392997111357096.Spec : Prop :=
  ∀ n, P7851392997111357096.a n = A124584 (n + 1)

end A124584

/-! ## A124584.P3364662513678043798

`A000040(lt[9, A230847(n+1)])`
-/

namespace A124584.P3364662513678043798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124584.P3364662513678043798

namespace A124584

/-- `A000040(lt[9, A230847(n+1)])` -/
def P3364662513678043798.Spec : Prop :=
  ∀ n, P3364662513678043798.a n = A124584 (n + 1)

end A124584

/-! ## A124584.P14560562689132484272

`A049591(lt[1, A047846(n+1)-2])`
-/

namespace A124584.P14560562689132484272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047846 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124584.P14560562689132484272

namespace A124584

/-- `A049591(lt[1, A047846(n+1)-2])` -/
def P14560562689132484272.Spec : Prop :=
  ∀ n, P14560562689132484272.a n = A124584 (n + 1)

end A124584

/-! ## A124584.P8716245905385970000

`A045319(lt[1, A100820(n+1)-2])`
-/

namespace A124584.P8716245905385970000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124584.P8716245905385970000

namespace A124584

/-- `A045319(lt[1, A100820(n+1)-2])` -/
def P8716245905385970000.Spec : Prop :=
  ∀ n, P8716245905385970000.a n = A124584 (n + 1)

end A124584

/-! ## A124584.P10223646093817473873

`A065091(lt[1, A100820(n+1)-2])`
-/

namespace A124584.P10223646093817473873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124584.P10223646093817473873

namespace A124584

/-- `A065091(lt[1, A100820(n+1)-2])` -/
def P10223646093817473873.Spec : Prop :=
  ∀ n, P10223646093817473873.a n = A124584 (n + 1)

end A124584

/-! ## A124584.P14808049154236718736

`∩[A007921(n+1), A382766(n+1)]`
-/

namespace A124584.P14808049154236718736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124584.P14808049154236718736

namespace A124584

/-- `∩[A007921(n+1), A382766(n+1)]` -/
def P14808049154236718736.Spec : Prop :=
  ∀ n, (P14808049154236718736.a n : ℤ) = A124584 (n + 1)

end A124584

/-! ## A124584.P12513693094172882748

`∩[A049591(n+1), A382766(n+1)]`
-/

namespace A124584.P12513693094172882748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124584.P12513693094172882748

namespace A124584

/-- `∩[A049591(n+1), A382766(n+1)]` -/
def P12513693094172882748.Spec : Prop :=
  ∀ n, (P12513693094172882748.a n : ℤ) = A124584 (n + 1)

end A124584

/-! ## A124584.P18176493740642984531

`∩[A067774(n+1), A382766(n+1)]`
-/

namespace A124584.P18176493740642984531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124584.P18176493740642984531

namespace A124584

/-- `∩[A067774(n+1), A382766(n+1)]` -/
def P18176493740642984531.Spec : Prop :=
  ∀ n, (P18176493740642984531.a n : ℤ) = A124584 (n + 1)

end A124584

/-! ## A124584.P6709663861035498248

`∩[A083370(n+1), A382766(n+1)]`
-/

namespace A124584.P6709663861035498248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124584.P6709663861035498248

namespace A124584

/-- `∩[A083370(n+1), A382766(n+1)]` -/
def P6709663861035498248.Spec : Prop :=
  ∀ n, (P6709663861035498248.a n : ℤ) = A124584 (n + 1)

end A124584

/-! ## A124584.P12855968508093339551

`∩[A083371(n+1), A382766(n+1)]`
-/

namespace A124584.P12855968508093339551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124584.P12855968508093339551

namespace A124584

/-- `∩[A083371(n+1), A382766(n+1)]` -/
def P12855968508093339551.Spec : Prop :=
  ∀ n, (P12855968508093339551.a n : ℤ) = A124584 (n + 1)

end A124584

/-! ## A124584.P16830606011735869630

`∩[A227030(n+1), A382766(n+1)]`
-/

namespace A124584.P16830606011735869630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124584.P16830606011735869630

namespace A124584

/-- `∩[A227030(n+1), A382766(n+1)]` -/
def P16830606011735869630.Spec : Prop :=
  ∀ n, (P16830606011735869630.a n : ℤ) = A124584 (n + 1)

end A124584

/-! ## A124584.P18339075353394556035

`∩[A382766(n+1), A387591(n+1)]`
-/

namespace A124584.P18339075353394556035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124584.P18339075353394556035

namespace A124584

/-- `∩[A382766(n+1), A387591(n+1)]` -/
def P18339075353394556035.Spec : Prop :=
  ∀ n, (P18339075353394556035.a n : ℤ) = A124584 (n + 1)

end A124584

/-! ## A124584.P3854985865302772074

`∪[A031928(n+1), A124585(n+1)]`
-/

namespace A124584.P3854985865302772074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124584.P3854985865302772074

namespace A124584

/-- `∪[A031928(n+1), A124585(n+1)]` -/
def P3854985865302772074.Spec : Prop :=
  ∀ n, (P3854985865302772074.a n : ℤ) = A124584 (n + 1)

end A124584

/-! ## A124584.P10988795099695860485

`∪[A124585(n+1), A209618(n+1)]`
-/

namespace A124584.P10988795099695860485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124584.P10988795099695860485

namespace A124584

/-- `∪[A124585(n+1), A209618(n+1)]` -/
def P10988795099695860485.Spec : Prop :=
  ∀ n, (P10988795099695860485.a n : ℤ) = A124584 (n + 1)

end A124584

/-! ## A124584.P4451225018739460221

`∪[A124585(n+1), A290450(n+1)]`
-/

namespace A124584.P4451225018739460221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124584.P4451225018739460221

namespace A124584

/-- `∪[A124585(n+1), A290450(n+1)]` -/
def P4451225018739460221.Spec : Prop :=
  ∀ n, (P4451225018739460221.a n : ℤ) = A124584 (n + 1)

end A124584

/-!
# A124585: Primes p such that q-p >= 12, where q is the next prime after p.

The programs for A124585, the canonical program `A124585.P9964939614639913661` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124585 has offset 1).

The definition of A124585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124585.P15882033945212124800

`p?[A076150(n+1)-1]`
-/

namespace A124585.P15882033945212124800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076150 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124585.P15882033945212124800

namespace A124585

/-- `p?[A076150(n+1)-1]` -/
def P15882033945212124800.Spec : Prop :=
  ∀ n, P15882033945212124800.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P15279549998542267561

`p?[A138026(n+1)-10]`
-/

namespace A124585.P15279549998542267561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124585.P15279549998542267561

namespace A124585

/-- `p?[A138026(n+1)-10]` -/
def P15279549998542267561.Spec : Prop :=
  ∀ n, P15279549998542267561.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P9964939614639913661

`A000040(lt[10, A054541(n+1)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A124585

/-- `A000040(lt[10, A054541(n+1)])` -/
def P9964939614639913661.Spec : Prop :=
  ∀ n, P9964939614639913661.a n = A124585 (n + 1)

theorem P9964939614639913661.correct : P9964939614639913661.Spec := by
  intro n
  simp only [A124585, Nat.add_sub_cancel]

end A124585

/-! ## A124585.P2276156041016967159

`A065091(lt[10, A001223(n+1)])`
-/

namespace A124585.P2276156041016967159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124585.P2276156041016967159

namespace A124585

/-- `A065091(lt[10, A001223(n+1)])` -/
def P2276156041016967159.Spec : Prop :=
  ∀ n, P2276156041016967159.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P9062901724074526696

`A000040(lt[11, A076368(n+1)])`
-/

namespace A124585.P9062901724074526696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124585.P9062901724074526696

namespace A124585

/-- `A000040(lt[11, A076368(n+1)])` -/
def P9062901724074526696.Spec : Prop :=
  ∀ n, P9062901724074526696.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P12306789312744216981

`A000040(lt[11, A230847(n+1)])`
-/

namespace A124585.P12306789312744216981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124585.P12306789312744216981

namespace A124585

/-- `A000040(lt[11, A230847(n+1)])` -/
def P12306789312744216981.Spec : Prop :=
  ∀ n, P12306789312744216981.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P16687254780714998789

`record[A020639(A076150(n+1)-1)]`
-/

namespace A124585.P16687254780714998789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A076150 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124585.P16687254780714998789

namespace A124585

/-- `record[A020639(A076150(n+1)-1)]` -/
def P16687254780714998789.Spec : Prop :=
  ∀ n, P16687254780714998789.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P4025883342200950238

`A049591(lt[2, A047846(n+1)-2])`
-/

namespace A124585.P4025883342200950238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047846 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124585.P4025883342200950238

namespace A124585

/-- `A049591(lt[2, A047846(n+1)-2])` -/
def P4025883342200950238.Spec : Prop :=
  ∀ n, P4025883342200950238.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P6360274616177941589

`A045319(lt[2, A100820(n+1)-2])`
-/

namespace A124585.P6360274616177941589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124585.P6360274616177941589

namespace A124585

/-- `A045319(lt[2, A100820(n+1)-2])` -/
def P6360274616177941589.Spec : Prop :=
  ∀ n, P6360274616177941589.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P7172540690713499453

`A065091(lt[2, A100820(n+1)-2])`
-/

namespace A124585.P7172540690713499453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124585.P7172540690713499453

namespace A124585

/-- `A065091(lt[2, A100820(n+1)-2])` -/
def P7172540690713499453.Spec : Prop :=
  ∀ n, P7172540690713499453.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P14650194300377044140

`A049591(lt[2, A047846(n+1)/2])`
-/

namespace A124585.P14650194300377044140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047846 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A124585.P14650194300377044140

namespace A124585

/-- `A049591(lt[2, A047846(n+1)/2])` -/
def P14650194300377044140.Spec : Prop :=
  ∀ n, P14650194300377044140.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P15448784090652941054

`A045319(lt[2, A100820(n+1)/2])`
-/

namespace A124585.P15448784090652941054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100820 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A124585.P15448784090652941054

namespace A124585

/-- `A045319(lt[2, A100820(n+1)/2])` -/
def P15448784090652941054.Spec : Prop :=
  ∀ n, P15448784090652941054.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P11512247707340464840

`A065091(lt[2, A100820(n+1)/2])`
-/

namespace A124585.P11512247707340464840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100820 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A124585.P11512247707340464840

namespace A124585

/-- `A065091(lt[2, A100820(n+1)/2])` -/
def P11512247707340464840.Spec : Prop :=
  ∀ n, P11512247707340464840.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P6709495065122232186

`A000040(lt[10, A001223(n+1)]+1)`
-/

namespace A124585.P6709495065122232186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A124585.P6709495065122232186

namespace A124585

/-- `A000040(lt[10, A001223(n+1)]+1)` -/
def P6709495065122232186.Spec : Prop :=
  ∀ n, P6709495065122232186.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P5532165122328400315

`∪[A031930(n+1), A124586(n+1)]`
-/

namespace A124585.P5532165122328400315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124585.P5532165122328400315

namespace A124585

/-- `∪[A031930(n+1), A124586(n+1)]` -/
def P5532165122328400315.Spec : Prop :=
  ∀ n, (P5532165122328400315.a n : ℤ) = A124585 (n + 1)

end A124585

/-! ## A124585.P11608297087103443873

`A000040(eq[10, 10%A001223(n+1)]+1)`
-/

namespace A124585.P11608297087103443873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (A001223 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124585.P11608297087103443873

namespace A124585

/-- `A000040(eq[10, 10%A001223(n+1)]+1)` -/
def P11608297087103443873.Spec : Prop :=
  ∀ n, P11608297087103443873.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P16494722025353996222

`∩[A124584(n+1), A140556(n+1)]`
-/

namespace A124585.P16494722025353996222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124585.P16494722025353996222

namespace A124585

/-- `∩[A124584(n+1), A140556(n+1)]` -/
def P16494722025353996222.Spec : Prop :=
  ∀ n, (P16494722025353996222.a n : ℤ) = A124585 (n + 1)

end A124585

/-! ## A124585.P11977145073818382828

`record[A014963(A076150(n+1)-1)]`
-/

namespace A124585.P11977145073818382828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A076150 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124585.P11977145073818382828

namespace A124585

/-- `record[A014963(A076150(n+1)-1)]` -/
def P11977145073818382828.Spec : Prop :=
  ∀ n, P11977145073818382828.a n = A124585 (n + 1)

end A124585

/-! ## A124585.P12211463292670181135

`∩[A076150(n+1)-1, A124584(n+1)]`
-/

namespace A124585.P12211463292670181135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076150 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124585.P12211463292670181135

namespace A124585

/-- `∩[A076150(n+1)-1, A124584(n+1)]` -/
def P12211463292670181135.Spec : Prop :=
  ∀ n, (P12211463292670181135.a n : ℤ) = A124585 (n + 1)

end A124585

/-!
# A124586: Primes p such that q-p >= 14, where q is the next prime after p.

The programs for A124586, there is no canonical definition to state claims against.
-/

/-! ## A124586.P4174196638889624039

`∪[A031932(n+1), A124587(n+1)]`
-/

namespace A124586.P4174196638889624039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124586.P4174196638889624039

/-! ## A124586.P5851006920497894611

`A065091(lt[12, A001223(n+1)])`
-/

namespace A124586.P5851006920497894611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124586.P5851006920497894611

/-! ## A124586.P8203713472777341506

`A065091(lt[11, A046933(n+1)])`
-/

namespace A124586.P8203713472777341506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124586.P8203713472777341506

/-! ## A124586.P7768255525205957392

`A000040(lt[11, A046933(n+1)]+1)`
-/

namespace A124586.P7768255525205957392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A124586.P7768255525205957392

/-! ## A124586.P8181967814505027355

`A000040(lt[12, A001223(n+1)]+1)`
-/

namespace A124586.P8181967814505027355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A124586.P8181967814505027355

/-! ## A124586.P500063879240331450

`A000040(lt[12, A054541(n+1)])`
-/

namespace A124586.P500063879240331450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124586.P500063879240331450

/-! ## A124586.P14047310133595579085

`A000040(lt[13, A076368(n+1)])`
-/

namespace A124586.P14047310133595579085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124586.P14047310133595579085

/-! ## A124586.P14355254174455371262

`A000040(lt[13, A230847(n+1)])`
-/

namespace A124586.P14355254174455371262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124586.P14355254174455371262

/-! ## A124586.P6090774771947503267

`A008578(lt[11, A046933(n+1)]+2)`
-/

namespace A124586.P6090774771947503267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A124586.P6090774771947503267

/-! ## A124586.P5340676716559449726

`∩[A124585(n+1), A233314(n+1)]`
-/

namespace A124586.P5340676716559449726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124586.P5340676716559449726

/-!
# A124587: Primes p such that q-p >= 16, where q is the next prime after p.

The programs for A124587, the canonical program `A124587.P17225293575173405852` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124587 has offset 1).

The definition of A124587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124587.P13510738481025728878

`∩[A124586(n+1), A140557(n+1)]`
-/

namespace A124587.P13510738481025728878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124587.P13510738481025728878

namespace A124587

/-- `∩[A124586(n+1), A140557(n+1)]` -/
def P13510738481025728878.Spec : Prop :=
  ∀ n, (P13510738481025728878.a n : ℤ) = A124587 (n + 1)

end A124587

/-! ## A124587.P17225293575173405852

`A065091(lt[14, A001223(n+1)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A124587

/-- `A065091(lt[14, A001223(n+1)])` -/
def P17225293575173405852.Spec : Prop :=
  ∀ n, P17225293575173405852.a n = A124587 (n + 1)

theorem P17225293575173405852.correct : P17225293575173405852.Spec := by
  intro n
  simp only [A124587, Nat.add_sub_cancel]

end A124587

/-! ## A124587.P796193501827319812

`A045319(lt[6, A100820(n+1)])`
-/

namespace A124587.P796193501827319812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124587.P796193501827319812

namespace A124587

/-- `A045319(lt[6, A100820(n+1)])` -/
def P796193501827319812.Spec : Prop :=
  ∀ n, P796193501827319812.a n = A124587 (n + 1)

end A124587

/-! ## A124587.P11014233513515340318

`A065091(lt[6, A100820(n+1)])`
-/

namespace A124587.P11014233513515340318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124587.P11014233513515340318

namespace A124587

/-- `A065091(lt[6, A100820(n+1)])` -/
def P11014233513515340318.Spec : Prop :=
  ∀ n, P11014233513515340318.a n = A124587 (n + 1)

end A124587

/-! ## A124587.P9061750896476358974

`A045319(lt[13, A046933(n+1)])`
-/

namespace A124587.P9061750896476358974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124587.P9061750896476358974

namespace A124587

/-- `A045319(lt[13, A046933(n+1)])` -/
def P9061750896476358974.Spec : Prop :=
  ∀ n, P9061750896476358974.a n = A124587 (n + 1)

end A124587

/-! ## A124587.P7793677136282954970

`A065091(lt[13, A046933(n+1)])`
-/

namespace A124587.P7793677136282954970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124587.P7793677136282954970

namespace A124587

/-- `A065091(lt[13, A046933(n+1)])` -/
def P7793677136282954970.Spec : Prop :=
  ∀ n, P7793677136282954970.a n = A124587 (n + 1)

end A124587

/-! ## A124587.P13807531803101125472

`A000040(lt[14, A054541(n+1)])`
-/

namespace A124587.P13807531803101125472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124587.P13807531803101125472

namespace A124587

/-- `A000040(lt[14, A054541(n+1)])` -/
def P13807531803101125472.Spec : Prop :=
  ∀ n, P13807531803101125472.a n = A124587 (n + 1)

end A124587

/-! ## A124587.P4024348472225045853

`A065091(lt[A105346(n+1), A141042(n+1)])`
-/

namespace A124587.P4024348472225045853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124587.P4024348472225045853

namespace A124587

/-- `A065091(lt[A105346(n+1), A141042(n+1)])` -/
def P4024348472225045853.Spec : Prop :=
  ∀ n, P4024348472225045853.a n = A124587 (n + 1)

end A124587

/-! ## A124587.P9062893312239922738

`p?[lt[14, A013632(n)]]`
-/

namespace A124587.P9062893312239922738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A124587.P9062893312239922738

namespace A124587

/-- `p?[lt[14, A013632(n)]]` -/
def P9062893312239922738.Spec : Prop :=
  ∀ n, (P9062893312239922738.a n : ℤ) = A124587 (n + 1)

end A124587

/-!
# A124588: Primes p such that q - p <= 2, where q is the next prime after p.

The programs for A124588, the canonical program `A124588.P5207466362187017202` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124588 has offset 1).

The definition of A124588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124588.P5207466362187017202

`A181747(n+1)+A000007(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A124588

/-- `A181747(n+1)+A000007(n)` -/
def P5207466362187017202.Spec : Prop :=
  ∀ n, P5207466362187017202.a n = A124588 (n + 1)

theorem P5207466362187017202.correct : P5207466362187017202.Spec := by
  intro n
  simp only [A124588, Nat.add_sub_cancel]

end A124588

/-! ## A124588.P13887417627972513793

`A054977(n)*A181747(n+1)`
-/

namespace A124588.P13887417627972513793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A181747 (n + 1)

end

end A124588.P13887417627972513793

namespace A124588

/-- `A054977(n)*A181747(n+1)` -/
def P13887417627972513793.Spec : Prop :=
  ∀ n, P13887417627972513793.a n = A124588 (n + 1)

end A124588

/-! ## A124588.P5387494550502843465

`∪[A001359(n+1), A061351(n)]`
-/

namespace A124588.P5387494550502843465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124588.P5387494550502843465

namespace A124588

/-- `∪[A001359(n+1), A061351(n)]` -/
def P5387494550502843465.Spec : Prop :=
  ∀ n, (P5387494550502843465.a n : ℤ) = A124588 (n + 1)

end A124588

/-! ## A124588.P7406501045103892785

`∪[A061368(n+1), A061351(n)]`
-/

namespace A124588.P7406501045103892785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124588.P7406501045103892785

namespace A124588

/-- `∪[A061368(n+1), A061351(n)]` -/
def P7406501045103892785.Spec : Prop :=
  ∀ n, (P7406501045103892785.a n : ℤ) = A124588 (n + 1)

end A124588

/-! ## A124588.P8039049594473856477

`p?[A073534(n+1)]`
-/

namespace A124588.P8039049594473856477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124588.P8039049594473856477

namespace A124588

/-- `p?[A073534(n+1)]` -/
def P8039049594473856477.Spec : Prop :=
  ∀ n, P8039049594473856477.a n = A124588 (n + 1)

end A124588

/-! ## A124588.P7905376358710374926

`p?[A378983(n+1)]`
-/

namespace A124588.P7905376358710374926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124588.P7905376358710374926

namespace A124588

/-- `p?[A378983(n+1)]` -/
def P7905376358710374926.Spec : Prop :=
  ∀ n, P7905376358710374926.a n = A124588 (n + 1)

end A124588

/-! ## A124588.P9832968101981247958

`p?[A394509(n+1)]`
-/

namespace A124588.P9832968101981247958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124588.P9832968101981247958

namespace A124588

/-- `p?[A394509(n+1)]` -/
def P9832968101981247958.Spec : Prop :=
  ∀ n, P9832968101981247958.a n = A124588 (n + 1)

end A124588

/-! ## A124588.P1878035656239749233

`p?[A395788(n+1)]`
-/

namespace A124588.P1878035656239749233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124588.P1878035656239749233

namespace A124588

/-- `p?[A395788(n+1)]` -/
def P1878035656239749233.Spec : Prop :=
  ∀ n, P1878035656239749233.a n = A124588 (n + 1)

end A124588

/-! ## A124588.P17404200554565926046

`floor(sqrt(A134020(n+1)))`
-/

namespace A124588.P17404200554565926046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A134020 (n + 1))

end

end A124588.P17404200554565926046

namespace A124588

/-- `floor(sqrt(A134020(n+1)))` -/
def P17404200554565926046.Spec : Prop :=
  ∀ n, P17404200554565926046.a n = A124588 (n + 1)

end A124588

/-! ## A124588.P10834700931725417685

`A171821(A004274(n+1))`
-/

namespace A124588.P10834700931725417685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (A004274 (n + 1)).toNat

end

end A124588.P10834700931725417685

namespace A124588

/-- `A171821(A004274(n+1))` -/
def P10834700931725417685.Spec : Prop :=
  ∀ n, P10834700931725417685.a n = A124588 (n + 1)

end A124588

/-! ## A124588.P11528573662902911032

`A171821(A004280(n+1))`
-/

namespace A124588.P11528573662902911032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (A004280 (n + 1)).toNat

end

end A124588.P11528573662902911032

namespace A124588

/-- `A171821(A004280(n+1))` -/
def P11528573662902911032.Spec : Prop :=
  ∀ n, P11528573662902911032.a n = A124588 (n + 1)

end A124588

/-! ## A124588.P3876648838356892046

`A099609(Δ[n²])`
-/

namespace A124588.P3876648838356892046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A124588.P3876648838356892046

namespace A124588

/-- `A099609(Δ[n²])` -/
def P3876648838356892046.Spec : Prop :=
  ∀ n, P3876648838356892046.a n = A124588 (n + 1)

end A124588

/-! ## A124588.P5338909491130293060

`p?[A099609(2*n+1)]`
-/

namespace A124588.P5338909491130293060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124588.P5338909491130293060

namespace A124588

/-- `p?[A099609(2*n+1)]` -/
def P5338909491130293060.Spec : Prop :=
  ∀ n, P5338909491130293060.a n = A124588 (n + 1)

end A124588

/-! ## A124588.P10384941001553358117

`p?[A348283(n+1)-2]`
-/

namespace A124588.P10384941001553358117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124588.P10384941001553358117

namespace A124588

/-- `p?[A348283(n+1)-2]` -/
def P10384941001553358117.Spec : Prop :=
  ∀ n, P10384941001553358117.a n = A124588 (n + 1)

end A124588

/-! ## A124588.P13472856644785719004

`∩[A040044(n+1), A073534(n+1)]`
-/

namespace A124588.P13472856644785719004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124588.P13472856644785719004

namespace A124588

/-- `∩[A040044(n+1), A073534(n+1)]` -/
def P13472856644785719004.Spec : Prop :=
  ∀ n, (P13472856644785719004.a n : ℤ) = A124588 (n + 1)

end A124588

/-! ## A124588.P6008734113501848683

`∩[A040046(n+1), A073534(n+1)]`
-/

namespace A124588.P6008734113501848683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124588.P6008734113501848683

namespace A124588

/-- `∩[A040046(n+1), A073534(n+1)]` -/
def P6008734113501848683.Spec : Prop :=
  ∀ n, (P6008734113501848683.a n : ℤ) = A124588 (n + 1)

end A124588

/-! ## A124588.P17016411613933013754

`∩[A040028(n+1), A073534(n+1)]`
-/

namespace A124588.P17016411613933013754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124588.P17016411613933013754

namespace A124588

/-- `∩[A040028(n+1), A073534(n+1)]` -/
def P17016411613933013754.Spec : Prop :=
  ∀ n, (P17016411613933013754.a n : ℤ) = A124588 (n + 1)

end A124588

/-! ## A124588.P2577534248495036678

`∩[A040036(n+1), A073534(n+1)]`
-/

namespace A124588.P2577534248495036678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124588.P2577534248495036678

namespace A124588

/-- `∩[A040036(n+1), A073534(n+1)]` -/
def P2577534248495036678.Spec : Prop :=
  ∀ n, (P2577534248495036678.a n : ℤ) = A124588 (n + 1)

end A124588

/-! ## A124588.P6742840027890662496

`∩[A040049(n+1), A073534(n+1)]`
-/

namespace A124588.P6742840027890662496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124588.P6742840027890662496

namespace A124588

/-- `∩[A040049(n+1), A073534(n+1)]` -/
def P6742840027890662496.Spec : Prop :=
  ∀ n, (P6742840027890662496.a n : ℤ) = A124588 (n + 1)

end A124588

/-!
# A124589: Primes p such that q-p <= 4, where q is the next prime after p.

The programs for A124589, the canonical program `A124589.P1067034870965055436` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124589 has offset 1).

The definition of A124589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124589.P1067034870965055436

`p?[A063934(n+1)-2]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124589

/-- `p?[A063934(n+1)-2]` -/
def P1067034870965055436.Spec : Prop :=
  ∀ n, P1067034870965055436.a n = A124589 (n + 1)

theorem P1067034870965055436.correct : P1067034870965055436.Spec := by
  intro n
  simp only [A124589, Nat.add_sub_cancel]

end A124589

/-! ## A124589.P9623555016333732912

`∩[A061771(n+1), A124590(n+1)]`
-/

namespace A124589.P9623555016333732912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124589.P9623555016333732912

namespace A124589

/-- `∩[A061771(n+1), A124590(n+1)]` -/
def P9623555016333732912.Spec : Prop :=
  ∀ n, (P9623555016333732912.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P14845350046636631678

`∪[A015913(n+1), A111166(n+1)]`
-/

namespace A124589.P14845350046636631678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124589.P14845350046636631678

namespace A124589

/-- `∪[A015913(n+1), A111166(n+1)]` -/
def P14845350046636631678.Spec : Prop :=
  ∀ n, (P14845350046636631678.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P11324395163443987397

`∪[A015913(n+1), A124588(n+1)]`
-/

namespace A124589.P11324395163443987397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124589.P11324395163443987397

namespace A124589

/-- `∪[A015913(n+1), A124588(n+1)]` -/
def P11324395163443987397.Spec : Prop :=
  ∀ n, (P11324395163443987397.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P3441215624427678682

`∪[A029710(n+1), A124588(n+1)]`
-/

namespace A124589.P3441215624427678682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124589.P3441215624427678682

namespace A124589

/-- `∪[A029710(n+1), A124588(n+1)]` -/
def P3441215624427678682.Spec : Prop :=
  ∀ n, (P3441215624427678682.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P13431576710581579204

`∪[A001359(n+1), A172238(n+1)]`
-/

namespace A124589.P13431576710581579204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124589.P13431576710581579204

namespace A124589

/-- `∪[A001359(n+1), A172238(n+1)]` -/
def P13431576710581579204.Spec : Prop :=
  ∀ n, (P13431576710581579204.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P3004366496261683692

`∪[A015913(n+1), A238528(n+1)]`
-/

namespace A124589.P3004366496261683692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124589.P3004366496261683692

namespace A124589

/-- `∪[A015913(n+1), A238528(n+1)]` -/
def P3004366496261683692.Spec : Prop :=
  ∀ n, (P3004366496261683692.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P12762454312877257899

`∪[A029710(n+1), A238528(n+1)]`
-/

namespace A124589.P12762454312877257899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124589.P12762454312877257899

namespace A124589

/-- `∪[A029710(n+1), A238528(n+1)]` -/
def P12762454312877257899.Spec : Prop :=
  ∀ n, (P12762454312877257899.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P1074543590712985836

`∪[A111166(n+1), A172238(n+1)]`
-/

namespace A124589.P1074543590712985836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124589.P1074543590712985836

namespace A124589

/-- `∪[A111166(n+1), A172238(n+1)]` -/
def P1074543590712985836.Spec : Prop :=
  ∀ n, (P1074543590712985836.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P10810515278537906122

`∪[A124588(n+1), A172238(n+1)]`
-/

namespace A124589.P10810515278537906122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124589.P10810515278537906122

namespace A124589

/-- `∪[A124588(n+1), A172238(n+1)]` -/
def P10810515278537906122.Spec : Prop :=
  ∀ n, (P10810515278537906122.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P13562299776615288877

`∪[A172238(n+1), A238528(n+1)]`
-/

namespace A124589.P13562299776615288877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124589.P13562299776615288877

namespace A124589

/-- `∪[A172238(n+1), A238528(n+1)]` -/
def P13562299776615288877.Spec : Prop :=
  ∀ n, (P13562299776615288877.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P15786717710691023743

`p?[A065091(n+1)-A001223(A001223(n+1))]`
-/

namespace A124589.P15786717710691023743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A001223 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124589.P15786717710691023743

namespace A124589

/-- `p?[A065091(n+1)-A001223(A001223(n+1))]` -/
def P15786717710691023743.Spec : Prop :=
  ∀ n, P15786717710691023743.a n = A124589 (n + 1)

end A124589

/-! ## A124589.P2881583657108472255

`A035031(A168063(n+2))`
-/

namespace A124589.P2881583657108472255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A168063 (n + 2)).toNat

end

end A124589.P2881583657108472255

namespace A124589

/-- `A035031(A168063(n+2))` -/
def P2881583657108472255.Spec : Prop :=
  ∀ n, P2881583657108472255.a n = A124589 (n + 1)

end A124589

/-! ## A124589.P16280645615664076390

`eq[A007920(n), A359300(n+2)]`
-/

namespace A124589.P16280645615664076390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359300 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124589.P16280645615664076390

namespace A124589

/-- `eq[A007920(n), A359300(n+2)]` -/
def P16280645615664076390.Spec : Prop :=
  ∀ n, (P16280645615664076390.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P16469584924235168891

`eq[A063933(n+2), A325142(n)]`
-/

namespace A124589.P16469584924235168891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063933 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124589.P16469584924235168891

namespace A124589

/-- `eq[A063933(n+2), A325142(n)]` -/
def P16469584924235168891.Spec : Prop :=
  ∀ n, (P16469584924235168891.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P1391578069613812072

`eq[A325142(n), A359300(n+2)]`
-/

namespace A124589.P1391578069613812072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359300 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124589.P1391578069613812072

namespace A124589

/-- `eq[A325142(n), A359300(n+2)]` -/
def P1391578069613812072.Spec : Prop :=
  ∀ n, (P1391578069613812072.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P11134335286809510885

`eq[A057064(n+1), A063932(n+2)]`
-/

namespace A124589.P11134335286809510885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124589.P11134335286809510885

namespace A124589

/-- `eq[A057064(n+1), A063932(n+2)]` -/
def P11134335286809510885.Spec : Prop :=
  ∀ n, (P11134335286809510885.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P10980107706987588171

`eq[A295335(n), A359300(n+2)]`
-/

namespace A124589.P10980107706987588171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359300 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124589.P10980107706987588171

namespace A124589

/-- `eq[A295335(n), A359300(n+2)]` -/
def P10980107706987588171.Spec : Prop :=
  ∀ n, (P10980107706987588171.a n : ℤ) = A124589 (n + 1)

end A124589

/-! ## A124589.P12348928320244657702

`lt[A013632(n+1), A105700(2*n)²]`
-/

namespace A124589.P12348928320244657702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124589.P12348928320244657702

namespace A124589

/-- `lt[A013632(n+1), A105700(2*n)²]` -/
def P12348928320244657702.Spec : Prop :=
  ∀ n, (P12348928320244657702.a n : ℤ) = A124589 (n + 1)

end A124589

/-!
# A124590: Primes p such that q-p <= 6, where q is the next prime after p.

The programs for A124590, the canonical program `A124590.P5839912544610622108` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124590 has offset 1).

The definition of A124590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4546 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124590.P5839912544610622108

`A000040(lt[A001223(n+1), 8]+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A124590

/-- `A000040(lt[A001223(n+1), 8]+1)` -/
def P5839912544610622108.Spec : Prop :=
  ∀ n, P5839912544610622108.a n = A124590 (n + 1)

theorem P5839912544610622108.correct : P5839912544610622108.Spec := by
  intro n
  simp only [A124590, Nat.add_sub_cancel]

end A124590

/-! ## A124590.P6418963652430890908

`A000040(lt[A167761(n+1), A011379(n)])`
-/

namespace A124590.P6418963652430890908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124590.P6418963652430890908

namespace A124590

/-- `A000040(lt[A167761(n+1), A011379(n)])` -/
def P6418963652430890908.Spec : Prop :=
  ∀ n, P6418963652430890908.a n = A124590 (n + 1)

end A124590

/-! ## A124590.P16678229360251766461

`record[A051697(n)%A002034(n+3)]`
-/

namespace A124590.P16678229360251766461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051697 n) (A002034 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124590.P16678229360251766461

namespace A124590

/-- `record[A051697(n)%A002034(n+3)]` -/
def P16678229360251766461.Spec : Prop :=
  ∀ n, P16678229360251766461.a n = A124590 (n + 1)

end A124590

/-! ## A124590.P9246072960998435742

`record[A007918(n)%A051697(n+4)]`
-/

namespace A124590.P9246072960998435742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 n) (A051697 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124590.P9246072960998435742

namespace A124590

/-- `record[A007918(n)%A051697(n+4)]` -/
def P9246072960998435742.Spec : Prop :=
  ∀ n, P9246072960998435742.a n = A124590 (n + 1)

end A124590

/-! ## A124590.P6747633749306685157

`record[A093074(n+1)%A093074(n+5)]`
-/

namespace A124590.P6747633749306685157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093074 (n + 1)) (A093074 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124590.P6747633749306685157

namespace A124590

/-- `record[A093074(n+1)%A093074(n+5)]` -/
def P6747633749306685157.Spec : Prop :=
  ∀ n, P6747633749306685157.a n = A124590 (n + 1)

end A124590

/-! ## A124590.P9567646287344734690

`eq[A007920(n), A308952(A013632(n))]`
-/

namespace A124590.P9567646287344734690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308952 (A013632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124590.P9567646287344734690

namespace A124590

/-- `eq[A007920(n), A308952(A013632(n))]` -/
def P9567646287344734690.Spec : Prop :=
  ∀ n, (P9567646287344734690.a n : ℤ) = A124590 (n + 1)

end A124590

/-!
# A124591: Primes p such that q-p <= 8, where q is the next prime after p.

The programs for A124591, the canonical program `A124591.P3235263655335918205` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124591 has offset 1).

The definition of A124591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124591.P3235263655335918205

`A000040(lt[A001223(n+1), 10]+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A124591

/-- `A000040(lt[A001223(n+1), 10]+1)` -/
def P3235263655335918205.Spec : Prop :=
  ∀ n, P3235263655335918205.a n = A124591 (n + 1)

theorem P3235263655335918205.correct : P3235263655335918205.Spec := by
  intro n
  simp only [A124591, Nat.add_sub_cancel]

end A124591

/-! ## A124591.P15393262289494178264

`∪[A023202(n+1), A124590(n+1)]`
-/

namespace A124591.P15393262289494178264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124591.P15393262289494178264

namespace A124591

/-- `∪[A023202(n+1), A124590(n+1)]` -/
def P15393262289494178264.Spec : Prop :=
  ∀ n, (P15393262289494178264.a n : ℤ) = A124591 (n + 1)

end A124591

/-! ## A124591.P15828641455604056038

`A134735(lt[A134735(n+1), A082209(3*n+1)])`
-/

namespace A124591.P15828641455604056038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082209 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124591.P15828641455604056038

namespace A124591

/-- `A134735(lt[A134735(n+1), A082209(3*n+1)])` -/
def P15828641455604056038.Spec : Prop :=
  ∀ n, P15828641455604056038.a n = A124591 (n + 1)

end A124591

/-! ## A124591.P13821772531498381928

`A000040(lt[A054541(n+1), A137580(2*n+3)])`
-/

namespace A124591.P13821772531498381928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137580 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124591.P13821772531498381928

namespace A124591

/-- `A000040(lt[A054541(n+1), A137580(2*n+3)])` -/
def P13821772531498381928.Spec : Prop :=
  ∀ n, P13821772531498381928.a n = A124591 (n + 1)

end A124591

/-! ## A124591.P892732767964170048

`A000040(lt[A278032(n+1), A372436(n+1)])`
-/

namespace A124591.P892732767964170048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124591.P892732767964170048

namespace A124591

/-- `A000040(lt[A278032(n+1), A372436(n+1)])` -/
def P892732767964170048.Spec : Prop :=
  ∀ n, P892732767964170048.a n = A124591 (n + 1)

end A124591

/-!
# A124592: Ends of the runs of numbers described in A072875.

The programs for A124592, there is no canonical definition to state claims against.
-/

/-! ## A124592.P9163193083878535081

`A072875(n+1)+n`
-/

namespace A124592.P9163193083878535081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072875 (n + 1) + (n : ℤ)

end

end A124592.P9163193083878535081

/-!
# A124594: Primes p such that q-p = 26, where q is the next prime after p.

The programs for A124594, there is no canonical definition to state claims against.
-/

/-! ## A124594.P10765199031015970330

`A055670(A320711(n+1))-1`
-/

namespace A124594.P10765199031015970330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320711 (n + 1)).toNat - 1

end

end A124594.P10765199031015970330

/-! ## A124594.P11708847858996975446

`A174350(eq[14, A131818(n+1)])`
-/

namespace A124594.P11708847858996975446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124594.P11708847858996975446

/-! ## A124594.P8583919789787224297

`A000040(A320711(n+1))`
-/

namespace A124594.P8583919789787224297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320711 (n + 1)).toNat

end

end A124594.P8583919789787224297

/-! ## A124594.P3417534187496285896

`A008578(A320711(n+1)+1)`
-/

namespace A124594.P3417534187496285896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320711 (n + 1) + 1).toNat

end

end A124594.P3417534187496285896

/-! ## A124594.P3423672998796877612

`A182986(A320711(n+1)+1)`
-/

namespace A124594.P3423672998796877612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A320711 (n + 1) + 1).toNat

end

end A124594.P3423672998796877612

/-! ## A124594.P16656901812405272830

`A051948(A320711(n+1)+3)`
-/

namespace A124594.P16656901812405272830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (A320711 (n + 1) + 3).toNat

end

end A124594.P16656901812405272830

/-! ## A124594.P3034628227583101656

`A231609(eq[12, A193592(n)])`
-/

namespace A124594.P3034628227583101656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124594.P3034628227583101656

/-! ## A124594.P11946263673336896501

`A231609(eq[15, A219347(n+1)]+1)`
-/

namespace A124594.P11946263673336896501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124594.P11946263673336896501

/-!
# A124595: Primes p such that q-p = 28, where q is the next prime after p.

The programs for A124595, there is no canonical definition to state claims against.
-/

/-! ## A124595.P18134095193548734561

`p?[A175080(n+1)-28]`
-/

namespace A124595.P18134095193548734561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175080 (n + 1) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124595.P18134095193548734561

/-! ## A124595.P272711831259168854

`A001748(A320712(n+1))/3`
-/

namespace A124595.P272711831259168854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A320712 (n + 1)).toNat : ℚ) / 3

end

end A124595.P272711831259168854

/-! ## A124595.P7890484743899215570

`A000040(A320712(n+1))`
-/

namespace A124595.P7890484743899215570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320712 (n + 1)).toNat

end

end A124595.P7890484743899215570

/-! ## A124595.P4407125512019632460

`A008578(A320712(n+1)+1)`
-/

namespace A124595.P4407125512019632460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320712 (n + 1) + 1).toNat

end

end A124595.P4407125512019632460

/-! ## A124595.P11772459975733059872

`A175787(A320712(n+1)+1)`
-/

namespace A124595.P11772459975733059872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A320712 (n + 1) + 1).toNat

end

end A124595.P11772459975733059872

/-! ## A124595.P6676789570553306761

`A045319(A320712(n+1)-1)`
-/

namespace A124595.P6676789570553306761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320712 (n + 1) - 1).toNat

end

end A124595.P6676789570553306761

/-! ## A124595.P1148777141972871338

`A065091(A320712(n+1)-1)`
-/

namespace A124595.P1148777141972871338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A320712 (n + 1) - 1).toNat

end

end A124595.P1148777141972871338

/-! ## A124595.P17014593678359473466

`A158611(A320712(n+1)+2)`
-/

namespace A124595.P17014593678359473466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A320712 (n + 1) + 2).toNat

end

end A124595.P17014593678359473466

/-! ## A124595.P3631884809479833101

`A004139(A320712(n+1)-2)`
-/

namespace A124595.P3631884809479833101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A320712 (n + 1) - 2).toNat

end

end A124595.P3631884809479833101

/-! ## A124595.P6374927656077459018

`A174350(A167614(n+12)+11)`
-/

namespace A124595.P6374927656077459018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A167614 (n + 12) + 11).toNat

end

end A124595.P6374927656077459018

/-! ## A124595.P14531762158843992293

`A174350(A000217(n+13)+14)`
-/

namespace A124595.P14531762158843992293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A000217 (n + 13) + 14).toNat

end

end A124595.P14531762158843992293

/-! ## A124595.P252416844632154742

`∑{d}[A320712(n+1), A007444(#)]`
-/

namespace A124595.P252416844632154742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A124595.P252416844632154742

/-!
# A124596: Primes p such that q-p = 30, where q is the next prime after p.

The programs for A124596, there is no canonical definition to state claims against.
-/

/-! ## A124596.P3579487726938060280

`A055670(A320713(n+1))-1`
-/

namespace A124596.P3579487726938060280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320713 (n + 1)).toNat - 1

end

end A124596.P3579487726938060280

/-! ## A124596.P14050102832665643253

`A000040(A320713(n+1))`
-/

namespace A124596.P14050102832665643253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320713 (n + 1)).toNat

end

end A124596.P14050102832665643253

/-! ## A124596.P9264274130357998252

`A008578(A320713(n+1)+1)`
-/

namespace A124596.P9264274130357998252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320713 (n + 1) + 1).toNat

end

end A124596.P9264274130357998252

/-! ## A124596.P10205155824005937467

`A175787(A320713(n+1)+1)`
-/

namespace A124596.P10205155824005937467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A320713 (n + 1) + 1).toNat

end

end A124596.P10205155824005937467

/-! ## A124596.P761270725453791487

`A182986(A320713(n+1)+1)`
-/

namespace A124596.P761270725453791487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A320713 (n + 1) + 1).toNat

end

end A124596.P761270725453791487

/-! ## A124596.P15620525560989558558

`A045319(A320713(n+1)-1)`
-/

namespace A124596.P15620525560989558558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320713 (n + 1) - 1).toNat

end

end A124596.P15620525560989558558

/-! ## A124596.P3156045419954285963

`A045344(A320713(n+1)-1)`
-/

namespace A124596.P3156045419954285963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A320713 (n + 1) - 1).toNat

end

end A124596.P3156045419954285963

/-! ## A124596.P11866802997915189610

`A046022(A320713(n+1)+2)`
-/

namespace A124596.P11866802997915189610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A320713 (n + 1) + 2).toNat

end

end A124596.P11866802997915189610

/-! ## A124596.P15178607185106234808

`A065091(A320713(n+1)-1)`
-/

namespace A124596.P15178607185106234808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A320713 (n + 1) - 1).toNat

end

end A124596.P15178607185106234808

/-! ## A124596.P15376924261767817252

`A004139(A320713(n+1)-2)`
-/

namespace A124596.P15376924261767817252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A320713 (n + 1) - 2).toNat

end

end A124596.P15376924261767817252

/-! ## A124596.P920411430669265376

`A174350(A000217(n+15)-n)`
-/

namespace A124596.P920411430669265376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A000217 (n + 15) - (n : ℤ)).toNat

end

end A124596.P920411430669265376

/-! ## A124596.P7157114485463919360

`A174350(A133263(n+15)-(n+2))`
-/

namespace A124596.P7157114485463919360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A133263 (n + 15) - (n + 2 : ℤ)).toNat

end

end A124596.P7157114485463919360

/-! ## A124596.P15699565787082672406

`A174350(A167614(n+3)+A017353(n+10))`
-/

namespace A124596.P15699565787082672406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A167614 (n + 3) + A017353 (n + 10)).toNat

end

end A124596.P15699565787082672406

/-! ## A124596.P6962623254560038202

`A174350(A155212(n+12)-A005843(n+4))`
-/

namespace A124596.P6962623254560038202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A155212 (n + 12) - A005843 (n + 4)).toNat

end

end A124596.P6962623254560038202

/-!
# A124598: Primes p of the form k^2+s where k > 1 and 1 <= s < (k+1)^2, such that q = k^4+s is prime and larger than p.

The programs for A124598, there is no canonical definition to state claims against.
-/

/-! ## A124598.P10915616798261433848

`p?[A317710(n+1)+A003016(n)]`
-/

namespace A124598.P10915616798261433848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1) + A003016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124598.P10915616798261433848

/-! ## A124598.P6717068862050826082

`record[A151800(A094598(A062050(n+1)))]`
-/

namespace A124598.P6717068862050826082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A094598 (A062050 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124598.P6717068862050826082

/-! ## A124598.P6113209892599406577

`record[A151800(A167384(A007947(n+1)))]`
-/

namespace A124598.P6113209892599406577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A167384 (A007947 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124598.P6113209892599406577

/-! ## A124598.P1156664577799770802

`p?[A092451(n)-A014963(A179282(n+3))]`
-/

namespace A124598.P1156664577799770802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 n - A014963 (A179282 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124598.P1156664577799770802

/-! ## A124598.P13270455251533008267

`A000040(lt[A359893(n+4), A141020(3*(n+1))])`
-/

namespace A124598.P13270455251533008267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124598.P13270455251533008267

