import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B003.C006
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A177200: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=9, k=-1 and l=1.

The programs for A177200, there is no canonical definition to state claims against.
-/

/-! ## A177200.P12391037197149176817

`A342634(A002496(n+1)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A177200.P12391037197149176817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342634 (A002496 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)).toNat

end

end A177200.P12391037197149176817

/-!
# A177201: Multiples of nontrivially polygonal numbers A090466.

The programs for A177201, there is no canonical definition to state claims against.
-/

/-! ## A177201.P11739220571198632693

`comp[A177202(n+1)-1]+1`
-/

namespace A177201.P11739220571198632693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177202 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A177201.P11739220571198632693

/-! ## A177201.P17359906199308068317

`eq[char[A177202(n+1)], A000007(n)]`
-/

namespace A177201.P17359906199308068317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177202 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177201.P17359906199308068317

/-! ## A177201.P17602827365711000729

`eq[char[A177202(n+1)], A000038(n)]`
-/

namespace A177201.P17602827365711000729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177202 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177201.P17602827365711000729

/-! ## A177201.P14155119635691444648

`eq[char[A177202(n+1)], A169585(n)]`
-/

namespace A177201.P14155119635691444648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177202 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177201.P14155119635691444648

/-! ## A177201.P3015143421900853223

`∪[A007624(n+1), A090466(n+1)]`
-/

namespace A177201.P3015143421900853223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A177201.P3015143421900853223

/-! ## A177201.P2603070470358647

`∪[A036456(n+1), A090466(n+1)]`
-/

namespace A177201.P2603070470358647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A177201.P2603070470358647

/-! ## A177201.P17212954539795679923

`∪[A058080(n+1), A090466(n+1)]`
-/

namespace A177201.P17212954539795679923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A177201.P17212954539795679923

/-! ## A177201.P2771179476054940011

`∪[A090466(n+1), A119911(n+1)]`
-/

namespace A177201.P2771179476054940011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A177201.P2771179476054940011

/-! ## A177201.P8313921157082718651

`∪[A090466(n+1), A399670(n+1)]`
-/

namespace A177201.P8313921157082718651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A177201.P8313921157082718651

/-! ## A177201.P14517767788249761942

`comp[A177202(n+1)%A177149(n+1)]`
-/

namespace A177201.P14517767788249761942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177202 (n + 1)) (A177149 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177201.P14517767788249761942

/-!
# A177202: Nontrivially polygonal-free numbers.

The programs for A177202, there is no canonical definition to state claims against.
-/

/-! ## A177202.P14598830871031941147

`eq[3, A322347(n+2)]`
-/

namespace A177202.P14598830871031941147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322347 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177202.P14598830871031941147

/-! ## A177202.P17081062653739399470

`eq[A341995(n), A353428(n)]`
-/

namespace A177202.P17081062653739399470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177202.P17081062653739399470

/-! ## A177202.P3376463762723918857

`eq[A341995(n), A353501(n)]`
-/

namespace A177202.P3376463762723918857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353501 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177202.P3376463762723918857

/-! ## A177202.P12527689893562351181

`eq[A353428(n), A369655(n)]`
-/

namespace A177202.P12527689893562351181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177202.P12527689893562351181

/-! ## A177202.P493824309507453404

`eq[A353501(n), A369655(n)]`
-/

namespace A177202.P493824309507453404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177202.P493824309507453404

/-!
# A177203: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=10, k=-1 and l=1.

The programs for A177203, there is no canonical definition to state claims against.
-/

/-! ## A177203.P18331008713191721517

`xor(A081166(n), A373678(A018011(n)))`
-/

namespace A177203.P18331008713191721517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081166 n) (A373678 (A018011 n).toNat)

end

end A177203.P18331008713191721517

/-!
# A177204: Pseudoperfect totient numbers (A288452) which are not powers of primes (A000961).

The programs for A177204, there is no canonical definition to state claims against.
-/

/-! ## A177204.P1737043773786215247

`filter[A288452(n+1), A354108(#)]`
-/

namespace A177204.P1737043773786215247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A177204.P1737043773786215247

/-! ## A177204.P13995880502769477956

`∩[A061346(n+1), A288452(n+1)]`
-/

namespace A177204.P13995880502769477956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P13995880502769477956

/-! ## A177204.P823839126130812925

`∩[A156683(n+1), A288452(n+1)]`
-/

namespace A177204.P823839126130812925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P823839126130812925

/-! ## A177204.P4853228635338892782

`∩[A070537(n+1), A288452(n+1)]`
-/

namespace A177204.P4853228635338892782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P4853228635338892782

/-! ## A177204.P7177813309908169603

`∩[A127653(n+1), A288452(n+1)]`
-/

namespace A177204.P7177813309908169603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P7177813309908169603

/-! ## A177204.P17553508216642501364

`∩[A288452(n+1), A346608(n+1)]`
-/

namespace A177204.P17553508216642501364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P17553508216642501364

/-! ## A177204.P5850356935264534559

`∩[A033949(n+1), A288452(n+1)]`
-/

namespace A177204.P5850356935264534559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P5850356935264534559

/-! ## A177204.P9889502150420879373

`∩[A175594(n+1), A288452(n+1)]`
-/

namespace A177204.P9889502150420879373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P9889502150420879373

/-! ## A177204.P3686858325646614802

`∩[A180634(n+1), A288452(n+1)]`
-/

namespace A177204.P3686858325646614802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P3686858325646614802

/-! ## A177204.P10604259927816822688

`∩[A288452(n+1), A359870(n+1)]`
-/

namespace A177204.P10604259927816822688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P10604259927816822688

/-! ## A177204.P8133667981719652546

`∩[A081062(n+1), A288452(n+1)]`
-/

namespace A177204.P8133667981719652546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P8133667981719652546

/-! ## A177204.P17527286426242140702

`∩[A024619(n+1), A288452(n+1)]`
-/

namespace A177204.P17527286426242140702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P17527286426242140702

/-! ## A177204.P7623905206428302418

`∩[A288452(n+1), A361102(n+1)]`
-/

namespace A177204.P7623905206428302418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P7623905206428302418

/-! ## A177204.P8626608208611744686

`∩[A288452(n+1), A387335(n+1)]`
-/

namespace A177204.P8626608208611744686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P8626608208611744686

/-! ## A177204.P18368007134164964327

`filter[A288452(n+1), A143731(#)]`
-/

namespace A177204.P18368007134164964327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A177204.P18368007134164964327

/-! ## A177204.P16571846537120101604

`∩[A231877(n+1), A288452(n+1)]`
-/

namespace A177204.P16571846537120101604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177204.P16571846537120101604

/-!
# A177205: Partial sums of round(n^2/17).

The programs for A177205, the canonical program `A177205.P1708399465136373955` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177205 has offset 0).

The definition of A177205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177205.P1708399465136373955

`round(n*(n+1)*(2*n+1)/102)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177205

/-- `round(n*(n+1)*(2*n+1)/102)` -/
def P1708399465136373955.Spec : Prop :=
  ∀ n, P1708399465136373955.a n = A177205 n

theorem P1708399465136373955.correct : P1708399465136373955.Spec := by
  intro n
  simp only [A177205]

end A177205

/-! ## A177205.P13111311192610415007

`A347697(A365243(n+1))`
-/

namespace A177205.P13111311192610415007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A365243 (n + 1)).toNat

end

end A177205.P13111311192610415007

namespace A177205

/-- `A347697(A365243(n+1))` -/
def P13111311192610415007.Spec : Prop :=
  ∀ n, P13111311192610415007.a n = A177205 n

end A177205

/-! ## A177205.P16060039551544009095

`∑[∑[A049240(A057542(n))]]`
-/

namespace A177205.P16060039551544009095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (A057542 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177205.P16060039551544009095

namespace A177205

/-- `∑[∑[A049240(A057542(n))]]` -/
def P16060039551544009095.Spec : Prop :=
  ∀ n, P16060039551544009095.a n = A177205 n

end A177205

/-! ## A177205.P9002906331990076984

`∑[∑[A294937(A045623(n))]]`
-/

namespace A177205.P9002906331990076984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (A045623 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177205.P9002906331990076984

namespace A177205

/-- `∑[∑[A294937(A045623(n))]]` -/
def P9002906331990076984.Spec : Prop :=
  ∀ n, P9002906331990076984.a n = A177205 n

end A177205

/-! ## A177205.P5113875832917032413

`∑[∑[A358351(A000041(n))]]`
-/

namespace A177205.P5113875832917032413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358351 (A000041 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177205.P5113875832917032413

namespace A177205

/-- `∑[∑[A358351(A000041(n))]]` -/
def P5113875832917032413.Spec : Prop :=
  ∀ n, P5113875832917032413.a n = A177205 n

end A177205

/-!
# A177206: a(n) = 2*binomial(n+4, 4) + n + 4.

The programs for A177206, the canonical program `A177206.P2885859259663750382` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177206 has offset 0).

The definition of A177206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(n+4, 4)+n+4` (program `A177206.P2885859259663750382`, by `A177206.P2885859259663750382.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177206.P2885859259663750382

`2*C(n+4, 4)+n+4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177206

/-- `2*C(n+4, 4)+n+4` -/
def P2885859259663750382.Spec : Prop :=
  ∀ n, (P2885859259663750382.a n : ℤ) = A177206 n

theorem P2885859259663750382.correct : P2885859259663750382.Spec := by
  intro n
  simp only [A177206]

end A177206

/-! ## A177206.P13020558376187891345

`ogf((6-15x+21x^2-13x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A177206.P13020558376187891345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -15, 21, -13, 3] [1, -5, 10, -10, 5, -1] n

end

end A177206.P13020558376187891345

namespace A177206

/-- `ogf((6-15x+21x^2-13x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13020558376187891345.Spec : Prop :=
  ∀ n, P13020558376187891345.a n = A177206 n

end A177206

/-! ## A177206.P16515526720421912933

`∑[∑[∑[2*(n+1)]]+1]+3`
-/

namespace A177206.P16515526720421912933
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A177206.P16515526720421912933

namespace A177206

/-- `∑[∑[∑[2*(n+1)]]+1]+3` -/
def P16515526720421912933.Spec : Prop :=
  ∀ n, (P16515526720421912933.a n : ℤ) = A177206 n

end A177206

/-! ## A177206.P15709876474814290726

`(4/n+1)*(a(n-1)-3)` with `a(0)=6`
-/

namespace A177206.P15709876474814290726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (4 / (n : ℚ) + 1) * (a (n - 1) - 3)

end

end A177206.P15709876474814290726

namespace A177206

/-- `(4/n+1)*(a(n-1)-3)` -/
def P15709876474814290726.Spec : Prop :=
  ∀ n, P15709876474814290726.a n = (A177206 n : ℚ)

end A177206

/-! ## A177206.P5588611639749332438

`∑[a(n-1)+lcm(n+1, n+2)]` with `a(0)=6, a(1)=9`
-/

namespace A177206.P5588611639749332438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 9] fun n f1 =>
  f1 (n - 1) + Nat.lcm (n + 1) (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177206.P5588611639749332438

namespace A177206

/-- `∑[a(n-1)+lcm(n+1, n+2)]` -/
def P5588611639749332438.Spec : Prop :=
  ∀ n, (P5588611639749332438.a n : ℤ) = A177206 n

end A177206

/-! ## A177206.P5930759736262514497

`Δ[A277935(n+1)+∑[n+3]]`
-/

namespace A177206.P5930759736262514497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177206.P5930759736262514497

namespace A177206

/-- `Δ[A277935(n+1)+∑[n+3]]` -/
def P5930759736262514497.Spec : Prop :=
  ∀ n, P5930759736262514497.a n = A177206 n

end A177206

/-!
# A177207: Triangle read by rows: R(n,k) = 2^(n-k) mod n.

The programs for A177207, the canonical program `A177207.P8839434605175934994` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177207 has offset 1).

The definition of A177207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(row(n)+1-(col(n)+1)))%(row(n)+1)` (program `A177207.P8839434605175934994`, by `A177207.P8839434605175934994.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177207.P8839434605175934994

`(2^(row(n)+1-(col(n)+1)))%(row(n)+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177207

/-- `(2^(row(n)+1-(col(n)+1)))%(row(n)+1)` -/
def P8839434605175934994.Spec : Prop :=
  ∀ n, P8839434605175934994.a n = A177207 (n + 1)

theorem P8839434605175934994.correct : P8839434605175934994.Spec := by
  intro n
  simp only [A177207, Nat.add_sub_cancel]

end A177207

/-! ## A177207.P9725188256402983367

`A130321(n)%∑[char[∑[n]]]`
-/

namespace A177207.P9725188256402983367
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130321 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A177207.P9725188256402983367

namespace A177207

/-- `A130321(n)%∑[char[∑[n]]]` -/
def P9725188256402983367.Spec : Prop :=
  ∀ n, P9725188256402983367.a n = A177207 (n + 1)

end A177207

/-! ## A177207.P80576903732775619

`sqrt(A262616(n))%∑[char[∑[n]]]`
-/

namespace A177207.P80576903732775619
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A262616 n : ℝ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A177207.P80576903732775619

namespace A177207

/-- `sqrt(A262616(n))%∑[char[∑[n]]]` -/
def P80576903732775619.Spec : Prop :=
  ∀ n, P80576903732775619.a n = A177207 (n + 1)

end A177207

/-! ## A177207.P8990574606411125892

`(2^A025581(n))%∑[char[∑[n]]]`
-/

namespace A177207.P8990574606411125892
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025581 n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A177207.P8990574606411125892

namespace A177207

/-- `(2^A025581(n))%∑[char[∑[n]]]` -/
def P8990574606411125892.Spec : Prop :=
  ∀ n, P8990574606411125892.a n = A177207 (n + 1)

end A177207

/-! ## A177207.P10339818834540273827

`(A090988(n+1)/2)%∑[char[∑[n]]]`
-/

namespace A177207.P10339818834540273827
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A090988 (n + 1) : ℚ) / 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A177207.P10339818834540273827

namespace A177207

/-- `(A090988(n+1)/2)%∑[char[∑[n]]]` -/
def P10339818834540273827.Spec : Prop :=
  ∀ n, P10339818834540273827.a n = A177207 (n + 1)

end A177207

/-! ## A177207.P11523729914033827097

`((A130330(n)+1)/2)%∑[char[∑[n]]]`
-/

namespace A177207.P11523729914033827097
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A130330 n + 1 : ℚ) / 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A177207.P11523729914033827097

namespace A177207

/-- `((A130330(n)+1)/2)%∑[char[∑[n]]]` -/
def P11523729914033827097.Spec : Prop :=
  ∀ n, P11523729914033827097.a n = A177207 (n + 1)

end A177207

/-! ## A177207.P17407014242692467129

`A059268(A061579(n))%round(sqrt(2*n+1))`
-/

namespace A177207.P17407014242692467129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 (A061579 n).toNat) (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)))

end

end A177207.P17407014242692467129

namespace A177207

/-- `A059268(A061579(n))%round(sqrt(2*n+1))` -/
def P17407014242692467129.Spec : Prop :=
  ∀ n, P17407014242692467129.a n = A177207 (n + 1)

end A177207

/-! ## A177207.P505828816875833333

`(A038207(n)/A007318(n))%∑[A010054(n)]`
-/

namespace A177207.P505828816875833333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A038207 n : ℚ) / (A007318 n : ℚ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177207.P505828816875833333

namespace A177207

/-- `(A038207(n)/A007318(n))%∑[A010054(n)]` -/
def P505828816875833333.Spec : Prop :=
  ∀ n, P505828816875833333.a n = A177207 (n + 1)

end A177207

/-! ## A177207.P3410770441569600401

`A000010(2^(C(comp[∑[n]]-n, 2)-n))%∑[char[∑[n]]]`
-/

namespace A177207.P3410770441569600401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A177207.P3410770441569600401

namespace A177207

/-- `A000010(2^(C(comp[∑[n]]-n, 2)-n))%∑[char[∑[n]]]` -/
def P3410770441569600401.Spec : Prop :=
  ∀ n, P3410770441569600401.a n = A177207 (n + 1)

end A177207

/-! ## A177207.P14329559691669263208

`A000010(A090988(n+1))%A002024(n+1)`
-/

namespace A177207.P14329559691669263208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A090988 (n + 1)).toNat) (A002024 (n + 1))

end

end A177207.P14329559691669263208

namespace A177207

/-- `A000010(A090988(n+1))%A002024(n+1)` -/
def P14329559691669263208.Spec : Prop :=
  ∀ n, P14329559691669263208.a n = A177207 (n + 1)

end A177207

/-! ## A177207.P15404802464452407490

`A000010(2^A004736(n+1))%A002024(n+1)`
-/

namespace A177207.P15404802464452407490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A004736 (n + 1) : ℤ))).toNat) (A002024 (n + 1))

end

end A177207.P15404802464452407490

namespace A177207

/-- `A000010(2^A004736(n+1))%A002024(n+1)` -/
def P15404802464452407490.Spec : Prop :=
  ∀ n, P15404802464452407490.a n = A177207 (n + 1)

end A177207

/-!
# A177208: Numerators of exponential transform of 1/n.

The programs for A177208, there is no canonical definition to state claims against.
-/

/-! ## A177208.P359124005502528359

`A177209(n)/A000142(n)*A193161(n)`
-/

namespace A177208.P359124005502528359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177209 n : ℚ) / (A000142 n : ℚ) * (A193161 n : ℚ)

end

end A177208.P359124005502528359

/-! ## A177208.P17601124330936836194

`A193160(n+1)/A000142(n+1)*A177209(n)`
-/

namespace A177208.P17601124330936836194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193160 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) * (A177209 n : ℚ)

end

end A177208.P17601124330936836194

/-! ## A177208.P5370169125620295458

`A193161(n)/gcd(A193160(n+1)/(n+1), A000142(n))`
-/

namespace A177208.P5370169125620295458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193161 n : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((A193160 (n + 1) : ℚ) / (n + 1 : ℚ))) (A000142 n) : ℚ)

end

end A177208.P5370169125620295458

/-!
# A177209: Denominators of exponential transform of 1/n.

The programs for A177209, there is no canonical definition to state claims against.
-/

/-! ## A177209.P9334077637078028559

`A000142(n)/A193161(n)*A177208(n)`
-/

namespace A177209.P9334077637078028559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A193161 n : ℚ) * (A177208 n : ℚ)

end

end A177209.P9334077637078028559

/-! ## A177209.P15529270172013830408

`A000142(n+1)/A193160(n+1)*A177208(n)`
-/

namespace A177209.P15529270172013830408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A193160 (n + 1) : ℚ) * (A177208 n : ℚ)

end

end A177209.P15529270172013830408

/-! ## A177209.P1235167590353792528

`A000142(n)/gcd(A193160(n+1)/(n+1), A000142(n))`
-/

namespace A177209.P1235167590353792528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((A193160 (n + 1) : ℚ) / (n + 1 : ℚ))) (A000142 n) : ℚ)

end

end A177209.P1235167590353792528

/-! ## A177209.P5210888985262002938

`lcm(A193160(n+1)/(n+1), A000142(n))/A193161(n)`
-/

namespace A177209.P5210888985262002938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (SequenceMachineLib.roundAway ((A193160 (n + 1) : ℚ) / (n + 1 : ℚ))) (A000142 n) : ℚ) / (A193161 n : ℚ)

end

end A177209.P5210888985262002938

/-!
# A177210: Numbers k that are the products of two distinct primes such that 2*k-1 are also products of two distinct primes.

The programs for A177210, there is no canonical definition to state claims against.
-/

/-! ## A177210.P8831343943662317770

`eq[15, A305977(A233583(n+1))]`
-/

namespace A177210.P8831343943662317770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305977 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177210.P8831343943662317770

/-! ## A177210.P12066503546882927709

`filter[A234096(n+1), A280710(#)]`
-/

namespace A177210.P12066503546882927709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A177210.P12066503546882927709

/-! ## A177210.P12341175257788920062

`∩[A111168(n+1), A117206(n+1)]`
-/

namespace A177210.P12341175257788920062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177210.P12341175257788920062

/-! ## A177210.P7018873687585742049

`∩[A006881(n+1), A234096(n+1)]`
-/

namespace A177210.P7018873687585742049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177210.P7018873687585742049

/-! ## A177210.P737543140552034294

`eq[A066882(A004273(n))², A077462(n)]`
-/

namespace A177210.P737543140552034294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (A004273 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177210.P737543140552034294

/-! ## A177210.P3712042216720096348

`eq[A077462(n), A226177(A004280(n+1))]`
-/

namespace A177210.P3712042216720096348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177210.P3712042216720096348

/-! ## A177210.P8123472385671180504

`∩[A117206(A020705(n)), A111168(n+1)]`
-/

namespace A177210.P8123472385671180504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117206 (A020705 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177210.P8123472385671180504

/-! ## A177210.P7711041408074249246

`eq[A074206(n)², A291767(A060000(n+1))]`
-/

namespace A177210.P7711041408074249246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291767 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177210.P7711041408074249246

/-!
# A177211: Numbers k that are the products of two distinct primes such that 2*k-1 and 4*k-3 are also products of two distinct primes.

The programs for A177211, there is no canonical definition to state claims against.
-/

/-! ## A177211.P13521329720295944505

`A302979(lt[A222802(3*n+2), A302491(n+1)])`
-/

namespace A177211.P13521329720295944505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222802 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177211.P13521329720295944505

/-!
# A177213: Numbers k that are the products of two distinct primes such that 2*k-1, 4*k-3, 8*k-7 and 16*k-15 are also products of two distinct primes.

The programs for A177213, there is no canonical definition to state claims against.
-/

/-! ## A177213.P6636713069147086861

`∩[A177212(n+1), A008619(A177212(n+1))]`
-/

namespace A177213.P6636713069147086861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A177212 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177213.P6636713069147086861

/-!
# A177214: Numbers k that are the products of two distinct primes such that 2*k-1, 4*k-3, 8*k-7, 16*k-15 and 32*k-31 are also products of two distinct primes.

The programs for A177214, there is no canonical definition to state claims against.
-/

/-! ## A177214.P4981719727720366779

`∩[A177213(n+1), A008619(A177213(n+1))]`
-/

namespace A177214.P4981719727720366779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A177213 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177214.P4981719727720366779

/-!
# A177215: Numbers k that are the products of two distinct primes such that 2*k-1, 4*k-3, 8*k-7, 16*k-15, 32*k-31 and 64*k-63 are also products of two distinct primes.

The programs for A177215, there is no canonical definition to state claims against.
-/

/-! ## A177215.P12664271498250472075

`∩[ceil(A177214(n+1)/2), A177214(n+1)]`
-/

namespace A177215.P12664271498250472075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177214 (n + 1) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177215.P12664271498250472075

/-! ## A177215.P12410854331134550480

`A177214(A363195(n+1)+A195583(n))`
-/

namespace A177215.P12410854331134550480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177214 (A363195 (n + 1) + A195583 n).toNat

end

end A177215.P12410854331134550480

/-!
# A177216: Numbers k that are the products of two distinct primes such that 2*k-1, 4*k-3, 8*k-7, 16*k-15, 32*k-31, 64*k-63 and 128*k-127 are also products of two distinct primes.

The programs for A177216, there is no canonical definition to state claims against.
-/

/-! ## A177216.P16914668882366619629

`∩[ceil(A177215(n+1)/2), A177215(n+1)]`
-/

namespace A177216.P16914668882366619629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177215 (n + 1) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177216.P16914668882366619629

/-!
# A177217: The products k of two distinct primes such that 2*k-1, 4*k-3, 8*k-7, 16*k-15, 32*k-31, 64*k-63, 128*k-127 and 256*k-255 are also products of two distinct primes.

The programs for A177217, there is no canonical definition to state claims against.
-/

/-! ## A177217.P7381446303122955080

`A177216(A054760(∑[n+1]))`
-/

namespace A177217.P7381446303122955080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177216 (A054760 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A177217.P7381446303122955080

/-! ## A177217.P16118648392176964183

`A177216(A077528(n+2)+1)`
-/

namespace A177217.P16118648392176964183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177216 (A077528 (n + 2) + 1).toNat

end

end A177217.P16118648392176964183

/-! ## A177217.P8285190614590281418

`A177216(A037441(n+1)+3)`
-/

namespace A177217.P8285190614590281418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177216 (A037441 (n + 1) + 3).toNat

end

end A177217.P8285190614590281418

/-!
# A177219: a(1) = 1; a(2n) = -a(n); a(2n+1) = -a(n) + a(n+1).

The programs for A177219, there is no canonical definition to state claims against.
-/

/-! ## A177219.P6252573983912057243

`A345007((∑[and(n, -n)^log2(3)]+n)/2)`
-/

namespace A177219.P6252573983912057243
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345007 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2)).toNat

end

end A177219.P6252573983912057243

/-! ## A177219.P15353045042214248101

`A345007(record[A117966(n)])`
-/

namespace A177219.P15353045042214248101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345007 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177219.P15353045042214248101

/-! ## A177219.P3249888492133957160

`A345007(record[A167877(n)])`
-/

namespace A177219.P3249888492133957160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345007 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177219.P3249888492133957160

/-! ## A177219.P12683307498510906523

`A345007(A005836(n+1))`
-/

namespace A177219.P12683307498510906523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345007 (A005836 (n + 1)).toNat

end

end A177219.P12683307498510906523

/-! ## A177219.P13098219071806476820

`A345007(A186776(n+1))`
-/

namespace A177219.P13098219071806476820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345007 (A186776 (n + 1)).toNat

end

end A177219.P13098219071806476820

/-! ## A177219.P9906947461951047099

`A345007(A082575(n+1))`
-/

namespace A177219.P9906947461951047099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345007 (A082575 (n + 1)).toNat

end

end A177219.P9906947461951047099

/-!
# A177221: Numbers k that are the products of two distinct primes such that 2*k + 1 is also the product of two distinct primes.

The programs for A177221, the canonical program `A177221.P8737910674558711420` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177221 has offset 1).

The definition of A177221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177221.P13152769733900551969

`filter[A111153(n+1), A008966(#)]`
-/

namespace A177221.P13152769733900551969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A177221.P13152769733900551969

namespace A177221

/-- `filter[A111153(n+1), A008966(#)]` -/
def P13152769733900551969.Spec : Prop :=
  ∀ n, P13152769733900551969.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P10694465512979090061

`∩[A005117(n+1), A111153(n+1)]`
-/

namespace A177221.P10694465512979090061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177221.P10694465512979090061

namespace A177221

/-- `∩[A005117(n+1), A111153(n+1)]` -/
def P10694465512979090061.Spec : Prop :=
  ∀ n, (P10694465512979090061.a n : ℤ) = A177221 (n + 1)

end A177221

/-! ## A177221.P10112747663140135339

`filter[A111153(n+1), A049240(#)]`
-/

namespace A177221.P10112747663140135339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A177221.P10112747663140135339

namespace A177221

/-- `filter[A111153(n+1), A049240(#)]` -/
def P10112747663140135339.Spec : Prop :=
  ∀ n, P10112747663140135339.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P11494503442270664674

`filter[A111153(n+1), A181183(#)]`
-/

namespace A177221.P11494503442270664674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A177221.P11494503442270664674

namespace A177221

/-- `filter[A111153(n+1), A181183(#)]` -/
def P11494503442270664674.Spec : Prop :=
  ∀ n, P11494503442270664674.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P104377834656780632

`filter[A111153(n+1), A262684(#)]`
-/

namespace A177221.P104377834656780632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A177221.P104377834656780632

namespace A177221

/-- `filter[A111153(n+1), A262684(#)]` -/
def P104377834656780632.Spec : Prop :=
  ∀ n, P104377834656780632.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P2586537424067019548

`filter[A111153(n+1), A280710(#)]`
-/

namespace A177221.P2586537424067019548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A177221.P2586537424067019548

namespace A177221

/-- `filter[A111153(n+1), A280710(#)]` -/
def P2586537424067019548.Spec : Prop :=
  ∀ n, P2586537424067019548.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P9904754138948204416

`filter[A111153(n+1), A295316(#)]`
-/

namespace A177221.P9904754138948204416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A177221.P9904754138948204416

namespace A177221

/-- `filter[A111153(n+1), A295316(#)]` -/
def P9904754138948204416.Spec : Prop :=
  ∀ n, P9904754138948204416.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P17146307834501267309

`filter[A111153(n+1), A323154(#)]`
-/

namespace A177221.P17146307834501267309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A177221.P17146307834501267309

namespace A177221

/-- `filter[A111153(n+1), A323154(#)]` -/
def P17146307834501267309.Spec : Prop :=
  ∀ n, P17146307834501267309.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P7205340061266544621

`filter[A111153(n+1), A343219(#)]`
-/

namespace A177221.P7205340061266544621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A177221.P7205340061266544621

namespace A177221

/-- `filter[A111153(n+1), A343219(#)]` -/
def P7205340061266544621.Spec : Prop :=
  ∀ n, P7205340061266544621.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P10959872630949124415

`filter[A111153(n+1), A353471(#)]`
-/

namespace A177221.P10959872630949124415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A177221.P10959872630949124415

namespace A177221

/-- `filter[A111153(n+1), A353471(#)]` -/
def P10959872630949124415.Spec : Prop :=
  ∀ n, P10959872630949124415.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P1619485277346894934

`filter[A111153(n+1), A353519(#)]`
-/

namespace A177221.P1619485277346894934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A177221.P1619485277346894934

namespace A177221

/-- `filter[A111153(n+1), A353519(#)]` -/
def P1619485277346894934.Spec : Prop :=
  ∀ n, P1619485277346894934.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P5198836095703139114

`filter[A111153(n+1), A353559(#)]`
-/

namespace A177221.P5198836095703139114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A177221.P5198836095703139114

namespace A177221

/-- `filter[A111153(n+1), A353559(#)]` -/
def P5198836095703139114.Spec : Prop :=
  ∀ n, P5198836095703139114.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P13472764099667536204

`filter[A111153(n+1), A353629(#)]`
-/

namespace A177221.P13472764099667536204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A177221.P13472764099667536204

namespace A177221

/-- `filter[A111153(n+1), A353629(#)]` -/
def P13472764099667536204.Spec : Prop :=
  ∀ n, P13472764099667536204.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P11898257764327210950

`filter[A111153(n+1), A353669(#)]`
-/

namespace A177221.P11898257764327210950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A177221.P11898257764327210950

namespace A177221

/-- `filter[A111153(n+1), A353669(#)]` -/
def P11898257764327210950.Spec : Prop :=
  ∀ n, P11898257764327210950.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P1620579259743515708

`filter[A111153(n+2), A353627(#)]`
-/

namespace A177221.P1620579259743515708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A177221.P1620579259743515708

namespace A177221

/-- `filter[A111153(n+2), A353627(#)]` -/
def P1620579259743515708.Spec : Prop :=
  ∀ n, P1620579259743515708.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P4845683618872398213

`filter[A111153(n+2), A353628(#)]`
-/

namespace A177221.P4845683618872398213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A177221.P4845683618872398213

namespace A177221

/-- `filter[A111153(n+2), A353628(#)]` -/
def P4845683618872398213.Spec : Prop :=
  ∀ n, P4845683618872398213.a n = A177221 (n + 1)

end A177221

/-! ## A177221.P8737910674558711420

`filter[A117360(n+1), A280710(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A177221

/-- `filter[A117360(n+1), A280710(#)]` -/
def P8737910674558711420.Spec : Prop :=
  ∀ n, P8737910674558711420.a n = A177221 (n + 1)

theorem P8737910674558711420.correct : P8737910674558711420.Spec := by
  intro n
  simp only [A177221, Nat.add_sub_cancel]

end A177221

/-! ## A177221.P14429842995183019040

`eq[8, A305978(n+1)]+1`
-/

namespace A177221.P14429842995183019040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A177221.P14429842995183019040

namespace A177221

/-- `eq[8, A305978(n+1)]+1` -/
def P14429842995183019040.Spec : Prop :=
  ∀ n, (P14429842995183019040.a n : ℤ) = A177221 (n + 1)

end A177221

/-! ## A177221.P6438006703840518492

`∩[A006881(n+1), A111153(n+1)]`
-/

namespace A177221.P6438006703840518492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177221.P6438006703840518492

namespace A177221

/-- `∩[A006881(n+1), A111153(n+1)]` -/
def P6438006703840518492.Spec : Prop :=
  ∀ n, (P6438006703840518492.a n : ℤ) = A177221 (n + 1)

end A177221

/-! ## A177221.P5424232938472612624

`∩[A006881(n+1), A117360(n+1)]`
-/

namespace A177221.P5424232938472612624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177221.P5424232938472612624

namespace A177221

/-- `∩[A006881(n+1), A117360(n+1)]` -/
def P5424232938472612624.Spec : Prop :=
  ∀ n, (P5424232938472612624.a n : ℤ) = A177221 (n + 1)

end A177221

/-!
# A177222: Numbers k that are the products of two distinct primes, such that 2*k + 1 and 4*k + 3 are also products of two distinct primes.

The programs for A177222, there is no canonical definition to state claims against.
-/

/-! ## A177222.P6557850615965526642

`record[A007947(A133123(n+1))]`
-/

namespace A177222.P6557850615965526642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A133123 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177222.P6557850615965526642

/-! ## A177222.P11398141394789802185

`filter[A133123(n+1), A008966(#)]`
-/

namespace A177222.P11398141394789802185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A177222.P11398141394789802185

/-! ## A177222.P9989033042667383317

`filter[A133123(n+1), A049240(#)]`
-/

namespace A177222.P9989033042667383317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A177222.P9989033042667383317

/-! ## A177222.P16367903705050995414

`filter[A133123(n+1), A132350(#)]`
-/

namespace A177222.P16367903705050995414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A177222.P16367903705050995414

/-! ## A177222.P4240222806187837265

`filter[A133123(n+1), A143731(#)]`
-/

namespace A177222.P4240222806187837265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A177222.P4240222806187837265

/-! ## A177222.P11182780280076008767

`filter[A133123(n+1), A181183(#)]`
-/

namespace A177222.P11182780280076008767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A177222.P11182780280076008767

/-! ## A177222.P13482327679373320210

`filter[A133123(n+1), A215480(#)]`
-/

namespace A177222.P13482327679373320210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A177222.P13482327679373320210

/-! ## A177222.P2175882515175585306

`filter[A133123(n+1), A262684(#)]`
-/

namespace A177222.P2175882515175585306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A177222.P2175882515175585306

/-! ## A177222.P13940789856117616791

`filter[A133123(n+1), A267594(#)]`
-/

namespace A177222.P13940789856117616791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A177222.P13940789856117616791

/-! ## A177222.P13664034463885859484

`filter[A133123(n+1), A267635(#)]`
-/

namespace A177222.P13664034463885859484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A177222.P13664034463885859484

/-!
# A177223: Numbers k that are the products of two distinct primes such that 2*k+1, 4*k+3 and 8*k+7 are also products of two distinct primes.

The programs for A177223, there is no canonical definition to state claims against.
-/

/-! ## A177223.P3982385361121755980

`∩[A177222(n+1), A004524(A177222(n+1))]`
-/

namespace A177223.P3982385361121755980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A177222 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177223.P3982385361121755980

/-!
# A177224: a(n) is the least prime of the form ((2n+1)^k - (2n-1)^k)/2.

The programs for A177224, there is no canonical definition to state claims against.
-/

/-! ## A177224.P14646616233762715202

`((2*(n+1)+1)^A122478(n+1)-(2*(n+1)-1)^A122478(n+1))/2`
-/

namespace A177224.P14646616233762715202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) + 1 : ℚ) ^ (A122478 (n + 1) : ℤ) - ((2 * (n + 1) : ℤ) - 1 : ℚ) ^ (A122478 (n + 1) : ℤ)) / 2

end

end A177224.P14646616233762715202

/-!
# A177226: Triangle read by rows: T(n, k) = 2^(prime(n) - prime(k)) mod prime(n), 1 <= k <= n.

The programs for A177226, the canonical program `A177226.P16252984627003760133` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177226 has offset 1).

The definition of A177226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(A000040(row(n)+1)-A000040(col(n)+1)))%A000040(row(n)+1)` (program `A177226.P16252984627003760133`, by `A177226.P16252984627003760133.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177226.P16252984627003760133

`(2^(A000040(row(n)+1)-A000040(col(n)+1)))%A000040(row(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177226

/-- `(2^(A000040(row(n)+1)-A000040(col(n)+1)))%A000040(row(n)+1)` -/
def P16252984627003760133.Spec : Prop :=
  ∀ n, P16252984627003760133.a n = A177226 (n + 1)

theorem P16252984627003760133.correct : P16252984627003760133.Spec := by
  intro n
  simp only [A177226, Nat.add_sub_cancel]

end A177226

/-! ## A177226.P15156887834370905120

`(2^A086800(n+1))%A005145(n+1)`
-/

namespace A177226.P15156887834370905120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A086800 (n + 1) : ℤ))) (A005145 (n + 1))

end

end A177226.P15156887834370905120

namespace A177226

/-- `(2^A086800(n+1))%A005145(n+1)` -/
def P15156887834370905120.Spec : Prop :=
  ∀ n, P15156887834370905120.a n = A177226 (n + 1)

end A177226

/-! ## A177226.P14998823732912339926

`A000079(A086800(n+1))%A005145(n+1)`
-/

namespace A177226.P14998823732912339926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A086800 (n + 1)).toNat) (A005145 (n + 1))

end

end A177226.P14998823732912339926

namespace A177226

/-- `A000079(A086800(n+1))%A005145(n+1)` -/
def P14998823732912339926.Spec : Prop :=
  ∀ n, P14998823732912339926.a n = A177226 (n + 1)

end A177226

/-! ## A177226.P640245971278331336

`A269459(A327084(n+1))%7`
-/

namespace A177226.P640245971278331336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269459 (A327084 (n + 1)).toNat) 7

end

end A177226.P640245971278331336

namespace A177226

/-- `A269459(A327084(n+1))%7` -/
def P640245971278331336.Spec : Prop :=
  ∀ n, P640245971278331336.a n = A177226 (n + 1)

end A177226

/-! ## A177226.P1048103495331128335

`A030298(A157729(2*n)+A157177(n+2))`
-/

namespace A177226.P1048103495331128335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A157729 (2 * n) + A157177 (n + 2)).toNat

end

end A177226.P1048103495331128335

namespace A177226

/-- `A030298(A157729(2*n)+A157177(n+2))` -/
def P1048103495331128335.Spec : Prop :=
  ∀ n, P1048103495331128335.a n = A177226 (n + 1)

end A177226

/-!
# A177227: Triangle, read by rows, T(n, k) = -binomial(n,k) for 0 < k < n, otherwise T(n, k) = 2.

The programs for A177227, the canonical program `A177227.P98995655980783552` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177227 has offset 0).

The definition of A177227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177227.P15633354177754353665

`A177228(n)-A103451(n)`
-/

namespace A177227.P15633354177754353665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177228 n - A103451 n

end

end A177227.P15633354177754353665

namespace A177227

/-- `A177228(n)-A103451(n)` -/
def P15633354177754353665.Spec : Prop :=
  ∀ n, P15633354177754353665.a n = A177227 n

end A177227

/-! ## A177227.P98995655980783552

`A132044(n)+2-A132737(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A177227

/-- `A132044(n)+2-A132737(n)` -/
def P98995655980783552.Spec : Prop :=
  ∀ n, P98995655980783552.a n = A177227 n

theorem P98995655980783552.correct : P98995655980783552.Spec := by
  intro n
  simp only [A177227]

end A177227

/-! ## A177227.P1431054115355486127

`A103451(n)+2-A173740(n)`
-/

namespace A177227.P1431054115355486127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (2 - A173740 n)

end

end A177227.P1431054115355486127

namespace A177227

/-- `A103451(n)+2-A173740(n)` -/
def P1431054115355486127.Spec : Prop :=
  ∀ n, P1431054115355486127.a n = A177227 n

end A177227

/-! ## A177227.P5900740170585426783

`A177229(n)/(A103451(n)+1)`
-/

namespace A177227.P5900740170585426783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177229 n : ℚ) / (A103451 n + 1 : ℚ)

end

end A177227.P5900740170585426783

namespace A177227

/-- `A177229(n)/(A103451(n)+1)` -/
def P5900740170585426783.Spec : Prop :=
  ∀ n, P5900740170585426783.a n = (A177227 n : ℚ)

end A177227

/-! ## A177227.P17345499949796896419

`2*A177228(n)-A177229(n)`
-/

namespace A177227.P17345499949796896419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A177228 n - A177229 n

end

end A177227.P17345499949796896419

namespace A177227

/-- `2*A177228(n)-A177229(n)` -/
def P17345499949796896419.Spec : Prop :=
  ∀ n, P17345499949796896419.a n = A177227 n

end A177227

/-! ## A177227.P12191777859764261042

`3-A323161(or(1, A132046(n)))`
-/

namespace A177227.P12191777859764261042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A323161 (Int.lor 1 (A132046 n)).toNat

end

end A177227.P12191777859764261042

namespace A177227

/-- `3-A323161(or(1, A132046(n)))` -/
def P12191777859764261042.Spec : Prop :=
  ∀ n, P12191777859764261042.a n = A177227 n

end A177227

/-! ## A177227.P13844534968027890407

`2-A089389(A028326(n))`
-/

namespace A177227.P13844534968027890407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A089389 (A028326 n).toNat

end

end A177227.P13844534968027890407

namespace A177227

/-- `2-A089389(A028326(n))` -/
def P13844534968027890407.Spec : Prop :=
  ∀ n, P13844534968027890407.a n = A177227 n

end A177227

/-! ## A177227.P16821937060020440116

`2-A089389(A124927(n))`
-/

namespace A177227.P16821937060020440116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A089389 (A124927 n).toNat

end

end A177227.P16821937060020440116

namespace A177227

/-- `2-A089389(A124927(n))` -/
def P16821937060020440116.Spec : Prop :=
  ∀ n, P16821937060020440116.a n = A177227 n

end A177227

/-! ## A177227.P8120602130828938336

`2-A114637(A132735(n))`
-/

namespace A177227.P8120602130828938336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A114637 (A132735 n).toNat

end

end A177227.P8120602130828938336

namespace A177227

/-- `2-A114637(A132735(n))` -/
def P8120602130828938336.Spec : Prop :=
  ∀ n, P8120602130828938336.a n = A177227 n

end A177227

/-! ## A177227.P4184323806276184826

`3-A065475(A173740(n))`
-/

namespace A177227.P4184323806276184826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A065475 (A173740 n).toNat

end

end A177227.P4184323806276184826

namespace A177227

/-- `3-A065475(A173740(n))` -/
def P4184323806276184826.Spec : Prop :=
  ∀ n, P4184323806276184826.a n = A177227 n

end A177227

/-! ## A177227.P18355643508822544022

`A270439(A132046(n))`
-/

namespace A177227.P18355643508822544022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270439 (A132046 n).toNat

end

end A177227.P18355643508822544022

namespace A177227

/-- `A270439(A132046(n))` -/
def P18355643508822544022.Spec : Prop :=
  ∀ n, P18355643508822544022.a n = A177227 n

end A177227

/-! ## A177227.P3869728199630977049

`A001057(A132731(n)+2)`
-/

namespace A177227.P3869728199630977049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A132731 n + 2).toNat

