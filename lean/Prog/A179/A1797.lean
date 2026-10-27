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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A179700: Numbers of the form p^3*q^2*r*s where p, q, r, and s are distinct primes.

The programs for A179700, there is no canonical definition to state claims against.
-/

/-! ## A179700.P10418162424655839125

`∩[A175754(n+1), A375075(n+1)]`
-/

namespace A179700.P10418162424655839125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179700.P10418162424655839125

/-! ## A179700.P4391275754220383375

`∩[A175754(n+1), A350375(n+1)]`
-/

namespace A179700.P4391275754220383375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179700.P4391275754220383375

/-! ## A179700.P3011953524999449476

`∩[A350375(n+1), A375074(n+1)]`
-/

namespace A179700.P3011953524999449476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179700.P3011953524999449476

/-! ## A179700.P10398500012621530528

`∩[A350375(n+1), A375075(n+1)]`
-/

namespace A179700.P10398500012621530528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179700.P10398500012621530528

/-! ## A179700.P2137379488644046944

`∩[A046308(n+1), A072414(n+1)]`
-/

namespace A179700.P2137379488644046944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179700.P2137379488644046944

/-! ## A179700.P8555188265197223939

`∩[A046308(n+1), A175754(n+1)]`
-/

namespace A179700.P8555188265197223939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179700.P8555188265197223939

/-! ## A179700.P14143021248754702995

`∩[A046308(n+1), A350375(n+1)]`
-/

namespace A179700.P14143021248754702995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179700.P14143021248754702995

/-! ## A179700.P2645419506552251220

`∩[A046308(n+1), A375075(n+1)]`
-/

namespace A179700.P2645419506552251220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179700.P2645419506552251220

/-! ## A179700.P4569625146708308107

`∩[A175754(n+1), A195087(n+1)]`
-/

namespace A179700.P4569625146708308107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179700.P4569625146708308107

/-! ## A179700.P12041393552330507930

`filter[A175754(n+1), A358753(#)]`
-/

namespace A179700.P12041393552330507930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A179700.P12041393552330507930

/-! ## A179700.P9938809606110364611

`filter[A175754(n+1), A374130(#)]`
-/

namespace A179700.P9938809606110364611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A179700.P9938809606110364611

/-!
# A179702: Numbers of the form p^4*q^5 where p and q are two distinct primes.

The programs for A179702, there is no canonical definition to state claims against.
-/

/-! ## A179702.P9635706098429638961

`∩[A195091(n+1), A372841(n+1)]`
-/

namespace A179702.P9635706098429638961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179702.P9635706098429638961

/-! ## A179702.P10751384273736959328

`A179666(n+1)*A295657(A179666(n+1))`
-/

namespace A179702.P10751384273736959328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179666 (n + 1) * A295657 (A179666 (n + 1)).toNat

end

end A179702.P10751384273736959328

/-!
# A179703: Numbers of the form p^6*q^2*r where p, q, and r are distinct primes.

The programs for A179703, there is no canonical definition to state claims against.
-/

/-! ## A179703.P18187169970607006754

`∩[A175750(n+1), A195090(n+1)]`
-/

namespace A179703.P18187169970607006754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179703.P18187169970607006754

/-! ## A179703.P7801061087824616509

`∩[A079712(n+1), A175750(n+1)]`
-/

namespace A179703.P7801061087824616509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179703.P7801061087824616509

/-! ## A179703.P12681033018305934457

`∩[A046312(n+1), A175750(n+1)]`
-/

namespace A179703.P12681033018305934457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179703.P12681033018305934457

/-! ## A179703.P18272165408879024603

`filter[A175750(n+1), A358751(#)]`
-/

namespace A179703.P18272165408879024603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A179703.P18272165408879024603

/-! ## A179703.P905982780768462803

`filter[A175750(n+1), A353674(#)]`
-/

namespace A179703.P905982780768462803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A179703.P905982780768462803

/-! ## A179703.P7315570449336397392

`filter[A175750(n+1), A354807(#)]`
-/

namespace A179703.P7315570449336397392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A179703.P7315570449336397392

/-! ## A179703.P17241475086291444884

`filter[A175750(n+1), A389905(#)]`
-/

namespace A179703.P17241475086291444884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A179703.P17241475086291444884

/-!
# A179704: Numbers of the form p^5*q*r*s where p, q, r, and s are distinct primes.

The programs for A179704, there is no canonical definition to state claims against.
-/

/-! ## A179704.P8320869825360586929

`∩[A175754(n+1), A195088(n+1)]`
-/

namespace A179704.P8320869825360586929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179704.P8320869825360586929

/-! ## A179704.P14231054622293834941

`filter[A175754(n+1), A353519(#)]`
-/

namespace A179704.P14231054622293834941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A179704.P14231054622293834941

/-! ## A179704.P14827977462705517874

`filter[A175754(n+1), A369255(#)]`
-/

namespace A179704.P14827977462705517874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A179704.P14827977462705517874

/-! ## A179704.P14235770292017503628

`∏{p}[A190377(n+1), 2*#]`
-/

namespace A179704.P14235770292017503628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 * p

end

end A179704.P14235770292017503628

/-! ## A179704.P8519280413878478888

`∏{p}[A046386(n+1)², 2*#]`
-/

namespace A179704.P8519280413878478888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 * p

end

end A179704.P8519280413878478888

/-!
# A179705: Numbers of the form p^7*q^3 where p and q are distinct primes.

The programs for A179705, there is no canonical definition to state claims against.
-/

/-! ## A179705.P9723488774363535741

`A011264(A137484(n+1))`
-/

namespace A179705.P9723488774363535741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (A137484 (n + 1)).toNat

end

end A179705.P9723488774363535741

/-!
# A179707: Semiprimes p*q such that 2^p mod q == 2^q mod p.

The programs for A179707, there is no canonical definition to state claims against.
-/

/-! ## A179707.P909953593727713978

`∪[A001248(n+1), A179839(n+1)]`
-/

namespace A179707.P909953593727713978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179707.P909953593727713978

/-! ## A179707.P14211554352115637006

`∪[A000040(n+1)², A179839(n+1)]`
-/

namespace A179707.P14211554352115637006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179707.P14211554352115637006

/-! ## A179707.P3252943356155349846

`A247078(n+1)-A279415(A192464(n+1))`
-/

namespace A179707.P3252943356155349846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247078 (n + 1) - A279415 (A192464 (n + 1)).toNat

end

end A179707.P3252943356155349846

/-! ## A179707.P13638292016094477363

`∩[A001358(n+1), A368812(n+1)]`
-/

namespace A179707.P13638292016094477363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179707.P13638292016094477363

/-! ## A179707.P6355263795416658275

`∩[A050530(n+1), A368812(n+1)]`
-/

namespace A179707.P6355263795416658275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179707.P6355263795416658275

/-!
# A179711: Number of permutations of 1..n with the sequence of sums of 2 adjacent elements having exactly 2 maxima.

The programs for A179711, there is no canonical definition to state claims against.
-/

/-! ## A179711.P17273973476647899571

`A003415(record[A350752(n)²])`
-/

namespace A179711.P17273973476647899571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350752 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179711.P17273973476647899571

/-!
# A179716: Number of permutations of 1..n with the sequence of sums of 3 adjacent elements having exactly 1 maximum.

The programs for A179716, there is no canonical definition to state claims against.
-/

/-! ## A179716.P8338559952529907743

`2*n*A058151(∑[n+2])`
-/

namespace A179716.P8338559952529907743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A058151 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179716.P8338559952529907743

/-! ## A179716.P7486908668332725996

`∑{p}[n+1, gcd(n, #)]*A246277(A004394(3*n+2))`
-/

namespace A179716.P7486908668332725996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) * A246277 (A004394 (3 * n + 2)).toNat

end

end A179716.P7486908668332725996

/-!
# A179717: Number of permutations of 1..n with the sequence of sums of 3 adjacent elements having exactly 2 maxima.

The programs for A179717, there is no canonical definition to state claims against.
-/

/-! ## A179717.P4883583654661656243

`comp[2*(n+1)]*A315969(A000142(n+2))`
-/

namespace A179717.P4883583654661656243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A315969 (A000142 (n + 2)).toNat

end

end A179717.P4883583654661656243

/-!
# A179720: Number of permutations of 1..n with the sequence of sums of 4 adjacent elements having exactly 1 maximum.

The programs for A179720, there is no canonical definition to state claims against.
-/

/-! ## A179720.P2760763508977307028

`n*A004526(A019505(2*n+5))`
-/

namespace A179720.P2760763508977307028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004526 (A019505 (2 * n + 5)).toNat

end

end A179720.P2760763508977307028

/-! ## A179720.P15941775013358314257

`A014682(n*A019505(2*n+5))`
-/

namespace A179720.P15941775013358314257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n : ℤ) * A019505 (2 * n + 5)).toNat

end

end A179720.P15941775013358314257

/-!
# A179724: Number of permutations of 1..n with the sequence of sums of 5 adjacent elements having exactly 1 maximum.

The programs for A179724, there is no canonical definition to state claims against.
-/

/-! ## A179724.P1370691303032397954

`A005496(A120588(n))*A293615(n)`
-/

namespace A179724.P1370691303032397954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A120588 n).toNat * A293615 n

end

end A179724.P1370691303032397954

/-! ## A179724.P8011412993436744901

`A293615(n)*A327938(A000165(n))`
-/

namespace A179724.P8011412993436744901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293615 n * A327938 (A000165 n).toNat

end

end A179724.P8011412993436744901

/-!
# A179728: Number of permutations of 1..n with the sequence of sums of 6 adjacent elements having exactly 1 maximum.

The programs for A179728, there is no canonical definition to state claims against.
-/

/-! ## A179728.P2848243560705963492

`A293615(n)*A327938(A000165(n))*A255938(n+9)`
-/

namespace A179728.P2848243560705963492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293615 n * A327938 (A000165 n).toNat * A255938 (n + 9)

end

end A179728.P2848243560705963492

/-!
# A179731: Number of permutations of 1..n with the sequence of sums of 7 adjacent elements having exactly 1 maximum.

The programs for A179731, there is no canonical definition to state claims against.
-/

/-! ## A179731.P3965160895171095892

`A179734(n+7)/(n+7)`
-/

namespace A179731.P3965160895171095892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179734 (n + 7) : ℚ) / (n + 7 : ℚ)

end

end A179731.P3965160895171095892

/-!
# A179732: Number of permutations of 1..n with the sequence of sums of 7 adjacent elements having exactly 2 maxima.

The programs for A179732, there is no canonical definition to state claims against.
-/

/-! ## A179732.P12254007975562316017

`A179735(n+9)/(abs(1-n)+10)`
-/

namespace A179732.P12254007975562316017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179735 (n + 9) : ℚ) / (|1 - (n : ℤ)| + 10 : ℚ)

end

end A179732.P12254007975562316017

/-!
# A179734: Number of permutations of 1..n with the sequence of sums of 8 adjacent elements having exactly 1 maximum.

The programs for A179734, there is no canonical definition to state claims against.
-/

/-! ## A179734.P656546392753085748

`(n+7)*A179731(n+6)`
-/

namespace A179734.P656546392753085748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A179731 (n + 6)

end

end A179734.P656546392753085748

/-! ## A179734.P7068939624722638522

`n*A248686(A167487(n+5)+1)`
-/

namespace A179734.P7068939624722638522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A248686 (A167487 (n + 5) + 1).toNat

end

end A179734.P7068939624722638522

/-! ## A179734.P2071859149567808462

`2*n*A000142(n+7)/A000079(n)`
-/

namespace A179734.P2071859149567808462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((A000142 (n + 7) : ℚ) / (A000079 n : ℚ))

end

end A179734.P2071859149567808462

/-! ## A179734.P6965221861172527196

`A179736(n+8)/(n+8)`
-/

namespace A179734.P6965221861172527196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179736 (n + 8) : ℚ) / (n + 8 : ℚ)

end

end A179734.P6965221861172527196

/-!
# A179735: Number of permutations of 1..n with the sequence of sums of 8 adjacent elements having exactly 2 maxima.

The programs for A179735, there is no canonical definition to state claims against.
-/

/-! ## A179735.P12310927971199277722

`A004498(n)*A179732(n+8)`
-/

namespace A179735.P12310927971199277722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 n * A179732 (n + 8)

end

end A179735.P12310927971199277722

/-! ## A179735.P12430106338499328114

`record[A323821(n+1)]*A179732(n+8)`
-/

namespace A179735.P12430106338499328114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A179732 (n + 8)

end

end A179735.P12430106338499328114

/-!
# A179736: Number of permutations of 1..n with the sequence of sums of 9 adjacent elements having exactly 1 maximum.

The programs for A179736, there is no canonical definition to state claims against.
-/

/-! ## A179736.P13727912165786085492

`(n+8)*A179734(n+7)`
-/

namespace A179736.P13727912165786085492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℤ) * A179734 (n + 7)

end

end A179736.P13727912165786085492

/-! ## A179736.P9748146935007339510

`(n+7)*(n+8)*A179731(n+6)`
-/

namespace A179736.P9748146935007339510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * ((n + 8 : ℤ) * A179731 (n + 6))

end

end A179736.P9748146935007339510

/-! ## A179736.P12337209960391963990

`lcm(A179734(n+7)+A179731(n+6), A179734(n+7))`
-/

namespace A179736.P12337209960391963990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A179734 (n + 7) + A179731 (n + 6)) (A179734 (n + 7))

end

end A179736.P12337209960391963990

/-!
# A179737: Number of permutations of 1..n with the sequence of sums of 9 adjacent elements having exactly 2 maxima.

The programs for A179737, there is no canonical definition to state claims against.
-/

/-! ## A179737.P7898740839998054190

`(n+10)*A179735(n+9)`
-/

namespace A179737.P7898740839998054190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℤ) * A179735 (n + 9)

end

end A179737.P7898740839998054190

/-!
# A179740: Primes of the form prime(2*k) - 2*prime(k).

