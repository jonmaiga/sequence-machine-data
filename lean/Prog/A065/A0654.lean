import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C010
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A065403: Primes of the form sigma(m^2) where m is a composite number ordered by values m.

The programs for A065403, there is no canonical definition to state claims against.
-/

/-! ## A065403.P6065166816799637460

`A350072(A065405(n+1))`
-/

namespace A065403.P6065166816799637460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350072 (A065405 (n + 1)).toNat

end

end A065403.P6065166816799637460

/-! ## A065403.P1629762869806251005

`A350072(sqrt(A065404(n+1)))`
-/

namespace A065403.P1629762869806251005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350072 (SequenceMachineLib.roundAway (Real.sqrt (A065404 (n + 1) : ℝ))).toNat

end

end A065403.P1629762869806251005

/-! ## A065403.P2742319601251969194

`A350072(root(A065404(n+1), 2))`
-/

namespace A065403.P2742319601251969194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350072 (SequenceMachineLib.roundAway ((A065404 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A065403.P2742319601251969194

/-! ## A065403.P4249024425744625628

`A350072(∩[A001597(n+1), A055638(n+1)])`
-/

namespace A065403.P4249024425744625628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350072 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A065403.P4249024425744625628

/-! ## A065403.P3798488325326130085

`A350072(∩[A001694(n+1), A055638(n+1)])`
-/

namespace A065403.P3798488325326130085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350072 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A065403.P3798488325326130085

/-!
# A065404: Squares of composite numbers k such that sigma(k) (sum of divisors of k, A000203) is a prime.

The programs for A065404, there is no canonical definition to state claims against.
-/

/-! ## A065404.P8124396496928439247

`A065405(n+1)²`
-/

namespace A065404.P8124396496928439247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065405 (n + 1) ^ 2

end

end A065404.P8124396496928439247

/-! ## A065404.P7383887739929919344

`A065405((n+1)^2/(n+1))^2`
-/

namespace A065404.P7383887739929919344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065405 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat ^ 2

end

end A065404.P7383887739929919344

/-! ## A065404.P1503419467075084806

`(A008836(2*(n+1))*A065405(n+1))^2`
-/

namespace A065404.P1503419467075084806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008836 (2 * (n + 1)) * A065405 (n + 1)) ^ 2

end

end A065404.P1503419467075084806

/-! ## A065404.P3794584833684262892

`A065405(n+1)*A065405(A005408(n)-n)`
-/

namespace A065404.P3794584833684262892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065405 (n + 1) * A065405 (A005408 n - (n : ℤ)).toNat

end

end A065404.P3794584833684262892

/-! ## A065404.P448157776148544555

`A065405(A005408(n)-n)²*A033999(n)²`
-/

namespace A065404.P448157776148544555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065405 (A005408 n - (n : ℤ)).toNat ^ 2 * A033999 n ^ 2

end

end A065404.P448157776148544555

/-! ## A065404.P4912370562578113188

`∩[A023194(n+1), A076468(n+1)]`
-/

namespace A065404.P4912370562578113188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065404.P4912370562578113188

/-! ## A065404.P13038314247870489567

`∩[A023194(n+1), A088247(n+1)]`
-/

namespace A065404.P13038314247870489567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065404.P13038314247870489567

/-! ## A065404.P5715996126279846475

`∩[A023194(n+1), A117453(n+1)]`
-/

namespace A065404.P5715996126279846475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065404.P5715996126279846475

/-! ## A065404.P579070453694874513

`∩[A023194(n+1), A246549(n+1)]`
-/

namespace A065404.P579070453694874513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065404.P579070453694874513

/-! ## A065404.P13402844736945685307

`∩[A023194(n+1), A246550(n+1)]`
-/

namespace A065404.P13402844736945685307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065404.P13402844736945685307

/-!
# A065405: Composite numbers k such that the sum of the divisors of k^2 is a prime.

The programs for A065405, there is no canonical definition to state claims against.
-/

/-! ## A065405.P13091701437673437121

`sqrt(A065404(n+1))`
-/

namespace A065405.P13091701437673437121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065404 (n + 1) : ℝ)

end

end A065405.P13091701437673437121

/-! ## A065405.P14088883727044108350

`root(A065404(n+1), A141310(2*n+1))`
-/

namespace A065405.P14088883727044108350
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065404 (n + 1) : ℝ) ^ (1 / (A141310 (2 * n + 1) : ℝ))

end

end A065405.P14088883727044108350

/-! ## A065405.P12501738931081121245

`root(A065404(n+1), 2%A065403(n+1))`
-/

namespace A065405.P12501738931081121245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065404 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A065403 (n + 1)) : ℝ))

end

end A065405.P12501738931081121245

/-! ## A065405.P2859211131469588819

`root(A065404(n+1), 2)%A065771(n+1)`
-/

namespace A065405.P2859211131469588819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A065404 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A065771 (n + 1))

end

end A065405.P2859211131469588819

/-! ## A065405.P15274000579627785128

`root(A065404(n+1), A001316(A001316(n)))`
-/

namespace A065405.P15274000579627785128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065404 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A065405.P15274000579627785128

/-! ## A065405.P3408340778267108466

`root(A065404(n+1), A336924((n+1)²))`
-/

namespace A065405.P3408340778267108466
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065404 (n + 1) : ℝ) ^ (1 / (A336924 ((n + 1) ^ 2) : ℝ))

end

end A065405.P3408340778267108466

/-! ## A065405.P6093222541043159749

`∩[A001597(n+1), A055638(n+1)]`
-/

namespace A065405.P6093222541043159749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065405.P6093222541043159749

/-! ## A065405.P8804408540008930347

`∩[A001694(n+1), A055638(n+1)]`
-/

namespace A065405.P8804408540008930347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065405.P8804408540008930347

/-! ## A065405.P15121742491749130590

`∩[A025475(n+1), A055638(n+1)]`
-/

namespace A065405.P15121742491749130590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065405.P15121742491749130590

/-!
# A065406: Mersenne prime exponents (A000043) which are also Sophie Germain primes (A005384).

The programs for A065406, there is no canonical definition to state claims against.
-/

/-! ## A065406.P8696799892523205651

`filter[A000043(n+1), A101264(#)]`
-/

namespace A065406.P8696799892523205651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A065406.P8696799892523205651

/-! ## A065406.P8302849963561946299

`A000043(eq[A130233(n), A233775(n)])`
-/

namespace A065406.P8302849963561946299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A065406.P8302849963561946299

/-!
# A065407: Number of levels in lattice formed by normal play partisan games born on day n.

The programs for A065407, there is no canonical definition to state claims against.
-/

/-! ## A065407.P11573296154187097974

`3*A104621(a(n-2)+1)` with `a(0)=1, a(1)=3`
-/

namespace A065407.P11573296154187097974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * A104621 (a (n - 2) + 1).toNat

end

end A065407.P11573296154187097974

/-!
# A065408: Squares whose digits sum to a prime.

The programs for A065408, there is no canonical definition to state claims against.
-/

/-! ## A065408.P8377728056283686637

`A107289(n+1)²`
-/

namespace A065408.P8377728056283686637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1) ^ 2

end

end A065408.P8377728056283686637

/-! ## A065408.P5199037689562353022

`eq[0, A007920(A004159(n))]²`
-/

namespace A065408.P5199037689562353022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A065408.P5199037689562353022

/-! ## A065408.P1506521143202458403

`eq[2, A032741(A004159(n)²)]²`
-/

namespace A065408.P1506521143202458403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004159 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A065408.P1506521143202458403

/-! ## A065408.P7761766769051541001

`eq[2, A105700(A004159(n)²)]²`
-/

namespace A065408.P7761766769051541001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004159 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A065408.P7761766769051541001

/-! ## A065408.P2919781023661665930

`eq[2, A284289(A004159(n)²)]²`
-/

namespace A065408.P2919781023661665930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A004159 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A065408.P2919781023661665930

/-! ## A065408.P12961799413327375353

`eq[3, A073855(A004159(n)²)]²`
-/

namespace A065408.P12961799413327375353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A004159 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A065408.P12961799413327375353

/-! ## A065408.P1484181230020451494

`eq[2, A175851(A004159(n)+1)]²`
-/

namespace A065408.P1484181230020451494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A004159 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A065408.P1484181230020451494

/-! ## A065408.P5951931104627672692

`(eq[2, A000005(A004159(n+1))]+1)²`
-/

namespace A065408.P5951931104627672692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004159 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A065408.P5951931104627672692

/-! ## A065408.P5930665513000628810

`A000290(eq[1, A105700(A004159(n))])`
-/

namespace A065408.P5930665513000628810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004159 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065408.P5930665513000628810

/-!
# A065410: Number of labeled, rooted, binary trees with internal nodes labeled from {1, ...,n} and leaves labeled from {0,1} such that for any path from the root to a leaf, the internal nodes receive distinct labels. In other words, the number of decision trees on n Boolean variables.

The programs for A065410, the canonical program `A065410.P14215951990435232941` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065410 has offset 0).

The definition of A065410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065410.P14215951990435232941

`n*a(n-1)²+2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065410

/-- `n*a(n-1)²+2` -/
def P14215951990435232941.Spec : Prop :=
  ∀ n, (P14215951990435232941.a n : ℤ) = A065410 n

theorem P14215951990435232941.correct : P14215951990435232941.Spec := by
  intro n
  simp only [A065410]

end A065410

/-! ## A065410.P12464193062259851137

`or(2, n*a(n-1)²)` with `a(0)=2`
-/

namespace A065410.P12464193062259851137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 2 (n * a (n - 1) ^ 2)

end

end A065410.P12464193062259851137

namespace A065410

/-- `or(2, n*a(n-1)²)` -/
def P12464193062259851137.Spec : Prop :=
  ∀ n, (P12464193062259851137.a n : ℤ) = A065410 n

end A065410

/-! ## A065410.P6045283805566918751

`xor(2, n*a(n-1)²)` with `a(0)=2`
-/

namespace A065410.P6045283805566918751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 2 (n * a (n - 1) ^ 2)

end

end A065410.P6045283805566918751

namespace A065410

/-- `xor(2, n*a(n-1)²)` -/
def P6045283805566918751.Spec : Prop :=
  ∀ n, (P6045283805566918751.a n : ℤ) = A065410 n

end A065410

/-! ## A065410.P16500888796024156979

`floor(n/acot(a(n-1)²))+2` with `a(0)=2`
-/

namespace A065410.P16500888796024156979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (a (n - 1) ^ 2 : ℝ)⌋ + 2

end

end A065410.P16500888796024156979

namespace A065410

/-- `floor(n/acot(a(n-1)²))+2` -/
def P16500888796024156979.Spec : Prop :=
  ∀ n, P16500888796024156979.a n = A065410 n

end A065410

/-!
# A065411: Fibonacci numbers whose digits sum to a square.

The programs for A065411, there is no canonical definition to state claims against.
-/

/-! ## A065411.P8403473595153404378

`A177231(A283909(n))`
-/

namespace A065411.P8403473595153404378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177231 (A283909 n).toNat

end

end A065411.P8403473595153404378

/-!
# A065412: a(n) = (A005867(n+1) - A000165(n))/96.

The programs for A065412, there is no canonical definition to state claims against.
-/

/-! ## A065412.P611516107746542456

`(A005867(n+1)-A000165(n))/96`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065412.P611516107746542456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 (n + 1) - A000165 n : ℚ) / 96

end

end A065412.P611516107746542456

/-! ## A065412.P13351544300109052215

`A004772(3*n*a(n-1)+1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A065412.P13351544300109052215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  A004772 ((3 * n : ℤ) * a (n - 1) + 1).toNat

end

end A065412.P13351544300109052215

/-! ## A065412.P11055026672452767500

`A386361(A011782(n))`
-/

namespace A065412.P11055026672452767500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386361 (A011782 n).toNat

end

end A065412.P11055026672452767500

/-!
# A065417: Exponents in expansion of rank-2 Artin constant product(1-1/(p^3-p^2), p=prime) as a product zeta(n)^(-a(n)).

The programs for A065417, there is no canonical definition to state claims against.
-/

/-! ## A065417.P8931368521347254731

`ceil(sqrt(A092179(n+1))/6)`
-/

namespace A065417.P8931368521347254731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A092179 (n + 1) : ℝ) / 6⌉

end

end A065417.P8931368521347254731

/-!
# A065420: Triangle T(n,k) = binomial(n+2,k+1)*(binomial(n+2,k+1)-1), n >=0, 0 <= k <= n.

The programs for A065420, the canonical program `A065420.P14835865265555642949` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065420 has offset 0).

The definition of A065420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065420.P14835865265555642949

