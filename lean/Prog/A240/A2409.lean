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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
# A240900: Consider a number of k digits n = d_(k)*10^(k-1) + d_(k-1)*10^(k-2) + … + d_(2)*10 + d_(1). Sequence lists the numbers n such that sigma(n) - n = Sum_{i=1..k-1}{phi(Sum_{j=1..i}{d_(k-j+1)*10^(i-j)})} (see example below).

The programs for A240900, there is no canonical definition to state claims against.
-/

/-! ## A240900.P18089500520501361327

`A003961(or(A000040(n+4), A287764(n+1)))`
-/

namespace A240900.P18089500520501361327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.lor (A000040 (n + 4)) (A287764 (n + 1))).toNat

end

end A240900.P18089500520501361327

/-!
# A240904: Number of lattice paths from (0,0) to (n,0) that do not go below the x-axis or above the diagonal x=y and consist of steps u=(1,1), U=(1,3), H=(1,0), d=(1,-1) and D=(1,-3).

The programs for A240904, there is no canonical definition to state claims against.
-/

/-! ## A240904.P5497894424297699289

`A247505(A034360(n+1))+A148203(n)`
-/

namespace A240904.P5497894424297699289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (A034360 (n + 1)).toNat + A148203 n

end

end A240904.P5497894424297699289

/-! ## A240904.P4877482864927849602

`A351005(or(1, C(n, 2)+n²))`
-/

namespace A240904.P4877482864927849602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (Nat.lor 1 (Nat.choose n 2 + n ^ 2))

end

end A240904.P4877482864927849602

/-! ## A240904.P9521351811332882536

`A351005(∑[record[∏{p}[n+1, #-1]]])`
-/

namespace A240904.P9521351811332882536
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A240904.P9521351811332882536

/-!
# A240905: Smallest k such that the minimal factor in factorization of k! over distinct terms of A050376 is A050376(n), or a(n) = 0 if there is no such k.

The programs for A240905, there is no canonical definition to state claims against.
-/

/-! ## A240905.P4497457043232344744

`A293750(xor(A293732(n), A293779(3*n+1)))`
-/

namespace A240905.P4497457043232344744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293750 (Int.xor (A293732 n) (A293779 (3 * n + 1))).toNat

end

end A240905.P4497457043232344744

/-! ## A240905.P15988443709239433720

`lcm(A115728(A025049(2*n+1)), A272888(n+4))`
-/

namespace A240905.P15988443709239433720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115728 (A025049 (2 * n + 1)).toNat) (A272888 (n + 4))

end

end A240905.P15988443709239433720

/-!
# A240906: Maximal A050376-factors in factorization of factorials over distinct terms of A050376.

The programs for A240906, there is no canonical definition to state claims against.
-/

/-! ## A240906.P3656327637917348935

`record[A177334(A055460(n+1)+2)]`
-/

namespace A240906.P3656327637917348935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177334 (A055460 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240906.P3656327637917348935

/-! ## A240906.P14517966569006780504

`record[A177334(A064380(n+2)+1)]`
-/

namespace A240906.P14517966569006780504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177334 (A064380 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240906.P14517966569006780504

/-! ## A240906.P1133294588500076059

`record[A177334(A177329(n+2)+1)]`
-/

namespace A240906.P1133294588500076059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177334 (A177329 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240906.P1133294588500076059

/-! ## A240906.P7753749081155241025

`record[A177334(n+2)-A194186(n+1)]`
-/

namespace A240906.P7753749081155241025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177334 (n + 2) - A194186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240906.P7753749081155241025

/-! ## A240906.P14721669022787657541

`record[root(A177334(n+2), A177343(n+1))]`
-/

namespace A240906.P14721669022787657541
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A177334 (n + 2) : ℝ) ^ (1 / (A177343 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240906.P14721669022787657541

/-!
# A240909: The sequency numbers of the 16 rows of a Hadamard-Walsh matrix of order 16.

The programs for A240909, there is no canonical definition to state claims against.
-/

/-! ## A240909.P1990587984320546219

`A240910(Δ[n²])`
-/

namespace A240909.P1990587984320546219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240910 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A240909.P1990587984320546219

/-! ## A240909.P15203881436204330630

`floor(A240910(n+1)/2)`
-/

namespace A240909.P15203881436204330630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A240910 (n + 1) : ℚ) / 2⌋

end

end A240909.P15203881436204330630

/-! ## A240909.P10371580842108725096

`31-A240910(2*(n+1))`
-/

namespace A240909.P10371580842108725096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 - A240910 (2 * (n + 1))

end

end A240909.P10371580842108725096

/-! ## A240909.P6956063987327547876

`A240910(2*n+1)%21`
-/

namespace A240909.P6956063987327547876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240910 (2 * n + 1)) 21

end

end A240909.P6956063987327547876

/-! ## A240909.P12381285100379965476

`A300839(A126006(n))`
-/

namespace A240909.P12381285100379965476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300839 (A126006 n).toNat

end

end A240909.P12381285100379965476

/-!
# A240910: The sequency numbers of the 32 rows of a Hadamard-Walsh matrix, order 32.

The programs for A240910, there is no canonical definition to state claims against.
-/

/-! ## A240910.P2396831508410154825

`A006068(A030109(n+32))`
-/

namespace A240910.P2396831508410154825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A030109 (n + 32)).toNat

end

end A240910.P2396831508410154825

/-! ## A240910.P2956377081961973595

`A292600(A030101(n+32))`
-/

namespace A240910.P2956377081961973595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A030101 (n + 32)).toNat

end

end A240910.P2956377081961973595

/-! ## A240910.P7679244504124019089

`A292600(A002265(A160638(n)))`
-/

namespace A240910.P7679244504124019089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A002265 (A160638 n).toNat).toNat

end

end A240910.P7679244504124019089

/-! ## A240910.P16181093365200041610

`A014601(A240909(n+1))`
-/

namespace A240910.P16181093365200041610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A240909 (n + 1)).toNat

end

end A240910.P16181093365200041610

/-! ## A240910.P15132768382949584229

`A003815(2*A240909(n+1))`
-/

namespace A240910.P15132768382949584229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (2 * A240909 (n + 1)).toNat

end

end A240910.P15132768382949584229

/-!
# A240911: Smallest number greater than a(n-1) divisible by smallest number that is not a divisor of a(n-1).

The programs for A240911, there is no canonical definition to state claims against.
-/

/-! ## A240911.P16220861589456326736

`eq[char[A240912(n+1)], A000007(n)]`
-/

namespace A240911.P16220861589456326736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240912 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A240911.P16220861589456326736

/-! ## A240911.P8251893051422949303

`eq[char[A240912(n+1)], A000038(n)]`
-/

namespace A240911.P8251893051422949303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240912 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A240911.P8251893051422949303

/-! ## A240911.P13953688049991935397

`eq[A008574(n)%2, char[A240912(n+1)]]`
-/

namespace A240911.P13953688049991935397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240912 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A240911.P13953688049991935397

/-! ## A240911.P9225962281400688515

`eq[1, A178334(n)+char[A240912(n+1)]]`
-/

namespace A240911.P9225962281400688515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240912 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240911.P9225962281400688515

/-! ## A240911.P4309234099171286938

`eq[char[A240912(n+1)], A151933(n)]`
-/

namespace A240911.P4309234099171286938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240912 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A240911.P4309234099171286938

/-!
# A240912: Numbers not in A240911.

The programs for A240912, there is no canonical definition to state claims against.
-/

/-! ## A240912.P16551999124781663178

`eq[char[A240911(n+1)], A000007(n)]`
-/

namespace A240912.P16551999124781663178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240911 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A240912.P16551999124781663178

/-! ## A240912.P7376313628565227880

`eq[char[A240911(n+1)], A000038(n)]`
-/

namespace A240912.P7376313628565227880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240911 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A240912.P7376313628565227880

/-! ## A240912.P14294741068641504467

`eq[char[A240911(n+1)], A055672(2*(n+1))]`
-/

namespace A240912.P14294741068641504467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240911 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A240912.P14294741068641504467

/-! ## A240912.P2878669480431103872

`eq[A065033(2*n)-n, char[A240911(n+1)]]`
-/

namespace A240912.P2878669480431103872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240911 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A240912.P2878669480431103872

/-! ## A240912.P4045075046110950339

`eq[1, A178334(n)+char[A240911(n+1)]]`
-/

namespace A240912.P4045075046110950339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240911 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240912.P4045075046110950339

/-!
# A240913: Numbers m such that GCD of digits of m is 1 and no digit of m is 1.

The programs for A240913, there is no canonical definition to state claims against.
-/

/-! ## A240913.P14865733806269490217

`∩[A052383(n+1), A069715(n+1)]`
-/

namespace A240913.P14865733806269490217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240913.P14865733806269490217

/-! ## A240913.P15951744263751392435

`eq[A004176(n), A350494(A028310(n))]`
-/

namespace A240913.P15951744263751392435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350494 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240913.P15951744263751392435

/-! ## A240913.P796469234882458567

`eq[A064894(A086066(n)), A261794(n)]`
-/

namespace A240913.P796469234882458567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A086066 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240913.P796469234882458567

/-! ## A240913.P13266401775985227618

`eq[A261794(n), A289508(A113581(n))]`
-/

namespace A240913.P13266401775985227618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240913.P13266401775985227618

/-! ## A240913.P14497765387753664467

`eq[A004176(n), A350494(A233583(n+1))]`
-/

namespace A240913.P14497765387753664467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350494 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240913.P14497765387753664467

/-!
# A240914: Semiprimes of the form S(n) + T(n) where S(n) and T(n) are the n-th square and the n-th triangular numbers.

The programs for A240914, the canonical program `A240914.P651125426119913968` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240914 has offset 1).

The definition of A240914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240914.P651125426119913968

`record[A051544(n+3)*A072505(n+3)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A240914

/-- `record[A051544(n+3)*A072505(n+3)]` -/
def P651125426119913968.Spec : Prop :=
  ∀ n, P651125426119913968.a n = A240914 (n + 1)

theorem P651125426119913968.correct : P651125426119913968.Spec := by
  intro n
  simp only [A240914, Nat.add_sub_cancel]

end A240914

/-! ## A240914.P3672059022971620301

`record[A088387(A016777(n+3))*A088387(n+3)]`
-/

namespace A240914.P3672059022971620301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A016777 (n + 3)).toNat * A088387 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240914.P3672059022971620301

namespace A240914

/-- `record[A088387(A016777(n+3))*A088387(n+3)]` -/
def P3672059022971620301.Spec : Prop :=
  ∀ n, P3672059022971620301.a n = A240914 (n + 1)

end A240914

/-! ## A240914.P5819734118074477447

`record[A078833(3*n+10)*A111089(n+3)]`
-/

namespace A240914.P5819734118074477447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078833 (3 * n + 10) * A111089 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240914.P5819734118074477447

namespace A240914

/-- `record[A078833(3*n+10)*A111089(n+3)]` -/
def P5819734118074477447.Spec : Prop :=
  ∀ n, P5819734118074477447.a n = A240914 (n + 1)

end A240914

/-! ## A240914.P6986046336582117912

`filter[A005449(n+1), A354927(#)]`
-/

namespace A240914.P6986046336582117912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A240914.P6986046336582117912

namespace A240914

/-- `filter[A005449(n+1), A354927(#)]` -/
def P6986046336582117912.Spec : Prop :=
  ∀ n, P6986046336582117912.a n = A240914 (n + 1)

end A240914

/-! ## A240914.P14871028947498856686

`filter[A211539(n+2), A354927(#)]`
-/

namespace A240914.P14871028947498856686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A240914.P14871028947498856686

namespace A240914

/-- `filter[A211539(n+2), A354927(#)]` -/
def P14871028947498856686.Spec : Prop :=
  ∀ n, P14871028947498856686.a n = A240914 (n + 1)

end A240914

/-!
# A240915: a(n) is the smallest number k such that digsum(k)/tau(k) = prime(n) where tau(k) is the number of divisors of k and digsum(k) is the sum of the digits of k.

The programs for A240915, there is no canonical definition to state claims against.
-/

/-! ## A240915.P10444924933763107034

`xor(A003178(3*(n+1)), A214830(n+1))`
-/

namespace A240915.P10444924933763107034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003178 (3 * (n + 1))) (A214830 (n + 1))

end

end A240915.P10444924933763107034

/-!
# A240916: a(n) = 6*a(n-1) + 2*2^(n-1) - 2 for n > 2, a(0) = a(1) = 0, a(2) = 3.

The programs for A240916, the canonical program `A240916.P13766261655645609832` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240916 has offset 0).

The definition of A240916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240916.P13766261655645609832

`6*a(n-1)+2*2^(n-1)-2` with `a(0)=0, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240916

/-- `6*a(n-1)+2*2^(n-1)-2` -/
def P13766261655645609832.Spec : Prop :=
  ∀ n, P13766261655645609832.a n = (A240916 n : ℚ)

end A240916

/-! ## A240916.P702884553504954689

`A105511(8*C(A067687(n), 2))`
-/

namespace A240916.P702884553504954689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105511 (8 * Nat.choose (A067687 n).toNat 2)

end

end A240916.P702884553504954689

namespace A240916

/-- `A105511(8*C(A067687(n), 2))` -/
def P702884553504954689.Spec : Prop :=
  ∀ n, P702884553504954689.a n = A240916 n

end A240916

/-!
# A240917: a(n) = 2*3^(2*n) - 3*3^n + 1.

The programs for A240917, the canonical program `A240917.P9694150647865866710` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240917 has offset 0).

The definition of A240917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^(2*n)-3*3^n+1` (program `A240917.P9694150647865866710`, by `A240917.P9694150647865866710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240917.P97234488144596796

`1-3^(1+n)+2*9^n`
-/

namespace A240917.P97234488144596796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (3 ^ (1 + n) : ℤ) + (2 * 9 ^ n : ℤ)

end

end A240917.P97234488144596796

namespace A240917

/-- `1-3^(1+n)+2*9^n` -/
def P97234488144596796.Spec : Prop :=
  ∀ n, P97234488144596796.a n = A240917 n

end A240917

/-! ## A240917.P9694150647865866710

`2*3^(2*n)-3*3^n+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240917

/-- `2*3^(2*n)-3*3^n+1` -/
def P9694150647865866710.Spec : Prop :=
  ∀ n, P9694150647865866710.a n = A240917 n

theorem P9694150647865866710.correct : P9694150647865866710.Spec := by
  intro n
  simp only [A240917]

end A240917

/-! ## A240917.P8551020454196222739

`2*A007742(A003462(n))`
-/

namespace A240917.P8551020454196222739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007742 (A003462 n).toNat

end

end A240917.P8551020454196222739

namespace A240917

/-- `2*A007742(A003462(n))` -/
def P8551020454196222739.Spec : Prop :=
  ∀ n, P8551020454196222739.a n = A240917 n

end A240917

/-! ## A240917.P17418121287699263245

`lcm(1-Δ[3^n], 3^n-1)`
-/

namespace A240917.P17418121287699263245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ((3 ^ n : ℤ) - 1)

end

end A240917.P17418121287699263245

namespace A240917

/-- `lcm(1-Δ[3^n], 3^n-1)` -/
def P17418121287699263245.Spec : Prop :=
  ∀ n, (P17418121287699263245.a n : ℤ) = A240917 n

end A240917

/-! ## A240917.P2437465119549736772

`(3^n-1)*A048473(n)`
-/

namespace A240917.P2437465119549736772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - 1) * A048473 n

end

end A240917.P2437465119549736772

namespace A240917

/-- `(3^n-1)*A048473(n)` -/
def P2437465119549736772.Spec : Prop :=
  ∀ n, P2437465119549736772.a n = A240917 n

