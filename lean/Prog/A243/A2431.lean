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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A243101: a(n) = (sum_{k=0}^{n-1}(4*k^3-1)*C(n-1,k)*C(n+k,k))/n^2, where C(m,k) denotes the binomial coefficient m!/(k!*(m-k)!).

The programs for A243101, there is no canonical definition to state claims against.
-/

/-! ## A243101.P11998295883853733435

`n*A002002(n+1)-A026003(2*n)`
-/

namespace A243101.P11998295883853733435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002002 (n + 1) - A026003 (2 * n)

end

end A243101.P11998295883853733435

/-! ## A243101.P16901766486741859497

`n*A026003(2*n+1)-A026003(2*n)`
-/

namespace A243101.P16901766486741859497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026003 (2 * n + 1) - A026003 (2 * n)

end

end A243101.P16901766486741859497

/-!
# A243102: Numbers k such that the digits of (k + product of digits of k) are a nontrivial permutation of the digits of k.

The programs for A243102, there is no canonical definition to state claims against.
-/

/-! ## A243102.P10667229754645703547

`eq[A045503(n), A045512(A230099(n))]`
-/

namespace A243102.P10667229754645703547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243102.P10667229754645703547

/-! ## A243102.P14617115970601403770

`∩[A247888(n+1), A327750(n+4)]`
-/

namespace A243102.P14617115970601403770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327750 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243102.P14617115970601403770

/-! ## A243102.P14459916050071095809

`A247888(comp[(1-n^8)*A216580(n+1)])`
-/

namespace A243102.P14459916050071095809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n ^ 8 : ℤ)) * A216580 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247888 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A243102.P14459916050071095809

/-! ## A243102.P8434984261409884196

`A247888(C(A007294(n), A088201(n+1))+n+1)`
-/

namespace A243102.P8434984261409884196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247888 (Nat.choose (A007294 n).toNat (A088201 (n + 1)).toNat + (n + 1))

end

end A243102.P8434984261409884196

/-! ## A243102.P16276330666466958223

`A247888(A033621(n+1))`
-/

namespace A243102.P16276330666466958223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247888 (A033621 (n + 1)).toNat

end

end A243102.P16276330666466958223

/-!
# A243103: Product of numbers m with 2 <= m <= n whose prime divisors all divide n.

The programs for A243103, there is no canonical definition to state claims against.
-/

/-! ## A243103.P16328642934963960926

`A054494((n+1)^n)`
-/

namespace A243103.P16328642934963960926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054494 ((n + 1) ^ n)

end

end A243103.P16328642934963960926

/-! ## A243103.P13087544355173571167

`(n+1)*A269400(n^n)`
-/

namespace A243103.P13087544355173571167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A269400 (n ^ n)

end

end A243103.P13087544355173571167

/-!
# A243104: Odd numbers in A192274.

The programs for A243104, there is no canonical definition to state claims against.
-/

/-! ## A243104.P10581001494758941500

`A005231(A061603(n)+A007093(n))`
-/

namespace A243104.P10581001494758941500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (A061603 n + A007093 n).toNat

end

end A243104.P10581001494758941500

/-! ## A243104.P12842856505057024364

`A174865(A061603(n)+A007093(n))`
-/

namespace A243104.P12842856505057024364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (A061603 n + A007093 n).toNat

end

end A243104.P12842856505057024364

/-! ## A243104.P1421169983569523898

`A005231(record[A232451(n)])`
-/

namespace A243104.P1421169983569523898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243104.P1421169983569523898

/-! ## A243104.P13350138685312475100

`record[A005231(n+1)/A216084(n+1)]`
-/

namespace A243104.P13350138685312475100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005231 (n + 1) : ℚ) / (A216084 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243104.P13350138685312475100

/-!
# A243106: a(n) = Sum_{k=1..n} (-1)^isprime(k)*10^k.

The programs for A243106, there is no canonical definition to state claims against.
-/

/-! ## A243106.P4856759664915850496

`∑[(A007423(A284031(2*n))-1)*A011557(n+1)]`
-/

namespace A243106.P4856759664915850496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (A284031 (2 * n)).toNat - 1) * A011557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243106.P4856759664915850496

/-!
# A243107: Number of terms in a bordered skew determinant.

The programs for A243107, there is no canonical definition to state claims against.
-/

/-! ## A243107.P4961110966486529259

`A263102(A073789(n))+1`
-/

namespace A243107.P4961110966486529259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263102 (A073789 n).toNat + 1

end

end A243107.P4961110966486529259

/-! ## A243107.P4477281355558160838

`A154453(A263102(n)+1)`
-/

namespace A243107.P4477281355558160838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (A263102 n + 1).toNat

end

end A243107.P4477281355558160838

/-! ## A243107.P12351804881831634760

`A236836(A263102(n)+1)`
-/

namespace A243107.P12351804881831634760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 (A263102 n + 1).toNat

end

end A243107.P12351804881831634760

/-! ## A243107.P5062112289693234083

`A008619(2*A263102(n))`
-/

namespace A243107.P5062112289693234083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A263102 n).toNat

end

end A243107.P5062112289693234083

/-!
# A243108: Decimal expansion of the 5th du Bois-Reymond constant.

The programs for A243108, there is no canonical definition to state claims against.
-/

/-! ## A243108.P2735413570666123341

`A029731(gcd(A047889(n), A268448(n+1)))`
-/

namespace A243108.P2735413570666123341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029731 (Int.gcd (A047889 n) (A268448 (n + 1)))

end

end A243108.P2735413570666123341

/-!
# A243109: a(n) is the largest number smaller than n and having the same Hamming weight as n, or n if no such number exist.

The programs for A243109, the canonical program `A243109.P8775223338170402151` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243109 has offset 0).

The definition of A243109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243109.P8775223338170402151

`n-A171942(A062383(n)-n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A243109

/-- `n-A171942(A062383(n)-n)` -/
def P8775223338170402151.Spec : Prop :=
  ∀ n, P8775223338170402151.a n = A243109 n

theorem P8775223338170402151.correct : P8775223338170402151.Spec := by
  intro n
  simp only [A243109]

end A243109

/-! ## A243109.P3347774978968193553

`n-A171942(A003817(n)+1-n)`
-/

namespace A243109.P3347774978968193553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A171942 (A003817 n + (1 - (n : ℤ))).toNat

end

end A243109.P3347774978968193553

namespace A243109

/-- `n-A171942(A003817(n)+1-n)` -/
def P3347774978968193553.Spec : Prop :=
  ∀ n, P3347774978968193553.a n = A243109 n

end A243109

/-! ## A243109.P13434301096312812675

`n-A171942(1-A006257(n)+n)`
-/

namespace A243109.P13434301096312812675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A171942 (1 - A006257 n + (n : ℤ)).toNat

end

end A243109.P13434301096312812675

namespace A243109

/-- `n-A171942(1-A006257(n)+n)` -/
def P13434301096312812675.Spec : Prop :=
  ∀ n, P13434301096312812675.a n = A243109 n

end A243109

/-! ## A243109.P7403945863598292779

`abs(A171942(A062383(n)%(n+1)+1)+A001489(n))`
-/

namespace A243109.P7403945863598292779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171942 (Int.tmod (A062383 n) (n + 1 : ℤ) + 1).toNat + A001489 n|

end

end A243109.P7403945863598292779

namespace A243109

/-- `abs(A171942(A062383(n)%(n+1)+1)+A001489(n))` -/
def P7403945863598292779.Spec : Prop :=
  ∀ n, P7403945863598292779.a n = A243109 n

end A243109

/-! ## A243109.P2121981183573163851

`A263327(A263328(n)-A043545(n))`
-/

namespace A243109.P2121981183573163851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263327 (A263328 n - A043545 n).toNat

end

end A243109.P2121981183573163851

namespace A243109

/-- `A263327(A263328(n)-A043545(n))` -/
def P2121981183573163851.Spec : Prop :=
  ∀ n, P2121981183573163851.a n = A243109 n

end A243109

/-! ## A243109.P5825183297497524762

`n-A171941(n+1)`
-/

namespace A243109.P5825183297497524762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A171941 (n + 1)

end

end A243109.P5825183297497524762

namespace A243109

/-- `n-A171941(n+1)` -/
def P5825183297497524762.Spec : Prop :=
  ∀ n, P5825183297497524762.a n = A243109 n

end A243109

/-! ## A243109.P8619845101752452903

`abs(A171941(n+1)+A001489(n))`
-/

namespace A243109.P8619845101752452903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171941 (n + 1) + A001489 n|

end

end A243109.P8619845101752452903

namespace A243109

/-- `abs(A171941(n+1)+A001489(n))` -/
def P8619845101752452903.Spec : Prop :=
  ∀ n, P8619845101752452903.a n = A243109 n

end A243109

/-! ## A243109.P6002516084491332028

`(n*A016813(A171941(n+1)))%A016813(n)`
-/

namespace A243109.P6002516084491332028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A016813 (A171941 (n + 1)).toNat) (A016813 n)

end

end A243109.P6002516084491332028

namespace A243109

/-- `(n*A016813(A171941(n+1)))%A016813(n)` -/
def P6002516084491332028.Spec : Prop :=
  ∀ n, P6002516084491332028.a n = A243109 n

end A243109

/-!
# A243110: Records in A054471.

The programs for A243110, there is no canonical definition to state claims against.
-/

/-! ## A243110.P6262723610011967365

`A054471(record[A006556(n+3)])`
-/

namespace A243110.P6262723610011967365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006556 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054471 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243110.P6262723610011967365

/-! ## A243110.P14554824996418129708

`A054471(record[A060370((n+1)*n²%(n+1)+2)])`
-/

namespace A243110.P14554824996418129708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 ((n + 1) * (n ^ 2 % (n + 1)) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054471 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243110.P14554824996418129708

/-!
# A243111: Difference between the smallest triangular number >= n-th prime and the n-th prime.

The programs for A243111, the canonical program `A243111.P6016306481035327470` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243111 has offset 1).

The definition of A243111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243111.P10180566316359884288

`A057061(n+1)-1`
-/

namespace A243111.P10180566316359884288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057061 (n + 1) - 1

end

end A243111.P10180566316359884288

namespace A243111

/-- `A057061(n+1)-1` -/
def P10180566316359884288.Spec : Prop :=
  ∀ n, P10180566316359884288.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P964671455321528259

`A057062(n+1)-A057060(n+1)`
-/

namespace A243111.P964671455321528259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (n + 1) - A057060 (n + 1)

end

end A243111.P964671455321528259

namespace A243111

/-- `A057062(n+1)-A057060(n+1)` -/
def P964671455321528259.Spec : Prop :=
  ∀ n, P964671455321528259.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P6016306481035327470

`A000217(A057062(n+1))-A000040(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A243111

/-- `A000217(A057062(n+1))-A000040(n+1)` -/
def P6016306481035327470.Spec : Prop :=
  ∀ n, P6016306481035327470.a n = A243111 (n + 1)

theorem P6016306481035327470.correct : P6016306481035327470.Spec := by
  intro n
  simp only [A243111, Nat.add_sub_cancel]

end A243111

/-! ## A243111.P10743387812913618955

`val(A036561(A000040(n+1)-1), 2)`
-/

namespace A243111.P10743387812913618955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 (A000040 (n + 1) - 1).toNat).toNat 2

end

end A243111.P10743387812913618955

namespace A243111

/-- `val(A036561(A000040(n+1)-1), 2)` -/
def P10743387812913618955.Spec : Prop :=
  ∀ n, (P10743387812913618955.a n : ℤ) = A243111 (n + 1)

end A243111

/-! ## A243111.P4874532127681921062

`A057554(A100484(n+1))`
-/

namespace A243111.P4874532127681921062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A100484 (n + 1)).toNat

end

end A243111.P4874532127681921062

namespace A243111

/-- `A057554(A100484(n+1))` -/
def P4874532127681921062.Spec : Prop :=
  ∀ n, P4874532127681921062.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P10741143519313701867

`A057554(A001747(n+2))`
-/

namespace A243111.P10741143519313701867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A001747 (n + 2)).toNat

end

end A243111.P10741143519313701867

namespace A243111

/-- `A057554(A001747(n+2))` -/
def P10741143519313701867.Spec : Prop :=
  ∀ n, P10741143519313701867.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P542136686507773625

`A057554(2*A000040(n+1))`
-/

namespace A243111.P542136686507773625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * A000040 (n + 1)).toNat

end

end A243111.P542136686507773625

namespace A243111

/-- `A057554(2*A000040(n+1))` -/
def P542136686507773625.Spec : Prop :=
  ∀ n, P542136686507773625.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P6047415666954659708

`A057554(A000040(n+1)+A000040(n+1))`
-/

namespace A243111.P6047415666954659708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A243111.P6047415666954659708

namespace A243111

/-- `A057554(A000040(n+1)+A000040(n+1))` -/
def P6047415666954659708.Spec : Prop :=
  ∀ n, P6047415666954659708.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P7497438612701428049

`A025581(A006093(n+1))`
-/

namespace A243111.P7497438612701428049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A006093 (n + 1)).toNat

end

end A243111.P7497438612701428049

namespace A243111

/-- `A025581(A006093(n+1))` -/
def P7497438612701428049.Spec : Prop :=
  ∀ n, P7497438612701428049.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P12278887837219751717

`A004736(Δ[A007504(n)])-1`
-/

namespace A243111.P12278887837219751717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (n + 1) - f1 n).toNat - 1

end

end A243111.P12278887837219751717

namespace A243111

/-- `A004736(Δ[A007504(n)])-1` -/
def P12278887837219751717.Spec : Prop :=
  ∀ n, P12278887837219751717.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P12986837490567157443

`A025581(record[A000010(n+1)])`
-/

namespace A243111.P12986837490567157443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243111.P12986837490567157443

namespace A243111

/-- `A025581(record[A000010(n+1)])` -/
def P12986837490567157443.Spec : Prop :=
  ∀ n, P12986837490567157443.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P11604466405623715678

`A004736(record[A162753(n)])-1`
-/

namespace A243111.P11604466405623715678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A243111.P11604466405623715678

namespace A243111

/-- `A004736(record[A162753(n)])-1` -/
def P11604466405623715678.Spec : Prop :=
  ∀ n, P11604466405623715678.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P6730561307750800370

`A004736(p?[A014681(n)])-1`
-/

namespace A243111.P6730561307750800370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A243111.P6730561307750800370

namespace A243111

/-- `A004736(p?[A014681(n)])-1` -/
def P6730561307750800370.Spec : Prop :=
  ∀ n, P6730561307750800370.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P9887371516177134526

`A004736(p?[A143051(n)])-1`
-/

namespace A243111.P9887371516177134526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A243111.P9887371516177134526

namespace A243111

/-- `A004736(p?[A143051(n)])-1` -/
def P9887371516177134526.Spec : Prop :=
  ∀ n, P9887371516177134526.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P4913120761850457494

`A025581(A000040(n+1)-1)`
-/

namespace A243111.P4913120761850457494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000040 (n + 1) - 1).toNat

end

end A243111.P4913120761850457494

namespace A243111

/-- `A025581(A000040(n+1)-1)` -/
def P4913120761850457494.Spec : Prop :=
  ∀ n, P4913120761850457494.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P14077236400354498533

`A004736(A008578(n+2))-1`
-/

namespace A243111.P14077236400354498533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A008578 (n + 2)).toNat - 1

end

end A243111.P14077236400354498533

namespace A243111

/-- `A004736(A008578(n+2))-1` -/
def P14077236400354498533.Spec : Prop :=
  ∀ n, P14077236400354498533.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P5571714998828316069

`A025581(A008578(n+2)-1)`
-/

namespace A243111.P5571714998828316069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A008578 (n + 2) - 1).toNat

end

end A243111.P5571714998828316069

namespace A243111

/-- `A025581(A008578(n+2)-1)` -/
def P5571714998828316069.Spec : Prop :=
  ∀ n, P5571714998828316069.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P3721375788618428088

`A004736(A182986(n+2))-1`
-/

namespace A243111.P3721375788618428088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A182986 (n + 2)).toNat - 1

end

end A243111.P3721375788618428088

namespace A243111

/-- `A004736(A182986(n+2))-1` -/
def P3721375788618428088.Spec : Prop :=
  ∀ n, P3721375788618428088.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P468829735132046314

`A025581(eq[n, A000010(n+1)])`
-/

namespace A243111.P468829735132046314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243111.P468829735132046314

namespace A243111

/-- `A025581(eq[n, A000010(n+1)])` -/
def P468829735132046314.Spec : Prop :=
  ∀ n, P468829735132046314.a n = A243111 (n + 1)

end A243111

/-! ## A243111.P17601560046295810644

`A004736(record[A093074(n+1)])-1`
-/

namespace A243111.P17601560046295810644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A243111.P17601560046295810644

namespace A243111

/-- `A004736(record[A093074(n+1)])-1` -/
def P17601560046295810644.Spec : Prop :=
  ∀ n, P17601560046295810644.a n = A243111 (n + 1)

end A243111

/-!
# A243112: a(n) is the smallest number that requires at least n adjacent bit swaps in order to pack all the ones to the right.

The programs for A243112, there is no canonical definition to state claims against.
-/

/-! ## A243112.P9743184051959453481

`record[A292373(A335063(n))]`
-/

namespace A243112.P9743184051959453481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A335063 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243112.P9743184051959453481

/-! ## A243112.P6180871483282185752

`record[A292373(lcm(n+1, A001316(n)))]`
-/