`2*A143418(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065420

/-- `2*A143418(n+1)` -/
def P14835865265555642949.Spec : Prop :=
  ∀ n, P14835865265555642949.a n = A065420 n

theorem P14835865265555642949.correct : P14835865265555642949.Spec := by
  intro n
  simp only [A065420]

end A065420

/-! ## A065420.P4092858670606744648

`2*C(A014410(n+2), 2)`
-/

namespace A065420.P4092858670606744648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A014410 (n + 2)).toNat 2

end

end A065420.P4092858670606744648

namespace A065420

/-- `2*C(A014410(n+2), 2)` -/
def P4092858670606744648.Spec : Prop :=
  ∀ n, (P4092858670606744648.a n : ℤ) = A065420 n

end A065420

/-! ## A065420.P13711635138908083658

`2*C(sqrt(A014719(n+2)), 2)`
-/

namespace A065420.P13711635138908083658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A014719 (n + 2) : ℝ))).toNat 2

end

end A065420.P13711635138908083658

namespace A065420

/-- `2*C(sqrt(A014719(n+2)), 2)` -/
def P13711635138908083658.Spec : Prop :=
  ∀ n, (P13711635138908083658.a n : ℤ) = A065420 n

end A065420

/-! ## A065420.P6321209939362013655

`A014430(n)+A014430(n)²`
-/

namespace A065420.P6321209939362013655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n + A014430 n ^ 2

end

end A065420.P6321209939362013655

namespace A065420

/-- `A014430(n)+A014430(n)²` -/
def P6321209939362013655.Spec : Prop :=
  ∀ n, P6321209939362013655.a n = A065420 n

end A065420

/-! ## A065420.P10154323097487753980

`A014410(n+2)*A014430(n)`
-/

namespace A065420.P10154323097487753980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) * A014430 n

end

end A065420.P10154323097487753980

namespace A065420

/-- `A014410(n+2)*A014430(n)` -/
def P10154323097487753980.Spec : Prop :=
  ∀ n, P10154323097487753980.a n = A065420 n

end A065420

/-! ## A065420.P14017493267610319635

`2*C(A074909(A014132(n+1)), 2)`
-/

namespace A065420.P14017493267610319635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A074909 (A014132 (n + 1)).toNat).toNat 2

end

end A065420.P14017493267610319635

namespace A065420

/-- `2*C(A074909(A014132(n+1)), 2)` -/
def P14017493267610319635.Spec : Prop :=
  ∀ n, (P14017493267610319635.a n : ℤ) = A065420 n

end A065420

/-! ## A065420.P12850216503257706426

`A014719(n+2)-A014410(n+2)`
-/

namespace A065420.P12850216503257706426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014719 (n + 2) - A014410 (n + 2)

end

end A065420.P12850216503257706426

namespace A065420

/-- `A014719(n+2)-A014410(n+2)` -/
def P12850216503257706426.Spec : Prop :=
  ∀ n, P12850216503257706426.a n = A065420 n

end A065420

/-! ## A065420.P16770544885343999114

`A014410(A020725(n+1))²-A014410(n+2)`
-/

namespace A065420.P16770544885343999114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (A020725 (n + 1)).toNat ^ 2 - A014410 (n + 2)

end

end A065420.P16770544885343999114

namespace A065420

/-- `A014410(A020725(n+1))²-A014410(n+2)` -/
def P16770544885343999114.Spec : Prop :=
  ∀ n, P16770544885343999114.a n = A065420 n

end A065420

/-! ## A065420.P16478637993566618486

`A014410(n+2)²+A007318(n)-A028263(n)`
-/

namespace A065420.P16478637993566618486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) ^ 2 + (A007318 n - A028263 n)

end

end A065420.P16478637993566618486

namespace A065420

/-- `A014410(n+2)²+A007318(n)-A028263(n)` -/
def P16478637993566618486.Spec : Prop :=
  ∀ n, P16478637993566618486.a n = A065420 n

end A065420

/-! ## A065420.P1220139618992798645

`(A014410(n+2)-1)*A014410(A061579(n)+2)`
-/

namespace A065420.P1220139618992798645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014410 (n + 2) - 1) * A014410 (A061579 n + 2).toNat

end

end A065420.P1220139618992798645

namespace A065420

/-- `(A014410(n+2)-1)*A014410(A061579(n)+2)` -/
def P1220139618992798645.Spec : Prop :=
  ∀ n, P1220139618992798645.a n = A065420 n

end A065420

/-! ## A065420.P6039918996297958259

`(A014410(n+2)*A153881(n+1))²-A014410(n+2)`
-/

namespace A065420.P6039918996297958259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014410 (n + 2) * A153881 (n + 1)) ^ 2 - A014410 (n + 2)

end

end A065420.P6039918996297958259

namespace A065420

/-- `(A014410(n+2)*A153881(n+1))²-A014410(n+2)` -/
def P6039918996297958259.Spec : Prop :=
  ∀ n, P6039918996297958259.a n = A065420 n

end A065420

/-! ## A065420.P16984043304510401703

`(A014430(n)+1)*A014430(A061579(n))`
-/

namespace A065420.P16984043304510401703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014430 n + 1) * A014430 (A061579 n).toNat

end

end A065420.P16984043304510401703

namespace A065420

/-- `(A014430(n)+1)*A014430(A061579(n))` -/
def P16984043304510401703.Spec : Prop :=
  ∀ n, P16984043304510401703.a n = A065420 n

end A065420

/-! ## A065420.P2527935228912246663

`A135278(A007401(n+1))²-A135278(A007401(n+1))`
-/

namespace A065420.P2527935228912246663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A007401 (n + 1)).toNat ^ 2 - A135278 (A007401 (n + 1)).toNat

end

end A065420.P2527935228912246663

namespace A065420

/-- `A135278(A007401(n+1))²-A135278(A007401(n+1))` -/
def P2527935228912246663.Spec : Prop :=
  ∀ n, P2527935228912246663.a n = A065420 n

end A065420

/-! ## A065420.P6398937783709002590

`2*A000217(A014430(n))`
-/

namespace A065420.P6398937783709002590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A014430 n).toNat

end

end A065420.P6398937783709002590

namespace A065420

/-- `2*A000217(A014430(n))` -/
def P6398937783709002590.Spec : Prop :=
  ∀ n, P6398937783709002590.a n = A065420 n

end A065420

/-! ## A065420.P16196730577539810985

`2*A000217(A014410(n+2)-1)`
-/

namespace A065420.P16196730577539810985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A014410 (n + 2) - 1).toNat

end

end A065420.P16196730577539810985

namespace A065420

/-- `2*A000217(A014410(n+2)-1)` -/
def P16196730577539810985.Spec : Prop :=
  ∀ n, P16196730577539810985.a n = A065420 n

end A065420

/-! ## A065420.P642675564146886751

`A002378(A014430(n))`
-/

namespace A065420.P642675564146886751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A014430 n).toNat

end

end A065420.P642675564146886751

namespace A065420

/-- `A002378(A014430(n))` -/
def P642675564146886751.Spec : Prop :=
  ∀ n, P642675564146886751.a n = A065420 n

end A065420

/-! ## A065420.P12131397381128326111

`A103505(A014410(n+2))`
-/

namespace A065420.P12131397381128326111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (A014410 (n + 2)).toNat

end

end A065420.P12131397381128326111

namespace A065420

/-- `A103505(A014410(n+2))` -/
def P12131397381128326111.Spec : Prop :=
  ∀ n, P12131397381128326111.a n = A065420 n

end A065420

/-! ## A065420.P4286692972541017587

`A002378(A014410(n+2)-1)`
-/

namespace A065420.P4286692972541017587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A014410 (n + 2) - 1).toNat

end

end A065420.P4286692972541017587

namespace A065420

/-- `A002378(A014410(n+2)-1)` -/
def P4286692972541017587.Spec : Prop :=
  ∀ n, P4286692972541017587.a n = A065420 n

end A065420

/-! ## A065420.P3597159692436694651

`2*A161680(A014430(n)+1)`
-/

namespace A065420.P3597159692436694651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161680 (A014430 n + 1).toNat

end

end A065420.P3597159692436694651

namespace A065420

/-- `2*A161680(A014430(n)+1)` -/
def P3597159692436694651.Spec : Prop :=
  ∀ n, P3597159692436694651.a n = A065420 n

end A065420

/-!
# A065422: If n | a(n) then a(n+1) = a(n)/(highest power of n that divides a(n)), otherwise a(n+1) = n*a(n); a(0) = 1.

The programs for A065422, there is no canonical definition to state claims against.
-/

/-! ## A065422.P6069525568643645259

`A008336(n+1)%A002113(A248489(2*(n+2)))`
-/

namespace A065422.P6069525568643645259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008336 (n + 1)) (A002113 (A248489 (2 * (n + 2))).toNat)

end

end A065422.P6069525568643645259

/-!
# A065423: Number of ordered length 2 compositions of n with at least one even summand.

The programs for A065423, the canonical program `A065423.P420877629150630235` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065423 has offset 1).

The definition of A065423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065423.P11635141432869921838

`floor(n/2^(n%2))`
-/

namespace A065423.P11635141432869921838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 ^ (n % 2) : ℚ)⌋

end

end A065423.P11635141432869921838

namespace A065423

/-- `floor(n/2^(n%2))` -/
def P11635141432869921838.Spec : Prop :=
  ∀ n, P11635141432869921838.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P9309323368759498736

`(3*(n+1)-4-(-1)^(n+1)*(n+1))/4`
-/

namespace A065423.P9309323368759498736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) : ℤ) - 4 - (-1) ^ (n + 1) * (n + 1 : ℤ) : ℚ) / 4

end

end A065423.P9309323368759498736

namespace A065423

/-- `(3*(n+1)-4-(-1)^(n+1)*(n+1))/4` -/
def P9309323368759498736.Spec : Prop :=
  ∀ n, P9309323368759498736.a n = (A065423 (n + 1) : ℚ)

end A065423

/-! ## A065423.P420877629150630235

`A026741(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065423

/-- `A026741(n+1)-1` -/
def P420877629150630235.Spec : Prop :=
  ∀ n, P420877629150630235.a n = A065423 (n + 1)

theorem P420877629150630235.correct : P420877629150630235.Spec := by
  intro n
  simp only [A065423, Nat.add_sub_cancel]

end A065423

/-! ## A065423.P7865885335077303046

`floor(n/gcd(2, n+1))`
-/

namespace A065423.P7865885335077303046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)⌋

end

end A065423.P7865885335077303046

namespace A065423

/-- `floor(n/gcd(2, n+1))` -/
def P7865885335077303046.Spec : Prop :=
  ∀ n, P7865885335077303046.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P1106715568056423887

`floor(n/(and(1, n)+1))`
-/

namespace A065423.P1106715568056423887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.land 1 n + 1 : ℚ)⌋

end

end A065423.P1106715568056423887

namespace A065423

/-- `floor(n/(and(1, n)+1))` -/
def P1106715568056423887.Spec : Prop :=
  ∀ n, P1106715568056423887.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P9485144792345627198

`(∑[n]-1)%(n+1)`
-/

namespace A065423.P9485144792345627198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ)

end

end A065423.P9485144792345627198

namespace A065423

/-- `(∑[n]-1)%(n+1)` -/
def P9485144792345627198.Spec : Prop :=
  ∀ n, P9485144792345627198.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P12038695466032210066

`floor(n/2^and(1, n))`
-/

namespace A065423.P12038695466032210066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 ^ Nat.land 1 n : ℚ)⌋

end

end A065423.P12038695466032210066

namespace A065423

/-- `floor(n/2^and(1, n))` -/
def P12038695466032210066.Spec : Prop :=
  ∀ n, P12038695466032210066.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P3872626667285034776

`floor(n/C(2, and(1, n)))`
-/

namespace A065423.P3872626667285034776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.choose 2 (Nat.land 1 n) : ℚ)⌋

end

end A065423.P3872626667285034776

namespace A065423

/-- `floor(n/C(2, and(1, n)))` -/
def P3872626667285034776.Spec : Prop :=
  ∀ n, P3872626667285034776.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P7609271744757301869

`floor(sinh(log(lcm(2, n+1))))`
-/

namespace A065423.P7609271744757301869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (Nat.lcm 2 (n + 1) : ℝ))⌋

end

end A065423.P7609271744757301869

namespace A065423

/-- `floor(sinh(log(lcm(2, n+1))))` -/
def P7609271744757301869.Spec : Prop :=
  ∀ n, P7609271744757301869.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P4627720815058294644

`floor(gcd(2*n, n²)/2)`
-/

namespace A065423.P4627720815058294644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (2 * n) (n ^ 2) : ℚ) / 2⌋

end

end A065423.P4627720815058294644

namespace A065423

/-- `floor(gcd(2*n, n²)/2)` -/
def P4627720815058294644.Spec : Prop :=
  ∀ n, P4627720815058294644.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P16719786239513369515

`gcd((n+1)², ∑[n])-1`
-/

namespace A065423.P16719786239513369515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A065423.P16719786239513369515

namespace A065423

/-- `gcd((n+1)², ∑[n])-1` -/
def P16719786239513369515.Spec : Prop :=
  ∀ n, P16719786239513369515.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P16567650824753339661

`floor(n/((2*n)%4)!)`
-/

namespace A065423.P16567650824753339661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.factorial (2 * n % 4) : ℚ)⌋

end

end A065423.P16567650824753339661

namespace A065423

/-- `floor(n/((2*n)%4)!)` -/
def P16567650824753339661.Spec : Prop :=
  ∀ n, P16567650824753339661.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P9058789332390099173

`floor(n/(2*and(1, n))!)`
-/

namespace A065423.P9058789332390099173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.factorial (2 * Nat.land 1 n) : ℚ)⌋

end

end A065423.P9058789332390099173

namespace A065423

/-- `floor(n/(2*and(1, n))!)` -/
def P9058789332390099173.Spec : Prop :=
  ∀ n, P9058789332390099173.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P6651909940858275350

`∑[-n]%(n+1)+n`
-/

namespace A065423.P6651909940858275350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ) + (n : ℤ)

end

end A065423.P6651909940858275350

namespace A065423

/-- `∑[-n]%(n+1)+n` -/
def P6651909940858275350.Spec : Prop :=
  ∀ n, P6651909940858275350.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P15808001648602435434

`floor(lcm(n, ∑[n])/(n+1))`
-/

namespace A065423.P15808001648602435434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)⌋

end

end A065423.P15808001648602435434

namespace A065423

/-- `floor(lcm(n, ∑[n])/(n+1))` -/
def P15808001648602435434.Spec : Prop :=
  ∀ n, P15808001648602435434.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P17401810448163086138

`-ceil(n/or(n+1, -2))`
-/

namespace A065423.P17401810448163086138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n : ℚ) / (Int.lor (n + 1 : ℤ) (-2) : ℚ)⌉

end

end A065423.P17401810448163086138

namespace A065423

/-- `-ceil(n/or(n+1, -2))` -/
def P17401810448163086138.Spec : Prop :=
  ∀ n, P17401810448163086138.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P1773794796522153677

`(n+1)/(and(1, n)+1)-1`
-/

namespace A065423.P1773794796522153677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ) - 1

end

end A065423.P1773794796522153677

namespace A065423

/-- `(n+1)/(and(1, n)+1)-1` -/
def P1773794796522153677.Spec : Prop :=
  ∀ n, P1773794796522153677.a n = (A065423 (n + 1) : ℚ)

end A065423

/-! ## A065423.P14717335746579755459

`a(n-2)-or(n, -2)` with `a(0)=0, a(1)=0`
-/

namespace A065423.P14717335746579755459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) - Int.lor (n : ℤ) (-2)

end

end A065423.P14717335746579755459

namespace A065423

/-- `a(n-2)-or(n, -2)` -/
def P14717335746579755459.Spec : Prop :=
  ∀ n, P14717335746579755459.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P17717858402075725024

`n-C(n+1, 2)%(n+1)`
-/

namespace A065423.P17717858402075725024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.choose (n + 1) 2 % (n + 1) : ℕ) : ℤ)

end

end A065423.P17717858402075725024

namespace A065423

/-- `n-C(n+1, 2)%(n+1)` -/
def P17717858402075725024.Spec : Prop :=
  ∀ n, P17717858402075725024.a n = A065423 (n + 1)

end A065423

/-! ## A065423.P10567613769570686279