theorem P2437465119549736772.correct : P2437465119549736772.Spec := by
  intro n
  simp only [A240917, Nat.add_sub_cancel, A240917.P2437465119549736772.a, A240917.P9694150647865866710.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A240917

/-! ## A240917.P9480386092883696489

`A003462(n)*A079004(n+2)`
-/

namespace A240917.P9480386092883696489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A079004 (n + 2)

end

end A240917.P9480386092883696489

namespace A240917

/-- `A003462(n)*A079004(n+2)` -/
def P9480386092883696489.Spec : Prop :=
  ∀ n, P9480386092883696489.a n = A240917 n

end A240917

/-! ## A240917.P11705424871866637469

`A024023(n)*A062318(2*(n+1))`
-/

namespace A240917.P11705424871866637469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n * A062318 (2 * (n + 1))

end

end A240917.P11705424871866637469

namespace A240917

/-- `A024023(n)*A062318(2*(n+1))` -/
def P11705424871866637469.Spec : Prop :=
  ∀ n, P11705424871866637469.a n = A240917 n

end A240917

/-! ## A240917.P4189080343905815600

`A048473(n)*A062318(2*n+1)`
-/

namespace A240917.P4189080343905815600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n * A062318 (2 * n + 1)

end

end A240917.P4189080343905815600

namespace A240917

/-- `A048473(n)*A062318(2*n+1)` -/
def P4189080343905815600.Spec : Prop :=
  ∀ n, P4189080343905815600.a n = A240917 n

end A240917

/-! ## A240917.P4860015036117365739

`A048328(2*n)*A060647(2*n)`
-/

namespace A240917.P4860015036117365739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (2 * n) * A060647 (2 * n)

end

end A240917.P4860015036117365739

namespace A240917

/-- `A048328(2*n)*A060647(2*n)` -/
def P4860015036117365739.Spec : Prop :=
  ∀ n, P4860015036117365739.a n = A240917 n

end A240917

/-! ## A240917.P4890568789527595281

`A060647(2*n)*A062318(2*n+1)`
-/

namespace A240917.P4890568789527595281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 (2 * n) * A062318 (2 * n + 1)

end

end A240917.P4890568789527595281

namespace A240917

/-- `A060647(2*n)*A062318(2*n+1)` -/
def P4890568789527595281.Spec : Prop :=
  ∀ n, P4890568789527595281.a n = A240917 n

end A240917

/-! ## A240917.P17563212115138085628

`A062318(2*n+1)*A062318(2*(n+1))`
-/

namespace A240917.P17563212115138085628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (2 * n + 1) * A062318 (2 * (n + 1))

end

end A240917.P17563212115138085628

namespace A240917

/-- `A062318(2*n+1)*A062318(2*(n+1))` -/
def P17563212115138085628.Spec : Prop :=
  ∀ n, P17563212115138085628.a n = A240917 n

end A240917

/-! ## A240917.P7626101724286887049

`(A024023(n)+A000244(n))*A024023(n)`
-/

namespace A240917.P7626101724286887049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A000244 n) * A024023 n

end

end A240917.P7626101724286887049

namespace A240917

/-- `(A024023(n)+A000244(n))*A024023(n)` -/
def P7626101724286887049.Spec : Prop :=
  ∀ n, P7626101724286887049.a n = A240917 n

theorem P7626101724286887049.correct : P7626101724286887049.Spec := by
  intro n
  simp only [A240917, Nat.add_sub_cancel, A240917.P7626101724286887049.a, A240917.P9694150647865866710.a, A000244, A000244.P17162167222172810417.a, A024023, A024023.P3457506902639293536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A240917

/-! ## A240917.P4714008096108592375

`(A003462(n+1)+A003462(n))*A024023(n)`
-/

namespace A240917.P4714008096108592375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003462 (n + 1) + A003462 n) * A024023 n

end

end A240917.P4714008096108592375

namespace A240917

/-- `(A003462(n+1)+A003462(n))*A024023(n)` -/
def P4714008096108592375.Spec : Prop :=
  ∀ n, P4714008096108592375.a n = A240917 n

end A240917

/-! ## A240917.P8157723890665808701

`(A134931(n)+A003462(n+1))*A003462(n)`
-/

namespace A240917.P8157723890665808701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134931 n + A003462 (n + 1)) * A003462 n

end

end A240917.P8157723890665808701

namespace A240917

/-- `(A134931(n)+A003462(n+1))*A003462(n)` -/
def P8157723890665808701.Spec : Prop :=
  ∀ n, P8157723890665808701.a n = A240917 n

end A240917

/-! ## A240917.P12523252826131998794

`(A103453(n+1)+A103453(n))*A003462(n)`
-/

namespace A240917.P12523252826131998794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103453 (n + 1) + A103453 n) * A003462 n

end

end A240917.P12523252826131998794

namespace A240917

/-- `(A103453(n+1)+A103453(n))*A003462(n)` -/
def P12523252826131998794.Spec : Prop :=
  ∀ n, P12523252826131998794.a n = A240917 n

end A240917

/-! ## A240917.P10482652844160083674

`(A058481(n+1)-A024023(n))*A024023(n)`
-/

namespace A240917.P10482652844160083674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058481 (n + 1) - A024023 n) * A024023 n

end

end A240917.P10482652844160083674

namespace A240917

/-- `(A058481(n+1)-A024023(n))*A024023(n)` -/
def P10482652844160083674.Spec : Prop :=
  ∀ n, P10482652844160083674.a n = A240917 n

theorem P10482652844160083674.correct : P10482652844160083674.Spec := by
  intro n
  simp only [A240917, Nat.add_sub_cancel, A240917.P10482652844160083674.a, A240917.P9694150647865866710.a, A024023, A024023.P3457506902639293536.a, A058481, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A240917

/-! ## A240917.P8497397043752245368

`C(Δ[3^n]-1, 2)`
-/

namespace A240917.P8497397043752245368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat 2

end

end A240917.P8497397043752245368

namespace A240917

/-- `C(Δ[3^n]-1, 2)` -/
def P8497397043752245368.Spec : Prop :=
  ∀ n, (P8497397043752245368.a n : ℤ) = A240917 n

end A240917

/-!
# A240919: Sequence whose n-th term is the sum of the first n digits in the concatenation of the base 10-representation of the sequence.

The programs for A240919, there is no canonical definition to state claims against.
-/

/-! ## A240919.P17194822340721540433

`A107975(A233583(n+1))-floor(acot(n))`
-/

namespace A240919.P17194822340721540433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107975 (A233583 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A240919.P17194822340721540433

/-! ## A240919.P402042306238620026

`A107975(A233583(n%a(n-1)+1))` with `a(0)=9`
-/

namespace A240919.P402042306238620026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A107975 (A233583 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat).toNat

end

end A240919.P402042306238620026

/-! ## A240919.P12341660241711183962

`A107975(A233583(n+1))-A000007(n)`
-/

namespace A240919.P12341660241711183962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107975 (A233583 (n + 1)).toNat - A000007 n

end

end A240919.P12341660241711183962

/-! ## A240919.P1730974135018611100

`A107975(A233583(n+1))-A151933(n)`
-/

namespace A240919.P1730974135018611100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107975 (A233583 (n + 1)).toNat - A151933 n

end

end A240919.P1730974135018611100

/-! ## A240919.P6010965467950734670

`A107975(A233583(n+1))-A028586(n²)`
-/

namespace A240919.P6010965467950734670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107975 (A233583 (n + 1)).toNat - A028586 (n ^ 2)

end

end A240919.P6010965467950734670

/-! ## A240919.P1889894501146951640

`A107975(A233583(n+1))-and(1, A005897(n))`
-/

namespace A240919.P1889894501146951640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107975 (A233583 (n + 1)).toNat - Int.land 1 (A005897 n)

end

end A240919.P1889894501146951640

/-! ## A240919.P8820253562120920443

`A107975(A233583(n+1))-A010052(n²+1)`
-/

namespace A240919.P8820253562120920443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107975 (A233583 (n + 1)).toNat - A010052 (n ^ 2 + 1)

end

end A240919.P8820253562120920443

/-! ## A240919.P12238792942329715849

`A107975(A233583(n+1))-A000010(n+2)%2`
-/

namespace A240919.P12238792942329715849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107975 (A233583 (n + 1)).toNat - Int.tmod (A000010 (n + 2)) 2

end

end A240919.P12238792942329715849

/-! ## A240919.P8455865968936259573

`A107975(A233583(n+1))-C(2, A000040(n+1))`
-/

namespace A240919.P8455865968936259573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107975 (A233583 (n + 1)).toNat - (Nat.choose 2 (A000040 (n + 1)).toNat : ℤ)

end

end A240919.P8455865968936259573

/-! ## A240919.P12009203909273550267

`A107975(A233583(n+1))+A008683(2*(n+1)²)`
-/

namespace A240919.P12009203909273550267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107975 (A233583 (n + 1)).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A240919.P12009203909273550267

/-!
# A240920: Prime numbers that occur as divisors of numbers of the form m^2 + 5.

The programs for A240920, the canonical program `A240920.P4995652723862368073` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240920 has offset 1).

The definition of A240920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8964 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240920.P15930302376364309099

`p?[A091727(n+1)]`
-/

namespace A240920.P15930302376364309099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240920.P15930302376364309099

namespace A240920

/-- `p?[A091727(n+1)]` -/
def P15930302376364309099.Spec : Prop :=
  ∀ n, P15930302376364309099.a n = A240920 (n + 1)

end A240920

/-! ## A240920.P16640706147103157275

`∩[A015919(n+1), A091727(n+1)]`
-/

namespace A240920.P16640706147103157275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P16640706147103157275

namespace A240920

/-- `∩[A015919(n+1), A091727(n+1)]` -/
def P16640706147103157275.Spec : Prop :=
  ∀ n, (P16640706147103157275.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P4988836390091417970

`∩[A066720(n+1), A091727(n+1)]`
-/

namespace A240920.P4988836390091417970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P4988836390091417970

namespace A240920

/-- `∩[A066720(n+1), A091727(n+1)]` -/
def P4988836390091417970.Spec : Prop :=
  ∀ n, (P4988836390091417970.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P4995652723862368073

`p?[2*n-n%10]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240920

/-- `p?[2*n-n%10]` -/
def P4995652723862368073.Spec : Prop :=
  ∀ n, P4995652723862368073.a n = A240920 (n + 1)

theorem P4995652723862368073.correct : P4995652723862368073.Spec := by
  intro n
  simp only [A240920, Nat.add_sub_cancel]

end A240920

/-! ## A240920.P17029594636833894923

`p?[abs((n+1)%10-(n+2)-n)]`
-/

namespace A240920.P17029594636833894923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 1) % 10 : ℕ) : ℤ) - (n + 2 : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240920.P17029594636833894923

namespace A240920

/-- `p?[abs((n+1)%10-(n+2)-n)]` -/
def P17029594636833894923.Spec : Prop :=
  ∀ n, P17029594636833894923.a n = A240920 (n + 1)

end A240920

/-! ## A240920.P12893031263700572440

`p?[A008592(floor(n/10))+n]`
-/

namespace A240920.P12893031263700572440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 ⌊(n : ℚ) / 10⌋.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240920.P12893031263700572440

namespace A240920

/-- `p?[A008592(floor(n/10))+n]` -/
def P12893031263700572440.Spec : Prop :=
  ∀ n, P12893031263700572440.a n = A240920 (n + 1)

end A240920

/-! ## A240920.P8241464713084226111

`∩[A000040(n+1), A091727(n+1)]`
-/

namespace A240920.P8241464713084226111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P8241464713084226111

namespace A240920

/-- `∩[A000040(n+1), A091727(n+1)]` -/
def P8241464713084226111.Spec : Prop :=
  ∀ n, (P8241464713084226111.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P7305075815763907994

`∩[A008578(n+1), A091727(n+1)]`
-/

namespace A240920.P7305075815763907994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P7305075815763907994

namespace A240920

/-- `∩[A008578(n+1), A091727(n+1)]` -/
def P7305075815763907994.Spec : Prop :=
  ∀ n, (P7305075815763907994.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P3658243703469626051

`∩[A046022(n+1), A091727(n+1)]`
-/

namespace A240920.P3658243703469626051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P3658243703469626051

namespace A240920

/-- `∩[A046022(n+1), A091727(n+1)]` -/
def P3658243703469626051.Spec : Prop :=
  ∀ n, (P3658243703469626051.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P6371468516812524835

`∩[A051948(n+1), A091727(n+1)]`
-/

namespace A240920.P6371468516812524835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P6371468516812524835

namespace A240920

/-- `∩[A051948(n+1), A091727(n+1)]` -/
def P6371468516812524835.Spec : Prop :=
  ∀ n, (P6371468516812524835.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P13757844930612109248

`∩[A053813(n+1), A091727(n+1)]`
-/

namespace A240920.P13757844930612109248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P13757844930612109248

namespace A240920

/-- `∩[A053813(n+1), A091727(n+1)]` -/
def P13757844930612109248.Spec : Prop :=
  ∀ n, (P13757844930612109248.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P1816161277398934526

`∩[A067126(n+1), A091727(n+1)]`
-/

namespace A240920.P1816161277398934526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P1816161277398934526

namespace A240920

/-- `∩[A067126(n+1), A091727(n+1)]` -/
def P1816161277398934526.Spec : Prop :=
  ∀ n, (P1816161277398934526.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P13944950574795758929

`∩[A055977(n+1), A091727(n+1)]`
-/

namespace A240920.P13944950574795758929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P13944950574795758929

namespace A240920

/-- `∩[A055977(n+1), A091727(n+1)]` -/
def P13944950574795758929.Spec : Prop :=
  ∀ n, (P13944950574795758929.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P8168410009559296389

`∩[A091727(n+1), A260442(n)]`
-/

namespace A240920.P8168410009559296389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P8168410009559296389

namespace A240920

/-- `∩[A091727(n+1), A260442(n)]` -/
def P8168410009559296389.Spec : Prop :=
  ∀ n, (P8168410009559296389.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P17324937469542199505

`∩[A091727(n+1), A117283(n+1)]`
-/

namespace A240920.P17324937469542199505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P17324937469542199505

namespace A240920

/-- `∩[A091727(n+1), A117283(n+1)]` -/
def P17324937469542199505.Spec : Prop :=
  ∀ n, (P17324937469542199505.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P15048982652426517481

`∩[A084111(n+1), A091727(n+1)]`
-/

namespace A240920.P15048982652426517481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P15048982652426517481

namespace A240920

/-- `∩[A084111(n+1), A091727(n+1)]` -/
def P15048982652426517481.Spec : Prop :=
  ∀ n, (P15048982652426517481.a n : ℤ) = A240920 (n + 1)

end A240920

/-! ## A240920.P5044658362798083532

`filter[A091727(n+1), A008966(#)]`
-/

namespace A240920.P5044658362798083532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A240920.P5044658362798083532

namespace A240920

/-- `filter[A091727(n+1), A008966(#)]` -/
def P5044658362798083532.Spec : Prop :=
  ∀ n, P5044658362798083532.a n = A240920 (n + 1)

end A240920

/-! ## A240920.P12922541696351771227

`filter[A091727(n+1), A010051(#)]`
-/

namespace A240920.P12922541696351771227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A240920.P12922541696351771227

namespace A240920

/-- `filter[A091727(n+1), A010051(#)]` -/
def P12922541696351771227.Spec : Prop :=
  ∀ n, P12922541696351771227.a n = A240920 (n + 1)

end A240920

/-! ## A240920.P8882355798793319648

`filter[A091727(n+1), A066829(#)]`
-/

namespace A240920.P8882355798793319648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A240920.P8882355798793319648

namespace A240920

/-- `filter[A091727(n+1), A066829(#)]` -/
def P8882355798793319648.Spec : Prop :=
  ∀ n, P8882355798793319648.a n = A240920 (n + 1)

end A240920

/-! ## A240920.P12023702580264570096

`∩[A063752(n+1), A091727(n+1)]`
-/

namespace A240920.P12023702580264570096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240920.P12023702580264570096

namespace A240920

/-- `∩[A063752(n+1), A091727(n+1)]` -/
def P12023702580264570096.Spec : Prop :=
  ∀ n, (P12023702580264570096.a n : ℤ) = A240920 (n + 1)

end A240920

/-!
# A240921: G.f.: Sum_{n>=0} n^n * x^n * (1 + n*x)^n / (1 + n*x + n^2*x^2)^(n+1).

The programs for A240921, there is no canonical definition to state claims against.
-/

/-! ## A240921.P9978621007379240293

`floor(A059367(n)/2^n)`
-/

namespace A240921.P9978621007379240293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059367 n : ℚ) / (2 ^ n : ℚ)⌋

end

end A240921.P9978621007379240293

/-! ## A240921.P7596462848891648497

`A284509((n+1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A240921.P7596462848891648497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A284509 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A240921.P7596462848891648497

/-!
# A240923: a(n) = numerator(sigma(n)/n) - sigma(denominator(sigma(n)/n)).

The programs for A240923, the canonical program `A240923.P7245222179821891144` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240923 has offset 1).

The definition of A240923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240923.P9079854845650167434

`A009242(n+1)/(n+1)-∑{d}[A017666(n+1), #]`
-/

namespace A240923.P9079854845650167434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (n + 1) : ℚ) / (n + 1 : ℚ) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ)

end

end A240923.P9079854845650167434

namespace A240923

/-- `A009242(n+1)/(n+1)-∑{d}[A017666(n+1), #]` -/
def P9079854845650167434.Spec : Prop :=
  ∀ n, P9079854845650167434.a n = (A240923 (n + 1) : ℚ)

end A240923

/-! ## A240923.P7245222179821891144

`A017665(n+1)-A000203(A017666(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A240923

/-- `A017665(n+1)-A000203(A017666(n+1))` -/
def P7245222179821891144.Spec : Prop :=
  ∀ n, P7245222179821891144.a n = A240923 (n + 1)

theorem P7245222179821891144.correct : P7245222179821891144.Spec := by
  intro n
  simp only [A240923, Nat.add_sub_cancel]

end A240923

/-! ## A240923.P12134082435888714526

`A243473(n+1)-A001065(A017666(n+1))`
-/

namespace A240923.P12134082435888714526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (n + 1) - A001065 (A017666 (n + 1)).toNat

end

end A240923.P12134082435888714526

namespace A240923

/-- `A243473(n+1)-A001065(A017666(n+1))` -/
def P12134082435888714526.Spec : Prop :=
  ∀ n, P12134082435888714526.a n = A240923 (n + 1)

end A240923

/-! ## A240923.P9046621415720895182

`A017665(n+1)-A000203((n+1)/gcd(n+1, A155085(n+1)))`
-/

namespace A240923.P9046621415720895182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A155085 (n + 1)) : ℚ))).toNat

end

end A240923.P9046621415720895182

namespace A240923

/-- `A017665(n+1)-A000203((n+1)/gcd(n+1, A155085(n+1)))` -/
def P9046621415720895182.Spec : Prop :=
  ∀ n, P9046621415720895182.a n = A240923 (n + 1)

end A240923

/-! ## A240923.P7693173411563059185

`lcm(n+1, A000203(n+1))/(n+1)-A000203(A017666(n+1))`
-/

namespace A240923.P7693173411563059185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000203 (n + 1)) : ℚ) / (n + 1 : ℚ) - (A000203 (A017666 (n + 1)).toNat : ℚ)

end

end A240923.P7693173411563059185

namespace A240923

/-- `lcm(n+1, A000203(n+1))/(n+1)-A000203(A017666(n+1))` -/
def P7693173411563059185.Spec : Prop :=
  ∀ n, P7693173411563059185.a n = (A240923 (n + 1) : ℚ)

end A240923

/-! ## A240923.P9180987237565686790

`A074400(n+1)/(2*A009194(n+1))-∑{d}[A017666(n+1), #]`
-/

namespace A240923.P9180987237565686790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (2 * A009194 (n + 1) : ℚ) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ)

end

end A240923.P9180987237565686790

namespace A240923

/-- `A074400(n+1)/(2*A009194(n+1))-∑{d}[A017666(n+1), #]` -/
def P9180987237565686790.Spec : Prop :=
  ∀ n, P9180987237565686790.a n = (A240923 (n + 1) : ℚ)

end A240923

/-! ## A240923.P6969959211646482749

`A033879(A017666(n+1))-A033879(n+1)/A009194(n+1)`
-/

namespace A240923.P6969959211646482749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (A017666 (n + 1)).toNat : ℚ) - (A033879 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A240923.P6969959211646482749

namespace A240923

/-- `A033879(A017666(n+1))-A033879(n+1)/A009194(n+1)` -/
def P6969959211646482749.Spec : Prop :=
  ∀ n, P6969959211646482749.a n = (A240923 (n + 1) : ℚ)

end A240923

/-!
# A240924: Digital root of squares of numbers not divisible by 2, 3 or 5.

The programs for A240924, the canonical program `A240924.P17877724702823211433` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240924 has offset 1).

The definition of A240924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240924.P17877724702823211433

`dr(dr(eq[gcd(30, n)+n, n+1])²)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240924

/-- `dr(dr(eq[gcd(30, n)+n, n+1])²)` -/
def P17877724702823211433.Spec : Prop :=
  ∀ n, (P17877724702823211433.a n : ℤ) = A240924 (n + 1)

theorem P17877724702823211433.correct : P17877724702823211433.Spec := by
  intro n
  simp only [A240924, Nat.add_sub_cancel]

end A240924

/-!
# A240927: Positive integers with 2k digits (the first of which is not 0) where the sum of the first k digits equals the sum of the last k digits.

The programs for A240927, there is no canonical definition to state claims against.
-/

/-! ## A240927.P3780755720924756094

`∪[A056524(n+1), A145808(n+1)]`
-/

namespace A240927.P3780755720924756094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A240927.P3780755720924756094

/-! ## A240927.P13040719946817359001

`∪[A145808(n+1), A272655(n+1)]`
-/

namespace A240927.P13040719946817359001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A240927.P13040719946817359001

/-! ## A240927.P11776238654915201809

`or(A185284((5-n)²), A283871(n+1))`
-/

namespace A240927.P11776238654915201809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 ((5 - (n : ℤ)) ^ 2).toNat) (A283871 (n + 1))

end

end A240927.P11776238654915201809

/-! ## A240927.P16326487804354255693

`A075617(A272655(n+1))`
-/

namespace A240927.P16326487804354255693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A272655 (n + 1)).toNat

end

end A240927.P16326487804354255693

/-!
# A240930: a(n) = n^7 - n^6.

The programs for A240930, the canonical program `A240930.P4459008851257504207` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240930 has offset 0).

The definition of A240930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7-n^6` (program `A240930.P4459008851257504207`, by `A240930.P4459008851257504207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240930.P6547618525448067223

`n^6*(n-1)`
-/

namespace A240930.P6547618525448067223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 6 : ℤ) * ((n : ℤ) - 1)

end

end A240930.P6547618525448067223

namespace A240930

/-- `n^6*(n-1)` -/
def P6547618525448067223.Spec : Prop :=
  ∀ n, P6547618525448067223.a n = A240930 n

theorem P6547618525448067223.correct : P6547618525448067223.Spec := by
  intro n
  simp only [A240930, Nat.add_sub_cancel, A240930.P6547618525448067223.a, A240930.P4459008851257504207.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A240930

/-! ## A240930.P4459008851257504207

`n^7-n^6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240930

/-- `n^7-n^6` -/
def P4459008851257504207.Spec : Prop :=
  ∀ n, P4459008851257504207.a n = A240930 n

theorem P4459008851257504207.correct : P4459008851257504207.Spec := by
  intro n
  simp only [A240930]

end A240930

/-! ## A240930.P13422968038306889152

`abs((1-n)*A000578(n)²)`
-/

namespace A240930.P13422968038306889152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) * A000578 n ^ 2|

end

end A240930.P13422968038306889152

namespace A240930

/-- `abs((1-n)*A000578(n)²)` -/
def P13422968038306889152.Spec : Prop :=
  ∀ n, P13422968038306889152.a n = A240930 n

end A240930

/-! ## A240930.P5827872039464404748

`A240931(n)/A028310(n)`
-/

namespace A240930.P5827872039464404748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240931 n : ℚ) / (A028310 n : ℚ)

end

end A240930.P5827872039464404748

namespace A240930

/-- `A240931(n)/A028310(n)` -/
def P5827872039464404748.Spec : Prop :=
  ∀ n, P5827872039464404748.a n = (A240930 n : ℚ)

end A240930

/-! ## A240930.P12773243541321864413

`lcm(A001014(n), A023443(n))`
-/

namespace A240930.P12773243541321864413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001014 n) (A023443 n)

