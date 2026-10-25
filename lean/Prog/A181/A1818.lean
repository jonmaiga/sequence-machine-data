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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A181800: Powerful numbers that are the least integer of their prime signature.

The programs for A181800, there is no canonical definition to state claims against.
-/

/-! ## A181800.P15486427688766399341

`∪[A151821(n+1), A364930(n+1)]`
-/

namespace A181800.P15486427688766399341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181800.P15486427688766399341

/-! ## A181800.P12881727883634291579

`∪[A364930(n+1), A368681(n+1)]`
-/

namespace A181800.P12881727883634291579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181800.P12881727883634291579

/-! ## A181800.P12360591399846538455

`∪[A368681(n+1), A378002(n+1)]`
-/

namespace A181800.P12360591399846538455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181800.P12360591399846538455

/-! ## A181800.P9051471307055822521

`record[gcd(A307107(n+1)², A025487(n+1))]`
-/

namespace A181800.P9051471307055822521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307107 (n + 1) ^ 2) (A025487 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181800.P9051471307055822521

/-! ## A181800.P11513659307170875037

`∩[A025487(n+1), A387901(n+1)]`
-/

namespace A181800.P11513659307170875037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181800.P11513659307170875037

/-! ## A181800.P10881057682385493167

`∩[A025487(n+1), A055744(n+1)]`
-/

namespace A181800.P10881057682385493167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181800.P10881057682385493167

/-! ## A181800.P11643977710653759546

`record[A025487(n+1)/A340346(A181820(n+1))]`
-/

namespace A181800.P11643977710653759546
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (A340346 (A181820 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181800.P11643977710653759546

/-! ## A181800.P17644096329511673983

`record[A181821(A026741(A181820(n+1)))]`
-/

namespace A181800.P17644096329511673983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A026741 (A181820 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181800.P17644096329511673983

/-! ## A181800.P11036136487104434894

`∩[A025487(n+1), A353485(n+1)]`
-/

namespace A181800.P11036136487104434894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181800.P11036136487104434894

/-! ## A181800.P9504321915262572576

`∩[A001694(n+1), A025487(n+1)]`
-/

namespace A181800.P9504321915262572576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181800.P9504321915262572576

/-! ## A181800.P5179583473157428600

`∏{p}[A212638(n+1), #]*A212638(n+1)`
-/

namespace A181800.P5179583473157428600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A212638 (n + 1)

end

end A181800.P5179583473157428600

/-!
# A181801: Number of divisors of n that are highly composite (A002182).

The programs for A181801, there is no canonical definition to state claims against.
-/

/-! ## A181801.P3620208233486617854

`∑{d}[n+1, A322586(#)]`
-/

namespace A181801.P3620208233486617854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322586 d

end

end A181801.P3620208233486617854

/-! ## A181801.P18312110231292531945

`∑{d}[n+1, A036987(A138009(#)²)]`
-/

namespace A181801.P18312110231292531945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (A138009 d ^ 2).toNat

end

end A181801.P18312110231292531945

/-! ## A181801.P5923578623429878196

`Δ[eq[1, A181802(n+1)]]`
-/

namespace A181801.P5923578623429878196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181802 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A181801.P5923578623429878196

/-!
# A181802: Triangle read by rows: T(n,k) is k-th smallest divisor of n that is highly composite (A002182).

The programs for A181802, there is no canonical definition to state claims against.
-/

/-! ## A181802.P2983715759021439874

`filter[A027750(n+1), A322586(#)]`
-/

namespace A181802.P2983715759021439874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A181802.P2983715759021439874

/-! ## A181802.P12236891501917366287

`filter[A275055(n+1), A322586(#)]`
-/

namespace A181802.P12236891501917366287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A181802.P12236891501917366287

/-! ## A181802.P14817750806774462588

`filter[A299481(n+1), A322586(#)]`
-/

namespace A181802.P14817750806774462588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A181802.P14817750806774462588

/-! ## A181802.P3839589722475008990

`filter[A319847(n+1), A322586(#)]`
-/

namespace A181802.P3839589722475008990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A181802.P3839589722475008990

/-! ## A181802.P2263800571173259416

`A000523(p?[A126646(A027750(n+1))])`
-/

namespace A181802.P2263800571173259416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181802.P2263800571173259416

/-!
# A181803: Triangle read by rows: T(n,k) is the k-th smallest divisor d of n such that n sets a record for the number of its divisors that are multiples of d.

The programs for A181803, there is no canonical definition to state claims against.
-/

/-! ## A181803.P10868947183128707179

`A003602(xor(A187829(n+1), A327219(n)))`
-/

namespace A181803.P10868947183128707179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.xor (A187829 (n + 1)) (A327219 n)).toNat

end

end A181803.P10868947183128707179

/-! ## A181803.P13896072753780139137

`A336934(xor(A187829(n+1), A327219(n)))`
-/

namespace A181803.P13896072753780139137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336934 (Int.xor (A187829 (n + 1)) (A327219 n)).toNat

end

end A181803.P13896072753780139137

/-! ## A181803.P606367820772107460

`A071797(A051037(n+1))%A270339(3*n+2)`
-/

namespace A181803.P606367820772107460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071797 (A051037 (n + 1)).toNat) (A270339 (3 * n + 2))

end

end A181803.P606367820772107460

/-! ## A181803.P12883938931183402072

`A333224(∑[A133684(n+2)]+1)`
-/

namespace A181803.P12883938931183402072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A181803.P12883938931183402072

/-! ## A181803.P4428444776181232396

`A162247(n+1)-A188082(A334773(n+2))`
-/

namespace A181803.P4428444776181232396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162247 (n + 1) - A188082 (A334773 (n + 2)).toNat

end

end A181803.P4428444776181232396

/-!
# A181804: List of numbers that are LCMs of some set of highly composite numbers (A002182).

The programs for A181804, there is no canonical definition to state claims against.
-/

/-! ## A181804.P9543472231336542107

`∩[A018609(n+1), A141551(n+1)]`
-/

namespace A181804.P9543472231336542107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181804.P9543472231336542107

/-! ## A181804.P7394058090811008904

`∩[A141551(n+1), A218980(n+1)]`
-/

namespace A181804.P7394058090811008904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181804.P7394058090811008904

/-! ## A181804.P11990936938209141881

`record[-A001478(A004394(n+1))%A274536(n+1)]`
-/

namespace A181804.P11990936938209141881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A001478 (A004394 (n + 1)).toNat) (A274536 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181804.P11990936938209141881

/-! ## A181804.P15939263715429455911

`record[A023443(A166981(n+1)+1)%A274536(n+1)]`
-/

namespace A181804.P15939263715429455911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A166981 (n + 1) + 1).toNat) (A274536 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181804.P15939263715429455911

/-! ## A181804.P637081472717114411

`record[∑{d}[A077006(n+1), A000010(#)]%A274536(n+1)]`
-/

namespace A181804.P637081472717114411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f2 n).natAbs, A000010 d) (A274536 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181804.P637081472717114411

/-!
# A181805: Number of divisors of A181804(n) that are highly composite (A002182).

The programs for A181805, there is no canonical definition to state claims against.
-/

/-! ## A181805.P89448883630185522

`A181801(A181804(n+1))`
-/

namespace A181805.P89448883630185522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181801 (A181804 (n + 1)).toNat

end

end A181805.P89448883630185522

/-! ## A181805.P4848008877350875382

`∑{d}[A181804(n+1), A322586(#)]`
-/

namespace A181805.P4848008877350875382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322586 d

end

end A181805.P4848008877350875382

/-! ## A181805.P668052092202976245

`A181801(∩[A018609(n+1), A141551(n+1)])`
-/

namespace A181805.P668052092202976245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141551 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181801 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A181805.P668052092202976245

/-! ## A181805.P4377238565330885202

`A181801(∩[A141551(n+1), A218980(n+1)])`
-/

namespace A181805.P4377238565330885202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181801 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A181805.P4377238565330885202

/-! ## A181805.P1350976843000731524

`A010060(A270890(2*(n+2)))+A005185(n+2)`
-/

namespace A181805.P1350976843000731524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A270890 (2 * (n + 2))).toNat + A005185 (n + 2)

end

end A181805.P1350976843000731524

/-!
# A181806: Positive integers with more highly composite divisors (A002182) than any smaller positive integer.

The programs for A181806, there is no canonical definition to state claims against.
-/

/-! ## A181806.P3516258741272183053

`A212169(lt[A326458(n), A097325(n)])`
-/

namespace A181806.P3516258741272183053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181806.P3516258741272183053

/-! ## A181806.P16430607367261652008

`A212169(lt[A326460(n), A097325(n)])`
-/

namespace A181806.P16430607367261652008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181806.P16430607367261652008

/-! ## A181806.P6484031390532428360

`A212169(lt[A326461(n), A097325(n)])`
-/

namespace A181806.P6484031390532428360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326461 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181806.P6484031390532428360

/-! ## A181806.P3494577447418172364

`A212169(lt[A326462(n), A097325(n)])`
-/

namespace A181806.P3494577447418172364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181806.P3494577447418172364

/-! ## A181806.P16080078788722315639

`∩[A166981(n+1), A340014(A337533(n+1))]`
-/