`ogf((2x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A065423.P10567613769570686279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 1] [1, 0, -2, 0, 1] n

end

end A065423.P10567613769570686279

namespace A065423

/-- `ogf((2x^2+x^3)/(1-2x^2+x^4))` -/
def P10567613769570686279.Spec : Prop :=
  ∀ n, P10567613769570686279.a n = A065423 (n + 1)

end A065423

/-!
# A065424: Catalan-like formula: a(n) = binomial(6*n, 3*n+1)/(9*n+6).

The programs for A065424, the canonical program `A065424.P15360640815705919714` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065424 has offset 1).

The definition of A065424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065424.P15360640815705919714

`1/9*A000245(3*(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065424

/-- `1/9*A000245(3*(n+1))` -/
def P15360640815705919714.Spec : Prop :=
  ∀ n, P15360640815705919714.a n = (A065424 (n + 1) : ℚ)

end A065424

/-! ## A065424.P13439426631154303364

`(n+1)*A000108(3*(n+1))/(3*(n+1)+2)`
-/

namespace A065424.P13439426631154303364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000108 (3 * (n + 1)) : ℚ) / (3 * (n + 1) + 2 : ℚ)

end

end A065424.P13439426631154303364

namespace A065424

/-- `(n+1)*A000108(3*(n+1))/(3*(n+1)+2)` -/
def P13439426631154303364.Spec : Prop :=
  ∀ n, P13439426631154303364.a n = (A065424 (n + 1) : ℚ)

end A065424

/-! ## A065424.P5670183666363750698

`C(6*(n+1), 3*(n+1)+1)/(9*(n+1)+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065424.P5670183666363750698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (6 * (n + 1)) (3 * (n + 1) + 1) : ℚ) / (9 * (n + 1) + 6 : ℚ)

end

end A065424.P5670183666363750698

namespace A065424

/-- `C(6*(n+1), 3*(n+1)+1)/(9*(n+1)+6)` -/
def P5670183666363750698.Spec : Prop :=
  ∀ n, P5670183666363750698.a n = (A065424 (n + 1) : ℚ)

end A065424

/-! ## A065424.P13443335655973712712

`A003441(3*(n+1))/3`
-/

namespace A065424.P13443335655973712712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003441 (3 * (n + 1)) : ℚ) / 3

end

end A065424.P13443335655973712712

namespace A065424

/-- `A003441(3*(n+1))/3` -/
def P13443335655973712712.Spec : Prop :=
  ∀ n, P13443335655973712712.a n = (A065424 (n + 1) : ℚ)

end A065424

/-! ## A065424.P3961255128747855455

`A050181(3*n+2)/3`
-/

namespace A065424.P3961255128747855455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050181 (3 * n + 2) : ℚ) / 3

end

end A065424.P3961255128747855455

namespace A065424

/-- `A050181(3*n+2)/3` -/
def P3961255128747855455.Spec : Prop :=
  ∀ n, P3961255128747855455.a n = (A065424 (n + 1) : ℚ)

end A065424

/-! ## A065424.P16862847349610770797

`A000245(3*(n+1))/9`
-/

namespace A065424.P16862847349610770797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000245 (3 * (n + 1)) : ℚ) / 9

end

end A065424.P16862847349610770797

namespace A065424

/-- `A000245(3*(n+1))/9` -/
def P16862847349610770797.Spec : Prop :=
  ∀ n, P16862847349610770797.a n = (A065424 (n + 1) : ℚ)

end A065424

/-! ## A065424.P9768425402304847221

`A026008(6*n+5)/9`
-/

namespace A065424.P9768425402304847221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026008 (6 * n + 5) : ℚ) / 9

end

end A065424.P9768425402304847221

namespace A065424

/-- `A026008(6*n+5)/9` -/
def P9768425402304847221.Spec : Prop :=
  ∀ n, P9768425402304847221.a n = (A065424 (n + 1) : ℚ)

end A065424

/-!
# A065426: Incrementally larger terms in the continued fraction (A065645) for the twin prime constant (A005597).

The programs for A065426, there is no canonical definition to state claims against.
-/

/-! ## A065426.P14715873269017721462

`record[A065645(n)]`
-/

namespace A065426.P14715873269017721462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065426.P14715873269017721462

/-!
# A065428: Numbers k such that no x^2 mod k is prime.

The programs for A065428, there is no canonical definition to state claims against.
-/

/-! ## A065428.P7907036728849493342

`eq[0, A132213(n+1)]+1`
-/

namespace A065428.P7907036728849493342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065428.P7907036728849493342

/-! ## A065428.P14522894644227676743

`record[gcd(A000027(n+1), A132213(n+1))]`
-/

namespace A065428.P14522894644227676743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A132213 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065428.P14522894644227676743

/-! ## A065428.P7059493974829351187

`eq[A000007(n), A132213(A028310(n))]`
-/

namespace A065428.P7059493974829351187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132213 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065428.P7059493974829351187

/-! ## A065428.P9282445254819513314

`eq[A000038(n), A132213(A028310(n))]`
-/

namespace A065428.P9282445254819513314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132213 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065428.P9282445254819513314

/-! ## A065428.P8150667890982897306

`eq[A000007(n), A132213(A123108(2*n))]`
-/

namespace A065428.P8150667890982897306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132213 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065428.P8150667890982897306

/-!
# A065429: Number of permutations of {1..n} which contain 3 consecutive terms in increasing order.

The programs for A065429, there is no canonical definition to state claims against.
-/

/-! ## A065429.P2229070493739110090

`(n+1)!-A049774(n+1)`
-/

namespace A065429.P2229070493739110090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A049774 (n + 1)

end

end A065429.P2229070493739110090

/-! ## A065429.P12714164846703781310

`∑[A001563(n)]-A000303(n+1)`
-/

namespace A065429.P12714164846703781310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000303 (n + 1)

end

end A065429.P12714164846703781310

/-! ## A065429.P10682154163764434547

`record[A084938(n)]-A049774(n+1)`
-/

namespace A065429.P10682154163764434547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A049774 (n + 1)

end

end A065429.P10682154163764434547

/-! ## A065429.P4542516086968602132

`record[A098361(n)]-A049774(n+1)`
-/

namespace A065429.P4542516086968602132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A049774 (n + 1)

end

end A065429.P4542516086968602132

/-! ## A065429.P4750082798919360521

`A274997(n+1)+A230620(n+1)`
-/

namespace A065429.P4750082798919360521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274997 (n + 1) + A230620 (n + 1)

end

end A065429.P4750082798919360521

/-! ## A065429.P1302744752135930537

`A000142(n+1)-A049774(n+1)`
-/

namespace A065429.P1302744752135930537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A049774 (n + 1)

end

end A065429.P1302744752135930537

/-! ## A065429.P8774061903298600874

`∏[A065033(2*n+1)]-A049774(n+1)`
-/

namespace A065429.P8774061903298600874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A049774 (n + 1)

end

end A065429.P8774061903298600874

/-!
# A065430: Order of commutator subgroup of GL(2,Z_n) (invertible 2 X 2 matrices mod n: A000252).

The programs for A065430, the canonical program `A065430.P4340305447279095873` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065430 has offset 1).

The definition of A065430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065430.P8149701319560417349

`gcd(n+1, ∑[n])*A007434(n+1)`
-/

namespace A065430.P8149701319560417349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A007434 (n + 1)

end

end A065430.P8149701319560417349

namespace A065430

/-- `gcd(n+1, ∑[n])*A007434(n+1)` -/
def P8149701319560417349.Spec : Prop :=
  ∀ n, P8149701319560417349.a n = A065430 (n + 1)

end A065430

/-! ## A065430.P4340305447279095873

`A000056(n+1)/A000034(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A065430

/-- `A000056(n+1)/A000034(n)` -/
def P4340305447279095873.Spec : Prop :=
  ∀ n, P4340305447279095873.a n = (A065430 (n + 1) : ℚ)

end A065430

/-! ## A065430.P6614215005066503525

`A007434(n+1)*A026741(n+1)`
-/

namespace A065430.P6614215005066503525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) * A026741 (n + 1)

end

end A065430.P6614215005066503525

namespace A065430

/-- `A007434(n+1)*A026741(n+1)` -/
def P6614215005066503525.Spec : Prop :=
  ∀ n, P6614215005066503525.a n = A065430 (n + 1)

end A065430

/-! ## A065430.P7077518193991107268

`A000010(n+1)*A070732(n+1)`
-/

namespace A065430.P7077518193991107268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A070732 (n + 1)

end

end A065430.P7077518193991107268

namespace A065430

/-- `A000010(n+1)*A070732(n+1)` -/
def P7077518193991107268.Spec : Prop :=
  ∀ n, P7077518193991107268.a n = A065430 (n + 1)

end A065430

/-! ## A065430.P9766889651327286505

`A000252(n+1)/A062570(n+1)`
-/

namespace A065430.P9766889651327286505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ)

end

end A065430.P9766889651327286505

namespace A065430

/-- `A000252(n+1)/A062570(n+1)` -/
def P9766889651327286505.Spec : Prop :=
  ∀ n, P9766889651327286505.a n = (A065430 (n + 1) : ℚ)

end A065430

/-! ## A065430.P16354844027864680481

`(A109606(n+1)+1)*A070732(n+1)`
-/

namespace A065430.P16354844027864680481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A070732 (n + 1)

end

end A065430.P16354844027864680481

namespace A065430

/-- `(A109606(n+1)+1)*A070732(n+1)` -/
def P16354844027864680481.Spec : Prop :=
  ∀ n, P16354844027864680481.a n = A065430 (n + 1)

end A065430

/-! ## A065430.P11543917062271636558

`(A039649(n+1)-1)*A070732(n+1)`
-/

namespace A065430.P11543917062271636558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A070732 (n + 1)

end

end A065430.P11543917062271636558

namespace A065430

/-- `(A039649(n+1)-1)*A070732(n+1)` -/
def P11543917062271636558.Spec : Prop :=
  ∀ n, P11543917062271636558.a n = A065430 (n + 1)

end A065430

/-! ## A065430.P7243628744859139055

`A000252(n+1)/A000010(2*(n+1))`
-/

namespace A065430.P7243628744859139055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000010 (2 * (n + 1)) : ℚ)

end

end A065430.P7243628744859139055

namespace A065430

/-- `A000252(n+1)/A000010(2*(n+1))` -/
def P7243628744859139055.Spec : Prop :=
  ∀ n, P7243628744859139055.a n = (A065430 (n + 1) : ℚ)

end A065430

/-! ## A065430.P3906881862777034638

`(n-A219428(n+1))*A070732(n+1)`
-/

namespace A065430.P3906881862777034638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1)) * A070732 (n + 1)

end

end A065430.P3906881862777034638

namespace A065430

/-- `(n-A219428(n+1))*A070732(n+1)` -/
def P3906881862777034638.Spec : Prop :=
  ∀ n, P3906881862777034638.a n = A065430 (n + 1)

end A065430

/-! ## A065430.P16036415814583314634

`(abs(A051953(n+1)-n)+1)*A070732(n+1)`
-/

namespace A065430.P16036415814583314634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|A051953 (n + 1) - (n : ℤ)| + 1) * A070732 (n + 1)

end

end A065430.P16036415814583314634

namespace A065430

/-- `(abs(A051953(n+1)-n)+1)*A070732(n+1)` -/
def P16036415814583314634.Spec : Prop :=
  ∀ n, P16036415814583314634.a n = A065430 (n + 1)

end A065430

/-! ## A065430.P1144484166539669412

`A000252(n+1)/(abs(1-A000010(Δ[n²]+1))+1)`
-/

namespace A065430.P1144484166539669412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (|1 - A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat| + 1 : ℚ)

end

end A065430.P1144484166539669412

namespace A065430

/-- `A000252(n+1)/(abs(1-A000010(Δ[n²]+1))+1)` -/
def P1144484166539669412.Spec : Prop :=
  ∀ n, P1144484166539669412.a n = (A065430 (n + 1) : ℚ)

end A065430

/-! ## A065430.P13756627756122379155

`(A002088(n+1)-A002088(n))*A070732(n+1)`
-/

namespace A065430.P13756627756122379155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A070732 (n + 1)

end

end A065430.P13756627756122379155

namespace A065430

/-- `(A002088(n+1)-A002088(n))*A070732(n+1)` -/
def P13756627756122379155.Spec : Prop :=
  ∀ n, P13756627756122379155.a n = A065430 (n + 1)

end A065430

/-! ## A065430.P11163451834454968043

`A070732(n+1)*A353643(n+1)*A353644(n+1)`
-/

namespace A065430.P11163451834454968043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070732 (n + 1) * A353643 (n + 1) * A353644 (n + 1)

end

end A065430.P11163451834454968043

namespace A065430

/-- `A070732(n+1)*A353643(n+1)*A353644(n+1)` -/
def P11163451834454968043.Spec : Prop :=
  ∀ n, P11163451834454968043.a n = A065430 (n + 1)

end A065430

/-! ## A065430.P9825211937798615928

`A000056(n+1)/A000082(n+1)*A070732(n+1)`
-/

namespace A065430.P9825211937798615928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000082 (n + 1) : ℚ) * (A070732 (n + 1) : ℚ)

end

end A065430.P9825211937798615928

namespace A065430

/-- `A000056(n+1)/A000082(n+1)*A070732(n+1)` -/
def P9825211937798615928.Spec : Prop :=
  ∀ n, P9825211937798615928.a n = (A065430 (n + 1) : ℚ)

end A065430

/-! ## A065430.P9475556894805405093

`A000252(n+1)/A000056(n+1)*A070732(n+1)`
-/

namespace A065430.P9475556894805405093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ) * (A070732 (n + 1) : ℚ)

end

end A065430.P9475556894805405093

namespace A065430

/-- `A000252(n+1)/A000056(n+1)*A070732(n+1)` -/
def P9475556894805405093.Spec : Prop :=
  ∀ n, P9475556894805405093.a n = (A065430 (n + 1) : ℚ)

end A065430

/-! ## A065430.P1634771791837071610

`A007434(n+1)/A001615(n+1)*A070732(n+1)`
-/

namespace A065430.P1634771791837071610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A070732 (n + 1) : ℚ)

end

end A065430.P1634771791837071610

namespace A065430

/-- `A007434(n+1)/A001615(n+1)*A070732(n+1)` -/
def P1634771791837071610.Spec : Prop :=
  ∀ n, P1634771791837071610.a n = (A065430 (n + 1) : ℚ)

end A065430

/-! ## A065430.P8364614520927838180

`A064767(n+1)/A011785(n+1)*A070732(n+1)`
-/

namespace A065430.P8364614520927838180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A011785 (n + 1) : ℚ) * (A070732 (n + 1) : ℚ)

end

end A065430.P8364614520927838180

namespace A065430

/-- `A064767(n+1)/A011785(n+1)*A070732(n+1)` -/
def P8364614520927838180.Spec : Prop :=
  ∀ n, P8364614520927838180.a n = (A065430 (n + 1) : ℚ)

end A065430

/-! ## A065430.P8494639281571879976

`A070732(n+1)/A062570(n+1)*A082953(n+1)`
-/

namespace A065430.P8494639281571879976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070732 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ) * (A082953 (n + 1) : ℚ)

end

end A065430.P8494639281571879976

namespace A065430

/-- `A070732(n+1)/A062570(n+1)*A082953(n+1)` -/
def P8494639281571879976.Spec : Prop :=
  ∀ n, P8494639281571879976.a n = (A065430 (n + 1) : ℚ)

end A065430

/-! ## A065430.P17273172182171519565

`A000252(n+1)/A000010(A000027(n+1)+n+1)%(n+2)`
-/

namespace A065430.P17273172182171519565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (Int.tmod (A000010 (A000027 (n + 1) + (n : ℤ) + 1).toNat) (n + 2 : ℤ) : ℚ)

end

end A065430.P17273172182171519565

namespace A065430

