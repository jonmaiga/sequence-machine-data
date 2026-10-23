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
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
import Seq.B008.C001
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
# A144500: Column 4 of array in A144502.

The programs for A144500, there is no canonical definition to state claims against.
-/

/-! ## A144500.P6404907142419031899

`A144502(A056000(n)+14)`
-/

namespace A144500.P6404907142419031899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (A056000 n + 14).toNat

end

end A144500.P6404907142419031899

/-! ## A144500.P2433220179647165915

`A144502(eq[3, A141169(n)])`
-/

namespace A144500.P2433220179647165915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144500.P2433220179647165915

/-! ## A144500.P8142768310237018711

`A144502(eq[4, A002262(n)])`
-/

namespace A144500.P8142768310237018711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144500.P8142768310237018711

/-! ## A144500.P5465269934780791204

`A144502(eq[16, A059268(n)])`
-/

namespace A144500.P5465269934780791204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144500.P5465269934780791204

/-! ## A144500.P7898621158447879836

`A144502(eq[5, A002260(n+1)])`
-/

namespace A144500.P7898621158447879836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144500.P7898621158447879836

/-!
# A144501: Main diagonal of array in A144502.

The programs for A144501, there is no canonical definition to state claims against.
-/

/-! ## A144501.P5234049971618416274

`A144502(∑[4*n])`
-/

namespace A144501.P5234049971618416274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144501.P5234049971618416274

/-! ## A144501.P1520396846159219772

`record[A144502(A057979(n²))]`
-/

namespace A144501.P1520396846159219772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (A057979 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144501.P1520396846159219772

/-! ## A144501.P4917347039988397343

`record[A003982(n)*A144502(n)]`
-/

namespace A144501.P4917347039988397343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A144502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144501.P4917347039988397343

/-! ## A144501.P734868211294812539

`record[A144502(gcd(n, A114327(n)))]`
-/

namespace A144501.P734868211294812539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144501.P734868211294812539

/-! ## A144501.P4855322546465853568

`record[A077606(n+1)*A144502(n)]`
-/

namespace A144501.P4855322546465853568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A144502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144501.P4855322546465853568

/-!
# A144502: Square array read by antidiagonals upwards: T(n,k) is the number of scenarios for the gift exchange problem in which each gift can be stolen at most once, when there are n gifts in the pool and k gifts (not yet frozen) in peoples' hands.

The programs for A144502, there is no canonical definition to state claims against.
-/

/-! ## A144502.P8857055247965186327

`A005117(A104557(n)%A143835(n+1))`
-/

namespace A144502.P8857055247965186327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.tmod (A104557 n) (A143835 (n + 1))).toNat

end

end A144502.P8857055247965186327

/-! ## A144502.P439213877498462997

`A005117(A104557(n))%A331040(2*n+3)`
-/

namespace A144502.P439213877498462997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (A104557 n).toNat) (A331040 (2 * n + 3))

end

end A144502.P439213877498462997

/-! ## A144502.P11243998178011906575

`A005117(A104557(n))%A000040(A283877(n))`
-/

namespace A144502.P11243998178011906575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (A104557 n).toNat) (A000040 (A283877 n).toNat)

end

end A144502.P11243998178011906575

/-! ## A144502.P5073888964581363510

`A005117(A104557(n)^A074389(n+1))`
-/

namespace A144502.P5073888964581363510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.roundAway ((A104557 n : ℚ) ^ (A074389 (n + 1) : ℤ))).toNat

end

end A144502.P5073888964581363510

/-! ## A144502.P3946822382330845232

`A325511(A104557(n)^A074389(n+1))`
-/

namespace A144502.P3946822382330845232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325511 (SequenceMachineLib.roundAway ((A104557 n : ℚ) ^ (A074389 (n + 1) : ℤ))).toNat

end

end A144502.P3946822382330845232

/-!
# A144503: Sum of n-th antidiagonal of array in A144502.

The programs for A144503, the canonical program `A144503.P14199849930571569418` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144503 has offset 0).

The definition of A144503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144503.P14199849930571569418

`2*(n-1)*a(n-1)+a(n-2)-2*(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144503

/-- `2*(n-1)*a(n-1)+a(n-2)-2*(n-2)` -/
def P14199849930571569418.Spec : Prop :=
  ∀ n, P14199849930571569418.a n = A144503 n

theorem P14199849930571569418.correct : P14199849930571569418.Spec := by
  intro n
  simp only [A144503]

end A144503

/-!
# A144506: Column 3 of triangle in A144505, negated.

The programs for A144506, there is no canonical definition to state claims against.
-/

/-! ## A144506.P10939916469778116595

`A338730(5*(2*C(n, 4))²)`
-/

namespace A144506.P10939916469778116595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338730 (5 * (2 * Nat.choose n 4) ^ 2)

end

end A144506.P10939916469778116595

/-! ## A144506.P178658437149929877

`∑[2*n²-1]%A296407(n)`
-/

namespace A144506.P178658437149929877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A296407 n)

end

end A144506.P178658437149929877

/-! ## A144506.P2979673095507661968

`A224712(round((n-1)^(n-1)/3)+1)`
-/

namespace A144506.P2979673095507661968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 3) + 1).toNat

end

end A144506.P2979673095507661968

/-!
# A144507: Column 4 of triangle in A144505.

The programs for A144507, there is no canonical definition to state claims against.
-/

/-! ## A144507.P1893340332798531685

`A116399(A392405(n))`
-/

namespace A144507.P1893340332798531685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116399 (A392405 n).toNat

end

end A144507.P1893340332798531685

/-! ## A144507.P12338945846439580094

`A332067(∑[A326249(n)])`
-/

namespace A144507.P12338945846439580094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332067 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144507.P12338945846439580094

/-! ## A144507.P3340562836890130638

`A036857(Δ[A019302(n)])`
-/

namespace A144507.P3340562836890130638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036857 (f1 (n + 1) - f1 n).toNat

end

end A144507.P3340562836890130638

/-! ## A144507.P5771759060760950256

`A036871(A001383(n+1))`
-/

namespace A144507.P5771759060760950256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036871 (A001383 (n + 1)).toNat

end

end A144507.P5771759060760950256

/-!
# A144508: a(n) = total number of partitions of [1, 2, ..., k] into exactly n blocks, each of size 1, 2, 3 or 4, for 0 <= k <= 4n.

The programs for A144508, there is no canonical definition to state claims against.
-/

/-! ## A144508.P774931589441837178

`A144510(A141214(n)+7)`
-/

namespace A144508.P774931589441837178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A141214 n + 7).toNat

end

end A144508.P774931589441837178

/-! ## A144508.P8358119217274044197

`A144510(A052905(n)+9)`
-/

namespace A144508.P8358119217274044197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A052905 n + 9).toNat

end

end A144508.P8358119217274044197

/-! ## A144508.P8679167857437307662

`A144510(A055999(n)+10)`
-/

namespace A144508.P8679167857437307662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A055999 n + 10).toNat

end

end A144508.P8679167857437307662

/-! ## A144508.P16864335565113475191

`A144510(A167614(n+2)+1)`
-/

namespace A144508.P16864335565113475191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A167614 (n + 2) + 1).toNat

end

end A144508.P16864335565113475191

/-! ## A144508.P14161982342092036504

`A144510(A112355(n+1)+4)`
-/

namespace A144508.P14161982342092036504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A112355 (n + 1) + 4).toNat

end

end A144508.P14161982342092036504

/-!
# A144509: a(n) = total number of partitions of [1, 2, ..., k] into exactly n blocks, each of size 1, 2, ..., 5, for 0 <= k <= 5n.

The programs for A144509, there is no canonical definition to state claims against.
-/

/-! ## A144509.P3391100091021942193

`A144510(A167499(n+3))`
-/

namespace A144509.P3391100091021942193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A167499 (n + 3)).toNat

end

end A144509.P3391100091021942193

/-! ## A144509.P9305816331232338895

`A144510(A141214(n+1)+8)`
-/

namespace A144509.P9305816331232338895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A141214 (n + 1) + 8).toNat

end

end A144509.P9305816331232338895

/-!
# A144510: Array T(n,k) (n >= 1, k >= 0) read by downwards antidiagonals: T(n,k) = total number of partitions of [1, 2, ..., i] into exactly k nonempty blocks, each of size at most n, for any i in the range n <= i <= k*n.

The programs for A144510, there is no canonical definition to state claims against.
-/

/-! ## A144510.P13443813980869536451

`A144512((∑[2*n]%comp[∑[n]])%A124572(n))`
-/

namespace A144510.P13443813980869536451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144512 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) (A124572 n)).toNat

end

end A144510.P13443813980869536451

/-! ## A144510.P13713745870620815636

`A144512(A056943(n)+A003056(n))`
-/

namespace A144510.P13713745870620815636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144512 (A056943 n + A003056 n).toNat

end

end A144510.P13713745870620815636

/-! ## A144510.P2232143779844186438

`A144512(A163352(n)+A056943(n))`
-/

namespace A144510.P2232143779844186438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144512 (A163352 n + A056943 n).toNat

end

end A144510.P2232143779844186438

/-! ## A144510.P13976250320225503043

`A144512(A061579(n%A013613(n)))`
-/

namespace A144510.P13976250320225503043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144512 (A061579 (Int.tmod (n : ℤ) (A013613 n)).toNat).toNat

end

end A144510.P13976250320225503043

/-! ## A144510.P458421869212893898

`A144512(A002378(n)%A080036(n))`
-/

namespace A144510.P458421869212893898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144512 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A144510.P458421869212893898

/-!
# A144511: a(n) = Sum_{i=1..n} Sum_{j=1..n} Sum_{k=1..n} (i+j+k)!/(3!*i!*j!*k!).

The programs for A144511, there is no canonical definition to state claims against.
-/

/-! ## A144511.P17019837070733819323

`(5+3*n-3*C(2*n+2, n+1)+A144660(n))/6`
-/

namespace A144511.P17019837070733819323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 + 3 * n : ℤ) - (3 * Nat.choose (2 * n + 2) (n + 1) : ℤ) + A144660 n : ℚ) / 6

end

end A144511.P17019837070733819323

/-! ## A144511.P16696960219590967733

`A144658(n)/6`
-/

namespace A144511.P16696960219590967733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144658 n : ℚ) / 6

end

end A144511.P16696960219590967733

/-! ## A144511.P11840113941777875268

`record[char[A052905(n+1)]*A144510(n+2)]`
-/

namespace A144511.P11840113941777875268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144510 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144511.P11840113941777875268

/-! ## A144511.P8903014412943317777

`A144510(A141214(n))-A000007(n)`
-/

namespace A144511.P8903014412943317777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A141214 n).toNat - A000007 n

end

end A144511.P8903014412943317777

/-! ## A144511.P6704180460854420254

`A144510(A141214(n))-A151935(n)`
-/

namespace A144511.P6704180460854420254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A141214 n).toNat - A151935 n

end

end A144511.P6704180460854420254

/-!
# A144512: Array read by upwards antidiagonals: T(n,k) = total number of partitions of [1, 2, ..., k] into exactly n blocks, each of size 1, 2, ..., k+1, for 0 <= k <= (k+1)*n.

The programs for A144512, there is no canonical definition to state claims against.
-/

/-! ## A144512.P16221611818468756132

`A144510(∑[char[∑[n]]]²-n)`
-/

namespace A144512.P16221611818468756132
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A144512.P16221611818468756132

/-! ## A144512.P3547894138777750966

`and(-1, A144510(A038722(n+1)))`
-/

namespace A144512.P3547894138777750966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A144510 (A038722 (n + 1)).toNat)

end

end A144512.P3547894138777750966

/-! ## A144512.P5461722113160018919

`A144510(A038722(n+1))^A035214(n)`
-/

namespace A144512.P5461722113160018919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144510 (A038722 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A144512.P5461722113160018919

/-! ## A144512.P13161566217401470401

`A144510(A038722(n+1))^A051340(n)`
-/

namespace A144512.P13161566217401470401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144510 (A038722 (n + 1)).toNat : ℚ) ^ (A051340 n : ℤ)

end

end A144512.P13161566217401470401

/-! ## A144512.P11169206775840036213

`gcd(A000038(n), A144510(A038722(n+1)))`
-/

namespace A144512.P11169206775840036213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144510 (A038722 (n + 1)).toNat)

end

end A144512.P11169206775840036213

/-! ## A144512.P12425897794145683678

`A007318(∑[n])*A144510(A038722(n+1))`
-/

namespace A144512.P12425897794145683678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A144510 (A038722 (n + 1)).toNat

end

end A144512.P12425897794145683678

/-! ## A144512.P9569300417286936795

`∏{p}[n, A001221(#)]*A144510(A038722(n+1))`
-/

namespace A144512.P9569300417286936795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A144510 (A038722 (n + 1)).toNat

end

end A144512.P9569300417286936795

/-! ## A144512.P15152812843352399126

`A144510(A038722(n+1))+A008683(12*n+4)`
-/

namespace A144512.P15152812843352399126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A038722 (n + 1)).toNat + A008683 (12 * n + 4)

end

end A144512.P15152812843352399126

/-! ## A144512.P7343328045789631509

`A000041(C(2, n+2))*A144510(A038722(n+1))`
-/

namespace A144512.P7343328045789631509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A144510 (A038722 (n + 1)).toNat

end

end A144512.P7343328045789631509

/-! ## A144512.P9706469681403075605

`A005117(gcd(n, n+1))*A144510(A038722(n+1))`
-/

namespace A144512.P9706469681403075605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.gcd n (n + 1)) * A144510 (A038722 (n + 1)).toNat

end

end A144512.P9706469681403075605

/-!
# A144513: a(n) = Sum_{k=0..n} (n+k+2)!/((n-k)!*k!*2^k).

The programs for A144513, there is no canonical definition to state claims against.
-/

/-! ## A144513.P17888875504256868657

`2*A001514(n+1)`
-/

namespace A144513.P17888875504256868657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001514 (n + 1)

end

end A144513.P17888875504256868657

/-! ## A144513.P7300083499656800790

`Δ[2*∑[A001514(n)]]`
-/

namespace A144513.P7300083499656800790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144513.P7300083499656800790

/-! ## A144513.P2201026534737602802

`A144499(n)+A001515(n)`
-/

namespace A144513.P2201026534737602802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144499 n + A001515 n

end

end A144513.P2201026534737602802

/-! ## A144513.P16076215942480921121

`A144499(n)+record[A144502(n)]`
-/

namespace A144513.P16076215942480921121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144499 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144513.P16076215942480921121

/-! ## A144513.P4949583537066311432

`2*A144505(A034856(n+2))`
-/

namespace A144513.P4949583537066311432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144505 (A034856 (n + 2)).toNat

end

end A144513.P4949583537066311432

/-! ## A144513.P12931455097039575205

`A144499(n)+A144301(n+1)`
-/

namespace A144513.P12931455097039575205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144499 n + A144301 (n + 1)

end

end A144513.P12931455097039575205

/-! ## A144513.P10826890228214182800

`A144647(n+1)-A001515(n+1)`
-/

namespace A144513.P10826890228214182800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144647 (n + 1) - A001515 (n + 1)

end

end A144513.P10826890228214182800

/-! ## A144513.P1852031084413941003

`A144647(n+1)-A144301(n+2)`
-/

namespace A144513.P1852031084413941003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144647 (n + 1) - A144301 (n + 2)

end

end A144513.P1852031084413941003

/-! ## A144513.P9167962525600591820

`A144498(n+1)-(A144498(n)+A001515(n+1))`
-/

namespace A144513.P9167962525600591820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144498 (n + 1) - (A144498 n + A001515 (n + 1))

end

end A144513.P9167962525600591820

/-!
# A144514: a(n) = Sum_{k=0..n} (n+k+3)!/((n-k)!*k!*2^k).

The programs for A144514, there is no canonical definition to state claims against.
-/

/-! ## A144514.P15801459988965206079

`6*A144506(n+4)`
-/

namespace A144514.P15801459988965206079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A144506 (n + 4)

end

end A144514.P15801459988965206079

/-!
# A144515: Triangle read by rows: A051731 * A103451.

The programs for A144515, the canonical program `A144515.P918910334272225371` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144515 has offset 0).

The definition of A144515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144515.P11447606864315724632

`∑{d}[A158906(n+1), A054977(#)]`
-/

namespace A144515.P11447606864315724632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A144515.P11447606864315724632

namespace A144515

/-- `∑{d}[A158906(n+1), A054977(#)]` -/
def P11447606864315724632.Spec : Prop :=
  ∀ n, P11447606864315724632.a n = A144515 n

end A144515

/-! ## A144515.P8055495236998136701

`∑{d}[A158906(n+1), A057427(#)]`
-/

namespace A144515.P8055495236998136701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A144515.P8055495236998136701

namespace A144515

/-- `∑{d}[A158906(n+1), A057427(#)]` -/
def P8055495236998136701.Spec : Prop :=
  ∀ n, P8055495236998136701.a n = A144515 n

end A144515

/-! ## A144515.P918910334272225371