namespace A181806.P16080078788722315639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340014 (A337533 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181806.P16080078788722315639

/-!
# A181807: Number of divisors of A181806(n) that are highly composite (A002182).

The programs for A181807, there is no canonical definition to state claims against.
-/

/-! ## A181807.P1470667979307083003

`record[A181805(n+1)]`
-/

namespace A181807.P1470667979307083003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181807.P1470667979307083003

/-!
# A181808: Numbers that set a record for number of even divisors: a(n) = 2*A002182(n).

The programs for A181808, there is no canonical definition to state claims against.
-/

/-! ## A181808.P12336407166608354791

`2*A002182(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181808.P12336407166608354791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002182 (n + 1)

end

end A181808.P12336407166608354791

/-! ## A181808.P8956905054933562437

`A369151(n+3)/2`
-/

namespace A181808.P8956905054933562437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369151 (n + 3) : ℚ) / 2

end

end A181808.P8956905054933562437

/-! ## A181808.P16639784465844440818

`2*sqrt(A046952(n+1))`
-/

namespace A181808.P16639784465844440818
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A046952 (n + 1) : ℝ)

end

end A181808.P16639784465844440818

/-! ## A181808.P205039218321749204

`record[2*A365901(n+1)]`
-/

namespace A181808.P205039218321749204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A365901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181808.P205039218321749204

/-!
# A181809: Numbers n such that both n and n/2 are highly composite (A002182).

The programs for A181809, there is no canonical definition to state claims against.
-/

/-! ## A181809.P10939635027033351810

`∩[2*A002182(n+1), A002182(n+2)]`
-/

namespace A181809.P10939635027033351810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181809.P10939635027033351810

/-! ## A181809.P17014118422904848221

`∩[2*(A135372(n+1)-1), A135372(n+1)-1]`
-/

namespace A181809.P17014118422904848221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A135372 (n + 1) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181809.P17014118422904848221

/-! ## A181809.P12797127911332884932

`∩[A002182(n+1)+A135372(n+1)-1, A002182(n+2)]`
-/

namespace A181809.P12797127911332884932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) + (A135372 (n + 1) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181809.P12797127911332884932

/-! ## A181809.P16348908981864892605

`∩[2*A181804(n+1), A097212(n+1)]`
-/

namespace A181809.P16348908981864892605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181809.P16348908981864892605

/-! ## A181809.P1040172576880344385

`∩[2*(A135372(n+1)-1), A025487(A306802(n+1))]`
-/

namespace A181809.P1040172576880344385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A135372 (n + 1) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A306802 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181809.P1040172576880344385

/-! ## A181809.P12220185239522597228

`∩[2*A061799(A002183(n+1)), A135372(n+1)-1]`
-/

namespace A181809.P12220185239522597228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061799 (A002183 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181809.P12220185239522597228

/-! ## A181809.P17704402190978053604

`A002182(record[A073772(n+1)+n+1]+1)`
-/

namespace A181809.P17704402190978053604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073772 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A181809.P17704402190978053604

/-! ## A181809.P7000792795413014949

`record[A001511(A230578(n+1))*A002182(n+1)]`
-/

namespace A181809.P7000792795413014949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A230578 (n + 1)).toNat * A002182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181809.P7000792795413014949

/-!
# A181810: a(n) = largest number k such that A002182(n)/j is highly composite for each integer j from 1 to k.

The programs for A181810, there is no canonical definition to state claims against.
-/

/-! ## A181810.P2601600397477292367

`gcd(comp[A342377(n+2)], A037289(2*n+1))`
-/

namespace A181810.P2601600397477292367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342377 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A037289 (2 * n + 1))

end

end A181810.P2601600397477292367

/-! ## A181810.P13768284479619638510

`A001511(A003612(A007913(n+1)))`
-/

namespace A181810.P13768284479619638510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003612 (A007913 (n + 1)).toNat).toNat

end

end A181810.P13768284479619638510

/-! ## A181810.P16781859794210114527

`gcd(A000005(2*n+1), A004870(A223864(n+1)))`
-/

namespace A181810.P16781859794210114527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (2 * n + 1)) (A004870 (A223864 (n + 1)).toNat)

end

end A181810.P16781859794210114527

/-! ## A181810.P5098264117465226385

`A001221(A107974(n+1)+A077351(n+1))`
-/

namespace A181810.P5098264117465226385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A107974 (n + 1) + A077351 (n + 1)).toNat

end

end A181810.P5098264117465226385

/-! ## A181810.P2034253822456650576

`gcd(A000005(n+1+n), A248632(A187829(n+1)))`
-/

namespace A181810.P2034253822456650576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1 + n)) (A248632 (A187829 (n + 1)).toNat)

end

end A181810.P2034253822456650576

/-!
# A181811: a(n) = smallest integer that, upon multiplying any divisor of n, produces a member of A025487.

The programs for A181811, the canonical program `A181811.P13864543433421679087` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181811 has offset 1).

The definition of A181811 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181811.P13864543433421679087

`A108951(A064989(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A181811

/-- `A108951(A064989(n+1))` -/
def P13864543433421679087.Spec : Prop :=
  ∀ n, P13864543433421679087.a n = A181811 (n + 1)

theorem P13864543433421679087.correct : P13864543433421679087.Spec := by
  intro n
  simp only [A181811, Nat.add_sub_cancel]

end A181811

/-! ## A181811.P6921385172819512313

`A108951(n+1)/(n+1)`
-/

namespace A181811.P6921385172819512313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A181811.P6921385172819512313

namespace A181811

/-- `A108951(n+1)/(n+1)` -/
def P6921385172819512313.Spec : Prop :=
  ∀ n, P6921385172819512313.a n = (A181811 (n + 1) : ℚ)

end A181811

/-! ## A181811.P14551920994635507302

`A181812(A003602(n+1))`
-/

namespace A181811.P14551920994635507302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181812 (A003602 (n + 1)).toNat

end

end A181811.P14551920994635507302

namespace A181811

/-- `A181812(A003602(n+1))` -/
def P14551920994635507302.Spec : Prop :=
  ∀ n, P14551920994635507302.a n = A181811 (n + 1)

end A181811

/-! ## A181811.P12735437390385583755

`A181812(A025480(n)+1)`
-/

namespace A181811.P12735437390385583755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181812 (A025480 n + 1).toNat

end

end A181811.P12735437390385583755

namespace A181811

/-- `A181812(A025480(n)+1)` -/
def P12735437390385583755.Spec : Prop :=
  ∀ n, P12735437390385583755.a n = A181811 (n + 1)

end A181811

/-! ## A181811.P3362564275010012410

`A181812((A000265(n+1)+1)/2)`
-/

namespace A181811.P3362564275010012410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181812 (SequenceMachineLib.roundAway ((A000265 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A181811.P3362564275010012410

namespace A181811

/-- `A181812((A000265(n+1)+1)/2)` -/
def P3362564275010012410.Spec : Prop :=
  ∀ n, P3362564275010012410.a n = A181811 (n + 1)

end A181811

/-! ## A181811.P619731523566277081

`A181822(A361808(n+1))/(n+1)`
-/

namespace A181811.P619731523566277081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181822 (A361808 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A181811.P619731523566277081

namespace A181811

/-- `A181822(A361808(n+1))/(n+1)` -/
def P619731523566277081.Spec : Prop :=
  ∀ n, P619731523566277081.a n = (A181811 (n + 1) : ℚ)

end A181811

/-! ## A181811.P9029730156347659495

`A331188(A129598(n+1))/(n+1)`
-/

namespace A181811.P9029730156347659495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A129598 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A181811.P9029730156347659495

namespace A181811

/-- `A331188(A129598(n+1))/(n+1)` -/
def P9029730156347659495.Spec : Prop :=
  ∀ n, P9029730156347659495.a n = (A181811 (n + 1) : ℚ)

end A181811

/-! ## A181811.P3814124582958198830

`A331188(A253560(n+1))/(n+1)`
-/

namespace A181811.P3814124582958198830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A253560 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A181811.P3814124582958198830

namespace A181811

/-- `A331188(A253560(n+1))/(n+1)` -/
def P3814124582958198830.Spec : Prop :=
  ∀ n, P3814124582958198830.a n = (A181811 (n + 1) : ℚ)

end A181811

/-! ## A181811.P17876046593283470456

`A331188(A256017(n+1))/(n+1)`
-/

namespace A181811.P17876046593283470456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A256017 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A181811.P17876046593283470456

namespace A181811

/-- `A331188(A256017(n+1))/(n+1)` -/
def P17876046593283470456.Spec : Prop :=
  ∀ n, P17876046593283470456.a n = (A181811 (n + 1) : ℚ)

end A181811

/-! ## A181811.P8590452702203972677

`A331188(A053024(n+1))/(n+1)`
-/

namespace A181811.P8590452702203972677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A053024 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A181811.P8590452702203972677

namespace A181811

/-- `A331188(A053024(n+1))/(n+1)` -/
def P8590452702203972677.Spec : Prop :=
  ∀ n, P8590452702203972677.a n = (A181811 (n + 1) : ℚ)

end A181811

/-! ## A181811.P2500322407553857751

`A331188(A119416(n+1))/(n+1)`
-/

namespace A181811.P2500322407553857751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A119416 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A181811.P2500322407553857751

namespace A181811

/-- `A331188(A119416(n+1))/(n+1)` -/
def P2500322407553857751.Spec : Prop :=
  ∀ n, P2500322407553857751.a n = (A181811 (n + 1) : ℚ)

end A181811

/-! ## A181811.P7667709417231567159

`A329602(A064989(n+1)²)`
-/

namespace A181811.P7667709417231567159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (A064989 (n + 1) ^ 2).toNat

end

end A181811.P7667709417231567159

namespace A181811

/-- `A329602(A064989(n+1)²)` -/
def P7667709417231567159.Spec : Prop :=
  ∀ n, P7667709417231567159.a n = A181811 (n + 1)

end A181811

/-! ## A181811.P1878434622809431128

`A329602(A349126((n+1)²))`
-/

namespace A181811.P1878434622809431128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (A349126 ((n + 1) ^ 2)).toNat

end

end A181811.P1878434622809431128

namespace A181811

/-- `A329602(A349126((n+1)²))` -/
def P1878434622809431128.Spec : Prop :=
  ∀ n, P1878434622809431128.a n = A181811 (n + 1)

end A181811

/-! ## A181811.P9735173938300424174

`A329602((A353791(n+1)/A003958(n+1))²)`
-/

namespace A181811.P9735173938300424174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (SequenceMachineLib.roundAway (((A353791 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)) ^ 2)).toNat

end

end A181811.P9735173938300424174

namespace A181811

/-- `A329602((A353791(n+1)/A003958(n+1))²)` -/
def P9735173938300424174.Spec : Prop :=
  ∀ n, P9735173938300424174.a n = A181811 (n + 1)

end A181811

/-! ## A181811.P2683629170476876660

`A329602(A000265((n+1)²))/A000265(n+1)`
-/

namespace A181811.P2683629170476876660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329602 (A000265 ((n + 1) ^ 2)).toNat : ℚ) / (A000265 (n + 1) : ℚ)

end

end A181811.P2683629170476876660

namespace A181811

/-- `A329602(A000265((n+1)²))/A000265(n+1)` -/
def P2683629170476876660.Spec : Prop :=
  ∀ n, P2683629170476876660.a n = (A181811 (n + 1) : ℚ)

end A181811

/-! ## A181811.P9910033201230021466

`A329602((n+1)²)/(n+1)`
-/

namespace A181811.P9910033201230021466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329602 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A181811.P9910033201230021466

namespace A181811

/-- `A329602((n+1)²)/(n+1)` -/
def P9910033201230021466.Spec : Prop :=
  ∀ n, P9910033201230021466.a n = (A181811 (n + 1) : ℚ)

end A181811

/-!
# A181812: Range of values of A181811, in order of first appearance: a(n) = A181811(2n-1).

The programs for A181812, the canonical program `A181812.P3788929717059658667` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181812 has offset 1).

The definition of A181812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181811, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181812.P3788929717059658667

`A181811(2*n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A181812

/-- `A181811(2*n+1)` -/
def P3788929717059658667.Spec : Prop :=
  ∀ n, P3788929717059658667.a n = A181812 (n + 1)

theorem P3788929717059658667.correct : P3788929717059658667.Spec := by
  intro n
  simp only [A181812, Nat.add_sub_cancel]

end A181812

/-! ## A181812.P6920769339832206649

`A108951(A064216(n+1))`
-/

namespace A181812.P6920769339832206649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A064216 (n + 1)).toNat

end

end A181812.P6920769339832206649

namespace A181812

/-- `A108951(A064216(n+1))` -/
def P6920769339832206649.Spec : Prop :=
  ∀ n, P6920769339832206649.a n = A181812 (n + 1)

end A181812

/-! ## A181812.P11972912846025124967

`A108951(A064989(2*n+1))`
-/

namespace A181812.P11972912846025124967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A064989 (2 * n + 1)).toNat

end

end A181812.P11972912846025124967

namespace A181812

/-- `A108951(A064989(2*n+1))` -/
def P11972912846025124967.Spec : Prop :=
  ∀ n, P11972912846025124967.a n = A181812 (n + 1)

end A181812

/-! ## A181812.P9288256716977260175

`A108951(A200746(2*n+1)/(2*n+1))`
-/

namespace A181812.P9288256716977260175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (SequenceMachineLib.roundAway ((A200746 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A181812.P9288256716977260175

namespace A181812

/-- `A108951(A200746(2*n+1)/(2*n+1))` -/
def P9288256716977260175.Spec : Prop :=
  ∀ n, P9288256716977260175.a n = A181812 (n + 1)

end A181812

/-! ## A181812.P10306808083649270757

`A108951(2*n+1)/Δ[n²]`
-/

namespace A181812.P10306808083649270757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A181812.P10306808083649270757

namespace A181812

/-- `A108951(2*n+1)/Δ[n²]` -/
def P10306808083649270757.Spec : Prop :=
  ∀ n, P10306808083649270757.a n = (A181812 (n + 1) : ℚ)

end A181812

/-! ## A181812.P17067622741765080710

`1/A000027(2*n+1)*A108951(2*n+1)`
-/

namespace A181812.P17067622741765080710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000027 (2 * n + 1) : ℚ) * (A108951 (2 * n + 1) : ℚ)

end

end A181812.P17067622741765080710

namespace A181812

/-- `1/A000027(2*n+1)*A108951(2*n+1)` -/
def P17067622741765080710.Spec : Prop :=
  ∀ n, P17067622741765080710.a n = (A181812 (n + 1) : ℚ)

end A181812

/-! ## A181812.P13088927521693292044

`A181822(A361808(2*n+1))/(2*n+1)`
-/

namespace A181812.P13088927521693292044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181822 (A361808 (2 * n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A181812.P13088927521693292044

namespace A181812

/-- `A181822(A361808(2*n+1))/(2*n+1)` -/
def P13088927521693292044.Spec : Prop :=
  ∀ n, P13088927521693292044.a n = (A181812 (n + 1) : ℚ)

end A181812

/-! ## A181812.P12023042186066665888

`A331188(A119416(2*n+1))/(2*n+1)`
-/

namespace A181812.P12023042186066665888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A119416 (2 * n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A181812.P12023042186066665888

namespace A181812

/-- `A331188(A119416(2*n+1))/(2*n+1)` -/
def P12023042186066665888.Spec : Prop :=
  ∀ n, P12023042186066665888.a n = (A181812 (n + 1) : ℚ)

end A181812

/-!
# A181813: a(n)=smallest integer that, upon multiplying any integer from 1 to n, produces a member of A025487.

The programs for A181813, there is no canonical definition to state claims against.
-/

/-! ## A181813.P8829954887747888351

`A181814(n+1)/A003418(n+1)`
-/

namespace A181813.P8829954887747888351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181814 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ)

end

end A181813.P8829954887747888351

/-! ## A181813.P8873138142716966565

`∏[A181811(ceil((n+1)/∏{p}[n+1, (n+1)/#]))]`
-/

namespace A181813.P8873138142716966565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181811 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181813.P8873138142716966565

/-! ## A181813.P11611126059392218072

`∏[A066838(A014963(n+1))]`
-/

namespace A181813.P11611126059392218072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181813.P11611126059392218072

/-! ## A181813.P10395236503552298667

`∏[A034386(ratio[A003418(n)]-1)]`
-/

namespace A181813.P10395236503552298667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181813.P10395236503552298667

/-! ## A181813.P4896700274589709265

`∏[A034386(A014963(n+1)-1)]`
-/

namespace A181813.P4896700274589709265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A014963 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181813.P4896700274589709265

/-!
# A181814: a(n)=smallest integer that, when divided by any integer from 1 to n, yields a member of A025487.

The programs for A181814, there is no canonical definition to state claims against.
-/

/-! ## A181814.P3751072343513057342

`A003418(n+1)*A181813(n+1)`
-/

namespace A181814.P3751072343513057342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) * A181813 (n + 1)

end

end A181814.P3751072343513057342

/-! ## A181814.P1545536869022977922

`∏[A034386(ceil((n+1)/∏{p}[n+1, (n+1)/#]))]`
-/

namespace A181814.P1545536869022977922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181814.P1545536869022977922

/-! ## A181814.P14053727019805696158

`∏[A108951(ceil((n+1)/∏{p}[n+1, (n+1)/#]))]`
-/

namespace A181814.P14053727019805696158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181814.P14053727019805696158

/-! ## A181814.P3071511079844719917

`∏[A034386(ratio[A003418(n)])]`
-/

namespace A181814.P3071511079844719917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181814.P3071511079844719917

/-! ## A181814.P3261810647138418821

`∏[A034386(A014963(n+1))]`
-/

namespace A181814.P3261810647138418821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181814.P3261810647138418821

/-!
# A181815: a(n) = largest integer such that, when any of its divisors divides A025487(n), the quotient is a member of A025487.

The programs for A181815, there is no canonical definition to state claims against.
-/

/-! ## A181815.P1926987613391998437

`A122111(A181820(n+1))`
-/

namespace A181815.P1926987613391998437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A181820 (n + 1)).toNat

end

end A181815.P1926987613391998437

/-! ## A181815.P17796086120041350996

`A329900(A025487(n+1))`
-/

namespace A181815.P17796086120041350996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A025487 (n + 1)).toNat

end

end A181815.P17796086120041350996

/-! ## A181815.P488350092059077208

`A163511(A329905(n+1))`
-/

namespace A181815.P488350092059077208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A329905 (n + 1)).toNat

end

end A181815.P488350092059077208

/-! ## A181815.P5899699934445564867

`A122111(∏{e}[A025487(n+1), A000040(#)])`
-/

namespace A181815.P5899699934445564867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A181815.P5899699934445564867

/-! ## A181815.P8134666420345333168

`A329900(record[A329899(n+1)])`
-/

namespace A181815.P8134666420345333168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181815.P8134666420345333168

/-! ## A181815.P11123418381507396281

`A329900(record[A051466(n+2)])`
-/

namespace A181815.P11123418381507396281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181815.P11123418381507396281

/-! ## A181815.P18171250163435180666

`A329900(A329899(A329898(n+1)))`
-/

namespace A181815.P18171250163435180666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A329899 (A329898 (n + 1)).toNat).toNat

end

end A181815.P18171250163435180666

/-! ## A181815.P10189856077531663405

`A329900(A181817(n+1)/A181816(n+1))`
-/

namespace A181815.P10189856077531663405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A181815.P10189856077531663405

/-! ## A181815.P11383455973085985766

`A329900(record[A329900(n+1)*A330749(n+1)])`
-/

namespace A181815.P11383455973085985766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (n + 1) * A330749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181815.P11383455973085985766

/-! ## A181815.P1129507650399536855

`A329900(record[A328479(n+1)])`
-/

namespace A181815.P1129507650399536855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181815.P1129507650399536855

/-!
# A181816: a(n) is the smallest integer that, upon multiplying any divisor of A025487(n), produces a member of A025487.

The programs for A181816, there is no canonical definition to state claims against.
-/

/-! ## A181816.P8777284230369426939

`A181817(n+1)/A025487(n+1)`
-/

namespace A181816.P8777284230369426939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (A025487 (n + 1) : ℚ)

end

end A181816.P8777284230369426939

/-! ## A181816.P4698720417733103074

`A181817(n+1)/record[A329899(n+1)]`
-/

namespace A181816.P4698720417733103074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A181816.P4698720417733103074

/-! ## A181816.P16259105220909718960

`A181817(n+1)/record[A051466(n+2)]`
-/

namespace A181816.P16259105220909718960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A181816.P16259105220909718960

/-! ## A181816.P17657227168936007704

`A181817(n+1)/A051466(A329898(n+1))`
-/

namespace A181816.P17657227168936007704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (A051466 (A329898 (n + 1)).toNat : ℚ)

end

end A181816.P17657227168936007704

/-! ## A181816.P15851842009539215760

`A181817(n+1)/A055932(A331119(n+1))`
-/

namespace A181816.P15851842009539215760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (A055932 (A331119 (n + 1)).toNat : ℚ)

end

end A181816.P15851842009539215760

/-! ## A181816.P6463591407848558260

`A181817(n+1)/gcd(A181817(n+1), A324577(n+1))`
-/

namespace A181816.P6463591407848558260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (Int.gcd (A181817 (n + 1)) (A324577 (n + 1)) : ℚ)

end

end A181816.P6463591407848558260

/-! ## A181816.P17764104239521690481

`A181817(n+1)/A181821(A181820(n+1))`
-/

namespace A181816.P17764104239521690481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (A181821 (A181820 (n + 1)).toNat : ℚ)

end

end A181816.P17764104239521690481

/-! ## A181816.P9774361877795374706

`A181817(n+1)/A329899(A330683(n+1))`
-/

namespace A181816.P9774361877795374706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (A329899 (A330683 (n + 1)).toNat : ℚ)

end

end A181816.P9774361877795374706

/-! ## A181816.P6609078385118415471

`A329600(A025487(n+1)/A181815(n+1))`
-/

namespace A181816.P6609078385118415471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (SequenceMachineLib.roundAway ((A025487 (n + 1) : ℚ) / (A181815 (n + 1) : ℚ))).toNat

end

end A181816.P6609078385118415471

/-! ## A181816.P16091665921388211818

`A108951(A025487(n+1)/A181815(n+1))`
-/

namespace A181816.P16091665921388211818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (SequenceMachineLib.roundAway ((A025487 (n + 1) : ℚ) / (A181815 (n + 1) : ℚ))).toNat

end

end A181816.P16091665921388211818

/-!
# A181817: a(n) is the smallest integer that, when divided by any divisor of A025487(n), yields a member of A025487.

The programs for A181817, there is no canonical definition to state claims against.
-/

/-! ## A181817.P11856527382863611826

`A025487(n+1)*A181816(n+1)`
-/

namespace A181817.P11856527382863611826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) * A181816 (n + 1)

end

end A181817.P11856527382863611826

/-! ## A181817.P10438433357895777687

`A108951(A025487(n+1))`
-/

namespace A181817.P10438433357895777687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A025487 (n + 1)).toNat

end

end A181817.P10438433357895777687

/-! ## A181817.P700034245228868105

`A181816(n+1)*A247451(n+1)*A307107(n+1)`
-/

namespace A181817.P700034245228868105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181816 (n + 1) * A247451 (n + 1) * A307107 (n + 1)

end

end A181817.P700034245228868105

/-! ## A181817.P16050696303752222149

`record[A329899(n+1)]*A181816(n+1)`
-/

namespace A181817.P16050696303752222149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A181816 (n + 1)

end

end A181817.P16050696303752222149

/-! ## A181817.P14895604443963151344

`record[A051466(n+2)]*A181816(n+1)`
-/

namespace A181817.P14895604443963151344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A181816 (n + 1)

end

end A181817.P14895604443963151344

/-! ## A181817.P7534088574828269969

`A051466(A329898(n+1))*A181816(n+1)`
-/

namespace A181817.P7534088574828269969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat * A181816 (n + 1)

end

end A181817.P7534088574828269969

/-! ## A181817.P17082664370502592698

`A055932(A331119(n+1))*A181816(n+1)`
-/

namespace A181817.P17082664370502592698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat * A181816 (n + 1)

end

end A181817.P17082664370502592698

/-! ## A181817.P15638167176140816581

`A181816(n+1)*A181821(A181820(n+1))`
-/

namespace A181817.P15638167176140816581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181816 (n + 1) * A181821 (A181820 (n + 1)).toNat

end

end A181817.P15638167176140816581

/-! ## A181817.P7339035686057624986

`A181816(A330683(n+1))`
-/

namespace A181817.P7339035686057624986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181816 (A330683 (n + 1)).toNat

end

end A181817.P7339035686057624986

/-! ## A181817.P14091375521482917099

`A329600(record[A051466(n+2)])`
-/

namespace A181817.P14091375521482917099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181817.P14091375521482917099

/-!
# A181818: Products of superprimorials (A006939).

The programs for A181818, there is no canonical definition to state claims against.
-/

/-! ## A181818.P9993798844860269735

`record[A025487(n+1)*A322585(A181815(n+1))]`
-/

namespace A181818.P9993798844860269735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) * A322585 (A181815 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181818.P9993798844860269735

/-! ## A181818.P2440651262546224309

`filter[A090958(n), A353518(#)]`
-/

namespace A181818.P2440651262546224309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A181818.P2440651262546224309

/-! ## A181818.P3033052232388398964

`filter[A002473(n+1), A353518(#)]`
-/

namespace A181818.P3033052232388398964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A181818.P3033052232388398964

/-! ## A181818.P3767516642384136517

`filter[A025487(n+1), A353518(#)]`
-/

namespace A181818.P3767516642384136517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A181818.P3767516642384136517

/-! ## A181818.P2946375311852002966

`filter[A055932(n+1), A353518(#)]`
-/

namespace A181818.P2946375311852002966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A181818.P2946375311852002966

/-! ## A181818.P6191956750702009497

`filter[A063938(n+1), A353518(#)]`
-/

namespace A181818.P6191956750702009497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A181818.P6191956750702009497

/-! ## A181818.P2422313621371473750

`filter[A068383(n+1), A353518(#)]`
-/

namespace A181818.P2422313621371473750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A181818.P2422313621371473750

/-! ## A181818.P1177875022649642954

`filter[A068563(n+1), A353518(#)]`
-/

namespace A181818.P1177875022649642954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A181818.P1177875022649642954

/-! ## A181818.P9779020448632669690

`filter[A068997(n+1), A353518(#)]`
-/

namespace A181818.P9779020448632669690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A181818.P9779020448632669690

/-! ## A181818.P10147323665962506206

`filter[A076450(n+1), A353518(#)]`
-/

namespace A181818.P10147323665962506206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353518 (f1 j).toNat = 1) n)

end

end A181818.P10147323665962506206

/-!
# A181819: Prime shadow of n: a(1) = 1; for n>1, if n = Product prime(i)^e(i), then a(n) = Product prime(e(i)).

The programs for A181819, the canonical program `A181819.P15090535388863431201` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181819 has offset 1).

The definition of A181819 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181819.P15090535388863431201

`A008578(A001511(n+1))*a(A064989(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A181819

/-- `A008578(A001511(n+1))*a(A064989(n+1)-1)` -/
def P15090535388863431201.Spec : Prop :=
  ∀ n, P15090535388863431201.a n = A181819 (n + 1)

theorem P15090535388863431201.correct : P15090535388863431201.Spec := by
  intro n
  simp only [A181819, Nat.add_sub_cancel]

end A181819

/-! ## A181819.P5750473956953694417

`A000040(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A181819.P5750473956953694417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A181819.P5750473956953694417

namespace A181819

/-- `A000040(A067029(n+1))*a(A028234(n+1)-1)` -/
def P5750473956953694417.Spec : Prop :=
  ∀ n, P5750473956953694417.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P3901673117112325110

`A329900(A124859(n+1))`
-/

namespace A181819.P3901673117112325110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A124859 (n + 1)).toNat

end

end A181819.P3901673117112325110

namespace A181819

/-- `A329900(A124859(n+1))` -/
def P3901673117112325110.Spec : Prop :=
  ∀ n, P3901673117112325110.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P5043307349067087717

`A246029(A156552(n+1))`
-/

namespace A181819.P5043307349067087717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A156552 (n + 1)).toNat

end

end A181819.P5043307349067087717

namespace A181819

/-- `A246029(A156552(n+1))` -/
def P5043307349067087717.Spec : Prop :=
  ∀ n, P5043307349067087717.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P321170191650223203

`∏{e}[n+1, A000040(#)]`
-/

namespace A181819.P321170191650223203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)

end

end A181819.P321170191650223203

namespace A181819

/-- `∏{e}[n+1, A000040(#)]` -/
def P321170191650223203.Spec : Prop :=
  ∀ n, P321170191650223203.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P2101767185146541140

`∏{e}[n+1, A030291(#)]`
-/

namespace A181819.P2101767185146541140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A030291 (Nat.factorization (f1 n) p)

end

end A181819.P2101767185146541140

namespace A181819

/-- `∏{e}[n+1, A030291(#)]` -/
def P2101767185146541140.Spec : Prop :=
  ∀ n, P2101767185146541140.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P3779071816229156168

`∏{e}[n+1, A049561(#)]`
-/

namespace A181819.P3779071816229156168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A049561 (Nat.factorization (f1 n) p)

end

end A181819.P3779071816229156168

namespace A181819

/-- `∏{e}[n+1, A049561(#)]` -/
def P3779071816229156168.Spec : Prop :=
  ∀ n, P3779071816229156168.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P11922577575023085728

`∏{e}[n+1, A054403(#)]`
-/

namespace A181819.P11922577575023085728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A054403 (Nat.factorization (f1 n) p)

end

end A181819.P11922577575023085728

namespace A181819

/-- `∏{e}[n+1, A054403(#)]` -/
def P11922577575023085728.Spec : Prop :=
  ∀ n, P11922577575023085728.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P10468308310078611214

`∏{e}[n+1, A058853(#)]`
-/

namespace A181819.P10468308310078611214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A058853 (Nat.factorization (f1 n) p)

end

end A181819.P10468308310078611214

namespace A181819

/-- `∏{e}[n+1, A058853(#)]` -/
def P10468308310078611214.Spec : Prop :=
  ∀ n, P10468308310078611214.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P12278771758734966452

`∏{e}[n+1, A061022(#)]`
-/

namespace A181819.P12278771758734966452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A061022 (Nat.factorization (f1 n) p)

end

end A181819.P12278771758734966452

namespace A181819

/-- `∏{e}[n+1, A061022(#)]` -/
def P12278771758734966452.Spec : Prop :=
  ∀ n, P12278771758734966452.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P3031110129996215136

`∏{e}[n+1, A095285(#)]`
-/

namespace A181819.P3031110129996215136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A095285 (Nat.factorization (f1 n) p)

end

end A181819.P3031110129996215136

namespace A181819

/-- `∏{e}[n+1, A095285(#)]` -/
def P3031110129996215136.Spec : Prop :=
  ∀ n, P3031110129996215136.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P12576568788410619025

`∏{e}[n+1, A095313(#)]`
-/

namespace A181819.P12576568788410619025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A095313 (Nat.factorization (f1 n) p)

end

end A181819.P12576568788410619025

namespace A181819

/-- `∏{e}[n+1, A095313(#)]` -/
def P12576568788410619025.Spec : Prop :=
  ∀ n, P12576568788410619025.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P17758393986379994910

