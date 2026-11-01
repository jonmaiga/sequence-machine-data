import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
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
# A394800: a(0) = a(1) = a(2) = a(3) = 1; a(n) = a(n-1) + (n-3)*a(n-4).

The programs for A394800, the canonical program `A394800.P14186958594767963629` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394800 has offset 0).

The definition of A394800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-3)*a(n-4)` (program `A394800.P14186958594767963629`, by `A394800.P14186958594767963629.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394800.P14186958594767963629

`a(n-1)+(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394800

/-- `a(n-1)+(n-3)*a(n-4)` -/
def P14186958594767963629.Spec : Prop :=
  ∀ n, P14186958594767963629.a n = A394800 n

theorem P14186958594767963629.correct : P14186958594767963629.Spec := by
  intro n
  simp only [A394800]

end A394800

/-! ## A394800.P5469987704770008290

`A114886(A369581(n))`
-/

namespace A394800.P5469987704770008290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A369581 n).toNat

end

end A394800.P5469987704770008290

namespace A394800

/-- `A114886(A369581(n))` -/
def P5469987704770008290.Spec : Prop :=
  ∀ n, P5469987704770008290.a n = A394800 n

end A394800

/-! ## A394800.P11690742384533784296

`A392463(A175772(2*n+1))+A175772(n)`
-/

namespace A394800.P11690742384533784296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392463 (A175772 (2 * n + 1)).toNat + A175772 n

end

end A394800.P11690742384533784296

namespace A394800

/-- `A392463(A175772(2*n+1))+A175772(n)` -/
def P11690742384533784296.Spec : Prop :=
  ∀ n, P11690742384533784296.a n = A394800 n

end A394800

/-! ## A394800.P13677119666703622500

`A057889(xor(A036040(n+1), A293607(n))+1)`
-/

namespace A394800.P13677119666703622500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.xor (A036040 (n + 1)) (A293607 n) + 1).toNat

end

end A394800.P13677119666703622500

namespace A394800

/-- `A057889(xor(A036040(n+1), A293607(n))+1)` -/
def P13677119666703622500.Spec : Prop :=
  ∀ n, P13677119666703622500.a n = A394800 n

end A394800

/-!
# A394801: G.f. A(x) satisfies A(x) = 1 - x^3 * d/dx log(1 - x*A(x)).

The programs for A394801, there is no canonical definition to state claims against.
-/

/-! ## A394801.P4602690804465227163

`A006046(A346503(n))%A003433(2*n+3)`
-/

namespace A394801.P4602690804465227163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006046 (A346503 n).toNat) (A003433 (2 * n + 3))

end

end A394801.P4602690804465227163

/-!
# A394802: G.f. A(x) satisfies A(x) = 1 - x^4 * d/dx log(1 - x*A(x)).

The programs for A394802, there is no canonical definition to state claims against.
-/

/-! ## A394802.P10699328494516668882

`A102705(A376491(n))`
-/

namespace A394802.P10699328494516668882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A376491 n).toNat

end

end A394802.P10699328494516668882

/-!
# A394805: Decimal expansion of 6 * arcsin(1/3) / Pi.

The programs for A394805, there is no canonical definition to state claims against.
-/

/-! ## A394805.P5256188807392634362

`9-A349605(n)`
-/

namespace A394805.P5256188807392634362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A349605 n

end

end A394805.P5256188807392634362

/-!
# A394813: Triangle read by rows: T(n, k) is the k-th even-indexed column of the array A394582.

The programs for A394813, the canonical program `A394813.P10098922325850534208` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394813 has offset 1).

The definition of A394813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394813.P6355380583463717670

`A395021(C(2*(row(n)+1), 2)+2*(row(n)+1)-2*(col(n)+1)+1)`
-/

namespace A394813.P6355380583463717670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395021 ((Nat.choose (2 * (SequenceMachineLib.triRow n + 1)) 2 : ℤ) + ((2 * (SequenceMachineLib.triRow n + 1) : ℤ) - (2 * (SequenceMachineLib.triCol n + 1) : ℤ) + 1)).toNat

end

end A394813.P6355380583463717670

namespace A394813

/-- `A395021(C(2*(row(n)+1), 2)+2*(row(n)+1)-2*(col(n)+1)+1)` -/
def P6355380583463717670.Spec : Prop :=
  ∀ n, P6355380583463717670.a n = A394813 (n + 1)

end A394813

/-! ## A394813.P10098922325850534208

`(row(n)+1-col(n))*A008957(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394813

/-- `(row(n)+1-col(n))*A008957(n+1)` -/
def P10098922325850534208.Spec : Prop :=
  ∀ n, P10098922325850534208.a n = A394813 (n + 1)

theorem P10098922325850534208.correct : P10098922325850534208.Spec := by
  intro n
  simp only [A394813, Nat.add_sub_cancel]

end A394813

/-! ## A394813.P16026401760334719637

`A004736(1+n)*A008957(n+1)`
-/

namespace A394813.P16026401760334719637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (1 + n) * A008957 (n + 1)

end

end A394813.P16026401760334719637

namespace A394813

/-- `A004736(1+n)*A008957(n+1)` -/
def P16026401760334719637.Spec : Prop :=
  ∀ n, P16026401760334719637.a n = A394813 (n + 1)

end A394813

/-! ## A394813.P180707824159842536

`(A025581(n)+1)*A008957(n+1)`
-/

namespace A394813.P180707824159842536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A008957 (n + 1)

end

end A394813.P180707824159842536

namespace A394813

/-- `(A025581(n)+1)*A008957(n+1)` -/
def P180707824159842536.Spec : Prop :=
  ∀ n, P180707824159842536.a n = A394813 (n + 1)

theorem P180707824159842536.correct : P180707824159842536.Spec := by
  intro n
  simp only [A394813, Nat.add_sub_cancel, A394813.P180707824159842536.a, A394813.P10098922325850534208.a, A008957, A008957.P15047803829173778139.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A394813

/-! ## A394813.P10510912777026056037

`ceil(A099375(n)/2)*A008957(n+1)`
-/

namespace A394813.P10510912777026056037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 2⌉ * A008957 (n + 1)

end

end A394813.P10510912777026056037

namespace A394813

/-- `ceil(A099375(n)/2)*A008957(n+1)` -/
def P10510912777026056037.Spec : Prop :=
  ∀ n, P10510912777026056037.a n = A394813 (n + 1)

end A394813

/-! ## A394813.P3221470979430055978

`(val(A036561(n), 2)+1)*A008957(n+1)`
-/

namespace A394813.P3221470979430055978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A036561 n).toNat 2 + 1 : ℤ) * A008957 (n + 1)

end

end A394813.P3221470979430055978

namespace A394813

/-- `(val(A036561(n), 2)+1)*A008957(n+1)` -/
def P3221470979430055978.Spec : Prop :=
  ∀ n, P3221470979430055978.a n = A394813 (n + 1)

end A394813

/-! ## A394813.P17548376137031923229

`val(A081954(n+1), 2)*A008957(n+1)`
-/

namespace A394813.P17548376137031923229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A081954 (n + 1)).toNat 2 : ℤ) * A008957 (n + 1)

end

end A394813.P17548376137031923229

namespace A394813

/-- `val(A081954(n+1), 2)*A008957(n+1)` -/
def P17548376137031923229.Spec : Prop :=
  ∀ n, P17548376137031923229.a n = A394813 (n + 1)

end A394813

/-! ## A394813.P1123364012087183823

`A008957(n+1)*A048794(A130321(n))`
-/

namespace A394813.P1123364012087183823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (n + 1) * A048794 (A130321 n).toNat

end

end A394813.P1123364012087183823

namespace A394813

/-- `A008957(n+1)*A048794(A130321(n))` -/
def P1123364012087183823.Spec : Prop :=
  ∀ n, P1123364012087183823.a n = A394813 (n + 1)

end A394813

/-!
# A394814: Number of directed self-avoiding cycles of length 2*n in a cubic lattice, reduced for symmetry (with rotations and reflections not counted as distinct).

The programs for A394814, there is no canonical definition to state claims against.
-/

/-! ## A394814.P3250901982776360938

`A164585(A057711(n))`
-/

namespace A394814.P3250901982776360938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164585 (A057711 n).toNat

end

end A394814.P3250901982776360938

/-! ## A394814.P12170381872644632904

`A164585(n*A344490(n))`
-/

namespace A394814.P12170381872644632904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164585 ((n : ℤ) * A344490 n).toNat

end

end A394814.P12170381872644632904

/-!
# A394815: Numbers k in A014574 (averages of twin prime pairs) such that gcd(k, sigma(k)) = 2.

The programs for A394815, there is no canonical definition to state claims against.
-/

/-! ## A394815.P12677572906064632596

`filter[A394757(n+1), A353812(#)]`
-/

namespace A394815.P12677572906064632596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A394815.P12677572906064632596

/-! ## A394815.P2626269387095778985

`filter[A394757(n+1), A353815(#)]`
-/

namespace A394815.P2626269387095778985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A394815.P2626269387095778985

/-! ## A394815.P10268986728644865600

`filter[A394757(n+1), A353816(#)]`
-/

namespace A394815.P10268986728644865600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A394815.P10268986728644865600

/-! ## A394815.P3240489742968250950

`filter[A394757(n+1), A358770(#)]`
-/

namespace A394815.P3240489742968250950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A394815.P3240489742968250950

/-!
# A394819: Number of distinct permutations generated by Faro and concatenation operations on n equal blocks (saturated case).

The programs for A394819, there is no canonical definition to state claims against.
-/

/-! ## A394819.P11539738035458658918

`A172471(A380212(n))*A319206(n+1)`
-/

namespace A394819.P11539738035458658918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A380212 n).toNat * A319206 (n + 1)

end

end A394819.P11539738035458658918

/-!
# A394820: Number of unlabeled minimally 4-rigid graphs on n vertices.

The programs for A394820, there is no canonical definition to state claims against.
-/

/-! ## A394820.P4788526047947407228

`floor(A113315(A001246(n)+1)/(n+1))*n+1`
-/

namespace A394820.P4788526047947407228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113315 (A001246 n + 1).toNat : ℚ) / (n + 1 : ℚ)⌋ * (n : ℤ) + 1

end

end A394820.P4788526047947407228

/-! ## A394820.P17202129716749537812