The programs for A179740, there is no canonical definition to state claims against.
-/

/-! ## A179740.P232688151046254524

`p?[lcm(A080741(n), A110234(n+1))]`
-/

namespace A179740.P232688151046254524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080741 n) (A110234 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179740.P232688151046254524

/-! ## A179740.P5213966405027852761

`p?[lt[3, A302972(n+5)]]`
-/

namespace A179740.P5213966405027852761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302972 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179740.P5213966405027852761

/-! ## A179740.P3383071015052147316

`A091937(A245063(n+1))`
-/

namespace A179740.P3383071015052147316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091937 (A245063 (n + 1)).toNat

end

end A179740.P3383071015052147316

/-! ## A179740.P4411727473153615733

`A158611(lt[6, A346063(3*n+4)])`
-/

namespace A179740.P4411727473153615733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346063 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A179740.P4411727473153615733

/-! ## A179740.P802937277826234346

`∩[A059645(n+1), A114886(n+1)]`
-/

namespace A179740.P802937277826234346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179740.P802937277826234346

/-!
# A179741: a(n) = (2*n+1)*(6*n-1).

The programs for A179741, the canonical program `A179741.P3894650603299352832` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179741 has offset 0).

The definition of A179741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(6*n-1)` (program `A179741.P3894650603299352832`, by `A179741.P3894650603299352832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179741.P3606808599561386577

`12*n²+4*n-1`
-/

namespace A179741.P3606808599561386577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 + 4 * n : ℤ) - 1

end

end A179741.P3606808599561386577

namespace A179741

/-- `12*n²+4*n-1` -/
def P3606808599561386577.Spec : Prop :=
  ∀ n, P3606808599561386577.a n = A179741 n

theorem P3606808599561386577.correct : P3606808599561386577.Spec := by
  intro n
  simp only [A179741, Nat.add_sub_cancel, A179741.P3606808599561386577.a, A179741.P3894650603299352832.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A179741

/-! ## A179741.P3894650603299352832

`(2*n+1)*(6*n-1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179741

/-- `(2*n+1)*(6*n-1)` -/
def P3894650603299352832.Spec : Prop :=
  ∀ n, P3894650603299352832.a n = A179741 n

theorem P3894650603299352832.correct : P3894650603299352832.Spec := by
  intro n
  simp only [A179741]

end A179741

/-! ## A179741.P997240330109382338

`∑[a(n-1)+24]` with `a(0)=-1, a(1)=16`
-/

namespace A179741.P997240330109382338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 16] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179741.P997240330109382338

namespace A179741

/-- `∑[a(n-1)+24]` -/
def P997240330109382338.Spec : Prop :=
  ∀ n, P997240330109382338.a n = A179741 n

end A179741

/-! ## A179741.P10211781775455824379

`Δ[((2*n)²-gcd(n, n-1))*(n-1)]`
-/

namespace A179741.P10211781775455824379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n) ^ 2 : ℤ) - (Int.gcd (n : ℤ) ((n : ℤ) - 1) : ℤ)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179741.P10211781775455824379

namespace A179741

/-- `Δ[((2*n)²-gcd(n, n-1))*(n-1)]` -/
def P10211781775455824379.Spec : Prop :=
  ∀ n, P10211781775455824379.a n = A179741 n

theorem P10211781775455824379.correct : P10211781775455824379.Spec := by
  intro n
  simp only [A179741, Nat.add_sub_cancel, A179741.P10211781775455824379.f1, A179741.P10211781775455824379.a, A179741.P3894650603299352832.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A179741

/-! ## A179741.P6776605785302122988

`(A016922(n)-4)/3`
-/

namespace A179741.P6776605785302122988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016922 n - 4 : ℚ) / 3

end

end A179741.P6776605785302122988

namespace A179741

/-- `(A016922(n)-4)/3` -/
def P6776605785302122988.Spec : Prop :=
  ∀ n, P6776605785302122988.a n = (A179741 n : ℚ)

theorem P6776605785302122988.correct : P6776605785302122988.Spec := by
  intro n
  simp only [A179741, Nat.add_sub_cancel, A179741.P6776605785302122988.a, A179741.P3894650603299352832.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179741

/-! ## A179741.P5029144936257801388

`A270710(2*n)`
-/

namespace A179741.P5029144936257801388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 (2 * n)

end

end A179741.P5029144936257801388

namespace A179741

/-- `A270710(2*n)` -/
def P5029144936257801388.Spec : Prop :=
  ∀ n, P5029144936257801388.a n = A179741 n

theorem P5029144936257801388.correct : P5029144936257801388.Spec := by
  intro n
  simp only [A179741, Nat.add_sub_cancel, A179741.P5029144936257801388.a, A179741.P3894650603299352832.a, A270710, A270710.P7193795266762276404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179741

/-! ## A179741.P14579830141125737481

`A174325(Δ[n²])/3`
-/

namespace A179741.P14579830141125737481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174325 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A179741.P14579830141125737481

namespace A179741

/-- `A174325(Δ[n²])/3` -/
def P14579830141125737481.Spec : Prop :=
  ∀ n, P14579830141125737481.a n = (A179741 n : ℚ)

end A179741

/-! ## A179741.P1726486604628279609

`∑[A063290(2*(n+1))]`
-/

namespace A179741.P1726486604628279609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179741.P1726486604628279609

namespace A179741

/-- `∑[A063290(2*(n+1))]` -/
def P1726486604628279609.Spec : Prop :=
  ∀ n, P1726486604628279609.a n = A179741 n

end A179741

/-!
# A179743: Triangle read by rows: antidiagonals of an array formed by sequences of the form a(0)=1, a(1) = (n+1); a(n+1), n>1 = 2*a(n).

The programs for A179743, there is no canonical definition to state claims against.
-/

/-! ## A179743.P7403837000736242331

`gcd(A103452(n), A357213(n+1))`
-/

namespace A179743.P7403837000736242331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A357213 (n + 1))

end

end A179743.P7403837000736242331

/-! ## A179743.P1287273584299161976

`A166444(A128227(n))*A193592(n)`
-/

namespace A179743.P1287273584299161976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A128227 n).toNat * A193592 n

end

end A179743.P1287273584299161976

/-! ## A179743.P1448509065007292843

`A193592(n)*A232089(A083920(n))`
-/

namespace A179743.P1448509065007292843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n * A232089 (A083920 n).toNat

end

end A179743.P1448509065007292843

/-! ## A179743.P16784299087862276084

`A062760(A276618(n))*A193592(n)`
-/

namespace A179743.P16784299087862276084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (A276618 n).toNat * A193592 n

end

end A179743.P16784299087862276084

/-! ## A179743.P4075101056793473274

`A193592(n)*A232089(A271439(n))`
-/

namespace A179743.P4075101056793473274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n * A232089 (A271439 n).toNat

end

end A179743.P4075101056793473274

/-! ## A179743.P3127258746198081754

`A296612(A061579(n%A109001(n)))`
-/

namespace A179743.P3127258746198081754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296612 (A061579 (Int.tmod (n : ℤ) (A109001 n)).toNat).toNat

end

end A179743.P3127258746198081754

/-! ## A179743.P4813511770157923948

`A296612(A061579(n)%A119307(n))`
-/

namespace A179743.P4813511770157923948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296612 (Int.tmod (A061579 n) (A119307 n)).toNat

end

end A179743.P4813511770157923948

/-! ## A179743.P14807597903963292787

`gcd(A103452(n), A296612(A061579(n)))`
-/

namespace A179743.P14807597903963292787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A296612 (A061579 n).toNat)

end

end A179743.P14807597903963292787

/-! ## A179743.P2763963509857425904

`A000010(Δ[A099627(n)])*A193592(n)`
-/

namespace A179743.P2763963509857425904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat * A193592 n

end

end A179743.P2763963509857425904

/-! ## A179743.P15968717821108375612

`A065033(A130128(n+1)%A109001(n))`
-/

namespace A179743.P15968717821108375612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.tmod (A130128 (n + 1)) (A109001 n)).toNat

end

end A179743.P15968717821108375612

/-!
# A179744: a(0) = 1, a(n) = 3*2^(n-1) - n for n>0.

The programs for A179744, the canonical program `A179744.P10369720739337931706` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179744 has offset 0).

The definition of A179744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179744.P10369720739337931706

`2*a(n-1)+n-2` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179744

/-- `2*a(n-1)+n-2` -/
def P10369720739337931706.Spec : Prop :=
  ∀ n, P10369720739337931706.a n = A179744 n

theorem P10369720739337931706.correct : P10369720739337931706.Spec := by
  intro n
  simp only [A179744]

end A179744

/-! ## A179744.P2717761362167288864

`floor(3*2^(n-1)-n)`
-/

namespace A179744.P2717761362167288864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n : ℚ)⌋

end

end A179744.P2717761362167288864

namespace A179744

/-- `floor(3*2^(n-1)-n)` -/
def P2717761362167288864.Spec : Prop :=
  ∀ n, P2717761362167288864.a n = A179744 n

end A179744

/-! ## A179744.P317481490208469633

`∑[ogf((1-2x+x^2+x^3)/(1-3x+2x^2))]`
-/

namespace A179744.P317481490208469633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179744.P317481490208469633

namespace A179744

/-- `∑[ogf((1-2x+x^2+x^3)/(1-3x+2x^2))]` -/
def P317481490208469633.Spec : Prop :=
  ∀ n, P317481490208469633.a n = A179744 n

end A179744

/-! ## A179744.P5351091012497212440

`ogf((1-2x+x^2+x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A179744.P5351091012497212440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 1] [1, -4, 5, -2] n

end

end A179744.P5351091012497212440

namespace A179744

/-- `ogf((1-2x+x^2+x^3)/(1-4x+5x^2-2x^3))` -/
def P5351091012497212440.Spec : Prop :=
  ∀ n, P5351091012497212440.a n = A179744 n

end A179744

/-! ## A179744.P16971351920542649741

`record[2*a(n-2)]-n` with `a(0)=1, a(1)=3`
-/

namespace A179744.P16971351920542649741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A179744.P16971351920542649741

namespace A179744

/-- `record[2*a(n-2)]-n` -/
def P16971351920542649741.Spec : Prop :=
  ∀ n, P16971351920542649741.a n = A179744 n

end A179744

/-! ## A179744.P7773103603227680443

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A179744.P7773103603227680443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 3] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179744.P7773103603227680443

namespace A179744

/-- `∑[∑[2*a(n-1)]]` -/
def P7773103603227680443.Spec : Prop :=
  ∀ n, (P7773103603227680443.a n : ℤ) = A179744 n

end A179744

/-! ## A179744.P3262834010889134578

`n-2*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A179744.P3262834010889134578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - 2 * (1 - a (n - 1))

end

end A179744.P3262834010889134578

namespace A179744

/-- `n-2*(1-a(n-1))` -/
def P3262834010889134578.Spec : Prop :=
  ∀ n, P3262834010889134578.a n = A179744 n

end A179744

/-! ## A179744.P1462027885917891244

`∑[a(n-1)+a(n-1)+1]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A179744.P1462027885917891244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179744.P1462027885917891244

namespace A179744

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P1462027885917891244.Spec : Prop :=
  ∀ n, (P1462027885917891244.a n : ℤ) = A179744 n

end A179744

/-! ## A179744.P12969648015517590611

`a(n-1)-2+a(n-1)+n` with `a(0)=1, a(1)=2`
-/

namespace A179744.P12969648015517590611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 2 + (a (n - 1) + (n : ℤ))

end

end A179744.P12969648015517590611

namespace A179744

/-- `a(n-1)-2+a(n-1)+n` -/
def P12969648015517590611.Spec : Prop :=
  ∀ n, P12969648015517590611.a n = A179744 n

theorem P12969648015517590611.correct : P12969648015517590611.Spec := by
  intro n
  simp only [A179744, Nat.add_sub_cancel, A179744.P12969648015517590611.a, A179744.P10369720739337931706.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A179744

/-! ## A179744.P6153516022067491270

`a(n-1)-(2-a(n-1)-n)` with `a(0)=1, a(1)=2`
-/

namespace A179744.P6153516022067491270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (2 - a (n - 1) - (n : ℤ))

end

end A179744.P6153516022067491270

namespace A179744

/-- `a(n-1)-(2-a(n-1)-n)` -/
def P6153516022067491270.Spec : Prop :=
  ∀ n, P6153516022067491270.a n = A179744 n

theorem P6153516022067491270.correct : P6153516022067491270.Spec := by
  intro n
  simp only [A179744, Nat.add_sub_cancel, A179744.P6153516022067491270.a, A179744.P10369720739337931706.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A179744

/-! ## A179744.P4440222933706496624

`A003945(n)-n`
-/

namespace A179744.P4440222933706496624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - (n : ℤ)

end

end A179744.P4440222933706496624

namespace A179744

/-- `A003945(n)-n` -/
def P4440222933706496624.Spec : Prop :=
  ∀ n, P4440222933706496624.a n = A179744 n

end A179744

/-! ## A179744.P4798413108441238801

`∑[A266550(n+1)]`
-/

namespace A179744.P4798413108441238801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179744.P4798413108441238801

namespace A179744

/-- `∑[A266550(n+1)]` -/
def P4798413108441238801.Spec : Prop :=
  ∀ n, P4798413108441238801.a n = A179744 n

end A179744

/-! ## A179744.P4190185347440516215

`record[A074323(n)]-n`
-/

namespace A179744.P4190185347440516215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A179744.P4190185347440516215

namespace A179744

/-- `record[A074323(n)]-n` -/
def P4190185347440516215.Spec : Prop :=
  ∀ n, P4190185347440516215.a n = A179744 n

end A179744

/-! ## A179744.P1787920564488024131

`A055010(n)+1-n`
-/

namespace A179744.P1787920564488024131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n + (1 - (n : ℤ))

end

end A179744.P1787920564488024131

namespace A179744

/-- `A055010(n)+1-n` -/
def P1787920564488024131.Spec : Prop :=
  ∀ n, P1787920564488024131.a n = A179744 n

end A179744

/-! ## A179744.P9353204745021551993

`A122391(n+2)-n`
-/

namespace A179744.P9353204745021551993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (n + 2) - (n : ℤ)

end

end A179744.P9353204745021551993

namespace A179744

/-- `A122391(n+2)-n` -/
def P9353204745021551993.Spec : Prop :=
  ∀ n, P9353204745021551993.a n = A179744 n

end A179744

/-! ## A179744.P14477656943254595680

`A074323(2*n)-n`
-/

namespace A179744.P14477656943254595680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (2 * n) - (n : ℤ)

end

end A179744.P14477656943254595680

namespace A179744

/-- `A074323(2*n)-n` -/
def P14477656943254595680.Spec : Prop :=
  ∀ n, P14477656943254595680.a n = A179744 n

end A179744

/-! ## A179744.P9706091207997616495

`∑[abs(A110164(n))]-n`
-/

namespace A179744.P9706091207997616495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110164 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A179744.P9706091207997616495

namespace A179744

/-- `∑[abs(A110164(n))]-n` -/
def P9706091207997616495.Spec : Prop :=
  ∀ n, P9706091207997616495.a n = A179744 n

end A179744

/-! ## A179744.P6505509112133877585

`A029744(Δ[n²])-n`
-/

namespace A179744.P6505509112133877585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A179744.P6505509112133877585

namespace A179744

/-- `A029744(Δ[n²])-n` -/
def P6505509112133877585.Spec : Prop :=
  ∀ n, P6505509112133877585.a n = A179744 n

end A179744

/-! ## A179744.P5043559705805438189

`A081026(Δ[n²])-n`
-/

namespace A179744.P5043559705805438189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081026 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A179744.P5043559705805438189

namespace A179744

/-- `A081026(Δ[n²])-n` -/
def P5043559705805438189.Spec : Prop :=
  ∀ n, P5043559705805438189.a n = A179744 n

end A179744

/-! ## A179744.P16498487689052692726

`A103204(n+1)-(n+1)`
-/

namespace A179744.P16498487689052692726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 1) - (n + 1 : ℤ)

end

end A179744.P16498487689052692726

namespace A179744

/-- `A103204(n+1)-(n+1)` -/
def P16498487689052692726.Spec : Prop :=
  ∀ n, P16498487689052692726.a n = A179744 n

end A179744

/-!
# A179745: Triangle read by rows, derived from iterates of operations in which a current eigensequence becomes the left border of a new triangle; with triangles of the form: all 1's except the left border for triangles >1.

The programs for A179745, there is no canonical definition to state claims against.
-/

/-! ## A179745.P10144572876455401938

`A055807(comp[∑[n-1]])`
-/

namespace A179745.P10144572876455401938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A179745.P10144572876455401938

/-! ## A179745.P7611538714572690281

`A055807(A007401(n+1))%A000292(n+2)`
-/

namespace A179745.P7611538714572690281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055807 (A007401 (n + 1)).toNat) (A000292 (n + 2))

end

end A179745.P7611538714572690281

/-! ## A179745.P3179096667959774112

`A055807(A007401(n+1))+A000035(2*(n+1))`
-/

namespace A179745.P3179096667959774112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A007401 (n + 1)).toNat + A000035 (2 * (n + 1))