/-- `A000252(n+1)/A000010(A000027(n+1)+n+1)%(n+2)` -/
def P17273172182171519565.Spec : Prop :=
  ∀ n, P17273172182171519565.a n = (A065430 (n + 1) : ℚ)

end A065430

/-! ## A065430.P3847945197258176304

`A007434(n+1)*A060819(2*(n+1))`
-/

namespace A065430.P3847945197258176304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) * A060819 (2 * (n + 1))

end

end A065430.P3847945197258176304

namespace A065430

/-- `A007434(n+1)*A060819(2*(n+1))` -/
def P3847945197258176304.Spec : Prop :=
  ∀ n, P3847945197258176304.a n = A065430 (n + 1)

end A065430

/-!
# A065432: Triangle related to Catalan triangle: recurrence related to A033877 (Schroeder numbers).

The programs for A065432, there is no canonical definition to state claims against.
-/

/-! ## A065432.P17668913270328645656

`A125692(∑[2*n]%comp[∑[n]])`
-/

namespace A065432.P17668913270328645656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125692 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A065432.P17668913270328645656

/-! ## A065432.P12648126466223010348

`A125692(∑[char[∑[n]]]²-n-1)`
-/

namespace A065432.P12648126466223010348
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125692 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A065432.P12648126466223010348

/-! ## A065432.P1327675791189766516

`A015267(A002262(n))*A094184(n)`
-/

namespace A065432.P1327675791189766516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015267 (A002262 n).toNat * A094184 n

end

end A065432.P1327675791189766516

/-! ## A065432.P14076590674941517494

`A008836(A059268(n))*A094184(n)`
-/

namespace A065432.P14076590674941517494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A094184 n

end

end A065432.P14076590674941517494

/-! ## A065432.P3507907092510036455

`A094184(n)*A097807(A061579(n))`
-/

namespace A065432.P3507907092510036455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094184 n * A097807 (A061579 n).toNat

end

end A065432.P3507907092510036455

/-! ## A065432.P3399125687283471430

`A009531(A158405(n+1))*A094184(n)`
-/

namespace A065432.P3399125687283471430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A158405 (n + 1)).toNat * A094184 n

end

end A065432.P3399125687283471430

/-! ## A065432.P18104648817659624807

`A094184(n)*A258998(A133819(n+1))`
-/

namespace A065432.P18104648817659624807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094184 n * A258998 (A133819 (n + 1)).toNat

end

end A065432.P18104648817659624807

/-! ## A065432.P15212525013804936543

`A094184(n)*A097807(A002378(n)%A080036(n))`
-/

namespace A065432.P15212525013804936543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094184 n * A097807 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A065432.P15212525013804936543

/-!
# A065434: Decimal expansion of imaginary part of 2nd nontrivial zero of Riemann zeta function.

The programs for A065434, there is no canonical definition to state claims against.
-/

/-! ## A065434.P5361304100961074301

`A131584(n)%10`
-/

namespace A065434.P5361304100961074301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131584 n) 10

end

end A065434.P5361304100961074301

/-!
# A065435: a(3) = 2, a(4) = 3; for n > 4, a(n) = {a(n-2)}+{a(n-1)}, where {a} means largest prime <= a.

The programs for A065435, the canonical program `A065435.P6402340277804625801` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065435 has offset 3).

The definition of A065435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065435.P6402340277804625801

`A007917(a(n-2))+A007917(a(n-1))` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065435

/-- `A007917(a(n-2))+A007917(a(n-1))` -/
def P6402340277804625801.Spec : Prop :=
  ∀ n, P6402340277804625801.a n = A065435 (n + 3)

theorem P6402340277804625801.correct : P6402340277804625801.Spec := by
  intro n
  simp only [A065435, Nat.add_sub_cancel]

end A065435

/-! ## A065435.P14817734190318619625

`A055500(n+1)+A055500(n)`
-/

namespace A065435.P14817734190318619625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055500 (n + 1) + A055500 n

end

end A065435.P14817734190318619625

namespace A065435

/-- `A055500(n+1)+A055500(n)` -/
def P14817734190318619625.Spec : Prop :=
  ∀ n, P14817734190318619625.a n = A065435 (n + 3)

end A065435

/-! ## A065435.P6306858391349264795

`A055501(n+1)+A055499(n)-A362883(n+1)`
-/

namespace A065435.P6306858391349264795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055501 (n + 1) + (A055499 n - A362883 (n + 1))

end

end A065435.P6306858391349264795

namespace A065435

/-- `A055501(n+1)+A055499(n)-A362883(n+1)` -/
def P6306858391349264795.Spec : Prop :=
  ∀ n, P6306858391349264795.a n = A065435 (n + 3)

end A065435

/-! ## A065435.P7141859082958916297

`A345020(n)+record[A345020(A055401(n))]`
-/

namespace A065435.P7141859082958916297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345020 (A055401 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345020 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065435.P7141859082958916297

namespace A065435

/-- `A345020(n)+record[A345020(A055401(n))]` -/
def P7141859082958916297.Spec : Prop :=
  ∀ n, P7141859082958916297.a n = A065435 (n + 3)

end A065435

/-! ## A065435.P16773360224210256047

`A345020(n)+A033862(A345020(n+1))`
-/

namespace A065435.P16773360224210256047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345020 n + A033862 (A345020 (n + 1)).toNat

end

end A065435.P16773360224210256047

namespace A065435

/-- `A345020(n)+A033862(A345020(n+1))` -/
def P16773360224210256047.Spec : Prop :=
  ∀ n, P16773360224210256047.a n = A065435 (n + 3)

end A065435

/-!
# A065437: Smallest base relative to which the n-th prime is palindromic.

The programs for A065437, there is no canonical definition to state claims against.
-/

/-! ## A065437.P6024597839706439991

`A016026(record[A162753(n)])`
-/

namespace A065437.P6024597839706439991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065437.P6024597839706439991

/-! ## A065437.P13001150456894883523

`A016026(A000040(n+1))`
-/

namespace A065437.P13001150456894883523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A000040 (n + 1)).toNat

end

end A065437.P13001150456894883523

/-! ## A065437.P9604464153987670387

`A016026(A161847(n+1))`
-/

namespace A065437.P9604464153987670387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A161847 (n + 1)).toNat

end

end A065437.P9604464153987670387

/-! ## A065437.P1623058803249324780

`A016026(A008578(n+2))`
-/

namespace A065437.P1623058803249324780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A008578 (n + 2)).toNat

end

end A065437.P1623058803249324780

/-! ## A065437.P2235061971908595720

`A016026(A182986(n+2))`
-/

namespace A065437.P2235061971908595720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A182986 (n + 2)).toNat

end

end A065437.P2235061971908595720

/-! ## A065437.P7809611912478168352

`A016026(record[A006530(n+2)])`
-/

namespace A065437.P7809611912478168352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065437.P7809611912478168352

/-! ## A065437.P2718894119559142871

`A016026(record[A014963(n+2)])`
-/

namespace A065437.P2718894119559142871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065437.P2718894119559142871

/-! ## A065437.P6577753800937919828

`A016026(record[A020639(n+2)])`
-/

namespace A065437.P6577753800937919828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065437.P6577753800937919828

/-!
# A065438: Complement of A065039.

The programs for A065438, the canonical program `A065438.P11183615738954749796` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065438 has offset 1).

The definition of A065438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065438.P3006404771633304739

`A282473(n+1)/9`
-/

namespace A065438.P3006404771633304739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282473 (n + 1) : ℚ) / 9

end

end A065438.P3006404771633304739

namespace A065438

/-- `A282473(n+1)/9` -/
def P3006404771633304739.Spec : Prop :=
  ∀ n, P3006404771633304739.a n = (A065438 (n + 1) : ℚ)

end A065438

/-! ## A065438.P11183615738954749796

`comp[a(floor(n/10))+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065438

/-- `comp[a(floor(n/10))+n]` -/
def P11183615738954749796.Spec : Prop :=
  ∀ n, (P11183615738954749796.a n : ℤ) = A065438 (n + 1)

theorem P11183615738954749796.correct : P11183615738954749796.Spec := by
  intro n
  simp only [A065438, Nat.add_sub_cancel]

end A065438

/-! ## A065438.P3827697674319124927

`A106610(A282473(n+1))`
-/

namespace A065438.P3827697674319124927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A282473 (n + 1)).toNat

end

end A065438.P3827697674319124927

namespace A065438

/-- `A106610(A282473(n+1))` -/
def P3827697674319124927.Spec : Prop :=
  ∀ n, P3827697674319124927.a n = A065438 (n + 1)

end A065438

/-! ## A065438.P7601036016249362739

`eq[11*floor(n/10)-n, gcd(11, n)]`
-/

namespace A065438.P7601036016249362739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A065438.P7601036016249362739

namespace A065438

/-- `eq[11*floor(n/10)-n, gcd(11, n)]` -/
def P7601036016249362739.Spec : Prop :=
  ∀ n, (P7601036016249362739.a n : ℤ) = A065438 (n + 1)

end A065438

/-! ## A065438.P17154407004476968534

`eq[A076313(n), A109014(n)]`
-/

namespace A065438.P17154407004476968534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065438.P17154407004476968534

namespace A065438

/-- `eq[A076313(n), A109014(n)]` -/
def P17154407004476968534.Spec : Prop :=
  ∀ n, (P17154407004476968534.a n : ℤ) = A065438 (n + 1)

end A065438

/-!
# A065439: Numbers n such that s[n], p[n] and s[n]+p[n] are all prime numbers, where s[n] is the sum of digits of n and p[n] is the product of digits of n.

The programs for A065439, there is no canonical definition to state claims against.
-/

/-! ## A065439.P16743835650541110439

`eq[2, A187844(n)]`
-/

namespace A065439.P16743835650541110439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065439.P16743835650541110439

/-! ## A065439.P13010570076552835200

`filter[A199986(n+1), A113217(#)]`
-/

namespace A065439.P13010570076552835200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A113217 (f1 j).toNat = 1) n)

end

end A065439.P13010570076552835200

/-!
# A065440: a(n) = (n-1)^n.

The programs for A065440, the canonical program `A065440.P10983116689325036244` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065440 has offset 0).

The definition of A065440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)^n` (program `A065440.P10983116689325036244`, by `A065440.P10983116689325036244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065440.P10983116689325036244

`(n-1)^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065440

/-- `(n-1)^n` -/
def P10983116689325036244.Spec : Prop :=
  ∀ n, P10983116689325036244.a n = A065440 n

theorem P10983116689325036244.correct : P10983116689325036244.Spec := by
  intro n
  simp only [A065440]

end A065440

/-!
# A065441: Sum of absolute values of terms in n-th row of A065432.

The programs for A065441, there is no canonical definition to state claims against.
-/

/-! ## A065441.P10989308163276517802

`A343221(A102647(n+1))+A324737(n+1)`
-/

namespace A065441.P10989308163276517802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343221 (A102647 (n + 1)).toNat + A324737 (n + 1)

end

end A065441.P10989308163276517802

/-!
# A065447: Concatenation of 1, 00, 111, 0000, ..., n 1's (if n is odd) or n 0's (if n is even).

The programs for A065447, there is no canonical definition to state claims against.
-/

/-! ## A065447.P8894554039608974385

`A002275(A008619(n))*A262806(n+1)`
-/

namespace A065447.P8894554039608974385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A008619 n).toNat * A262806 (n + 1)

end

end A065447.P8894554039608974385

/-!
# A065448: Numbers k such that k is congruent to the product of its digits modulo the sum of its digits.

The programs for A065448, there is no canonical definition to state claims against.
-/

/-! ## A065448.P3732862252619367416

`∑[A327401(∑[A073311(n+2)])]`
-/

namespace A065448.P3732862252619367416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073311 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327401 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065448.P3732862252619367416

/-! ## A065448.P5285203548162452479

`∑[A295310(A005408(A000322(n)))]`
-/

namespace A065448.P5285203548162452479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295310 (A005408 (A000322 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065448.P5285203548162452479

/-! ## A065448.P18407320059721909129

`∑[A049653(A293314(A026796(n)))]`
-/

namespace A065448.P18407320059721909129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (A293314 (A026796 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065448.P18407320059721909129

/-! ## A065448.P6644068450143161955

`∑[A302044(A220104(A225472(n)))]`
-/

namespace A065448.P6644068450143161955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (A220104 (A225472 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065448.P6644068450143161955

/-!
# A065449: a(n) = phi(Fibonacci(n)).

The programs for A065449, the canonical program `A065449.P14389556538934521160` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065449 has offset 0).

The definition of A065449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065449.P14389556538934521160

`A000045(n)-A278350(A028310(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A065449

/-- `A000045(n)-A278350(A028310(n))` -/
def P14389556538934521160.Spec : Prop :=
  ∀ n, P14389556538934521160.a n = A065449 n

theorem P14389556538934521160.correct : P14389556538934521160.Spec := by
  intro n
  simp only [A065449]

end A065449

/-! ## A065449.P10783612286524207021

`abs(A236191(n))-A278350(A028310(n))`
-/

namespace A065449.P10783612286524207021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n| - A278350 (A028310 n).toNat

end

end A065449.P10783612286524207021

namespace A065449

/-- `abs(A236191(n))-A278350(A028310(n))` -/
def P10783612286524207021.Spec : Prop :=
  ∀ n, P10783612286524207021.a n = A065449 n

end A065449

/-! ## A065449.P2040179615403416399

`A000045(n)-A278350(A233583(n+1))`
-/

namespace A065449.P2040179615403416399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A278350 (A233583 (n + 1)).toNat

end

end A065449.P2040179615403416399

namespace A065449

/-- `A000045(n)-A278350(A233583(n+1))` -/
def P2040179615403416399.Spec : Prop :=
  ∀ n, P2040179615403416399.a n = A065449 n

end A065449

/-! ## A065449.P6980319898861920091

`A212804(n+1)-A278350(A028310(n))`
-/

namespace A065449.P6980319898861920091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A278350 (A028310 n).toNat

end

end A065449.P6980319898861920091

namespace A065449

/-- `A212804(n+1)-A278350(A028310(n))` -/
def P6980319898861920091.Spec : Prop :=
  ∀ n, P6980319898861920091.a n = A065449 n

end A065449

/-!
# A065450: Make an infinite chessboard from the squares in the first quadrant; sequence gives number of squares a knight can reach in n moves starting at the origin.

The programs for A065450, the canonical program `A065450.P6708041724933153573` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065450 has offset 0).

The definition of A065450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065450.P10799879342152512996

`A098500(n)-a(n-1)` with `a(0)=1`
-/

namespace A065450.P10799879342152512996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098500 n - a (n - 1)

end

end A065450.P10799879342152512996

namespace A065450

/-- `A098500(n)-a(n-1)` -/
def P10799879342152512996.Spec : Prop :=
  ∀ n, P10799879342152512996.a n = A065450 n

end A065450

/-! ## A065450.P6708041724933153573

`a(n-2)+A047883(n)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065450

/-- `a(n-2)+A047883(n)` -/
def P6708041724933153573.Spec : Prop :=
  ∀ n, P6708041724933153573.a n = A065450 n

theorem P6708041724933153573.correct : P6708041724933153573.Spec := by
  intro n
  simp only [A065450]

end A065450

/-! ## A065450.P10188778943734262137

`∑[A047883(n)-A073097(2*n)-a(n-1)]` with `a(0)=1`
-/

namespace A065450.P10188778943734262137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A047883 n - A073097 (2 * n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065450.P10188778943734262137

namespace A065450

/-- `∑[A047883(n)-A073097(2*n)-a(n-1)]` -/
def P10188778943734262137.Spec : Prop :=
  ∀ n, P10188778943734262137.a n = A065450 n

end A065450

/-! ## A065450.P12875188222045558480

`ceil((A273780(n)-A000982(n))/2)`
-/

namespace A065450.P12875188222045558480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A273780 n - A000982 n : ℚ) / 2⌉

end

end A065450.P12875188222045558480

namespace A065450

/-- `ceil((A273780(n)-A000982(n))/2)` -/
def P12875188222045558480.Spec : Prop :=
  ∀ n, P12875188222045558480.a n = A065450 n

end A065450

/-! ## A065450.P8937567153855352249

`A110654(ceil((2*n+1-n^(1-n))²)-ceil(n²/2))`
-/

namespace A065450.P8937567153855352249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (⌈((2 * n : ℚ) + (1 - (n : ℚ) ^ (1 - (n : ℤ) : ℤ))) ^ 2⌉ - ⌈(n ^ 2 : ℚ) / 2⌉).toNat

end

end A065450.P8937567153855352249

namespace A065450

/-- `A110654(ceil((2*n+1-n^(1-n))²)-ceil(n²/2))` -/
def P8937567153855352249.Spec : Prop :=
  ∀ n, P8937567153855352249.a n = A065450 n

end A065450

/-!
# A065451: a(n) = Fibonacci(phi(n)), a(0) = 0.

The programs for A065451, the canonical program `A065451.P16611610133996272809` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065451 has offset 0).

The definition of A065451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065451.P6516238736659593249

`A000045(A384710(n))`
-/

namespace A065451.P6516238736659593249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A384710 n).toNat

end

end A065451.P6516238736659593249

namespace A065451

/-- `A000045(A384710(n))` -/
def P6516238736659593249.Spec : Prop :=
  ∀ n, P6516238736659593249.a n = A065451 n

end A065451

/-! ## A065451.P16611610133996272809

`A000045(Δ[A002088(abs(1-n))]%(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A065451

/-- `A000045(Δ[A002088(abs(1-n))]%(n+1))` -/
def P16611610133996272809.Spec : Prop :=
  ∀ n, P16611610133996272809.a n = A065451 n

theorem P16611610133996272809.correct : P16611610133996272809.Spec := by
  intro n
  simp only [A065451]

end A065451

/-! ## A065451.P646930183498912746

`A000045(floor(A000010(n)+a(n-1))-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A065451.P646930183498912746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (A000010 n + a (n - 1) - a (n - 1)).toNat

end

end A065451.P646930183498912746

namespace A065451

/-- `A000045(floor(A000010(n)+a(n-1))-a(n-1))` -/
def P646930183498912746.Spec : Prop :=
  ∀ n, P646930183498912746.a n = A065451 n

end A065451

/-! ## A065451.P14206329878110981285

`A000045(A000010(n-(floor(a(n-1))-a(n-1))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A065451.P14206329878110981285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (A000010 ((n : ℤ) - (a (n - 1) - a (n - 1))).toNat).toNat

end

end A065451.P14206329878110981285

namespace A065451

/-- `A000045(A000010(n-(floor(a(n-1))-a(n-1))))` -/
def P14206329878110981285.Spec : Prop :=
  ∀ n, P14206329878110981285.a n = A065451 n

end A065451

/-! ## A065451.P12724647465944351493

`A000045(A000010(gcd(n, n*a(n-1))))` with `a(0)=0`
-/

namespace A065451.P12724647465944351493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (A000010 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)))).toNat

end

end A065451.P12724647465944351493

namespace A065451

/-- `A000045(A000010(gcd(n, n*a(n-1))))` -/
def P12724647465944351493.Spec : Prop :=
  ∀ n, P12724647465944351493.a n = A065451 n

end A065451

/-! ## A065451.P13872902016549762363

`A000045(A225530(n)%A100449(n))`
-/

namespace A065451.P13872902016549762363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A225530 n) (A100449 n)).toNat

