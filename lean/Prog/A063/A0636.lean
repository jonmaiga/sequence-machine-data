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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
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
# A063636: a(n) = floor((1287/545)^n).

The programs for A063636, there is no canonical definition to state claims against.
-/

/-! ## A063636.P11454232018786129150

`A066658(A255461(n))`
-/

namespace A063636.P11454232018786129150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066658 (A255461 n).toNat

end

end A063636.P11454232018786129150

/-! ## A063636.P9353948486868157133

`A066658(A003699(n+1))`
-/

namespace A063636.P9353948486868157133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066658 (A003699 (n + 1)).toNat

end

end A063636.P9353948486868157133

/-! ## A063636.P8272094710708861626

`A038567(∑[∑[A154244(n+1)]])`
-/

namespace A063636.P8272094710708861626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154244 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063636.P8272094710708861626

/-!
# A063637: Primes p such that p+2 is a semiprime.

The programs for A063637, there is no canonical definition to state claims against.
-/

/-! ## A063637.P12010358209286503044

`A062721(n+1)-2`
-/

namespace A063637.P12010358209286503044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1) - 2

end

end A063637.P12010358209286503044

/-! ## A063637.P11064040019134817629

`∪[A091180(n+1), A117242(n+1)]`
-/

namespace A063637.P11064040019134817629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063637.P11064040019134817629

/-! ## A063637.P3957155390859667637

`∪[A043326(n+1), A146981(n+1)]-2`
-/

namespace A063637.P3957155390859667637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146981 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A063637.P3957155390859667637

/-! ## A063637.P5659511995928492257

`A280560(A053585(2*n+3))+A062721(n+1)`
-/

namespace A063637.P5659511995928492257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A053585 (2 * n + 3)).toNat + A062721 (n + 1)

end

end A063637.P5659511995928492257

/-! ## A063637.P13564368269986008256

`p?[A157931(n+1)-2]`
-/

namespace A063637.P13564368269986008256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063637.P13564368269986008256

/-! ## A063637.P2227991668634445353

`∩[A067774(n+1), A109611(n+1)]`
-/

namespace A063637.P2227991668634445353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063637.P2227991668634445353

/-! ## A063637.P12425949328060464256

`A280560(A064989(3*n+4))+A062721(n+1)`
-/

namespace A063637.P12425949328060464256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A064989 (3 * n + 4)).toNat + A062721 (n + 1)

end

end A063637.P12425949328060464256

/-! ## A063637.P4819534238782548779

`∩[A052147(n+1), A157931(n+1)]-2`
-/

namespace A063637.P4819534238782548779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A063637.P4819534238782548779

/-! ## A063637.P15289463220814077647

`record[A000040(n+1)/(A106667(n+1)+2)]`
-/

namespace A063637.P15289463220814077647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A106667 (n + 1) + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063637.P15289463220814077647

/-! ## A063637.P9888941472005129161

`record[A020639(A157931(n+1)-2)]`
-/

namespace A063637.P9888941472005129161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157931 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063637.P9888941472005129161

/-! ## A063637.P17096109435013713670

`p?[n*A000720(A001222(n+2))]`
-/

namespace A063637.P17096109435013713670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000720 (A001222 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063637.P17096109435013713670

/-! ## A063637.P3531039226806408587

`p?[A001358(n+1)-2]`
-/

namespace A063637.P3531039226806408587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063637.P3531039226806408587

/-! ## A063637.P14721741013029405613

`record[A006530(A001358(n+1)-2)]`
-/

namespace A063637.P14721741013029405613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001358 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063637.P14721741013029405613

/-! ## A063637.P11939911068065590115

`record[A008472(A001358(n+1)-2)]`
-/

namespace A063637.P11939911068065590115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A001358 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063637.P11939911068065590115

/-! ## A063637.P5605432427083400753

`record[A020639(A001358(n+1)-2)]`
-/

namespace A063637.P5605432427083400753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001358 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063637.P5605432427083400753

/-! ## A063637.P498260596962840013

`p?[n*A064911(n+2)]`
-/

namespace A063637.P498260596962840013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064911 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063637.P498260596962840013

/-! ## A063637.P14275161268630224367

`eq[n, A006530(2-A001222(n+2)+n)]`
-/

namespace A063637.P14275161268630224367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 - A001222 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063637.P14275161268630224367

/-! ## A063637.P18301006607685446682

`eq[A001222(n+3)+n-2, A000010(n+1)]+1`
-/

namespace A063637.P18301006607685446682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3) + ((n : ℤ) - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063637.P18301006607685446682

/-! ## A063637.P18366750416605752206

`eq[A006530(n+1)+A001222(n+3), n+3]+1`
-/

namespace A063637.P18366750416605752206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + A001222 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A063637.P18366750416605752206

/-! ## A063637.P1357723537037265379

`eq[n+2, A000203(n+3-A001222(n+3))]+1`
-/

namespace A063637.P1357723537037265379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 3 : ℤ) - A001222 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063637.P1357723537037265379

/-!
# A063638: Primes p such that p-2 is a semiprime.

The programs for A063638, there is no canonical definition to state claims against.
-/

/-! ## A063638.P9876510505366400998

`A241809(n+1)+2`
-/

namespace A063638.P9876510505366400998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1) + 2

end

end A063638.P9876510505366400998

/-! ## A063638.P6041251742128063707

`A000040(eq[2, A001222(A000040(n+2)-2)]+2)`
-/

namespace A063638.P6041251742128063707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A063638.P6041251742128063707

/-! ## A063638.P11645881007938456010

`p?[A001358(n+1)+2]`
-/

namespace A063638.P11645881007938456010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063638.P11645881007938456010

/-! ## A063638.P6483036989967223206

`record[A006530(A001358(n+3)+2)]`
-/

namespace A063638.P6483036989967223206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001358 (n + 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063638.P6483036989967223206

/-! ## A063638.P9359828267825937367

`∩[A001358(n+1), A040976(n+1)]+2`
-/

namespace A063638.P9359828267825937367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A063638.P9359828267825937367

/-! ## A063638.P7401853582137493527

`∩[A001358(n+1), A158458(n+1)]+2`
-/

namespace A063638.P7401853582137493527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A063638.P7401853582137493527

/-! ## A063638.P16550965147076531279

`∩[A001358(n+1), A179384(n+1)]+2`
-/

namespace A063638.P16550965147076531279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A063638.P16550965147076531279

/-! ## A063638.P8707388736230121331

`∩[A001358(n+1), A238526(n+1)]+2`
-/

namespace A063638.P8707388736230121331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A063638.P8707388736230121331

/-! ## A063638.P16515557959036444016

`p?[A046315(n+1)+2]`
-/

namespace A063638.P16515557959036444016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063638.P16515557959036444016

/-! ## A063638.P17662616584213594073

`record[A001414(A046315(n+1)+2)]`
-/

namespace A063638.P17662616584213594073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A046315 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063638.P17662616584213594073

/-! ## A063638.P14707220721875313909

`∩[A040976(n+1), A046315(n+1)]+2`
-/

namespace A063638.P14707220721875313909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A063638.P14707220721875313909

/-! ## A063638.P2235844833536745535

`∩[A046315(n+1), A158458(n+1)]+2`
-/

namespace A063638.P2235844833536745535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A063638.P2235844833536745535

/-! ## A063638.P16564558535052509486

`∩[A046315(n+1), A179384(n+1)]+2`
-/

namespace A063638.P16564558535052509486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A063638.P16564558535052509486

/-! ## A063638.P331764810301131442

`∩[A046315(n+1), A238526(n+1)]+2`
-/

namespace A063638.P331764810301131442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A063638.P331764810301131442

/-! ## A063638.P8449017081310373088

`p?[A088707(n+1)+1]`
-/

namespace A063638.P8449017081310373088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063638.P8449017081310373088

/-! ## A063638.P780040351237637657

`p?[A176540(n+2)+2]`
-/

namespace A063638.P780040351237637657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063638.P780040351237637657

/-! ## A063638.P16638682599964433616

`∩[A158458(n+1), A176540(n+1)]+2`
-/

namespace A063638.P16638682599964433616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A063638.P16638682599964433616

/-! ## A063638.P9717407065535745380

`p?[A000040(n+1)+2-A065870(n+1)]`
-/

namespace A063638.P9717407065535745380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (2 - A065870 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063638.P9717407065535745380

/-!
# A063639: Primes of the form p*q*r - 1, where p, q and r are primes (not necessarily distinct).

The programs for A063639, the canonical program `A063639.P551337064723395578` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063639 has offset 1).

The definition of A063639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2930 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063639.P551337064723395578

`p?[2*A001358(n+1)-1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A063639

/-- `p?[2*A001358(n+1)-1]` -/
def P551337064723395578.Spec : Prop :=
  ∀ n, P551337064723395578.a n = A063639 (n + 1)

theorem P551337064723395578.correct : P551337064723395578.Spec := by
  intro n
  simp only [A063639, Nat.add_sub_cancel]

end A063639

/-! ## A063639.P4768782183219993082

`p?[A108815(n+1)]`
-/

namespace A063639.P4768782183219993082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063639.P4768782183219993082

namespace A063639

/-- `p?[A108815(n+1)]` -/
def P4768782183219993082.Spec : Prop :=
  ∀ n, P4768782183219993082.a n = A063639 (n + 1)

end A063639

/-! ## A063639.P10684460123331050231

`p?[floor(sqrt(2*A075875(n+1)))]`
-/

namespace A063639.P10684460123331050231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A075875 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063639.P10684460123331050231

namespace A063639

/-- `p?[floor(sqrt(2*A075875(n+1)))]` -/
def P10684460123331050231.Spec : Prop :=
  ∀ n, P10684460123331050231.a n = A063639 (n + 1)

end A063639

/-! ## A063639.P5337194722199459907

`∩[A079152(n+1), A108815(n+1)]`
-/

namespace A063639.P5337194722199459907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P5337194722199459907

namespace A063639

/-- `∩[A079152(n+1), A108815(n+1)]` -/
def P5337194722199459907.Spec : Prop :=
  ∀ n, (P5337194722199459907.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P13109141527364841924

`∩[A034849(n+1), A079150(n+1)]`
-/

namespace A063639.P13109141527364841924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P13109141527364841924

namespace A063639

/-- `∩[A034849(n+1), A079150(n+1)]` -/
def P13109141527364841924.Spec : Prop :=
  ∀ n, (P13109141527364841924.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P15976877112642824462

`∩[A034849(n+1), A108815(n+1)]`
-/

namespace A063639.P15976877112642824462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P15976877112642824462

namespace A063639

/-- `∩[A034849(n+1), A108815(n+1)]` -/
def P15976877112642824462.Spec : Prop :=
  ∀ n, (P15976877112642824462.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P1274223065087067069

`∩[A000040(n+1), A108815(n+1)]`
-/

namespace A063639.P1274223065087067069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P1274223065087067069

namespace A063639

/-- `∩[A000040(n+1), A108815(n+1)]` -/
def P1274223065087067069.Spec : Prop :=
  ∀ n, (P1274223065087067069.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P14464147344195876516

`∩[A004139(n+1), A108815(n+1)]`
-/

namespace A063639.P14464147344195876516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P14464147344195876516

namespace A063639

/-- `∩[A004139(n+1), A108815(n+1)]` -/
def P14464147344195876516.Spec : Prop :=
  ∀ n, (P14464147344195876516.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P2781763952675838997

`∩[A006005(n+1), A108815(n+1)]`
-/

namespace A063639.P2781763952675838997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P2781763952675838997

namespace A063639

/-- `∩[A006005(n+1), A108815(n+1)]` -/
def P2781763952675838997.Spec : Prop :=
  ∀ n, (P2781763952675838997.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P17493758525657420361

`∩[A008578(n+1), A108815(n+1)]`
-/

namespace A063639.P17493758525657420361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P17493758525657420361

namespace A063639

/-- `∩[A008578(n+1), A108815(n+1)]` -/
def P17493758525657420361.Spec : Prop :=
  ∀ n, (P17493758525657420361.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P4249885529439708607

`∩[A045319(n+1), A108815(n+1)]`
-/

namespace A063639.P4249885529439708607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P4249885529439708607

namespace A063639

/-- `∩[A045319(n+1), A108815(n+1)]` -/
def P4249885529439708607.Spec : Prop :=
  ∀ n, (P4249885529439708607.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P3192532722878678610

`∩[A045344(n+1), A108815(n+1)]`
-/

namespace A063639.P3192532722878678610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P3192532722878678610

namespace A063639

/-- `∩[A045344(n+1), A108815(n+1)]` -/
def P3192532722878678610.Spec : Prop :=
  ∀ n, (P3192532722878678610.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P12803193719923135184

`∩[A046022(n+1), A108815(n+1)]`
-/

namespace A063639.P12803193719923135184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P12803193719923135184

namespace A063639

/-- `∩[A046022(n+1), A108815(n+1)]` -/
def P12803193719923135184.Spec : Prop :=
  ∀ n, (P12803193719923135184.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P4766798723130524784

`∩[A051948(n+1), A108815(n+1)]`
-/

namespace A063639.P4766798723130524784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P4766798723130524784

namespace A063639

/-- `∩[A051948(n+1), A108815(n+1)]` -/
def P4766798723130524784.Spec : Prop :=
  ∀ n, (P4766798723130524784.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P16293219344107664593

`∩[A065091(n+1), A108815(n+1)]`
-/

namespace A063639.P16293219344107664593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P16293219344107664593

namespace A063639

/-- `∩[A065091(n+1), A108815(n+1)]` -/
def P16293219344107664593.Spec : Prop :=
  ∀ n, (P16293219344107664593.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P13644690037867886774

`∩[A161428(n+1), A108815(n+1)]`
-/

namespace A063639.P13644690037867886774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P13644690037867886774

namespace A063639

/-- `∩[A161428(n+1), A108815(n+1)]` -/
def P13644690037867886774.Spec : Prop :=
  ∀ n, (P13644690037867886774.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P13414647717434759055

`∩[A062972(n+1), A108815(n+1)]`
-/

namespace A063639.P13414647717434759055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P13414647717434759055

namespace A063639

/-- `∩[A062972(n+1), A108815(n+1)]` -/
def P13414647717434759055.Spec : Prop :=
  ∀ n, (P13414647717434759055.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P6348295112651092416

`∩[A067133(n+1), A108815(n+1)]`
-/

namespace A063639.P6348295112651092416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P6348295112651092416

namespace A063639

/-- `∩[A067133(n+1), A108815(n+1)]` -/
def P6348295112651092416.Spec : Prop :=
  ∀ n, (P6348295112651092416.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P2533275919276183425

`∩[A174090(n+1), A108815(n+1)]`
-/

namespace A063639.P2533275919276183425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P2533275919276183425

namespace A063639

/-- `∩[A174090(n+1), A108815(n+1)]` -/
def P2533275919276183425.Spec : Prop :=
  ∀ n, (P2533275919276183425.a n : ℤ) = A063639 (n + 1)

end A063639

/-! ## A063639.P8165488853717712437

`∩[A246551(n+1), A108815(n+1)]`
-/

namespace A063639.P8165488853717712437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063639.P8165488853717712437

namespace A063639

/-- `∩[A246551(n+1), A108815(n+1)]` -/
def P8165488853717712437.Spec : Prop :=
  ∀ n, (P8165488853717712437.a n : ℤ) = A063639 (n + 1)

end A063639

/-!
# A063640: Primes of form p*q*r + 1, where p, q and r are primes.

The programs for A063640, there is no canonical definition to state claims against.
-/

/-! ## A063640.P4602926018279523933

`2*A367947(n+1)+1`
-/

namespace A063640.P4602926018279523933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A367947 (n + 1) + 1

end

end A063640.P4602926018279523933

/-! ## A063640.P16241895248940458220

`p?[2*A001358(n+1)+1]`
-/

namespace A063640.P16241895248940458220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001358 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063640.P16241895248940458220

/-! ## A063640.P10232446074491131313

`p?[A108815(n+1)+1]`
-/

namespace A063640.P10232446074491131313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063640.P10232446074491131313

/-! ## A063640.P16092807356000409266

`∩[A079151(n+1), A099184(n+2)]`
-/

namespace A063640.P16092807356000409266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P16092807356000409266

/-! ## A063640.P8152465396614839142

`∩[A000040(n+1), A108815(n+1)+1]`
-/

namespace A063640.P8152465396614839142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P8152465396614839142

/-! ## A063640.P1511465173364788424

`∩[A004139(n+1), A108815(n+1)+1]`
-/

namespace A063640.P1511465173364788424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P1511465173364788424

/-! ## A063640.P6619913755548708073

`∩[A006005(n+1), A108815(n+1)+1]`
-/

namespace A063640.P6619913755548708073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P6619913755548708073

/-! ## A063640.P12691737069397348028

`∩[A008578(n+1), A108815(n+1)+1]`
-/

namespace A063640.P12691737069397348028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P12691737069397348028

/-! ## A063640.P3441741496918971618

`∩[A045319(n+1), A108815(n+1)+1]`
-/

namespace A063640.P3441741496918971618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P3441741496918971618

/-! ## A063640.P11764480282133024386

`∩[A045344(n+1), A108815(n+1)+1]`
-/

namespace A063640.P11764480282133024386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P11764480282133024386

/-! ## A063640.P13068546276788420953

`∩[A046022(n+1), A108815(n+1)+1]`
-/

namespace A063640.P13068546276788420953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P13068546276788420953

/-! ## A063640.P10439171623875632818

`∩[A065091(n+1), A108815(n+1)+1]`
-/

namespace A063640.P10439171623875632818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P10439171623875632818

/-! ## A063640.P5577305132076954631

`∩[A084111(n+1), A108815(n+1)+1]`
-/

namespace A063640.P5577305132076954631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P5577305132076954631

/-! ## A063640.P12520504672667677597

`record[A006530(2*A001358(n+2)+1)]`
-/

namespace A063640.P12520504672667677597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A001358 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063640.P12520504672667677597

/-! ## A063640.P3669039532525594597

`p?[(n+1)*(A001222(A000010(n+1))-2)]`
-/

namespace A063640.P3669039532525594597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001222 (A000010 (n + 1)).toNat - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063640.P3669039532525594597

/-! ## A063640.P15873659943223781517

`p?[A075818(n+1)+1]`
-/

namespace A063640.P15873659943223781517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063640.P15873659943223781517

/-! ## A063640.P9100206322174469578

`p?[2*A088707(n+1)-1]`
-/

namespace A063640.P9100206322174469578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088707 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063640.P9100206322174469578

/-! ## A063640.P7743044946526167770

`record[A020639(A075818(n+2)+1)]`
-/

namespace A063640.P7743044946526167770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A075818 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063640.P7743044946526167770

/-! ## A063640.P2835601658997347028

`∩[A079151(n+1), A339912(n+1)]`
-/

namespace A063640.P2835601658997347028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P2835601658997347028

/-! ## A063640.P10775137141511077521

`∪[A090866(n+1), A104006(n+1)]`
-/

namespace A063640.P10775137141511077521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063640.P10775137141511077521

/-!
# A063641: Primes of form p*q*r - 2, where p, q and r are primes (not necessarily distinct).

The programs for A063641, the canonical program `A063641.P1389479516569409955` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063641 has offset 1).

The definition of A063641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063641.P8650387971566252813

`A000040(eq[3, A001222(A068499(n+1)+3)])`
-/

namespace A063641.P8650387971566252813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A068499 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063641.P8650387971566252813

namespace A063641

/-- `A000040(eq[3, A001222(A068499(n+1)+3)])` -/
def P8650387971566252813.Spec : Prop :=
  ∀ n, P8650387971566252813.a n = A063641 (n + 1)

end A063641

/-! ## A063641.P1389479516569409955

`p?[A046316(n+1)-2]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A063641

/-- `p?[A046316(n+1)-2]` -/
def P1389479516569409955.Spec : Prop :=
  ∀ n, P1389479516569409955.a n = A063641 (n + 1)

theorem P1389479516569409955.correct : P1389479516569409955.Spec := by
  intro n
  simp only [A063641, Nat.add_sub_cancel]

end A063641

/-! ## A063641.P14268415509904129729

`record[A006530(A046316(n+2)-2)]`
-/

namespace A063641.P14268415509904129729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046316 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063641.P14268415509904129729

namespace A063641

/-- `record[A006530(A046316(n+2)-2)]` -/
def P14268415509904129729.Spec : Prop :=
  ∀ n, P14268415509904129729.a n = A063641 (n + 1)

end A063641

/-! ## A063641.P17668103823312965820

`record[A020639(A046316(n+2)-2)]`
-/

namespace A063641.P17668103823312965820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046316 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063641.P17668103823312965820

namespace A063641

/-- `record[A020639(A046316(n+2)-2)]` -/
def P17668103823312965820.Spec : Prop :=
  ∀ n, P17668103823312965820.a n = A063641 (n + 1)

end A063641

/-! ## A063641.P13747778583573535658

`∩[A000040(n+1), A046316(n+1)-2]`
-/

namespace A063641.P13747778583573535658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063641.P13747778583573535658

namespace A063641

/-- `∩[A000040(n+1), A046316(n+1)-2]` -/
def P13747778583573535658.Spec : Prop :=
  ∀ n, (P13747778583573535658.a n : ℤ) = A063641 (n + 1)

end A063641

/-! ## A063641.P12696355796700696969

`eq[n, A006530(n+3-A001222(n+2))]`
-/

namespace A063641.P12696355796700696969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 3 : ℤ) - A001222 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063641.P12696355796700696969