`ceil(A127170(n+1)/A007318(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144515

/-- `ceil(A127170(n+1)/A007318(n))` -/
def P918910334272225371.Spec : Prop :=
  ∀ n, P918910334272225371.a n = A144515 n

theorem P918910334272225371.correct : P918910334272225371.Spec := by
  intro n
  simp only [A144515]

end A144515

/-! ## A144515.P4759420938202803627

`ceil(A127170(n+1)/A008949(n))`
-/

namespace A144515.P4759420938202803627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127170 (n + 1) : ℚ) / (A008949 n : ℚ)⌉

end

end A144515.P4759420938202803627

namespace A144515

/-- `ceil(A127170(n+1)/A008949(n))` -/
def P4759420938202803627.Spec : Prop :=
  ∀ n, P4759420938202803627.a n = A144515 n

end A144515

/-! ## A144515.P7957509201015353520

`ceil(A127170(n+1)/A013610(n))`
-/

namespace A144515.P7957509201015353520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127170 (n + 1) : ℚ) / (A013610 n : ℚ)⌉

end

end A144515.P7957509201015353520

namespace A144515

/-- `ceil(A127170(n+1)/A013610(n))` -/
def P7957509201015353520.Spec : Prop :=
  ∀ n, P7957509201015353520.a n = A144515 n

end A144515

/-! ## A144515.P16068615115009664406

`ceil(A127170(n+1)/A173740(n))`
-/

namespace A144515.P16068615115009664406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127170 (n + 1) : ℚ) / (A173740 n : ℚ)⌉

end

end A144515.P16068615115009664406

namespace A144515

/-- `ceil(A127170(n+1)/A173740(n))` -/
def P16068615115009664406.Spec : Prop :=
  ∀ n, P16068615115009664406.a n = A144515 n

end A144515

/-! ## A144515.P2582675946420808398

`A000005(round(sqrt(2*n))*char[∑[n]]+1)*A051731(n+1)`
-/

namespace A144515.P2582675946420808398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat * A051731 (n + 1)

end

end A144515.P2582675946420808398

namespace A144515

/-- `A000005(round(sqrt(2*n))*char[∑[n]]+1)*A051731(n+1)` -/
def P2582675946420808398.Spec : Prop :=
  ∀ n, P2582675946420808398.a n = A144515 n

end A144515

/-! ## A144515.P13793261971236418446

`∑{d}[A158906(n+1), A016192(A158906(#))]`
-/

namespace A144515.P13793261971236418446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A016192 (A158906 d).toNat

end

end A144515.P13793261971236418446

namespace A144515

/-- `∑{d}[A158906(n+1), A016192(A158906(#))]` -/
def P13793261971236418446.Spec : Prop :=
  ∀ n, P13793261971236418446.a n = A144515 n

end A144515

/-! ## A144515.P11198963841802661583

`A051731(n+1)+A032741(A158906(n+1))`
-/

namespace A144515.P11198963841802661583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A032741 (A158906 (n + 1)).toNat

end

end A144515.P11198963841802661583

namespace A144515

/-- `A051731(n+1)+A032741(A158906(n+1))` -/
def P11198963841802661583.Spec : Prop :=
  ∀ n, P11198963841802661583.a n = A144515 n

end A144515

/-! ## A144515.P7381627733875195922

`ceil(A127170(n+1)/A055129(n+1))`
-/

namespace A144515.P7381627733875195922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127170 (n + 1) : ℚ) / (A055129 (n + 1) : ℚ)⌉

end

end A144515.P7381627733875195922

namespace A144515

/-- `ceil(A127170(n+1)/A055129(n+1))` -/
def P7381627733875195922.Spec : Prop :=
  ∀ n, P7381627733875195922.a n = A144515 n

end A144515

/-!
# A144516: a(n) = (15*n^2+45*n-70)*binomial(n+4,6)/8.

The programs for A144516, the canonical program `A144516.P2829091930204953820` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144516 has offset 0).

The definition of A144516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144516.P2829091930204953820

`(15*n²+45*n-70)*C(n+4, 6)/8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144516

/-- `(15*n²+45*n-70)*C(n+4, 6)/8` -/
def P2829091930204953820.Spec : Prop :=
  ∀ n, P2829091930204953820.a n = (A144516 n : ℚ)

end A144516

/-! ## A144516.P11636001752541148876

`A000332(∑[n+1])-A000910(n+4)`
-/

namespace A144516.P11636001752541148876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j) - A000910 (n + 4)

end

end A144516.P11636001752541148876

namespace A144516

/-- `A000332(∑[n+1])-A000910(n+4)` -/
def P11636001752541148876.Spec : Prop :=
  ∀ n, P11636001752541148876.a n = A144516 n

end A144516

/-! ## A144516.P14533430713359061306

`A144633(A155212(n)+4-(n+2)%(n+1))`
-/

namespace A144516.P14533430713359061306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A155212 n + 4 - (((n + 2) % (n + 1) : ℕ) : ℤ)).toNat

end

end A144516.P14533430713359061306

namespace A144516

/-- `A144633(A155212(n)+4-(n+2)%(n+1))` -/
def P14533430713359061306.Spec : Prop :=
  ∀ n, P14533430713359061306.a n = A144516 n

end A144516

/-! ## A144516.P13622630639936876810

`A144633(A155212(n)+A122553(n))`
-/

namespace A144516.P13622630639936876810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A155212 n + A122553 n).toNat

end

end A144516.P13622630639936876810

namespace A144516

/-- `A144633(A155212(n)+A122553(n))` -/
def P13622630639936876810.Spec : Prop :=
  ∀ n, P13622630639936876810.a n = A144516 n

end A144516

/-! ## A144516.P17923388158923359529

`A144633(A167614(n+1)+A004273(n))`
-/

namespace A144516.P17923388158923359529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144633 (A167614 (n + 1) + A004273 n).toNat

end

end A144516.P17923388158923359529

namespace A144516

/-- `A144633(A167614(n+1)+A004273(n))` -/
def P17923388158923359529.Spec : Prop :=
  ∀ n, P17923388158923359529.a n = A144516 n

end A144516

/-!
# A144517: Primes p=prime(k) such that p - nonprime(k) is nonprime and p + nonprime(k) is prime, where prime(n) is the n-th prime and nonprime(n) is the n-th nonprime starting with nonprime(1) = 0.

The programs for A144517, there is no canonical definition to state claims against.
-/

/-! ## A144517.P1859113791566191700

`p?[∑[A350065(9^∑{e}[n+1, #])]]`
-/

namespace A144517.P1859113791566191700
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350065 (9 ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144517.P1859113791566191700

/-!
# A144518: From decimal expansion of Euler's constant 0.57721566490...: 0+5, 7+7, 2+1, 5+6, 6+4, 9+0, ...

The programs for A144518, there is no canonical definition to state claims against.
-/

/-! ## A144518.P8707560312863932942

`Δ[A093084(A004273(n))]`
-/

namespace A144518.P8707560312863932942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144518.P8707560312863932942

/-! ## A144518.P13435567840019869552

`Δ[A093084(record[A026741(n)])]`
-/

namespace A144518.P13435567840019869552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144518.P13435567840019869552

/-! ## A144518.P7684393286498413591

`Δ[A093084(A014681(2*n))]`
-/

namespace A144518.P7684393286498413591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (A014681 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144518.P7684393286498413591

/-! ## A144518.P9163163371752269405

`Δ[A093084(A130824(n)/2)]`
-/

namespace A144518.P9163163371752269405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (SequenceMachineLib.roundAway ((A130824 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144518.P9163163371752269405

/-! ## A144518.P8738513163434558105

`Δ[A093084(A110654(A130824(n)))]`
-/

namespace A144518.P8738513163434558105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (A110654 (A130824 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144518.P8738513163434558105

/-! ## A144518.P9431056469231287773

`A093084(2*n+1)-A093084(A004273(n))`
-/

namespace A144518.P9431056469231287773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (2 * n + 1) - A093084 (A004273 n).toNat

end

end A144518.P9431056469231287773

/-! ## A144518.P16921764584498505851

`A093084(2*n+1)-A093084(A014681(2*n))`
-/

namespace A144518.P16921764584498505851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (2 * n + 1) - A093084 (A014681 (2 * n)).toNat

end

end A144518.P16921764584498505851

/-! ## A144518.P7094407488020274607

`Δ[A093084(A003056(A001105(n)))]`
-/

namespace A144518.P7094407488020274607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (A003056 (A001105 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144518.P7094407488020274607

/-!
# A144519: Triangular numbers n*(n+1)/2 with n prime and n+1 nonprime.

The programs for A144519, the canonical program `A144519.P4122143028393820642` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144519 has offset 1).

The definition of A144519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144519.P4122143028393820642

`C(p?[2*n+1]+1, 2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144519

/-- `C(p?[2*n+1]+1, 2)` -/
def P4122143028393820642.Spec : Prop :=
  ∀ n, (P4122143028393820642.a n : ℤ) = A144519 (n + 1)

theorem P4122143028393820642.correct : P4122143028393820642.Spec := by
  intro n
  simp only [A144519, Nat.add_sub_cancel]

end A144519

/-! ## A144519.P13210257860119200574

`C(lcm(2, p?[n+1+n])/2+1, 2)`
-/

namespace A144519.P13210257860119200574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((Nat.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2 + 1)).toNat 2

end

end A144519.P13210257860119200574

namespace A144519

/-- `C(lcm(2, p?[n+1+n])/2+1, 2)` -/
def P13210257860119200574.Spec : Prop :=
  ∀ n, (P13210257860119200574.a n : ℤ) = A144519 (n + 1)

end A144519

/-! ## A144519.P10231350193644371083

`C(or(1, p?[n+1+n]-1)+1, 2)`
-/

namespace A144519.P10231350193644371083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.lor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1) + 1).toNat 2

end

end A144519.P10231350193644371083

namespace A144519

/-- `C(or(1, p?[n+1+n]-1)+1, 2)` -/
def P10231350193644371083.Spec : Prop :=
  ∀ n, (P10231350193644371083.a n : ℤ) = A144519 (n + 1)

end A144519

/-! ## A144519.P798694146183816743

`(p?[2*n+1]+p?[2*n+1]²)/2`
-/

namespace A144519.P798694146183816743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 : ℚ) / 2

end

end A144519.P798694146183816743

namespace A144519

/-- `(p?[2*n+1]+p?[2*n+1]²)/2` -/
def P798694146183816743.Spec : Prop :=
  ∀ n, P798694146183816743.a n = (A144519 (n + 1) : ℚ)

end A144519

/-! ## A144519.P16802153074757032722

`C(A055670(n+2), 2)`
-/

namespace A144519.P16802153074757032722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055670 (n + 2)).toNat 2

end

end A144519.P16802153074757032722

namespace A144519

/-- `C(A055670(n+2), 2)` -/
def P16802153074757032722.Spec : Prop :=
  ∀ n, (P16802153074757032722.a n : ℤ) = A144519 (n + 1)

end A144519

/-! ## A144519.P4470764832837937272

`A243887(n+1)+A098090(n+1)`
-/

namespace A144519.P4470764832837937272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243887 (n + 1) + A098090 (n + 1)

end

end A144519.P4470764832837937272

namespace A144519

/-- `A243887(n+1)+A098090(n+1)` -/
def P4470764832837937272.Spec : Prop :=
  ∀ n, P4470764832837937272.a n = A144519 (n + 1)

end A144519

/-! ## A144519.P4276625549773593038

`A066885(n+2)+A005097(n+1)`
-/

namespace A144519.P4276625549773593038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (n + 2) + A005097 (n + 1)

end

end A144519.P4276625549773593038

namespace A144519

/-- `A066885(n+2)+A005097(n+1)` -/
def P4276625549773593038.Spec : Prop :=
  ∀ n, P4276625549773593038.a n = A144519 (n + 1)

end A144519

/-! ## A144519.P6747330537941339594

`A216244(n+2)+A006254(n+1)`
-/

namespace A144519.P6747330537941339594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 2) + A006254 (n + 1)

end

end A144519.P6747330537941339594

namespace A144519

/-- `A216244(n+2)+A006254(n+1)` -/
def P6747330537941339594.Spec : Prop :=
  ∀ n, P6747330537941339594.a n = A144519 (n + 1)

end A144519

/-! ## A144519.P17253323036320930357

`A006254(n+1)*A065091(n+1)`
-/

namespace A144519.P17253323036320930357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) * A065091 (n + 1)

end

end A144519.P17253323036320930357

namespace A144519

/-- `A006254(n+1)*A065091(n+1)` -/
def P17253323036320930357.Spec : Prop :=
  ∀ n, P17253323036320930357.a n = A144519 (n + 1)

end A144519

/-! ## A144519.P13672338160545877253

`A140511(n+2)-A028334(n+2)`
-/

namespace A144519.P13672338160545877253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140511 (n + 2) - A028334 (n + 2)

end

end A144519.P13672338160545877253

namespace A144519

/-- `A140511(n+2)-A028334(n+2)` -/
def P13672338160545877253.Spec : Prop :=
  ∀ n, P13672338160545877253.a n = A144519 (n + 1)

end A144519

/-! ## A144519.P10875851018902896721

`A034953(n+2)`
-/

namespace A144519.P10875851018902896721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 2)

end

end A144519.P10875851018902896721

namespace A144519

/-- `A034953(n+2)` -/
def P10875851018902896721.Spec : Prop :=
  ∀ n, P10875851018902896721.a n = A144519 (n + 1)

end A144519

/-! ## A144519.P2496099634497137538

`Δ[A085739(n+1)]`
-/

namespace A144519.P2496099634497137538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144519.P2496099634497137538

namespace A144519

/-- `Δ[A085739(n+1)]` -/
def P2496099634497137538.Spec : Prop :=
  ∀ n, P2496099634497137538.a n = A144519 (n + 1)

end A144519

/-! ## A144519.P16233283084529515991

`A036690(n+2)/2`
-/

namespace A144519.P16233283084529515991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 2) : ℚ) / 2

end

end A144519.P16233283084529515991

namespace A144519

/-- `A036690(n+2)/2` -/
def P16233283084529515991.Spec : Prop :=
  ∀ n, P16233283084529515991.a n = (A144519 (n + 1) : ℚ)

end A144519

/-! ## A144519.P16519294298713276551

`A367573(n+2)/4`
-/

namespace A144519.P16519294298713276551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367573 (n + 2) : ℚ) / 4

end

end A144519.P16519294298713276551

namespace A144519

/-- `A367573(n+2)/4` -/
def P16519294298713276551.Spec : Prop :=
  ∀ n, P16519294298713276551.a n = (A144519 (n + 1) : ℚ)

end A144519

/-! ## A144519.P12870773658502064630

`C(A008864(n+2), 2)`
-/

namespace A144519.P12870773658502064630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008864 (n + 2)).toNat 2

end

end A144519.P12870773658502064630

namespace A144519

/-- `C(A008864(n+2), 2)` -/
def P12870773658502064630.Spec : Prop :=
  ∀ n, (P12870773658502064630.a n : ℤ) = A144519 (n + 1)

end A144519

/-! ## A144519.P1879106050284196760

`C(A028815(n+2), 2)`
-/

namespace A144519.P1879106050284196760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028815 (n + 2)).toNat 2

end

end A144519.P1879106050284196760

namespace A144519

/-- `C(A028815(n+2), 2)` -/
def P1879106050284196760.Spec : Prop :=
  ∀ n, (P1879106050284196760.a n : ℤ) = A144519 (n + 1)

end A144519

/-! ## A144519.P13159147595425683010

`C(A175216(n+2), 2)`
-/

namespace A144519.P13159147595425683010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175216 (n + 2)).toNat 2

end

end A144519.P13159147595425683010

namespace A144519

/-- `C(A175216(n+2), 2)` -/
def P13159147595425683010.Spec : Prop :=
  ∀ n, (P13159147595425683010.a n : ℤ) = A144519 (n + 1)

end A144519

/-! ## A144519.P11588468897041977426

`C(sqrt(A110833(n+2)), 2)`
-/

namespace A144519.P11588468897041977426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A110833 (n + 2) : ℝ))).toNat 2

end

end A144519.P11588468897041977426

namespace A144519

/-- `C(sqrt(A110833(n+2)), 2)` -/
def P11588468897041977426.Spec : Prop :=
  ∀ n, (P11588468897041977426.a n : ℤ) = A144519 (n + 1)

end A144519

/-! ## A144519.P346667713232720086

`∑[A138383(n+1)]+3`
-/

namespace A144519.P346667713232720086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A144519.P346667713232720086

namespace A144519

/-- `∑[A138383(n+1)]+3` -/
def P346667713232720086.Spec : Prop :=
  ∀ n, P346667713232720086.a n = A144519 (n + 1)

end A144519

/-! ## A144519.P3498206901440917758

`A000040(n+2)+A000040(n+2)*A130290(n+2)`
-/

namespace A144519.P3498206901440917758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + A000040 (n + 2) * A130290 (n + 2)

end

end A144519.P3498206901440917758

namespace A144519

/-- `A000040(n+2)+A000040(n+2)*A130290(n+2)` -/
def P3498206901440917758.Spec : Prop :=
  ∀ n, P3498206901440917758.a n = A144519 (n + 1)

end A144519

/-!
# A144520: a(n) = A000055(n) - 1.

The programs for A144520, there is no canonical definition to state claims against.
-/

/-! ## A144520.P7223258302340267702

`A000055(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144520.P7223258302340267702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - 1

end

end A144520.P7223258302340267702

/-! ## A144520.P7867565475976337706

`A057428(n+1)+A000055(n)`
-/

namespace A144520.P7867565475976337706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000055 n

end

end A144520.P7867565475976337706

/-! ## A144520.P4329195022178576889

`A153881(n+2)+A000055(n)`
-/

namespace A144520.P4329195022178576889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A000055 n

end

end A144520.P4329195022178576889

/-! ## A144520.P4618986249595563456

`A274935(n)-(A274937(n)+1)`
-/

namespace A144520.P4618986249595563456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 n - (A274937 n + 1)

end

end A144520.P4618986249595563456

/-! ## A144520.P14526700237922742231

`A305805(A208238(n))+A000055(n)`
-/

namespace A144520.P14526700237922742231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305805 (A208238 n).toNat + A000055 n

end

end A144520.P14526700237922742231

/-! ## A144520.P17610979942726474097

`A316441(A000040(n+1))+A000055(n)`
-/

namespace A144520.P17610979942726474097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A000055 n

end

end A144520.P17610979942726474097

/-! ## A144520.P8097854763296818395

`A054354(A054353(2*(n+1)))+A000055(n)`
-/

namespace A144520.P8097854763296818395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (2 * (n + 1))).toNat + A000055 n

end

end A144520.P8097854763296818395

/-! ## A144520.P18142788996114067872

`A000081(A028310(n))-(A217420(n+1)+1)`
-/

namespace A144520.P18142788996114067872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A028310 n).toNat - (A217420 (n + 1) + 1)

end

end A144520.P18142788996114067872

/-! ## A144520.P4160978375856850916

`A038001(A004280(n+1))-(A217420(n+1)+1)`
-/

namespace A144520.P4160978375856850916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (A004280 (n + 1)).toNat - (A217420 (n + 1) + 1)

end

end A144520.P4160978375856850916

/-! ## A144520.P6866863722210439998

`A000081(A233583(n+1))-(A217420(n+1)+1)`
-/

namespace A144520.P6866863722210439998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A233583 (n + 1)).toNat - (A217420 (n + 1) + 1)

end

end A144520.P6866863722210439998

/-! ## A144520.P7341380093150602185

`A095133(∑[n-1]+2)-1`
-/

namespace A144520.P7341380093150602185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - 1

end

end A144520.P7341380093150602185

/-! ## A144520.P12865196168089392595

`A106237(∑[n-1]+2)-1`
-/

namespace A144520.P12865196168089392595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106237 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - 1

end

end A144520.P12865196168089392595

/-! ## A144520.P13904909109519763781

`A136605(A179865(n+1))-1`
-/

namespace A144520.P13904909109519763781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A179865 (n + 1)).toNat - 1

end

end A144520.P13904909109519763781

/-! ## A144520.P9873122081210076907

`A105821(A133263(n))-1`
-/

namespace A144520.P9873122081210076907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A133263 n).toNat - 1

end

end A144520.P9873122081210076907

/-! ## A144520.P2434449369477936435

`A105821(A238531(n+1))-1`
-/

namespace A144520.P2434449369477936435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A238531 (n + 1)).toNat - 1

end

end A144520.P2434449369477936435

/-! ## A144520.P12401839070409910876

`sqrt(A001256(n))-1`
-/

namespace A144520.P12401839070409910876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001256 n : ℝ) - 1

end

end A144520.P12401839070409910876

/-! ## A144520.P9620855822235125655

`A274935(2*n)-(A274936(2*n)+1)`
-/

namespace A144520.P9620855822235125655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 (2 * n) - (A274936 (2 * n) + 1)

end

end A144520.P9620855822235125655

/-! ## A144520.P1083250646494550410

`A381467(A001840(n))-1`
-/

namespace A144520.P1083250646494550410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381467 (A001840 n).toNat - 1

end

end A144520.P1083250646494550410

/-!
# A144521: Tetrahedral numbers k*(k+1)*(k+2)/6 such that exactly one of k, k+1, and k+2 is prime.

The programs for A144521, there is no canonical definition to state claims against.
-/

/-! ## A144521.P7848134588248973275

`A000292(eq[1, A168141(n+1)])`
-/

namespace A144521.P7848134588248973275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144521.P7848134588248973275

/-! ## A144521.P14255842899805197173

`A000292(eq[A007918(n), A093074(n+1)])`
-/

namespace A144521.P14255842899805197173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A144521.P14255842899805197173

/-! ## A144521.P2788130477493093216

`C(A093510(n+2), A038500(A001748(n+2)))`
-/

namespace A144521.P2788130477493093216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A093510 (n + 2)).toNat (A038500 (A001748 (n + 2)).toNat).toNat

end

end A144521.P2788130477493093216

/-! ## A144521.P2008544930500907913

`A058187(3*n+4)%A060544(A000051(n))`
-/

namespace A144521.P2008544930500907913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058187 (3 * n + 4)) (A060544 (A000051 n).toNat)

end

end A144521.P2008544930500907913

/-! ## A144521.P7918671200924646904

`A014306(A006863(n))*A058187(3*n+4)`
-/

namespace A144521.P7918671200924646904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A006863 n).toNat * A058187 (3 * n + 4)

end

end A144521.P7918671200924646904

/-!
# A144522: Sums of pairs of successive digits after the decimal point in the decimal expansion of 2^(1/2) = 1.41421356...

The programs for A144522, there is no canonical definition to state claims against.
-/

/-! ## A144522.P10599899297199365235

`Δ[A099538(Δ[n²])]`
-/

namespace A144522.P10599899297199365235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099538 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144522.P10599899297199365235

/-! ## A144522.P17206971265893309257

`∑{digits}[A339568(n+1), #]`
-/

namespace A144522.P17206971265893309257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339568 (n + 1 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A144522.P17206971265893309257

/-! ## A144522.P1245274189456896438

`abs(Δ[A099538(2*n+1)])`
-/

namespace A144522.P1245274189456896438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099538 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A144522.P1245274189456896438

/-! ## A144522.P1188111572737283870

`A188582(2*n+1)+A188582(2*n)`
-/

namespace A144522.P1188111572737283870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 (2 * n + 1) + A188582 (2 * n)

end

end A144522.P1188111572737283870

/-! ## A144522.P10096057782214384161

`A002193(2*n+1)+A002193(2*(n+1))`
-/

namespace A144522.P10096057782214384161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (2 * n + 1 + 1) + A002193 (2 * (n + 1) + 1)

end

end A144522.P10096057782214384161

/-! ## A144522.P5934249963610408503

`A014176(2*n+1)+A014176(2*(n+1))`
-/

namespace A144522.P5934249963610408503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (2 * n + 1 + 1) + A014176 (2 * (n + 1) + 1)

end

end A144522.P5934249963610408503

/-! ## A144522.P14475722605585580395

`A099538(2*n+3)-A099538(2*n+1)`
-/

namespace A144522.P14475722605585580395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099538 (2 * n + 3) - A099538 (2 * n + 1)

end

end A144522.P14475722605585580395

/-! ## A144522.P1575523983505912199

`A120731(A103517(n))+A002193(A103517(n))`
-/

namespace A144522.P1575523983505912199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((A103517 n).toNat + 1) + A002193 ((A103517 n).toNat + 1)

end

end A144522.P1575523983505912199

/-!
# A144524: Triangular numbers n*(n+1)/2 with n composite, where number of prime factors of n, counted with multiplicity, is less than the number of prime factors in n+1.

The programs for A144524, there is no canonical definition to state claims against.
-/

/-! ## A144524.P16366045153768411053

`A000217(∩[A002808(n+1), A322840(n+1)])`
-/

namespace A144524.P16366045153768411053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322840 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A144524.P16366045153768411053

/-!
# A144525: Numerators of expansion of exp(1-sqrt(1-3*x)).

The programs for A144525, there is no canonical definition to state claims against.
-/

/-! ## A144525.P13574385176609210175

`A014854(∑[∏[A242112(n)]])`
-/

namespace A144525.P13574385176609210175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014854 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144525.P13574385176609210175

/-! ## A144525.P18196708435446910535

`A014854(∑[∏[A289626(n+1)]])`
-/

namespace A144525.P18196708435446910535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014854 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144525.P18196708435446910535

/-!
# A144526: Denominators of expansion of exp(1-sqrt(1-3*x)).

The programs for A144526, there is no canonical definition to state claims against.
-/

/-! ## A144526.P7617770087140361183

`gcd(A047657(n), A143968(n))`
-/

namespace A144526.P7617770087140361183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047657 n) (A143968 n)

end

end A144526.P7617770087140361183

/-! ## A144526.P14931013359543730099

`lcm(A143968(n), A144525(n))/A144525(n)`
-/

namespace A144526.P14931013359543730099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A143968 n) (A144525 n) : ℚ) / (A144525 n : ℚ)

end

end A144526.P14931013359543730099

/-! ## A144526.P11713979987642700429

`A143968(n)/dr(gcd(63, A004892(n+1)!))`
-/

namespace A144526.P11713979987642700429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143968 n : ℚ) / (SequenceMachineLib.digitalRoot (Nat.gcd 63 (Nat.factorial (A004892 (n + 1)).toNat) : ℤ) : ℚ)

end

end A144526.P11713979987642700429

/-! ## A144526.P4672088731479443807

`A143968(n)/dr(A060791(A000265(n!)))`
-/

namespace A144526.P4672088731479443807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143968 n : ℚ) / (SequenceMachineLib.digitalRoot (A060791 (A000265 (Nat.factorial n)).toNat) : ℚ)