namespace A243112.P6180871483282185752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (Int.lcm (n + 1 : ℤ) (A001316 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243112.P6180871483282185752

/-! ## A243112.P678706042616646957

`record[A292373((2*n+1)*A001316(n))]`
-/

namespace A243112.P678706042616646957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 ((2 * n + 1 : ℤ) * A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243112.P678706042616646957

/-! ## A243112.P5596596440482096715

`record[A292373(A001316(n)*A005408(n))]`
-/

namespace A243112.P5596596440482096715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A001316 n * A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243112.P5596596440482096715

/-! ## A243112.P6050688585328148084

`record[A292373(A001316(n)*A059009(n))]`
-/

namespace A243112.P6050688585328148084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A001316 n * A059009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243112.P6050688585328148084

/-!
# A243113: Minimum of the cube root of the largest element over all partitions of n into at most 5 cubes.

The programs for A243113, there is no canonical definition to state claims against.
-/

/-! ## A243113.P13986268968917432593

`A257212(A026414(n+2))%A331665(n+1)`
-/

namespace A243113.P13986268968917432593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257212 (A026414 (n + 2)).toNat) (A331665 (n + 1))

end

end A243113.P13986268968917432593

/-! ## A243113.P8333651192042190702

`A225541(or(A225559(2*(n+1)), A322407(2*n)))`
-/

namespace A243113.P8333651192042190702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (Int.lor (A225559 (2 * (n + 1))) (A322407 (2 * n))).toNat

end

end A243113.P8333651192042190702

/-!
# A243115: Starting values of the reduced Collatz function (A014682) where 2 to the power of the "dropping time" is greater than the starting value.

The programs for A243115, there is no canonical definition to state claims against.
-/

/-! ## A243115.P6239809790999756865

`lt[A000523(n+1), A126241(n+1)]+1`
-/

namespace A243115.P6239809790999756865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A243115.P6239809790999756865

/-! ## A243115.P12610235860753784240

`lt[A000523(n+1), A126241(A028310(n))]`
-/

namespace A243115.P12610235860753784240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243115.P12610235860753784240

/-! ## A243115.P14837458269992546878

`lt[A126237(n+3), A126241(n+1)]+1`
-/

namespace A243115.P14837458269992546878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126237 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A243115.P14837458269992546878

/-! ## A243115.P3177309371187252430

`lt[A126237(n+3), A126241(A028310(n))]`
-/

namespace A243115.P3177309371187252430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126237 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243115.P3177309371187252430

/-! ## A243115.P1729717154479981779

`lt[A303707(n+5), 2^val(n+1, 2)]`
-/

namespace A243115.P1729717154479981779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243115.P1729717154479981779

/-!
# A243116: a(n) = Sum_{k=0..n} C(n + 2*k, 3*k) * C(3*k, 2*k).

The programs for A243116, there is no canonical definition to state claims against.
-/

/-! ## A243116.P3948586743366942922

`A257365(A062725(n))`
-/

namespace A243116.P3948586743366942922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257365 (A062725 n).toNat

end

end A243116.P3948586743366942922

/-! ## A243116.P9395076243242084687

`A257365(A000217(3*n)+n)`
-/

namespace A243116.P9395076243242084687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257365 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A243116.P9395076243242084687

/-! ## A243116.P5864874305549033032

`A257365(A000124(3*n+1)-2*(n+1))`
-/

namespace A243116.P5864874305549033032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257365 (A000124 (3 * n + 1) - (2 * (n + 1) : ℤ)).toNat

end

end A243116.P5864874305549033032

/-! ## A243116.P1930182143458145872

`A257365(A002943(n)+A000217(n))`
-/

namespace A243116.P1930182143458145872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257365 (A002943 n + A000217 n).toNat

end

end A243116.P1930182143458145872

/-! ## A243116.P8992773264991460619

`A257365(A166136(5*n+1)-A166136(4*n+1))`
-/

namespace A243116.P8992773264991460619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257365 (A166136 (5 * n + 1) - A166136 (4 * n + 1)).toNat

end

end A243116.P8992773264991460619

/-!
# A243117: Possible values of A242962 in increasing order.

The programs for A243117, there is no canonical definition to state claims against.
-/

/-! ## A243117.P7963456565120693174

`eq[1, char[A242962(n+1)]]`
-/

namespace A243117.P7963456565120693174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242962 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243117.P7963456565120693174

/-! ## A243117.P15917406983339243988

`eq[1, char[∑{d}[n+1, #]%(A080572(n)+1)]]`
-/

namespace A243117.P15917406983339243988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ) (A080572 n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243117.P15917406983339243988

/-! ## A243117.P1741957864577379424

`comp[∪[A007369(n+1), A133257(n)]]`
-/

namespace A243117.P1741957864577379424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133257 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A243117.P1741957864577379424

/-! ## A243117.P18169372762614211516

`comp[∪[A007369(n+1), A063948(n+3)]]`
-/

namespace A243117.P18169372762614211516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063948 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A243117.P18169372762614211516

/-! ## A243117.P14333634915854658243

`comp[∪[A276705(2*n+1), A007369(n+1)]]`
-/

namespace A243117.P14333634915854658243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276705 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A243117.P14333634915854658243

/-! ## A243117.P5728993516380299042

`eq[1, char[A000203(n+1)%(A020492(n+1)-n)]]`
-/

namespace A243117.P5728993516380299042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A020492 (n + 1) - (n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243117.P5728993516380299042

/-!
# A243118: Numbers n such that A242962(x) = n has no solution.

The programs for A243118, there is no canonical definition to state claims against.
-/

/-! ## A243118.P10613286439846526262

`comp[A242962(n+1)]`
-/

namespace A243118.P10613286439846526262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A243118.P10613286439846526262

/-! ## A243118.P17449448956607488415

`comp[A243117(n+1)]`
-/

namespace A243118.P17449448956607488415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A243118.P17449448956607488415

/-! ## A243118.P8679928158508682671

`comp[A000203(n)-C(3, a(n-1))]` with `a(0)=6`
-/

namespace A243118.P8679928158508682671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A000203 n - (Nat.choose 3 (f1 (n - 1)).toNat : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A243118.P8679928158508682671

/-! ## A243118.P10540433870464972653

`comp[A355927(n-a(2%n))]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A243118.P10540433870464972653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 1, 1, 0] fun n f1 =>
  A355927 ((n : ℤ) - f1 (2 % n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A243118.P10540433870464972653

/-! ## A243118.P11807582162817528183

`comp[A000203(xor(2, n+2)+1)-1]+1`
-/

namespace A243118.P11807582162817528183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.xor 2 (n + 2) + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A243118.P11807582162817528183

/-! ## A243118.P6301388290022802673

`comp[A267587(n)+A039653(n)]`
-/

namespace A243118.P6301388290022802673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267587 n + A039653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A243118.P6301388290022802673

/-! ## A243118.P9903499371646270970

`∪[A007369(n+1), A062709(n)]`
-/

namespace A243118.P9903499371646270970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A243118.P9903499371646270970

/-! ## A243118.P7875299427609114338

`∪[A007369(n+1), A133257(n)]`
-/

namespace A243118.P7875299427609114338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A243118.P7875299427609114338

/-! ## A243118.P10787798862410219934

`comp[A000203(n+1)%A000032(n)]`
-/

namespace A243118.P10787798862410219934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000032 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A243118.P10787798862410219934

/-! ## A243118.P10417902747713309777

`comp[A000203(n+2)%A000124(n)]`
-/

namespace A243118.P10417902747713309777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) (A000124 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A243118.P10417902747713309777

/-!
# A243119: Number of compositions of n in which the maximal multiplicity of parts equals 2.

The programs for A243119, there is no canonical definition to state claims against.
-/

/-! ## A243119.P5154100728083250230

`A232432(n+2)-A032020(n+2)`
-/

namespace A243119.P5154100728083250230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232432 (n + 2) - A032020 (n + 2)

end

end A243119.P5154100728083250230

/-! ## A243119.P12893498365415446247

`A242447(∑[n+2]+3)`
-/

namespace A243119.P12893498365415446247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A243119.P12893498365415446247

/-! ## A243119.P5405569755036165309

`or(char[5], A242447(A340266(n+1)))`
-/

namespace A243119.P5405569755036165309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A242447 (A340266 (n + 1)).toNat)

end

end A243119.P5405569755036165309

/-! ## A243119.P15997923867141700482

`gcd(A000038(n), A242447(A340266(n+1)))`
-/

namespace A243119.P15997923867141700482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A242447 (A340266 (n + 1)).toNat)

end

end A243119.P15997923867141700482

/-! ## A243119.P7521647279201292046

`A242447(A340266(n+1))%A116310(n+1)`
-/

namespace A243119.P7521647279201292046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242447 (A340266 (n + 1)).toNat) (A116310 (n + 1))

end

end A243119.P7521647279201292046

/-! ## A243119.P12459050133557708140

`A007318(C(2, n))*A242447(A340266(n+1))`
-/

namespace A243119.P12459050133557708140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A242447 (A340266 (n + 1)).toNat

end

end A243119.P12459050133557708140

/-! ## A243119.P18256238599431475703

`A242447(A340266(n+1))+A000007(2*(n+1))`
-/

namespace A243119.P18256238599431475703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A340266 (n + 1)).toNat + A000007 (2 * (n + 1))

end

end A243119.P18256238599431475703

/-! ## A243119.P4100176517672541326

`A007318(A020639(2*(n+1)))*A242447(A340266(n+1))`
-/

namespace A243119.P4100176517672541326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 1))).toNat * A242447 (A340266 (n + 1)).toNat

end

end A243119.P4100176517672541326

/-!
# A243120: Number of compositions of n in which the maximal multiplicity of parts equals 3.

The programs for A243120, there is no canonical definition to state claims against.
-/

/-! ## A243120.P5652579845822546100

`A232464(n+3)-A232432(n+3)`
-/

namespace A243120.P5652579845822546100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232464 (n + 3) - A232432 (n + 3)

end

end A243120.P5652579845822546100

/-! ## A243120.P9001770174928547737

`A242447(A167614(n+2))`
-/

namespace A243120.P9001770174928547737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A167614 (n + 2)).toNat

end

end A243120.P9001770174928547737

/-! ## A243120.P3032595507997041601

`A242447(A052905(n)+8)`
-/

namespace A243120.P3032595507997041601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A052905 n + 8).toNat

end

end A243120.P3032595507997041601

/-! ## A243120.P9800449239423507102

`A242447(A055999(n)+9)`
-/

namespace A243120.P9800449239423507102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A055999 n + 9).toNat

end

end A243120.P9800449239423507102

/-! ## A243120.P14411615796185056672

`A242447(eq[3, A002262(n)])`
-/

namespace A243120.P14411615796185056672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243120.P14411615796185056672

/-! ## A243120.P9989208266542910627

`A242447(A340266(n+2)+1)`
-/

namespace A243120.P9989208266542910627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A340266 (n + 2) + 1).toNat

end

end A243120.P9989208266542910627

/-! ## A243120.P6229136032143014372

`A242447(A166136(n+2)-3)`
-/

namespace A243120.P6229136032143014372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A166136 (n + 2) - 3).toNat

end

end A243120.P6229136032143014372

/-! ## A243120.P15546460742285453779

`A242447(eq[2, A002260(n+1)-2])`
-/

namespace A243120.P15546460742285453779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243120.P15546460742285453779

/-! ## A243120.P11445141574654967823

`A242447(eq[2, A002260(n+1)/2])`
-/

namespace A243120.P11445141574654967823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A243120.P11445141574654967823

/-!
# A243121: Number of compositions of n in which the maximal multiplicity of parts equals 4.

The programs for A243121, there is no canonical definition to state claims against.
-/

/-! ## A243121.P10910309409237418418

`A243082(n+4)-A232464(n+4)`
-/

namespace A243121.P10910309409237418418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243082 (n + 4) - A232464 (n + 4)

end

end A243121.P10910309409237418418

/-! ## A243121.P11161171681188309772

`A242447(eq[4, A002262(n)])`
-/

namespace A243121.P11161171681188309772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243121.P11161171681188309772

/-! ## A243121.P14888917784527743184

`A242447(A167499(n+3)-1)`
-/

namespace A243121.P14888917784527743184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A167499 (n + 3) - 1).toNat

end

end A243121.P14888917784527743184

/-! ## A243121.P6331998761210803558

`A242447(A166136(n+3)-2)`
-/

namespace A243121.P6331998761210803558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A166136 (n + 3) - 2).toNat

end

end A243121.P6331998761210803558

/-! ## A243121.P10228839699164383817

`A242447(A000096(n+3)+5)`
-/

namespace A243121.P10228839699164383817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000096 (n + 3) + 5).toNat

end

end A243121.P10228839699164383817

/-! ## A243121.P5833994838175631182

`A242447(A034856(n+3)+6)`
-/

namespace A243121.P5833994838175631182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A034856 (n + 3) + 6).toNat

end

end A243121.P5833994838175631182

/-! ## A243121.P14460242943798188117

`A242447(A055998(n+2)+7)`
-/

namespace A243121.P14460242943798188117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A055998 (n + 2) + 7).toNat

end

end A243121.P14460242943798188117

/-! ## A243121.P18011023425961018557

`A242447(A016789(n+4)-A080956(n+2))`
-/

namespace A243121.P18011023425961018557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A016789 (n + 4) - A080956 (n + 2)).toNat

end

end A243121.P18011023425961018557

/-! ## A243121.P8691683448793555942

`A242447(A005843(n+6)-A080956(n+3))`
-/

namespace A243121.P8691683448793555942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A005843 (n + 6) - A080956 (n + 3)).toNat

end

end A243121.P8691683448793555942

/-!
# A243122: Number of compositions of n in which the maximal multiplicity of parts equals 5.

The programs for A243122, there is no canonical definition to state claims against.
-/

/-! ## A243122.P13994422634190666529

`A243083(n+5)-A243082(n+5)`
-/

namespace A243122.P13994422634190666529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243083 (n + 5) - A243082 (n + 5)

end

end A243122.P13994422634190666529

/-! ## A243122.P3155341722540761584

`A242447(A167499(n+4))`
-/

namespace A243122.P3155341722540761584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A167499 (n + 4)).toNat

end

end A243122.P3155341722540761584

/-! ## A243122.P8967933303781440140

`A242447(A166136(n+4)-1)`
-/

namespace A243122.P8967933303781440140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A166136 (n + 4) - 1).toNat

end

end A243122.P8967933303781440140

/-! ## A243122.P3058180233308493526

`A242447(A133263(n+5)+3)`
-/

namespace A243122.P3058180233308493526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A133263 (n + 5) + 3).toNat

end

end A243122.P3058180233308493526

/-! ## A243122.P11014186088303543791

`A242447(A000124(n+5)+4)`
-/

namespace A243122.P11014186088303543791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000124 (n + 5) + 4).toNat

end

end A243122.P11014186088303543791

/-! ## A243122.P6918956848717689100

`A242447(A000096(n+4)+6)`
-/

namespace A243122.P6918956848717689100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000096 (n + 4) + 6).toNat

end

end A243122.P6918956848717689100

/-! ## A243122.P9495995268083729225

`A242447(A046691(n+5)-A005843(n+2))`
-/

namespace A243122.P9495995268083729225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A046691 (n + 5) - A005843 (n + 2)).toNat

end

end A243122.P9495995268083729225

/-!
# A243123: Number of compositions of n in which the maximal multiplicity of parts equals 6.

The programs for A243123, there is no canonical definition to state claims against.
-/

/-! ## A243123.P4446387868208897639

`A243084(n+6)-A243083(n+6)`
-/

namespace A243123.P4446387868208897639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243084 (n + 6) - A243083 (n + 6)

end

end A243123.P4446387868208897639

/-! ## A243123.P1051713169394964584

`A242447(A166136(n+5))`
-/

namespace A243123.P1051713169394964584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A166136 (n + 5)).toNat

end

end A243123.P1051713169394964584

/-! ## A243123.P11677909276714869101

`A242447(A167499(n+5)+1)`
-/

namespace A243123.P11677909276714869101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A167499 (n + 5) + 1).toNat

end

end A243123.P11677909276714869101

/-! ## A243123.P9197971445015853729

`A242447(A000096(n+5)+7)`
-/

namespace A243123.P9197971445015853729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000096 (n + 5) + 7).toNat

end

end A243123.P9197971445015853729

/-! ## A243123.P11811751562181929830

`A242447(A000217(n+6)+6)`
-/

namespace A243123.P11811751562181929830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000217 (n + 6) + 6).toNat

end

end A243123.P11811751562181929830

/-! ## A243123.P2869185673749009470

`A242447(A005843(n+9)-A080956(n+5))`
-/

namespace A243123.P2869185673749009470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A005843 (n + 9) - A080956 (n + 5)).toNat

end

end A243123.P2869185673749009470

/-! ## A243123.P5680760750064337144

`A242447(A133263(n+15)-A017221(n+10))`
-/

namespace A243123.P5680760750064337144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A133263 (n + 15) - A017221 (n + 10)).toNat

end

end A243123.P5680760750064337144

/-!
# A243124: Number of compositions of n in which the maximal multiplicity of parts equals 7.

The programs for A243124, there is no canonical definition to state claims against.
-/

/-! ## A243124.P13666959501987854585

`A243085(n+7)-A243084(n+7)`
-/

namespace A243124.P13666959501987854585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243085 (n + 7) - A243084 (n + 7)

end

end A243124.P13666959501987854585

/-! ## A243124.P12393846307317775939

`A242447(A166136(n+6)+1)`
-/

namespace A243124.P12393846307317775939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A166136 (n + 6) + 1).toNat

end

end A243124.P12393846307317775939

/-! ## A243124.P737954510221270345

`A242447(A167499(n+6)+2)`
-/

namespace A243124.P737954510221270345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A167499 (n + 6) + 2).toNat

end

end A243124.P737954510221270345

/-! ## A243124.P3632594347371632260

`A242447(A000124(n+7)+6)`
-/

namespace A243124.P3632594347371632260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000124 (n + 7) + 6).toNat

end

end A243124.P3632594347371632260

/-! ## A243124.P13272186920932364617

`A242447(A000096(n+6)+8)`
-/

namespace A243124.P13272186920932364617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000096 (n + 6) + 8).toNat

end

end A243124.P13272186920932364617

/-! ## A243124.P6211013911808593624

`A242447(A046691(n+7)-A005843(n+3))`
-/

namespace A243124.P6211013911808593624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A046691 (n + 7) - A005843 (n + 3)).toNat

end

end A243124.P6211013911808593624

/-! ## A243124.P3680409915757300491

`A242447(A016789(n+8)-A080956(n+5))`
-/

namespace A243124.P3680409915757300491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A016789 (n + 8) - A080956 (n + 5)).toNat

end

end A243124.P3680409915757300491

/-!
# A243125: Number of compositions of n in which the maximal multiplicity of parts equals 8.

The programs for A243125, there is no canonical definition to state claims against.
-/

/-! ## A243125.P5102498009938373104

`A243086(n+8)-A243085(n+8)`
-/

namespace A243125.P5102498009938373104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243086 (n + 8) - A243085 (n + 8)

end

end A243125.P5102498009938373104

/-! ## A243125.P3214618257328922056

`A242447(A166136(n+7)+2)`
-/

namespace A243125.P3214618257328922056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A166136 (n + 7) + 2).toNat

end

end A243125.P3214618257328922056

/-! ## A243125.P18189752091278913236

`A242447(A000096(n+7)+9)`
-/

namespace A243125.P18189752091278913236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000096 (n + 7) + 9).toNat

end

end A243125.P18189752091278913236

/-! ## A243125.P11891483962420411617

`A242447(9-A080956(n+9))`
-/

namespace A243125.P11891483962420411617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (9 - A080956 (n + 9)).toNat

end

end A243125.P11891483962420411617

/-! ## A243125.P15706921070420167331

`A242447(A167499(n+5)+A005843(n+9))`
-/

namespace A243125.P15706921070420167331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A167499 (n + 5) + A005843 (n + 9)).toNat

end

end A243125.P15706921070420167331

/-!
# A243126: Number of compositions of n in which the maximal multiplicity of parts equals 9.

The programs for A243126, there is no canonical definition to state claims against.
-/

/-! ## A243126.P8471858797722124574

`A243087(n+9)-A243086(n+9)`
-/

namespace A243126.P8471858797722124574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243087 (n + 9) - A243086 (n + 9)

end

end A243126.P8471858797722124574

/-! ## A243126.P7049394049968161313

`A242447(A166136(n+8)+3)`
-/

namespace A243126.P7049394049968161313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A166136 (n + 8) + 3).toNat

end

end A243126.P7049394049968161313

/-! ## A243126.P8998820617118255655

`A242447(A000124(n+9)+8)`
-/

namespace A243126.P8998820617118255655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000124 (n + 9) + 8).toNat

end

end A243126.P8998820617118255655

/-! ## A243126.P11525009962065540955

`A242447(A000096(n+8)+10)`
-/

namespace A243126.P11525009962065540955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000096 (n + 8) + 10).toNat

end

end A243126.P11525009962065540955

/-! ## A243126.P15220086665782122365

`A242447(A046691(n+9)-A005843(n+4))`
-/

namespace A243126.P15220086665782122365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A046691 (n + 9) - A005843 (n + 4)).toNat

end

end A243126.P15220086665782122365

/-!
# A243127: Number of compositions of n in which the maximal multiplicity of parts equals 10.

The programs for A243127, there is no canonical definition to state claims against.
-/

/-! ## A243127.P7143484164914973785

`A243088(n+10)-A243087(n+10)`
-/

namespace A243127.P7143484164914973785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243088 (n + 10) - A243087 (n + 10)

end

end A243127.P7143484164914973785

/-! ## A243127.P4483885149842202846

`A242447(eq[10, A002262(n)])`
-/

namespace A243127.P4483885149842202846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243127.P4483885149842202846

/-! ## A243127.P1554833124668539288

`A242447(A133263(n+10)+8)`
-/

namespace A243127.P1554833124668539288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A133263 (n + 10) + 8).toNat

end

end A243127.P1554833124668539288

/-! ## A243127.P12042364979220882091

`A242447(A000217(n+10)+10)`
-/

namespace A243127.P12042364979220882091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000217 (n + 10) + 10).toNat

end

end A243127.P12042364979220882091

/-! ## A243127.P9904972583677076207

`A242447(eq[11, A002260(n+1)])`
-/

namespace A243127.P9904972583677076207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243127.P9904972583677076207

/-! ## A243127.P14229717807440752248

`A242447(A056000(n+8)-A004273(n+2))`
-/

namespace A243127.P14229717807440752248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A056000 (n + 8) - A004273 (n + 2)).toNat

end

end A243127.P14229717807440752248

/-!
# A243128: Squarefree numbers k such that 4k <= sum of squarefree divisors of 4k.

The programs for A243128, the canonical program `A243128.P17897595652621250645` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243128 has offset 1).

The definition of A243128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243128.P17897595652621250645

`filter[A389634(n+1), A323239(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A243128

/-- `filter[A389634(n+1), A323239(#)]` -/
def P17897595652621250645.Spec : Prop :=
  ∀ n, P17897595652621250645.a n = A243128 (n + 1)

theorem P17897595652621250645.correct : P17897595652621250645.Spec := by
  intro n
  simp only [A243128, Nat.add_sub_cancel]

end A243128

/-! ## A243128.P3416757281208699734

`∩[A056911(n+1), A389634(n+1)]`
-/

namespace A243128.P3416757281208699734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243128.P3416757281208699734

namespace A243128

/-- `∩[A056911(n+1), A389634(n+1)]` -/
def P3416757281208699734.Spec : Prop :=
  ∀ n, (P3416757281208699734.a n : ℤ) = A243128 (n + 1)

end A243128

/-! ## A243128.P12830516571882829216

`record[A204455(A129656(n+1))]`
-/

namespace A243128.P12830516571882829216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A129656 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243128.P12830516571882829216

namespace A243128

/-- `record[A204455(A129656(n+1))]` -/
def P12830516571882829216.Spec : Prop :=
  ∀ n, P12830516571882829216.a n = A243128 (n + 1)

end A243128

/-! ## A243128.P16509786801959611922

`record[A076109(A335215(n+1))]`
-/

namespace A243128.P16509786801959611922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076109 (A335215 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243128.P16509786801959611922

namespace A243128

/-- `record[A076109(A335215(n+1))]` -/
def P16509786801959611922.Spec : Prop :=
  ∀ n, P16509786801959611922.a n = A243128 (n + 1)

end A243128

/-! ## A243128.P1941141004153063526

`record[A204455(A335197(n+1))]`
-/

namespace A243128.P1941141004153063526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A335197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243128.P1941141004153063526

namespace A243128

/-- `record[A204455(A335197(n+1))]` -/
def P1941141004153063526.Spec : Prop :=
  ∀ n, P1941141004153063526.a n = A243128 (n + 1)

end A243128

/-! ## A243128.P7713294002975754273

`eq[A003557(2*(n+1)), A179527(2*(n+1))]+1`
-/

namespace A243128.P7713294002975754273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A243128.P7713294002975754273

namespace A243128

/-- `eq[A003557(2*(n+1)), A179527(2*(n+1))]+1` -/
def P7713294002975754273.Spec : Prop :=
  ∀ n, (P7713294002975754273.a n : ℤ) = A243128 (n + 1)

end A243128

/-! ## A243128.P11271399879669354958

`A078898(∩[A005117(n+1), A023196(n+1)])`
-/

namespace A243128.P11271399879669354958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A243128.P11271399879669354958

namespace A243128

/-- `A078898(∩[A005117(n+1), A023196(n+1)])` -/
def P11271399879669354958.Spec : Prop :=
  ∀ n, P11271399879669354958.a n = A243128 (n + 1)

end A243128

/-!
# A243129: a(n) = sigma(d(d(d(n)))), where d(n) is the number of divisors of n.

The programs for A243129, the canonical program `A243129.P17128912643122886576` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243129 has offset 1).

The definition of A243129 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243129.P17128912643122886576

`A000203(A000005(A000005(A000005(n+1))))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A243129

/-- `A000203(A000005(A000005(A000005(n+1))))` -/
def P17128912643122886576.Spec : Prop :=
  ∀ n, P17128912643122886576.a n = A243129 (n + 1)

theorem P17128912643122886576.correct : P17128912643122886576.Spec := by
  intro n
  simp only [A243129, Nat.add_sub_cancel]

end A243129

/-! ## A243129.P17470699756291240559

`∑{d}[∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1], #]`
-/

namespace A243129.P17470699756291240559
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A243129.P17470699756291240559

namespace A243129

/-- `∑{d}[∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1], #]` -/
def P17470699756291240559.Spec : Prop :=
  ∀ n, (P17470699756291240559.a n : ℤ) = A243129 (n + 1)

end A243129

/-! ## A243129.P11804753341508493307

`A000203(∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1])`
-/

namespace A243129.P11804753341508493307
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A243129.P11804753341508493307

namespace A243129

/-- `A000203(∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1])` -/
def P11804753341508493307.Spec : Prop :=
  ∀ n, P11804753341508493307.a n = A243129 (n + 1)

end A243129

/-! ## A243129.P3222810261476520888

`A062069(A010553(n+1))`
-/

namespace A243129.P3222810261476520888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (A010553 (n + 1)).toNat

end

end A243129.P3222810261476520888

namespace A243129

/-- `A062069(A010553(n+1))` -/
def P3222810261476520888.Spec : Prop :=
  ∀ n, P3222810261476520888.a n = A243129 (n + 1)

end A243129

/-! ## A243129.P6436030924804589350

`A062069(A000005(∏{e}[n+1, #+1]))`
-/

namespace A243129.P6436030924804589350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A243129.P6436030924804589350

namespace A243129

/-- `A062069(A000005(∏{e}[n+1, #+1]))` -/
def P6436030924804589350.Spec : Prop :=
  ∀ n, P6436030924804589350.a n = A243129 (n + 1)

end A243129

/-! ## A243129.P7864246946145438351

`A000203(A010553(A000005(n+1)))`
-/

namespace A243129.P7864246946145438351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A010553 (A000005 (n + 1)).toNat).toNat

end

end A243129.P7864246946145438351

namespace A243129

/-- `A000203(A010553(A000005(n+1)))` -/
def P7864246946145438351.Spec : Prop :=
  ∀ n, P7864246946145438351.a n = A243129 (n + 1)

end A243129

/-! ## A243129.P505919622451131959

`A163374(A173746(A010553(n+1)²))`
-/

namespace A243129.P505919622451131959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163374 (A173746 (A010553 (n + 1) ^ 2).toNat).toNat

end

end A243129.P505919622451131959

namespace A243129

/-- `A163374(A173746(A010553(n+1)²))` -/
def P505919622451131959.Spec : Prop :=
  ∀ n, P505919622451131959.a n = A243129 (n + 1)

end A243129

/-! ## A243129.P15457854541802654595

`A196337(A010553(n+1)%A345910(n+1))`
-/

namespace A243129.P15457854541802654595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (Int.tmod (A010553 (n + 1)) (A345910 (n + 1))).toNat

end

end A243129.P15457854541802654595

namespace A243129

/-- `A196337(A010553(n+1)%A345910(n+1))` -/
def P15457854541802654595.Spec : Prop :=
  ∀ n, P15457854541802654595.a n = A243129 (n + 1)

end A243129

/-!
# A243130: a(n) = 1024*n^10 - 2304*n^8 + 1792*n^6 - 560*n^4 + 60*n^2 - 1.

The programs for A243130, the canonical program `A243130.P9855249893936968093` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243130 has offset 0).

The definition of A243130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243130.P9855249893936968093

`A242850(n)²-A144139(n)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A243130

/-- `A242850(n)²-A144139(n)²` -/
def P9855249893936968093.Spec : Prop :=
  ∀ n, P9855249893936968093.a n = A243130 n

theorem P9855249893936968093.correct : P9855249893936968093.Spec := by
  intro n
  simp only [A243130]

end A243130

/-! ## A243130.P11831196647763090855

`2*n*A242854(n)-A242853(n)`
-/

namespace A243130.P11831196647763090855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A242854 n) - A242853 n

end

end A243130.P11831196647763090855

namespace A243130

/-- `2*n*A242854(n)-A242853(n)` -/
def P11831196647763090855.Spec : Prop :=
  ∀ n, P11831196647763090855.a n = A243130 n

end A243130

/-! ## A243130.P15811937607252917195

`A004277(n)*A242854(n)-A242853(n)`
-/

namespace A243130.P15811937607252917195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A242854 n - A242853 n

end

end A243130.P15811937607252917195

namespace A243130

/-- `A004277(n)*A242854(n)-A242853(n)` -/
def P15811937607252917195.Spec : Prop :=
  ∀ n, P15811937607252917195.a n = A243130 n

end A243130

/-! ## A243130.P6514011141816538276

`A005843(n)*A242854(n)-A242853(n)`
-/

namespace A243130.P6514011141816538276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A242854 n - A242853 n

end

end A243130.P6514011141816538276

namespace A243130

/-- `A005843(n)*A242854(n)-A242853(n)` -/
def P6514011141816538276.Spec : Prop :=
  ∀ n, P6514011141816538276.a n = A243130 n

end A243130

/-! ## A243130.P5818616609777611155

`A323182(eq[10, A002262(n)])`
-/

namespace A243130.P5818616609777611155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243130.P5818616609777611155

namespace A243130

/-- `A323182(eq[10, A002262(n)])` -/
def P5818616609777611155.Spec : Prop :=
  ∀ n, P5818616609777611155.a n = A243130 n

end A243130

/-! ## A243130.P3257957624124338325

`A228161(eq[10, A025581(n)])`
-/

namespace A243130.P3257957624124338325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243130.P3257957624124338325

namespace A243130

/-- `A228161(eq[10, A025581(n)])` -/
def P3257957624124338325.Spec : Prop :=
  ∀ n, P3257957624124338325.a n = A243130 n

end A243130

/-!
# A243131: a(n) = 16*n^5 - 20*n^3 + 5*n.

The programs for A243131, the canonical program `A243131.P1126220060452310471` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243131 has offset 0).

The definition of A243131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n^5-20*n^3+5*n` (program `A243131.P1126220060452310471`, by `A243131.P1126220060452310471.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243131.P16085329840261251497

`n*(16*n^4-20*n²+5)`
-/

namespace A243131.P16085329840261251497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((16 * n ^ 4 : ℤ) - (20 * n ^ 2 : ℤ) + 5)

end

end A243131.P16085329840261251497

namespace A243131

/-- `n*(16*n^4-20*n²+5)` -/
def P16085329840261251497.Spec : Prop :=
  ∀ n, P16085329840261251497.a n = A243131 n

theorem P16085329840261251497.correct : P16085329840261251497.Spec := by
  intro n
  simp only [A243131, Nat.add_sub_cancel, A243131.P16085329840261251497.a, A243131.P1126220060452310471.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A243131

/-! ## A243131.P1126220060452310471

`16*n^5-20*n^3+5*n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243131

/-- `16*n^5-20*n^3+5*n` -/
def P1126220060452310471.Spec : Prop :=
  ∀ n, P1126220060452310471.a n = A243131 n

theorem P1126220060452310471.correct : P1126220060452310471.Spec := by
  intro n
  simp only [A243131]

end A243131

/-! ## A243131.P16521595288186835209

`sqrt(A239610(n+1))`
-/

namespace A243131.P16521595288186835209
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239610 (n + 1) : ℝ)

end

end A243131.P16521595288186835209

namespace A243131

/-- `sqrt(A239610(n+1))` -/
def P16521595288186835209.Spec : Prop :=
  ∀ n, P16521595288186835209.a n = (A243131 n : ℝ)

end A243131

/-! ## A243131.P18227840659830486581

`A243135(n)%A242851(n)`
-/

namespace A243131.P18227840659830486581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243135 n) (A242851 n)

end

end A243131.P18227840659830486581

namespace A243131

/-- `A243135(n)%A242851(n)` -/
def P18227840659830486581.Spec : Prop :=
  ∀ n, P18227840659830486581.a n = A243131 n

end A243131

/-! ## A243131.P15467694725739539433

`(A242850(n)-A144138(n))/2`
-/

namespace A243131.P15467694725739539433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242850 n - A144138 n : ℚ) / 2

end

end A243131.P15467694725739539433

namespace A243131

/-- `(A242850(n)-A144138(n))/2` -/
def P15467694725739539433.Spec : Prop :=
  ∀ n, P15467694725739539433.a n = (A243131 n : ℚ)

end A243131

/-! ## A243131.P5050607991175897030

`A242854(n)/(2*A144139(n))`
-/

namespace A243131.P5050607991175897030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242854 n : ℚ) / (2 * A144139 n : ℚ)

end

end A243131.P5050607991175897030

namespace A243131

/-- `A242854(n)/(2*A144139(n))` -/
def P5050607991175897030.Spec : Prop :=
  ∀ n, P5050607991175897030.a n = (A243131 n : ℚ)

end A243131

/-! ## A243131.P10403804272561328727

`(A180355(2*n)-A244725(2*n))/2`
-/

namespace A243131.P10403804272561328727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180355 (2 * n) - A244725 (2 * n) : ℚ) / 2