end

end A177227.P3869728199630977049

namespace A177227

/-- `A001057(A132731(n)+2)` -/
def P3869728199630977049.Spec : Prop :=
  ∀ n, P3869728199630977049.a n = A177227 n

end A177227

/-!
# A177228: Triangle read by rows: T(n, k) = -binomial(n,k) for 1 <= k <= n-1, otherwise T(n, k) = 3.

The programs for A177228, the canonical program `A177228.P5726255244693317150` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177228 has offset 0).

The definition of A177228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177228.P5726255244693317150

`4-A173741(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A177228

/-- `4-A173741(n)` -/
def P5726255244693317150.Spec : Prop :=
  ∀ n, P5726255244693317150.a n = A177228 n

theorem P5726255244693317150.correct : P5726255244693317150.Spec := by
  intro n
  simp only [A177228]

end A177228

/-! ## A177228.P12564240555237938043

`4-abs(2-A173742(n))`
-/

namespace A177228.P12564240555237938043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - |2 - A173742 n|

end

end A177228.P12564240555237938043

namespace A177228

/-- `4-abs(2-A173742(n))` -/
def P12564240555237938043.Spec : Prop :=
  ∀ n, P12564240555237938043.a n = A177228 n

end A177228

/-! ## A177228.P9288846065303458916

`A177227(n)+A103451(n)`
-/

namespace A177228.P9288846065303458916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177227 n + A103451 n

end

end A177228.P9288846065303458916

namespace A177228

/-- `A177227(n)+A103451(n)` -/
def P9288846065303458916.Spec : Prop :=
  ∀ n, P9288846065303458916.a n = A177228 n

end A177228

/-! ## A177228.P3025406265981160391

`A177229(n)-A103451(n)`
-/

namespace A177228.P3025406265981160391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177229 n - A103451 n

end

end A177228.P3025406265981160391

namespace A177228

/-- `A177229(n)-A103451(n)` -/
def P3025406265981160391.Spec : Prop :=
  ∀ n, P3025406265981160391.a n = A177228 n

theorem P3025406265981160391.correct : P3025406265981160391.Spec := by
  intro n
  simp only [A177228, Nat.add_sub_cancel, A177228.P3025406265981160391.a, A177228.P5726255244693317150.a, A103451, A103451.P2977452712529643699.a, A173741, A173741.P3146822036776038077.a, A177229, A177229.P9517387556201153442.a, A103452, A103452.P9591001737205339396.f1, A103452.P9591001737205339396.a, A132047, A132047.P15438420452738550569.a, A132729, A132729.P10036753158710648265.a, A003056, A003056.P5318256527314048597.a, A007318, A007318.P11755526479805562006.a, A025581, A025581.P16112744757063613497.a, A073424, A073424.P15285082429945185433.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A177228

/-! ## A177228.P18358149504122099903

`4*A103451(n)-A007318(n)`
-/

namespace A177228.P18358149504122099903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A103451 n - A007318 n

end

end A177228.P18358149504122099903

namespace A177228

/-- `4*A103451(n)-A007318(n)` -/
def P18358149504122099903.Spec : Prop :=
  ∀ n, P18358149504122099903.a n = A177228 n

end A177228

/-! ## A177228.P9169965164973178202

`C(4, A081579(n))-A007318(n)`
-/

namespace A177228.P9169965164973178202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 4 (A081579 n).toNat : ℤ) - A007318 n

end

end A177228.P9169965164973178202

namespace A177228

/-- `C(4, A081579(n))-A007318(n)` -/
def P9169965164973178202.Spec : Prop :=
  ∀ n, P9169965164973178202.a n = A177228 n

end A177228

/-! ## A177228.P933037925050295659

`(A103451(n)+1)²-A132735(n)`
-/

namespace A177228.P933037925050295659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103451 n + 1) ^ 2 - A132735 n

end

end A177228.P933037925050295659

namespace A177228

/-- `(A103451(n)+1)²-A132735(n)` -/
def P933037925050295659.Spec : Prop :=
  ∀ n, P933037925050295659.a n = A177228 n

end A177228

/-! ## A177228.P13687867042502720084

`A022960(A173741(n))`
-/

namespace A177228.P13687867042502720084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022960 (A173741 n).toNat

end

end A177228.P13687867042502720084

namespace A177228

/-- `A022960(A173741(n))` -/
def P13687867042502720084.Spec : Prop :=
  ∀ n, P13687867042502720084.a n = A177228 n

end A177228

/-! ## A177228.P10483181601468851918

`-A131732(A132731(n))`
-/

namespace A177228.P10483181601468851918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131732 (A132731 n).toNat

end

end A177228.P10483181601468851918

namespace A177228

/-- `-A131732(A132731(n))` -/
def P10483181601468851918.Spec : Prop :=
  ∀ n, P10483181601468851918.a n = A177228 n

end A177228

/-! ## A177228.P683877517266526100

`xor(1, 3-A146880(n))`
-/

namespace A177228.P683877517266526100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (3 - A146880 n)

end

end A177228.P683877517266526100

namespace A177228

/-- `xor(1, 3-A146880(n))` -/
def P683877517266526100.Spec : Prop :=
  ∀ n, P683877517266526100.a n = A177228 n

end A177228

/-!
# A177229: Triangle, read by rows, T(n, k) = -binomial(n,k) for 1 <= k <= n-1, otherwise T(n, k) = 4.

The programs for A177229, the canonical program `A177229.P9517387556201153442` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177229 has offset 0).

The definition of A177229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177229.P9517387556201153442

`A177228(n)+A103451(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A177229

/-- `A177228(n)+A103451(n)` -/
def P9517387556201153442.Spec : Prop :=
  ∀ n, P9517387556201153442.a n = A177229 n

theorem P9517387556201153442.correct : P9517387556201153442.Spec := by
  intro n
  simp only [A177229]

end A177229

/-! ## A177229.P9074732086371833446

`(A103451(n)+1)*A177227(n)`
-/

namespace A177229.P9074732086371833446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103451 n + 1) * A177227 n