end

end A144526.P4672088731479443807

/-!
# A144527: a(n) = A000055(n) - 2.

The programs for A144527, there is no canonical definition to state claims against.
-/

/-! ## A144527.P16528962909495470464

`A000055(n+4)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144527.P16528962909495470464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 4) - 2

end

end A144527.P16528962909495470464

/-! ## A144527.P436623065788913967

`A144520(n+4)-1`
-/

namespace A144527.P436623065788913967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144520 (n + 4) - 1

end

end A144527.P436623065788913967

/-! ## A144527.P2389510312965552904

`A215981(n+4)-3`
-/

namespace A144527.P2389510312965552904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215981 (n + 4) - 3

end

end A144527.P2389510312965552904

/-! ## A144527.P8796160744330631830

`record[A144520(n)+A057428(n)]`
-/

namespace A144527.P8796160744330631830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144520 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144527.P8796160744330631830

/-! ## A144527.P5785219096624772002

`record[A144520(n)-A057427(n)]`
-/

namespace A144527.P5785219096624772002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144520 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144527.P5785219096624772002

/-! ## A144527.P9461184395432503937

`record[A000055(n)-dr(A010008(n))]`
-/

namespace A144527.P9461184395432503937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - (SequenceMachineLib.digitalRoot (A010008 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144527.P9461184395432503937

/-! ## A144527.P316594686112494702

`record[A000055(n)-gcd(2, A008458(n))]`
-/

namespace A144527.P316594686112494702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - (Int.gcd 2 (A008458 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144527.P316594686112494702

/-! ## A144527.P3689809893653779480

`record[A000055(n)-A020639(A000118(n))]`
-/

namespace A144527.P3689809893653779480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A020639 (A000118 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144527.P3689809893653779480

/-! ## A144527.P14983780471678127604

`record[A000055(n)-A020639(A004277(n))]`
-/

namespace A144527.P14983780471678127604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A020639 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144527.P14983780471678127604

/-! ## A144527.P6375922460139547850

`record[A000055(n)-A020639(A007843(n))]`
-/

namespace A144527.P6375922460139547850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A020639 (A007843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144527.P6375922460139547850

/-! ## A144527.P6809232946285273400

`A106237(A000124(n+3))-2`
-/

namespace A144527.P6809232946285273400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106237 (A000124 (n + 3)).toNat - 2

end

end A144527.P6809232946285273400

/-! ## A144527.P13466653321755771550

`record[A095133(n+3)-A000032(round(1/(n+1)))]`
-/

namespace A144527.P13466653321755771550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (n + 3) - A000032 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144527.P13466653321755771550

/-!
# A144528: Triangle read by rows: T(n,k) is the number of trees on n unlabeled nodes with all nodes of degree <= k (n>=1, 0 <= k <= n-1).

The programs for A144528, there is no canonical definition to state claims against.
-/

/-! ## A144528.P13708050212499881747

`A000081(A000045(A330140(n)))%5`
-/

namespace A144528.P13708050212499881747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000081 (A000045 (A330140 n).toNat).toNat) 5

end

end A144528.P13708050212499881747

/-! ## A144528.P17935225783921962404

`A055640(A056885(n)^A003056(n))`
-/

namespace A144528.P17935225783921962404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A056885 n : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A144528.P17935225783921962404

/-! ## A144528.P11715527289282688448

`A055640(A056885(n)^A008621(n))`
-/

namespace A144528.P11715527289282688448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A056885 n : ℚ) ^ (A008621 n : ℤ))).toNat

end

end A144528.P11715527289282688448

/-! ## A144528.P10194269224488285335

`A055640(A056885(n)^A117707(n))`
-/

namespace A144528.P10194269224488285335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A056885 n : ℚ) ^ (A117707 n : ℤ))).toNat

end

end A144528.P10194269224488285335

/-! ## A144528.P1523104607078985450

`A055640(A056885(n)^A163352(n))`
-/

namespace A144528.P1523104607078985450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A056885 n : ℚ) ^ (A163352 n : ℤ))).toNat

end

end A144528.P1523104607078985450

/-!
# A144529: Triangle read by rows: T(n,k) = number of edges in graph whose vertices are forests with n unlabeled nodes and degree <= k and in which two vertices are joined by an edge if the forests differ (up to isomorphism) by exactly one edge.

The programs for A144529, there is no canonical definition to state claims against.
-/

/-! ## A144529.P12546217465874134822

`A260370(A211369(n+1))%A008949(n)`
-/

namespace A144529.P12546217465874134822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260370 (A211369 (n + 1)).toNat) (A008949 n)

end

end A144529.P12546217465874134822

/-! ## A144529.P16694019373776248955

`A341975(A121757(n))`
-/

namespace A144529.P16694019373776248955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341975 ((A121757 n).toNat + 11)

end

end A144529.P16694019373776248955

/-! ## A144529.P7494064332252746932

`A105564(A209161(n+1))`
-/

namespace A144529.P7494064332252746932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A209161 (n + 1)).toNat

end

end A144529.P7494064332252746932

/-! ## A144529.P7270385478734434753

`A176844(A063804(n+3))`
-/

namespace A144529.P7270385478734434753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176844 (A063804 (n + 3)).toNat

end

end A144529.P7270385478734434753

/-! ## A144529.P3345210725580333083

`A113971(A064282(n))`
-/

namespace A144529.P3345210725580333083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113971 (A064282 n).toNat

end

end A144529.P3345210725580333083

/-!
# A144531: Triangle read by rows: T(m,n) = the smallest positive integer that has a factor in common with both m and n (2 <= n <= m).

The programs for A144531, there is no canonical definition to state claims against.
-/

/-! ## A144531.P3100048798934689583

`A141327(A245300(n)+2)`
-/

namespace A144531.P3100048798934689583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141327 (A245300 n + 2).toNat

end

end A144531.P3100048798934689583

/-!
# A144532: Continued fraction for sqrt(8/9).

The programs for A144532, the canonical program `A144532.P7452250628067383344` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144532 has offset 0).

The definition of A144532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144532.P7452250628067383344

`a(n-2)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144532

/-- `a(n-2)` -/
def P7452250628067383344.Spec : Prop :=
  ∀ n, (P7452250628067383344.a n : ℤ) = A144532 n

theorem P7452250628067383344.correct : P7452250628067383344.Spec := by
  intro n
  simp only [A144532]

end A144532

/-!
# A144533: Numerators of continued fraction convergents to sqrt(8/9).

The programs for A144533, the canonical program `A144533.P5343744003141746` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144533 has offset 0).

The definition of A144533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144533.P5343744003141746

`34*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=33`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144533

/-- `34*a(n-2)-a(n-4)` -/
def P5343744003141746.Spec : Prop :=
  ∀ n, P5343744003141746.a n = A144533 n

theorem P5343744003141746.correct : P5343744003141746.Spec := by
  intro n
  simp only [A144533]

end A144533

/-! ## A144533.P12979370814957605185

`A041127(n)-A144534(n)`
-/

namespace A144533.P12979370814957605185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041127 n - A144534 n

end

end A144533.P12979370814957605185

namespace A144533

/-- `A041127(n)-A144534(n)` -/
def P12979370814957605185.Spec : Prop :=
  ∀ n, P12979370814957605185.a n = A144533 n

end A144533

/-! ## A144533.P9792606907699489922

`A041126(n)%A041127(n)`
-/

namespace A144533.P9792606907699489922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041126 n) (A041127 n)

end

end A144533.P9792606907699489922

namespace A144533

/-- `A041126(n)%A041127(n)` -/
def P9792606907699489922.Spec : Prop :=
  ∀ n, P9792606907699489922.a n = A144533 n

end A144533

/-! ## A144533.P6957068359069150497

`A041026(or(1, n))%A041027(n)`
-/

namespace A144533.P6957068359069150497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041026 (Nat.lor 1 n)) (A041027 n)

end

end A144533.P6957068359069150497

namespace A144533

/-- `A041026(or(1, n))%A041027(n)` -/
def P6957068359069150497.Spec : Prop :=
  ∀ n, P6957068359069150497.a n = A144533 n

end A144533

/-! ## A144533.P5224267988427193395

`A056771(A008619(n))%A041127(n)`
-/

namespace A144533.P5224267988427193395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056771 (A008619 n).toNat) (A041127 n)

end

end A144533.P5224267988427193395

namespace A144533

/-- `A056771(A008619(n))%A041127(n)` -/
def P5224267988427193395.Spec : Prop :=
  ∀ n, P5224267988427193395.a n = A144533 n

end A144533

/-! ## A144533.P4467454938498685875

`A041026(Δ[A061925(n)])%A041027(n)`
-/

namespace A144533.P4467454938498685875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041026 (f1 (n + 1) - f1 n).toNat) (A041027 n)

end

end A144533.P4467454938498685875

namespace A144533