end

end A243131.P10403804272561328727

namespace A243131

/-- `(A180355(2*n)-A244725(2*n))/2` -/
def P10403804272561328727.Spec : Prop :=
  ∀ n, P10403804272561328727.a n = (A243131 n : ℚ)

end A243131

/-!
# A243132: a(n) = 32*n^6 - 48*n^4 + 18*n^2 - 1.

The programs for A243132, the canonical program `A243132.P8155046282422744950` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243132 has offset 0).

The definition of A243132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*n^6-48*n^4+18*n²-1` (program `A243132.P8155046282422744950`, by `A243132.P8155046282422744950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243132.P8155046282422744950

`32*n^6-48*n^4+18*n²-1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243132

/-- `32*n^6-48*n^4+18*n²-1` -/
def P8155046282422744950.Spec : Prop :=
  ∀ n, P8155046282422744950.a n = A243132 n

theorem P8155046282422744950.correct : P8155046282422744950.Spec := by
  intro n
  simp only [A243132]

end A243132

/-! ## A243132.P4364594692108948748

`or(1, 2*A239608(n)-1)`
-/

namespace A243132.P4364594692108948748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A239608 n - 1)

end

end A243132.P4364594692108948748

namespace A243132

/-- `or(1, 2*A239608(n)-1)` -/
def P4364594692108948748.Spec : Prop :=
  ∀ n, P4364594692108948748.a n = A243132 n

end A243132

/-! ## A243132.P5421516008022881809

`(A242851(n)-A144139(n))/2`
-/

namespace A243132.P5421516008022881809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242851 n - A144139 n : ℚ) / 2

end

end A243132.P5421516008022881809

namespace A243132

/-- `(A242851(n)-A144139(n))/2` -/
def P5421516008022881809.Spec : Prop :=
  ∀ n, P5421516008022881809.a n = (A243132 n : ℚ)

end A243132

/-! ## A243132.P2188084434630627356

`xor(2*A239608(n)-1, n*A000007(n))`
-/

namespace A243132.P2188084434630627356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A239608 n - 1) ((n : ℤ) * A000007 n)

end

end A243132.P2188084434630627356

namespace A243132

/-- `xor(2*A239608(n)-1, n*A000007(n))` -/
def P2188084434630627356.Spec : Prop :=
  ∀ n, P2188084434630627356.a n = A243132 n

end A243132

/-! ## A243132.P7070405355336381487

`(2*A239608(n)-1)*A010052(A074927(n+2))`
-/

namespace A243132.P7070405355336381487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A239608 n - 1) * A010052 (A074927 (n + 2)).toNat

end

end A243132.P7070405355336381487

namespace A243132

/-- `(2*A239608(n)-1)*A010052(A074927(n+2))` -/
def P7070405355336381487.Spec : Prop :=
  ∀ n, P7070405355336381487.a n = A243132 n

end A243132

/-! ## A243132.P238637110591566335

`xor(2*A239608(n)-1, A242096(2*n))`
-/

namespace A243132.P238637110591566335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A239608 n - 1) (A242096 (2 * n))

end

end A243132.P238637110591566335

namespace A243132

/-- `xor(2*A239608(n)-1, A242096(2*n))` -/
def P238637110591566335.Spec : Prop :=
  ∀ n, P238637110591566335.a n = A243132 n

end A243132

/-! ## A243132.P15650827487206833896

`(2*A239608(n)-1)*A028920(2*n)`
-/

namespace A243132.P15650827487206833896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A239608 n - 1) * A028920 (2 * n)

end

end A243132.P15650827487206833896

namespace A243132

/-- `(2*A239608(n)-1)*A028920(2*n)` -/
def P15650827487206833896.Spec : Prop :=
  ∀ n, P15650827487206833896.a n = A243132 n

end A243132

/-! ## A243132.P6567820635366815511

`xor(2*A239608(n)-1, A010052(A004770(n+1)))`
-/

namespace A243132.P6567820635366815511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A239608 n - 1) (A010052 (A004770 (n + 1)).toNat)

end

end A243132.P6567820635366815511

namespace A243132

/-- `xor(2*A239608(n)-1, A010052(A004770(n+1)))` -/
def P6567820635366815511.Spec : Prop :=
  ∀ n, P6567820635366815511.a n = A243132 n

end A243132

/-! ## A243132.P10757198086419491016

`(2*A239608(n)-1)*A014963(A000217(n+6))`
-/

namespace A243132.P10757198086419491016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A239608 n - 1) * A014963 (A000217 (n + 6)).toNat

end

end A243132.P10757198086419491016

namespace A243132

/-- `(2*A239608(n)-1)*A014963(A000217(n+6))` -/
def P10757198086419491016.Spec : Prop :=
  ∀ n, P10757198086419491016.a n = A243132 n

end A243132

/-! ## A243132.P16025278479675395109

`A322836(A000124(n+7)-(n+2))`
-/

namespace A243132.P16025278479675395109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A000124 (n + 7) - (n + 2 : ℤ)).toNat

end

end A243132.P16025278479675395109

namespace A243132

/-- `A322836(A000124(n+7)-(n+2))` -/
def P16025278479675395109.Spec : Prop :=
  ∀ n, P16025278479675395109.a n = A243132 n

end A243132

/-!
# A243133: a(n) = 64*n^7 - 112*n^5 + 56*n^3 - 7*n.

The programs for A243133, the canonical program `A243133.P12419417258019103508` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243133 has offset 0).

The definition of A243133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*n^7-112*n^5+56*n^3-7*n` (program `A243133.P12419417258019103508`, by `A243133.P12419417258019103508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243133.P8106658579365984479

`n*(64*n^6-112*n^4+56*n²-7)`
-/

namespace A243133.P8106658579365984479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((64 * n ^ 6 : ℤ) - (112 * n ^ 4 : ℤ) + (56 * n ^ 2 : ℤ) - 7)

end

end A243133.P8106658579365984479

namespace A243133

/-- `n*(64*n^6-112*n^4+56*n²-7)` -/
def P8106658579365984479.Spec : Prop :=
  ∀ n, P8106658579365984479.a n = A243133 n

theorem P8106658579365984479.correct : P8106658579365984479.Spec := by
  intro n
  simp only [A243133, Nat.add_sub_cancel, A243133.P8106658579365984479.a, A243133.P12419417258019103508.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A243133

/-! ## A243133.P12419417258019103508

`64*n^7-112*n^5+56*n^3-7*n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243133

/-- `64*n^7-112*n^5+56*n^3-7*n` -/
def P12419417258019103508.Spec : Prop :=
  ∀ n, P12419417258019103508.a n = A243133 n

theorem P12419417258019103508.correct : P12419417258019103508.Spec := by
  intro n
  simp only [A243133]

end A243133

/-! ## A243133.P9061746935609537844

`(A242852(n)-A242850(n))/2`
-/

namespace A243133.P9061746935609537844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242852 n - A242850 n : ℚ) / 2