namespace A063641

/-- `eq[n, A006530(n+3-A001222(n+2))]` -/
def P12696355796700696969.Spec : Prop :=
  ∀ n, (P12696355796700696969.a n : ℤ) = A063641 (n + 1)

end A063641

/-! ## A063641.P13637066686712803325

`eq[n, A000010(n+3-A001222(n+2))+1]`
-/

namespace A063641.P13637066686712803325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 3 : ℤ) - A001222 (n + 2)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063641.P13637066686712803325

namespace A063641

/-- `eq[n, A000010(n+3-A001222(n+2))+1]` -/
def P13637066686712803325.Spec : Prop :=
  ∀ n, (P13637066686712803325.a n : ℤ) = A063641 (n + 1)

end A063641

/-! ## A063641.P6649891240611963899

`eq[n+3, A001222(n+3)+A000010(n+1)]+1`
-/

namespace A063641.P6649891240611963899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3) + A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063641.P6649891240611963899

namespace A063641

/-- `eq[n+3, A001222(n+3)+A000010(n+1)]+1` -/
def P6649891240611963899.Spec : Prop :=
  ∀ n, (P6649891240611963899.a n : ℤ) = A063641 (n + 1)

end A063641

/-! ## A063641.P8618250406851210920

`eq[n, A000203(n+2-A001222(n+1))]-1`
-/

namespace A063641.P8618250406851210920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 2 : ℤ) - A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A063641.P8618250406851210920

namespace A063641

/-- `eq[n, A000203(n+2-A001222(n+1))]-1` -/
def P8618250406851210920.Spec : Prop :=
  ∀ n, P8618250406851210920.a n = A063641 (n + 1)

end A063641

/-! ## A063641.P14580713030508338099

`p?[A014612(n+1)-2]`
-/

namespace A063641.P14580713030508338099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063641.P14580713030508338099

namespace A063641

/-- `p?[A014612(n+1)-2]` -/
def P14580713030508338099.Spec : Prop :=
  ∀ n, P14580713030508338099.a n = A063641 (n + 1)

end A063641

/-! ## A063641.P12870463848895094101

`p?[eq[3, A001222(n+2)]]`
-/

namespace A063641.P12870463848895094101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A063641.P12870463848895094101

namespace A063641

/-- `p?[eq[3, A001222(n+2)]]` -/
def P12870463848895094101.Spec : Prop :=
  ∀ n, (P12870463848895094101.a n : ℤ) = A063641 (n + 1)

end A063641

/-! ## A063641.P16202781225147735032

`p?[eq[2, A285726(n+2)]]`
-/

namespace A063641.P16202781225147735032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A063641.P16202781225147735032

namespace A063641

/-- `p?[eq[2, A285726(n+2)]]` -/
def P16202781225147735032.Spec : Prop :=
  ∀ n, (P16202781225147735032.a n : ℤ) = A063641 (n + 1)

end A063641

/-! ## A063641.P13209063809803581165

`p?[n*A101605(n+2)]`
-/

namespace A063641.P13209063809803581165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063641.P13209063809803581165

namespace A063641

/-- `p?[n*A101605(n+2)]` -/
def P13209063809803581165.Spec : Prop :=
  ∀ n, P13209063809803581165.a n = A063641 (n + 1)

end A063641

/-! ## A063641.P4623047526558164792

`record[A014963(A046316(n+2)-2)]`
-/

namespace A063641.P4623047526558164792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A046316 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063641.P4623047526558164792

namespace A063641

/-- `record[A014963(A046316(n+2)-2)]` -/
def P4623047526558164792.Spec : Prop :=
  ∀ n, P4623047526558164792.a n = A063641 (n + 1)

end A063641

/-! ## A063641.P8283722839328647409

`eq[n, A014963(n+3-A001222(n+2))]`
-/

namespace A063641.P8283722839328647409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 3 : ℤ) - A001222 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063641.P8283722839328647409

namespace A063641

/-- `eq[n, A014963(n+3-A001222(n+2))]` -/
def P8283722839328647409.Spec : Prop :=
  ∀ n, (P8283722839328647409.a n : ℤ) = A063641 (n + 1)

end A063641

/-! ## A063641.P17911594577605585294

`p?[A000720(A124268(n+1))-2]`
-/

namespace A063641.P17911594577605585294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124268 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063641.P17911594577605585294

namespace A063641

/-- `p?[A000720(A124268(n+1))-2]` -/
def P17911594577605585294.Spec : Prop :=
  ∀ n, P17911594577605585294.a n = A063641 (n + 1)

end A063641

/-! ## A063641.P13073983843150297770

`eq[A284289(2*n), A284289(A032742(n+2))]`
-/

namespace A063641.P13073983843150297770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A032742 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063641.P13073983843150297770

namespace A063641

/-- `eq[A284289(2*n), A284289(A032742(n+2))]` -/
def P13073983843150297770.Spec : Prop :=
  ∀ n, (P13073983843150297770.a n : ℤ) = A063641 (n + 1)

end A063641

/-! ## A063641.P7948959455238119466

`eq[A054576(A257143(2*n)), A101605(n+2)]`
-/

namespace A063641.P7948959455238119466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A257143 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063641.P7948959455238119466

namespace A063641

/-- `eq[A054576(A257143(2*n)), A101605(n+2)]` -/
def P7948959455238119466.Spec : Prop :=
  ∀ n, (P7948959455238119466.a n : ℤ) = A063641 (n + 1)

end A063641

/-!
# A063642: Primes of form p*q*r + 2, where p, q and r are primes (not necessarily distinct).

The programs for A063642, the canonical program `A063642.P3584060890965356888` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063642 has offset 1).

The definition of A063642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063642.P15136558745016378767

`p?[A211410(n+1)+2]`
-/

namespace A063642.P15136558745016378767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211410 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063642.P15136558745016378767

namespace A063642

/-- `p?[A211410(n+1)+2]` -/
def P15136558745016378767.Spec : Prop :=
  ∀ n, P15136558745016378767.a n = A063642 (n + 1)

end A063642

/-! ## A063642.P3584060890965356888

`p?[A046316(n+1)+2]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A063642

/-- `p?[A046316(n+1)+2]` -/
def P3584060890965356888.Spec : Prop :=
  ∀ n, P3584060890965356888.a n = A063642 (n + 1)

theorem P3584060890965356888.correct : P3584060890965356888.Spec := by
  intro n
  simp only [A063642, Nat.add_sub_cancel]

end A063642

/-! ## A063642.P15238348026250309927

`record[A006530(A046316(n+1)+2)]`
-/

namespace A063642.P15238348026250309927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046316 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063642.P15238348026250309927

namespace A063642

/-- `record[A006530(A046316(n+1)+2)]` -/
def P15238348026250309927.Spec : Prop :=
  ∀ n, P15238348026250309927.a n = A063642 (n + 1)

end A063642

/-! ## A063642.P6498463510061773045

`record[A020639(A046316(n+1)+2)]`
-/

namespace A063642.P6498463510061773045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046316 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063642.P6498463510061773045

namespace A063642

/-- `record[A020639(A046316(n+1)+2)]` -/
def P6498463510061773045.Spec : Prop :=
  ∀ n, P6498463510061773045.a n = A063642 (n + 1)

end A063642

/-! ## A063642.P16891399603852622043

`∩[A000040(n+1), A046316(n+1)+2]`
-/

namespace A063642.P16891399603852622043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063642.P16891399603852622043

namespace A063642

/-- `∩[A000040(n+1), A046316(n+1)+2]` -/
def P16891399603852622043.Spec : Prop :=
  ∀ n, (P16891399603852622043.a n : ℤ) = A063642 (n + 1)

end A063642

/-! ## A063642.P11476146850615435165

`p?[A014612(n+1)+2]`
-/

namespace A063642.P11476146850615435165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063642.P11476146850615435165

namespace A063642

/-- `p?[A014612(n+1)+2]` -/
def P11476146850615435165.Spec : Prop :=
  ∀ n, P11476146850615435165.a n = A063642 (n + 1)

end A063642

/-! ## A063642.P14370517297990122870

`p?[A114403(n+1)+A184752(n+1)+2]`
-/

namespace A063642.P14370517297990122870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114403 (n + 1) + (A184752 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063642.P14370517297990122870

namespace A063642

/-- `p?[A114403(n+1)+A184752(n+1)+2]` -/
def P14370517297990122870.Spec : Prop :=
  ∀ n, P14370517297990122870.a n = A063642 (n + 1)

end A063642

/-! ## A063642.P8660198500925108570

`p?[(n+2)*A101605(n+1)+1]`
-/

namespace A063642.P8660198500925108570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A101605 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063642.P8660198500925108570

namespace A063642

/-- `p?[(n+2)*A101605(n+1)+1]` -/
def P8660198500925108570.Spec : Prop :=
  ∀ n, P8660198500925108570.a n = A063642 (n + 1)

end A063642

/-! ## A063642.P276676547201852281

`record[A014963(A046316(n+1)+2)]`
-/

namespace A063642.P276676547201852281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A046316 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063642.P276676547201852281

namespace A063642

/-- `record[A014963(A046316(n+1)+2)]` -/
def P276676547201852281.Spec : Prop :=
  ∀ n, P276676547201852281.a n = A063642 (n + 1)

end A063642

/-! ## A063642.P1291091989386810255

`p?[A000720(A124268(n+1))+2]`
-/

namespace A063642.P1291091989386810255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124268 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063642.P1291091989386810255

namespace A063642

/-- `p?[A000720(A124268(n+1))+2]` -/
def P1291091989386810255.Spec : Prop :=
  ∀ n, P1291091989386810255.a n = A063642 (n + 1)

end A063642

/-! ## A063642.P15369640095719483311

`p?[A002264(A046317(n+1)+7)]`
-/

namespace A063642.P15369640095719483311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A046317 (n + 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063642.P15369640095719483311

namespace A063642

/-- `p?[A002264(A046317(n+1)+7)]` -/
def P15369640095719483311.Spec : Prop :=
  ∀ n, P15369640095719483311.a n = A063642 (n + 1)

end A063642

/-!
# A063643: Primes with 2 representations: p*q - 2 = u*v + 2 where p, q, u and v are primes.

The programs for A063643, there is no canonical definition to state claims against.
-/

/-! ## A063643.P16986029039912688949

`∩[A063637(n+1), A371622(n+1)]`
-/

namespace A063643.P16986029039912688949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P16986029039912688949

/-! ## A063643.P7275525187643814176

`∩[A063637(n+1), A063638(n+1)]`
-/

namespace A063643.P7275525187643814176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P7275525187643814176

/-! ## A063643.P2230953436834417754

`∩[A063638(n+1), A117242(n+1)]`
-/

namespace A063643.P2230953436834417754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P2230953436834417754

/-! ## A063643.P10580595850146149477

`p?[A105571(n+1)]`
-/

namespace A063643.P10580595850146149477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063643.P10580595850146149477

/-! ## A063643.P733221193125308947

`p?[A175648(n+1)+2]`
-/

namespace A063643.P733221193125308947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063643.P733221193125308947

/-! ## A063643.P140152362860236157

`∩[A063637(n+1), A105571(n+1)]`
-/

namespace A063643.P140152362860236157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P140152362860236157

/-! ## A063643.P4035672086547869958

`∩[A063638(n+1), A105571(n+1)]`
-/

namespace A063643.P4035672086547869958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P4035672086547869958

/-! ## A063643.P16089941383298377705

`∩[A069346(n+1), A105571(n+1)]`
-/

namespace A063643.P16089941383298377705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P16089941383298377705

/-! ## A063643.P2783594574922941891

`∩[A069348(n+1), A105571(n+1)]`
-/

namespace A063643.P2783594574922941891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P2783594574922941891

/-! ## A063643.P11253352101157480665

`∩[A105571(n+1), A109611(n+1)]`
-/

namespace A063643.P11253352101157480665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P11253352101157480665

/-! ## A063643.P15543556919748617424

`∩[A105571(n+1), A117242(n+1)]`
-/

namespace A063643.P15543556919748617424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P15543556919748617424

/-! ## A063643.P9377268232832411479

`∩[A105571(n+1), A214520(n+1)]`
-/

namespace A063643.P9377268232832411479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P9377268232832411479

/-! ## A063643.P12847199909020424071

`∩[A105571(n+1), A267067(n+1)]`
-/

namespace A063643.P12847199909020424071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P12847199909020424071

/-! ## A063643.P8707738239743587885

`∩[A105571(n+1), A373789(n+1)]`
-/

namespace A063643.P8707738239743587885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P8707738239743587885

/-! ## A063643.P10297757726404951949

`∩[A105571(n+1), A380468(n+1)]`
-/

namespace A063643.P10297757726404951949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P10297757726404951949

/-! ## A063643.P5867356738453837532

`∩[A105571(n+1), A144742(n+1)]`
-/

namespace A063643.P5867356738453837532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P5867356738453837532

/-! ## A063643.P12910753056833466688

`∩[A049231(n+1), A105571(n+1)]`
-/

namespace A063643.P12910753056833466688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P12910753056833466688

/-! ## A063643.P10219995882518581938

`∩[A007510(n+1), A105571(n+1)]`
-/

namespace A063643.P10219995882518581938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P10219995882518581938

/-! ## A063643.P3926248175862765330

`∩[A105571(n+1), A134797(n+1)]`
-/

namespace A063643.P3926248175862765330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P3926248175862765330

/-! ## A063643.P17742957117456298021

`∩[A025584(n+1), A105571(n+1)]`
-/

namespace A063643.P17742957117456298021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063643.P17742957117456298021

/-!
# A063644: Primes with 2 representations: p*q*r - 1 = u*v*w + 1 where p, q, r, u, v and w are primes.

The programs for A063644, there is no canonical definition to state claims against.
-/

/-! ## A063644.P3868750780030031458

`A079153(7+n)`
-/

namespace A063644.P3868750780030031458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079153 (7 + n)

end

end A063644.P3868750780030031458

/-! ## A063644.P774080514881862111

`p?[2*A070552(n+1)+1]`
-/

namespace A063644.P774080514881862111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070552 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063644.P774080514881862111

/-! ## A063644.P10001714896534183648

`p?[2*A109373(n+1)-1]`
-/

namespace A063644.P10001714896534183648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109373 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063644.P10001714896534183648

/-! ## A063644.P1622614239061091463

`p?[A109373(n+1)+A070552(n+1)]`
-/

namespace A063644.P1622614239061091463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1) + A070552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063644.P1622614239061091463

/-! ## A063644.P10781966614385743217

`∩[A063639(n+1), A063640(n+1)]`
-/

namespace A063644.P10781966614385743217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P10781966614385743217

/-! ## A063644.P13714507783681710370

`∩[A063639(n+1), A108183(n+1)]`
-/

namespace A063644.P13714507783681710370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P13714507783681710370

/-! ## A063644.P795095107911075149

`∩[A063640(n+1), A108183(n+1)]`
-/

namespace A063644.P795095107911075149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P795095107911075149

/-! ## A063644.P6445864169514555281

`∩[A063639(n+1), A115103(n+1)]`
-/

namespace A063644.P6445864169514555281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P6445864169514555281

/-! ## A063644.P7739758784064912108

`∩[A063640(n+1), A115103(n+1)]`
-/

namespace A063644.P7739758784064912108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P7739758784064912108

/-! ## A063644.P5020508307415794026

`p?[A157483(n+1)]`
-/

namespace A063644.P5020508307415794026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063644.P5020508307415794026

/-! ## A063644.P1358182962335737558

`∩[A003629(n+1), A157483(n+1)]`
-/

namespace A063644.P1358182962335737558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P1358182962335737558

/-! ## A063644.P6594275176282123448

`∩[A003630(n+1), A157483(n+1)]`
-/

namespace A063644.P6594275176282123448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P6594275176282123448

/-! ## A063644.P1119124981067090679

`∩[A015919(n+1), A157483(n+1)]`
-/

namespace A063644.P1119124981067090679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P1119124981067090679

/-! ## A063644.P18178378579867871697

`∩[A038875(n+1), A157483(n+1)]`
-/

namespace A063644.P18178378579867871697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P18178378579867871697

/-! ## A063644.P15041089500572434097

`∩[A038876(n+1), A157483(n+1)]`
-/

namespace A063644.P15041089500572434097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P15041089500572434097

/-! ## A063644.P7626452433714458882

`∩[A042999(n+1), A157483(n+1)]`
-/

namespace A063644.P7626452433714458882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P7626452433714458882

/-! ## A063644.P12401337812476122799

`∩[A063639(n+1), A157483(n+1)]`
-/

namespace A063644.P12401337812476122799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P12401337812476122799

/-! ## A063644.P16599599443170865184

`∩[A063640(n+1), A157483(n+1)]`
-/

namespace A063644.P16599599443170865184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P16599599443170865184

/-! ## A063644.P10918037685335987690

`∩[A066652(n+1), A157483(n+1)]`
-/

namespace A063644.P10918037685335987690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P10918037685335987690

/-! ## A063644.P172861722515456975

`∩[A079150(n+1), A157483(n+1)]`
-/

namespace A063644.P172861722515456975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063644.P172861722515456975

/-!
# A063645: Primes with two representations: p*q*r - 2 = u*v*w + 2 where p, q, r, u, v and w are primes (not necessarily distinct).

The programs for A063645, the canonical program `A063645.P11828165529242582443` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063645 has offset 1).

The definition of A063645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063645.P15168393868580604494

`∩[A063642(n+1), A371622(n+1)]`
-/

namespace A063645.P15168393868580604494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063645.P15168393868580604494

namespace A063645

/-- `∩[A063642(n+1), A371622(n+1)]` -/
def P15168393868580604494.Spec : Prop :=
  ∀ n, (P15168393868580604494.a n : ℤ) = A063645 (n + 1)

end A063645

/-! ## A063645.P11828165529242582443

`∩[A063641(n+1), A063642(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063645

/-- `∩[A063641(n+1), A063642(n+1)]` -/
def P11828165529242582443.Spec : Prop :=
  ∀ n, (P11828165529242582443.a n : ℤ) = A063645 (n + 1)

theorem P11828165529242582443.correct : P11828165529242582443.Spec := by
  intro n
  simp only [A063645, Nat.add_sub_cancel]

end A063645

/-! ## A063645.P4605970754757974023

`∩[A063641(n+1), A371622(n+1)]`
-/

namespace A063645.P4605970754757974023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063645.P4605970754757974023

namespace A063645

/-- `∩[A063641(n+1), A371622(n+1)]` -/
def P4605970754757974023.Spec : Prop :=
  ∀ n, (P4605970754757974023.a n : ℤ) = A063645 (n + 1)

end A063645

/-! ## A063645.P9461590941197250907

`record[p?[A273943(A105573(n+1))]]`
-/

namespace A063645.P9461590941197250907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A105573 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063645.P9461590941197250907

namespace A063645

/-- `record[p?[A273943(A105573(n+1))]]` -/
def P9461590941197250907.Spec : Prop :=
  ∀ n, P9461590941197250907.a n = A063645 (n + 1)

end A063645

/-! ## A063645.P7658541742034101193

`A003968(p?[A014682(A105573(n+1))])`
-/

namespace A063645.P7658541742034101193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A105573 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A063645.P7658541742034101193

namespace A063645

/-- `A003968(p?[A014682(A105573(n+1))])` -/
def P7658541742034101193.Spec : Prop :=
  ∀ n, P7658541742034101193.a n = A063645 (n + 1)

end A063645

/-!
# A063646: Maximum number of minimum pseudo-triangulations of n points in the plane.

The programs for A063646, there is no canonical definition to state claims against.
-/

/-! ## A063646.P8745994880570669603

`A004526(A007508(n+1)-A055854(n))`
-/

namespace A063646.P8745994880570669603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007508 (n + 1) - A055854 n).toNat

end

end A063646.P8745994880570669603

/-! ## A063646.P7126889625177591227

`A123108(A007508(n+1)-A055854(n))`
-/

namespace A063646.P7126889625177591227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A007508 (n + 1) - A055854 n).toNat