/-- `A041026(Δ[A061925(n)])%A041027(n)` -/
def P4467454938498685875.Spec : Prop :=
  ∀ n, P4467454938498685875.a n = A144533 n

end A144533

/-!
# A144534: Denominators of continued fraction convergents to sqrt(8/9).

The programs for A144534, the canonical program `A144534.P12479795918660244608` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144534 has offset 0).

The definition of A144534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144534.P12479795918660244608

`34*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=17, a(3)=35`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144534

/-- `34*a(n-2)-a(n-4)` -/
def P12479795918660244608.Spec : Prop :=
  ∀ n, P12479795918660244608.a n = A144534 n

theorem P12479795918660244608.correct : P12479795918660244608.Spec := by
  intro n
  simp only [A144534]

end A144534

/-! ## A144534.P11309219497625722831

`A041127(n)-A144533(n)`
-/

namespace A144534.P11309219497625722831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041127 n - A144533 n

end

end A144534.P11309219497625722831

namespace A144534

/-- `A041127(n)-A144533(n)` -/
def P11309219497625722831.Spec : Prop :=
  ∀ n, P11309219497625722831.a n = A144534 n

end A144534

/-! ## A144534.P4168914775350110706

`A126354(A338062(n+1))/A000034(n)`
-/

namespace A144534.P4168914775350110706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126354 (A338062 (n + 1)).toNat : ℚ) / (A000034 n : ℚ)

end

end A144534.P4168914775350110706

namespace A144534

/-- `A126354(A338062(n+1))/A000034(n)` -/
def P4168914775350110706.Spec : Prop :=
  ∀ n, P4168914775350110706.a n = (A144534 n : ℚ)

end A144534

/-! ## A144534.P1262465189366748580

`A126354(A338062(n+1))/Δ[A032766(n)]`
-/

namespace A144534.P1262465189366748580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126354 (A338062 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A144534.P1262465189366748580

namespace A144534

/-- `A126354(A338062(n+1))/Δ[A032766(n)]` -/
def P1262465189366748580.Spec : Prop :=
  ∀ n, P1262465189366748580.a n = (A144534 n : ℚ)

end A144534

/-! ## A144534.P371766913601107706

`A001108(n)+A123335(n)*A126354(n+1)`
-/

namespace A144534.P371766913601107706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n + A123335 n * A126354 (n + 1)

end

end A144534.P371766913601107706

namespace A144534

/-- `A001108(n)+A123335(n)*A126354(n+1)` -/
def P371766913601107706.Spec : Prop :=
  ∀ n, P371766913601107706.a n = A144534 n

end A144534

/-!
# A144535: Numerators of continued fraction convergents to sqrt(3)/2.

The programs for A144535, the canonical program `A144535.P1801884961754785390` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144535 has offset 0).

The definition of A144535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144535.P1801884961754785390

`14*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144535

/-- `14*a(n-2)-a(n-4)` -/
def P1801884961754785390.Spec : Prop :=
  ∀ n, P1801884961754785390.a n = A144535 n

theorem P1801884961754785390.correct : P1801884961754785390.Spec := by
  intro n
  simp only [A144535]

end A144535

/-! ## A144535.P10527384034564387387

`a(n-2)+lcm(3, a(n-1)+a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A144535.P10527384034564387387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 1) + a (n - 1))

end

end A144535.P10527384034564387387

namespace A144535

/-- `a(n-2)+lcm(3, a(n-1)+a(n-1))` -/
def P10527384034564387387.Spec : Prop :=
  ∀ n, (P10527384034564387387.a n : ℤ) = A144535 n

end A144535

/-! ## A144535.P12623116217364244851

`A041017(n)-A144536(n)`
-/

namespace A144535.P12623116217364244851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041017 n - A144536 n

end

end A144535.P12623116217364244851

namespace A144535

/-- `A041017(n)-A144536(n)` -/
def P12623116217364244851.Spec : Prop :=
  ∀ n, P12623116217364244851.a n = A144535 n

end A144535

/-! ## A144535.P7082354845385607333

`A249578(A047241(n+1)+1)/2`
-/

namespace A144535.P7082354845385607333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249578 (A047241 (n + 1) + 1).toNat : ℚ) / 2

end

end A144535.P7082354845385607333

namespace A144535

/-- `A249578(A047241(n+1)+1)/2` -/
def P7082354845385607333.Spec : Prop :=
  ∀ n, P7082354845385607333.a n = (A144535 n : ℚ)

end A144535

/-! ## A144535.P6657778019124794194

`Δ[A002530(n)*A002531(n)]%A001075(n)`
-/

namespace A144535.P6657778019124794194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n * A002531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001075 n)

end

end A144535.P6657778019124794194

namespace A144535

/-- `Δ[A002530(n)*A002531(n)]%A001075(n)` -/
def P6657778019124794194.Spec : Prop :=
  ∀ n, P6657778019124794194.a n = A144535 n

end A144535

/-! ## A144535.P2849668080587060135

`A041016(n)%A041017(n)`
-/

namespace A144535.P2849668080587060135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041016 n) (A041017 n)

end

end A144535.P2849668080587060135

namespace A144535

/-- `A041016(n)%A041017(n)` -/
def P2849668080587060135.Spec : Prop :=
  ∀ n, P2849668080587060135.a n = A144535 n

end A144535

/-! ## A144535.P12707327065327645822

`A143642(3*n+4)%A041017(n)`
-/

namespace A144535.P12707327065327645822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143642 (3 * n + 4)) (A041017 n)

end

end A144535.P12707327065327645822

namespace A144535

/-- `A143642(3*n+4)%A041017(n)` -/
def P12707327065327645822.Spec : Prop :=
  ∀ n, P12707327065327645822.a n = A144535 n

end A144535

/-! ## A144535.P16293985842060819251

`A011945(n+1)/(A126664(n+1)*A144536(n))`
-/

namespace A144535.P16293985842060819251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011945 (n + 1) : ℚ) / (A126664 (n + 1) * A144536 n : ℚ)

end

end A144535.P16293985842060819251

namespace A144535

/-- `A011945(n+1)/(A126664(n+1)*A144536(n))` -/
def P16293985842060819251.Spec : Prop :=
  ∀ n, P16293985842060819251.a n = (A144535 n : ℚ)

end A144535

/-!
# A144536: Denominators of continued fraction convergents to sqrt(3)/2.

The programs for A144536, the canonical program `A144536.P3836465427283958796` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144536 has offset 0).

The definition of A144536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144536.P3836465427283958796

`14*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=15`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144536

/-- `14*a(n-2)-a(n-4)` -/
def P3836465427283958796.Spec : Prop :=
  ∀ n, P3836465427283958796.a n = A144536 n

theorem P3836465427283958796.correct : P3836465427283958796.Spec := by
  intro n
  simp only [A144536]

end A144536

/-! ## A144536.P5415491462432478411

`A249578(or(1, 3*n))`
-/

namespace A144536.P5415491462432478411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (Nat.lor 1 (3 * n))

end

end A144536.P5415491462432478411

namespace A144536

/-- `A249578(or(1, 3*n))` -/
def P5415491462432478411.Spec : Prop :=
  ∀ n, P5415491462432478411.a n = A144536 n

end A144536

/-! ## A144536.P16245191171158075118

`A249578(A047241(n+1))`
-/

namespace A144536.P16245191171158075118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (A047241 (n + 1)).toNat

end

end A144536.P16245191171158075118

namespace A144536

/-- `A249578(A047241(n+1))` -/
def P16245191171158075118.Spec : Prop :=
  ∀ n, P16245191171158075118.a n = A144536 n

end A144536

/-! ## A144536.P2568149147034635131

`A041017(n)-A144535(n)`
-/

namespace A144536.P2568149147034635131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041017 n - A144535 n

end

end A144536.P2568149147034635131

namespace A144536

/-- `A041017(n)-A144535(n)` -/
def P2568149147034635131.Spec : Prop :=
  ∀ n, P2568149147034635131.a n = A144536 n

end A144536

/-! ## A144536.P5173188172988832620

`A249578(∑[A000079(n)%6])`
-/

namespace A144536.P5173188172988832620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144536.P5173188172988832620

namespace A144536

/-- `A249578(∑[A000079(n)%6])` -/
def P5173188172988832620.Spec : Prop :=
  ∀ n, P5173188172988832620.a n = A144536 n

end A144536

/-! ## A144536.P9136694673861402192

`A249578(2*A032766(n)+1)`
-/

namespace A144536.P9136694673861402192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (2 * A032766 n + 1).toNat

end

end A144536.P9136694673861402192

namespace A144536

/-- `A249578(2*A032766(n)+1)` -/
def P9136694673861402192.Spec : Prop :=
  ∀ n, P9136694673861402192.a n = A144536 n

end A144536

/-! ## A144536.P7342633442402509357

`A249578(A047461(n+1)-n)`
-/

namespace A144536.P7342633442402509357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (A047461 (n + 1) - (n : ℤ)).toNat

end

end A144536.P7342633442402509357

namespace A144536

/-- `A249578(A047461(n+1)-n)` -/
def P7342633442402509357.Spec : Prop :=
  ∀ n, P7342633442402509357.a n = A144536 n

end A144536

/-! ## A144536.P7358780070204866083

`A249578(A032766(n)+A032766(n)+1)`
-/

namespace A144536.P7358780070204866083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (A032766 n + (A032766 n + 1)).toNat

end

end A144536.P7358780070204866083

namespace A144536

/-- `A249578(A032766(n)+A032766(n)+1)` -/
def P7358780070204866083.Spec : Prop :=
  ∀ n, P7358780070204866083.a n = A144536 n

end A144536

/-!
# A144546: 

The programs for A144546, there is no canonical definition to state claims against.
-/

/-! ## A144546.P2852559073154084318

`A028666(Δ[n²])`
-/

namespace A144546.P2852559073154084318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028666 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A144546.P2852559073154084318

/-!
# A144547: 

The programs for A144547, there is no canonical definition to state claims against.
-/

/-! ## A144547.P14305560669924686732

`A028666(2*n)`
-/

namespace A144547.P14305560669924686732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028666 (2 * n)

end

end A144547.P14305560669924686732

/-! ## A144547.P15749466876766041495

`record[A028666(n)/A033999(n)]`
-/

namespace A144547.P15749466876766041495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028666 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144547.P15749466876766041495

/-! ## A144547.P3062609036898057972

`A000079(2*n)*A003923(2*n)`
-/

namespace A144547.P3062609036898057972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A003923 (2 * n)

end

end A144547.P3062609036898057972

/-!
# A144548: Squares and cubes of nonprimes (without repetition).

The programs for A144548, there is no canonical definition to state claims against.
-/

/-! ## A144548.P9059997660715638608

`∪[A161753(n+1), A326666(n+1)]`
-/

namespace A144548.P9059997660715638608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144548.P9059997660715638608

/-! ## A144548.P3117495431206611966

`∪[A326666(n+1), comp[A060264(n)]²]`
-/

namespace A144548.P3117495431206611966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326666 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A144548.P3117495431206611966

/-! ## A144548.P15675854560558112614

`∪[A326666(n+1), comp[A088732(n)]²]`
-/

namespace A144548.P15675854560558112614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326666 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A144548.P15675854560558112614

/-! ## A144548.P17457536646918871269

`∪[A326666(n+1), comp[A151800(n)]²]`
-/

namespace A144548.P17457536646918871269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326666 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A144548.P17457536646918871269

/-! ## A144548.P11003954891794064680

`∪[A141468(n+1)², A326666(n+1)]`
-/

namespace A144548.P11003954891794064680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144548.P11003954891794064680

/-!
# A144549: Triangular numbers p*(p+1)/2 with p prime such that 1+(number of prime factors of p+1) is prime.

The programs for A144549, there is no canonical definition to state claims against.
-/

/-! ## A144549.P3543563927455181307

`C(A000040(A156098(2*n+9))+1, 2)`
-/

namespace A144549.P3543563927455181307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (A156098 (2 * n + 9)).toNat + 1).toNat 2

end

end A144549.P3543563927455181307

/-! ## A144549.P573538815227828321

`A000217(A087898(n+1)^A263159(n))`
-/

namespace A144549.P573538815227828321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A087898 (n + 1) : ℚ) ^ (A263159 n : ℤ))).toNat

end

end A144549.P573538815227828321

/-!
# A144550: Largest non-twin prime < n-th and (n+1)-th twin primes.

The programs for A144550, the canonical program `A144550.P9654867779263600629` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144550 has offset 1).

The definition of A144550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144550.P9654867779263600629

`∩[A007510(n+1), A088175(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A144550

/-- `∩[A007510(n+1), A088175(n+1)]` -/
def P9654867779263600629.Spec : Prop :=
  ∀ n, (P9654867779263600629.a n : ℤ) = A144550 (n + 1)

theorem P9654867779263600629.correct : P9654867779263600629.Spec := by
  intro n
  simp only [A144550, Nat.add_sub_cancel]

end A144550

/-! ## A144550.P12138034675065027643

`∩[A088175(n+1), A167706(n+1)]`
-/

namespace A144550.P12138034675065027643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144550.P12138034675065027643

namespace A144550

/-- `∩[A088175(n+1), A167706(n+1)]` -/
def P12138034675065027643.Spec : Prop :=
  ∀ n, (P12138034675065027643.a n : ℤ) = A144550 (n + 1)

end A144550

/-! ## A144550.P10534054633258078493

`∩[A007510(n+1), A008578(A334142(n+1))]`
-/

namespace A144550.P10534054633258078493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A334142 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144550.P10534054633258078493

namespace A144550

/-- `∩[A007510(n+1), A008578(A334142(n+1))]` -/
def P10534054633258078493.Spec : Prop :=
  ∀ n, (P10534054633258078493.a n : ℤ) = A144550 (n + 1)

end A144550

/-! ## A144550.P12324638100758157598

`∩[A062729(n+1), A088175(n+1)]`
-/

namespace A144550.P12324638100758157598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144550.P12324638100758157598

namespace A144550

/-- `∩[A062729(n+1), A088175(n+1)]` -/
def P12324638100758157598.Spec : Prop :=
  ∀ n, (P12324638100758157598.a n : ℤ) = A144550 (n + 1)

end A144550

/-! ## A144550.P9799124784569364588

`∩[A088175(n+1), A164921(n+1)]`
-/

namespace A144550.P9799124784569364588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144550.P9799124784569364588

namespace A144550

/-- `∩[A088175(n+1), A164921(n+1)]` -/
def P9799124784569364588.Spec : Prop :=
  ∀ n, (P9799124784569364588.a n : ℤ) = A144550 (n + 1)

end A144550

/-!
# A144551: a(n) = nonprime(n)*nonprime(n+1)/2, where nonprime(n) = A141468(n).

The programs for A144551, the canonical program `A144551.P9471989750803673522` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144551 has offset 1).

The definition of A144551 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144551.P9471989750803673522

`A141468(n+1)*A141468(n+2)/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A144551

/-- `A141468(n+1)*A141468(n+2)/2` -/
def P9471989750803673522.Spec : Prop :=
  ∀ n, P9471989750803673522.a n = (A144551 (n + 1) : ℚ)

end A144551

/-! ## A144551.P4123395668220399614

`comp[p?[xor(1, n)]]/2*A018252(n+1)`
-/

namespace A144551.P4123395668220399614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2 * (A018252 (n + 1) : ℚ)

end

end A144551.P4123395668220399614

namespace A144551

/-- `comp[p?[xor(1, n)]]/2*A018252(n+1)` -/
def P4123395668220399614.Spec : Prop :=
  ∀ n, P4123395668220399614.a n = (A144551 (n + 1) : ℚ)

end A144551

/-! ## A144551.P6045602010061828562

`comp[A000040(n+1)]/2*A018252(n+1)`
-/

namespace A144551.P6045602010061828562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2 * (A018252 (n + 1) : ℚ)

end

end A144551.P6045602010061828562

namespace A144551

/-- `comp[A000040(n+1)]/2*A018252(n+1)` -/
def P6045602010061828562.Spec : Prop :=
  ∀ n, P6045602010061828562.a n = (A144551 (n + 1) : ℚ)

end A144551

/-! ## A144551.P16839109490675513111

`A018252(n+1)/2*comp[A006530(n+2)]`
-/

namespace A144551.P16839109490675513111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℚ) / 2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ)

end

end A144551.P16839109490675513111

namespace A144551

/-- `A018252(n+1)/2*comp[A006530(n+2)]` -/
def P16839109490675513111.Spec : Prop :=
  ∀ n, P16839109490675513111.a n = (A144551 (n + 1) : ℚ)

end A144551

/-! ## A144551.P17308800872161057441

`A018252(n+1)/2*comp[A020639(n+2)]`
-/

namespace A144551.P17308800872161057441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℚ) / 2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ)

end

end A144551.P17308800872161057441

namespace A144551

/-- `A018252(n+1)/2*comp[A020639(n+2)]` -/
def P17308800872161057441.Spec : Prop :=
  ∀ n, P17308800872161057441.a n = (A144551 (n + 1) : ℚ)

end A144551

/-! ## A144551.P16421877499824522247

`comp[A006530(n+1)]/2*comp[A000040(n+1)]`
-/

namespace A144551.P16421877499824522247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2 * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℚ)

end

end A144551.P16421877499824522247

namespace A144551

/-- `comp[A006530(n+1)]/2*comp[A000040(n+1)]` -/
def P16421877499824522247.Spec : Prop :=
  ∀ n, P16421877499824522247.a n = (A144551 (n + 1) : ℚ)

end A144551

/-! ## A144551.P4410374529825830966

`A018252(n+1)/2*∪[n^3, A018252(n+2)]`
-/