end

end A243133.P9061746935609537844

namespace A243133

/-- `(A242852(n)-A242850(n))/2` -/
def P9061746935609537844.Spec : Prop :=
  ∀ n, P9061746935609537844.a n = (A243133 n : ℚ)

end A243133

/-! ## A243133.P9209519538005244297

`A322836(A167614(n+6)+4)`
-/

namespace A243133.P9209519538005244297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A167614 (n + 6) + 4).toNat

end

end A243133.P9209519538005244297

namespace A243133

/-- `A322836(A167614(n+6)+4)` -/
def P9209519538005244297.Spec : Prop :=
  ∀ n, P9209519538005244297.a n = A243133 n

end A243133

/-!
# A243134: a(n) = 128*n^8 - 256*n^6 + 160*n^4 - 32*n^2 + 1.

The programs for A243134, the canonical program `A243134.P12248168087125228793` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243134 has offset 0).

The definition of A243134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `128*n^8-256*n^6+160*n^4-32*n²+1` (program `A243134.P12248168087125228793`, by `A243134.P12248168087125228793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243134.P12248168087125228793

`128*n^8-256*n^6+160*n^4-32*n²+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243134

/-- `128*n^8-256*n^6+160*n^4-32*n²+1` -/
def P12248168087125228793.Spec : Prop :=
  ∀ n, P12248168087125228793.a n = A243134 n

theorem P12248168087125228793.correct : P12248168087125228793.Spec := by
  intro n
  simp only [A243134]

end A243134

/-! ## A243134.P10868115965453397568

`(A242853(n)-A242851(n))/2`
-/

namespace A243134.P10868115965453397568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242853 n - A242851 n : ℚ) / 2

end

end A243134.P10868115965453397568

namespace A243134

/-- `(A242853(n)-A242851(n))/2` -/
def P10868115965453397568.Spec : Prop :=
  ∀ n, P10868115965453397568.a n = (A243134 n : ℚ)

end A243134

/-! ## A243134.P16300476105688787851

`A322836(eq[A136188(2*(n+2)), A144328(n+1)])`
-/

namespace A243134.P16300476105688787851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136188 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243134.P16300476105688787851

namespace A243134

/-- `A322836(eq[A136188(2*(n+2)), A144328(n+1)])` -/
def P16300476105688787851.Spec : Prop :=
  ∀ n, P16300476105688787851.a n = A243134 n

end A243134

/-! ## A243134.P1114135639378596791

`A144130(A056220(n)+A000038(n))`
-/

namespace A243134.P1114135639378596791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 (A056220 n + A000038 n).toNat

end

end A243134.P1114135639378596791

namespace A243134

/-- `A144130(A056220(n)+A000038(n))` -/
def P1114135639378596791.Spec : Prop :=
  ∀ n, P1114135639378596791.a n = A243134 n

end A243134

/-! ## A243134.P18233228134821473007

`A144130(A144130(n)%A000217(2*n+1))`
-/

namespace A243134.P18233228134821473007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 (Int.tmod (A144130 n) (A000217 (2 * n + 1))).toNat

end

end A243134.P18233228134821473007

namespace A243134

/-- `A144130(A144130(n)%A000217(2*n+1))` -/
def P18233228134821473007.Spec : Prop :=
  ∀ n, P18233228134821473007.a n = A243134 n

end A243134

/-!
# A243135: a(n) = 256*n^9 - 576*n^7 + 432*n^5 - 120*n^3 + 9*n.

The programs for A243135, the canonical program `A243135.P6989250433191465785` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243135 has offset 0).

The definition of A243135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `256*n^9-576*n^7+432*n^5-120*n^3+9*n` (program `A243135.P6989250433191465785`, by `A243135.P6989250433191465785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243135.P3132422485597942218

`n*(4*n²-3)*(64*n^6-96*n^4+36*n²-3)`
-/

namespace A243135.P3132422485597942218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((4 * n ^ 2 : ℤ) - 3) * ((64 * n ^ 6 : ℤ) - (96 * n ^ 4 : ℤ) + (36 * n ^ 2 : ℤ) - 3))

end

end A243135.P3132422485597942218

namespace A243135

/-- `n*(4*n²-3)*(64*n^6-96*n^4+36*n²-3)` -/
def P3132422485597942218.Spec : Prop :=
  ∀ n, P3132422485597942218.a n = A243135 n

theorem P3132422485597942218.correct : P3132422485597942218.Spec := by
  intro n
  simp only [A243135, Nat.add_sub_cancel, A243135.P3132422485597942218.a, A243135.P6989250433191465785.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A243135

/-! ## A243135.P6989250433191465785

`256*n^9-576*n^7+432*n^5-120*n^3+9*n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243135

/-- `256*n^9-576*n^7+432*n^5-120*n^3+9*n` -/
def P6989250433191465785.Spec : Prop :=
  ∀ n, P6989250433191465785.a n = A243135 n

theorem P6989250433191465785.correct : P6989250433191465785.Spec := by
  intro n
  simp only [A243135]

end A243135

/-! ## A243135.P14114976524662428381

`(A242854(n)-A242852(n))/2`
-/

namespace A243135.P14114976524662428381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242854 n - A242852 n : ℚ) / 2

end

end A243135.P14114976524662428381

namespace A243135

/-- `(A242854(n)-A242852(n))/2` -/
def P14114976524662428381.Spec : Prop :=
  ∀ n, P14114976524662428381.a n = (A243135 n : ℚ)

end A243135

/-! ## A243135.P9156515016284652648

`(A243136(n)+A243134(n))/A004277(n)`
-/

namespace A243135.P9156515016284652648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243136 n + A243134 n : ℚ) / (A004277 n : ℚ)

end

end A243135.P9156515016284652648

namespace A243135

/-- `(A243136(n)+A243134(n))/A004277(n)` -/
def P9156515016284652648.Spec : Prop :=
  ∀ n, P9156515016284652648.a n = (A243135 n : ℚ)

end A243135

/-!
# A243136: a(n) = 512*n^10 - 1280*n^8 + 1120*n^6 - 400*n^4 + 50*n^2 - 1.

The programs for A243136, the canonical program `A243136.P3137250249204498887` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243136 has offset 0).

The definition of A243136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243136.P3137250249204498887

`(2*n²-1)*(256*n^8-512*n^6+304*n^4-48*n²+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243136

/-- `(2*n²-1)*(256*n^8-512*n^6+304*n^4-48*n²+1)` -/
def P3137250249204498887.Spec : Prop :=
  ∀ n, P3137250249204498887.a n = A243136 n

theorem P3137250249204498887.correct : P3137250249204498887.Spec := by
  intro n
  simp only [A243136]

end A243136

/-! ## A243136.P13722790770074251050

`2*A243131(n)²-1`
-/

namespace A243136.P13722790770074251050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243131 n ^ 2 - 1

end

end A243136.P13722790770074251050

namespace A243136

/-- `2*A243131(n)²-1` -/
def P13722790770074251050.Spec : Prop :=
  ∀ n, P13722790770074251050.a n = A243136 n

end A243136

/-! ## A243136.P14199224350945964419

`2*A239610(n+1)-1`
-/

namespace A243136.P14199224350945964419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A239610 (n + 1) - 1

end

end A243136.P14199224350945964419

namespace A243136

/-- `2*A239610(n+1)-1` -/
def P14199224350945964419.Spec : Prop :=
  ∀ n, P14199224350945964419.a n = A243136 n

end A243136

/-! ## A243136.P1220571385756126542

`n*A242854(n)-A242853(n)`
-/

namespace A243136.P1220571385756126542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A242854 n - A242853 n

end

end A243136.P1220571385756126542

namespace A243136

/-- `n*A242854(n)-A242853(n)` -/
def P1220571385756126542.Spec : Prop :=
  ∀ n, P1220571385756126542.a n = A243136 n

end A243136

/-! ## A243136.P6690775673924571854

`A243130(n)-n*A242854(n)`
-/

namespace A243136.P6690775673924571854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243130 n - (n : ℤ) * A242854 n

end

end A243136.P6690775673924571854

namespace A243136

/-- `A243130(n)-n*A242854(n)` -/
def P6690775673924571854.Spec : Prop :=
  ∀ n, P6690775673924571854.a n = A243136 n

end A243136

/-! ## A243136.P5952228813359233542

`lcm(A001105(n), A239610(n+1))-1`
-/

namespace A243136.P5952228813359233542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001105 n) (A239610 (n + 1)) : ℤ) - 1

end

end A243136.P5952228813359233542

namespace A243136

/-- `lcm(A001105(n), A239610(n+1))-1` -/
def P5952228813359233542.Spec : Prop :=
  ∀ n, P5952228813359233542.a n = A243136 n

end A243136

/-! ## A243136.P17967586562910665619

`A239610(n+1)+A239610(n+1)-A001221(A027746(n+2))`
-/

namespace A243136.P17967586562910665619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239610 (n + 1) + (A239610 (n + 1) - A001221 (A027746 (n + 2)).toNat)

end

end A243136.P17967586562910665619

namespace A243136

/-- `A239610(n+1)+A239610(n+1)-A001221(A027746(n+2))` -/
def P17967586562910665619.Spec : Prop :=
  ∀ n, P17967586562910665619.a n = A243136 n

end A243136

/-! ## A243136.P1246276426617175312

`ratio[A262811(n)/A284628(n)]+2*A243131(n)²`
-/

namespace A243136.P1246276426617175312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262811 n : ℚ) / (A284628 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) / f1 n + (2 * A243131 n ^ 2 : ℚ)

end

end A243136.P1246276426617175312

namespace A243136

/-- `ratio[A262811(n)/A284628(n)]+2*A243131(n)²` -/
def P1246276426617175312.Spec : Prop :=
  ∀ n, P1246276426617175312.a n = (A243136 n : ℚ)

end A243136

/-!
# A243137: Primes encountered in A242902.

The programs for A243137, there is no canonical definition to state claims against.
-/

/-! ## A243137.P16912818243076284394

`A065091(eq[A194513(n+1), A202340(n)])`
-/

namespace A243137.P16912818243076284394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243137.P16912818243076284394

/-!
# A243138: a(n) = n^2 + 15*n + 13.

The programs for A243138, the canonical program `A243138.P3404544682023362109` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243138 has offset 0).

The definition of A243138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+15*n+13` (program `A243138.P3404544682023362109`, by `A243138.P3404544682023362109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243138.P3404544682023362109

`n²+15*n+13`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243138

/-- `n²+15*n+13` -/
def P3404544682023362109.Spec : Prop :=
  ∀ n, (P3404544682023362109.a n : ℤ) = A243138 n

theorem P3404544682023362109.correct : P3404544682023362109.Spec := by
  intro n
  simp only [A243138]

end A243138

/-! ## A243138.P12109439641805498943

`∑[a(n-1)+2]` with `a(0)=13, a(1)=16`
-/

namespace A243138.P12109439641805498943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 16] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P12109439641805498943

namespace A243138

/-- `∑[a(n-1)+2]` -/
def P12109439641805498943.Spec : Prop :=
  ∀ n, (P12109439641805498943.a n : ℤ) = A243138 n

end A243138

/-! ## A243138.P885637678201702602

`∑[record[xor(1, n+5)]+9]`
-/

namespace A243138.P885637678201702602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P885637678201702602

namespace A243138

/-- `∑[record[xor(1, n+5)]+9]` -/
def P885637678201702602.Spec : Prop :=
  ∀ n, (P885637678201702602.a n : ℤ) = A243138 n

end A243138

/-! ## A243138.P18162933644793757228

`∑[A103517(n)+12]`
-/

namespace A243138.P18162933644793757228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P18162933644793757228

namespace A243138

/-- `∑[A103517(n)+12]` -/
def P18162933644793757228.Spec : Prop :=
  ∀ n, P18162933644793757228.a n = A243138 n

end A243138

/-! ## A243138.P9267781815303436691

`∑[A242963(n+1)+n+8]`
-/

namespace A243138.P9267781815303436691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242963 (n + 1) + (n + 8 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P9267781815303436691

namespace A243138

/-- `∑[A242963(n+1)+n+8]` -/
def P9267781815303436691.Spec : Prop :=
  ∀ n, P9267781815303436691.a n = A243138 n

end A243138

/-! ## A243138.P14669412732498801540

`∑[A065475(n+1)+n+12]`
-/

namespace A243138.P14669412732498801540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + (n + 12 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P14669412732498801540

namespace A243138

/-- `∑[A065475(n+1)+n+12]` -/
def P14669412732498801540.Spec : Prop :=
  ∀ n, P14669412732498801540.a n = A243138 n

end A243138

/-! ## A243138.P875496588919983612

`∑[A087156(n+1)+n+13]`
-/

namespace A243138.P875496588919983612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + (n + 13 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P875496588919983612

namespace A243138

/-- `∑[A087156(n+1)+n+13]` -/
def P875496588919983612.Spec : Prop :=
  ∀ n, P875496588919983612.a n = A243138 n

end A243138

/-! ## A243138.P1617807523862539629

`∑[A155212(n)+12-A027379(n)]`
-/

namespace A243138.P1617807523862539629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n + 12 - A027379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P1617807523862539629

namespace A243138

/-- `∑[A155212(n)+12-A027379(n)]` -/
def P1617807523862539629.Spec : Prop :=
  ∀ n, P1617807523862539629.a n = A243138 n

end A243138

/-! ## A243138.P2614571319438033233

`Δ[A084990(n)+Δ[A033431(n)]]`
-/

namespace A243138.P2614571319438033233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243138.P2614571319438033233

namespace A243138

/-- `Δ[A084990(n)+Δ[A033431(n)]]` -/
def P2614571319438033233.Spec : Prop :=
  ∀ n, P2614571319438033233.a n = A243138 n

end A243138

/-! ## A243138.P11895582335837586573

`∑[A020735(n+5)-A057428(n)]`
-/

namespace A243138.P11895582335837586573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 5) - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P11895582335837586573

namespace A243138

/-- `∑[A020735(n+5)-A057428(n)]` -/
def P11895582335837586573.Spec : Prop :=
  ∀ n, P11895582335837586573.a n = A243138 n

end A243138

/-! ## A243138.P13932812910696905487

`∑[A000124(n+4)+3-A027379(n)]`
-/

namespace A243138.P13932812910696905487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 4) + 3 - A027379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P13932812910696905487

namespace A243138

/-- `∑[A000124(n+4)+3-A027379(n)]` -/
def P13932812910696905487.Spec : Prop :=
  ∀ n, P13932812910696905487.a n = A243138 n

end A243138

/-! ## A243138.P7682145327788082438

`∑[A020710(A009005(n+1))+A020710(n)]`
-/

namespace A243138.P7682145327788082438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A009005 (n + 1)).toNat + A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P7682145327788082438

namespace A243138

/-- `∑[A020710(A009005(n+1))+A020710(n)]` -/
def P7682145327788082438.Spec : Prop :=
  ∀ n, P7682145327788082438.a n = A243138 n

end A243138

/-! ## A243138.P2504218145510707669

`∑[A005843(n+7)-A000007(n)]`
-/

namespace A243138.P2504218145510707669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 7) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P2504218145510707669

namespace A243138

/-- `∑[A005843(n+7)-A000007(n)]` -/
def P2504218145510707669.Spec : Prop :=
  ∀ n, P2504218145510707669.a n = A243138 n

end A243138

/-! ## A243138.P14347927959184613692

`∑[A005843(n+8)-A020639(A000040(n+1)+1)]`
-/

namespace A243138.P14347927959184613692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 8) - A020639 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P14347927959184613692

namespace A243138

/-- `∑[A005843(n+8)-A020639(A000040(n+1)+1)]` -/
def P14347927959184613692.Spec : Prop :=
  ∀ n, P14347927959184613692.a n = A243138 n

end A243138

/-! ## A243138.P10748239328797454307

`∑[record[A131452(n+11)]]`
-/

namespace A243138.P10748239328797454307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243138.P10748239328797454307

namespace A243138

/-- `∑[record[A131452(n+11)]]` -/
def P10748239328797454307.Spec : Prop :=
  ∀ n, P10748239328797454307.a n = A243138 n

end A243138

/-!
# A243139: a(n) = 2^prime(n) + prime(n).

The programs for A243139, there is no canonical definition to state claims against.
-/

/-! ## A243139.P1922963773018677879

`record[∑{p}[n+2, 2^#+#]]`
-/

namespace A243139.P1922963773018677879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (2 ^ p + p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243139.P1922963773018677879

/-! ## A243139.P12107941167937577901

`∑{p}[A000040(n+1), 2^#+#]`
-/

namespace A243139.P12107941167937577901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 ^ p + p)

end

end A243139.P12107941167937577901

/-! ## A243139.P11471399998623550562

`record[2^A006530(n+2)+n+2]`
-/

namespace A243139.P11471399998623550562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006530 (n + 2) : ℤ) + (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243139.P11471399998623550562

/-! ## A243139.P17099317408230018731

`record[2^A020639(n+2)+n+2]`
-/

namespace A243139.P17099317408230018731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A020639 (n + 2) : ℤ) + (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243139.P17099317408230018731

/-! ## A243139.P13925341831305331537

`A006127(A000040(n+1))`
-/

namespace A243139.P13925341831305331537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 (A000040 (n + 1)).toNat

end

end A243139.P13925341831305331537

/-! ## A243139.P6304922142678889855

`A006127(record[A006530(n+2)])`
-/

namespace A243139.P6304922142678889855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243139.P6304922142678889855

/-! ## A243139.P3175206629361766595

`A006127(record[A020639(n+2)])`
-/

namespace A243139.P3175206629361766595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243139.P3175206629361766595

/-! ## A243139.P1089300308383734971

`A188917(2*A000040(n+1))`
-/

namespace A243139.P1089300308383734971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 (2 * A000040 (n + 1)).toNat

end

end A243139.P1089300308383734971

/-! ## A243139.P3897964738994427445

`A006127(A095116(n+1)-n)`
-/

namespace A243139.P3897964738994427445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 (A095116 (n + 1) - (n : ℤ)).toNat

end

end A243139.P3897964738994427445

/-! ## A243139.P16808965664167102865

`A008864(n+1)+A001348(n+1)`
-/

namespace A243139.P16808965664167102865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A001348 (n + 1)

end

end A243139.P16808965664167102865

/-!
# A243142: Number of inequivalent (mod D_3) ways to place 3 points on a triangular grid of side n so that they are not vertices of an equilateral triangle of any orientation.

The programs for A243142, there is no canonical definition to state claims against.
-/

/-! ## A243142.P14227333113149165863

`A372511(A052459(n+1))`
-/

namespace A243142.P14227333113149165863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372511 (A052459 (n + 1)).toNat

end

end A243142.P14227333113149165863

/-!
# A243145: Least positive number k such that n+k and n+k^2 are both prime.

The programs for A243145, there is no canonical definition to state claims against.
-/

/-! ## A243145.P15133147241076211028

`∏{e}[A000079(n)-1, #!]*A085099(n+1)`
-/

namespace A243145.P15133147241076211028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) * A085099 (n + 1)

end

end A243145.P15133147241076211028

/-! ## A243145.P12055059337390576149

`gcd(A074324(n), A151886(A000792(n)))`
-/

namespace A243145.P12055059337390576149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074324 n) (A151886 (A000792 n).toNat)

end

end A243145.P12055059337390576149

/-! ## A243145.P4578294419883554034

`gcd(Δ[A167427(3*n+2)], A167401(n+2))`
-/

namespace A243145.P4578294419883554034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167427 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A167401 (n + 2))