`A340632(A288568(n))+A011886(n)`
-/

namespace A394820.P17202129716749537812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340632 (A288568 n).toNat + A011886 n

end

end A394820.P17202129716749537812

/-!
# A394822: Expansion of o.g.f. 1 + Sum_{n>=1} (n * x^n / Product_{k=1..n} (1 - k^2*x)). Row sums of A394823.

The programs for A394822, there is no canonical definition to state claims against.
-/

/-! ## A394822.P9334274441766295115

`A369595(∑[comp[A152449(3*n+2)-1]])`
-/

namespace A394822.P9334274441766295115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (3 * n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394822.P9334274441766295115

/-! ## A394822.P5963894030109733025

`A369595(∪[A230952(3*n+2), A034856(n+1)])`
-/

namespace A394822.P5963894030109733025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230952 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369595 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A394822.P5963894030109733025

/-! ## A394822.P10975017467104875473

`A369595(∪[A352864(2*n+3), A034856(n+1)])`
-/

namespace A394822.P10975017467104875473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352864 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369595 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A394822.P10975017467104875473

/-!
# A394823: Triangle read by rows: T(n, k) = (2*n)! * [x^k] [y^n] (1 + u*sinh(u)/2) where u = sqrt(2*x*(cosh(y^(1/2)) - 1)).

The programs for A394823, there is no canonical definition to state claims against.
-/

/-! ## A394823.P3406050725203692600

`gcd(col(n), T(n-1,k))*A269945(n)` with `a(0)=1`
-/

namespace A394823.P3406050725203692600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.gcd (SequenceMachineLib.triCol n : ℤ) (SequenceMachineLib.triUp a n) : ℤ) * A269945 n

end

end A394823.P3406050725203692600

/-! ## A394823.P17729217895611724850

`A130270(1+n)*A269945(n)`
-/

namespace A394823.P17729217895611724850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (1 + n) * A269945 n

end

end A394823.P17729217895611724850

/-! ## A394823.P8738909673463525407

`A144328(1+n)*A269945(n)`
-/

namespace A394823.P8738909673463525407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (1 + n) * A269945 n

end

end A394823.P8738909673463525407

/-! ## A394823.P1758613632808943249

`A028310(A002262(n))*A269945(n)`
-/

namespace A394823.P1758613632808943249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002262 n).toNat * A269945 n

end

end A394823.P1758613632808943249

/-! ## A394823.P3251573067859300752

`A304336(n)/A088218(A002262(n))*A130270(n+1)`
-/

namespace A394823.P3251573067859300752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304336 n : ℚ) / (A088218 (A002262 n).toNat : ℚ) * (A130270 (n + 1) : ℚ)

end

end A394823.P3251573067859300752

/-! ## A394823.P968992492373860310

`A304336(n)/A088218(A002262(n))*A144328(n+1)`
-/

namespace A394823.P968992492373860310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304336 n : ℚ) / (A088218 (A002262 n).toNat : ℚ) * (A144328 (n + 1) : ℚ)

end

end A394823.P968992492373860310

/-! ## A394823.P2869480298102797862

`A304336(n)/A088218(A144328(n+1))*A130270(n+1)`
-/

namespace A394823.P2869480298102797862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304336 n : ℚ) / (A088218 (A144328 (n + 1)).toNat : ℚ) * (A130270 (n + 1) : ℚ)

end

end A394823.P2869480298102797862

/-! ## A394823.P7489568863264081565

`A387597(n)/A392337(n)*A394692(n)*A130270(n+1)`
-/

namespace A394823.P7489568863264081565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387597 n : ℚ) / (A392337 n : ℚ) * (A394692 n : ℚ) * (A130270 (n + 1) : ℚ)

end

end A394823.P7489568863264081565

/-! ## A394823.P11451137363102004910

`A387597(n)/A392337(n)*A394692(n)*A144328(n+1)`
-/

namespace A394823.P11451137363102004910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387597 n : ℚ) / (A392337 n : ℚ) * (A394692 n : ℚ) * (A144328 (n + 1) : ℚ)

end

end A394823.P11451137363102004910

/-!
# A394824: Triangle read by rows: T(n, k) = n^(n - k) * hypergeom([k, k-n], [], -1/n) for n > 0, T(0, 0) = 1.

The programs for A394824, there is no canonical definition to state claims against.
-/

/-! ## A394824.P11952469297880511498

`A394852(n)/A008279(n)`
-/

namespace A394824.P11952469297880511498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394852 n : ℚ) / (A008279 n : ℚ)

end

end A394824.P11952469297880511498

/-!
# A394825: Array read by ascending antidiagonals: A(n, k) = Sum_{j=0..k} binomial(k, j) * j^(n + j) * (1 - j)^(k - j).

The programs for A394825, there is no canonical definition to state claims against.
-/

/-! ## A394825.P7369005294397466561

`and(A394954(A267597(n)), A394975(n))`
-/

namespace A394825.P7369005294397466561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A394954 (A267597 n).toNat) (A394975 n)

end

end A394825.P7369005294397466561

/-! ## A394825.P7266469809360752218

`A000688(A321472(3*(n+1)))*A337085(n)`
-/

namespace A394825.P7266469809360752218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A321472 (3 * (n + 1))).toNat * A337085 n

end

end A394825.P7266469809360752218

/-! ## A394825.P5364687849608588700

`and(A002260(A098361(3*n)), A325325(n+1))`
-/

namespace A394825.P5364687849608588700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (A098361 (3 * n)).toNat) (A325325 (n + 1))

end

end A394825.P5364687849608588700

/-!
# A394826: The tetrahemihexahedral numbers.

The programs for A394826, the canonical program `A394826.P10046672064844749092` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394826 has offset 1).

The definition of A394826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394826.P7131145599016417989

`ogf((1+2x+2x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A394826.P7131145599016417989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, -1] [1, -4, 6, -4, 1] n

end

end A394826.P7131145599016417989

namespace A394826

/-- `ogf((1+2x+2x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P7131145599016417989.Spec : Prop :=
  ∀ n, P7131145599016417989.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P10046672064844749092

`(n+3)*(4*(n+1)²-5*(n+1)+3)/6`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394826

/-- `(n+3)*(4*(n+1)²-5*(n+1)+3)/6` -/
def P10046672064844749092.Spec : Prop :=
  ∀ n, P10046672064844749092.a n = (A394826 (n + 1) : ℚ)

end A394826

/-! ## A394826.P2244894900011730079

`∑[∑[xor(1, 4*n)]]-n`
-/

namespace A394826.P2244894900011730079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A394826.P2244894900011730079

namespace A394826

/-- `∑[∑[xor(1, 4*n)]]-n` -/
def P2244894900011730079.Spec : Prop :=
  ∀ n, P2244894900011730079.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P7965172328933579707

`∑[C(2*(n+1), 2)]-n`
-/

namespace A394826.P7965172328933579707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A394826.P7965172328933579707

namespace A394826

/-- `∑[C(2*(n+1), 2)]-n` -/
def P7965172328933579707.Spec : Prop :=
  ∀ n, P7965172328933579707.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P6369631031587639033

`∑[∑[or(4*n, 1-char[1])]]`
-/

namespace A394826.P6369631031587639033
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * n : ℤ) (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394826.P6369631031587639033

namespace A394826

/-- `∑[∑[or(4*n, 1-char[1])]]` -/
def P6369631031587639033.Spec : Prop :=
  ∀ n, P6369631031587639033.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P15047617789651694709

`Δ[C(n+2, 3)*n]-n`
-/

namespace A394826.P15047617789651694709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)

end

end A394826.P15047617789651694709

namespace A394826

/-- `Δ[C(n+2, 3)*n]-n` -/
def P15047617789651694709.Spec : Prop :=
  ∀ n, P15047617789651694709.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P4662498126595864228

`∑[lcm(1+n, Δ[n²])]-n`
-/

namespace A394826.P4662498126595864228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 + n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A394826.P4662498126595864228

namespace A394826

/-- `∑[lcm(1+n, Δ[n²])]-n` -/
def P4662498126595864228.Spec : Prop :=
  ∀ n, P4662498126595864228.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P4044911710079169781

`∑[∑[a(n-1)+4]]` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A394826.P4044911710079169781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394826.P4044911710079169781

namespace A394826

/-- `∑[∑[a(n-1)+4]]` -/
def P4044911710079169781.Spec : Prop :=
  ∀ n, (P4044911710079169781.a n : ℤ) = A394826 (n + 1)

end A394826

/-! ## A394826.P12309005635228868111

`1+∑[n*record[xor(1, n+3)]]`
-/

namespace A394826.P12309005635228868111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394826.P12309005635228868111

namespace A394826

/-- `1+∑[n*record[xor(1, n+3)]]` -/
def P12309005635228868111.Spec : Prop :=
  ∀ n, (P12309005635228868111.a n : ℤ) = A394826 (n + 1)

end A394826

/-! ## A394826.P10109186469058635287

`∑[record[abs(1+n-2*n²)]]`
-/

namespace A394826.P10109186469058635287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 + n : ℤ) - (2 * n ^ 2 : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394826.P10109186469058635287

namespace A394826

/-- `∑[record[abs(1+n-2*n²)]]` -/
def P10109186469058635287.Spec : Prop :=
  ∀ n, P10109186469058635287.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P13874568895619867183

`Δ[(C(n+1, 3)+1)*(n+3)]`
-/

namespace A394826.P13874568895619867183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 + 1) * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A394826.P13874568895619867183

namespace A394826

/-- `Δ[(C(n+1, 3)+1)*(n+3)]` -/
def P13874568895619867183.Spec : Prop :=
  ∀ n, P13874568895619867183.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P6680802351756666968

`a(n-1)+(2*n+3)*n` with `a(0)=1`
-/

namespace A394826.P6680802351756666968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 3) * n

end

end A394826.P6680802351756666968

namespace A394826

/-- `a(n-1)+(2*n+3)*n` -/
def P6680802351756666968.Spec : Prop :=
  ∀ n, (P6680802351756666968.a n : ℤ) = A394826 (n + 1)

end A394826

/-! ## A394826.P12870531775906721153

`∑[A014106(n)]+1`
-/

namespace A394826.P12870531775906721153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A394826.P12870531775906721153

namespace A394826