namespace A144551.P4410374529825830966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℚ) / 2 * (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ)

end

end A144551.P4410374529825830966

namespace A144551

/-- `A018252(n+1)/2*∪[n^3, A018252(n+2)]` -/
def P4410374529825830966.Spec : Prop :=
  ∀ n, P4410374529825830966.a n = (A144551 (n + 1) : ℚ)

end A144551

/-! ## A144551.P1631126363745613945

`comp[eq[1, A001222(n+1)]+1]/2*A018252(n+1)`
-/

namespace A144551.P1631126363745613945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2 * (A018252 (n + 1) : ℚ)

end

end A144551.P1631126363745613945

namespace A144551

/-- `comp[eq[1, A001222(n+1)]+1]/2*A018252(n+1)` -/
def P1631126363745613945.Spec : Prop :=
  ∀ n, P1631126363745613945.a n = (A144551 (n + 1) : ℚ)

end A144551

/-! ## A144551.P10158734370376805763

`(comp[A000040(n+1)-1]+1)/2*comp[A020639(n+2)]`
-/

namespace A144551.P10158734370376805763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℚ) / 2 * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℚ)

end

end A144551.P10158734370376805763

namespace A144551

/-- `(comp[A000040(n+1)-1]+1)/2*comp[A020639(n+2)]` -/
def P10158734370376805763.Spec : Prop :=
  ∀ n, P10158734370376805763.a n = (A144551 (n + 1) : ℚ)

end A144551

/-!
# A144552: Triangular numbers n*(n+1)/2 such that the three numbers n, n+1 and A001222(n) + A001222(n+1) are all composite.

The programs for A144552, there is no canonical definition to state claims against.
-/

/-! ## A144552.P11981606877913903622

`∩[A144291(n+1), A144581(n+1)]`
-/

namespace A144552.P11981606877913903622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144552.P11981606877913903622

/-! ## A144552.P12056038245300810072

`∩[A144581(n+1), A356441(n+1)]`
-/

namespace A144552.P12056038245300810072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144552.P12056038245300810072

/-! ## A144552.P15706630700732983523

`∩[A027854(n+1), A144581(n+1)]`
-/

namespace A144552.P15706630700732983523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144552.P15706630700732983523

/-! ## A144552.P11481558683883928060

`∩[A063539(n+1), A144581(n+1)]`
-/

namespace A144552.P11481558683883928060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144552.P11481558683883928060

/-! ## A144552.P4774617998654612615

`∩[A144581(n+1), A292226(n+1)]`
-/

namespace A144552.P4774617998654612615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144552.P4774617998654612615

/-! ## A144552.P14589440193798152120

`∩[A048098(n+1), A144581(n+1)]`
-/

namespace A144552.P14589440193798152120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144552.P14589440193798152120

/-!
# A144553: Number of chiral pairs of polyominoes with n cells that have precisely the symmetry group of order 4 generated by 90-degree rotations.

The programs for A144553, there is no canonical definition to state claims against.
-/

/-! ## A144553.P5650688934401256044

`A030228(n+1)-A006747(n+1)-A006749(n+1)`
-/

namespace A144553.P5650688934401256044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030228 (n + 1) - A006747 (n + 1) - A006749 (n + 1)

end

end A144553.P5650688934401256044

/-!
# A144554: Number of polyominoes with n cells whose symmetry group (excluding reflections) has order at least 2.

The programs for A144554, there is no canonical definition to state claims against.
-/

/-! ## A144554.P6178254604740925496

`A000105(n+1)-A006749(n+1)-A006746(n+1)-A006748(n+1)`
-/

namespace A144554.P6178254604740925496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A006749 (n + 1) - A006746 (n + 1) - A006748 (n + 1)

end

end A144554.P6178254604740925496

/-! ## A144554.P16227558243707668617

`A259090(n+1)-(A006748(n+1)+A006746(n+1))`
-/

namespace A144554.P16227558243707668617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259090 (n + 1) - (A006748 (n + 1) + A006746 (n + 1))

end

end A144554.P16227558243707668617

/-!
# A144555: a(n) = 14*n^2.

The programs for A144555, the canonical program `A144555.P7867283677367482726` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144555 has offset 0).

The definition of A144555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*n²` (program `A144555.P7867283677367482726`, by `A144555.P7867283677367482726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144555.P7867283677367482726

`14*n²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144555

/-- `14*n²` -/
def P7867283677367482726.Spec : Prop :=
  ∀ n, (P7867283677367482726.a n : ℤ) = A144555 n

theorem P7867283677367482726.correct : P7867283677367482726.Spec := by
  intro n
  simp only [A144555]

end A144555

/-!
# A144556: Number of Sylvester-Gallai geometries on n points.

The programs for A144556, there is no canonical definition to state claims against.
-/

/-! ## A144556.P7686913552283318014

`A031436(A015161(n)+1+n)`
-/

namespace A144556.P7686913552283318014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031436 (A015161 n + 1 + (n : ℤ)).toNat

end

end A144556.P7686913552283318014

/-! ## A144556.P13402866824362601059

`A031436(A093618(n+1))%n!`
-/

namespace A144556.P13402866824362601059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031436 (A093618 (n + 1)).toNat) (Nat.factorial n : ℤ)

end

end A144556.P13402866824362601059

/-! ## A144556.P6726139104386790709

`A031436(n+1)%record[A287697(n)]`
-/

namespace A144556.P6726139104386790709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031436 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A144556.P6726139104386790709

/-! ## A144556.P5654204472706196147

`A031436(A032951(round(sqrt(n²+1)))+1)`
-/

namespace A144556.P5654204472706196147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031436 (A032951 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1).toNat

end

end A144556.P5654204472706196147

/-! ## A144556.P14465600283009716791

`A031436(A070670(n+5)+round(1/acot(n)))`
-/

namespace A144556.P14465600283009716791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031436 (A070670 (n + 5) + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))).toNat

end

end A144556.P14465600283009716791

/-!
# A144559: a(n) = number of triples [i,j,k] with i+j+k = n, i an odd prime, j an odd Fibonacci number and k a positive Fibonacci number.

The programs for A144559, there is no canonical definition to state claims against.
-/

/-! ## A144559.P15178110972356150774

`A154257(n+1)/(n%2+1)`
-/

namespace A144559.P15178110972356150774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154257 (n + 1) : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A144559.P15178110972356150774

/-! ## A144559.P237335906426889247

`A154257(n+1)/A000034(n)`
-/

namespace A144559.P237335906426889247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154257 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A144559.P237335906426889247

/-! ## A144559.P8158497308134001760

`A154257(n+1)/A084642(n)`
-/

namespace A144559.P8158497308134001760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154257 (n + 1) : ℚ) / (A084642 n : ℚ)

end

end A144559.P8158497308134001760

/-! ## A144559.P7516567422365096779

`A154257(n+1)/A010673(n)!`
-/

namespace A144559.P7516567422365096779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154257 (n + 1) : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A144559.P7516567422365096779

/-! ## A144559.P4269538364461013223

`A154257(n+1)/∑[A165326(n)]`
-/

namespace A144559.P4269538364461013223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154257 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A144559.P4269538364461013223

/-! ## A144559.P17106467079980004133

`A154257(n+1)/Δ[A032766(n)]`
-/

namespace A144559.P17106467079980004133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154257 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A144559.P17106467079980004133

/-! ## A144559.P18389502156091312224

`A154257(n+1)/A040001(n+1)`
-/

namespace A144559.P18389502156091312224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154257 (n + 1) : ℚ) / (A040001 (n + 1) : ℚ)

end

end A144559.P18389502156091312224

/-! ## A144559.P14710091400551187633

`A154257(n+1)/A289203(n+1)`
-/

namespace A144559.P14710091400551187633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154257 (n + 1) : ℚ) / (A289203 (n + 1) : ℚ)

end

end A144559.P14710091400551187633

/-! ## A144559.P13882406209628860004

`A154257(n+1)/A000005(or(1, n+1)-n)`
-/

namespace A144559.P13882406209628860004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154257 (n + 1) : ℚ) / (A000005 (Nat.lor 1 (n + 1) - n) : ℚ)

end

end A144559.P13882406209628860004

/-! ## A144559.P2502200879848005826

`A154257(n+1)/A014963(2*A020639(n+1))`
-/

namespace A144559.P2502200879848005826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154257 (n + 1) : ℚ) / (A014963 (2 * A020639 (n + 1)).toNat : ℚ)

end

end A144559.P2502200879848005826

/-!
# A144560: Ten times hexagonal numbers: 10*n*(2*n-1).

The programs for A144560, the canonical program `A144560.P17731211630582671558` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144560 has offset 0).

The definition of A144560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n*(2*n-1)` (program `A144560.P17731211630582671558`, by `A144560.P17731211630582671558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144560.P3925197613757482980

`20*n²-10*n`
-/

namespace A144560.P3925197613757482980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 * n ^ 2 : ℤ) - (10 * n : ℤ)

end

end A144560.P3925197613757482980

namespace A144560

/-- `20*n²-10*n` -/
def P3925197613757482980.Spec : Prop :=
  ∀ n, P3925197613757482980.a n = A144560 n

theorem P3925197613757482980.correct : P3925197613757482980.Spec := by
  intro n
  simp only [A144560, Nat.add_sub_cancel, A144560.P3925197613757482980.a, A144560.P17731211630582671558.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A144560

/-! ## A144560.P17731211630582671558

`10*n*(2*n-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144560

/-- `10*n*(2*n-1)` -/
def P17731211630582671558.Spec : Prop :=
  ∀ n, P17731211630582671558.a n = A144560 n

theorem P17731211630582671558.correct : P17731211630582671558.Spec := by
  intro n
  simp only [A144560]

end A144560

/-! ## A144560.P6017052047140907135

`∑[a(n-1)+40]` with `a(0)=0, a(1)=10`
-/

namespace A144560.P6017052047140907135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 1) + 40

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144560.P6017052047140907135

namespace A144560

/-- `∑[a(n-1)+40]` -/
def P6017052047140907135.Spec : Prop :=
  ∀ n, (P6017052047140907135.a n : ℤ) = A144560 n

end A144560

/-! ## A144560.P16896420861429043711

`xor(1, 10*n*comp[2*(n+1)]+1)`
-/

namespace A144560.P16896420861429043711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (10 * (n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1)

end

end A144560.P16896420861429043711

namespace A144560

/-- `xor(1, 10*n*comp[2*(n+1)]+1)` -/
def P16896420861429043711.Spec : Prop :=
  ∀ n, (P16896420861429043711.a n : ℤ) = A144560 n

end A144560

/-! ## A144560.P13456453008322937944

`lcm(A002939(n), A152745(n))`
-/

namespace A144560.P13456453008322937944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002939 n) (A152745 n)

end

end A144560.P13456453008322937944

namespace A144560

/-- `lcm(A002939(n), A152745(n))` -/
def P13456453008322937944.Spec : Prop :=
  ∀ n, (P13456453008322937944.a n : ℤ) = A144560 n

end A144560

/-! ## A144560.P17686351247255247543

`A124080(A004273(n))`
-/

namespace A144560.P17686351247255247543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 (A004273 n).toNat

end

end A144560.P17686351247255247543

namespace A144560

/-- `A124080(A004273(n))` -/
def P17686351247255247543.Spec : Prop :=
  ∀ n, P17686351247255247543.a n = A144560 n

end A144560

/-! ## A144560.P3004241231065247413

`A395421(4*n)/2`
-/

namespace A144560.P3004241231065247413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395421 (4 * n) : ℚ) / 2

end

end A144560.P3004241231065247413

namespace A144560

/-- `A395421(4*n)/2` -/
def P3004241231065247413.Spec : Prop :=
  ∀ n, P3004241231065247413.a n = (A144560 n : ℚ)

end A144560

/-! ## A144560.P4773139666638344232

`∩[2*n, 10*C(2*n, 2)]`
-/

namespace A144560.P4773139666638344232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (2 * n) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A144560.P4773139666638344232

namespace A144560

/-- `∩[2*n, 10*C(2*n, 2)]` -/
def P4773139666638344232.Spec : Prop :=
  ∀ n, (P4773139666638344232.a n : ℤ) = A144560 n

end A144560

/-! ## A144560.P1592582575916716023

`A008592(C(2*n, 2))`
-/

namespace A144560.P1592582575916716023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (Nat.choose (2 * n) 2)

end

end A144560.P1592582575916716023

namespace A144560

/-- `A008592(C(2*n, 2))` -/
def P1592582575916716023.Spec : Prop :=
  ∀ n, P1592582575916716023.a n = A144560 n

end A144560

/-!
# A144561: Prime p such that p^2+13p+23 is prime.

The programs for A144561, there is no canonical definition to state claims against.
-/

/-! ## A144561.P7340804560617811579

`p?[A153781(n+1)]`
-/

namespace A144561.P7340804560617811579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144561.P7340804560617811579

/-! ## A144561.P10295868711810334288

`p?[record[A153781(A328399(n))]]`
-/

namespace A144561.P10295868711810334288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144561.P10295868711810334288

/-! ## A144561.P9544898249997043389

`record[A006530(A153781(n+3))]`
-/

namespace A144561.P9544898249997043389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153781 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144561.P9544898249997043389

/-! ## A144561.P15831385123406343595

`filter[A153781(n+2), A010051(#)]`
-/

namespace A144561.P15831385123406343595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A144561.P15831385123406343595

/-! ## A144561.P16127255041587063901

`∩[A153781(n+1), A042990(n)]`
-/

namespace A144561.P16127255041587063901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144561.P16127255041587063901

/-! ## A144561.P9116502750068190240

`∩[A000040(n+1), A153781(n+1)]`
-/

namespace A144561.P9116502750068190240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144561.P9116502750068190240

/-! ## A144561.P2220678205314811586

`∩[A049569(n+1), A153781(n+1)]`
-/

namespace A144561.P2220678205314811586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144561.P2220678205314811586

/-! ## A144561.P6686750392975395674

`∩[A153781(n+1), A175787(n+1)]`
-/

namespace A144561.P6686750392975395674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144561.P6686750392975395674

/-! ## A144561.P13560597943444442379

`p?[record[A153781(A052938(n))]]`
-/

namespace A144561.P13560597943444442379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144561.P13560597943444442379

/-! ## A144561.P7158890204257072954

`p?[record[A153781(A203814(n))]]`
-/

namespace A144561.P7158890204257072954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144561.P7158890204257072954

/-! ## A144561.P1085243358952975615

`filter[A153781(n+3), A080339(#)]`
-/

namespace A144561.P1085243358952975615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A144561.P1085243358952975615

/-! ## A144561.P15160009979880539828

`∩[A153781(n+1), A385492(n+1)]`
-/

namespace A144561.P15160009979880539828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144561.P15160009979880539828

/-!
# A144562: Triangle read by rows: T(n, k) = 2*n*k + n + k - 1.

The programs for A144562, the canonical program `A144562.P12796245676937325510` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144562 has offset 1).

The definition of A144562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144562.P13940661057227051441

`A154680(n+1)+1`
-/

namespace A144562.P13940661057227051441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) + 1

end

end A144562.P13940661057227051441

namespace A144562

/-- `A154680(n+1)+1` -/
def P13940661057227051441.Spec : Prop :=
  ∀ n, P13940661057227051441.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P12796245676937325510