end

end A243145.P4578294419883554034

/-! ## A243145.P788052028788302520

`A085099(n+1)^A001511(A001060(n))`
-/

namespace A243145.P788052028788302520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085099 (n + 1) : ℚ) ^ (A001511 (A001060 n).toNat : ℤ)

end

end A243145.P788052028788302520

/-! ## A243145.P3657849715351273635

`A085099(n+1)^A001511(A020695(n))`
-/

namespace A243145.P3657849715351273635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085099 (n + 1) : ℚ) ^ (A001511 (A020695 n).toNat : ℤ)

end

end A243145.P3657849715351273635

/-!
# A243146: a(n) = smallest number k such that n+k, n+k^2 and n+k^4 are all prime, or 0 if no such k exists.

The programs for A243146, there is no canonical definition to state claims against.
-/

/-! ## A243146.P14683953225483197741

`A225766(n+1)*A300410(A300442(n))`
-/

namespace A243146.P14683953225483197741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225766 (n + 1) * A300410 (A300442 n).toNat

end

end A243146.P14683953225483197741

/-! ## A243146.P1646289554470847662

`A000005(A033630(n))*A225766(A187829(n+1))`
-/

namespace A243146.P1646289554470847662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A033630 n).toNat * A225766 (A187829 (n + 1)).toNat

end

end A243146.P1646289554470847662

/-! ## A243146.P16048221187147097048

`A007318(A049085(n+1))*A225766(A187829(n+1))`
-/

namespace A243146.P16048221187147097048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A049085 (n + 1)).toNat * A225766 (A187829 (n + 1)).toNat

end

end A243146.P16048221187147097048

/-! ## A243146.P2972479454410854274

`A001221(A066481(n+3))*A225766(A187829(n+1))`
-/

namespace A243146.P2972479454410854274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A066481 (n + 3)).toNat * A225766 (A187829 (n + 1)).toNat

end

end A243146.P2972479454410854274

/-! ## A243146.P7453945427794266055

`A225766(A187829(n+1))^A001222(A231557(n+1))`
-/

namespace A243146.P7453945427794266055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225766 (A187829 (n + 1)).toNat : ℚ) ^ (A001222 (A231557 (n + 1)).toNat : ℤ)

end

end A243146.P7453945427794266055

/-!
# A243148: Triangle read by rows: T(n,k) = number of partitions of n into k nonzero squares; n >= 0, 0 <= k <= n.

The programs for A243148, there is no canonical definition to state claims against.
-/

/-! ## A243148.P12550121297999636095

`ceil(A337165(n)/A165493(n+1))`
-/

namespace A243148.P12550121297999636095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337165 n : ℚ) / (A165493 (n + 1) : ℚ)⌉

end

end A243148.P12550121297999636095

/-! ## A243148.P830568120269257976

`ceil(A337165(n)/A178968(n+1))`
-/

namespace A243148.P830568120269257976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337165 n : ℚ) / (A178968 (n + 1) : ℚ)⌉

end

end A243148.P830568120269257976

/-! ## A243148.P15057709599619024556

`A057427(A337165(n)%A165493(n+1))`
-/

namespace A243148.P15057709599619024556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.tmod (A337165 n) (A165493 (n + 1))).toNat

end

end A243148.P15057709599619024556

/-! ## A243148.P12630861727059286879

`ceil(A337165(n)/A000290(A218038(n+1)))`
-/

namespace A243148.P12630861727059286879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337165 n : ℚ) / (A000290 (A218038 (n + 1)).toNat : ℚ)⌉

end

end A243148.P12630861727059286879

/-! ## A243148.P17928074874406875776

`A057427(lcm(A122180(n+1)!, A337165(n)))`
-/

namespace A243148.P17928074874406875776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.lcm (Nat.factorial (A122180 (n + 1)).toNat : ℤ) (A337165 n))

end

end A243148.P17928074874406875776

/-! ## A243148.P7151060288221910930

`A178334(A337165(n))^A210891(A133265(n))`
-/

namespace A243148.P7151060288221910930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178334 (A337165 n).toNat : ℚ) ^ (A210891 (A133265 n).toNat : ℤ)

end

end A243148.P7151060288221910930

/-! ## A243148.P7521927162254570932

`ceil(A337165(n)/A081363(n+1))`
-/

namespace A243148.P7521927162254570932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337165 n : ℚ) / (A081363 (n + 1) : ℚ)⌉

end

end A243148.P7521927162254570932

/-! ## A243148.P3896348035525438552

`ceil(A337165(n)/A210891(n+1))`
-/

namespace A243148.P3896348035525438552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337165 n : ℚ) / (A210891 (n + 1) : ℚ)⌉

end

end A243148.P3896348035525438552

/-! ## A243148.P1884252052280929236

`A178334(A337165(n))^A210891(A000027(n+1))`
-/

namespace A243148.P1884252052280929236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178334 (A337165 n).toNat : ℚ) ^ (A210891 (A000027 (n + 1)).toNat : ℤ)

end

end A243148.P1884252052280929236

/-! ## A243148.P10296015878114179923

`ceil(A337165(n)/A090116(n+1))`
-/

namespace A243148.P10296015878114179923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337165 n : ℚ) / (A090116 (n + 1) : ℚ)⌉

end

end A243148.P10296015878114179923

/-! ## A243148.P514058474768379729

`ceil(A337165(n)/A284660(n+1))`
-/

namespace A243148.P514058474768379729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337165 n : ℚ) / (A284660 (n + 1) : ℚ)⌉

end

end A243148.P514058474768379729

/-! ## A243148.P18233902613376147180

`A292438(gcd(A306787(n+1), A337165(n)))`
-/

namespace A243148.P18233902613376147180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (Int.gcd (A306787 (n + 1)) (A337165 n))

end

end A243148.P18233902613376147180

/-! ## A243148.P17451197791066770727

`ceil(A337165(n)/A206042(n+1))`
-/

namespace A243148.P17451197791066770727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337165 n : ℚ) / (A206042 (n + 1) : ℚ)⌉

end

end A243148.P17451197791066770727

/-! ## A243148.P17635820993128585199

`1-A000007(A337165(n)²)`
-/

namespace A243148.P17635820993128585199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A337165 n ^ 2).toNat

end

end A243148.P17635820993128585199

/-!
# A243150: Least number k > 0 such that 2^k contains an n-digit long substring of the infinite string "0123456789012345678901234567890123456....".

The programs for A243150, there is no canonical definition to state claims against.
-/

/-! ## A243150.P15735195755507735761

`A350690(A037674(n+1))`
-/

namespace A243150.P15735195755507735761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350690 (A037674 (n + 1)).toNat

end

end A243150.P15735195755507735761

/-!
# A243153: Larger of two consecutive primes whose difference is a semiprime.

The programs for A243153, the canonical program `A243153.P14285789888496236515` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243153 has offset 1).

The definition of A243153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243153.P5778225201525378650

`A098013(n+1)+A058620(n+1)`
-/

namespace A243153.P5778225201525378650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098013 (n + 1) + A058620 (n + 1)

end

end A243153.P5778225201525378650

namespace A243153

/-- `A098013(n+1)+A058620(n+1)` -/
def P5778225201525378650.Spec : Prop :=
  ∀ n, P5778225201525378650.a n = A243153 (n + 1)

end A243153

/-! ## A243153.P14285789888496236515

`A045319(A098015(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A243153

/-- `A045319(A098015(n+1))` -/
def P14285789888496236515.Spec : Prop :=
  ∀ n, P14285789888496236515.a n = A243153 (n + 1)

theorem P14285789888496236515.correct : P14285789888496236515.Spec := by
  intro n
  simp only [A243153, Nat.add_sub_cancel]

end A243153

/-! ## A243153.P13906248017824150853

`A000040(A098015(n+1)+1)`
-/

namespace A243153.P13906248017824150853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098015 (n + 1) + 1).toNat

end

end A243153.P13906248017824150853

namespace A243153

/-- `A000040(A098015(n+1)+1)` -/
def P13906248017824150853.Spec : Prop :=
  ∀ n, P13906248017824150853.a n = A243153 (n + 1)

end A243153

/-! ## A243153.P3410526203575481424

`A000040(eq[2, A001222(A001223(n+1))]+2)`
-/

namespace A243153.P3410526203575481424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A243153.P3410526203575481424

namespace A243153

/-- `A000040(eq[2, A001222(A001223(n+1))]+2)` -/
def P3410526203575481424.Spec : Prop :=
  ∀ n, P3410526203575481424.a n = A243153 (n + 1)

end A243153

/-! ## A243153.P12561207694706806849

`A151800(A058620(n+1))`
-/

namespace A243153.P12561207694706806849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A058620 (n + 1)).toNat

end

end A243153.P12561207694706806849

namespace A243153

/-- `A151800(A058620(n+1))` -/
def P12561207694706806849.Spec : Prop :=
  ∀ n, P12561207694706806849.a n = A243153 (n + 1)

end A243153

/-! ## A243153.P15966078079878150002

`p?[(n+1)*(A001222(A166597(n))-1)]`
-/

namespace A243153.P15966078079878150002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001222 (A166597 n).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243153.P15966078079878150002

namespace A243153

/-- `p?[(n+1)*(A001222(A166597(n))-1)]` -/
def P15966078079878150002.Spec : Prop :=
  ∀ n, P15966078079878150002.a n = A243153 (n + 1)

end A243153

/-! ## A243153.P16997599196156147559

`A151800(A225461(n+1))`
-/

namespace A243153.P16997599196156147559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A225461 (n + 1)).toNat

end

end A243153.P16997599196156147559

namespace A243153

/-- `A151800(A225461(n+1))` -/
def P16997599196156147559.Spec : Prop :=
  ∀ n, P16997599196156147559.a n = A243153 (n + 1)

end A243153

/-! ## A243153.P6416084113904893113

`2*A225461(n+1)-A058620(n+1)`
-/

namespace A243153.P6416084113904893113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225461 (n + 1) - A058620 (n + 1)

end

end A243153.P6416084113904893113

namespace A243153

/-- `2*A225461(n+1)-A058620(n+1)` -/
def P6416084113904893113.Spec : Prop :=
  ∀ n, P6416084113904893113.a n = A243153 (n + 1)

end A243153

/-! ## A243153.P15464552415149135702

`A000040(A000720(A225461(n+1))+1)`
-/

namespace A243153.P15464552415149135702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A225461 (n + 1)).toNat + 1).toNat

end

end A243153.P15464552415149135702

namespace A243153

/-- `A000040(A000720(A225461(n+1))+1)` -/
def P15464552415149135702.Spec : Prop :=
  ∀ n, P15464552415149135702.a n = A243153 (n + 1)

end A243153

/-! ## A243153.P5875521600389193383

`A007918(A225461(n+1)+1)`
-/

namespace A243153.P5875521600389193383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A225461 (n + 1) + 1).toNat

end

end A243153.P5875521600389193383

namespace A243153

/-- `A007918(A225461(n+1)+1)` -/
def P5875521600389193383.Spec : Prop :=
  ∀ n, P5875521600389193383.a n = A243153 (n + 1)

end A243153

/-! ## A243153.P16943570650209423980

`A000040(A324733(A058620(n+1))+1)`
-/

namespace A243153.P16943570650209423980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A324733 (A058620 (n + 1)).toNat + 1).toNat

end

end A243153.P16943570650209423980

namespace A243153

/-- `A000040(A324733(A058620(n+1))+1)` -/
def P16943570650209423980.Spec : Prop :=
  ∀ n, P16943570650209423980.a n = A243153 (n + 1)

end A243153

/-! ## A243153.P1647765661003838193

`A225461(n+1)+A098014(n+1)`
-/

namespace A243153.P1647765661003838193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225461 (n + 1) + A098014 (n + 1)

end

end A243153.P1647765661003838193

namespace A243153

/-- `A225461(n+1)+A098014(n+1)` -/
def P1647765661003838193.Spec : Prop :=
  ∀ n, P1647765661003838193.a n = A243153 (n + 1)

end A243153

/-! ## A243153.P3866641844564806000

`A058620(n+1)+2*A098014(n+1)`
-/

namespace A243153.P3866641844564806000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058620 (n + 1) + 2 * A098014 (n + 1)

end

end A243153.P3866641844564806000

namespace A243153

/-- `A058620(n+1)+2*A098014(n+1)` -/
def P3866641844564806000.Spec : Prop :=
  ∀ n, P3866641844564806000.a n = A243153 (n + 1)

end A243153

/-!
# A243154: Smallest k>=0 such that prime(n)*prime(n+k)-2 is prime.

The programs for A243154, there is no canonical definition to state claims against.
-/

/-! ## A243154.P9020942294164894396

`A010877(lcm(A293609(n), A293638(n)))`
-/

namespace A243154.P9020942294164894396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (Int.lcm (A293609 n) (A293638 n))

end

end A243154.P9020942294164894396

/-! ## A243154.P11707774931568401266

`A095278(A000369(n+1))%A040029(n)`
-/

namespace A243154.P11707774931568401266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095278 (A000369 (n + 1)).toNat) (A040029 n)

end

end A243154.P11707774931568401266

/-! ## A243154.P6582037693550526830

`A001414(gcd(A078457(3*n+1), A316538(2*n+3)))`
-/

namespace A243154.P6582037693550526830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.gcd (A078457 (3 * n + 1)) (A316538 (2 * n + 3)))

end

end A243154.P6582037693550526830

/-! ## A243154.P18071076273017263646

`A334153(A126286(n+2))`
-/

namespace A243154.P18071076273017263646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334153 (A126286 (n + 2)).toNat

end

end A243154.P18071076273017263646

/-! ## A243154.P4378846903071032959

`A055999(A000079(n))%A104633(n+1)`
-/

namespace A243154.P4378846903071032959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055999 (A000079 n).toNat) (A104633 (n + 1))

end

end A243154.P4378846903071032959

/-!
# A243155: Larger of two consecutive primes whose positive difference is a cube.

The programs for A243155, there is no canonical definition to state claims against.
-/

/-! ## A243155.P2649358041731916942

`p?[A065091(n+1)*A112695(A001223(n+1))]`
-/

namespace A243155.P2649358041731916942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A112695 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243155.P2649358041731916942

/-! ## A243155.P9116274035819344865

`∩[A242256(n+1), A396340(n+1)]`
-/

namespace A243155.P9116274035819344865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243155.P9116274035819344865

/-! ## A243155.P7409367240031702462

`record[A110560(A130038(n+1)%A134100(n+1))]`
-/

namespace A243155.P7409367240031702462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (Int.tmod (A130038 (n + 1)) (A134100 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243155.P7409367240031702462

/-! ## A243155.P1039646994279743666

`p?[A073830(A024675(n+1))%A001632(n+1)]`
-/

namespace A243155.P1039646994279743666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073830 (A024675 (n + 1)).toNat) (A001632 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243155.P1039646994279743666

/-!
# A243156: G.f. satisfies: x = A(x) * (1 - A(x)) / (1 - A(x) - A(x)^3) such that A(0) = 1.

The programs for A243156, there is no canonical definition to state claims against.
-/

/-! ## A243156.P13302402318691674375

`A148837(n)+A048485(A148837(n))`
-/

namespace A243156.P13302402318691674375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148837 n + A048485 (A148837 n).toNat

end

end A243156.P13302402318691674375

/-! ## A243156.P10605988099129364896

`A367467(A149864(n))`
-/

namespace A243156.P10605988099129364896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367467 (A149864 n).toNat

end

end A243156.P10605988099129364896

/-! ## A243156.P6208754931628117444

`A367467(A149865(n))`
-/

namespace A243156.P6208754931628117444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367467 (A149865 n).toNat

end

end A243156.P6208754931628117444

/-!
# A243158: Smallest k>=0 such that prime(n)*prime(n+k) + 2 is prime.

The programs for A243158, there is no canonical definition to state claims against.
-/

/-! ## A243158.P13781414733641214791

`A000720(A244570(n+2))-(n+2)`
-/

namespace A243158.P13781414733641214791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A244570 (n + 2)).toNat - (n + 2 : ℤ)

end

end A243158.P13781414733641214791

/-! ## A243158.P9453481622588031785

`A084360(A244570(n+2))-n`
-/

namespace A243158.P9453481622588031785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A244570 (n + 2)).toNat - (n : ℤ)

end

end A243158.P9453481622588031785

/-! ## A243158.P8131039473112615585

`A062602(A244570(n+2)+2)-n`
-/

namespace A243158.P8131039473112615585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A244570 (n + 2) + 2).toNat - (n : ℤ)

end

end A243158.P8131039473112615585

/-! ## A243158.P11718140068315830363

`∑{p}[A244570(n+2), A049084(#)-(n+2)]`
-/

namespace A243158.P11718140068315830363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A049084 p - (n + 2 : ℤ))

end

end A243158.P11718140068315830363

/-! ## A243158.P3042040574776459616

`A070804(A244570(n+2))+A001478(n+1)`
-/

namespace A243158.P3042040574776459616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (A244570 (n + 2)).toNat + A001478 (n + 1)

end

end A243158.P3042040574776459616

/-! ## A243158.P240575198254459440

`A070804(A244570(n+2))-A000027(n+1)`
-/

namespace A243158.P240575198254459440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (A244570 (n + 2)).toNat - A000027 (n + 1)

end

end A243158.P240575198254459440

/-! ## A243158.P6241401041846141233

`A070804(A244570(n+2))-A266285(2*n)`
-/

namespace A243158.P6241401041846141233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (A244570 (n + 2)).toNat - A266285 (2 * n)

end

end A243158.P6241401041846141233

/-! ## A243158.P16772504245900030915

`A070804(A244570(n+2))-A259445(2*n+1)+n`
-/

namespace A243158.P16772504245900030915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (A244570 (n + 2)).toNat - A259445 (2 * n + 1) + (n : ℤ)

end

end A243158.P16772504245900030915

/-! ## A243158.P4814996579646424602

`A070804(A244570(n+2))-A038722(A038722(n+1))`
-/

namespace A243158.P4814996579646424602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (A244570 (n + 2)).toNat - A038722 (A038722 (n + 1)).toNat

end

end A243158.P4814996579646424602

/-! ## A243158.P8568717236626031755

`A070804(A244570(n+2))-A007318(A034856(n+1))`
-/

namespace A243158.P8568717236626031755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (A244570 (n + 2)).toNat - A007318 (A034856 (n + 1)).toNat

end

end A243158.P8568717236626031755

/-!
# A243160: Least number k such that k^n - k^(n-1) + k^(n-2) - ... + (-1)^n is prime or 0 if no such k exists.

The programs for A243160, there is no canonical definition to state claims against.
-/

/-! ## A243160.P2449727843992494942

`A158478(A061006(n+2)*A071247(n+1))`
-/

namespace A243160.P2449727843992494942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A061006 (n + 2) * A071247 (n + 1)).toNat