/-- `∑[A014106(n)]+1` -/
def P12870531775906721153.Spec : Prop :=
  ∀ n, P12870531775906721153.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P855260871737374309

`A002412(n+1)-n`
-/

namespace A394826.P855260871737374309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 1) - (n : ℤ)

end

end A394826.P855260871737374309

namespace A394826

/-- `A002412(n+1)-n` -/
def P855260871737374309.Spec : Prop :=
  ∀ n, P855260871737374309.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P13268019597319793339

`∑[A084849(n)]+n²`
-/

namespace A394826.P13268019597319793339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A394826.P13268019597319793339

namespace A394826

/-- `∑[A084849(n)]+n²` -/
def P13268019597319793339.Spec : Prop :=
  ∀ n, P13268019597319793339.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P5042109348285708419

`A174723(n+1)+n²`
-/

namespace A394826.P5042109348285708419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174723 (n + 1) + (n ^ 2 : ℤ)

end

end A394826.P5042109348285708419

namespace A394826

/-- `A174723(n+1)+n²` -/
def P5042109348285708419.Spec : Prop :=
  ∀ n, P5042109348285708419.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P6079038817390183559

`∑[A132209(n)+n+1]`
-/

namespace A394826.P6079038817390183559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394826.P6079038817390183559

namespace A394826

/-- `∑[A132209(n)+n+1]` -/
def P6079038817390183559.Spec : Prop :=
  ∀ n, P6079038817390183559.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P16799547531930489434

`∑[A000384(n+1)]-n`
-/

namespace A394826.P16799547531930489434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A394826.P16799547531930489434

namespace A394826

/-- `∑[A000384(n+1)]-n` -/
def P16799547531930489434.Spec : Prop :=
  ∀ n, P16799547531930489434.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P15967705033143419282

`A005894(n)+A000326(n)`
-/

namespace A394826.P15967705033143419282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n + A000326 n

end

end A394826.P15967705033143419282

namespace A394826

/-- `A005894(n)+A000326(n)` -/
def P15967705033143419282.Spec : Prop :=
  ∀ n, P15967705033143419282.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P219307009886858650

`A027378(n)+A006002(n)`
-/

namespace A394826.P219307009886858650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027378 n + A006002 n

end

end A394826.P219307009886858650

namespace A394826

/-- `A027378(n)+A006002(n)` -/
def P219307009886858650.Spec : Prop :=
  ∀ n, P219307009886858650.a n = A394826 (n + 1)

end A394826

/-!
# A394828: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) is the number of 1's in the partitions of n into exactly k parts.

The programs for A394828, there is no canonical definition to state claims against.
-/

/-! ## A394828.P1320772257709928281

`A072233(n)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A394828.P1320772257709928281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072233 n + SequenceMachineLib.triUpLeft a n

end

end A394828.P1320772257709928281

/-! ## A394828.P12023090350276821748

`T(n-1,k-1)+2*A370207(n)-A370005(n)` with `a(0)=1`
-/

namespace A394828.P12023090350276821748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (2 * A370207 n - A370005 n)

end

end A394828.P12023090350276821748

/-! ## A394828.P8750578747274006010

`T(n-1,k-1)+A327549(n)/A011782(A004736(n+1))` with `a(0)=1`
-/

namespace A394828.P8750578747274006010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (A327549 n : ℚ) / (A011782 (A004736 (n + 1)).toNat : ℚ)

end

end A394828.P8750578747274006010

/-! ## A394828.P12460455425486874641

`T(n-1,k-1)+A386584(n)+A386583(n)` with `a(0)=1`
-/

namespace A394828.P12460455425486874641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (A386584 n + A386583 n)

end

end A394828.P12460455425486874641

/-! ## A394828.P1409277005611699051

`T(n-1,k-1)+A386586(n)+A386585(n)` with `a(0)=1`
-/

namespace A394828.P1409277005611699051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (A386586 n + A386585 n)

end

end A394828.P1409277005611699051

/-!
# A394829: Numbers of the form h*(9*h+1), where h = 0, -1, 1, -2, 2, -3, 3, ...

The programs for A394829, the canonical program `A394829.P332927322309657524` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394829 has offset 0).

The definition of A394829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394829.P11026715478194024039

`ogf((8x+2x^2+8x^3)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A394829.P11026715478194024039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 2, 8] [1, -1, -2, 2, 1, -1] n

end

end A394829.P11026715478194024039

namespace A394829