end

end A179745.P3179096667959774112

/-!
# A179746: Numbers of the form p^4*q^2*r^2 where p, q, and r are distinct primes.

The programs for A179746, the canonical program `A179746.P1162274242722090488` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179746 has offset 1).

The definition of A179746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085987, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179746.P1162274242722090488

`A085987(n+1)²`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179746

/-- `A085987(n+1)²` -/
def P1162274242722090488.Spec : Prop :=
  ∀ n, P1162274242722090488.a n = A179746 (n + 1)

theorem P1162274242722090488.correct : P1162274242722090488.Spec := by
  intro n
  simp only [A179746, Nat.add_sub_cancel]

end A179746

/-! ## A179746.P13294405831420402694

`(eq[9, A292587(n+1)]+1)²`
-/

namespace A179746.P13294405831420402694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A179746.P13294405831420402694

namespace A179746

/-- `(eq[9, A292587(n+1)]+1)²` -/
def P13294405831420402694.Spec : Prop :=
  ∀ n, (P13294405831420402694.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P18329969238854599344

`A085987(A000027(n+1))^2`
-/

namespace A179746.P18329969238854599344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (A000027 (n + 1)).toNat ^ 2

end

end A179746.P18329969238854599344

namespace A179746

/-- `A085987(A000027(n+1))^2` -/
def P18329969238854599344.Spec : Prop :=
  ∀ n, P18329969238854599344.a n = A179746 (n + 1)

end A179746

/-! ## A179746.P16443994146040570288

`A085987(A246277(2*(n+1)))^2`
-/

namespace A179746.P16443994146040570288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (A246277 (2 * (n + 1))).toNat ^ 2

end

end A179746.P16443994146040570288

namespace A179746

/-- `A085987(A246277(2*(n+1)))^2` -/
def P16443994146040570288.Spec : Prop :=
  ∀ n, P16443994146040570288.a n = A179746 (n + 1)

end A179746

/-! ## A179746.P17695806250697035240

`∩[A000977(n+1), A030630(n+1)]²`
-/

namespace A179746.P17695806250697035240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P17695806250697035240

namespace A179746

/-- `∩[A000977(n+1), A030630(n+1)]²` -/
def P17695806250697035240.Spec : Prop :=
  ∀ n, (P17695806250697035240.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P14973823146838570172

`∩[A004709(n+1), A030630(n+1)]²`
-/

namespace A179746.P14973823146838570172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P14973823146838570172

namespace A179746

/-- `∩[A004709(n+1), A030630(n+1)]²` -/
def P14973823146838570172.Spec : Prop :=
  ∀ n, (P14973823146838570172.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P1300019796931749975

`∩[A014613(n+1), A030630(n+1)]²`
-/

namespace A179746.P1300019796931749975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P1300019796931749975

namespace A179746

/-- `∩[A014613(n+1), A030630(n+1)]²` -/
def P1300019796931749975.Spec : Prop :=
  ∀ n, (P1300019796931749975.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P13621135748033888289

`∩[A014613(n+1), A033992(n+1)]²`
-/

namespace A179746.P13621135748033888289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P13621135748033888289

namespace A179746

/-- `∩[A014613(n+1), A033992(n+1)]²` -/
def P13621135748033888289.Spec : Prop :=
  ∀ n, (P13621135748033888289.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P7841647285292534985

`∩[A014613(n+1), A036457(n+1)]²`
-/

namespace A179746.P7841647285292534985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P7841647285292534985

namespace A179746

/-- `∩[A014613(n+1), A036457(n+1)]²` -/
def P7841647285292534985.Spec : Prop :=
  ∀ n, (P7841647285292534985.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P18030623845295045407

`∩[A030630(n+1), A033992(n+1)]²`
-/

namespace A179746.P18030623845295045407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P18030623845295045407

namespace A179746

/-- `∩[A030630(n+1), A033992(n+1)]²` -/
def P18030623845295045407.Spec : Prop :=
  ∀ n, (P18030623845295045407.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P925353826860777115

`∩[A014613(n+1), A060687(n+1)]²`
-/

namespace A179746.P925353826860777115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P925353826860777115

namespace A179746

/-- `∩[A014613(n+1), A060687(n+1)]²` -/
def P925353826860777115.Spec : Prop :=
  ∀ n, (P925353826860777115.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P11916463055011499160

`∩[A030630(n+1), A048107(n+1)]²`
-/

namespace A179746.P11916463055011499160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P11916463055011499160

namespace A179746

/-- `∩[A030630(n+1), A048107(n+1)]²` -/
def P11916463055011499160.Spec : Prop :=
  ∀ n, (P11916463055011499160.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P15828092410392622213

`∩[A014613(n+1), A070011(n+1)]²`
-/

namespace A179746.P15828092410392622213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P15828092410392622213

namespace A179746

/-- `∩[A014613(n+1), A070011(n+1)]²` -/
def P15828092410392622213.Spec : Prop :=
  ∀ n, (P15828092410392622213.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P7004964963899092979

`∩[A014613(n+1), A072357(n+1)]²`
-/

namespace A179746.P7004964963899092979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P7004964963899092979

namespace A179746

/-- `∩[A014613(n+1), A072357(n+1)]²` -/
def P7004964963899092979.Spec : Prop :=
  ∀ n, (P7004964963899092979.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P3424051905945751289

`∩[A014613(n+1), A072588(n+1)]²`
-/

namespace A179746.P3424051905945751289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P3424051905945751289

namespace A179746

/-- `∩[A014613(n+1), A072588(n+1)]²` -/
def P3424051905945751289.Spec : Prop :=
  ∀ n, (P3424051905945751289.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P5795781238761519335

`∩[A030630(n+1), A060687(n+1)]²`
-/

namespace A179746.P5795781238761519335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P5795781238761519335

namespace A179746

/-- `∩[A030630(n+1), A060687(n+1)]²` -/
def P5795781238761519335.Spec : Prop :=
  ∀ n, (P5795781238761519335.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P18165180888216202531

`∩[A033992(n+1), A060687(n+1)]²`
-/

namespace A179746.P18165180888216202531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P18165180888216202531

namespace A179746

/-- `∩[A033992(n+1), A060687(n+1)]²` -/
def P18165180888216202531.Spec : Prop :=
  ∀ n, (P18165180888216202531.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P5153623182907847316

`∩[A030630(n+1), A067259(n+1)]²`
-/

namespace A179746.P5153623182907847316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P5153623182907847316

namespace A179746

/-- `∩[A030630(n+1), A067259(n+1)]²` -/
def P5153623182907847316.Spec : Prop :=
  ∀ n, (P5153623182907847316.a n : ℤ) = A179746 (n + 1)

end A179746

/-! ## A179746.P2631137064023553973

`∩[A030630(n+1), A072357(n+1)]²`
-/

namespace A179746.P2631137064023553973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179746.P2631137064023553973

namespace A179746

/-- `∩[A030630(n+1), A072357(n+1)]²` -/
def P2631137064023553973.Spec : Prop :=
  ∀ n, (P2631137064023553973.a n : ℤ) = A179746 (n + 1)

end A179746

/-!
# A179747: Numbers of the form p^8*q*r where p, q, and r are distinct primes.

The programs for A179747, there is no canonical definition to state claims against.
-/

/-! ## A179747.P17629374377057210194

`∩[A175746(n+1), A195091(n+1)]`
-/

namespace A179747.P17629374377057210194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179747.P17629374377057210194

/-! ## A179747.P16426804494531037046

`filter[A046314(n+1), A340370(#)]`
-/

namespace A179747.P16426804494531037046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A179747.P16426804494531037046

/-! ## A179747.P3093800977936094378

`filter[A046314(n+1), A359606(#)]`
-/

namespace A179747.P3093800977936094378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359606 (f1 j).toNat = 1) n)

end

end A179747.P3093800977936094378

/-! ## A179747.P8025509324305779782

`filter[A195091(n+1), A340370(#)]`
-/

namespace A179747.P8025509324305779782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A179747.P8025509324305779782

/-! ## A179747.P5633534795878478813

`filter[A361176(n+1), A340370(#)]`
-/

namespace A179747.P5633534795878478813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A179747.P5633534795878478813

/-!
# A179748: Triangle T(n,k) read by rows. T(n,1)=1, k > 1: T(n,k) = Sum_{i=1..k-1} T(n-i,k-1).

The programs for A179748, there is no canonical definition to state claims against.
-/

/-! ## A179748.P15316954362572294300

`∏{e}[A025227(A360333(n+1)), #]`
-/

namespace A179748.P15316954362572294300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 (A360333 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A179748.P15316954362572294300

/-! ## A179748.P10687550900059850604

`A110592(A084558(n)^A306209(n))`
-/

namespace A179748.P10687550900059850604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (SequenceMachineLib.roundAway ((A084558 n : ℚ) ^ (A306209 n : ℤ))).toNat

end

end A179748.P10687550900059850604

/-! ## A179748.P571774695431220398

`A002266(A119605(A209563(n+1)+3))`
-/

namespace A179748.P571774695431220398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A119605 (A209563 (n + 1) + 3).toNat).toNat

end

end A179748.P571774695431220398

/-! ## A179748.P15732399520130191050

`A331244(A362783(n))`
-/

namespace A179748.P15732399520130191050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331244 (A362783 n).toNat

end

end A179748.P15732399520130191050

/-! ## A179748.P9650898361101542476

`A380584(A316674(n))`
-/

namespace A179748.P9650898361101542476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380584 (A316674 n).toNat

end

end A179748.P9650898361101542476

/-!
# A179749: Subsequence of A179748. Equals A179748 beginning at the second column.

The programs for A179749, there is no canonical definition to state claims against.
-/

/-! ## A179749.P2649301384974054525

`A179748(comp[∑[n]]+1)`
-/

namespace A179749.P2649301384974054525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179748 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A179749.P2649301384974054525

/-! ## A179749.P14140826530385916861

`A224698(n+1)+A178798(A118350(n))`
-/

namespace A179749.P14140826530385916861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224698 (n + 1) + A178798 (A118350 n).toNat

end

end A179749.P14140826530385916861

/-! ## A179749.P13727396693194008199

`A340988(A333901(n))+A224698(n+1)`
-/

namespace A179749.P13727396693194008199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A333901 n).toNat + 91) + A224698 (n + 1)

end

end A179749.P13727396693194008199

/-! ## A179749.P12444918155873140088

`or(A018843(A004248(n)), A224698(n+1))`
-/

namespace A179749.P12444918155873140088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018843 (A004248 n).toNat) (A224698 (n + 1))

end

end A179749.P12444918155873140088

/-! ## A179749.P17070086677840379320

`A224698(A328617(n+1))`
-/

namespace A179749.P17070086677840379320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224698 (A328617 (n + 1)).toNat

end

end A179749.P17070086677840379320

/-!
# A179750: Triangle T(n,k) read by rows. Matrix inverse of A179749.

The programs for A179750, there is no canonical definition to state claims against.
-/

/-! ## A179750.P3997970605752148352

`A097807(n)*A163352(abs(A126126(n)))`
-/

namespace A179750.P3997970605752148352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A163352 |A126126 n|.toNat

end

end A179750.P3997970605752148352

/-! ## A179750.P5589350729197035197

`A163352(A097807(n)*A126126(n))/A097807(n)`
-/

namespace A179750.P5589350729197035197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163352 (A097807 n * A126126 n).toNat : ℚ) / (A097807 n : ℚ)

end

end A179750.P5589350729197035197

/-!
# A179751: Maximum depth/height of binary trees encoded by A014486.

The programs for A179751, there is no canonical definition to state claims against.
-/

/-! ## A179751.P14800540195554947847

`A126303(A153835(n))`
-/

namespace A179751.P14800540195554947847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126303 (A153835 n).toNat

end

end A179751.P14800540195554947847

/-! ## A179751.P8501903459335826199

`A324923(A127302(n))`
-/

namespace A179751.P8501903459335826199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A127302 n).toNat

end

end A179751.P8501903459335826199

/-! ## A179751.P16009519288637173476

`A179752(A057123(n))`
-/

namespace A179751.P16009519288637173476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A057123 n).toNat

end

end A179751.P16009519288637173476

/-! ## A179751.P10647207753906423870

`A109082(∏{p}[A127302(n), #])`
-/

namespace A179751.P10647207753906423870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A179751.P10647207753906423870

/-! ## A179751.P1207785829546113215

`A109082(A127302(n)*A132735(n))`
-/

namespace A179751.P1207785829546113215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A127302 n * A132735 n).toNat

end

end A179751.P1207785829546113215

/-!
# A179752: Maximum depth of parenthesizations encoded by A014486, or correspondingly, maximum height for the equivalent general trees.

The programs for A179752, there is no canonical definition to state claims against.
-/

/-! ## A179752.P16475927533606465062

`A358552(A127301(n))-1`
-/

namespace A179752.P16475927533606465062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (A127301 n).toNat - 1

end

end A179752.P16475927533606465062

/-! ## A179752.P8722457423109068915

`A109082(A127301(n))`
-/

namespace A179752.P8722457423109068915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A127301 n).toNat

end

end A179752.P8722457423109068915

/-! ## A179752.P16960715803522683170

`A272604(A057520(n))`
-/

namespace A179752.P16960715803522683170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A057520 n).toNat

end

end A179752.P16960715803522683170

/-! ## A179752.P991766519359830067

`A272604(A072800(n))`
-/

namespace A179752.P991766519359830067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A072800 n).toNat

end

end A179752.P991766519359830067

/-! ## A179752.P4782663542374912332

`A272604(A014486(n)/2)`
-/

namespace A179752.P4782663542374912332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat

end

end A179752.P4782663542374912332

/-! ## A179752.P119247251875384893

`A319416(A014486(n))-A000007(n)`
-/

namespace A179752.P119247251875384893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A014486 n).toNat - A000007 n

end

end A179752.P119247251875384893

/-! ## A179752.P13409536712674539561

`A057427(n)*A319416(A014486(n))`
-/

namespace A179752.P13409536712674539561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A319416 (A014486 n).toNat

end

end A179752.P13409536712674539561

/-! ## A179752.P12436755910232642536

`A319416(A014486(n))%A053439(n)`
-/

namespace A179752.P12436755910232642536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319416 (A014486 n).toNat) (A053439 n)