end

end A240930.P12773243541321864413

namespace A240930

/-- `lcm(A001014(n), A023443(n))` -/
def P12773243541321864413.Spec : Prop :=
  ∀ n, (P12773243541321864413.a n : ℤ) = A240930 n

end A240930

/-! ## A240930.P5765171921242015031

`n²*A218131(n)/A053698(n)`
-/

namespace A240930.P5765171921242015031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A218131 n : ℚ) / (A053698 n : ℚ)

end

end A240930.P5765171921242015031

namespace A240930

/-- `n²*A218131(n)/A053698(n)` -/
def P5765171921242015031.Spec : Prop :=
  ∀ n, P5765171921242015031.a n = (A240930 n : ℚ)

theorem P5765171921242015031.correct : P5765171921242015031.Spec := by
  intro n
  simp only [A240930, Nat.add_sub_cancel, A240930.P5765171921242015031.a, A240930.P4459008851257504207.a, A053698, A053698.P17380684271159484773.a, A218131, A218131.P16680872761281516940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240930

/-! ## A240930.P5044042097976698327

`n*A240933(n)/A253909(n)²`
-/

namespace A240930.P5044042097976698327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A240933 n : ℚ) / (A253909 n ^ 2 : ℚ)

end

end A240930.P5044042097976698327

namespace A240930

/-- `n*A240933(n)/A253909(n)²` -/
def P5044042097976698327.Spec : Prop :=
  ∀ n, P5044042097976698327.a n = (A240930 n : ℚ)

end A240930

/-! ## A240930.P12541134090733598925

`lcm(n-1, Δ[(n-∑[n])²]²)`
-/

namespace A240930.P12541134090733598925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) ((f1 (n + 1) - f1 n) ^ 2)

end

end A240930.P12541134090733598925

namespace A240930

/-- `lcm(n-1, Δ[(n-∑[n])²]²)` -/
def P12541134090733598925.Spec : Prop :=
  ∀ n, (P12541134090733598925.a n : ℤ) = A240930 n

end A240930

/-! ## A240930.P9261198585416093909

`A085539(n+1)*A085539(n)/A000584(n+1)`
-/

namespace A240930.P9261198585416093909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085539 (n + 1) * A085539 n : ℚ) / (A000584 (n + 1) : ℚ)

end

end A240930.P9261198585416093909

namespace A240930

/-- `A085539(n+1)*A085539(n)/A000584(n+1)` -/
def P9261198585416093909.Spec : Prop :=
  ∀ n, P9261198585416093909.a n = (A240930 n : ℚ)

theorem P9261198585416093909.correct : P9261198585416093909.Spec := by
  intro n
  simp only [A240930, Nat.add_sub_cancel, A240930.P9261198585416093909.a, A240930.P4459008851257504207.a, A000584, A000584.P5477385692209315495.a, A085539, A085539.P6868478279782211526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240930

/-! ## A240930.P6543416486681376606

`A085537(n²)/(n+1)`
-/

namespace A240930.P6543416486681376606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085537 (n ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A240930.P6543416486681376606

namespace A240930

/-- `A085537(n²)/(n+1)` -/
def P6543416486681376606.Spec : Prop :=
  ∀ n, P6543416486681376606.a n = (A240930 n : ℚ)

theorem P6543416486681376606.correct : P6543416486681376606.Spec := by
  intro n
  simp only [A240930, Nat.add_sub_cancel, A240930.P6543416486681376606.a, A240930.P4459008851257504207.a, A085537, A085537.P16655703013365461026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240930

/-!
# A240931: a(n) = n^8 - n^7.

The programs for A240931, the canonical program `A240931.P12790518617216736864` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240931 has offset 0).

The definition of A240931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8-n^7` (program `A240931.P12790518617216736864`, by `A240931.P12790518617216736864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240931.P6715870867041955386

`n^7*(n-1)`
-/

namespace A240931.P6715870867041955386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 7 : ℤ) * ((n : ℤ) - 1)

end

end A240931.P6715870867041955386

namespace A240931

/-- `n^7*(n-1)` -/
def P6715870867041955386.Spec : Prop :=
  ∀ n, P6715870867041955386.a n = A240931 n

theorem P6715870867041955386.correct : P6715870867041955386.Spec := by
  intro n
  simp only [A240931, Nat.add_sub_cancel, A240931.P6715870867041955386.a, A240931.P12790518617216736864.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A240931

/-! ## A240931.P12790518617216736864

`n^8-n^7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240931

/-- `n^8-n^7` -/
def P12790518617216736864.Spec : Prop :=
  ∀ n, P12790518617216736864.a n = A240931 n

theorem P12790518617216736864.correct : P12790518617216736864.Spec := by
  intro n
  simp only [A240931]

end A240931

/-! ## A240931.P45400307007567356

`sqrt(n²*A240930(n)²)`
-/

namespace A240931.P45400307007567356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 : ℤ) * A240930 n ^ 2 : ℝ)

end

end A240931.P45400307007567356

namespace A240931

/-- `sqrt(n²*A240930(n)²)` -/
def P45400307007567356.Spec : Prop :=
  ∀ n, P45400307007567356.a n = (A240931 n : ℝ)

end A240931

/-! ## A240931.P6958983660696349390

`A240932(n)/A028310(n)`
-/

namespace A240931.P6958983660696349390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240932 n : ℚ) / (A028310 n : ℚ)

end

end A240931.P6958983660696349390

namespace A240931

/-- `A240932(n)/A028310(n)` -/
def P6958983660696349390.Spec : Prop :=
  ∀ n, P6958983660696349390.a n = (A240931 n : ℚ)

end A240931

/-! ## A240931.P14048542357610613237

`A240933(n)/A253909(n)`
-/

namespace A240931.P14048542357610613237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240933 n : ℚ) / (A253909 n : ℚ)

end

end A240931.P14048542357610613237

namespace A240931

/-- `A240933(n)/A253909(n)` -/
def P14048542357610613237.Spec : Prop :=
  ∀ n, P14048542357610613237.a n = (A240931 n : ℚ)

end A240931

/-! ## A240931.P9538935049204919891

`lcm(A001015(n), A023443(n))`
-/

namespace A240931.P9538935049204919891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001015 n) (A023443 n)

end

end A240931.P9538935049204919891

namespace A240931

/-- `lcm(A001015(n), A023443(n))` -/
def P9538935049204919891.Spec : Prop :=
  ∀ n, (P9538935049204919891.a n : ℤ) = A240931 n

end A240931

/-! ## A240931.P4687494295798907650

`A085538(n+1)*A240930(n)/A000583(n+1)`
-/

namespace A240931.P4687494295798907650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085538 (n + 1) * A240930 n : ℚ) / (A000583 (n + 1) : ℚ)

end

end A240931.P4687494295798907650

namespace A240931

/-- `A085538(n+1)*A240930(n)/A000583(n+1)` -/
def P4687494295798907650.Spec : Prop :=
  ∀ n, P4687494295798907650.a n = (A240931 n : ℚ)

theorem P4687494295798907650.correct : P4687494295798907650.Spec := by
  intro n
  simp only [A240931, Nat.add_sub_cancel, A240931.P4687494295798907650.a, A240931.P12790518617216736864.a, A000583, A000583.P14547500281748394449.a, A085538, A085538.P4728706090558992157.a, A240930, A240930.P4459008851257504207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240931

/-! ## A240931.P1758823678519482895

`A085539(n+1)*A240930(n)/A000584(n+1)`
-/

namespace A240931.P1758823678519482895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085539 (n + 1) * A240930 n : ℚ) / (A000584 (n + 1) : ℚ)

end

end A240931.P1758823678519482895

namespace A240931

/-- `A085539(n+1)*A240930(n)/A000584(n+1)` -/
def P1758823678519482895.Spec : Prop :=
  ∀ n, P1758823678519482895.a n = (A240931 n : ℚ)

theorem P1758823678519482895.correct : P1758823678519482895.Spec := by
  intro n
  simp only [A240931, Nat.add_sub_cancel, A240931.P1758823678519482895.a, A240931.P12790518617216736864.a, A000584, A000584.P5477385692209315495.a, A085539, A085539.P6868478279782211526.a, A240930, A240930.P4459008851257504207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240931

/-! ## A240931.P11073169754550625575

`A240930(n)*A240932(n+1)/A001016(n+1)`
-/

namespace A240931.P11073169754550625575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240930 n * A240932 (n + 1) : ℚ) / (A001016 (n + 1) : ℚ)

end

end A240931.P11073169754550625575

namespace A240931

/-- `A240930(n)*A240932(n+1)/A001016(n+1)` -/
def P11073169754550625575.Spec : Prop :=
  ∀ n, P11073169754550625575.a n = (A240931 n : ℚ)

theorem P11073169754550625575.correct : P11073169754550625575.Spec := by
  intro n
  simp only [A240931, Nat.add_sub_cancel, A240931.P11073169754550625575.a, A240931.P12790518617216736864.a, A001016, A001016.P10257285112668202493.a, A240930, A240930.P4459008851257504207.a, A240932, A240932.P16837920577400301840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240931

/-! ## A240931.P369005336601168829

`A009694(A133655(n))`
-/

namespace A240931.P369005336601168829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009694 (A133655 n).toNat

end

end A240931.P369005336601168829

namespace A240931

/-- `A009694(A133655(n))` -/
def P369005336601168829.Spec : Prop :=
  ∀ n, P369005336601168829.a n = A240931 n

end A240931

/-!
# A240932: a(n) = n^9 - n^8.

The programs for A240932, the canonical program `A240932.P16837920577400301840` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240932 has offset 0).

The definition of A240932 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9-n^8` (program `A240932.P16837920577400301840`, by `A240932.P16837920577400301840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240932.P15850706819002810441

`n^8*(n-1)`
-/

namespace A240932.P15850706819002810441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 8 : ℤ) * ((n : ℤ) - 1)

end

end A240932.P15850706819002810441

namespace A240932

/-- `n^8*(n-1)` -/
def P15850706819002810441.Spec : Prop :=
  ∀ n, P15850706819002810441.a n = A240932 n

theorem P15850706819002810441.correct : P15850706819002810441.Spec := by
  intro n
  simp only [A240932, Nat.add_sub_cancel, A240932.P15850706819002810441.a, A240932.P16837920577400301840.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A240932

/-! ## A240932.P16837920577400301840

`n^9-n^8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240932

/-- `n^9-n^8` -/
def P16837920577400301840.Spec : Prop :=
  ∀ n, P16837920577400301840.a n = A240932 n

theorem P16837920577400301840.correct : P16837920577400301840.Spec := by
  intro n
  simp only [A240932]

end A240932

/-! ## A240932.P6210311104899570390

`lcm(1-n, n²²²)`
-/

namespace A240932.P6210311104899570390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (((n ^ 2) ^ 2) ^ 2 : ℤ)

end

end A240932.P6210311104899570390

namespace A240932

/-- `lcm(1-n, n²²²)` -/
def P6210311104899570390.Spec : Prop :=
  ∀ n, (P6210311104899570390.a n : ℤ) = A240932 n

end A240932

/-! ## A240932.P2784263588284923639

`A240933(n)/A028310(n)`
-/

namespace A240932.P2784263588284923639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240933 n : ℚ) / (A028310 n : ℚ)

end

end A240932.P2784263588284923639

namespace A240932

/-- `A240933(n)/A028310(n)` -/
def P2784263588284923639.Spec : Prop :=
  ∀ n, P2784263588284923639.a n = (A240932 n : ℚ)

end A240932

/-! ## A240932.P16914652746816532820

`n*A240933(n)/A253909(n)`
-/

namespace A240932.P16914652746816532820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A240933 n : ℚ) / (A253909 n : ℚ)

end

end A240932.P16914652746816532820

namespace A240932

/-- `n*A240933(n)/A253909(n)` -/
def P16914652746816532820.Spec : Prop :=
  ∀ n, P16914652746816532820.a n = (A240932 n : ℚ)

end A240932

/-! ## A240932.P15450784505818190595

`n²*A240931(n)/A028310(n)`
-/

namespace A240932.P15450784505818190595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A240931 n : ℚ) / (A028310 n : ℚ)