end

end A177229.P9074732086371833446

namespace A177229

/-- `(A103451(n)+1)*A177227(n)` -/
def P9074732086371833446.Spec : Prop :=
  ∀ n, P9074732086371833446.a n = A177229 n

end A177229

/-! ## A177229.P13966742042043205872

`2*A177228(n)-A177227(n)`
-/

namespace A177229.P13966742042043205872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A177228 n - A177227 n

end

end A177229.P13966742042043205872

namespace A177229

/-- `2*A177228(n)-A177227(n)` -/
def P13966742042043205872.Spec : Prop :=
  ∀ n, P13966742042043205872.a n = A177229 n

end A177229

/-! ## A177229.P7299128084282843678

`5*A103451(n)-A007318(n)`
-/

namespace A177229.P7299128084282843678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A103451 n - A007318 n

end

end A177229.P7299128084282843678

namespace A177229

/-- `5*A103451(n)-A007318(n)` -/
def P7299128084282843678.Spec : Prop :=
  ∀ n, P7299128084282843678.a n = A177229 n

end A177229

/-! ## A177229.P3787802098790999336

`lcm(5, A103452(n))-A007318(n)`
-/

namespace A177229.P3787802098790999336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A103452 n) : ℤ) - A007318 n

end

end A177229.P3787802098790999336

namespace A177229

/-- `lcm(5, A103452(n))-A007318(n)` -/
def P3787802098790999336.Spec : Prop :=
  ∀ n, P3787802098790999336.a n = A177229 n

end A177229

/-! ## A177229.P14422998987095676720

`C(5, A132047(n))-A007318(n)`
-/

namespace A177229.P14422998987095676720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 5 (A132047 n).toNat : ℤ) - A007318 n

end

end A177229.P14422998987095676720

namespace A177229

/-- `C(5, A132047(n))-A007318(n)` -/
def P14422998987095676720.Spec : Prop :=
  ∀ n, P14422998987095676720.a n = A177229 n

end A177229

/-! ## A177229.P7133837903855869117

`5-A065475(A173741(n))`
-/

namespace A177229.P7133837903855869117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A065475 (A173741 n).toNat

end

end A177229.P7133837903855869117

namespace A177229

/-- `5-A065475(A173741(n))` -/
def P7133837903855869117.Spec : Prop :=
  ∀ n, P7133837903855869117.a n = A177229 n

end A177229

/-! ## A177229.P10088073132811275162

`5-A074764(A173740(n))`
-/

namespace A177229.P10088073132811275162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A074764 (A173740 n).toNat

end

end A177229.P10088073132811275162

namespace A177229

/-- `5-A074764(A173740(n))` -/
def P10088073132811275162.Spec : Prop :=
  ∀ n, P10088073132811275162.a n = A177229 n

end A177229

/-! ## A177229.P4364183148766302342

`A063377(A028326(n))-A007318(n)`
-/

namespace A177229.P4364183148766302342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A028326 n).toNat - A007318 n

end

end A177229.P4364183148766302342

namespace A177229

/-- `A063377(A028326(n))-A007318(n)` -/
def P4364183148766302342.Spec : Prop :=
  ∀ n, P4364183148766302342.a n = A177229 n

end A177229

/-! ## A177229.P11508391335057378102

`A174390(A132046(n))`
-/

namespace A177229.P11508391335057378102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174390 (A132046 n).toNat

end

end A177229.P11508391335057378102

namespace A177229

/-- `A174390(A132046(n))` -/
def P11508391335057378102.Spec : Prop :=
  ∀ n, P11508391335057378102.a n = A177229 n

end A177229

/-! ## A177229.P16019494368189484064

`A051494(A132731(n)+1)`
-/

namespace A177229.P16019494368189484064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 (A132731 n + 1).toNat

end

end A177229.P16019494368189484064

namespace A177229

/-- `A051494(A132731(n)+1)` -/
def P16019494368189484064.Spec : Prop :=
  ∀ n, P16019494368189484064.a n = A177229 n

end A177229

/-!
# A177230: a(n) = determinant of n X n circulant matrix whose first row consists of the first n squares (beginning with 1).

The programs for A177230, the canonical program `A177230.P8831346742975513486` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177230 has offset 1).

The definition of A177230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177230.P8831346742975513486

`(-1)^(n+1)*(n+1)^(n-1)*((n+1)^(n+1)-(n+3)^(n+1))*C(2*(n+1)+2, 2)/12`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177230

/-- `(-1)^(n+1)*(n+1)^(n-1)*((n+1)^(n+1)-(n+3)^(n+1))*C(2*(n+1)+2, 2)/12` -/
def P8831346742975513486.Spec : Prop :=
  ∀ n, P8831346742975513486.a n = (A177230 (n + 1) : ℚ)

end A177230

/-!
# A177231: Fibonacci numbers whose decimal expansion does not contain any digit "2".

The programs for A177231, there is no canonical definition to state claims against.
-/

/-! ## A177231.P8061298012955584638

`record[A000045(gcd(n, A085856(n)))]`
-/

namespace A177231.P8061298012955584638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (n : ℤ) (A085856 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177231.P8061298012955584638

/-! ## A177231.P17979008781780884608

`record[(1-A085856(n))*A000045(n)]`
-/

namespace A177231.P17979008781780884608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A085856 n) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177231.P17979008781780884608

/-! ## A177231.P14884983322128789972

`A000045(eq[A085856(n), A178333(n)])`
-/

namespace A177231.P14884983322128789972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085856 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177231.P14884983322128789972

/-! ## A177231.P16773624435601278033

`A000045(eq[A085856(n), A185012(n)])`
-/

namespace A177231.P16773624435601278033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085856 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177231.P16773624435601278033

/-! ## A177231.P13303923561528000395

`A000045(eq[A055672(2*n), A085856(n)])`
-/

namespace A177231.P13303923561528000395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177231.P13303923561528000395

/-!
# A177234: a(n) = binomial(n^2, n)/(n+1).

The programs for A177234, the canonical program `A177234.P6359232279168209161` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177234 has offset 2).

The definition of A177234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177234.P14502813621621060819

`(n+2)*A177784(n+2)`
-/

namespace A177234.P14502813621621060819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A177784 (n + 2)

end

end A177234.P14502813621621060819

namespace A177234

/-- `(n+2)*A177784(n+2)` -/
def P14502813621621060819.Spec : Prop :=
  ∀ n, P14502813621621060819.a n = A177234 (n + 2)

end A177234

/-! ## A177234.P6359232279168209161