/-- `ogf((8x+2x^2+8x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P11026715478194024039.Spec : Prop :=
  ∀ n, P11026715478194024039.a n = A394829 n

end A394829

/-! ## A394829.P332927322309657524

`n*(n+1)/2+7*floor((n+1)/2)²`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394829

/-- `n*(n+1)/2+7*floor((n+1)/2)²` -/
def P332927322309657524.Spec : Prop :=
  ∀ n, P332927322309657524.a n = (A394829 n : ℚ)

end A394829

/-! ## A394829.P6529163203955564419

`A219395(n+1)/2`
-/

namespace A394829.P6529163203955564419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219395 (n + 1) : ℚ) / 2

end

end A394829.P6529163203955564419

namespace A394829

/-- `A219395(n+1)/2` -/
def P6529163203955564419.Spec : Prop :=
  ∀ n, P6529163203955564419.a n = (A394829 n : ℚ)

end A394829

/-! ## A394829.P16683958146147017392

`∑[8^(n%2)*n]`
-/

namespace A394829.P16683958146147017392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (n % 2) * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P16683958146147017392

namespace A394829

/-- `∑[8^(n%2)*n]` -/
def P16683958146147017392.Spec : Prop :=
  ∀ n, (P16683958146147017392.a n : ℤ) = A394829 n

end A394829

/-! ## A394829.P11609751438168227676

`∑[n*8^and(1, n)]`
-/

namespace A394829.P11609751438168227676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 8 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P11609751438168227676

namespace A394829

/-- `∑[n*8^and(1, n)]` -/
def P11609751438168227676.Spec : Prop :=
  ∀ n, (P11609751438168227676.a n : ℤ) = A394829 n

end A394829

/-! ## A394829.P7926779918650950943

`∑[gcd(8, n²-1)*n]`
-/

namespace A394829.P7926779918650950943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 ((n ^ 2 : ℤ) - 1) * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P7926779918650950943

namespace A394829

/-- `∑[gcd(8, n²-1)*n]` -/
def P7926779918650950943.Spec : Prop :=
  ∀ n, (P7926779918650950943.a n : ℤ) = A394829 n

end A394829

/-! ## A394829.P18259413918599877399

`∑[n*dr(xor(1, 27*n))]`
-/

namespace A394829.P18259413918599877399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (Nat.xor 1 (27 * n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P18259413918599877399

namespace A394829

/-- `∑[n*dr(xor(1, 27*n))]` -/
def P18259413918599877399.Spec : Prop :=
  ∀ n, (P18259413918599877399.a n : ℤ) = A394829 n

end A394829

/-! ## A394829.P7872907755915425886

`∑[n*gcd(2, n+1)^3]`
-/

namespace A394829.P7872907755915425886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P7872907755915425886

namespace A394829

/-- `∑[n*gcd(2, n+1)^3]` -/
def P7872907755915425886.Spec : Prop :=
  ∀ n, (P7872907755915425886.a n : ℤ) = A394829 n

end A394829

/-! ## A394829.P16242999794481704395

`∑[n*A010689(n)]`
-/

namespace A394829.P16242999794481704395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P16242999794481704395

namespace A394829

/-- `∑[n*A010689(n)]` -/
def P16242999794481704395.Spec : Prop :=
  ∀ n, P16242999794481704395.a n = A394829 n

end A394829

/-! ## A394829.P13379189463242759730

`∑[n*A040019(n+1)]`
-/

namespace A394829.P13379189463242759730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P13379189463242759730

namespace A394829

/-- `∑[n*A040019(n+1)]` -/
def P13379189463242759730.Spec : Prop :=
  ∀ n, P13379189463242759730.a n = A394829 n

end A394829

/-! ## A394829.P5307785155631349442

`A056020(n+1)*A110654(n)`
-/

namespace A394829.P5307785155631349442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1) * A110654 n

end

end A394829.P5307785155631349442

namespace A394829

/-- `A056020(n+1)*A110654(n)` -/
def P5307785155631349442.Spec : Prop :=
  ∀ n, P5307785155631349442.a n = A394829 n

end A394829

/-! ## A394829.P15435533058725205391

`lcm(A001057(n), A056020(n+1))`
-/

namespace A394829.P15435533058725205391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001057 n) (A056020 (n + 1))

end

end A394829.P15435533058725205391

namespace A394829

/-- `lcm(A001057(n), A056020(n+1))` -/
def P15435533058725205391.Spec : Prop :=
  ∀ n, (P15435533058725205391.a n : ℤ) = A394829 n

end A394829

/-! ## A394829.P3843949889740320757

`(A007310(n+1)-A047209(n+1))*A056020(n+1)`
-/

namespace A394829.P3843949889740320757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007310 (n + 1) - A047209 (n + 1)) * A056020 (n + 1)

end

end A394829.P3843949889740320757

namespace A394829

/-- `(A007310(n+1)-A047209(n+1))*A056020(n+1)` -/
def P3843949889740320757.Spec : Prop :=
  ∀ n, P3843949889740320757.a n = A394829 n

end A394829

/-! ## A394829.P5816659710787907264

`(A047336(n+1)-A007310(n+1))*A056020(n+1)`
-/

namespace A394829.P5816659710787907264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047336 (n + 1) - A007310 (n + 1)) * A056020 (n + 1)

end

end A394829.P5816659710787907264

namespace A394829

/-- `(A047336(n+1)-A007310(n+1))*A056020(n+1)` -/
def P5816659710787907264.Spec : Prop :=
  ∀ n, P5816659710787907264.a n = A394829 n

end A394829

/-! ## A394829.P7671881298467330572

`(A047522(n+1)-A047336(n+1))*A056020(n+1)`
-/

namespace A394829.P7671881298467330572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047522 (n + 1) - A047336 (n + 1)) * A056020 (n + 1)

end

end A394829.P7671881298467330572

namespace A394829

/-- `(A047522(n+1)-A047336(n+1))*A056020(n+1)` -/
def P7671881298467330572.Spec : Prop :=
  ∀ n, P7671881298467330572.a n = A394829 n

end A394829

/-! ## A394829.P13184539534163865036

`(A090771(n+1)-A056020(n+1))*A056020(n+1)`
-/

namespace A394829.P13184539534163865036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090771 (n + 1) - A056020 (n + 1)) * A056020 (n + 1)

end

end A394829.P13184539534163865036

namespace A394829

/-- `(A090771(n+1)-A056020(n+1))*A056020(n+1)` -/
def P13184539534163865036.Spec : Prop :=
  ∀ n, P13184539534163865036.a n = A394829 n

end A394829

/-! ## A394829.P4566789238059239113

`(A091998(n+1)-A175885(n+1))*A056020(n+1)`
-/

namespace A394829.P4566789238059239113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091998 (n + 1) - A175885 (n + 1)) * A056020 (n + 1)

end

end A394829.P4566789238059239113

namespace A394829

/-- `(A091998(n+1)-A175885(n+1))*A056020(n+1)` -/
def P4566789238059239113.Spec : Prop :=
  ∀ n, P4566789238059239113.a n = A394829 n

end A394829

/-! ## A394829.P7609964157525449296

`A011862(A090570(n+2))`
-/

namespace A394829.P7609964157525449296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 (A090570 (n + 2)).toNat

end

end A394829.P7609964157525449296

namespace A394829

/-- `A011862(A090570(n+2))` -/
def P7609964157525449296.Spec : Prop :=
  ∀ n, P7609964157525449296.a n = A394829 n

end A394829

/-! ## A394829.P12874490405888843780

`A014682(A219395(n+1))`
-/

namespace A394829.P12874490405888843780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A219395 (n + 1)).toNat

end

end A394829.P12874490405888843780

namespace A394829

/-- `A014682(A219395(n+1))` -/
def P12874490405888843780.Spec : Prop :=
  ∀ n, P12874490405888843780.a n = A394829 n

end A394829

/-! ## A394829.P17422099037644236742

`∑[n*A010127((n+1)²)]`
-/

namespace A394829.P17422099037644236742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010127 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P17422099037644236742

namespace A394829

/-- `∑[n*A010127((n+1)²)]` -/
def P17422099037644236742.Spec : Prop :=
  ∀ n, P17422099037644236742.a n = A394829 n

end A394829

/-!
# A394830: Number of divisors d of n that do not divide n/d - 1.

The programs for A394830, there is no canonical definition to state claims against.
-/

/-! ## A394830.P2104029552581684256

`A000005(n+1)-A163671(n+1)`
-/

namespace A394830.P2104029552581684256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A163671 (n + 1)

end

end A394830.P2104029552581684256

/-! ## A394830.P3110868313279474189

`∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]-A163671(n+1)`
-/

namespace A394830.P3110868313279474189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋) - A163671 (n + 1)

end

end A394830.P3110868313279474189

/-! ## A394830.P9239826542160790822

`A130654(A130674(n+1)+A000122(n+2))`
-/

namespace A394830.P9239826542160790822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130654 (A130674 (n + 1) + A000122 (n + 2)).toNat

end

end A394830.P9239826542160790822

/-! ## A394830.P13415918007012305213

`A347460(n+1)-A359471(A032005(n))`
-/

namespace A394830.P13415918007012305213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347460 (n + 1) - A359471 (A032005 n).toNat

end

end A394830.P13415918007012305213

/-! ## A394830.P3312164856989109600

`A034836(n+1)-A168184(A025047(n))`
-/

namespace A394830.P3312164856989109600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A168184 (A025047 n).toNat

end

end A394830.P3312164856989109600

/-!
# A394841: A variant of Wallis sieve, read by antidiagonals.

The programs for A394841, there is no canonical definition to state claims against.
-/

/-! ## A394841.P7238916203028102013

`abs(A010892(A088699(n)))`
-/

namespace A394841.P7238916203028102013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010892 (A088699 n).toNat|

end

end A394841.P7238916203028102013

/-! ## A394841.P9664884317956943488

`A011655(A088699(n)+1)`
-/

namespace A394841.P9664884317956943488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A088699 n + 1).toNat

end

end A394841.P9664884317956943488

/-! ## A394841.P13605467055448167744

`A128834(A088699(n)+1)²`
-/

namespace A394841.P13605467055448167744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A088699 n + 1).toNat ^ 2

end

end A394841.P13605467055448167744

/-! ## A394841.P10543537961192815599

`A214458(4*A204112(n+1))`
-/

namespace A394841.P10543537961192815599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214458 (4 * A204112 (n + 1)).toNat

end

end A394841.P10543537961192815599

/-! ## A394841.P674244379276510552

`A047999(2^A204112(1+n))`
-/

namespace A394841.P674244379276510552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A204112 (1 + n) : ℤ))).toNat

end

end A394841.P674244379276510552

/-! ## A394841.P13079598824504646917

`A056594((A204112(n+1)+1)^3)`
-/

namespace A394841.P13079598824504646917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 ((A204112 (n + 1) + 1) ^ 3).toNat

end

end A394841.P13079598824504646917

/-! ## A394841.P14642027038694042449

`A011655(A342088(n)/A008279(n)+1)`
-/

namespace A394841.P14642027038694042449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (SequenceMachineLib.roundAway ((A342088 n : ℚ) / (A008279 n : ℚ) + 1)).toNat

end

end A394841.P14642027038694042449

/-! ## A394841.P277682958329021287

`A011655(A086620(n))`
-/

namespace A394841.P277682958329021287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A086620 n).toNat

end

end A394841.P277682958329021287

/-! ## A394841.P8039038376077467760

`A204112(n+1)%A376680(A329316(n+1))`
-/

namespace A394841.P8039038376077467760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204112 (n + 1)) (A376680 (A329316 (n + 1)).toNat)

end

end A394841.P8039038376077467760

/-! ## A394841.P10720234686183017218

`A195062(A143088(n))`
-/

namespace A394841.P10720234686183017218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195062 (A143088 n).toNat

end

end A394841.P10720234686183017218

/-!
# A394843: G.f. A(x) satisfies A(x) = 1 / (1 - x/2 * d/dx log(1 + 2*x*A(x))).

The programs for A394843, there is no canonical definition to state claims against.
-/

/-! ## A394843.P18290882157474833082

`A398263(A196724(n))`
-/

namespace A394843.P18290882157474833082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398263 (A196724 n).toNat

end

end A394843.P18290882157474833082

/-! ## A394843.P3697639305841356631

`A398263(A254940(n+1))`
-/

namespace A394843.P3697639305841356631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398263 (A254940 (n + 1)).toNat

end

end A394843.P3697639305841356631

/-!
# A394847: G.f. A(x) satisfies A(x) = 1 / (1 + x/2 * d/dx log(1 - 2*x*A(x))).

The programs for A394847, there is no canonical definition to state claims against.
-/

/-! ## A394847.P17832575268461612465

`A217562(A007788(n))-A001764(n)`
-/

namespace A394847.P17832575268461612465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217562 (A007788 n).toNat - A001764 n

end

end A394847.P17832575268461612465

/-!
# A394852: Triangle read by rows: Expansion of the e.g.f. 1/( 1 + (1+y)*LambertW(-x) ).

The programs for A394852, there is no canonical definition to state claims against.
-/

/-! ## A394852.P10058982281147058528

`A394824(C(row(n)+1, 2)+col(n))*row(n)!/(row(n)-col(n))!`
-/

namespace A394852.P10058982281147058528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394824 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * (Nat.factorial (SequenceMachineLib.triRow n) : ℤ) : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A394852.P10058982281147058528

/-! ## A394852.P12950944048251536632

`A008279(n)*A394824(n)`
-/

namespace A394852.P12950944048251536632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A394824 n

end

end A394852.P12950944048251536632

/-!
# A394853: Expansion of g^7/(6-5*g)^4, where g = 1+x*g^6 is the g.f. of A002295.

The programs for A394853, the canonical program `A394853.P14258243174522133884` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394853 has offset 0).

The definition of A394853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394853.P14258243174522133884

`∑{#}[n, 5^#*C(#+2, 2)*C(6*n+6, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394853

/-- `∑{#}[n, 5^#*C(#+2, 2)*C(6*n+6, n-#)]` -/
def P14258243174522133884.Spec : Prop :=
  ∀ n, (P14258243174522133884.a n : ℤ) = A394853 n

theorem P14258243174522133884.correct : P14258243174522133884.Spec := by
  intro n
  simp only [A394853]

end A394853

/-!
# A394854: Sequence where k is appended after every F(k+1) occurrences of 1, where F is the Fibonacci sequence (A000045), with multiple values following a 1 listed in order.

The programs for A394854, there is no canonical definition to state claims against.
-/

/-! ## A394854.P17200904806324928617

`A035612(A355758(n+1))`
-/

namespace A394854.P17200904806324928617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A355758 (n + 1)).toNat

end

end A394854.P17200904806324928617

/-! ## A394854.P9091157015005082762

`val(A137411(A266202(n))-A353474(n+1), 2)+1`
-/

namespace A394854.P9091157015005082762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A137411 (A266202 n).toNat - A353474 (n + 1)).toNat 2 + 1

end

end A394854.P9091157015005082762

/-! ## A394854.P10423392473739484404

`A001511(A014382(n)+n)`
-/

namespace A394854.P10423392473739484404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A014382 n + (n : ℤ)).toNat

end

end A394854.P10423392473739484404

/-! ## A394854.P14276791357243946473

`A005086(A236110(A355758(n+1))²)`
-/

namespace A394854.P14276791357243946473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (A236110 (A355758 (n + 1)).toNat ^ 2).toNat

end

end A394854.P14276791357243946473

/-! ## A394854.P10845827499965767206

`gcd(A049287(n+1), A323347(A016825(n)))`
-/

namespace A394854.P10845827499965767206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049287 (n + 1)) (A323347 (A016825 n).toNat)

end

end A394854.P10845827499965767206

/-!
# A394855: Numbers k such that prime tower factorizations of k and k+1 share some prime number.

The programs for A394855, there is no canonical definition to state claims against.
-/

/-! ## A394855.P14760079089901503621

`lt[1, A284761(n+1)]+1`
-/

namespace A394855.P14760079089901503621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284761 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A394855.P14760079089901503621