end

end A240932.P15450784505818190595

namespace A240932

/-- `n²*A240931(n)/A028310(n)` -/
def P15450784505818190595.Spec : Prop :=
  ∀ n, P15450784505818190595.a n = (A240932 n : ℚ)

end A240932

/-! ## A240932.P6128126131316370760

`A085538(n+1)*A240931(n)/A000583(n+1)`
-/

namespace A240932.P6128126131316370760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085538 (n + 1) * A240931 n : ℚ) / (A000583 (n + 1) : ℚ)

end

end A240932.P6128126131316370760

namespace A240932

/-- `A085538(n+1)*A240931(n)/A000583(n+1)` -/
def P6128126131316370760.Spec : Prop :=
  ∀ n, P6128126131316370760.a n = (A240932 n : ℚ)

theorem P6128126131316370760.correct : P6128126131316370760.Spec := by
  intro n
  simp only [A240932, Nat.add_sub_cancel, A240932.P6128126131316370760.a, A240932.P16837920577400301840.a, A000583, A000583.P14547500281748394449.a, A085538, A085538.P4728706090558992157.a, A240931, A240931.P12790518617216736864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240932

/-! ## A240932.P6007631864141976961

`A085539(n+1)*A240931(n)/A000584(n+1)`
-/

namespace A240932.P6007631864141976961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085539 (n + 1) * A240931 n : ℚ) / (A000584 (n + 1) : ℚ)

end

end A240932.P6007631864141976961

namespace A240932

/-- `A085539(n+1)*A240931(n)/A000584(n+1)` -/
def P6007631864141976961.Spec : Prop :=
  ∀ n, P6007631864141976961.a n = (A240932 n : ℚ)

theorem P6007631864141976961.correct : P6007631864141976961.Spec := by
  intro n
  simp only [A240932, Nat.add_sub_cancel, A240932.P6007631864141976961.a, A240932.P16837920577400301840.a, A000584, A000584.P5477385692209315495.a, A085539, A085539.P6868478279782211526.a, A240931, A240931.P12790518617216736864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240932

/-! ## A240932.P7901161043177326678

`A240931(n+1)*A240931(n)/A001015(n+1)`
-/

namespace A240932.P7901161043177326678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240931 (n + 1) * A240931 n : ℚ) / (A001015 (n + 1) : ℚ)

end

end A240932.P7901161043177326678

namespace A240932

/-- `A240931(n+1)*A240931(n)/A001015(n+1)` -/
def P7901161043177326678.Spec : Prop :=
  ∀ n, P7901161043177326678.a n = (A240932 n : ℚ)

theorem P7901161043177326678.correct : P7901161043177326678.Spec := by
  intro n
  simp only [A240932, Nat.add_sub_cancel, A240932.P7901161043177326678.a, A240932.P16837920577400301840.a, A001015, A001015.P16876498052081657174.a, A240931, A240931.P12790518617216736864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240932

/-! ## A240932.P1414232865313154355

`A240933(n)/A233583(n+1)`
-/

namespace A240932.P1414232865313154355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240933 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A240932.P1414232865313154355

namespace A240932

/-- `A240933(n)/A233583(n+1)` -/
def P1414232865313154355.Spec : Prop :=
  ∀ n, P1414232865313154355.a n = (A240932 n : ℚ)

end A240932

/-! ## A240932.P15278679888930371724

`A085538(n²)/(n+1)`
-/

namespace A240932.P15278679888930371724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085538 (n ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A240932.P15278679888930371724

namespace A240932

/-- `A085538(n²)/(n+1)` -/
def P15278679888930371724.Spec : Prop :=
  ∀ n, P15278679888930371724.a n = (A240932 n : ℚ)

theorem P15278679888930371724.correct : P15278679888930371724.Spec := by
  intro n
  simp only [A240932, Nat.add_sub_cancel, A240932.P15278679888930371724.a, A240932.P16837920577400301840.a, A085538, A085538.P4728706090558992157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240932

/-!
# A240933: a(n) = n^10 - n^9.

The programs for A240933, the canonical program `A240933.P9354429362843124962` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240933 has offset 0).

The definition of A240933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10-n^9` (program `A240933.P9354429362843124962`, by `A240933.P9354429362843124962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240933.P8351874448628816781

`n^9*(n-1)`
-/

namespace A240933.P8351874448628816781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 9 : ℤ) * ((n : ℤ) - 1)

end

end A240933.P8351874448628816781

namespace A240933

/-- `n^9*(n-1)` -/
def P8351874448628816781.Spec : Prop :=
  ∀ n, P8351874448628816781.a n = A240933 n

theorem P8351874448628816781.correct : P8351874448628816781.Spec := by
  intro n
  simp only [A240933, Nat.add_sub_cancel, A240933.P8351874448628816781.a, A240933.P9354429362843124962.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A240933

/-! ## A240933.P9354429362843124962

`n^10-n^9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240933

/-- `n^10-n^9` -/
def P9354429362843124962.Spec : Prop :=
  ∀ n, P9354429362843124962.a n = A240933 n

theorem P9354429362843124962.correct : P9354429362843124962.Spec := by
  intro n
  simp only [A240933]

end A240933

/-! ## A240933.P9756417256993335568

`abs(n^9*A023443(n))`
-/

namespace A240933.P9756417256993335568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 9 : ℤ) * A023443 n|

end

end A240933.P9756417256993335568

namespace A240933

/-- `abs(n^9*A023443(n))` -/
def P9756417256993335568.Spec : Prop :=
  ∀ n, P9756417256993335568.a n = A240933 n

end A240933

/-! ## A240933.P7341577993688989074

`abs(n^9*A024000(n))`
-/

namespace A240933.P7341577993688989074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 9 : ℤ) * A024000 n|

end

end A240933.P7341577993688989074

namespace A240933

/-- `abs(n^9*A024000(n))` -/
def P7341577993688989074.Spec : Prop :=
  ∀ n, P7341577993688989074.a n = A240933 n

end A240933

/-! ## A240933.P15145316870087227751

`sqrt(n²*A240932(n)²)`
-/

namespace A240933.P15145316870087227751
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 : ℤ) * A240932 n ^ 2 : ℝ)

end

end A240933.P15145316870087227751

namespace A240933

/-- `sqrt(n²*A240932(n)²)` -/
def P15145316870087227751.Spec : Prop :=
  ∀ n, P15145316870087227751.a n = (A240933 n : ℝ)

end A240933

/-! ## A240933.P14469276762627985627

`lcm(A001017(n), A023443(n))`
-/

namespace A240933.P14469276762627985627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001017 n) (A023443 n)

end

end A240933.P14469276762627985627

namespace A240933

/-- `lcm(A001017(n), A023443(n))` -/
def P14469276762627985627.Spec : Prop :=
  ∀ n, (P14469276762627985627.a n : ℤ) = A240933 n

end A240933

/-! ## A240933.P13628910446228657266

`n²*A240932(n)/A028310(n)`
-/

namespace A240933.P13628910446228657266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A240932 n : ℚ) / (A028310 n : ℚ)

end

end A240933.P13628910446228657266

namespace A240933

/-- `n²*A240932(n)/A028310(n)` -/
def P13628910446228657266.Spec : Prop :=
  ∀ n, P13628910446228657266.a n = (A240933 n : ℚ)

end A240933

/-! ## A240933.P10052428625610108867

`A085539(n+1)*A240932(n)/A000584(n+1)`
-/

namespace A240933.P10052428625610108867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085539 (n + 1) * A240932 n : ℚ) / (A000584 (n + 1) : ℚ)

end

end A240933.P10052428625610108867

namespace A240933

/-- `A085539(n+1)*A240932(n)/A000584(n+1)` -/
def P10052428625610108867.Spec : Prop :=
  ∀ n, P10052428625610108867.a n = (A240933 n : ℚ)

theorem P10052428625610108867.correct : P10052428625610108867.Spec := by
  intro n
  simp only [A240933, Nat.add_sub_cancel, A240933.P10052428625610108867.a, A240933.P9354429362843124962.a, A000584, A000584.P5477385692209315495.a, A085539, A085539.P6868478279782211526.a, A240932, A240932.P16837920577400301840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240933

/-! ## A240933.P412758788417673885

`A240931(n+1)*A240932(n)/A001015(n+1)`
-/

namespace A240933.P412758788417673885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240931 (n + 1) * A240932 n : ℚ) / (A001015 (n + 1) : ℚ)

end

end A240933.P412758788417673885

namespace A240933

/-- `A240931(n+1)*A240932(n)/A001015(n+1)` -/
def P412758788417673885.Spec : Prop :=
  ∀ n, P412758788417673885.a n = (A240933 n : ℚ)

theorem P412758788417673885.correct : P412758788417673885.Spec := by
  intro n
  simp only [A240933, Nat.add_sub_cancel, A240933.P412758788417673885.a, A240933.P9354429362843124962.a, A001015, A001015.P16876498052081657174.a, A240931, A240931.P12790518617216736864.a, A240932, A240932.P16837920577400301840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240933

/-! ## A240933.P18208153683959593383

`A240932(n+1)*A240932(n)/A001016(n+1)`
-/

namespace A240933.P18208153683959593383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240932 (n + 1) * A240932 n : ℚ) / (A001016 (n + 1) : ℚ)

end

end A240933.P18208153683959593383

namespace A240933

/-- `A240932(n+1)*A240932(n)/A001016(n+1)` -/
def P18208153683959593383.Spec : Prop :=
  ∀ n, P18208153683959593383.a n = (A240933 n : ℚ)

theorem P18208153683959593383.correct : P18208153683959593383.Spec := by
  intro n
  simp only [A240933, Nat.add_sub_cancel, A240933.P18208153683959593383.a, A240933.P9354429362843124962.a, A001016, A001016.P10257285112668202493.a, A240932, A240932.P16837920577400301840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240933

/-!
# A240935: Decimal expansion of 3*sqrt(3)/(4*Pi).

The programs for A240935, there is no canonical definition to state claims against.
-/

/-! ## A240935.P14686996683612633443

`9-A102519(n)`
-/

namespace A240935.P14686996683612633443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A102519 n

end

end A240935.P14686996683612633443

/-!
# A240936: Number of ways to partition the (vertex) set {1,2,...,n} into any number of classes and then select some unordered pairs (edges) such that a and b are in distinct classes of the partition.

The programs for A240936, there is no canonical definition to state claims against.
-/

/-! ## A240936.P13230009899712878891

`A173451(A000294(n))+A113085(n)`
-/

namespace A240936.P13230009899712878891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173451 (A000294 n).toNat + A113085 n

end

end A240936.P13230009899712878891

/-!
# A240937: Least number k >= 0 such that n! + k is a cube.

The programs for A240937, the canonical program `A240937.P6218602885418131968` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240937 has offset 1).

The definition of A240937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240937.P6218602885418131968

`ceil((n+1)!^(1/3))^3-(n+1)!`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240937

/-- `ceil((n+1)!^(1/3))^3-(n+1)!` -/
def P6218602885418131968.Spec : Prop :=
  ∀ n, P6218602885418131968.a n = A240937 (n + 1)

theorem P6218602885418131968.correct : P6218602885418131968.Spec := by
  intro n
  simp only [A240937, Nat.add_sub_cancel]

end A240937

/-! ## A240937.P9513392911533593183

`ceil(root((n+1)!, 3))^3-(n+1)!`
-/

namespace A240937.P9513392911533593183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ ^ 3 - (Nat.factorial (n + 1) : ℤ)

end

end A240937.P9513392911533593183

namespace A240937

/-- `ceil(root((n+1)!, 3))^3-(n+1)!` -/
def P9513392911533593183.Spec : Prop :=
  ∀ n, P9513392911533593183.a n = A240937 (n + 1)

theorem P9513392911533593183.correct : P9513392911533593183.Spec := by
  intro n
  simp only [A240937, Nat.add_sub_cancel, A240937.P9513392911533593183.a, A240937.P6218602885418131968.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A240937

/-! ## A240937.P9633377550228562920

`A000578(A214049(n+1))-A000142(n+1)`
-/

namespace A240937.P9633377550228562920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A214049 (n + 1)).toNat - A000142 (n + 1)

end

end A240937.P9633377550228562920

namespace A240937

/-- `A000578(A214049(n+1))-A000142(n+1)` -/
def P9633377550228562920.Spec : Prop :=
  ∀ n, P9633377550228562920.a n = A240937 (n + 1)

end A240937

/-!
# A240938: Numbers that are not the product of a prime and a power (exponent at least 2, base at least 1). Complement of A245303.

The programs for A240938, there is no canonical definition to state claims against.
-/

/-! ## A240938.P13422978686673440840

`comp[A245303(n+1)]`
-/

namespace A240938.P13422978686673440840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A240938.P13422978686673440840

/-! ## A240938.P6601277026466242018

`eq[1, A027052(A037234(n))]`
-/

namespace A240938.P6601277026466242018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A037234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240938.P6601277026466242018

/-! ## A240938.P15100751296182493621

`eq[1, A116608(A027623(n))]`
-/

namespace A240938.P15100751296182493621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116608 (A027623 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240938.P15100751296182493621

/-! ## A240938.P16954190353396994717

`eq[A185894(n), A393137(n)]`
-/

namespace A240938.P16954190353396994717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240938.P16954190353396994717

/-! ## A240938.P10796097304030183400

`lt[A004648(A027623(n)+1), 2]`
-/

namespace A240938.P10796097304030183400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A027623 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A240938.P10796097304030183400

/-!
# A240939: Least number k >= 0 such that n! + k is a perfect power.

The programs for A240939, the canonical program `A240939.P940604586909977599` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240939 has offset 1).

The definition of A240939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240939.P1151021267025864668

`A068869(1-char[2]+n)`
-/

namespace A240939.P1151021267025864668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068869 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A240939.P1151021267025864668

namespace A240939

/-- `A068869(1-char[2]+n)` -/
def P1151021267025864668.Spec : Prop :=
  ∀ n, P1151021267025864668.a n = A240939 (n + 1)

end A240939

/-! ## A240939.P12584453444155364003

`xor(char[2], A068869(n+1))`
-/

namespace A240939.P12584453444155364003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A068869 (n + 1))

end

end A240939.P12584453444155364003

namespace A240939

/-- `xor(char[2], A068869(n+1))` -/
def P12584453444155364003.Spec : Prop :=
  ∀ n, P12584453444155364003.a n = A240939 (n + 1)

end A240939

/-! ## A240939.P940604586909977599

`A068869(n+1)-A185012(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A240939

/-- `A068869(n+1)-A185012(n)` -/
def P940604586909977599.Spec : Prop :=
  ∀ n, P940604586909977599.a n = A240939 (n + 1)

theorem P940604586909977599.correct : P940604586909977599.Spec := by
  intro n
  simp only [A240939, Nat.add_sub_cancel]

end A240939

/-! ## A240939.P12850498239322997847

`A068869(n+1)-log2(A329684(n))`
-/

namespace A240939.P12850498239322997847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068869 (n + 1) : ℝ) - Real.logb 2 (A329684 n : ℝ)

end

end A240939.P12850498239322997847

namespace A240939

/-- `A068869(n+1)-log2(A329684(n))` -/
def P12850498239322997847.Spec : Prop :=
  ∀ n, P12850498239322997847.a n = (A240939 (n + 1) : ℝ)

end A240939

/-! ## A240939.P5842701889156230197

`ceil(sqrt((n+1)!))²-(n+1)!-char[2]`
-/

namespace A240939.P5842701889156230197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.factorial (n + 1) : ℝ)⌉ ^ 2 - (Nat.factorial (n + 1) : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240939.P5842701889156230197

namespace A240939

/-- `ceil(sqrt((n+1)!))²-(n+1)!-char[2]` -/
def P5842701889156230197.Spec : Prop :=
  ∀ n, P5842701889156230197.a n = A240939 (n + 1)

end A240939

/-!
# A240940: Least number k >= 0 such that n! - k is a perfect power.

The programs for A240940, there is no canonical definition to state claims against.
-/

/-! ## A240940.P13288626622360856728

`(n+1)!-A074187(n+1)`
-/

namespace A240940.P13288626622360856728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A074187 (n + 1)

end

end A240940.P13288626622360856728

/-! ## A240940.P15485081694914347342

`record[A047920(n)]-A074187(n+1)`
-/

namespace A240940.P15485081694914347342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A074187 (n + 1)

end

end A240940.P15485081694914347342

/-! ## A240940.P2521637674113490347

`A000142(n+1)-A074187(n+1)`
-/

namespace A240940.P2521637674113490347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A074187 (n + 1)

end

end A240940.P2521637674113490347

/-! ## A240940.P5001882102686489528

`∏[A008619(2*n)]-A074187(n+1)`
-/

namespace A240940.P5001882102686489528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A074187 (n + 1)

end

end A240940.P5001882102686489528

/-! ## A240940.P7681730157502807001

`∏[A028242(2*n)]-A074187(n+1)`
-/

namespace A240940.P7681730157502807001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A074187 (n + 1)

end

end A240940.P7681730157502807001

/-!
# A240944: Number of compositions of n into square parts k^2 where there are k sorts of part k^2.

The programs for A240944, there is no canonical definition to state claims against.
-/

/-! ## A240944.P16496608593668717424

`A036234(A364350(∑[n]))`
-/

namespace A240944.P16496608593668717424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A364350 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A240944.P16496608593668717424

/-!
# A240945: Powers of 9 without the digit '0' in their decimal expansion.

The programs for A240945, there is no canonical definition to state claims against.
-/

/-! ## A240945.P18358529147123359290

`9^A305929(n)`
-/

namespace A240945.P18358529147123359290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A305929 n : ℤ)

end

end A240945.P18358529147123359290

/-! ## A240945.P251052479144291311

`9^A030705(n+1)`
-/

namespace A240945.P251052479144291311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A030705 (n + 1) : ℤ)