`A083487(n+1)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144562

/-- `A083487(n+1)-1` -/
def P12796245676937325510.Spec : Prop :=
  ∀ n, P12796245676937325510.a n = A144562 (n + 1)

theorem P12796245676937325510.correct : P12796245676937325510.Spec := by
  intro n
  simp only [A144562, Nat.add_sub_cancel]

end A144562

/-! ## A144562.P16809624342365005596

`A154684(n+1)+2`
-/

namespace A144562.P16809624342365005596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 2

end

end A144562.P16809624342365005596

namespace A144562

/-- `A154684(n+1)+2` -/
def P16809624342365005596.Spec : Prop :=
  ∀ n, P16809624342365005596.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P9953644793673263303

`A144650(n+1)-2`
-/

namespace A144562.P9953644793673263303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - 2

end

end A144562.P9953644793673263303

namespace A144562

/-- `A144650(n+1)-2` -/
def P9953644793673263303.Spec : Prop :=
  ∀ n, P9953644793673263303.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P18128786380843051457

`A155724(n+1)+3`
-/

namespace A144562.P18128786380843051457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + 3

end

end A144562.P18128786380843051457

namespace A144562

/-- `A155724(n+1)+3` -/
def P18128786380843051457.Spec : Prop :=
  ∀ n, P18128786380843051457.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P11369412441045680783

`A155546(n+1)+4`
-/

namespace A144562.P11369412441045680783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 4

end

end A144562.P11369412441045680783

namespace A144562

/-- `A155546(n+1)+4` -/
def P11369412441045680783.Spec : Prop :=
  ∀ n, P11369412441045680783.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P15950478266968906299

`A155705(n+1)-3`
-/

namespace A144562.P15950478266968906299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) - 3

end

end A144562.P15950478266968906299

namespace A144562

/-- `A155705(n+1)-3` -/
def P15950478266968906299.Spec : Prop :=
  ∀ n, P15950478266968906299.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P4588343011327649686

`A154681(n+1)-4`
-/

namespace A144562.P4588343011327649686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) - 4

end

end A144562.P4588343011327649686

namespace A144562

/-- `A154681(n+1)-4` -/
def P4588343011327649686.Spec : Prop :=
  ∀ n, P4588343011327649686.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P7225930530358274133

`A155550(n+1)+5`
-/

namespace A144562.P7225930530358274133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 5

end

end A144562.P7225930530358274133

namespace A144562

/-- `A155550(n+1)+5` -/
def P7225930530358274133.Spec : Prop :=
  ∀ n, P7225930530358274133.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P18256515927749759824

`A144670(n+1)+6`
-/

namespace A144562.P18256515927749759824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144670 (n + 1) + 6

end

end A144562.P18256515927749759824

namespace A144562

/-- `A144670(n+1)+6` -/
def P18256515927749759824.Spec : Prop :=
  ∀ n, P18256515927749759824.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P9099490081465926231

`A154685(n+1)-5`
-/

namespace A144562.P9099490081465926231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) - 5

end

end A144562.P9099490081465926231

namespace A144562

/-- `A154685(n+1)-5` -/
def P9099490081465926231.Spec : Prop :=
  ∀ n, P9099490081465926231.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P17156480100793094222

`A154631(n+1)-6`
-/

namespace A144562.P17156480100793094222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) - 6

end

end A144562.P17156480100793094222

namespace A144562

/-- `A154631(n+1)-6` -/
def P17156480100793094222.Spec : Prop :=
  ∀ n, P17156480100793094222.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P16410971273371009238

`A324937(n+1)+7`
-/

namespace A144562.P16410971273371009238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324937 (n + 1) + 7

end

end A144562.P16410971273371009238

namespace A144562

/-- `A324937(n+1)+7` -/
def P16410971273371009238.Spec : Prop :=
  ∀ n, P16410971273371009238.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P15478040281093922976

`A155551(n+1)+8`
-/

namespace A144562.P15478040281093922976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155551 (n + 1) + 8

end

end A144562.P15478040281093922976

namespace A144562

/-- `A155551(n+1)+8` -/
def P15478040281093922976.Spec : Prop :=
  ∀ n, P15478040281093922976.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P9761781901470189815

`A163652(n+1)-7`
-/

namespace A144562.P9761781901470189815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) - 7

end

end A144562.P9761781901470189815

namespace A144562

/-- `A163652(n+1)-7` -/
def P9761781901470189815.Spec : Prop :=
  ∀ n, P9761781901470189815.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P10027016330868936450

`A163672(n+1)-8`
-/

namespace A144562.P10027016330868936450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) - 8

end

end A144562.P10027016330868936450

namespace A144562

/-- `A163672(n+1)-8` -/
def P10027016330868936450.Spec : Prop :=
  ∀ n, P10027016330868936450.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P436686600260592003

`A163657(n+1)-9`
-/

namespace A144562.P436686600260592003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163657 (n + 1) - 9

end

end A144562.P436686600260592003

namespace A144562

/-- `A163657(n+1)-9` -/
def P436686600260592003.Spec : Prop :=
  ∀ n, P436686600260592003.a n = A144562 (n + 1)

end A144562

/-! ## A144562.P845024888905116701

`A155156(n+1)/2-1`
-/

namespace A144562.P845024888905116701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155156 (n + 1) : ℚ) / 2 - 1

end

end A144562.P845024888905116701

namespace A144562

/-- `A155156(n+1)/2-1` -/
def P845024888905116701.Spec : Prop :=
  ∀ n, P845024888905116701.a n = (A144562 (n + 1) : ℚ)

end A144562

/-! ## A144562.P15547655060949408887

`(A163676(n+1)-1)/2`
-/

namespace A144562.P15547655060949408887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163676 (n + 1) - 1 : ℚ) / 2

end

end A144562.P15547655060949408887

namespace A144562

/-- `(A163676(n+1)-1)/2` -/
def P15547655060949408887.Spec : Prop :=
  ∀ n, P15547655060949408887.a n = (A144562 (n + 1) : ℚ)

end A144562

/-! ## A144562.P17766395718390496552

`A155151(n+1)/2-2`
-/

namespace A144562.P17766395718390496552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155151 (n + 1) : ℚ) / 2 - 2

end

end A144562.P17766395718390496552

namespace A144562

/-- `A155151(n+1)/2-2` -/
def P17766395718390496552.Spec : Prop :=
  ∀ n, P17766395718390496552.a n = (A144562 (n + 1) : ℚ)

end A144562

/-!
# A144564: Bisection of A147757.

The programs for A144564, there is no canonical definition to state claims against.
-/

/-! ## A144564.P5971716825902044924

`A283712(2*n)`
-/

namespace A144564.P5971716825902044924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283712 (2 * n)

end

end A144564.P5971716825902044924

/-! ## A144564.P16471797444072356887

`A283713(2*n)`
-/

namespace A144564.P16471797444072356887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283713 (2 * n)

end

end A144564.P16471797444072356887

/-! ## A144564.P4736179283746882946

`A147757(Δ[n²])`
-/

namespace A144564.P4736179283746882946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147757 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A144564.P4736179283746882946

/-! ## A144564.P17758700434534108389

`or(1, A147757(A005408(n)))`
-/

namespace A144564.P17758700434534108389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147757 (A005408 n).toNat)

end

end A144564.P17758700434534108389

/-! ## A144564.P17833028654134065344

`record[A147757(A000265(n+1))]`
-/

namespace A144564.P17833028654134065344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147757 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144564.P17833028654134065344

/-! ## A144564.P3963328024712545959

`record[A283712(n)/A033999(n)]`
-/

namespace A144564.P3963328024712545959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283712 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144564.P3963328024712545959

/-! ## A144564.P9188420912369217026

`record[A283713(n)/A033999(n)]`
-/

namespace A144564.P9188420912369217026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283713 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144564.P9188420912369217026

/-! ## A144564.P18024891364250701798

`A000042(2*n+1)+A000533(2*n)-A138144(2*n+1)`
-/

namespace A144564.P18024891364250701798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (2 * n + 1) + (A000533 (2 * n) - A138144 (2 * n + 1))

end

end A144564.P18024891364250701798

/-!
# A144565: a(n) is the smallest composite number > a(n-1) that contains the n-th prime as a substring.

The programs for A144565, there is no canonical definition to state claims against.
-/

/-! ## A144565.P9570982247753356788

`A319165(n+1)+A303656(A201919(n+5))`
-/

namespace A144565.P9570982247753356788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319165 (n + 1) + A303656 (A201919 (n + 5)).toNat

end

end A144565.P9570982247753356788

/-!
# A144566: Numbers with more prime factors (including multiplicity) than their greatest prime factor.

The programs for A144566, there is no canonical definition to state claims against.
-/

/-! ## A144566.P11433495359411133363

`lt[A006530(n+1), A001222(n+1)]+1`
-/

namespace A144566.P11433495359411133363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A144566.P11433495359411133363

/-! ## A144566.P3751395368192316020

`lt[A085392(n+1), A001222(n+1)]+1`
-/

namespace A144566.P3751395368192316020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A144566.P3751395368192316020

/-! ## A144566.P10103884458098650416

`lt[A006530(n+1), A086436(n+1)]+1`
-/

namespace A144566.P10103884458098650416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A144566.P10103884458098650416

/-! ## A144566.P7889063767661328811

`lt[A111089(n+1), A001222(n+1)]+1`
-/

namespace A144566.P7889063767661328811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A144566.P7889063767661328811

/-! ## A144566.P2323786134834453607

`lt[A014963(A053585(n+1)), A001222(n+1)]+1`
-/

namespace A144566.P2323786134834453607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A053585 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A144566.P2323786134834453607

/-!
# A144567: Primes of the form: smallest prime factor of n + largest prime factor of n, n > 1.

The programs for A144567, there is no canonical definition to state claims against.
-/

/-! ## A144567.P9409841548317052219

`p?[A085428(n)]`
-/

namespace A144567.P9409841548317052219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144567.P9409841548317052219

/-! ## A144567.P9615314618578982246

`p?[A074320(n+2)]`
-/

namespace A144567.P9615314618578982246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144567.P9615314618578982246

/-! ## A144567.P13691846359698342859

`p?[A111089(n+1)+2]`
-/

namespace A144567.P13691846359698342859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144567.P13691846359698342859

/-! ## A144567.P4252406079587233128

`p?[A006530(n+2)+2]`
-/

namespace A144567.P4252406079587233128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144567.P4252406079587233128

/-! ## A144567.P2683789036851540073

`p?[A070777(n+1)+3]`
-/

namespace A144567.P2683789036851540073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144567.P2683789036851540073

/-! ## A144567.P17758541332823535773

`p?[A046665(n+1)+4]`
-/

namespace A144567.P17758541332823535773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144567.P17758541332823535773

/-! ## A144567.P16982231666180141753

`p?[A085393(n+1)+4]`
-/

namespace A144567.P16982231666180141753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144567.P16982231666180141753

/-! ## A144567.P5269778024449684653

`p?[A070229(n+2)-n]`
-/

namespace A144567.P5269778024449684653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144567.P5269778024449684653

/-! ## A144567.P17722355385394392615

`p?[2-Δ[A360559(n+1)]]`
-/

namespace A144567.P17722355385394392615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360559 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144567.P17722355385394392615

/-! ## A144567.P11260086014450071688

`p?[p?[A285904(n+1)]+2]`
-/

namespace A144567.P11260086014450071688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285904 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144567.P11260086014450071688

/-!
# A144569: A de Bruijn sequence B(4,3) found by Ted Bell.

The programs for A144569, there is no canonical definition to state claims against.
-/

/-! ## A144569.P14822759605414393597

`A055941(A061395(record[A278218(n)]))`
-/

namespace A144569.P14822759605414393597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A144569.P14822759605414393597

/-! ## A144569.P15626507604027363621

`and(A025791(n), A294898(A006010(n+1)))`
-/

namespace A144569.P15626507604027363621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025791 n) (A294898 (A006010 (n + 1)).toNat)

end

end A144569.P15626507604027363621

/-! ## A144569.P14999544161318679106

`and(A120004(n), A294898(A006010(n+1)))`
-/

namespace A144569.P14999544161318679106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120004 n) (A294898 (A006010 (n + 1)).toNat)

end

end A144569.P14999544161318679106

/-! ## A144569.P5767067458509851180

`A025581(∑{d}[A329902(n+1), A297109(#)]-val(record[A123258(n+1)], 2))`
-/

namespace A144569.P5767067458509851180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d - (SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2 : ℤ)).toNat

end

end A144569.P5767067458509851180

/-! ## A144569.P12047160476311384874

`A062756(n)-A217207(A000124(n))`
-/

namespace A144569.P12047160476311384874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n - A217207 (A000124 n).toNat

end

end A144569.P12047160476311384874

/-!
# A144570: Nonprime(prime(n)).

The programs for A144570, the canonical program `A144570.P11118034758568014224` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144570 has offset 1).

The definition of A144570 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144570.P11118034758568014224

`A141468(A000040(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A144570

/-- `A141468(A000040(n+1))` -/
def P11118034758568014224.Spec : Prop :=
  ∀ n, P11118034758568014224.a n = A144570 (n + 1)

theorem P11118034758568014224.correct : P11118034758568014224.Spec := by
  intro n
  simp only [A144570, Nat.add_sub_cancel]

end A144570

/-! ## A144570.P2602753272453203260

`A007821(n+1)-A168271(n+1)`
-/

namespace A144570.P2602753272453203260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A168271 (n + 1)

end

end A144570.P2602753272453203260

namespace A144570

/-- `A007821(n+1)-A168271(n+1)` -/
def P2602753272453203260.Spec : Prop :=
  ∀ n, P2602753272453203260.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P13986402569987589085

`A001749(∑[A054546(n+1)])/4-A168271(n+1)`
-/

namespace A144570.P13986402569987589085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 4 - (A168271 (n + 1) : ℚ)

end

end A144570.P13986402569987589085

namespace A144570

/-- `A001749(∑[A054546(n+1)])/4-A168271(n+1)` -/
def P13986402569987589085.Spec : Prop :=
  ∀ n, P13986402569987589085.a n = (A144570 (n + 1) : ℚ)

end A144570

/-! ## A144570.P11438196444031791791

`A001749(comp[A182986(n+1)])/4-A168271(n+1)`
-/

namespace A144570.P11438196444031791791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 4 - (A168271 (n + 1) : ℚ)

end

end A144570.P11438196444031791791

namespace A144570

/-- `A001749(comp[A182986(n+1)])/4-A168271(n+1)` -/
def P11438196444031791791.Spec : Prop :=
  ∀ n, P11438196444031791791.a n = (A144570 (n + 1) : ℚ)

end A144570

/-! ## A144570.P11932336686094235048

`A001749(comp[A006093(n+1)]+1)/4-A168271(n+1)`
-/

namespace A144570.P11932336686094235048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℚ) / 4 - (A168271 (n + 1) : ℚ)

end

end A144570.P11932336686094235048

namespace A144570

/-- `A001749(comp[A006093(n+1)]+1)/4-A168271(n+1)` -/
def P11932336686094235048.Spec : Prop :=
  ∀ n, P11932336686094235048.a n = (A144570 (n + 1) : ℚ)

end A144570

/-! ## A144570.P944854694432416425

`A000040(sqrt(A062312(n+1)))-A168271(n+1)`
-/

namespace A144570.P944854694432416425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ))).toNat - A168271 (n + 1)

end

end A144570.P944854694432416425

namespace A144570

/-- `A000040(sqrt(A062312(n+1)))-A168271(n+1)` -/
def P944854694432416425.Spec : Prop :=
  ∀ n, P944854694432416425.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P10516662610158873574

`A018252(∑[A075526(n)])`
-/

namespace A144570.P10516662610158873574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144570.P10516662610158873574

namespace A144570

/-- `A018252(∑[A075526(n)])` -/
def P10516662610158873574.Spec : Prop :=
  ∀ n, P10516662610158873574.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P6864748489417168762

`A141468(Δ[A007504(n)])`
-/

namespace A144570.P6864748489417168762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (f1 (n + 1) - f1 n).toNat

end

end A144570.P6864748489417168762

namespace A144570

/-- `A141468(Δ[A007504(n)])` -/
def P6864748489417168762.Spec : Prop :=
  ∀ n, P6864748489417168762.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P12739855427541669791

`A018252(record[A037225(n)])`
-/

namespace A144570.P12739855427541669791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144570.P12739855427541669791

namespace A144570

/-- `A018252(record[A037225(n)])` -/
def P12739855427541669791.Spec : Prop :=
  ∀ n, P12739855427541669791.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P18330079185547282438

`A018252(A006093(n+1))`
-/

namespace A144570.P18330079185547282438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A006093 (n + 1)).toNat

end

end A144570.P18330079185547282438

namespace A144570

/-- `A018252(A006093(n+1))` -/
def P18330079185547282438.Spec : Prop :=
  ∀ n, P18330079185547282438.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P823783588084326620

`A141468(A008578(n+2))`
-/

namespace A144570.P823783588084326620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A008578 (n + 2)).toNat

end

end A144570.P823783588084326620

namespace A144570

/-- `A141468(A008578(n+2))` -/
def P823783588084326620.Spec : Prop :=
  ∀ n, P823783588084326620.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P15623580107231013723

`A141468(A182986(n+2))`
-/

namespace A144570.P15623580107231013723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A182986 (n + 2)).toNat

end

end A144570.P15623580107231013723

namespace A144570

/-- `A141468(A182986(n+2))` -/
def P15623580107231013723.Spec : Prop :=
  ∀ n, P15623580107231013723.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P4218874954571903573

`A018252(sqrt(A005722(n+1)))`
-/

namespace A144570.P4218874954571903573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat

end

end A144570.P4218874954571903573

namespace A144570

/-- `A018252(sqrt(A005722(n+1)))` -/
def P4218874954571903573.Spec : Prop :=
  ∀ n, P4218874954571903573.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P1352964073912460028

`A141468(sqrt(A001248(n+1)))`
-/

namespace A144570.P1352964073912460028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A144570.P1352964073912460028

namespace A144570

/-- `A141468(sqrt(A001248(n+1)))` -/
def P1352964073912460028.Spec : Prop :=
  ∀ n, P1352964073912460028.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P15910635746731935299

`A141468(∑[A054541(n+1)])`
-/

namespace A144570.P15910635746731935299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144570.P15910635746731935299

namespace A144570

/-- `A141468(∑[A054541(n+1)])` -/
def P15910635746731935299.Spec : Prop :=
  ∀ n, P15910635746731935299.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P6773951228080386621

`A018252(Δ[A007504(n)]-1)`
-/

namespace A144570.P6773951228080386621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (n + 1) - f1 n - 1).toNat

end

end A144570.P6773951228080386621

namespace A144570

/-- `A018252(Δ[A007504(n)]-1)` -/
def P6773951228080386621.Spec : Prop :=
  ∀ n, P6773951228080386621.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P3693582800011929608

`A018252(record[A000010(n+1)])`
-/

namespace A144570.P3693582800011929608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144570.P3693582800011929608

namespace A144570

/-- `A018252(record[A000010(n+1)])` -/
def P3693582800011929608.Spec : Prop :=
  ∀ n, P3693582800011929608.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P10963788897718041141

`A018252(record[A180935(n+1)])`
-/

namespace A144570.P10963788897718041141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144570.P10963788897718041141

namespace A144570

/-- `A018252(record[A180935(n+1)])` -/
def P10963788897718041141.Spec : Prop :=
  ∀ n, P10963788897718041141.a n = A144570 (n + 1)

end A144570

/-! ## A144570.P1211084905718417188

`A018252(record[A326129(n+1)])`
-/

namespace A144570.P1211084905718417188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144570.P1211084905718417188

namespace A144570

/-- `A018252(record[A326129(n+1)])` -/
def P1211084905718417188.Spec : Prop :=
  ∀ n, P1211084905718417188.a n = A144570 (n + 1)

end A144570

/-!
# A144571: Primes of the form 81n^2 - 90n + 26.

The programs for A144571, there is no canonical definition to state claims against.
-/

/-! ## A144571.P4891853305159855264

`record[A256970(9*n+2)]`
-/

namespace A144571.P4891853305159855264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (9 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144571.P4891853305159855264

/-! ## A144571.P13184131079460323060

`record[A125256(2*A017185(n))]`
-/

namespace A144571.P13184131079460323060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (2 * A017185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144571.P13184131079460323060

/-! ## A144571.P8854875085911111387

`record[A125256(A017209(2*n))]`
-/

namespace A144571.P8854875085911111387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A017209 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144571.P8854875085911111387

/-! ## A144571.P249492262625439897

`record[A125256(A017197(2*n)+1)]`
-/

namespace A144571.P249492262625439897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A017197 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144571.P249492262625439897

/-! ## A144571.P17718077019881536397

`record[A125256(A016969(3*n)-1)]`
-/

namespace A144571.P17718077019881536397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A016969 (3 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144571.P17718077019881536397

/-! ## A144571.P10732187073670156854

`record[A125256(A154266(n)-A017257(n))]`
-/

namespace A144571.P10732187073670156854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A154266 n - A017257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144571.P10732187073670156854

/-! ## A144571.P15659637558457937044

`record[A089120(A017209(n))]`
-/

namespace A144571.P15659637558457937044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A017209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144571.P15659637558457937044

/-! ## A144571.P7366260707309283823

`record[A089120(A017185(n)+2)]`
-/

namespace A144571.P7366260707309283823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A017185 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144571.P7366260707309283823

/-! ## A144571.P17111478928506376351

`record[A089120(2*A017185(n))]`
-/

namespace A144571.P17111478928506376351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (2 * A017185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144571.P17111478928506376351

/-! ## A144571.P2206083698750549682

`A154295(A154503(n+1))`
-/

namespace A144571.P2206083698750549682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154295 (A154503 (n + 1)).toNat

end

end A144571.P2206083698750549682

/-!
# A144572: Primes of the form nonprime(prime(n))+1, where n-th nonprime = A141468(n) and first nonprime = 0.

The programs for A144572, there is no canonical definition to state claims against.
-/

/-! ## A144572.P4615817945841009668

`p?[A144570(n+1)+1]`
-/

namespace A144572.P4615817945841009668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144570 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144572.P4615817945841009668

/-! ## A144572.P6662565803850435080

`A213642(A234851(n+2))`
-/

namespace A144572.P6662565803850435080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213642 (A234851 (n + 2)).toNat

end

end A144572.P6662565803850435080

/-! ## A144572.P18100516098721458020

`A141468(A234850(n+2))+1`
-/

namespace A144572.P18100516098721458020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A234850 (n + 2)).toNat + 1

end

end A144572.P18100516098721458020

/-! ## A144572.P10390754277453810121

`record[A020639(A144570(n+1)+1)]`
-/

namespace A144572.P10390754277453810121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A144570 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144572.P10390754277453810121

/-! ## A144572.P6090701365732010493

`p?[A018252(A006093(n+1))+1]`
-/

namespace A144572.P6090701365732010493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A006093 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144572.P6090701365732010493

/-!
# A144573: Smallest prime greater than nonprime(prime(n)).

The programs for A144573, the canonical program `A144573.P389422865237897508` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144573 has offset 1).

The definition of A144573 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007918, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144573.P389422865237897508

`A007918(A141468(A000040(n+1)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A144573

/-- `A007918(A141468(A000040(n+1)))` -/
def P389422865237897508.Spec : Prop :=
  ∀ n, P389422865237897508.a n = A144573 (n + 1)

theorem P389422865237897508.correct : P389422865237897508.Spec := by
  intro n
  simp only [A144573, Nat.add_sub_cancel]

end A144573

/-! ## A144573.P16801921164120770288

`A007918(A144570(n+1))`
-/

namespace A144573.P16801921164120770288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A144570 (n + 1)).toNat

end

end A144573.P16801921164120770288

namespace A144573

/-- `A007918(A144570(n+1))` -/
def P16801921164120770288.Spec : Prop :=
  ∀ n, P16801921164120770288.a n = A144573 (n + 1)

end A144573

/-! ## A144573.P18244548104264763701

`A151800(A144570(n+1)-1)`
-/

namespace A144573.P18244548104264763701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A144570 (n + 1) - 1).toNat

end

end A144573.P18244548104264763701

namespace A144573

/-- `A151800(A144570(n+1)-1)` -/
def P18244548104264763701.Spec : Prop :=
  ∀ n, P18244548104264763701.a n = A144573 (n + 1)

end A144573

/-! ## A144573.P5628168355325100518

`A151800(A141468(p?[a(n-1)+2]))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A144573.P5628168355325100518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A141468 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A144573.P5628168355325100518

namespace A144573

/-- `A151800(A141468(p?[a(n-1)+2]))` -/
def P5628168355325100518.Spec : Prop :=
  ∀ n, P5628168355325100518.a n = A144573 (n + 1)

end A144573

/-! ## A144573.P605560732304254777

`A000040(A073425(p?[round(8*n/7)]-2)+1)`
-/

namespace A144573.P605560732304254777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A073425 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2).toNat + 1).toNat

end

end A144573.P605560732304254777

namespace A144573

/-- `A000040(A073425(p?[round(8*n/7)]-2)+1)` -/
def P605560732304254777.Spec : Prop :=
  ∀ n, P605560732304254777.a n = A144573 (n + 1)

end A144573

/-! ## A144573.P14750116226726832113

`A151800(A018252(record[2*n+2-∑{d}[n+1, #]]))`
-/

namespace A144573.P14750116226726832113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A144573.P14750116226726832113

namespace A144573

/-- `A151800(A018252(record[2*n+2-∑{d}[n+1, #]]))` -/
def P14750116226726832113.Spec : Prop :=
  ∀ n, P14750116226726832113.a n = A144573 (n + 1)

end A144573

/-! ## A144573.P6160241328994856225

`A151800(A018252(record[n+2-∑{d}[n+1, #]+n]))`
-/

namespace A144573.P6160241328994856225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A144573.P6160241328994856225

namespace A144573

/-- `A151800(A018252(record[n+2-∑{d}[n+1, #]+n]))` -/
def P6160241328994856225.Spec : Prop :=
  ∀ n, P6160241328994856225.a n = A144573 (n + 1)

end A144573

/-! ## A144573.P3245575845180949869

`A007918(A018252(∑[A075526(n)]))`
-/

namespace A144573.P3245575845180949869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A018252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A144573.P3245575845180949869

namespace A144573

/-- `A007918(A018252(∑[A075526(n)]))` -/
def P3245575845180949869.Spec : Prop :=
  ∀ n, P3245575845180949869.a n = A144573 (n + 1)

end A144573

/-! ## A144573.P17968111114470676602

`A007918(A018252(record[A037225(n)]))`
-/

namespace A144573.P17968111114470676602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A144573.P17968111114470676602

namespace A144573

/-- `A007918(A018252(record[A037225(n)]))` -/
def P17968111114470676602.Spec : Prop :=
  ∀ n, P17968111114470676602.a n = A144573 (n + 1)

end A144573

/-! ## A144573.P13890726183431538551

`A151800(record[A018252(A037225(n))])`
-/

namespace A144573.P13890726183431538551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A037225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144573.P13890726183431538551

namespace A144573

/-- `A151800(record[A018252(A037225(n))])` -/
def P13890726183431538551.Spec : Prop :=
  ∀ n, P13890726183431538551.a n = A144573 (n + 1)

end A144573

/-!
# A144574: Largest prime < nonprime(prime(n)).

The programs for A144574, there is no canonical definition to state claims against.
-/

/-! ## A144574.P3082361164450813049

`A136548(A078782(n+1))`
-/

namespace A144574.P3082361164450813049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A078782 (n + 1)).toNat

end

end A144574.P3082361164450813049

/-! ## A144574.P14945116972167531715

`A335285(A065858(n+1))`
-/

namespace A144574.P14945116972167531715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A065858 (n + 1)).toNat

end

end A144574.P14945116972167531715

/-! ## A144574.P10981592743472528898

`A335285(A022449(n+2))`
-/

namespace A144574.P10981592743472528898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A022449 (n + 2)).toNat

end

end A144574.P10981592743472528898

/-! ## A144574.P1798243763245983511

`A136548(A065858(n+1)-1)`
-/

namespace A144574.P1798243763245983511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A065858 (n + 1) - 1).toNat

end

end A144574.P1798243763245983511

/-! ## A144574.P12845031565975368044

`A136548(A018252(p?[xor(1, n)+1]))`
-/

namespace A144574.P12845031565975368044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A144574.P12845031565975368044

/-! ## A144574.P17845575985136438483

`A007917(A018252(p?[n%3+n]))`
-/

namespace A144574.P17845575985136438483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A144574.P17845575985136438483

/-! ## A144574.P12123306188551565753

`A000040(A073425(A006093(n+1)))`
-/

namespace A144574.P12123306188551565753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A073425 (A006093 (n + 1)).toNat).toNat

