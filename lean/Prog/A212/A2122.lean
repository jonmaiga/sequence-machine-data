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
import Seq.B000.C019
import Seq.B000.C021
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A212201: Records in A212200.

The programs for A212201, there is no canonical definition to state claims against.
-/

/-! ## A212201.P9966977157388696631

`record[A212200(n+1)]`
-/

namespace A212201.P9966977157388696631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212201.P9966977157388696631

/-! ## A212201.P5738861671461637651

`record[A212203(n+1)]`
-/

namespace A212201.P5738861671461637651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212201.P5738861671461637651

/-! ## A212201.P14840514649684479299

`A212200(A212202(n+1))`
-/

namespace A212201.P14840514649684479299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212200 (A212202 (n + 1)).toNat

end

end A212201.P14840514649684479299

/-! ## A212201.P4319362655971106087

`A212203(A333256(n+1)+1)`
-/

namespace A212201.P4319362655971106087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212203 (A333256 (n + 1) + 1).toNat

end

end A212201.P4319362655971106087

/-! ## A212201.P7868464484684895328

`A212203(A350356(n+1)+1)`
-/

namespace A212201.P7868464484684895328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212203 (A350356 (n + 1) + 1).toNat

end

end A212201.P7868464484684895328

/-!
# A212202: Where records in A212200 occur.

The programs for A212202, there is no canonical definition to state claims against.
-/

/-! ## A212202.P12304849471095128344

`A212204(A333256(n+1)+1)`
-/

namespace A212202.P12304849471095128344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212204 (A333256 (n + 1) + 1).toNat

end

end A212202.P12304849471095128344

/-! ## A212202.P7205485784323546430

`A212204(A350356(n+1)+1)`
-/

namespace A212202.P7205485784323546430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212204 (A350356 (n + 1) + 1).toNat

end

end A212202.P7205485784323546430

/-! ## A212202.P8118756211302886681

`A212204(∑[A338417(n*and(1, n))])`
-/

namespace A212202.P8118756211302886681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338417 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212204 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212202.P8118756211302886681

/-! ## A212202.P13827310871047471642

`record[and(A212203(n+1), A212204(n+1))]`
-/

namespace A212202.P13827310871047471642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A212203 (n + 1)) (A212204 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212202.P13827310871047471642

/-! ## A212202.P14681168313457195621

`record[A212204(n+1)+A212203(n+1)]-A212201(n+1)`
-/

namespace A212202.P14681168313457195621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212204 (n + 1) + A212203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A212201 (n + 1)

end

end A212202.P14681168313457195621

/-!
# A212203: Distinct numbers appearing in A212200 in their order of appearance.

The programs for A212203, there is no canonical definition to state claims against.
-/

/-! ## A212203.P12369458009904502174

`A212200(A212204(n+1))`
-/

namespace A212203.P12369458009904502174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212200 (A212204 (n + 1)).toNat

end

end A212203.P12369458009904502174

/-! ## A212203.P14021877633487375944

`A212200(∑[record[A268533(n)]])`
-/

namespace A212203.P14021877633487375944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212203.P14021877633487375944

/-!
# A212206: Irregular triangle read by rows: T(n,k) = number of "pat" permutations of [1..n] with k descents.

The programs for A212206, there is no canonical definition to state claims against.
-/

/-! ## A212206.P13643531025142886470

`and(A219347(A000079(n)), A239829(n+1))`
-/

namespace A212206.P13643531025142886470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A219347 (A000079 n).toNat) (A239829 (n + 1))

end

end A212206.P13643531025142886470

/-! ## A212206.P8292138928225595883

`A109826(A356319(n+1))%A007318(2*(n+2))`
-/

namespace A212206.P8292138928225595883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109826 (A356319 (n + 1)).toNat) (A007318 (2 * (n + 2)))

end

end A212206.P8292138928225595883

/-! ## A212206.P6703927940821335311

`and(A105223(A028491(n+1)), A165754(n))`
-/

namespace A212206.P6703927940821335311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105223 (A028491 (n + 1)).toNat) (A165754 n)

end

end A212206.P6703927940821335311

/-!
# A212207: Triangle read by rows: coefficients of polynomials p_{n,n-1}(x) arising in enumeration of two-line arrays.

The programs for A212207, there is no canonical definition to state claims against.
-/

/-! ## A212207.P16500627845894707112

`A119865(A061579(n)%A019539(n))`
-/

namespace A212207.P16500627845894707112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119865 (Int.tmod (A061579 n) (A019539 n)).toNat

end

end A212207.P16500627845894707112

/-! ## A212207.P1509901823479193776

`A119865(A061579(n))%A220507(n)`
-/

namespace A212207.P1509901823479193776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119865 (A061579 n).toNat) (A220507 n)

end

end A212207.P1509901823479193776

/-! ## A212207.P12229954847849751671

`A119865(A061579(n))+A000007(A019527(n+1))`
-/

namespace A212207.P12229954847849751671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119865 (A061579 n).toNat + A000007 (A019527 (n + 1)).toNat

end

end A212207.P12229954847849751671

/-! ## A212207.P3189026265928905637

`gcd(A119865(A061579(n)), A265376(n+1))`
-/

namespace A212207.P3189026265928905637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119865 (A061579 n).toNat) (A265376 (n + 1))

end

end A212207.P3189026265928905637

/-! ## A212207.P10044746504668118862

`A119865(A061579(n))+A000007(A119865(n)²)`
-/

namespace A212207.P10044746504668118862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119865 (A061579 n).toNat + A000007 (A119865 n ^ 2).toNat

end

end A212207.P10044746504668118862

/-!
# A212209: Square array A(n,k), n>=1, k>=1, read by antidiagonals: A(n,k) is the number of n-colorings of the square diagonal grid graph DG_(k,k).

The programs for A212209, there is no canonical definition to state claims against.
-/

/-! ## A212209.P18276037861591646227

`C(A249026(n), A167572(n+1))`
-/

namespace A212209.P18276037861591646227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A249026 n).toNat (A167572 (n + 1)).toNat

end

end A212209.P18276037861591646227

/-! ## A212209.P16657138029257341843

`C(A249026(n), A004273(A027465(n)))`
-/

namespace A212209.P16657138029257341843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A249026 n).toNat (A004273 (A027465 n).toNat).toNat

end

end A212209.P16657138029257341843

/-! ## A212209.P8374886013932843605

`A071028(A068932(n))*A182797(n+1)`
-/

namespace A212209.P8374886013932843605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (A068932 n).toNat * A182797 (n + 1)

end

end A212209.P8374886013932843605

/-! ## A212209.P2069728423943959289

`A124757(A124752(n)*A202931(n+1))`
-/

namespace A212209.P2069728423943959289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A124752 n * A202931 (n + 1)).toNat

end

end A212209.P2069728423943959289

/-! ## A212209.P10248020359850152758

`A124757(A202931(n+1)^A124752(n))`
-/

namespace A212209.P10248020359850152758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (SequenceMachineLib.roundAway ((A202931 (n + 1) : ℚ) ^ (A124752 n : ℤ))).toNat

end

end A212209.P10248020359850152758

/-!
# A212210: Triangle read by rows: T(n,k) = pi(n) + pi(k) - pi(n+k), n >= 1, 1 <= k <= n, where pi() = A000720().

The programs for A212210, there is no canonical definition to state claims against.
-/

/-! ## A212210.P12173652116922336831

`-A047886(∑[A035214(n)])`
-/

namespace A212210.P12173652116922336831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A047886 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212210.P12173652116922336831

/-! ## A212210.P17362408732719610999

`-A047886(comp[A000217(n)])`
-/

namespace A212210.P17362408732719610999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A047886 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A212210.P17362408732719610999

/-! ## A212210.P12654015888321087122

`-A047886(A014132(n+1))`
-/

namespace A212210.P12654015888321087122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A047886 (A014132 (n + 1)).toNat

end

end A212210.P12654015888321087122

/-! ## A212210.P17499692271993809222

`A000007(n+1)-A047886(∑[A035214(n)])`
-/

namespace A212210.P17499692271993809222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A047886 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212210.P17499692271993809222

/-! ## A212210.P9266617408882867138

`A000007(n+1)-A047886(A014132(n+1))`
-/

namespace A212210.P9266617408882867138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A047886 (A014132 (n + 1)).toNat

end

end A212210.P9266617408882867138

/-! ## A212210.P18095535610960490633

`A000038(n)%2-A047886(A014132(n+1))`
-/

namespace A212210.P18095535610960490633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000038 n) 2 - A047886 (A014132 (n + 1)).toNat

end

end A212210.P18095535610960490633

/-! ## A212210.P12635139793752745667

`A008683(A007918(n))*A047886(A014132(n+1))`
-/

namespace A212210.P12635139793752745667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat * A047886 (A014132 (n + 1)).toNat

end

end A212210.P12635139793752745667

/-! ## A212210.P12120398108703759841

`A008683(A020483(n))*A047886(A014132(n+1))`
-/

namespace A212210.P12120398108703759841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat * A047886 (A014132 (n + 1)).toNat

end

end A212210.P12120398108703759841

/-! ## A212210.P2955933939805849000

`A212212(A245300(n)+1)`
-/

namespace A212210.P2955933939805849000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212212 (A245300 n + 1).toNat

end

end A212210.P2955933939805849000

/-! ## A212210.P1427684994402128042

`A008683(A073609(n))*A047886(A014132(n+1))`
-/

namespace A212210.P1427684994402128042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A073609 n).toNat * A047886 (A014132 (n + 1)).toNat

end

end A212210.P1427684994402128042

/-!
# A212211: Triangle read by rows: T(n,k) = pi(n) + pi(k) - pi(n+k), n >= 2, 2 <= k <= n, where pi() = A000720().

The programs for A212211, there is no canonical definition to state claims against.
-/

/-! ## A212211.P16493591112079206609

`A212210(∑[char[∑[n]]+1]+1)`
-/

namespace A212211.P16493591112079206609
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212210 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212211.P16493591112079206609

/-! ## A212211.P14750575503881394848

`A212213(A245300(n)+2)`
-/

namespace A212211.P14750575503881394848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212213 (A245300 n + 2).toNat

end

end A212211.P14750575503881394848

/-! ## A212211.P8346936316574594199

`-A047886(lt[2, A181842(n+1)])`
-/

namespace A212211.P8346936316574594199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A047886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A212211.P8346936316574594199

/-! ## A212211.P8827958083560609928

`abs(A047886(lt[2, A212163(n+1)]))`
-/

namespace A212211.P8827958083560609928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)|

end

end A212211.P8827958083560609928

/-! ## A212211.P2728500078696021992

`A280193(2*n+1)+1-A047886(lt[2, A212163(n+1)])`
-/

namespace A212211.P2728500078696021992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + 1 - A047886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A212211.P2728500078696021992

/-!
# A212212: Array read by antidiagonals: pi(n) + pi(k) - pi(n+k), where pi() = A000720.

The programs for A212212, there is no canonical definition to state claims against.
-/

/-! ## A212212.P16808263639890125377

`-A047885(eq[0, A145677(n)])`
-/

namespace A212212.P16808263639890125377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A047885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212212.P16808263639890125377

/-! ## A212212.P2297406790246713772

`-A047885(A014132(comp[∑[n]]))`
-/

namespace A212212.P2297406790246713772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A047885 (A014132 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A212212.P2297406790246713772

/-! ## A212212.P14422774952494992442

`A000007(n+1)-A047885(eq[0, A145677(n)])`
-/

namespace A212212.P14422774952494992442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A047885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212212.P14422774952494992442

/-! ## A212212.P10500124572065961578

`A008683(25*(n+1))-A047885(eq[0, A145677(n)])`
-/

namespace A212212.P10500124572065961578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (25 * (n + 1)) - A047885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212212.P10500124572065961578

/-! ## A212212.P12533953253880202865

`(2*A293014(n))%2-A047885(eq[0, A145677(n)])`
-/

namespace A212212.P12533953253880202865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A293014 n) 2 - A047885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212212.P12533953253880202865

/-! ## A212212.P17472780396988157866

`(2*A099486(n))%2-A047885(eq[0, A145677(n)])`
-/

namespace A212212.P17472780396988157866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A099486 n) 2 - A047885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212212.P17472780396988157866

/-! ## A212212.P14523659578973356284

`A000038((2*n)²+1)-A047885(eq[0, A145677(n)])`
-/

namespace A212212.P14523659578973356284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((2 * n) ^ 2 + 1) - A047885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212212.P14523659578973356284

/-!
# A212213: Array read by antidiagonals: pi(n) + pi(k) - pi(n+k), where pi() = A000720.

The programs for A212213, there is no canonical definition to state claims against.
-/

/-! ## A212213.P1617028344541046228

`A212212(eq[0, A158821(n)]+1)`
-/

namespace A212213.P1617028344541046228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A212213.P1617028344541046228

/-! ## A212213.P1493284572907981739

`A212212(comp[∑[n]]-n+A014132(n+1)+1)`
-/

namespace A212213.P1493284572907981739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212212 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + (A014132 (n + 1) + 1)).toNat

end

end A212213.P1493284572907981739

/-! ## A212213.P300314960310537305

`A212212(lt[A014132(n+1), A245300(n)])`
-/

namespace A212213.P300314960310537305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212212 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A212213.P300314960310537305

/-! ## A212213.P16038183607075670507

`A212212(lt[0, A212221(n+1)])`
-/

namespace A212213.P16038183607075670507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A212213.P16038183607075670507

/-! ## A212213.P18157112272256246913

`A212212(lt[1, A245397(n)])`
-/

namespace A212213.P18157112272256246913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A212213.P18157112272256246913

/-! ## A212213.P15658211534156735029

`A212212(lt[2, A212163(n+1)])`
-/

namespace A212213.P15658211534156735029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A212213.P15658211534156735029

/-!
# A212214: Number of representations of n as a sum of products of pairs of positive integers, n = Sum_{k=1..m} i_k*j_k with i_k<=j_k, i_k<=i_{k+1}, j_k<=j_{k+1}, i_k*j_k<=i_{k+1}*j_{k+1}.

The programs for A212214, there is no canonical definition to state claims against.
-/

/-! ## A212214.P7307391392140281418

`A225859(A238865(n)+char[6])`
-/

namespace A212214.P7307391392140281418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (A238865 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A212214.P7307391392140281418

/-! ## A212214.P15010193374128552491

`A225859(A316867(n)+A238865(n))`
-/

namespace A212214.P15010193374128552491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (A316867 n + A238865 n).toNat

end

end A212214.P15010193374128552491

/-! ## A212214.P17835815488970072911

`A373295(n)+A285966(A143560(n))`
-/

namespace A212214.P17835815488970072911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373295 n + A285966 (A143560 n).toNat

end

end A212214.P17835815488970072911

/-! ## A212214.P17627867222341674597

`A316867(n)+A225859(A326978(n))`
-/

namespace A212214.P17627867222341674597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n + A225859 (A326978 n).toNat

end

end A212214.P17627867222341674597

/-! ## A212214.P15744098647805329691

`A373295(n)+A225099(A134133(n+1))`
-/

namespace A212214.P15744098647805329691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373295 n + A225099 (A134133 (n + 1)).toNat

end

end A212214.P15744098647805329691

/-!
# A212215: Number of representations of n as a sum of products of pairs of positive integers >=2, n = Sum_{k=1..m} i_k*j_k with 2<=i_k<=j_k, i_k<=i_{k+1}, j_k<=j_{k+1}, i_k*j_k<=i_{k+1}*j_{k+1}.

The programs for A212215, there is no canonical definition to state claims against.
-/

/-! ## A212215.P16731422683426817655

`xor(A151755(A226874(n)), A182270(n))`
-/

namespace A212215.P16731422683426817655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A226874 n).toNat) (A182270 n)

end

end A212215.P16731422683426817655

/-! ## A212215.P17669464207081655401

`A182270(n)-A185284(A291694(n+1))`
-/

namespace A212215.P17669464207081655401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182270 n - A185284 (A291694 (n + 1)).toNat

end

end A212215.P17669464207081655401

/-! ## A212215.P2926005276865710905

`A182270(n)-A103675(A249699(n))`
-/

namespace A212215.P2926005276865710905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182270 n - A103675 (A249699 n).toNat

end

end A212215.P2926005276865710905

/-! ## A212215.P6056100227586460464

`gcd(A182270(n), A326458(A185236(n)))`
-/