`∏{e}[n+1, A095320(#)]`
-/

namespace A181819.P17758393986379994910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A095320 (Nat.factorization (f1 n) p)

end

end A181819.P17758393986379994910

namespace A181819

/-- `∏{e}[n+1, A095320(#)]` -/
def P17758393986379994910.Spec : Prop :=
  ∀ n, P17758393986379994910.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P12573926334033854628

`∏{e}[n+1, A100725(#)]`
-/

namespace A181819.P12573926334033854628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A100725 (Nat.factorization (f1 n) p)

end

end A181819.P12573926334033854628

namespace A181819

/-- `∏{e}[n+1, A100725(#)]` -/
def P12573926334033854628.Spec : Prop :=
  ∀ n, P12573926334033854628.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P12825687042559676312

`∏{e}[n+1, A109611(#)]`
-/

namespace A181819.P12825687042559676312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A109611 (Nat.factorization (f1 n) p)

end

end A181819.P12825687042559676312

namespace A181819

/-- `∏{e}[n+1, A109611(#)]` -/
def P12825687042559676312.Spec : Prop :=
  ∀ n, P12825687042559676312.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P4515767319593314577

`∏{e}[n+1, A216883(#)]`
-/

namespace A181819.P4515767319593314577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A216883 (Nat.factorization (f1 n) p)

end

end A181819.P4515767319593314577

namespace A181819

/-- `∏{e}[n+1, A216883(#)]` -/
def P4515767319593314577.Spec : Prop :=
  ∀ n, P4515767319593314577.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P3938768828166336734

`∏{e}[n+1, A219697(#)]`
-/

namespace A181819.P3938768828166336734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A219697 (Nat.factorization (f1 n) p)

end

end A181819.P3938768828166336734

namespace A181819

/-- `∏{e}[n+1, A219697(#)]` -/
def P3938768828166336734.Spec : Prop :=
  ∀ n, P3938768828166336734.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P3838824729895894166

`∏{e}[n+1, A005180(#+1)]`
-/

namespace A181819.P3838824729895894166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005180 (Nat.factorization (f1 n) p + 1)

end

end A181819.P3838824729895894166

namespace A181819

/-- `∏{e}[n+1, A005180(#+1)]` -/
def P3838824729895894166.Spec : Prop :=
  ∀ n, P3838824729895894166.a n = A181819 (n + 1)

end A181819

/-! ## A181819.P12605448073761196842

`∏{p}[n+1, A000040(val(n+1, #))]`
-/

namespace A181819.P12605448073761196842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 (SequenceMachineLib.valuation (n + 1) p)

end

end A181819.P12605448073761196842

namespace A181819

/-- `∏{p}[n+1, A000040(val(n+1, #))]` -/
def P12605448073761196842.Spec : Prop :=
  ∀ n, P12605448073761196842.a n = A181819 (n + 1)

end A181819

/-!
# A181820: a(1) = 1; for n > 1, if A025487(n) = Product p(i)^e(i), then a(n) = Product p(e(i)).

The programs for A181820, there is no canonical definition to state claims against.
-/

/-! ## A181820.P2508511066784919150

`A181819(A025487(n+1))`
-/

namespace A181820.P2508511066784919150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A025487 (n + 1)).toNat

end

end A181820.P2508511066784919150

/-! ## A181820.P18124945050315555482

`A122111(A181815(n+1))`
-/

namespace A181820.P18124945050315555482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A181815 (n + 1)).toNat

end

end A181820.P18124945050315555482

/-! ## A181820.P10914247950529986120

`∏{e}[A025487(n+1), A000040(#)]`
-/

namespace A181820.P10914247950529986120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A181820.P10914247950529986120

/-! ## A181820.P856197949118366854

`∏{e}[A025487(n+1), A095285(#)]`
-/

namespace A181820.P856197949118366854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A095285 (Nat.factorization (f1 n).natAbs p)

end

end A181820.P856197949118366854

/-! ## A181820.P4081727697373608437

`∏{e}[A025487(n+1), A095313(#)]`
-/

namespace A181820.P4081727697373608437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A095313 (Nat.factorization (f1 n).natAbs p)

end

end A181820.P4081727697373608437

/-! ## A181820.P4663175359407484046

`∏{e}[A025487(n+1), A216883(#)]`
-/

namespace A181820.P4663175359407484046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A216883 (Nat.factorization (f1 n).natAbs p)

end

end A181820.P4663175359407484046

/-! ## A181820.P10985532847358785693

`∏{e}[A025487(n+1), A233360(#)]`
-/

namespace A181820.P10985532847358785693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A233360 (Nat.factorization (f1 n).natAbs p)

end

end A181820.P10985532847358785693

/-! ## A181820.P18176163904279399062

`∏{e}[A025487(n+1), sqrt(A001248(#))]`
-/

namespace A181820.P18176163904279399062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Real.sqrt (A001248 (Nat.factorization (f1 n).natAbs p) : ℝ)

end

end A181820.P18176163904279399062

/-! ## A181820.P14472621327818419188

`∏{e}[record[A329899(n+1)], A000040(#)]`
-/

namespace A181820.P14472621327818419188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A181820.P14472621327818419188

/-! ## A181820.P15632152067887243166

`∏{e}[record[A051466(n+2)], A000040(#)]`
-/

namespace A181820.P15632152067887243166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A181820.P15632152067887243166

/-! ## A181820.P12642596885441501787

`∏{e}[A025487(n+1), A008578(#+1)]`
-/

namespace A181820.P12642596885441501787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008578 (Nat.factorization (f1 n).natAbs p + 1)

end

end A181820.P12642596885441501787

/-! ## A181820.P14740612061045963575

`∏{e}[A329899(A330683(n+1)), A000040(#)]`
-/

namespace A181820.P14740612061045963575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A330683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A181820.P14740612061045963575

/-! ## A181820.P834416267416043956

`A253565(A329905(n+1))`
-/

namespace A181820.P834416267416043956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (A329905 (n + 1)).toNat

end

end A181820.P834416267416043956

/-!
# A181821: a(n) = smallest integer with factorization as Product p(i)^e(i) such that Product p(e(i)) = n.

The programs for A181821, the canonical program `A181821.P11277667539367847379` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181821 has offset 1).

The definition of A181821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181821.P8251603031760725452

`A025487(A361808(n+1))`
-/

namespace A181821.P8251603031760725452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A361808 (n + 1)).toNat

end

end A181821.P8251603031760725452

namespace A181821

/-- `A025487(A361808(n+1))` -/
def P8251603031760725452.Spec : Prop :=
  ∀ n, P8251603031760725452.a n = A181821 (n + 1)

end A181821

/-! ## A181821.P11277667539367847379

`A108951(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A181821

/-- `A108951(A122111(n+1))` -/
def P11277667539367847379.Spec : Prop :=
  ∀ n, P11277667539367847379.a n = A181821 (n + 1)

theorem P11277667539367847379.correct : P11277667539367847379.Spec := by
  intro n
  simp only [A181821, Nat.add_sub_cancel]

end A181821

/-! ## A181821.P13138494113689820568

`A108951(A181819(A108951(n+1)))`
-/

namespace A181821.P13138494113689820568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A181819 (A108951 (n + 1)).toNat).toNat

end

end A181821.P13138494113689820568

namespace A181821

/-- `A108951(A181819(A108951(n+1)))` -/
def P13138494113689820568.Spec : Prop :=
  ∀ n, P13138494113689820568.a n = A181821 (n + 1)

end A181821

/-! ## A181821.P8426779569939997543

`A122111(n+1)*A124859(A331188(n+1))`
-/

namespace A181821.P8426779569939997543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) * A124859 (A331188 (n + 1)).toNat

end

end A181821.P8426779569939997543

namespace A181821

/-- `A122111(n+1)*A124859(A331188(n+1))` -/
def P8426779569939997543.Spec : Prop :=
  ∀ n, P8426779569939997543.a n = A181821 (n + 1)

end A181821

/-! ## A181821.P5008136621673646664

`A122111(n+1)*A181811(A322865(n+1))`
-/

namespace A181821.P5008136621673646664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) * A181811 (A322865 (n + 1)).toNat

end

end A181821.P5008136621673646664

namespace A181821

/-- `A122111(n+1)*A181811(A322865(n+1))` -/
def P5008136621673646664.Spec : Prop :=
  ∀ n, P5008136621673646664.a n = A181821 (n + 1)

end A181821

/-! ## A181821.P2664255175068061747

`A181811(A322865(n+1))*A243505(A243501(n+1)/2)`
-/

namespace A181821.P2664255175068061747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181811 (A322865 (n + 1)).toNat * A243505 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A181821.P2664255175068061747

namespace A181821

/-- `A181811(A322865(n+1))*A243505(A243501(n+1)/2)` -/
def P2664255175068061747.Spec : Prop :=
  ∀ n, P2664255175068061747.a n = A181821 (n + 1)

end A181821

/-!
# A181822: a(n) = member of A025487 whose prime signature is conjugate to the prime signature of A025487(n).

The programs for A181822, there is no canonical definition to state claims against.
-/

/-! ## A181822.P17929324018936721887

`A108951(A181820(n+1))`
-/

namespace A181822.P17929324018936721887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A181820 (n + 1)).toNat

end

end A181822.P17929324018936721887

/-! ## A181822.P5774351730740306307

`A108951(A181819(A025487(n+1)))`
-/

namespace A181822.P5774351730740306307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A181819 (A025487 (n + 1)).toNat).toNat

end

end A181822.P5774351730740306307

/-! ## A181822.P12176071037354700666

`∏{e}[A025487(n+1), A002110(#)]`
-/

namespace A181822.P12176071037354700666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A181822.P12176071037354700666

/-! ## A181822.P13293972073530332922

`∏{e}[record[A051466(n+2)], A002110(#)]`
-/

namespace A181822.P13293972073530332922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A181822.P13293972073530332922

/-! ## A181822.P14936568992063648639

`∏{e}[A025487(n+1), A108951(A000040(#))]`
-/

namespace A181822.P14936568992063648639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A108951 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A181822.P14936568992063648639

/-! ## A181822.P6555083558262776817

`∏{e}[A025487(n+1), A121281(A000217(#))]`
-/

namespace A181822.P6555083558262776817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A121281 (A000217 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A181822.P6555083558262776817

/-! ## A181822.P1275100012802531751

`∏{e}[A181821(A181820(n+1)), A002110(#)]`
-/

namespace A181822.P1275100012802531751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A181822.P1275100012802531751

/-! ## A181822.P6105858003455781880

`∏{e}[A051466(A329898(n+1)), A002110(#)]`
-/

namespace A181822.P6105858003455781880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A181822.P6105858003455781880

/-! ## A181822.P8490329192099320165

`∏{e}[A055932(A331119(n+1)), A002110(#)]`
-/

namespace A181822.P8490329192099320165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A181822.P8490329192099320165

/-! ## A181822.P6119342665055233111

`∏{e}[A329899(A330683(n+1)), A002110(#)]`
-/

namespace A181822.P6119342665055233111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A330683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A181822.P6119342665055233111

/-! ## A181822.P10145702602290655849

`A124859(A307107(n+1))*A181820(n+1)`
-/

namespace A181822.P10145702602290655849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A307107 (n + 1)).toNat * A181820 (n + 1)

end

end A181822.P10145702602290655849

/-!
# A181823: Members of A025487 such that A025487(n) < A181822(n).

The programs for A181823, there is no canonical definition to state claims against.
-/

/-! ## A181823.P4095760950916532460

`record[A025487(n+3)%A181822(n+3)]`
-/

namespace A181823.P4095760950916532460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025487 (n + 3)) (A181822 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181823.P4095760950916532460

/-! ## A181823.P17080529424178461953

`A025487(lt[A025487(n+1), A181822(n+1)]+1)`
-/

namespace A181823.P17080529424178461953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A181823.P17080529424178461953

/-! ## A181823.P14974981325805249506

`record[A046523(4*(n+1))%A124859(4*(n+1))]`
-/

namespace A181823.P14974981325805249506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046523 (4 * (n + 1))) (A124859 (4 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181823.P14974981325805249506

/-! ## A181823.P122403062489179283

`A115746(lt[A115727(3*(n+1)), A115728(2*n+1)])`
-/

namespace A181823.P122403062489179283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115727 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115728 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115746 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181823.P122403062489179283

/-! ## A181823.P7273514651112674255

`A340346(52*A145853(n+1))`
-/

namespace A181823.P7273514651112674255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340346 (52 * A145853 (n + 1)).toNat

end

end A181823.P7273514651112674255

/-!
# A181824: Members of A025487 such that A025487(n) <= A181822(n).

The programs for A181824, there is no canonical definition to state claims against.
-/

/-! ## A181824.P16302757349777641668

`∪[A181823(n+1), A181825(n+1)]`
-/

namespace A181824.P16302757349777641668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181824.P16302757349777641668

/-! ## A181824.P12422992597869343661

`record[A046523(A325762(n+1))]`
-/

namespace A181824.P12422992597869343661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A325762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181824.P12422992597869343661

/-! ## A181824.P17434009454274825182

`filter[A325762(n+1), A322585(#)]`
-/

namespace A181824.P17434009454274825182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A181824.P17434009454274825182

/-! ## A181824.P15026742043085875296

`∩[A025487(n+1), A325762(n+1)]`
-/

namespace A181824.P15026742043085875296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181824.P15026742043085875296

/-! ## A181824.P4334754802217259808

`∩[A085834(n+1), A325762(n+1)]`
-/

namespace A181824.P4334754802217259808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181824.P4334754802217259808

/-!
# A181825: Members of A025487 whose prime signature is self-conjugate (as a partition).

The programs for A181825, there is no canonical definition to state claims against.
-/

/-! ## A181825.P15553718190491308113

`∩[A181824(n+1), A181826(n+1)]`
-/

namespace A181825.P15553718190491308113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181825.P15553718190491308113

/-! ## A181825.P7203176343373256920

`record[gcd(A025487(n+1), A181822(n+1))]`
-/

namespace A181825.P7203176343373256920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025487 (n + 1)) (A181822 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181825.P7203176343373256920

/-! ## A181825.P7979712980846167219

`A025487(eq[A025487(n+1), A181822(n+1)]+1)`
-/

namespace A181825.P7979712980846167219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A181825.P7979712980846167219

/-! ## A181825.P2604681095893165033

`eq[A181819(n+1), A319626(n+1)]+1`
-/

namespace A181825.P2604681095893165033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A181825.P2604681095893165033

/-! ## A181825.P14637587533477162859

`eq[A181819(n+1), A329900(n+1)]+1`
-/

namespace A181825.P14637587533477162859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A181825.P14637587533477162859

/-!
# A181826: Members of A025487 such that A025487(n) >= A181822(n).

The programs for A181826, there is no canonical definition to state claims against.
-/

/-! ## A181826.P11038093492298023992

`∪[A181825(n+1), A181827(n+1)]`
-/

namespace A181826.P11038093492298023992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181826.P11038093492298023992

/-! ## A181826.P8588918118501692582

`record[gcd(A181821(n+1), A328479(n+1))]`
-/

namespace A181826.P8588918118501692582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181821 (n + 1)) (A328479 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181826.P8588918118501692582

/-! ## A181826.P15353479202770467336

`record[A046523(n+1)%A001122(A111944(n+1))]`
-/

namespace A181826.P15353479202770467336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046523 (n + 1)) (A001122 (A111944 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181826.P15353479202770467336

/-! ## A181826.P3664682420434733673

`A325708(lt[A377379(n+1), A269303(3*n+1)])`
-/

namespace A181826.P3664682420434733673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325708 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181826.P3664682420434733673

/-! ## A181826.P3528209931317493939

`filter[A325706(n+1), A322585(#)]`
-/

namespace A181826.P3528209931317493939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A181826.P3528209931317493939

/-!
# A181827: Members of A025487 such that A025487(n) > A181822(n).

The programs for A181827, there is no canonical definition to state claims against.
-/

/-! ## A181827.P16181100253125312121

`A025487(lt[A181822(n+1), A025487(n+1)]+1)`
-/

namespace A181827.P16181100253125312121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A181827.P16181100253125312121

/-! ## A181827.P7359499790502316434

`A239978(A054601(n)+1)`
-/

namespace A181827.P7359499790502316434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239978 (A054601 n + 1).toNat

end

end A181827.P7359499790502316434

/-! ## A181827.P8690557790891948711

`A239978(A336770(n)+1)`
-/

namespace A181827.P8690557790891948711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239978 (A336770 n + 1).toNat

end

end A181827.P8690557790891948711

/-!
# A181829: a(n) = 4*A060819(n-2)*A060819(n+2).

The programs for A181829, there is no canonical definition to state claims against.
-/

/-! ## A181829.P10333440598857602938

`1/16*((n-2)²-4)*(37-27*(-1)^(n-2)+6*cos((n-2)*π/2))`
-/

namespace A181829.P10333440598857602938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 16 * (((n : ℤ) - 2) ^ 2 - 4 : ℚ) : ℝ) * ((37 - 27 * (-1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ) + 6 * Real.cos (((n : ℤ) - 2 : ℝ) * Real.pi / 2))

end

end A181829.P10333440598857602938

/-! ## A181829.P7717010962895004600

`(n-4)*lcm(4, n)/gcd(4, n)`
-/

namespace A181829.P7717010962895004600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4 : ℚ) * ((Nat.lcm 4 n : ℚ) / (Nat.gcd 4 n : ℚ))

end

end A181829.P7717010962895004600

/-! ## A181829.P12734805260418582496

`(n-4)*A188134(n)`
-/

namespace A181829.P12734805260418582496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) * A188134 n

end

end A181829.P12734805260418582496

/-! ## A181829.P8132782465992064341

`(n-4)*n*(A176895(n)/2)²`
-/

namespace A181829.P8132782465992064341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4 : ℚ) * ((n : ℚ) * ((A176895 n : ℚ) / 2) ^ 2)

end

end A181829.P8132782465992064341

/-! ## A181829.P6509024920517197970

`(n-4)*A008586(n)/A010156(n)`
-/

namespace A181829.P6509024920517197970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4 : ℚ) * ((A008586 n : ℚ) / (A010156 n : ℚ))

end

end A181829.P6509024920517197970

/-! ## A181829.P1681184351390000807

`(n-4)*A109045(n)/A109008(n)`
-/

namespace A181829.P1681184351390000807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4 : ℚ) * ((A109045 n : ℚ) / (A109008 n : ℚ))

end

end A181829.P1681184351390000807

/-! ## A181829.P1907218199574239968

`(n-4)*lcm(A174571(n), A214392(n))`
-/

namespace A181829.P1907218199574239968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) * (Int.lcm (A174571 n) (A214392 n) : ℤ)

end

end A181829.P1907218199574239968

/-! ## A181829.P1048935183083542636

`(n-4)*(A061037(n+2)-A181318(n))`
-/

namespace A181829.P1048935183083542636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) * (A061037 (n + 2) - A181318 n)

end

end A181829.P1048935183083542636

/-!
# A181830: The number of positive integers <= n that are strongly prime to n.

The programs for A181830, there is no canonical definition to state claims against.
-/

/-! ## A181830.P10101585976709347577

`n-char[1]-A181833(n)`
-/

namespace A181830.P10101585976709347577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A181833 n

end

end A181830.P10101585976709347577

/-! ## A181830.P15855131181273378063

`A002262(∑[n]-A181833(n))`
-/

namespace A181830.P15855131181273378063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A181833 n).toNat

end

end A181830.P15855131181273378063

/-! ## A181830.P2941008984548447461

`A028310(n)-A028310(A181833(n))`
-/

namespace A181830.P2941008984548447461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A028310 (A181833 n).toNat

end

end A181830.P2941008984548447461

/-! ## A181830.P3180656426026568079

`A057544(n)-A057544(A181833(n))`
-/

namespace A181830.P3180656426026568079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 n - A057544 (A181833 n).toNat

end

end A181830.P3180656426026568079

/-! ## A181830.P12157173725461211532

`A215409(A181833(n))-A215409(n)`
-/

namespace A181830.P12157173725461211532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215409 (A181833 n).toNat - A215409 n

end

end A181830.P12157173725461211532

/-! ## A181830.P5081134902665981007

`A199969(n+1)-A254667(A181833(n))`
-/

namespace A181830.P5081134902665981007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (n + 1) - A254667 (A181833 n).toNat