`C((n+2)², n+2)/(n+3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177234

/-- `C((n+2)², n+2)/(n+3)` -/
def P6359232279168209161.Spec : Prop :=
  ∀ n, P6359232279168209161.a n = (A177234 (n + 2) : ℚ)

end A177234

/-! ## A177234.P12491538204873466305

`A177456(n+2)/(n+1)`
-/

namespace A177234.P12491538204873466305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177456 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A177234.P12491538204873466305

namespace A177234

/-- `A177456(n+2)/(n+1)` -/
def P12491538204873466305.Spec : Prop :=
  ∀ n, P12491538204873466305.a n = (A177234 (n + 2) : ℚ)

end A177234

/-! ## A177234.P17135618700102106321

`A177788(n+2)/(n+2)`
-/

namespace A177234.P17135618700102106321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177788 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A177234.P17135618700102106321

namespace A177234

/-- `A177788(n+2)/(n+2)` -/
def P17135618700102106321.Spec : Prop :=
  ∀ n, P17135618700102106321.a n = (A177234 (n + 2) : ℚ)

end A177234

/-! ## A177234.P1258698194010279211

`A014062(n+2)/(n+3)`
-/

namespace A177234.P1258698194010279211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014062 (n + 2) : ℚ) / (n + 3 : ℚ)

end

end A177234.P1258698194010279211

namespace A177234

/-- `A014062(n+2)/(n+3)` -/
def P1258698194010279211.Spec : Prop :=
  ∀ n, P1258698194010279211.a n = (A177234 (n + 2) : ℚ)

end A177234

/-!
# A177235: The number of non-divisors k of n, 1 < k < n, for which floor(n/k) is odd.

The programs for A177235, the canonical program `A177235.P10496529845098141210` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177235 has offset 1).

The definition of A177235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177235.P11534646545288676396

`∑[∑{d}[n, #%2]]-∑[∑{d}[n+1, log2(gcd(2, #))]]`
-/

namespace A177235.P11534646545288676396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), Real.logb 2 (Nat.gcd 2 d : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A177235.P11534646545288676396

namespace A177235

/-- `∑[∑{d}[n, #%2]]-∑[∑{d}[n+1, log2(gcd(2, #))]]` -/
def P11534646545288676396.Spec : Prop :=
  ∀ n, P11534646545288676396.a n = (A177235 (n + 1) : ℝ)

end A177235

/-! ## A177235.P10496529845098141210

`n+1-∏{e}[n+1, #+1]-(∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, and(1, #)])`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177235

/-- `n+1-∏{e}[n+1, #+1]-(∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, and(1, #)])` -/
def P10496529845098141210.Spec : Prop :=
  ∀ n, P10496529845098141210.a n = A177235 (n + 1)

theorem P10496529845098141210.correct : P10496529845098141210.Spec := by
  intro n
  simp only [A177235, Nat.add_sub_cancel]

end A177235

/-! ## A177235.P12250849020193658378

`n+1-∏{e}[n+1, #+1]-(∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, or(#, -2)+2])`
-/

namespace A177235.P12250849020193658378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f3 n), (-((-1) ^ d))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j - ∑ d ∈ Nat.divisors (f4 n), (Int.lor (d : ℤ) (-2) + 2))

end

end A177235.P12250849020193658378

namespace A177235

/-- `n+1-∏{e}[n+1, #+1]-(∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, or(#, -2)+2])` -/
def P12250849020193658378.Spec : Prop :=
  ∀ n, P12250849020193658378.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P10021508213475306433

`A059851(n)-∑{d}[n+1, log2(gcd(2, #))]`
-/

namespace A177235.P10021508213475306433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059851 n : ℝ) - ∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (Nat.gcd 2 d : ℝ)

end

end A177235.P10021508213475306433

namespace A177235

/-- `A059851(n)-∑{d}[n+1, log2(gcd(2, #))]` -/
def P10021508213475306433.Spec : Prop :=
  ∀ n, P10021508213475306433.a n = (A177235 (n + 1) : ℝ)

end A177235

/-! ## A177235.P17423345605155392167

`∑[∑{d}[n, and(1, #)]-A183063(n+1)]`
-/

namespace A177235.P17423345605155392167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), Nat.land 1 d : ℕ) : ℤ) - A183063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177235.P17423345605155392167

namespace A177235

/-- `∑[∑{d}[n, and(1, #)]-A183063(n+1)]` -/
def P17423345605155392167.Spec : Prop :=
  ∀ n, P17423345605155392167.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P3182017441711615898

`∑[∑{d}[n, #%2]]-A006218(ceil(n/2))`
-/

namespace A177235.P3182017441711615898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006218 ⌈(n : ℚ) / 2⌉.toNat

end

end A177235.P3182017441711615898

namespace A177235

/-- `∑[∑{d}[n, #%2]]-A006218(ceil(n/2))` -/
def P3182017441711615898.Spec : Prop :=
  ∀ n, P3182017441711615898.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P11571459415884497627

`∑[-∑{d}[n+1, (-1)^#]]-A000005((n+1)/2^val(n+1, 2))`
-/

namespace A177235.P11571459415884497627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f2 n), (-1) ^ d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A177235.P11571459415884497627

namespace A177235

/-- `∑[-∑{d}[n+1, (-1)^#]]-A000005((n+1)/2^val(n+1, 2))` -/
def P11571459415884497627.Spec : Prop :=
  ∀ n, P11571459415884497627.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P16529005803745997147

`1-A000005(n+1)+n-(∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, and(1, #)])`
-/

namespace A177235.P16529005803745997147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 (n + 1) + (n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - ((∑ d ∈ Nat.divisors (f3 n), Nat.land 1 d : ℕ) : ℤ))

end

end A177235.P16529005803745997147

namespace A177235

/-- `1-A000005(n+1)+n-(∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, and(1, #)])` -/
def P16529005803745997147.Spec : Prop :=
  ∀ n, P16529005803745997147.a n = A177235 (n + 1)

theorem P16529005803745997147.correct : P16529005803745997147.Spec := by
  intro n
  simp only [A177235, Nat.add_sub_cancel, A177235.P16529005803745997147.f2, A177235.P16529005803745997147.f1, A177235.P16529005803745997147.f3, A177235.P16529005803745997147.a, A177235.P10496529845098141210.f1, A177235.P10496529845098141210.f3, A177235.P10496529845098141210.f2, A177235.P10496529845098141210.f4, A177235.P10496529845098141210.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177235

/-! ## A177235.P16074294541671936105

`A059851(n)-A183063(n+1)`
-/

namespace A177235.P16074294541671936105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n - A183063 (n + 1)

end

end A177235.P16074294541671936105

namespace A177235

/-- `A059851(n)-A183063(n+1)` -/
def P16074294541671936105.Spec : Prop :=
  ∀ n, P16074294541671936105.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P1194250099031061042

`A060831(n)-A362059(n+1)`
-/

namespace A177235.P1194250099031061042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - A362059 (n + 1)

end

end A177235.P1194250099031061042

namespace A177235

/-- `A060831(n)-A362059(n+1)` -/
def P1194250099031061042.Spec : Prop :=
  ∀ n, P1194250099031061042.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P12947345535166849177

`A049820(n+1)-A177236(n+1)`
-/

namespace A177235.P12947345535166849177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A177236 (n + 1)

end

end A177235.P12947345535166849177

namespace A177235

/-- `A049820(n+1)-A177236(n+1)` -/
def P12947345535166849177.Spec : Prop :=
  ∀ n, P12947345535166849177.a n = A177235 (n + 1)

theorem P12947345535166849177.correct : P12947345535166849177.Spec := by
  intro n
  simp only [A177235, Nat.add_sub_cancel, A177235.P12947345535166849177.a, A177235.P10496529845098141210.f1, A177235.P10496529845098141210.f3, A177235.P10496529845098141210.f2, A177235.P10496529845098141210.f4, A177235.P10496529845098141210.a, A049820, A049820.P9428372222244335888.a, A177236, A177236.P14113996674392224070.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177235

/-! ## A177235.P14985766285016182192

`A275495(n+1)-A091954(n+1)`
-/

namespace A177235.P14985766285016182192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275495 (n + 1) - A091954 (n + 1)

end

end A177235.P14985766285016182192

namespace A177235

/-- `A275495(n+1)-A091954(n+1)` -/
def P14985766285016182192.Spec : Prop :=
  ∀ n, P14985766285016182192.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P8472839321622062870

`A248517(n)-A362059(n+1)+n`
-/

namespace A177235.P8472839321622062870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n - A362059 (n + 1) + (n : ℤ)

end

end A177235.P8472839321622062870

namespace A177235

/-- `A248517(n)-A362059(n+1)+n` -/
def P8472839321622062870.Spec : Prop :=
  ∀ n, P8472839321622062870.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P10214745385044192090

`A060831(n)-A006218(A110654(n))`
-/

namespace A177235.P10214745385044192090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - A006218 (A110654 n).toNat

end

end A177235.P10214745385044192090

namespace A177235

/-- `A060831(n)-A006218(A110654(n))` -/
def P10214745385044192090.Spec : Prop :=
  ∀ n, P10214745385044192090.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P14863020354235062777

`∑[A032741(n)-A032741(A065033(n))]`
-/

namespace A177235.P14863020354235062777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n - A032741 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177235.P14863020354235062777

namespace A177235

/-- `∑[A032741(n)-A032741(A065033(n))]` -/
def P14863020354235062777.Spec : Prop :=
  ∀ n, P14863020354235062777.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P5686796148429824945

`∑[A032741(n)-A032741(A110654(n))]`
-/

namespace A177235.P5686796148429824945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n - A032741 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177235.P5686796148429824945

namespace A177235

/-- `∑[A032741(n)-A032741(A110654(n))]` -/
def P5686796148429824945.Spec : Prop :=
  ∀ n, P5686796148429824945.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P312074873266169358

`A248517(n+1)+A060831(n)-A002541(n+1)`
-/

namespace A177235.P312074873266169358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (n + 1) + (A060831 n - A002541 (n + 1))

end

end A177235.P312074873266169358

namespace A177235

/-- `A248517(n+1)+A060831(n)-A002541(n+1)` -/
def P312074873266169358.Spec : Prop :=
  ∀ n, P312074873266169358.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P18166087487337377919

`A059851(n+1)-(A001842(n+1)+A001826(n+1))`
-/

namespace A177235.P18166087487337377919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) - (A001842 (n + 1) + A001826 (n + 1))

end

end A177235.P18166087487337377919

namespace A177235

/-- `A059851(n+1)-(A001842(n+1)+A001826(n+1))` -/
def P18166087487337377919.Spec : Prop :=
  ∀ n, P18166087487337377919.a n = A177235 (n + 1)

end A177235

/-! ## A177235.P2532131568855421181

`A000005(n+1)-(A177236(n+1)+A134156(n+1))`
-/

namespace A177235.P2532131568855421181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A177236 (n + 1) + A134156 (n + 1))

end

end A177235.P2532131568855421181

namespace A177235

/-- `A000005(n+1)-(A177236(n+1)+A134156(n+1))` -/
def P2532131568855421181.Spec : Prop :=
  ∀ n, P2532131568855421181.a n = A177235 (n + 1)

theorem P2532131568855421181.correct : P2532131568855421181.Spec := by
  intro n
  simp only [A177235, Nat.add_sub_cancel, A177235.P2532131568855421181.a, A177235.P10496529845098141210.f1, A177235.P10496529845098141210.f3, A177235.P10496529845098141210.f2, A177235.P10496529845098141210.f4, A177235.P10496529845098141210.a, A000005, A000005.P16091521709108585461.a, A134156, A134156.P11875869690967924309.a, A177236, A177236.P14113996674392224070.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049820, A049820.P9428372222244335888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177235

/-! ## A177235.P15395997446178942761

`A060831(n+1)+A060831(n)-A006218(n+1)`
-/

namespace A177235.P15395997446178942761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) + (A060831 n - A006218 (n + 1))

end

end A177235.P15395997446178942761

namespace A177235

/-- `A060831(n+1)+A060831(n)-A006218(n+1)` -/
def P15395997446178942761.Spec : Prop :=
  ∀ n, P15395997446178942761.a n = A177235 (n + 1)

end A177235

/-!
# A177236: a(n) = A049820(n) - A177235(n).

The programs for A177236, the canonical program `A177236.P14113996674392224070` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177236 has offset 1).

The definition of A177236 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177235, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177236.P14113996674392224070

`A049820(n+1)-A177235(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A177236

/-- `A049820(n+1)-A177235(n+1)` -/
def P14113996674392224070.Spec : Prop :=
  ∀ n, P14113996674392224070.a n = A177236 (n + 1)

theorem P14113996674392224070.correct : P14113996674392224070.Spec := by
  intro n
  simp only [A177236, Nat.add_sub_cancel]

end A177236

/-! ## A177236.P13459482758976388147

`∑[∑{d}[n, (-1)^#]+1]-∑{d}[n+1, #%2]`
-/

namespace A177236.P13459482758976388147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ d ∈ Nat.divisors (f3 n), d % 2 : ℕ) : ℤ)

end

end A177236.P13459482758976388147

namespace A177236

/-- `∑[∑{d}[n, (-1)^#]+1]-∑{d}[n+1, #%2]` -/
def P13459482758976388147.Spec : Prop :=
  ∀ n, P13459482758976388147.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P2610579213449394225

`∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, and(1, #)]`
-/

namespace A177236.P2610579213449394225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ d ∈ Nat.divisors (f3 n), Nat.land 1 d : ℕ) : ℤ)

end

end A177236.P2610579213449394225

namespace A177236

/-- `∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, and(1, #)]` -/
def P2610579213449394225.Spec : Prop :=
  ∀ n, P2610579213449394225.a n = A177236 (n + 1)

theorem P2610579213449394225.correct : P2610579213449394225.Spec := by
  intro n
  simp only [A177236, Nat.add_sub_cancel, A177236.P2610579213449394225.f2, A177236.P2610579213449394225.f1, A177236.P2610579213449394225.f3, A177236.P2610579213449394225.a, A177236.P14113996674392224070.a, A049820, A049820.P9428372222244335888.a, A177235, A177235.P10496529845098141210.f1, A177235.P10496529845098141210.f3, A177235.P10496529845098141210.f2, A177235.P10496529845098141210.f4, A177235.P10496529845098141210.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177236

/-! ## A177236.P14223165065732566097

`∑[∑{d}[n+1, (-1)^#]+1]-∑{d}[n+1, log2(gcd(2, #))]`
-/

namespace A177236.P14223165065732566097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) - ∑ d ∈ Nat.divisors (f3 n), Real.logb 2 (Nat.gcd 2 d : ℝ)

end

end A177236.P14223165065732566097

namespace A177236

/-- `∑[∑{d}[n+1, (-1)^#]+1]-∑{d}[n+1, log2(gcd(2, #))]` -/
def P14223165065732566097.Spec : Prop :=
  ∀ n, P14223165065732566097.a n = (A177236 (n + 1) : ℝ)

end A177236

/-! ## A177236.P13427420901329870926

`∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, val(#²+1, 2)]`
-/

namespace A177236.P13427420901329870926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ d ∈ Nat.divisors (f3 n), SequenceMachineLib.valuation (d ^ 2 + 1) 2 : ℕ) : ℤ)

end

end A177236.P13427420901329870926

namespace A177236

/-- `∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, val(#²+1, 2)]` -/
def P13427420901329870926.Spec : Prop :=
  ∀ n, P13427420901329870926.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P16135357922166417991

`∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, or(#, -2)+2]`
-/

namespace A177236.P16135357922166417991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ d ∈ Nat.divisors (f3 n), (Int.lor (d : ℤ) (-2) + 2)

end

end A177236.P16135357922166417991

namespace A177236

/-- `∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, or(#, -2)+2]` -/
def P16135357922166417991.Spec : Prop :=
  ∀ n, P16135357922166417991.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P13968616079742628348

`∑[∑{d}[n, (-1)^#]]+n-Δ[A248517(n)]`
-/

namespace A177236.P13968616079742628348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - (f3 (n + 1) - f3 n)

end

end A177236.P13968616079742628348

namespace A177236

/-- `∑[∑{d}[n, (-1)^#]]+n-Δ[A248517(n)]` -/
def P13968616079742628348.Spec : Prop :=
  ∀ n, P13968616079742628348.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P12958657773049568805

`1-A059851(n)+n-∑{d}[n+1, and(1, #)]`
-/

namespace A177236.P12958657773049568805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A059851 n + (n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d : ℕ) : ℤ)

end

end A177236.P12958657773049568805

namespace A177236

/-- `1-A059851(n)+n-∑{d}[n+1, and(1, #)]` -/
def P12958657773049568805.Spec : Prop :=
  ∀ n, P12958657773049568805.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P14193181929881094317

`∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, A020639(3*#)-2]`
-/

namespace A177236.P14193181929881094317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ d ∈ Nat.divisors (f3 n), (A020639 (3 * d) - 2)

end

end A177236.P14193181929881094317

namespace A177236

/-- `∑[1-∑{d}[n, -(-1)^#]]-∑{d}[n+1, A020639(3*#)-2]` -/
def P14193181929881094317.Spec : Prop :=
  ∀ n, P14193181929881094317.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P12349468324679438060

`A347286(n+1)-A059851(n)`
-/

namespace A177236.P12349468324679438060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347286 (n + 1) - A059851 n

end

end A177236.P12349468324679438060

namespace A177236

/-- `A347286(n+1)-A059851(n)` -/
def P12349468324679438060.Spec : Prop :=
  ∀ n, P12349468324679438060.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P17476999231952655233

`A330926(n+1)-A001227(n+1)`
-/

namespace A177236.P17476999231952655233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330926 (n + 1) - A001227 (n + 1)

end

end A177236.P17476999231952655233

namespace A177236

/-- `A330926(n+1)-A001227(n+1)` -/
def P17476999231952655233.Spec : Prop :=
  ∀ n, P17476999231952655233.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P3002527886023531187

`A006218(n)-(A248517(n+1)+A060831(n))`
-/

namespace A177236.P3002527886023531187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (A248517 (n + 1) + A060831 n)

end

end A177236.P3002527886023531187

namespace A177236

/-- `A006218(n)-(A248517(n+1)+A060831(n))` -/
def P3002527886023531187.Spec : Prop :=
  ∀ n, P3002527886023531187.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P16795142841072891206

`A000005(n+1)-(A177235(n+1)+A134156(n+1))`
-/

namespace A177236.P16795142841072891206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A177235 (n + 1) + A134156 (n + 1))

end

end A177236.P16795142841072891206

namespace A177236

/-- `A000005(n+1)-(A177235(n+1)+A134156(n+1))` -/
def P16795142841072891206.Spec : Prop :=
  ∀ n, P16795142841072891206.a n = A177236 (n + 1)