namespace A212215.P6056100227586460464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182270 n) (A326458 (A185236 n).toNat)

end

end A212215.P6056100227586460464

/-!
# A212217: Number of representations of n as a sum of products of distinct pairs of positive integers >=2, n = Sum_{k=1..m} i_k*j_k with 2<=i_k<=j_k, i_k<=i_{k+1}, j_k<=j_{k+1}, i_k*j_k

The programs for A212217, there is no canonical definition to state claims against.
-/

/-! ## A212217.P146122033221426651

`A010892(A249699(n))*A211857(n)`
-/

namespace A212217.P146122033221426651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A249699 n).toNat * A211857 n

end

end A212217.P146122033221426651

/-! ## A212217.P16769082703870325003

`A211857(n)-A323162(A263406(n)!)`
-/

namespace A212217.P16769082703870325003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211857 n - A323162 (Nat.factorial (A263406 n).toNat)

end

end A212217.P16769082703870325003

/-! ## A212217.P15599976989962424593

`A211857(n)-A086080(A325015(n+1))`
-/

namespace A212217.P15599976989962424593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211857 n - A086080 (A325015 (n + 1)).toNat

end

end A212217.P15599976989962424593

/-! ## A212217.P8089248152332256762

`A010059(A261044(n+5))*A211857(n)`
-/

namespace A212217.P8089248152332256762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A261044 (n + 5)).toNat * A211857 n

end

end A212217.P8089248152332256762

/-! ## A212217.P4197891265543294496

`A211857(n)-A185284(2*n+3)`
-/

namespace A212217.P4197891265543294496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211857 n - A185284 (2 * n + 3)

end

end A212217.P4197891265543294496

/-!
# A212218: Number of representations of n as a sum of products of distinct pairs of positive integers, n = Sum_{k=1..m} i_k*j_k with i_k<=j_k, i_k

The programs for A212218, there is no canonical definition to state claims against.
-/

/-! ## A212218.P6184296780710806472

`A000194(A335525(A239962(n)))+1`
-/

namespace A212218.P6184296780710806472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A335525 (A239962 n).toNat).toNat + 1

end

end A212218.P6184296780710806472

/-!
# A212219: Number of representations of n as a sum of products of distinct pairs of positive integers >=2, n = Sum_{k=1..m} i_k*j_k with 2<=i_k<=j_k, i_k

The programs for A212219, there is no canonical definition to state claims against.
-/

/-! ## A212219.P16797044527226578939

`A029356(n)-A102683(A235017(n+1))`
-/

namespace A212219.P16797044527226578939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029356 n - A102683 (A235017 (n + 1)).toNat

end

end A212219.P16797044527226578939

/-! ## A212219.P9937442297710713786

`xor(A025865(n), A044938(A332759(n)))`
-/

namespace A212219.P9937442297710713786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025865 n) (A044938 (A332759 n).toNat)

end

end A212219.P9937442297710713786

/-! ## A212219.P16735601616547330500

`xor(A008647(n), A185284(A047236(n+1)))`
-/

namespace A212219.P16735601616547330500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008647 n) (A185284 (A047236 (n + 1)).toNat)

end

end A212219.P16735601616547330500

/-! ## A212219.P12889233433999097488

`A008647(n)-A178798(A352095(n))`
-/

namespace A212219.P12889233433999097488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 n - A178798 (A352095 n).toNat

end

end A212219.P12889233433999097488

/-! ## A212219.P10343783070034827723

`A121464(A376336(n+1))`
-/

namespace A212219.P10343783070034827723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121464 (A376336 (n + 1)).toNat

end

end A212219.P10343783070034827723

/-!
# A212221: Square array A(n,k), n>=1, k>=1, read by antidiagonals: A(n,k) is 1/(2*n) times the number of n-colorings of the complete tripartite graph K_(k,k,k).

The programs for A212221, there is no canonical definition to state claims against.
-/

/-! ## A212221.P10275144021919220386

`A001190(A136213(2*n))%A145085(n)`
-/

namespace A212221.P10275144021919220386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001190 (A136213 (2 * n)).toNat) (A145085 n)

end

end A212221.P10275144021919220386

/-! ## A212221.P9523529674538651428

`A074433(A002260(n+1))%A338911(A301531(n+1))`
-/

namespace A212221.P9523529674538651428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074433 (A002260 (n + 1)).toNat) (A338911 (A301531 (n + 1)).toNat)

end

end A212221.P9523529674538651428

/-! ## A212221.P1185015780152406252

`A000217(A000070(2*n))%A245049(n)`
-/

namespace A212221.P1185015780152406252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A000070 (2 * n)).toNat) (A245049 n)

end

end A212221.P1185015780152406252

/-! ## A212221.P14005371797645412255

`A256450(A110441(3*n+1))%A351790(n)`
-/

namespace A212221.P14005371797645412255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256450 (A110441 (3 * n + 1)).toNat) (A351790 n)

end

end A212221.P14005371797645412255

/-!
# A212226: Number of 0..2 arrays of length n+3 with sum no more than 4 in any length 4 subsequence (=50% duty cycle).

The programs for A212226, there is no canonical definition to state claims against.
-/

/-! ## A212226.P12852466049180842842

`A241964(∑[n+2])`
-/

namespace A212226.P12852466049180842842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212226.P12852466049180842842

/-! ## A212226.P3881546750941475323

`record[A241964(A101881(n)+1)]`
-/

namespace A212226.P3881546750941475323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212226.P3881546750941475323

/-! ## A212226.P11233857057559059030

`record[A241964(A000096(A126759(n)))]`
-/

namespace A212226.P11233857057559059030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212226.P11233857057559059030

/-! ## A212226.P76026607276456995

`record[A241964(A000096(A134478(n)))]`
-/

namespace A212226.P76026607276456995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212226.P76026607276456995

/-! ## A212226.P14500660838929175320

`record[A241964(A000096(A020653(n+1)))]`
-/

namespace A212226.P14500660838929175320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000096 (A020653 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212226.P14500660838929175320

/-! ## A212226.P9718426366199771306

`record[A241964(A000096(A023190(n+1)))]`
-/

namespace A212226.P9718426366199771306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000096 (A023190 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212226.P9718426366199771306

/-! ## A212226.P5746903644158325610

`record[A241964(A000096(A026233(n+1)))]`
-/

namespace A212226.P5746903644158325610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (A000096 (A026233 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212226.P5746903644158325610

/-!
# A212227: Number of 0..2 arrays of length n+5 with sum no more than 6 in any length 6 subsequence (=50% duty cycle).

The programs for A212227, there is no canonical definition to state claims against.
-/

/-! ## A212227.P14365347192745864722

`A212232(∑[n+3]+1)`
-/

namespace A212227.P14365347192745864722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212227.P14365347192745864722

/-! ## A212227.P1106984448953749351

`A242144(∑[n+2])`
-/

namespace A212227.P1106984448953749351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212227.P1106984448953749351

/-! ## A212227.P5716293240362138238

`record[A242144(abs(A201163(n)))]`
-/

namespace A212227.P5716293240362138238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212227.P5716293240362138238

/-! ## A212227.P8488741578627889985

`record[A242144(A000096(A003602(n+1)))]`
-/

namespace A212227.P8488741578627889985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212227.P8488741578627889985

/-! ## A212227.P9330152800134026377

`A242144(A000096(n+1))+A242096(2*n)`
-/

namespace A212227.P9330152800134026377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A000096 (n + 1)).toNat + A242096 (2 * n)

end

end A212227.P9330152800134026377

/-!
# A212228: Number of 0..2 arrays of length n+7 with sum no more than 8 in any length 8 subsequence (=50% duty cycle).

The programs for A212228, there is no canonical definition to state claims against.
-/

/-! ## A212228.P7127784743279933813

`A212232(A027379(n+2))`
-/

namespace A212228.P7127784743279933813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A027379 (n + 2)).toNat

end

end A212228.P7127784743279933813

/-! ## A212228.P2909804037643929518

`A212232(A155212(n)+5)`
-/

namespace A212228.P2909804037643929518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A155212 n + 5).toNat

end

end A212228.P2909804037643929518

/-! ## A212228.P13191547182102813007

`A212232(eq[3, A193592(n)])`
-/

namespace A212228.P13191547182102813007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212228.P13191547182102813007

/-! ## A212228.P15827347533337458537

`A212232(A052905(n+1)+2)`
-/

namespace A212228.P15827347533337458537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A052905 (n + 1) + 2).toNat

end

end A212228.P15827347533337458537

/-! ## A212228.P15380658530261368267

`A212232(eq[A010054(n), A221596(n+4)])`
-/

namespace A212228.P15380658530261368267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A212228.P15380658530261368267

/-!
# A212229: Number of 0..2 arrays of length n+9 with sum no more than 10 in any length 10 subsequence (=50% duty cycle).

The programs for A212229, there is no canonical definition to state claims against.
-/

/-! ## A212229.P7301981653628566234

`A212232(A046691(n+3))`
-/

namespace A212229.P7301981653628566234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A046691 (n + 3)).toNat

end

end A212229.P7301981653628566234

/-! ## A212229.P6666178790460025726

`A212232(eq[4, A193592(n)])`
-/

namespace A212229.P6666178790460025726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212229.P6666178790460025726

/-! ## A212229.P567686826517593557

`A212232(Δ[A023545(n+1)])`
-/

namespace A212229.P567686826517593557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (f1 (n + 1) - f1 n).toNat

end

end A212229.P567686826517593557

/-! ## A212229.P10157063809274879498

`A212232(∑[A020710(n)]+6)`
-/

namespace A212229.P10157063809274879498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A212229.P10157063809274879498

/-! ## A212229.P14682859350516062839

`A212232(eq[6, A185782(n+1)])`
-/

namespace A212229.P14682859350516062839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212229.P14682859350516062839

/-!
# A212230: Number of 0..2 arrays of length n+11 with sum no more than 12 in any length 12 subsequence (=50% duty cycle).

The programs for A212230, there is no canonical definition to state claims against.
-/

/-! ## A212230.P7843927807551892507

`A212232(eq[3, A219347(n)])`
-/

namespace A212230.P7843927807551892507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212230.P7843927807551892507

/-! ## A212230.P15177866901161928710

`A212232(eq[5, A193592(n)])`
-/

namespace A212230.P15177866901161928710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212230.P15177866901161928710

/-! ## A212230.P7009649164727949934

`A212232(eq[8, A185782(n+1)])`
-/

namespace A212230.P7009649164727949934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212230.P7009649164727949934

/-! ## A212230.P18282467925018734528

`A212232(Δ[Δ[A006504(n+1)]])`
-/

namespace A212230.P18282467925018734528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (f1 (n + 1) - f1 n).toNat

end

end A212230.P18282467925018734528

/-! ## A212230.P6665729579093098908

`A212232(Δ[A023545(n+2)]-1)`
-/

namespace A212230.P6665729579093098908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (f1 (n + 1) - f1 n - 1).toNat

end

end A212230.P6665729579093098908

/-!
# A212231: Number of 0..2 arrays of length n+13 with sum no more than 14 in any length 14 subsequence (=50% duty cycle).

The programs for A212231, there is no canonical definition to state claims against.
-/

/-! ## A212231.P3420859022394113972

`A212232(A055999(n+4))`
-/

namespace A212231.P3420859022394113972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A055999 (n + 4)).toNat

end

end A212231.P3420859022394113972

/-! ## A212231.P215475057708409932

`A212232(eq[4, A219347(n)])`
-/

namespace A212231.P215475057708409932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212231.P215475057708409932

/-! ## A212231.P10048292524828800459

`A212232(eq[6, A193592(n)])`
-/

namespace A212231.P10048292524828800459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212231.P10048292524828800459

/-! ## A212231.P6726741297748137511

`A212232(eq[10, A185782(n+1)])`
-/

namespace A212231.P6726741297748137511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212231.P6726741297748137511

/-! ## A212231.P2079222776739384190

`A212232(eq[7, A200370(n+1)])`
-/

namespace A212231.P2079222776739384190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212231.P2079222776739384190

/-!
# A212233: Number of 0..2 arrays of length 2*n with sum no more than 2*n in any length 2n subsequence (=50% duty cycle).

The programs for A212233, the canonical program `A212233.P15822774752107181943` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212233 has offset 1).

The definition of A212233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212233.P15822774752107181943

`A027914(2*(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A212233

/-- `A027914(2*(n+1))` -/
def P15822774752107181943.Spec : Prop :=
  ∀ n, P15822774752107181943.a n = A212233 (n + 1)

theorem P15822774752107181943.correct : P15822774752107181943.Spec := by
  intro n
  simp only [A212233, Nat.add_sub_cancel]

end A212233

/-! ## A212233.P17577844871697234826

`A055217(2*n+1)+A002426(2*(n+1))`
-/

namespace A212233.P17577844871697234826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 (2 * n + 1) + A002426 (2 * (n + 1))

end

end A212233.P17577844871697234826

namespace A212233

/-- `A055217(2*n+1)+A002426(2*(n+1))` -/
def P17577844871697234826.Spec : Prop :=
  ∀ n, P17577844871697234826.a n = A212233 (n + 1)

end A212233

/-! ## A212233.P4445982492233545387

`A108863(2*(n+1))+A005717(2*n+3)`
-/

namespace A212233.P4445982492233545387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 (2 * (n + 1)) + A005717 (2 * n + 3)

end

end A212233.P4445982492233545387

namespace A212233

/-- `A108863(2*(n+1))+A005717(2*n+3)` -/
def P4445982492233545387.Spec : Prop :=
  ∀ n, P4445982492233545387.a n = A212233 (n + 1)

theorem P4445982492233545387.correct : P4445982492233545387.Spec := by
  intro n
  simp only [A212233, Nat.add_sub_cancel, A212233.P4445982492233545387.a, A212233.P15822774752107181943.a, A005717, A005717.P3550266723113261491.a, A027914, A027914.P5443014063113288149.a, A108863, A108863.P15641938226968541285.a, A001006, A001006.P11199602840237397285.a, A002426, A002426.P18316219981098248731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212233

/-! ## A212233.P14061203714330747544

`A000244(n+1)²-A055217(2*n+1)`
-/

namespace A212233.P14061203714330747544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) ^ 2 - A055217 (2 * n + 1)

end

end A212233.P14061203714330747544

namespace A212233

/-- `A000244(n+1)²-A055217(2*n+1)` -/
def P14061203714330747544.Spec : Prop :=
  ∀ n, P14061203714330747544.a n = A212233 (n + 1)

end A212233

/-! ## A212233.P15610402737499589120

`A000244(2*(n+1))-A055217(2*n+1)`
-/

namespace A212233.P15610402737499589120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * (n + 1)) - A055217 (2 * n + 1)

end

end A212233.P15610402737499589120

namespace A212233

/-- `A000244(2*(n+1))-A055217(2*n+1)` -/
def P15610402737499589120.Spec : Prop :=
  ∀ n, P15610402737499589120.a n = A212233 (n + 1)

end A212233

/-! ## A212233.P15977241963549005056

`A027915(2*(n+1))-A027915(2*n+1)`
-/

namespace A212233.P15977241963549005056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027915 (2 * (n + 1)) - A027915 (2 * n + 1)

end

end A212233.P15977241963549005056

namespace A212233

/-- `A027915(2*(n+1))-A027915(2*n+1)` -/
def P15977241963549005056.Spec : Prop :=
  ∀ n, P15977241963549005056.a n = A212233 (n + 1)

end A212233

/-!
# A212234: Number of 0..2 arrays of length 1+2*n with sum no more than 2*n in any length 2n subsequence (=50% duty cycle).

The programs for A212234, there is no canonical definition to state claims against.
-/

/-! ## A212234.P8707853084496515676

`A212232(∑[n+1]+2)`
-/

namespace A212234.P8707853084496515676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A212234.P8707853084496515676

/-! ## A212234.P9380242494097013767

`record[A212232(A080036(n+1))]`
-/

namespace A212234.P9380242494097013767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A080036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212234.P9380242494097013767

/-! ## A212234.P13106921093216786607

`record[A212232(A002024(n+1)+n+2)]`
-/

namespace A212234.P13106921093216786607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A002024 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212234.P13106921093216786607

/-! ## A212234.P14528823098623032392

`record[A212232(n+3)%A212232(n+2)]`
-/

namespace A212234.P14528823098623032392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212232 (n + 3)) (A212232 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212234.P14528823098623032392

/-! ## A212234.P1030781767729483702

`record[A033999(A025581(n))*A212232(n+3)]`
-/

namespace A212234.P1030781767729483702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A212232 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212234.P1030781767729483702

/-!
# A212235: Number of 0..2 arrays of length 2+2*n with sum no more than 2*n in any length 2n subsequence (=50% duty cycle).

The programs for A212235, there is no canonical definition to state claims against.
-/

/-! ## A212235.P11950124078461167144

`A212232(∑[n+2]+4)`
-/

namespace A212235.P11950124078461167144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A212235.P11950124078461167144

/-! ## A212235.P14785454389928551976

`record[A212232(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A212235.P14785454389928551976
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212235.P14785454389928551976

/-! ## A212235.P10149140156186897584

`A212232(A167614(n+1))+A025444(n)`
-/

namespace A212235.P10149140156186897584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A167614 (n + 1)).toNat + A025444 n

end

end A212235.P10149140156186897584

/-! ## A212235.P2954637771151489018

`lcm(A143431(n), A212232(A167614(n+1)))`
-/

namespace A212235.P2954637771151489018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143431 n) (A212232 (A167614 (n + 1)).toNat)