end

end A240945.P251052479144291311

/-! ## A240945.P16954523315324737566

`record[(-3)^A030700(n)]`
-/

namespace A240945.P16954523315324737566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-3 : ℚ) ^ (A030700 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240945.P16954523315324737566

/-! ## A240945.P14778050549762814871

`A000244(2*A305929(n))`
-/

namespace A240945.P14778050549762814871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A305929 n).toNat

end

end A240945.P14778050549762814871

/-! ## A240945.P7418706075642011401

`A000244(2*A030705(n+1))`
-/

namespace A240945.P7418706075642011401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A030705 (n + 1)).toNat

end

end A240945.P7418706075642011401

/-!
# A240948: Expansion of chi(x^5)^6 + x * chi(x)^6 in powers of x where chi() is a Ramanujan theta function.

The programs for A240948, there is no canonical definition to state claims against.
-/

/-! ## A240948.P13241945107293188916

`A325700(A011782(n))+A325689(n)`
-/

namespace A240948.P13241945107293188916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325700 (A011782 n).toNat + A325689 n

end

end A240948.P13241945107293188916

/-! ## A240948.P13639550732062825721

`A000267(A124820(n)*A230980(n))`
-/

namespace A240948.P13639550732062825721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A124820 n * A230980 n).toNat

end

end A240948.P13639550732062825721

/-! ## A240948.P10768953630347809119

`A278814(A060557(n)*A230980(n))`
-/

namespace A240948.P10768953630347809119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A060557 n * A230980 n).toNat

end

end A240948.P10768953630347809119

/-!
# A240949: Number of partitions of n with the property that if two summands have the same parity, then their frequencies have the same parity.

The programs for A240949, there is no canonical definition to state claims against.
-/

/-! ## A240949.P13054626555513280654

`A057918(A006882(n))+A034891(n)`
-/

namespace A240949.P13054626555513280654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A006882 n).toNat + A034891 n

end

end A240949.P13054626555513280654

/-! ## A240949.P6981144658960743257

`A023027(n+7)-A052011(A007956(n+1))`
-/

namespace A240949.P6981144658960743257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023027 (n + 7) - A052011 (A007956 (n + 1)).toNat

end

end A240949.P6981144658960743257

/-!
# A240950: Numbers k such that the continued fraction for sqrt(k) has odd period, omitting those values of k of the form m^2+1.

The programs for A240950, there is no canonical definition to state claims against.
-/

/-! ## A240950.P13072320653828995848

`A003814(lt[1, A130227(n+1)])`
-/

namespace A240950.P13072320653828995848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A240950.P13072320653828995848

/-! ## A240950.P11454733460838600260

`filter[A003814(n+1), A263243(#)]`
-/

namespace A240950.P11454733460838600260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263243 (f1 j).toNat = 1) n)

end

end A240950.P11454733460838600260

/-! ## A240950.P12709867091594138746

`filter[A003814(n+1), A267520(#)]`
-/

namespace A240950.P12709867091594138746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267520 (f1 j).toNat = 1) n)

end

end A240950.P12709867091594138746

/-! ## A240950.P1249530403054565959

`filter[A003814(n+1), A267621(#)]`
-/

namespace A240950.P1249530403054565959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267621 (f1 j).toNat = 1) n)

end

end A240950.P1249530403054565959

/-! ## A240950.P6373290447671010678

`filter[A031396(n+2), A263243(#)]`
-/

namespace A240950.P6373290447671010678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263243 (f1 j).toNat = 1) n)

end

end A240950.P6373290447671010678

/-! ## A240950.P11875772035753223516

`filter[A031396(n+2), A267520(#)]`
-/

namespace A240950.P11875772035753223516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267520 (f1 j).toNat = 1) n)

end

end A240950.P11875772035753223516

/-! ## A240950.P15060662316826358031

`filter[A031396(n+2), A267621(#)]`
-/

namespace A240950.P15060662316826358031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267621 (f1 j).toNat = 1) n)

end

end A240950.P15060662316826358031

/-! ## A240950.P1488530855137599418

`lt[2, A020639(A097853(n+1))]+1`
-/

namespace A240950.P1488530855137599418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A097853 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A240950.P1488530855137599418

/-! ## A240950.P10828688967619570944

`∩[A003814(n+1), A164386(n+1)]`
-/

namespace A240950.P10828688967619570944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240950.P10828688967619570944

/-! ## A240950.P17996142465369994673

`∩[A003814(n+1), A079896(n+1)+1]`
-/

namespace A240950.P17996142465369994673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240950.P17996142465369994673

/-! ## A240950.P6960269604384236389

`∩[A031396(n+1), A079896(n+1)+1]`
-/

namespace A240950.P6960269604384236389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240950.P6960269604384236389

/-! ## A240950.P5885549085338281914

`A003814(eq[1, ceil(2/A010333(n+1))]+1)`
-/

namespace A240950.P5885549085338281914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A010333 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A240950.P5885549085338281914

/-! ## A240950.P16100552051149696618

`lt[A341862(n), A002349(A028310(n))]`
-/

namespace A240950.P16100552051149696618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240950.P16100552051149696618

/-!
# A240951: Maximum number of dividing subsets of a set of n natural numbers.

The programs for A240951, the canonical program `A240951.P1446038406304488527` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240951 has offset 1).

The definition of A240951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240951.P4848208621752101833

`char[2]+2^n`
-/

namespace A240951.P4848208621752101833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 ^ n

end

end A240951.P4848208621752101833

namespace A240951

/-- `char[2]+2^n` -/
def P4848208621752101833.Spec : Prop :=
  ∀ n, (P4848208621752101833.a n : ℤ) = A240951 (n + 1)

end A240951

/-! ## A240951.P5626225379590288376

`or(2^n, char[2])`
-/

namespace A240951.P5626225379590288376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 ^ n) (if ∃ j, f1 j = n then 1 else 0)

end

end A240951.P5626225379590288376

namespace A240951

/-- `or(2^n, char[2])` -/
def P5626225379590288376.Spec : Prop :=
  ∀ n, (P5626225379590288376.a n : ℤ) = A240951 (n + 1)

end A240951

/-! ## A240951.P9372853213073130789

`xor(2^n, char[2])`
-/

namespace A240951.P9372853213073130789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ n) (if ∃ j, f1 j = n then 1 else 0)

end

end A240951.P9372853213073130789

namespace A240951

/-- `xor(2^n, char[2])` -/
def P9372853213073130789.Spec : Prop :=
  ∀ n, (P9372853213073130789.a n : ℤ) = A240951 (n + 1)

end A240951

/-! ## A240951.P18153160678744619874

`ogf((1+x^2-2x^3)/(1-2x))`
-/

namespace A240951.P18153160678744619874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -2] [1, -2] n

end

end A240951.P18153160678744619874

namespace A240951

/-- `ogf((1+x^2-2x^3)/(1-2x))` -/
def P18153160678744619874.Spec : Prop :=
  ∀ n, P18153160678744619874.a n = A240951 (n + 1)

end A240951

/-! ## A240951.P13634405977046217151

`a(cos(char[1]))^n` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A240951.P13634405977046217151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (SequenceMachineLib.roundAway (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))).toNat ^ n

end

end A240951.P13634405977046217151

namespace A240951

/-- `a(cos(char[1]))^n` -/
def P13634405977046217151.Spec : Prop :=
  ∀ n, (P13634405977046217151.a n : ℤ) = A240951 (n + 1)

end A240951

/-! ## A240951.P1446038406304488527