end

end A181830.P5081134902665981007

/-!
# A181832: The product of the positive integers <= n that are strongly prime to n.

The programs for A181832, there is no canonical definition to state claims against.
-/

/-! ## A181832.P1076530808134379265

`A239700(A016921(n)+A001792(n))`
-/

namespace A181832.P1076530808134379265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (A016921 n + A001792 n).toNat

end

end A181832.P1076530808134379265

/-! ## A181832.P6575980984198124719

`A224861(A000041(n))+A181836(n)`
-/

namespace A181832.P6575980984198124719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224861 (A000041 n).toNat + A181836 n

end

end A181832.P6575980984198124719

/-! ## A181832.P61699743816751410

`A181836(n)*A329291(A223549(n))`
-/

namespace A181832.P61699743816751410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 n * A329291 (A223549 n).toNat

end

end A181832.P61699743816751410

/-! ## A181832.P3744835880404221787

`A063928(n+1)*A124740(A250264(n))`
-/

namespace A181832.P3744835880404221787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (n + 1) * A124740 (A250264 n).toNat

end

end A181832.P3744835880404221787

/-! ## A181832.P5944058255208457673

`A063928(n+1)*A344911(A369695(n))`
-/

namespace A181832.P5944058255208457673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (n + 1) * A344911 (A369695 n).toNat

end

end A181832.P5944058255208457673

/-!
# A181833: The number of positive integers <= n that are not strongly prime to n.

The programs for A181833, there is no canonical definition to state claims against.
-/

/-! ## A181833.P7030020473666797915

`n-char[1]-A181830(n)`
-/

namespace A181833.P7030020473666797915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A181830 n

end

end A181833.P7030020473666797915

/-! ## A181833.P275367189225718339

`n-(A225530(n)-∏{e}[n-1, #+1])`
-/

namespace A181833.P275367189225718339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A225530 n - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ))

end

end A181833.P275367189225718339

/-! ## A181833.P10344870114321159707

`A199969(n+1-A181830(n))`
-/

namespace A181833.P10344870114321159707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 ((n + 1 : ℤ) - A181830 n).toNat

end

end A181833.P10344870114321159707

/-! ## A181833.P5479030806054802117

`n-(A225530(n)-A000005(A028310(abs(1-n))))`
-/

namespace A181833.P5479030806054802117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A225530 n - A000005 (A028310 |1 - (n : ℤ)|.toNat).toNat)

end

end A181833.P5479030806054802117

/-!
# A181834: The number of primes <= n that are strongly prime to n.

The programs for A181834, there is no canonical definition to state claims against.
-/

/-! ## A181834.P14700047266992537285

`∑{e}[A181836(n), #]`
-/

namespace A181834.P14700047266992537285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A181834.P14700047266992537285

/-! ## A181834.P6916428002976220333

`∑{p}[A181836(n), A000188(#)]`
-/

namespace A181834.P6916428002976220333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000188 p

end

end A181834.P6916428002976220333

/-! ## A181834.P7954116533984456005

`∑{p}[A181836(n), A001055(#)]`
-/

namespace A181834.P7954116533984456005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A181834.P7954116533984456005

/-! ## A181834.P8746237205753478645

`∑{p}[A181836(n), A001221(#)]`
-/

namespace A181834.P8746237205753478645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A181834.P8746237205753478645

/-! ## A181834.P8274069569819219528

`∑{p}[A181836(n), A001222(#)]`
-/

namespace A181834.P8274069569819219528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A181834.P8274069569819219528

/-!
# A181835: The sum of the primes <= n that are strongly prime to n.

The programs for A181835, there is no canonical definition to state claims against.
-/

/-! ## A181835.P14429507277348226996

`A063960(2*n+1)-A008472(A103505(n))`
-/

namespace A181835.P14429507277348226996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * n + 1) - A008472 (A103505 n).toNat

end

end A181835.P14429507277348226996

/-! ## A181835.P7429600777963115073

`∑{p}[A181836(n), #]`
-/

namespace A181835.P7429600777963115073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A181835.P7429600777963115073

/-! ## A181835.P17771754797632900962

`∑{p}[A300951(2*n)/A007947(A103505(n)), #]`
-/

namespace A181835.P17771754797632900962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (2 * n) : ℚ) / (A007947 (A103505 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A181835.P17771754797632900962

/-! ## A181835.P11729488978030737425

`A001414(A181836(n))`
-/

namespace A181835.P11729488978030737425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A181836 n).toNat

end

end A181835.P11729488978030737425

/-! ## A181835.P3977576031861027604

`A008472(or(1, A181836(n)))`
-/

namespace A181835.P3977576031861027604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Int.lor 1 (A181836 n)).toNat

end

end A181835.P3977576031861027604

/-!
# A181836: The product of primes <= n that are strongly prime to n.

The programs for A181836, there is no canonical definition to state claims against.
-/

/-! ## A181836.P525439502280966113

`A300951(2*n)/A007947(A103505(n))`
-/

namespace A181836.P525439502280966113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (2 * n) : ℚ) / (A007947 (A103505 n).toNat : ℚ)

end

end A181836.P525439502280966113

/-! ## A181836.P13366814137235733438

`A034386(n)/∏{p}[A001815(n), #]`
-/

namespace A181836.P13366814137235733438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A181836.P13366814137235733438

/-! ## A181836.P324401508668939964

`A000265(A181832(n))%42`
-/

namespace A181836.P324401508668939964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A181832 n).toNat) 42

end

end A181836.P324401508668939964

/-! ## A181836.P8299505049564641974

`gcd(A000265(A181832(n)), A002110(n))`
-/

namespace A181836.P8299505049564641974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A181832 n).toNat) (A002110 n)

end

end A181836.P8299505049564641974

/-! ## A181836.P4937022264034174954

`A124740(A250264(n))`
-/

namespace A181836.P4937022264034174954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124740 (A250264 n).toNat

end

end A181836.P4937022264034174954

/-!
# A181837: T(n,k) = [k is strongly prime to n], the indicator function of strong coprimality, triangle read by rows.

The programs for A181837, there is no canonical definition to state claims against.
-/

/-! ## A181837.P7527563429866266195

`A055641(C(A071190(n+1), A214268(n)))`
-/

namespace A181837.P7527563429866266195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (Nat.choose (A071190 (n + 1)).toNat (A214268 n).toNat)

end

end A181837.P7527563429866266195

/-! ## A181837.P10566581601612117137

`A111446(n)%A096811(n)`
-/

namespace A181837.P10566581601612117137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111446 n) (A096811 n)

end

end A181837.P10566581601612117137

/-! ## A181837.P16526245563091141193

`A021913(and(A083856(n), A348054(n+1)))`
-/

namespace A181837.P16526245563091141193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (Int.land (A083856 n) (A348054 (n + 1))).toNat

end

end A181837.P16526245563091141193

/-! ## A181837.P17045891196861660881

`A082784(A317491(n)+A284270(2*n+1))`
-/

namespace A181837.P17045891196861660881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (A317491 n + A284270 (2 * n + 1)).toNat

end

end A181837.P17045891196861660881

/-! ## A181837.P13382499431714105042

`A136230(n)%A101598(n)`
-/

namespace A181837.P13382499431714105042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136230 n) (A101598 n)

end

end A181837.P13382499431714105042

/-!
# A181838: T(n,p) = [p prime and is strongly prime to n], the indicator function of strongly coprime primes, triangle read by rows.

The programs for A181838, there is no canonical definition to state claims against.
-/

/-! ## A181838.P14134195780683735145

`A181837(n*A075053(A002262(n)))`
-/

namespace A181838.P14134195780683735145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181837 ((n : ℤ) * A075053 (A002262 n).toNat).toNat

end

end A181838.P14134195780683735145

/-! ## A181838.P3705918694256949090

`A181837(n*A117814(A002262(n)))`
-/

namespace A181838.P3705918694256949090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181837 ((n : ℤ) * A117814 (A002262 n).toNat).toNat

end

end A181838.P3705918694256949090

/-! ## A181838.P4412599070628018136

`and(record[A051652(n)], A181837(n))`
-/

namespace A181838.P4412599070628018136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A181837 n)

end

end A181838.P4412599070628018136

/-! ## A181838.P15631118795899535959

`and(∑[A225854(n+1)], A181837(n))`
-/

namespace A181838.P15631118795899535959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A181837 n)

end

end A181838.P15631118795899535959

/-! ## A181838.P2782867201502343078

`and(∑[A325464(n+1)], A181837(n))`
-/

namespace A181838.P2782867201502343078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A181837 n)

end

end A181838.P2782867201502343078

/-! ## A181838.P13032874774767092257

`A090418(A002262(n*A181837(n)))`
-/

namespace A181838.P13032874774767092257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 (A002262 ((n : ℤ) * A181837 n).toNat).toNat

end

end A181838.P13032874774767092257

/-! ## A181838.P15669385718315843023

`and(A029635(A143842(n)), A181837(n))`
-/

namespace A181838.P15669385718315843023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029635 (A143842 n).toNat) (A181837 n)

end

end A181838.P15669385718315843023

/-! ## A181838.P3164972359487708356

`and(A062047(A002260(n+1)), A181837(n))`
-/

namespace A181838.P3164972359487708356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062047 (A002260 (n + 1)).toNat) (A181837 n)

end

end A181838.P3164972359487708356

/-! ## A181838.P1800339088689382824

`and(A001222(A135739(n+1)), A181837(n))`
-/

namespace A181838.P1800339088689382824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A135739 (n + 1)).toNat) (A181837 n)

end

end A181838.P1800339088689382824

/-! ## A181838.P11335076714701576027

`and(A018252(A133819(n+1)), A181837(n))`
-/

namespace A181838.P11335076714701576027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018252 (A133819 (n + 1)).toNat) (A181837 n)

end

end A181838.P11335076714701576027

/-!
# A181841: Supersafe primes.

The programs for A181841, there is no canonical definition to state claims against.
-/

/-! ## A181841.P3535646123963927342

`∩[A005385(n+1), A162337(n+1)]`
-/

namespace A181841.P3535646123963927342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181841.P3535646123963927342

/-! ## A181841.P17343548540428686254

`∩[A079148(n+1), A162337(n+1)]`
-/

namespace A181841.P17343548540428686254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181841.P17343548540428686254

/-! ## A181841.P15393183846825576924

`∩[A065966(n+1), A162337(n+1)]`
-/

namespace A181841.P15393183846825576924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181841.P15393183846825576924

/-! ## A181841.P16555020832947472452

`∩[A079149(n+1), A162337(n+1)]`
-/

namespace A181841.P16555020832947472452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181841.P16555020832947472452

/-! ## A181841.P11894686025131506837

`∩[A162337(n+1), A167609(n+1)]`
-/

namespace A181841.P11894686025131506837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181841.P11894686025131506837

/-! ## A181841.P11639126847477662694

`p?[A110300(n+3)+1]`
-/

namespace A181841.P11639126847477662694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110300 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181841.P11639126847477662694

/-! ## A181841.P4538128724824382799

`∩[A162337(n+1), A391049(n+1)]`
-/

namespace A181841.P4538128724824382799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181841.P4538128724824382799

/-! ## A181841.P2434128661010669100

`∩[A162337(n+1), A395563(n+1)]`
-/

namespace A181841.P2434128661010669100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181841.P2434128661010669100

/-! ## A181841.P11565135562854853408

`p?[or(3, 3*A158709(n+1))]`
-/

namespace A181841.P11565135562854853408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (3 * A158709 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181841.P11565135562854853408

/-! ## A181841.P10892654790387333245

`∩[A072055(n+1), A162337(n+1)]`
-/

namespace A181841.P10892654790387333245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181841.P10892654790387333245

/-! ## A181841.P6120737883550995819

`∩[A162337(n+1), A166496(n+1)]`
-/

namespace A181841.P6120737883550995819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181841.P6120737883550995819

/-! ## A181841.P9254031578433726540

`record[A006530(A110300(n+4)+1)]`
-/

namespace A181841.P9254031578433726540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A110300 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181841.P9254031578433726540

/-! ## A181841.P15464941584609460295

`record[A006530(or(3, 3*A158709(n+1)))]`
-/

namespace A181841.P15464941584609460295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 3 (3 * A158709 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181841.P15464941584609460295

/-! ## A181841.P14088829029952859820

`∩[A124109(n+1), A162337(n+1)]`
-/

namespace A181841.P14088829029952859820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181841.P14088829029952859820

/-!
# A181842: Triangle read by rows: T(n,k) = Sum_{c in partition(n,n-k+1)} lcm(c).

The programs for A181842, there is no canonical definition to state claims against.
-/

/-! ## A181842.P7881410798976631769

`A260999(A209564(n+1)²)`
-/

namespace A181842.P7881410798976631769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A209564 (n + 1) ^ 2).toNat

end

end A181842.P7881410798976631769

/-! ## A181842.P8578677095166335173

`A260999(A209564(n+1)^2)`
-/

namespace A181842.P8578677095166335173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A209564 (n + 1) ^ 2).toNat

end

end A181842.P8578677095166335173

/-! ## A181842.P2691651066592033449

`A117935(lt[A304706(n), A361424(n+1)])`
-/

namespace A181842.P2691651066592033449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117935 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181842.P2691651066592033449

/-! ## A181842.P18339640338262053149

`A001222(4^A145111(n))-A002260(n+1)`
-/

namespace A181842.P18339640338262053149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A145111 n : ℤ))).toNat - A002260 (n + 1)

end

end A181842.P18339640338262053149

/-! ## A181842.P4410268050730498819

`A364869(A364842(n+1)%A364860(n+1))`
-/

namespace A181842.P4410268050730498819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364869 (Int.tmod (A364842 (n + 1)) (A364860 (n + 1))).toNat

end

end A181842.P4410268050730498819

/-!
# A181843: Triangle read by rows: Partial row sums of A181842.

The programs for A181843, there is no canonical definition to state claims against.
-/

/-! ## A181843.P16090455508810750700

`A351876(A143453(n))%A227631(n+4)`
-/

namespace A181843.P16090455508810750700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351876 (A143453 n).toNat) (A227631 (n + 4))

end

end A181843.P16090455508810750700

/-! ## A181843.P4210492673701114219

`A362915(A337369(n))`
-/

namespace A181843.P4210492673701114219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362915 (A337369 n).toNat

end

end A181843.P4210492673701114219

/-! ## A181843.P1298047905005359851

`A131469(A209576(n+1))`
-/

namespace A181843.P1298047905005359851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A209576 (n + 1)).toNat

end

end A181843.P1298047905005359851

/-! ## A181843.P11621481448712334393

`A225643(3*A208910(n+1))`
-/

namespace A181843.P11621481448712334393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 (3 * A208910 (n + 1)).toNat

end

end A181843.P11621481448712334393

/-! ## A181843.P8918117734573280855

`∑{e}[A036290(A226441(n+1)), #]`
-/

namespace A181843.P8918117734573280855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 (A226441 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A181843.P8918117734573280855

/-!
# A181844: Sum over all partitions of n of the LCM of the parts.

The programs for A181844, there is no canonical definition to state claims against.
-/

/-! ## A181844.P13905885076846791988

`A181843(∑[n]+floor(acot(n)))`
-/

namespace A181844.P13905885076846791988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181843 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A181844.P13905885076846791988

/-! ## A181844.P16536169914738597752

`A181843(∑[n]+C(3, n²))`
-/

namespace A181844.P16536169914738597752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181843 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 3 (n ^ 2))

end

end A181844.P16536169914738597752

/-! ## A181844.P2457290412701728580

`A181843(gcd(C(3, n²), ∑[n]))`
-/

namespace A181844.P2457290412701728580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181843 (Nat.gcd (Nat.choose 3 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A181844.P2457290412701728580

/-! ## A181844.P9098712943008850426

`A181843(xor(C(3, n²), ∑[n]))`
-/

namespace A181844.P9098712943008850426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181843 (Nat.xor (Nat.choose 3 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A181844.P9098712943008850426

/-! ## A181844.P7402784309871819272

`A181843(∑[n]^ceil(n/98))`
-/

namespace A181844.P7402784309871819272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181843 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ))).toNat

end

end A181844.P7402784309871819272

/-!
# A181845: Triangle read by rows: T(n,k) = max_{c in P(n,n-k+1)} lcm(c) where P(n,m) = A008284(n,m) is the number of partitions of n into m parts.

The programs for A181845, there is no canonical definition to state claims against.
-/

/-! ## A181845.P7436678375181739381

`A195830(A195768(n+1)+A002260(n+1))`
-/

namespace A181845.P7436678375181739381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195830 (A195768 (n + 1) + A002260 (n + 1)).toNat

end

end A181845.P7436678375181739381

/-! ## A181845.P5293395344085499450

`A145111(n)-A109036(A293718(n))`
-/

namespace A181845.P5293395344085499450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 n - A109036 (A293718 n).toNat

end

end A181845.P5293395344085499450

/-! ## A181845.P9601741267699976981

`A047813(A002260(n+1)^A303694(n))`
-/

namespace A181845.P9601741267699976981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A303694 n : ℤ))).toNat

end

end A181845.P9601741267699976981

/-! ## A181845.P5102204849221795388

`A136277(A236433(n+1))`
-/

namespace A181845.P5102204849221795388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136277 (A236433 (n + 1)).toNat

end

end A181845.P5102204849221795388

/-! ## A181845.P15057536434209504151

`or(A002260(n+1), A004016(A342786(3*n+2)))`
-/

namespace A181845.P15057536434209504151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (n + 1)) (A004016 (A342786 (3 * n + 2)).toNat)

end

end A181845.P15057536434209504151

/-!
# A181846: Triangle read by rows: T(n,k) = Sum_{c in P(n,n-k+1)} gcd(c) where P(n,m) = A008284(n,m) is the number of partitions of n into m parts.

The programs for A181846, there is no canonical definition to state claims against.
-/

/-! ## A181846.P17592107448913186177

`A327029(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)`
-/

namespace A181846.P17592107448913186177
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327029 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A181846.P17592107448913186177

/-! ## A181846.P448098289415795993

`A277446(A230445(n+1))`
-/

namespace A181846.P448098289415795993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277446 (A230445 (n + 1)).toNat

end

end A181846.P448098289415795993

/-! ## A181846.P5604852187108167989

`gcd(A210873(n+1), A210984(3*n+4))`
-/

namespace A181846.P5604852187108167989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210873 (n + 1)) (A210984 (3 * n + 4))

end

end A181846.P5604852187108167989

/-! ## A181846.P9896013855159586072

`A210873(n+1)%A002982(A048250(n+3))`
-/

namespace A181846.P9896013855159586072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210873 (n + 1)) (A002982 (A048250 (n + 3)).toNat)

end

end A181846.P9896013855159586072

/-! ## A181846.P12839594939302018082

`A290397(A321331(n))`
-/

namespace A181846.P12839594939302018082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290397 (A321331 n).toNat

end

end A181846.P12839594939302018082

/-!
# A181847: Triangle read by rows: T(n,k)= Sum_{c in C(n,k)}gcd(c) where C(n,k) is the set of all k-tuples of positive integers whose elements sum to n.

The programs for A181847, there is no canonical definition to state claims against.
-/

/-! ## A181847.P8152420313167785090

`A135227(n)+A102683(A008911(n))`
-/

namespace A181847.P8152420313167785090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n + A102683 (A008911 n).toNat

end

end A181847.P8152420313167785090

/-! ## A181847.P17355623567022606547

`A316864(A034008(n))+A135227(n)`
-/

namespace A181847.P17355623567022606547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A034008 n).toNat + A135227 n

end

end A181847.P17355623567022606547

/-! ## A181847.P18426897277574442668

`A342753(A039599(n))+A135227(n)`
-/

namespace A181847.P18426897277574442668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A039599 n).toNat + A135227 n

end

end A181847.P18426897277574442668

/-! ## A181847.P4362387231509761051

`A333768(A176667(n))+A014473(n)`
-/

namespace A181847.P4362387231509761051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A176667 n).toNat + A014473 n

end

end A181847.P4362387231509761051

/-! ## A181847.P2048359420499581625

`A135227(n)+A010052(A125519(n+1))`
-/

namespace A181847.P2048359420499581625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n + A010052 (A125519 (n + 1)).toNat

end

end A181847.P2048359420499581625