end

end A212235.P2954637771151489018

/-! ## A212235.P3573502466082813260

`or(A083929(n), A212232(A167614(n+1)))`
-/

namespace A212235.P3573502466082813260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083929 n) (A212232 (A167614 (n + 1)).toNat)

end

end A212235.P3573502466082813260

/-!
# A212236: Number of 0..2 arrays of length 3+2*n with sum no more than 2*n in any length 2n subsequence (=50% duty cycle).

The programs for A212236, there is no canonical definition to state claims against.
-/

/-! ## A212236.P6551803964981088867

`A212232(A052905(n)+9)`
-/

namespace A212236.P6551803964981088867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A052905 n + 9).toNat

end

end A212236.P6551803964981088867

/-! ## A212236.P4332959950260739765

`A212232(A055999(n)+10)`
-/

namespace A212236.P4332959950260739765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A055999 n + 10).toNat

end

end A212236.P4332959950260739765

/-! ## A212236.P17704380366673300262

`A212232(A167614(n+2)+1)`
-/

namespace A212236.P17704380366673300262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A167614 (n + 2) + 1).toNat

end

end A212236.P17704380366673300262

/-! ## A212236.P5402249384735577473

`A212232(A166136(n+2)-2)`
-/

namespace A212236.P5402249384735577473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A166136 (n + 2) - 2).toNat

end

end A212236.P5402249384735577473

/-! ## A212236.P11925315460757226224

`A212232(A000217(n+3)+4)`
-/

namespace A212236.P11925315460757226224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A000217 (n + 3) + 4).toNat

end

end A212236.P11925315460757226224

/-!
# A212237: Number of 0..2 arrays of length 4+2*n with sum no more than 2*n in any length 2n subsequence (=50% duty cycle).

The programs for A212237, there is no canonical definition to state claims against.
-/

/-! ## A212237.P8430396128031895113

`A212232(A155212(n)+13)`
-/

namespace A212237.P8430396128031895113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A155212 n + 13).toNat

end

end A212237.P8430396128031895113

/-! ## A212237.P4191312667006345329

`A212232(A056000(n)+15)`
-/

namespace A212237.P4191312667006345329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A056000 n + 15).toNat

end

end A212237.P4191312667006345329

/-! ## A212237.P9101540580727638187

`A212232(A000124(n+4)+4)`
-/

namespace A212237.P9101540580727638187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A000124 (n + 4) + 4).toNat

end

end A212237.P9101540580727638187

/-! ## A212237.P10194275224585094635

`A212232(A000217(n+4)+5)`
-/

namespace A212237.P10194275224585094635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A000217 (n + 4) + 5).toNat

end

end A212237.P10194275224585094635

/-! ## A212237.P13300552640890147692

`A212232(A027379(n+2)+8)`
-/

namespace A212237.P13300552640890147692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A027379 (n + 2) + 8).toNat

end

end A212237.P13300552640890147692

/-!
# A212238: Number of 0..2 arrays of length 5+2*n with sum no more than 2*n in any length 2n subsequence (=50% duty cycle).

The programs for A212238, there is no canonical definition to state claims against.
-/

/-! ## A212238.P7473628278475524778

`A212232(A166136(n+4))`
-/

namespace A212238.P7473628278475524778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A166136 (n + 4)).toNat

end

end A212238.P7473628278475524778

/-! ## A212238.P11211365108259393035

`A212232(A056115(n)+21)`
-/

namespace A212238.P11211365108259393035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A056115 n + 21).toNat

end

end A212238.P11211365108259393035

/-! ## A212238.P2482009462108493188

`A212232(A167499(n+4)+1)`
-/

namespace A212238.P2482009462108493188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A167499 (n + 4) + 1).toNat

end

end A212238.P2482009462108493188

/-! ## A212238.P17320095590350541178

`A212232(A167614(n+4)+3)`
-/

namespace A212238.P17320095590350541178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A167614 (n + 4) + 3).toNat

end

end A212238.P17320095590350541178

/-! ## A212238.P687247644974477159

`A212232(eq[7, A131818(n+1)])`
-/

namespace A212238.P687247644974477159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212238.P687247644974477159

/-!
# A212239: Number of 0..2 arrays of length 6+2*n with sum no more than 2*n in any length 2n subsequence (=50% duty cycle).

The programs for A212239, there is no canonical definition to state claims against.
-/

/-! ## A212239.P13944755386423590362

`A212232(A056119(n)+28)`
-/

namespace A212239.P13944755386423590362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A056119 n + 28).toNat

end

end A212239.P13944755386423590362

/-! ## A212239.P14817128109887989928

`A212232(eq[11, A066657(n)])`
-/

namespace A212239.P14817128109887989928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212239.P14817128109887989928

/-! ## A212239.P10695862316136366776

`A212232(A167499(n+5)+2)`
-/

namespace A212239.P10695862316136366776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A167499 (n + 5) + 2).toNat

end

end A212239.P10695862316136366776

/-! ## A212239.P1737665931568027918

`A212232(A238531(n+7)+5)`
-/

namespace A212239.P1737665931568027918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (A238531 (n + 7) + 5).toNat

end

end A212239.P1737665931568027918

/-! ## A212239.P5235956301570088283

`A212232(eq[8, A131818(n+1)])`
-/

namespace A212239.P5235956301570088283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212239.P5235956301570088283

/-!
# A212240: Number of 2 X 2 matrices M with all terms in {1,...,n} and permanent(M) >= n.

The programs for A212240, there is no canonical definition to state claims against.
-/

/-! ## A212240.P2182851285313816973

`n^4-A212151(n)`
-/

namespace A212240.P2182851285313816973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212151 n

end

end A212240.P2182851285313816973

/-! ## A212240.P17520575135422491793

`abs(A000583(n)-A212151(n))`
-/

namespace A212240.P17520575135422491793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212151 n|

end

end A212240.P17520575135422491793

/-! ## A212240.P6196104157873556699

`A212241(n)+Δ[A212151(n)]`
-/

namespace A212240.P6196104157873556699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212241 n + (f1 (n + 1) - f1 n)

end

end A212240.P6196104157873556699

/-! ## A212240.P14085140238334010155

`A212151(n+1)+A212241(n)-A212151(n)`
-/

namespace A212240.P14085140238334010155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 1) + (A212241 n - A212151 n)

end

end A212240.P14085140238334010155

/-! ## A212240.P2078739225439702924

`A000583(n)-A212151(n)/A014963(4*n+2)`
-/

namespace A212240.P2078739225439702924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n : ℚ) - (A212151 n : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A212240.P2078739225439702924

/-! ## A212240.P15012964565301759999

`n²²-∑[A320019(A238531(n))]`
-/

namespace A212240.P15012964565301759999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212240.P15012964565301759999

/-! ## A212240.P15729708660536738247

`1-(A024002(n)+∑[A320019(A238531(n))])`
-/

namespace A212240.P15729708660536738247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A024002 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212240.P15729708660536738247

/-!
# A212241: Number of 2 X 2 matrices M with terms in {1,...,n} such that permanent(M) > n.

The programs for A212241, there is no canonical definition to state claims against.
-/

/-! ## A212241.P461542903488047100

`n^4-A212151(n+1)`
-/

namespace A212241.P461542903488047100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212151 (n + 1)

end

end A212241.P461542903488047100

/-! ## A212241.P4843880234227557708

`Δ[A267691(n)-∑[A212151(n)]]`
-/

namespace A212241.P4843880234227557708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267691 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212241.P4843880234227557708

/-! ## A212241.P11515736122905720135

`abs(A212151(n+1)-A000583(n))`
-/

namespace A212241.P11515736122905720135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212151 (n + 1) - A000583 n|

end

end A212241.P11515736122905720135

/-! ## A212241.P16737414633505332630

`A212240(n)-Δ[A212151(n)]`
-/

namespace A212241.P16737414633505332630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212240 n - (f1 (n + 1) - f1 n)

end

end A212241.P16737414633505332630

/-! ## A212241.P16482106434580442789

`A212151(n)+A212240(n)-A212151(n+1)`
-/

namespace A212241.P16482106434580442789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 n + (A212240 n - A212151 (n + 1))

end

end A212241.P16482106434580442789

/-!
# A212242: Number of (u,v,w,x,y,z) with all terms in {0,1,...,n} and 5u=v+w+x+y+z.

The programs for A212242, there is no canonical definition to state claims against.
-/

/-! ## A212242.P959978074772013742

`A035930(A000917(n))+1+n`
-/

namespace A212242.P959978074772013742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A000917 n).toNat + 1 + (n : ℤ)

end

end A212242.P959978074772013742

/-!
# A212246: Number of (w,x,y,z) with all terms in {1,...,n} and w <= x > y <= z.

The programs for A212246, the canonical program `A212246.P5091766707187626435` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212246 has offset 0).

The definition of A212246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212246.P3413471546453298561

`(n-1)*n*(n+1)*(5*n+6)/24`
-/

namespace A212246.P3413471546453298561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (n : ℤ) * (n + 1 : ℤ) * (5 * n + 6 : ℤ) : ℚ) / 24

end

end A212246.P3413471546453298561

namespace A212246

/-- `(n-1)*n*(n+1)*(5*n+6)/24` -/
def P3413471546453298561.Spec : Prop :=
  ∀ n, P3413471546453298561.a n = (A212246 n : ℚ)

theorem P3413471546453298561.correct : P3413471546453298561.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A212246, Nat.add_sub_cancel, A212246.P3413471546453298561.a, A212246.P5091766707187626435.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A212246, Nat.add_sub_cancel, A212246.P3413471546453298561.a, A212246.P5091766707187626435.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212246

/-! ## A212246.P5091766707187626435

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=21, a(4)=65`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212246

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5091766707187626435.Spec : Prop :=
  ∀ n, P5091766707187626435.a n = A212246 n

theorem P5091766707187626435.correct : P5091766707187626435.Spec := by
  intro n
  simp only [A212246]

end A212246

/-! ## A212246.P11231062760333290477

`∑[n]²-C(n+3, 4)`
-/

namespace A212246.P11231062760333290477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (n + 3) 4 : ℤ)

end

end A212246.P11231062760333290477

namespace A212246

/-- `∑[n]²-C(n+3, 4)` -/
def P11231062760333290477.Spec : Prop :=
  ∀ n, P11231062760333290477.a n = A212246 n

end A212246

/-! ## A212246.P10779836461405941314

`Δ[(n+1)*C(n+1, 4)]`
-/

namespace A212246.P10779836461405941314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A212246.P10779836461405941314

namespace A212246

/-- `Δ[(n+1)*C(n+1, 4)]` -/
def P10779836461405941314.Spec : Prop :=
  ∀ n, P10779836461405941314.a n = A212246 n

end A212246

/-! ## A212246.P11055513504901738921

`∑[n^3-C(n+2, 3)]`
-/

namespace A212246.P11055513504901738921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose (n + 2) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212246.P11055513504901738921

namespace A212246

/-- `∑[n^3-C(n+2, 3)]` -/
def P11055513504901738921.Spec : Prop :=
  ∀ n, P11055513504901738921.a n = A212246 n

end A212246

/-! ## A212246.P591369241549731452

`∑[∑[∑[a(n-1)+5]]]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A212246.P591369241549731452
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212246.P591369241549731452

namespace A212246

/-- `∑[∑[∑[a(n-1)+5]]]` -/
def P591369241549731452.Spec : Prop :=
  ∀ n, (P591369241549731452.a n : ℤ) = A212246 n

end A212246

/-! ## A212246.P1521830655701479217

`∑[A203552(n)-n]`
-/

namespace A212246.P1521830655701479217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212246.P1521830655701479217

namespace A212246

/-- `∑[A203552(n)-n]` -/
def P1521830655701479217.Spec : Prop :=
  ∀ n, P1521830655701479217.a n = A212246 n

end A212246

/-! ## A212246.P2069155891541662932

`∑[A002413(n)-n²]`
-/

namespace A212246.P2069155891541662932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212246.P2069155891541662932

namespace A212246

/-- `∑[A002413(n)-n²]` -/
def P2069155891541662932.Spec : Prop :=
  ∀ n, P2069155891541662932.a n = A212246 n

end A212246

/-! ## A212246.P14093656157243193374

`A002418(n)-∑[n²]`
-/

namespace A212246.P14093656157243193374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212246.P14093656157243193374

namespace A212246

/-- `A002418(n)-∑[n²]` -/
def P14093656157243193374.Spec : Prop :=
  ∀ n, P14093656157243193374.a n = A212246 n

end A212246

/-! ## A212246.P1700805191599961433

`∑[n]²-∑[A000292(n)]`
-/

namespace A212246.P1700805191599961433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A212246.P1700805191599961433

namespace A212246

/-- `∑[n]²-∑[A000292(n)]` -/
def P1700805191599961433.Spec : Prop :=
  ∀ n, P1700805191599961433.a n = A212246 n

end A212246

/-! ## A212246.P16687221899695441080

`A000537(n)-∑[∑[∑[n]]]`
-/

namespace A212246.P16687221899695441080
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212246.P16687221899695441080

namespace A212246

/-- `A000537(n)-∑[∑[∑[n]]]` -/
def P16687221899695441080.Spec : Prop :=
  ∀ n, P16687221899695441080.a n = A212246 n

end A212246

/-! ## A212246.P11299653325469116344

`A000217(n)²-∑[∑[∑[n]]]`
-/

namespace A212246.P11299653325469116344
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212246.P11299653325469116344

namespace A212246

/-- `A000217(n)²-∑[∑[∑[n]]]` -/
def P11299653325469116344.Spec : Prop :=
  ∀ n, P11299653325469116344.a n = A212246 n

end A212246

/-! ## A212246.P12053497204118499115

`A006322(n+1)-(n+1)^3`
-/

namespace A212246.P12053497204118499115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A212246.P12053497204118499115

namespace A212246

/-- `A006322(n+1)-(n+1)^3` -/
def P12053497204118499115.Spec : Prop :=
  ∀ n, P12053497204118499115.a n = A212246 n

end A212246

/-! ## A212246.P8556281532887046354

`A006528(n)-A014626(n)`
-/

namespace A212246.P8556281532887046354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n - A014626 n

end

end A212246.P8556281532887046354

namespace A212246

/-- `A006528(n)-A014626(n)` -/
def P8556281532887046354.Spec : Prop :=
  ∀ n, P8556281532887046354.a n = A212246 n

end A212246

/-! ## A212246.P9946130037322756016

`A112742(n)-A050534(n)`
-/

namespace A212246.P9946130037322756016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n - A050534 n

end

end A212246.P9946130037322756016

namespace A212246

/-- `A112742(n)-A050534(n)` -/
def P9946130037322756016.Spec : Prop :=
  ∀ n, P9946130037322756016.a n = A212246 n

end A212246

/-! ## A212246.P9415006223925083641

`A176060(n)-A005582(n)`
-/

namespace A212246.P9415006223925083641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 n - A005582 n

end

end A212246.P9415006223925083641

namespace A212246

/-- `A176060(n)-A005582(n)` -/
def P9415006223925083641.Spec : Prop :=
  ∀ n, P9415006223925083641.a n = A212246 n

end A212246

/-! ## A212246.P4358579275242747455

`A179095(n)-A006528(n)`
-/