end

end A065451.P13872902016549762363

namespace A065451

/-- `A000045(A225530(n)%A100449(n))` -/
def P13872902016549762363.Spec : Prop :=
  ∀ n, P13872902016549762363.a n = A065451 n

end A065451

/-! ## A065451.P13491615544759116799

`A000045(A039649(abs(1-n)+1)-1)%A000079(n)`
-/

namespace A065451.P13491615544759116799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A039649 (|1 - (n : ℤ)| + 1).toNat - 1).toNat) (A000079 n)

end

end A065451.P13491615544759116799

namespace A065451

/-- `A000045(A039649(abs(1-n)+1)-1)%A000079(n)` -/
def P13491615544759116799.Spec : Prop :=
  ∀ n, P13491615544759116799.a n = A065451 n

end A065451

/-! ## A065451.P7923687842021830934

`A000045(A000010(and(2, a(n-1)²)+n))` with `a(0)=0`
-/

namespace A065451.P7923687842021830934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (A000010 (Int.land 2 (a (n - 1) ^ 2) + (n : ℤ)).toNat).toNat

end

end A065451.P7923687842021830934

namespace A065451

/-- `A000045(A000010(and(2, a(n-1)²)+n))` -/
def P7923687842021830934.Spec : Prop :=
  ∀ n, P7923687842021830934.a n = A065451 n

end A065451

/-! ## A065451.P17403935947092087077

`A000045(A000010(n-and(2, a(n-1)²)))` with `a(0)=0`
-/

namespace A065451.P17403935947092087077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (A000010 ((n : ℤ) - Int.land 2 (a (n - 1) ^ 2)).toNat).toNat

end

end A065451.P17403935947092087077

namespace A065451

/-- `A000045(A000010(n-and(2, a(n-1)²)))` -/
def P17403935947092087077.Spec : Prop :=
  ∀ n, P17403935947092087077.a n = A065451 n

end A065451

/-! ## A065451.P13550709803517398408

`A000045(A324104(A005940(n+1)))`
-/

namespace A065451.P13550709803517398408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A324104 (A005940 (n + 1)).toNat).toNat

end

end A065451.P13550709803517398408

namespace A065451

/-- `A000045(A324104(A005940(n+1)))` -/
def P13550709803517398408.Spec : Prop :=
  ∀ n, P13550709803517398408.a n = A065451 n

end A065451

/-!
# A065452: Decimal expansion of imaginary part of 3rd nontrivial zero of Riemann zeta function.

The programs for A065452, there is no canonical definition to state claims against.
-/

/-! ## A065452.P15421499841480124835

`A131585(n)%10`
-/

namespace A065452.P15421499841480124835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131585 n) 10

end

end A065452.P15421499841480124835

/-!
# A065453: Decimal expansion of imaginary part of 4th nontrivial zero of Riemann zeta function.

The programs for A065453, there is no canonical definition to state claims against.
-/

/-! ## A065453.P11627915013640296583

`A131586(n)%10`
-/

namespace A065453.P11627915013640296583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131586 n) 10

end

end A065453.P11627915013640296583

/-!
# A065454: Let the k-th harmonic number be H(k) = Sum_{i=1..k} 1/i = P(k)/Q(k) = A001008(k)/A002805(k); sequence gives values of k such that Q(k) = Q(k+1).

The programs for A065454, the canonical program `A065454.P12139817057846770347` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065454 has offset 1).

The definition of A065454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065454.P12139817057846770347

`eq[n+2, A335024(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065454

/-- `eq[n+2, A335024(n+1)]+1` -/
def P12139817057846770347.Spec : Prop :=
  ∀ n, (P12139817057846770347.a n : ℤ) = A065454 (n + 1)

theorem P12139817057846770347.correct : P12139817057846770347.Spec := by
  intro n
  simp only [A065454, Nat.add_sub_cancel]

end A065454

/-! ## A065454.P8017380202399457662

`A020725(eq[n+2, A335024(n+1)])`
-/

namespace A065454.P8017380202399457662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065454.P8017380202399457662

namespace A065454

/-- `A020725(eq[n+2, A335024(n+1)])` -/
def P8017380202399457662.Spec : Prop :=
  ∀ n, P8017380202399457662.a n = A065454 (n + 1)

end A065454

/-! ## A065454.P3438735818133369364

`A065475(eq[n+2, A335024(n+1)])`
-/

namespace A065454.P3438735818133369364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065454.P3438735818133369364

namespace A065454

/-- `A065475(eq[n+2, A335024(n+1)])` -/
def P3438735818133369364.Spec : Prop :=
  ∀ n, P3438735818133369364.a n = A065454 (n + 1)

end A065454

/-! ## A065454.P13948439384992317372

`A326178(eq[n+2, A335024(n+1)])`
-/

namespace A065454.P13948439384992317372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065454.P13948439384992317372

namespace A065454

/-- `A326178(eq[n+2, A335024(n+1)])` -/
def P13948439384992317372.Spec : Prop :=
  ∀ n, P13948439384992317372.a n = A065454 (n + 1)

end A065454

/-! ## A065454.P2676800719105147063

`eq[A028310(n)+1, A335024(A028310(n))]`
-/

namespace A065454.P2676800719105147063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065454.P2676800719105147063

namespace A065454

/-- `eq[A028310(n)+1, A335024(A028310(n))]` -/
def P2676800719105147063.Spec : Prop :=
  ∀ n, (P2676800719105147063.a n : ℤ) = A065454 (n + 1)

end A065454

/-! ## A065454.P8894851833679822474

`eq[A002805(n+1), A002805(n+2)]+1`
-/

namespace A065454.P8894851833679822474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A065454.P8894851833679822474

namespace A065454

/-- `eq[A002805(n+1), A002805(n+2)]+1` -/
def P8894851833679822474.Spec : Prop :=
  ∀ n, (P8894851833679822474.a n : ℤ) = A065454 (n + 1)

end A065454

/-!
# A065455: Number of (binary) bit strings of length n in which no even block of 0's is followed by an odd block of 1's.

The programs for A065455, the canonical program `A065455.P777768816140198286` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065455 has offset 0).

The definition of A065455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065455.P777768816140198286

`3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065455

/-- `3*a(n-2)+a(n-3)` -/
def P777768816140198286.Spec : Prop :=
  ∀ n, (P777768816140198286.a n : ℤ) = A065455 n

theorem P777768816140198286.correct : P777768816140198286.Spec := by
  intro n
  simp only [A065455]

end A065455

/-! ## A065455.P11729571789084327530

`ogf((1+2x+x^2)/(1-3x^2-x^3))`
-/

namespace A065455.P11729571789084327530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, 0, -3, -1] n

end

end A065455.P11729571789084327530

namespace A065455

/-- `ogf((1+2x+x^2)/(1-3x^2-x^3))` -/
def P11729571789084327530.Spec : Prop :=
  ∀ n, P11729571789084327530.a n = A065455 n

end A065455

/-! ## A065455.P18314024107435336443

`a(n-3)+lcm(3, a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A065455.P18314024107435336443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) + Nat.lcm 3 (a (n - 2))

end

end A065455.P18314024107435336443

namespace A065455

/-- `a(n-3)+lcm(3, a(n-2))` -/
def P18314024107435336443.Spec : Prop :=
  ∀ n, (P18314024107435336443.a n : ℤ) = A065455 n

end A065455

/-! ## A065455.P10363777961077534460

`4*a(n-2)-(a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A065455.P10363777961077534460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  4 * a (n - 2) - (a (n - 2) - a (n - 3))

end

end A065455.P10363777961077534460

namespace A065455

/-- `4*a(n-2)-(a(n-2)-a(n-3))` -/
def P10363777961077534460.Spec : Prop :=
  ∀ n, P10363777961077534460.a n = A065455 n

end A065455

/-! ## A065455.P14249476533230406230

`a(n-2)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A065455.P14249476533230406230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A065455.P14249476533230406230

namespace A065455

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-3)` -/
def P14249476533230406230.Spec : Prop :=
  ∀ n, (P14249476533230406230.a n : ℤ) = A065455 n

theorem P14249476533230406230.correct : P14249476533230406230.Spec := by
  intro n
  simp only [A065455, Nat.add_sub_cancel, A065455.P14249476533230406230.a, A065455.P777768816140198286.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A065455

/-! ## A065455.P8275213650228554773

`A188048(n+1)+A052931(n)`
-/

namespace A065455.P8275213650228554773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (n + 1) + A052931 n

end

end A065455.P8275213650228554773

namespace A065455

/-- `A188048(n+1)+A052931(n)` -/
def P8275213650228554773.Spec : Prop :=
  ∀ n, P8275213650228554773.a n = A065455 n

end A065455

/-! ## A065455.P2946188128721099685

`A188021(n)+A061551(n+1)`
-/

namespace A065455.P2946188128721099685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 n + A061551 (n + 1)

end

end A065455.P2946188128721099685

namespace A065455

/-- `A188021(n)+A061551(n+1)` -/
def P2946188128721099685.Spec : Prop :=
  ∀ n, P2946188128721099685.a n = A065455 n

end A065455

/-! ## A065455.P5408470057452316238

`A188022(n+1)+A188022(n)`
-/

namespace A065455.P5408470057452316238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (n + 1) + A188022 n

end

end A065455.P5408470057452316238

namespace A065455

/-- `A188022(n+1)+A188022(n)` -/
def P5408470057452316238.Spec : Prop :=
  ∀ n, P5408470057452316238.a n = A065455 n

end A065455

/-! ## A065455.P4684571792784754612

`A061551(n+2)-A061551(n)`
-/

namespace A065455.P4684571792784754612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (n + 2) - A061551 n

end

end A065455.P4684571792784754612

namespace A065455

/-- `A061551(n+2)-A061551(n)` -/
def P4684571792784754612.Spec : Prop :=
  ∀ n, P4684571792784754612.a n = A065455 n

end A065455

/-! ## A065455.P13525343695299724843

`∑[2*A188048(n)]-A188048(n)`
-/

namespace A065455.P13525343695299724843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A188048 n

end

end A065455.P13525343695299724843

namespace A065455

/-- `∑[2*A188048(n)]-A188048(n)` -/
def P13525343695299724843.Spec : Prop :=
  ∀ n, P13525343695299724843.a n = A065455 n

end A065455

/-! ## A065455.P13703763258917427721

`Δ[A217733(n)]`
-/

namespace A065455.P13703763258917427721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065455.P13703763258917427721

namespace A065455

/-- `Δ[A217733(n)]` -/
def P13703763258917427721.Spec : Prop :=
  ∀ n, P13703763258917427721.a n = A065455 n

end A065455

/-! ## A065455.P16197526360622582042

`A217733(n+1)-A217733(n)`
-/

namespace A065455.P16197526360622582042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217733 (n + 1) - A217733 n

end

end A065455.P16197526360622582042

namespace A065455

/-- `A217733(n+1)-A217733(n)` -/
def P16197526360622582042.Spec : Prop :=
  ∀ n, P16197526360622582042.a n = A065455 n

end A065455

/-! ## A065455.P13628086715689693579

`Δ[A061551(n+1)+A061551(n)]`
-/

namespace A065455.P13628086715689693579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (n + 1) + A061551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065455.P13628086715689693579

namespace A065455

/-- `Δ[A061551(n+1)+A061551(n)]` -/
def P13628086715689693579.Spec : Prop :=
  ∀ n, P13628086715689693579.a n = A065455 n

end A065455

/-!
# A065456: Number of functions on n labeled nodes whose representation as a digraph has two components.

The programs for A065456, there is no canonical definition to state claims against.
-/

/-! ## A065456.P8610998964047833271

`A060281(A133263(n))-A000007(n)`
-/

namespace A065456.P8610998964047833271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A133263 n).toNat - A000007 n

end

end A065456.P8610998964047833271

/-! ## A065456.P9674830419384006353

`A057427(n)*A060281(A133263(n))`
-/

namespace A065456.P9674830419384006353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A060281 (A133263 n).toNat

end

end A065456.P9674830419384006353

/-! ## A065456.P14794690386937781290

`A060281(A133263(n))*A178334(n)`
-/

namespace A065456.P14794690386937781290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (A133263 n).toNat * A178334 n

end

end A065456.P14794690386937781290

/-! ## A065456.P10450020910789217154

`char[A246694(n)]*A060281(A133263(n))`
-/

namespace A065456.P10450020910789217154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246694 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A060281 (A133263 n).toNat

end

end A065456.P10450020910789217154

/-! ## A065456.P13539285713892847419

`char[A078719(n+1)]*A060281(A133263(n))`
-/

namespace A065456.P13539285713892847419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A060281 (A133263 n).toNat

end

end A065456.P13539285713892847419

/-!
# A065458: Number of inequivalent (ordered) solutions to a^2 + b^2 + c^2 + d^2 = n^2.

The programs for A065458, there is no canonical definition to state claims against.
-/

/-! ## A065458.P13739383088381579113

`A065459(n)-A179015(round(acot(n)+n))`
-/

namespace A065458.P13739383088381579113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065459 n - A179015 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A065458.P13739383088381579113

/-! ## A065458.P5554730407641459635

`A065459(n)-A179015(round(sqrt(n²+1)))`
-/

namespace A065458.P5554730407641459635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065459 n - A179015 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A065458.P5554730407641459635

/-! ## A065458.P6255000227349426418

`A255212(∑[n+5]+5)`
-/

namespace A065458.P6255000227349426418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A065458.P6255000227349426418

/-! ## A065458.P11469525613091233272

`A255212(A052905(n+2))^(C(n, n²)+1)`
-/

namespace A065458.P11469525613091233272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A052905 (n + 2)).toNat ^ (Nat.choose n (n ^ 2) + 1)