end

end A144574.P12123306188551565753

/-!
# A144575: E,g.f.: exp(1-sqrt(1-2*x-3*x^2)).

The programs for A144575, there is no canonical definition to state claims against.
-/

/-! ## A144575.P17409192051900688662

`A014682(A293718(∑[n+2]-1)+A025168(n))`
-/

namespace A144575.P17409192051900688662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A293718 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + A025168 n).toNat

end

end A144575.P17409192051900688662

/-! ## A144575.P7194584454983957362

`or(1, A035114(A354013(n)))`
-/

namespace A144575.P7194584454983957362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A035114 (A354013 n).toNat)

end

end A144575.P7194584454983957362

/-!
# A144576: E.g.f.: exp(1-sqrt(1-2*x-4*x^2)).

The programs for A144576, there is no canonical definition to state claims against.
-/

/-! ## A144576.P168758152211116242

`A000165(n)/A144580(n)*A144579(n)`
-/

namespace A144576.P168758152211116242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (A144580 n : ℚ) * (A144579 n : ℚ)

end

end A144576.P168758152211116242

/-! ## A144576.P5420605958281374240

`lcm(A096162(n+1), A144579(A004869(n+1)))`
-/

namespace A144576.P5420605958281374240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096162 (n + 1)) (A144579 (A004869 (n + 1)).toNat)

end

end A144576.P5420605958281374240

/-!
# A144577: Numerators of expansion of exp(1-sqrt(1-x-2*x^2)).

The programs for A144577, there is no canonical definition to state claims against.
-/

/-! ## A144577.P14787711503240567475

`A153093((n+1)^n+1)`
-/

namespace A144577.P14787711503240567475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153093 ((n + 1) ^ n + 1)

end

end A144577.P14787711503240567475

/-!
# A144578: Denominators of expansion of exp(1-sqrt(1-x-2*x^2)).

The programs for A144578, there is no canonical definition to state claims against.
-/

/-! ## A144578.P6219925698606898296

`A000165(n)/A258062(A308434(n))`
-/

namespace A144578.P6219925698606898296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (A258062 (A308434 n).toNat : ℚ)

end

end A144578.P6219925698606898296

/-! ## A144578.P10430668501161074434

`A143968(n)/A328855(A052321(n+1))`
-/

namespace A144578.P10430668501161074434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143968 n : ℚ) / (A328855 (A052321 (n + 1)).toNat : ℚ)

end

end A144578.P10430668501161074434

/-! ## A144578.P2987747579846395186

`A000165(n)/A329325(A342013(n+1))`
-/

namespace A144578.P2987747579846395186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (A329325 (A342013 (n + 1)).toNat : ℚ)

end

end A144578.P2987747579846395186

/-! ## A144578.P8824110088984536826

`A143968(n)/A351545(A047083(2*(n+2)))`
-/

namespace A144578.P8824110088984536826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143968 n : ℚ) / (A351545 (A047083 (2 * (n + 2))).toNat : ℚ)

end

end A144578.P8824110088984536826

/-!
# A144579: Numerators of expansion of exp(1-sqrt(1-x-x^2)).

The programs for A144579, there is no canonical definition to state claims against.
-/

/-! ## A144579.P9129173105631474456

`A144576(n)/gcd(A143968(n), A144576(n))`
-/

namespace A144579.P9129173105631474456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144576 n : ℚ) / (Int.gcd (A143968 n) (A144576 n) : ℚ)

end

end A144579.P9129173105631474456

/-! ## A144579.P11643975644041428974

`lcm(A144576(n), A144578(n))/A144578(n)`
-/

namespace A144579.P11643975644041428974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A144576 n) (A144578 n) : ℚ) / (A144578 n : ℚ)

end

end A144579.P11643975644041428974

/-! ## A144579.P840473279527436596

`A144576(A004869(n+1))/A096162(n+1)`
-/

namespace A144579.P840473279527436596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144576 (A004869 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ)

end

end A144579.P840473279527436596

/-! ## A144579.P11646238159123255854

`A144576(A004880(n+1))/A096162(n+1)`
-/

namespace A144579.P11646238159123255854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144576 (A004880 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ)

end

end A144579.P11646238159123255854

/-!
# A144580: Denominators of expansion of exp(1-sqrt(1-x-x^2)).

The programs for A144580, there is no canonical definition to state claims against.
-/

/-! ## A144580.P1093732282918985954

`A143968(n)/A046983(A180515(n))`
-/

namespace A144580.P1093732282918985954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143968 n : ℚ) / (A046983 (A180515 n).toNat : ℚ)

end

end A144580.P1093732282918985954

/-! ## A144580.P16871462716280324674

`A143968(A004869(n+1))/A143953(n)`
-/

namespace A144580.P16871462716280324674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143968 (A004869 (n + 1)).toNat : ℚ) / (A143953 n : ℚ)

end

end A144580.P16871462716280324674

/-! ## A144580.P1732371305371076076

`A143968(A004880(n+1))/A143953(n)`
-/

namespace A144580.P1732371305371076076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143968 (A004880 (n + 1)).toNat : ℚ) / (A143953 n : ℚ)

end

end A144580.P1732371305371076076

/-!
# A144581: Triangular numbers k*(k+1)/2 such that (number of prime factors of k) + (number of prime factors of k+1) is composite.

The programs for A144581, there is no canonical definition to state claims against.
-/

/-! ## A144581.P14907999479618197347

`eq[A035214(n)², A073855(2*n)]`
-/

namespace A144581.P14907999479618197347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144581.P14907999479618197347

/-! ## A144581.P13065494270247091683

`A000217(A221280(n+2))+A000007(n)*A185044(n)`
-/

namespace A144581.P13065494270247091683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A221280 (n + 2)).toNat + A000007 n * A185044 n

end

end A144581.P13065494270247091683

/-! ## A144581.P6285465342630397332

`A008683(A062064(n+1))+A000217(A221280(n+2))+1`
-/

namespace A144581.P6285465342630397332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A062064 (n + 1)).toNat + (A000217 (A221280 (n + 2)).toNat + 1)

end

end A144581.P6285465342630397332

/-! ## A144581.P10262592536573858468

`filter[A112355(n+2), A066829(#)]`
-/

namespace A144581.P10262592536573858468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112355 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A144581.P10262592536573858468

/-! ## A144581.P4987942280403798845

`∩[A046339(n+1), A112355(n+1)]`
-/

namespace A144581.P4987942280403798845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144581.P4987942280403798845

/-!
# A144582: Numbers having the same leading decimal digit as their cube.

The programs for A144582, there is no canonical definition to state claims against.
-/

/-! ## A144582.P1860398302248457559

`eq[A000030(n), A002994(n)]`
-/

namespace A144582.P1860398302248457559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144582.P1860398302248457559

/-! ## A144582.P2652335056403998518

`eq[val(A061509(n), 2), A002994(n)]`
-/

namespace A144582.P2652335056403998518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061509 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144582.P2652335056403998518

/-! ## A144582.P5574552792362399969

`eq[A004086(n)%10, A002994(n)]`
-/

namespace A144582.P5574552792362399969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144582.P5574552792362399969

/-! ## A144582.P3138510564176545525

`eq[A032762(n)%10, A002994(n)]`
-/

namespace A144582.P3138510564176545525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032762 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144582.P3138510564176545525

/-! ## A144582.P11558779786374726625

`eq[A082216(n)%10, A002994(n)]`
-/

namespace A144582.P11558779786374726625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082216 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144582.P11558779786374726625

/-! ## A144582.P4734797158379804495

`eq[A002994(n)+n, A182324(n)]`
-/

namespace A144582.P4734797158379804495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144582.P4734797158379804495

/-! ## A144582.P6773929494549272040

`eq[A002994(n), A010879(A004086(n))]`
-/

namespace A144582.P6773929494549272040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144582.P6773929494549272040

/-! ## A144582.P8255927349283863382

`eq[A002994(n), A007376(A229186(n))]`
-/

namespace A144582.P8255927349283863382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A229186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144582.P8255927349283863382

/-! ## A144582.P289759024093060063

`eq[A002994(n), A002994(A018852(n))]`
-/

namespace A144582.P289759024093060063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 (A018852 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144582.P289759024093060063

/-! ## A144582.P9842399152583422577

`eq[A002993(A018851(n)), A002994(n)]`
-/

namespace A144582.P9842399152583422577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A018851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144582.P9842399152583422577

/-! ## A144582.P4754618923900706258

`eq[A000796(A014777(n)), A002994(n)]`
-/

namespace A144582.P4754618923900706258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A014777 n).toNat + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144582.P4754618923900706258