/-! ## A394855.P12749974893599516442

`lt[1, A284761(A028310(n))]`
-/

namespace A394855.P12749974893599516442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284761 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A394855.P12749974893599516442

/-! ## A394855.P1444115622062302926

`A065475(lt[1, A284761(n+1)])`
-/

namespace A394855.P1444115622062302926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A394855.P1444115622062302926

/-!
# A394856: a(n) is the largest integer k such that the k-th Bell number does not exceed 2^(n+k).

The programs for A394856, there is no canonical definition to state claims against.
-/

/-! ## A394856.P1400042841124822851

`A105209(A051871(n+2))+1`
-/

namespace A394856.P1400042841124822851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (A051871 (n + 2)).toNat + 1

end

end A394856.P1400042841124822851

/-! ## A394856.P6168239052980207072

`A134914(A154517(n+2))`
-/

namespace A394856.P6168239052980207072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A154517 (n + 2)).toNat

end

end A394856.P6168239052980207072

/-! ## A394856.P9651460453757377574

`A048766(A053001(3*(n+2))+10)+1`
-/

namespace A394856.P9651460453757377574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A053001 (3 * (n + 2)) + 10).toNat + 1

end

end A394856.P9651460453757377574

/-! ## A394856.P9232407880557323674

`A105209(A132761(3*n+1)+29)`
-/

namespace A394856.P9232407880557323674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (A132761 (3 * n + 1) + 29).toNat

end

end A394856.P9232407880557323674

/-! ## A394856.P10438150788507341042

`A048766(Δ[A264443(3*n+4)-A023545(2*n+3)])`
-/

namespace A394856.P10438150788507341042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (3 * n + 4) - A023545 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f1 (n + 1) - f1 n).toNat

end

end A394856.P10438150788507341042

/-!
# A394857: Lexicographically earliest sequence of distinct positive integers such that the prime tower factorizations of two consecutive terms have no common prime number.

The programs for A394857, there is no canonical definition to state claims against.
-/

/-! ## A394857.P13864891642223406541

`fo[A394859(n+1)-1]+1`
-/

namespace A394857.P13864891642223406541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394859 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A394857.P13864891642223406541

/-!
# A394859: Inverse permutation to A394857.

The programs for A394859, there is no canonical definition to state claims against.
-/

/-! ## A394859.P9808911328588231448

`fo[A394857(n+1)-1]+1`
-/

namespace A394859.P9808911328588231448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394857 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A394859.P9808911328588231448

/-!
# A394860: Numbers that are neither squarefree nor squareful, with exponents of prime power factors that are distinct.

The programs for A394860, the canonical program `A394860.P10650046253602753616` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394860 has offset 1).

The definition of A394860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394860.P10650046253602753616

`filter[A177425(n+1), A389905(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A394860

/-- `filter[A177425(n+1), A389905(#)]` -/
def P10650046253602753616.Spec : Prop :=
  ∀ n, P10650046253602753616.a n = A394860 (n + 1)

theorem P10650046253602753616.correct : P10650046253602753616.Spec := by
  intro n
  simp only [A394860, Nat.add_sub_cancel]

end A394860

/-! ## A394860.P16704750619181434096

`filter[A130091(1+n), A389905(#)]`
-/

namespace A394860.P16704750619181434096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A394860.P16704750619181434096

namespace A394860

/-- `filter[A130091(1+n), A389905(#)]` -/
def P16704750619181434096.Spec : Prop :=
  ∀ n, P16704750619181434096.a n = A394860 (n + 1)

end A394860

/-! ## A394860.P7911642202393078615

`∩[A119251(n+1), A177425(n+1)]`
-/

namespace A394860.P7911642202393078615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394860.P7911642202393078615

namespace A394860

/-- `∩[A119251(n+1), A177425(n+1)]` -/
def P7911642202393078615.Spec : Prop :=
  ∀ n, (P7911642202393078615.a n : ℤ) = A394860 (n + 1)

end A394860

/-! ## A394860.P807785433628965406

`∩[A119251(n+1), A182854(n+1)]`
-/

namespace A394860.P807785433628965406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394860.P807785433628965406

namespace A394860

/-- `∩[A119251(n+1), A182854(n+1)]` -/
def P807785433628965406.Spec : Prop :=
  ∀ n, (P807785433628965406.a n : ℤ) = A394860 (n + 1)

end A394860

/-! ## A394860.P14636379516346400120

`filter[A332785(n+1), A351564(#)]`
-/

namespace A394860.P14636379516346400120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A394860.P14636379516346400120

namespace A394860

/-- `filter[A332785(n+1), A351564(#)]` -/
def P14636379516346400120.Spec : Prop :=
  ∀ n, P14636379516346400120.a n = A394860 (n + 1)

end A394860

/-! ## A394860.P18370304323307954782

`filter[A389065(n+1), A351564(#)]`
-/

namespace A394860.P18370304323307954782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A394860.P18370304323307954782

namespace A394860

/-- `filter[A389065(n+1), A351564(#)]` -/
def P18370304323307954782.Spec : Prop :=
  ∀ n, P18370304323307954782.a n = A394860 (n + 1)

end A394860

/-! ## A394860.P9684086119677050274

`∩[A052485(n+1), A177425(n+1)]`
-/

namespace A394860.P9684086119677050274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394860.P9684086119677050274

namespace A394860

/-- `∩[A052485(n+1), A177425(n+1)]` -/
def P9684086119677050274.Spec : Prop :=
  ∀ n, (P9684086119677050274.a n : ℤ) = A394860 (n + 1)

end A394860

/-! ## A394860.P17145639573827230297

`record[A327498(A332785(n+1))]`
-/

namespace A394860.P17145639573827230297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A332785 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394860.P17145639573827230297

namespace A394860

/-- `record[A327498(A332785(n+1))]` -/
def P17145639573827230297.Spec : Prop :=
  ∀ n, P17145639573827230297.a n = A394860 (n + 1)

end A394860

/-!
# A394862: Number of oriented polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,8}.

The programs for A394862, there is no canonical definition to state claims against.
-/

/-! ## A394862.P10761492135979701206

`A393744(n)+A394863(n)`
-/

namespace A394862.P10761492135979701206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 n + A394863 n

end

end A394862.P10761492135979701206

/-! ## A394862.P14279640676659654518

`2*A394863(n)+A394864(n)`
-/

namespace A394862.P14279640676659654518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A394863 n + A394864 n

end

end A394862.P14279640676659654518

/-! ## A394862.P11959128749918323385

`2*A393744(n)-A394864(n)`
-/

namespace A394862.P11959128749918323385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A393744 n - A394864 n

end

end A394862.P11959128749918323385

/-! ## A394862.P11323768415703542163

`A394863(A028310(n))+A394863(n)+A394864(n)`
-/

namespace A394862.P11323768415703542163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394863 (A028310 n).toNat + (A394863 n + A394864 n)

end

end A394862.P11323768415703542163

/-! ## A394862.P12778180644148315636

`A394863(A272118(n+1))+A394863(n)+A394864(n)`
-/

namespace A394862.P12778180644148315636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394863 (A272118 (n + 1)).toNat + (A394863 n + A394864 n)

end

end A394862.P12778180644148315636

/-!
# A394863: Number of chiral pairs of polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,8}.

The programs for A394863, there is no canonical definition to state claims against.
-/

/-! ## A394863.P3063618182708421842

`A394862(n)-A393744(n)`
-/

namespace A394863.P3063618182708421842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 n - A393744 n

end

end A394863.P3063618182708421842

/-! ## A394863.P9005981220594115208

`A393744(n)-A394864(n)`
-/

namespace A394863.P9005981220594115208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 n - A394864 n

end

end A394863.P9005981220594115208

/-! ## A394863.P17590825322999533197

`(A394862(n)-A394864(n))/2`
-/

namespace A394863.P17590825322999533197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394862 n - A394864 n : ℚ) / 2

end

end A394863.P17590825322999533197

/-! ## A394863.P13499785011317583895

`A394862(A028310(n))%A393744(n)`
-/

namespace A394863.P13499785011317583895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394862 (A028310 n).toNat) (A393744 n)

end

end A394863.P13499785011317583895

/-! ## A394863.P6197619573589580513

`A394862(A291179(n+1))%A393744(n)`
-/

namespace A394863.P6197619573589580513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394862 (A291179 (n + 1)).toNat) (A393744 n)

end

end A394863.P6197619573589580513

/-!
# A394864: Number of achiral polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,8}.

The programs for A394864, there is no canonical definition to state claims against.
-/

/-! ## A394864.P5615382719877055564

`A393744(n)-A394863(n)`
-/

namespace A394864.P5615382719877055564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 n - A394863 n

end

end A394864.P5615382719877055564

/-! ## A394864.P14586238479993581803

`2*A393744(n)-A394862(n)`
-/

namespace A394864.P14586238479993581803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A393744 n - A394862 n

end

end A394864.P14586238479993581803

/-! ## A394864.P14024356651214955257

`A394862(n)-2*A394863(n)`
-/

namespace A394864.P14024356651214955257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 n - 2 * A394863 n

end

end A394864.P14024356651214955257

/-! ## A394864.P15574534842239329364

`A394862(n)-A394863(n)-A394863(A028310(n))`
-/

namespace A394864.P15574534842239329364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 n - A394863 n - A394863 (A028310 n).toNat

end

end A394864.P15574534842239329364

/-! ## A394864.P12493954251736817888

`A394862(n)-A394863(n)-A394863(A272118(n+1))`
-/

namespace A394864.P12493954251736817888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 n - A394863 n - A394863 (A272118 (n + 1)).toNat

end

end A394864.P12493954251736817888

/-!
# A394865: a(n) is the size of the largest subset A of {1, ..., n} such that x does not divide 2*y for each pair of distinct elements x, y in A.

The programs for A394865, the canonical program `A394865.P1928483704663461371` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394865 has offset 1).

The definition of A394865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394865.P1928483704663461371