end

end A063646.P7126889625177591227

/-!
# A063647: Number of ways to write 1/n as a difference of exactly 2 unit fractions.

The programs for A063647, the canonical program `A063647.P10388026275025770888` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063647 has offset 1).

The definition of A063647 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063647.P10388026275025770888

`A018892(n+1)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A063647

/-- `A018892(n+1)-1` -/
def P10388026275025770888.Spec : Prop :=
  ∀ n, P10388026275025770888.a n = A063647 (n + 1)

theorem P10388026275025770888.correct : P10388026275025770888.Spec := by
  intro n
  simp only [A063647, Nat.add_sub_cancel]

end A063647

/-! ## A063647.P12214292161233430473

`(A000005((n+1)²)-1)/2`
-/

namespace A063647.P12214292161233430473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) ^ 2) - 1 : ℚ) / 2

end

end A063647.P12214292161233430473

namespace A063647

/-- `(A000005((n+1)²)-1)/2` -/
def P12214292161233430473.Spec : Prop :=
  ∀ n, P12214292161233430473.a n = (A063647 (n + 1) : ℚ)

end A063647

/-! ## A063647.P6031325116416038976

`A046079(2*(n+1))`
-/

namespace A063647.P6031325116416038976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (2 * (n + 1))

end

end A063647.P6031325116416038976

namespace A063647

/-- `A046079(2*(n+1))` -/
def P6031325116416038976.Spec : Prop :=
  ∀ n, P6031325116416038976.a n = A063647 (n + 1)

theorem P6031325116416038976.correct : P6031325116416038976.Spec := by
  intro n
  simp only [A063647, Nat.add_sub_cancel, A063647.P6031325116416038976.a, A063647.P10388026275025770888.a, A018892, A018892.P739243444939951687.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063647

/-! ## A063647.P8212915712613191444

`floor(A048691(n+1)/2)`
-/

namespace A063647.P8212915712613191444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048691 (n + 1) : ℚ) / 2⌋

end

end A063647.P8212915712613191444

namespace A063647

/-- `floor(A048691(n+1)/2)` -/
def P8212915712613191444.Spec : Prop :=
  ∀ n, P8212915712613191444.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P17378438485642847303

`(A146564(n+1)-1)/3`
-/

namespace A063647.P17378438485642847303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146564 (n + 1) - 1 : ℚ) / 3

end

end A063647.P17378438485642847303

namespace A063647

/-- `(A146564(n+1)-1)/3` -/
def P17378438485642847303.Spec : Prop :=
  ∀ n, P17378438485642847303.a n = (A063647 (n + 1) : ℚ)

theorem P17378438485642847303.correct : P17378438485642847303.Spec := by
  intro n
  simp only [A063647, Nat.add_sub_cancel, A063647.P17378438485642847303.a, A063647.P10388026275025770888.a, A018892, A018892.P739243444939951687.a, A146564, A146564.P5455940889942169782.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063647

/-! ## A063647.P11419714985240527443

`A176835(4*(n+1))-1`
-/

namespace A063647.P11419714985240527443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176835 (4 * (n + 1)) - 1

end

end A063647.P11419714985240527443

namespace A063647

/-- `A176835(4*(n+1))-1` -/
def P11419714985240527443.Spec : Prop :=
  ∀ n, P11419714985240527443.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P1999871581385657134

`A046079(abs(1-n)+n+3)%(n+1)`
-/

namespace A063647.P1999871581385657134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046079 (|1 - (n : ℤ)| + (n + 3 : ℤ)).toNat) (n + 1 : ℤ)

end

end A063647.P1999871581385657134

namespace A063647

/-- `A046079(abs(1-n)+n+3)%(n+1)` -/
def P1999871581385657134.Spec : Prop :=
  ∀ n, P1999871581385657134.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P105980185663704608

`A004524(A048691(n+1))`
-/

namespace A063647.P105980185663704608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A048691 (n + 1)).toNat

end

end A063647.P105980185663704608

namespace A063647

/-- `A004524(A048691(n+1))` -/
def P105980185663704608.Spec : Prop :=
  ∀ n, P105980185663704608.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P8131970223126179459

`A001057(A117677(n+1))`
-/

namespace A063647.P8131970223126179459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A117677 (n + 1)).toNat

end

end A063647.P8131970223126179459

namespace A063647

/-- `A001057(A117677(n+1))` -/
def P8131970223126179459.Spec : Prop :=
  ∀ n, P8131970223126179459.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P2122694149161236519

`A002264(A146564(n+1))`
-/

namespace A063647.P2122694149161236519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A146564 (n + 1)).toNat

end

end A063647.P2122694149161236519

namespace A063647

/-- `A002264(A146564(n+1))` -/
def P2122694149161236519.Spec : Prop :=
  ∀ n, P2122694149161236519.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P16123414840200937223

`A023444(A018892(n+1)+1)`
-/

namespace A063647.P16123414840200937223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A018892 (n + 1) + 1).toNat

end

end A063647.P16123414840200937223

namespace A063647

/-- `A023444(A018892(n+1)+1)` -/
def P16123414840200937223.Spec : Prop :=
  ∀ n, P16123414840200937223.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P8975188765376385307

`A001281(A048691(n+1)-1)`
-/

namespace A063647.P8975188765376385307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048691 (n + 1) - 1).toNat

end

end A063647.P8975188765376385307

namespace A063647

/-- `A001281(A048691(n+1)-1)` -/
def P8975188765376385307.Spec : Prop :=
  ∀ n, P8975188765376385307.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P15691653692553163141

`A004525(A048691(n+1)-1)`
-/

namespace A063647.P15691653692553163141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A048691 (n + 1) - 1).toNat

end

end A063647.P15691653692553163141

namespace A063647

/-- `A004525(A048691(n+1)-1)` -/
def P15691653692553163141.Spec : Prop :=
  ∀ n, P15691653692553163141.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P1508320841134914265

`A029578(A048691(n+1)-1)`
-/

namespace A063647.P1508320841134914265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A048691 (n + 1) - 1).toNat

end

end A063647.P1508320841134914265

namespace A063647

/-- `A029578(A048691(n+1)-1)` -/
def P1508320841134914265.Spec : Prop :=
  ∀ n, P1508320841134914265.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P10518260608908381798

`A097140(A048691(n+1)-1)`
-/

namespace A063647.P10518260608908381798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A048691 (n + 1) - 1).toNat

end

end A063647.P10518260608908381798

namespace A063647

/-- `A097140(A048691(n+1)-1)` -/
def P10518260608908381798.Spec : Prop :=
  ∀ n, P10518260608908381798.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P8540982573396462637

`A002265(2*A048691(n+1))`
-/

namespace A063647.P8540982573396462637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A048691 (n + 1)).toNat

end

end A063647.P8540982573396462637

namespace A063647

/-- `A002265(2*A048691(n+1))` -/
def P8540982573396462637.Spec : Prop :=
  ∀ n, P8540982573396462637.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P5268186751421246066

`A152467(2*A146564(n+1))`
-/

namespace A063647.P5268186751421246066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (2 * A146564 (n + 1)).toNat

end

end A063647.P5268186751421246066

namespace A063647

/-- `A152467(2*A146564(n+1))` -/
def P5268186751421246066.Spec : Prop :=
  ∀ n, P5268186751421246066.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P4633157663672711339

`A055205(n+1)-A089233(n+1)`
-/

namespace A063647.P4633157663672711339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055205 (n + 1) - A089233 (n + 1)

end

end A063647.P4633157663672711339

namespace A063647

/-- `A055205(n+1)-A089233(n+1)` -/
def P4633157663672711339.Spec : Prop :=
  ∀ n, P4633157663672711339.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P15572298195381711801

`A146564(n+1)-A048691(n+1)`
-/

namespace A063647.P15572298195381711801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (n + 1) - A048691 (n + 1)

end

end A063647.P15572298195381711801

namespace A063647

/-- `A146564(n+1)-A048691(n+1)` -/
def P15572298195381711801.Spec : Prop :=
  ∀ n, P15572298195381711801.a n = A063647 (n + 1)

end A063647

/-! ## A063647.P1061149555542922807

`A066446(n+1)-A275387(n+1)`
-/

namespace A063647.P1061149555542922807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) - A275387 (n + 1)

end

end A063647.P1061149555542922807

namespace A063647

/-- `A066446(n+1)-A275387(n+1)` -/
def P1061149555542922807.Spec : Prop :=
  ∀ n, P1061149555542922807.a n = A063647 (n + 1)

theorem P1061149555542922807.correct : P1061149555542922807.Spec := by
  intro n
  simp only [A063647, Nat.add_sub_cancel, A063647.P1061149555542922807.a, A063647.P10388026275025770888.a, A018892, A018892.P739243444939951687.a, A066446, A066446.P5739828571146208619.a, A275387, A275387.P16073463027195064393.a, A000005, A000005.P16091521709108585461.a, A000217, A000217.P10269402890581615239.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A004526, A004526.P10084182425416171735.a, A051731, A051731.P11318043630102858095.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063647

/-!
# A063648: Smallest c such that 1/n=1/c+1/b has integer solutions with c>b.

The programs for A063648, there is no canonical definition to state claims against.
-/

/-! ## A063648.P252729667683815331

`(n+2)*A063649(n+2)/(A063649(n+2)-(n+2))`
-/

namespace A063648.P252729667683815331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A063649 (n + 2) : ℚ) / (A063649 (n + 2) - (n + 2 : ℤ) : ℚ)

end

end A063648.P252729667683815331

/-! ## A063648.P13853349198176428987

`A063427(n+2)+2*(n+2)`
-/

namespace A063648.P13853349198176428987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063427 (n + 2) + (2 * (n + 2) : ℤ)

end

end A063648.P13853349198176428987

/-! ## A063648.P8975595382455449503

`2+A063718(n+2)+n`
-/

namespace A063648.P8975595382455449503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + (A063718 (n + 2) + (n : ℤ))

end

end A063648.P8975595382455449503

/-! ## A063648.P15854544144880120835

`A103517(n+1)+A063427(n+2)`
-/

namespace A063648.P15854544144880120835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n + 1) + A063427 (n + 2)

end

end A063648.P15854544144880120835

/-! ## A063648.P14639143713584120990

`A317440(n+2)+A063427(n+2)`
-/

namespace A063648.P14639143713584120990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 2) + A063427 (n + 2)

end

end A063648.P14639143713584120990

/-! ## A063648.P7854693145672538549

`Δ[A014206(n)]+A063427(n+2)+2`
-/

namespace A063648.P7854693145672538549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A063427 (n + 2) + 2)

end

end A063648.P7854693145672538549

/-! ## A063648.P5661537007937987243

`A020725(n+1)+A063427(n+2)+n+2`
-/

namespace A063648.P5661537007937987243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) + (A063427 (n + 2) + (n + 2 : ℤ))

end

end A063648.P5661537007937987243

/-! ## A063648.P2175873034610440095

`A063649(n+2)+A063428(n+2)+A063427(n+2)`
-/

namespace A063648.P2175873034610440095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063649 (n + 2) + A063428 (n + 2) + A063427 (n + 2)

end

end A063648.P2175873034610440095

/-! ## A063648.P14062062499777162404

`A140271((n+2)²)+2+n`
-/

namespace A063648.P14062062499777162404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 ((n + 2) ^ 2) + 2 + (n : ℤ)

end

end A063648.P14062062499777162404

/-! ## A063648.P16659285795967133318

`A216841((n+2)²)-∑[2*(n+1)]`
-/

namespace A063648.P16659285795967133318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216841 ((n + 2) ^ 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063648.P16659285795967133318

/-!
# A063649: Largest b such that 1/n=1/c+1/b has integer solutions with c>b.

The programs for A063649, there is no canonical definition to state claims against.
-/

/-! ## A063649.P13744004735508747427

`n+2+A063717(n+2)`
-/

namespace A063649.P13744004735508747427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + A063717 (n + 2)

end

end A063649.P13744004735508747427

/-! ## A063649.P15289259632616367732

`(n+2)*A063648(n+2)/(A063648(n+2)-(n+2))`
-/

namespace A063649.P15289259632616367732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A063648 (n + 2) : ℚ) / (A063648 (n + 2) - (n + 2 : ℤ) : ℚ)

end

end A063649.P15289259632616367732

/-! ## A063649.P3331883280737503764

`2*(n+2)-A063428(n+2)`
-/

namespace A063649.P3331883280737503764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A063428 (n + 2)

end

end A063649.P3331883280737503764

/-! ## A063649.P245993598277157215

`n+2+(n+2)²/A063718(n+2)`
-/

namespace A063649.P245993598277157215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) + ((n + 2) ^ 2 : ℚ) / (A063718 (n + 2) : ℚ)

end

end A063649.P245993598277157215

/-! ## A063649.P7220964975244345879

`A005408(n)+3-A063428(n+2)`
-/

namespace A063649.P7220964975244345879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (3 - A063428 (n + 2))

end

end A063649.P7220964975244345879

/-! ## A063649.P5089871242207129121

`record[A052125(n+1)]+3-A063428(n+2)`
-/

namespace A063649.P5089871242207129121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (3 - A063428 (n + 2))

end

end A063649.P5089871242207129121

/-! ## A063649.P5131279618626445360

`A020725(A004273(n+2)-A063428(n+2))`
-/

namespace A063649.P5131279618626445360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A004273 (n + 2) - A063428 (n + 2)).toNat

end

end A063649.P5131279618626445360

/-! ## A063649.P4249727303354529637

`A063648(n+2)-(A063428(n+2)+A063427(n+2))`
-/

namespace A063649.P4249727303354529637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063648 (n + 2) - (A063428 (n + 2) + A063427 (n + 2))

end

end A063649.P4249727303354529637

/-! ## A063649.P5978781399219436266

`A060775((n+2)²)+2+n`
-/

namespace A063649.P5978781399219436266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 ((n + 2) ^ 2) + 2 + (n : ℤ)

end

end A063649.P5978781399219436266

/-! ## A063649.P8839971227506673688

`A394749((n+2)*(n+2))+n+2`
-/

namespace A063649.P8839971227506673688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394749 ((n + 2) * (n + 2)) + (n + 2 : ℤ)

end

end A063649.P8839971227506673688

/-!
# A063650: Number of ways to tile a 6 X n rectangle with 1 X 1 and 2 X 2 tiles.

The programs for A063650, the canonical program `A063650.P17117520132361056871` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063650 has offset 0).

The definition of A063650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063650.P17117520132361056871

`ogf((1-x-5x^2+x^4)/(1-2x-16x^2-x^3+27x^4-x^5-4x^6))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063650

/-- `ogf((1-x-5x^2+x^4)/(1-2x-16x^2-x^3+27x^4-x^5-4x^6))` -/
def P17117520132361056871.Spec : Prop :=
  ∀ n, P17117520132361056871.a n = A063650 n

theorem P17117520132361056871.correct : P17117520132361056871.Spec := by
  intro n
  simp only [A063650]

end A063650

/-! ## A063650.P13810668364464962982

`A245013(eq[6, A002262(n)])`
-/

namespace A063650.P13810668364464962982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063650.P13810668364464962982

namespace A063650

/-- `A245013(eq[6, A002262(n)])` -/
def P13810668364464962982.Spec : Prop :=
  ∀ n, P13810668364464962982.a n = A063650 n

end A063650

/-! ## A063650.P13669693268745980027

`A245013(eq[8, A141169(n)])`
-/

namespace A063650.P13669693268745980027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063650.P13669693268745980027

namespace A063650

/-- `A245013(eq[8, A141169(n)])` -/
def P13669693268745980027.Spec : Prop :=
  ∀ n, P13669693268745980027.a n = A063650 n

end A063650

/-! ## A063650.P11387374853071518007

`A245013(eq[7, A002260(n+1)])`
-/

namespace A063650.P11387374853071518007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063650.P11387374853071518007

namespace A063650

/-- `A245013(eq[7, A002260(n+1)])` -/
def P11387374853071518007.Spec : Prop :=
  ∀ n, P11387374853071518007.a n = A063650 n

end A063650

/-! ## A063650.P7549060646422084191

`A245013(eq[8, A245093(n+1)])`
-/

namespace A063650.P7549060646422084191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063650.P7549060646422084191

namespace A063650

/-- `A245013(eq[8, A245093(n+1)])` -/
def P7549060646422084191.Spec : Prop :=
  ∀ n, P7549060646422084191.a n = A063650 n

end A063650

/-! ## A063650.P2496604736847608458

`A245013(eq[6, A025581(n)])`
-/

namespace A063650.P2496604736847608458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063650.P2496604736847608458

namespace A063650

/-- `A245013(eq[6, A025581(n)])` -/
def P2496604736847608458.Spec : Prop :=
  ∀ n, P2496604736847608458.a n = A063650 n

end A063650

/-!
# A063651: Number of ways to tile a 7 X n rectangle with 1 X 1 and 2 X 2 tiles.

The programs for A063651, there is no canonical definition to state claims against.
-/

/-! ## A063651.P3596669202616543813

`A245013(eq[7, A002262(n)])`
-/

namespace A063651.P3596669202616543813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063651.P3596669202616543813

/-! ## A063651.P3110222835426905529

`A245013(eq[13, A141169(n)])`
-/

namespace A063651.P3110222835426905529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063651.P3110222835426905529

/-! ## A063651.P9819565133553765347

`A245013(A000096(n+6)+8)`
-/

namespace A063651.P9819565133553765347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A000096 (n + 6) + 8).toNat

end

end A063651.P9819565133553765347

/-! ## A063651.P1365564825357200832

`A245013(eq[8, A002260(n+1)])`
-/

namespace A063651.P1365564825357200832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063651.P1365564825357200832

/-! ## A063651.P12509601793275944325

`A245013(eq[7, A025581(n)])`
-/

namespace A063651.P12509601793275944325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063651.P12509601793275944325

/-!
# A063652: Number of ways to tile an 8 X n rectangle with 1 X 1 and 2 X 2 tiles.

The programs for A063652, there is no canonical definition to state claims against.
-/

/-! ## A063652.P8162796645913356790

`A245013(A134227(n+7)-3)`
-/

namespace A063652.P8162796645913356790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A134227 (n + 7) - 3).toNat

end

end A063652.P8162796645913356790

/-! ## A063652.P6720590235524093623

`A245013(A000217(n+9)-9)`
-/

namespace A063652.P6720590235524093623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A000217 (n + 9) - 9).toNat

end

end A063652.P6720590235524093623

/-! ## A063652.P15725665211178963897

`A245013(A034856(n+7)+2+n)`
-/

namespace A063652.P15725665211178963897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A034856 (n + 7) + 2 + (n : ℤ)).toNat

end

end A063652.P15725665211178963897

/-! ## A063652.P13017225339498411939

`A245013(A005408(n)+A000096(n+6)+8)`
-/