`2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240951

/-- `2*a(n-1)` -/
def P1446038406304488527.Spec : Prop :=
  ∀ n, (P1446038406304488527.a n : ℤ) = A240951 (n + 1)

theorem P1446038406304488527.correct : P1446038406304488527.Spec := by
  intro n
  simp only [A240951, Nat.add_sub_cancel]

end A240951

/-! ## A240951.P16850504843125480402

`a(floor((n+1)/n))^n` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A240951.P16850504843125480402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a ⌊(n + 1 : ℚ) / (n : ℚ)⌋.toNat ^ n

end

end A240951.P16850504843125480402

namespace A240951

/-- `a(floor((n+1)/n))^n` -/
def P16850504843125480402.Spec : Prop :=
  ∀ n, (P16850504843125480402.a n : ℤ) = A240951 (n + 1)

end A240951

/-! ## A240951.P16589285145151766293

`floor(2^n+a(n-2)^(-1))` with `a(0)=1, a(1)=2`
-/

namespace A240951.P16589285145151766293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(2 ^ n : ℚ) + (a (n - 2) : ℚ) ^ (-1 : ℤ)⌋

end

end A240951.P16589285145151766293

namespace A240951

/-- `floor(2^n+a(n-2)^(-1))` -/
def P16589285145151766293.Spec : Prop :=
  ∀ n, P16589285145151766293.a n = A240951 (n + 1)

end A240951

/-! ## A240951.P15902276578602641754

`sqrt(val(2*n+1, n+3)+4)^n`
-/

namespace A240951.P15902276578602641754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.valuation (2 * n + 1) (n + 3) + 4 : ℝ) ^ n

end

end A240951.P15902276578602641754

namespace A240951

/-- `sqrt(val(2*n+1, n+3)+4)^n` -/
def P15902276578602641754.Spec : Prop :=
  ∀ n, P15902276578602641754.a n = (A240951 (n + 1) : ℝ)

end A240951

/-! ## A240951.P17262891905539023974

`sqrt(A329505(n))^n`
-/

namespace A240951.P17262891905539023974
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A329505 n : ℝ) ^ n

end

end A240951.P17262891905539023974

namespace A240951

/-- `sqrt(A329505(n))^n` -/
def P17262891905539023974.Spec : Prop :=
  ∀ n, P17262891905539023974.a n = (A240951 (n + 1) : ℝ)

end A240951

/-! ## A240951.P10183394269395685336

`record[A323243(∑[n]%(n+2)+1)+1]`
-/

namespace A240951.P10183394269395685336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240951.P10183394269395685336

namespace A240951

/-- `record[A323243(∑[n]%(n+2)+1)+1]` -/
def P10183394269395685336.Spec : Prop :=
  ∀ n, P10183394269395685336.a n = A240951 (n + 1)

end A240951

/-! ## A240951.P18348947145406170339

`A200947(A335402(n+2))`
-/

namespace A240951.P18348947145406170339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200947 (A335402 (n + 2)).toNat

end

end A240951.P18348947145406170339

namespace A240951

/-- `A200947(A335402(n+2))` -/
def P18348947145406170339.Spec : Prop :=
  ∀ n, P18348947145406170339.a n = A240951 (n + 1)

end A240951

/-! ## A240951.P15508798204878550271

`and(A134522(n), A280373(n))`
-/

namespace A240951.P15508798204878550271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134522 n) (A280373 n)

end

end A240951.P15508798204878550271

namespace A240951

/-- `and(A134522(n), A280373(n))` -/
def P15508798204878550271.Spec : Prop :=
  ∀ n, P15508798204878550271.a n = A240951 (n + 1)

end A240951

/-! ## A240951.P862617309953935144

`∪[A098232(n), A132479(n)]`
-/

namespace A240951.P862617309953935144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098232 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132479 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A240951.P862617309953935144

namespace A240951

/-- `∪[A098232(n), A132479(n)]` -/
def P862617309953935144.Spec : Prop :=
  ∀ n, (P862617309953935144.a n : ℤ) = A240951 (n + 1)

end A240951

/-! ## A240951.P4390116928458102468

`∪[A132479(n), A346461(n+1)]`
-/

namespace A240951.P4390116928458102468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132479 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A240951.P4390116928458102468

namespace A240951

/-- `∪[A132479(n), A346461(n+1)]` -/
def P4390116928458102468.Spec : Prop :=
  ∀ n, (P4390116928458102468.a n : ℤ) = A240951 (n + 1)

end A240951

/-! ## A240951.P12656026622352953202

`and(A026622(n), A083318(n))`
-/

namespace A240951.P12656026622352953202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026622 n) (A083318 n)

end

end A240951.P12656026622352953202

namespace A240951

/-- `and(A026622(n), A083318(n))` -/
def P12656026622352953202.Spec : Prop :=
  ∀ n, P12656026622352953202.a n = A240951 (n + 1)

end A240951

/-! ## A240951.P5224623435350363929

`and(A026633(n), A083318(n))`
-/

namespace A240951.P5224623435350363929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026633 n) (A083318 n)

end

end A240951.P5224623435350363929

namespace A240951

/-- `and(A026633(n), A083318(n))` -/
def P5224623435350363929.Spec : Prop :=
  ∀ n, P5224623435350363929.a n = A240951 (n + 1)

end A240951

/-! ## A240951.P16444715574380593566

`and(A026622(n), A084215(n))`
-/

namespace A240951.P16444715574380593566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026622 n) (A084215 n)

end

end A240951.P16444715574380593566

namespace A240951

/-- `and(A026622(n), A084215(n))` -/
def P16444715574380593566.Spec : Prop :=
  ∀ n, P16444715574380593566.a n = A240951 (n + 1)

end A240951

/-! ## A240951.P15658999199804835392

`and(A026622(n), A104721(n))`
-/

namespace A240951.P15658999199804835392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026622 n) (A104721 n)

end

end A240951.P15658999199804835392

namespace A240951

/-- `and(A026622(n), A104721(n))` -/
def P15658999199804835392.Spec : Prop :=
  ∀ n, P15658999199804835392.a n = A240951 (n + 1)

end A240951

/-! ## A240951.P5057212866184379409

`and(A083318(n), A084215(n))`
-/

namespace A240951.P5057212866184379409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A084215 n)

end

end A240951.P5057212866184379409

namespace A240951

/-- `and(A083318(n), A084215(n))` -/
def P5057212866184379409.Spec : Prop :=
  ∀ n, P5057212866184379409.a n = A240951 (n + 1)

end A240951

/-!
# A240954: Number of initially rising meander words, where each letter of the cyclic n-ary alphabet occurs three times.

The programs for A240954, there is no canonical definition to state claims against.
-/

/-! ## A240954.P10628376130888252971

`A209349(∑[n+2]+7+n)`
-/

namespace A240954.P10628376130888252971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (∑ j ∈ Finset.range (n + 1), f1 j + 7 + n)

end

end A240954.P10628376130888252971

/-! ## A240954.P12968125551596256035

`A209349(A000217(n+3)+3)^A178334(n)`
-/

namespace A240954.P12968125551596256035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209349 (A000217 (n + 3) + 3).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A240954.P12968125551596256035

/-!
# A240955: Triangular array read by rows. T(n,k) is the number of k-colored labeled digraphs with n vertices, n>=1, 1<=k<=n.

The programs for A240955, there is no canonical definition to state claims against.
-/

/-! ## A240955.P4396141151475143295

`A000010(A082138(n*A004248(n)))`
-/

namespace A240955.P4396141151475143295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A082138 ((n : ℤ) * A004248 n).toNat).toNat

end

end A240955.P4396141151475143295

/-! ## A240955.P16190364404866815591

`A000010(A082138(n*A048723(n)))`
-/

namespace A240955.P16190364404866815591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A082138 ((n : ℤ) * A048723 n).toNat).toNat

end

end A240955.P16190364404866815591

/-! ## A240955.P9690511749232296402

`A000010(A082138(n*A097805(n)))`
-/

namespace A240955.P9690511749232296402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A082138 ((n : ℤ) * A097805 n).toNat).toNat

end

end A240955.P9690511749232296402

/-! ## A240955.P13648603459074873212

`A000010(A082138(n*A114219(n)))`
-/

namespace A240955.P13648603459074873212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A082138 ((n : ℤ) * A114219 n).toNat).toNat

end

end A240955.P13648603459074873212

/-!
# A240956: G.f.: Sum_{n>=0} n^n * x^n * (2 + n*x)^n / (1 + n*x)^(2*n+2).

The programs for A240956, there is no canonical definition to state claims against.
-/

/-! ## A240956.P14459671776694851633

`(n+1)*A138211(A100793(n))`
-/

namespace A240956.P14459671776694851633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A138211 (A100793 n).toNat

end

end A240956.P14459671776694851633

/-! ## A240956.P12108415239769337287

`A138211(A100793(n))*A291769(n)`
-/

namespace A240956.P12108415239769337287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138211 (A100793 n).toNat * A291769 n

end

end A240956.P12108415239769337287

/-!
# A240957: G.f.: Sum_{n>=0} n^n * x^n * (3 + 2*n*x)^n / ((1 + n*x)*(1 + 2*n*x))^(n+1).

The programs for A240957, there is no canonical definition to state claims against.
-/

/-! ## A240957.P9943790160288614000

`A333630(n)+A109740(A122746(n))`
-/

namespace A240957.P9943790160288614000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333630 n + A109740 (A122746 n).toNat

end

end A240957.P9943790160288614000

/-!
# A240958: G.f.: Sum_{n>=0} n^n * x^n * (1 + 2*n*x)^n / (1 + n*x + 2*n^2*x^2)^(n+1).

The programs for A240958, there is no canonical definition to state claims against.
-/

/-! ## A240958.P3673513838757919386

`A000010(A286306(n)+A070211(n))`
-/

namespace A240958.P3673513838757919386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A286306 n + A070211 n).toNat

end

end A240958.P3673513838757919386

/-! ## A240958.P13234560106262606158

`A038348(n)*A068322(A143523(n))`
-/

namespace A240958.P13234560106262606158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n * A068322 (A143523 n).toNat

end

end A240958.P13234560106262606158

/-!
# A240960: Numbers m such that sigma(m) - phi(m) = tau(m)^omega(m), where sigma=A000203, phi=A000010, tau=A000005 and omega=A001221.

The programs for A240960, the canonical program `A240960.P3834821827547813831` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240960 has offset 1).

The definition of A240960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240960.P8878811008052014390

`eq[A098988(n), A331097(n)]`
-/

namespace A240960.P8878811008052014390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240960.P8878811008052014390

namespace A240960

/-- `eq[A098988(n), A331097(n)]` -/
def P8878811008052014390.Spec : Prop :=
  ∀ n, (P8878811008052014390.a n : ℤ) = A240960 (n + 1)

end A240960

/-! ## A240960.P13738773385892689787

`lt[A353276(A028310(n))², 1]`
-/

namespace A240960.P13738773385892689787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A240960.P13738773385892689787

namespace A240960

/-- `lt[A353276(A028310(n))², 1]` -/
def P13738773385892689787.Spec : Prop :=
  ∀ n, (P13738773385892689787.a n : ℤ) = A240960 (n + 1)

end A240960

/-! ## A240960.P3834821827547813831

`filter[A062972(n+1), A296211(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A240960

/-- `filter[A062972(n+1), A296211(#)]` -/
def P3834821827547813831.Spec : Prop :=
  ∀ n, P3834821827547813831.a n = A240960 (n + 1)

theorem P3834821827547813831.correct : P3834821827547813831.Spec := by
  intro n
  simp only [A240960, Nat.add_sub_cancel]

end A240960

/-! ## A240960.P573526137028470859

`filter[A082664(n+1), A324732(#)]`
-/

namespace A240960.P573526137028470859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324732 (f1 j).toNat = 1) n)

end

end A240960.P573526137028470859

namespace A240960

/-- `filter[A082664(n+1), A324732(#)]` -/
def P573526137028470859.Spec : Prop :=
  ∀ n, P573526137028470859.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P8926240723288592512

`filter[A062972(n+1), A353471(#)]`
-/

namespace A240960.P8926240723288592512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A240960.P8926240723288592512

namespace A240960

/-- `filter[A062972(n+1), A353471(#)]` -/
def P8926240723288592512.Spec : Prop :=
  ∀ n, P8926240723288592512.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P1704893295136911243

`filter[A082664(n+1), A351956(#)]`
-/

namespace A240960.P1704893295136911243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351956 (f1 j).toNat = 1) n)

end

end A240960.P1704893295136911243

namespace A240960

/-- `filter[A082664(n+1), A351956(#)]` -/
def P1704893295136911243.Spec : Prop :=
  ∀ n, P1704893295136911243.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P886418759390988118

`filter[A085783(n+1), A373486(#)]`
-/

namespace A240960.P886418759390988118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A240960.P886418759390988118

namespace A240960

/-- `filter[A085783(n+1), A373486(#)]` -/
def P886418759390988118.Spec : Prop :=
  ∀ n, P886418759390988118.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P11431208474466855770

`filter[A085784(n+1), A373486(#)]`
-/

namespace A240960.P11431208474466855770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A240960.P11431208474466855770

namespace A240960

/-- `filter[A085784(n+1), A373486(#)]` -/
def P11431208474466855770.Spec : Prop :=
  ∀ n, P11431208474466855770.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P4463201468379080103

`filter[A106843(n+1), A373486(#)]`
-/

namespace A240960.P4463201468379080103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A240960.P4463201468379080103

namespace A240960

/-- `filter[A106843(n+1), A373486(#)]` -/
def P4463201468379080103.Spec : Prop :=
  ∀ n, P4463201468379080103.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P6478248526605373703

`filter[A265999(n+1), A266719(#)]`
-/

namespace A240960.P6478248526605373703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A240960.P6478248526605373703

namespace A240960

/-- `filter[A265999(n+1), A266719(#)]` -/
def P6478248526605373703.Spec : Prop :=
  ∀ n, P6478248526605373703.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P4215372025774718770

`filter[A182140(n+1), A351956(#)]`
-/

namespace A240960.P4215372025774718770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351956 (f1 j).toNat = 1) n)

end

end A240960.P4215372025774718770

namespace A240960

/-- `filter[A182140(n+1), A351956(#)]` -/
def P4215372025774718770.Spec : Prop :=
  ∀ n, P4215372025774718770.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P2002376641696748822

`filter[A265999(n+1), A296066(#)]`
-/

namespace A240960.P2002376641696748822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A240960.P2002376641696748822

namespace A240960

/-- `filter[A265999(n+1), A296066(#)]` -/
def P2002376641696748822.Spec : Prop :=
  ∀ n, P2002376641696748822.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P8904900646808454347

`filter[A265999(n+1), A391240(#)]`
-/

namespace A240960.P8904900646808454347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A240960.P8904900646808454347

namespace A240960

/-- `filter[A265999(n+1), A391240(#)]` -/
def P8904900646808454347.Spec : Prop :=
  ∀ n, P8904900646808454347.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P9413497510445638835

`filter[A342008(n+1), A351956(#)]`
-/

namespace A240960.P9413497510445638835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351956 (f1 j).toNat = 1) n)

end

end A240960.P9413497510445638835

namespace A240960

/-- `filter[A342008(n+1), A351956(#)]` -/
def P9413497510445638835.Spec : Prop :=
  ∀ n, P9413497510445638835.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P773059484335832928

`filter[A307750(n+1), A391240(#)]`
-/

namespace A240960.P773059484335832928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A240960.P773059484335832928

namespace A240960

/-- `filter[A307750(n+1), A391240(#)]` -/
def P773059484335832928.Spec : Prop :=
  ∀ n, P773059484335832928.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P11578033322392771088

`filter[A385755(n+1), A391240(#)]`
-/

namespace A240960.P11578033322392771088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A240960.P11578033322392771088

namespace A240960

/-- `filter[A385755(n+1), A391240(#)]` -/
def P11578033322392771088.Spec : Prop :=
  ∀ n, P11578033322392771088.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P3081349270489203792

`filter[A062972(n+2), A192280(#)]`
-/

namespace A240960.P3081349270489203792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A240960.P3081349270489203792

namespace A240960

/-- `filter[A062972(n+2), A192280(#)]` -/
def P3081349270489203792.Spec : Prop :=
  ∀ n, P3081349270489203792.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P9436251973556556099

`filter[A081730(n+2), A192280(#)]`
-/

namespace A240960.P9436251973556556099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081730 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A240960.P9436251973556556099

namespace A240960

/-- `filter[A081730(n+2), A192280(#)]` -/
def P9436251973556556099.Spec : Prop :=
  ∀ n, P9436251973556556099.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P7075132403979823114

`filter[A117287(n+2), A192280(#)]`
-/

namespace A240960.P7075132403979823114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117287 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A240960.P7075132403979823114

namespace A240960

/-- `filter[A117287(n+2), A192280(#)]` -/
def P7075132403979823114.Spec : Prop :=
  ∀ n, P7075132403979823114.a n = A240960 (n + 1)

end A240960

/-! ## A240960.P16588683439203214009

`filter[A123091(n+2), A192280(#)]`
-/

namespace A240960.P16588683439203214009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A240960.P16588683439203214009

namespace A240960

/-- `filter[A123091(n+2), A192280(#)]` -/
def P16588683439203214009.Spec : Prop :=
  ∀ n, P16588683439203214009.a n = A240960 (n + 1)

end A240960

/-!
# A240962: Number of zeros in the decimal expansion of n^n.

The programs for A240962, there is no canonical definition to state claims against.
-/

/-! ## A240962.P3038352369951788661

`∑{digits}[(n+1)^(n+1), A347689(#)^#]`
-/

namespace A240962.P3038352369951788661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A347689 x ^ x).sum

end

end A240962.P3038352369951788661

/-! ## A240962.P2694340145962259344

`∑{digits}[(n+1)^(n+1), A084039(#+1)%2]`
-/

namespace A240962.P2694340145962259344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (A084039 (x + 1)) 2).sum

end

end A240962.P2694340145962259344

/-! ## A240962.P17037287987161778432

`∑{digits}[(n+1)^(n+1), A252930(#+1)^#]`
-/

namespace A240962.P17037287987161778432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A252930 (x + 1) ^ x).sum

end

end A240962.P17037287987161778432

/-!
# A240968: Unitary anti-perfect numbers.

The programs for A240968, there is no canonical definition to state claims against.
-/

/-! ## A240968.P5037517191792382090

`eq[n+1, A240979(n+1)]+1`
-/

namespace A240968.P5037517191792382090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A240968.P5037517191792382090

/-!
# A240971: Primes p such that (p^2 + p + 1)/3 is prime.

The programs for A240971, there is no canonical definition to state claims against.
-/

/-! ## A240971.P6429860438634638589

`∩[A002476(n+1), A115558(n+1)]`
-/

namespace A240971.P6429860438634638589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P6429860438634638589

/-! ## A240971.P14142643054556875516

`∩[A007645(n+1), A115558(n+1)]`
-/

namespace A240971.P14142643054556875516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P14142643054556875516

/-! ## A240971.P8532560654837848768

`∩[A045331(n+1), A115558(n+1)]`
-/

namespace A240971.P8532560654837848768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P8532560654837848768

/-! ## A240971.P6952001878353764536

`∩[A045375(n+1), A115558(n+1)]`
-/

namespace A240971.P6952001878353764536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P6952001878353764536

/-! ## A240971.P11424444002129748880

`∩[A115558(n+1), A279815(n+1)]`
-/

namespace A240971.P11424444002129748880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P11424444002129748880

/-! ## A240971.P18151043619958489955

`p?[A002640(n+1)]`
-/

namespace A240971.P18151043619958489955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240971.P18151043619958489955

/-! ## A240971.P5327323919564926189

`p?[3*A111251(n+1)+1]`
-/

namespace A240971.P5327323919564926189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A111251 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240971.P5327323919564926189

/-! ## A240971.P13192265083819509661

`p?[3*A002504(n+1)-2]`
-/

namespace A240971.P13192265083819509661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002504 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240971.P13192265083819509661

/-! ## A240971.P3437522599540648144

`∩[A002476(n+1), A002640(n+1)]`
-/

namespace A240971.P3437522599540648144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P3437522599540648144