/-!
# A181848: Consider two consecutive primes {p,q} such that P=2p+q and Q=2q+p are both prime. Sequence gives lesser primes p.

The programs for A181848, there is no canonical definition to state claims against.
-/

/-! ## A181848.P5214951537208906679

`A001748(A241945(n+1))/3`
-/

namespace A181848.P5214951537208906679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A241945 (n + 1)).toNat : ℚ) / 3

end

end A181848.P5214951537208906679

/-! ## A181848.P9574194049044608425

`A000040(A241945(n+1))`
-/

namespace A181848.P9574194049044608425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A241945 (n + 1)).toNat

end

end A181848.P9574194049044608425

/-! ## A181848.P7343207289813339505

`A008578(A241945(n+1)+1)`
-/

namespace A181848.P7343207289813339505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A241945 (n + 1) + 1).toNat

end

end A181848.P7343207289813339505

/-! ## A181848.P7875196409435135116

`A114230(A241945(n+1)+1)`
-/

namespace A181848.P7875196409435135116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114230 (A241945 (n + 1) + 1).toNat

end

end A181848.P7875196409435135116

/-! ## A181848.P10447505633274887335

`A114235(A241945(n+1)+1)`
-/

namespace A181848.P10447505633274887335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114235 (A241945 (n + 1) + 1).toNat

end

end A181848.P10447505633274887335

/-! ## A181848.P11231487215378517711

`A182986(A241945(n+1)+1)`
-/

namespace A181848.P11231487215378517711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A241945 (n + 1) + 1).toNat

end

end A181848.P11231487215378517711

/-! ## A181848.P2297326613307332770

`A065091(A241945(n+1)-1)`
-/

namespace A181848.P2297326613307332770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A241945 (n + 1) - 1).toNat

end

end A181848.P2297326613307332770

/-! ## A181848.P18310185116618079388

`∑{d}[A241945(n+1), A007444(#)]`
-/

namespace A181848.P18310185116618079388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A181848.P18310185116618079388

/-! ## A181848.P13532324528696647491

`lcm(A006005(A241945(n+1)), A033999(n))`
-/

namespace A181848.P13532324528696647491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006005 (A241945 (n + 1)).toNat) (A033999 n)

end

end A181848.P13532324528696647491

/-! ## A181848.P1083084341805689854

`or(A000007(n), A006005(A241945(n+1)))`
-/

namespace A181848.P1083084341805689854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A006005 (A241945 (n + 1)).toNat)

end

end A181848.P1083084341805689854

/-! ## A181848.P1107051415713308545

`A006005(∑{d}[A241945(n+1), A000010(#)])`
-/

namespace A181848.P1107051415713308545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A181848.P1107051415713308545

/-! ## A181848.P15920923772488646166

`A006005(∏{d}[A241945(n+1), A014963(#)])`
-/

namespace A181848.P15920923772488646166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A181848.P15920923772488646166

/-! ## A181848.P99452015475998116

`A248483(n+1)%A114265(A241945(n+1))`
-/

namespace A181848.P99452015475998116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248483 (n + 1)) (A114265 (A241945 (n + 1)).toNat)

end

end A181848.P99452015475998116

/-! ## A181848.P17380915163470660822

`∏{d}[A006005(A241945(n+1)), A006530(#)]`
-/

namespace A181848.P17380915163470660822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A241945 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A181848.P17380915163470660822

/-! ## A181848.P13675951279767146118

`∏{d}[A006005(A241945(n+1)), A020639(#)]`
-/

namespace A181848.P13675951279767146118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A241945 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A181848.P13675951279767146118

/-! ## A181848.P13910479491268929359

`∩[A173971(n+1), A175914(n+1)]`
-/

namespace A181848.P13910479491268929359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181848.P13910479491268929359

/-!
# A181849: Row sums of A181851.

The programs for A181849, there is no canonical definition to state claims against.
-/

/-! ## A181849.P1187238958525138466

`A181850(A179865(n+1))`
-/

namespace A181849.P1187238958525138466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181850 (A179865 (n + 1)).toNat

end

end A181849.P1187238958525138466

/-! ## A181849.P2047031158736885861

`A181850(A000217(A000007(n)+n))`
-/

namespace A181849.P2047031158736885861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181850 (A000217 (A000007 n + (n : ℤ)).toNat).toNat

end

end A181849.P2047031158736885861

/-! ## A181849.P5956832398468141555

`A181850(A000217(A151878(n)+n))`
-/

namespace A181849.P5956832398468141555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181850 (A000217 (A151878 n + (n : ℤ)).toNat).toNat

end

end A181849.P5956832398468141555

/-! ## A181849.P13012249212710204949

`A181850(gcd(A000217(n), A151878(n)))`
-/

namespace A181849.P13012249212710204949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181850 (Int.gcd (A000217 n) (A151878 n))

end

end A181849.P13012249212710204949

/-! ## A181849.P5032479503549221292

`A181850(or(A000217(n), A151878(n)))`
-/

namespace A181849.P5032479503549221292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181850 (Int.lor (A000217 n) (A151878 n)).toNat

end

end A181849.P5032479503549221292

/-!
# A181851: Triangle read by rows: T(n,k) = Sum_{c in composition(n,k)} lcm(c).

The programs for A181851, there is no canonical definition to state claims against.
-/

/-! ## A181851.P13455516308802470750

`A122666(A104002(n+2))`
-/

namespace A181851.P13455516308802470750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122666 (A104002 (n + 2)).toNat

end

end A181851.P13455516308802470750

/-! ## A181851.P9967323307341520322

`and(A078812(n), A205956(A205958(n)))`
-/

namespace A181851.P9967323307341520322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078812 n) (A205956 (A205958 n).toNat)

end

end A181851.P9967323307341520322

/-! ## A181851.P6283736360665244907

`A078812(n)+A002448(A128366(n+1))`
-/

namespace A181851.P6283736360665244907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n + A002448 (A128366 (n + 1)).toNat

end

end A181851.P6283736360665244907

/-! ## A181851.P596395113646368114

`A133112(n+1)-A105700(A022183(n))`
-/

namespace A181851.P596395113646368114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133112 (n + 1) - A105700 (A022183 n).toNat

end

end A181851.P596395113646368114

/-! ## A181851.P822385182579288168

`A078812(n)-A000122(A344334(n+1))`
-/

namespace A181851.P822385182579288168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - A000122 (A344334 (n + 1)).toNat

end

end A181851.P822385182579288168

/-!
# A181852: a(n) = A057641(A094348(n)).

The programs for A181852, there is no canonical definition to state claims against.
-/

/-! ## A181852.P1511449413770678574

`A057641(A094348(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181852.P1511449413770678574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (A094348 (n + 1)).toNat

end

end A181852.P1511449413770678574

/-!
# A181853: Triangle read by rows: T(n,k) = Sum_{c in C(n,k)} lcm(c) where C(n,k) is the set of all k-subsets of {1,2,...,n}.

The programs for A181853, there is no canonical definition to state claims against.
-/

/-! ## A181853.P2889592343713057629

`A340998(record[xor(n, 2*n)+1+n])+A190909(n)`
-/

namespace A181853.P2889592343713057629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 140) + A190909 n

end

end A181853.P2889592343713057629

/-! ## A181853.P5404240431077215333

`A284851(A000491(n))+A088617(n)`
-/

namespace A181853.P5404240431077215333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (A000491 n).toNat + A088617 n

end

end A181853.P5404240431077215333

/-! ## A181853.P15430274283076101079

`A340998(A001498(n))+A088617(n)`
-/

namespace A181853.P15430274283076101079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A001498 n).toNat + 140) + A088617 n

end

end A181853.P15430274283076101079

/-! ## A181853.P12975122689260441129

`A100219(A287021(n))+A088617(n)`
-/

namespace A181853.P12975122689260441129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100219 (A287021 n).toNat + A088617 n

end

end A181853.P12975122689260441129

/-! ## A181853.P8900384904419517475

`A193593(n)+A023531(A193561(2*n+3))`
-/

namespace A181853.P8900384904419517475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193593 n + A023531 (A193561 (2 * n + 3)).toNat

end

end A181853.P8900384904419517475

/-!
# A181854: Triangle read by rows: Partial row sums of A181853(n,k).

The programs for A181854, there is no canonical definition to state claims against.
-/

/-! ## A181854.P1864373270944050940

`A341936(A109822(n+1))`
-/

namespace A181854.P1864373270944050940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A109822 (n + 1)).toNat

end

end A181854.P1864373270944050940

/-! ## A181854.P835729116145249605

`A109822(n+1)-A205295(A000009(n))`
-/

namespace A181854.P835729116145249605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109822 (n + 1) - A205295 (A000009 n).toNat

end

end A181854.P835729116145249605

/-! ## A181854.P10175581414594050256

`A109822(n+1)-A205295(A130477(n))`
-/

namespace A181854.P10175581414594050256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109822 (n + 1) - A205295 (A130477 n).toNat

end

end A181854.P10175581414594050256

/-! ## A181854.P2533080997961624106

`A109822(n+1)-A184955(A179241(n+1))`
-/

namespace A181854.P2533080997961624106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109822 (n + 1) - A184955 (A179241 (n + 1)).toNat

end

end A181854.P2533080997961624106

/-! ## A181854.P14489890936399643089

`A109822(A043317(n+1))`
-/

namespace A181854.P14489890936399643089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109822 (A043317 (n + 1)).toNat

end

end A181854.P14489890936399643089

/-!
# A181855: Numerator of Nemes numbers G_n.

The programs for A181855, there is no canonical definition to state claims against.
-/

/-! ## A181855.P7570432727096684491

`A276996(C(Δ[n²], 2))`
-/

namespace A181855.P7570432727096684491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276996 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A181855.P7570432727096684491

/-!
# A181856: Denominator of Nemes number G_n.

The programs for A181856, there is no canonical definition to state claims against.
-/

/-! ## A181856.P6514924969906732279

`A277001(n)/record[A037445(n+1)]`
-/

namespace A181856.P6514924969906732279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277001 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A181856.P6514924969906732279

/-! ## A181856.P15400588704764718691

`record[A037445(n+1)]*A202367(n+1)`
-/

namespace A181856.P15400588704764718691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A202367 (n + 1)

end

end A181856.P15400588704764718691

/-! ## A181856.P14189897624135754753

`A053657(2*n+1)/record[A037445(n+1)]`
-/

namespace A181856.P14189897624135754753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053657 (2 * n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A181856.P14189897624135754753

/-!
# A181857: a(n) = lcm(n^2, n!).

The programs for A181857, the canonical program `A181857.P869771116811255450` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181857 has offset 0).

The definition of A181857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n², n!)` (program `A181857.P869771116811255450`, by `A181857.P869771116811255450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181857.P869771116811255450

`lcm(n², n!)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181857

/-- `lcm(n², n!)` -/
def P869771116811255450.Spec : Prop :=
  ∀ n, (P869771116811255450.a n : ℤ) = A181857 n

theorem P869771116811255450.correct : P869771116811255450.Spec := by
  intro n
  simp only [A181857]

end A181857

/-! ## A181857.P11774929642848497319

`lcm(A000290(n), A000142(n))`
-/

namespace A181857.P11774929642848497319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000290 n) (A000142 n)

end

end A181857.P11774929642848497319

namespace A181857

/-- `lcm(A000290(n), A000142(n))` -/
def P11774929642848497319.Spec : Prop :=
  ∀ n, (P11774929642848497319.a n : ℤ) = A181857 n

end A181857

/-! ## A181857.P13394248447663058213

`n*lcm(n, abs(1-n)!)`
-/

namespace A181857.P13394248447663058213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lcm n (Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A181857.P13394248447663058213

namespace A181857

/-- `n*lcm(n, abs(1-n)!)` -/
def P13394248447663058213.Spec : Prop :=
  ∀ n, (P13394248447663058213.a n : ℤ) = A181857 n

end A181857

/-! ## A181857.P6360235754455964871

`lcm(-∏[n-C(2, n+2)], n^2)`
-/

namespace A181857.P6360235754455964871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-(∏ j ∈ Finset.range (n + 1), f1 j)) (n ^ 2 : ℤ)

end

end A181857.P6360235754455964871

namespace A181857

/-- `lcm(-∏[n-C(2, n+2)], n^2)` -/
def P6360235754455964871.Spec : Prop :=
  ∀ n, (P6360235754455964871.a n : ℤ) = A181857 n

end A181857

/-! ## A181857.P16272822329142841682

`lcm(n^2, A133942(n))`
-/

namespace A181857.P16272822329142841682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 : ℤ) (A133942 n)

end

end A181857.P16272822329142841682

namespace A181857

/-- `lcm(n^2, A133942(n))` -/
def P16272822329142841682.Spec : Prop :=
  ∀ n, (P16272822329142841682.a n : ℤ) = A181857 n

end A181857

/-! ## A181857.P14599397428500798508

`n*lcm(n, A104150(n))`
-/

namespace A181857.P14599397428500798508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (n : ℤ) (A104150 n)

end

end A181857.P14599397428500798508

namespace A181857

/-- `n*lcm(n, A104150(n))` -/
def P14599397428500798508.Spec : Prop :=
  ∀ n, (P14599397428500798508.a n : ℤ) = A181857 n

end A181857

/-! ## A181857.P8715037994209736408

`lcm(A038507(n)-1, n*n)`
-/

namespace A181857.P8715037994209736408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038507 n - 1) (n * n : ℤ)

end

end A181857.P8715037994209736408

namespace A181857

/-- `lcm(A038507(n)-1, n*n)` -/
def P8715037994209736408.Spec : Prop :=
  ∀ n, (P8715037994209736408.a n : ℤ) = A181857 n

end A181857

/-! ## A181857.P4364756025324409755

`A181858(n)*A181860(n)`
-/

namespace A181857.P4364756025324409755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181858 n * A181860 n

end

end A181857.P4364756025324409755

namespace A181857

/-- `A181858(n)*A181860(n)` -/
def P4364756025324409755.Spec : Prop :=
  ∀ n, P4364756025324409755.a n = A181857 n

end A181857

/-!
# A181858: a(n) = lcm(n^2, n!) / lcm(n^2, swinging_factorial(n)).

The programs for A181858, there is no canonical definition to state claims against.
-/

/-! ## A181858.P2849611926453084190

`floor(n/2)!²/A181859(n)`
-/

namespace A181858.P2849611926453084190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ) / (A181859 n : ℚ)

end

end A181858.P2849611926453084190

/-! ## A181858.P8382801163618489386

`A180064(n)/A181859(n)`
-/

namespace A181858.P8382801163618489386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180064 n : ℚ) / (A181859 n : ℚ)

end

end A181858.P8382801163618489386

/-! ## A181858.P2711092549572896164

`A081123(n)²/A181859(n)`
-/

namespace A181858.P2711092549572896164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 n ^ 2 : ℚ) / (A181859 n : ℚ)

end

end A181858.P2711092549572896164

/-! ## A181858.P14819477575846649638

`A000142(n)/(A056040(n)*A181859(n))`
-/

namespace A181858.P14819477575846649638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A056040 n * A181859 n : ℚ)

end

end A181858.P14819477575846649638

/-! ## A181858.P7145786810848984060

`A000142(n)/gcd(A000142(n), A181860(n))`
-/

namespace A181858.P7145786810848984060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A181860 n) : ℚ)

end

end A181858.P7145786810848984060

/-!
# A181859: a(n) = gcd(n^2, n!) / gcd(n^2, n!/floor(n/2)!^2).

The programs for A181859, the canonical program `A181859.P4479481855627894338` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181859 has offset 0).

The definition of A181859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181859.P4479481855627894338

`gcd(n², n!)/gcd(n², n!/floor(n/2)!²)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181859

/-- `gcd(n², n!)/gcd(n², n!/floor(n/2)!²)` -/
def P4479481855627894338.Spec : Prop :=
  ∀ n, P4479481855627894338.a n = (A181859 n : ℚ)

end A181859

/-! ## A181859.P4231071602141331162

`A170826(round(sqrt(n²+1)))/A181861(n)`
-/

namespace A181859.P4231071602141331162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170826 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / (A181861 n : ℚ)

end

end A181859.P4231071602141331162

namespace A181859

/-- `A170826(round(sqrt(n²+1)))/A181861(n)` -/
def P4231071602141331162.Spec : Prop :=
  ∀ n, P4231071602141331162.a n = (A181859 n : ℚ)

end A181859

/-! ## A181859.P2557678802474129382

`A170826(A028310(n))/gcd(n², A001405(n))`
-/

namespace A181859.P2557678802474129382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170826 (A028310 n).toNat : ℚ) / (Int.gcd (n ^ 2 : ℤ) (A001405 n) : ℚ)

end

end A181859.P2557678802474129382

namespace A181859

/-- `A170826(A028310(n))/gcd(n², A001405(n))` -/
def P2557678802474129382.Spec : Prop :=
  ∀ n, P2557678802474129382.a n = (A181859 n : ℚ)

end A181859

/-! ## A181859.P5198025099970435503

`A170826(A028310(n))/gcd(A103390(n+1), A126930(n))`
-/

namespace A181859.P5198025099970435503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170826 (A028310 n).toNat : ℚ) / (Int.gcd (A103390 (n + 1)) (A126930 n) : ℚ)

end

end A181859.P5198025099970435503

namespace A181859

/-- `A170826(A028310(n))/gcd(A103390(n+1), A126930(n))` -/
def P5198025099970435503.Spec : Prop :=
  ∀ n, P5198025099970435503.a n = (A181859 n : ℚ)

end A181859

/-! ## A181859.P8345964091795682523

`A170826(A028310(n))/gcd(A000290(n), A056040(n))`
-/

namespace A181859.P8345964091795682523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170826 (A028310 n).toNat : ℚ) / (Int.gcd (A000290 n) (A056040 n) : ℚ)

end

end A181859.P8345964091795682523

namespace A181859

/-- `A170826(A028310(n))/gcd(A000290(n), A056040(n))` -/
def P8345964091795682523.Spec : Prop :=
  ∀ n, P8345964091795682523.a n = (A181859 n : ℚ)

end A181859

/-! ## A181859.P7047426371207604189

`A170826(A028310(n))/gcd(A253909(n), A331552(n))`
-/

namespace A181859.P7047426371207604189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170826 (A028310 n).toNat : ℚ) / (Int.gcd (A253909 n) (A331552 n) : ℚ)

end

end A181859.P7047426371207604189

namespace A181859

/-- `A170826(A028310(n))/gcd(A253909(n), A331552(n))` -/
def P7047426371207604189.Spec : Prop :=
  ∀ n, P7047426371207604189.a n = (A181859 n : ℚ)

end A181859

/-! ## A181859.P6092916045925655844

`gcd(n²/A181861(n), A124441(n+1)²)`
-/

namespace A181859.P6092916045925655844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (A181861 n : ℚ))) (A124441 (n + 1) ^ 2)

end

end A181859.P6092916045925655844

namespace A181859

/-- `gcd(n²/A181861(n), A124441(n+1)²)` -/
def P6092916045925655844.Spec : Prop :=
  ∀ n, (P6092916045925655844.a n : ℤ) = A181859 n

end A181859

/-! ## A181859.P9886597523145175637

`gcd(A000142(n), A181860(n))/A056040(n)`
-/

namespace A181859.P9886597523145175637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000142 n) (A181860 n) : ℚ) / (A056040 n : ℚ)

end

end A181859.P9886597523145175637

namespace A181859

/-- `gcd(A000142(n), A181860(n))/A056040(n)` -/
def P9886597523145175637.Spec : Prop :=
  ∀ n, P9886597523145175637.a n = (A181859 n : ℚ)

end A181859

/-!
# A181860: a(n) = lcm(n^2, swinging_factorial(n)).

The programs for A181860, the canonical program `A181860.P3820670353524876626` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181860 has offset 0).

The definition of A181860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181860.P3820670353524876626

`lcm(A000290(n), A056040(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181860

/-- `lcm(A000290(n), A056040(n))` -/
def P3820670353524876626.Spec : Prop :=
  ∀ n, (P3820670353524876626.a n : ℤ) = A181860 n

theorem P3820670353524876626.correct : P3820670353524876626.Spec := by
  intro n
  simp only [A181860]

end A181860

/-! ## A181860.P16140653518043981916

`n²/A181861(n)*A056040(n)`
-/

namespace A181860.P16140653518043981916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (A181861 n : ℚ) * (A056040 n : ℚ)

end

end A181860.P16140653518043981916

namespace A181860

/-- `n²/A181861(n)*A056040(n)` -/
def P16140653518043981916.Spec : Prop :=
  ∀ n, P16140653518043981916.a n = (A181860 n : ℚ)

end A181860

/-! ## A181860.P15772376033043406697

`A056040(n)/A181861(n)*A000290(n)`
-/

namespace A181860.P15772376033043406697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A181861 n : ℚ) * (A000290 n : ℚ)

end

end A181860.P15772376033043406697

namespace A181860

/-- `A056040(n)/A181861(n)*A000290(n)` -/
def P15772376033043406697.Spec : Prop :=
  ∀ n, P15772376033043406697.a n = (A181860 n : ℚ)

end A181860

/-! ## A181860.P7630334559889740438

`A056040(n)/A181861(n)*record[A289506(n+1)]`
-/

namespace A181860.P7630334559889740438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A181861 n : ℚ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A181860.P7630334559889740438

namespace A181860

/-- `A056040(n)/A181861(n)*record[A289506(n+1)]` -/
def P7630334559889740438.Spec : Prop :=
  ∀ n, P7630334559889740438.a n = (A181860 n : ℚ)

end A181860

/-! ## A181860.P3372990421791243655

`A181857(n)/A181858(n)`
-/

namespace A181860.P3372990421791243655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181857 n : ℚ) / (A181858 n : ℚ)