end

end A243160.P2449727843992494942

/-! ## A243160.P15942567445656977575

`val(A077101(n+2), A000005(A193679(n+2)))`
-/

namespace A243160.P15942567445656977575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077101 (n + 2)).toNat (A000005 (A193679 (n + 2)).toNat).toNat

end

end A243160.P15942567445656977575

/-! ## A243160.P3778768725684427819

`floor(A259649(2*(n+3))/A259633(n+2))`
-/

namespace A243160.P3778768725684427819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259649 (2 * (n + 3)) : ℚ) / (A259633 (n + 2) : ℚ)⌋

end

end A243160.P3778768725684427819

/-! ## A243160.P15895204789508815774

`A126286(∏{d}[A020639(n+2), #^((n+2)/#)])%A088377(n+2)`
-/

namespace A243160.P15895204789508815774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126286 (SequenceMachineLib.roundAway (∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℝ) ^ ((n + 2 : ℚ) / (d : ℚ) : ℝ))).toNat) (A088377 (n + 2))

end

end A243160.P15895204789508815774

/-! ## A243160.P1419878435891562423

`round(A130048(3*n+4)/A007956(2*(n+2)))`
-/

namespace A243160.P1419878435891562423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130048 (3 * n + 4) : ℚ) / (A007956 (2 * (n + 2)) : ℚ))

end

end A243160.P1419878435891562423

/-!
# A243161: G.f. A(x) = F(0,x) where F(0,x) = 1/(1 - x*F(1,x)), F(1,x) = 1/(1 - (2*x*F(2,x))^2)^(1/2), F(2,x) = 1/(1 - (3*x*F(3,x))^3)^(1/3), ..., so that F(n-1,x)^n = 1/(1 - (n*x*F(n,x))^n) for n>=0.

The programs for A243161, there is no canonical definition to state claims against.
-/

/-! ## A243161.P11558657320776987326

`A162235(A139333(n+2))`
-/

namespace A243161.P11558657320776987326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162235 (A139333 (n + 2)).toNat

end

end A243161.P11558657320776987326

/-! ## A243161.P3181337788272146295

`or(1, A165472(A266842(n))-1)`
-/

namespace A243161.P3181337788272146295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A165472 (A266842 n).toNat - 1)

end

end A243161.P3181337788272146295

/-! ## A243161.P11903498746664523985

`A023349(n+1)%A080917(n!)`
-/

namespace A243161.P11903498746664523985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023349 (n + 1)) (A080917 (Nat.factorial n))

end

end A243161.P11903498746664523985

/-! ## A243161.P7004400524631672830

`or(A104714(A138315(n)), A138314(n))`
-/

namespace A243161.P7004400524631672830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104714 (A138315 n).toNat) (A138314 n)

end

end A243161.P7004400524631672830

/-!
# A243163: Triangle read by rows: T(n,k) = binomial(k,n-k)*binomial(n+2*k,n+k) /(n+k+1), n>=0, 0<=k<=n.

The programs for A243163, there is no canonical definition to state claims against.
-/

/-! ## A243163.P4119548291780753245

`A285867(C(n, A219347(n)))`
-/

namespace A243163.P4119548291780753245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285867 (Nat.choose n (A219347 n).toNat)

end

end A243163.P4119548291780753245

/-! ## A243163.P14226957001301500986

`A285867(C(n, A006842(3*n+4)))`
-/

namespace A243163.P14226957001301500986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285867 (Nat.choose n (A006842 (3 * n + 4)).toNat)

end

end A243163.P14226957001301500986

/-! ## A243163.P14308708005135058395

`C(A285867(n), A249163(2^floor(n/2)))`
-/

namespace A243163.P14308708005135058395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A285867 n).toNat (A249163 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat).toNat

end

end A243163.P14308708005135058395

/-! ## A243163.P13469629768182156825

`A285867(n-A024326(A327868(n)))`
-/

namespace A243163.P13469629768182156825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285867 ((n : ℤ) - A024326 (A327868 n).toNat).toNat

end

end A243163.P13469629768182156825

/-! ## A243163.P11011568056130774665

`A014577(A001333(n))*A285867(n)`
-/

namespace A243163.P11011568056130774665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A001333 n).toNat * A285867 n

end

end A243163.P11011568056130774665

/-!
# A243164: Number of primes p < n such that p*n is a primitive root modulo prime(n).

The programs for A243164, there is no canonical definition to state claims against.
-/

/-! ## A243164.P3955917401723927504

`A076489(xor(A008486(n), A019274(n+1)))`
-/

namespace A243164.P3955917401723927504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (Int.xor (A008486 n) (A019274 (n + 1))).toNat

end

end A243164.P3955917401723927504

/-! ## A243164.P6397707384607089339

`A305830(A035618(n+1)+A003557(2*n+3))`
-/

namespace A243164.P6397707384607089339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305830 (A035618 (n + 1) + A003557 (2 * n + 3)).toNat

end

end A243164.P6397707384607089339

/-! ## A243164.P2655921379010829656

`A297038(lcm(A068383(n+1), A120194(3*(n+1))))`
-/

namespace A243164.P2655921379010829656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (Int.lcm (A068383 (n + 1)) (A120194 (3 * (n + 1))))

end

end A243164.P2655921379010829656

/-!
# A243165: Nonnegative integers of the form 2x^2 + 4xy - 3y^2.

The programs for A243165, there is no canonical definition to state claims against.
-/

/-! ## A243165.P17009478294979326591

`record[A025480(A242664(n+1))]`
-/

namespace A243165.P17009478294979326591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A242664 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243165.P17009478294979326591

/-! ## A243165.P9184996943897268023

`record[A142150(A242664(n+2))]`
-/

namespace A243165.P9184996943897268023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A242664 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243165.P9184996943897268023

/-! ## A243165.P10719418942021131112

`record[A273943(A242664(A052938(n)))]`
-/

namespace A243165.P10719418942021131112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A242664 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243165.P10719418942021131112

/-!
# A243166: Nonnegative integers of the form x^2+6xy-2y^2.

The programs for A243166, there is no canonical definition to state claims against.
-/

/-! ## A243166.P5471660310019339645

`record[A025480(A243167(n+1))]`
-/

namespace A243166.P5471660310019339645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243167 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243166.P5471660310019339645

/-! ## A243166.P17795990815762048528

`record[A078898(A243167(A328399(n)))]`
-/

namespace A243166.P17795990815762048528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243167 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243166.P17795990815762048528

/-! ## A243166.P12346868833680243223

`record[A078898(A243167(n+1)%A002144(n+1))]`
-/

namespace A243166.P12346868833680243223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A243167 (n + 1)) (A002144 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243166.P12346868833680243223

/-! ## A243166.P3290175059418464899

`record[A078898(A243167(n+1))%A002313(n+1)]`
-/

namespace A243166.P3290175059418464899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A243167 (n + 1)).toNat) (A002313 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243166.P3290175059418464899

/-!
# A243167: Nonnegative integers of the form -x^2+6xy+2y^2.

The programs for A243167, there is no canonical definition to state claims against.
-/

/-! ## A243167.P14205448449433628525

`∩[2*n, A243166(n+1)]/2`
-/

namespace A243167.P14205448449433628525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A243167.P14205448449433628525

/-! ## A243167.P11916527002370726350

`record[A025480(A243166(n+1))]`
-/

namespace A243167.P11916527002370726350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243167.P11916527002370726350

/-! ## A243167.P12527256272971452621

`record[A142150(A243166(n+2))]`
-/

namespace A243167.P12527256272971452621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A243166 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243167.P12527256272971452621

/-! ## A243167.P5148649270160560665

`A004526(∩[A243166(n+1), A005843(n)])`
-/

namespace A243167.P5148649270160560665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A243167.P5148649270160560665

/-!
# A243168: Nonnegative integers of the form x^2 + 6xy - 3y^2.

The programs for A243168, there is no canonical definition to state claims against.
-/

/-! ## A243168.P6545363389680133585

`lt[∑{e}[n+1, #], and(3, A177886(n+4))]`
-/

namespace A243168.P6545363389680133585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A177886 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A243168.P6545363389680133585

/-! ## A243168.P18288710639787337519

`eq[1-and(2, n), and(5, A077428(n+1))]`
-/

namespace A243168.P18288710639787337519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A077428 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243168.P18288710639787337519

/-! ## A243168.P13117393658099955372

`lt[A294393(2*n+3), 3-2*n%4]`
-/

namespace A243168.P13117393658099955372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294393 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * (n % 4) : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243168.P13117393658099955372

/-! ## A243168.P7428946217525594481

`A274947(A374405(n+2)+n²)`
-/

namespace A243168.P7428946217525594481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274947 (A374405 (n + 2) + (n ^ 2 : ℤ)).toNat

end

end A243168.P7428946217525594481

/-! ## A243168.P17646453994667577334

`eq[A341585(2*n+3), A341744(n)]`
-/

namespace A243168.P17646453994667577334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341585 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243168.P17646453994667577334

/-!
# A243169: Nonnegative integers of the form -x^2 + 6xy + 3y^2.

The programs for A243169, there is no canonical definition to state claims against.
-/

/-! ## A243169.P8276437817837039447

`record[n*char[A120864(2*(n+1))]]`
-/

namespace A243169.P8276437817837039447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120864 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243169.P8276437817837039447

/-! ## A243169.P16702419844758787663

`record[A025480(A004396(A243168(n+1)))]`
-/

namespace A243169.P16702419844758787663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A004396 (A243168 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243169.P16702419844758787663

/-!
# A243170: Nonnegative integers of the form 4x^2+xy-4y^2.

The programs for A243170, there is no canonical definition to state claims against.
-/

/-! ## A243170.P699443157296289227

`record[A025480(A243171(n+1))]`
-/

namespace A243170.P699443157296289227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243170.P699443157296289227

/-! ## A243170.P16004177602453135308

`record[A057979(A243171(n+1)+1)]`
-/

namespace A243170.P16004177602453135308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A243171 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243170.P16004177602453135308

/-! ## A243170.P4412264363966471504

`record[A078898(A243171(n+1))]%A000040(n+1)²`
-/

namespace A243170.P4412264363966471504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000040 (n + 1) ^ 2)

end

end A243170.P4412264363966471504

/-! ## A243170.P9065190426126593746

`(3^A001222(n+1))%2*record[A078898(A243171(n+1))]`
-/

namespace A243170.P9065190426126593746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A001222 (n + 1) : ℤ))) 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243170.P9065190426126593746

/-! ## A243170.P7534008285553546196

`((-1)^A000040(n+2))²*record[A078898(A243171(n+1))]`
-/

namespace A243170.P7534008285553546196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243171 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A000040 (n + 2) : ℤ)) ^ 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A243170.P7534008285553546196

/-!
# A243171: Nonnegative integers of the form 2*x^2+5*x*y-5*y^2.

The programs for A243171, there is no canonical definition to state claims against.
-/

/-! ## A243171.P13152698267297511560

`record[A025480(A243170(n+1))]`
-/

namespace A243171.P13152698267297511560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243170 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243171.P13152698267297511560

/-! ## A243171.P10516430964877769798

`record[A142150(A243170(n+2))]`
-/

namespace A243171.P10516430964877769798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A243170 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243171.P10516430964877769798

/-! ## A243171.P11427745592961679629

`record[A078898(A243170(n+1))%A000032(n)]`
-/

namespace A243171.P11427745592961679629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A243170 (n + 1)).toNat) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243171.P11427745592961679629

/-! ## A243171.P8302404757845382228

`A020674(comp[9-A002262(n)^n]+1)`
-/

namespace A243171.P8302404757845382228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A002262 n ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A243171.P8302404757845382228

/-!
# A243172: Nonnegative integers of the form x^2 + 3*x*y - 3*y^2 (discriminant 21).

The programs for A243172, there is no canonical definition to state claims against.
-/

/-! ## A243172.P6397807529501281574

`filter[A010403(n+1), A071035(#)]`
-/

namespace A243172.P6397807529501281574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071035 (f1 j).toNat = 1) n)

end

end A243172.P6397807529501281574

/-! ## A243172.P5484238847889106257

`A010403(∑[A010360(n^(n%2))])`
-/

namespace A243172.P5484238847889106257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010360 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010403 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243172.P5484238847889106257

/-! ## A243172.P16032256218805926375

`∩[A010403(n+1), A010414(A042968(n+1))]`
-/