namespace A212246.P4358579275242747455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179095 n - A006528 n

end

end A212246.P4358579275242747455

namespace A212246

/-- `A179095(n)-A006528(n)` -/
def P4358579275242747455.Spec : Prop :=
  ∀ n, P4358579275242747455.a n = A212246 n

end A212246

/-! ## A212246.P5724366162516867923

`A264853(n)-A002418(n)`
-/

namespace A212246.P5724366162516867923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264853 n - A002418 n

end

end A212246.P5724366162516867923

namespace A212246

/-- `A264853(n)-A002418(n)` -/
def P5724366162516867923.Spec : Prop :=
  ∀ n, P5724366162516867923.a n = A212246 n

end A212246

/-! ## A212246.P6566038505805957316

`A154323(n)-A145126(n)`
-/

namespace A212246.P6566038505805957316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n - A145126 n

end

end A212246.P6566038505805957316

namespace A212246

/-- `A154323(n)-A145126(n)` -/
def P6566038505805957316.Spec : Prop :=
  ∀ n, P6566038505805957316.a n = A212246 n

end A212246

/-! ## A212246.P5759286205324199204

`A014820(n)-A290312(n)`
-/

namespace A212246.P5759286205324199204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n - A290312 n

end

end A212246.P5759286205324199204

namespace A212246

/-- `A014820(n)-A290312(n)` -/
def P5759286205324199204.Spec : Prop :=
  ∀ n, P5759286205324199204.a n = A212246 n

end A212246

/-!
# A212247: Number of (w,x,y,z) with all terms in {1,...,n} and 3w=x+y+z+n.

The programs for A212247, the canonical program `A212247.P15703870077172808138` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212247 has offset 0).

The definition of A212247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212247.P15703870077172808138

`(2*n*(10*n²+3*n+2)-9*(-1)^n+9)/48`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212247

/-- `(2*n*(10*n²+3*n+2)-9*(-1)^n+9)/48` -/
def P15703870077172808138.Spec : Prop :=
  ∀ n, P15703870077172808138.a n = (A212247 n : ℚ)

end A212247

/-! ## A212247.P13648752741054375327

`∑[∑[a(n-2)+5]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A212247.P13648752741054375327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212247.P13648752741054375327

namespace A212247

/-- `∑[∑[a(n-2)+5]]` -/
def P13648752741054375327.Spec : Prop :=
  ∀ n, (P13648752741054375327.a n : ℤ) = A212247 n

end A212247

/-! ## A212247.P18041566673627442826

`∑[∑[∑[5-a(n-1)]]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A212247.P18041566673627442826
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f3 =>
  5 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212247.P18041566673627442826

namespace A212247

/-- `∑[∑[∑[5-a(n-1)]]]` -/
def P18041566673627442826.Spec : Prop :=
  ∀ n, P18041566673627442826.a n = A212247 n

end A212247

/-! ## A212247.P11257860322168970253

`A391995(n)+∑[n²]`
-/

namespace A212247.P11257860322168970253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391995 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212247.P11257860322168970253

namespace A212247

/-- `A391995(n)+∑[n²]` -/
def P11257860322168970253.Spec : Prop :=
  ∀ n, P11257860322168970253.a n = A212247 n

end A212247

/-! ## A212247.P4710626559864995210

`ceil((A212692(n)+n)/2)`
-/

namespace A212247.P4710626559864995210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212692 n + (n : ℤ) : ℚ) / 2⌉

end

end A212247.P4710626559864995210

namespace A212247

/-- `ceil((A212692(n)+n)/2)` -/
def P4710626559864995210.Spec : Prop :=
  ∀ n, P4710626559864995210.a n = A212247 n

end A212247

/-! ## A212247.P13928544791844879227

`A175287(n)+∑[n²-n]`
-/

namespace A212247.P13928544791844879227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212247.P13928544791844879227

namespace A212247

/-- `A175287(n)+∑[n²-n]` -/
def P13928544791844879227.Spec : Prop :=
  ∀ n, P13928544791844879227.a n = A212247 n

end A212247

/-! ## A212247.P4858444638847084255

`A212983(n)-∑[or(1, 3*n)]`
-/

namespace A212247.P4858444638847084255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212983 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212247.P4858444638847084255

namespace A212247

/-- `A212983(n)-∑[or(1, 3*n)]` -/
def P4858444638847084255.Spec : Prop :=
  ∀ n, P4858444638847084255.a n = A212247 n

end A212247

/-! ## A212247.P15977254581308200627

`∑[∑[comp[3*n]+n]]-A212959(n)`
-/

namespace A212247.P15977254581308200627
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A212959 n

end

end A212247.P15977254581308200627

namespace A212247

/-- `∑[∑[comp[3*n]+n]]-A212959(n)` -/
def P15977254581308200627.Spec : Prop :=
  ∀ n, P15977254581308200627.a n = A212247 n

end A212247

/-! ## A212247.P3229687009873946097

`∑[floor((1-n)²/2)]+∑[A077043(n)]`
-/

namespace A212247.P3229687009873946097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A212247.P3229687009873946097

namespace A212247

/-- `∑[floor((1-n)²/2)]+∑[A077043(n)]` -/
def P3229687009873946097.Spec : Prop :=
  ∀ n, P3229687009873946097.a n = A212247 n

end A212247

/-! ## A212247.P8262167554352993979

`A212068(n)+A004652(n)`
-/

namespace A212247.P8262167554352993979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212068 n + A004652 n

end

end A212247.P8262167554352993979

namespace A212247

/-- `A212068(n)+A004652(n)` -/
def P8262167554352993979.Spec : Prop :=
  ∀ n, P8262167554352993979.a n = A212247 n

end A212247

/-! ## A212247.P14530277561686172939

`A212964(n)+A019298(n)`
-/

namespace A212247.P14530277561686172939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 n + A019298 n

end

end A212247.P14530277561686172939

namespace A212247

/-- `A212964(n)+A019298(n)` -/
def P14530277561686172939.Spec : Prop :=
  ∀ n, P14530277561686172939.a n = A212247 n

end A212247

/-! ## A212247.P10185985908972976144

`A391994(n)+A002717(n)`
-/

namespace A212247.P10185985908972976144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391994 n + A002717 n

end

end A212247.P10185985908972976144

namespace A212247

/-- `A391994(n)+A002717(n)` -/
def P10185985908972976144.Spec : Prop :=
  ∀ n, P10185985908972976144.a n = A212247 n

end A212247

/-! ## A212247.P183755138766193713

`A004068(n)-A212068(n)`
-/

namespace A212247.P183755138766193713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 n - A212068 n

end

end A212247.P183755138766193713

namespace A212247

/-- `A004068(n)-A212068(n)` -/
def P183755138766193713.Spec : Prop :=
  ∀ n, P183755138766193713.a n = A212247 n

end A212247

/-! ## A212247.P10595329208104555207

`A212981(n)-A006578(n)`
-/

namespace A212247.P10595329208104555207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212981 n - A006578 n

end

end A212247.P10595329208104555207

namespace A212247

/-- `A212981(n)-A006578(n)` -/
def P10595329208104555207.Spec : Prop :=
  ∀ n, P10595329208104555207.a n = A212247 n

end A212247

/-! ## A212247.P18249513489750007057

`A212982(n)-A249547(n)`
-/

namespace A212247.P18249513489750007057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212982 n - A249547 n

end

end A212247.P18249513489750007057

namespace A212247

/-- `A212982(n)-A249547(n)` -/
def P18249513489750007057.Spec : Prop :=
  ∀ n, P18249513489750007057.a n = A212247 n

end A212247

/-! ## A212247.P9726453723664131444

`A212980(n+1)-A007590(n)`
-/

namespace A212247.P9726453723664131444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212980 (n + 1) - A007590 n

end

end A212247.P9726453723664131444

namespace A212247

/-- `A212980(n+1)-A007590(n)` -/
def P9726453723664131444.Spec : Prop :=
  ∀ n, P9726453723664131444.a n = A212247 n

end A212247

/-! ## A212247.P7536109131562323691

`A005744(n)+2*A212964(n)`
-/

namespace A212247.P7536109131562323691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n + 2 * A212964 n

end

end A212247.P7536109131562323691

namespace A212247

/-- `A005744(n)+2*A212964(n)` -/
def P7536109131562323691.Spec : Prop :=
  ∀ n, P7536109131562323691.a n = A212247 n

end A212247

/-! ## A212247.P13811060966922949985

`2*A019298(n)-A005744(n)`
-/

namespace A212247.P13811060966922949985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019298 n - A005744 n

end

end A212247.P13811060966922949985

namespace A212247

/-- `2*A019298(n)-A005744(n)` -/
def P13811060966922949985.Spec : Prop :=
  ∀ n, P13811060966922949985.a n = A212247 n

end A212247

/-! ## A212247.P526752316302314895

`A212980(n+1)-2*A002620(n)`
-/

namespace A212247.P526752316302314895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212980 (n + 1) - 2 * A002620 n

end

end A212247.P526752316302314895

namespace A212247

/-- `A212980(n+1)-2*A002620(n)` -/
def P526752316302314895.Spec : Prop :=
  ∀ n, P526752316302314895.a n = A212247 n

end A212247

/-! ## A212247.P6730655708578593940

`A212970(n)-(A210977(n)+A002620(n))`
-/

namespace A212247.P6730655708578593940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212970 n - (A210977 n + A002620 n)

end

end A212247.P6730655708578593940

namespace A212247

/-- `A212970(n)-(A210977(n)+A002620(n))` -/
def P6730655708578593940.Spec : Prop :=
  ∀ n, P6730655708578593940.a n = A212247 n

end A212247

/-!
# A212248: Triangle by rows relating to the Rao Uppulari-Carpenter sequence A000587.

The programs for A212248, there is no canonical definition to state claims against.
-/

/-! ## A212248.P10797821806889071125

`A131736(or(A190141(n+3), A264443(n)))`
-/

namespace A212248.P10797821806889071125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 (Int.lor (A190141 (n + 3)) (A264443 n)).toNat

end

end A212248.P10797821806889071125

/-! ## A212248.P4615409686664414413

`A008683(A065978(2*(n+1))+A057447(n+1))`
-/

namespace A212248.P4615409686664414413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065978 (2 * (n + 1)) + A057447 (n + 1)).toNat

end

end A212248.P4615409686664414413

/-! ## A212248.P17905813109462661629

`A008683(xor(63, A280758(n)))`
-/

namespace A212248.P17905813109462661629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.xor 63 (A280758 n)).toNat

end

end A212248.P17905813109462661629

/-! ## A212248.P7844049031150519953

`A080891(or(2, A322960(n+1)))`
-/

namespace A212248.P7844049031150519953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (Int.lor 2 (A322960 (n + 1))).toNat

end

end A212248.P7844049031150519953

/-! ## A212248.P469534079593837596

`A100047(or(2, A322960(n+1)))`
-/

namespace A212248.P469534079593837596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (Int.lor 2 (A322960 (n + 1))).toNat

end

end A212248.P469534079593837596

/-!
# A212249: Number of (w,x,y,z) with all terms in {1,...,n} and 3w

The programs for A212249, there is no canonical definition to state claims against.
-/

/-! ## A212249.P876397940361329801

`n²²-A212250(n)`
-/

namespace A212249.P876397940361329801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212250 n

end

end A212249.P876397940361329801

/-! ## A212249.P982039593525236981

`abs(A000583(n)-A212250(n))`
-/

namespace A212249.P982039593525236981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212250 n|

end

end A212249.P982039593525236981

/-! ## A212249.P6246368318175083085

`1-(A212250(n)+A024002(n))`
-/

namespace A212249.P6246368318175083085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A212250 n + A024002 n)

end

end A212249.P6246368318175083085

/-! ## A212249.P922715034554824057

`A000583(n)+A057428(n)*A212250(n)`
-/

namespace A212249.P922715034554824057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A057428 n * A212250 n

end

end A212249.P922715034554824057

/-! ## A212249.P4953224840743323286

`(A000583(n)-A212250(n))*A008683(A001694(n+1))!`
-/

namespace A212249.P4953224840743323286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212250 n) * (Nat.factorial (A008683 (A001694 (n + 1)).toNat).toNat : ℤ)

end

end A212249.P4953224840743323286

/-! ## A212249.P18364570483430154259

`A211812(n)+A211918(n)-A212250(n)`
-/

namespace A212249.P18364570483430154259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n + (A211918 n - A212250 n)

end

end A212249.P18364570483430154259

/-! ## A212249.P16544248093849846871

`A211795(n)+A211809(n)-A212250(n)`
-/

namespace A212249.P16544248093849846871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211795 n + (A211809 n - A212250 n)

end

end A212249.P16544248093849846871

/-!
# A212250: Number of (w,x,y,z) with all terms in {1,...,n} and 3w>=x+y+z+n.

The programs for A212250, there is no canonical definition to state claims against.
-/

/-! ## A212250.P11289240296230208866

`n²²-A212249(n)`
-/

namespace A212250.P11289240296230208866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212249 n

end

end A212250.P11289240296230208866

/-! ## A212250.P11087094255135993326

`abs(A000583(n)-A212249(n))`
-/

namespace A212250.P11087094255135993326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212249 n|

end

end A212250.P11087094255135993326

/-! ## A212250.P8726979831263048119

`A000583(n)%A212249(A028310(n))`
-/

namespace A212250.P8726979831263048119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n) (A212249 (A028310 n).toNat)

end

end A212250.P8726979831263048119

/-! ## A212250.P5028747480900854475

`(A000583(n)-A212249(n))*A054977(n)`
-/

namespace A212250.P5028747480900854475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212249 n) * A054977 n

end

end A212250.P5028747480900854475

/-! ## A212250.P2426038660167593014

`(A000583(n)-A212249(n))%A016828(n)`
-/

namespace A212250.P2426038660167593014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212249 n) (A016828 n)

end

end A212250.P2426038660167593014

/-! ## A212250.P92975253476055554

`A000038(n+1)+A000583(n)-A212249(n)`
-/

namespace A212250.P92975253476055554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A000583 n - A212249 n)

end

end A212250.P92975253476055554

/-! ## A212250.P1709742027268442367

`Δ[A000040(n+2)]%2+A000583(n)-A212249(n)`
-/

namespace A212250.P1709742027268442367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2 + (A000583 n - A212249 n)

end

end A212250.P1709742027268442367

/-! ## A212250.P18070709631131797873

`A211812(n)+A211918(n)-A212249(n)`
-/

namespace A212250.P18070709631131797873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n + (A211918 n - A212249 n)

end

end A212250.P18070709631131797873

/-! ## A212250.P16280660187388052953

`A211795(n)+A211809(n)-A212249(n)`
-/

namespace A212250.P16280660187388052953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211795 n + (A211809 n - A212249 n)

end

end A212250.P16280660187388052953

/-!
# A212251: Number of (w,x,y,z) with all terms in {1,...,n} and 3w = x + y + z + n + 1.

The programs for A212251, the canonical program `A212251.P5957336862388474404` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212251 has offset 0).

The definition of A212251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212251.P5957336862388474404