/-! ## A240971.P12299990830344643735

`∩[A002640(n+1), A007645(n+1)]`
-/

namespace A240971.P12299990830344643735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P12299990830344643735

/-! ## A240971.P11799461720222054232

`∩[A002640(n+1), A045331(n+1)]`
-/

namespace A240971.P11799461720222054232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P11799461720222054232

/-! ## A240971.P4637796847515228051

`∩[A002640(n+1), A045375(n+1)]`
-/

namespace A240971.P4637796847515228051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P4637796847515228051

/-! ## A240971.P7096791753550241663

`∩[A002640(n+1), A123365(n+1)]`
-/

namespace A240971.P7096791753550241663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P7096791753550241663

/-! ## A240971.P13624096282427881230

`∩[A002640(n+1), A380468(n+1)]`
-/

namespace A240971.P13624096282427881230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P13624096282427881230

/-! ## A240971.P2861593961454918665

`∩[A002640(n+1), A045398(n+1)]`
-/

namespace A240971.P2861593961454918665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P2861593961454918665

/-! ## A240971.P9093262494149132381

`∩[A002640(n+1), A040116(n+1)]`
-/

namespace A240971.P9093262494149132381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P9093262494149132381

/-! ## A240971.P349217235406480949

`∩[A002640(n+1), A325143(n+1)]`
-/

namespace A240971.P349217235406480949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P349217235406480949

/-! ## A240971.P9282536311120194710

`∩[A002640(n+1), A132143(n+1)]`
-/

namespace A240971.P9282536311120194710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P9282536311120194710

/-! ## A240971.P4934174877460484990

`∩[A002640(n+1), A042990(n)]`
-/

namespace A240971.P4934174877460484990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240971.P4934174877460484990

/-!
# A240972: Lexicographically earliest sequence such that (i) the binary plot of the sequence is symmetric with respect to the line y=x and (ii) the derived sequence (A000265(a(n))) contains only distinct terms.

The programs for A240972, there is no canonical definition to state claims against.
-/

/-! ## A240972.P14927583903768553613

`lcm(record[A143119(n+1)], A096096(n+1))`
-/

namespace A240972.P14927583903768553613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A096096 (n + 1))

end

end A240972.P14927583903768553613

/-! ## A240972.P1783259968561895820

`A154453(A096096(n+1)*A240992(n+1))`
-/

namespace A240972.P1783259968561895820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (A096096 (n + 1) * A240992 (n + 1)).toNat

end

end A240972.P1783259968561895820

/-! ## A240972.P6020947992388499388

`A240992(n+1)*A321320(A110744(n+1))`
-/

namespace A240972.P6020947992388499388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240992 (n + 1) * A321320 (A110744 (n + 1)).toNat

end

end A240972.P6020947992388499388

/-!
# A240973: The number of switching equivalent classes of cube root edge weighted graphs.

The programs for A240973, there is no canonical definition to state claims against.
-/

/-! ## A240973.P16177826927285509496

`A296510(a(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A240973.P16177826927285509496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A296510 (a (n - 1)).toNat + 1

end

end A240973.P16177826927285509496

/-! ## A240973.P10189621841774678871

`A241312(2^n)+floor((n/2)²)`
-/

namespace A240973.P10189621841774678871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 (2 ^ n) + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A240973.P10189621841774678871

/-!
# A240974: Numbers of the form x^y - x*y for x > 1 and y > 1.

The programs for A240974, there is no canonical definition to state claims against.
-/

/-! ## A240974.P1329519138825928900

`record[n-A175427(A000026(n+1))]`
-/

namespace A240974.P1329519138825928900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A175427 (A000026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240974.P1329519138825928900

/-! ## A240974.P1102604238783219772

`eq[A020639(A098978(n)), A131789(n+1)]`
-/

namespace A240974.P1102604238783219772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A098978 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240974.P1102604238783219772

/-! ## A240974.P14817182192925299303

`eq[A351570(A351601(n+2)), A351573(n+1)]`
-/

namespace A240974.P14817182192925299303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (A351601 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240974.P14817182192925299303

/-!
# A240975: The number of distinct prime factors of n^3-1.

The programs for A240975, the canonical program `A240975.P18124287489013526821` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240975 has offset 1).

The definition of A240975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240975.P18124287489013526821

`∑{e}[(n+1)^3-1, gcd(7, #)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240975

/-- `∑{e}[(n+1)^3-1, gcd(7, #)]` -/
def P18124287489013526821.Spec : Prop :=
  ∀ n, (P18124287489013526821.a n : ℤ) = A240975 (n + 1)

theorem P18124287489013526821.correct : P18124287489013526821.Spec := by
  intro n
  simp only [A240975, Nat.add_sub_cancel]

end A240975

/-! ## A240975.P5885364349700282102

`∑{e}[∏{p}[1-(n+1)^3, #], #]`
-/

namespace A240975.P5885364349700282102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 1) ^ 3 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A240975.P5885364349700282102

namespace A240975

/-- `∑{e}[∏{p}[1-(n+1)^3, #], #]` -/
def P5885364349700282102.Spec : Prop :=
  ∀ n, (P5885364349700282102.a n : ℤ) = A240975 (n + 1)

end A240975

/-! ## A240975.P8989351270906847575

`∑{e}[A068601(n+1), ceil(#/20)]`
-/

namespace A240975.P8989351270906847575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ⌈(Nat.factorization (f1 n).natAbs p : ℚ) / 20⌉

end

end A240975.P8989351270906847575

namespace A240975

/-- `∑{e}[A068601(n+1), ceil(#/20)]` -/
def P8989351270906847575.Spec : Prop :=
  ∀ n, P8989351270906847575.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P2894695396559488988

`∑{p}[Δ[∑[n]²]-1, A001222(#)]`
-/

namespace A240975.P2894695396559488988
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A240975.P2894695396559488988

namespace A240975

/-- `∑{p}[Δ[∑[n]²]-1, A001222(#)]` -/
def P2894695396559488988.Spec : Prop :=
  ∀ n, P2894695396559488988.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P2819183789663389823

`∑{p}[1-(n+1)^3, A001221(#)]`
-/

namespace A240975.P2819183789663389823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 1) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A240975.P2819183789663389823

namespace A240975

/-- `∑{p}[1-(n+1)^3, A001221(#)]` -/
def P2819183789663389823.Spec : Prop :=
  ∀ n, P2819183789663389823.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P5204391987139194139

`∑{p}[(n+1)^3-1, A033273(#)]`
-/

namespace A240975.P5204391987139194139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A033273 p

end

end A240975.P5204391987139194139

namespace A240975

/-- `∑{p}[(n+1)^3-1, A033273(#)]` -/
def P5204391987139194139.Spec : Prop :=
  ∀ n, P5204391987139194139.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P3520042577890426735

`∑{e}[1-(n+1)^3, A054977(#)]`
-/

namespace A240975.P3520042577890426735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 1) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A054977 (Nat.factorization (f1 n).natAbs p)

end

end A240975.P3520042577890426735

namespace A240975

/-- `∑{e}[1-(n+1)^3, A054977(#)]` -/
def P3520042577890426735.Spec : Prop :=
  ∀ n, P3520042577890426735.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P1929745190827128021

`∑{p}[A068601(n+1), A045778(#)]`
-/

namespace A240975.P1929745190827128021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A045778 p

end

end A240975.P1929745190827128021

namespace A240975

/-- `∑{p}[A068601(n+1), A045778(#)]` -/
def P1929745190827128021.Spec : Prop :=
  ∀ n, P1929745190827128021.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P11902424714340358317

`∑{p}[A068601(n+1), A062378(#)]`
-/

namespace A240975.P11902424714340358317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A062378 p

end

end A240975.P11902424714340358317

namespace A240975

/-- `∑{p}[A068601(n+1), A062378(#)]` -/
def P11902424714340358317.Spec : Prop :=
  ∀ n, P11902424714340358317.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P5250594864881855314

`∑{p}[A068601(n+1), abs(A008836(#))]`
-/

namespace A240975.P5250594864881855314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, |A008836 p|

end

end A240975.P5250594864881855314

namespace A240975

/-- `∑{p}[A068601(n+1), abs(A008836(#))]` -/
def P5250594864881855314.Spec : Prop :=
  ∀ n, P5250594864881855314.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P8655279524902305365

`∑{p}[A068601(n+1), A008683(#)²]`
-/

namespace A240975.P8655279524902305365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 p ^ 2

end

end A240975.P8655279524902305365

namespace A240975

/-- `∑{p}[A068601(n+1), A008683(#)²]` -/
def P8655279524902305365.Spec : Prop :=
  ∀ n, P8655279524902305365.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P7432764565831819625

`∑{p}[A068601(n+1), A000007(#)+1]`
-/

namespace A240975.P7432764565831819625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000007 p + 1)

end

end A240975.P7432764565831819625

namespace A240975

/-- `∑{p}[A068601(n+1), A000007(#)+1]` -/
def P7432764565831819625.Spec : Prop :=
  ∀ n, P7432764565831819625.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P10750510273700783717

`∑{p}[A068601(n+1), A000038(#)+1]`
-/

namespace A240975.P10750510273700783717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000038 p + 1)

end

end A240975.P10750510273700783717

namespace A240975

/-- `∑{p}[A068601(n+1), A000038(#)+1]` -/
def P10750510273700783717.Spec : Prop :=
  ∀ n, P10750510273700783717.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P8971196166703620868

`∑{p}[A068601(n+1), A000041(C(2, #))]`
-/

namespace A240975.P8971196166703620868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.choose 2 p)

end

end A240975.P8971196166703620868

namespace A240975

/-- `∑{p}[A068601(n+1), A000041(C(2, #))]` -/
def P8971196166703620868.Spec : Prop :=
  ∀ n, P8971196166703620868.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P5284248524331005838

`∑{p}[A068601(n+1), A007318(C(2, #))]`
-/

namespace A240975.P5284248524331005838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.choose 2 p)

end

end A240975.P5284248524331005838

namespace A240975

/-- `∑{p}[A068601(n+1), A007318(C(2, #))]` -/
def P5284248524331005838.Spec : Prop :=
  ∀ n, P5284248524331005838.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P13236850258235950621

`∑{p}[A068601(n+1), #-A000010(#)]`
-/

namespace A240975.P13236850258235950621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - A000010 p)

end

end A240975.P13236850258235950621

namespace A240975

/-- `∑{p}[A068601(n+1), #-A000010(#)]` -/
def P13236850258235950621.Spec : Prop :=
  ∀ n, P13236850258235950621.a n = A240975 (n + 1)

end A240975

/-! ## A240975.P16581872155750519478

`∑{p}[A068601(n+1), #/A014963(#)]`
-/

namespace A240975.P16581872155750519478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A014963 p : ℚ)

end

end A240975.P16581872155750519478

namespace A240975

/-- `∑{p}[A068601(n+1), #/A014963(#)]` -/
def P16581872155750519478.Spec : Prop :=
  ∀ n, P16581872155750519478.a n = (A240975 (n + 1) : ℚ)

end A240975

/-! ## A240975.P14031633487560401874

`A001222(∏{e}[1-(n+1)^3, A000040(#)])`
-/

namespace A240975.P14031633487560401874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 1) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A240975.P14031633487560401874

namespace A240975

/-- `A001222(∏{e}[1-(n+1)^3, A000040(#)])` -/
def P14031633487560401874.Spec : Prop :=
  ∀ n, P14031633487560401874.a n = A240975 (n + 1)

end A240975

/-!
# A240977: Beatty sequence for cube root of Pi: a(n) = floor(n*Pi^(1/3)).

The programs for A240977, the canonical program `A240977.P15434385055763482571` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240977 has offset 0).

The definition of A240977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*π^(1/3))` (program `A240977.P15434385055763482571`, by `A240977.P15434385055763482571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240977.P15434385055763482571

`floor(n*π^(1/3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240977

/-- `floor(n*π^(1/3))` -/
def P15434385055763482571.Spec : Prop :=
  ∀ n, P15434385055763482571.a n = A240977 n

theorem P15434385055763482571.correct : P15434385055763482571.Spec := by
  intro n
  simp only [A240977]

end A240977

/-! ## A240977.P3618536715845315009

`comp[A248524(n+1)]`
-/

namespace A240977.P3618536715845315009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A240977.P3618536715845315009

namespace A240977

/-- `comp[A248524(n+1)]` -/
def P3618536715845315009.Spec : Prop :=
  ∀ n, (P3618536715845315009.a n : ℤ) = A240977 n

end A240977

/-! ## A240977.P16772811759031419003

`A248758(n)+A057428(n)`
-/

namespace A240977.P16772811759031419003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248758 n + A057428 n

end

end A240977.P16772811759031419003

namespace A240977

/-- `A248758(n)+A057428(n)` -/
def P16772811759031419003.Spec : Prop :=
  ∀ n, P16772811759031419003.a n = A240977 n

end A240977

/-! ## A240977.P6927913095353951752

`A248758(n)-A057427(n)`
-/

namespace A240977.P6927913095353951752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248758 n - A057427 n

end

end A240977.P6927913095353951752

namespace A240977

/-- `A248758(n)-A057427(n)` -/
def P6927913095353951752.Spec : Prop :=
  ∀ n, P6927913095353951752.a n = A240977 n

end A240977

/-! ## A240977.P6238133915523102888

`A248758(n)-A178226(2*n)`
-/

namespace A240977.P6238133915523102888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248758 n - A178226 (2 * n)

end

end A240977.P6238133915523102888

namespace A240977

/-- `A248758(n)-A178226(2*n)` -/
def P6238133915523102888.Spec : Prop :=
  ∀ n, P6238133915523102888.a n = A240977 n

end A240977

/-! ## A240977.P11205906557755110837

`A248758(n)-A000040(n+1)%2`
-/

namespace A240977.P11205906557755110837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248758 n - Int.tmod (A000040 (n + 1)) 2

end

end A240977.P11205906557755110837

namespace A240977

/-- `A248758(n)-A000040(n+1)%2` -/
def P11205906557755110837.Spec : Prop :=
  ∀ n, P11205906557755110837.a n = A240977 n

end A240977

/-! ## A240977.P5056166273587450124

`A248758(n)-(2*n-A004273(n))`
-/

namespace A240977.P5056166273587450124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248758 n - ((2 * n : ℤ) - A004273 n)

end

end A240977.P5056166273587450124

namespace A240977

/-- `A248758(n)-(2*n-A004273(n))` -/
def P5056166273587450124.Spec : Prop :=
  ∀ n, P5056166273587450124.a n = A240977 n

end A240977

/-! ## A240977.P9306522673551445289

`A248758(n)-A037916(A068319(n+1))`
-/

namespace A240977.P9306522673551445289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248758 n - A037916 (A068319 (n + 1)).toNat

end

end A240977.P9306522673551445289

namespace A240977

/-- `A248758(n)-A037916(A068319(n+1))` -/
def P9306522673551445289.Spec : Prop :=
  ∀ n, P9306522673551445289.a n = A240977 n

end A240977

/-! ## A240977.P13585952593966343324

`A248758(n)-A157928(n+1)`
-/

namespace A240977.P13585952593966343324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248758 n - A157928 (n + 1)

end

end A240977.P13585952593966343324

namespace A240977

/-- `A248758(n)-A157928(n+1)` -/
def P13585952593966343324.Spec : Prop :=
  ∀ n, P13585952593966343324.a n = A240977 n

end A240977

/-! ## A240977.P17849337556984405278

`A248758(n)-A001221(A008578(n+1))`
-/

namespace A240977.P17849337556984405278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248758 n - A001221 (A008578 (n + 1)).toNat

end

end A240977.P17849337556984405278

namespace A240977

/-- `A248758(n)-A001221(A008578(n+1))` -/
def P17849337556984405278.Spec : Prop :=
  ∀ n, P17849337556984405278.a n = A240977 n

end A240977

/-! ## A240977.P16392881539580057692

`A183138(A008706(n))%A345352(A167499(n))`
-/

namespace A240977.P16392881539580057692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183138 (A008706 n).toNat) (A345352 (A167499 n).toNat)

end

end A240977.P16392881539580057692

namespace A240977

/-- `A183138(A008706(n))%A345352(A167499(n))` -/
def P16392881539580057692.Spec : Prop :=
  ∀ n, P16392881539580057692.a n = A240977 n

end A240977

/-! ## A240977.P13628439310642774193

`A183138(A008706(n)^A178334(n))`
-/

namespace A240977.P13628439310642774193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (SequenceMachineLib.roundAway ((A008706 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A240977.P13628439310642774193

namespace A240977

/-- `A183138(A008706(n)^A178334(n))` -/
def P13628439310642774193.Spec : Prop :=
  ∀ n, P13628439310642774193.a n = A240977 n

end A240977

/-!
# A240981: Smallest perfect power b^e such that b^e+prime(n) is also a perfect power.

The programs for A240981, there is no canonical definition to state claims against.
-/

/-! ## A240981.P9753086358132315267

`A103953(Δ[A007504(n)])`
-/

namespace A240981.P9753086358132315267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103953 (f1 (n + 1) - f1 n).toNat

end

end A240981.P9753086358132315267

/-! ## A240981.P5883372852741816029

`A103953(A000040(n+1))`
-/

namespace A240981.P5883372852741816029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103953 (A000040 (n + 1)).toNat

end

end A240981.P5883372852741816029

/-! ## A240981.P18378927617772718703

`A103953(A030291(n+1))`
-/

namespace A240981.P18378927617772718703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103953 (A030291 (n + 1)).toNat

end

end A240981.P18378927617772718703

/-! ## A240981.P16602500512056551261

`A103953(A030475(n+1))`
-/

namespace A240981.P16602500512056551261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103953 (A030475 (n + 1)).toNat

end

end A240981.P16602500512056551261

/-! ## A240981.P4755667687244333203

`A103953(A038616(n+1))`
-/

namespace A240981.P4755667687244333203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103953 (A038616 (n + 1)).toNat

end

end A240981.P4755667687244333203

/-!
# A240983: Integers of the form 2^p*p^2 where p is the lesser of a pair of twin primes.

The programs for A240983, the canonical program `A240983.P4765799281226653439` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240983 has offset 1).

The definition of A240983 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240983.P4765799281226653439

`A007758(A001359(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A240983

/-- `A007758(A001359(n+1))` -/
def P4765799281226653439.Spec : Prop :=
  ∀ n, P4765799281226653439.a n = A240983 (n + 1)

theorem P4765799281226653439.correct : P4765799281226653439.Spec := by
  intro n
  simp only [A240983, Nat.add_sub_cancel]

end A240983

/-! ## A240983.P9010480211561550840

`A007758(record[p?[A007431(n)]])`
-/

namespace A240983.P9010480211561550840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240983.P9010480211561550840

namespace A240983

/-- `A007758(record[p?[A007431(n)]])` -/
def P9010480211561550840.Spec : Prop :=
  ∀ n, P9010480211561550840.a n = A240983 (n + 1)

end A240983

/-! ## A240983.P8418166186934332880

`A007758(p?[n-A053204(n)])`
-/

namespace A240983.P8418166186934332880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A240983.P8418166186934332880

namespace A240983

/-- `A007758(p?[n-A053204(n)])` -/
def P8418166186934332880.Spec : Prop :=
  ∀ n, P8418166186934332880.a n = A240983 (n + 1)

end A240983

/-! ## A240983.P17036727400111642280

`A007758(p?[A007431(A008578(n+1))])`
-/

namespace A240983.P17036727400111642280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A240983.P17036727400111642280

namespace A240983

/-- `A007758(p?[A007431(A008578(n+1))])` -/
def P17036727400111642280.Spec : Prop :=
  ∀ n, P17036727400111642280.a n = A240983 (n + 1)

end A240983

/-!
# A240988: Denominators of the (reduced) rationals (((n-1)!!)/(n!! * 2^((1 + (-1)^n)/2)))^((-1)^n), where n is a positive integer.

The programs for A240988, the canonical program `A240988.P10865722957782087010` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240988 has offset 1).

The definition of A240988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240988.P7802206728119963736

`2^(∑[val(n+1, 2)]+n%2)`
-/

namespace A240988.P7802206728119963736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j + n % 2)