end

end A181860.P3372990421791243655

namespace A181860

/-- `A181857(n)/A181858(n)` -/
def P3372990421791243655.Spec : Prop :=
  ∀ n, P3372990421791243655.a n = (A181860 n : ℚ)

end A181860

/-!
# A181861: a(n) = gcd(n^2, n!/floor(n/2)!^2).

The programs for A181861, the canonical program `A181861.P12787623540589543753` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181861 has offset 0).

The definition of A181861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n², n!/floor(n/2)!²)` (program `A181861.P12787623540589543753`, by `A181861.P12787623540589543753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181861.P15972465504003726078

`gcd(A000290(n), A056040(n))`
-/

namespace A181861.P15972465504003726078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 n) (A056040 n)

end

end A181861.P15972465504003726078

namespace A181861

/-- `gcd(A000290(n), A056040(n))` -/
def P15972465504003726078.Spec : Prop :=
  ∀ n, (P15972465504003726078.a n : ℤ) = A181861 n

theorem P15972465504003726078.correct : P15972465504003726078.Spec := by
  intro n
  simp only [A181861, Nat.add_sub_cancel, A181861.P15972465504003726078.a, A181861.P12787623540589543753.a, A000290, A000290.P12206242496348924484.a, A056040, A056040.P782074390748687976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181861

/-! ## A181861.P12787623540589543753

`gcd(n², n!/floor(n/2)!²)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181861

/-- `gcd(n², n!/floor(n/2)!²)` -/
def P12787623540589543753.Spec : Prop :=
  ∀ n, (P12787623540589543753.a n : ℤ) = A181861 n

theorem P12787623540589543753.correct : P12787623540589543753.Spec := by
  intro n
  simp only [A181861]

end A181861

/-! ## A181861.P17651606884576777267

`gcd(n², A001405(n))`
-/

namespace A181861.P17651606884576777267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A001405 n)

end

end A181861.P17651606884576777267

namespace A181861

/-- `gcd(n², A001405(n))` -/
def P17651606884576777267.Spec : Prop :=
  ∀ n, (P17651606884576777267.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P4768337521642405901

`gcd(A014495(n)+1, n^2)`
-/

namespace A181861.P4768337521642405901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014495 n + 1) (n ^ 2 : ℤ)

end

end A181861.P4768337521642405901

namespace A181861

/-- `gcd(A014495(n)+1, n^2)` -/
def P4768337521642405901.Spec : Prop :=
  ∀ n, (P4768337521642405901.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P1665487975907669620

`gcd(A028310(n)², A126930(n))`
-/

namespace A181861.P1665487975907669620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n ^ 2) (A126930 n)

end

end A181861.P1665487975907669620

namespace A181861

/-- `gcd(A028310(n)², A126930(n))` -/
def P1665487975907669620.Spec : Prop :=
  ∀ n, (P1665487975907669620.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P4343892928876713638

`gcd(A126930(n)+n², A103390(n+1))`
-/

namespace A181861.P4343892928876713638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126930 n + (n ^ 2 : ℤ)) (A103390 (n + 1))

end

end A181861.P4343892928876713638

namespace A181861

/-- `gcd(A126930(n)+n², A103390(n+1))` -/
def P4343892928876713638.Spec : Prop :=
  ∀ n, (P4343892928876713638.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P6027950971335308493

`gcd(A110660(2*n)-n, A210736(n+1))`
-/

namespace A181861.P6027950971335308493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110660 (2 * n) - (n : ℤ)) (A210736 (n + 1))

end

end A181861.P6027950971335308493

namespace A181861

/-- `gcd(A110660(2*n)-n, A210736(n+1))` -/
def P6027950971335308493.Spec : Prop :=
  ∀ n, (P6027950971335308493.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P13876479712620646867

`gcd(A103390(n+1), A126930(A028310(n)))`
-/

namespace A181861.P13876479712620646867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103390 (n + 1)) (A126930 (A028310 n).toNat)

end

end A181861.P13876479712620646867

namespace A181861

/-- `gcd(A103390(n+1), A126930(A028310(n)))` -/
def P13876479712620646867.Spec : Prop :=
  ∀ n, (P13876479712620646867.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P1939912133245212846

`gcd(A004526(2*n)², A000984(A004526(n+1)))`
-/

namespace A181861.P1939912133245212846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 (2 * n) ^ 2) (A000984 (A004526 (n + 1)).toNat)

end

end A181861.P1939912133245212846

namespace A181861

/-- `gcd(A004526(2*n)², A000984(A004526(n+1)))` -/
def P1939912133245212846.Spec : Prop :=
  ∀ n, (P1939912133245212846.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P11185113180463138065

`gcd(A242172(n), A253909(n))`
-/

namespace A181861.P11185113180463138065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242172 n) (A253909 n)

end

end A181861.P11185113180463138065

namespace A181861

/-- `gcd(A242172(n), A253909(n))` -/
def P11185113180463138065.Spec : Prop :=
  ∀ n, (P11185113180463138065.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P15521115321147735483

`gcd(A103390(n+1), A331552(n))`
-/

namespace A181861.P15521115321147735483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103390 (n + 1)) (A331552 n)

end

end A181861.P15521115321147735483

namespace A181861

/-- `gcd(A103390(n+1), A331552(n))` -/
def P15521115321147735483.Spec : Prop :=
  ∀ n, (P15521115321147735483.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P16964098382201251580

`gcd(A056040(n)+n², A181860(n))`
-/

namespace A181861.P16964098382201251580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056040 n + (n ^ 2 : ℤ)) (A181860 n)

end

end A181861.P16964098382201251580

namespace A181861

/-- `gcd(A056040(n)+n², A181860(n))` -/
def P16964098382201251580.Spec : Prop :=
  ∀ n, (P16964098382201251580.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P1717490175942627463

`gcd(A107231(n)+A103390(n+1), A107231(n))`
-/

namespace A181861.P1717490175942627463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107231 n + A103390 (n + 1)) (A107231 n)

end

end A181861.P1717490175942627463

namespace A181861

/-- `gcd(A107231(n)+A103390(n+1), A107231(n))` -/
def P1717490175942627463.Spec : Prop :=
  ∀ n, (P1717490175942627463.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P6762445607453146910

`gcd(n*n, C(n, A004526(n)))`
-/

namespace A181861.P6762445607453146910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n * n) (Nat.choose n (A004526 n).toNat)

end

end A181861.P6762445607453146910

namespace A181861

/-- `gcd(n*n, C(n, A004526(n)))` -/
def P6762445607453146910.Spec : Prop :=
  ∀ n, (P6762445607453146910.a n : ℤ) = A181861 n

end A181861

/-! ## A181861.P14027985000169966523

`gcd(A028310(n²), A061554(∑[n]))`
-/

namespace A181861.P14027985000169966523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (n ^ 2)) (A061554 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A181861.P14027985000169966523

namespace A181861

/-- `gcd(A028310(n²), A061554(∑[n]))` -/
def P14027985000169966523.Spec : Prop :=
  ∀ n, (P14027985000169966523.a n : ℤ) = A181861 n

end A181861

/-!
# A181862: Decimal sturdy numbers: positive integers m such that sum of digits of k * m for any positive integer k is at least the sum of digits of m.

The programs for A181862, there is no canonical definition to state claims against.
-/

/-! ## A181862.P11687336842428989698

`eq[A007953(n+1), A077196(n+1)]+1`
-/

namespace A181862.P11687336842428989698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A181862.P11687336842428989698

/-! ## A181862.P1549938394443285279

`eq[A007953(n), A077196(A008706(n))]`
-/

namespace A181862.P1549938394443285279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181862.P1549938394443285279

/-! ## A181862.P14311376294723611725

`eq[A007953(n), A077196(A028310(n))]`
-/

namespace A181862.P14311376294723611725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181862.P14311376294723611725

/-! ## A181862.P4145967300415584380

`eq[A007953(n), A077196(A184418(n))]`
-/

namespace A181862.P4145967300415584380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A184418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181862.P4145967300415584380

/-! ## A181862.P11774280074912265986

`eq[A007953(n), A077196(A008574(n))]`
-/

namespace A181862.P11774280074912265986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181862.P11774280074912265986

/-! ## A181862.P3514650692298244916

`eq[A007953(n), A077196(A233583(n+1))]`
-/

namespace A181862.P3514650692298244916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181862.P3514650692298244916

/-!
# A181867: a(1) = 2, a(2) = 1. For n >= 3, a(n) is found by concatenating the first n-1 terms of the sequence in reverse order and then dividing the resulting number by a(n-1).

The programs for A181867, there is no canonical definition to state claims against.
-/

/-! ## A181867.P12953426522859058151

`A304749(A111277(n))+(n+1)%2`
-/

namespace A181867.P12953426522859058151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304749 (A111277 n).toNat + (((n + 1) % 2 : ℕ) : ℤ)

end

end A181867.P12953426522859058151

/-!
# A181868: a(1) = 10, a(2) = 1. For n >= 3, a(n) = concatenate a(n-1), a(n-2), ..., a(1) and then divide the resulting number by a(n-1).

The programs for A181868, there is no canonical definition to state claims against.
-/

/-! ## A181868.P12144509281743637542

`A204009(A000032(n)*A344607(n))`
-/

namespace A181868.P12144509281743637542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204009 (A000032 n * A344607 n).toNat

end

end A181868.P12144509281743637542

/-!
# A181872: Numerators of coefficient array for minimal polynomials of sin(2*Pi/n). Rising powers of x.

The programs for A181872, there is no canonical definition to state claims against.
-/

/-! ## A181872.P14245454302362553919

`A231188(n+1)/gcd(8, A231188(n+1))`
-/

namespace A181872.P14245454302362553919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231188 (n + 1) : ℚ) / (Int.gcd 8 (A231188 (n + 1)) : ℚ)

end

end A181872.P14245454302362553919

/-! ## A181872.P16859656200980464427

`A231188(n+1)/A136441(A079213(n))`
-/

namespace A181872.P16859656200980464427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231188 (n + 1) : ℚ) / (A136441 (A079213 n).toNat : ℚ)

end

end A181872.P16859656200980464427

/-! ## A181872.P15135288288727289836

`A231188(n+1)/A181876(A078812(n))`
-/

namespace A181872.P15135288288727289836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231188 (n + 1) : ℚ) / (A181876 (A078812 n).toNat : ℚ)

end

end A181872.P15135288288727289836

/-! ## A181872.P8052024548023922364

`A231188(n+1)+A025465(A239342(n))`
-/

namespace A181872.P8052024548023922364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231188 (n + 1) + A025465 (A239342 n).toNat

end

end A181872.P8052024548023922364

/-! ## A181872.P10076853724712619915

`A231188(n+1)/A003557(A216604(n))`
-/

namespace A181872.P10076853724712619915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231188 (n + 1) : ℚ) / (A003557 (A216604 n).toNat : ℚ)

end

end A181872.P10076853724712619915

/-!
# A181874: Minute hand closest to hour hand on analog quartz clock. Best approximation for seconds.

The programs for A181874, there is no canonical definition to state claims against.
-/

/-! ## A181874.P15881332570789583887

`A335789(n)%A040870(n)`
-/

namespace A181874.P15881332570789583887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335789 n) (A040870 n)

end

end A181874.P15881332570789583887

/-!
# A181875: Numerator of coefficient array of minimal polynomials of cos(2Pi/n). Rising powers in x.

The programs for A181875, there is no canonical definition to state claims against.
-/

/-! ## A181875.P4658585767435812527

`A166234(A136944(n+1)+4)`
-/

namespace A181875.P4658585767435812527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (A136944 (n + 1) + 4).toNat

end

end A181875.P4658585767435812527

/-! ## A181875.P5919895428819404432

`A051508(A051480(3*n+2))^A042733(n)`
-/

namespace A181875.P5919895428819404432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051508 (A051480 (3 * n + 2)).toNat : ℚ) ^ (A042733 n : ℤ)

end

end A181875.P5919895428819404432

/-! ## A181875.P526711193374761973

`A307420(lcm(A006702(n+1), A226812(n+1)))`
-/

namespace A181875.P526711193374761973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307420 (Int.lcm (A006702 (n + 1)) (A226812 (n + 1)))

end

end A181875.P526711193374761973

/-! ## A181875.P1326301219167391018

`A046980(A338801(n+3)%A338809(n+3))`
-/

namespace A181875.P1326301219167391018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (Int.tmod (A338801 (n + 3)) (A338809 (n + 3))).toNat

end

end A181875.P1326301219167391018

/-! ## A181875.P562207376119428694

`A008683(A121216(A248647(n+4)*A251604(2*n+1)))`
-/

namespace A181875.P562207376119428694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A121216 (A248647 (n + 4) * A251604 (2 * n + 1)).toNat).toNat

end

end A181875.P562207376119428694

/-!
# A181876: Denominators of coefficient array of minimal polynomials of cos(2*Pi/n). Rising powers in x.

The programs for A181876, there is no canonical definition to state claims against.
-/

/-! ## A181876.P4562964913604820922

`gcd(A162510(A229186(n)), A352690(n))`
-/

namespace A181876.P4562964913604820922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162510 (A229186 n).toNat) (A352690 n)

end

end A181876.P4562964913604820922

/-! ## A181876.P8188595509177101000

`A202053(A161804(n+2)+A063558(n))`
-/

namespace A181876.P8188595509177101000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A161804 (n + 2) + A063558 n).toNat

end

end A181876.P8188595509177101000

/-! ## A181876.P6128323420379296412

`A295658(lcm(A027861(n+1), A189064(n+1)))`
-/

namespace A181876.P6128323420379296412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (Int.lcm (A027861 (n + 1)) (A189064 (n + 1)))

end

end A181876.P6128323420379296412

/-! ## A181876.P17986842259763668469

`A115621(A164340(n+1)-A286151(n))`
-/

namespace A181876.P17986842259763668469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115621 (A164340 (n + 1) - A286151 n).toNat

end

end A181876.P17986842259763668469

/-!
# A181878: Coefficient array for square of Chebyshev S-polynomials.

The programs for A181878, there is no canonical definition to state claims against.
-/

/-! ## A181878.P17447184117169271266

`A158454(lt[0, A059260(n)])`
-/

namespace A181878.P17447184117169271266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A181878.P17447184117169271266

/-! ## A181878.P16357355562883232466

`A158454(comp[∑[A016813(n)]])`
-/

namespace A181878.P16357355562883232466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A181878.P16357355562883232466

/-! ## A181878.P2554887759322188763

`A158454(comp[Δ[A002412(n)]])`
-/

namespace A181878.P2554887759322188763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A181878.P2554887759322188763

/-! ## A181878.P8946043789153641841

`A158454(lt[0, A158454(n)²])`
-/

namespace A181878.P8946043789153641841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A181878.P8946043789153641841

/-! ## A181878.P7216146755573127076

`A158454(lt[0, dr(A158454(n))])`
-/

namespace A181878.P7216146755573127076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A158454 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181878.P7216146755573127076

/-! ## A181878.P6297644361610445723

`A158454(comp[eq[0, A158454(n)]])`
-/

namespace A181878.P6297644361610445723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A181878.P6297644361610445723

/-! ## A181878.P442700004382156853

`A158454(lt[cos(A158454(n)), 1])`
-/

namespace A181878.P442700004382156853
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A158454 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A181878.P442700004382156853

/-! ## A181878.P1948105798114138497

`A158454(comp[∑[A005408(2*n)]])`
-/

namespace A181878.P1948105798114138497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A181878.P1948105798114138497

/-! ## A181878.P12704639233295029772

`A158454(comp[A000217(2*n+1)])`
-/

namespace A181878.P12704639233295029772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A181878.P12704639233295029772

/-!
# A181879: Expansion of x*(1+x)/(1-3*x-4*x^2-x^3).

The programs for A181879, the canonical program `A181879.P13440356320317614765` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181879 has offset 0).

The definition of A181879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2)/(1-3x-4x^2-x^3))` (program `A181879.P13440356320317614765`, by `A181879.P13440356320317614765.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181879.P13440356320317614765

`ogf((x+x^2)/(1-3x-4x^2-x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181879

/-- `ogf((x+x^2)/(1-3x-4x^2-x^3))` -/
def P13440356320317614765.Spec : Prop :=
  ∀ n, P13440356320317614765.a n = A181879 n

theorem P13440356320317614765.correct : P13440356320317614765.Spec := by
  intro n
  simp only [A181879]

end A181879

/-! ## A181879.P6486847948635034412

`3*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A181879.P6486847948635034412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  3 * a (n - 1) + 4 * a (n - 2) + a (n - 3)

end

end A181879.P6486847948635034412

namespace A181879

/-- `3*a(n-1)+4*a(n-2)+a(n-3)` -/
def P6486847948635034412.Spec : Prop :=
  ∀ n, (P6486847948635034412.a n : ℤ) = A181879 n

end A181879

/-! ## A181879.P12034616116578449425

`abs(a(n-1)-A321703(n))` with `a(0)=0`
-/

namespace A181879.P12034616116578449425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1) - A321703 n|

end

end A181879.P12034616116578449425

namespace A181879

/-- `abs(a(n-1)-A321703(n))` -/
def P12034616116578449425.Spec : Prop :=
  ∀ n, P12034616116578449425.a n = A181879 n

end A181879

/-! ## A181879.P5662592778799668654

`A215100(n)+A321715(n)-A215076(n)`
-/

namespace A181879.P5662592778799668654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215100 n + (A321715 n - A215076 n)

end

end A181879.P5662592778799668654

namespace A181879

/-- `A215100(n)+A321715(n)-A215076(n)` -/
def P5662592778799668654.Spec : Prop :=
  ∀ n, P5662592778799668654.a n = A181879 n

end A181879

/-! ## A181879.P2708937472997511882

`(A215100(n)-A321703(n))%A122600(n)`
-/

namespace A181879.P2708937472997511882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215100 n - A321703 n) (A122600 n)

end

end A181879.P2708937472997511882

namespace A181879

/-- `(A215100(n)-A321703(n))%A122600(n)` -/
def P2708937472997511882.Spec : Prop :=
  ∀ n, P2708937472997511882.a n = A181879 n

end A181879

/-! ## A181879.P12240959082410908529

`A120757(n+2)-(A321703(n+1)+A321703(n))`
-/

namespace A181879.P12240959082410908529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120757 (n + 2) - (A321703 (n + 1) + A321703 n)

end

end A181879.P12240959082410908529

namespace A181879

/-- `A120757(n+2)-(A321703(n+1)+A321703(n))` -/
def P12240959082410908529.Spec : Prop :=
  ∀ n, P12240959082410908529.a n = A181879 n

end A181879

/-! ## A181879.P6201931607932829855

`A321703(n+3)%A321703(n+2)`
-/

namespace A181879.P6201931607932829855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321703 (n + 3)) (A321703 (n + 2))

end

end A181879.P6201931607932829855

namespace A181879

/-- `A321703(n+3)%A321703(n+2)` -/
def P6201931607932829855.Spec : Prop :=
  ∀ n, P6201931607932829855.a n = A181879 n

end A181879

/-!
# A181880: Expansion of 1/(1-4*x-3*x^2-x^3).

The programs for A181880, the canonical program `A181880.P14155930703483302184` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181880 has offset 0).

The definition of A181880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x-3x^2-x^3))` (program `A181880.P14155930703483302184`, by `A181880.P14155930703483302184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181880.P14155930703483302184

`ogf(1/(1-4x-3x^2-x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181880

/-- `ogf(1/(1-4x-3x^2-x^3))` -/
def P14155930703483302184.Spec : Prop :=
  ∀ n, P14155930703483302184.a n = A181880 n

theorem P14155930703483302184.correct : P14155930703483302184.Spec := by
  intro n
  simp only [A181880]

end A181880

/-! ## A181880.P11962406816009596665

`A310442(a(n-1)-a(n-3))` with `a(0)=1, a(1)=4, a(2)=19`
-/

namespace A181880.P11962406816009596665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 19] fun n a =>
  A310442 (a (n - 1) - a (n - 3)).toNat

end

end A181880.P11962406816009596665

namespace A181880

/-- `A310442(a(n-1)-a(n-3))` -/
def P11962406816009596665.Spec : Prop :=
  ∀ n, P11962406816009596665.a n = A181880 n

end A181880

/-!
# A181881: The sums of pairs of adjacent terms are the odd palindromic primes in ascending order.

The programs for A181881, the canonical program `A181881.P12715464390818184533` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181881 has offset 1).

The definition of A181881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181881.P6733250396199971785

`A037010(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A181881.P6733250396199971785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A037010 n + a (n - 2)

end

end A181881.P6733250396199971785

namespace A181881

/-- `A037010(n)+a(n-2)` -/
def P6733250396199971785.Spec : Prop :=
  ∀ n, P6733250396199971785.a n = A181881 (n + 1)

end A181881

/-! ## A181881.P17597414585355120486

`A002385(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A181881.P17597414585355120486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002385 (n + 1) - a (n - 1)

end

end A181881.P17597414585355120486

namespace A181881

/-- `A002385(n+1)-a(n-1)` -/
def P17597414585355120486.Spec : Prop :=
  ∀ n, P17597414585355120486.a n = A181881 (n + 1)

end A181881

/-! ## A181881.P12715464390818184533

`A069217(n+2)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A181881

/-- `A069217(n+2)-a(n-1)` -/
def P12715464390818184533.Spec : Prop :=
  ∀ n, P12715464390818184533.a n = A181881 (n + 1)

theorem P12715464390818184533.correct : P12715464390818184533.Spec := by
  intro n
  simp only [A181881, Nat.add_sub_cancel]

end A181881

/-! ## A181881.P14435059398188286073

`p?[A002113(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A181881.P14435059398188286073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - a (n - 1)

end

end A181881.P14435059398188286073

namespace A181881

/-- `p?[A002113(n+1)]-a(n-1)` -/
def P14435059398188286073.Spec : Prop :=
  ∀ n, P14435059398188286073.a n = A181881 (n + 1)

end A181881

/-! ## A181881.P5613844539938952606

`p?[A061917(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A181881.P5613844539938952606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - a (n - 1)

end

end A181881.P5613844539938952606

namespace A181881

/-- `p?[A061917(n+1)]-a(n-1)` -/
def P5613844539938952606.Spec : Prop :=
  ∀ n, P5613844539938952606.a n = A181881 (n + 1)

end A181881

/-! ## A181881.P1138076895453406752

`p?[A062687(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A181881.P1138076895453406752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - a (n - 1)

end

end A181881.P1138076895453406752

namespace A181881

/-- `p?[A062687(n+1)]-a(n-1)` -/
def P1138076895453406752.Spec : Prop :=
  ∀ n, P1138076895453406752.a n = A181881 (n + 1)

end A181881

/-! ## A181881.P13802791586479295061

`A000040(A075807(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A181881.P13802791586479295061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A075807 (n + 1)).toNat - a (n - 1)

end

end A181881.P13802791586479295061

namespace A181881

/-- `A000040(A075807(n+1))-a(n-1)` -/
def P13802791586479295061.Spec : Prop :=
  ∀ n, P13802791586479295061.a n = A181881 (n + 1)

end A181881

/-!
# A181882: The sums of pairs of adjacent terms are the odd palindromic primes in ascending order.

The programs for A181882, there is no canonical definition to state claims against.
-/

/-! ## A181882.P8804574158962642422

`xor(1, A181884(n+1))`
-/

namespace A181882.P8804574158962642422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A181884 (n + 1))

end

end A181882.P8804574158962642422

/-! ## A181882.P5908008081633852991

`abs(xor(1, -A181881(n+1)))`
-/

namespace A181882.P5908008081633852991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A181881 (n + 1))|

end

end A181882.P5908008081633852991

/-! ## A181882.P13172253817931948106

`A037010(n)+a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A181882.P13172253817931948106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A037010 n + a (n - 2)

end

end A181882.P13172253817931948106

/-! ## A181882.P10637503927960079208

`A002385(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A181882.P10637503927960079208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A002385 (n + 1) - a (n - 1)

end

end A181882.P10637503927960079208

/-!
# A181883: The sums of pairs of adjacent terms are the odd palindromic primes in ascending order.

The programs for A181883, there is no canonical definition to state claims against.
-/

/-! ## A181883.P5796461110590966252

`xor(1, A181881(n+1))`
-/

namespace A181883.P5796461110590966252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A181881 (n + 1))

end

end A181883.P5796461110590966252

/-! ## A181883.P2647663954818344607

`A037010(n)+a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A181883.P2647663954818344607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A037010 n + a (n - 2)

end

end A181883.P2647663954818344607

/-! ## A181883.P117929931511732669

`A002385(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A181883.P117929931511732669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002385 (n + 1) - a (n - 1)

end

end A181883.P117929931511732669

/-! ## A181883.P188435758376180885

`A069217(n+2)-a(n-1)` with `a(0)=0`
-/

namespace A181883.P188435758376180885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A069217 (n + 2) - a (n - 1)

end

end A181883.P188435758376180885

/-!
# A181884: The sums of pairs of adjacent terms are the odd palindromic primes in ascending order.

The programs for A181884, there is no canonical definition to state claims against.
-/

/-! ## A181884.P1868231076471386571

`A037010(n)+a(n-2)` with `a(0)=3, a(1)=0`
-/

namespace A181884.P1868231076471386571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  A037010 n + a (n - 2)

end

end A181884.P1868231076471386571

/-! ## A181884.P4688204268670376211

`A002385(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A181884.P4688204268670376211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002385 (n + 1) - a (n - 1)

end

end A181884.P4688204268670376211

/-! ## A181884.P11833670444154726899

`A069217(n+2)-a(n-1)` with `a(0)=3`
-/

namespace A181884.P11833670444154726899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A069217 (n + 2) - a (n - 1)

end

end A181884.P11833670444154726899

/-! ## A181884.P6231702712859471222

`A181881(n+1)+2*A033999(n)`
-/

namespace A181884.P6231702712859471222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181881 (n + 1) + 2 * A033999 n

end

end A181884.P6231702712859471222

/-!
# A181885: Integer nearest (1/n)*(r^n), where r = golden ratio = (1 + sqrt(5))/2.

The programs for A181885, the canonical program `A181885.P14883550393651596796` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181885 has offset 1).

The definition of A181885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181885.P14883550393651596796

`round(((1+sqrt(5))/2)^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181885

/-- `round(((1+sqrt(5))/2)^(n+1)/(n+1))` -/
def P14883550393651596796.Spec : Prop :=
  ∀ n, P14883550393651596796.a n = A181885 (n + 1)

theorem P14883550393651596796.correct : P14883550393651596796.Spec := by
  intro n
  simp only [A181885, Nat.add_sub_cancel]

end A181885

/-! ## A181885.P8757090734348655597

`round(record[A000032(n)]/(n+1))-char[1]`
-/

namespace A181885.P8757090734348655597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181885.P8757090734348655597

namespace A181885

/-- `round(record[A000032(n)]/(n+1))-char[1]` -/
def P8757090734348655597.Spec : Prop :=
  ∀ n, P8757090734348655597.a n = A181885 (n + 1)

end A181885

/-! ## A181885.P14828191073299676156

`floor((record[A000032(n)]+n-A004525(n))/(n+1))`
-/

namespace A181885.P14828191073299676156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - A004525 n) : ℚ) / (n + 1 : ℚ)⌋

end

end A181885.P14828191073299676156

namespace A181885

/-- `floor((record[A000032(n)]+n-A004525(n))/(n+1))` -/
def P14828191073299676156.Spec : Prop :=
  ∀ n, P14828191073299676156.a n = A181885 (n + 1)

end A181885

/-! ## A181885.P16586480053030827261

`ceil((record[2*A000032(n)]/(n+1)-A057427(n))/2)`
-/

namespace A181885.P16586480053030827261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ) - (A057427 n : ℚ)) / 2⌉

end

end A181885.P16586480053030827261

namespace A181885

/-- `ceil((record[2*A000032(n)]/(n+1)-A057427(n))/2)` -/
def P16586480053030827261.Spec : Prop :=
  ∀ n, P16586480053030827261.a n = A181885 (n + 1)

end A181885

/-! ## A181885.P7625206659744933588

`A000194(A202842(n)+A013632(n))`
-/

namespace A181885.P7625206659744933588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A202842 n + A013632 n).toNat

end

end A181885.P7625206659744933588

namespace A181885

/-- `A000194(A202842(n)+A013632(n))` -/
def P7625206659744933588.Spec : Prop :=
  ∀ n, P7625206659744933588.a n = A181885 (n + 1)

end A181885

/-!
# A181886: Lower Beatty array of the golden ratio, (1+sqrt(5))/2.

The programs for A181886, there is no canonical definition to state claims against.
-/

/-! ## A181886.P18396164606016816020

`A181661(n+1)-(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A181886.P18396164606016816020
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181661 (n + 1) - (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))

end

end A181886.P18396164606016816020

/-! ## A181886.P9929447136898312408

`A181661(n+1)-A002260(n+1)`
-/

namespace A181886.P9929447136898312408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181661 (n + 1) - A002260 (n + 1)

end

end A181886.P9929447136898312408

/-! ## A181886.P13792306130292572112

`A181661(n+1)-(A002262(n)+1)`
-/

namespace A181886.P13792306130292572112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181661 (n + 1) - (A002262 n + 1)

end

end A181886.P13792306130292572112

/-! ## A181886.P7794745499129013589

`A181661(n+1)-abs(A140756(n+1))`
-/

namespace A181886.P7794745499129013589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181661 (n + 1) - |A140756 (n + 1)|

end

end A181886.P7794745499129013589

/-! ## A181886.P141890787540520343

`A181661(n+1)-(log2(A059268(n))+1)`
-/

namespace A181886.P141890787540520343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A181661 (n + 1) : ℝ) - (Real.logb 2 (A059268 n : ℝ) + 1)

end

end A181886.P141890787540520343

/-!
# A181887: a(0) = 0, and for n > 0, a(n) = A002956(n) - A000041(n).

The programs for A181887, there is no canonical definition to state claims against.
-/

/-! ## A181887.P6239132125750646719

`A002956(A028310(n))-A000041(n)`
-/

namespace A181887.P6239132125750646719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002956 (A028310 n).toNat - A000041 n

end

end A181887.P6239132125750646719

/-! ## A181887.P12094771623528609861

`A096337(A028310(n))-A000065(n)`
-/

namespace A181887.P12094771623528609861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096337 (A028310 n).toNat - A000065 n

end

end A181887.P12094771623528609861

/-! ## A181887.P8386160902239727372

`A000194(A108863(n)*A124072(n))`
-/

namespace A181887.P8386160902239727372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A108863 n * A124072 n).toNat

end

end A181887.P8386160902239727372

/-! ## A181887.P5883447363257025028

`A124757(lcm(A094033(n), A234025(n)))`
-/

namespace A181887.P5883447363257025028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (Int.lcm (A094033 n) (A234025 n))

end

end A181887.P5883447363257025028

/-! ## A181887.P7128391442281168324

`∑[A067275(n+1)%A000196(A328432(n))]`
-/

namespace A181887.P7128391442281168324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067275 (n + 1)) (A000196 (A328432 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181887.P7128391442281168324

/-!
# A181888: Second column of triangle in A182971.

The programs for A181888, the canonical program `A181888.P7881324943366322551` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181888 has offset 1).

The definition of A181888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181888.P7881324943366322551

`(n+1)*n*(n-1)*(5*(n+1)+12)*(n+3)*(n+2)/360`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181888

/-- `(n+1)*n*(n-1)*(5*(n+1)+12)*(n+3)*(n+2)/360` -/
def P7881324943366322551.Spec : Prop :=
  ∀ n, P7881324943366322551.a n = (A181888 (n + 1) : ℚ)

end A181888

/-! ## A181888.P3876043521613654014

`∑[(2*n+5)*C(n+2, 4)]`
-/

namespace A181888.P3876043521613654014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 5) * Nat.choose (n + 2) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181888.P3876043521613654014

namespace A181888

/-- `∑[(2*n+5)*C(n+2, 4)]` -/
def P3876043521613654014.Spec : Prop :=
  ∀ n, (P3876043521613654014.a n : ℤ) = A181888 (n + 1)

end A181888

/-! ## A181888.P10289675830920513944

`A001249(n)-A050406(n)`
-/

namespace A181888.P10289675830920513944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n - A050406 n

end

end A181888.P10289675830920513944

namespace A181888

/-- `A001249(n)-A050406(n)` -/
def P10289675830920513944.Spec : Prop :=
  ∀ n, P10289675830920513944.a n = A181888 (n + 1)

end A181888

/-! ## A181888.P13201911358198135617

`A108684(n)-A050405(n)`
-/

namespace A181888.P13201911358198135617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108684 n - A050405 n

end

end A181888.P13201911358198135617

namespace A181888

/-- `A108684(n)-A050405(n)` -/
def P13201911358198135617.Spec : Prop :=
  ∀ n, P13201911358198135617.a n = A181888 (n + 1)

end A181888

/-! ## A181888.P1015245719574197843

`A001249(A028310(n))%A050406(n)`
-/

namespace A181888.P1015245719574197843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001249 (A028310 n).toNat) (A050406 n)

end

end A181888.P1015245719574197843

namespace A181888

/-- `A001249(A028310(n))%A050406(n)` -/
def P1015245719574197843.Spec : Prop :=
  ∀ n, P1015245719574197843.a n = A181888 (n + 1)

end A181888

/-! ## A181888.P11527659424125069789

`A000217(A000292(n+1))-A024166(n+1)`
-/

namespace A181888.P11527659424125069789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000292 (n + 1)).toNat - A024166 (n + 1)

end

end A181888.P11527659424125069789

namespace A181888

/-- `A000217(A000292(n+1))-A024166(n+1)` -/
def P11527659424125069789.Spec : Prop :=
  ∀ n, P11527659424125069789.a n = A181888 (n + 1)

end A181888

/-!
# A181889: Bisection of A181888.

The programs for A181889, the canonical program `A181889.P13046580828679512166` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181889 has offset 1).

The definition of A181889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181889.P13046580828679512166

`2*(n+1)*n*(2*(n+1)+1)*(2*(n+1)-1)*(5*(n+1)+6)*(n+2)/45`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181889

/-- `2*(n+1)*n*(2*(n+1)+1)*(2*(n+1)-1)*(5*(n+1)+6)*(n+2)/45` -/
def P13046580828679512166.Spec : Prop :=
  ∀ n, P13046580828679512166.a n = (A181889 (n + 1) : ℚ)

end A181889

/-! ## A181889.P9390439677069706645

`A181888(2*(n+1))`
-/

namespace A181889.P9390439677069706645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181888 (2 * (n + 1))

end

end A181889.P9390439677069706645

namespace A181889

/-- `A181888(2*(n+1))` -/
def P9390439677069706645.Spec : Prop :=
  ∀ n, P9390439677069706645.a n = A181889 (n + 1)

end A181889

/-! ## A181889.P7124210481672148920

`record[lcm(n%2, A181888(n+1))]`
-/

namespace A181889.P7124210481672148920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 2 : ℕ) : ℤ) (A181888 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181889.P7124210481672148920

namespace A181889

/-- `record[lcm(n%2, A181888(n+1))]` -/
def P7124210481672148920.Spec : Prop :=
  ∀ n, (P7124210481672148920.a n : ℤ) = A181889 (n + 1)

end A181889

/-! ## A181889.P3990638452091701798

`record[A181888(A133265(n))]`
-/

namespace A181889.P3990638452091701798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181888 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181889.P3990638452091701798

namespace A181889

/-- `record[A181888(A133265(n))]` -/
def P3990638452091701798.Spec : Prop :=
  ∀ n, P3990638452091701798.a n = A181889 (n + 1)

end A181889

/-! ## A181889.P140830340111742614

`record[A181888(A014681(n+1))]`
-/

namespace A181889.P140830340111742614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181888 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181889.P140830340111742614

namespace A181889

/-- `record[A181888(A014681(n+1))]` -/
def P140830340111742614.Spec : Prop :=
  ∀ n, P140830340111742614.a n = A181889 (n + 1)

end A181889

/-! ## A181889.P5280902092390779316

`record[A181888(A026741(n)+1)]`
-/

namespace A181889.P5280902092390779316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181888 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181889.P5280902092390779316

namespace A181889

/-- `record[A181888(A026741(n)+1)]` -/
def P5280902092390779316.Spec : Prop :=
  ∀ n, P5280902092390779316.a n = A181889 (n + 1)

end A181889

/-! ## A181889.P8911685206542410361

`record[A181888(A010673(n+1)+n)]`
-/

namespace A181889.P8911685206542410361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181888 (A010673 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181889.P8911685206542410361

namespace A181889

/-- `record[A181888(A010673(n+1)+n)]` -/
def P8911685206542410361.Spec : Prop :=
  ∀ n, P8911685206542410361.a n = A181889 (n + 1)

end A181889

/-! ## A181889.P11175703147161119501

`A050406(2*n)-A005585(2*n+1)`
-/

namespace A181889.P11175703147161119501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050406 (2 * n) - A005585 (2 * n + 1)

end

end A181889.P11175703147161119501

namespace A181889

/-- `A050406(2*n)-A005585(2*n+1)` -/
def P11175703147161119501.Spec : Prop :=
  ∀ n, P11175703147161119501.a n = A181889 (n + 1)

end A181889

/-! ## A181889.P16757837620792192425

`A001249(2*n+1)-A050406(2*n+1)`
-/

namespace A181889.P16757837620792192425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 (2 * n + 1) - A050406 (2 * n + 1)

end

end A181889.P16757837620792192425

namespace A181889

/-- `A001249(2*n+1)-A050406(2*n+1)` -/
def P16757837620792192425.Spec : Prop :=
  ∀ n, P16757837620792192425.a n = A181889 (n + 1)

end A181889

/-! ## A181889.P10309947350465167794

`A108684(2*n+1)-A050405(2*n+1)`
-/

namespace A181889.P10309947350465167794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108684 (2 * n + 1) - A050405 (2 * n + 1)

end

end A181889.P10309947350465167794

namespace A181889

/-- `A108684(2*n+1)-A050405(2*n+1)` -/
def P10309947350465167794.Spec : Prop :=
  ∀ n, P10309947350465167794.a n = A181889 (n + 1)

end A181889

/-! ## A181889.P4835117877564966841

`record[A181888(A198954(n)+1)]`
-/

namespace A181889.P4835117877564966841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181888 (A198954 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181889.P4835117877564966841

namespace A181889

/-- `record[A181888(A198954(n)+1)]` -/
def P4835117877564966841.Spec : Prop :=
  ∀ n, P4835117877564966841.a n = A181889 (n + 1)

end A181889

/-!
# A181890: a(n) = 8*n^2 + 14*n + 5.

The programs for A181890, the canonical program `A181890.P1272920625310695173` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181890 has offset 0).

The definition of A181890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²+14*n+5` (program `A181890.P1272920625310695173`, by `A181890.P1272920625310695173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181890.P1272920625310695173

`8*n²+14*n+5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181890

/-- `8*n²+14*n+5` -/
def P1272920625310695173.Spec : Prop :=
  ∀ n, (P1272920625310695173.a n : ℤ) = A181890 n

theorem P1272920625310695173.correct : P1272920625310695173.Spec := by
  intro n
  simp only [A181890]

end A181890

/-! ## A181890.P8536734031482489614

`A014106(2*n+1)`
-/

namespace A181890.P8536734031482489614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 (2 * n + 1)

end

end A181890.P8536734031482489614

namespace A181890

/-- `A014106(2*n+1)` -/
def P8536734031482489614.Spec : Prop :=
  ∀ n, P8536734031482489614.a n = A181890 n

theorem P8536734031482489614.correct : P8536734031482489614.Spec := by
  intro n
  simp only [A181890, Nat.add_sub_cancel, A181890.P8536734031482489614.a, A181890.P1272920625310695173.a, A014106, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181890

/-! ## A181890.P13208774247369668315

`A160050(4*n+3)`
-/

namespace A181890.P13208774247369668315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160050 (4 * n + 3)

end

end A181890.P13208774247369668315

namespace A181890

/-- `A160050(4*n+3)` -/
def P13208774247369668315.Spec : Prop :=
  ∀ n, P13208774247369668315.a n = A181890 n

end A181890

/-! ## A181890.P16116503188061848139

`∑[a(n-1)+16]` with `a(0)=5, a(1)=22`
-/

namespace A181890.P16116503188061848139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 22] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181890.P16116503188061848139

namespace A181890

/-- `∑[a(n-1)+16]` -/
def P16116503188061848139.Spec : Prop :=
  ∀ n, (P16116503188061848139.a n : ℤ) = A181890 n

end A181890

/-! ## A181890.P3796276479359499542

`abs(1-C(4*(n+1), 2))`
-/

namespace A181890.P3796276479359499542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (4 * (n + 1)) 2 : ℤ)|

end

end A181890.P3796276479359499542

namespace A181890

/-- `abs(1-C(4*(n+1), 2))` -/
def P3796276479359499542.Spec : Prop :=
  ∀ n, P3796276479359499542.a n = A181890 n

end A181890

/-! ## A181890.P1608978805273988267

`record[(2*n+5)*xor(1, n)]`
-/

namespace A181890.P1608978805273988267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 5) * Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181890.P1608978805273988267

namespace A181890

/-- `record[(2*n+5)*xor(1, n)]` -/
def P1608978805273988267.Spec : Prop :=
  ∀ n, (P1608978805273988267.a n : ℤ) = A181890 n

end A181890

/-! ## A181890.P4903475103338524525

`(2*n+1)*Δ[C(2*(n+1), 2)]`
-/

namespace A181890.P4903475103338524525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A181890.P4903475103338524525

namespace A181890

/-- `(2*n+1)*Δ[C(2*(n+1), 2)]` -/
def P4903475103338524525.Spec : Prop :=
  ∀ n, P4903475103338524525.a n = A181890 n

theorem P4903475103338524525.correct : P4903475103338524525.Spec := by
  intro n
  simp only [A181890, Nat.add_sub_cancel, A181890.P4903475103338524525.f1, A181890.P4903475103338524525.a, A181890.P1272920625310695173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181890

/-! ## A181890.P12685792965053379007

`record[lcm(2*(n+1), n+3)-(n+1)]`
-/

namespace A181890.P12685792965053379007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * (n + 1)) (n + 3) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181890.P12685792965053379007

namespace A181890

/-- `record[lcm(2*(n+1), n+3)-(n+1)]` -/
def P12685792965053379007.Spec : Prop :=
  ∀ n, P12685792965053379007.a n = A181890 n

end A181890

/-! ## A181890.P2943422906786467871

`(lcm(2, 2*n+1)+3)*(2*n+1)`
-/

namespace A181890.P2943422906786467871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n + 1) + 3) * (2 * n + 1)

end

end A181890.P2943422906786467871

namespace A181890

/-- `(lcm(2, 2*n+1)+3)*(2*n+1)` -/
def P2943422906786467871.Spec : Prop :=
  ∀ n, (P2943422906786467871.a n : ℤ) = A181890 n

end A181890

/-! ## A181890.P12892267501419547747

`(2*n+1)*(A004767(n)+2)`
-/

namespace A181890.P12892267501419547747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (A004767 n + 2)

end

end A181890.P12892267501419547747

namespace A181890

/-- `(2*n+1)*(A004767(n)+2)` -/
def P12892267501419547747.Spec : Prop :=
  ∀ n, P12892267501419547747.a n = A181890 n

theorem P12892267501419547747.correct : P12892267501419547747.Spec := by
  intro n
  simp only [A181890, Nat.add_sub_cancel, A181890.P12892267501419547747.a, A181890.P1272920625310695173.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181890

/-! ## A181890.P11231580684014098224

`(2*n+1)*(Δ[A046092(n)]+1)`
-/

namespace A181890.P11231580684014098224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (f1 (n + 1) - f1 n + 1)

end

end A181890.P11231580684014098224

namespace A181890

/-- `(2*n+1)*(Δ[A046092(n)]+1)` -/
def P11231580684014098224.Spec : Prop :=
  ∀ n, P11231580684014098224.a n = A181890 n

theorem P11231580684014098224.correct : P11231580684014098224.Spec := by
  intro n
  simp only [A181890, Nat.add_sub_cancel, A181890.P11231580684014098224.f1, A181890.P11231580684014098224.a, A181890.P1272920625310695173.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181890

/-! ## A181890.P7278717629467110083

`(2*n+1)*(A016969(n)-2*n)`
-/

namespace A181890.P7278717629467110083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (A016969 n - (2 * n : ℤ))

end

end A181890.P7278717629467110083

namespace A181890

/-- `(2*n+1)*(A016969(n)-2*n)` -/
def P7278717629467110083.Spec : Prop :=
  ∀ n, P7278717629467110083.a n = A181890 n

theorem P7278717629467110083.correct : P7278717629467110083.Spec := by
  intro n
  simp only [A181890, Nat.add_sub_cancel, A181890.P7278717629467110083.a, A181890.P1272920625310695173.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181890

/-! ## A181890.P3442618722193514853

`(A016777(n+1)+n+1)*(2*n+1)`
-/

namespace A181890.P3442618722193514853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 (n + 1) + (n + 1 : ℤ)) * (2 * n + 1 : ℤ)

end

end A181890.P3442618722193514853

namespace A181890

/-- `(A016777(n+1)+n+1)*(2*n+1)` -/
def P3442618722193514853.Spec : Prop :=
  ∀ n, P3442618722193514853.a n = A181890 n

theorem P3442618722193514853.correct : P3442618722193514853.Spec := by
  intro n
  simp only [A181890, Nat.add_sub_cancel, A181890.P3442618722193514853.a, A181890.P1272920625310695173.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181890

/-! ## A181890.P3621589041889505926

`A158554(n+1)%A055437(n+1)`
-/

namespace A181890.P3621589041889505926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158554 (n + 1)) (A055437 (n + 1))

end

end A181890.P3621589041889505926

namespace A181890

/-- `A158554(n+1)%A055437(n+1)` -/
def P3621589041889505926.Spec : Prop :=
  ∀ n, P3621589041889505926.a n = A181890 n

end A181890

/-! ## A181890.P11432014995857988641

`A158551(n+1)%A154517(n+1)`
-/

namespace A181890.P11432014995857988641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158551 (n + 1)) (A154517 (n + 1))

end

end A181890.P11432014995857988641

namespace A181890

/-- `A158551(n+1)%A154517(n+1)` -/
def P11432014995857988641.Spec : Prop :=
  ∀ n, P11432014995857988641.a n = A181890 n

end A181890

/-! ## A181890.P3392773714241514303

`A158598(n+1)%A157474(n+1)`
-/

namespace A181890.P3392773714241514303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158598 (n + 1)) (A157474 (n + 1))

end

end A181890.P3392773714241514303

namespace A181890

/-- `A158598(n+1)%A157474(n+1)` -/
def P3392773714241514303.Spec : Prop :=
  ∀ n, P3392773714241514303.a n = A181890 n

end A181890

/-! ## A181890.P9575487207796961257

`A158774(n+1)%A157324(n+1)`
-/

namespace A181890.P9575487207796961257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158774 (n + 1)) (A157324 (n + 1))

end

end A181890.P9575487207796961257

namespace A181890

/-- `A158774(n+1)%A157324(n+1)` -/
def P9575487207796961257.Spec : Prop :=
  ∀ n, P9575487207796961257.a n = A181890 n

end A181890

/-! ## A181890.P11590252225812494983

`A158544(n+1)%A158056(n+1)`
-/

namespace A181890.P11590252225812494983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158544 (n + 1)) (A158056 (n + 1))

end

end A181890.P11590252225812494983

namespace A181890

/-- `A158544(n+1)%A158056(n+1)` -/
def P11590252225812494983.Spec : Prop :=
  ∀ n, P11590252225812494983.a n = A181890 n

end A181890

/-! ## A181890.P1154769896603373414

`A158628(n+1)%A158064(n+1)`
-/

namespace A181890.P1154769896603373414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158628 (n + 1)) (A158064 (n + 1))

end

end A181890.P1154769896603373414

namespace A181890

/-- `A158628(n+1)%A158064(n+1)` -/
def P1154769896603373414.Spec : Prop :=
  ∀ n, P1154769896603373414.a n = A181890 n

end A181890

/-! ## A181890.P10276381397733774894

`A158668(n+1)%A173089(n+1)`
-/

namespace A181890.P10276381397733774894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158668 (n + 1)) (A173089 (n + 1))

end

end A181890.P10276381397733774894

namespace A181890

/-- `A158668(n+1)%A173089(n+1)` -/
def P10276381397733774894.Spec : Prop :=
  ∀ n, P10276381397733774894.a n = A181890 n

end A181890

/-!
# A181891: Numbers n such that n is the substring identical to the least significant bits of its base 2 representation.

The programs for A181891, there is no canonical definition to state claims against.
-/

/-! ## A181891.P16317969970080782946

`A007088(lt[A334720(n+1), 32])`
-/

namespace A181891.P16317969970080782946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334720 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A181891.P16317969970080782946

/-! ## A181891.P17014477015381280405

`A007088(lt[A015161(3*(n+1)), A063489(2*n+1)])`
-/

namespace A181891.P17014477015381280405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063489 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181891.P17014477015381280405

/-! ## A181891.P7035286649768190015

`A007088(lt[A015161(3*(n+1)), A033429(3*(n+1))])`
-/

namespace A181891.P7035286649768190015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181891.P7035286649768190015

/-! ## A181891.P901943091652912226

`A007088(lt[A015161(3*(n+1)), A081424(3*(n+1))])`
-/

namespace A181891.P901943091652912226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081424 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181891.P901943091652912226

/-! ## A181891.P16548922679310914930

`A007088(lt[A014552(n+1), A282684(n)])`
-/

namespace A181891.P16548922679310914930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181891.P16548922679310914930

/-!
# A181892: a(n) = (n!/4-1)^2.

The programs for A181892, the canonical program `A181892.P2473477457107646532` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181892 has offset 4).

The definition of A181892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181892.P15895565099510022214

`((n+4)!/4-1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181892.P15895565099510022214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 4) : ℚ) / 4 - 1) ^ 2

end

end A181892.P15895565099510022214

namespace A181892

/-- `((n+4)!/4-1)²` -/
def P15895565099510022214.Spec : Prop :=
  ∀ n, P15895565099510022214.a n = (A181892 (n + 4) : ℚ)

end A181892

/-! ## A181892.P2473477457107646532

`A139174(n+4)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181892

/-- `A139174(n+4)²` -/
def P2473477457107646532.Spec : Prop :=
  ∀ n, P2473477457107646532.a n = A181892 (n + 4)

theorem P2473477457107646532.correct : P2473477457107646532.Spec := by
  intro n
  simp only [A181892, Nat.add_sub_cancel]

end A181892

/-! ## A181892.P1836890660479084001

`(1-∏[abs(1-n)+5])²`
-/

namespace A181892.P1836890660479084001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A181892.P1836890660479084001

namespace A181892

/-- `(1-∏[abs(1-n)+5])²` -/
def P1836890660479084001.Spec : Prop :=
  ∀ n, P1836890660479084001.a n = A181892 (n + 4)

end A181892

/-! ## A181892.P1895455901902862394

`(∏[abs(1-n)+5]-1)*floor(((n+4)!-1)/4)`
-/

namespace A181892.P1895455901902862394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j - 1) * ⌊((Nat.factorial (n + 4) : ℤ) - 1 : ℚ) / 4⌋

end

end A181892.P1895455901902862394

namespace A181892

/-- `(∏[abs(1-n)+5]-1)*floor(((n+4)!-1)/4)` -/
def P1895455901902862394.Spec : Prop :=
  ∀ n, P1895455901902862394.a n = A181892 (n + 4)

end A181892

/-! ## A181892.P5416373404246773190

`floor(((n+4)!-1)/4)*∑[ceil((n+3)/4*(n+3)!)]`
-/

namespace A181892.P5416373404246773190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) / 4 * (Nat.factorial (n + 3) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.factorial (n + 4) : ℤ) - 1 : ℚ) / 4⌋ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181892.P5416373404246773190

namespace A181892

/-- `floor(((n+4)!-1)/4)*∑[ceil((n+3)/4*(n+3)!)]` -/
def P5416373404246773190.Spec : Prop :=
  ∀ n, P5416373404246773190.a n = A181892 (n + 4)

end A181892

/-!
# A181893: Number of different nonnegative solutions of equation: x^2 - y^2 = k! for 1 <= k <= n.

The programs for A181893, there is no canonical definition to state claims against.
-/

/-! ## A181893.P1132426772774964786

`∑[A138196(n+1)]`
-/

namespace A181893.P1132426772774964786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181893.P1132426772774964786

/-! ## A181893.P955285576266937213

`a(n-1)+A138196(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A181893.P955285576266937213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A138196 (n + 1) + A000007 n)

end

end A181893.P955285576266937213

/-! ## A181893.P4504982907602146265

`a(n-1)+A138196(n+1)+char[A000045(n+12)]` with `a(0)=1`
-/

namespace A181893.P4504982907602146265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 12)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A138196 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A181893.P4504982907602146265

/-! ## A181893.P8750432533024778847

`A177849(or(19, A000580(n+7)))`
-/

namespace A181893.P8750432533024778847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (Int.lor 19 (A000580 (n + 7))).toNat

end

end A181893.P8750432533024778847

/-! ## A181893.P16924030785139421940

`A177849(A190152(n)+C(n+7, 7))`
-/

namespace A181893.P16924030785139421940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A190152 n + (Nat.choose (n + 7) 7 : ℤ)).toNat