`floor(n*(5*C(n, 2)+n)/9)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212251

/-- `floor(n*(5*C(n, 2)+n)/9)` -/
def P5957336862388474404.Spec : Prop :=
  ∀ n, P5957336862388474404.a n = A212251 n

theorem P5957336862388474404.correct : P5957336862388474404.Spec := by
  intro n
  simp only [A212251]

end A212251

/-! ## A212251.P2401627613290500478

`∑[∑[a(n-3)+5]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=4`
-/

namespace A212251.P2401627613290500478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 4, 4] fun n f2 =>
  f2 (n - 3) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212251.P2401627613290500478

namespace A212251

/-- `∑[∑[a(n-3)+5]]` -/
def P2401627613290500478.Spec : Prop :=
  ∀ n, (P2401627613290500478.a n : ℤ) = A212251 n

end A212251

/-! ## A212251.P7749763712234785422

`floor(A006597(n)/9)`
-/

namespace A212251.P7749763712234785422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006597 n : ℚ) / 9⌋

end

end A212251.P7749763712234785422

namespace A212251

/-- `floor(A006597(n)/9)` -/
def P7749763712234785422.Spec : Prop :=
  ∀ n, P7749763712234785422.a n = A212251 n

end A212251

/-! ## A212251.P2760554253293909046

`floor(A006592(n)/36)`
-/

namespace A212251.P2760554253293909046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006592 n : ℚ) / 36⌋

end

end A212251.P2760554253293909046

namespace A212251

/-- `floor(A006592(n)/36)` -/
def P2760554253293909046.Spec : Prop :=
  ∀ n, P2760554253293909046.a n = A212251 n

end A212251

/-! ## A212251.P11082067495893924860

`floor(n*A000566(n)/9)`
-/

namespace A212251.P11082067495893924860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((A000566 n : ℚ) / 9)⌋

end

end A212251.P11082067495893924860

namespace A212251

/-- `floor(n*A000566(n)/9)` -/
def P11082067495893924860.Spec : Prop :=
  ∀ n, P11082067495893924860.a n = A212251 n

end A212251

/-! ## A212251.P6201305400906611673

`A301654(n+1)+A212252(n)`
-/

namespace A212251.P6201305400906611673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301654 (n + 1) + A212252 n

end

end A212251.P6201305400906611673

namespace A212251

/-- `A301654(n+1)+A212252(n)` -/
def P6201305400906611673.Spec : Prop :=
  ∀ n, P6201305400906611673.a n = A212251 n

end A212251

/-! ## A212251.P495337613801536049

`∑[∑[A047619(n+1)]-A027379(n)]`
-/

namespace A212251.P495337613801536049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A027379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212251.P495337613801536049

namespace A212251

/-- `∑[∑[A047619(n+1)]-A027379(n)]` -/
def P495337613801536049.Spec : Prop :=
  ∀ n, P495337613801536049.a n = A212251 n

end A212251

/-! ## A212251.P204579609280417564

`∑[∑[4*n-A047343(n+3)+3]+1]+n`
-/

namespace A212251.P204579609280417564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A047343 (n + 3) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A212251.P204579609280417564

namespace A212251

/-- `∑[∑[4*n-A047343(n+3)+3]+1]+n` -/
def P204579609280417564.Spec : Prop :=
  ∀ n, P204579609280417564.a n = A212251 n

end A212251

/-!
# A212252: Number of (w,x,y,z) with all terms in {1,...,n} and 3w=x+y+z+n+2.

The programs for A212252, the canonical program `A212252.P16933936618129092955` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212252 has offset 0).

The definition of A212252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212252.P16933936618129092955

`∑[∑[a(n-3)+5]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212252

/-- `∑[∑[a(n-3)+5]]` -/
def P16933936618129092955.Spec : Prop :=
  ∀ n, (P16933936618129092955.a n : ℤ) = A212252 n

theorem P16933936618129092955.correct : P16933936618129092955.Spec := by
  intro n
  simp only [A212252]

end A212252

/-! ## A212252.P17316882627557480477

`∑[2-∑[a(n-3)-5]]` with `a(0)=2, a(1)=0, a(2)=0`
-/

namespace A212252.P17316882627557480477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0] fun n f2 =>
  f2 (n - 3) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212252.P17316882627557480477

namespace A212252

/-- `∑[2-∑[a(n-3)-5]]` -/
def P17316882627557480477.Spec : Prop :=
  ∀ n, P17316882627557480477.a n = A212252 n

end A212252

/-! ## A212252.P17950790230047570955

`A131477(n)-∑[A001840(n)]`
-/

namespace A212252.P17950790230047570955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131477 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212252.P17950790230047570955

namespace A212252

/-- `A131477(n)-∑[A001840(n)]` -/
def P17950790230047570955.Spec : Prop :=
  ∀ n, P17950790230047570955.a n = A212252 n

end A212252

/-! ## A212252.P1379099303279286339

`A212251(n)-A301654(n+1)`
-/

namespace A212252.P1379099303279286339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212251 n - A301654 (n + 1)

end

end A212252.P1379099303279286339

namespace A212252

/-- `A212251(n)-A301654(n+1)` -/
def P1379099303279286339.Spec : Prop :=
  ∀ n, P1379099303279286339.a n = A212252 n

end A212252

/-! ## A212252.P10697149621253465307

`∑[A194275(n)-A047384(n+1)]`
-/

namespace A212252.P10697149621253465307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 n - A047384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212252.P10697149621253465307

namespace A212252

/-- `∑[A194275(n)-A047384(n+1)]` -/
def P10697149621253465307.Spec : Prop :=
  ∀ n, P10697149621253465307.a n = A212252 n

end A212252

/-!
# A212254: Number of (w,x,y,z) with all terms in {1,...,n} and w=x+2y+3z-n.

The programs for A212254, the canonical program `A212254.P17099289670976146357` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212254 has offset 0).

The definition of A212254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212254.P17099289670976146357

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=4, a(5)=11, a(6)=21`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212254

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P17099289670976146357.Spec : Prop :=
  ∀ n, P17099289670976146357.a n = A212254 n

theorem P17099289670976146357.correct : P17099289670976146357.Spec := by
  intro n
  simp only [A212254]

end A212254

/-! ## A212254.P7155518736116443312

`round((2-n)²/12)+C(n, 3)`
-/

namespace A212254.P7155518736116443312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 12) + (Nat.choose n 3 : ℤ)

end

end A212254.P7155518736116443312

namespace A212254

/-- `round((2-n)²/12)+C(n, 3)` -/
def P7155518736116443312.Spec : Prop :=
  ∀ n, P7155518736116443312.a n = A212254 n

end A212254

/-! ## A212254.P14583795950689715698

`ceil(A015240(n)/12)`
-/

namespace A212254.P14583795950689715698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A015240 n : ℚ) / 12⌉

end

end A212254.P14583795950689715698

namespace A212254

/-- `ceil(A015240(n)/12)` -/
def P14583795950689715698.Spec : Prop :=
  ∀ n, P14583795950689715698.a n = A212254 n

end A212254

/-! ## A212254.P1921135563763304869

`∑[A000982(n)-comp[or(3, n)]]`
-/

namespace A212254.P1921135563763304869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212254.P1921135563763304869

namespace A212254

/-- `∑[A000982(n)-comp[or(3, n)]]` -/
def P1921135563763304869.Spec : Prop :=
  ∀ n, P1921135563763304869.a n = A212254 n

end A212254

/-! ## A212254.P7477106937808371114

`∑[ceil(n²/2)-A004773(n)]`
-/

namespace A212254.P7477106937808371114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212254.P7477106937808371114

namespace A212254

/-- `∑[ceil(n²/2)-A004773(n)]` -/
def P7477106937808371114.Spec : Prop :=
  ∀ n, P7477106937808371114.a n = A212254 n

end A212254

/-! ## A212254.P9729721580712179126

`∑[floor((1-n)²/2)-A002264(n)]`
-/

namespace A212254.P9729721580712179126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌋ - A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212254.P9729721580712179126

namespace A212254

/-- `∑[floor((1-n)²/2)-A002264(n)]` -/
def P9729721580712179126.Spec : Prop :=
  ∀ n, P9729721580712179126.a n = A212254 n

end A212254

/-! ## A212254.P10958521060846759669

`A152728(n)-A349975(n)`
-/

namespace A212254.P10958521060846759669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152728 n - A349975 n

end

end A212254.P10958521060846759669

namespace A212254

/-- `A152728(n)-A349975(n)` -/
def P10958521060846759669.Spec : Prop :=
  ∀ n, P10958521060846759669.a n = A212254 n

end A212254

/-! ## A212254.P16125845528140355252

`∑[A108579(n+1)+∑[A140106(n+1)]]`
-/

namespace A212254.P16125845528140355252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212254.P16125845528140355252

namespace A212254

/-- `∑[A108579(n+1)+∑[A140106(n+1)]]` -/
def P16125845528140355252.Spec : Prop :=
  ∀ n, P16125845528140355252.a n = A212254 n

end A212254

/-! ## A212254.P7876533861458216388

`A000125(n)-(A008747(n)+A002620(n+1))`
-/

namespace A212254.P7876533861458216388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n - (A008747 n + A002620 (n + 1))

end

end A212254.P7876533861458216388

namespace A212254

/-- `A000125(n)-(A008747(n)+A002620(n+1))` -/
def P7876533861458216388.Spec : Prop :=
  ∀ n, P7876533861458216388.a n = A212254 n

end A212254

/-! ## A212254.P7912335274614135217

`A211540(n)+Δ[A000332(n)]`
-/

namespace A212254.P7912335274614135217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n + (f1 (n + 1) - f1 n)

end

end A212254.P7912335274614135217

namespace A212254

/-- `A211540(n)+Δ[A000332(n)]` -/
def P7912335274614135217.Spec : Prop :=
  ∀ n, P7912335274614135217.a n = A212254 n

end A212254

/-! ## A212254.P16134131738829785069

`∑[A000982(n)-A004523(2*n)]`
-/

namespace A212254.P16134131738829785069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A004523 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212254.P16134131738829785069

namespace A212254

/-- `∑[A000982(n)-A004523(2*n)]` -/
def P16134131738829785069.Spec : Prop :=
  ∀ n, P16134131738829785069.a n = A212254 n

end A212254

/-! ## A212254.P7782573186406006521

`A131941(n)-∑[A004523(2*n)]`
-/

namespace A212254.P7782573186406006521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212254.P7782573186406006521

namespace A212254

/-- `A131941(n)-∑[A004523(2*n)]` -/
def P7782573186406006521.Spec : Prop :=
  ∀ n, P7782573186406006521.a n = A212254 n

end A212254

/-! ## A212254.P14539458570495775402

`A309692(2*n)-A309686(2*n)`
-/

namespace A212254.P14539458570495775402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309692 (2 * n) - A309686 (2 * n)

end

end A212254.P14539458570495775402

namespace A212254

/-- `A309692(2*n)-A309686(2*n)` -/
def P14539458570495775402.Spec : Prop :=
  ∀ n, P14539458570495775402.a n = A212254 n

end A212254

/-! ## A212254.P14329115910740522156

`∑[A008619((1-n)²)-A008620(n)]`
-/

namespace A212254.P14329115910740522156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((1 - (n : ℤ)) ^ 2).toNat - A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212254.P14329115910740522156

namespace A212254

/-- `∑[A008619((1-n)²)-A008620(n)]` -/
def P14329115910740522156.Spec : Prop :=
  ∀ n, P14329115910740522156.a n = A212254 n

end A212254

/-!
# A212255: Number of (w,x,y,z) with all terms in {1,...,n} and 3w^2 = x^2 + y^2 + z^2.

The programs for A212255, there is no canonical definition to state claims against.
-/

/-! ## A212255.P3563784346622266230

`record[and(n-2, abs(A256679(n)))]`
-/

namespace A212255.P3563784346622266230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 2) |A256679 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212255.P3563784346622266230

/-! ## A212255.P11772150357687533662

`lt[A253603(2*n), A017041(A133159(n+1))]`
-/

namespace A212255.P11772150357687533662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253603 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (A133159 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212255.P11772150357687533662

/-! ## A212255.P16772054080068726989

`A350356(n+1)-A286748(A002865(3*n+4))`
-/

namespace A212255.P16772054080068726989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (n + 1) - A286748 (A002865 (3 * n + 4)).toNat

end

end A212255.P16772054080068726989

/-! ## A212255.P3920522150384650324

`A350356(n+1)+A008683(A162610(4^ceil(n/2))+19)`
-/

namespace A212255.P3920522150384650324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (n + 1) + A008683 (A162610 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat + 19).toNat

end

end A212255.P3920522150384650324

/-! ## A212255.P16515122858652155646

`record[and(A117369(3*n+4), A117371(2*n+1))]`
-/

namespace A212255.P16515122858652155646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117369 (3 * n + 4)) (A117371 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212255.P16515122858652155646

/-!
# A212257: Number of (v,w,x,y,z) with all terms in {0,1,...,n} and v=average(w,x,y,z).

The programs for A212257, the canonical program `A212257.P12934607272291784643` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212257 has offset 0).

The definition of A212257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212257.P12934607272291784643

`A230074(n+1)+∑[A212960(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212257

/-- `A230074(n+1)+∑[A212960(n)]` -/
def P12934607272291784643.Spec : Prop :=
  ∀ n, P12934607272291784643.a n = A212257 n

theorem P12934607272291784643.correct : P12934607272291784643.Spec := by
  intro n
  simp only [A212257]

end A212257

/-! ## A212257.P5134559388652629907

`A230074(n+1)+A191903(n)/2`
-/

namespace A212257.P5134559388652629907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230074 (n + 1) : ℚ) + (A191903 n : ℚ) / 2

end

end A212257.P5134559388652629907

namespace A212257

/-- `A230074(n+1)+A191903(n)/2` -/
def P5134559388652629907.Spec : Prop :=
  ∀ n, P5134559388652629907.a n = (A212257 n : ℚ)

end A212257

/-! ## A212257.P4824922085748732253

`A230074(n+1)+A002620((n+1)²)`
-/

namespace A212257.P4824922085748732253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230074 (n + 1) + A002620 ((n + 1) ^ 2)

end

end A212257.P4824922085748732253

namespace A212257

/-- `A230074(n+1)+A002620((n+1)²)` -/
def P4824922085748732253.Spec : Prop :=
  ∀ n, P4824922085748732253.a n = A212257 n

end A212257

/-! ## A212257.P9725759035735996062

`A230074(n+1)+A038572(A191903(n))`
-/

namespace A212257.P9725759035735996062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230074 (n + 1) + A038572 (A191903 n).toNat

end

end A212257.P9725759035735996062

namespace A212257

/-- `A230074(n+1)+A038572(A191903(n))` -/
def P9725759035735996062.Spec : Prop :=
  ∀ n, P9725759035735996062.a n = A212257 n

end A212257

/-!
# A212258: Number of binary increasing trees with n nodes and "min-path" of length 4.

The programs for A212258, there is no canonical definition to state claims against.
-/

/-! ## A212258.P12674149147567645414

`A186366(A152950(n+1))-char[A080956(n)]`
-/

namespace A212258.P12674149147567645414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186366 (A152950 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A212258.P12674149147567645414

/-! ## A212258.P13033337971530048733

`A186366(A152950(n+1))-char[A214615(n)]`
-/

namespace A212258.P13033337971530048733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214615 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186366 (A152950 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A212258.P13033337971530048733

/-! ## A212258.P408331738885337977

`A186366(A152950(n+1))%A271933(n+1)`
-/

namespace A212258.P408331738885337977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186366 (A152950 (n + 1)).toNat) (A271933 (n + 1))

end

end A212258.P408331738885337977

/-! ## A212258.P1901150343218010469

`A186366(A152950(n+1))-A000007(n²-n)`
-/

namespace A212258.P1901150343218010469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186366 (A152950 (n + 1)).toNat - A000007 (n ^ 2 - n)

end

end A212258.P1901150343218010469

/-!
# A212259: Number of binary increasing trees with n nodes and "min-path" of length 5.

The programs for A212259, there is no canonical definition to state claims against.
-/

/-! ## A212259.P17179617642957489736

`A025443(9*A118589(n))`
-/

namespace A212259.P17179617642957489736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (9 * A118589 n).toNat

end

end A212259.P17179617642957489736

/-! ## A212259.P4853141695961822045

`A219642(A000166(n+1)-A085449(n))`
-/

namespace A212259.P4853141695961822045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A000166 (n + 1) - A085449 n).toNat

end

end A212259.P4853141695961822045

/-! ## A212259.P2959857584425509998

`A300270(A254523(n))-A300270(n+1)`
-/

namespace A212259.P2959857584425509998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300270 (A254523 n).toNat - A300270 (n + 1)

end

end A212259.P2959857584425509998

/-!
# A212261: Array A(i,j) read by antidiagonals: A(i,j) is the (2i-1)-th derivative of sin(sin(sin(...sin(x)))) nested j times evaluated at 0.

The programs for A212261, there is no canonical definition to state claims against.
-/

/-! ## A212261.P4942200149654965294

`A299045(A014132(n+1))-(n-1)*A016389(A100616(n))`
-/

namespace A212261.P4942200149654965294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299045 (A014132 (n + 1)).toNat - ((n : ℤ) - 1) * A016389 (A100616 n).toNat

end

end A212261.P4942200149654965294

/-!
# A212262: a(n) = 3^n + Fibonacci(n).

The programs for A212262, the canonical program `A212262.P15937296290363795767` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212262 has offset 0).

The definition of A212262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212262.P16419006200259363688

`ogf((1-4x^2)/(1-4x+2x^2+3x^3))`
-/

namespace A212262.P16419006200259363688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -4] [1, -4, 2, 3] n