end

end A240988.P7802206728119963736

namespace A240988

/-- `2^(∑[val(n+1, 2)]+n%2)` -/
def P7802206728119963736.Spec : Prop :=
  ∀ n, (P7802206728119963736.a n : ℤ) = A240988 (n + 1)

end A240988

/-! ## A240988.P6627465468759503333

`2^(∑[val(n+1, 2)]+and(1, n))`
-/

namespace A240988.P6627465468759503333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n)

end

end A240988.P6627465468759503333

namespace A240988

/-- `2^(∑[val(n+1, 2)]+and(1, n))` -/
def P6627465468759503333.Spec : Prop :=
  ∀ n, (P6627465468759503333.a n : ℤ) = A240988 (n + 1)

end A240988

/-! ## A240988.P10865722957782087010

`and(n+1, -n)*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240988

/-- `and(n+1, -n)*a(n-2)` -/
def P10865722957782087010.Spec : Prop :=
  ∀ n, P10865722957782087010.a n = A240988 (n + 1)

theorem P10865722957782087010.correct : P10865722957782087010.Spec := by
  intro n
  simp only [A240988, Nat.add_sub_cancel]

end A240988

/-! ## A240988.P3724425585309912486

`(and(1, n)+1)*∏[or(n, n+1)-n]`
-/

namespace A240988.P3724425585309912486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A240988.P3724425585309912486

namespace A240988

/-- `(and(1, n)+1)*∏[or(n, n+1)-n]` -/
def P3724425585309912486.Spec : Prop :=
  ∀ n, P3724425585309912486.a n = A240988 (n + 1)

end A240988

/-! ## A240988.P9792335634825439134

`A060818(n)*A297402(n+1)`
-/

namespace A240988.P9792335634825439134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 n * A297402 (n + 1)

end

end A240988.P9792335634825439134

namespace A240988

/-- `A060818(n)*A297402(n+1)` -/
def P9792335634825439134.Spec : Prop :=
  ∀ n, P9792335634825439134.a n = A240988 (n + 1)

end A240988

/-! ## A240988.P17410926908570304875

`A056450(n)/A048896(n)`
-/

namespace A240988.P17410926908570304875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056450 n : ℚ) / (A048896 n : ℚ)

end

end A240988.P17410926908570304875

namespace A240988

/-- `A056450(n)/A048896(n)` -/
def P17410926908570304875.Spec : Prop :=
  ∀ n, P17410926908570304875.a n = (A240988 (n + 1) : ℚ)

end A240988

/-! ## A240988.P5152291087628191269

`A130188(n)/A060632(n)`
-/

namespace A240988.P5152291087628191269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130188 n : ℚ) / (A060632 n : ℚ)

end

end A240988.P5152291087628191269

namespace A240988

/-- `A130188(n)/A060632(n)` -/
def P5152291087628191269.Spec : Prop :=
  ∀ n, P5152291087628191269.a n = (A240988 (n + 1) : ℚ)

end A240988

/-! ## A240988.P10260785987151866810

`A113479(n)/a(n-1)` with `a(0)=1`
-/

namespace A240988.P10260785987151866810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A113479 n : ℚ) / a (n - 1)

end

end A240988.P10260785987151866810

namespace A240988

/-- `A113479(n)/a(n-1)` -/
def P10260785987151866810.Spec : Prop :=
  ∀ n, P10260785987151866810.a n = (A240988 (n + 1) : ℚ)

end A240988

/-! ## A240988.P13814252985990914398

`A120777(n)/A213173(n)`
-/

namespace A240988.P13814252985990914398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120777 n : ℚ) / (A213173 n : ℚ)

end

end A240988.P13814252985990914398

namespace A240988

/-- `A120777(n)/A213173(n)` -/
def P13814252985990914398.Spec : Prop :=
  ∀ n, P13814252985990914398.a n = (A240988 (n + 1) : ℚ)

end A240988

/-! ## A240988.P18064273961639828681

`A327493(n)/A084623(n+1)`
-/

namespace A240988.P18064273961639828681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327493 n : ℚ) / (A084623 (n + 1) : ℚ)

end

end A240988.P18064273961639828681

namespace A240988

/-- `A327493(n)/A084623(n+1)` -/
def P18064273961639828681.Spec : Prop :=
  ∀ n, P18064273961639828681.a n = (A240988 (n + 1) : ℚ)

end A240988

/-!
# A240989: Expansion of e.g.f. exp(x^2 * (exp(x) - 1)).

The programs for A240989, there is no canonical definition to state claims against.
-/

/-! ## A240989.P15776027050732069569

`A292892(∑[n+3])`
-/

namespace A240989.P15776027050732069569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292892 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240989.P15776027050732069569

/-! ## A240989.P16087640153642127072

`lcm(1-n, A292892(A055998(n+1)))`
-/

namespace A240989.P16087640153642127072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (A292892 (A055998 (n + 1)).toNat)

end

end A240989.P16087640153642127072

/-! ## A240989.P14988537129751386254

`or(A000007(n), A292892(A055998(n+1)))`
-/

namespace A240989.P14988537129751386254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292892 (A055998 (n + 1)).toNat)

end

end A240989.P14988537129751386254

/-! ## A240989.P15279308836779047132

`char[A004442(n)]*A292892(A055998(n+1))`
-/

namespace A240989.P15279308836779047132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A292892 (A055998 (n + 1)).toNat

end

end A240989.P15279308836779047132

/-! ## A240989.P8860106449969814147

`char[A025581(n)]*A292892(A055998(n+1))`
-/

namespace A240989.P8860106449969814147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A292892 (A055998 (n + 1)).toNat

end

end A240989.P8860106449969814147

/-! ## A240989.P723471291816109294

`A134323(n+1)²*A292892(A055998(n+1))`
-/

namespace A240989.P723471291816109294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1) ^ 2 * A292892 (A055998 (n + 1)).toNat

end

end A240989.P723471291816109294

/-! ## A240989.P14049880569294626660

`char[A055460(n+1)]*A292892(A055998(n+1))`
-/

namespace A240989.P14049880569294626660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055460 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A292892 (A055998 (n + 1)).toNat

end

end A240989.P14049880569294626660

/-! ## A240989.P8268695728117691737

`A004736(C(n+2, 2))*A292892(A055998(n+1))`
-/

namespace A240989.P8268695728117691737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Nat.choose (n + 2) 2) * A292892 (A055998 (n + 1)).toNat

end

end A240989.P8268695728117691737

/-! ## A240989.P8018869538368596103

`A040001(A065091(2*n+1))*A292892(A055998(n+1))`
-/

namespace A240989.P8018869538368596103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A065091 (2 * n + 1)).toNat * A292892 (A055998 (n + 1)).toNat

end

end A240989.P8018869538368596103

/-!
# A240991: Integers m such that A240923(m) = 1, where A240923(n) = numerator(sigma(n)/n) - sigma(denominator(sigma(n)/n)).

The programs for A240991, there is no canonical definition to state claims against.
-/

/-! ## A240991.P14133674572603038174

`eq[1, A240923(n+1)]+1`
-/

namespace A240991.P14133674572603038174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A240991.P14133674572603038174

/-! ## A240991.P7876671619521026768

`eq[1, A240923(A028310(n))]`
-/

namespace A240991.P7876671619521026768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240991.P7876671619521026768

/-! ## A240991.P17086995310027752135

`A020725(eq[1, A240923(n+1)])`
-/

namespace A240991.P17086995310027752135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240991.P17086995310027752135

/-! ## A240991.P10149502507889602053

`A092200(eq[1, A240923(n+1)])`
-/

namespace A240991.P10149502507889602053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240991.P10149502507889602053

/-! ## A240991.P8863045959021676143

`filter[A387406(n+1), A104894(#)]`
-/

namespace A240991.P8863045959021676143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104894 (f1 j).toNat = 1) n)

end

end A240991.P8863045959021676143

/-!
# A240992: The odd part of A240972.

The programs for A240992, there is no canonical definition to state claims against.
-/

/-! ## A240992.P10991786107343892243

`A000265(A240972(n+1))`
-/

namespace A240992.P10991786107343892243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A240972 (n + 1)).toNat

end

end A240992.P10991786107343892243

/-! ## A240992.P8777553201934247759

`A240972(n+1)/gcd(A000079(n), A240972(n+1))`
-/

namespace A240992.P8777553201934247759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240972 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A240972 (n + 1)) : ℚ)

end

end A240992.P8777553201934247759

/-! ## A240992.P17678037451420054520

`lcm(A000079(n), A240972(n+1))/A000079(n)`
-/

namespace A240992.P17678037451420054520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A240972 (n + 1)) : ℚ) / (A000079 n : ℚ)

end

end A240992.P17678037451420054520

/-! ## A240992.P9698970121433224443

`gcd(A240972(n+1)/A016116(n), A154289(2*n))`
-/

namespace A240992.P9698970121433224443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A240972 (n + 1) : ℚ) / (A016116 n : ℚ))) (A154289 (2 * n))

end

end A240992.P9698970121433224443

/-!
# A240993: A000142 (n+1) * A002109(n), a product of factorials and hyperfactorials.

The programs for A240993, there is no canonical definition to state claims against.
-/

/-! ## A240993.P14468401071577599568

`A000142(n+1)*A002109(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A240993.P14468401071577599568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A002109 n

end

end A240993.P14468401071577599568

/-! ## A240993.P9016136866640275915

`∏[(n+1)*n^n]`
-/

namespace A240993.P9016136866640275915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A240993.P9016136866640275915

/-! ## A240993.P420235034277370889

`(n+1)*a(n-1)*n^n` with `a(0)=1`
-/

namespace A240993.P420235034277370889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (n - 1) * n ^ n

end

end A240993.P420235034277370889

/-! ## A240993.P15583583276326463488

`(n+1)*A267968(n)`
-/

namespace A240993.P15583583276326463488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A267968 n

end

end A240993.P15583583276326463488

/-! ## A240993.P3541021703879982295

`abs(∏[-A055897(n+1)])`
-/

namespace A240993.P3541021703879982295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A055897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A240993.P3541021703879982295

/-!
# A240994: Partial sums of A086505.

The programs for A240994, there is no canonical definition to state claims against.
-/

/-! ## A240994.P18145178852304402163

`A100278(A008239(n+1)+1)`
-/

namespace A240994.P18145178852304402163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100278 (A008239 (n + 1) + 1).toNat

end

end A240994.P18145178852304402163

/-!
# A240996: G.f. satisfies: A(x)^2 = x + A(x*A(x)^2).

The programs for A240996, there is no canonical definition to state claims against.
-/

/-! ## A240996.P8542256793712917014

`A196100(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A240996.P8542256793712917014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 5] fun n a =>
  A196100 (a (n - 1) + 1).toNat

end

end A240996.P8542256793712917014

/-! ## A240996.P15412157858717156260

`A339224(comp[2*n+3]^floor(n/3))`
-/

namespace A240996.P15412157858717156260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339224 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ))).toNat

end

end A240996.P15412157858717156260

/-!
# A240997: G.f. satisfies: A(x)^3 = x + A(x*A(x)^2)^2.

The programs for A240997, there is no canonical definition to state claims against.
-/

/-! ## A240997.P7464084857552784854

`A276797(2*n!²)`
-/

namespace A240997.P7464084857552784854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (2 * Nat.factorial n ^ 2)

end

end A240997.P7464084857552784854

/-!
# A240998: G.f. satisfies: A(x)^2 = x + A(x + 2*x^2).

The programs for A240998, there is no canonical definition to state claims against.
-/

/-! ## A240998.P4612217238626949006

`A360783(n)+A180639(A000272(n))`
-/

namespace A240998.P4612217238626949006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360783 n + A180639 (A000272 n).toNat

end

end A240998.P4612217238626949006

/-! ## A240998.P17058560631098747283

`A070548(A000366(n+1)-A004526(n))`
-/

namespace A240998.P17058560631098747283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A000366 (n + 1) - A004526 n).toNat

end

end A240998.P17058560631098747283

/-! ## A240998.P3651601672568313432

`A070548(A000366(n+1)-A026810(n))`
-/

namespace A240998.P3651601672568313432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A000366 (n + 1) - A026810 n).toNat

end

end A240998.P3651601672568313432

/-!
# A240999: G.f. satisfies: A(x)^2 = x + A(x*A(x)^3).

The programs for A240999, there is no canonical definition to state claims against.
-/

/-! ## A240999.P14211664265790267308

`A295741(∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A240999.P14211664265790267308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295741 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A240999.P14211664265790267308