namespace A063652.P13017225339498411939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A005408 n + (A000096 (n + 6) + 8)).toNat

end

end A063652.P13017225339498411939

/-! ## A063652.P14481198406211999890

`A245013(A052938(4*n)+A046691(n+5)+11)`
-/

namespace A063652.P14481198406211999890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A052938 (4 * n) + (A046691 (n + 5) + 11)).toNat

end

end A063652.P14481198406211999890

/-!
# A063653: Number of ways to tile a 9 X n rectangle with 1 X 1 and 2 X 2 tiles.

The programs for A063653, there is no canonical definition to state claims against.
-/

/-! ## A063653.P12872994277771047554

`A245013(A000217(n+9)+9)`
-/

namespace A063653.P12872994277771047554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A000217 (n + 9) + 9).toNat

end

end A063653.P12872994277771047554

/-! ## A063653.P16187973217411945737

`A245013(A253145(n+9)-(n+1))`
-/

namespace A063653.P16187973217411945737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A253145 (n + 9) - (n + 1 : ℤ)).toNat

end

end A063653.P16187973217411945737

/-! ## A063653.P6858092269542181692

`A245013(A161680(n+11)-(n+1))`
-/

namespace A063653.P6858092269542181692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A161680 (n + 11) - (n + 1 : ℤ)).toNat

end

end A063653.P6858092269542181692

/-! ## A063653.P6329404232545541818

`A245013(A056000(n+6))`
-/

namespace A063653.P6329404232545541818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A056000 (n + 6)).toNat

end

end A063653.P6329404232545541818

/-! ## A063653.P5683864896814946369

`A245013(A046691(n+8)-6)`
-/

namespace A063653.P5683864896814946369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (A046691 (n + 8) - 6).toNat

end

end A063653.P5683864896814946369

/-!
# A063655: Smallest semiperimeter of integral rectangle with area n.

The programs for A063655, there is no canonical definition to state claims against.
-/

/-! ## A063655.P15917593829492145991

`A033676(n+1)+A033677(n+1)`
-/

namespace A063655.P15917593829492145991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) + A033677 (n + 1)

end

end A063655.P15917593829492145991

/-! ## A063655.P14752699108289297228

`A162348(2*(n+1)-1)+A162348(2*(n+1))`
-/

namespace A063655.P14752699108289297228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * (n + 1) - 1) + A162348 (2 * (n + 1))

end

end A063655.P14752699108289297228

/-! ## A063655.P13396592486549347059

`A387830(n+1)+2`
-/

namespace A063655.P13396592486549347059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387830 (n + 1) + 2

end

end A063655.P13396592486549347059

/-! ## A063655.P4121410379941012525

`A262767(n+1)/2`
-/

namespace A063655.P4121410379941012525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262767 (n + 1) : ℚ) / 2

end

end A063655.P4121410379941012525

/-! ## A063655.P10734873417608307877

`1-A220114(n+1)+n`
-/

namespace A063655.P10734873417608307877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A220114 (n + 1) + (n : ℤ)

end

end A063655.P10734873417608307877

/-! ## A063655.P17589182378125067511

`A163520(n+1)-(n+2)`
-/

namespace A063655.P17589182378125067511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163520 (n + 1) - (n + 2 : ℤ)

end

end A063655.P17589182378125067511

/-! ## A063655.P16981796747138065077

`2-A385454(n+1)+n`
-/

namespace A063655.P16981796747138065077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A385454 (n + 1) + (n : ℤ)

end

end A063655.P16981796747138065077

/-! ## A063655.P17742777460223331

`sqrt(A323728(n+1)+2*(n+1))`
-/

namespace A063655.P17742777460223331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A323728 (n + 1) + (2 * (n + 1) : ℤ) : ℝ)

end

end A063655.P17742777460223331

/-! ## A063655.P17340080503836707725

`A111234(A376915(n+1))`
-/

namespace A063655.P17340080503836707725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (A376915 (n + 1)).toNat

end

end A063655.P17340080503836707725

/-! ## A063655.P14732016285852536087

`A092510(n+1)+Δ[A025281(n)]`
-/

namespace A063655.P14732016285852536087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092510 (n + 1) + (f1 (n + 1) - f1 n)

end

end A063655.P14732016285852536087

/-! ## A063655.P15963039545763211465

`A092510(n+1)+A001414(n+1)`
-/

namespace A063655.P15963039545763211465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092510 (n + 1) + A001414 (n + 1)

end

end A063655.P15963039545763211465

/-! ## A063655.P9961143497743057430

`A134875(n+1)+A080339(n+1)`
-/

namespace A063655.P9961143497743057430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134875 (n + 1) + A080339 (n + 1)

end

end A063655.P9961143497743057430

/-! ## A063655.P15795540918870167785

`A056737(n+1)+2*A033676(n+1)`
-/

namespace A063655.P15795540918870167785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 1) + 2 * A033676 (n + 1)

end

end A063655.P15795540918870167785

/-! ## A063655.P10629667971997208970

`A162348(2*(n+1))+A033676(n+1)`
-/

namespace A063655.P10629667971997208970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * (n + 1)) + A033676 (n + 1)

end

end A063655.P10629667971997208970

/-! ## A063655.P7302665064414360613

`A162348(2*n+1)+A033677(n+1)`
-/

namespace A063655.P7302665064414360613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * n + 1) + A033677 (n + 1)

end

end A063655.P7302665064414360613

/-! ## A063655.P5507824612965910891

`2*A033677(n+1)-A056737(n+1)`
-/

namespace A063655.P5507824612965910891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033677 (n + 1) - A056737 (n + 1)

end

end A063655.P5507824612965910891

/-! ## A063655.P2280163934871061706

`A033676(n+1)+A000027(n+1)/A033676(n+1)`
-/

namespace A063655.P2280163934871061706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033676 (n + 1) : ℚ) + (A000027 (n + 1) : ℚ) / (A033676 (n + 1) : ℚ)

end

end A063655.P2280163934871061706

/-! ## A063655.P13004692160099897199

`A033677(n+1)+A000027(n+1)/A033677(n+1)`
-/

namespace A063655.P13004692160099897199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033677 (n + 1) : ℚ) + (A000027 (n + 1) : ℚ) / (A033677 (n + 1) : ℚ)

end

end A063655.P13004692160099897199

/-! ## A063655.P7506162513098645643

`(A361565(n+1)+A361565(n+1))/A361566(n+1)`
-/

namespace A063655.P7506162513098645643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361565 (n + 1) + A361565 (n + 1) : ℚ) / (A361566 (n + 1) : ℚ)

end

end A063655.P7506162513098645643

/-! ## A063655.P17717680259283486214

`A078898(A262767(n+1))`
-/

namespace A063655.P17717680259283486214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A262767 (n + 1)).toNat

end

end A063655.P17717680259283486214

/-!
# A063656: Numbers k such that the truncated square root of k is equal to the rounded square root of k.

The programs for A063656, the canonical program `A063656.P12975644958192867276` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063656 has offset 0).

The definition of A063656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063656.P12975644958192867276

`row(n)²+col(n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063656

/-- `row(n)²+col(n)` -/
def P12975644958192867276.Spec : Prop :=
  ∀ n, (P12975644958192867276.a n : ℤ) = A063656 n

theorem P12975644958192867276.correct : P12975644958192867276.Spec := by
  intro n
  simp only [A063656]

end A063656

/-! ## A063656.P12076087266823238988

`n+C(row(n), 2)`
-/

namespace A063656.P12076087266823238988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + Nat.choose (SequenceMachineLib.triRow n) 2

end

end A063656.P12076087266823238988

namespace A063656

/-- `n+C(row(n), 2)` -/
def P12076087266823238988.Spec : Prop :=
  ∀ n, (P12076087266823238988.a n : ℤ) = A063656 n

end A063656

/-! ## A063656.P18319303658909282348

`col(n)+row(n)²`
-/

namespace A063656.P18319303658909282348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + SequenceMachineLib.triRow n ^ 2

end

end A063656.P18319303658909282348

namespace A063656

/-- `col(n)+row(n)²` -/
def P18319303658909282348.Spec : Prop :=
  ∀ n, (P18319303658909282348.a n : ℤ) = A063656 n

theorem P18319303658909282348.correct : P18319303658909282348.Spec := by
  intro n
  simp only [A063656, Nat.add_sub_cancel, A063656.P18319303658909282348.a, A063656.P12975644958192867276.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A063656

/-! ## A063656.P7471973710440518627

`col(n)+row(n)^2`
-/

namespace A063656.P7471973710440518627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + SequenceMachineLib.triRow n ^ 2

end

end A063656.P7471973710440518627

namespace A063656

/-- `col(n)+row(n)^2` -/
def P7471973710440518627.Spec : Prop :=
  ∀ n, (P7471973710440518627.a n : ℤ) = A063656 n

theorem P7471973710440518627.correct : P7471973710440518627.Spec := by
  intro n
  simp only [A063656, Nat.add_sub_cancel, A063656.P7471973710440518627.a, A063656.P12975644958192867276.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A063656

/-! ## A063656.P2882879088443562353

`lt[round(sqrt(n))²-n, 1]`
-/

namespace A063656.P2882879088443562353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A063656.P2882879088443562353

namespace A063656

/-- `lt[round(sqrt(n))²-n, 1]` -/
def P2882879088443562353.Spec : Prop :=
  ∀ n, (P2882879088443562353.a n : ℤ) = A063656 n

end A063656

/-! ## A063656.P2577608170887864526

`∑[gcd(∑[abs(T(n-1,k))], T(n-1,k-1))]` with `a(0)=0, a(1)=1`
-/

namespace A063656.P2577608170887864526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  SequenceMachineLib.triUp f2 n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f2 j) (SequenceMachineLib.triUpLeft f1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063656.P2577608170887864526

namespace A063656

/-- `∑[gcd(∑[abs(T(n-1,k))], T(n-1,k-1))]` -/
def P2577608170887864526.Spec : Prop :=
  ∀ n, (P2577608170887864526.a n : ℤ) = A063656 n

end A063656

/-! ## A063656.P4005941493265604821

`col(n)+row(n)*row(n)`
-/

namespace A063656.P4005941493265604821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + SequenceMachineLib.triRow n * SequenceMachineLib.triRow n

end

end A063656.P4005941493265604821

namespace A063656

/-- `col(n)+row(n)*row(n)` -/
def P4005941493265604821.Spec : Prop :=
  ∀ n, (P4005941493265604821.a n : ℤ) = A063656 n

theorem P4005941493265604821.correct : P4005941493265604821.Spec := by
  intro n
  simp only [A063656, Nat.add_sub_cancel, A063656.P4005941493265604821.a, A063656.P12975644958192867276.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A063656

/-! ## A063656.P1598339874645538969

`eq[0, floor(2*sqrt(n))%2]`
-/

namespace A063656.P1598339874645538969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063656.P1598339874645538969

namespace A063656

/-- `eq[0, floor(2*sqrt(n))%2]` -/
def P1598339874645538969.Spec : Prop :=
  ∀ n, (P1598339874645538969.a n : ℤ) = A063656 n

end A063656

/-! ## A063656.P9226969022397276947

`eq[0, round(sqrt(n)-floor(sqrt(n)))]`
-/

namespace A063656.P9226969022397276947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) - (Nat.sqrt n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063656.P9226969022397276947

namespace A063656

/-- `eq[0, round(sqrt(n)-floor(sqrt(n)))]` -/
def P9226969022397276947.Spec : Prop :=
  ∀ n, (P9226969022397276947.a n : ℤ) = A063656 n

end A063656

/-! ## A063656.P14838780387688144438

`col(n)+root(row(n), 1/2)`
-/

namespace A063656.P14838780387688144438
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℝ) + (SequenceMachineLib.triRow n : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A063656.P14838780387688144438

namespace A063656

/-- `col(n)+root(row(n), 1/2)` -/
def P14838780387688144438.Spec : Prop :=
  ∀ n, P14838780387688144438.a n = (A063656 n : ℝ)

theorem P14838780387688144438.correct : P14838780387688144438.Spec := by
  intro n
  simp only [A063656, Nat.add_sub_cancel, A063656.P14838780387688144438.a, A063656.P12975644958192867276.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A063656

/-! ## A063656.P12846801574223984065

`C(∑[char[∑[n+1]]], 2)+n`
-/

namespace A063656.P12846801574223984065
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n

end

end A063656.P12846801574223984065

namespace A063656

/-- `C(∑[char[∑[n+1]]], 2)+n` -/
def P12846801574223984065.Spec : Prop :=
  ∀ n, (P12846801574223984065.a n : ℤ) = A063656 n

end A063656

/-! ## A063656.P4821170250798827195

`∪[lt[n, (ceil(sqrt(n))²-n)²], n²]`
-/

namespace A063656.P4821170250798827195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n

end

end A063656.P4821170250798827195

namespace A063656

/-- `∪[lt[n, (ceil(sqrt(n))²-n)²], n²]` -/
def P4821170250798827195.Spec : Prop :=
  ∀ n, (P4821170250798827195.a n : ℤ) = A063656 n

end A063656

/-! ## A063656.P4109474931864523879

`col(n)-(row(n)-2*row(n))*row(n)`
-/

namespace A063656.P4109474931864523879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triRow n : ℤ)) * (SequenceMachineLib.triRow n : ℤ)

end

end A063656.P4109474931864523879

namespace A063656

/-- `col(n)-(row(n)-2*row(n))*row(n)` -/
def P4109474931864523879.Spec : Prop :=
  ∀ n, P4109474931864523879.a n = A063656 n

theorem P4109474931864523879.correct : P4109474931864523879.Spec := by
  intro n
  simp only [A063656, Nat.add_sub_cancel, A063656.P4109474931864523879.a, A063656.P12975644958192867276.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A063656

/-! ## A063656.P1238798574337721736

`∪[n², C(comp[∑[n]]-n, 2)+1+n]`
-/

namespace A063656.P1238798574337721736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A063656.P1238798574337721736

namespace A063656

/-- `∪[n², C(comp[∑[n]]-n, 2)+1+n]` -/
def P1238798574337721736.Spec : Prop :=
  ∀ n, (P1238798574337721736.a n : ℤ) = A063656 n

end A063656

/-! ## A063656.P16536069330529900069

`∑[abs(A167407(n))]`
-/

namespace A063656.P16536069330529900069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167407 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063656.P16536069330529900069

namespace A063656

/-- `∑[abs(A167407(n))]` -/
def P16536069330529900069.Spec : Prop :=
  ∀ n, P16536069330529900069.a n = A063656 n

end A063656

/-! ## A063656.P14477566675385061805

`comp[A063657(n+1)]`
-/

namespace A063656.P14477566675385061805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063656.P14477566675385061805

namespace A063656

/-- `comp[A063657(n+1)]` -/
def P14477566675385061805.Spec : Prop :=
  ∀ n, (P14477566675385061805.a n : ℤ) = A063656 n

end A063656

/-! ## A063656.P315319401503843104

`2*n-A051162(n)`
-/

namespace A063656.P315319401503843104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A051162 n

end

end A063656.P315319401503843104

namespace A063656

/-- `2*n-A051162(n)` -/
def P315319401503843104.Spec : Prop :=
  ∀ n, P315319401503843104.a n = A063656 n

end A063656

/-! ## A063656.P8591633751280238367

`comp[A004201(comp[C(n, 2)])]`
-/

namespace A063656.P8591633751280238367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063656.P8591633751280238367

namespace A063656

/-- `comp[A004201(comp[C(n, 2)])]` -/
def P8591633751280238367.Spec : Prop :=
  ∀ n, (P8591633751280238367.a n : ℤ) = A063656 n

end A063656

/-! ## A063656.P11910278910108911384

`comp[A061885(comp[C(n, 2)])]`
-/

namespace A063656.P11910278910108911384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063656.P11910278910108911384

namespace A063656

/-- `comp[A061885(comp[C(n, 2)])]` -/
def P11910278910108911384.Spec : Prop :=
  ∀ n, (P11910278910108911384.a n : ℤ) = A063656 n

end A063656

/-! ## A063656.P15129843087135038839

`∪[A004202(n+1), n²]`
-/

namespace A063656.P15129843087135038839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A063656.P15129843087135038839

namespace A063656

/-- `∪[A004202(n+1), n²]` -/
def P15129843087135038839.Spec : Prop :=
  ∀ n, (P15129843087135038839.a n : ℤ) = A063656 n

end A063656

/-!
# A063657: Numbers whose truncated square root is unequal to rounded square root.

The programs for A063657, the canonical program `A063657.P9374789070347928920` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063657 has offset 1).

The definition of A063657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063657.P6625362133207257037

`A217575(n+1)+1`
-/

namespace A063657.P6625362133207257037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) + 1

end

end A063657.P6625362133207257037

namespace A063657

/-- `A217575(n+1)+1` -/
def P6625362133207257037.Spec : Prop :=
  ∀ n, P6625362133207257037.a n = A063657 (n + 1)

theorem P6625362133207257037.correct : P6625362133207257037.Spec := by
  intro n
  simp only [A063657, Nat.add_sub_cancel, A063657.P6625362133207257037.a, A063657.P9374789070347928920.a, A217575, A217575.P8898210276207211588.a, A377809, A377809.P6328072400551004124.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063657

/-! ## A063657.P12432057119878341627

`comp[n+C(row(n), 2)]`
-/

namespace A063657.P12432057119878341627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + Nat.choose (SequenceMachineLib.triRow n) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A063657.P12432057119878341627

namespace A063657

/-- `comp[n+C(row(n), 2)]` -/
def P12432057119878341627.Spec : Prop :=
  ∀ n, (P12432057119878341627.a n : ℤ) = A063657 (n + 1)

end A063657

/-! ## A063657.P9222458629916981493

`comp[col(n)+row(n)²]`
-/

namespace A063657.P9222458629916981493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + SequenceMachineLib.triRow n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A063657.P9222458629916981493

namespace A063657

/-- `comp[col(n)+row(n)²]` -/
def P9222458629916981493.Spec : Prop :=
  ∀ n, (P9222458629916981493.a n : ℤ) = A063657 (n + 1)

end A063657

/-! ## A063657.P6924138522573173079

`lt[n-round(sqrt(n))², 0]`
-/

namespace A063657.P6924138522573173079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A063657.P6924138522573173079

namespace A063657

/-- `lt[n-round(sqrt(n))², 0]` -/
def P6924138522573173079.Spec : Prop :=
  ∀ n, (P6924138522573173079.a n : ℤ) = A063657 (n + 1)

end A063657

/-! ## A063657.P8548117765783883211

`C(row(n)+3, 2)+n`
-/

namespace A063657.P8548117765783883211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 3) 2 + n

end

end A063657.P8548117765783883211

namespace A063657

/-- `C(row(n)+3, 2)+n` -/
def P8548117765783883211.Spec : Prop :=
  ∀ n, (P8548117765783883211.a n : ℤ) = A063657 (n + 1)

end A063657

/-! ## A063657.P4824790711460613257

`eq[1, floor(2*sqrt(n))%2]`
-/

namespace A063657.P4824790711460613257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063657.P4824790711460613257

namespace A063657

/-- `eq[1, floor(2*sqrt(n))%2]` -/
def P4824790711460613257.Spec : Prop :=
  ∀ n, (P4824790711460613257.a n : ℤ) = A063657 (n + 1)

end A063657

/-! ## A063657.P1933594571752130832

`C(∑[char[∑[n]]]+2, 2)+n`
-/

namespace A063657.P1933594571752130832
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 + n

end

end A063657.P1933594571752130832

namespace A063657

/-- `C(∑[char[∑[n]]]+2, 2)+n` -/
def P1933594571752130832.Spec : Prop :=
  ∀ n, (P1933594571752130832.a n : ℤ) = A063657 (n + 1)

end A063657

/-! ## A063657.P7600401984662740051

`col(n)+1+(row(n)+1)*(row(n)+2)`
-/

namespace A063657.P7600401984662740051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 1 + (SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triRow n + 2)

end

end A063657.P7600401984662740051

namespace A063657

/-- `col(n)+1+(row(n)+1)*(row(n)+2)` -/
def P7600401984662740051.Spec : Prop :=
  ∀ n, (P7600401984662740051.a n : ℤ) = A063657 (n + 1)

end A063657

/-! ## A063657.P9374789070347928920

`A377809(n+1)+1+n`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063657

/-- `A377809(n+1)+1+n` -/
def P9374789070347928920.Spec : Prop :=
  ∀ n, P9374789070347928920.a n = A063657 (n + 1)

theorem P9374789070347928920.correct : P9374789070347928920.Spec := by
  intro n
  simp only [A063657, Nat.add_sub_cancel]

end A063657

/-! ## A063657.P7736351764154272

`A294317(n)+2*n+3`
-/

namespace A063657.P7736351764154272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + (2 * n + 3 : ℤ)

end

end A063657.P7736351764154272

namespace A063657

/-- `A294317(n)+2*n+3` -/
def P7736351764154272.Spec : Prop :=
  ∀ n, P7736351764154272.a n = A063657 (n + 1)

end A063657

/-! ## A063657.P10697177471301962009

`A127739(n+1)+comp[∑[n]]`
-/

namespace A063657.P10697177471301962009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A063657.P10697177471301962009

namespace A063657

/-- `A127739(n+1)+comp[∑[n]]` -/
def P10697177471301962009.Spec : Prop :=
  ∀ n, P10697177471301962009.a n = A063657 (n + 1)

end A063657

/-! ## A063657.P16065066397961302269

`A128076(n+1)+2*(n+1)`
-/

namespace A063657.P16065066397961302269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + (2 * (n + 1) : ℤ)

end

end A063657.P16065066397961302269

namespace A063657

/-- `A128076(n+1)+2*(n+1)` -/
def P16065066397961302269.Spec : Prop :=
  ∀ n, P16065066397961302269.a n = A063657 (n + 1)

end A063657

/-! ## A063657.P8517165846543033933

`A000217(round(sqrt(2*n+1))+1)+n`
-/

namespace A063657.P8517165846543033933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) + 1).toNat + (n : ℤ)

end

end A063657.P8517165846543033933

namespace A063657

/-- `A000217(round(sqrt(2*n+1))+1)+n` -/
def P8517165846543033933.Spec : Prop :=
  ∀ n, P8517165846543033933.a n = A063657 (n + 1)

end A063657

/-! ## A063657.P11542403809539349167

`A008805(A131507(n)+1)+n`
-/

namespace A063657.P11542403809539349167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A131507 n + 1).toNat + (n : ℤ)

end

end A063657.P11542403809539349167

namespace A063657

/-- `A008805(A131507(n)+1)+n` -/
def P11542403809539349167.Spec : Prop :=
  ∀ n, P11542403809539349167.a n = A063657 (n + 1)

end A063657

/-! ## A063657.P16812080642080323432

`A118011(n+1)+A025581(n)`
-/

namespace A063657.P16812080642080323432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118011 (n + 1) + A025581 n

end

end A063657.P16812080642080323432

namespace A063657

/-- `A118011(n+1)+A025581(n)` -/
def P16812080642080323432.Spec : Prop :=
  ∀ n, P16812080642080323432.a n = A063657 (n + 1)

end A063657

/-! ## A063657.P494836300303817008

`A111652(n+1)+A063656(n)`
-/

namespace A063657.P494836300303817008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111652 (n + 1) + A063656 n

end

end A063657.P494836300303817008

namespace A063657

/-- `A111652(n+1)+A063656(n)` -/
def P494836300303817008.Spec : Prop :=
  ∀ n, P494836300303817008.a n = A063657 (n + 1)

end A063657

/-! ## A063657.P10235106999339692180

`A161680(A133196(n+1))+n`
-/

namespace A063657.P10235106999339692180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A133196 (n + 1)).toNat + (n : ℤ)

end

end A063657.P10235106999339692180

namespace A063657

/-- `A161680(A133196(n+1))+n` -/
def P10235106999339692180.Spec : Prop :=
  ∀ n, P10235106999339692180.a n = A063657 (n + 1)

end A063657

/-! ## A063657.P13290076895278586321

`A185870(n+1)-A063656(n)`
-/

namespace A063657.P13290076895278586321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185870 (n + 1) - A063656 n

end

end A063657.P13290076895278586321

namespace A063657

/-- `A185870(n+1)-A063656(n)` -/
def P13290076895278586321.Spec : Prop :=
  ∀ n, P13290076895278586321.a n = A063657 (n + 1)

end A063657

/-! ## A063657.P7866894278147617077

`n+1+A000096(A002024(n+1))`
-/

namespace A063657.P7866894278147617077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000096 (A002024 (n + 1)).toNat

end

end A063657.P7866894278147617077

namespace A063657

/-- `n+1+A000096(A002024(n+1))` -/
def P7866894278147617077.Spec : Prop :=
  ∀ n, P7866894278147617077.a n = A063657 (n + 1)

end A063657

/-!
# A063658: The number of integers m in [1..n] for which gcd(m,n) is divisible by a square greater than 1.

The programs for A063658, the canonical program `A063658.P2835377320300210005` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063658 has offset 1).

The definition of A063658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063658.P2835377320300210005

`∑{d}[n+1, A000010((n+1)/#)*(1-A008683(#)²)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A063658

/-- `∑{d}[n+1, A000010((n+1)/#)*(1-A008683(#)²)]` -/
def P2835377320300210005.Spec : Prop :=
  ∀ n, P2835377320300210005.a n = A063658 (n + 1)

theorem P2835377320300210005.correct : P2835377320300210005.Spec := by
  intro n
  simp only [A063658, Nat.add_sub_cancel]

end A063658

/-! ## A063658.P13361969341098419175

`1-A063659(n+1)+n`
-/

namespace A063658.P13361969341098419175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A063659 (n + 1) + (n : ℤ)

end

end A063658.P13361969341098419175

namespace A063658

/-- `1-A063659(n+1)+n` -/
def P13361969341098419175.Spec : Prop :=
  ∀ n, P13361969341098419175.a n = A063658 (n + 1)

theorem P13361969341098419175.correct : P13361969341098419175.Spec := by
  intro n
  simp only [A063658, Nat.add_sub_cancel, A063658.P13361969341098419175.a, A063658.P2835377320300210005.f1, A063658.P2835377320300210005.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A063659, A063659.P17976112420004081821.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063658

/-! ## A063658.P15417569516115138274

`1-∑{d}[n+1, A130107(#)]+n`
-/

namespace A063658.P15417569516115138274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A130107 d + (n : ℤ)

end

end A063658.P15417569516115138274

namespace A063658

/-- `1-∑{d}[n+1, A130107(#)]+n` -/
def P15417569516115138274.Spec : Prop :=
  ∀ n, P15417569516115138274.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P7317960090840900341

`n+1-A254520(n+1)/(n+1)`
-/

namespace A063658.P7317960090840900341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A254520 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A063658.P7317960090840900341

namespace A063658

/-- `n+1-A254520(n+1)/(n+1)` -/
def P7317960090840900341.Spec : Prop :=
  ∀ n, P7317960090840900341.a n = (A063658 (n + 1) : ℚ)

theorem P7317960090840900341.correct : P7317960090840900341.Spec := by
  intro n
  simp only [A063658, Nat.add_sub_cancel, A063658.P7317960090840900341.a, A063658.P2835377320300210005.f1, A063658.P2835377320300210005.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A254520, A254520.P14622412056457031035.a, A003557, A003557.P6364735403900941810.a, A063659, A063659.P17976112420004081821.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063658

/-! ## A063658.P13917009805778916144

`A024000(A063659(n+1))+n`
-/

namespace A063658.P13917009805778916144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A063659 (n + 1)).toNat + (n : ℤ)

end

end A063658.P13917009805778916144

namespace A063658

/-- `A024000(A063659(n+1))+n` -/
def P13917009805778916144.Spec : Prop :=
  ∀ n, P13917009805778916144.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P17034149585807162789

`A000027(n+1)%A063659(n+1)`
-/

namespace A063658.P17034149585807162789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A063659 (n + 1))

end

end A063658.P17034149585807162789

namespace A063658

/-- `A000027(n+1)%A063659(n+1)` -/
def P17034149585807162789.Spec : Prop :=
  ∀ n, P17034149585807162789.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P18147628890397751192

`A061669(n+1)%A063659(n+1)`
-/

namespace A063658.P18147628890397751192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061669 (n + 1)) (A063659 (n + 1))

end

end A063658.P18147628890397751192

namespace A063658

/-- `A061669(n+1)%A063659(n+1)` -/
def P18147628890397751192.Spec : Prop :=
  ∀ n, P18147628890397751192.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P2418179155766182386

`A066560(n+1)%A063659(n+1)`
-/

namespace A063658.P2418179155766182386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066560 (n + 1)) (A063659 (n + 1))