end

end A181893.P16924030785139421940

/-!
# A181894: Sum of factors from A050376 in Fermi-Dirac representation of n.

The programs for A181894, there is no canonical definition to state claims against.
-/

/-! ## A181894.P1991953640037466459

`∑{p}[A160102(n+1), A050376(A000720(#))]`
-/

namespace A181894.P1991953640037466459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A050376 (A000720 p).toNat

end

end A181894.P1991953640037466459

/-! ## A181894.P1790505637745332830

`∑{p}[A160102(n+1), A302023(#)]`
-/

namespace A181894.P1790505637745332830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A302023 p

end

end A181894.P1790505637745332830

/-! ## A181894.P8709239904350803344

`∑{p}[A302033(A302029(n+1)), A302023(#)]`
-/

namespace A181894.P8709239904350803344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A302029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A302023 p

end

end A181894.P8709239904350803344

/-! ## A181894.P9394572870128616436

`A002448(A117321(n+1))+∑{p}[n+1, #^val(n+1, #)]`
-/

namespace A181894.P9394572870128616436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A117321 (n + 1)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A181894.P9394572870128616436

/-! ## A181894.P10842322315280048833

`A008475(n+1)-A008442(A008457(n+2))`
-/

namespace A181894.P10842322315280048833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A008442 (A008457 (n + 2)).toNat