end

end A212262.P16419006200259363688

namespace A212262

/-- `ogf((1-4x^2)/(1-4x+2x^2+3x^3))` -/
def P16419006200259363688.Spec : Prop :=
  ∀ n, P16419006200259363688.a n = A212262 n

end A212262

/-! ## A212262.P15937296290363795767

`3^n+abs(Δ[a(n-2)-a(n-1)])` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212262

/-- `3^n+abs(Δ[a(n-2)-a(n-1)])` -/
def P15937296290363795767.Spec : Prop :=
  ∀ n, P15937296290363795767.a n = A212262 n

theorem P15937296290363795767.correct : P15937296290363795767.Spec := by
  intro n
  simp only [A212262]

end A212262

/-! ## A212262.P13968223914927388740

`3^n+A000045(n)`
-/

namespace A212262.P13968223914927388740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + A000045 n

end

end A212262.P13968223914927388740

namespace A212262

/-- `3^n+A000045(n)` -/
def P13968223914927388740.Spec : Prop :=
  ∀ n, P13968223914927388740.a n = A212262 n

end A212262

/-! ## A212262.P9308325418703892892

`3^n+abs(A236191(n))`
-/

namespace A212262.P9308325418703892892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + |A236191 n|

end

end A212262.P9308325418703892892

namespace A212262

/-- `3^n+abs(A236191(n))` -/
def P9308325418703892892.Spec : Prop :=
  ∀ n, P9308325418703892892.a n = A212262 n

end A212262

/-! ## A212262.P5402480224871194918

`A212804(n+1)+3^n`
-/

namespace A212262.P5402480224871194918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + (3 ^ n : ℤ)

end

end A212262.P5402480224871194918

namespace A212262

/-- `A212804(n+1)+3^n` -/
def P5402480224871194918.Spec : Prop :=
  ∀ n, P5402480224871194918.a n = A212262 n

end A212262

/-! ## A212262.P35275196377798427

`3^n+A001611(n)-1`
-/

namespace A212262.P35275196377798427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (A001611 n - 1)

end

end A212262.P35275196377798427

namespace A212262

/-- `3^n+A001611(n)-1` -/
def P35275196377798427.Spec : Prop :=
  ∀ n, P35275196377798427.a n = A212262 n

end A212262

/-! ## A212262.P16859718210348586981

`3^n-A152163(n+2)`
-/

namespace A212262.P16859718210348586981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A152163 (n + 2)

end

end A212262.P16859718210348586981

namespace A212262

/-- `3^n-A152163(n+2)` -/
def P16859718210348586981.Spec : Prop :=
  ∀ n, P16859718210348586981.a n = A212262 n

end A212262

/-! ## A212262.P10146779227488759223

`Δ[A000071(n+1)]+3^n`
-/

namespace A212262.P10146779227488759223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (3 ^ n : ℤ)

end

end A212262.P10146779227488759223

namespace A212262

/-- `Δ[A000071(n+1)]+3^n` -/
def P10146779227488759223.Spec : Prop :=
  ∀ n, P10146779227488759223.a n = A212262 n

end A212262

/-! ## A212262.P5699731940917289799

`3*a(n-1)-A000032(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A212262.P5699731940917289799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * a (n - 1) - A000032 (n - 2)

end

end A212262.P5699731940917289799

namespace A212262

/-- `3*a(n-1)-A000032(n-2)` -/
def P5699731940917289799.Spec : Prop :=
  ∀ n, P5699731940917289799.a n = A212262 n

end A212262

/-! ## A212262.P12345464903613887558

`A024023(n)+A001611(n)`
-/

namespace A212262.P12345464903613887558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n + A001611 n

end

end A212262.P12345464903613887558

namespace A212262

/-- `A024023(n)+A001611(n)` -/
def P12345464903613887558.Spec : Prop :=
  ∀ n, P12345464903613887558.a n = A212262 n

end A212262

/-! ## A212262.P1351199730622907318

`A024024(n)+A002062(n)`
-/

namespace A212262.P1351199730622907318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n + A002062 n

end

end A212262.P1351199730622907318

namespace A212262

/-- `A024024(n)+A002062(n)` -/
def P1351199730622907318.Spec : Prop :=
  ∀ n, P1351199730622907318.a n = A212262 n

end A212262

/-! ## A212262.P10479351594919586288

`A105723(n)+A008346(n)`
-/

namespace A212262.P10479351594919586288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105723 n + A008346 n

end

end A212262.P10479351594919586288

namespace A212262

/-- `A105723(n)+A008346(n)` -/
def P10479351594919586288.Spec : Prop :=
  ∀ n, P10479351594919586288.a n = A212262 n

end A212262

/-! ## A212262.P10331949969739044752

`A117591(n)+A001047(n)`
-/

namespace A212262.P10331949969739044752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117591 n + A001047 n

end

end A212262.P10331949969739044752

namespace A212262

/-- `A117591(n)+A001047(n)` -/
def P10331949969739044752.Spec : Prop :=
  ∀ n, P10331949969739044752.a n = A212262 n

end A212262

/-! ## A212262.P3896176738898659093

`A104743(n)+A065220(n)`
-/

namespace A212262.P3896176738898659093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104743 n + A065220 n

end

end A212262.P3896176738898659093

namespace A212262

/-- `A104743(n)+A065220(n)` -/
def P3896176738898659093.Spec : Prop :=
  ∀ n, P3896176738898659093.a n = A212262 n

end A212262

/-! ## A212262.P4118585631113362962

`A160536(n)+A024025(n)`
-/

namespace A212262.P4118585631113362962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160536 n + A024025 n

end

end A212262.P4118585631113362962

namespace A212262

/-- `A160536(n)+A024025(n)` -/
def P4118585631113362962.Spec : Prop :=
  ∀ n, P4118585631113362962.a n = A212262 n

end A212262

/-! ## A212262.P16021796041546899892

`A212272(n)+A024026(n)`
-/

namespace A212262.P16021796041546899892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212272 n + A024026 n

end

end A212262.P16021796041546899892

namespace A212262

/-- `A212272(n)+A024026(n)` -/
def P16021796041546899892.Spec : Prop :=
  ∀ n, P16021796041546899892.a n = A212262 n

end A212262

/-! ## A212262.P199336068125699092

`A251701(n)+A014283(n)`
-/

namespace A212262.P199336068125699092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251701 n + A014283 n

end

end A212262.P199336068125699092

namespace A212262

/-- `A251701(n)+A014283(n)` -/
def P199336068125699092.Spec : Prop :=
  ∀ n, P199336068125699092.a n = A212262 n

end A212262

/-! ## A212262.P7512830003352861102

`A168611(n)+A157727(n)`
-/

namespace A212262.P7512830003352861102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168611 n + A157727 n

end

end A212262.P7512830003352861102

namespace A212262

/-- `A168611(n)+A157727(n)` -/
def P7512830003352861102.Spec : Prop :=
  ∀ n, P7512830003352861102.a n = A212262 n

end A212262

/-! ## A212262.P5146755695727254835

`A168613(n)+A157729(n)`
-/

namespace A212262.P5146755695727254835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168613 n + A157729 n

end

end A212262.P5146755695727254835

namespace A212262

/-- `A168613(n)+A157729(n)` -/
def P5146755695727254835.Spec : Prop :=
  ∀ n, P5146755695727254835.a n = A212262 n

end A212262

/-!
# A212263: Main diagonal of symmetric array defined by the recurrence T(n,1)=1, T(1,k)=1, for n >= k: T(n,k) = Sum_{i=1..k-1} T(n-i,k), for n < k: T(n,k) = Sum_{i=1..n-1} T(k-i,n).

The programs for A212263, there is no canonical definition to state claims against.
-/

/-! ## A212263.P15954363202516193505

`A387141(A275859(n))`
-/

namespace A212263.P15954363202516193505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A275859 n).toNat

end

end A212263.P15954363202516193505

/-! ## A212263.P13127311619550704292

`A283190(2*A086611(n))`
-/

namespace A212263.P13127311619550704292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283190 (2 * A086611 n).toNat

end

end A212263.P13127311619550704292

/-! ## A212263.P7719724287741537167

`A195120(xor(A099390(3*n+1), A149998(n)))`
-/

namespace A212263.P7719724287741537167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (Int.xor (A099390 (3 * n + 1)) (A149998 n)).toNat

end

end A212263.P7719724287741537167

/-!
# A212264: Diagonal sums of triangle A096815.

The programs for A212264, there is no canonical definition to state claims against.
-/

/-! ## A212264.P4875257443021249978

`round(sqrt(A008620(2^(n+1)-(1-n)²)))`
-/

namespace A212264.P4875257443021249978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008620 ((2 ^ (n + 1) : ℤ) - (1 - (n : ℤ)) ^ 2).toNat : ℝ))

end

end A212264.P4875257443021249978

/-! ## A212264.P5244772386013214845

`A204164(A072964(n+1))`
-/

namespace A212264.P5244772386013214845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A072964 (n + 1)).toNat

end

end A212264.P5244772386013214845

/-! ## A212264.P11774596962723140586

`A305025(A241651(2*n+3))`
-/

namespace A212264.P11774596962723140586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305025 (A241651 (2 * n + 3)).toNat

end

end A212264.P11774596962723140586

/-! ## A212264.P10975474003413691353

`A095861(A036538(n+1)+7)`
-/

namespace A212264.P10975474003413691353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A036538 (n + 1) + 7).toNat

end

end A212264.P10975474003413691353

/-! ## A212264.P9622413440051887481

`floor((A269918(floor(2^(n-1))+1)+A269918(n))^(1/4))`
-/

namespace A212264.P9622413440051887481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269918 (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat + A269918 n : ℝ) ^ ((1 : ℚ) / 4 : ℝ)⌋

end

end A212264.P9622413440051887481

/-!
# A212265: Row square-sums of triangle A096815.

The programs for A212265, there is no canonical definition to state claims against.
-/

/-! ## A212265.P11017734943132239066

`A215244(A149457(n+1))`
-/

namespace A212265.P11017734943132239066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 (A149457 (n + 1)).toNat

end

end A212265.P11017734943132239066

/-! ## A212265.P6298173056183533000

`A046108(A119359(n)+A100882(n))`
-/

namespace A212265.P6298173056183533000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A119359 n + A100882 n).toNat

end

end A212265.P6298173056183533000

/-! ## A212265.P3873663448972069470

`A325106(A000051(n))+A000988(n)`
-/

namespace A212265.P3873663448972069470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A000051 n).toNat + A000988 n

end

end A212265.P3873663448972069470

/-!
# A212266: Primes p such that p - m! is composite, where m is the greatest number such that m! < p.

The programs for A212266, there is no canonical definition to state claims against.
-/

/-! ## A212266.P6812134649392426604

`p?[A155879(n)+24]`
-/

namespace A212266.P6812134649392426604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155879 n + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212266.P6812134649392426604

/-! ## A212266.P4328483346014961939

`A073485(eq[3, A291984(n+2)])`
-/

namespace A212266.P4328483346014961939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291984 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212266.P4328483346014961939

/-!
# A212267: Array A(i,j) read by antidiagonals: A(i,j) is the (2*i-1)-th derivative of tan(tan(tan(...tan(x)))) nested j times evaluated at 0.

The programs for A212267, there is no canonical definition to state claims against.
-/

/-! ## A212267.P17584067332755306014

`A099735(A370380(n))`
-/

namespace A212267.P17584067332755306014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099735 (A370380 n).toNat

end

end A212267.P17584067332755306014

/-! ## A212267.P17767884216075088104

`A342498(A176122(n+1))`
-/

namespace A212267.P17767884216075088104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (A176122 (n + 1)).toNat

end

end A212267.P17767884216075088104

/-! ## A212267.P8449535500757966540

`A125988(C(n, A213191(n)))`
-/

namespace A212267.P8449535500757966540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125988 (Nat.choose n (A213191 n).toNat)

end

end A212267.P8449535500757966540

/-! ## A212267.P5059857933137472918

`A235963(A229417(n+1)²)`
-/

namespace A212267.P5059857933137472918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A229417 (n + 1) ^ 2).toNat

end

end A212267.P5059857933137472918

/-! ## A212267.P7753880481111021626

`A089688(comp[∑[n-1]]^A112367(n))`
-/

namespace A212267.P7753880481111021626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (A112367 n : ℤ))).toNat

end

end A212267.P7753880481111021626

/-!
# A212269: Number of ways to place k non-attacking kings on an n X n cylindrical chessboard, summed over all k >= 0.

The programs for A212269, there is no canonical definition to state claims against.
-/

/-! ## A212269.P7656044158086912715

`A008619(A325574(n))+A001316(n)`
-/

namespace A212269.P7656044158086912715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A325574 n).toNat + A001316 n

end

end A212269.P7656044158086912715

/-!
# A212270: Number of ways to place k non-attacking wazirs on an n x n cylindrical chessboard, summed over all k >= 0.

The programs for A212270, there is no canonical definition to state claims against.
-/

/-! ## A212270.P194093648957154918

`A286513(A001844(n))+A000007(n)`
-/

namespace A212270.P194093648957154918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A001844 n).toNat + A000007 n

end

end A212270.P194093648957154918

/-! ## A212270.P6287789896462671901

`A286513(A001844(n))+A210709(n)`
-/

namespace A212270.P6287789896462671901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286513 (A001844 n).toNat + A210709 n

end

end A212270.P6287789896462671901

/-! ## A212270.P12727708635133294576

`A054977(n)*A286513(A001844(n))`
-/

namespace A212270.P12727708635133294576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A286513 (A001844 n).toNat

end

end A212270.P12727708635133294576

/-!
# A212272: a(n) = Fibonacci(n) + n^3.

The programs for A212272, the canonical program `A212272.P10461449749987544172` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212272 has offset 0).

The definition of A212272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212272.P10461449749987544172

`n^3+A000045(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212272

/-- `n^3+A000045(n)` -/
def P10461449749987544172.Spec : Prop :=
  ∀ n, P10461449749987544172.a n = A212272 n

theorem P10461449749987544172.correct : P10461449749987544172.Spec := by
  intro n
  simp only [A212272]

end A212272

/-! ## A212272.P588614082053881367

`A212804(n+1)+n^3`
-/

namespace A212272.P588614082053881367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + (n ^ 3 : ℤ)

end

end A212272.P588614082053881367

namespace A212272

/-- `A212804(n+1)+n^3` -/
def P588614082053881367.Spec : Prop :=
  ∀ n, P588614082053881367.a n = A212272 n

end A212272

/-! ## A212272.P7681586152000634059

`n^3+A001611(n)-1`
-/

namespace A212272.P7681586152000634059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) + (A001611 n - 1)

end

end A212272.P7681586152000634059

namespace A212272

/-- `n^3+A001611(n)-1` -/
def P7681586152000634059.Spec : Prop :=
  ∀ n, P7681586152000634059.a n = A212272 n

end A212272

/-! ## A212272.P3346712883839346669

`n^3-A152163(n+2)`
-/

namespace A212272.P3346712883839346669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A152163 (n + 2)

end

end A212272.P3346712883839346669

namespace A212272

/-- `n^3-A152163(n+2)` -/
def P3346712883839346669.Spec : Prop :=
  ∀ n, P3346712883839346669.a n = A212272 n

end A212272

/-! ## A212272.P4591609930346961755

`A103609(2*n)+n*n²`
-/

namespace A212272.P4591609930346961755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + (n * n ^ 2 : ℤ)

end

end A212272.P4591609930346961755

namespace A212272

/-- `A103609(2*n)+n*n²` -/
def P4591609930346961755.Spec : Prop :=
  ∀ n, P4591609930346961755.a n = A212272 n

end A212272

/-! ## A212272.P4517380437499906696

`A014283(n)+A011379(n)`
-/

namespace A212272.P4517380437499906696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014283 n + A011379 n

end

end A212272.P4517380437499906696

namespace A212272

/-- `A014283(n)+A011379(n)` -/
def P4517380437499906696.Spec : Prop :=
  ∀ n, P4517380437499906696.a n = A212272 n