end

end A063658.P2418179155766182386

namespace A063658

/-- `A066560(n+1)%A063659(n+1)` -/
def P2418179155766182386.Spec : Prop :=
  ∀ n, P2418179155766182386.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P7182613608603693189

`A087156(n+1)%A063659(n+1)`
-/

namespace A063658.P7182613608603693189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A063659 (n + 1))

end

end A063658.P7182613608603693189

namespace A063658

/-- `A087156(n+1)%A063659(n+1)` -/
def P7182613608603693189.Spec : Prop :=
  ∀ n, P7182613608603693189.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P4303434342313492391

`A095208(n+1)%A063659(n+1)`
-/

namespace A063658.P4303434342313492391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095208 (n + 1)) (A063659 (n + 1))

end

end A063658.P4303434342313492391

namespace A063658

/-- `A095208(n+1)%A063659(n+1)` -/
def P4303434342313492391.Spec : Prop :=
  ∀ n, P4303434342313492391.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P994807545667147785

`A143545(n+1)%A063659(n+1)`
-/

namespace A063658.P994807545667147785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143545 (n + 1)) (A063659 (n + 1))

end

end A063658.P994807545667147785

namespace A063658

/-- `A143545(n+1)%A063659(n+1)` -/
def P994807545667147785.Spec : Prop :=
  ∀ n, P994807545667147785.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P17687099733727678909

`∑{d}[n+1, A007431(#)*A048105((n+1)/#)]`
-/

namespace A063658.P17687099733727678909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A048105 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063658.P17687099733727678909

namespace A063658

/-- `∑{d}[n+1, A007431(#)*A048105((n+1)/#)]` -/
def P17687099733727678909.Spec : Prop :=
  ∀ n, P17687099733727678909.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P5451468495813555718

`∑{d}[n+1, A000010(#)*A107078((n+1)/#)]`
-/

namespace A063658.P5451468495813555718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A107078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063658.P5451468495813555718

namespace A063658

/-- `∑{d}[n+1, A000010(#)*A107078((n+1)/#)]` -/
def P5451468495813555718.Spec : Prop :=
  ∀ n, P5451468495813555718.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P15148444575315070517

`∑{d}[n+1, A071325(#)*A130107((n+1)/#)]`
-/

namespace A063658.P15148444575315070517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A071325 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063658.P15148444575315070517

namespace A063658

/-- `∑{d}[n+1, A071325(#)*A130107((n+1)/#)]` -/
def P15148444575315070517.Spec : Prop :=
  ∀ n, P15148444575315070517.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P17378573213245444250

`∑{d}[n+1, A008683(#)*A244963((n+1)/#)]`
-/

namespace A063658.P17378573213245444250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A244963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063658.P17378573213245444250

namespace A063658

/-- `∑{d}[n+1, A008683(#)*A244963((n+1)/#)]` -/
def P17378573213245444250.Spec : Prop :=
  ∀ n, P17378573213245444250.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P2051858173172339499

`1-∑{d}[n+1, A008683(#)*A001615((n+1)/#)]+n`
-/

namespace A063658.P2051858173172339499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A008683 d * A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + (n : ℤ)

end

end A063658.P2051858173172339499

namespace A063658

/-- `1-∑{d}[n+1, A008683(#)*A001615((n+1)/#)]+n` -/
def P2051858173172339499.Spec : Prop :=
  ∀ n, P2051858173172339499.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P10370318041179945408

`A088613(n+1)%A063659(n+1)`
-/

namespace A063658.P10370318041179945408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088613 (n + 1)) (A063659 (n + 1))

end

end A063658.P10370318041179945408

namespace A063658

/-- `A088613(n+1)%A063659(n+1)` -/
def P10370318041179945408.Spec : Prop :=
  ∀ n, P10370318041179945408.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P14279303358503264214

`A124260(n+1)%A063659(n+1)`
-/

namespace A063658.P14279303358503264214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124260 (n + 1)) (A063659 (n + 1))

end

end A063658.P14279303358503264214

namespace A063658

/-- `A124260(n+1)%A063659(n+1)` -/
def P14279303358503264214.Spec : Prop :=
  ∀ n, P14279303358503264214.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P2672702966123729927

`A060401(n+1)%A063659(n+1)`
-/

namespace A063658.P2672702966123729927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A063659 (n + 1))

end

end A063658.P2672702966123729927

namespace A063658

/-- `A060401(n+1)%A063659(n+1)` -/
def P2672702966123729927.Spec : Prop :=
  ∀ n, P2672702966123729927.a n = A063658 (n + 1)

end A063658

/-! ## A063658.P14239663996439881942

`n+1-A130106(∑[n+1])`
-/

namespace A063658.P14239663996439881942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A130106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063658.P14239663996439881942

namespace A063658

/-- `n+1-A130106(∑[n+1])` -/
def P14239663996439881942.Spec : Prop :=
  ∀ n, P14239663996439881942.a n = A063658 (n + 1)

end A063658

/-!
# A063659: The number of integers m in [1..n] for which gcd(m,n) is not divisible by a square greater than 1.

The programs for A063659, the canonical program `A063659.P17976112420004081821` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063659 has offset 1).

The definition of A063659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063659.P17976112420004081821