namespace A243172.P16032256218805926375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010414 (A042968 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243172.P16032256218805926375

/-! ## A243172.P4962996086071350494

`∩[A010414(n+1), A060142(n)]`
-/

namespace A243172.P4962996086071350494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243172.P4962996086071350494

/-! ## A243172.P10977206954984740397

`lt[A008683(A135794(n+1)), char[n²]]`
-/

namespace A243172.P10977206954984740397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A135794 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243172.P10977206954984740397

/-!
# A243173: Numbers of the form x^2+15y^2.

The programs for A243173, there is no canonical definition to state claims against.
-/

/-! ## A243173.P13188476513080865936

`lt[0, A260671(n)]`
-/

namespace A243173.P13188476513080865936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243173.P13188476513080865936

/-! ## A243173.P10972782389792698277

`eq[2, A000122(A260671(n)²)]`
-/

namespace A243173.P10972782389792698277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A260671 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243173.P10972782389792698277

/-! ## A243173.P7760308201073426601

`eq[1, A157928(A260671(n)+1)]`
-/

namespace A243173.P7760308201073426601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A260671 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243173.P7760308201073426601

/-! ## A243173.P8717880345459936336

`eq[1, A157928(2*A260671(n))]`
-/

namespace A243173.P8717880345459936336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (2 * A260671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243173.P8717880345459936336

/-! ## A243173.P2183188213188626105

`eq[2, A040001(2*A260671(n))]`
-/

namespace A243173.P2183188213188626105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * A260671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243173.P2183188213188626105

/-! ## A243173.P7438333792760457628

`eq[A028956(n)^A260671(n), A028956(n)]`
-/

namespace A243173.P7438333792760457628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028956 n : ℚ) ^ (A260671 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A243173.P7438333792760457628

/-! ## A243173.P17150620277893959137

`eq[2, A036452(A192323(3*n)+1)]`
-/

namespace A243173.P17150620277893959137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (A192323 (3 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243173.P17150620277893959137

/-! ## A243173.P6039008202862703914

`eq[A040001(A260671(n)), A216022(n+1)]`
-/

namespace A243173.P6039008202862703914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A260671 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243173.P6039008202862703914

/-!
# A243174: Nonnegative integers of the form x^2 + 5*x*y - 5*y^2 (discriminant 45).

The programs for A243174, the canonical program `A243174.P13861354254685975125` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243174 has offset 1).

The definition of A243174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243174.P13861354254685975125

`eq[char[A005752(n)], A061347(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A243174

/-- `eq[char[A005752(n)], A061347(n+1)]` -/
def P13861354254685975125.Spec : Prop :=
  ∀ n, (P13861354254685975125.a n : ℤ) = A243174 (n + 1)

theorem P13861354254685975125.correct : P13861354254685975125.Spec := by
  intro n
  simp only [A243174, Nat.add_sub_cancel]

end A243174

/-! ## A243174.P5751534302505402175

`eq[char[A281385(n)], A060865(n+1)]`
-/

namespace A243174.P5751534302505402175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243174.P5751534302505402175

namespace A243174

/-- `eq[char[A281385(n)], A060865(n+1)]` -/
def P5751534302505402175.Spec : Prop :=
  ∀ n, (P5751534302505402175.a n : ℤ) = A243174 (n + 1)

end A243174

/-! ## A243174.P4468129872586967028

`eq[char[A281385(n)], A061347(n+1)]`
-/

namespace A243174.P4468129872586967028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243174.P4468129872586967028

namespace A243174

/-- `eq[char[A281385(n)], A061347(n+1)]` -/
def P4468129872586967028.Spec : Prop :=
  ∀ n, (P4468129872586967028.a n : ℤ) = A243174 (n + 1)

end A243174

/-! ## A243174.P14609644417361814362

`eq[char[A281385(n)], A131713(n+2)]`
-/

namespace A243174.P14609644417361814362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243174.P14609644417361814362

namespace A243174

/-- `eq[char[A281385(n)], A131713(n+2)]` -/
def P14609644417361814362.Spec : Prop :=
  ∀ n, (P14609644417361814362.a n : ℤ) = A243174 (n + 1)

end A243174

/-! ## A243174.P10059095878178769102

`eq[char[A281385(n)], A257075(n+2)]`
-/

namespace A243174.P10059095878178769102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243174.P10059095878178769102

namespace A243174

/-- `eq[char[A281385(n)], A257075(n+2)]` -/
def P10059095878178769102.Spec : Prop :=
  ∀ n, (P10059095878178769102.a n : ℤ) = A243174 (n + 1)

end A243174

/-!
# A243175: Numbers of the form x^2 + xy + 7y^2.

The programs for A243175, there is no canonical definition to state claims against.
-/

/-! ## A243175.P9348387080388146833

`∪[A202822(n+1), A332335(n+1)]`
-/

namespace A243175.P9348387080388146833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A243175.P9348387080388146833

/-! ## A243175.P17959612181147948908

`∪[A260682(n+1), A332335(n+1)]`
-/

namespace A243175.P17959612181147948908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A243175.P17959612181147948908

/-! ## A243175.P4297105805436805323

`lt[0, A138806(round(sqrt(n²+1)))]`
-/

namespace A243175.P4297105805436805323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138806 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243175.P4297105805436805323

/-! ## A243175.P1632425806031165072

`filter[A230240(n+1), A353816(#)]`
-/

namespace A243175.P1632425806031165072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A243175.P1632425806031165072

/-! ## A243175.P15103745054304781071

`∩[A003136(n+1), A230240(n+1)]`
-/

namespace A243175.P15103745054304781071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243175.P15103745054304781071

/-! ## A243175.P15659352725834559957

`filter[A242660(n+1), A353816(#)]`
-/

namespace A243175.P15659352725834559957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A243175.P15659352725834559957

/-! ## A243175.P5938399267973393760

`∩[A003136(n+1), A242660(n+1)]`
-/

namespace A243175.P5938399267973393760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243175.P5938399267973393760

/-! ## A243175.P16414542769044916353

`lt[0, A138805(n)]`
-/

namespace A243175.P16414542769044916353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243175.P16414542769044916353

/-! ## A243175.P17618432533515034240

`eq[0, A000007(A138805(n)²)]`
-/

namespace A243175.P17618432533515034240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A138805 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243175.P17618432533515034240

/-! ## A243175.P4705186256072065913

`eq[0, A000038(A138805(n)²)]`
-/

namespace A243175.P4705186256072065913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A138805 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243175.P4705186256072065913

/-! ## A243175.P10889265125348404160

`eq[1, A057427(A138805(n)²)]`
-/

namespace A243175.P10889265125348404160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A138805 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243175.P10889265125348404160

/-! ## A243175.P6250760187872693310

`eq[2, A000122(A138805(n)²)]`
-/

namespace A243175.P6250760187872693310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A138805 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243175.P6250760187872693310

/-! ## A243175.P18085965468212603086

`eq[1, A001221(A138805(n)+1)]`
-/

namespace A243175.P18085965468212603086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A138805 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243175.P18085965468212603086

/-! ## A243175.P8961476856544990394

`lt[0, A005928(lcm(3, n)/gcd(3, n))]`
-/

namespace A243175.P8961476856544990394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (SequenceMachineLib.roundAway ((Nat.lcm 3 n : ℚ) / (Nat.gcd 3 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243175.P8961476856544990394

/-!
# A243176: Numbers of the form x^2+xy+8y^2.

The programs for A243176, there is no canonical definition to state claims against.
-/

/-! ## A243176.P1841555945772005783

`lt[0, A033743(4*n)]`
-/

namespace A243176.P1841555945772005783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033743 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243176.P1841555945772005783

/-! ## A243176.P16284056185800147015

`eq[0, A264442(A033743(4*n)²)]`
-/

namespace A243176.P16284056185800147015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264442 (A033743 (4 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243176.P16284056185800147015

/-! ## A243176.P13834922632724148741

`eq[1, A057427(A033743(4*n)²)]`
-/

namespace A243176.P13834922632724148741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A033743 (4 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243176.P13834922632724148741

/-! ## A243176.P31598444201468519

`eq[2, A033743(A033743(4*n)²)]`
-/

namespace A243176.P31598444201468519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033743 (A033743 (4 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243176.P31598444201468519

/-! ## A243176.P3062958168042031124

`eq[1, A001221(A033743(4*n)+1)]`
-/

namespace A243176.P3062958168042031124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A033743 (4 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243176.P3062958168042031124

/-! ## A243176.P4771171408685993173

`eq[0, val(A101300(A033743(4*n)+1), 3)]`
-/

namespace A243176.P4771171408685993173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A101300 (A033743 (4 * n) + 1).toNat).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243176.P4771171408685993173

/-! ## A243176.P17458140404676381006

`record[A019425(A033743(2*n))*A025480(n)]`
-/

namespace A243176.P17458140404676381006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033743 (2 * n)).toNat * A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243176.P17458140404676381006

/-! ## A243176.P2744187724467680136

`eq[A157928(A033743(4*n)), A157928(n+1)]`
-/

namespace A243176.P2744187724467680136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A033743 (4 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243176.P2744187724467680136

/-! ## A243176.P9585560677060665180

`eq[A000034(2*n), A019425(A033743(4*n))]`
-/

namespace A243176.P9585560677060665180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033743 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243176.P9585560677060665180

/-! ## A243176.P7212568669301929241

`eq[A014963(12*n+6), A019425(A033743(4*n))]`
-/

namespace A243176.P7212568669301929241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033743 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243176.P7212568669301929241

/-!
# A243177: Numbers of the form 3x^2+2xy+3y^2.

The programs for A243177, the canonical program `A243177.P11032770322893023695` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243177 has offset 1).

The definition of A243177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243177.P4766904157391109582

`∩[A002479(n+1), A004014(n)]`
-/

namespace A243177.P4766904157391109582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243177.P4766904157391109582

namespace A243177

/-- `∩[A002479(n+1), A004014(n)]` -/
def P4766904157391109582.Spec : Prop :=
  ∀ n, (P4766904157391109582.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P11032770322893023695

`∩[A002479(n+1), A047458(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A243177

/-- `∩[A002479(n+1), A047458(n+1)]` -/
def P11032770322893023695.Spec : Prop :=
  ∀ n, (P11032770322893023695.a n : ℤ) = A243177 (n + 1)

theorem P11032770322893023695.correct : P11032770322893023695.Spec := by
  intro n
  simp only [A243177, Nat.add_sub_cancel]

end A243177

/-! ## A243177.P5686068612383707785

`∩[A002479(n+1), A028970(n+1)]`
-/

namespace A243177.P5686068612383707785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243177.P5686068612383707785

namespace A243177

/-- `∩[A002479(n+1), A028970(n+1)]` -/
def P5686068612383707785.Spec : Prop :=
  ∀ n, (P5686068612383707785.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P9198292769480304540

`∩[A002479(n+1), A014601(n)]`
-/

namespace A243177.P9198292769480304540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243177.P9198292769480304540

namespace A243177

/-- `∩[A002479(n+1), A014601(n)]` -/
def P9198292769480304540.Spec : Prop :=
  ∀ n, (P9198292769480304540.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P13659541472169601883

`∩[A002479(n+1), A047599(n+1)]`
-/

namespace A243177.P13659541472169601883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243177.P13659541472169601883

namespace A243177

/-- `∩[A002479(n+1), A047599(n+1)]` -/
def P13659541472169601883.Spec : Prop :=
  ∀ n, (P13659541472169601883.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P1357873480656385491

`∩[A002479(n+1), A042948(n)-1]`
-/

namespace A243177.P1357873480656385491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243177.P1357873480656385491

namespace A243177

/-- `∩[A002479(n+1), A042948(n)-1]` -/
def P1357873480656385491.Spec : Prop :=
  ∀ n, (P1357873480656385491.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P14772111647660032208

`∩[A002479(n+1), A047500(n+1)]`
-/

namespace A243177.P14772111647660032208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243177.P14772111647660032208

namespace A243177

/-- `∩[A002479(n+1), A047500(n+1)]` -/
def P14772111647660032208.Spec : Prop :=
  ∀ n, (P14772111647660032208.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P14608920271374023392

`filter[A004014(n), A391183(#)]`
-/

namespace A243177.P14608920271374023392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A243177.P14608920271374023392

namespace A243177

/-- `filter[A004014(n), A391183(#)]` -/
def P14608920271374023392.Spec : Prop :=
  ∀ n, P14608920271374023392.a n = A243177 (n + 1)

end A243177

/-! ## A243177.P29439466281972059

`filter[A014601(n), A391183(#)]`
-/

namespace A243177.P29439466281972059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A243177.P29439466281972059

namespace A243177

/-- `filter[A014601(n), A391183(#)]` -/
def P29439466281972059.Spec : Prop :=
  ∀ n, P29439466281972059.a n = A243177 (n + 1)

end A243177

/-! ## A243177.P7309341875283908907

`filter[A028970(n+1), A391183(#)]`
-/

namespace A243177.P7309341875283908907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A243177.P7309341875283908907

namespace A243177

/-- `filter[A028970(n+1), A391183(#)]` -/
def P7309341875283908907.Spec : Prop :=
  ∀ n, P7309341875283908907.a n = A243177 (n + 1)

end A243177

/-! ## A243177.P16237664907955564087

`filter[A047458(n+1), A391183(#)]`
-/

namespace A243177.P16237664907955564087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A243177.P16237664907955564087

namespace A243177

/-- `filter[A047458(n+1), A391183(#)]` -/
def P16237664907955564087.Spec : Prop :=
  ∀ n, P16237664907955564087.a n = A243177 (n + 1)

end A243177

/-! ## A243177.P881303912403453443

`filter[A047500(n+1), A391183(#)]`
-/

namespace A243177.P881303912403453443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A243177.P881303912403453443

namespace A243177

/-- `filter[A047500(n+1), A391183(#)]` -/
def P881303912403453443.Spec : Prop :=
  ∀ n, P881303912403453443.a n = A243177 (n + 1)

end A243177

/-! ## A243177.P7771718012652675347

`filter[A047599(n+1), A391183(#)]`
-/

namespace A243177.P7771718012652675347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A243177.P7771718012652675347

namespace A243177

/-- `filter[A047599(n+1), A391183(#)]` -/
def P7771718012652675347.Spec : Prop :=
  ∀ n, P7771718012652675347.a n = A243177 (n + 1)

end A243177

/-! ## A243177.P11366115856396745248

`eq[and(2, -n), A000007(A033715(n))]`
-/

namespace A243177.P11366115856396745248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A033715 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243177.P11366115856396745248

namespace A243177

/-- `eq[and(2, -n), A000007(A033715(n))]` -/
def P11366115856396745248.Spec : Prop :=
  ∀ n, (P11366115856396745248.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P15332749264822351667

`lt[0, A028572(n)]`
-/

namespace A243177.P15332749264822351667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028572 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243177.P15332749264822351667

namespace A243177

/-- `lt[0, A028572(n)]` -/
def P15332749264822351667.Spec : Prop :=
  ∀ n, (P15332749264822351667.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P7379340272915378037

`lt[0, A082564(n)]`
-/

namespace A243177.P7379340272915378037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243177.P7379340272915378037

namespace A243177

/-- `lt[0, A082564(n)]` -/
def P7379340272915378037.Spec : Prop :=
  ∀ n, (P7379340272915378037.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P102416928877447732

`eq[A014695(n), A391183(n)]`
-/

namespace A243177.P102416928877447732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243177.P102416928877447732

namespace A243177

/-- `eq[A014695(n), A391183(n)]` -/
def P102416928877447732.Spec : Prop :=
  ∀ n, (P102416928877447732.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P3138029686221595125

`eq[A084101(n), A391183(n)]`
-/

namespace A243177.P3138029686221595125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243177.P3138029686221595125

namespace A243177

/-- `eq[A084101(n), A391183(n)]` -/
def P3138029686221595125.Spec : Prop :=
  ∀ n, (P3138029686221595125.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P14233614431413563065

`eq[A087960(n), A391183(n)]`
-/

namespace A243177.P14233614431413563065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243177.P14233614431413563065

namespace A243177

/-- `eq[A087960(n), A391183(n)]` -/
def P14233614431413563065.Spec : Prop :=
  ∀ n, (P14233614431413563065.a n : ℤ) = A243177 (n + 1)

end A243177

/-! ## A243177.P2591536218736070146

`eq[A132400(n), A391183(n)]`
-/

namespace A243177.P2591536218736070146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243177.P2591536218736070146

namespace A243177

/-- `eq[A132400(n), A391183(n)]` -/
def P2591536218736070146.Spec : Prop :=
  ∀ n, (P2591536218736070146.a n : ℤ) = A243177 (n + 1)

end A243177

/-!
# A243178: Numbers of the form x^2+xy+9y^2.

The programs for A243178, there is no canonical definition to state claims against.
-/

/-! ## A243178.P16528703677727674852

`record[A263390(A243179(n+1))]`
-/

namespace A243178.P16528703677727674852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (A243179 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243178.P16528703677727674852

/-! ## A243178.P16595692439904812897

`A010431(∪[A010431(2*(n+1)), A088725(n+2)])`
-/

namespace A243178.P16595692439904812897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010431 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010431 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A243178.P16595692439904812897

/-! ## A243178.P6205496170063450954

`eq[1, A011558(A008446(n))]`
-/

namespace A243178.P6205496170063450954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A008446 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243178.P6205496170063450954

/-! ## A243178.P14816597210348371624

`A010431(A005100(n+1))%A010427(2*(n+1))`
-/

namespace A243178.P14816597210348371624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010431 (A005100 (n + 1)).toNat) (A010427 (2 * (n + 1)))

end

end A243178.P14816597210348371624

/-! ## A243178.P10834896884391132067

`A010431(A005100(n+1))%A010421(n+2)`
-/

namespace A243178.P10834896884391132067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010431 (A005100 (n + 1)).toNat) (A010421 (n + 2))

end

end A243178.P10834896884391132067

/-!
# A243179: Numbers of the form 3x^2+xy+3y^2.

The programs for A243179, there is no canonical definition to state claims against.
-/

/-! ## A243179.P11425311726447705841

`eq[1, gcd(5, A023918(n))]`
-/

namespace A243179.P11425311726447705841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A023918 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243179.P11425311726447705841

/-! ## A243179.P8825100635146388253

`record[-A246425(A020686(n+1))]`
-/

namespace A243179.P8825100635146388253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A246425 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243179.P8825100635146388253

/-! ## A243179.P9589144729588004670

`record[A142150(A020686(n+2))/2]`
-/

namespace A243179.P9589144729588004670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142150 (A020686 (n + 2)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243179.P9589144729588004670

/-! ## A243179.P3208876519507122797

`lt[A000122(3*(n+1)), A023918(n)%5]`
-/

namespace A243179.P3208876519507122797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023918 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243179.P3208876519507122797

/-! ## A243179.P8791367219842069285

`A004526(record[A131732(A020686(n+1))])`
-/

namespace A243179.P8791367219842069285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243179.P8791367219842069285

/-! ## A243179.P13985305848898136150

`A004525(record[A142150(A020686(n+1))])`
-/

namespace A243179.P13985305848898136150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243179.P13985305848898136150

/-! ## A243179.P324392070524376646

`A004526(record[A142150(A020686(n+1))])`
-/

namespace A243179.P324392070524376646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243179.P324392070524376646

/-! ## A243179.P18214130109298272289

`A025480(record[A142150(A020686(n+1))])`
-/

namespace A243179.P18214130109298272289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243179.P18214130109298272289

/-! ## A243179.P14915662865928266161

`A029578(record[A142150(A020686(n+1))])`
-/

namespace A243179.P14915662865928266161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243179.P14915662865928266161

/-! ## A243179.P9097350086883297010

`record[A008683(12*n+8)-A246425(A020686(n+1))]`
-/

namespace A243179.P9097350086883297010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (12 * n + 8) - A246425 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243179.P9097350086883297010

/-!
# A243181: Numbers of the form 4x^2+9xy-11y^2.

The programs for A243181, there is no canonical definition to state claims against.
-/

/-! ## A243181.P14689198092822598217

`record[A025480(A243180(n+1))]`
-/

namespace A243181.P14689198092822598217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243181.P14689198092822598217

/-! ## A243181.P17526764806644005469

`record[A142150(A243180(2*n+1-n))]`
-/

namespace A243181.P17526764806644005469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A243180 (2 * n + 1 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243181.P17526764806644005469

/-! ## A243181.P8150345231465108987

`A004525(record[A038608(A243180(n+1))])`
-/

namespace A243181.P8150345231465108987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A243180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243181.P8150345231465108987

/-! ## A243181.P5826995688415462579

`record[A038608(A243180(n+1))/2]%A055131(n)`
-/

namespace A243181.P5826995688415462579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038608 (A243180 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A055131 n)

end

end A243181.P5826995688415462579

/-! ## A243181.P17016337802577421168

`record[A038608(A243180(n+1))/2*A158388(n+1)]`
-/

namespace A243181.P17016337802577421168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038608 (A243180 (n + 1)).toNat : ℚ) / 2 * (A158388 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243181.P17016337802577421168

/-!
# A243182: Numbers of the form 2x^2+2xy+5y^2.

The programs for A243182, there is no canonical definition to state claims against.
-/

/-! ## A243182.P2486922723421643591

`lt[0, A028601(n)]`
-/

namespace A243182.P2486922723421643591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243182.P2486922723421643591

/-! ## A243182.P12300708452307523419

`lt[0, A256280(n)]`
-/

namespace A243182.P12300708452307523419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256280 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243182.P12300708452307523419

/-! ## A243182.P7093404604903093974

`lt[0, A258292(n)]`
-/

namespace A243182.P7093404604903093974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243182.P7093404604903093974

/-! ## A243182.P4813410827295618546

`lt[0, A258034(2*n)]`
-/

namespace A243182.P4813410827295618546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258034 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243182.P4813410827295618546

/-! ## A243182.P8660973862931133640

`lt[0, A258210(2*n)]`
-/

namespace A243182.P8660973862931133640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258210 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243182.P8660973862931133640

/-! ## A243182.P12753488546575101173

`lt[0, A258322(2*n)]`
-/

namespace A243182.P12753488546575101173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258322 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243182.P12753488546575101173

/-! ## A243182.P2828318974096607116

`lt[0, A258322(n)]/2`
-/

namespace A243182.P2828318974096607116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258322 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A243182.P2828318974096607116

/-! ## A243182.P16717213210420147922

`lt[0, A256014(4*n)]`
-/

namespace A243182.P16717213210420147922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256014 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243182.P16717213210420147922

/-! ## A243182.P14200208245638135476

`eq[((n+1)%3)!, A229062(n)]`
-/

namespace A243182.P14200208245638135476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 1) % 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243182.P14200208245638135476

/-! ## A243182.P8800762699209011713

`filter[A007494(n), A229062(#)]`
-/

namespace A243182.P8800762699209011713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A243182.P8800762699209011713

/-!
# A243183: Primes of the form 2x^2+2xy+5y^2.

The programs for A243183, the canonical program `A243183.P11028007819640008934` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243183 has offset 1).

The definition of A243183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243183.P11028007819640008934

`p?[a(n-1)+12]` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A243183

/-- `p?[a(n-1)+12]` -/
def P11028007819640008934.Spec : Prop :=
  ∀ n, (P11028007819640008934.a n : ℤ) = A243183 (n + 1)

theorem P11028007819640008934.correct : P11028007819640008934.Spec := by
  intro n
  simp only [A243183, Nat.add_sub_cancel]

end A243183

/-! ## A243183.P16265055837833218957

`p?[abs(gcd(2, n)-6*n)]`
-/

namespace A243183.P16265055837833218957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.gcd 2 n : ℤ) - (6 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243183.P16265055837833218957

namespace A243183

/-- `p?[abs(gcd(2, n)-6*n)]` -/
def P16265055837833218957.Spec : Prop :=
  ∀ n, P16265055837833218957.a n = A243183 (n + 1)

end A243183

/-! ## A243183.P7218305483279290821

`p?[ogf((2+x+9x^2)/(1-2x+x^2))]`
-/

namespace A243183.P7218305483279290821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243183.P7218305483279290821

namespace A243183

/-- `p?[ogf((2+x+9x^2)/(1-2x+x^2))]` -/
def P7218305483279290821.Spec : Prop :=
  ∀ n, P7218305483279290821.a n = A243183 (n + 1)

end A243183

/-! ## A243183.P2035035706000991431

`∪[A040117(n+1), A061351(n)]`
-/

namespace A243183.P2035035706000991431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P2035035706000991431

namespace A243183

/-- `∪[A040117(n+1), A061351(n)]` -/
def P2035035706000991431.Spec : Prop :=
  ∀ n, (P2035035706000991431.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P7601973948304876530

`p?[or(2, n)+2*n]`
-/

namespace A243183.P7601973948304876530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243183.P7601973948304876530

namespace A243183

/-- `p?[or(2, n)+2*n]` -/
def P7601973948304876530.Spec : Prop :=
  ∀ n, (P7601973948304876530.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P12411124761509410354

`p?[xor(3, floor(3/acot(n)))]`
-/

namespace A243183.P12411124761509410354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243183.P12411124761509410354

namespace A243183

/-- `p?[xor(3, floor(3/acot(n)))]` -/
def P12411124761509410354.Spec : Prop :=
  ∀ n, P12411124761509410354.a n = A243183 (n + 1)

end A243183

/-! ## A243183.P5961288287927151004

`p?[or(2, n)+n+n]`
-/

namespace A243183.P5961288287927151004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243183.P5961288287927151004

namespace A243183

/-- `p?[or(2, n)+n+n]` -/
def P5961288287927151004.Spec : Prop :=
  ∀ n, (P5961288287927151004.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P61030035071063685

`p?[xor(2, 3*(n+1))+1]`
-/

namespace A243183.P61030035071063685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (3 * (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243183.P61030035071063685

namespace A243183

/-- `p?[xor(2, 3*(n+1))+1]` -/
def P61030035071063685.Spec : Prop :=
  ∀ n, (P61030035071063685.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P16423885663877329683

`p?[and(3*n, -3)-7]`
-/

namespace A243183.P16423885663877329683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-3) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243183.P16423885663877329683

namespace A243183

/-- `p?[and(3*n, -3)-7]` -/
def P16423885663877329683.Spec : Prop :=
  ∀ n, P16423885663877329683.a n = A243183 (n + 1)

end A243183

/-! ## A243183.P3863003459068714224

`∩[A002313(n+1), A003627(n+1)]`
-/

namespace A243183.P3863003459068714224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P3863003459068714224

namespace A243183

/-- `∩[A002313(n+1), A003627(n+1)]` -/
def P3863003459068714224.Spec : Prop :=
  ∀ n, (P3863003459068714224.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P13357947797686998463

`∩[A002313(n+1), A045309(n+1)]`
-/

namespace A243183.P13357947797686998463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P13357947797686998463

namespace A243183

/-- `∩[A002313(n+1), A045309(n+1)]` -/
def P13357947797686998463.Spec : Prop :=
  ∀ n, (P13357947797686998463.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P5057102499741033788

`∩[A003627(n+1), A055025(n+1)]`
-/

namespace A243183.P5057102499741033788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P5057102499741033788

namespace A243183

/-- `∩[A003627(n+1), A055025(n+1)]` -/
def P5057102499741033788.Spec : Prop :=
  ∀ n, (P5057102499741033788.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P5324533018224067333

`∩[A002313(n+1), A038875(n+1)]`
-/

namespace A243183.P5324533018224067333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P5324533018224067333

namespace A243183

/-- `∩[A002313(n+1), A038875(n+1)]` -/
def P5324533018224067333.Spec : Prop :=
  ∀ n, (P5324533018224067333.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P1709547134195972578

`∩[A003627(n+1), A038875(n+1)]`
-/

namespace A243183.P1709547134195972578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P1709547134195972578

namespace A243183

/-- `∩[A003627(n+1), A038875(n+1)]` -/
def P1709547134195972578.Spec : Prop :=
  ∀ n, (P1709547134195972578.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P4400181166153786323

`∩[A055025(n+1), A038875(n+1)]`
-/

namespace A243183.P4400181166153786323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P4400181166153786323

namespace A243183

/-- `∩[A055025(n+1), A038875(n+1)]` -/
def P4400181166153786323.Spec : Prop :=
  ∀ n, (P4400181166153786323.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P9883811343608293820

`∩[A281292(n+1), A003627(n+1)]`
-/

namespace A243183.P9883811343608293820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P9883811343608293820

namespace A243183

/-- `∩[A281292(n+1), A003627(n+1)]` -/
def P9883811343608293820.Spec : Prop :=
  ∀ n, (P9883811343608293820.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P18240378966737317428

`∩[A066501(n+1), A002313(n+1)]`
-/

namespace A243183.P18240378966737317428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P18240378966737317428

namespace A243183

/-- `∩[A066501(n+1), A002313(n+1)]` -/
def P18240378966737317428.Spec : Prop :=
  ∀ n, (P18240378966737317428.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P9419718382484525742

`∩[A082406(n+1), A002313(n+1)]`
-/

namespace A243183.P9419718382484525742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P9419718382484525742

namespace A243183

/-- `∩[A082406(n+1), A002313(n+1)]` -/
def P9419718382484525742.Spec : Prop :=
  ∀ n, (P9419718382484525742.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P1664373075023909714

`∩[A003627(n+1), A003654(n+1)]`
-/

namespace A243183.P1664373075023909714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P1664373075023909714

namespace A243183

/-- `∩[A003627(n+1), A003654(n+1)]` -/
def P1664373075023909714.Spec : Prop :=
  ∀ n, (P1664373075023909714.a n : ℤ) = A243183 (n + 1)

end A243183

/-! ## A243183.P2100290025377976652

`∩[A003627(n+1), A003814(n+1)]`
-/

namespace A243183.P2100290025377976652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243183.P2100290025377976652

namespace A243183

/-- `∩[A003627(n+1), A003814(n+1)]` -/
def P2100290025377976652.Spec : Prop :=
  ∀ n, (P2100290025377976652.a n : ℤ) = A243183 (n + 1)

end A243183

/-!
# A243184: Nonnegative numbers of the form 2*x^2+3*x*y-3*y^2.

The programs for A243184, there is no canonical definition to state claims against.
-/

/-! ## A243184.P7807045391480318012

`record[A025480(A243185(n+1))]`
-/

namespace A243184.P7807045391480318012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243184.P7807045391480318012

/-! ## A243184.P17999084032067779505

`record[A097140(A243185(n+3))]`
-/

namespace A243184.P17999084032067779505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A243185 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243184.P17999084032067779505

/-! ## A243184.P13677721874637050878

`A026741(∩[2*n, A243185(n+1)])`
-/

namespace A243184.P13677721874637050878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243185 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A243184.P13677721874637050878

/-! ## A243184.P6385942363067067796

`eq[A023416(n), A085392(A166350(n+1))]`
-/

namespace A243184.P6385942363067067796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A166350 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243184.P6385942363067067796

/-! ## A243184.P10498001164336009739

`lt[A171307(A173238(2*(n+2))), A173189(n+2)]`
-/

namespace A243184.P10498001164336009739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (A173238 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173189 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243184.P10498001164336009739

/-!
# A243185: Nonnegative numbers of the form -2*x^2+3*x*y+3*y^2.

The programs for A243185, there is no canonical definition to state claims against.
-/

/-! ## A243185.P7530574206996198163

`record[A025480(A243184(n+1))]`
-/

namespace A243185.P7530574206996198163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243184 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243185.P7530574206996198163

/-! ## A243185.P11490701014058942185

`record[A078898(A243184(floor(n/2)+1))]`
-/

namespace A243185.P11490701014058942185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243184 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243185.P11490701014058942185

/-! ## A243185.P8065735544485284211

`record[A097140(A243184(A065033(n)))]`
-/

namespace A243185.P8065735544485284211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A243184 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243185.P8065735544485284211

/-! ## A243185.P17669034578066585499

`record[A142150(A243184(A286378(n)))]`
-/

namespace A243185.P17669034578066585499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A243184 (A286378 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243185.P17669034578066585499

/-! ## A243185.P6003786969673998328

`A004526(record[A131738(A243184(n+1))])`
-/

namespace A243185.P6003786969673998328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (A243184 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243185.P6003786969673998328

/-! ## A243185.P6336847029204632612

`A004526(record[A153733(A243184(n+1))])`
-/

namespace A243185.P6336847029204632612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A243184 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243185.P6336847029204632612

/-!
# A243186: Nonnegative integers of the form x^2 + 6xy - 5y^2.

The programs for A243186, there is no canonical definition to state claims against.
-/

/-! ## A243186.P191035275337675781

`eq[A168185(A031573(n+1)), A255647(n)]`
-/

namespace A243186.P191035275337675781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (A031573 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243186.P191035275337675781

/-! ## A243186.P9120927548970681272

`eq[A255647(A185284(n+1)), A255647(n)]`
-/

namespace A243186.P9120927548970681272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 (A185284 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243186.P9120927548970681272

/-! ## A243186.P18190855706067889685

`eq[(2-A255647(n))², A291168(n)]`
-/

namespace A243186.P18190855706067889685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A255647 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243186.P18190855706067889685

/-! ## A243186.P1371937270522874798

`eq[A255647(n), A291168(n)]`
-/

namespace A243186.P1371937270522874798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243186.P1371937270522874798

/-! ## A243186.P5871910103327954624

`eq[A161618(n+1), A255647(n)]`
-/

namespace A243186.P5871910103327954624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243186.P5871910103327954624

/-!
# A243187: Nonnegative integers of the form -x^2 + 6xy + 5y^2.

The programs for A243187, there is no canonical definition to state claims against.
-/

/-! ## A243187.P4588786024391079499

`eq[A080918(n), A113686(A297294(n+1))]`
-/

namespace A243187.P4588786024391079499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113686 (A297294 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243187.P4588786024391079499

/-! ## A243187.P1922545886837404213

`lt[A244540(3*n), A355739(A283895(3*(n+1)))]`
-/

namespace A243187.P1922545886837404213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244540 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355739 (A283895 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243187.P1922545886837404213

/-!
# A243188: Nonnegative numbers of the form x^2 + 6*x*y - 6*y^2.

The programs for A243188, there is no canonical definition to state claims against.
-/

/-! ## A243188.P11023602555320087015

`record[A025480(A243189(n+1))]`
-/

namespace A243188.P11023602555320087015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243188.P11023602555320087015

/-! ## A243188.P13143534594158698750

`record[A078898(A243189(-xor(n, -1)))]`
-/

namespace A243188.P13143534594158698750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243189 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243188.P13143534594158698750

/-! ## A243188.P12854624992424438001

`record[A078898(A243189(A008619(n)))]`
-/

namespace A243188.P12854624992424438001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243189 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243188.P12854624992424438001

/-! ## A243188.P585199540090189162

`record[A078898(A243189(A028310(n)))]`
-/

namespace A243188.P585199540090189162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243189 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243188.P585199540090189162

/-! ## A243188.P7312514281136303976

`record[A078898(A243189(A065033(n)))]`
-/

namespace A243188.P7312514281136303976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243189 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243188.P7312514281136303976

/-!
# A243189: Nonnegative numbers of the form 2x^2 + 6xy - 3y^2.

The programs for A243189, there is no canonical definition to state claims against.
-/

/-! ## A243189.P5957637747508887892

`record[A025480(A243188(n+1))]`
-/

namespace A243189.P5957637747508887892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243189.P5957637747508887892

/-! ## A243189.P2281354684955068549

`record[A142150(A243188(n+2))]`
-/

namespace A243189.P2281354684955068549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A243188 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243189.P2281354684955068549

/-! ## A243189.P17306238708963572125

`record[A003602(A243188(n+1)+1)-1]`
-/

namespace A243189.P17306238708963572125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A243188 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243189.P17306238708963572125

/-! ## A243189.P15370619484638076559

`A004526(record[A131738(A243188(n+1))])`
-/

namespace A243189.P15370619484638076559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (A243188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243189.P15370619484638076559

/-! ## A243189.P14410933907402311358

`A004526(record[A237420(A243188(n+1))])`
-/

namespace A243189.P14410933907402311358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A243188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243189.P14410933907402311358

/-!
# A243190: Nonnegative numbers of the form -2x^2+6xy+3y^2.

The programs for A243190, there is no canonical definition to state claims against.
-/

/-! ## A243190.P13569471587610652575

`∩[3*n, A243188(n+1)]/3`
-/

namespace A243190.P13569471587610652575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 3

end

end A243190.P13569471587610652575

/-! ## A243190.P3722312065377184240

`record[-A166711(A243188(n+1))]`
-/

namespace A243190.P3722312065377184240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A166711 (A243188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243190.P3722312065377184240

/-! ## A243190.P13073977630680770177

`record[A159075(n)-A166711(A243188(n+1))]`
-/

namespace A243190.P13073977630680770177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n - A166711 (A243188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243190.P13073977630680770177

/-! ## A243190.P8083526325523211330

`record[A057428(n)*A166711(A243188(n+1))]`
-/

namespace A243190.P8083526325523211330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A166711 (A243188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243190.P8083526325523211330

/-! ## A243190.P11050788134804456891

`record[A000007(n+1)-A166711(A243188(n+1))]`
-/

namespace A243190.P11050788134804456891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A166711 (A243188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243190.P11050788134804456891

/-! ## A243190.P9368325397862923510

`record[A000038(n+1)-A166711(A243188(n+1))]`
-/

namespace A243190.P9368325397862923510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A166711 (A243188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243190.P9368325397862923510

/-! ## A243190.P6621619638973963053

`record[A008683(A020484(n))*A166711(A243188(n+1))]`
-/

namespace A243190.P6621619638973963053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat * A166711 (A243188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243190.P6621619638973963053

/-!
# A243192: Nonnegative integers represented by the indefinite quadratic form 3x^2+3xy-4y^2.

The programs for A243192, there is no canonical definition to state claims against.
-/

/-! ## A243192.P962360794098103127

`record[A025480(A243193(n+1))]`
-/

namespace A243192.P962360794098103127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243192.P962360794098103127

/-! ## A243192.P3578426333888483676

`record[A142150(A243193(n+2))]`
-/

namespace A243192.P3578426333888483676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A243193 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243192.P3578426333888483676

/-! ## A243192.P5413535142106715133

`A002265(record[A157142(A243193(n+1))])`
-/

namespace A243192.P5413535142106715133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 (A243193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243192.P5413535142106715133

/-! ## A243192.P15902774780084698414

`A059169(record[A157142(A243193(n+1))])`
-/

namespace A243192.P15902774780084698414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 (A243193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243192.P15902774780084698414

/-!
# A243193: Nonnegative integers represented by the indefinite quadratic form -3x^2+3xy+4y^2.

The programs for A243193, there is no canonical definition to state claims against.
-/

/-! ## A243193.P14457751392711257065

`record[A025480(A243192(n+1))]`
-/

namespace A243193.P14457751392711257065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243193.P14457751392711257065

/-! ## A243193.P15734445449731441293

`record[A078898(A243192(A008619(n)))]`
-/

namespace A243193.P15734445449731441293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243192 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243193.P15734445449731441293

/-! ## A243193.P8190610189655427799

`A004525(record[A153733(A243192(n+1))])`
-/

namespace A243193.P8190610189655427799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A243192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243193.P8190610189655427799

/-! ## A243193.P8292349518605315276

`A004526(record[A153733(A243192(n+1))])`
-/

namespace A243193.P8292349518605315276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A243192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243193.P8292349518605315276

/-! ## A243193.P6260992010762031503

`A004526(record[A237420(A243192(n+1))])`
-/

namespace A243193.P6260992010762031503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A243192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243193.P6260992010762031503

/-! ## A243193.P3242313286038536013

`record[A078898(A243192(n+1)%A141192(n+1))]`
-/

namespace A243193.P3242313286038536013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A243192 (n + 1)) (A141192 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243193.P3242313286038536013

/-! ## A243193.P12773377511754780320

`A002265(record[A266439(A243192(n+1))])`
-/

namespace A243193.P12773377511754780320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266439 (A243192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243193.P12773377511754780320

/-!
# A243194: Nonnegative integers of the form x^2+xy+10y^2.

The programs for A243194, there is no canonical definition to state claims against.
-/

/-! ## A243194.P10617803034871466789

`record[A103627(A243681(n))]`
-/

namespace A243194.P10617803034871466789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A243681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243194.P10617803034871466789

/-! ## A243194.P7079215416166983930

`record[A263390(A243681(n)%A087953(n))]`
-/

namespace A243194.P7079215416166983930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (Int.tmod (A243681 n) (A087953 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243194.P7079215416166983930

/-! ## A243194.P10802341588903883284

`∩[A010439(n+1), A047513(n+1)]`
-/

namespace A243194.P10802341588903883284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243194.P10802341588903883284

/-! ## A243194.P15275853706221585050

`∩[A010439(n+1), A374049(n+1)]`
-/

namespace A243194.P15275853706221585050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243194.P15275853706221585050

/-! ## A243194.P14149772526504005249

`eq[A104512(A117552(n+1)), A353859(2*n+1)]`
-/

namespace A243194.P14149772526504005249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104512 (A117552 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353859 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243194.P14149772526504005249

/-!
# A243195: G.f.: A(x) = F(0,x) where F(0,x) = 1/(1 - x*F(1,x)), F(1,x) = 1/(1 - 4*x*F(2,x)^2)^(1/2), F(2,x) = 1/(1 - 9*x/F(3,x)^3)^(1/3), F(3,x) = 1/(1 - 16*x/F(4,x)^4)^(1/4), ..., so that F(n,x) = 1/(1 - (n+1)^2*x*F(n+1,x)^(n+1))^(1/(n+1)) for n>=0.

The programs for A243195, there is no canonical definition to state claims against.
-/

/-! ## A243195.P4461606061790967318

`or(n, A194444(n!))`
-/

namespace A243195.P4461606061790967318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A194444 (Nat.factorial n))

end

end A243195.P4461606061790967318

/-!
# A243196: Number of primorial numbers < 10^n.

The programs for A243196, there is no canonical definition to state claims against.
-/

/-! ## A243196.P15825776323926854215

`A385863(n+1)+1`
-/

namespace A243196.P15825776323926854215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385863 (n + 1) + 1

end

end A243196.P15825776323926854215

/-! ## A243196.P18370550945832421375

`A020725(A385863(n+1))`
-/

namespace A243196.P18370550945832421375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A385863 (n + 1)).toNat

end

end A243196.P18370550945832421375

/-! ## A243196.P16755123498874150419

`A061420(∑[∑[A008277(n+1)]+1]+1)`
-/

namespace A243196.P16755123498874150419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A243196.P16755123498874150419

/-! ## A243196.P9207745462879575652

`A227177(∑[A373673(2*(n+1))+1])`
-/

namespace A243196.P9207745462879575652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373673 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243196.P9207745462879575652

/-! ## A243196.P5159495682892946501

`A134914(A008585(3*n+1)*A009994(n+4))`
-/

namespace A243196.P5159495682892946501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A008585 (3 * n + 1) * A009994 (n + 4)).toNat

end

end A243196.P5159495682892946501

/-!
# A243199: Let A242719(n)-1 = prime(l)*prime(m), l<=m; a(n)=m-l.

The programs for A243199, there is no canonical definition to state claims against.
-/

/-! ## A243199.P3723654691640825311

`A297173(A242719(n+2)-1)`
-/

namespace A243199.P3723654691640825311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A242719 (n + 2) - 1).toNat

end

end A243199.P3723654691640825311

/-! ## A243199.P14338282587863331279

`A326844(A242719(n+2)-1)`
-/

namespace A243199.P14338282587863331279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (A242719 (n + 2) - 1).toNat

end

end A243199.P14338282587863331279

/-! ## A243199.P7408456589052381826

`A007290(A094660(n))%8`
-/

namespace A243199.P7408456589052381826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007290 (A094660 n).toNat) 8

end

end A243199.P7408456589052381826

/-! ## A243199.P7893103884594202200

`and(A007290(A094660(n)), A261079(n+1))`
-/

namespace A243199.P7893103884594202200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007290 (A094660 n).toNat) (A261079 (n + 1))

end

end A243199.P7893103884594202200

/-! ## A243199.P18071078185974107978

`and(A007290(A094660(n)), A346651(n+1))`
-/

namespace A243199.P18071078185974107978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007290 (A094660 n).toNat) (A346651 (n + 1))

end

end A243199.P18071078185974107978