end

end A179752.P12436755910232642536

/-! ## A179752.P6756677265638183812

`A319416(A014486(n))-A035327(A038573(n))`
-/

namespace A179752.P6756677265638183812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A014486 n).toNat - A035327 (A038573 n).toNat

end

end A179752.P6756677265638183812

/-! ## A179752.P17342157832081069211

`A246359(A071156(n))`
-/

namespace A179752.P17342157832081069211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A071156 n).toNat

end

end A179752.P17342157832081069211

/-! ## A179752.P7148093074550020864

`A246359(A071155(n))`
-/

namespace A179752.P7148093074550020864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A071155 n).toNat

end

end A179752.P7148093074550020864

/-! ## A179752.P894498982082792035

`A272604(A014486(n))`
-/

namespace A179752.P894498982082792035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A014486 n).toNat

end

end A179752.P894498982082792035

/-! ## A179752.P5374381931337001009

`A272604(A194045(n))`
-/

namespace A179752.P5374381931337001009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A194045 n).toNat

end

end A179752.P5374381931337001009

/-! ## A179752.P13403839453975898732

`A319416(2*A014486(n))-1`
-/

namespace A179752.P13403839453975898732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (2 * A014486 n).toNat - 1

end

end A179752.P13403839453975898732

/-! ## A179752.P3864618282507723234

`a(A126309(n))+1` with `a(0)=0`
-/

namespace A179752.P3864618282507723234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A126309 n).toNat + 1

end

end A179752.P3864618282507723234

/-! ## A179752.P15535681701991675664

`A033307(a(A126309(n)))` with `a(0)=0`
-/

namespace A179752.P15535681701991675664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033307 (a (A126309 n).toNat).toNat

end

end A179752.P15535681701991675664

/-! ## A179752.P13407249683797697556

`A153246(n)+A057427(n)`
-/

namespace A179752.P13407249683797697556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 n + A057427 n

end

end A179752.P13407249683797697556

/-! ## A179752.P8791363373375154230

`A178334(n)+A153246(n)`
-/

namespace A179752.P8791363373375154230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A153246 n

end

end A179752.P8791363373375154230

/-! ## A179752.P6527560535728017874

`A153246(n)-A057428(n)`
-/

namespace A179752.P6527560535728017874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 n - A057428 n

end

end A179752.P6527560535728017874

/-!
# A179753: Integers (2k)-1..0 followed by integers (2k)+1..0 and so on.

The programs for A179753, the canonical program `A179753.P14864369555432723012` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179753 has offset 1).

The definition of A179753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179753.P14864369555432723012