theorem P16795142841072891206.correct : P16795142841072891206.Spec := by
  intro n
  simp only [A177236, Nat.add_sub_cancel, A177236.P16795142841072891206.a, A177236.P14113996674392224070.a, A000005, A000005.P16091521709108585461.a, A049820, A049820.P9428372222244335888.a, A134156, A134156.P11875869690967924309.a, A177235, A177235.P10496529845098141210.f1, A177235.P10496529845098141210.f3, A177235.P10496529845098141210.f2, A177235.P10496529845098141210.f4, A177235.P10496529845098141210.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177236

/-! ## A177236.P8249750280869312237

`A330926(n+1)-(A001842(n+1)+A001826(n+1))`
-/

namespace A177236.P8249750280869312237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330926 (n + 1) - (A001842 (n + 1) + A001826 (n + 1))

end

end A177236.P8249750280869312237

namespace A177236

/-- `A330926(n+1)-(A001842(n+1)+A001826(n+1))` -/
def P8249750280869312237.Spec : Prop :=
  ∀ n, P8249750280869312237.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P15049744008692096627

`A330926(n+2)-A325939(2*(n+1))`
-/

namespace A177236.P15049744008692096627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330926 (n + 2) - A325939 (2 * (n + 1))

end

end A177236.P15049744008692096627

namespace A177236

/-- `A330926(n+2)-A325939(2*(n+1))` -/
def P15049744008692096627.Spec : Prop :=
  ∀ n, P15049744008692096627.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P11173802832757356775

`A330926(n+1)+A060831(n)-A060831(n+1)`
-/

namespace A177236.P11173802832757356775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330926 (n + 1) + (A060831 n - A060831 (n + 1))

end

end A177236.P11173802832757356775

namespace A177236

/-- `A330926(n+1)+A060831(n)-A060831(n+1)` -/
def P11173802832757356775.Spec : Prop :=
  ∀ n, P11173802832757356775.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P11979885082322585005

`A075997(n+1)+A048272(2*(n+1))`
-/

namespace A177236.P11979885082322585005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075997 (n + 1) + A048272 (2 * (n + 1))

end

end A177236.P11979885082322585005

namespace A177236

/-- `A075997(n+1)+A048272(2*(n+1))` -/
def P11979885082322585005.Spec : Prop :=
  ∀ n, P11979885082322585005.a n = A177236 (n + 1)

end A177236

/-! ## A177236.P7479799141907767012

`A335021(2*(n+1))+A075997(n+1)`
-/

namespace A177236.P7479799141907767012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335021 (2 * (n + 1)) + A075997 (n + 1)

end

end A177236.P7479799141907767012

namespace A177236

/-- `A335021(2*(n+1))+A075997(n+1)` -/
def P7479799141907767012.Spec : Prop :=
  ∀ n, P7479799141907767012.a n = A177236 (n + 1)

end A177236

/-!
# A177237: Partial sums of round(n^2/19).

The programs for A177237, the canonical program `A177237.P14159430996618784127` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177237 has offset 0).

The definition of A177237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177237.P14159430996618784127

`round((n-2)*(n+3)*(2*n+1)/114)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177237

/-- `round((n-2)*(n+3)*(2*n+1)/114)` -/
def P14159430996618784127.Spec : Prop :=
  ∀ n, P14159430996618784127.a n = A177237 n

theorem P14159430996618784127.correct : P14159430996618784127.Spec := by
  intro n
  simp only [A177237]

end A177237

/-! ## A177237.P1422213504198264027

`∑[round(A000290(n)/19)]`
-/

namespace A177237.P1422213504198264027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000290 n : ℚ) / 19)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177237.P1422213504198264027

namespace A177237

/-- `∑[round(A000290(n)/19)]` -/
def P1422213504198264027.Spec : Prop :=
  ∀ n, P1422213504198264027.a n = A177237 n

end A177237

/-! ## A177237.P1133079341617052781

`∑[A002265(A214294(n+1))]%(2^n)`
-/

namespace A177237.P1133079341617052781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A214294 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 ^ n : ℤ)

end

end A177237.P1133079341617052781

namespace A177237

/-- `∑[A002265(A214294(n+1))]%(2^n)` -/
def P1133079341617052781.Spec : Prop :=
  ∀ n, P1133079341617052781.a n = A177237 n

end A177237

/-! ## A177237.P13724154262830080740

`∑[A059995(A133263(n))]%A110402(n+1)`
-/

namespace A177237.P13724154262830080740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A110402 (n + 1))

end

end A177237.P13724154262830080740

namespace A177237

/-- `∑[A059995(A133263(n))]%A110402(n+1)` -/
def P13724154262830080740.Spec : Prop :=
  ∀ n, P13724154262830080740.a n = A177237 n

end A177237

/-! ## A177237.P9144311383129549875

`∑[A108611(∑[A110654(n)])]`
-/

namespace A177237.P9144311383129549875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177237.P9144311383129549875

namespace A177237

/-- `∑[A108611(∑[A110654(n)])]` -/
def P9144311383129549875.Spec : Prop :=
  ∀ n, P9144311383129549875.a n = A177237 n

end A177237

/-!
# A177238: Number of n-step self-avoiding walks on square lattice plus number of n-step self-avoiding walks on hexagonal [ =triangular ] lattice.

The programs for A177238, there is no canonical definition to state claims against.
-/

/-! ## A177238.P11721135933767586674

`A001334(n)+A001411(n)`
-/

namespace A177238.P11721135933767586674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n + A001411 n

end

end A177238.P11721135933767586674

/-! ## A177238.P14164158373178620440

`A001334(n)-(A000332(A051699(n))-A001411(n))`
-/

namespace A177238.P14164158373178620440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n - (A000332 (A051699 n).toNat - A001411 n)

end

end A177238.P14164158373178620440

/-! ## A177238.P13123415400082335516

`A001334(n)+A046661(A028310(n))*A123932(n)`
-/

namespace A177238.P13123415400082335516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n + A046661 (A028310 n).toNat * A123932 n

end

end A177238.P13123415400082335516

/-! ## A177238.P7110532013499543236

`A001334(n)+A280560(n)²*A046661(A028310(n))`
-/

namespace A177238.P7110532013499543236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n + A280560 n ^ 2 * A046661 (A028310 n).toNat

end

end A177238.P7110532013499543236

/-!
# A177239: Partial sums of round(n^2/20).

The programs for A177239, the canonical program `A177239.P11877501834125588143` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177239 has offset 0).

The definition of A177239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177239.P11877501834125588143

`round(n*(n-2)*(2*n+7)/120)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177239

/-- `round(n*(n-2)*(2*n+7)/120)` -/
def P11877501834125588143.Spec : Prop :=
  ∀ n, P11877501834125588143.a n = A177239 n

theorem P11877501834125588143.correct : P11877501834125588143.Spec := by
  intro n
  simp only [A177239]

end A177239

/-! ## A177239.P104579150217935711

`ogf(x^4/(1-2x+2x^3-x^4-x^5+2x^6-2x^8+x^9))`
-/

namespace A177239.P104579150217935711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1] [1, -2, 0, 2, -1, -1, 2, 0, -2, 1] n

end

end A177239.P104579150217935711

namespace A177239

/-- `ogf(x^4/(1-2x+2x^3-x^4-x^5+2x^6-2x^8+x^9))` -/
def P104579150217935711.Spec : Prop :=
  ∀ n, P104579150217935711.a n = A177239 n

end A177239

/-! ## A177239.P9383813223381027268

`∑[floor((n+1)/5)]+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A177239.P9383813223381027268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A177239.P9383813223381027268

namespace A177239

/-- `∑[floor((n+1)/5)]+a(n-2)` -/
def P9383813223381027268.Spec : Prop :=
  ∀ n, P9383813223381027268.a n = A177239 n

end A177239

/-! ## A177239.P15863695963272097720

`A173196(n)-A173690(n)`
-/

namespace A177239.P15863695963272097720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n - A173690 n

end

end A177239.P15863695963272097720

namespace A177239

/-- `A173196(n)-A173690(n)` -/
def P15863695963272097720.Spec : Prop :=
  ∀ n, P15863695963272097720.a n = A177239 n

end A177239

/-! ## A177239.P12265868309612657431

`A175827(n)-A175868(n)`
-/

namespace A177239.P12265868309612657431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175827 n - A175868 n

end

end A177239.P12265868309612657431

namespace A177239

/-- `A175827(n)-A175868(n)` -/
def P12265868309612657431.Spec : Prop :=
  ∀ n, P12265868309612657431.a n = A177239 n

end A177239

/-! ## A177239.P4962193263625945412

`∑[A000115(n)]-A000115(2*n+1)`
-/

namespace A177239.P4962193263625945412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000115 (2 * n + 1)

end

end A177239.P4962193263625945412

namespace A177239

/-- `∑[A000115(n)]-A000115(2*n+1)` -/
def P4962193263625945412.Spec : Prop :=
  ∀ n, P4962193263625945412.a n = A177239 n

end A177239

/-! ## A177239.P17511855474608300413

`A309831(2*n+3)-A309831(2*n)`
-/

namespace A177239.P17511855474608300413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309831 (2 * n + 3) - A309831 (2 * n)

end

end A177239.P17511855474608300413

namespace A177239

/-- `A309831(2*n+3)-A309831(2*n)` -/
def P17511855474608300413.Spec : Prop :=
  ∀ n, P17511855474608300413.a n = A177239 n

end A177239

/-! ## A177239.P14319861254331031143

`A001304(n)-A000115(2*n+1)`
-/

namespace A177239.P14319861254331031143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001304 n - A000115 (2 * n + 1)

end

end A177239.P14319861254331031143

namespace A177239

/-- `A001304(n)-A000115(2*n+1)` -/
def P14319861254331031143.Spec : Prop :=
  ∀ n, P14319861254331031143.a n = A177239 n

end A177239

/-! ## A177239.P8125713190889242627

`A001362(2*n)-A000115(2*n+1)`
-/

namespace A177239.P8125713190889242627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001362 (2 * n) - A000115 (2 * n + 1)

end

end A177239.P8125713190889242627

namespace A177239

/-- `A001362(2*n)-A000115(2*n+1)` -/
def P8125713190889242627.Spec : Prop :=
  ∀ n, P8125713190889242627.a n = A177239 n

end A177239

/-! ## A177239.P7682035197010559491

`A001362(2*n)-(A008720(2*n+1)+A008720(2*n))`
-/

namespace A177239.P7682035197010559491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001362 (2 * n) - (A008720 (2 * n + 1) + A008720 (2 * n))

end

end A177239.P7682035197010559491

namespace A177239

/-- `A001362(2*n)-(A008720(2*n+1)+A008720(2*n))` -/
def P7682035197010559491.Spec : Prop :=
  ∀ n, P7682035197010559491.a n = A177239 n

end A177239

/-! ## A177239.P9668980629436252846

`A029383(A100764(n+1))`
-/

namespace A177239.P9668980629436252846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029383 (A100764 (n + 1)).toNat

end

end A177239.P9668980629436252846

namespace A177239

/-- `A029383(A100764(n+1))` -/
def P9668980629436252846.Spec : Prop :=
  ∀ n, P9668980629436252846.a n = A177239 n

end A177239

/-! ## A177239.P17698603562074633964

`A029304(A140164(n+2))`
-/

namespace A177239.P17698603562074633964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029304 (A140164 (n + 2)).toNat

end

end A177239.P17698603562074633964

namespace A177239

/-- `A029304(A140164(n+2))` -/
def P17698603562074633964.Spec : Prop :=
  ∀ n, P17698603562074633964.a n = A177239 n

end A177239

/-! ## A177239.P14647152061439050849

`A029304(A101328(n+2))`
-/

namespace A177239.P14647152061439050849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029304 (A101328 (n + 2)).toNat

end

end A177239.P14647152061439050849

namespace A177239

/-- `A029304(A101328(n+2))` -/
def P14647152061439050849.Spec : Prop :=
  ∀ n, P14647152061439050849.a n = A177239 n

end A177239

/-! ## A177239.P12886968061587346025

`∑[A165190(n²+2)]`
-/

namespace A177239.P12886968061587346025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177239.P12886968061587346025

namespace A177239

/-- `∑[A165190(n²+2)]` -/
def P12886968061587346025.Spec : Prop :=
  ∀ n, P12886968061587346025.a n = A177239 n

end A177239

/-!
# A177240: 

The programs for A177240, there is no canonical definition to state claims against.
-/

/-! ## A177240.P6870459608000092388

`A116520(n)%(4*n+5)²`
-/

namespace A177240.P6870459608000092388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116520 n) ((4 * n + 5) ^ 2 : ℤ)

end

end A177240.P6870459608000092388

/-! ## A177240.P678578246987792971

`A116520(n)+char[A351458(2*n+5)]`
-/

namespace A177240.P678578246987792971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351458 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A177240.P678578246987792971

/-! ## A177240.P11130459139506546002

`A116520(n)*A178334(A178334(2*n+3))`
-/

namespace A177240.P11130459139506546002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 n * A178334 (A178334 (2 * n + 3)).toNat

end

end A177240.P11130459139506546002

/-! ## A177240.P9980827086144143072

`(∑[(1-A261366(n)+n)²]-1)*A178334(A178334(2*n+3))`
-/

namespace A177240.P9980827086144143072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A261366 n + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) * A178334 (A178334 (2 * n + 3)).toNat

end

end A177240.P9980827086144143072

/-!
# A177241: First differences of A177240.

The programs for A177241, the canonical program `A177241.P14163680106090466848` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177241 has offset 0).

The definition of A177241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5551 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177241.P14163680106090466848

`round((A131136(n)/2)²)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177241

/-- `round((A131136(n)/2)²)` -/
def P14163680106090466848.Spec : Prop :=
  ∀ n, P14163680106090466848.a n = A177241 n

theorem P14163680106090466848.correct : P14163680106090466848.Spec := by
  intro n
  simp only [A177241]

end A177241

/-! ## A177241.P2892627291529842947

`(Δ[n²]-A267582(n))²`
-/

namespace A177241.P2892627291529842947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267582 n) ^ 2

end

end A177241.P2892627291529842947

namespace A177241

/-- `(Δ[n²]-A267582(n))²` -/
def P2892627291529842947.Spec : Prop :=
  ∀ n, P2892627291529842947.a n = A177241 n

end A177241

/-! ## A177241.P9592719590862756997

`A001316(abs(1-n))²%(n+1)²`
-/

namespace A177241.P9592719590862756997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 |1 - (n : ℤ)|.toNat ^ 2) ((n + 1) ^ 2 : ℤ)

end

end A177241.P9592719590862756997

namespace A177241

/-- `A001316(abs(1-n))²%(n+1)²` -/
def P9592719590862756997.Spec : Prop :=
  ∀ n, P9592719590862756997.a n = A177241 n

end A177241

/-! ## A177241.P18425721104078618360

`A002620(A131136(n))`
-/

namespace A177241.P18425721104078618360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A131136 n).toNat

end

end A177241.P18425721104078618360

namespace A177241

/-- `A002620(A131136(n))` -/
def P18425721104078618360.Spec : Prop :=
  ∀ n, P18425721104078618360.a n = A177241 n

end A177241

/-! ## A177241.P13980737753286185816

`A173531(A004273(n))`
-/

namespace A177241.P13980737753286185816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 (A004273 n).toNat

end

end A177241.P13980737753286185816

namespace A177241

/-- `A173531(A004273(n))` -/
def P13980737753286185816.Spec : Prop :=
  ∀ n, P13980737753286185816.a n = A177241 n

end A177241

/-! ## A177241.P8434206332590529016

`A131577(log2(A131136(n)))²`
-/

namespace A177241.P8434206332590529016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (SequenceMachineLib.roundAway (Real.logb 2 (A131136 n : ℝ))).toNat ^ 2

end

end A177241.P8434206332590529016

namespace A177241

/-- `A131577(log2(A131136(n)))²` -/
def P8434206332590529016.Spec : Prop :=
  ∀ n, P8434206332590529016.a n = A177241 n

end A177241

/-! ## A177241.P16457732237326215504

`(A001316(n)-A105321(n))²`
-/

namespace A177241.P16457732237326215504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001316 n - A105321 n) ^ 2

end

end A177241.P16457732237326215504

namespace A177241

/-- `(A001316(n)-A105321(n))²` -/
def P16457732237326215504.Spec : Prop :=
  ∀ n, P16457732237326215504.a n = A177241 n

end A177241

/-! ## A177241.P16572673820632208425

`(A001316(n)-Δ[A173522(n)])²`
-/

namespace A177241.P16572673820632208425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001316 n - (f1 (n + 1) - f1 n)) ^ 2

end

end A177241.P16572673820632208425

namespace A177241

/-- `(A001316(n)-Δ[A173522(n)])²` -/
def P16572673820632208425.Spec : Prop :=
  ∀ n, P16572673820632208425.a n = A177241 n

end A177241

/-! ## A177241.P12043868231315317237

`(A038573(n)+1-A105321(n))²`
-/

namespace A177241.P12043868231315317237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + (1 - A105321 n)) ^ 2

end

end A177241.P12043868231315317237

namespace A177241

/-- `(A038573(n)+1-A105321(n))²` -/
def P12043868231315317237.Spec : Prop :=
  ∀ n, P12043868231315317237.a n = A177241 n

end A177241

/-! ## A177241.P5690482160903485178

`(A060632(2*n)-A105321(n))²`
-/

namespace A177241.P5690482160903485178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060632 (2 * n) - A105321 n) ^ 2

end

end A177241.P5690482160903485178

namespace A177241

/-- `(A060632(2*n)-A105321(n))²` -/
def P5690482160903485178.Spec : Prop :=
  ∀ n, P5690482160903485178.a n = A177241 n

end A177241

/-! ## A177241.P738262186483139915

`(A173531(2*n)/A060632(2*n))²`
-/

namespace A177241.P738262186483139915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A173531 (2 * n) : ℚ) / (A060632 (2 * n) : ℚ)) ^ 2

end

end A177241.P738262186483139915

namespace A177241

/-- `(A173531(2*n)/A060632(2*n))²` -/
def P738262186483139915.Spec : Prop :=
  ∀ n, P738262186483139915.a n = (A177241 n : ℚ)

end A177241

/-! ## A177241.P14817751998870345636

`A173531(2*n)²/A173531(2*n+1)`
-/

namespace A177241.P14817751998870345636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173531 (2 * n) ^ 2 : ℚ) / (A173531 (2 * n + 1) : ℚ)

end

end A177241.P14817751998870345636

namespace A177241

/-- `A173531(2*n)²/A173531(2*n+1)` -/
def P14817751998870345636.Spec : Prop :=
  ∀ n, P14817751998870345636.a n = (A177241 n : ℚ)

end A177241

/-! ## A177241.P2171430049910430873

`A131577(A000120(abs(1-n))+1)²%Δ[n^3]`
-/

namespace A177241.P2171430049910430873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 (A000120 |1 - (n : ℤ)|.toNat + 1).toNat ^ 2) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A177241.P2171430049910430873

namespace A177241

/-- `A131577(A000120(abs(1-n))+1)²%Δ[n^3]` -/
def P2171430049910430873.Spec : Prop :=
  ∀ n, P2171430049910430873.a n = A177241 n

end A177241

/-! ## A177241.P9288729259148380757

`A000695(A105321(n)-A001316(n))`
-/

namespace A177241.P9288729259148380757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A105321 n - A001316 n).toNat

end

end A177241.P9288729259148380757

namespace A177241

/-- `A000695(A105321(n)-A001316(n))` -/
def P9288729259148380757.Spec : Prop :=
  ∀ n, P9288729259148380757.a n = A177241 n

end A177241

/-! ## A177241.P2451684688810368892

`A173531(A028310(2*n)-1)`
-/

namespace A177241.P2451684688810368892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 (A028310 (2 * n) - 1).toNat

end

end A177241.P2451684688810368892

namespace A177241

/-- `A173531(A028310(2*n)-1)` -/
def P2451684688810368892.Spec : Prop :=
  ∀ n, P2451684688810368892.a n = A177241 n

end A177241