/-!
# A144584: Primes p with one digit zero in prime(p).

The programs for A144584, there is no canonical definition to state claims against.
-/

/-! ## A144584.P15103181783574988230

`p?[(n+1)*A085974(n+1)]`
-/

namespace A144584.P15103181783574988230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A085974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144584.P15103181783574988230

/-! ## A144584.P13006488119020154928

`p?[A085974(A005408(n))*A005408(n)]`
-/

namespace A144584.P13006488119020154928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085974 (A005408 n).toNat * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144584.P13006488119020154928

/-! ## A144584.P3950956290088676135

`p?[A085974(A267872(n))*A267872(n)]`
-/

namespace A144584.P3950956290088676135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085974 (A267872 n).toNat * A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144584.P3950956290088676135

/-! ## A144584.P6713939922144517725

`p?[n*A055641(A008578(n+1))]`
-/

namespace A144584.P6713939922144517725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055641 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144584.P6713939922144517725

/-!
# A144585: Composites whose sum of prime factors is an odd nonprime (counted with multiplicity).

The programs for A144585, there is no canonical definition to state claims against.
-/

/-! ## A144585.P8698217019135747771

`eq[1, A107393(A001414(n+1))]+1`
-/

namespace A144585.P8698217019135747771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144585.P8698217019135747771

/-! ## A144585.P17298602811147298539

`eq[1, A107393(A107463(n))]`
-/

namespace A144585.P17298602811147298539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144585.P17298602811147298539

/-! ## A144585.P2454628440574941645

`∩[A036350(n+1), A134376(n+1)]`
-/

namespace A144585.P2454628440574941645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144585.P2454628440574941645

/-! ## A144585.P3703673783567843545

`∩[A134376(n+1), A335657(n+1)]`
-/

namespace A144585.P3703673783567843545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144585.P3703673783567843545

/-! ## A144585.P152734338465098476

`lt[A107286(2*n), A107286(A107463(n))]`
-/

namespace A144585.P152734338465098476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A144585.P152734338465098476

/-!
# A144586: a(n) = odd and nonprime sum (with multiplicity) of prime factors of composite(k) = A002808(k).

The programs for A144586, there is no canonical definition to state claims against.
-/

/-! ## A144586.P989853270849841506

`A001414(A144585(n+1))`
-/

namespace A144586.P989853270849841506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A144585 (n + 1)).toNat

end

end A144586.P989853270849841506

/-! ## A144586.P16595736583587064687

`A107463(A144585(n-log2(1/2)))`
-/

namespace A144586.P16595736583587064687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A144585 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A144586.P16595736583587064687

/-! ## A144586.P9536857470793834976

`∑{d}[A107463(A144585(n+1)), A000010(#)]`
-/

namespace A144586.P9536857470793834976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A144585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A144586.P9536857470793834976

/-! ## A144586.P15065766124466532852

`A001414(∩[A036350(n+1), A134376(n+1)])`
-/

namespace A144586.P15065766124466532852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A144586.P15065766124466532852

/-! ## A144586.P6166999904935045269

`A107463(∩[A036350(n+1), A134376(n+1)])`
-/

namespace A144586.P6166999904935045269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A144586.P6166999904935045269

/-! ## A144586.P12633005850413403214

`A001414(∩[A134376(n+1), A335657(n+1)])`
-/

namespace A144586.P12633005850413403214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A144586.P12633005850413403214

/-! ## A144586.P1505240557345134050

`A107463(∩[A134376(n+1), A335657(n+1)])`
-/

namespace A144586.P1505240557345134050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A144586.P1505240557345134050

/-! ## A144586.P1655441406364929066

`∑{d}[A144585(n+1), A120007(#)]`
-/

namespace A144586.P1655441406364929066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A144586.P1655441406364929066

/-! ## A144586.P821680144875915316

`A036288(∩[A036350(n+1), A134376(n+1)])-1`
-/

namespace A144586.P821680144875915316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A144586.P821680144875915316

/-! ## A144586.P16684703362214412944

`A107463(A144585(n+1))%A000032(n+5)`
-/

namespace A144586.P16684703362214412944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107463 (A144585 (n + 1)).toNat) (A000032 (n + 5))

end

end A144586.P16684703362214412944

/-!
# A144589: Prime(n-th "prime nonprime").

The programs for A144589, the canonical program `A144589.P6745490290159702062` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144589 has offset 1).

The definition of A144589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144589.P6745490290159702062

`A007821(p?[xor(1, n)+1]-1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A144589

/-- `A007821(p?[xor(1, n)+1]-1)` -/
def P6745490290159702062.Spec : Prop :=
  ∀ n, P6745490290159702062.a n = A144589 (n + 1)

theorem P6745490290159702062.correct : P6745490290159702062.Spec := by
  intro n
  simp only [A144589, Nat.add_sub_cancel]

end A144589

/-! ## A144589.P10841955512233514478

`A007821(p?[n%3+n]-1)`
-/

namespace A144589.P10841955512233514478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A144589.P10841955512233514478

namespace A144589

/-- `A007821(p?[n%3+n]-1)` -/
def P10841955512233514478.Spec : Prop :=
  ∀ n, P10841955512233514478.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P13169303266621338188

`A007821(p?[round(sqrt(n)+n)]-1)`
-/

namespace A144589.P13169303266621338188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A144589.P13169303266621338188

namespace A144589

/-- `A007821(p?[round(sqrt(n)+n)]-1)` -/
def P13169303266621338188.Spec : Prop :=
  ∀ n, P13169303266621338188.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P9239012824780181557

`A007821(abs(p?[a(n-1)+2]-1))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A144589.P9239012824780181557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1|.toNat

end

end A144589.P9239012824780181557

namespace A144589

/-- `A007821(abs(p?[a(n-1)+2]-1))` -/
def P9239012824780181557.Spec : Prop :=
  ∀ n, P9239012824780181557.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P10212617057104343962

`p?[A007821(p?[a(n-1)+2]-1)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A144589.P10212617057104343962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144589.P10212617057104343962

namespace A144589

/-- `p?[A007821(p?[a(n-1)+2]-1)]` -/
def P10212617057104343962.Spec : Prop :=
  ∀ n, P10212617057104343962.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P4445445793816860948

`A007821(∑[A075526(n)])`
-/

namespace A144589.P4445445793816860948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144589.P4445445793816860948

namespace A144589

/-- `A007821(∑[A075526(n)])` -/
def P4445445793816860948.Spec : Prop :=
  ∀ n, P4445445793816860948.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P12580752410996312085

`A007821(record[A037225(n)])`
-/

namespace A144589.P12580752410996312085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144589.P12580752410996312085

namespace A144589

/-- `A007821(record[A037225(n)])` -/
def P12580752410996312085.Spec : Prop :=
  ∀ n, P12580752410996312085.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P1713200696730737019

`A007821(A006093(n+1))`
-/

namespace A144589.P1713200696730737019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (A006093 (n + 1)).toNat

end

end A144589.P1713200696730737019

namespace A144589

/-- `A007821(A006093(n+1))` -/
def P1713200696730737019.Spec : Prop :=
  ∀ n, P1713200696730737019.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P11682838316290765371

`A007821(Δ[A007504(n)]-1)`
-/

namespace A144589.P11682838316290765371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (f1 (n + 1) - f1 n - 1).toNat

end

end A144589.P11682838316290765371

namespace A144589

/-- `A007821(Δ[A007504(n)]-1)` -/
def P11682838316290765371.Spec : Prop :=
  ∀ n, P11682838316290765371.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P13610985883697447319

`A007821(A000040(n+1)-1)`
-/

namespace A144589.P13610985883697447319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (A000040 (n + 1) - 1).toNat

end

end A144589.P13610985883697447319

namespace A144589

/-- `A007821(A000040(n+1)-1)` -/
def P13610985883697447319.Spec : Prop :=
  ∀ n, P13610985883697447319.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P6251541803313717176

`A007821(A008578(n+2)-1)`
-/

namespace A144589.P6251541803313717176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (A008578 (n + 2) - 1).toNat

end

end A144589.P6251541803313717176

namespace A144589

/-- `A007821(A008578(n+2)-1)` -/
def P6251541803313717176.Spec : Prop :=
  ∀ n, P6251541803313717176.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P603309834108970773

`A007821(A008864(n+1)-2)`
-/

namespace A144589.P603309834108970773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (A008864 (n + 1) - 2).toNat

end

end A144589.P603309834108970773

namespace A144589

/-- `A007821(A008864(n+1)-2)` -/
def P603309834108970773.Spec : Prop :=
  ∀ n, P603309834108970773.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P10523120135605515624

`A007821(A028815(n+1)-2)`
-/

namespace A144589.P10523120135605515624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (A028815 (n + 1) - 2).toNat

end

end A144589.P10523120135605515624

namespace A144589

/-- `A007821(A028815(n+1)-2)` -/
def P10523120135605515624.Spec : Prop :=
  ∀ n, P10523120135605515624.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P5720813605845728758

`A007821(A182986(n+2)-1)`
-/

namespace A144589.P5720813605845728758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (A182986 (n + 2) - 1).toNat

end

end A144589.P5720813605845728758

namespace A144589

/-- `A007821(A182986(n+2)-1)` -/
def P5720813605845728758.Spec : Prop :=
  ∀ n, P5720813605845728758.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P9092561735943249038

`A007821(A162177(n+2)+n+1)`
-/

namespace A144589.P9092561735943249038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (A162177 (n + 2) + (n + 1 : ℤ)).toNat

end

end A144589.P9092561735943249038

namespace A144589

/-- `A007821(A162177(n+2)+n+1)` -/
def P9092561735943249038.Spec : Prop :=
  ∀ n, P9092561735943249038.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P2941130942787243636

`A000040(A144570(n+1))`
-/

namespace A144589.P2941130942787243636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A144570 (n + 1)).toNat

end

end A144589.P2941130942787243636

namespace A144589

/-- `A000040(A144570(n+1))` -/
def P2941130942787243636.Spec : Prop :=
  ∀ n, P2941130942787243636.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P2373650961327129137

`A000040(A065090(A006005(n+1)))`
-/

namespace A144589.P2373650961327129137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065090 (A006005 (n + 1)).toNat).toNat

end

end A144589.P2373650961327129137

namespace A144589

/-- `A000040(A065090(A006005(n+1)))` -/
def P2373650961327129137.Spec : Prop :=
  ∀ n, P2373650961327129137.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P7544427961863953833

`A000040(A141468(A000040(n+1)))`
-/

namespace A144589.P7544427961863953833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A141468 (A000040 (n + 1)).toNat).toNat

end

end A144589.P7544427961863953833

namespace A144589

/-- `A000040(A141468(A000040(n+1)))` -/
def P7544427961863953833.Spec : Prop :=
  ∀ n, P7544427961863953833.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P6351109335408975788

`A000040(A018252(A014689(n+1)+n))`
-/

namespace A144589.P6351109335408975788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (A014689 (n + 1) + (n : ℤ)).toNat).toNat

end

end A144589.P6351109335408975788

namespace A144589

/-- `A000040(A018252(A014689(n+1)+n))` -/
def P6351109335408975788.Spec : Prop :=
  ∀ n, P6351109335408975788.a n = A144589 (n + 1)

end A144589

/-! ## A144589.P2157541556807198114

`A000040(A018252(A065890(n+1)+n+1))`
-/

namespace A144589.P2157541556807198114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (A065890 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A144589.P2157541556807198114

namespace A144589

/-- `A000040(A018252(A065890(n+1)+n+1))` -/
def P2157541556807198114.Spec : Prop :=
  ∀ n, P2157541556807198114.a n = A144589 (n + 1)

end A144589

/-!
# A144590: Number of ordered ways of writing 2n+1 = i + j, where i is a prime and j is of the form k*(k+1), k > 0.

The programs for A144590, there is no canonical definition to state claims against.
-/

/-! ## A144590.P4079027312052507941

`A117054(2*n)`
-/

namespace A144590.P4079027312052507941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117054 (2 * n)

end

end A144590.P4079027312052507941

/-! ## A144590.P17664122782952546011

`dr(A117054(n+n))`
-/

namespace A144590.P17664122782952546011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A117054 (n + n))

end

end A144590.P17664122782952546011

/-! ## A144590.P8301720234003217392

`A117054(gcd(n, C(2, n))+n)%14`
-/

namespace A144590.P8301720234003217392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117054 (Nat.gcd n (Nat.choose 2 n) + n)) 14

end

end A144590.P8301720234003217392

/-! ## A144590.P4899761776791959505

`A117054(A004277(n))%9`
-/

namespace A144590.P4899761776791959505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117054 (A004277 n).toNat) 9

end

end A144590.P4899761776791959505

/-! ## A144590.P15093201766809151646

`A117054(A005843(n))%9`
-/

namespace A144590.P15093201766809151646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117054 (A005843 n).toNat) 9

end

end A144590.P15093201766809151646

/-! ## A144590.P12452691734055753412

`A117054(record[A014681(n)])%9`
-/

namespace A144590.P12452691734055753412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 9

end

end A144590.P12452691734055753412

/-! ## A144590.P10413624215603609980

`A117054(record[A124625(n)])%9`
-/

namespace A144590.P10413624215603609980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 9

end

end A144590.P10413624215603609980

/-! ## A144590.P2188976551927422792

`A117054(A004275(n+1))%9`
-/

namespace A144590.P2188976551927422792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117054 (A004275 (n + 1)).toNat) 9

end

end A144590.P2188976551927422792

/-! ## A144590.P3906123967394556914

`A117054(A004277(n))/A007318(∑[n])`
-/

namespace A144590.P3906123967394556914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117054 (A004277 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A144590.P3906123967394556914

/-! ## A144590.P17537111435726318423

`abs(A117054(A004277(n))/A008836(n+1))`
-/

namespace A144590.P17537111435726318423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A117054 (A004277 n).toNat : ℚ) / (A008836 (n + 1) : ℚ)|

end

end A144590.P17537111435726318423

/-!
# A144593: Records in A096915.

The programs for A144593, there is no canonical definition to state claims against.
-/

/-! ## A144593.P3098920360904364150

`record[A096915(n+1)]`
-/

namespace A144593.P3098920360904364150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144593.P3098920360904364150

/-! ## A144593.P5671911980507746151

`A096915(A137177(n+1))`
-/

namespace A144593.P5671911980507746151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A137177 (n + 1)).toNat

end

end A144593.P5671911980507746151

/-! ## A144593.P5017991759987316994

`p?[record[A096915(A028310(n))]]`
-/

namespace A144593.P5017991759987316994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144593.P5017991759987316994

/-! ## A144593.P11890365559174402341

`p?[A096915(A137177(ϕ²-(ϕ-n)))]`
-/

namespace A144593.P11890365559174402341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A137177 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144593.P11890365559174402341

/-! ## A144593.P4469297649289966733

`p?[record[A096915(A034888(n))]]`
-/

namespace A144593.P4469297649289966733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A034888 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144593.P4469297649289966733

/-!
# A144595: Christoffel word of slope 4/7.

The programs for A144595, the canonical program `A144595.P16519792227017368818` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144595 has offset 0).

The definition of A144595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144595.P16519792227017368818

`Δ[floor(4*n/11)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144595

/-- `Δ[floor(4*n/11)]` -/
def P16519792227017368818.Spec : Prop :=
  ∀ n, P16519792227017368818.a n = A144595 n

theorem P16519792227017368818.correct : P16519792227017368818.Spec := by
  intro n
  simp only [A144595]

end A144595

/-!
# A144596: Christoffel word of slope 2/7.

The programs for A144596, the canonical program `A144596.P11165365272091023055` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144596 has offset 0).

The definition of A144596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144596.P11165365272091023055

`a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=0, a(7)=0, a(8)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144596

/-- `a(n-9)` -/
def P11165365272091023055.Spec : Prop :=
  ∀ n, (P11165365272091023055.a n : ℤ) = A144596 n

theorem P11165365272091023055.correct : P11165365272091023055.Spec := by
  intro n
  simp only [A144596]

end A144596

/-!
# A144597: Christoffel word of slope 3/7.

The programs for A144597, the canonical program `A144597.P16681090928131900372` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144597 has offset 0).

The definition of A144597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144597.P16681090928131900372

`floor((3*n)%10/7)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144597

/-- `floor((3*n)%10/7)` -/
def P16681090928131900372.Spec : Prop :=
  ∀ n, P16681090928131900372.a n = A144597 n

theorem P16681090928131900372.correct : P16681090928131900372.Spec := by
  intro n
  simp only [A144597]

end A144597

/-!
# A144598: Christoffel word of slope 5/7.

The programs for A144598, the canonical program `A144598.P18325148895002518994` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144598 has offset 0).

The definition of A144598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144598.P18325148895002518994

`floor((5*n)%12/7)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144598

/-- `floor((5*n)%12/7)` -/
def P18325148895002518994.Spec : Prop :=
  ∀ n, P18325148895002518994.a n = A144598 n

theorem P18325148895002518994.correct : P18325148895002518994.Spec := by
  intro n
  simp only [A144598]

end A144598

/-!
# A144599: Christoffel word of slope 6/7.

The programs for A144599, the canonical program `A144599.P16045322272620418674` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144599 has offset 0).

The definition of A144599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144599.P16045322272620418674

`((n+12)%13)%2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144599

/-- `((n+12)%13)%2` -/
def P16045322272620418674.Spec : Prop :=
  ∀ n, (P16045322272620418674.a n : ℤ) = A144599 n

theorem P16045322272620418674.correct : P16045322272620418674.Spec := by
  intro n
  simp only [A144599]

end A144599