`2*A000194(n+1)-A074294(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179753

/-- `2*A000194(n+1)-A074294(n+1)` -/
def P14864369555432723012.Spec : Prop :=
  ∀ n, P14864369555432723012.a n = A179753 (n + 1)

theorem P14864369555432723012.correct : P14864369555432723012.Spec := by
  intro n
  simp only [A179753, Nat.add_sub_cancel]

end A179753

/-! ## A179753.P6338335984454354685

`abs(1-n²%comp[n²])`
-/

namespace A179753.P6338335984454354685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((n ^ 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℕ) : ℤ)|

end

end A179753.P6338335984454354685

namespace A179753

/-- `abs(1-n²%comp[n²])` -/
def P6338335984454354685.Spec : Prop :=
  ∀ n, P6338335984454354685.a n = A179753 (n + 1)

end A179753

/-! ## A179753.P11691640624006648115

`(n+1)²%(comp[n²]+1)`
-/

namespace A179753.P11691640624006648115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A179753.P11691640624006648115

namespace A179753

/-- `(n+1)²%(comp[n²]+1)` -/
def P11691640624006648115.Spec : Prop :=
  ∀ n, (P11691640624006648115.a n : ℤ) = A179753 (n + 1)

end A179753

/-! ## A179753.P8182481231444535641

`(n-comp[n²])²-(comp[n²]+1)`
-/

namespace A179753.P8182481231444535641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 : ℤ)

end

end A179753.P8182481231444535641

namespace A179753

/-- `(n-comp[n²])²-(comp[n²]+1)` -/
def P8182481231444535641.Spec : Prop :=
  ∀ n, P8182481231444535641.a n = A179753 (n + 1)

end A179753

/-! ## A179753.P18287257418538090926

`abs(1-A080883(A000037(n+1)))`
-/

namespace A179753.P18287257418538090926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A080883 (A000037 (n + 1)).toNat|

end

end A179753.P18287257418538090926

namespace A179753

/-- `abs(1-A080883(A000037(n+1)))` -/
def P18287257418538090926.Spec : Prop :=
  ∀ n, P18287257418538090926.a n = A179753 (n + 1)

end A179753

/-! ## A179753.P631217113577598617

`A068527(comp[n²]+1)`
-/

namespace A179753.P631217113577598617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A179753.P631217113577598617

namespace A179753

/-- `A068527(comp[n²]+1)` -/
def P631217113577598617.Spec : Prop :=
  ∀ n, P631217113577598617.a n = A179753 (n + 1)

end A179753

/-! ## A179753.P11558077183225370897

`A025581(round(sqrt(n+1))²+n)`
-/

namespace A179753.P11558077183225370897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)).toNat

end

end A179753.P11558077183225370897

namespace A179753

/-- `A025581(round(sqrt(n+1))²+n)` -/
def P11558077183225370897.Spec : Prop :=
  ∀ n, P11558077183225370897.a n = A179753 (n + 1)

end A179753

/-! ## A179753.P2041355215661932879

`A028391(A253515(n+1)²)/A253515(n+1)`
-/

namespace A179753.P2041355215661932879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028391 (A253515 (n + 1) ^ 2).toNat : ℚ) / (A253515 (n + 1) : ℚ)

end

end A179753.P2041355215661932879

namespace A179753

/-- `A028391(A253515(n+1)²)/A253515(n+1)` -/
def P2041355215661932879.Spec : Prop :=
  ∀ n, P2041355215661932879.a n = (A179753 (n + 1) : ℚ)

end A179753

/-! ## A179753.P10536523616416176836

`val(A192113(n+2), 2)`
-/

namespace A179753.P10536523616416176836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A192113 (n + 2)).toNat 2

end

end A179753.P10536523616416176836

namespace A179753

/-- `val(A192113(n+2), 2)` -/
def P10536523616416176836.Spec : Prop :=
  ∀ n, (P10536523616416176836.a n : ℤ) = A179753 (n + 1)

end A179753

/-! ## A179753.P4776530132440380842

`val(A192158(n+2), 3)`
-/

namespace A179753.P4776530132440380842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A192158 (n + 2)).toNat 3

end

end A179753.P4776530132440380842

namespace A179753

/-- `val(A192158(n+2), 3)` -/
def P4776530132440380842.Spec : Prop :=
  ∀ n, (P4776530132440380842.a n : ℤ) = A179753 (n + 1)

end A179753

/-!
# A179754: Iterates of A122237 starting from the initial value 6.

The programs for A179754, there is no canonical definition to state claims against.
-/

/-! ## A179754.P18129553909731180462

`A205877(10^n)+∑[char[∑[n+1]]]`
-/

namespace A179754.P18129553909731180462
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205877 (10 ^ n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A179754.P18129553909731180462

/-!
# A179755: a(n) = A014486(A179754(n)).

The programs for A179755, there is no canonical definition to state claims against.
-/

/-! ## A179755.P124743776513012322

`A014486(A179754(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179755.P124743776513012322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A179754 (n + 1)).toNat

end

end A179755.P124743776513012322

/-!
# A179756: Iterates of A122237 starting from the initial value 8.

The programs for A179756, there is no canonical definition to state claims against.
-/

/-! ## A179756.P2459209277776514999

`A258025(A125654(n+3)+A125654(n))`
-/

namespace A179756.P2459209277776514999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (A125654 (n + 3) + A125654 n).toNat

end

end A179756.P2459209277776514999

/-!
# A179757: a(n) = A014486(A179756(n)).

The programs for A179757, there is no canonical definition to state claims against.
-/

/-! ## A179757.P1551062632967026493

`A014486(A179756(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179757.P1551062632967026493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A179756 (n + 1)).toNat

end

end A179757.P1551062632967026493

/-! ## A179757.P16002420530157550888

`A057520(A179756(n+1))*A079416(n+1)`
-/

namespace A179757.P16002420530157550888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057520 (A179756 (n + 1)).toNat * A079416 (n + 1)

end

end A179757.P16002420530157550888

/-!
# A179758: Binary expansions of A080069 (A080070) concatenated together to a single binary sequence, so that from each term of A080069, the most significant bits come before the least significant bits.

The programs for A179758, there is no canonical definition to state claims against.
-/

/-! ## A179758.P924580155317562816

`A267053(A224498(n+2)+A059841(n))`
-/

namespace A179758.P924580155317562816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 (A224498 (n + 2) + A059841 n).toNat

end

end A179758.P924580155317562816

/-! ## A179758.P13725219136242190316

`A267053(A224498(n+2)-A000034(n))`
-/

namespace A179758.P13725219136242190316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 (A224498 (n + 2) - A000034 n).toNat

end

end A179758.P13725219136242190316

/-! ## A179758.P6376239257902496687

`A267053(A267053(n²)+A224498(n+2))`
-/

namespace A179758.P6376239257902496687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 (A267053 (n ^ 2) + A224498 (n + 2)).toNat

end

end A179758.P6376239257902496687

/-! ## A179758.P16585736418523885657

`A010060(A124574(n+1)-A088722(n+1))`
-/

namespace A179758.P16585736418523885657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A124574 (n + 1) - A088722 (n + 1)).toNat

end

end A179758.P16585736418523885657

/-! ## A179758.P14018515665470087386

`A267053(A224498(n+2)+A179759(n+1))`
-/

namespace A179758.P14018515665470087386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 (A224498 (n + 2) + A179759 (n + 1)).toNat

end

end A179758.P14018515665470087386

/-!
# A179759: Partial sums of -(A033999(A179758(n))).

The programs for A179759, there is no canonical definition to state claims against.
-/

/-! ## A179759.P4516806562567358628

`∑[2*A179758(n+1)-1]`
-/

namespace A179759.P4516806562567358628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179758 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179759.P4516806562567358628

/-! ## A179759.P17419208504058837925

`A004273(∑[A179758(n+1)])-n`
-/

namespace A179759.P17419208504058837925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A179759.P17419208504058837925

/-! ## A179759.P13415913665066650935

`A005843(∑[A179758(n+1)])-(n+1)`
-/

namespace A179759.P13415913665066650935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A179759.P13415913665066650935

/-! ## A179759.P6613956445517078527

`A005408(∑[A179758(n+1)])-(n+2)`
-/

namespace A179759.P6613956445517078527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 2 : ℤ)

end

end A179759.P6613956445517078527

/-! ## A179759.P9534390034388279882

`∑[A158388((n+1)*A179758(n+1))]`
-/

namespace A179759.P9534390034388279882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 ((n + 1 : ℤ) * A179758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179759.P9534390034388279882

/-!
# A179761: Binary expansions of A122242 (A122243) concatenated together to a single binary sequence, so that from each term of A122242, the most significant bits come before the least significant bits.

The programs for A179761, there is no canonical definition to state claims against.
-/

/-! ## A179761.P13107107192722225764

`xor(A179762(n+1), A179827(n+1))`
-/

namespace A179761.P13107107192722225764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179762 (n + 1)) (A179827 (n + 1))

end

end A179761.P13107107192722225764

/-! ## A179761.P10751955686797951071

`xor(A179763(n+1), A179828(n+1))`
-/

namespace A179761.P10751955686797951071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179763 (n + 1)) (A179828 (n + 1))

end

end A179761.P10751955686797951071

/-! ## A179761.P14904113290216806416

`(A179762(n+1)-A179827(n+1))^A002378(n)`
-/

namespace A179761.P14904113290216806416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179762 (n + 1) - A179827 (n + 1) : ℚ) ^ (A002378 n : ℤ)

end

end A179761.P14904113290216806416

/-! ## A179761.P17321399254103390828

`(A179763(n+1)-A179828(n+1))^A002378(n)`
-/

namespace A179761.P17321399254103390828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179763 (n + 1) - A179828 (n + 1) : ℚ) ^ (A002378 n : ℤ)

end

end A179761.P17321399254103390828

/-! ## A179761.P1821626259579071952

`(A179762(n+1)-A179827(n+1))^A014486(n)`
-/

namespace A179761.P1821626259579071952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179762 (n + 1) - A179827 (n + 1) : ℚ) ^ (A014486 n : ℤ)

end

end A179761.P1821626259579071952

/-! ## A179761.P15765838496632190157

`(A179763(n+1)-A179828(n+1))^A014486(n)`
-/

namespace A179761.P15765838496632190157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179763 (n + 1) - A179828 (n + 1) : ℚ) ^ (A014486 n : ℤ)

end

end A179761.P15765838496632190157

/-! ## A179761.P643825934044688586

`lcm(A179762(n+1)-A179827(n+1), A033999(n))`
-/

namespace A179761.P643825934044688586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A179762 (n + 1) - A179827 (n + 1)) (A033999 n)

end

end A179761.P643825934044688586

/-!
# A179762: Binary expansions of A122245 (A122246) concatenated together to a single binary sequence, so that from each term of A122245, the most significant bits come before the least significant bits.

The programs for A179762, there is no canonical definition to state claims against.
-/

/-! ## A179762.P9325168040323701448

`xor(A179761(n+1), A179827(n+1))`
-/

namespace A179762.P9325168040323701448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179761 (n + 1)) (A179827 (n + 1))

end

end A179762.P9325168040323701448

/-! ## A179762.P11257062630604260575

`xor(A179763(n+1), A179829(n+1))`
-/

namespace A179762.P11257062630604260575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179763 (n + 1)) (A179829 (n + 1))

end

end A179762.P11257062630604260575

/-! ## A179762.P17986041704265192781

`(A179763(n+1)-A179829(n+1))^A002378(n)`
-/

namespace A179762.P17986041704265192781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179763 (n + 1) - A179829 (n + 1) : ℚ) ^ (A002378 n : ℤ)

end

end A179762.P17986041704265192781

/-! ## A179762.P14335219132479542277

`(A179761(n+1)-A179827(n+1))^A014486(n)`
-/

namespace A179762.P14335219132479542277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179761 (n + 1) - A179827 (n + 1) : ℚ) ^ (A014486 n : ℤ)

end

end A179762.P14335219132479542277

/-! ## A179762.P14419589531456597731

`(A179763(n+1)-A179829(n+1))^A014486(n)`
-/

namespace A179762.P14419589531456597731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179763 (n + 1) - A179829 (n + 1) : ℚ) ^ (A014486 n : ℤ)

end

end A179762.P14419589531456597731

/-! ## A179762.P7531480432164857672

`lcm(A179761(n+1)-A179827(n+1), A033999(n))`
-/

namespace A179762.P7531480432164857672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A179761 (n + 1) - A179827 (n + 1)) (A033999 n)

end

end A179762.P7531480432164857672

/-!
# A179763: Binary expansions of A179757 concatenated together to a single binary sequence, so that from each term of A179757, the most significant bits come before the least significant bits.

The programs for A179763, there is no canonical definition to state claims against.
-/

/-! ## A179763.P7258009196992241665

`xor(A179761(n+1), A179828(n+1))`
-/

namespace A179763.P7258009196992241665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179761 (n + 1)) (A179828 (n + 1))

end

end A179763.P7258009196992241665

/-! ## A179763.P4403258470677607628

`xor(A179762(n+1), A179829(n+1))`
-/

namespace A179763.P4403258470677607628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179762 (n + 1)) (A179829 (n + 1))

end

end A179763.P4403258470677607628

/-! ## A179763.P8930627402461922540

`(A179761(n+1)-A179828(n+1))^A002378(n)`
-/

namespace A179763.P8930627402461922540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179761 (n + 1) - A179828 (n + 1) : ℚ) ^ (A002378 n : ℤ)

end

end A179763.P8930627402461922540

/-! ## A179763.P18139157765865998883

`(A179761(n+1)-A179828(n+1))^A014486(n)`
-/

namespace A179763.P18139157765865998883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179761 (n + 1) - A179828 (n + 1) : ℚ) ^ (A014486 n : ℤ)

end

end A179763.P18139157765865998883

/-! ## A179763.P4807342109061156433

`(A179762(n+1)-A179829(n+1))^A014486(n)`
-/

namespace A179763.P4807342109061156433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179762 (n + 1) - A179829 (n + 1) : ℚ) ^ (A014486 n : ℤ)

end

end A179763.P4807342109061156433

/-! ## A179763.P2086397682506067025

`lcm(A179761(n+1)-A179828(n+1), A033999(n))`
-/

namespace A179763.P2086397682506067025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A179761 (n + 1) - A179828 (n + 1)) (A033999 n)

end

end A179763.P2086397682506067025

/-!
# A179764: Partial sums of -(A033999(A179761(n))).

The programs for A179764, there is no canonical definition to state claims against.
-/

/-! ## A179764.P17921872451502289324

`∑[2*A179761(n+1)-1]`
-/

namespace A179764.P17921872451502289324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179761 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179764.P17921872451502289324

/-! ## A179764.P16579996431002358495

`A004273(∑[A179761(n+1)])-n`
-/

namespace A179764.P16579996431002358495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A179764.P16579996431002358495

/-! ## A179764.P9743307988717370283

`A005843(∑[A179761(n+1)])-(n+1)`
-/

namespace A179764.P9743307988717370283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A179764.P9743307988717370283

/-!
# A179765: Partial sums of -(A033999(A179762(n))).

The programs for A179765, there is no canonical definition to state claims against.
-/

/-! ## A179765.P9212464192494282581

`∑[2*A179762(n+1)-1]`
-/

namespace A179765.P9212464192494282581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179762 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179765.P9212464192494282581

/-! ## A179765.P6393233082597372350

`A004273(∑[A179762(n+1)])-n`
-/

namespace A179765.P6393233082597372350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A179765.P6393233082597372350

/-! ## A179765.P3569212928895468763

`A004277(∑[A179762(n+1)])-(n+1)`
-/

namespace A179765.P3569212928895468763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A179765.P3569212928895468763

/-! ## A179765.P7456544986399227520

`A005843(∑[A179762(n+1)])-(n+1)`
-/

namespace A179765.P7456544986399227520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A179765.P7456544986399227520

/-! ## A179765.P9568508426766654812

`A005408(∑[A179762(n+1)])-(n+2)`
-/

namespace A179765.P9568508426766654812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 2 : ℤ)

end

end A179765.P9568508426766654812

/-!
# A179766: Partial sums of -(A033999(A179763(n))).

The programs for A179766, there is no canonical definition to state claims against.
-/

/-! ## A179766.P2515170012664908352

`∑[2*A179763(n+1)-1]`
-/

namespace A179766.P2515170012664908352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179763 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179766.P2515170012664908352

/-! ## A179766.P9428655456771409864

`A004273(∑[A179763(n+1)])-n`
-/

namespace A179766.P9428655456771409864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A179766.P9428655456771409864

/-! ## A179766.P3543173579227295979

`A005843(∑[A179763(n+1)])-(n+1)`
-/

namespace A179766.P3543173579227295979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A179766.P3543173579227295979

/-!
# A179767: a(n) is the smallest prime of the form 4k + 3 such that the first n iterations of the map p -> 4p + 3 are prime with the next iteration being composite.

The programs for A179767, there is no canonical definition to state claims against.
-/

/-! ## A179767.P4028454361944856028

`A006530(A226962(n+1)+11)`
-/

namespace A179767.P4028454361944856028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A226962 (n + 1) + 11).toNat

end

end A179767.P4028454361944856028

/-!
# A179768: Semiprimes of form p*q with p < q, such that 2^p - 1 == 0 (mod q).

The programs for A179768, there is no canonical definition to state claims against.
-/

/-! ## A179768.P7320201128262056544

`∩[A054395(n+1), A093106(n+1)]`
-/

namespace A179768.P7320201128262056544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179768.P7320201128262056544

/-! ## A179768.P10607211455489406814

`∩[A064899(n+1), A093106(n+1)]`
-/

namespace A179768.P10607211455489406814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179768.P10607211455489406814

/-! ## A179768.P5283546868857126244

`filter[A093106(n+1), A354927(#)]`
-/

namespace A179768.P5283546868857126244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A179768.P5283546868857126244

/-! ## A179768.P7315665861073378860

`filter[A093106(n+1), A374128(#)]`
-/

namespace A179768.P7315665861073378860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A179768.P7315665861073378860

/-! ## A179768.P1095937235255123783

`∩[A001358(n+1), A093106(n+1)]`
-/

namespace A179768.P1095937235255123783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179768.P1095937235255123783

/-!
# A179769: Number of steps for the map of primes p -> 4p + 3, starting at the n-th prime == 3 (mod 4), needed to reach the final prime in the trajectory.

The programs for A179769, there is no canonical definition to state claims against.
-/

/-! ## A179769.P6496039208884530684

`A075522(A332807(2*(n+1)))-1`
-/

namespace A179769.P6496039208884530684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075522 (A332807 (2 * (n + 1))).toNat - 1

end

end A179769.P6496039208884530684

/-! ## A179769.P1424123254044803897

`11%A075522(A332807(2*n+2))`
-/

namespace A179769.P1424123254044803897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A075522 (A332807 (2 * n + 2)).toNat)

end

end A179769.P1424123254044803897

/-! ## A179769.P433785744989480813

`A080843(A250120(n+1)+A023431(n))`
-/

namespace A179769.P433785744989480813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A250120 (n + 1) + A023431 n).toNat

end

end A179769.P433785744989480813

/-! ## A179769.P13593929481131659277

`A054546(A164387(n))-A054521(n+1)`
-/

namespace A179769.P13593929481131659277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A164387 n).toNat - A054521 (n + 1)

end

end A179769.P13593929481131659277

/-! ## A179769.P17603972544417311739

`A050605(A094954(3*n+4)+A001414(n+2)+2)`
-/

namespace A179769.P17603972544417311739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A094954 (3 * n + 4) + (A001414 (n + 2) + 2)).toNat

end

end A179769.P17603972544417311739

/-!
# A179770: The fourth central column of triangle A122242, i.e., A179761(4), A179761(11), A179761(20), A179761(31), ...

The programs for A179770, there is no canonical definition to state claims against.
-/

/-! ## A179770.P10637440268227803905

`A179761(A028875(n+3))`
-/

namespace A179770.P10637440268227803905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179761 (A028875 (n + 3)).toNat

end

end A179770.P10637440268227803905

/-! ## A179770.P17482682521970990591

`A179761((n+3)²-5)`
-/

namespace A179770.P17482682521970990591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179761 ((n + 3) ^ 2 - 5)

end

end A179770.P17482682521970990591

/-! ## A179770.P12687697859698753426

`A179828((n+3)²-5)`
-/

namespace A179770.P12687697859698753426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179828 ((n + 3) ^ 2 - 5)

end

end A179770.P12687697859698753426

/-! ## A179770.P4133383586264062191

`and(1, -A179828(5*n+2*(∑[n]+2)))`
-/

namespace A179770.P4133383586264062191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-A179828 (5 * n + 2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)))

end

end A179770.P4133383586264062191

/-! ## A179770.P5599712824363674864

`A188093(A027642(n+1))`
-/

namespace A179770.P5599712824363674864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188093 (A027642 (n + 1)).toNat

end

end A179770.P5599712824363674864

/-!
# A179771: Quadrisection of the fourth central column of triangle A122242, a(n) = A179770(4*n).

The programs for A179771, there is no canonical definition to state claims against.
-/

/-! ## A179771.P12824699102276118188