`n+1-A063658(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063659

/-- `n+1-A063658(n+1)` -/
def P17976112420004081821.Spec : Prop :=
  ∀ n, P17976112420004081821.a n = A063659 (n + 1)

theorem P17976112420004081821.correct : P17976112420004081821.Spec := by
  intro n
  simp only [A063659, Nat.add_sub_cancel]

end A063659

/-! ## A063659.P12224382745204496267

`∑{d}[n+1, A000010(#)*A008683((n+1)/#)²]`
-/

namespace A063659.P12224382745204496267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A063659.P12224382745204496267

namespace A063659

/-- `∑{d}[n+1, A000010(#)*A008683((n+1)/#)²]` -/
def P12224382745204496267.Spec : Prop :=
  ∀ n, P12224382745204496267.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P16184055754133622402

`∑{#}[n, A008683(gcd(n+1, #+1))²]`
-/

namespace A063659.P16184055754133622402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008683 (Nat.gcd (n + 1) (k + 1)) ^ 2

end

end A063659.P16184055754133622402

namespace A063659

/-- `∑{#}[n, A008683(gcd(n+1, #+1))²]` -/
def P16184055754133622402.Spec : Prop :=
  ∀ n, P16184055754133622402.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P1307262706961777203

`∑{d}[n+1, A130107(#)]`
-/

namespace A063659.P1307262706961777203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d

end

end A063659.P1307262706961777203

namespace A063659

/-- `∑{d}[n+1, A130107(#)]` -/
def P1307262706961777203.Spec : Prop :=
  ∀ n, P1307262706961777203.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P1674859139354232024

`A254520(n+1)/(n+1)`
-/

namespace A063659.P1674859139354232024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254520 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A063659.P1674859139354232024

namespace A063659

/-- `A254520(n+1)/(n+1)` -/
def P1674859139354232024.Spec : Prop :=
  ∀ n, P1674859139354232024.a n = (A063659 (n + 1) : ℚ)

end A063659

/-! ## A063659.P8030400348371096999

`∑{d}[n+1, #*A271102((n+1)/#)]`
-/

namespace A063659.P8030400348371096999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P8030400348371096999

namespace A063659

/-- `∑{d}[n+1, #*A271102((n+1)/#)]` -/
def P8030400348371096999.Spec : Prop :=
  ∀ n, P8030400348371096999.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P10790794823140621669

`A140694(n+1)/A014963(n+1)`
-/

namespace A063659.P10790794823140621669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140694 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A063659.P10790794823140621669

namespace A063659

/-- `A140694(n+1)/A014963(n+1)` -/
def P10790794823140621669.Spec : Prop :=
  ∀ n, P10790794823140621669.a n = (A063659 (n + 1) : ℚ)

end A063659

/-! ## A063659.P11719016580666252244

`∑{d}[n+1, A000010(#)*A008966((n+1)/#)]`
-/

namespace A063659.P11719016580666252244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P11719016580666252244

namespace A063659

/-- `∑{d}[n+1, A000010(#)*A008966((n+1)/#)]` -/
def P11719016580666252244.Spec : Prop :=
  ∀ n, P11719016580666252244.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P3133226749035480512

`∑{d}[n+1, A001615(#)*A008683((n+1)/#)]`
-/

namespace A063659.P3133226749035480512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P3133226749035480512

namespace A063659

/-- `∑{d}[n+1, A001615(#)*A008683((n+1)/#)]` -/
def P3133226749035480512.Spec : Prop :=
  ∀ n, P3133226749035480512.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P368210369419610286

`∑{d}[n+1, A007432(#)*A048691((n+1)/#)]`
-/

namespace A063659.P368210369419610286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P368210369419610286

namespace A063659

/-- `∑{d}[n+1, A007432(#)*A048691((n+1)/#)]` -/
def P368210369419610286.Spec : Prop :=
  ∀ n, P368210369419610286.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P10362427716213084347

`∑{d}[n+1, A007427(#)*A060648((n+1)/#)]`
-/

namespace A063659.P10362427716213084347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P10362427716213084347

namespace A063659

/-- `∑{d}[n+1, A007427(#)*A060648((n+1)/#)]` -/
def P10362427716213084347.Spec : Prop :=
  ∀ n, P10362427716213084347.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P10711538304551654324

`∑{d}[n+1, A007428(#)*A060724((n+1)/#)]`
-/

namespace A063659.P10711538304551654324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A060724 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P10711538304551654324

namespace A063659

/-- `∑{d}[n+1, A007428(#)*A060724((n+1)/#)]` -/
def P10711538304551654324.Spec : Prop :=
  ∀ n, P10711538304551654324.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P14867543671360555086

`∑{d}[n+1, A000203(#)*A307445((n+1)/#)]`
-/

namespace A063659.P14867543671360555086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P14867543671360555086

namespace A063659

/-- `∑{d}[n+1, A000203(#)*A307445((n+1)/#)]` -/
def P14867543671360555086.Spec : Prop :=
  ∀ n, P14867543671360555086.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P720807648261121585

`∑{d}[n+1, A062369(#)*A247343((n+1)/#)]`
-/

namespace A063659.P720807648261121585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062369 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P720807648261121585

namespace A063659

/-- `∑{d}[n+1, A062369(#)*A247343((n+1)/#)]` -/
def P720807648261121585.Spec : Prop :=
  ∀ n, P720807648261121585.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P5485264358846988061

`∑{d}[n+1, A018804(#)*A328729((n+1)/#)]`
-/

namespace A063659.P5485264358846988061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P5485264358846988061

namespace A063659

/-- `∑{d}[n+1, A018804(#)*A328729((n+1)/#)]` -/
def P5485264358846988061.Spec : Prop :=
  ∀ n, P5485264358846988061.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P16345269875271561669

`∑{d}[n+1, A046692(#)*A327251((n+1)/#)]`
-/

namespace A063659.P16345269875271561669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A327251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P16345269875271561669

namespace A063659

/-- `∑{d}[n+1, A046692(#)*A327251((n+1)/#)]` -/
def P16345269875271561669.Spec : Prop :=
  ∀ n, P16345269875271561669.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P7106765887847559807

`∑{d}[n+1, A055615(#)*A322577((n+1)/#)]`
-/

namespace A063659.P7106765887847559807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A322577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P7106765887847559807

namespace A063659

/-- `∑{d}[n+1, A055615(#)*A322577((n+1)/#)]` -/
def P7106765887847559807.Spec : Prop :=
  ∀ n, P7106765887847559807.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P4117273212346548854

`∑{d}[n+1, A078429(#)*A307425((n+1)/#)]`
-/

namespace A063659.P4117273212346548854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078429 d * A307425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P4117273212346548854

namespace A063659

/-- `∑{d}[n+1, A078429(#)*A307425((n+1)/#)]` -/
def P4117273212346548854.Spec : Prop :=
  ∀ n, P4117273212346548854.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P1091083370979866327

`∑{d}[n+1, A065958(#)*A328502((n+1)/#)]`
-/

namespace A063659.P1091083370979866327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P1091083370979866327

namespace A063659

/-- `∑{d}[n+1, A065958(#)*A328502((n+1)/#)]` -/
def P1091083370979866327.Spec : Prop :=
  ∀ n, P1091083370979866327.a n = A063659 (n + 1)

end A063659

/-! ## A063659.P14840747432357461694

`∑{d}[n+1, A078461(#)*A326305((n+1)/#)]`
-/

namespace A063659.P14840747432357461694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P14840747432357461694

namespace A063659

/-- `∑{d}[n+1, A078461(#)*A326305((n+1)/#)]` -/
def P14840747432357461694.Spec : Prop :=
  ∀ n, P14840747432357461694.a n = A063659 (n + 1)

end A063659

/-!
# A063660: Min{ m | m > n and both numbers have at least one common decimal digit}.

The programs for A063660, there is no canonical definition to state claims against.
-/

/-! ## A063660.P6106542319205532246

`A063661(n)+n`
-/

namespace A063660.P6106542319205532246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063661 n + (n : ℤ)

end

end A063660.P6106542319205532246

/-! ## A063660.P7318386610841067011

`abs(A001489(n)-A063661(n))`
-/

namespace A063660.P7318386610841067011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A063661 n|

end

end A063660.P7318386610841067011

/-! ## A063660.P1463653750300857884

`A020710(n)-(5-A063661(n))`
-/

namespace A063660.P1463653750300857884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n - (5 - A063661 n)

end

end A063660.P1463653750300857884

/-! ## A063660.P5889861368396338785

`A005843(n)-(n-A063661(n))`
-/

namespace A063660.P5889861368396338785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A063661 n)

end

end A063660.P5889861368396338785

/-! ## A063660.P2796864174493024035

`A000027(2*n-(n-A063661(n)))`
-/

namespace A063660.P2796864174493024035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((2 * n : ℤ) - ((n : ℤ) - A063661 n)).toNat

end

end A063660.P2796864174493024035

/-! ## A063660.P11049927734282780191

`A004277(n)-(n-A063661(A028310(n)))`
-/

namespace A063660.P11049927734282780191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - ((n : ℤ) - A063661 (A028310 n).toNat)

end

end A063660.P11049927734282780191

/-! ## A063660.P5103434874967132232

`A061885(n)-(A057944(n)-A063661(n))`
-/

namespace A063660.P5103434874967132232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n - (A057944 n - A063661 n)

end

end A063660.P5103434874967132232

/-!
# A063661: a(n) = A063660(n) - n.

The programs for A063661, there is no canonical definition to state claims against.
-/

/-! ## A063661.P13460339545353645987

`A063660(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063661.P13460339545353645987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 n - (n : ℤ)

end

end A063661.P13460339545353645987

/-! ## A063661.P5812655287738549640

`abs(A063660(n)+A001489(n))`
-/

namespace A063661.P5812655287738549640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063660 n + A001489 n|

end

end A063661.P5812655287738549640

/-! ## A063661.P13231222732425662260

`(A063660(n)+A008605(n))%12`
-/

namespace A063661.P13231222732425662260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063660 n + A008605 n) 12

end

end A063661.P13231222732425662260

/-! ## A063661.P11218019135597257607

`A001478(n+1)+A063660(n)+1`
-/

namespace A063661.P11218019135597257607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A063660 n + 1)

end

end A063661.P11218019135597257607

/-! ## A063661.P12536496317049906801

`A343160(A063660(n)+A024000(n))`
-/

namespace A063661.P12536496317049906801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343160 (A063660 n + A024000 n).toNat

end

end A063661.P12536496317049906801

/-! ## A063661.P13651947360092654900

`A263131(A063660(n)+A001478(n+1))`
-/

namespace A063661.P13651947360092654900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263131 (A063660 n + A001478 (n + 1)).toNat

end

end A063661.P13651947360092654900

/-! ## A063661.P5225383647074398849

`A049347(A082286(n))+A063660(n)+A024000(n)`
-/

namespace A063661.P5225383647074398849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A082286 n).toNat + (A063660 n + A024000 n)

end

end A063661.P5225383647074398849

/-! ## A063661.P9794727610385823641

`A114327(A000096(n))+A063660(n)`
-/

namespace A063661.P9794727610385823641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A000096 n).toNat + A063660 n

end

end A063661.P9794727610385823641

/-!
# A063662: Starting with 0, select the next number having in decimal notation at least one common digit.

The programs for A063662, there is no canonical definition to state claims against.
-/

/-! ## A063662.P3214885865363648088

`comp[A276822(n+1)]`
-/

namespace A063662.P3214885865363648088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063662.P3214885865363648088

/-! ## A063662.P13286367266675258944

`A063660(a(n-1))` with `a(0)=0`
-/

namespace A063662.P13286367266675258944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A063660 (a (n - 1)).toNat

end

end A063662.P13286367266675258944

/-! ## A063662.P16468851684051382621

`record[A063660(n)%A182363(n)]`
-/

namespace A063662.P16468851684051382621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063660 n) (A182363 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063662.P16468851684051382621

/-! ## A063662.P15914101220990722208

`record[(A063661(n)+n)%A182363(n)]`
-/

namespace A063662.P15914101220990722208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063661 n + (n : ℤ)) (A182363 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063662.P15914101220990722208

/-! ## A063662.P17899639834954776005

`record[(A020710(n)-(5-A063661(n)))%A182363(n)]`
-/

namespace A063662.P17899639834954776005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020710 n - (5 - A063661 n)) (A182363 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063662.P17899639834954776005

/-! ## A063662.P10804633779338358111

`record[(A005843(n)-(n-A063661(n)))%A182363(n)]`
-/

namespace A063662.P10804633779338358111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n - ((n : ℤ) - A063661 n)) (A182363 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063662.P10804633779338358111

/-! ## A063662.P3041320045016304795

`lt[2*A225693(n), A117462(n+1)]`
-/

namespace A063662.P3041320045016304795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063662.P3041320045016304795

/-! ## A063662.P16174681402299237352

`eq[A123895(n)%2, A179801(n+1)]`
-/

namespace A063662.P16174681402299237352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123895 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063662.P16174681402299237352

/-! ## A063662.P409936291135873904

`eq[A000035(A123895(n)), A179801(n+1)]`
-/

namespace A063662.P409936291135873904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A123895 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063662.P409936291135873904

/-! ## A063662.P8362600519847188952

`lt[A225693(n), atan(A173883(n+2)+1)]`
-/

namespace A063662.P8362600519847188952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A173883 (n + 2) + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A063662.P8362600519847188952

/-!
# A063663: Numbers which can be written as b^2*c^2*(b^2+c^2).

The programs for A063663, there is no canonical definition to state claims against.
-/

/-! ## A063663.P1880154518208974240

`record[∏{digits}[A163909(n), #]]`
-/

namespace A063663.P1880154518208974240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163909 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063663.P1880154518208974240

/-!
# A063664: Numbers whose reciprocal is the sum of two reciprocals of squares.

The programs for A063664, there is no canonical definition to state claims against.
-/

/-! ## A063664.P11344018966809657913

`∪[A008594(n+1)², A094147(n+1)]`
-/

namespace A063664.P11344018966809657913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063664.P11344018966809657913

/-! ## A063664.P605049496345019397

`lt[A063665(3*n+2), A063665(n+1)]+1`
-/

namespace A063664.P605049496345019397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063665 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A063664.P605049496345019397

/-! ## A063664.P10345417455292606006

`lt[1/A079082(n+1), A063665(n+1)]+1`
-/

namespace A063664.P10345417455292606006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A079082 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A063664.P10345417455292606006

/-! ## A063664.P18082077166367570995

`lt[A063665(n+1), A063665(A065190(n+1))]`
-/

namespace A063664.P18082077166367570995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063665 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063664.P18082077166367570995

/-! ## A063664.P3253040537067433334

`lt[A112606(A007348(n+2)), A063665(n+1)]+1`
-/

namespace A063664.P3253040537067433334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112606 (A007348 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A063664.P3253040537067433334

/-!
# A063665: Number of ways 1/n can be written as 1/x^2 + 1/y^2 with y >= x >= 1.

The programs for A063665, there is no canonical definition to state claims against.
-/

/-! ## A063665.P13097742520220981820

`val(A222217(A328667(n+1)), 5)`
-/

namespace A063665.P13097742520220981820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A222217 (A328667 (n + 1)).toNat).toNat 5

end

end A063665.P13097742520220981820

/-! ## A063665.P10540494137759391594

`(n*A002266(A080399(n+1)))%2`
-/

namespace A063665.P10540494137759391594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A002266 (A080399 (n + 1)).toNat) 2

end

end A063665.P10540494137759391594

/-! ## A063665.P11640701779287978098

`A002266(A080399(n+1))%A000034(n)`
-/

namespace A063665.P11640701779287978098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002266 (A080399 (n + 1)).toNat) (A000034 n)

end

end A063665.P11640701779287978098

/-! ## A063665.P5755636991441025403

`and(A000035(n), A002266(A080399(n+1)))`
-/

namespace A063665.P5755636991441025403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000035 n) (A002266 (A080399 (n + 1)).toNat)

end

end A063665.P5755636991441025403

/-! ## A063665.P8373329632136207276

`and(1, n*A142183(n+1)*A002266(A080399(n+1)))`
-/

namespace A063665.P8373329632136207276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A142183 (n + 1) * A002266 (A080399 (n + 1)).toNat)

end

end A063665.P8373329632136207276

/-! ## A063665.P17224956544968712347

`val(A000217((2*(n+1))²), A018796(2*(n+1)))`
-/

namespace A063665.P17224956544968712347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000217 ((2 * (n + 1)) ^ 2)).toNat (A018796 (2 * (n + 1))).toNat

end

end A063665.P17224956544968712347

/-! ## A063665.P13826845358490795285

`A353814(A393231(n+2))`
-/

namespace A063665.P13826845358490795285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353814 (A393231 (n + 2)).toNat

end

end A063665.P13826845358490795285

/-! ## A063665.P3381512172015305638

`and(A331414(n), A353556(n+1))`
-/

namespace A063665.P3381512172015305638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A331414 n) (A353556 (n + 1))

end

end A063665.P3381512172015305638

/-! ## A063665.P1702422821076963336

`and(A253791(n), A369961(n))`
-/

namespace A063665.P1702422821076963336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A253791 n) (A369961 n)

end

end A063665.P1702422821076963336

/-! ## A063665.P1561267381220974281

`A253791(n)%A348364(n+1)`
-/

namespace A063665.P1561267381220974281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253791 n) (A348364 (n + 1))

end

end A063665.P1561267381220974281

/-!
# A063666: Euclidean order types: number of realizable order types of n points in the plane.

The programs for A063666, there is no canonical definition to state claims against.
-/

/-! ## A063666.P14694942950361198354

`A006247(A100793(n)+2)`
-/

namespace A063666.P14694942950361198354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006247 (A100793 n + 2).toNat

end

end A063666.P14694942950361198354

/-! ## A063666.P11055102280833615037

`A006247(A001096(n)+3)`
-/

namespace A063666.P11055102280833615037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006247 (A001096 n + 3).toNat

end

end A063666.P11055102280833615037

/-!
# A063667: Number of solutions of phi(x) = 12n + 2.

The programs for A063667, there is no canonical definition to state claims against.
-/

/-! ## A063667.P17609308546091253863

`A014197(2+12*n)`
-/

namespace A063667.P17609308546091253863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (2 + 12 * n)

end

end A063667.P17609308546091253863

/-! ## A063667.P3792459904244823189

`A280712(A017545(n))+A000038(n)`
-/

namespace A063667.P3792459904244823189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280712 (A017545 n).toNat + A000038 n

end

end A063667.P3792459904244823189

/-! ## A063667.P9696184054090302405

`A280712(2*n+1)+A280712(A017545(n))`
-/

namespace A063667.P9696184054090302405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280712 (2 * n + 1) + A280712 (A017545 n).toNat

end

end A063667.P9696184054090302405

/-! ## A063667.P7741661770919466836

`A032446(6*n+1)`
-/

namespace A063667.P7741661770919466836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (6 * n + 1)

end

end A063667.P7741661770919466836

/-! ## A063667.P14882652711794131358

`A032446(A016921(n))%4`
-/

namespace A063667.P14882652711794131358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032446 (A016921 n).toNat) 4

end

end A063667.P14882652711794131358

/-! ## A063667.P9797825160965398597

`A014197(A017545(n))%4`
-/

namespace A063667.P9797825160965398597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014197 (A017545 n).toNat) 4

end

end A063667.P9797825160965398597

/-! ## A063667.P8528317281316675982

`A025488(2*(n+1))%A071615(A060747(3*n+1))`
-/

namespace A063667.P8528317281316675982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025488 (2 * (n + 1))) (A071615 (A060747 (3 * n + 1)).toNat)

end

end A063667.P8528317281316675982

/-! ## A063667.P17374592072810154555

`A000122(A032786(2*n+5))+A000007(n)`
-/

namespace A063667.P17374592072810154555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A032786 (2 * n + 5)).toNat + A000007 n

end

end A063667.P17374592072810154555

/-! ## A063667.P5097470743863880948

`A165083(A256457(n+1))*A256432(2*n+1)`
-/

namespace A063667.P5097470743863880948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165083 (A256457 (n + 1)).toNat * A256432 (2 * n + 1)

end

end A063667.P5097470743863880948

/-! ## A063667.P16848389450966909101

`A301593(A033010(n+2)+1)`
-/

namespace A063667.P16848389450966909101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301593 (A033010 (n + 2) + 1).toNat

end

end A063667.P16848389450966909101

/-!
# A063668: Numbers of the form 12*k + 2 with nonempty inverse totient set.

The programs for A063668, there is no canonical definition to state claims against.
-/

/-! ## A063668.P11137319725726028917

`12*A289364(n+1)+2`
-/

namespace A063668.P11137319725726028917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A289364 (n + 1) + 2

end

end A063668.P11137319725726028917

/-! ## A063668.P2414660652975019599

`A017545(A289364(n+1))`
-/

namespace A063668.P2414660652975019599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 (A289364 (n + 1)).toNat

end

end A063668.P2414660652975019599

/-! ## A063668.P2568708766194192269

`record[A000010(A332511(n+1))]`
-/

namespace A063668.P2568708766194192269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A332511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063668.P2568708766194192269

/-! ## A063668.P13759302031384359739

`A000010(∩[A332511(n+1), n²])`
-/

namespace A063668.P13759302031384359739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332511 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A063668.P13759302031384359739

/-! ## A063668.P10457809716460959514

`A000010(∩[A000290(n), A332511(n+1)])`
-/

namespace A063668.P10457809716460959514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332511 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A063668.P10457809716460959514

/-!
# A063669: Hypotenuses of reciprocal Pythagorean triangles: number of solutions to 1/(12n)^2 = 1/b^2 + 1/c^2 [with b >= c > 0]; also number of values of A020885 (with repetitions) which divide n.

The programs for A063669, there is no canonical definition to state claims against.
-/

/-! ## A063669.P12668845952529383814

`A279496(A333046(n+1))`
-/

namespace A063669.P12668845952529383814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279496 (A333046 (n + 1)).toNat

end

end A063669.P12668845952529383814

/-! ## A063669.P3740564219185341263

`A279496(3*A153679(n+1))`
-/

namespace A063669.P3740564219185341263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279496 (3 * A153679 (n + 1)).toNat

end

end A063669.P3740564219185341263

/-! ## A063669.P5696382035017496217

`A279496(C(∏{p}[n+1, #], A279496(3*(n+1))))`
-/

namespace A063669.P5696382035017496217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279496 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) (A279496 (3 * (n + 1))).toNat)

end

end A063669.P5696382035017496217

/-! ## A063669.P17557259434784396161

`A279496(A153679(n+1)+A103517(n))`
-/

namespace A063669.P17557259434784396161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279496 (A153679 (n + 1) + A103517 n).toNat

end

end A063669.P17557259434784396161

/-! ## A063669.P15526438973349373665

`A000194(A279496(n+1)^A261865(n+1))`
-/

namespace A063669.P15526438973349373665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A279496 (n + 1) : ℚ) ^ (A261865 (n + 1) : ℤ))).toNat

end

end A063669.P15526438973349373665

/-!
# A063670: Positions of nonzero coefficients in cyclotomic polynomial Phi_n(x), converted from binary to decimal.

The programs for A063670, there is no canonical definition to state claims against.
-/

/-! ## A063670.P7564545329283938591

`A063698(n)+A063696(floor(acot(n)+n))`
-/

namespace A063670.P7564545329283938591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063698 n + A063696 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A063670.P7564545329283938591

/-! ## A063670.P9118773614128432006

`A063698(n)+A063696(round(sqrt(n²+1)))`
-/

namespace A063670.P9118773614128432006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063698 n + A063696 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A063670.P9118773614128432006

/-! ## A063670.P12990586375891708721

`or(A063696(A028310(n)), A063698(n))`
-/

namespace A063670.P12990586375891708721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063696 (A028310 n).toNat) (A063698 n)

end

end A063670.P12990586375891708721

/-! ## A063670.P3892572936764796455

`or(A063696(A065033(2*n)), A063698(n))`
-/

namespace A063670.P3892572936764796455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063696 (A065033 (2 * n)).toNat) (A063698 n)

end

end A063670.P3892572936764796455

/-! ## A063670.P16520080301209467236

`A000038(n)+A063698(n)+A063696(n)`
-/

namespace A063670.P16520080301209467236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A063698 n + A063696 n)

end

end A063670.P16520080301209467236

/-!
# A063671: Positions of nonzero coefficients in cyclotomic polynomial Phi_n(x), A063670 in binary.

The programs for A063671, there is no canonical definition to state claims against.
-/

/-! ## A063671.P13949167499659899324

`A007088(A063670(n))`
-/

namespace A063671.P13949167499659899324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A063670 n).toNat

end

end A063671.P13949167499659899324

/-! ## A063671.P8378495794780663920

`A007088(A019320(n)+2*A063698(n))`
-/

namespace A063671.P8378495794780663920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A019320 n + 2 * A063698 n).toNat

end

end A063671.P8378495794780663920

/-! ## A063671.P8396915525279072250

`A007088(A000038(n)+A063698(n)+A063696(n))`
-/

namespace A063671.P8396915525279072250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000038 n + (A063698 n + A063696 n)).toNat

end

end A063671.P8396915525279072250

/-! ## A063671.P1898237955728832360

`A185544(2*A063670(n))`
-/

namespace A063671.P1898237955728832360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A063670 n).toNat

end

end A063671.P1898237955728832360

/-!
# A063672: Sequence A019320 in binary.

The programs for A063672, there is no canonical definition to state claims against.
-/

/-! ## A063672.P7100923132571365906

`A007088(A019320(n))`
-/

namespace A063672.P7100923132571365906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A019320 n).toNat

end

end A063672.P7100923132571365906

/-! ## A063672.P12150689905945946226

`A007088(A063670(n)-2*A063698(n))`
-/

namespace A063672.P12150689905945946226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A063670 n - 2 * A063698 n).toNat

end

end A063672.P12150689905945946226

/-! ## A063672.P11931602367381374866

`A007088(A253240(∑[n+3])+A000007(n))`
-/

namespace A063672.P11931602367381374866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A253240 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 n).toNat

end

end A063672.P11931602367381374866

/-! ## A063672.P492366390014168671

`A007088(xor(1, A063696(n)-A063698(n))+1)`
-/

namespace A063672.P492366390014168671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor 1 (A063696 n - A063698 n) + 1).toNat

end