`A050292(n+1)-A050292(floor((n+1)/3))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394865

/-- `A050292(n+1)-A050292(floor((n+1)/3))` -/
def P1928483704663461371.Spec : Prop :=
  ∀ n, P1928483704663461371.a n = A394865 (n + 1)

theorem P1928483704663461371.correct : P1928483704663461371.Spec := by
  intro n
  simp only [A394865, Nat.add_sub_cancel]

end A394865

/-! ## A394865.P4336410671268897147

`∑[xor(n+1, ∑[n%3])%3]`
-/

namespace A394865.P4336410671268897147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P4336410671268897147

namespace A394865

/-- `∑[xor(n+1, ∑[n%3])%3]` -/
def P4336410671268897147.Spec : Prop :=
  ∀ n, (P4336410671268897147.a n : ℤ) = A394865 (n + 1)

end A394865

/-! ## A394865.P17982786733998867332

`∑[lcm(1-val(n+1, 2)%2, (n+2)%3-1)]`
-/

namespace A394865.P17982786733998867332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((SequenceMachineLib.valuation (n + 1) 2 % 2 : ℕ) : ℤ)) ((((n + 2) % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P17982786733998867332

namespace A394865

/-- `∑[lcm(1-val(n+1, 2)%2, (n+2)%3-1)]` -/
def P17982786733998867332.Spec : Prop :=
  ∀ n, (P17982786733998867332.a n : ℤ) = A394865 (n + 1)

end A394865

/-! ## A394865.P6015073549116423530

`∑[(2*(n+1)*(n+1)-(n+1)*(n+1)/2^val(n+1, 2))%3]`
-/

namespace A394865.P6015073549116423530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 * (n + 1) * (n + 1) : ℚ) - ((n + 1) * (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P6015073549116423530

namespace A394865

/-- `∑[(2*(n+1)*(n+1)-(n+1)*(n+1)/2^val(n+1, 2))%3]` -/
def P6015073549116423530.Spec : Prop :=
  ∀ n, P6015073549116423530.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P14853100564396369592

`∑[A373155(1+n)]`
-/

namespace A394865.P14853100564396369592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373155 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P14853100564396369592

namespace A394865

/-- `∑[A373155(1+n)]` -/
def P14853100564396369592.Spec : Prop :=
  ∀ n, P14853100564396369592.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P767896980406411626

`∑[abs(A084091(n+1))]`
-/

namespace A394865.P767896980406411626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084091 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P767896980406411626

namespace A394865

/-- `∑[abs(A084091(n+1))]` -/
def P767896980406411626.Spec : Prop :=
  ∀ n, P767896980406411626.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P11143432776877341236

`∑[A287896(n+1)%2]`
-/

namespace A394865.P11143432776877341236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287896 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P11143432776877341236

namespace A394865

/-- `∑[A287896(n+1)%2]` -/
def P11143432776877341236.Spec : Prop :=
  ∀ n, P11143432776877341236.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P6674565521609759778

`∑[A349122(n+1)%2]`
-/

namespace A394865.P6674565521609759778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349122 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P6674565521609759778

namespace A394865

/-- `∑[A349122(n+1)%2]` -/
def P6674565521609759778.Spec : Prop :=
  ∀ n, P6674565521609759778.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P3952479036083900718

`∑[A091519(n+1)%3]`
-/

namespace A394865.P3952479036083900718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091519 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P3952479036083900718

namespace A394865

/-- `∑[A091519(n+1)%3]` -/
def P3952479036083900718.Spec : Prop :=
  ∀ n, P3952479036083900718.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P12405998768143361205

`fp[A084087(n+1)-1]`
-/

namespace A394865.P12405998768143361205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A394865.P12405998768143361205

namespace A394865

/-- `fp[A084087(n+1)-1]` -/
def P12405998768143361205.Spec : Prop :=
  ∀ n, (P12405998768143361205.a n : ℤ) = A394865 (n + 1)

end A394865

/-! ## A394865.P11744148569124300156

`∑[A000035(A287896(n+1))]`
-/

namespace A394865.P11744148569124300156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A287896 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P11744148569124300156

namespace A394865

/-- `∑[A000035(A287896(n+1))]` -/
def P11744148569124300156.Spec : Prop :=
  ∀ n, P11744148569124300156.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P12669935770675097615

`∑[and(A035263(n+1), A064989(n+1))]`
-/

namespace A394865.P12669935770675097615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A064989 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P12669935770675097615

namespace A394865

/-- `∑[and(A035263(n+1), A064989(n+1))]` -/
def P12669935770675097615.Spec : Prop :=
  ∀ n, P12669935770675097615.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P2905656064125758664

`∑[A000361(n)%2]`
-/

namespace A394865.P2905656064125758664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000361 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P2905656064125758664

namespace A394865

/-- `∑[A000361(n)%2]` -/
def P2905656064125758664.Spec : Prop :=
  ∀ n, P2905656064125758664.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P16217580873641575772

`∑[and(A007413(n+1), A088911(2*n))]`
-/

namespace A394865.P16217580873641575772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007413 (n + 1)) (A088911 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P16217580873641575772

namespace A394865

/-- `∑[and(A007413(n+1), A088911(2*n))]` -/
def P16217580873641575772.Spec : Prop :=
  ∀ n, P16217580873641575772.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P6479513665572823699

`∑[A259024(3*(n+1))²]`
-/

namespace A394865.P6479513665572823699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (3 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P6479513665572823699

namespace A394865

/-- `∑[A259024(3*(n+1))²]` -/
def P6479513665572823699.Spec : Prop :=
  ∀ n, P6479513665572823699.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P16926876292244877996

`∑[and(A035263(n+1), A077948(n))]`
-/

namespace A394865.P16926876292244877996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A077948 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P16926876292244877996

namespace A394865

/-- `∑[and(A035263(n+1), A077948(n))]` -/
def P16926876292244877996.Spec : Prop :=
  ∀ n, P16926876292244877996.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P11921421901162610551

`∑[and(A023652(n+1), A035263(n+1))]`
-/

namespace A394865.P11921421901162610551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023652 (n + 1)) (A035263 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P11921421901162610551

namespace A394865

/-- `∑[and(A023652(n+1), A035263(n+1))]` -/
def P11921421901162610551.Spec : Prop :=
  ∀ n, P11921421901162610551.a n = A394865 (n + 1)

end A394865

/-!
# A394869: a(n) = floor(n*(sqrt(n - 1) + 2)/2).

The programs for A394869, the canonical program `A394869.P11237424373232616846` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394869 has offset 0).

The definition of A394869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394869.P11237424373232616846

`floor(sqrt(A259361(n²))/2*n)+n`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A394869

/-- `floor(sqrt(A259361(n²))/2*n)+n` -/
def P11237424373232616846.Spec : Prop :=
  ∀ n, P11237424373232616846.a n = A394869 n

theorem P11237424373232616846.correct : P11237424373232616846.Spec := by
  intro n
  simp only [A394869]

end A394869

/-! ## A394869.P3254486335566534733

`ceil(log2(A200403(n+1)))`
-/

namespace A394869.P3254486335566534733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A200403 (n + 1) : ℝ)⌉

end

end A394869.P3254486335566534733

namespace A394869

/-- `ceil(log2(A200403(n+1)))` -/
def P3254486335566534733.Spec : Prop :=
  ∀ n, P3254486335566534733.a n = A394869 n

end A394869

/-! ## A394869.P10659165312316237657

`A273190(A349662((n+2)*2*n))`
-/

namespace A394869.P10659165312316237657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A349662 ((n + 2) * (2 * n))).toNat

end

end A394869.P10659165312316237657

namespace A394869

/-- `A273190(A349662((n+2)*2*n))` -/
def P10659165312316237657.Spec : Prop :=
  ∀ n, P10659165312316237657.a n = A394869 n

end A394869

/-! ## A394869.P5079581145372664644

`∑[A137734(n)%A368947(n)]`
-/

namespace A394869.P5079581145372664644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137734 n) (A368947 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394869.P5079581145372664644

namespace A394869

/-- `∑[A137734(n)%A368947(n)]` -/
def P5079581145372664644.Spec : Prop :=
  ∀ n, P5079581145372664644.a n = A394869 n

end A394869

/-! ## A394869.P7504285570692287937

`round(log(A339039(2*n)))`
-/

namespace A394869.P7504285570692287937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A339039 (2 * n) : ℝ))

end

end A394869.P7504285570692287937

namespace A394869

/-- `round(log(A339039(2*n)))` -/
def P7504285570692287937.Spec : Prop :=
  ∀ n, P7504285570692287937.a n = A394869 n

end A394869

/-!
# A394870: Primes p such that the number of quadratic residues in the Fibonacci sequence modulo p over a full Pisano period equals the number of nonresidues plus the number of terms divisible by p.

The programs for A394870, there is no canonical definition to state claims against.
-/

/-! ## A394870.P1881488724456753458

`∩[A177902(n+1), A227885(n+1)]`
-/

namespace A394870.P1881488724456753458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394870.P1881488724456753458

/-!
# A394872: Triangle read by rows: T(n, k) = binomial(n, k) * binomial(2*n + 2, k) * 2^k / (k + 1).

The programs for A394872, the canonical program `A394872.P4178281104492012316` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394872 has offset 0).

The definition of A394872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394872.P4178281104492012316

`C(row(n), col(n))*C(2*row(n)+2, col(n))*2^col(n)/(col(n)+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394872

/-- `C(row(n), col(n))*C(2*row(n)+2, col(n))*2^col(n)/(col(n)+1)` -/
def P4178281104492012316.Spec : Prop :=
  ∀ n, P4178281104492012316.a n = (A394872 n : ℚ)

end A394872

/-! ## A394872.P7531262182648025482

`2^col(n)*A108767(n+1)`
-/

namespace A394872.P7531262182648025482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) * A108767 (n + 1)

end

end A394872.P7531262182648025482

namespace A394872

/-- `2^col(n)*A108767(n+1)` -/
def P7531262182648025482.Spec : Prop :=
  ∀ n, P7531262182648025482.a n = A394872 n

end A394872

/-! ## A394872.P15429205169785706846

`A059268(n)*A108767(n+1)`
-/

namespace A394872.P15429205169785706846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A108767 (n + 1)

end

end A394872.P15429205169785706846

namespace A394872

/-- `A059268(n)*A108767(n+1)` -/
def P15429205169785706846.Spec : Prop :=
  ∀ n, P15429205169785706846.a n = A394872 n

end A394872

/-!
# A394873: Number of 1's in the partitions of n into exactly 5 parts.

The programs for A394873, there is no canonical definition to state claims against.
-/