end

end A065458.P11469525613091233272

/-! ## A065458.P12079150656632683300

`A255212(A052905(n+2))%A052147(n+1)`
-/

namespace A065458.P12079150656632683300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255212 (A052905 (n + 2)).toNat) (A052147 (n + 1))

end

end A065458.P12079150656632683300

/-! ## A065458.P16026423806949813144

`A255212(A052905(n+2))*A334949(A117277(n+1))`
-/

namespace A065458.P16026423806949813144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A052905 (n + 2)).toNat * A334949 (A117277 (n + 1)).toNat

end

end A065458.P16026423806949813144

/-! ## A065458.P11801106135414075166

`A002635(n²)`
-/

namespace A065458.P11801106135414075166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (n ^ 2)

end

end A065458.P11801106135414075166

/-! ## A065458.P2563865918525500439

`2*2*A002635(n*n)/4`
-/

namespace A065458.P2563865918525500439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * A002635 (n * n) : ℚ) / 4)

end

end A065458.P2563865918525500439

/-! ## A065458.P8633443934256089667

`A000027(A002635(n*n))`
-/

namespace A065458.P8633443934256089667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002635 (n * n)).toNat

end

end A065458.P8633443934256089667

/-! ## A065458.P6176137483938504982

`or(char[1], A002635(A000290(n)))`
-/

namespace A065458.P6176137483938504982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002635 (A000290 n).toNat)

end

end A065458.P6176137483938504982

/-! ## A065458.P17042559903636180631

`A065459(n)-A025429(n²)`
-/

namespace A065458.P17042559903636180631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065459 n - A025429 (n ^ 2)

end

end A065458.P17042559903636180631

/-! ## A065458.P3329061888917359961

`A026741(2*A002635(n*n))`
-/

namespace A065458.P3329061888917359961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A002635 (n * n)).toNat

end

end A065458.P3329061888917359961

/-! ## A065458.P14113480438954143456

`A166514(2*A002635(n*n))`
-/

namespace A065458.P14113480438954143456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (2 * A002635 (n * n)).toNat

end

end A065458.P14113480438954143456

/-! ## A065458.P1147454231837817771

`A025428(n²)+A000164(n²)`
-/

namespace A065458.P1147454231837817771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (n ^ 2) + A000164 (n ^ 2)

end

end A065458.P1147454231837817771

/-! ## A065458.P451383060697681058

`A002635(A000290(n))%A016825(n)`
-/

namespace A065458.P451383060697681058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002635 (A000290 n).toNat) (A016825 n)

end

end A065458.P451383060697681058

/-! ## A065458.P2604829048627042016

`∑{d}[A002635(A000290(n)), A000010(#)]`
-/

namespace A065458.P2604829048627042016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A000290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A065458.P2604829048627042016

/-! ## A065458.P16629012953378826180

`A000164(A000164(n))*A002635(A000290(n))`
-/

namespace A065458.P16629012953378826180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000164 n).toNat * A002635 (A000290 n).toNat

end

end A065458.P16629012953378826180

/-!
# A065459: Number of inequivalent (ordered) solutions to n^2 = sum of 5 squares of integers >= 0.

The programs for A065459, there is no canonical definition to state claims against.
-/

/-! ## A065459.P10850862589506208309

`A179015(round(acot(n)+n))+A065458(n)`
-/

namespace A065459.P10850862589506208309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179015 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A065458 n

end

end A065459.P10850862589506208309

/-! ## A065459.P7005539752775592505

`A179015(round(sqrt(n²+1)))+A065458(n)`
-/

namespace A065459.P7005539752775592505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179015 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A065458 n

end

end A065459.P7005539752775592505

/-! ## A065459.P2653453610665182192

`A255212(A055999(n+3))`
-/

namespace A065459.P2653453610665182192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A055999 (n + 3)).toNat

end

end A065459.P2653453610665182192

/-! ## A065459.P11283153394600343117

`A255212(Δ[A026054(n+3)])`
-/

namespace A065459.P11283153394600343117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (f1 (n + 1) - f1 n).toNat

end

end A065459.P11283153394600343117

/-! ## A065459.P6238463549060220725

`A255212(A000217(n+6)-6)`
-/

namespace A065459.P6238463549060220725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A000217 (n + 6) - 6).toNat

end

end A065459.P6238463549060220725

/-! ## A065459.P1737066655535120412

`A255212(A000124(n+6)-7)`
-/

namespace A065459.P1737066655535120412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A000124 (n + 6) - 7).toNat

end

end A065459.P1737066655535120412

/-! ## A065459.P3726254237393928707

`A255212(A016789(n+2)+A000124(n+3))`
-/

namespace A065459.P3726254237393928707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A016789 (n + 2) + A000124 (n + 3)).toNat

end

end A065459.P3726254237393928707

/-! ## A065459.P6642194041694654044

`A000174(n²)`
-/

namespace A065459.P6642194041694654044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (n ^ 2)

end

end A065459.P6642194041694654044

/-! ## A065459.P8116939042941142513

`A000027(A000174(n^2))`
-/

namespace A065459.P8116939042941142513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000174 (n ^ 2)).toNat

end

end A065459.P8116939042941142513

/-! ## A065459.P7747888999763666727

`A065458(n)+A025429(n²)`
-/

namespace A065459.P7747888999763666727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065458 n + A025429 (n ^ 2)

end

end A065459.P7747888999763666727

/-! ## A065459.P9778395664199911058

`A000174(A000290(n))%A005718(n)`
-/

namespace A065459.P9778395664199911058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000174 (A000290 n).toNat) (A005718 n)

end

end A065459.P9778395664199911058

/-! ## A065459.P9161834980456506354

`∑{d}[A000174(A000290(n)), A000010(#)]`
-/

namespace A065459.P9161834980456506354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (A000290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A065459.P9161834980456506354

/-! ## A065459.P18262154557827490886

`A000164(A000164(n))*A000174(A000290(n))`
-/

namespace A065459.P18262154557827490886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000164 n).toNat * A000174 (A000290 n).toNat

end

end A065459.P18262154557827490886

/-! ## A065459.P5735124841948553513

`A007318(A025427(n))*A000174(A000290(n))`
-/

namespace A065459.P5735124841948553513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A025427 n).toNat * A000174 (A000290 n).toNat

end

end A065459.P5735124841948553513

/-! ## A065459.P10903885355713220896

`A000174(A000290(n))/A000164(A000925(n))`
-/

namespace A065459.P10903885355713220896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000174 (A000290 n).toNat : ℚ) / (A000164 (A000925 n).toNat : ℚ)

end

end A065459.P10903885355713220896

/-!
# A065460: Number of inequivalent (ordered) solutions to n^2 = sum of 6 squares of integers >= 0.

The programs for A065460, there is no canonical definition to state claims against.
-/

/-! ## A065460.P14038116472960537316

`A255212(A155212(n+3)+1)`
-/

namespace A065460.P14038116472960537316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A155212 (n + 3) + 1).toNat

end

end A065460.P14038116472960537316

/-! ## A065460.P11166056742215787492

`A255212(A055999(n+4)-1)`
-/

namespace A065460.P11166056742215787492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A055999 (n + 4) - 1).toNat

end

end A065460.P11166056742215787492

/-! ## A065460.P16074586876643557625

`A255212(A052905(n+4)-2)`
-/

namespace A065460.P16074586876643557625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A052905 (n + 4) - 2).toNat

end

end A065460.P16074586876643557625

/-! ## A065460.P13059157738392252420

`A255212(A000096(n+6)-6)`
-/

namespace A065460.P13059157738392252420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A000096 (n + 6) - 6).toNat

end

end A065460.P13059157738392252420

/-! ## A065460.P5196400117177372861

`A255212(A000217(n+7)-7)`
-/

namespace A065460.P5196400117177372861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A000217 (n + 7) - 7).toNat

end

end A065460.P5196400117177372861

/-! ## A065460.P14645288688772638893

`A255212(A000124(n+7)-8)`
-/

namespace A065460.P14645288688772638893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A000124 (n + 7) - 8).toNat

end

end A065460.P14645288688772638893

/-! ## A065460.P16454958914328328128

`A255212(Δ[A026054(n+4)]-1)`
-/

namespace A065460.P16454958914328328128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (f1 (n + 1) - f1 n - 1).toNat

end

end A065460.P16454958914328328128

/-! ## A065460.P3196071444556065999

`A255212(A167499(n+4)+A004273(n+1))`
-/

namespace A065460.P3196071444556065999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A167499 (n + 4) + A004273 (n + 1)).toNat

end

end A065460.P3196071444556065999

/-! ## A065460.P10058880407329577077

`A255212(A016825(n+3)+A000124(n+3))`
-/

namespace A065460.P10058880407329577077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A016825 (n + 3) + A000124 (n + 3)).toNat

end

end A065460.P10058880407329577077

/-! ## A065460.P3880148604330536463

`A255212(A008486(n+4)+A000096(n+3))`
-/

namespace A065460.P3880148604330536463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A008486 (n + 4) + A000096 (n + 3)).toNat

end

end A065460.P3880148604330536463

/-! ## A065460.P244816366916231321

`A000177(n²)`
-/

namespace A065460.P244816366916231321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 (n ^ 2)

end

end A065460.P244816366916231321

/-! ## A065460.P12844297297171522094

`or(char[1], A000177(n*n))`
-/

namespace A065460.P12844297297171522094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000177 (n * n))

end

end A065460.P12844297297171522094

/-! ## A065460.P7917956697593659806

`A000027(A000177(n^2))`
-/

namespace A065460.P7917956697593659806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000177 (n ^ 2)).toNat

end

end A065460.P7917956697593659806

/-! ## A065460.P9441665066080054216

`A000177(A000290(n))%A000465(n)`
-/

namespace A065460.P9441665066080054216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000177 (A000290 n).toNat) (A000465 n)

end

end A065460.P9441665066080054216

/-! ## A065460.P4942731923288684242

`gcd(A000038(n), A000177(A000290(n)))`
-/

namespace A065460.P4942731923288684242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A000177 (A000290 n).toNat)

end

end A065460.P4942731923288684242

/-! ## A065460.P1597293440497522739

`∑{d}[A000177(A000290(n)), A000010(#)]`
-/

namespace A065460.P1597293440497522739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 (A000290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A065460.P1597293440497522739

/-!
# A065461: Number of inequivalent (ordered) solutions to n^2 = sum of 7 squares of integers >= 0.

The programs for A065461, there is no canonical definition to state claims against.
-/

/-! ## A065461.P9338920067110921019

`A255212(A155212(n+4))`
-/

namespace A065461.P9338920067110921019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A155212 (n + 4)).toNat

end

end A065461.P9338920067110921019

/-! ## A065461.P13173307426359214096

`A255212(A055999(n+5)-2)`
-/

namespace A065461.P13173307426359214096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A055999 (n + 5) - 2).toNat

end

end A065461.P13173307426359214096

/-! ## A065461.P7931811366664407959

`A255212(A034856(n+7)-6)`
-/

namespace A065461.P7931811366664407959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A034856 (n + 7) - 6).toNat

end

end A065461.P7931811366664407959

/-! ## A065461.P15038201640575392512

`A255212(A000217(n+8)-8)`
-/

namespace A065461.P15038201640575392512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A000217 (n + 8) - 8).toNat

end

end A065461.P15038201640575392512

/-! ## A065461.P4181833152782432893

`A255212(A052905(n+4)-A001478(n+5))`
-/

namespace A065461.P4181833152782432893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A052905 (n + 4) - A001478 (n + 5)).toNat

end

end A065461.P4181833152782432893

/-! ## A065461.P7954200446590485377

`A025422(n²)`
-/

namespace A065461.P7954200446590485377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 (n ^ 2)

end

end A065461.P7954200446590485377

/-! ## A065461.P6002438482705862906

`A000027(A025422(A000290(n)))`
-/