end A063672.P492366390014168671

/-! ## A063672.P28134817150943317

`A007088(A000038(n)+A063696(n)-A063698(n))`
-/

namespace A063672.P28134817150943317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000038 n + (A063696 n - A063698 n)).toNat

end

end A063672.P28134817150943317

/-!
# A063673: Denominators of convergents to Pi by Farey fractions.

The programs for A063673, there is no canonical definition to state claims against.
-/

/-! ## A063673.P3397316722982992083

`A057082(2*n+5)`
-/

namespace A063673.P3397316722982992083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057082 (2 * n + 5)

end

end A063673.P3397316722982992083

/-! ## A063673.P17963024403198707038

`record[A057082((n+1)%18+n)]`
-/

namespace A063673.P17963024403198707038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057082 ((n + 1) % 18 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063673.P17963024403198707038

/-! ## A063673.P15371370883782360031

`record[A057082(A093178(n))]`
-/

namespace A063673.P15371370883782360031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057082 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063673.P15371370883782360031

/-! ## A063673.P16259699713111584997

`record[A057082(A000265(n+1))]`
-/

namespace A063673.P16259699713111584997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057082 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063673.P16259699713111584997

/-! ## A063673.P13333402927744206787

`record[A057082(A234587(n+1))]`
-/

namespace A063673.P13333402927744206787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057082 (A234587 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063673.P13333402927744206787

/-! ## A063673.P16087934343544253417

`record[A057082(n)^A088705(n)]`
-/

namespace A063673.P16087934343544253417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057082 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063673.P16087934343544253417

/-! ## A063673.P9712065751095987474

`record[and(A057077(2*n), A057082(n))]`
-/

namespace A063673.P9712065751095987474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057077 (2 * n)) (A057082 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063673.P9712065751095987474

/-!
# A063674: Numerators of increasingly better rational approximations to Pi with increasing denominators (3/1, 13/4, 16/5, 19/6, 22/7, 179/57, ...)

The programs for A063674, there is no canonical definition to state claims against.
-/

/-! ## A063674.P6901308861395784192

`record[A057082(n+4)]`
-/

namespace A063674.P6901308861395784192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057082 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063674.P6901308861395784192

/-! ## A063674.P17455072483155804273

`A057082(2*(n+2))`
-/

namespace A063674.P17455072483155804273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057082 (2 * (n + 2))

end

end A063674.P17455072483155804273

/-! ## A063674.P8635183002143365861

`round(π*A063673(n+1))`
-/

namespace A063674.P8635183002143365861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A063673 (n + 1) : ℝ))

end

end A063674.P8635183002143365861

/-! ## A063674.P17640286485173226462

`record[or(A000038(n), A057082(n))]`
-/

namespace A063674.P17640286485173226462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A057082 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063674.P17640286485173226462

/-! ## A063674.P12705794230617055535

`round(π*record[A057082(A093178(n))])`
-/

namespace A063674.P12705794230617055535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057082 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A063674.P12705794230617055535

/-! ## A063674.P569146216595999391

`round(π*record[A057082(n)^A088705(n)])`
-/

namespace A063674.P569146216595999391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057082 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A063674.P569146216595999391

/-! ## A063674.P1876093434470572642

`A224365(n)+a(n-1)` with `a(0)=3`
-/

namespace A063674.P1876093434470572642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A224365 n + a (n - 1)

end

end A063674.P1876093434470572642

/-!
# A063676: a(1) = 1 and for n > 1 let a(n) = a(n-1) + m, where m is the arithmetic mean of the largest subset of all predecessors such that m is an integer and m is maximal.

The programs for A063676, there is no canonical definition to state claims against.
-/

/-! ## A063676.P12729149379414578866

`A063678(n)+a(n-1)` with `a(0)=1`
-/

namespace A063676.P12729149379414578866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063678 n + a (n - 1)

end

end A063676.P12729149379414578866

/-! ## A063676.P16192048370514185519

`∑[A063678(A028310(n))]`
-/

namespace A063676.P16192048370514185519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063678 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063676.P16192048370514185519

/-! ## A063676.P11869180691383339646

`∑[A063678(A123108(2*n))]`
-/

namespace A063676.P11869180691383339646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063678 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063676.P11869180691383339646

/-! ## A063676.P11819251150096965846

`∑[A063678(A000007(n)+n)]`
-/

namespace A063676.P11819251150096965846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063678 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063676.P11819251150096965846

/-! ## A063676.P2209507830486843374

`∑[A063678(A137735(n²))]`
-/

namespace A063676.P2209507830486843374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063678 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063676.P2209507830486843374

/-!
# A063677: Size of largest subset of {A063676(1), ......., A063676(n)} with an integer arithmetic mean.

The programs for A063677, there is no canonical definition to state claims against.
-/

/-! ## A063677.P17458143366822290977

`A181440(n+1)-A333768(A320253(n+1))`
-/

namespace A063677.P17458143366822290977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (n + 1) - A333768 (A320253 (n + 1)).toNat

end

end A063677.P17458143366822290977

/-! ## A063677.P6223485208056337805

`A285957(n+2)+A057354(A346129(2*n+1))`
-/

namespace A063677.P6223485208056337805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285957 (n + 2) + A057354 (A346129 (2 * n + 1)).toNat

end

end A063677.P6223485208056337805

/-! ## A063677.P14000883490964580291

`A007599(∑[A316826(A194632(n+1))])`
-/

namespace A063677.P14000883490964580291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (A194632 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063677.P14000883490964580291

/-! ## A063677.P7145855521552708938

`log2(gcd(2, Δ[A087058(3*n+2)]+1))+n`
-/

namespace A063677.P7145855521552708938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087058 (3 * n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (f1 (n + 1) - f1 n + 1) : ℝ) + (n : ℝ)

end

end A063677.P7145855521552708938

/-! ## A063677.P13272704542393913373

`A151905(A323505(n))+n`
-/

namespace A063677.P13272704542393913373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151905 (A323505 n).toNat + (n : ℤ)

end

end A063677.P13272704542393913373

/-!
# A063678: Arithmetic mean of largest subset of {A063676(1), ......., A063676(n-1)} such that a(n) is an integer and a(n) is maximal.

The programs for A063678, there is no canonical definition to state claims against.
-/

/-! ## A063678.P9894524623552832400

`Δ[A063676(n+1)]`
-/

namespace A063678.P9894524623552832400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063678.P9894524623552832400

/-! ## A063678.P18368898434952399200

`Δ[record[A063676(A065648(n))]]`
-/

namespace A063678.P18368898434952399200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063676 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063678.P18368898434952399200

/-! ## A063678.P5642721427207084486

`Δ[record[A063676(A102885(n))]]`
-/

namespace A063678.P5642721427207084486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063676 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063678.P5642721427207084486

/-! ## A063678.P10746881616213324774

`Δ[record[A063676(A133310(n))]]`
-/

namespace A063678.P10746881616213324774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063676 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063678.P10746881616213324774

/-! ## A063678.P12814777134775168997

`A063676(n+2)-A063676(n+1)`
-/

namespace A063678.P12814777134775168997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063676 (n + 2) - A063676 (n + 1)

end

end A063678.P12814777134775168997

/-! ## A063678.P4938995046428537019

`Δ[record[A063676(A128227(n))]]`
-/

namespace A063678.P4938995046428537019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063676 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063678.P4938995046428537019

/-!
# A063679: Numbers k such that (3^k - 7)/2 is prime.

The programs for A063679, there is no canonical definition to state claims against.
-/

/-! ## A063679.P17651655136460743745

`A287344(n+1)+A252663(A061419(n+1))`
-/

namespace A063679.P17651655136460743745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287344 (n + 1) + A252663 (A061419 (n + 1)).toNat

end

end A063679.P17651655136460743745

/-! ## A063679.P14567965198924398173

`A287344(n+1)+A252663(A000009(2*n+1))`
-/

namespace A063679.P14567965198924398173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287344 (n + 1) + A252663 (A000009 (2 * n + 1)).toNat

end

end A063679.P14567965198924398173

/-!
# A063682: Number of 2-trees rooted at an asymmetric end-edge.

The programs for A063682, there is no canonical definition to state claims against.
-/

/-! ## A063682.P10448260901260748276

`A062276(A151828(n+2)+n)`
-/

namespace A063682.P10448260901260748276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 (A151828 (n + 2) + (n : ℤ)).toNat

end

end A063682.P10448260901260748276

/-! ## A063682.P18120169158825297812

`A093859(a(n-1))+n+1` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A063682.P18120169158825297812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A093859 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A063682.P18120169158825297812

/-!
# A063683: Integers formed from the reduced residue sets of even numbers and Fibonacci numbers.

The programs for A063683, there is no canonical definition to state claims against.
-/

/-! ## A063683.P17673660972208987809

`A070964(2*(n+1))`
-/

namespace A063683.P17673660972208987809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070964 (2 * (n + 1))

end

end A063683.P17673660972208987809

/-! ## A063683.P6358633881526681859

`ceil(A054433(n+1)/ϕ)`
-/

namespace A063683.P6358633881526681859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054433 (n + 1) : ℝ) / Real.goldenRatio⌉

end

end A063683.P6358633881526681859

/-! ## A063683.P15892187232595192045

`floor(A014963(6*(n+1))+A054433(n+1)/ϕ)`
-/

namespace A063683.P15892187232595192045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (6 * (n + 1)) : ℝ) + (A054433 (n + 1) : ℝ) / Real.goldenRatio⌋

end

end A063683.P15892187232595192045

/-! ## A063683.P17320806025011921172

`floor(A054433(n+1)/ϕ-(-1)^A000040(n+2))`
-/

namespace A063683.P17320806025011921172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054433 (n + 1) : ℝ) / Real.goldenRatio - ((-1 : ℚ) ^ (A000040 (n + 2) : ℤ) : ℝ)⌋

end

end A063683.P17320806025011921172

/-! ## A063683.P14769879097393505258

`filter[A070964(n+2), A096270(#)]`
-/

namespace A063683.P14769879097393505258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070964 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A063683.P14769879097393505258

/-!
# A063686: Triangular array: T(n,k) is the number of binary necklaces (no turning over) of length n whose longest run of 1's has length k. Table begins at n=0, k=0.

The programs for A063686, there is no canonical definition to state claims against.
-/

/-! ## A063686.P14835914862572495506

`Δ[eq[1, A069010(A257250(n))]]`
-/

namespace A063686.P14835914862572495506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A257250 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A063686.P14835914862572495506

/-! ## A063686.P3302299477010970299

`A070211(A072233(n+1)%A191426(2*n+5))`
-/

namespace A063686.P3302299477010970299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070211 (Int.tmod (A072233 (n + 1)) (A191426 (2 * n + 5))).toNat

end

end A063686.P3302299477010970299

/-! ## A063686.P2403191432912742749

`A070211(A072233(n+1))%A339053(2*n+1)`
-/

namespace A063686.P2403191432912742749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070211 (A072233 (n + 1)).toNat) (A339053 (2 * n + 1))

end

end A063686.P2403191432912742749

/-! ## A063686.P1968614493612058895

`A107742(A072233(n+1)%A226114(2*n+3))`
-/

namespace A063686.P1968614493612058895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107742 (Int.tmod (A072233 (n + 1)) (A226114 (2 * n + 3))).toNat

end

end A063686.P1968614493612058895

/-! ## A063686.P5479534249498768587

`A160691(A361948(n+1))`
-/

namespace A063686.P5479534249498768587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160691 (A361948 (n + 1)).toNat

end

end A063686.P5479534249498768587

/-!
# A063687: Number of 2-trees rooted at any symmetric edge.

The programs for A063687, there is no canonical definition to state claims against.
-/

/-! ## A063687.P7226729999614005666

`A054581(n+2)+A054581(n+2)-A303742(n)`
-/

namespace A063687.P7226729999614005666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054581 (n + 2) + (A054581 (n + 2) - A303742 n)

end

end A063687.P7226729999614005666

/-! ## A063687.P2477847890284611293

`2*A063689(n+1)-A005750(n+1)`
-/

namespace A063687.P2477847890284611293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063689 (n + 1) - A005750 (n + 1)

end

end A063687.P2477847890284611293

/-! ## A063687.P10894592122400496444

`A063689(n+1)-A058870(round(sqrt(n²+1)))`
-/

namespace A063687.P10894592122400496444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063689 (n + 1) - A058870 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A063687.P10894592122400496444

/-! ## A063687.P9985521423082692866

`A321484(n)+A000217(A024791(n+1))`
-/

namespace A063687.P9985521423082692866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321484 n + A000217 (A024791 (n + 1)).toNat

end

end A063687.P9985521423082692866

/-! ## A063687.P4239687081978106877

`A324407(n+1)+A055641(A207069(n+1))`
-/

namespace A063687.P4239687081978106877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324407 (n + 1) + A055641 (A207069 (n + 1)).toNat

end

end A063687.P4239687081978106877

/-!
# A063688: Number of 2-trees rooted at a triangle.

The programs for A063688, there is no canonical definition to state claims against.
-/

/-! ## A063688.P9617250750878861062

`A370772(A340266(n+2))`
-/

namespace A063688.P9617250750878861062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370772 (A340266 (n + 2)).toNat

end

end A063688.P9617250750878861062

/-! ## A063688.P6195788745059001054

`A370772(A238531(n+4))`
-/

namespace A063688.P6195788745059001054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370772 (A238531 (n + 4)).toNat

end

end A063688.P6195788745059001054

/-! ## A063688.P3117710406030212117

`A370772(A000217(n+3)+2)`
-/

namespace A063688.P3117710406030212117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370772 (A000217 (n + 3) + 2).toNat

end

end A063688.P3117710406030212117

/-! ## A063688.P9935044847787778900

`A370772(A034856(n+2)+4)`
-/

namespace A063688.P9935044847787778900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370772 (A034856 (n + 2) + 4).toNat

end

end A063688.P9935044847787778900

/-!
# A063689: Number of 2-trees rooted at a triangle with 3 similar edges.

The programs for A063689, there is no canonical definition to state claims against.
-/

/-! ## A063689.P13917641797359917341

`(A063687(n)+A005750(n+1))/2`
-/

namespace A063689.P13917641797359917341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063687 n + A005750 (n + 1) : ℚ) / 2

end

end A063689.P13917641797359917341

/-! ## A063689.P16368574116621729634

`A058866(floor(acot(n)+n))`
-/

namespace A063689.P16368574116621729634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058866 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A063689.P16368574116621729634

/-! ## A063689.P6868902835446665261

`A058866(or(n, floor(acot(n))))`
-/

namespace A063689.P6868902835446665261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058866 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A063689.P6868902835446665261

/-! ## A063689.P6584727864927452773

`A058866(xor(n, floor(acot(n))))`
-/

namespace A063689.P6584727864927452773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058866 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A063689.P6584727864927452773

/-! ## A063689.P10194425482335238792

`A058866(gcd(n, (n+1)!))`
-/

namespace A063689.P10194425482335238792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058866 (Nat.gcd n (Nat.factorial (n + 1)))

end

end A063689.P10194425482335238792

/-!
# A063691: Number of solutions to x^2 + y^2 + z^2 = n in positive integers.

The programs for A063691, there is no canonical definition to state claims against.
-/

/-! ## A063691.P3666449070114982418

`Δ[A211638(n)]`
-/

namespace A063691.P3666449070114982418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063691.P3666449070114982418

/-! ## A063691.P6720831802123796659

`A211638(n+1)-A211638(n)`
-/

namespace A063691.P6720831802123796659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (n + 1) - A211638 n

end

end A063691.P6720831802123796659

/-! ## A063691.P18329930327134512708

`A110657(A005875(n))-A002102(n)`
-/

namespace A063691.P18329930327134512708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A005875 n).toNat - A002102 n

end

end A063691.P18329930327134512708

/-! ## A063691.P6176966712907635107

`A110657(abs(A213384(n)))-A002102(n)`
-/

namespace A063691.P6176966712907635107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 |A213384 n|.toNat - A002102 n

end

end A063691.P6176966712907635107

/-! ## A063691.P8038162387805886053

`Δ[A211639(abs(1-n))]`
-/

namespace A063691.P8038162387805886053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063691.P8038162387805886053

/-! ## A063691.P5987300843180488771

`A211639(n)-A211638(n)`
-/

namespace A063691.P5987300843180488771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n - A211638 n

end

end A063691.P5987300843180488771

/-! ## A063691.P1724882189758321291

`A211639(n)-A211639(A171950(n+1))`
-/

namespace A063691.P1724882189758321291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n - A211639 (A171950 (n + 1)).toNat

end

end A063691.P1724882189758321291

/-! ## A063691.P11808629797722986620

`A211639(n)-A211639(A289207(n+1))`
-/

namespace A063691.P11808629797722986620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n - A211639 (A289207 (n + 1)).toNat

end

end A063691.P11808629797722986620

/-! ## A063691.P8464568974975060468

`A211639(n)-A211639(A004273(n)-n)`
-/

namespace A063691.P8464568974975060468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n - A211639 (A004273 n - (n : ℤ)).toNat

end

end A063691.P8464568974975060468

/-! ## A063691.P7158821592278919746

`A211639(n)-A211639(A004280(n+1)-n)`
-/

namespace A063691.P7158821592278919746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n - A211639 (A004280 (n + 1) - (n : ℤ)).toNat

end

end A063691.P7158821592278919746

/-! ## A063691.P17989439060287830387

`A211641(n)-A211640(n)`
-/

namespace A063691.P17989439060287830387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211641 n - A211640 n

end

end A063691.P17989439060287830387

/-! ## A063691.P14416175453668527507

`A281155(4*n)`
-/

namespace A063691.P14416175453668527507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 (4 * n)

end

end A063691.P14416175453668527507

/-! ## A063691.P14400946875802946235

`A211649(A064680(n))`
-/

namespace A063691.P14400946875802946235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 (A064680 n).toNat

end

end A063691.P14400946875802946235

/-! ## A063691.P867886590677127874

`A211649(A188167(n))`
-/

namespace A063691.P867886590677127874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 (A188167 n).toNat

end

end A063691.P867886590677127874

/-! ## A063691.P15805022755055719311

`A211649(2*n)`
-/

namespace A063691.P15805022755055719311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 (2 * n)

end

end A063691.P15805022755055719311

/-! ## A063691.P1093026408434060838

`A211645(2*n)-A211644(2*n)`
-/

namespace A063691.P1093026408434060838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211645 (2 * n) - A211644 (2 * n)

end

end A063691.P1093026408434060838

/-! ## A063691.P16653856106790948550

`A211643(2*n)-A211642(2*n)`
-/

namespace A063691.P16653856106790948550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211643 (2 * n) - A211642 (2 * n)

end

end A063691.P16653856106790948550

/-! ## A063691.P4276395419167189880

`A337165(∑[n]+3)`
-/

namespace A063691.P4276395419167189880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A063691.P4276395419167189880

/-! ## A063691.P12743071421875936563

`A057427(n)*A337165(A152950(n+1))`
-/

namespace A063691.P12743071421875936563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A337165 (A152950 (n + 1)).toNat

end

end A063691.P12743071421875936563

/-! ## A063691.P6807247466415203044

`A337165(A152950(n+1))%A000070(n)`
-/

namespace A063691.P6807247466415203044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337165 (A152950 (n + 1)).toNat) (A000070 n)

end

end A063691.P6807247466415203044

/-!
# A063693: Numbers k such that phi(k + d(k)) = phi(k) + d(k), where phi() = A000010(), d() = A000005().

The programs for A063693, there is no canonical definition to state claims against.
-/

/-! ## A063693.P7318630835743593916

`∪[A001359(n+1), A063702(n+1)]`
-/

namespace A063693.P7318630835743593916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063693.P7318630835743593916

/-!
# A063694: Remove odd-positioned bits from the binary expansion of n.

The programs for A063694, the canonical program `A063694.P13727673457584379920` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063694 has offset 0).

The definition of A063694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063694.P13727673457584379920