`A179770(4*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179771.P12824699102276118188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179770 (4 * (n + 1))

end

end A179771.P12824699102276118188

/-! ## A179771.P13731980726354767972

`char[A179772(n+1)-1]`
-/

namespace A179771.P13731980726354767972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179772 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179771.P13731980726354767972

/-! ## A179771.P16777409341037083648

`char[A023443(A179772(n+1))]`
-/

namespace A179771.P16777409341037083648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A179772 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179771.P16777409341037083648

/-! ## A179771.P4272961736423322105

`char[eq[1, A179770(A008574(n))]-1]`
-/

namespace A179771.P4272961736423322105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179770 (A008574 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179771.P4272961736423322105

/-! ## A179771.P12202844958607006144

`A000007(n)+char[∑[A179773(n+1)]]`
-/

namespace A179771.P12202844958607006144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179773 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A179771.P12202844958607006144

/-! ## A179771.P7711826327388952216

`char[A328384(A005384(n+1))+A179772(n+1)]`
-/

namespace A179771.P7711826327388952216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (A005384 (n + 1)).toNat + A179772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179771.P7711826327388952216

/-! ## A179771.P2899887012056404456

`A179761(A028875(Δ[2*(n+1)²]))`
-/

namespace A179771.P2899887012056404456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179761 (A028875 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A179771.P2899887012056404456

/-! ## A179771.P1750203104453231248

`char[comp[A179774(n+1)-1]]`
-/

namespace A179771.P1750203104453231248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179774 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A179771.P1750203104453231248

/-! ## A179771.P6090180933468621625

`char[A023443(n)*A179770(A008574(n))]`
-/

namespace A179771.P6090180933468621625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n * A179770 (A008574 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179771.P6090180933468621625

/-!
# A179772: Position of ones in A179771.

The programs for A179772, there is no canonical definition to state claims against.
-/

/-! ## A179772.P16671077915008476819

`A179773(n)+a(n-1)` with `a(0)=1`
-/

namespace A179772.P16671077915008476819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179773 n + a (n - 1)

end

end A179772.P16671077915008476819

/-! ## A179772.P5968128342316240143

`∑[A179773(round(sqrt(n²+1)))]`
-/

namespace A179772.P5968128342316240143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179773 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179772.P5968128342316240143

/-! ## A179772.P8742331983657057847

`∑[A179773(n+1)]+1-A179773(n+1)`
-/

namespace A179772.P8742331983657057847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A179773 (n + 1))

end

end A179772.P8742331983657057847

/-! ## A179772.P6384891295230969628

`eq[1, A179771(n+1)]+1`
-/

namespace A179772.P6384891295230969628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179772.P6384891295230969628

/-! ## A179772.P13015589901734509339

`eq[1, A179770(A008574(n))]`
-/

namespace A179772.P13015589901734509339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179770 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179772.P13015589901734509339

/-! ## A179772.P4632103983054563699

`record[A008619(n)*A179771(A008619(n))]`
-/

namespace A179772.P4632103983054563699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A179771 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179772.P4632103983054563699

/-! ## A179772.P11433148337171358478

`record[A034887(n*A179771(A034887(n)))]`
-/

namespace A179772.P11433148337171358478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 ((n : ℤ) * A179771 (A034887 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179772.P11433148337171358478

/-! ## A179772.P6093272891652664080

`eq[n, A028310(n)*A179771(A028310(n))]`
-/

namespace A179772.P6093272891652664080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A179771 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179772.P6093272891652664080

/-! ## A179772.P3131634324920070625

`record[A059893(A059893(n+1))*A179771(n+1)]`
-/

namespace A179772.P3131634324920070625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A059893 (n + 1)).toNat * A179771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179772.P3131634324920070625

/-!
# A179773: First differences of A179772.

The programs for A179773, there is no canonical definition to state claims against.
-/

/-! ## A179773.P11550949840617764843

`A179772(n+2)-A179772(n+1)`
-/

namespace A179773.P11550949840617764843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179772 (n + 2) - A179772 (n + 1)

end

end A179773.P11550949840617764843

/-! ## A179773.P15504452418344441821

`Δ[A179772(n+1)]`
-/

namespace A179773.P15504452418344441821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179773.P15504452418344441821

/-! ## A179773.P10693084631127303024

`Δ[record[A179772(A154958(n))]]`
-/

namespace A179773.P10693084631127303024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179772 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179773.P10693084631127303024

/-! ## A179773.P4277199876244253472

`abs(Δ[A179772(A029579(2*n))])`
-/

namespace A179773.P4277199876244253472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179772 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A179773.P4277199876244253472

/-! ## A179773.P406635297491745685

`Δ[A179772(A029579(2*n))]^A178334(n)`
-/

namespace A179773.P406635297491745685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179772 (A029579 (2 * n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A178334 n : ℤ)

end

end A179773.P406635297491745685

/-! ## A179773.P14801480948491257639

`Δ[A179772(A029579(2*n))]%A016897(n)`
-/

namespace A179773.P14801480948491257639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179772 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A016897 n)

end

end A179773.P14801480948491257639

/-! ## A179773.P15002844756188426754

`Δ[A179772(A029579(2*n))%A017114(n)]`
-/

namespace A179773.P15002844756188426754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179772 (A029579 (2 * n)).toNat) (A017114 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179773.P15002844756188426754

/-! ## A179773.P16416629794083142910

`A130151(n)²*Δ[A179772(A029579(2*n))]`
-/

namespace A179773.P16416629794083142910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179772 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A179773.P16416629794083142910

/-! ## A179773.P8927586603422398180

`Δ[eq[1, A179770(4*(n+1))]]`
-/

namespace A179773.P8927586603422398180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179770 (4 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A179773.P8927586603422398180

/-!
# A179774: Position of zeros in A179771. Complement of A179772.

The programs for A179774, there is no canonical definition to state claims against.
-/

/-! ## A179774.P10074561643161736333

`eq[0, A179771(n+1)]+1`
-/

namespace A179774.P10074561643161736333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179774.P10074561643161736333

/-! ## A179774.P3895848100454103580

`comp[A179772(n+1)-1]+1`
-/

namespace A179774.P3895848100454103580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179772 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A179774.P3895848100454103580

/-! ## A179774.P17167427382547788914

`lt[A179771(round(sqrt(n²+1))), 1]`
-/

namespace A179774.P17167427382547788914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179771 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179774.P17167427382547788914

/-! ## A179774.P13973006561177415731

`lt[A179771(abs(1-n)+1)+2, 3]`
-/

namespace A179774.P13973006561177415731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179771 (|1 - (n : ℤ)| + 1).toNat + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179774.P13973006561177415731

/-! ## A179774.P16109379151646588230

`eq[0, A179771(A028310(n))]`
-/

namespace A179774.P16109379151646588230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179771 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179774.P16109379151646588230

/-! ## A179774.P5594674345229748913

`A020725(eq[0, A179771(n+1)])`
-/

namespace A179774.P5594674345229748913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179774.P5594674345229748913

/-! ## A179774.P11466912175113714788

`A065475(eq[0, A179771(n+1)])`
-/

namespace A179774.P11466912175113714788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179774.P11466912175113714788

/-! ## A179774.P3350825576573569919

`eq[0, A179771(A233583(n+1))]`
-/

namespace A179774.P3350825576573569919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179771 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179774.P3350825576573569919

/-! ## A179774.P3557677482782678146

`eq[0, A179771(A000007(n)+n)]`
-/

namespace A179774.P3557677482782678146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179771 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179774.P3557677482782678146

/-! ## A179774.P12700956945972679751

`lt[A130321(n)*A179771(n+1), 1]+1`
-/

namespace A179774.P12700956945972679751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A179771 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A179774.P12700956945972679751

/-! ## A179774.P11129158488915934769

`lt[Δ[A000225(n)]*A179771(n+1), 1]+1`
-/

namespace A179774.P11129158488915934769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A179771 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A179774.P11129158488915934769

/-! ## A179774.P13893570728874790778

`lt[(A004277(n)+1)*A179771(n+1), 1]+1`
-/

namespace A179774.P13893570728874790778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + 1) * A179771 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A179774.P13893570728874790778

/-! ## A179774.P3589069156149104330

`lt[A015996(n+1)*A179771(n+1), 1]+1`
-/

namespace A179774.P3589069156149104330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015996 (n + 1) * A179771 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A179774.P3589069156149104330

/-! ## A179774.P3124199804168648091

`lt[4*A179771(n+1), A001221(n+1)]+1`
-/

namespace A179774.P3124199804168648091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A179771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A179774.P3124199804168648091

/-! ## A179774.P18196297545933947060

`lt[(A000040(n+1)-1)*A179771(n+1), 1]+1`
-/

namespace A179774.P18196297545933947060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A179771 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A179774.P18196297545933947060

/-! ## A179774.P433927314544881303

`eq[A000007(n), A179770(A008574(n))]`
-/

namespace A179774.P433927314544881303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179770 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179774.P433927314544881303

/-! ## A179774.P2582561936015171950

`eq[A000038(n), A179770(A008574(n))]`
-/

namespace A179774.P2582561936015171950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179770 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179774.P2582561936015171950

/-! ## A179774.P5340173508585242640

`eq[A130706(n), A179770(A008574(n))]`
-/

namespace A179774.P5340173508585242640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179770 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179774.P5340173508585242640

/-!
# A179775: The fourth central column of triangle A122245, i.e., A179762(4), A179762(11), A179762(20), A179762(31), ...

The programs for A179775, there is no canonical definition to state claims against.
-/

/-! ## A179775.P7301498203669278754

`A179762(A028875(n+3))`
-/

namespace A179775.P7301498203669278754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 (A028875 (n + 3)).toNat

end

end A179775.P7301498203669278754

/-! ## A179775.P9009223561025132450

`A179762((n+3)²-5)`
-/

namespace A179775.P9009223561025132450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 ((n + 3) ^ 2 - 5)

end

end A179775.P9009223561025132450

/-! ## A179775.P15526224317146357133

`A179829((n+3)²-5)`
-/

namespace A179775.P15526224317146357133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179829 ((n + 3) ^ 2 - 5)

end

end A179775.P15526224317146357133

/-! ## A179775.P1223507059158164033

`A010815(A007814(n+1)*A207187(n+1))`
-/

namespace A179775.P1223507059158164033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A007814 (n + 1) * A207187 (n + 1)).toNat

end

end A179775.P1223507059158164033

/-! ## A179775.P9943900664222068431

`A010815(A191255(n+1)*A207187(n+1))`
-/

namespace A179775.P9943900664222068431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A191255 (n + 1) * A207187 (n + 1)).toNat

end

end A179775.P9943900664222068431

/-! ## A179775.P8317268359515582165

`A051731(A007814(n+3)*A094564(n+1)+1)`
-/

namespace A179775.P8317268359515582165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A007814 (n + 3) * A094564 (n + 1) + 1).toNat

end

end A179775.P8317268359515582165

/-!
# A179776: Quadrisection of the fourth central column of triangle A122245, a(n) = A179775((4*n)-2).

The programs for A179776, there is no canonical definition to state claims against.
-/

/-! ## A179776.P5441321128127452505

`A179775(4*(n+1)-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179776.P5441321128127452505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179775 (4 * (n + 1) - 2)

end

end A179776.P5441321128127452505

/-! ## A179776.P10251914559057004864

`char[A179777(n+1)-1]`
-/

namespace A179776.P10251914559057004864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179777 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179776.P10251914559057004864

/-! ## A179776.P18075034720035039761

`and(1, A179775(lcm(2, Δ[n²])))`
-/

namespace A179776.P18075034720035039761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A179775 (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))))

end

end A179776.P18075034720035039761

/-! ## A179776.P3981409961643546411

`A000007(n)+char[∑[A179778(n+1)]]`
-/

namespace A179776.P3981409961643546411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A179776.P3981409961643546411

/-! ## A179776.P17933607029903474000

`A179762(A028875(4*(n+1)))`
-/

namespace A179776.P17933607029903474000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 (A028875 (4 * (n + 1))).toNat

end

end A179776.P17933607029903474000

/-! ## A179776.P11318574847976523026

`A179762((A016825(n)+2)²-5)`
-/

namespace A179776.P11318574847976523026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 ((A016825 n + 2) ^ 2 - 5).toNat

end

end A179776.P11318574847976523026

/-! ## A179776.P2786439974349232038

`A179762(∑[8*A016825(n)]-5)`
-/

namespace A179776.P2786439974349232038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 (∑ j ∈ Finset.range (n + 1), f1 j - 5).toNat

end

end A179776.P2786439974349232038

/-!
# A179777: Position of ones in A179776.

The programs for A179777, there is no canonical definition to state claims against.
-/

/-! ## A179777.P6786840235400969210

`A179778(n)+a(n-1)` with `a(0)=1`
-/

namespace A179777.P6786840235400969210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179778 n + a (n - 1)

end

end A179777.P6786840235400969210

/-! ## A179777.P7215775757415405823

`∑[A179778(round(sqrt(n²+1)))]`
-/

namespace A179777.P7215775757415405823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179778 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179777.P7215775757415405823

/-! ## A179777.P3906734447957467660

`∑[A179778(abs(1-n)+1)]-3`
-/

namespace A179777.P3906734447957467660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179778 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A179777.P3906734447957467660

/-! ## A179777.P9126838860521587509

`lt[0, A179776(n+1)]+1`
-/

namespace A179777.P9126838860521587509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A179777.P9126838860521587509

/-! ## A179777.P15075510061271176972

`eq[1, A179776(round(sqrt((n+1)²+1)))]+1`
-/

namespace A179777.P15075510061271176972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179776 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179777.P15075510061271176972

/-! ## A179777.P11730466654142082888

`record[A000027(n+1)*A179776(n+1)]`
-/

namespace A179777.P11730466654142082888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A179776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179777.P11730466654142082888

/-! ## A179777.P12369455432845016874

`eq[n, A028310(n)*A179776(A028310(n))]`
-/

namespace A179777.P12369455432845016874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A179776 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179777.P12369455432845016874

/-! ## A179777.P7255212629619672499

`comp[A179779(n+1)-1]+1`
-/

namespace A179777.P7255212629619672499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179779 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A179777.P7255212629619672499

/-! ## A179777.P18421118024334254025

`comp[A233583(A179779(n+1))]+1`
-/

namespace A179777.P18421118024334254025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A179779 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A179777.P18421118024334254025

/-!
# A179778: First differences of A179777.

The programs for A179778, there is no canonical definition to state claims against.
-/

/-! ## A179778.P10563386593610164046

`A179777(n+2)-A179777(n+1)`
-/

namespace A179778.P10563386593610164046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179777 (n + 2) - A179777 (n + 1)