namespace A065461.P6002438482705862906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A025422 (A000290 n).toNat).toNat

end

end A065461.P6002438482705862906

/-! ## A065461.P7996711923097873038

`A000027(A025422(∑[A004273(n)]))`
-/

namespace A065461.P7996711923097873038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A025422 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A065461.P7996711923097873038

/-! ## A065461.P12208489427103058915

`A025422(A000290(n))%A000412(n)`
-/

namespace A065461.P12208489427103058915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025422 (A000290 n).toNat) (A000412 n)

end

end A065461.P12208489427103058915

/-! ## A065461.P3426941977076232564

`gcd(A000038(n), A025422(A000290(n)))`
-/

namespace A065461.P3426941977076232564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A025422 (A000290 n).toNat)

end

end A065461.P3426941977076232564

/-! ## A065461.P14268417858049700078

`lcm(A025422(A000290(n)), A106400(n))`
-/

namespace A065461.P14268417858049700078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025422 (A000290 n).toNat) (A106400 n)

end

end A065461.P14268417858049700078

/-! ## A065461.P9892651504563169695

`or(A000007(n), A025422(A000290(n)))`
-/

namespace A065461.P9892651504563169695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A025422 (A000290 n).toNat)

end

end A065461.P9892651504563169695

/-! ## A065461.P8786070822585574491

`or(A025422(A000290(n)), A178333(n))`
-/

namespace A065461.P8786070822585574491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025422 (A000290 n).toNat) (A178333 n)

end

end A065461.P8786070822585574491

/-! ## A065461.P11366754493295720031

`A178333(2*n)+A025422(A000290(n))`
-/

namespace A065461.P11366754493295720031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (2 * n) + A025422 (A000290 n).toNat

end

end A065461.P11366754493295720031

/-! ## A065461.P12364872427918296604

`A000164(A000164(n))*A025422(n*n)`
-/

namespace A065461.P12364872427918296604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000164 n).toNat * A025422 (n * n)

end

end A065461.P12364872427918296604

/-! ## A065461.P7421109096161686637

`A010052(n*n)*A025422(A000290(n))`
-/

namespace A065461.P7421109096161686637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n * n) * A025422 (A000290 n).toNat

end

end A065461.P7421109096161686637

/-! ## A065461.P2594549737202210899

`A025422(A000290(n))+A000007(A025422(n))`
-/

namespace A065461.P2594549737202210899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 (A000290 n).toNat + A000007 (A025422 n).toNat

end

end A065461.P2594549737202210899

/-! ## A065461.P4739570924869373533

`A025422(A000290(n))/A000164(A025428(n))`
-/

namespace A065461.P4739570924869373533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025422 (A000290 n).toNat : ℚ) / (A000164 (A025428 n).toNat : ℚ)

end

end A065461.P4739570924869373533

/-!
# A065462: Number of inequivalent (ordered) solutions to n^2 = sum of 8 squares of integers >= 0.

The programs for A065462, there is no canonical definition to state claims against.
-/

/-! ## A065462.P6259292076624663339

`A255212(A155212(n+5)-1)`
-/

namespace A065462.P6259292076624663339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A155212 (n + 5) - 1).toNat

end

end A065462.P6259292076624663339

/-! ## A065462.P5832670561033191053

`A255212(A000217(n+9)-9)`
-/

namespace A065462.P5832670561033191053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A000217 (n + 9) - 9).toNat

end

end A065462.P5832670561033191053

/-! ## A065462.P11823892578703989706

`A255212(A000124(n+9)-10)`
-/

namespace A065462.P11823892578703989706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A000124 (n + 9) - 10).toNat

end

end A065462.P11823892578703989706

/-! ## A065462.P3339841321986334094

`A255212(A028884(n+4)-A052905(n+1))`
-/

namespace A065462.P3339841321986334094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A028884 (n + 4) - A052905 (n + 1)).toNat

end

end A065462.P3339841321986334094

/-! ## A065462.P366195739606320508

`A255212(A167499(n+6)+A004273(n+2))`
-/

namespace A065462.P366195739606320508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A167499 (n + 6) + A004273 (n + 2)).toNat

end

end A065462.P366195739606320508

/-! ## A065462.P1869415467961817605

`A255212(A016789(n+4)+A000124(n+6))`
-/

namespace A065462.P1869415467961817605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A016789 (n + 4) + A000124 (n + 6)).toNat

end

end A065462.P1869415467961817605

/-! ## A065462.P2497172825729157710

`A025423(n²)`
-/

namespace A065462.P2497172825729157710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025423 (n ^ 2)

end

end A065462.P2497172825729157710

/-! ## A065462.P14690765928346390529

`or(char[1], A025423(A000290(n)))`
-/

namespace A065462.P14690765928346390529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A025423 (A000290 n).toNat)

end

end A065462.P14690765928346390529

/-! ## A065462.P16005904540117582336

`A025423(A000290(n))%A016900(n)`
-/

namespace A065462.P16005904540117582336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025423 (A000290 n).toNat) (A016900 n)

end

end A065462.P16005904540117582336

/-! ## A065462.P5910970386332943783

`gcd(A000038(n), A025423(A000290(n)))`
-/

namespace A065462.P5910970386332943783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A025423 (A000290 n).toNat)

end

end A065462.P5910970386332943783

/-! ## A065462.P3551743493123190173

`A000164(A000164(n))*A025423(n*n)`
-/

namespace A065462.P3551743493123190173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000164 n).toNat * A025423 (n * n)

end

end A065462.P3551743493123190173

/-! ## A065462.P8308798174243725782

`A010052(A000290(n))*A025423(n*n)`
-/

namespace A065462.P8308798174243725782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000290 n).toNat * A025423 (n * n)

end

end A065462.P8308798174243725782

/-! ## A065462.P7687829348139924145

`A165754(gcd(n, n+1))+A025423(A000290(n))`
-/

namespace A065462.P7687829348139924145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (Nat.gcd n (n + 1)) + A025423 (A000290 n).toNat

end

end A065462.P7687829348139924145

/-! ## A065462.P10884413938088487261

`A025423(A000290(n))/A000164(A000925(n))`
-/

namespace A065462.P10884413938088487261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025423 (A000290 n).toNat : ℚ) / (A000164 (A000925 n).toNat : ℚ)

end

end A065462.P10884413938088487261

/-! ## A065462.P12769315657638552072

`A025423(A000290(n))/A000164(A025428(n))`
-/

namespace A065462.P12769315657638552072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025423 (A000290 n).toNat : ℚ) / (A000164 (A025428 n).toNat : ℚ)

end

end A065462.P12769315657638552072

/-! ## A065462.P3090051540402309236

`A025423(A000290(n))^A014963(A124978(n+1))`
-/

namespace A065462.P3090051540402309236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025423 (A000290 n).toNat : ℚ) ^ (A014963 (A124978 (n + 1)).toNat : ℤ)

end

end A065462.P3090051540402309236

/-!
# A065475: Natural numbers excluding 2.

The programs for A065475, the canonical program `A065475.P2637304413385993180` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065475 has offset 1).

The definition of A065475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065475.P2637304413385993180

`1+a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065475

/-- `1+a(n-1)` -/
def P2637304413385993180.Spec : Prop :=
  ∀ n, (P2637304413385993180.a n : ℤ) = A065475 (n + 1)

theorem P2637304413385993180.correct : P2637304413385993180.Spec := by
  intro n
  simp only [A065475, Nat.add_sub_cancel]

end A065475

/-!
# A065482: a(n) = round( 2^n/n ).

The programs for A065482, the canonical program `A065482.P11906938650527563455` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065482 has offset 1).

The definition of A065482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(2^(n+1)/(n+1))` (program `A065482.P11906938650527563455`, by `A065482.P11906938650527563455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065482.P11906938650527563455

`round(2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065482

/-- `round(2^(n+1)/(n+1))` -/
def P11906938650527563455.Spec : Prop :=
  ∀ n, P11906938650527563455.a n = A065482 (n + 1)

theorem P11906938650527563455.correct : P11906938650527563455.Spec := by
  intro n
  simp only [A065482, Nat.add_sub_cancel]

end A065482

/-! ## A065482.P12545880915839128076

`A082894(n+1)/(n+1)`
-/

namespace A065482.P12545880915839128076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082894 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A065482.P12545880915839128076

namespace A065482

/-- `A082894(n+1)/(n+1)` -/
def P12545880915839128076.Spec : Prop :=
  ∀ n, P12545880915839128076.a n = (A065482 (n + 1) : ℚ)

end A065482

/-! ## A065482.P1517657017870815367

`floor(A053639(n+1)/2)`
-/

namespace A065482.P1517657017870815367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053639 (n + 1) : ℚ) / 2⌋

end

end A065482.P1517657017870815367

namespace A065482

/-- `floor(A053639(n+1)/2)` -/
def P1517657017870815367.Spec : Prop :=
  ∀ n, P1517657017870815367.a n = A065482 (n + 1)

end A065482

/-! ## A065482.P11667712095418061772

`ceil(A281375(n+1)/2)`
-/

namespace A065482.P11667712095418061772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A281375 (n + 1) : ℚ) / 2⌉

end

end A065482.P11667712095418061772

namespace A065482

/-- `ceil(A281375(n+1)/2)` -/
def P11667712095418061772.Spec : Prop :=
  ∀ n, P11667712095418061772.a n = A065482 (n + 1)

end A065482

/-! ## A065482.P16850114840120316833

`A053639(n+1)-A053638(n+1)`
-/

namespace A065482.P16850114840120316833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 (n + 1) - A053638 (n + 1)

end

end A065482.P16850114840120316833

namespace A065482

/-- `A053639(n+1)-A053638(n+1)` -/
def P16850114840120316833.Spec : Prop :=
  ∀ n, P16850114840120316833.a n = A065482 (n + 1)

end A065482

/-! ## A065482.P3826286593292630115

`A281375(n+1)-A000799(n+1)`
-/

namespace A065482.P3826286593292630115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281375 (n + 1) - A000799 (n + 1)

end

end A065482.P3826286593292630115

namespace A065482

/-- `A281375(n+1)-A000799(n+1)` -/
def P3826286593292630115.Spec : Prop :=
  ∀ n, P3826286593292630115.a n = A065482 (n + 1)

end A065482

/-! ## A065482.P9445764256613430665

`round(A000325(n+1)/(n+1))+1`
-/

namespace A065482.P9445764256613430665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000325 (n + 1) : ℚ) / (n + 1 : ℚ)) + 1

end

end A065482.P9445764256613430665

namespace A065482

/-- `round(A000325(n+1)/(n+1))+1` -/
def P9445764256613430665.Spec : Prop :=
  ∀ n, P9445764256613430665.a n = A065482 (n + 1)

end A065482

/-!
# A065490: Exponents in expansion of constant A065463 as Product_{n>1} zeta(n)^(-a(n)).

The programs for A065490, there is no canonical definition to state claims against.
-/

/-! ## A065490.P14703014504281835152

`A240330(n)-A320767(n+1)`
-/

namespace A065490.P14703014504281835152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240330 n - A320767 (n + 1)

end

end A065490.P14703014504281835152

/-! ## A065490.P1233378863597688078

`A240328(A037015(n+1))-A320767(n+1)`
-/

namespace A065490.P1233378863597688078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A037015 (n + 1)).toNat - A320767 (n + 1)

end

end A065490.P1233378863597688078

/-! ## A065490.P16429296545257746794

`A319448(A348867(n+1))-A320767(n+1)`
-/

namespace A065490.P16429296545257746794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319448 (A348867 (n + 1)).toNat - A320767 (n + 1)

end

end A065490.P16429296545257746794

/-! ## A065490.P12548535257725751195

`A121373(A103196(n))-A320767(n+1)`
-/

namespace A065490.P12548535257725751195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A103196 n).toNat - A320767 (n + 1)

end

end A065490.P12548535257725751195

/-! ## A065490.P11354651133101546561

`A121373(A033138(n+1))-A320767(n+1)`
-/

namespace A065490.P11354651133101546561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A033138 (n + 1)).toNat - A320767 (n + 1)

end

end A065490.P11354651133101546561

/-!
# A065491: Exponents in expansion of constant A065479 as a product zeta(n)^(-a(n)).

The programs for A065491, there is no canonical definition to state claims against.
-/

/-! ## A065491.P13921789583420836592

`A059966(n+1)-A060280(n+1)`
-/

namespace A065491.P13921789583420836592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A060280 (n + 1)

end

end A065491.P13921789583420836592

/-! ## A065491.P4138551297003928190

`char[1]+A059966(n+1)-A006206(n+1)`
-/

namespace A065491.P4138551297003928190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A059966 (n + 1) - A006206 (n + 1))

end

end A065491.P4138551297003928190

/-! ## A065491.P11947172802143426299

`A059966(n+1)-A031367(n+1)/(n+1)`
-/

namespace A065491.P11947172802143426299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059966 (n + 1) : ℚ) - (A031367 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A065491.P11947172802143426299

/-! ## A065491.P10412281340526338472

`A001037((n+1)%(2*n+1))-A060280(n+1)`
-/

namespace A065491.P10412281340526338472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 ((n + 1) % (2 * n + 1)) - A060280 (n + 1)

end

end A065491.P10412281340526338472

/-! ## A065491.P14189177710904213481

`A038199(n+1)/(n+1)-A060280(n+1)`
-/

namespace A065491.P14189177710904213481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038199 (n + 1) : ℚ) / (n + 1 : ℚ) - (A060280 (n + 1) : ℚ)

end

end A065491.P14189177710904213481

/-! ## A065491.P5796969314380631322

`A059966(n+1)-A348422(A000124(n))`
-/

namespace A065491.P5796969314380631322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A348422 (A000124 n).toNat

end

end A065491.P5796969314380631322

/-! ## A065491.P5812522406953869572

`A123223(A253145(n))-A060280(n+1)`
-/

namespace A065491.P5812522406953869572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A253145 n).toNat - A060280 (n + 1)

end

end A065491.P5812522406953869572

/-! ## A065491.P15440587023160018235

`A296373(A000124(n))-A060280(n+1)`
-/

namespace A065491.P15440587023160018235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296373 (A000124 n).toNat - A060280 (n + 1)

end

end A065491.P15440587023160018235

/-!
# A065494: Number of (binary) bit strings in which no even length block of 0's is followed by an even length block of 1's.

The programs for A065494, the canonical program `A065494.P4483697362935118258` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065494 has offset 0).

The definition of A065494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065494.P4149067540536142181

`ogf((1+2x+x^2)/(1-3x^2-2x^3+x^4))`
-/

namespace A065494.P4149067540536142181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, 0, -3, -2, 1] n

end

end A065494.P4149067540536142181

namespace A065494

/-- `ogf((1+2x+x^2)/(1-3x^2-2x^3+x^4))` -/
def P4149067540536142181.Spec : Prop :=
  ∀ n, P4149067540536142181.a n = A065494 n

end A065494

/-! ## A065494.P4483697362935118258