end

end A181894.P10842322315280048833

/-!
# A181895: Difference between maximum and minimum positive value y in solutions to x^2 - y^2 = n!.

The programs for A181895, there is no canonical definition to state claims against.
-/

/-! ## A181895.P16268791438346214837

`A139174(n+4)-A038202(n+4)`
-/

namespace A181895.P16268791438346214837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139174 (n + 4) - A038202 (n + 4)

end

end A181895.P16268791438346214837

/-! ## A181895.P6862545421499138416

`A139151(n+4)-(A038202(n+4)+2)`
-/

namespace A181895.P6862545421499138416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139151 (n + 4) - (A038202 (n + 4) + 2)

end

end A181895.P6862545421499138416

/-! ## A181895.P474266825229156845

`or(1, A092583(A167614(n+2)))-(A038202(n+4)+2)`
-/

namespace A181895.P474266825229156845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A092583 (A167614 (n + 2)).toNat) - (A038202 (n + 4) + 2)

end

end A181895.P474266825229156845

/-! ## A181895.P12735897068203044527

`A139174(n+4)-A181896(n+4)%A181899(n+4)`
-/

namespace A181895.P12735897068203044527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139174 (n + 4) - Int.tmod (A181896 (n + 4)) (A181899 (n + 4))

end

end A181895.P12735897068203044527

/-!
# A181896: Least value x solving x^2 - y^2 = n!

The programs for A181896, there is no canonical definition to state claims against.
-/

/-! ## A181896.P7865149185381724306

`A038202(n+4)+2*A181899(n+4)`
-/

namespace A181896.P7865149185381724306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038202 (n + 4) + 2 * A181899 (n + 4)

end

end A181896.P7865149185381724306

/-! ## A181896.P6073629856557490186

`A181899(n+4)+A181899(n+4)+A139151(n+4)-(A181895(n+4)+2)`
-/

namespace A181896.P6073629856557490186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181899 (n + 4) + (A181899 (n + 4) + (A139151 (n + 4) - (A181895 (n + 4) + 2)))

end

end A181896.P6073629856557490186

/-! ## A181896.P13396020476462708801

`A055228(n+4)+A010051(A004806(n+1))`
-/

namespace A181896.P13396020476462708801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 (n + 4) + A010051 (A004806 (n + 1)).toNat

end

end A181896.P13396020476462708801

/-! ## A181896.P2531020018351958271

`A059841(A105754(n+1))+A055228(n+4)`
-/

namespace A181896.P2531020018351958271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A105754 (n + 1)).toNat + A055228 (n + 4)

end

end A181896.P2531020018351958271

/-! ## A181896.P7006379488425512408

`A055229(A055226(n))+A055226(n+4)`
-/

namespace A181896.P7006379488425512408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A055226 n).toNat + A055226 (n + 4)

end

end A181896.P7006379488425512408

/-!
# A181897: Triangle of refined rencontres numbers: T(n,k) is the number of permutations of n elements with cycle type k (k-th integer partition, defined by A194602).

The programs for A181897, there is no canonical definition to state claims against.
-/

/-! ## A181897.P11896812231168660298

`A124795(A334437(n+1))`
-/

namespace A181897.P11896812231168660298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (A334437 (n + 1)).toNat

end

end A181897.P11896812231168660298

/-! ## A181897.P8777847435153195255

`A178801(n+1)/A110141(n+1)`
-/

namespace A181897.P8777847435153195255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 (n + 1) : ℚ) / (A110141 (n + 1) : ℚ)

end

end A181897.P8777847435153195255

/-!
# A181899: Largest divisor of n!/4 which is less than sqrt(n!)/2.

The programs for A181899, there is no canonical definition to state claims against.
-/

/-! ## A181899.P6633258313657181017

`(A181896(n+4)-A038202(n+4))/2`
-/

namespace A181899.P6633258313657181017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181896 (n + 4) - A038202 (n + 4) : ℚ) / 2

end

end A181899.P6633258313657181017

/-! ## A181899.P1047404472597762471

`A200743(n+4)/A008873(A008888(n))`
-/

namespace A181899.P1047404472597762471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200743 (n + 4) : ℚ) / (A008873 (A008888 n).toNat : ℚ)

end

end A181899.P1047404472597762471

/-! ## A181899.P1670198100271295357

`A200743(n+4)/A037445(A002386(n+1))`
-/

namespace A181899.P1670198100271295357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200743 (n + 4) : ℚ) / (A037445 (A002386 (n + 1)).toNat : ℚ)

end

end A181899.P1670198100271295357