/-! ## A177241.P2673794497100703387

`(A105321(2*n)-A105321(n))²`
-/

namespace A177241.P2673794497100703387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105321 (2 * n) - A105321 n) ^ 2

end

end A177241.P2673794497100703387

namespace A177241

/-- `(A105321(2*n)-A105321(n))²` -/
def P2673794497100703387.Spec : Prop :=
  ∀ n, P2673794497100703387.a n = A177241 n

end A177241

/-! ## A177241.P12372466330476552569

`(A233775(2*n)-A233775(n))²`
-/

namespace A177241.P12372466330476552569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233775 (2 * n) - A233775 n) ^ 2

end

end A177241.P12372466330476552569

namespace A177241

/-- `(A233775(2*n)-A233775(n))²` -/
def P12372466330476552569.Spec : Prop :=
  ∀ n, P12372466330476552569.a n = A177241 n

end A177241

/-! ## A177241.P17181285854181903845

`A000695(A105321(2*n)-A105321(n))`
-/

namespace A177241.P17181285854181903845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A105321 (2 * n) - A105321 n).toNat

end

end A177241.P17181285854181903845

namespace A177241

/-- `A000695(A105321(2*n)-A105321(n))` -/
def P17181285854181903845.Spec : Prop :=
  ∀ n, P17181285854181903845.a n = A177241 n

end A177241

/-! ## A177241.P769941552314876200

`(A151566(A014681(2*n))-A151566(2*n))²`
-/

namespace A177241.P769941552314876200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151566 (A014681 (2 * n)).toNat - A151566 (2 * n)) ^ 2

end

end A177241.P769941552314876200

namespace A177241

/-- `(A151566(A014681(2*n))-A151566(2*n))²` -/
def P769941552314876200.Spec : Prop :=
  ∀ n, P769941552314876200.a n = A177241 n

end A177241

/-! ## A177241.P2364108663251221630

`(A267582(n)-A028310(2*n+1))²`
-/

namespace A177241.P2364108663251221630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267582 n - A028310 (2 * n + 1)) ^ 2

end

end A177241.P2364108663251221630

namespace A177241

/-- `(A267582(n)-A028310(2*n+1))²` -/
def P2364108663251221630.Spec : Prop :=
  ∀ n, P2364108663251221630.a n = A177241 n

end A177241

/-!
# A177243: Numbers k such that k^3 divides 10^(k^2) - 1.

The programs for A177243, there is no canonical definition to state claims against.
-/

/-! ## A177243.P7334574106796766657

`record[gcd(A014950(n+4), A177919(n+1))]`
-/

namespace A177243.P7334574106796766657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014950 (n + 4)) (A177919 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177243.P7334574106796766657

/-! ## A177243.P1293793484835147473

`record[gcd(A014950(n+1), A177917(n+1))]`
-/

namespace A177243.P1293793484835147473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014950 (n + 1)) (A177917 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177243.P1293793484835147473

/-!
# A177245: Fibonacci numbers whose decimal expansion does not contain any digit 3.

The programs for A177245, there is no canonical definition to state claims against.
-/

/-! ## A177245.P2972528984631118550

`record[A000045(gcd(n, A085857(n)))]`
-/

namespace A177245.P2972528984631118550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (n : ℤ) (A085857 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177245.P2972528984631118550

/-! ## A177245.P12610618989386556040

`A000045(eq[A055672(2*n), A085857(n)])`
-/

namespace A177245.P12610618989386556040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177245.P12610618989386556040

/-! ## A177245.P4383190691449169006

`filter[A052405(n+1), A010056(#)]`
-/

namespace A177245.P4383190691449169006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A177245.P4383190691449169006

/-! ## A177245.P10753272712041243447

`record[A004178(A000045(n))]`
-/

namespace A177245.P10753272712041243447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177245.P10753272712041243447

/-! ## A177245.P15535061814875243717

`eq[n, A035514(A004178(n))]`
-/

namespace A177245.P15535061814875243717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035514 (A004178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A177245.P15535061814875243717

/-!
# A177246: Fibonacci numbers whose decimal expansion does not contain any digit 4.

The programs for A177246, there is no canonical definition to state claims against.
-/

/-! ## A177246.P15158905542532037338

`A000045(record[(n+1)*(1-A085858(n+1))])`
-/

namespace A177246.P15158905542532037338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A085858 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177246.P15158905542532037338

/-! ## A177246.P4257385246993035822

`A000045(eq[A000007(n), A085858(n)])`
-/

namespace A177246.P4257385246993035822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177246.P4257385246993035822

/-! ## A177246.P9983627976525435500

`A000045(eq[A000038(n), A085858(n)])`
-/

namespace A177246.P9983627976525435500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177246.P9983627976525435500

/-! ## A177246.P12108017939394344752

`A000045(eq[A085858(n), A151878(n)])`
-/

namespace A177246.P12108017939394344752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085858 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177246.P12108017939394344752

/-! ## A177246.P14836734255049214739

`A000045(eq[A085858(n), A151909(n)])`
-/

namespace A177246.P14836734255049214739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085858 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177246.P14836734255049214739

/-!
# A177247: Fibonacci numbers Fib(n) whose decimal expansion does not contain any digit 6.

The programs for A177247, there is no canonical definition to state claims against.
-/

/-! ## A177247.P17203322946500479113

`A000045(eq[C(2, n+2), A085860(n)])`
-/

namespace A177247.P17203322946500479113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177247.P17203322946500479113

/-! ## A177247.P9343200099687083339

`A000045(eq[A000007(n), A085860(n)])`
-/

namespace A177247.P9343200099687083339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177247.P9343200099687083339

/-! ## A177247.P11809769861155159705

`A000045(eq[A000038(n), A085860(n)])`
-/

namespace A177247.P11809769861155159705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177247.P11809769861155159705

/-! ## A177247.P4504488344377753987

`A000045(eq[A020761(n), A085860(n)])`
-/

namespace A177247.P4504488344377753987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177247.P4504488344377753987

/-! ## A177247.P2869768579018503078

`A000045(eq[A085860(n), A143758(3*(n+1))])`
-/

namespace A177247.P2869768579018503078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143758 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177247.P2869768579018503078

/-!
# A177249: Number of permutations of [n] having no adjacent transpositions, that is, no cycles of the form (i, i+1).

The programs for A177249, the canonical program `A177249.P9691009293743021137` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177249 has offset 0).

The definition of A177249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177249.P14466543116193687497

`∑{#}[floor(n/2), (-1)^#*(n-#)!/#!]`
-/

namespace A177249.P14466543116193687497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((-1) ^ k * (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℤ) : ℚ) / (Nat.factorial k : ℚ)

end

end A177249.P14466543116193687497

namespace A177249

/-- `∑{#}[floor(n/2), (-1)^#*(n-#)!/#!]` -/
def P14466543116193687497.Spec : Prop :=
  ∀ n, P14466543116193687497.a n = (A177249 n : ℚ)

end A177249

/-! ## A177249.P9691009293743021137

`n*a(n-1)+(n-2)*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177249

/-- `n*a(n-1)+(n-2)*a(n-3)+a(n-4)` -/
def P9691009293743021137.Spec : Prop :=
  ∀ n, P9691009293743021137.a n = A177249 n

theorem P9691009293743021137.correct : P9691009293743021137.Spec := by
  intro n
  simp only [A177249]

end A177249

/-! ## A177249.P2899391013125971172

`A177248(∑[ceil(n/2)])`
-/

namespace A177249.P2899391013125971172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177248 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177249.P2899391013125971172

namespace A177249

/-- `A177248(∑[ceil(n/2)])` -/
def P2899391013125971172.Spec : Prop :=
  ∀ n, P2899391013125971172.a n = A177249 n

end A177249

/-! ## A177249.P14411829296095125072

`A300482(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A177249.P14411829296095125072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A300482 n + a (n - 2)

end

end A177249.P14411829296095125072

namespace A177249

/-- `A300482(n)+a(n-2)` -/
def P14411829296095125072.Spec : Prop :=
  ∀ n, P14411829296095125072.a n = A177249 n

end A177249

/-!
# A177250: Triangle read by rows: T(n,k) is the number of permutations of [n] having k adjacent 3-cycles (0 <= k <= floor(n/3)), i.e., having k cycles of the form (i, i+1, i+2).

The programs for A177250, there is no canonical definition to state claims against.
-/

/-! ## A177250.P14239927451641840260

`A003963(A117213(n+1))-A004695(n)`
-/

namespace A177250.P14239927451641840260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A117213 (n + 1)).toNat - A004695 n

end

end A177250.P14239927451641840260

/-! ## A177250.P12689401821634954777

`A046966(A182903(n)%A367902(n+1))`
-/

namespace A177250.P12689401821634954777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046966 (Int.tmod (A182903 n) (A367902 (n + 1))).toNat

end

end A177250.P12689401821634954777

/-!
# A177251: Number of permutations of [n] having no adjacent 3-cycles, i.e., no cycles of the form (i, i+1, i+2).

The programs for A177251, the canonical program `A177251.P9320376397947909220` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177251 has offset 0).

The definition of A177251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177251.P15542186034135240828

`∑{#}[floor(n/3), (-1)^#*(n-2*#)!/#!]`
-/

namespace A177251.P15542186034135240828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((-1) ^ k * (Nat.factorial ((n : ℤ) - (2 * k : ℤ)).toNat : ℤ) : ℚ) / (Nat.factorial k : ℚ)

end

end A177251.P15542186034135240828

namespace A177251

/-- `∑{#}[floor(n/3), (-1)^#*(n-2*#)!/#!]` -/
def P15542186034135240828.Spec : Prop :=
  ∀ n, P15542186034135240828.a n = (A177251 n : ℚ)

end A177251

/-! ## A177251.P9320376397947909220

`n*a(n-1)+a(n-3)+(n-3)*a(n-4)+2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=22, a(5)=114`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177251

/-- `n*a(n-1)+a(n-3)+(n-3)*a(n-4)+2*a(n-6)` -/
def P9320376397947909220.Spec : Prop :=
  ∀ n, P9320376397947909220.a n = A177251 n

theorem P9320376397947909220.correct : P9320376397947909220.Spec := by
  intro n
  simp only [A177251]

end A177251

/-! ## A177251.P1033730305073661246

`A177250(floor(∑[(n+1)/3]))`
-/

namespace A177251.P1033730305073661246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177250 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A177251.P1033730305073661246

namespace A177251

/-- `A177250(floor(∑[(n+1)/3]))` -/
def P1033730305073661246.Spec : Prop :=
  ∀ n, P1033730305073661246.a n = A177251 n

end A177251

/-! ## A177251.P340614771519575258

`A177250(A001840(n))^(1-char[1])`
-/

namespace A177251.P340614771519575258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177250 (A001840 n).toNat : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A177251.P340614771519575258

namespace A177251

/-- `A177250(A001840(n))^(1-char[1])` -/
def P340614771519575258.Spec : Prop :=
  ∀ n, P340614771519575258.a n = (A177251 n : ℚ)

end A177251

/-! ## A177251.P2765632035152440883

`A177250(A001840(n))+A007814(2*n+1)`
-/

namespace A177251.P2765632035152440883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177250 (A001840 n).toNat + A007814 (2 * n + 1)

end

end A177251.P2765632035152440883

namespace A177251

/-- `A177250(A001840(n))+A007814(2*n+1)` -/
def P2765632035152440883.Spec : Prop :=
  ∀ n, P2765632035152440883.a n = A177251 n

end A177251

/-! ## A177251.P153189676036960883

`A177250(A001840(n))+A059841(A191126(n+1))`
-/

namespace A177251.P153189676036960883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177250 (A001840 n).toNat + A059841 (A191126 (n + 1)).toNat

end

end A177251.P153189676036960883

namespace A177251

/-- `A177250(A001840(n))+A059841(A191126(n+1))` -/
def P153189676036960883.Spec : Prop :=
  ∀ n, P153189676036960883.a n = A177251 n

end A177251

/-!
# A177252: Triangle read by rows: T(n,k) is the number of permutations of [n] having k adjacent 4-cycles (0 <= k <= floor(n/4)), i.e., having k cycles of the form (i, i+1, i+2, i+3).

The programs for A177252, there is no canonical definition to state claims against.
-/

/-! ## A177252.P15694479966503959422

`A383385(A175436(n+1))`
-/

namespace A177252.P15694479966503959422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383385 (A175436 (n + 1)).toNat

end

end A177252.P15694479966503959422

/-! ## A177252.P2666752672383883782

`A242734(A151353(n)+A000984(n))`
-/

namespace A177252.P2666752672383883782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242734 (A151353 n + A000984 n).toNat

end

end A177252.P2666752672383883782

/-! ## A177252.P1873071191211199463

`A342863(n)+A080224(A000272(n))`
-/

namespace A177252.P1873071191211199463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342863 n + A080224 (A000272 n).toNat

end

end A177252.P1873071191211199463

/-!
# A177253: Number of permutations of [n] having no adjacent 4-cycles, i.e., no cycles of the form (i, i+1, i+2, i+3).

The programs for A177253, the canonical program `A177253.P3198244230034769980` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177253 has offset 0).

The definition of A177253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177253.P3198244230034769980

`∑{#}[floor(n/4), (-1)^#*(n-3*#)!/#!]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177253

/-- `∑{#}[floor(n/4), (-1)^#*(n-3*#)!/#!]` -/
def P3198244230034769980.Spec : Prop :=
  ∀ n, P3198244230034769980.a n = (A177253 n : ℚ)

end A177253

/-! ## A177253.P14305472464049454108

`A177252(lt[A001678(n), A177252(n)])`
-/

namespace A177253.P14305472464049454108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177253.P14305472464049454108

namespace A177253

/-- `A177252(lt[A001678(n), A177252(n)])` -/
def P14305472464049454108.Spec : Prop :=
  ∀ n, P14305472464049454108.a n = A177253 n

end A177253

/-! ## A177253.P10493022663069314662

`A177252(lt[A232500(n), A177252(n)])`
-/

namespace A177253.P10493022663069314662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232500 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177253.P10493022663069314662

namespace A177253

/-- `A177252(lt[A232500(n), A177252(n)])` -/
def P10493022663069314662.Spec : Prop :=
  ∀ n, P10493022663069314662.a n = A177253 n

end A177253

/-! ## A177253.P17732775483400823943

`A177252(lt[A045687(n), A177252(n)])`
-/

namespace A177253.P17732775483400823943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177253.P17732775483400823943

namespace A177253

/-- `A177252(lt[A045687(n), A177252(n)])` -/
def P17732775483400823943.Spec : Prop :=
  ∀ n, P17732775483400823943.a n = A177253 n

end A177253

/-! ## A177253.P14056243726259375089

`A177252(lt[A336632(n), A177252(n)])`
-/

namespace A177253.P14056243726259375089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177253.P14056243726259375089

namespace A177253

/-- `A177252(lt[A336632(n), A177252(n)])` -/
def P14056243726259375089.Spec : Prop :=
  ∀ n, P14056243726259375089.a n = A177253 n

end A177253

/-!
# A177254: Triangle read by rows: T(n,k) is the number of partitions of the set {1,2,...,n} having k adjacent blocks (0 <= k <= n). An adjacent block is a block of the form (i, i+1, i+2, ...).

The programs for A177254, there is no canonical definition to state claims against.
-/

/-! ## A177254.P2750122284073981904

`xor(A102037((n+1)²/∏{p}[n+1, #]), A106566(n))`
-/

namespace A177254.P2750122284073981904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102037 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) (A106566 n)

end

end A177254.P2750122284073981904

/-! ## A177254.P9182873694234101099

`A064044(n)+A055641(A038279(n))`
-/

namespace A177254.P9182873694234101099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 n + A055641 (A038279 n).toNat

end

end A177254.P9182873694234101099

/-! ## A177254.P15729861559815512353

`A341025(A130534(n))+A155161(n)`
-/

namespace A177254.P15729861559815512353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A130534 n).toNat + 120) + A155161 n

end

end A177254.P15729861559815512353

/-! ## A177254.P3536590219757555090

`A228275(n)+A030308(A144974(n+1))`
-/

namespace A177254.P3536590219757555090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228275 n + A030308 (A144974 (n + 1)).toNat

end

end A177254.P3536590219757555090

/-! ## A177254.P3284322009949997944

`A007318(n)-A189673(A167572(n+1))`
-/

namespace A177254.P3284322009949997944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A189673 (A167572 (n + 1)).toNat

end

end A177254.P3284322009949997944

/-!
# A177255: a(n) = Sum_{j=1..n} j*B(j-1), where B(k) = A000110(k) are the Bell numbers.

The programs for A177255, there is no canonical definition to state claims against.
-/

/-! ## A177255.P6971858558658133974

`∑[A052889(n)]`
-/

namespace A177255.P6971858558658133974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177255.P6971858558658133974

/-! ## A177255.P14566292364550410387

`∑[n*A106436(∑[n]+1)]`
-/

namespace A177255.P14566292364550410387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106436 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177255.P14566292364550410387

/-! ## A177255.P11173535817580479476

`∑[n*A205574(∑[n]+1)]`
-/

namespace A177255.P11173535817580479476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A205574 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177255.P11173535817580479476

/-! ## A177255.P5127001304446333510

`a(n-1)+n*A011971(C(n, 2))` with `a(0)=0`
-/

namespace A177255.P5127001304446333510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * A011971 (Nat.choose n 2)

end

end A177255.P5127001304446333510

/-! ## A177255.P13799068064498151929

`∑[A056857(A133263(n))]-1`
-/

namespace A177255.P13799068064498151929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A177255.P13799068064498151929

/-! ## A177255.P14931368781360824713

`∑[n*A095149(A000124(n))]`
-/

namespace A177255.P14931368781360824713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A095149 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177255.P14931368781360824713

/-! ## A177255.P14872312747476205819

`∑[n*A011971(A161680(n))]`
-/

namespace A177255.P14872312747476205819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011971 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177255.P14872312747476205819

/-! ## A177255.P16443646334848412176

`∑[A124427(n)]+1-A000110(n)`
-/

namespace A177255.P16443646334848412176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000110 n)

end

end A177255.P16443646334848412176

/-! ## A177255.P6297598261219768884

`A000110(n+1)-(A177257(n)+A000110(n))`
-/

namespace A177255.P6297598261219768884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - (A177257 n + A000110 n)

end

end A177255.P6297598261219768884

/-! ## A177255.P6977510112629782341

`∑[A000110(n+1)-(A124325(n)+A000110(n))]`
-/

namespace A177255.P6977510112629782341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - (A124325 n + A000110 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177255.P6977510112629782341

/-!
# A177257: a(n) = Sum_{j=0..n-1} (binomial(n,j) - (j+1))*A000110(j).

The programs for A177257, the canonical program `A177257.P8610829549933874295` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177257 has offset 0).

The definition of A177257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177257.P8610829549933874295