/-! ## A394873.P4209422418689201385

`A394985(1+n)-A026811(n)`
-/

namespace A394873.P4209422418689201385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394985 (1 + n) - A026811 n

end

end A394873.P4209422418689201385

/-!
# A394874: G.f. A(x) satisfies A(x) = 1 - x - x * d/dx log(1 - x*A(x)).

The programs for A394874, there is no canonical definition to state claims against.
-/

/-! ## A394874.P7987064696693746419

`A156253(A179525(n))-A216501(n+1)`
-/

namespace A394874.P7987064696693746419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A179525 n).toNat - A216501 (n + 1)

end

end A394874.P7987064696693746419

/-! ## A394874.P7126437750241372167

`A358640(A294867(n))`
-/

namespace A394874.P7126437750241372167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358640 (A294867 n).toNat

end

end A394874.P7126437750241372167

/-!
# A394875: G.f. A(x) satisfies A(x) = 1 - x - x^2 - x * d/dx log(1 - x*A(x)).

The programs for A394875, there is no canonical definition to state claims against.
-/

/-! ## A394875.P4620076939963298311

`A335075(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=5`
-/

namespace A394875.P4620076939963298311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 5] fun n a =>
  A335075 (2 * a (n - 1) - a (n - 2)).toNat

end

end A394875.P4620076939963298311

/-! ## A394875.P2647852134335320543

`or(A171935(a(n-1)), (n+1)*a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A394875.P2647852134335320543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  Int.lor (A171935 (a (n - 1)).toNat) ((n + 1 : ℤ) * a (n - 1))

end

end A394875.P2647852134335320543

/-! ## A394875.P15003475722023845286

`A008616(A088312(n)+A000108(n))`
-/

namespace A394875.P15003475722023845286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A088312 n + A000108 n).toNat

end

end A394875.P15003475722023845286

/-!
# A394880: G.f. A(x) satisfies A(x) = 1 / (1 + x - x^2 + x^3 - x^4 - x * d/dx log(1 + x*A(x))).

The programs for A394880, there is no canonical definition to state claims against.
-/

/-! ## A394880.P16336917728644128737

`A232480(A329864(n)+3)`
-/

namespace A394880.P16336917728644128737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232480 (A329864 n + 3).toNat

end

end A394880.P16336917728644128737

/-!
# A394881: G.f. A(x) satisfies A(x) = -1 / (1 + x - x^2 + x^3 - x^4 + x^5 - x * d/dx log(1 - x*A(x))).

The programs for A394881, there is no canonical definition to state claims against.
-/

/-! ## A394881.P10761818696621134920

`A107777(A077465(a(n-1)))` with `a(0)=-1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1`
-/

namespace A394881.P10761818696621134920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 0, 0, 0, 0, 1] fun n a =>
  A107777 (A077465 (a (n - 1)).toNat).toNat

end

end A394881.P10761818696621134920

/-! ## A394881.P13625374228335357281

`A077462(A025487(6*a(n-1)-a(n-1)+1))` with `a(0)=-1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A394881.P13625374228335357281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 0, 0, 0, 0] fun n a =>
  A077462 (A025487 (6 * a (n - 1) - a (n - 1) + 1).toNat).toNat

end

end A394881.P13625374228335357281

/-! ## A394881.P14793450022700715958

`A293607(A240309(n))-A054977(n)`
-/

namespace A394881.P14793450022700715958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293607 (A240309 n).toNat - A054977 n

end

end A394881.P14793450022700715958

/-!
# A394882: a(n) = 3*a(n-1) + (n mod 2)*floor(2^(n+1)/3) for n > 1, a(1) = 1.

The programs for A394882, the canonical program `A394882.P13165600796623905956` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394882 has offset 1).

The definition of A394882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+(n+1)%2*floor(2^(n+2)/3)` (program `A394882.P13165600796623905956`, by `A394882.P13165600796623905956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394882.P11925673022247709384

`ogf(1/(1-3x-5x^2+15x^3+4x^4-12x^5))`
-/

namespace A394882.P11925673022247709384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -5, 15, 4, -12] n

end

end A394882.P11925673022247709384

namespace A394882

/-- `ogf(1/(1-3x-5x^2+15x^3+4x^4-12x^5))` -/
def P11925673022247709384.Spec : Prop :=
  ∀ n, P11925673022247709384.a n = A394882 (n + 1)

end A394882

/-! ## A394882.P13165600796623905956

`3*a(n-1)+(n+1)%2*floor(2^(n+2)/3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394882

/-- `3*a(n-1)+(n+1)%2*floor(2^(n+2)/3)` -/
def P13165600796623905956.Spec : Prop :=
  ∀ n, P13165600796623905956.a n = A394882 (n + 1)

theorem P13165600796623905956.correct : P13165600796623905956.Spec := by
  intro n
  simp only [A394882, Nat.add_sub_cancel]

end A394882

/-! ## A394882.P16415250053478149965

`A395021(C(n+5, 2)+5)`
-/

namespace A394882.P16415250053478149965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395021 (Nat.choose (n + 5) 2 + 5)

end

end A394882.P16415250053478149965

namespace A394882

/-- `A395021(C(n+5, 2)+5)` -/
def P16415250053478149965.Spec : Prop :=
  ∀ n, P16415250053478149965.a n = A394882 (n + 1)

end A394882

/-! ## A394882.P404370011513418090

`A394582(A034856(n+2))`
-/

namespace A394882.P404370011513418090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394582 (A034856 (n + 2)).toNat

end

end A394882.P404370011513418090

namespace A394882

/-- `A394582(A034856(n+2))` -/
def P404370011513418090.Spec : Prop :=
  ∀ n, P404370011513418090.a n = A394882 (n + 1)

end A394882

/-! ## A394882.P1571604905685249581

`A394582(lt[A106356(n+1), 1])`
-/

namespace A394882.P1571604905685249581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394582 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A394882.P1571604905685249581

namespace A394882

/-- `A394582(lt[A106356(n+1), 1])` -/
def P1571604905685249581.Spec : Prop :=
  ∀ n, P1571604905685249581.a n = A394882 (n + 1)

end A394882

/-! ## A394882.P12885199324534129161

`A394582(A000217(n+2)+n+1)`
-/

namespace A394882.P12885199324534129161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394582 (A000217 (n + 2) + (n + 1 : ℤ)).toNat

end

end A394882.P12885199324534129161

namespace A394882

/-- `A394582(A000217(n+2)+n+1)` -/
def P12885199324534129161.Spec : Prop :=
  ∀ n, P12885199324534129161.a n = A394882 (n + 1)

end A394882

/-!
# A394883: a(n) = n^2*(n + 1)*(n + 2)*(2*n + 1)*(2*n + 3)*(5*n - 1)/360.

The programs for A394883, the canonical program `A394883.P1645665538627354432` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394883 has offset 1).

The definition of A394883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394883.P7254008594409788041

`ogf((1+34x+133x^2+100x^3+12x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A394883.P7254008594409788041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 34, 133, 100, 12] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A394883.P7254008594409788041

namespace A394883

/-- `ogf((1+34x+133x^2+100x^3+12x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P7254008594409788041.Spec : Prop :=
  ∀ n, P7254008594409788041.a n = A394883 (n + 1)

end A394883

/-! ## A394883.P10124739734711994868

`(n+1)²*(n+2)*(n+3)*(2*(n+1)+1)*(2*(n+1)+3)*(5*(n+1)-1)/360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394883.P10124739734711994868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 * (n + 2) * (n + 3) * (2 * (n + 1) + 1) * (2 * (n + 1) + 3) : ℤ) * ((5 * (n + 1) : ℤ) - 1) : ℚ) / 360

end

end A394883.P10124739734711994868

namespace A394883

/-- `(n+1)²*(n+2)*(n+3)*(2*(n+1)+1)*(2*(n+1)+3)*(5*(n+1)-1)/360` -/
def P10124739734711994868.Spec : Prop :=
  ∀ n, P10124739734711994868.a n = (A394883 (n + 1) : ℚ)

end A394883

/-! ## A394883.P1645665538627354432