`n-2*a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063694

/-- `n-2*a(floor(n/2))` -/
def P13727673457584379920.Spec : Prop :=
  ∀ n, P13727673457584379920.a n = A063694 n

theorem P13727673457584379920.correct : P13727673457584379920.Spec := by
  intro n
  simp only [A063694]

end A063694

/-! ## A063694.P13300882186662893141

`4*a(floor(n/4))+(n%4)%2` with `a(0)=0`
-/

namespace A063694.P13300882186662893141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * a ⌊(n : ℚ) / 4⌋.toNat + n % 4 % 2

end

end A063694.P13300882186662893141

namespace A063694

/-- `4*a(floor(n/4))+(n%4)%2` -/
def P13300882186662893141.Spec : Prop :=
  ∀ n, (P13300882186662893141.a n : ℤ) = A063694 n

end A063694

/-! ## A063694.P10318123727207373335

`xor(n, 2*a(floor(n/2)))` with `a(0)=0`
-/

namespace A063694.P10318123727207373335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor n (2 * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A063694.P10318123727207373335

namespace A063694

/-- `xor(n, 2*a(floor(n/2)))` -/
def P10318123727207373335.Spec : Prop :=
  ∀ n, (P10318123727207373335.a n : ℤ) = A063694 n

end A063694

/-! ## A063694.P11037094684759384433

`and(n, ∑[2*a(floor(n/2))])` with `a(0)=-1`
-/

namespace A063694.P11037094684759384433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063694.P11037094684759384433

namespace A063694

/-- `and(n, ∑[2*a(floor(n/2))])` -/
def P11037094684759384433.Spec : Prop :=
  ∀ n, P11037094684759384433.a n = A063694 n

end A063694

/-! ## A063694.P8903645801195174223

`4*a(floor(n/4))+n%2` with `a(0)=0`
-/

namespace A063694.P8903645801195174223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * a ⌊(n : ℚ) / 4⌋.toNat + n % 2

end

end A063694.P8903645801195174223

namespace A063694

/-- `4*a(floor(n/4))+n%2` -/
def P8903645801195174223.Spec : Prop :=
  ∀ n, (P8903645801195174223.a n : ℤ) = A063694 n

end A063694

/-! ## A063694.P15837470563161651000

`n-a(floor(n/2))-a(floor(n/2))` with `a(0)=0`
-/

namespace A063694.P15837470563161651000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat - a ⌊(n : ℚ) / 2⌋.toNat

end

end A063694.P15837470563161651000

namespace A063694

/-- `n-a(floor(n/2))-a(floor(n/2))` -/
def P15837470563161651000.Spec : Prop :=
  ∀ n, P15837470563161651000.a n = A063694 n

theorem P15837470563161651000.correct : P15837470563161651000.Spec := by
  intro n
  simp only [A063694, Nat.add_sub_cancel, A063694.P15837470563161651000.a, A063694.P13727673457584379920.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A063694

/-! ## A063694.P4586939128979636119

`A004514(n)/2`
-/

namespace A063694.P4586939128979636119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004514 n : ℚ) / 2

end

end A063694.P4586939128979636119

namespace A063694

/-- `A004514(n)/2` -/
def P4586939128979636119.Spec : Prop :=
  ∀ n, P4586939128979636119.a n = (A063694 n : ℚ)

end A063694

/-! ## A063694.P2198314047643933671

`n-A063695(n)`
-/

namespace A063694.P2198314047643933671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A063695 n

end

end A063694.P2198314047643933671

namespace A063694

/-- `n-A063695(n)` -/
def P2198314047643933671.Spec : Prop :=
  ∀ n, P2198314047643933671.a n = A063694 n

end A063694

/-! ## A063694.P9545631603247770408

`floor(A088442(n)/2)`
-/

namespace A063694.P9545631603247770408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088442 n : ℚ) / 2⌋

end

end A063694.P9545631603247770408

namespace A063694

/-- `floor(A088442(n)/2)` -/
def P9545631603247770408.Spec : Prop :=
  ∀ n, P9545631603247770408.a n = A063694 n

end A063694

/-! ## A063694.P13873858619731999359

`(A053985(n)+n)/2`
-/

namespace A063694.P13873858619731999359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053985 n + (n : ℤ) : ℚ) / 2

end

end A063694.P13873858619731999359

namespace A063694

/-- `(A053985(n)+n)/2` -/
def P13873858619731999359.Spec : Prop :=
  ∀ n, P13873858619731999359.a n = (A063694 n : ℚ)

end A063694

/-! ## A063694.P4633265311511694570

`2*A380110(n)-n`
-/

namespace A063694.P4633265311511694570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380110 n - (n : ℤ)

end

end A063694.P4633265311511694570

namespace A063694

/-- `2*A380110(n)-n` -/
def P4633265311511694570.Spec : Prop :=
  ∀ n, P4633265311511694570.a n = A063694 n

end A063694

/-! ## A063694.P10588912581839336918

`xor(n, A048647(n))/2`
-/

namespace A063694.P10588912581839336918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (A048647 n) : ℚ) / 2

end

end A063694.P10588912581839336918

namespace A063694

/-- `xor(n, A048647(n))/2` -/
def P10588912581839336918.Spec : Prop :=
  ∀ n, P10588912581839336918.a n = (A063694 n : ℚ)

end A063694

/-! ## A063694.P9221717699084683401

`and(n, ∑[A099894(n)²])`
-/

namespace A063694.P9221717699084683401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063694.P9221717699084683401

namespace A063694

/-- `and(n, ∑[A099894(n)²])` -/
def P9221717699084683401.Spec : Prop :=
  ∀ n, P9221717699084683401.a n = A063694 n

end A063694

/-! ## A063694.P567876339104830954

`1-A090569(n+1)+n`
-/

namespace A063694.P567876339104830954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A090569 (n + 1) + (n : ℤ)

end

end A063694.P567876339104830954

namespace A063694

/-- `1-A090569(n+1)+n` -/
def P567876339104830954.Spec : Prop :=
  ∀ n, P567876339104830954.a n = A063694 n

end A063694

/-! ## A063694.P9168913586562530345

`A038572(A004514(n))`
-/

namespace A063694.P9168913586562530345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A004514 n).toNat

end

end A063694.P9168913586562530345

namespace A063694

/-- `A038572(A004514(n))` -/
def P9168913586562530345.Spec : Prop :=
  ∀ n, P9168913586562530345.a n = A063694 n

end A063694

/-! ## A063694.P3016043683268539385

`A000695(A059905(n))`
-/

namespace A063694.P3016043683268539385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A059905 n).toNat

end

end A063694.P3016043683268539385

namespace A063694

/-- `A000695(A059905(n))` -/
def P3016043683268539385.Spec : Prop :=
  ∀ n, P3016043683268539385.a n = A063694 n

end A063694

/-! ## A063694.P5256852524953072762

`A038572(A088442(n)-1)`
-/

namespace A063694.P5256852524953072762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A088442 n - 1).toNat

end

end A063694.P5256852524953072762

namespace A063694

/-- `A038572(A088442(n)-1)` -/
def P5256852524953072762.Spec : Prop :=
  ∀ n, P5256852524953072762.a n = A063694 n

end A063694

/-! ## A063694.P6714453038304360356

`A057300(A088442(n)-1)`
-/

namespace A063694.P6714453038304360356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A088442 n - 1).toNat

end

end A063694.P6714453038304360356

namespace A063694

/-- `A057300(A088442(n)-1)` -/
def P6714453038304360356.Spec : Prop :=
  ∀ n, P6714453038304360356.a n = A063694 n

end A063694

/-! ## A063694.P5832511743261686420

`A057300(A053985(n)+n)`
-/

namespace A063694.P5832511743261686420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A053985 n + (n : ℤ)).toNat

end

end A063694.P5832511743261686420

namespace A063694

/-- `A057300(A053985(n)+n)` -/
def P5832511743261686420.Spec : Prop :=
  ∀ n, P5832511743261686420.a n = A063694 n

end A063694

/-! ## A063694.P5460125947811019335

`A063695(n)+A053985(n)`
-/

namespace A063694.P5460125947811019335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 n + A053985 n

end

end A063694.P5460125947811019335

namespace A063694

/-- `A063695(n)+A053985(n)` -/
def P5460125947811019335.Spec : Prop :=
  ∀ n, P5460125947811019335.a n = A063694 n

end A063694

/-!
# A063695: Remove even-positioned bits from the binary expansion of n.

The programs for A063695, the canonical program `A063695.P1892314685594787414` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063695 has offset 0).

The definition of A063695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063695.P1892314685594787414

`2*(floor(n/2)-a(floor(n/2)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063695

/-- `2*(floor(n/2)-a(floor(n/2)))` -/
def P1892314685594787414.Spec : Prop :=
  ∀ n, P1892314685594787414.a n = A063695 n

theorem P1892314685594787414.correct : P1892314685594787414.Spec := by
  intro n
  simp only [A063695]

end A063695

/-! ## A063695.P5033740247573764223

`4*a(floor(n/4))+2*floor(n%4/2)` with `a(0)=0`
-/

namespace A063695.P5033740247573764223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * a ⌊(n : ℚ) / 4⌋.toNat + 2 * ⌊((n % 4 : ℕ) : ℚ) / 2⌋

end

end A063695.P5033740247573764223

namespace A063695

/-- `4*a(floor(n/4))+2*floor(n%4/2)` -/
def P5033740247573764223.Spec : Prop :=
  ∀ n, P5033740247573764223.a n = A063695 n

end A063695

/-! ## A063695.P6846015661283640106

`A090569(n+1)-1`
-/

namespace A063695.P6846015661283640106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090569 (n + 1) - 1

end

end A063695.P6846015661283640106

namespace A063695

/-- `A090569(n+1)-1` -/
def P6846015661283640106.Spec : Prop :=
  ∀ n, P6846015661283640106.a n = A063695 n

theorem P6846015661283640106.correct : P6846015661283640106.Spec := by
  intro n
  simp only [A063695, Nat.add_sub_cancel, A063695.P6846015661283640106.a, A063695.P1892314685594787414.a, A090569, A090569.P7796603014024756614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063695

/-! ## A063695.P16024576198344176046

`2*(n-A380110(n))`
-/

namespace A063695.P16024576198344176046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A380110 n)

end

end A063695.P16024576198344176046

namespace A063695

/-- `2*(n-A380110(n))` -/
def P16024576198344176046.Spec : Prop :=
  ∀ n, P16024576198344176046.a n = A063695 n

end A063695

/-! ## A063695.P7713190559357570774

`and(n, ∑[a(n-1)+and(n+1, a(n-1))])` with `a(0)=2`
-/

namespace A063695.P7713190559357570774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + Nat.land (n + 1) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063695.P7713190559357570774

namespace A063695

/-- `and(n, ∑[a(n-1)+and(n+1, a(n-1))])` -/
def P7713190559357570774.Spec : Prop :=
  ∀ n, (P7713190559357570774.a n : ℤ) = A063695 n

end A063695

/-! ## A063695.P9037510277598458532

`n-A063694(n)`
-/

namespace A063695.P9037510277598458532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A063694 n

end

end A063695.P9037510277598458532

namespace A063695

/-- `n-A063694(n)` -/
def P9037510277598458532.Spec : Prop :=
  ∀ n, P9037510277598458532.a n = A063695 n

end A063695

/-! ## A063695.P10954351573627699643

`A004514(floor(n/2))`
-/

namespace A063695.P10954351573627699643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 ⌊(n : ℚ) / 2⌋.toNat

end

end A063695.P10954351573627699643

namespace A063695

/-- `A004514(floor(n/2))` -/
def P10954351573627699643.Spec : Prop :=
  ∀ n, P10954351573627699643.a n = A063695 n

end A063695

/-! ## A063695.P11533469342100304518

`n-A004514(n)/2`
-/

namespace A063695.P11533469342100304518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A004514 n : ℚ) / 2

end

end A063695.P11533469342100304518

namespace A063695

/-- `n-A004514(n)/2` -/
def P11533469342100304518.Spec : Prop :=
  ∀ n, P11533469342100304518.a n = (A063695 n : ℚ)

end A063695

/-! ## A063695.P14647194465999235186

`(n-A053985(n))/2`
-/

namespace A063695.P14647194465999235186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053985 n : ℚ) / 2

end

end A063695.P14647194465999235186

namespace A063695

/-- `(n-A053985(n))/2` -/
def P14647194465999235186.Spec : Prop :=
  ∀ n, P14647194465999235186.a n = (A063695 n : ℚ)

end A063695

/-! ## A063695.P14910642724193937577

`and(n, 2*A063915(n))`
-/

namespace A063695.P14910642724193937577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (2 * A063915 n)

end

end A063695.P14910642724193937577

namespace A063695

/-- `and(n, 2*A063915(n))` -/
def P14910642724193937577.Spec : Prop :=
  ∀ n, P14910642724193937577.a n = A063695 n

end A063695

/-! ## A063695.P17279628235372932224

`2*xor(n, A163241(n))`
-/

namespace A063695.P17279628235372932224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) (A163241 n)

end

end A063695.P17279628235372932224

namespace A063695

/-- `2*xor(n, A163241(n))` -/
def P17279628235372932224.Spec : Prop :=
  ∀ n, P17279628235372932224.a n = A063695 n

end A063695

/-! ## A063695.P15416193464735010515

`A062880(A059906(n))`
-/

namespace A063695.P15416193464735010515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (A059906 n).toNat

end

end A063695.P15416193464735010515

namespace A063695

/-- `A062880(A059906(n))` -/
def P15416193464735010515.Spec : Prop :=
  ∀ n, P15416193464735010515.a n = A063695 n

end A063695

/-! ## A063695.P1623904874377697374

`A004442(A090569(n+1))`
-/

namespace A063695.P1623904874377697374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A090569 (n + 1)).toNat

end

end A063695.P1623904874377697374

namespace A063695

/-- `A004442(A090569(n+1))` -/
def P1623904874377697374.Spec : Prop :=
  ∀ n, P1623904874377697374.a n = A063695 n

end A063695

/-! ## A063695.P14320106377291811105

`A317050(A004514(n))+n`
-/

namespace A063695.P14320106377291811105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 (A004514 n).toNat + (n : ℤ)

end

end A063695.P14320106377291811105

namespace A063695

/-- `A317050(A004514(n))+n` -/
def P14320106377291811105.Spec : Prop :=
  ∀ n, P14320106377291811105.a n = A063695 n

end A063695

/-! ## A063695.P13005862738752339114

`n-A000695(A059905(n))`
-/

namespace A063695.P13005862738752339114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000695 (A059905 n).toNat

end

end A063695.P13005862738752339114

namespace A063695

/-- `n-A000695(A059905(n))` -/
def P13005862738752339114.Spec : Prop :=
  ∀ n, P13005862738752339114.a n = A063695 n

end A063695

/-! ## A063695.P9379735847708882558

`xor(A006015(n), A057300(n))`
-/

namespace A063695.P9379735847708882558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006015 n) (A057300 n)

end

end A063695.P9379735847708882558

namespace A063695

/-- `xor(A006015(n), A057300(n))` -/
def P9379735847708882558.Spec : Prop :=
  ∀ n, P9379735847708882558.a n = A063695 n

end A063695

/-! ## A063695.P11054305450735320259

`A163355(2*n-A057300(n))`
-/

namespace A063695.P11054305450735320259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 ((2 * n : ℤ) - A057300 n).toNat

end

end A063695.P11054305450735320259

namespace A063695

/-- `A163355(2*n-A057300(n))` -/
def P11054305450735320259.Spec : Prop :=
  ∀ n, P11054305450735320259.a n = A063695 n

end A063695

/-! ## A063695.P18404507351098198893

`A163485(2*n-A057300(n))`
-/

namespace A063695.P18404507351098198893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163485 ((2 * n : ℤ) - A057300 n).toNat

end

end A063695.P18404507351098198893

namespace A063695

/-- `A163485(2*n-A057300(n))` -/
def P18404507351098198893.Spec : Prop :=
  ∀ n, P18404507351098198893.a n = A063695 n

end A063695

/-! ## A063695.P11467171181352324946

`A300839(2*n-A057300(n))`
-/

namespace A063695.P11467171181352324946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300839 ((2 * n : ℤ) - A057300 n).toNat

end

end A063695.P11467171181352324946

namespace A063695

/-- `A300839(2*n-A057300(n))` -/
def P11467171181352324946.Spec : Prop :=
  ∀ n, P11467171181352324946.a n = A063695 n

end A063695

/-! ## A063695.P8784179879625867348

`A163355(n-A057300(n)+n)`
-/

namespace A063695.P8784179879625867348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 ((n : ℤ) - A057300 n + (n : ℤ)).toNat

end

end A063695.P8784179879625867348

namespace A063695

/-- `A163355(n-A057300(n)+n)` -/
def P8784179879625867348.Spec : Prop :=
  ∀ n, P8784179879625867348.a n = A063695 n

end A063695

/-!
# A063696: Positions of positive coefficients in cyclotomic polynomial Phi_n(x), converted from binary to decimal.

The programs for A063696, there is no canonical definition to state claims against.
-/

/-! ## A063696.P3842330767707431873

`A063670(n)-(A063698(n)+A000038(n))`
-/

namespace A063696.P3842330767707431873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063670 n - (A063698 n + A000038 n)

end

end A063696.P3842330767707431873

/-!
# A063697: Positions of positive coefficients in cyclotomic polynomial Phi_n(x), A063696 in binary.

The programs for A063697, there is no canonical definition to state claims against.
-/

/-! ## A063697.P5735618347945362930

`A007088(A063696(n))`
-/

namespace A063697.P5735618347945362930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A063696 n).toNat

end

end A063697.P5735618347945362930

/-! ## A063697.P3493895861294850681

`A185544(2*A063696(n))`
-/

namespace A063697.P3493895861294850681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A063696 n).toNat

end

end A063697.P3493895861294850681

/-!
# A063698: Positions of negative coefficients in cyclotomic polynomial Phi_n(x), converted from binary to decimal. (The constant term in the least significant bit (bit-0), the term x in the next bit (bit-1) and so on).

The programs for A063698, there is no canonical definition to state claims against.
-/

/-! ## A063698.P10811362123466485197

`A063670(n)-A063696(floor(acot(n)+n))`
-/

namespace A063698.P10811362123466485197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063670 n - A063696 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A063698.P10811362123466485197

/-! ## A063698.P16762015986228323639

`A063670(n)-A063696(round(sqrt(n²+1)))`
-/

namespace A063698.P16762015986228323639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063670 n - A063696 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A063698.P16762015986228323639

/-! ## A063698.P2863706180578817202

`(A063670(n)-(A253240(∑[n+3])+A000007(n)))/2`
-/

namespace A063698.P2863706180578817202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063670 n - (A253240 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 n) : ℚ) / 2

end

end A063698.P2863706180578817202

/-! ## A063698.P4427127524789857810

`A078898(A063670(n)-A019320(n))`
-/

namespace A063698.P4427127524789857810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A063670 n - A019320 n).toNat

end

end A063698.P4427127524789857810

/-!
# A063699: Positions of negative coefficients in cyclotomic polynomial Phi_n(x), A063698 in binary.

The programs for A063699, there is no canonical definition to state claims against.
-/

/-! ## A063699.P17383727483543114943

`A007088(A063698(n))`
-/

namespace A063699.P17383727483543114943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A063698 n).toNat

end

end A063699.P17383727483543114943

/-! ## A063699.P3776476024622885979

`A185544(2*A063698(n))`
-/

namespace A063699.P3776476024622885979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A063698 n).toNat

end

end A063699.P3776476024622885979

/-! ## A063699.P1592783645652132742

`A185544(A063698(n)+A063698(n))`
-/

namespace A063699.P1592783645652132742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A063698 n + A063698 n).toNat

end

end A063699.P1592783645652132742

/-! ## A063699.P16965943567342668593

`A185544(A063670(n)-A019320(n))`
-/

namespace A063699.P16965943567342668593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A063670 n - A019320 n).toNat

end

end A063699.P16965943567342668593

/-! ## A063699.P10832110562591260440

`A007088((A063696(n)-A019320(n))%(2^n))`
-/

namespace A063699.P10832110562591260440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A063696 n - A019320 n) (2 ^ n : ℤ)).toNat

end

end A063699.P10832110562591260440