`∑{#}[n-1, (C(n, #)-(#+1))*A000110(#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177257

/-- `∑{#}[n-1, (C(n, #)-(#+1))*A000110(#)]` -/
def P8610829549933874295.Spec : Prop :=
  ∀ n, P8610829549933874295.a n = A177257 n

theorem P8610829549933874295.correct : P8610829549933874295.Spec := by
  intro n
  simp only [A177257]

end A177257

/-! ## A177257.P8791541074846065538

`Δ[A000110(n)]-A177255(n)`
-/

namespace A177257.P8791541074846065538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A177255 n

end

end A177257.P8791541074846065538

namespace A177257

/-- `Δ[A000110(n)]-A177255(n)` -/
def P8791541074846065538.Spec : Prop :=
  ∀ n, P8791541074846065538.a n = A177257 n

end A177257

/-! ## A177257.P4448978856519048391

`Δ[A000110(n)]-∑[A052889(n)]`
-/

namespace A177257.P4448978856519048391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A177257.P4448978856519048391

namespace A177257

/-- `Δ[A000110(n)]-∑[A052889(n)]` -/
def P4448978856519048391.Spec : Prop :=
  ∀ n, P4448978856519048391.a n = A177257 n

end A177257

/-! ## A177257.P6105083491918376522

`∑[Δ[A000110(n)]-A124427(n)]`
-/

namespace A177257.P6105083491918376522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A124427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177257.P6105083491918376522

namespace A177257

/-- `∑[Δ[A000110(n)]-A124427(n)]` -/
def P6105083491918376522.Spec : Prop :=
  ∀ n, P6105083491918376522.a n = A177257 n

end A177257

/-! ## A177257.P6601419040943232686

`∑[A124325(n)]+1-A000110(n)`
-/

namespace A177257.P6601419040943232686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000110 n)

end

end A177257.P6601419040943232686

namespace A177257

/-- `∑[A124325(n)]+1-A000110(n)` -/
def P6601419040943232686.Spec : Prop :=
  ∀ n, P6601419040943232686.a n = A177257 n

end A177257

/-! ## A177257.P4520123211397073867

`Δ[A011971(A000217(n))]-A177255(n)`
-/

namespace A177257.P4520123211397073867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A177255 n

end

end A177257.P4520123211397073867

namespace A177257

/-- `Δ[A011971(A000217(n))]-A177255(n)` -/
def P4520123211397073867.Spec : Prop :=
  ∀ n, P4520123211397073867.a n = A177257 n

end A177257

/-! ## A177257.P8960212760909648898

`A106436(A034856(n+1))-A177255(n)`
-/

namespace A177257.P8960212760909648898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A034856 (n + 1)).toNat - A177255 n

end

end A177257.P8960212760909648898

namespace A177257

/-- `A106436(A034856(n+1))-A177255(n)` -/
def P8960212760909648898.Spec : Prop :=
  ∀ n, P8960212760909648898.a n = A177257 n

end A177257

/-! ## A177257.P12544888357531462171

`A000110(n+1)-(A177255(n)+A000110(n))`
-/

namespace A177257.P12544888357531462171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - (A177255 n + A000110 n)

end

end A177257.P12544888357531462171

namespace A177257

/-- `A000110(n+1)-(A177255(n)+A000110(n))` -/
def P12544888357531462171.Spec : Prop :=
  ∀ n, P12544888357531462171.a n = A177257 n

end A177257

/-!
# A177258: Number of derangements of {1,2,...,n} having no adjacent transpositions.

The programs for A177258, there is no canonical definition to state claims against.
-/

/-! ## A177258.P1395617778494742953

`(n-1)*a(n-1)+(n-1)*a(n-2)+(n-1)*a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A177258.P1395617778494742953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) + ((n : ℤ) - 1) * a (n - 2) + ((n : ℤ) - 1) * a (n - 3) + a (n - 4)

end

end A177258.P1395617778494742953

/-! ## A177258.P8589859744689814738

`A300485(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A177258.P8589859744689814738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A300485 n + a (n - 2)

end

end A177258.P8589859744689814738

/-! ## A177258.P3420408020455520197

`A008612(n*A334270(n))`
-/

namespace A177258.P3420408020455520197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 ((n : ℤ) * A334270 n).toNat

end

end A177258.P3420408020455520197

/-!
# A177259: Number of derangements of {1,2,...,n} having no adjacent 3-cycles (an adjacent 3-cycle is a cycle of the form (i,i+1,i+2)).

The programs for A177259, there is no canonical definition to state claims against.
-/

/-! ## A177259.P4815102228461488549

`A077766(A000262(n)+1-n)`
-/

namespace A177259.P4815102228461488549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (A000262 n + (1 - (n : ℤ))).toNat

end

end A177259.P4815102228461488549

/-! ## A177259.P5858921804611325467

`A000166(n)-A358477(A000079(n))`
-/

namespace A177259.P5858921804611325467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A358477 (A000079 n).toNat

end

end A177259.P5858921804611325467

/-! ## A177259.P6544760872695719930

`A271608(A147951(n+1))-A147955(n)`
-/

namespace A177259.P6544760872695719930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271608 (A147951 (n + 1)).toNat - A147955 n

end

end A177259.P6544760872695719930

/-!
# A177260: Number of derangements of {1,2,...,n} having no adjacent 4-cycles (an adjacent 4-cycle is a cycle of the form (i,i+1,i+2,i+3)).

The programs for A177260, there is no canonical definition to state claims against.
-/

/-! ## A177260.P4061397604017235723

`A260091(n)-A342770(A382214(n))`
-/

namespace A177260.P4061397604017235723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260091 n - A342770 (A382214 n).toNat

end

end A177260.P4061397604017235723

/-! ## A177260.P13191579140514094354

`A047886(A047865(n+1))+A000166(n)`
-/

namespace A177260.P13191579140514094354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047886 (A047865 (n + 1)).toNat + A000166 n

end

end A177260.P13191579140514094354

/-! ## A177260.P10773154968082615570

`A000166(n)-A014082(A026748(n))`
-/

namespace A177260.P10773154968082615570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A014082 (A026748 n).toNat

end

end A177260.P10773154968082615570

/-!
# A177261: Number of derangements of {1,2,...,n} having no adjacent 2-cycles and no adjacent 3-cycles (an adjacent q-cycle is a cycle of the form (i,i+1,i+2,...,i+q-1)).

The programs for A177261, there is no canonical definition to state claims against.
-/

/-! ## A177261.P2883041037044529698

`A008679(or(n, A228609(n)))`
-/

namespace A177261.P2883041037044529698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (Int.lor (n : ℤ) (A228609 n)).toNat

end

end A177261.P2883041037044529698

/-! ## A177261.P17741967019530839736

`A178210(A020099(n))-∑{e}[n+1, #]`
-/

namespace A177261.P17741967019530839736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A020099 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A177261.P17741967019530839736

/-! ## A177261.P15841538600902424228

`A088413(A082582(n))+A005815(n)`
-/

namespace A177261.P15841538600902424228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088413 (A082582 n).toNat + A005815 n

end

end A177261.P15841538600902424228

/-!
# A177262: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} starting with exactly k consecutive integers (1<=k<=n).

The programs for A177262, the canonical program `A177262.P5115816299917708865` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177262 has offset 1).

The definition of A177262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177262.P9176848249915715903

`A094258(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A177262.P9176848249915715903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094258 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A177262.P9176848249915715903

namespace A177262

/-- `A094258(C(comp[∑[n]]-n, 2)-n)` -/
def P9176848249915715903.Spec : Prop :=
  ∀ n, P9176848249915715903.a n = A177262 (n + 1)

end A177262

/-! ## A177262.P5115816299917708865

`(C(comp[∑[n]]-n, 2)-(n+1))!*A193592(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177262

/-- `(C(comp[∑[n]]-n, 2)-(n+1))!*A193592(n+1)` -/
def P5115816299917708865.Spec : Prop :=
  ∀ n, P5115816299917708865.a n = A177262 (n + 1)

theorem P5115816299917708865.correct : P5115816299917708865.Spec := by
  intro n
  simp only [A177262, Nat.add_sub_cancel]

end A177262

/-! ## A177262.P10675857682405375085

`A001563(C(comp[∑[n]]-n, 2)-n-char[comp[∑[n-1]]])`
-/

namespace A177262.P10675857682405375085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A177262.P10675857682405375085

namespace A177262

/-- `A001563(C(comp[∑[n]]-n, 2)-n-char[comp[∑[n-1]]])` -/
def P10675857682405375085.Spec : Prop :=
  ∀ n, P10675857682405375085.a n = A177262 (n + 1)

end A177262

/-! ## A177262.P8019891628982589569

`(C(comp[∑[n]]-n, 2)-(n+1))!*A028310(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A177262.P8019891628982589569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A028310 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A177262.P8019891628982589569

namespace A177262

/-- `(C(comp[∑[n]]-n, 2)-(n+1))!*A028310(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P8019891628982589569.Spec : Prop :=
  ∀ n, P8019891628982589569.a n = A177262 (n + 1)

end A177262

/-! ## A177262.P1216717494837730029

`A094258(A004736(n+1))`
-/

namespace A177262.P1216717494837730029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094258 (A004736 (n + 1)).toNat

end

end A177262.P1216717494837730029

namespace A177262

/-- `A094258(A004736(n+1))` -/
def P1216717494837730029.Spec : Prop :=
  ∀ n, P1216717494837730029.a n = A177262 (n + 1)

end A177262

/-! ## A177262.P3500390380989644398

`A137948(2*(n+1-C(comp[∑[n]]-n, 2))²)`
-/

namespace A177262.P3500390380989644398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137948 (2 * ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2).toNat

end

end A177262.P3500390380989644398

namespace A177262

/-- `A137948(2*(n+1-C(comp[∑[n]]-n, 2))²)` -/
def P3500390380989644398.Spec : Prop :=
  ∀ n, P3500390380989644398.a n = A177262 (n + 1)

end A177262

/-! ## A177262.P9775084015681638723

`A276091(A155038(n+1))`
-/

namespace A177262.P9775084015681638723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276091 (A155038 (n + 1)).toNat

end

end A177262.P9775084015681638723

namespace A177262

/-- `A276091(A155038(n+1))` -/
def P9775084015681638723.Spec : Prop :=
  ∀ n, P9775084015681638723.a n = A177262 (n + 1)

end A177262

/-! ## A177262.P11369988535550608414

`A276091(A089633(n+1)-A089633(n))`
-/

namespace A177262.P11369988535550608414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276091 (A089633 (n + 1) - A089633 n).toNat

end

end A177262.P11369988535550608414

namespace A177262

/-- `A276091(A089633(n+1)-A089633(n))` -/
def P11369988535550608414.Spec : Prop :=
  ∀ n, P11369988535550608414.a n = A177262 (n + 1)

end A177262

/-! ## A177262.P7869716295501602601

`∏{e}[3^(C(comp[∑[n]]-n, 2)-(n+1)), #*#!]`
-/

namespace A177262.P7869716295501602601
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p * Nat.factorial (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A177262.P7869716295501602601

namespace A177262

/-- `∏{e}[3^(C(comp[∑[n]]-n, 2)-(n+1)), #*#!]` -/
def P7869716295501602601.Spec : Prop :=
  ∀ n, (P7869716295501602601.a n : ℤ) = A177262 (n + 1)

end A177262

/-! ## A177262.P1717276125514603012

`A284001(2^(C(comp[∑[n]]-n, 2)-n)-2)`
-/

namespace A177262.P1717276125514603012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) - 2)).toNat

end

end A177262.P1717276125514603012

namespace A177262

/-- `A284001(2^(C(comp[∑[n]]-n, 2)-n)-2)` -/
def P1717276125514603012.Spec : Prop :=
  ∀ n, P1717276125514603012.a n = A177262 (n + 1)

end A177262

/-!
# A177263: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k as the last entry in the first block (1<=k<=n).

The programs for A177263, the canonical program `A177263.P1420338553077097761` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177263 has offset 1).

The definition of A177263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177263.P17031034652073867390

`A177264(∑[char[∑[n]]]²-n)`
-/

namespace A177263.P17031034652073867390
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177264 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A177263.P17031034652073867390

namespace A177263

/-- `A177264(∑[char[∑[n]]]²-n)` -/
def P17031034652073867390.Spec : Prop :=
  ∀ n, P17031034652073867390.a n = A177263 (n + 1)

end A177263

/-! ## A177263.P1420338553077097761

`Δ[A162608(n)+A003422(A025581(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177263

/-- `Δ[A162608(n)+A003422(A025581(n))]` -/
def P1420338553077097761.Spec : Prop :=
  ∀ n, P1420338553077097761.a n = A177263 (n + 1)

theorem P1420338553077097761.correct : P1420338553077097761.Spec := by
  intro n
  simp only [A177263, Nat.add_sub_cancel]

end A177263

/-! ## A177263.P3322151842742251162

`A177264(A038722(n+1))%A080742(n)`
-/

namespace A177263.P3322151842742251162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177264 (A038722 (n + 1)).toNat) (A080742 n)

end

end A177263.P3322151842742251162

namespace A177263

/-- `A177264(A038722(n+1))%A080742(n)` -/
def P3322151842742251162.Spec : Prop :=
  ∀ n, P3322151842742251162.a n = A177263 (n + 1)

end A177263

/-!
# A177264: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k as the first entry in the last block (1<=k<=n).

The programs for A177264, the canonical program `A177264.P12625146371770321732` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177264 has offset 1).

The definition of A177264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177264.P17364028632172686309

`A177263(∑[char[∑[n]]]²-n)`
-/

namespace A177264.P17364028632172686309
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177263 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A177264.P17364028632172686309

namespace A177264

/-- `A177263(∑[char[∑[n]]]²-n)` -/
def P17364028632172686309.Spec : Prop :=
  ∀ n, P17364028632172686309.a n = A177264 (n + 1)

end A177264

/-! ## A177264.P12625146371770321732

`A177263(A038722(n+1))+A000007(n+4)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A177264

/-- `A177263(A038722(n+1))+A000007(n+4)` -/
def P12625146371770321732.Spec : Prop :=
  ∀ n, P12625146371770321732.a n = A177264 (n + 1)

theorem P12625146371770321732.correct : P12625146371770321732.Spec := by
  intro n
  simp only [A177264, Nat.add_sub_cancel]

end A177264

/-! ## A177264.P11064502486230208571

`A177263(A038722(n+1))-C(A049084(2*(n+1)), 2)`
-/

namespace A177264.P11064502486230208571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177263 (A038722 (n + 1)).toNat - (Nat.choose (A049084 (2 * (n + 1))).toNat 2 : ℤ)

end

end A177264.P11064502486230208571

namespace A177264

/-- `A177263(A038722(n+1))-C(A049084(2*(n+1)), 2)` -/
def P11064502486230208571.Spec : Prop :=
  ∀ n, P11064502486230208571.a n = A177264 (n + 1)

end A177264

/-! ## A177264.P823668557707577983

`A326305(A073675(2*n+3))+A177263(A038722(n+1))`
-/

namespace A177264.P823668557707577983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326305 (A073675 (2 * n + 3)).toNat + A177263 (A038722 (n + 1)).toNat

end

end A177264.P823668557707577983

namespace A177264

/-- `A326305(A073675(2*n+3))+A177263(A038722(n+1))` -/
def P823668557707577983.Spec : Prop :=
  ∀ n, P823668557707577983.a n = A177264 (n + 1)

end A177264

/-! ## A177264.P7975717379240760129

`A001222(A065720(n+1))*A177263(A038722(n+1))`
-/

namespace A177264.P7975717379240760129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065720 (n + 1)).toNat * A177263 (A038722 (n + 1)).toNat

end

end A177264.P7975717379240760129

namespace A177264

/-- `A001222(A065720(n+1))*A177263(A038722(n+1))` -/
def P7975717379240760129.Spec : Prop :=
  ∀ n, P7975717379240760129.a n = A177264 (n + 1)

end A177264

/-! ## A177264.P1528693941105817621

`A177263(A038722(n+1))%A291789(n+4)`
-/

namespace A177264.P1528693941105817621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177263 (A038722 (n + 1)).toNat) (A291789 (n + 4))

end

end A177264.P1528693941105817621

namespace A177264

/-- `A177263(A038722(n+1))%A291789(n+4)` -/
def P1528693941105817621.Spec : Prop :=
  ∀ n, P1528693941105817621.a n = A177264 (n + 1)

end A177264

/-!
# A177265: Number of permutations of {1,2,...,n} having exactly one string of consecutive fixed points (including singletons).

The programs for A177265, the canonical program `A177265.P8128628056292383743` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177265 has offset 1).

The definition of A177265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177265.P8128628056292383743