theorem P4517380437499906696.correct : P4517380437499906696.Spec := by
  intro n
  simp only [A212272, Nat.add_sub_cancel, A212272.P4517380437499906696.a, A212272.P10461449749987544172.a, A000045, A000045.P11838749114346432762.a, A011379, A011379.P13170028565952122956.a, A014283, A014283.P17219958316013531777.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212272

/-! ## A212272.P1989111297468429596

`A065220(n)+A034262(n)`
-/

namespace A212272.P1989111297468429596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A034262 n

end

end A212272.P1989111297468429596

namespace A212272

/-- `A065220(n)+A034262(n)` -/
def P1989111297468429596.Spec : Prop :=
  ∀ n, P1989111297468429596.a n = A212272 n

end A212272

/-! ## A212272.P663622128819385523

`A123363(n)+A008346(n)`
-/

namespace A212272.P663622128819385523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123363 n + A008346 n

end

end A212272.P663622128819385523

namespace A212272

/-- `A123363(n)+A008346(n)` -/
def P663622128819385523.Spec : Prop :=
  ∀ n, P663622128819385523.a n = A212272 n

end A212272

/-! ## A212272.P9551417908248616249

`A160536(n)+A045991(n)`
-/

namespace A212272.P9551417908248616249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160536 n + A045991 n

end

end A212272.P9551417908248616249

namespace A212272

/-- `A160536(n)+A045991(n)` -/
def P9551417908248616249.Spec : Prop :=
  ∀ n, P9551417908248616249.a n = A212272 n

end A212272

/-! ## A212272.P4534740851977607009

`A001611(n)-A024001(n)`
-/

namespace A212272.P4534740851977607009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A024001 n

end

end A212272.P4534740851977607009

namespace A212272

/-- `A001611(n)-A024001(n)` -/
def P4534740851977607009.Spec : Prop :=
  ∀ n, P4534740851977607009.a n = A212272 n

end A212272

/-! ## A212272.P4306029800938449054

`A000578(n)+A002062(n)-n`
-/

namespace A212272.P4306029800938449054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (A002062 n - (n : ℤ))

end

end A212272.P4306029800938449054

namespace A212272

/-- `A000578(n)+A002062(n)-n` -/
def P4306029800938449054.Spec : Prop :=
  ∀ n, P4306029800938449054.a n = A212272 n

end A212272

/-! ## A212272.P8779790047583808735

`A000045(n)+n*A000290(n)`
-/

namespace A212272.P8779790047583808735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ) * A000290 n

end

end A212272.P8779790047583808735

namespace A212272

/-- `A000045(n)+n*A000290(n)` -/
def P8779790047583808735.Spec : Prop :=
  ∀ n, P8779790047583808735.a n = A212272 n

theorem P8779790047583808735.correct : P8779790047583808735.Spec := by
  intro n
  simp only [A212272, Nat.add_sub_cancel, A212272.P8779790047583808735.a, A212272.P10461449749987544172.a, A000045, A000045.P11838749114346432762.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212272

/-! ## A212272.P9769218258660850991

`A000045(n)+n*A253909(n)`
-/

namespace A212272.P9769218258660850991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ) * A253909 n

end

end A212272.P9769218258660850991

namespace A212272

/-- `A000045(n)+n*A253909(n)` -/
def P9769218258660850991.Spec : Prop :=
  ∀ n, P9769218258660850991.a n = A212272 n

end A212272

/-! ## A212272.P17281054428488295220

`n²+A045991(n)+A000045(n)`
-/

namespace A212272.P17281054428488295220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A045991 n + A000045 n)

end

end A212272.P17281054428488295220

namespace A212272

/-- `n²+A045991(n)+A000045(n)` -/
def P17281054428488295220.Spec : Prop :=
  ∀ n, P17281054428488295220.a n = A212272 n

theorem P17281054428488295220.correct : P17281054428488295220.Spec := by
  intro n
  simp only [A212272, Nat.add_sub_cancel, A212272.P17281054428488295220.a, A212272.P10461449749987544172.a, A000045, A000045.P11838749114346432762.a, A045991, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212272

/-! ## A212272.P7091361274196042430

`A000045(n)+A011379(n)-n²`
-/

namespace A212272.P7091361274196042430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A011379 n - (n ^ 2 : ℤ))

end

end A212272.P7091361274196042430

namespace A212272

/-- `A000045(n)+A011379(n)-n²` -/
def P7091361274196042430.Spec : Prop :=
  ∀ n, P7091361274196042430.a n = A212272 n

theorem P7091361274196042430.correct : P7091361274196042430.Spec := by
  intro n
  simp only [A212272, Nat.add_sub_cancel, A212272.P7091361274196042430.a, A212272.P10461449749987544172.a, A000045, A000045.P11838749114346432762.a, A011379, A011379.P13170028565952122956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212272

/-! ## A212272.P8467312606430421809

`A000045(n)-n²*A001489(n)`
-/

namespace A212272.P8467312606430421809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (n ^ 2 : ℤ) * A001489 n

end

end A212272.P8467312606430421809

namespace A212272

/-- `A000045(n)-n²*A001489(n)` -/
def P8467312606430421809.Spec : Prop :=
  ∀ n, P8467312606430421809.a n = A212272 n

theorem P8467312606430421809.correct : P8467312606430421809.Spec := by
  intro n
  simp only [A212272, Nat.add_sub_cancel, A212272.P8467312606430421809.a, A212272.P10461449749987544172.a, A000045, A000045.P11838749114346432762.a, A001489, A001489.P15233530513763566776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212272

/-! ## A212272.P4749267910516856228

`A000045(n)+n*∑[A004273(n)]`
-/

namespace A212272.P4749267910516856228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212272.P4749267910516856228

namespace A212272

/-- `A000045(n)+n*∑[A004273(n)]` -/
def P4749267910516856228.Spec : Prop :=
  ∀ n, P4749267910516856228.a n = A212272 n

end A212272

/-! ## A212272.P9918661685413476053

`A000045(n)+n*record[A123596(n)]`
-/

namespace A212272.P9918661685413476053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212272.P9918661685413476053

namespace A212272

/-- `A000045(n)+n*record[A123596(n)]` -/
def P9918661685413476053.Spec : Prop :=
  ∀ n, P9918661685413476053.a n = A212272 n

end A212272

/-! ## A212272.P13930077896586364506

`A000045(n)+n*record[A165487(n)]`
-/

namespace A212272.P13930077896586364506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212272.P13930077896586364506

namespace A212272

/-- `A000045(n)+n*record[A165487(n)]` -/
def P13930077896586364506.Spec : Prop :=
  ∀ n, P13930077896586364506.a n = A212272 n

end A212272

/-! ## A212272.P12260941016097722999

`A000045(n)+n*record[A219031(n)]`
-/

namespace A212272.P12260941016097722999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212272.P12260941016097722999

namespace A212272

/-- `A000045(n)+n*record[A219031(n)]` -/
def P12260941016097722999.Spec : Prop :=
  ∀ n, P12260941016097722999.a n = A212272 n

end A212272

/-!
# A212273: a(n) = n * A000699(n).

The programs for A212273, there is no canonical definition to state claims against.
-/

/-! ## A212273.P11267171443938462147

`(n+1)*A000699(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212273.P11267171443938462147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000699 (n + 1)

end

end A212273.P11267171443938462147

/-! ## A212273.P11282380567880582701

`(n+1)*A286796(∑[n])`
-/

namespace A212273.P11282380567880582701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A286796 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212273.P11282380567880582701

/-! ## A212273.P11772842859763081998

`(n+1)*A172395(2*(n+1))`
-/

namespace A212273.P11772842859763081998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A172395 (2 * (n + 1))

end

end A212273.P11772842859763081998

/-! ## A212273.P9687400989081366635

`record[A000699(A106249(n))*A106249(n)]`
-/

namespace A212273.P9687400989081366635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000699 (A106249 n).toNat * A106249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212273.P9687400989081366635

/-! ## A212273.P17410009425399583048

`record[A000699(A123108(n))*A123108(n)]`
-/

namespace A212273.P17410009425399583048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000699 (A123108 n).toNat * A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212273.P17410009425399583048

/-!
# A212275: Least k such that 4*n*k+1 is a prime of the form m^2+1, or 0 if no such k exists.

The programs for A212275, there is no canonical definition to state claims against.
-/

/-! ## A212275.P887510295631053861

`A350388(∑[A005044(30*(n+1)+1)])*A350389(n+1)`
-/

namespace A212275.P887510295631053861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (30 * (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A350389 (n + 1)

end

end A212275.P887510295631053861

/-!
# A212277: G.f. satisfies: A(x) = x + A(A(x)^2)^2 where g.f. A(x) = Sum_{n>=1} a(n)*x^(3*n-2).

The programs for A212277, there is no canonical definition to state claims against.
-/

/-! ## A212277.P18001185384128491209

`A008621(A220262(n))`
-/

namespace A212277.P18001185384128491209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A220262 n).toNat

end

end A212277.P18001185384128491209

/-! ## A212277.P11071722888678789975

`A008624(A220262(n)+2)`
-/

namespace A212277.P11071722888678789975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A220262 n + 2).toNat

end

end A212277.P11071722888678789975

/-!
# A212278: Number of adjacent pairs of zeros (possibly overlapping) in the representation of n in base of Fibonacci numbers (A014417).

The programs for A212278, the canonical program `A212278.P9636615895971734323` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212278 has offset 0).

The definition of A212278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212278.P9636615895971734323

`A102364(n)-A213911(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A212278

/-- `A102364(n)-A213911(n)` -/
def P9636615895971734323.Spec : Prop :=
  ∀ n, P9636615895971734323.a n = A212278 n

theorem P9636615895971734323.correct : P9636615895971734323.Spec := by
  intro n
  simp only [A212278]

end A212278

/-! ## A212278.P16019289189132192705

`A135818(n+1)-A005614(n)`
-/

namespace A212278.P16019289189132192705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135818 (n + 1) - A005614 n

end

end A212278.P16019289189132192705

namespace A212278

/-- `A135818(n+1)-A005614(n)` -/
def P16019289189132192705.Spec : Prop :=
  ∀ n, P16019289189132192705.a n = A212278 n

end A212278

/-! ## A212278.P13867596695810767763

`A007895(n)+A102364(n)-A104324(n)`
-/

namespace A212278.P13867596695810767763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n + (A102364 n - A104324 n)

end

end A212278.P13867596695810767763

namespace A212278

/-- `A007895(n)+A102364(n)-A104324(n)` -/
def P13867596695810767763.Spec : Prop :=
  ∀ n, P13867596695810767763.a n = A212278 n

theorem P13867596695810767763.correct : P13867596695810767763.Spec := by
  intro n
  simp only [A212278, Nat.add_sub_cancel, A212278.P13867596695810767763.a, A212278.P9636615895971734323.a, A007895, A007895.P13159574906702943091.a, A102364, A102364.P14950148720451937594.a, A104324, A104324.P1859779613873930843.a, A213911, A213911.P10704289243874186372.a, A003849, A003849.P15070805603138295355.a, A010056, A010056.P4215187913350317449.f1, A010056.P4215187913350317449.a, A072649, A072649.P9617326913925617377.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A108852, A108852.P14747039251510576692.a, A022341, A022341.P2847779761458071812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212278

/-! ## A212278.P7066666715078711174

`A092339(A003714(n))`
-/

namespace A212278.P7066666715078711174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (A003714 n).toNat

end

end A212278.P7066666715078711174

namespace A212278

/-- `A092339(A003714(n))` -/
def P7066666715078711174.Spec : Prop :=
  ∀ n, P7066666715078711174.a n = A212278 n

end A212278

/-! ## A212278.P4186942262996493417

`A092339(A022340(n)/2)`
-/

namespace A212278.P4186942262996493417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (SequenceMachineLib.roundAway ((A022340 n : ℚ) / 2)).toNat

end

end A212278.P4186942262996493417

namespace A212278

/-- `A092339(A022340(n)/2)` -/
def P4186942262996493417.Spec : Prop :=
  ∀ n, P4186942262996493417.a n = A212278 n

end A212278

/-! ## A212278.P1583772511923977916

`A107782(eq[1, A085357(n)])`
-/

namespace A212278.P1583772511923977916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212278.P1583772511923977916

namespace A212278

/-- `A107782(eq[1, A085357(n)])` -/
def P1583772511923977916.Spec : Prop :=
  ∀ n, P1583772511923977916.a n = A212278 n

end A212278

/-! ## A212278.P6306522841192646280

`A107782(eq[1, A132971(n)²])`
-/

namespace A212278.P6306522841192646280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212278.P6306522841192646280

namespace A212278

/-- `A107782(eq[1, A132971(n)²])` -/
def P6306522841192646280.Spec : Prop :=
  ∀ n, P6306522841192646280.a n = A212278 n

end A212278

/-! ## A212278.P17195579264339313835

`A107782(A003714(2*n-n))`
-/

namespace A212278.P17195579264339313835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (A003714 (2 * n - n)).toNat

end

end A212278.P17195579264339313835

namespace A212278

/-- `A107782(A003714(2*n-n))` -/
def P17195579264339313835.Spec : Prop :=
  ∀ n, P17195579264339313835.a n = A212278 n

end A212278

/-! ## A212278.P13671457281859621289

`A107782(A360434(A003754(n+1)))`
-/

namespace A212278.P13671457281859621289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (A360434 (A003754 (n + 1)).toNat).toNat

end

end A212278.P13671457281859621289

namespace A212278

/-- `A107782(A360434(A003754(n+1)))` -/
def P13671457281859621289.Spec : Prop :=
  ∀ n, P13671457281859621289.a n = A212278 n

end A212278

/-! ## A212278.P15681824694578817599

`A107782(A003714(n+1)-1)`
-/

namespace A212278.P15681824694578817599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (A003714 (n + 1) - 1).toNat

end

end A212278.P15681824694578817599

namespace A212278

/-- `A107782(A003714(n+1)-1)` -/
def P15681824694578817599.Spec : Prop :=
  ∀ n, P15681824694578817599.a n = A212278 n

end A212278

/-! ## A212278.P6004371767228730883

`A080791(lt[A000120(n+1), A089080(n+2)])`
-/

namespace A212278.P6004371767228730883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A212278.P6004371767228730883

namespace A212278

/-- `A080791(lt[A000120(n+1), A089080(n+2)])` -/
def P6004371767228730883.Spec : Prop :=
  ∀ n, P6004371767228730883.a n = A212278 n

end A212278

/-! ## A212278.P17426551372209404017

`A080791(record[A003188(n)])`
-/

namespace A212278.P17426551372209404017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A212278.P17426551372209404017

namespace A212278

/-- `A080791(record[A003188(n)])` -/
def P17426551372209404017.Spec : Prop :=
  ∀ n, P17426551372209404017.a n = A212278 n

end A212278

/-! ## A212278.P14986334689886801812

`A080791(record[A269170(n)])`
-/

namespace A212278.P14986334689886801812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A212278.P14986334689886801812

namespace A212278

/-- `A080791(record[A269170(n)])` -/
def P14986334689886801812.Spec : Prop :=
  ∀ n, P14986334689886801812.a n = A212278 n

end A212278

/-! ## A212278.P8137744828905209369

`A080791(A295897(n+1))`
-/

namespace A212278.P8137744828905209369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A295897 (n + 1)).toNat

end

end A212278.P8137744828905209369

namespace A212278

/-- `A080791(A295897(n+1))` -/
def P8137744828905209369.Spec : Prop :=
  ∀ n, P8137744828905209369.a n = A212278 n

end A212278

/-! ## A212278.P5537895708520488388

`A056973(A118113(n))`
-/

namespace A212278.P5537895708520488388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A118113 n).toNat

end

end A212278.P5537895708520488388

namespace A212278

/-- `A056973(A118113(n))` -/
def P5537895708520488388.Spec : Prop :=
  ∀ n, P5537895708520488388.a n = A212278 n

end A212278

/-! ## A212278.P94662203729743876

`A056973(A022340(n)+1)`
-/

namespace A212278.P94662203729743876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A022340 n + 1).toNat

end

end A212278.P94662203729743876

namespace A212278

/-- `A056973(A022340(n)+1)` -/
def P94662203729743876.Spec : Prop :=
  ∀ n, P94662203729743876.a n = A212278 n

end A212278

/-! ## A212278.P12335525809191353248

`A056973(2*A003714(n)+1)`
-/

namespace A212278.P12335525809191353248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (2 * A003714 n + 1).toNat

end

end A212278.P12335525809191353248

namespace A212278

/-- `A056973(2*A003714(n)+1)` -/
def P12335525809191353248.Spec : Prop :=
  ∀ n, P12335525809191353248.a n = A212278 n

end A212278

/-! ## A212278.P16582117354241500297

`A056973(A003714(n+1)+A003714(n))`
-/

namespace A212278.P16582117354241500297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A003714 (n + 1) + A003714 n).toNat