end

end A179778.P10563386593610164046

/-! ## A179778.P16046643595372221263

`Δ[A179777(n+1)]`
-/

namespace A179778.P16046643595372221263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179778.P16046643595372221263

/-! ## A179778.P9315659780820475037

`Δ[record[A179777(A154958(n))]]`
-/

namespace A179778.P9315659780820475037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179777 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179778.P9315659780820475037

/-! ## A179778.P14583768772042345877

`Δ[record[A179777(A051340(n))]]`
-/

namespace A179778.P14583768772042345877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179777 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179778.P14583768772042345877

/-!
# A179779: Position of zeros in A179776. Complement of A179777.

The programs for A179779, there is no canonical definition to state claims against.
-/

/-! ## A179779.P2212262901081388274

`eq[0, A179776(n+1)]+1`
-/

namespace A179779.P2212262901081388274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179779.P2212262901081388274

/-! ## A179779.P2745652353834278926

`lt[A179776(n+2), 1]+2`
-/

namespace A179779.P2745652353834278926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179776 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A179779.P2745652353834278926

/-! ## A179779.P10508248472210946353

`comp[A179777(n+1)-1]+1`
-/

namespace A179779.P10508248472210946353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179777 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A179779.P10508248472210946353

/-! ## A179779.P1582280561807715544

`lt[A179776(n*a(a(n-1))), 1]` with `a(0)=1, a(1)=1`
-/

namespace A179779.P1582280561807715544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A179776 ((n : ℤ) * f1 (f1 (n - 1)).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A179779.P1582280561807715544

/-! ## A179779.P108326819458122008

`eq[0, A179776(A028310(n))]`
-/

namespace A179779.P108326819458122008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179776 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179779.P108326819458122008

/-! ## A179779.P13881027149047914956

`eq[0, A179775(A113127(n))]`
-/

namespace A179779.P13881027149047914956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179775 (A113127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179779.P13881027149047914956

/-! ## A179779.P10769489273910700409

`A020725(eq[0, A179776(n+1)])`
-/

namespace A179779.P10769489273910700409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179779.P10769489273910700409

/-! ## A179779.P15238432129244483349

`A065475(eq[0, A179776(n+1)])`
-/

namespace A179779.P15238432129244483349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179779.P15238432129244483349

/-! ## A179779.P9302327091652707900

`eq[0, A179775(A111284(n+1))]`
-/

namespace A179779.P9302327091652707900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179775 (A111284 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179779.P9302327091652707900

/-! ## A179779.P17632279354702822875

`eq[0, A179776(A233583(n+1))]`
-/

namespace A179779.P17632279354702822875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179776 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179779.P17632279354702822875

/-! ## A179779.P13502827872290868223

`eq[0, A179776(A000007(n)+n)]`
-/

namespace A179779.P13502827872290868223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179776 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179779.P13502827872290868223

/-!
# A179780: Primes, q, such that for three consecutive primes, p, q & r, with p<q<r, neither (q - p)/(r - q) nor (r - q)/(q - p) is an integer.

The programs for A179780, there is no canonical definition to state claims against.
-/

/-! ## A179780.P12012595803252806432

`∩[A020633(n+1), A187884(n+1)]`
-/

namespace A179780.P12012595803252806432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179780.P12012595803252806432

/-! ## A179780.P9628296492684846480

`∩[A038948(n+1), A187884(n+1)]`
-/

namespace A179780.P9628296492684846480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179780.P9628296492684846480

/-! ## A179780.P11935569428890611519

`∩[A049483(n+1), A187884(n+1)]`
-/

namespace A179780.P11935569428890611519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179780.P11935569428890611519

/-! ## A179780.P9808462153096865692

`∩[A020633(n+1), A281974(n+1)]`
-/

namespace A179780.P9808462153096865692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179780.P9808462153096865692

/-!
# A179781: a(n) = AP(n) is the total number of aperiodic k-palindromes of n, 1 <= k <= n.

The programs for A179781, the canonical program `A179781.P966849526946660983` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179781 has offset 1).

The definition of A179781 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179781.P16822267324910251204

`∑{d}[n+1, A008683((n+1)/#)*2^floor(#/2)]`
-/

namespace A179781.P16822267324910251204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) * (2 : ℚ) ^ (⌊(d : ℚ) / 2⌋ : ℤ)

end

end A179781.P16822267324910251204

namespace A179781

/-- `∑{d}[n+1, A008683((n+1)/#)*2^floor(#/2)]` -/
def P16822267324910251204.Spec : Prop :=
  ∀ n, P16822267324910251204.a n = (A179781 (n + 1) : ℚ)

end A179781

/-! ## A179781.P966849526946660983

`A000046(n+1)-A308706(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A179781

/-- `A000046(n+1)-A308706(n+1)` -/
def P966849526946660983.Spec : Prop :=
  ∀ n, P966849526946660983.a n = A179781 (n + 1)

theorem P966849526946660983.correct : P966849526946660983.Spec := by
  intro n
  simp only [A179781, Nat.add_sub_cancel]

end A179781

/-! ## A179781.P12720803721346919106

`2*A000046(n+1)-A000048(n+1)`
-/

namespace A179781.P12720803721346919106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000046 (n + 1) - A000048 (n + 1)

end

end A179781.P12720803721346919106

namespace A179781

/-- `2*A000046(n+1)-A000048(n+1)` -/
def P12720803721346919106.Spec : Prop :=
  ∀ n, P12720803721346919106.a n = A179781 (n + 1)

end A179781

/-! ## A179781.P9640498778268757181

`A000048(n+1)-2*A308706(n+1)`
-/

namespace A179781.P9640498778268757181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) - 2 * A308706 (n + 1)

end

end A179781.P9640498778268757181

namespace A179781

/-- `A000048(n+1)-2*A308706(n+1)` -/
def P9640498778268757181.Spec : Prop :=
  ∀ n, P9640498778268757181.a n = A179781 (n + 1)

end A179781

/-! ## A179781.P18118024565986006516

`A056493(n+1)-A056476(n+1)`
-/

namespace A179781.P18118024565986006516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056493 (n + 1) - A056476 (n + 1)

end

end A179781.P18118024565986006516

namespace A179781

/-- `A056493(n+1)-A056476(n+1)` -/
def P18118024565986006516.Spec : Prop :=
  ∀ n, P18118024565986006516.a n = A179781 (n + 1)

end A179781

/-! ## A179781.P3575472668383678622

`abs(A056476(n+1)-A056498(n+1))`
-/

namespace A179781.P3575472668383678622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056476 (n + 1) - A056498 (n + 1)|

end

end A179781.P3575472668383678622

namespace A179781

/-- `abs(A056476(n+1)-A056498(n+1))` -/
def P3575472668383678622.Spec : Prop :=
  ∀ n, P3575472668383678622.a n = A179781 (n + 1)

end A179781

/-! ## A179781.P7948194753720838077

`A056493(n+1)-A056458(n+1)/2`
-/

namespace A179781.P7948194753720838077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056493 (n + 1) : ℚ) - (A056458 (n + 1) : ℚ) / 2

end

end A179781.P7948194753720838077

namespace A179781

/-- `A056493(n+1)-A056458(n+1)/2` -/
def P7948194753720838077.Spec : Prop :=
  ∀ n, P7948194753720838077.a n = (A179781 (n + 1) : ℚ)

end A179781

/-! ## A179781.P4372289502389249143

`A056476(n+1)+A056498(n+1)-A056463(n+1)`
-/

namespace A179781.P4372289502389249143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 (n + 1) + (A056498 (n + 1) - A056463 (n + 1))

end

end A179781.P4372289502389249143

namespace A179781

/-- `A056476(n+1)+A056498(n+1)-A056463(n+1)` -/
def P4372289502389249143.Spec : Prop :=
  ∀ n, P4372289502389249143.a n = A179781 (n + 1)

end A179781

/-! ## A179781.P2837298057645986071

`A180249(n+1)-A180750(n+1)`
-/

namespace A179781.P2837298057645986071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180249 (n + 1) - A180750 (n + 1)

end

end A179781.P2837298057645986071

namespace A179781

/-- `A180249(n+1)-A180750(n+1)` -/
def P2837298057645986071.Spec : Prop :=
  ∀ n, P2837298057645986071.a n = A179781 (n + 1)

end A179781

/-! ## A179781.P13720834055711064891

`A180322(n+1)-A181135(n+1)`
-/

namespace A179781.P13720834055711064891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180322 (n + 1) - A181135 (n + 1)

end

end A179781.P13720834055711064891

namespace A179781

/-- `A180322(n+1)-A181135(n+1)` -/
def P13720834055711064891.Spec : Prop :=
  ∀ n, P13720834055711064891.a n = A179781 (n + 1)

end A179781

/-! ## A179781.P2498541312558895021

`A180322(n+1)+A057428(n)*A181135(n+1)`
-/

namespace A179781.P2498541312558895021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180322 (n + 1) + A057428 n * A181135 (n + 1)

end

end A179781.P2498541312558895021

namespace A179781

/-- `A180322(n+1)+A057428(n)*A181135(n+1)` -/
def P2498541312558895021.Spec : Prop :=
  ∀ n, P2498541312558895021.a n = A179781 (n + 1)

end A179781

/-! ## A179781.P11491538828492985600

`A051159(n)+A180322(n+1)%(A181135(n+1)+A051159(n))`
-/

namespace A179781.P11491538828492985600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n + Int.tmod (A180322 (n + 1)) (A181135 (n + 1) + A051159 n)

end

end A179781.P11491538828492985600

namespace A179781

/-- `A051159(n)+A180322(n+1)%(A181135(n+1)+A051159(n))` -/
def P11491538828492985600.Spec : Prop :=
  ∀ n, P11491538828492985600.a n = A179781 (n + 1)

end A179781

/-! ## A179781.P5041952720726619581

`A000046(n+1)+A056366(n+1)-A056303(n+1)`
-/

namespace A179781.P5041952720726619581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) + (A056366 (n + 1) - A056303 (n + 1))

end

end A179781.P5041952720726619581

namespace A179781

/-- `A000046(n+1)+A056366(n+1)-A056303(n+1)` -/
def P5041952720726619581.Spec : Prop :=
  ∀ n, P5041952720726619581.a n = A179781 (n + 1)

end A179781

/-!
# A179783: a(n) = 2*n*(n+1)*(n+2)/3 + (-1)^n.

The programs for A179783, the canonical program `A179783.P11252012691555362485` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179783 has offset 0).

The definition of A179783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(n+1)*(n+2)/3+(-1)^n` (program `A179783.P10045782264614118652`, by `A179783.P10045782264614118652.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179783.P11938946222800042048

`2/3*n*(n+1)*(n+2)+(-1)^n`
-/

namespace A179783.P11938946222800042048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (n : ℚ) * (n + 1 : ℚ) * (n + 2 : ℚ) + ((-1) ^ n : ℚ)

end

end A179783.P11938946222800042048

namespace A179783

/-- `2/3*n*(n+1)*(n+2)+(-1)^n` -/
def P11938946222800042048.Spec : Prop :=
  ∀ n, P11938946222800042048.a n = (A179783 n : ℚ)

theorem P11938946222800042048.correct : P11938946222800042048.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A179783, Nat.add_sub_cancel, A179783.P11938946222800042048.a, A179783.P11252012691555362485.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A179783, Nat.add_sub_cancel, A179783.P11938946222800042048.a, A179783.P11252012691555362485.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A179783

/-! ## A179783.P10045782264614118652

`2*n*(n+1)*(n+2)/3+(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179783.P10045782264614118652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n * (n + 1) * (n + 2) : ℚ) / 3 + ((-1) ^ n : ℚ)

end

end A179783.P10045782264614118652

namespace A179783

/-- `2*n*(n+1)*(n+2)/3+(-1)^n` -/
def P10045782264614118652.Spec : Prop :=
  ∀ n, P10045782264614118652.a n = (A179783 n : ℚ)

theorem P10045782264614118652.correct : P10045782264614118652.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A179783, Nat.add_sub_cancel, A179783.P10045782264614118652.a, A179783.P11252012691555362485.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A179783, Nat.add_sub_cancel, A179783.P10045782264614118652.a, A179783.P11252012691555362485.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A179783

/-! ## A179783.P11667945088845107349

`abs(a(n-2)+(2*n)²)` with `a(0)=1, a(1)=3`
-/

namespace A179783.P11667945088845107349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (2 * n) ^ 2

end

end A179783.P11667945088845107349

namespace A179783

/-- `abs(a(n-2)+(2*n)²)` -/
def P11667945088845107349.Spec : Prop :=
  ∀ n, (P11667945088845107349.a n : ℤ) = A179783 n

theorem P11667945088845107349.correct : P11667945088845107349.Spec := by
  intro n
  simp only [A179783, Nat.add_sub_cancel, A179783.P11667945088845107349.a, A179783.P11252012691555362485.a, SequenceMachineLib.memo_apply]

end A179783

/-! ## A179783.P11252012691555362485

`floor(a(n-2)+(2*n)²)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179783

/-- `floor(a(n-2)+(2*n)²)` -/
def P11252012691555362485.Spec : Prop :=
  ∀ n, (P11252012691555362485.a n : ℤ) = A179783 n

theorem P11252012691555362485.correct : P11252012691555362485.Spec := by
  intro n
  simp only [A179783]

end A179783

/-! ## A179783.P7333585912210522461

`∑[(2*n)²-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A179783.P7333585912210522461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((2 * n) ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179783.P7333585912210522461

namespace A179783

/-- `∑[(2*n)²-a(n-1)]` -/
def P7333585912210522461.Spec : Prop :=
  ∀ n, P7333585912210522461.a n = A179783 n

end A179783

/-! ## A179783.P11051253284661182320

`4*(a(n-2)/4+n²)` with `a(0)=1, a(1)=3`
-/

namespace A179783.P11051253284661182320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (a (n - 2) / 4 + (n ^ 2 : ℚ))

end

end A179783.P11051253284661182320

namespace A179783

/-- `4*(a(n-2)/4+n²)` -/
def P11051253284661182320.Spec : Prop :=
  ∀ n, P11051253284661182320.a n = (A179783 n : ℚ)

end A179783

/-! ## A179783.P6160660495518456039

`Δ[a(n-2)+C(2*n, 3)]` with `a(0)=1, a(1)=2`
-/

namespace A179783.P6160660495518456039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A179783.P6160660495518456039

namespace A179783

/-- `Δ[a(n-2)+C(2*n, 3)]` -/
def P6160660495518456039.Spec : Prop :=
  ∀ n, P6160660495518456039.a n = A179783 n

end A179783

/-! ## A179783.P3894420305627933496

`∑[A280560(n)+∑[4*n]]`
-/

namespace A179783.P3894420305627933496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179783.P3894420305627933496

namespace A179783

/-- `∑[A280560(n)+∑[4*n]]` -/
def P3894420305627933496.Spec : Prop :=
  ∀ n, P3894420305627933496.a n = A179783 n

end A179783

/-! ## A179783.P3250034131599998839

`abs(A210440(n)+A033999(n))`
-/

namespace A179783.P3250034131599998839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210440 n + A033999 n|

end

end A179783.P3250034131599998839

namespace A179783

/-- `abs(A210440(n)+A033999(n))` -/
def P3250034131599998839.Spec : Prop :=
  ∀ n, P3250034131599998839.a n = A179783 n

end A179783

/-! ## A179783.P17519778860620070576

`∑[A142463(n)+Δ[A014681(n)]]`
-/

namespace A179783.P17519778860620070576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179783.P17519778860620070576

namespace A179783

/-- `∑[A142463(n)+Δ[A014681(n)]]` -/
def P17519778860620070576.Spec : Prop :=
  ∀ n, P17519778860620070576.a n = A179783 n

end A179783

/-! ## A179783.P2103899845730941536

`abs(∑[A046092(n)]*A056594(2*(n+1))-1)`
-/

namespace A179783.P2103899845730941536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A056594 (2 * (n + 1)) - 1|

end

end A179783.P2103899845730941536

namespace A179783

/-- `abs(∑[A046092(n)]*A056594(2*(n+1))-1)` -/
def P2103899845730941536.Spec : Prop :=
  ∀ n, P2103899845730941536.a n = A179783 n

end A179783

/-! ## A179783.P15255601796045910061

`∑[A063210(∑[A168277(n+1)])]`
-/

namespace A179783.P15255601796045910061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063210 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179783.P15255601796045910061

namespace A179783

/-- `∑[A063210(∑[A168277(n+1)])]` -/
def P15255601796045910061.Spec : Prop :=
  ∀ n, P15255601796045910061.a n = A179783 n

end A179783

/-! ## A179783.P10968599186584167626

`∑[A063210(∑[A063210(n+1)]-n)]`
-/

namespace A179783.P10968599186584167626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063210 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063210 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179783.P10968599186584167626

namespace A179783

/-- `∑[A063210(∑[A063210(n+1)]-n)]` -/
def P10968599186584167626.Spec : Prop :=
  ∀ n, P10968599186584167626.a n = A179783 n

end A179783

/-!
# A179785: Values x for records of minima of the positive distance d between the seventh power of a positive integer x and the square of an integer y such that d = x^7 - y^2 (x <> k^2 and y <> k^7).

The programs for A179785, there is no canonical definition to state claims against.
-/

/-! ## A179785.P4268243439445877728

`ceil(root(A179786(n+1), 7)²)`
-/

namespace A179785.P4268243439445877728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A179786 (n + 1) : ℝ) ^ (1 / (7 : ℝ))) ^ 2⌉

end

end A179785.P4268243439445877728

/-!
# A179786: Values y for records of the minima of the positive distance d between the seventh power of a positive integer x and the square of an integer y such that d = x^7 - y^2 (x <> k^2 and y <> k^7).

The programs for A179786, there is no canonical definition to state claims against.
-/

/-! ## A179786.P11097403599760324935

`floor(sqrt(A179785(n+1))^7)`
-/

namespace A179786.P11097403599760324935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A179785 (n + 1) : ℝ) ^ 7⌋

end

end A179786.P11097403599760324935

/-! ## A179786.P13344329746808253504

`A155014(A179785(n+1))`
-/

namespace A179786.P13344329746808253504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155014 (A179785 (n + 1)).toNat

end

end A179786.P13344329746808253504

/-!
# A179787: Let the operation <+> be defined by x<+>y = A038502(x+y). a(n) is the period in the track of the iterated application x<+>(x<+>...(x<+>1)) for x = A001651(n-1).

The programs for A179787, there is no canonical definition to state claims against.
-/

/-! ## A179787.P2803465157231064579

`A158379(comp[3*n])`
-/

namespace A179787.P2803465157231064579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158379 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A179787.P2803465157231064579

/-! ## A179787.P9116997973930143058

`A158379(A001651(n+1))%81`
-/

namespace A179787.P9116997973930143058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158379 (A001651 (n + 1)).toNat) 81