`∑[∑[A247355(abs(1-n))]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065494

/-- `∑[∑[A247355(abs(1-n))]]` -/
def P4483697362935118258.Spec : Prop :=
  ∀ n, P4483697362935118258.a n = A065494 n

theorem P4483697362935118258.correct : P4483697362935118258.Spec := by
  intro n
  simp only [A065494]

end A065494

/-! ## A065494.P3737286024578476756

`A247355(n)+A247323(n+2)`
-/

namespace A065494.P3737286024578476756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247355 n + A247323 (n + 2)

end

end A065494.P3737286024578476756

namespace A065494

/-- `A247355(n)+A247323(n+2)` -/
def P3737286024578476756.Spec : Prop :=
  ∀ n, P3737286024578476756.a n = A065494 n

end A065494

/-! ## A065494.P10850215376219079432

`A247322(n)-A247326(n)/2`
-/

namespace A065494.P10850215376219079432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247322 n : ℚ) - (A247326 n : ℚ) / 2

end

end A065494.P10850215376219079432

namespace A065494

/-- `A247322(n)-A247326(n)/2` -/
def P10850215376219079432.Spec : Prop :=
  ∀ n, P10850215376219079432.a n = (A065494 n : ℚ)

end A065494

/-! ## A065494.P12281066732605183334

`∑[A247354(n+1)+A247354(n)]`
-/

namespace A065494.P12281066732605183334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247354 (n + 1) + A247354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065494.P12281066732605183334

namespace A065494

/-- `∑[A247354(n+1)+A247354(n)]` -/
def P12281066732605183334.Spec : Prop :=
  ∀ n, P12281066732605183334.a n = A065494 n

end A065494

/-! ## A065494.P1466280013816842266

`A247354(n+1)+A247326(n+1)`
-/

namespace A065494.P1466280013816842266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247354 (n + 1) + A247326 (n + 1)

end

end A065494.P1466280013816842266

namespace A065494

/-- `A247354(n+1)+A247326(n+1)` -/
def P1466280013816842266.Spec : Prop :=
  ∀ n, P1466280013816842266.a n = A065494 n

end A065494

/-! ## A065494.P9780056522338074154

`A247326(n+1)+A247353(n+1)-A247322(n+1)`
-/

namespace A065494.P9780056522338074154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247326 (n + 1) + (A247353 (n + 1) - A247322 (n + 1))

end

end A065494.P9780056522338074154

namespace A065494

/-- `A247326(n+1)+A247353(n+1)-A247322(n+1)` -/
def P9780056522338074154.Spec : Prop :=
  ∀ n, P9780056522338074154.a n = A065494 n

end A065494

/-! ## A065494.P9327406093147356376

`2^n-A065497(n)`
-/

namespace A065494.P9327406093147356376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A065497 n

end

end A065494.P9327406093147356376

namespace A065494

/-- `2^n-A065497(n)` -/
def P9327406093147356376.Spec : Prop :=
  ∀ n, P9327406093147356376.a n = A065494 n

end A065494

/-!
# A065495: Number of (binary) bit strings of length n in which an odd length block of 0's is followed by an odd length block of 1's.

The programs for A065495, the canonical program `A065495.P5148753834428374219` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065495 has offset 2).

The definition of A065495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065495.P6785701878756602061

`ogf(1/(1-2x-2x^2+2x^3+4x^4))`
-/

namespace A065495.P6785701878756602061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -2, 2, 4] n

end

end A065495.P6785701878756602061

namespace A065495

/-- `ogf(1/(1-2x-2x^2+2x^3+4x^4))` -/
def P6785701878756602061.Spec : Prop :=
  ∀ n, P6785701878756602061.a n = A065495 (n + 2)

end A065495

/-! ## A065495.P5148753834428374219

`2^(n+2)-A061279(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065495

/-- `2^(n+2)-A061279(n+2)` -/
def P5148753834428374219.Spec : Prop :=
  ∀ n, P5148753834428374219.a n = A065495 (n + 2)

theorem P5148753834428374219.correct : P5148753834428374219.Spec := by
  intro n
  simp only [A065495, Nat.add_sub_cancel]

end A065495

/-! ## A065495.P4972778468648510924

`A052907(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A065495.P4972778468648510924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052907 n + 2 * a (n - 1)

end

end A065495.P4972778468648510924

namespace A065495

/-- `A052907(n)+2*a(n-1)` -/
def P4972778468648510924.Spec : Prop :=
  ∀ n, P4972778468648510924.a n = A065495 (n + 2)

end A065495

/-! ## A065495.P8016233039453432927

`and(-A061279(n+2), A000225(n+2))`
-/

namespace A065495.P8016233039453432927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A061279 (n + 2)) (A000225 (n + 2))

end

end A065495.P8016233039453432927

namespace A065495

/-- `and(-A061279(n+2), A000225(n+2))` -/
def P8016233039453432927.Spec : Prop :=
  ∀ n, P8016233039453432927.a n = A065495 (n + 2)

end A065495

/-! ## A065495.P464498652355998202

`A099325(n)-A034463(A063886(n))`
-/

namespace A065495.P464498652355998202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - A034463 (A063886 n).toNat

end

end A065495.P464498652355998202

namespace A065495

/-- `A099325(n)-A034463(A063886(n))` -/
def P464498652355998202.Spec : Prop :=
  ∀ n, P464498652355998202.a n = A065495 (n + 2)

end A065495

/-!
# A065496: Numbers n such that sigma(n) is a nontrivial power, i.e., sigma(n) = a^b where a and b are greater than 1.

The programs for A065496, the canonical program `A065496.P7200454893314223986` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065496 has offset 1).

The definition of A065496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065496.P7200454893314223986

`lt[1, A175432(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A065496

/-- `lt[1, A175432(n+1)]+1` -/
def P7200454893314223986.Spec : Prop :=
  ∀ n, (P7200454893314223986.a n : ℤ) = A065496 (n + 1)

theorem P7200454893314223986.correct : P7200454893314223986.Spec := by
  intro n
  simp only [A065496, Nat.add_sub_cancel]

end A065496

/-! ## A065496.P4613739887554621229

`lt[1, A175432(A028310(n))]`
-/

namespace A065496.P4613739887554621229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A065496.P4613739887554621229

namespace A065496

/-- `lt[1, A175432(A028310(n))]` -/
def P4613739887554621229.Spec : Prop :=
  ∀ n, (P4613739887554621229.a n : ℤ) = A065496 (n + 1)

end A065496

/-! ## A065496.P4250365945281926442

`A153152(lt[1, A175432(n+1)])`
-/

namespace A065496.P4250365945281926442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065496.P4250365945281926442

namespace A065496

/-- `A153152(lt[1, A175432(n+1)])` -/
def P4250365945281926442.Spec : Prop :=
  ∀ n, P4250365945281926442.a n = A065496 (n + 1)

end A065496

/-! ## A065496.P4299271404881850910

`A153152(lt[A175433(n+1), n+1])`
-/

namespace A065496.P4299271404881850910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175433 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A065496.P4299271404881850910

namespace A065496

/-- `A153152(lt[A175433(n+1), n+1])` -/
def P4299271404881850910.Spec : Prop :=
  ∀ n, P4299271404881850910.a n = A065496 (n + 1)

end A065496

/-! ## A065496.P17179418068199452235

`lt[A175433(A028310(n)), A039653(n)]`
-/

namespace A065496.P17179418068199452235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175433 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065496.P17179418068199452235

namespace A065496

/-- `lt[A175433(A028310(n)), A039653(n)]` -/
def P17179418068199452235.Spec : Prop :=
  ∀ n, (P17179418068199452235.a n : ℤ) = A065496 (n + 1)

end A065496

/-!
# A065497: Number of (binary) bit strings of length n having at least one even length block of 0's followed by an even length block of 1's.

The programs for A065497, the canonical program `A065497.P12696224305831479734` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065497 has offset 0).

The definition of A065497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065497.P12696224305831479734

`2^n-A065494(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065497

/-- `2^n-A065494(n)` -/
def P12696224305831479734.Spec : Prop :=
  ∀ n, P12696224305831479734.a n = A065497 n

theorem P12696224305831479734.correct : P12696224305831479734.Spec := by
  intro n
  simp only [A065497]

end A065497

/-! ## A065497.P13299364315524316099

`2^n-∑[∑[A247355(abs(1-n))]]`
-/

namespace A065497.P13299364315524316099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247355 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065497.P13299364315524316099

namespace A065497

/-- `2^n-∑[∑[A247355(abs(1-n))]]` -/
def P13299364315524316099.Spec : Prop :=
  ∀ n, P13299364315524316099.a n = A065497 n

end A065497

/-! ## A065497.P15586880785052265965

`abs(A000079(n)-A065494(n))`
-/

namespace A065497.P15586880785052265965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A065494 n|

end

end A065497.P15586880785052265965

namespace A065497

/-- `abs(A000079(n)-A065494(n))` -/
def P15586880785052265965.Spec : Prop :=
  ∀ n, P15586880785052265965.a n = A065497 n

end A065497

/-! ## A065497.P4183849016363415593

`and(-A065494(n), A000225(n))`
-/

namespace A065497.P4183849016363415593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A065494 n) (A000225 n)

end

end A065497.P4183849016363415593

namespace A065497

/-- `and(-A065494(n), A000225(n))` -/
def P4183849016363415593.Spec : Prop :=
  ∀ n, P4183849016363415593.a n = A065497 n

end A065497

/-! ## A065497.P13616326938537634529

`A000079(n)-∑[A247354(n+1)+A247354(n)]`
-/

namespace A065497.P13616326938537634529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247354 (n + 1) + A247354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065497.P13616326938537634529

namespace A065497

/-- `A000079(n)-∑[A247354(n+1)+A247354(n)]` -/
def P13616326938537634529.Spec : Prop :=
  ∀ n, P13616326938537634529.a n = A065497 n

end A065497

/-! ## A065497.P792008834942245818

`∑[A011782(n)-(A247354(n+1)+A247354(n))]`
-/

namespace A065497.P792008834942245818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A247354 (n + 1) + A247354 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065497.P792008834942245818

namespace A065497

/-- `∑[A011782(n)-(A247354(n+1)+A247354(n))]` -/
def P792008834942245818.Spec : Prop :=
  ∀ n, P792008834942245818.a n = A065497 n

end A065497

/-!
# A065498: Number of invertible n X n matrices mod 6 (i.e., over the ring Z_6).

The programs for A065498, there is no canonical definition to state claims against.
-/

/-! ## A065498.P5783605731317315275

`A002884(n)*A053290(n)`
-/

namespace A065498.P5783605731317315275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 n * A053290 n

end

end A065498.P5783605731317315275

/-! ## A065498.P5563871760956699055

`A002884(n)*A059773(A000244(n))`
-/

namespace A065498.P5563871760956699055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 n * A059773 (A000244 n).toNat

end

end A065498.P5563871760956699055

/-!
# A065499: Noninvertible 3 X 3 matrices over Z_n.

The programs for A065499, the canonical program `A065499.P14795021583104513444` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065499 has offset 1).

The definition of A065499 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064767, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065499.P14795021583104513444

`(n+1)^9-A064767(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A065499

/-- `(n+1)^9-A064767(n+1)` -/
def P14795021583104513444.Spec : Prop :=
  ∀ n, P14795021583104513444.a n = A065499 (n + 1)

theorem P14795021583104513444.correct : P14795021583104513444.Spec := by
  intro n
  simp only [A065499, Nat.add_sub_cancel]

end A065499

/-! ## A065499.P701159121565270841

`A001017(n+1)-A000252(n+1)*A115224(n+1)`
-/

namespace A065499.P701159121565270841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (n + 1) - A000252 (n + 1) * A115224 (n + 1)

end

end A065499.P701159121565270841

namespace A065499

/-- `A001017(n+1)-A000252(n+1)*A115224(n+1)` -/
def P701159121565270841.Spec : Prop :=
  ∀ n, P701159121565270841.a n = A065499 (n + 1)

end A065499

/-! ## A065499.P16505614826428875072

`A001017(n+1)-A000010(n+1)*A000056(n+1)*A115224(n+1)`
-/

namespace A065499.P16505614826428875072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (n + 1) - A000010 (n + 1) * A000056 (n + 1) * A115224 (n + 1)

end

end A065499.P16505614826428875072

namespace A065499

/-- `A001017(n+1)-A000010(n+1)*A000056(n+1)*A115224(n+1)` -/
def P16505614826428875072.Spec : Prop :=
  ∀ n, P16505614826428875072.a n = A065499 (n + 1)

end A065499

/-! ## A065499.P6532482381093676912

`A001017(n+1)-A062570(n+1)*A065430(n+1)*A115224(n+1)`
-/

namespace A065499.P6532482381093676912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (n + 1) - A062570 (n + 1) * A065430 (n + 1) * A115224 (n + 1)

end

end A065499.P6532482381093676912

namespace A065499

/-- `A001017(n+1)-A062570(n+1)*A065430(n+1)*A115224(n+1)` -/
def P6532482381093676912.Spec : Prop :=
  ∀ n, P6532482381093676912.a n = A065499 (n + 1)

end A065499

/-! ## A065499.P15573698964058692887

`A001017(n+1)-A070732(n+1)*A082953(n+1)*A115224(n+1)`
-/

namespace A065499.P15573698964058692887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (n + 1) - A070732 (n + 1) * A082953 (n + 1) * A115224 (n + 1)

end

end A065499.P15573698964058692887

namespace A065499

/-- `A001017(n+1)-A070732(n+1)*A082953(n+1)*A115224(n+1)` -/
def P15573698964058692887.Spec : Prop :=
  ∀ n, P15573698964058692887.a n = A065499 (n + 1)

end A065499

/-! ## A065499.P18321412498230271792

`A001017(n+1)-A011785(n+1)/A115224(n+1)*A115226(n+1)`
-/

namespace A065499.P18321412498230271792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 (n + 1) : ℚ) - (A011785 (n + 1) : ℚ) / (A115224 (n + 1) : ℚ) * (A115226 (n + 1) : ℚ)

end

end A065499.P18321412498230271792

namespace A065499

/-- `A001017(n+1)-A011785(n+1)/A115224(n+1)*A115226(n+1)` -/
def P18321412498230271792.Spec : Prop :=
  ∀ n, P18321412498230271792.a n = (A065499 (n + 1) : ℚ)

end A065499

/-! ## A065499.P4717770404675272287

`A001017(n+1)-A000010(n+1)²*A000082(n+1)*A115224(n+1)`
-/

namespace A065499.P4717770404675272287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (n + 1) - A000010 (n + 1) ^ 2 * A000082 (n + 1) * A115224 (n + 1)

end

end A065499.P4717770404675272287

namespace A065499

/-- `A001017(n+1)-A000010(n+1)²*A000082(n+1)*A115224(n+1)` -/
def P4717770404675272287.Spec : Prop :=
  ∀ n, P4717770404675272287.a n = A065499 (n + 1)

end A065499