`a(n-1)+(n+1)*A000166(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177265

/-- `a(n-1)+(n+1)*A000166(n)` -/
def P8128628056292383743.Spec : Prop :=
  ∀ n, P8128628056292383743.a n = A177265 (n + 1)

theorem P8128628056292383743.correct : P8128628056292383743.Spec := by
  intro n
  simp only [A177265, Nat.add_sub_cancel]

end A177265

/-! ## A177265.P9214611137832526505

`∑[(n+1)*xor(1, a(n-1))]` with `a(0)=1`
-/

namespace A177265.P9214611137832526505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) * Nat.xor 1 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177265.P9214611137832526505

namespace A177265

/-- `∑[(n+1)*xor(1, a(n-1))]` -/
def P9214611137832526505.Spec : Prop :=
  ∀ n, (P9214611137832526505.a n : ℤ) = A177265 (n + 1)

end A177265

/-! ## A177265.P13214112715404180213

`∑[(n+1)*(a(n-1)+(-1)^n)]` with `a(0)=1`
-/

namespace A177265.P13214112715404180213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * (f1 (n - 1) + (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177265.P13214112715404180213

namespace A177265

/-- `∑[(n+1)*(a(n-1)+(-1)^n)]` -/
def P13214112715404180213.Spec : Prop :=
  ∀ n, P13214112715404180213.a n = A177265 (n + 1)

end A177265

/-! ## A177265.P8654302093721847775

`∑[A000240(n+1)]`
-/

namespace A177265.P8654302093721847775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177265.P8654302093721847775

namespace A177265

/-- `∑[A000240(n+1)]` -/
def P8654302093721847775.Spec : Prop :=
  ∀ n, P8654302093721847775.a n = A177265 (n + 1)

end A177265

/-! ## A177265.P15959856744062825535

`∑[A076732(∑[n+1])]`
-/

namespace A177265.P15959856744062825535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076732 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177265.P15959856744062825535

namespace A177265

/-- `∑[A076732(∑[n+1])]` -/
def P15959856744062825535.Spec : Prop :=
  ∀ n, P15959856744062825535.a n = A177265 (n + 1)

end A177265

/-! ## A177265.P14587069860832236558

`∑[A180188(∑[n]+1)]`
-/

namespace A177265.P14587069860832236558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180188 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177265.P14587069860832236558

namespace A177265

/-- `∑[A180188(∑[n]+1)]` -/
def P14587069860832236558.Spec : Prop :=
  ∀ n, P14587069860832236558.a n = A177265 (n + 1)

end A177265

/-! ## A177265.P10459923571899116875

`∑[xor(1, A000166(n+1))]`
-/

namespace A177265.P10459923571899116875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000166 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177265.P10459923571899116875

namespace A177265

/-- `∑[xor(1, A000166(n+1))]` -/
def P10459923571899116875.Spec : Prop :=
  ∀ n, P10459923571899116875.a n = A177265 (n + 1)

end A177265

/-! ## A177265.P15659579484182687814

`∑[(n+1)*A000166(n)]`
-/

namespace A177265.P15659579484182687814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177265.P15659579484182687814

namespace A177265

/-- `∑[(n+1)*A000166(n)]` -/
def P15659579484182687814.Spec : Prop :=
  ∀ n, P15659579484182687814.a n = A177265 (n + 1)

end A177265

/-! ## A177265.P59607607013994281

`∑[abs(1-A182386(n+1))]`
-/

namespace A177265.P59607607013994281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A182386 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177265.P59607607013994281

namespace A177265

/-- `∑[abs(1-A182386(n+1))]` -/
def P59607607013994281.Spec : Prop :=
  ∀ n, P59607607013994281.a n = A177265 (n + 1)

end A177265

/-! ## A177265.P18386001486192389620

`∑[(n+1)*abs(A182386(n))]`
-/

namespace A177265.P18386001486192389620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A182386 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177265.P18386001486192389620

namespace A177265

/-- `∑[(n+1)*abs(A182386(n))]` -/
def P18386001486192389620.Spec : Prop :=
  ∀ n, P18386001486192389620.a n = A177265 (n + 1)

end A177265

/-!
# A177267: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having genus k (see first comment for definition of genus).

The programs for A177267, there is no canonical definition to state claims against.
-/

/-! ## A177267.P16866336680497464477

`A178517(n+1)+A178514(n+1)`
-/

namespace A177267.P16866336680497464477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178517 (n + 1) + A178514 (n + 1)

end

end A177267.P16866336680497464477

/-! ## A177267.P2062214366613793919

`A122890(A099375(n)+A043320(n+1))`
-/

namespace A177267.P2062214366613793919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (A099375 n + A043320 (n + 1)).toNat

end

end A177267.P2062214366613793919

/-! ## A177267.P4524222369064194396

`A122890(A187829(n+1)+A099375(n))`
-/

namespace A177267.P4524222369064194396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (A187829 (n + 1) + A099375 n).toNat

end

end A177267.P4524222369064194396

/-! ## A177267.P7130973681226700414

`A158830(A187829(n+1)+A002024(n+1))`
-/

namespace A177267.P7130973681226700414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158830 (A187829 (n + 1) + A002024 (n + 1)).toNat

end

end A177267.P7130973681226700414

/-!
# A177269: a(n) = 1 + sum{k=1 to n} A177268(k).

The programs for A177269, there is no canonical definition to state claims against.
-/

/-! ## A177269.P14030327173216909167

`∑[A177268(n+2)]+1`
-/

namespace A177269.P14030327173216909167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177268 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A177269.P14030327173216909167

/-! ## A177269.P7130488657756226164

`∑[A177268(A028310(n)+2)]`
-/

namespace A177269.P7130488657756226164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177268 (A028310 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177269.P7130488657756226164

/-! ## A177269.P2926001630631617894

`∑[A177268(A052938(A103517(n)))]`
-/

namespace A177269.P2926001630631617894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177268 (A052938 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177269.P2926001630631617894

/-! ## A177269.P11341102713066707406

`A020725(∑[A177268(n+2)])`
-/

namespace A177269.P11341102713066707406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177268 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177269.P11341102713066707406

/-!
# A177270: Decimal expansion of (684125+sqrt(635918528029))/1033802.

The programs for A177270, there is no canonical definition to state claims against.
-/

/-! ## A177270.P12902518053680929893

`A060997(n+1)^A107688(A000041(n))`
-/

namespace A177270.P12902518053680929893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060997 (n + 1) : ℚ) ^ (A107688 (A000041 n).toNat : ℤ)

end

end A177270.P12902518053680929893

/-! ## A177270.P3828078094478639748

`A349797(A164896(n+4))+A060997(n+1)`
-/

namespace A177270.P3828078094478639748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A164896 (n + 4)).toNat + A060997 (n + 1)

end

end A177270.P3828078094478639748

/-! ## A177270.P11666738623583913057

`A060997(∑[A059196(2*n+1)²])`
-/

namespace A177270.P11666738623583913057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059196 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060997 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177270.P11666738623583913057

/-! ## A177270.P9577711280028983825

`A060997(A059196(2*n+1)²+n)`
-/

namespace A177270.P9577711280028983825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060997 (A059196 (2 * n + 1) ^ 2 + (n : ℤ)).toNat

end

end A177270.P9577711280028983825

/-! ## A177270.P11771203365458264396

`A279485(A063267(n))+A060997(n+1)`
-/

namespace A177270.P11771203365458264396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279485 (A063267 n).toNat + A060997 (n + 1)

end

end A177270.P11771203365458264396

/-!
# A177274: Periodic sequence: Repeat 1, 2, 3, 4, 5, 6, 7, 8, 9.

The programs for A177274, the canonical program `A177274.P8773547489525017285` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177274 has offset 0).

The definition of A177274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177274.P8773547489525017285

`n%9+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177274

/-- `n%9+1` -/
def P8773547489525017285.Spec : Prop :=
  ∀ n, (P8773547489525017285.a n : ℤ) = A177274 n

theorem P8773547489525017285.correct : P8773547489525017285.Spec := by
  intro n
  simp only [A177274]

end A177274

/-!
# A177276: Triangle T(n,k) with the coefficient [x^k] of the polynomial (1+x^2)^n + 2*n*x*(1+x^2)^(n-1) in row n, column k, 0<=k<=2n.

The programs for A177276, there is no canonical definition to state claims against.
-/

/-! ## A177276.P4945632708644347087

`A000034(A028391(n))*A211226(A161983(n))`
-/

namespace A177276.P4945632708644347087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028391 n).toNat * A211226 (A161983 n).toNat

end

end A177276.P4945632708644347087

/-! ## A177276.P17904745425457165066

`A000034(A028392(n))*A211226(A161983(n))`
-/

namespace A177276.P17904745425457165066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028392 n).toNat * A211226 (A161983 n).toNat

end

end A177276.P17904745425457165066

/-! ## A177276.P6411964890319221980

`A000034(A028391(n))*A211226(A316670(n+1))`
-/

namespace A177276.P6411964890319221980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028391 n).toNat * A211226 (A316670 (n + 1)).toNat

end

end A177276.P6411964890319221980

/-! ## A177276.P9950086552736171846

`A000034(A028392(n))*A211226(A316670(n+1))`
-/

namespace A177276.P9950086552736171846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028392 n).toNat * A211226 (A316670 (n + 1)).toNat

end

end A177276.P9950086552736171846

/-! ## A177276.P3317015764570273984

`(2-A071028(n))*A162246(n)`
-/

namespace A177276.P3317015764570273984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A071028 n) * A162246 n

end

end A177276.P3317015764570273984

/-! ## A177276.P12115300062297873857

`2*A162246(n)-A260492(n)`
-/

namespace A177276.P12115300062297873857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162246 n - A260492 n

end

end A177276.P12115300062297873857

/-! ## A177276.P12448721157353923727

`A005843(A162246(n))-A260492(n)`
-/

namespace A177276.P12448721157353923727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A162246 n).toNat - A260492 n

end

end A177276.P12448721157353923727

/-! ## A177276.P14875890951878454415

`A000034(A028391(n))*A162246(n)`
-/

namespace A177276.P14875890951878454415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028391 n).toNat * A162246 n

end

end A177276.P14875890951878454415

/-! ## A177276.P17458354054409813443

`A000034(A028392(n))*A162246(n)`
-/

namespace A177276.P17458354054409813443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028392 n).toNat * A162246 n

end

end A177276.P17458354054409813443

/-!
# A177277: Partial sums of round(n^2/28).

The programs for A177277, the canonical program `A177277.P5252277579716736734` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177277 has offset 0).

The definition of A177277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177277.P5252277579716736734

`round(n*(n+2)*(2*n-1)/168)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177277

/-- `round(n*(n+2)*(2*n-1)/168)` -/
def P5252277579716736734.Spec : Prop :=
  ∀ n, P5252277579716736734.a n = A177277 n

theorem P5252277579716736734.correct : P5252277579716736734.Spec := by
  intro n
  simp only [A177277]

end A177277

/-! ## A177277.P16306778719976068079

`∑[round(A002620(n)/7)]`
-/

namespace A177277.P16306778719976068079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002620 n : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177277.P16306778719976068079

namespace A177277

/-- `∑[round(A002620(n)/7)]` -/
def P16306778719976068079.Spec : Prop :=
  ∀ n, P16306778719976068079.a n = A177277 n

end A177277

/-! ## A177277.P12706009801393730138

`A051889(A011895(n))`
-/

namespace A177277.P12706009801393730138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A011895 n).toNat

end

end A177277.P12706009801393730138

namespace A177277

/-- `A051889(A011895(n))` -/
def P12706009801393730138.Spec : Prop :=
  ∀ n, P12706009801393730138.a n = A177277 n

end A177277

/-! ## A177277.P9326053443950816804

`A347697(A068036(n+1))`
-/

namespace A177277.P9326053443950816804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A068036 (n + 1)).toNat

end

end A177277.P9326053443950816804

namespace A177277

/-- `A347697(A068036(n+1))` -/
def P9326053443950816804.Spec : Prop :=
  ∀ n, P9326053443950816804.a n = A177277 n

end A177277

/-! ## A177277.P9132291069492860273

`A347697(A115851(n+1))`
-/

namespace A177277.P9132291069492860273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A115851 (n + 1)).toNat

end

end A177277.P9132291069492860273

namespace A177277

/-- `A347697(A115851(n+1))` -/
def P9132291069492860273.Spec : Prop :=
  ∀ n, P9132291069492860273.a n = A177277 n

end A177277

/-!
# A177282: Number of permutations of 2 copies of 1..n with all adjacent differences <= 1 in absolute value.

The programs for A177282, the canonical program `A177282.P2071249210290223427` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177282 has offset 0).

The definition of A177282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177282.P2071249210290223427

`ogf((1-2x+5x^2-3x^3+2x^4-x^5)/(1-3x+2x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177282

/-- `ogf((1-2x+5x^2-3x^3+2x^4-x^5)/(1-3x+2x^2+x^3-x^4))` -/
def P2071249210290223427.Spec : Prop :=
  ∀ n, P2071249210290223427.a n = A177282 n

theorem P2071249210290223427.correct : P2071249210290223427.Spec := by
  intro n
  simp only [A177282]

end A177282

/-! ## A177282.P1543492870431800991

`2*floor((a(n-1)+a(n-2))/2+n)` with `a(0)=1, a(1)=1`
-/

namespace A177282.P1543492870431800991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * ⌊(a (n - 1) + a (n - 2) : ℚ) / 2 + (n : ℚ)⌋

end

end A177282.P1543492870431800991

namespace A177282

/-- `2*floor((a(n-1)+a(n-2))/2+n)` -/
def P1543492870431800991.Spec : Prop :=
  ∀ n, P1543492870431800991.a n = A177282 n

end A177282

/-! ## A177282.P4575254976052364716

`2*n+a(n-1)+a(n-2)-char[3]` with `a(0)=1, a(1)=1`
-/

namespace A177282.P4575254976052364716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 * n : ℤ) + (a (n - 1) + (a (n - 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)))

end

end A177282.P4575254976052364716

namespace A177282

/-- `2*n+a(n-1)+a(n-2)-char[3]` -/
def P4575254976052364716.Spec : Prop :=
  ∀ n, P4575254976052364716.a n = A177282 n

end A177282

/-! ## A177282.P13107796388974499532

`a(n-1)+a(n-2)-char[3]+n+n` with `a(0)=1, a(1)=1`
-/

namespace A177282.P13107796388974499532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) + (n : ℤ) + (n : ℤ)

end

end A177282.P13107796388974499532

namespace A177282

/-- `a(n-1)+a(n-2)-char[3]+n+n` -/
def P13107796388974499532.Spec : Prop :=
  ∀ n, P13107796388974499532.a n = A177282 n

end A177282

/-! ## A177282.P3441283824834709909

`or(1, 2*n+a(n-1)+a(n-2))-1` with `a(0)=1, a(1)=1`
-/

namespace A177282.P3441283824834709909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 1 ((2 * n : ℤ) + (a (n - 1) + a (n - 2))) - 1

end

end A177282.P3441283824834709909

namespace A177282

/-- `or(1, 2*n+a(n-1)+a(n-2))-1` -/
def P3441283824834709909.Spec : Prop :=
  ∀ n, P3441283824834709909.a n = A177282 n

end A177282

/-! ## A177282.P6649880368425418083

`or(1, a(n-1)+a(n-2)+n+n)-1` with `a(0)=1, a(1)=1`
-/

namespace A177282.P6649880368425418083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 1 (a (n - 1) + (a (n - 2) + (n : ℤ) + (n : ℤ))) - 1

end

end A177282.P6649880368425418083

namespace A177282

/-- `or(1, a(n-1)+a(n-2)+n+n)-1` -/
def P6649880368425418083.Spec : Prop :=
  ∀ n, P6649880368425418083.a n = A177282 n

end A177282

/-! ## A177282.P13455992347878590647

`A324015(n)+A192956(n)`
-/

namespace A177282.P13455992347878590647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 n + A192956 n

end

end A177282.P13455992347878590647

namespace A177282

/-- `A324015(n)+A192956(n)` -/
def P13455992347878590647.Spec : Prop :=
  ∀ n, P13455992347878590647.a n = A177282 n

end A177282

/-!
# A177283: Number of permutations of 2 copies of 1..n with all adjacent differences <= 2 in absolute value.

The programs for A177283, there is no canonical definition to state claims against.
-/

/-! ## A177283.P3790375601011878834

`A110361(A344347(n+2))`
-/

namespace A177283.P3790375601011878834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110361 (A344347 (n + 2)).toNat

end

end A177283.P3790375601011878834

/-!
# A177284: Number of permutations of 2 copies of 1..n with all adjacent differences <= 3 in absolute value.

The programs for A177284, there is no canonical definition to state claims against.
-/

/-! ## A177284.P16686456533556903537

`A298266(A186244(n))`
-/

namespace A177284.P16686456533556903537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298266 (A186244 n).toNat

end

end A177284.P16686456533556903537

/-! ## A177284.P4214703531802235017

`A157632(A179532(n)+A008676(n))`
-/

namespace A177284.P4214703531802235017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157632 (A179532 n + A008676 n).toNat

end

end A177284.P4214703531802235017

/-!
# A177291: Number of permutations of 3 copies of 1..n with all adjacent differences <= 1 in absolute value.

The programs for A177291, the canonical program `A177291.P10485222342885284295` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177291 has offset 0).

The definition of A177291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177291.P10485222342885284295

`ogf((1-6x+22x^2-17x^3+36x^4-50x^5-20x^6-12x^7-8x^8)/(1-7x+9x^2+22x^3-28x^4-36x^5+4x^6+8x^7))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177291

/-- `ogf((1-6x+22x^2-17x^3+36x^4-50x^5-20x^6-12x^7-8x^8)/(1-7x+9x^2+22x^3-28x^4-36x^5+4x^6+8x^7))` -/
def P10485222342885284295.Spec : Prop :=
  ∀ n, P10485222342885284295.a n = A177291 n

theorem P10485222342885284295.correct : P10485222342885284295.Spec := by
  intro n
  simp only [A177291]

end A177291

/-! ## A177291.P16344244168935244816

`A331562(∑[n+4]+2)`
-/

namespace A177291.P16344244168935244816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A177291.P16344244168935244816

namespace A177291

/-- `A331562(∑[n+4]+2)` -/
def P16344244168935244816.Spec : Prop :=
  ∀ n, P16344244168935244816.a n = A177291 n

end A177291

/-! ## A177291.P2692948177986735018

`A331562(A046691(n+2))+A185284(n)`
-/

namespace A177291.P2692948177986735018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A046691 (n + 2)).toNat + A185284 n

end

end A177291.P2692948177986735018

namespace A177291

/-- `A331562(A046691(n+2))+A185284(n)` -/
def P2692948177986735018.Spec : Prop :=
  ∀ n, P2692948177986735018.a n = A177291 n

end A177291

/-! ## A177291.P5029118896054488655

`A331562(A046691(n+2))%A090728(n)`
-/

namespace A177291.P5029118896054488655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331562 (A046691 (n + 2)).toNat) (A090728 n)

end

end A177291.P5029118896054488655

namespace A177291

/-- `A331562(A046691(n+2))%A090728(n)` -/
def P5029118896054488655.Spec : Prop :=
  ∀ n, P5029118896054488655.a n = A177291 n

end A177291

/-! ## A177291.P17892105580402471569

`lcm(A057077(n), A331562(A046691(n+2)))`
-/

namespace A177291.P17892105580402471569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A331562 (A046691 (n + 2)).toNat)

end

end A177291.P17892105580402471569

namespace A177291

/-- `lcm(A057077(n), A331562(A046691(n+2)))` -/
def P17892105580402471569.Spec : Prop :=
  ∀ n, (P17892105580402471569.a n : ℤ) = A177291 n

end A177291

/-!
# A177292: Number of permutations of 3 copies of 1..n with all adjacent differences <= 2 in absolute value.

The programs for A177292, there is no canonical definition to state claims against.
-/

/-! ## A177292.P4795262366411724073

`∏{p}[A329259(2*n), A360719(#)]`
-/

namespace A177292.P4795262366411724073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329259 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A360719 p

end

end A177292.P4795262366411724073

/-!
# A177298: Number of permutations of 4 copies of 1..n with all adjacent differences <= 1 in absolute value.

The programs for A177298, there is no canonical definition to state claims against.
-/

/-! ## A177298.P5705429174377396012

`A331562(A052905(n+2))`
-/

namespace A177298.P5705429174377396012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A052905 (n + 2)).toNat

end

end A177298.P5705429174377396012

/-! ## A177298.P4714374892666982389

`A331562(eq[3, A129713(n)])`
-/

namespace A177298.P4714374892666982389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177298.P4714374892666982389

/-! ## A177298.P6003011810061400886

`A331562(eq[4, A025581(n)])`
-/

namespace A177298.P6003011810061400886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177298.P6003011810061400886

/-! ## A177298.P8864474119685330429

`A331562(A141214(n+2)-2)`
-/

namespace A177298.P8864474119685330429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A141214 (n + 2) - 2).toNat

end

end A177298.P8864474119685330429

/-! ## A177298.P17374263121911342416

`A331562(A056000(n+1)+5)`
-/

namespace A177298.P17374263121911342416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A056000 (n + 1) + 5).toNat

end

end A177298.P17374263121911342416