end

end A212278.P16582117354241500297

namespace A212278

/-- `A056973(A003714(n+1)+A003714(n))` -/
def P16582117354241500297.Spec : Prop :=
  ∀ n, P16582117354241500297.a n = A212278 n

end A212278

/-! ## A212278.P9837657908666482467

`A023416(lt[A000120(n+1), A001511(n+1)])`
-/

namespace A212278.P9837657908666482467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A212278.P9837657908666482467

namespace A212278

/-- `A023416(lt[A000120(n+1), A001511(n+1)])` -/
def P9837657908666482467.Spec : Prop :=
  ∀ n, P9837657908666482467.a n = A212278 n

end A212278

/-! ## A212278.P17330343419351925068

`A023416(lt[A000120(n), 2*A007814(n+1)])`
-/

namespace A212278.P17330343419351925068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A212278.P17330343419351925068

namespace A212278

/-- `A023416(lt[A000120(n), 2*A007814(n+1)])` -/
def P17330343419351925068.Spec : Prop :=
  ∀ n, P17330343419351925068.a n = A212278 n

end A212278

/-!
# A212279: A002144(n+1)^2+1 mod A002144(n), where A002144 are the Pythagorean primes (p=4k+1).

The programs for A212279, there is no canonical definition to state claims against.
-/

/-! ## A212279.P14458212412623173173

`(A002313(n+2)²+1)%A002144(n+2)`
-/

namespace A212279.P14458212412623173173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002313 (n + 2) ^ 2 + 1) (A002144 (n + 2))

end

end A212279.P14458212412623173173

/-! ## A212279.P14181539557235494183

`A002522(xor(1, p?[4*n+1]-1))%A002144(n+2)`
-/

namespace A212279.P14181539557235494183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 (Int.xor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)).toNat) (A002144 (n + 2))

end

end A212279.P14181539557235494183

/-! ## A212279.P17618620766631916757

`A001157(A002144(n+1))%A002144(n+2)`
-/

namespace A212279.P17618620766631916757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001157 (A002144 (n + 1)).toNat) (A002144 (n + 2))

end

end A212279.P17618620766631916757

/-! ## A212279.P2124500417892893334

`A002522(A002144(n+1))%A002313(n+3)`
-/

namespace A212279.P2124500417892893334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 (A002144 (n + 1)).toNat) (A002313 (n + 3))

end

end A212279.P2124500417892893334

/-! ## A212279.P18282588443438355506

`A001157(A002313(n+2))%A002313(n+3)`
-/

namespace A212279.P18282588443438355506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001157 (A002313 (n + 2)).toNat) (A002313 (n + 3))

end

end A212279.P18282588443438355506

/-! ## A212279.P6393410800020013901

`A002522(A002313(n+2))%A280084(n+3)`
-/

namespace A212279.P6393410800020013901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 (A002313 (n + 2)).toNat) (A280084 (n + 3))

end

end A212279.P6393410800020013901

/-! ## A212279.P6045086774049867166

`A002522(Δ[A002144(n+1)])%A002144(n+2)`
-/

namespace A212279.P6045086774049867166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 (f1 (n + 1) - f1 n).toNat) (A002144 (n + 2))

end

end A212279.P6045086774049867166

/-!
# A212280: G.f. A(x)=1/(1-F(x)), where F(F(x)) = (1 - sqrt(1-16*x))/8.

The programs for A212280, there is no canonical definition to state claims against.
-/

/-! ## A212280.P17093356200429053523

`A004396((C(2*n, n)/(n+1))²+1)`
-/

namespace A212280.P17093356200429053523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway (((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)) ^ 2 + 1)).toNat

end

end A212280.P17093356200429053523

/-! ## A212280.P16980095221808728640

`A099254(2*(C(2*n, n)/(n+1))²)`
-/

namespace A212280.P16980095221808728640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (SequenceMachineLib.roundAway (2 * ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)) ^ 2)).toNat

end

end A212280.P16980095221808728640

/-!
# A212281: Minimal m >= 1 such that n!/m+1 is prime.

The programs for A212281, there is no canonical definition to state claims against.
-/

/-! ## A212281.P3144407774529979940

`A206762(round(acot(n)+n))%A139202(n+1)`
-/

namespace A212281.P3144407774529979940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206762 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A139202 (n + 1))

end

end A212281.P3144407774529979940

/-! ## A212281.P5153840469897511032

`A206762(A233583(n+1))%A139202(n+1)`
-/

namespace A212281.P5153840469897511032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206762 (A233583 (n + 1)).toNat) (A139202 (n + 1))

end

end A212281.P5153840469897511032

/-! ## A212281.P9293167618022945679

`A206762(A233583(n+1)^A290104(n+2))`
-/

namespace A212281.P9293167618022945679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206762 (SequenceMachineLib.roundAway ((A233583 (n + 1) : ℚ) ^ (A290104 (n + 2) : ℤ))).toNat

end

end A212281.P9293167618022945679

/-! ## A212281.P18207874463187972301

`A206762(round(acot(n)+n)^A295658(n+1))`
-/

namespace A212281.P18207874463187972301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206762 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℚ) ^ (A295658 (n + 1) : ℤ))).toNat

end

end A212281.P18207874463187972301

/-! ## A212281.P7246818601460283226

`A206762(A233583(n+1)^A295658(n+1))`
-/

namespace A212281.P7246818601460283226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206762 (SequenceMachineLib.roundAway ((A233583 (n + 1) : ℚ) ^ (A295658 (n + 1) : ℤ))).toNat

end

end A212281.P7246818601460283226

/-!
# A212282: Minimal m >= 1 such that n!/m-1 is prime.

The programs for A212282, there is no canonical definition to state claims against.
-/

/-! ## A212282.P17690306141578536036

`(n+3)!%A089137(n+1)`
-/

namespace A212282.P17690306141578536036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (n + 3) : ℤ) (A089137 (n + 1))

end

end A212282.P17690306141578536036

/-!
# A212287: Primes of the form m*p^2 + 1, where p is prime and m <= p^2.

The programs for A212287, there is no canonical definition to state claims against.
-/

/-! ## A212287.P6929171998105441112

`A082700(∑[gcd(1-n, floor(n/2))!])`
-/

namespace A212287.P6929171998105441112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082700 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212287.P6929171998105441112

/-! ## A212287.P940594943198167874

`A082700(A029447(n+1))`
-/

namespace A212287.P940594943198167874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082700 (A029447 (n + 1)).toNat

end

end A212287.P940594943198167874

/-! ## A212287.P8798043478028050075

`A082700(∑[A007359(n)!])`
-/

namespace A212287.P8798043478028050075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007359 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082700 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212287.P8798043478028050075

/-!
# A212288: Numbers n such that fusc(k) < fusc(n) for all k < n, where fusc is Stern's diatomic series.

The programs for A212288, there is no canonical definition to state claims against.
-/

/-! ## A212288.P7946359601609303636

`A020946(A212289(n+2))`
-/

namespace A212288.P7946359601609303636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A212289 (n + 2)).toNat

end

end A212288.P7946359601609303636

/-! ## A212288.P2727340100635726238

`A020946(record[A295087(n+2)])`
-/

namespace A212288.P2727340100635726238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295087 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A212288.P2727340100635726238

/-! ## A212288.P3721018609907897501

`∑[A270365(n)]`
-/

namespace A212288.P3721018609907897501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212288.P3721018609907897501

/-! ## A212288.P13835866133374785519

`A270365(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A212288.P13835866133374785519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270365 n + a (A028310 n - 1).toNat

end

end A212288.P13835866133374785519

/-! ## A212288.P242056956845447676

`A020946(record[A007306(n)])`
-/

namespace A212288.P242056956845447676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A212288.P242056956845447676

/-! ## A212288.P17438171949471677856

`A020946(record[A002487(n+1)])`
-/

namespace A212288.P17438171949471677856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A212288.P17438171949471677856

/-!
# A212289: Record values in A002487.

The programs for A212289, there is no canonical definition to state claims against.
-/

/-! ## A212289.P2181785443316865231

`record[A295087(n+1)]`
-/

namespace A212289.P2181785443316865231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212289.P2181785443316865231

/-! ## A212289.P8807792232261989703

`record[A002487(n)]`
-/

namespace A212289.P8807792232261989703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212289.P8807792232261989703

/-! ## A212289.P6769032215894944383

`record[A126606(n+1)/2]`
-/

namespace A212289.P6769032215894944383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126606 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212289.P6769032215894944383

/-! ## A212289.P13854991135952050571

`A270362(∑[A270365(n)]-A270365(n))`
-/

namespace A212289.P13854991135952050571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (∑ j ∈ Finset.range (n + 1), f1 j - A270365 n).toNat

end

end A212289.P13854991135952050571

/-! ## A212289.P12189285315516820313

`A002487(A212288(n+1)-A270365(n))`
-/

namespace A212289.P12189285315516820313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A212288 (n + 1) - A270365 n).toNat

end

end A212289.P12189285315516820313

/-! ## A212289.P1869839543233580147

`A270362(A212288(n+1)-A270365(n))`
-/

namespace A212289.P1869839543233580147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (A212288 (n + 1) - A270365 n).toNat

end

end A212289.P1869839543233580147

/-! ## A212289.P9807252454460316404

`A270362(A212288(n+1)-1)`
-/

namespace A212289.P9807252454460316404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (A212288 (n + 1) - 1).toNat

end

end A212289.P9807252454460316404

/-! ## A212289.P15037184352146618030

`record[A270362(n-A270362(n))]`
-/

namespace A212289.P15037184352146618030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 ((n : ℤ) - A270362 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212289.P15037184352146618030

/-! ## A212289.P10584849483306637143

`record[A007305(n)]`
-/

namespace A212289.P10584849483306637143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212289.P10584849483306637143

/-! ## A212289.P4095400577115699893

`record[A057431(n)]`
-/

namespace A212289.P4095400577115699893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212289.P4095400577115699893

/-!
# A212291: Number of permutations of n elements with at most one fixed point.

The programs for A212291, there is no canonical definition to state claims against.
-/

/-! ## A212291.P12455402273885813583

`xor(1, n*a(n-1))-n*(-1)^n` with `a(0)=1`
-/

namespace A212291.P12455402273885813583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 ((n : ℤ) * a (n - 1)) - (n : ℤ) * (-1) ^ n

end

end A212291.P12455402273885813583

/-! ## A212291.P2904473353063650294

`n*a(n-1)-(-1)^n*(n-1)` with `a(0)=1`
-/

namespace A212291.P2904473353063650294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - (-1) ^ n * ((n : ℤ) - 1)

end

end A212291.P2904473353063650294

/-! ## A212291.P8738491346217107372

`xor(1, a(n-1)/n^(-1))+n/(n-xor(1, n))` with `a(0)=1`
-/

namespace A212291.P8738491346217107372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) / (n : ℚ) ^ (-1 : ℤ))) : ℚ) + (n : ℚ) / ((n : ℤ) - (Nat.xor 1 n : ℤ) : ℚ)

end

end A212291.P8738491346217107372

/-! ## A212291.P15266273737201829164

`n*(Δ[or(1, n)]-1)+(-1)^n+n*a(n-1)` with `a(0)=1`
-/

namespace A212291.P15266273737201829164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1) + ((-1) ^ n + (n : ℤ) * a (n - 1))

end

end A212291.P15266273737201829164

/-! ## A212291.P7209180587811438902

`2*A174318(n)-1`
-/

namespace A212291.P7209180587811438902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174318 n - 1

end

end A212291.P7209180587811438902

/-! ## A212291.P11730586769609526063

`abs(A056158(n+3)+3)`
-/

namespace A212291.P11730586769609526063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056158 (n + 3) + 3|

end

end A212291.P11730586769609526063

/-! ## A212291.P5497834165225966709

`2*A000166(n)-A033999(n)`
-/

namespace A212291.P5497834165225966709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000166 n - A033999 n

end

end A212291.P5497834165225966709

/-! ## A212291.P4522698418405586390

`A000166(n)+A033999(n+1)+A000166(n)`
-/

namespace A212291.P4522698418405586390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n + (A033999 (n + 1) + A000166 n)

end

end A212291.P4522698418405586390

/-! ## A212291.P10454887284057033657

`A348311(n+1)/(n+1)`
-/

namespace A212291.P10454887284057033657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348311 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A212291.P10454887284057033657

/-! ## A212291.P11134198141553128616

`A344262(n)-A344418(n)`
-/

namespace A212291.P11134198141553128616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344262 n - A344418 n

end

end A212291.P11134198141553128616

/-!
# A212292: Odd numbers not of the form p^2 + q^2 + r with p, q, and r prime.

The programs for A212292, there is no canonical definition to state claims against.
-/

/-! ## A212292.P12506660346030004429

`∩[2*n+1, A283248(n+1)]`
-/

namespace A212292.P12506660346030004429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212292.P12506660346030004429

/-! ## A212292.P17396391872831924741

`A005408(eq[0, A262436(n+1)])`
-/

namespace A212292.P17396391872831924741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212292.P17396391872831924741

/-! ## A212292.P2151704036263410689

`A005408(lt[A262436(n+1), 1])`
-/

namespace A212292.P2151704036263410689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262436 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A212292.P2151704036263410689

/-! ## A212292.P527729715855687294

`filter[A283248(n+1), A000035(#)]`
-/

namespace A212292.P527729715855687294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A212292.P527729715855687294

/-! ## A212292.P13619425753708318372

`filter[A283248(n+2), A356172(#)]`
-/

namespace A212292.P13619425753708318372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A212292.P13619425753708318372

/-!
# A212293: Integer part of n*log(n)^2.

The programs for A212293, the canonical program `A212293.P15537083791619495155` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212293 has offset 1).

The definition of A212293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212293.P15537083791619495155

`floor((n+1)*log(n+1)²)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212293

/-- `floor((n+1)*log(n+1)²)` -/
def P15537083791619495155.Spec : Prop :=
  ∀ n, P15537083791619495155.a n = A212293 (n + 1)

theorem P15537083791619495155.correct : P15537083791619495155.Spec := by
  intro n
  simp only [A212293, Nat.add_sub_cancel]

end A212293

/-! ## A212293.P15885041527122881511

`∑[A121857(A048766(A018808(n)))]`
-/

namespace A212293.P15885041527122881511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 (A048766 (A018808 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212293.P15885041527122881511

namespace A212293

/-- `∑[A121857(A048766(A018808(n)))]` -/
def P15885041527122881511.Spec : Prop :=
  ∀ n, P15885041527122881511.a n = A212293 (n + 1)

end A212293

/-! ## A212293.P15920132613753348915

`∑[∑[A105198(A019205(n+3))]]`
-/

namespace A212293.P15920132613753348915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105198 (A019205 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212293.P15920132613753348915

namespace A212293

/-- `∑[∑[A105198(A019205(n+3))]]` -/
def P15920132613753348915.Spec : Prop :=
  ∀ n, P15920132613753348915.a n = A212293 (n + 1)

end A212293

/-! ## A212293.P12919941905710477123

`A135661(A069778(2*n))-n`
-/

namespace A212293.P12919941905710477123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A069778 (2 * n)).toNat - (n : ℤ)

end

end A212293.P12919941905710477123

namespace A212293

/-- `A135661(A069778(2*n))-n` -/
def P12919941905710477123.Spec : Prop :=
  ∀ n, P12919941905710477123.a n = A212293 (n + 1)

end A212293

/-! ## A212293.P18274408579455417785

`A276611(A173502(n+1))`
-/

namespace A212293.P18274408579455417785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A173502 (n + 1)).toNat

end

end A212293.P18274408579455417785

namespace A212293

/-- `A276611(A173502(n+1))` -/
def P18274408579455417785.Spec : Prop :=
  ∀ n, P18274408579455417785.a n = A212293 (n + 1)

end A212293

/-!
# A212294: Sums of (zero or more) distinct twin primes.

The programs for A212294, there is no canonical definition to state claims against.
-/

/-! ## A212294.P12780252752926050467

`ceil((atan(n)+1)²-(ϕ-n))`
-/

namespace A212294.P12780252752926050467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (n : ℝ) + 1) ^ 2 - (Real.goldenRatio - (n : ℝ))⌉

end

end A212294.P12780252752926050467