end

end A179787.P9116997973930143058

/-! ## A179787.P15191339853364543279

`Δ[A158379(A001651(n))+a(n-1)]` with `a(0)=1`
-/

namespace A179787.P15191339853364543279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A158379 (A001651 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179787.P15191339853364543279

/-! ## A179787.P2146745592413056651

`gcd(A000038(n), A158379(A001651(n+1)))`
-/

namespace A179787.P2146745592413056651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A158379 (A001651 (n + 1)).toNat)

end

end A179787.P2146745592413056651

/-! ## A179787.P7706969268011306376

`lcm(A033999(n), A158379(A001651(n+1)))`
-/

namespace A179787.P7706969268011306376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A158379 (A001651 (n + 1)).toNat)

end

end A179787.P7706969268011306376

/-! ## A179787.P9409630200782286708

`A057427(n+2)*A158379(A001651(n+1))`
-/

namespace A179787.P9409630200782286708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A158379 (A001651 (n + 1)).toNat

end

end A179787.P9409630200782286708

/-! ## A179787.P6880039554176855176

`A001222(A073609(n))*A158379(A001651(n+1))`
-/

namespace A179787.P6880039554176855176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073609 n).toNat * A158379 (A001651 (n + 1)).toNat

end

end A179787.P6880039554176855176

/-!
# A179789: Sum of the differences between the first prime and the next, inside in the first jump in a Sieve of Eratosthenes table.

The programs for A179789, there is no canonical definition to state claims against.
-/

/-! ## A179789.P5564609077803158415

`A290288(A000040(n+1))/2`
-/

namespace A179789.P5564609077803158415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290288 (A000040 (n + 1)).toNat : ℚ) / 2

end

end A179789.P5564609077803158415

/-! ## A179789.P1807113797416650608

`A294022(A100484(n+1))/2`
-/

namespace A179789.P1807113797416650608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294022 (A100484 (n + 1)).toNat : ℚ) / 2

end

end A179789.P1807113797416650608

/-! ## A179789.P16264087923154058118

`A294022(A001747(n+2))/2`
-/

namespace A179789.P16264087923154058118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294022 (A001747 (n + 2)).toNat : ℚ) / 2

end

end A179789.P16264087923154058118

/-! ## A179789.P6885511658618350109

`A294022(2*p?[A143051(n)])/2`
-/

namespace A179789.P6885511658618350109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294022 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A179789.P6885511658618350109

/-! ## A179789.P6736463798998059989

`A294022(2*A000040(n+1))/2`
-/

namespace A179789.P6736463798998059989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294022 (2 * A000040 (n + 1)).toNat : ℚ) / 2

end

end A179789.P6736463798998059989

/-! ## A179789.P11114881297721044776

`A065033(A294022(A100484(n+1)))`
-/

namespace A179789.P11114881297721044776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A294022 (A100484 (n + 1)).toNat).toNat

end

end A179789.P11114881297721044776

/-!
# A179790: Records for minima of the positive distance d between the ninth power of a positive integer x and the square of an integer y such that d = x^9 - y^2 (x <> k^2 and y <> k^9).

The programs for A179790, there is no canonical definition to state claims against.
-/

/-! ## A179790.P394651848710744138

`A154333(A240859(n+2))`
-/

namespace A179790.P394651848710744138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154333 (A240859 (n + 2)).toNat

end

end A179790.P394651848710744138

/-!
# A179791: Values x for records of the minima of the positive distance d between the ninth power of a positive integer x and the square of an integer y such that d = x^9 - y^2 (x <> k^2 and y <> k^9).

The programs for A179791, there is no canonical definition to state claims against.
-/

/-! ## A179791.P9451799126846596499

`round(root(A179792(n+1), 9)²)`
-/

namespace A179791.P9451799126846596499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A179792 (n + 1) : ℝ) ^ (1 / (9 : ℝ))) ^ 2)

end

end A179791.P9451799126846596499

/-!
# A179792: Values y for records of the minima of the positive distance d between the ninth power of a positive integer x and the square of an integer y such that d = x^9 - y^2 (x <> k^2 and y <> k^9).

The programs for A179792, there is no canonical definition to state claims against.
-/

/-! ## A179792.P7742948875595414915

`A238170(A179791(n+1))`
-/

namespace A179792.P7742948875595414915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238170 (A179791 (n + 1)).toNat

end

end A179792.P7742948875595414915

/-! ## A179792.P8547925284266609960

`A000093(A179791(n+1)^3)`
-/

namespace A179792.P8547925284266609960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A179791 (n + 1) ^ 3).toNat

end

end A179792.P8547925284266609960

/-!
# A179794: Values x for records of the minima of the positive distance d between the eleventh power of a positive integer x and the square of an integer y such that d = x^11 - y^2 (x <> k^2 and y <> k^11).

The programs for A179794, there is no canonical definition to state claims against.
-/

/-! ## A179794.P5884715805585846914

`lt[A277162(n), A277158(A277121(2*(n+1)))]`
-/

namespace A179794.P5884715805585846914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277162 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277158 (A277121 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179794.P5884715805585846914

/-!
# A179795: Values y for records of the minima of the positive distance d between the eleventh power of a positive integer x and the square of an integer y such that d = x^11 - y^2 (x <> k^2 and y <> k^11).

The programs for A179795, there is no canonical definition to state claims against.
-/

/-! ## A179795.P6295204601966604748

`A155015(A179794(n+1))`
-/

namespace A179795.P6295204601966604748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155015 (A179794 (n + 1)).toNat

end

end A179795.P6295204601966604748

/-! ## A179795.P16988012465095993359

`floor(A003313(A028988(n+3))^(11/2))`
-/

namespace A179795.P16988012465095993359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003313 (A028988 (n + 3)).toNat : ℝ) ^ ((11 : ℚ) / 2 : ℝ)⌋

end

end A179795.P16988012465095993359

/-!
# A179796: Numbers of the form abc + abd + acd + bcd, with 0 < a < b < c < d.

The programs for A179796, there is no canonical definition to state claims against.
-/

/-! ## A179796.P3176090605633384159

`comp[∪[A179797(n+1), n²]]`
-/

namespace A179796.P3176090605633384159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179797 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A179796.P3176090605633384159

/-! ## A179796.P17224458357725506254

`comp[∪[A000290(n), A179797(n+1)]]`
-/

namespace A179796.P17224458357725506254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179797 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A179796.P17224458357725506254

/-! ## A179796.P3238359176851858075

`comp[∪[A195024(n), A179797(n+1)]]`
-/

namespace A179796.P3238359176851858075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195024 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179797 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A179796.P3238359176851858075

/-! ## A179796.P2027177010401946189

`comp[A179797(n+1)*A294934(A008574(n)+1)]`
-/

namespace A179796.P2027177010401946189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179797 (n + 1) * A294934 (A008574 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179796.P2027177010401946189

/-!
# A179797: Numbers not of the form abc + abd + acd + bcd, with 0 < a < b < c < d.

The programs for A179797, there is no canonical definition to state claims against.
-/

/-! ## A179797.P16603583744734259937

`comp[A241089(A024629(n))]`
-/

namespace A179797.P16603583744734259937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241089 (A024629 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179797.P16603583744734259937

/-! ## A179797.P9360889420145817139

`lt[A255350(A351995(n)), A351997(n+1)]`
-/

namespace A179797.P9360889420145817139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 (A351995 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179797.P9360889420145817139

/-! ## A179797.P16384427484290584986

`n+1+A297046(A175968(n+2)+1)+A297046(n+1)`
-/

namespace A179797.P16384427484290584986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A297046 (A175968 (n + 2) + 1).toNat + A297046 (n + 1))

end

end A179797.P16384427484290584986

/-! ## A179797.P2542177708640677859

`floor(∑[sqrt(A240228(n+3))])`
-/

namespace A179797.P2542177708640677859
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A240228 (n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A179797.P2542177708640677859

/-! ## A179797.P13989428600247917596

`record[and(n+1, A085393(A340666(n)+1)+n+1)]`
-/

namespace A179797.P13989428600247917596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A085393 (A340666 n + 1).toNat + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179797.P13989428600247917596

/-! ## A179797.P6170401846059500401

`lt[A062685(A194959(n+1)), A194981(n+1)]`
-/

namespace A179797.P6170401846059500401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062685 (A194959 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194981 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179797.P6170401846059500401

/-! ## A179797.P358543348530622816

`or(n+1, A326499(2*n+1))`
-/

namespace A179797.P358543348530622816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A326499 (2 * n + 1 + 51))

end

end A179797.P358543348530622816

/-!
# A179799: Values x for records of minima of the positive distance d between an 11th power of a positive integer x and a square of an integer y such that d = x^13 - y^2 (x<>k^2 and y<>k^13).

The programs for A179799, there is no canonical definition to state claims against.
-/

/-! ## A179799.P9793569234733687582

`ceil(root(A179800(n+1), 13)²)`
-/

namespace A179799.P9793569234733687582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A179800 (n + 1) : ℝ) ^ (1 / (13 : ℝ))) ^ 2⌉

end

end A179799.P9793569234733687582