`(n+1)*A060493(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394883

/-- `(n+1)*A060493(n+1)` -/
def P1645665538627354432.Spec : Prop :=
  ∀ n, P1645665538627354432.a n = A394883 (n + 1)

theorem P1645665538627354432.correct : P1645665538627354432.Spec := by
  intro n
  simp only [A394883, Nat.add_sub_cancel]

end A394883

/-! ## A394883.P786669634673056597

`∑[A108678(n)*(n+1)]*(n+1)`
-/

namespace A394883.P786669634673056597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108678 n * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℤ)

end

end A394883.P786669634673056597

namespace A394883

/-- `∑[A108678(n)*(n+1)]*(n+1)` -/
def P786669634673056597.Spec : Prop :=
  ∀ n, P786669634673056597.a n = A394883 (n + 1)

end A394883

/-! ## A394883.P4967433164080828706

`(n+1)*∑[A373561(n+1)]`
-/

namespace A394883.P4967433164080828706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394883.P4967433164080828706

namespace A394883

/-- `(n+1)*∑[A373561(n+1)]` -/
def P4967433164080828706.Spec : Prop :=
  ∀ n, P4967433164080828706.a n = A394883 (n + 1)

end A394883

/-! ## A394883.P11294970845597473926

`A394813(A167614(n+1))`
-/

namespace A394883.P11294970845597473926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394813 (A167614 (n + 1)).toNat

end

end A394883.P11294970845597473926

namespace A394883

/-- `A394813(A167614(n+1))` -/
def P11294970845597473926.Spec : Prop :=
  ∀ n, P11294970845597473926.a n = A394883 (n + 1)

end A394883

/-!
# A394884: a(n) = A051903(A099308(n)), where A051903 is the maximum exponent in the prime factorization of n, and A099308 lists numbers m whose k-th arithmetic derivative is zero for some k.

The programs for A394884, there is no canonical definition to state claims against.
-/

/-! ## A394884.P13710700298872726667

`A051903(lt[0, A328308(n+1)]+1)`
-/

namespace A394884.P13710700298872726667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A394884.P13710700298872726667

/-! ## A394884.P4166752231447906858

`A051903(A099308(2+n))`
-/

namespace A394884.P4166752231447906858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A099308 (2 + n)).toNat

end

end A394884.P4166752231447906858

/-! ## A394884.P13893728289342449671

`A327103(A398717(n+1)-A104562(n))`
-/

namespace A394884.P13893728289342449671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A398717 (n + 1) - A104562 n).toNat

end

end A394884.P13893728289342449671

/-! ## A394884.P1603024760003664294

`A284259(A111471(n+1))`
-/

namespace A394884.P1603024760003664294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (A111471 (n + 1)).toNat

end

end A394884.P1603024760003664294

/-! ## A394884.P15518197353572060746

`A376615(A072205(n+2))`
-/

namespace A394884.P15518197353572060746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376615 (A072205 (n + 2)).toNat

end

end A394884.P15518197353572060746

/-!
# A394885: Terms of A099308 for which A051903 obtains value n for the first time.

The programs for A394885, there is no canonical definition to state claims against.
-/

/-! ## A394885.P11997421728390285123

`A117732(A083707(n+1))`
-/

namespace A394885.P11997421728390285123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117732 (A083707 (n + 1)).toNat

end

end A394885.P11997421728390285123

/-!
# A394886: a(n) = A051903(A328116(n)), where A051903 is the maximum exponent in the prime factorization of n, and A328116 lists numbers m such that the k-th arithmetic derivative of A276086(m) is zero for some k.

The programs for A394886, there is no canonical definition to state claims against.
-/

/-! ## A394886.P16298471294001512570

`A051903(A328116(2+n))`
-/

namespace A394886.P16298471294001512570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A328116 (2 + n)).toNat

end

end A394886.P16298471294001512570

/-! ## A394886.P10061464116721932765

`gcd(A003984(n), A022307(A001440(2*n+1)))`
-/

namespace A394886.P10061464116721932765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003984 n) (A022307 (A001440 (2 * n + 1)).toNat)

end

end A394886.P10061464116721932765

/-! ## A394886.P15713964158811204052

`A328483(A106331(n+1))`
-/

namespace A394886.P15713964158811204052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328483 (A106331 (n + 1)).toNat

end

end A394886.P15713964158811204052

/-! ## A394886.P14066800002860398155

`A327164(A116082(n+1))`
-/

namespace A394886.P14066800002860398155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327164 (A116082 (n + 1)).toNat

end

end A394886.P14066800002860398155

/-! ## A394886.P5976448602269021464

`A081396(A389186(n+1))`
-/

namespace A394886.P5976448602269021464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081396 (A389186 (n + 1)).toNat

end

end A394886.P5976448602269021464

/-!
# A394887: Terms k in A328116 corresponding to records in A394886.

The programs for A394887, there is no canonical definition to state claims against.
-/

/-! ## A394887.P15593720967625439968

`A001223(62*a(n-1))*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A394887.P15593720967625439968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A001223 (62 * a (n - 1)).toNat * a (n - 1)

end

end A394887.P15593720967625439968

/-! ## A394887.P1923752943064249743

`A000010(C(2^n+n%2+1, row(n)+1))`
-/

namespace A394887.P1923752943064249743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose (2 ^ n + n % 2 + 1) (SequenceMachineLib.triRow n + 1))

end

end A394887.P1923752943064249743

/-!
# A394889: a(n) = A276086(A394888(n)).

The programs for A394889, there is no canonical definition to state claims against.
-/

/-! ## A394889.P9487726481094681524

`A276086(A394888(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394889.P9487726481094681524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A394888 (n + 1)).toNat

end

end A394889.P9487726481094681524

/-!
# A394891: Numbers k such that A143293(k) has no factor of the form p^p, where A143293 is the partial sums of the primorial numbers.

The programs for A394891, there is no canonical definition to state claims against.
-/

/-! ## A394891.P4382566585616957376

`comp[A394892(1+n)]`
-/

namespace A394891.P4382566585616957376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394892 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A394891.P4382566585616957376

/-! ## A394891.P1316935763010508890

`lt[A378191(A387838(n+1)*(A387731(n+1)+2)), 1]`
-/

namespace A394891.P1316935763010508890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 (A387838 (n + 1) * (A387731 (n + 1) + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A394891.P1316935763010508890

/-! ## A394891.P631157619674546407

`comp[A330976(A119034(n+1))]`
-/

namespace A394891.P631157619674546407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330976 (A119034 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A394891.P631157619674546407

/-! ## A394891.P13792593675605960212

`comp[A072798(A359151(n+2)-4)]`
-/

namespace A394891.P13792593675605960212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072798 (A359151 (n + 2) - 4).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A394891.P13792593675605960212

/-! ## A394891.P8352245381302529600

`comp[A314669(A208408(n+1))+A311101(n)]`
-/

namespace A394891.P8352245381302529600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 (A208408 (n + 1)).toNat + A311101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A394891.P8352245381302529600

/-!
# A394892: Numbers k such that A143293(k) has a factor of the form p^p, where A143293 is the partial sums of the primorial numbers.

The programs for A394892, there is no canonical definition to state claims against.
-/

/-! ## A394892.P4913648567144519856

`comp[A394891(n+1)]`
-/

namespace A394892.P4913648567144519856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A394892.P4913648567144519856

/-!
# A394893: Number of integers x in range A002110(n-1) .. A002110(n)-1 such that the u-th arithmetic derivative of A276086(x) is zero for some u, and A328114(x) = prime(n-1), where A002110(n) is the n-th primorial, and A328114 gives the largest digit in the primorial base.

The programs for A394893, there is no canonical definition to state claims against.
-/

/-! ## A394893.P14688979647912358204

`A394890(A101301(n+1))`
-/

namespace A394893.P14688979647912358204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394890 (A101301 (n + 1)).toNat

end

end A394893.P14688979647912358204

/-! ## A394893.P11449784131946886717

`A394890(∑[A006093(n+1)])`
-/

namespace A394893.P11449784131946886717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394890 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A394893.P11449784131946886717

/-! ## A394893.P8928696796647710581

`A394890(∑[A000040(n+1)-1])`
-/

namespace A394893.P8928696796647710581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394890 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A394893.P8928696796647710581

/-!
# A394896: a(n) = n*n*(n+1)*(n+2)*(n+3)*(2n+1)*(2n+3)*(2n+5)*(35*n^2-21*n+4)/45360.

The programs for A394896, the canonical program `A394896.P2662756544387131280` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394896 has offset 1).

The definition of A394896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394896.P3538807003157499256

`(n+1)*C(2*(n+1)+6, 7)*(35*(n+1)²-21*(n+1)+4)/144`
-/

namespace A394896.P3538807003157499256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * Nat.choose (2 * (n + 1) + 6) 7 : ℤ) * ((35 * (n + 1) ^ 2 : ℤ) - (21 * (n + 1) : ℤ) + 4) : ℚ) / 144

end

end A394896.P3538807003157499256

namespace A394896

/-- `(n+1)*C(2*(n+1)+6, 7)*(35*(n+1)²-21*(n+1)+4)/144` -/
def P3538807003157499256.Spec : Prop :=
  ∀ n, P3538807003157499256.a n = (A394896 (n + 1) : ℚ)

end A394896

/-! ## A394896.P1177109784360596825

`(n+1)*(7*(n+1)*(5*(n+1)-3)+4)*C(2*(n+1)+6, 7)/144`
-/

namespace A394896.P1177109784360596825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((7 * (n + 1) : ℤ) * ((5 * (n + 1) : ℤ) - 3) + 4) * (Nat.choose (2 * (n + 1) + 6) 7 : ℤ) : ℚ) / 144

end

end A394896.P1177109784360596825

namespace A394896

/-- `(n+1)*(7*(n+1)*(5*(n+1)-3)+4)*C(2*(n+1)+6, 7)/144` -/
def P1177109784360596825.Spec : Prop :=
  ∀ n, P1177109784360596825.a n = (A394896 (n + 1) : ℚ)

end A394896

/-! ## A394896.P2662756544387131280

`(n+1)*A351105(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394896

/-- `(n+1)*A351105(n+1)` -/
def P2662756544387131280.Spec : Prop :=
  ∀ n, P2662756544387131280.a n = A394896 (n + 1)

theorem P2662756544387131280.correct : P2662756544387131280.Spec := by
  intro n
  simp only [A394896, Nat.add_sub_cancel]

end A394896

/-! ## A394896.P13393511764297083668

`∑[A394883(n+1)*(n+1)]*(n+1)`
-/

namespace A394896.P13393511764297083668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394883 (n + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℤ)

end

end A394896.P13393511764297083668

namespace A394896

/-- `∑[A394883(n+1)*(n+1)]*(n+1)` -/
def P13393511764297083668.Spec : Prop :=
  ∀ n, P13393511764297083668.a n = A394896 (n + 1)

end A394896

/-! ## A394896.P15443391294406472778

`Δ[A353021(n)]/(n+1)`
-/

namespace A394896.P15443391294406472778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353021 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A394896.P15443391294406472778

namespace A394896

/-- `Δ[A353021(n)]/(n+1)` -/
def P15443391294406472778.Spec : Prop :=
  ∀ n, P15443391294406472778.a n = (A394896 (n + 1) : ℚ)

end A394896

/-! ## A394896.P16792683843239342169

`A351105(1+n)*(n+1)`
-/

namespace A394896.P16792683843239342169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351105 (1 + n) * (n + 1 : ℤ)

end

end A394896.P16792683843239342169

namespace A394896

/-- `A351105(1+n)*(n+1)` -/
def P16792683843239342169.Spec : Prop :=
  ∀ n, P16792683843239342169.a n = A394896 (n + 1)

theorem P16792683843239342169.correct : P16792683843239342169.Spec := by
  intro n
  simp only [A394896, Nat.add_sub_cancel, A394896.P16792683843239342169.a, A394896.P2662756544387131280.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A394896

/-!
# A394898: Irregular triangle read by rows: T(n,k) = A027750(n,k) - 2*A027750(n,k-1) with 2 <= k <= A000005(n) and T(n,1) = 1.

The programs for A394898, there is no canonical definition to state claims against.
-/

/-! ## A394898.P14895765581218767147

`A132066(n+1)+A132066(n+1)-A027750(n+1)`
-/

namespace A394898.P14895765581218767147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132066 (n + 1) + (A132066 (n + 1) - A027750 (n + 1))

end

end A394898.P14895765581218767147

