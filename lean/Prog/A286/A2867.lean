import SequenceMachineLib
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
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

/-!
# A286700: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 209", based on the 5-celled von Neumann neighborhood.

The programs for A286700, there is no canonical definition to state claims against.
-/

/-! ## A286700.P5733736663118545273

`A285645(n)+A049084(A000246(n))`
-/

namespace A286700.P5733736663118545273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285645 n + A049084 (A000246 n).toNat

end

end A286700.P5733736663118545273

/-! ## A286700.P2729295034549065584

`A288298(n)+A244526(A123746(n))`
-/

namespace A286700.P2729295034549065584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288298 n + A244526 (A123746 n).toNat

end

end A286700.P2729295034549065584

/-! ## A286700.P5234092012740791749

`A288441(n)-A333755(A293942(n))`
-/

namespace A286700.P5234092012740791749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288441 n - A333755 (A293942 n).toNat

end

end A286700.P5234092012740791749

/-!
# A286702: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A286702, there is no canonical definition to state claims against.
-/

/-! ## A286702.P7137837276809680778

`or(A094026(A266437(n)), A287283(n))`
-/

namespace A286702.P7137837276809680778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094026 (A266437 n).toNat) (A287283 n)

end

end A286702.P7137837276809680778

/-! ## A286702.P14721550658793393238

`A286703(n)+A287283(n)-A287284(n)`
-/

namespace A286702.P14721550658793393238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286703 n + (A287283 n - A287284 n)

end

end A286702.P14721550658793393238

/-! ## A286702.P1912765425043280339

`A287283(n)+A000035(n)*A286642(n)`
-/

namespace A286702.P1912765425043280339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287283 n + A000035 n * A286642 n

end

end A286702.P1912765425043280339

/-! ## A286702.P6675901774648558175

`A287283(n)+A000035(n)*A286703(n)`
-/

namespace A286702.P6675901774648558175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287283 n + A000035 n * A286703 n

end

end A286702.P6675901774648558175

/-! ## A286702.P6447640518460735837

`A094026(A266437(n))+A287283(n)%A000984(n)`
-/

namespace A286702.P6447640518460735837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A266437 n).toNat + Int.tmod (A287283 n) (A000984 n)

end

end A286702.P6447640518460735837

/-! ## A286702.P14015597239275695628

`A287283(n)+A000042(n+1)*A124625(A124625(n))`
-/

namespace A286702.P14015597239275695628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287283 n + A000042 (n + 1) * A124625 (A124625 n).toNat

end

end A286702.P14015597239275695628

/-!
# A286703: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A286703, there is no canonical definition to state claims against.
-/

/-! ## A286703.P14592767422856122582

`gcd(A094026(A266437(n)), A287284(n))`
-/

namespace A286703.P14592767422856122582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094026 (A266437 n).toNat) (A287284 n)

end

end A286703.P14592767422856122582

/-! ## A286703.P1201070304024677832

`A286702(n)+A287284(n)-A287283(n)`
-/

namespace A286703.P1201070304024677832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286702 n + (A287284 n - A287283 n)

end

end A286703.P1201070304024677832

/-! ## A286703.P7106850173938023543

`A287284(n)+A000035(n)*A286642(n)`
-/

namespace A286703.P7106850173938023543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287284 n + A000035 n * A286642 n

end

end A286703.P7106850173938023543

/-! ## A286703.P10652867278012290912

`A287284(n)+A000035(n)*A286702(n)`
-/

namespace A286703.P10652867278012290912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287284 n + A000035 n * A286702 n

end

end A286703.P10652867278012290912

/-! ## A286703.P12451817194572735784

`A094026(A266437(n))+A287284(A000007(n)+n)`
-/

namespace A286703.P12451817194572735784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A266437 n).toNat + A287284 (A000007 n + (n : ℤ)).toNat

end

end A286703.P12451817194572735784

/-!
# A286704: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A286704, there is no canonical definition to state claims against.
-/

/-! ## A286704.P12025287138118473712

`gcd(A277936(n), A287285(n))`
-/

namespace A286704.P12025287138118473712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277936 n) (A287285 n)

end

end A286704.P12025287138118473712

/-! ## A286704.P1849492172557940714

`abs(or(-A287285(n), A286705(n)))`
-/

namespace A286704.P1849492172557940714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-A287285 n) (A286705 n)|

end

end A286704.P1849492172557940714

/-! ## A286704.P13322834764733961111

`A286705(n)+A287285(n)-A287287(n)`
-/

namespace A286704.P13322834764733961111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286705 n + (A287285 n - A287287 n)

end

end A286704.P13322834764733961111

/-! ## A286704.P9161855161129632227

`A287285(n)+A000035(n)*A277936(n)`
-/

namespace A286704.P9161855161129632227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287285 n + A000035 n * A277936 n

end

end A286704.P9161855161129632227

/-! ## A286704.P12397092896857148456

`A287285(n)+A000035(n)*A286705(n)`
-/

namespace A286704.P12397092896857148456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287285 n + A000035 n * A286705 n

end

end A286704.P12397092896857148456

/-! ## A286704.P2796787504711327704

`A277936(n)+A287285(n)%A290234(n)`
-/

namespace A286704.P2796787504711327704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277936 n + Int.tmod (A287285 n) (A290234 n)

end

end A286704.P2796787504711327704

/-! ## A286704.P2465349770389652637

`A287285(n)+A124625(A124625(n))*A126646(n)`
-/

namespace A286704.P2465349770389652637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287285 n + A124625 (A124625 n).toNat * A126646 n

end

end A286704.P2465349770389652637

/-!
# A286705: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A286705, there is no canonical definition to state claims against.
-/

/-! ## A286705.P4706979586222639743

`gcd(A277936(n), A287287(n))`
-/

namespace A286705.P4706979586222639743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277936 n) (A287287 n)

end

end A286705.P4706979586222639743

/-! ## A286705.P12960537569682082015

`A286704(n)+A287287(n)-A287285(n)`
-/

namespace A286705.P12960537569682082015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286704 n + (A287287 n - A287285 n)

end

end A286705.P12960537569682082015

/-! ## A286705.P14861918428824575230

`A287287(n)+A000035(n)*A277936(n)`
-/

namespace A286705.P14861918428824575230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287287 n + A000035 n * A277936 n

end

end A286705.P14861918428824575230

/-! ## A286705.P15359957289186677003

`A287287(n)+A000035(n)*A286704(n)`
-/

namespace A286705.P15359957289186677003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287287 n + A000035 n * A286704 n

end

end A286705.P15359957289186677003

/-! ## A286705.P13757606869567104327

`A277936(n)+A287287(n)%A290234(n)`
-/

namespace A286705.P13757606869567104327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277936 n + Int.tmod (A287287 n) (A290234 n)

end

end A286705.P13757606869567104327

/-!
# A286707: a(n) = (RiemannSiegelTheta(n)+im(log(zeta(1/2+i*n))))/Pi.

The programs for A286707, there is no canonical definition to state claims against.
-/

/-! ## A286707.P6701968405281828913

`A135297(n+1)-1`
-/

namespace A286707.P6701968405281828913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135297 (n + 1) - 1

end

end A286707.P6701968405281828913

/-! ## A286707.P14571653699176098928

`∑[char[A013629(n+1)]]-1`
-/

namespace A286707.P14571653699176098928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A286707.P14571653699176098928

/-! ## A286707.P1823562287864667804

`A234323(n)+a(n-1)` with `a(0)=-1`
-/

namespace A286707.P1823562287864667804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  A234323 n + a (n - 1)

end

end A286707.P1823562287864667804

/-! ## A286707.P8820776601440911035

`∑[A234323(abs(1-n)+1)]-1`
-/

namespace A286707.P8820776601440911035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A286707.P8820776601440911035

/-! ## A286707.P14459543542976509581

`∑[char[A092783(n+1)-1]]-1`
-/

namespace A286707.P14459543542976509581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092783 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A286707.P14459543542976509581

/-! ## A286707.P2172601674182880896

`A023443(A135297(n+1))`
-/

namespace A286707.P2172601674182880896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A135297 (n + 1)).toNat

end

end A286707.P2172601674182880896

/-! ## A286707.P6511105729466265377

`A023444(A135297(n+1)+1)`
-/

namespace A286707.P6511105729466265377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A135297 (n + 1) + 1).toNat

end

end A286707.P6511105729466265377

/-! ## A286707.P15603459448341003826

`A225058(4*A135297(n+1))`
-/

namespace A286707.P15603459448341003826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (4 * A135297 (n + 1)).toNat

end

end A286707.P15603459448341003826

/-! ## A286707.P14694537022130840085

`A023464(A135297(n+1)+21)`
-/

namespace A286707.P14694537022130840085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023464 (A135297 (n + 1) + 21).toNat

end

end A286707.P14694537022130840085

/-! ## A286707.P13901484095663056827

`A023443(∑[char[A013629(n+1)]])`
-/

namespace A286707.P13901484095663056827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286707.P13901484095663056827

/-!
# A286708: Powerful numbers (A001694) that are not prime powers (A000961).

The programs for A286708, there is no canonical definition to state claims against.
-/

/-! ## A286708.P5104184549302496152

`sqrt(A378768(n+1))`
-/

namespace A286708.P5104184549302496152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A378768 (n + 1) : ℝ)

end

end A286708.P5104184549302496152

/-! ## A286708.P8713255382139186856

`A365786(n+1)*A365787(n+1)`
-/

namespace A286708.P8713255382139186856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365786 (n + 1) * A365787 (n + 1)

end

end A286708.P8713255382139186856

/-! ## A286708.P10478748296782887634

`∪[A177492(n+1), A372404(n+1)]`
-/

namespace A286708.P10478748296782887634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P10478748296782887634

/-! ## A286708.P12843483401165173238

`∪[A303606(n+1), A359280(n+1)]`
-/

namespace A286708.P12843483401165173238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P12843483401165173238

/-! ## A286708.P4717383012604526317

`∪[A303606(n+1), A372404(n+1)]`
-/

namespace A286708.P4717383012604526317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P4717383012604526317

/-! ## A286708.P12132543134267192909

`∪[A363216(n+1), A363217(n+1)]`
-/

namespace A286708.P12132543134267192909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P12132543134267192909

/-! ## A286708.P12644999618308825336

`∪[A363169(n+1), A369417(n+1)]`
-/

namespace A286708.P12644999618308825336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P12644999618308825336

/-! ## A286708.P8120187445803994260

`∪[A363216(n+1), A369417(n+1)]`
-/

namespace A286708.P8120187445803994260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P8120187445803994260

/-! ## A286708.P13749733405497092332

`∪[A363169(n+1), A369636(n+1)]`
-/

namespace A286708.P13749733405497092332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P13749733405497092332

/-! ## A286708.P14713221588267135036

`∪[A363216(n+1), A369636(n+1)]`
-/

namespace A286708.P14713221588267135036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P14713221588267135036

/-! ## A286708.P15824826504462387721

`∪[A364930(n+1), A369636(n+1)]`
-/

namespace A286708.P15824826504462387721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P15824826504462387721

/-! ## A286708.P13735924989984814885

`∪[A369374(n+1), A369417(n+1)]`
-/

namespace A286708.P13735924989984814885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P13735924989984814885

/-! ## A286708.P658953228098574774

`∪[A369374(n+1), A369636(n+1)]`
-/

namespace A286708.P658953228098574774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P658953228098574774

/-! ## A286708.P7102394734882498006

`∪[A052486(n+1), A131605(n+2)]`
-/

namespace A286708.P7102394734882498006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P7102394734882498006

/-! ## A286708.P6959460652094543304

`∩[A001694(n+1), A370266(n+1)]`
-/

namespace A286708.P6959460652094543304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P6959460652094543304

/-! ## A286708.P9855739707989145845

`∩[A001694(n+1), A036785(n+1)]`
-/

namespace A286708.P9855739707989145845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P9855739707989145845

/-! ## A286708.P162279058711757934

`∩[A001694(n+1), A361098(n+1)]`
-/

namespace A286708.P162279058711757934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P162279058711757934

/-! ## A286708.P13500757522958845796

`filter[A001694(n+1), A355447(#)]`
-/

namespace A286708.P13500757522958845796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A286708.P13500757522958845796

/-! ## A286708.P3007602065060966493

`filter[A001694(n+1), A379958(#)]`
-/

namespace A286708.P3007602065060966493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A286708.P3007602065060966493

/-! ## A286708.P5143138973583384332

`∩[A001694(n+1), A375397(n+1)]`
-/

namespace A286708.P5143138973583384332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286708.P5143138973583384332

/-!
# A286709: For k>0, let bin(k) = the string corresponding to the binary representation of k, and neg(k) = bin(k) under the character substitution '0' <-> '1'; a(n) = the smallest positive integer not occurring earlier in the sequence such that bin(Sum_{k=1..n} a(k)) contains neg(n) as a substring.

The programs for A286709, there is no canonical definition to state claims against.
-/

/-! ## A286709.P9434245373776255137

`A000038(n)+Δ[A286713(A028310(n))]`
-/

namespace A286709.P9434245373776255137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286713 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A286709.P9434245373776255137

/-! ## A286709.P16049803050070869549

`Δ[A005206(n²%(n+1))*A286713(A028310(n))]`
-/

namespace A286709.P16049803050070869549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (n ^ 2 % (n + 1)) * A286713 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286709.P16049803050070869549

/-! ## A286709.P12718816506528291993

`A286713(n+1)+A000038(n)-A286713(A028310(n))`
-/

namespace A286709.P12718816506528291993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286713 (n + 1) + (A000038 n - A286713 (A028310 n).toNat)

end

end A286709.P12718816506528291993

/-! ## A286709.P6267080524209985600

`A286713(n+1)-A057427(n)*A286713(A028310(n))`
-/

namespace A286709.P6267080524209985600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286713 (n + 1) - A057427 n * A286713 (A028310 n).toNat

end

end A286709.P6267080524209985600

/-! ## A286709.P15634579621089888842

`Δ[A286713(A028310(n))+A158388(n)]`
-/

namespace A286709.P15634579621089888842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286713 (A028310 n).toNat + A158388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286709.P15634579621089888842

/-! ## A286709.P11683693845685288033

`Δ[A057427(n)*A286713(A028310(n))]`
-/

namespace A286709.P11683693845685288033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A286713 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286709.P11683693845685288033

/-! ## A286709.P10554054824497881690

`Δ[A286713(A028310(n))%A001846(n)]`
-/

namespace A286709.P10554054824497881690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286713 (A028310 n).toNat) (A001846 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286709.P10554054824497881690

/-!
# A286710: Numbers n whose Zeckendorf representation is of the form ww, for w a nonempty block of digits.

The programs for A286710, there is no canonical definition to state claims against.
-/

/-! ## A286710.P1148131583226462931

`A271993(n+2)+A002378(A293248(n+1))`
-/

namespace A286710.P1148131583226462931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271993 (n + 2) + A002378 (A293248 (n + 1)).toNat

end

end A286710.P1148131583226462931

/-!
# A286712: a(n) = SumXOR_{k=1..n} A286681(k), where SumXOR is the analog of summation under the binary XOR operation.

The programs for A286712, there is no canonical definition to state claims against.
-/

/-! ## A286712.P12315773689876277019

`xor(a(n-1), A286681(n+1))` with `a(0)=1`
-/

namespace A286712.P12315773689876277019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A286681 (n + 1))

end

end A286712.P12315773689876277019

/-!
# A286713: Partial sums of A286709.

The programs for A286713, there is no canonical definition to state claims against.
-/

/-! ## A286713.P10952557947919741109

`∑[A286709(n+1)]`
-/

namespace A286713.P10952557947919741109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286713.P10952557947919741109

/-! ## A286713.P8082711651106067668

`A286709(n+1)+a(A023443(n))` with `a(0)=2`
-/

namespace A286713.P8082711651106067668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A286709 (n + 1) + a (A023443 n).toNat

end

end A286713.P8082711651106067668

/-!
# A286714: Difference phi(p-1) - phi(p+1) for lesser of twin primes.

The programs for A286714, the canonical program `A286714.P12134044477131869880` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286714 has offset 1).

The definition of A286714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286714.P12134044477131869880

`A008330(A029707(n+1))-A078578(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A286714

/-- `A008330(A029707(n+1))-A078578(n+1)` -/
def P12134044477131869880.Spec : Prop :=
  ∀ n, P12134044477131869880.a n = A286714 (n + 1)

theorem P12134044477131869880.correct : P12134044477131869880.Spec := by
  intro n
  simp only [A286714, Nat.add_sub_cancel]

end A286714

/-! ## A286714.P7676844011019257240

`A000010(A144834(n+1))-A078578(n+1)`
-/

namespace A286714.P7676844011019257240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A144834 (n + 1)).toNat - A078578 (n + 1)

end

end A286714.P7676844011019257240

namespace A286714

/-- `A000010(A144834(n+1))-A078578(n+1)` -/
def P7676844011019257240.Spec : Prop :=
  ∀ n, P7676844011019257240.a n = A286714 (n + 1)

end A286714

/-! ## A286714.P14094203097627040947

`A000010(A144834(n+1))-A000010(A014574(n+1))`
-/

namespace A286714.P14094203097627040947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A144834 (n + 1)).toNat - A000010 (A014574 (n + 1)).toNat

end

end A286714.P14094203097627040947

namespace A286714

/-- `A000010(A144834(n+1))-A000010(A014574(n+1))` -/
def P14094203097627040947.Spec : Prop :=
  ∀ n, P14094203097627040947.a n = A286714 (n + 1)

end A286714

/-! ## A286714.P15839695602074858931

`A000010(A014574(n+1)-2)-A000010(A014574(n+1))`
-/

namespace A286714.P15839695602074858931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014574 (n + 1) - 2).toNat - A000010 (A014574 (n + 1)).toNat

end

end A286714.P15839695602074858931

namespace A286714

/-- `A000010(A014574(n+1)-2)-A000010(A014574(n+1))` -/
def P15839695602074858931.Spec : Prop :=
  ∀ n, P15839695602074858931.a n = A286714 (n + 1)

end A286714

/-! ## A286714.P11516153436095998078

`A000010(A000010(A001359(n+1)))-A000010(A014574(n+1))`
-/

namespace A286714.P11516153436095998078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A001359 (n + 1)).toNat).toNat - A000010 (A014574 (n + 1)).toNat

end

end A286714.P11516153436095998078

namespace A286714

/-- `A000010(A000010(A001359(n+1)))-A000010(A014574(n+1))` -/
def P11516153436095998078.Spec : Prop :=
  ∀ n, P11516153436095998078.a n = A286714 (n + 1)

end A286714

/-!
# A286716: a(n) = floor(n/2) - floor((n+1)/5), n >= 0.

The programs for A286716, the canonical program `A286716.P14137654715876232809` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286716 has offset 0).

The definition of A286716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)-floor((n+1)/5)` (program `A286716.P14137654715876232809`, by `A286716.P14137654715876232809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286716.P14137654715876232809

`floor(n/2)-floor((n+1)/5)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286716

/-- `floor(n/2)-floor((n+1)/5)` -/
def P14137654715876232809.Spec : Prop :=
  ∀ n, P14137654715876232809.a n = A286716 n

theorem P14137654715876232809.correct : P14137654715876232809.Spec := by
  intro n
  simp only [A286716]

end A286716

/-! ## A286716.P8470252848475403453

`floor((3*xor(1, n)+4)/10)`
-/

namespace A286716.P8470252848475403453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * Nat.xor 1 n + 4 : ℚ) / 10⌋

end

end A286716.P8470252848475403453

namespace A286716

/-- `floor((3*xor(1, n)+4)/10)` -/
def P8470252848475403453.Spec : Prop :=
  ∀ n, P8470252848475403453.a n = A286716 n

end A286716

/-! ## A286716.P4862093738955566404

`floor((or(6, 4*n)-n)/10)`
-/

namespace A286716.P4862093738955566404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lor 6 (4 * n) : ℤ) - (n : ℤ) : ℚ) / 10⌋

end

end A286716.P4862093738955566404

namespace A286716

/-- `floor((or(6, 4*n)-n)/10)` -/
def P4862093738955566404.Spec : Prop :=
  ∀ n, P4862093738955566404.a n = A286716 n

end A286716

/-! ## A286716.P2822779952200721916

`A004526(A286717(n))`
-/

namespace A286716.P2822779952200721916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A286717 n).toNat

end

end A286716.P2822779952200721916

namespace A286716

/-- `A004526(A286717(n))` -/
def P2822779952200721916.Spec : Prop :=
  ∀ n, P2822779952200721916.a n = A286716 n

end A286716

/-! ## A286716.P12620742005593908986

`Δ[A211522(n)]`
-/

namespace A286716.P12620742005593908986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286716.P12620742005593908986

namespace A286716

/-- `Δ[A211522(n)]` -/
def P12620742005593908986.Spec : Prop :=
  ∀ n, P12620742005593908986.a n = A286716 n

end A286716

/-! ## A286716.P3323066186638036675

`A004526(n-A130496(n+1))`
-/

namespace A286716.P3323066186638036675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A130496 (n + 1)).toNat

end

end A286716.P3323066186638036675

namespace A286716

/-- `A004526(n-A130496(n+1))` -/
def P3323066186638036675.Spec : Prop :=
  ∀ n, P3323066186638036675.a n = A286716 n

end A286716

/-! ## A286716.P4334911247867122493

`A004526(n+1-A130497(n+1))`
-/

namespace A286716.P4334911247867122493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) - A130497 (n + 1)).toNat

end

end A286716.P4334911247867122493

namespace A286716

/-- `A004526(n+1-A130497(n+1))` -/
def P4334911247867122493.Spec : Prop :=
  ∀ n, P4334911247867122493.a n = A286716 n

end A286716

/-! ## A286716.P10307199787188748710

`A002266(A166517(n)+1)`
-/

namespace A286716.P10307199787188748710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A166517 n + 1).toNat

end

end A286716.P10307199787188748710

namespace A286716

/-- `A002266(A166517(n)+1)` -/
def P10307199787188748710.Spec : Prop :=
  ∀ n, P10307199787188748710.a n = A286716 n

end A286716

/-! ## A286716.P9303635808502943899

`A165190(A091361(n+2))`
-/

namespace A286716.P9303635808502943899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A091361 (n + 2)).toNat

end

end A286716.P9303635808502943899

namespace A286716

/-- `A165190(A091361(n+2))` -/
def P9303635808502943899.Spec : Prop :=
  ∀ n, P9303635808502943899.a n = A286716 n

end A286716

/-! ## A286716.P2395860637830835090

`A008651(A179805(n))`
-/

namespace A286716.P2395860637830835090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A179805 n).toNat

end

end A286716.P2395860637830835090

namespace A286716

/-- `A008651(A179805(n))` -/
def P2395860637830835090.Spec : Prop :=
  ∀ n, P2395860637830835090.a n = A286716 n

end A286716

/-! ## A286716.P3329251301080219758

`A008651(A017257(n))`
-/

namespace A286716.P3329251301080219758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A017257 n).toNat

end

end A286716.P3329251301080219758

namespace A286716

/-- `A008651(A017257(n))` -/
def P3329251301080219758.Spec : Prop :=
  ∀ n, P3329251301080219758.a n = A286716 n

end A286716

/-!
# A286717: a(n) is the number of zeros of the Chebyshev S(n, x) polynomial (A049310) in the open interval (-phi, +phi), with the golden section phi = (1 + sqrt(5))/2.

The programs for A286717, the canonical program `A286717.P18172974325329309110` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286717 has offset 0).

The definition of A286717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286717.P18172974325329309110

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286717

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P18172974325329309110.Spec : Prop :=
  ∀ n, P18172974325329309110.a n = A286717 n

theorem P18172974325329309110.correct : P18172974325329309110.Spec := by
  intro n
  simp only [A286717]

end A286717

/-! ## A286717.P12918414249392157138

`n-2*floor((n+1)/5)`
-/

namespace A286717.P12918414249392157138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * ⌊(n + 1 : ℚ) / 5⌋

end

end A286717.P12918414249392157138

namespace A286717

/-- `n-2*floor((n+1)/5)` -/
def P12918414249392157138.Spec : Prop :=
  ∀ n, P12918414249392157138.a n = A286717 n

end A286717

/-! ## A286717.P1113316654582200370

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=-1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A286717.P1113316654582200370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, -1, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286717.P1113316654582200370

namespace A286717

/-- `∑[floor(a(n-5))]` -/
def P1113316654582200370.Spec : Prop :=
  ∀ n, P1113316654582200370.a n = A286717 n

end A286717

/-! ## A286717.P7021637849813746301

`∑[1/a(n-5)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=-1, a(5)=1`
-/

namespace A286717.P7021637849813746301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1, 1, -1, 1] fun n f1 =>
  1 / f1 (n - 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286717.P7021637849813746301

namespace A286717

/-- `∑[1/a(n-5)]` -/
def P7021637849813746301.Spec : Prop :=
  ∀ n, P7021637849813746301.a n = (A286717 n : ℚ)

end A286717

/-! ## A286717.P1493593324426435830

`∑[a(n-5)^3]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=-1, a(5)=1`
-/

namespace A286717.P1493593324426435830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, -1, 1] fun n f1 =>
  f1 (n - 5) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286717.P1493593324426435830

namespace A286717

/-- `∑[a(n-5)^3]` -/
def P1493593324426435830.Spec : Prop :=
  ∀ n, P1493593324426435830.a n = A286717 n

end A286717

/-! ## A286717.P15341242005670320583

`A014681(A014681(n)-A047287(n+1)+n)`
-/

namespace A286717.P15341242005670320583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A014681 n - A047287 (n + 1) + (n : ℤ)).toNat

end

end A286717.P15341242005670320583

namespace A286717

/-- `A014681(A014681(n)-A047287(n+1)+n)` -/
def P15341242005670320583.Spec : Prop :=
  ∀ n, P15341242005670320583.a n = A286717 n

end A286717

/-! ## A286717.P3570205528643350718

`Δ[∑[n]-∑[A130497(n)]]`
-/

namespace A286717.P3570205528643350718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286717.P3570205528643350718

namespace A286717

/-- `Δ[∑[n]-∑[A130497(n)]]` -/
def P3570205528643350718.Spec : Prop :=
  ∀ n, P3570205528643350718.a n = A286717 n

end A286717

/-! ## A286717.P8461701251925709621

`Δ[A000217(n)-A008812(n)]`
-/

namespace A286717.P8461701251925709621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A008812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286717.P8461701251925709621

namespace A286717

/-- `Δ[A000217(n)-A008812(n)]` -/
def P8461701251925709621.Spec : Prop :=
  ∀ n, P8461701251925709621.a n = A286717 n

end A286717

/-! ## A286717.P6302897687664606968

`A004526(A358012(n+1)+n)`
-/

namespace A286717.P6302897687664606968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A358012 (n + 1) + (n : ℤ)).toNat

end

end A286717.P6302897687664606968

namespace A286717

/-- `A004526(A358012(n+1)+n)` -/
def P6302897687664606968.Spec : Prop :=
  ∀ n, P6302897687664606968.a n = A286717 n

end A286717

/-! ## A286717.P12815210707138654401

`A327440(A010874(n+1)+2*n)`
-/

namespace A286717.P12815210707138654401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327440 (A010874 (n + 1) + (2 * n : ℤ)).toNat

end

end A286717.P12815210707138654401

namespace A286717

/-- `A327440(A010874(n+1)+2*n)` -/
def P12815210707138654401.Spec : Prop :=
  ∀ n, P12815210707138654401.a n = A286717 n

end A286717

/-! ## A286717.P15122573319557951003

`A058207(A187334(n))`
-/

namespace A286717.P15122573319557951003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (A187334 n).toNat

end

end A286717.P15122573319557951003

namespace A286717

/-- `A058207(A187334(n))` -/
def P15122573319557951003.Spec : Prop :=
  ∀ n, P15122573319557951003.a n = A286717 n

end A286717

/-! ## A286717.P13683537149940152457

`A194508(A192333(n+2)+1)`
-/

namespace A286717.P13683537149940152457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194508 (A192333 (n + 2) + 1).toNat

end

end A286717.P13683537149940152457

namespace A286717

/-- `A194508(A192333(n+2)+1)` -/
def P13683537149940152457.Spec : Prop :=
  ∀ n, P13683537149940152457.a n = A286717 n

end A286717

/-! ## A286717.P8727714469041154508

`A194509(3*n+2)`
-/

namespace A286717.P8727714469041154508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (3 * n + 2)

end

end A286717.P8727714469041154508

namespace A286717

/-- `A194509(3*n+2)` -/
def P8727714469041154508.Spec : Prop :=
  ∀ n, P8727714469041154508.a n = A286717 n

end A286717

/-!
# A286718: Triangle read by rows: T(n, k) is the Sheffer triangle ((1 - 3*x)^(-1/3), (-1/3)*log(1 - 3*x)). A generalized Stirling1 triangle.

The programs for A286718, the canonical program `A286718.P7160275088162650978` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286718 has offset 0).

The definition of A286718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286718.P7160275088162650978

`T(n-1,k-1)+(3*row(n)-2)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286718

/-- `T(n-1,k-1)+(3*row(n)-2)*T(n-1,k)` -/
def P7160275088162650978.Spec : Prop :=
  ∀ n, P7160275088162650978.a n = A286718 n

theorem P7160275088162650978.correct : P7160275088162650978.Spec := by
  intro n
  simp only [A286718]

end A286718

/-!
# A286719: Column k=4 of triangle A039755, Sheffer(exp(x), (exp(2*x) - 1)/2).

The programs for A286719, the canonical program `A286719.P4969572481493460331` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286719 has offset 0).

The definition of A286719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286719.P4969572481493460331

`∑[A028060(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A286719

/-- `∑[A028060(n)]` -/
def P4969572481493460331.Spec : Prop :=
  ∀ n, P4969572481493460331.a n = A286719 n

theorem P4969572481493460331.correct : P4969572481493460331.Spec := by
  intro n
  simp only [A286719]

end A286719

/-! ## A286719.P12261934236153212180

`A022453(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A286719.P12261934236153212180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022453 n + 3 * a (n - 1)

end

end A286719.P12261934236153212180

namespace A286719

/-- `A022453(n)+3*a(n-1)` -/
def P12261934236153212180.Spec : Prop :=
  ∀ n, P12261934236153212180.a n = A286719 n

end A286719

/-! ## A286719.P13377770711040352682

`A021424(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A286719.P13377770711040352682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A021424 n + 9 * a (n - 1)

end

end A286719.P13377770711040352682

namespace A286719

/-- `A021424(n)+9*a(n-1)` -/
def P13377770711040352682.Spec : Prop :=
  ∀ n, P13377770711040352682.a n = A286719 n

end A286719

/-! ## A286719.P6803996562477267089

`(A021454(n+1)-A021424(n+1))/2`
-/

namespace A286719.P6803996562477267089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021454 (n + 1) - A021424 (n + 1) : ℚ) / 2

end

end A286719.P6803996562477267089

namespace A286719

/-- `(A021454(n+1)-A021424(n+1))/2` -/
def P6803996562477267089.Spec : Prop :=
  ∀ n, P6803996562477267089.a n = (A286719 n : ℚ)

end A286719

/-! ## A286719.P13919151532571624778

`or(A028060(n)+a(n-1), A000007(n))` with `a(0)=1`
-/

namespace A286719.P13919151532571624778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A028060 n + a (n - 1)) (A000007 n)

end

end A286719.P13919151532571624778

namespace A286719

/-- `or(A028060(n)+a(n-1), A000007(n))` -/
def P13919151532571624778.Spec : Prop :=
  ∀ n, P13919151532571624778.a n = A286719 n

end A286719

/-! ## A286719.P16769701037285363967

`(A021594(n+1)-A021454(n+1))/2`
-/

namespace A286719.P16769701037285363967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021594 (n + 1) - A021454 (n + 1) : ℚ) / 2

end

end A286719.P16769701037285363967

namespace A286719

/-- `(A021594(n+1)-A021454(n+1))/2` -/
def P16769701037285363967.Spec : Prop :=
  ∀ n, P16769701037285363967.a n = (A286719 n : ℚ)

end A286719

/-! ## A286719.P12356619901976869932

`(A022453(n+1)-A021594(n+1))/2`
-/

namespace A286719.P12356619901976869932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022453 (n + 1) - A021594 (n + 1) : ℚ) / 2

end

end A286719.P12356619901976869932

namespace A286719

/-- `(A022453(n+1)-A021594(n+1))/2` -/
def P12356619901976869932.Spec : Prop :=
  ∀ n, P12356619901976869932.a n = (A286719 n : ℚ)

end A286719

/-! ## A286719.P4792534589407051014

`A039755(A155212(n)+12)`
-/

namespace A286719.P4792534589407051014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A155212 n + 12).toNat

end

end A286719.P4792534589407051014

namespace A286719

/-- `A039755(A155212(n)+12)` -/
def P4792534589407051014.Spec : Prop :=
  ∀ n, P4792534589407051014.a n = A286719 n

end A286719

/-! ## A286719.P14000260781312272865

`A039755(A000217(n)+2*A020742(n))`
-/

namespace A286719.P14000260781312272865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A000217 n + 2 * A020742 n).toNat

end

end A286719.P14000260781312272865

namespace A286719

/-- `A039755(A000217(n)+2*A020742(n))` -/
def P14000260781312272865.Spec : Prop :=
  ∀ n, P14000260781312272865.a n = A286719 n

end A286719

/-! ## A286719.P16176618245627380091

`A039755(A253145(n+1)+A020742(n+2))`
-/

namespace A286719.P16176618245627380091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A253145 (n + 1) + A020742 (n + 2)).toNat

end

end A286719.P16176618245627380091

namespace A286719

/-- `A039755(A253145(n+1)+A020742(n+2))` -/
def P16176618245627380091.Spec : Prop :=
  ∀ n, P16176618245627380091.a n = A286719 n

end A286719

/-!
# A286721: Column k=2 of the triangle A286718; Sheffer ((1 - 3*x)^(-1/3), (-1/3)*log(1 - 3*x)).

The programs for A286721, there is no canonical definition to state claims against.
-/

/-! ## A286721.P12650877412097057373

`A286718(∑[n+2]+3)`
-/

namespace A286721.P12650877412097057373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A286721.P12650877412097057373

/-! ## A286721.P11237592022012827502

`record[gcd(A143395(n+2), A286718(n+4))]`
-/

namespace A286721.P11237592022012827502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143395 (n + 2)) (A286718 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286721.P11237592022012827502

/-! ## A286721.P11630620645853015684

`A286718(A133263(n+2))%A051604(n+1)`
-/

namespace A286721.P11630620645853015684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286718 (A133263 (n + 2)).toNat) (A051604 (n + 1))

end

end A286721.P11630620645853015684

/-! ## A286721.P12385714673004895419

`record[A227985(n)*A286718(n)]`
-/

namespace A286721.P12385714673004895419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227985 n * A286718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286721.P12385714673004895419

/-!
# A286722: Column k=2 of the triangle A225470; Sheffer ((1 - 3*x)^(-2/3), (-1/3)*log(1 - 3*x)).

The programs for A286722, there is no canonical definition to state claims against.
-/

/-! ## A286722.P6127029237794902715

`A225470(∑[n+2]+3)`
-/

namespace A286722.P6127029237794902715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A286722.P6127029237794902715

/-! ## A286722.P534000946820111455

`record[gcd(A225470(n), A334568(n))]`
-/

namespace A286722.P534000946820111455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225470 n) (A334568 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286722.P534000946820111455

/-! ## A286722.P10847572914924977539

`record[gcd(A225470(n+3), A287417(n))]`
-/

namespace A286722.P10847572914924977539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225470 (n + 3)) (A287417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286722.P10847572914924977539

/-! ## A286722.P12504884052979744531

`record[A225470(n)*A227985(n)]`
-/

namespace A286722.P12504884052979744531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 n * A227985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286722.P12504884052979744531

/-! ## A286722.P9046639212995822211

`record[gcd(A225470(n+1), A290317(n))]`
-/

namespace A286722.P9046639212995822211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225470 (n + 1)) (A290317 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286722.P9046639212995822211

/-!
# A286723: Column k = 1 of the triangle A225471; Sheffer ((1 - 3*x)^(-3/4), (-1/4)*log(1 - 4*x)).

The programs for A286723, there is no canonical definition to state claims against.
-/

/-! ## A286723.P3338601792833482290

`A225471(∑[n+1]+1)`
-/

namespace A286723.P3338601792833482290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225471 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A286723.P3338601792833482290

/-! ## A286723.P3428872814861259814

`A008545(n)+a(n-1)*(4*n+3)` with `a(0)=1`
-/

namespace A286723.P3428872814861259814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008545 n + a (n - 1) * (4 * n + 3 : ℤ)

end

end A286723.P3428872814861259814

/-! ## A286723.P11479369904411391442

`record[A225471(∑[A035214(n)])]`
-/

namespace A286723.P11479369904411391442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225471 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286723.P11479369904411391442

/-! ## A286723.P5776454106443480145

`record[A225471(A014132(n+1))]`
-/

namespace A286723.P5776454106443480145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225471 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286723.P5776454106443480145

/-! ## A286723.P12229415985926000123

`record[and(A225471(n), A294580(n))]`
-/

namespace A286723.P12229415985926000123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A225471 n) (A294580 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286723.P12229415985926000123

/-!
# A286724: Triangle read by rows. A generalization of unsigned Lah numbers, called L[2,1].

The programs for A286724, the canonical program `A286724.P12271234840437478541` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286724 has offset 0).

The definition of A286724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286724.P12271234840437478541

`T(n-1,k-1)+2*(2*row(n)-1)*T(n-1,k)-4*(row(n)-1)²*T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286724

/-- `T(n-1,k-1)+2*(2*row(n)-1)*T(n-1,k)-4*(row(n)-1)²*T(n-2,k)` -/
def P12271234840437478541.Spec : Prop :=
  ∀ n, P12271234840437478541.a n = A286724 n

theorem P12271234840437478541.correct : P12271234840437478541.Spec := by
  intro n
  simp only [A286724]

end A286724

/-! ## A286724.P12638813572754631833

`2^(row(n)-col(n))*(row(n)-col(n))!*C(row(n), row(n)-col(n))²`
-/

namespace A286724.P12638813572754631833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ) * (Nat.choose (SequenceMachineLib.triRow n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat ^ 2 : ℚ)

end

end A286724.P12638813572754631833

namespace A286724

/-- `2^(row(n)-col(n))*(row(n)-col(n))!*C(row(n), row(n)-col(n))²` -/
def P12638813572754631833.Spec : Prop :=
  ∀ n, P12638813572754631833.a n = (A286724 n : ℚ)

end A286724

/-! ## A286724.P7735444777987031655

`2*(row(n)+col(n))*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A286724.P7735444777987031655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A286724.P7735444777987031655

namespace A286724

/-- `2*(row(n)+col(n))*T(n-1,k)+T(n-1,k-1)` -/
def P7735444777987031655.Spec : Prop :=
  ∀ n, (P7735444777987031655.a n : ℤ) = A286724 n

end A286724

/-! ## A286724.P2195448957631172210

`A038207(n)*A094587(n)`
-/

namespace A286724.P2195448957631172210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A094587 n

end

end A286724.P2195448957631172210

namespace A286724

/-- `A038207(n)*A094587(n)` -/
def P2195448957631172210.Spec : Prop :=
  ∀ n, P2195448957631172210.a n = A286724 n

end A286724

/-! ## A286724.P12564637172128387972

`abs(A021009(n)*A130321(n))`
-/

namespace A286724.P12564637172128387972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A021009 n * A130321 n|

end

end A286724.P12564637172128387972

namespace A286724

/-- `abs(A021009(n)*A130321(n))` -/
def P12564637172128387972.Spec : Prop :=
  ∀ n, P12564637172128387972.a n = A286724 n

end A286724

/-! ## A286724.P8754765159460987054

`abs(A065109(n)*A094587(n))`
-/

namespace A286724.P8754765159460987054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065109 n * A094587 n|

end

end A286724.P8754765159460987054

namespace A286724

/-- `abs(A065109(n)*A094587(n))` -/
def P8754765159460987054.Spec : Prop :=
  ∀ n, P8754765159460987054.a n = A286724 n

end A286724

/-! ## A286724.P8575332571472875983

`A000165(A025581(n))*A008459(n)`
-/

namespace A286724.P8575332571472875983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (A025581 n).toNat * A008459 n

end

end A286724.P8575332571472875983

namespace A286724

/-- `A000165(A025581(n))*A008459(n)` -/
def P8575332571472875983.Spec : Prop :=
  ∀ n, P8575332571472875983.a n = A286724 n

end A286724

/-! ## A286724.P7063095750598044588

`A008279(A061579(n))*A038207(n)`
-/

namespace A286724.P7063095750598044588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat * A038207 n

end

end A286724.P7063095750598044588

namespace A286724

/-- `A008279(A061579(n))*A038207(n)` -/
def P7063095750598044588.Spec : Prop :=
  ∀ n, P7063095750598044588.a n = A286724 n

end A286724

/-! ## A286724.P608284834761674182

`A013609(A061579(n))*A094587(n)`
-/

namespace A286724.P608284834761674182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A061579 n).toNat * A094587 n

end

end A286724.P608284834761674182

namespace A286724

/-- `A013609(A061579(n))*A094587(n)` -/
def P608284834761674182.Spec : Prop :=
  ∀ n, P608284834761674182.a n = A286724 n

end A286724

/-! ## A286724.P5692614728680286681

`A007318(n)*A094587(n)*A130321(n)`
-/

namespace A286724.P5692614728680286681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A094587 n * A130321 n

end

end A286724.P5692614728680286681

namespace A286724

/-- `A007318(n)*A094587(n)*A130321(n)` -/
def P5692614728680286681.Spec : Prop :=
  ∀ n, P5692614728680286681.a n = A286724 n

end A286724

/-!
# A286725: Third column of triangle A286724: Lah[2,1](n+2, 2), n >= 0.

The programs for A286725, the canonical program `A286725.P10922541271767396548` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286725 has offset 0).

The definition of A286725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286725.P10922541271767396548

`2^(n-1)*(n+2)!*C(n+2, 2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286725

/-- `2^(n-1)*(n+2)!*C(n+2, 2)` -/
def P10922541271767396548.Spec : Prop :=
  ∀ n, P10922541271767396548.a n = (A286725 n : ℚ)

end A286725

/-! ## A286725.P6962807535780543111

`2^n*n!*∑[n+1]²`
-/

namespace A286725.P6962807535780543111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A286725.P6962807535780543111

namespace A286725

/-- `2^n*n!*∑[n+1]²` -/
def P6962807535780543111.Spec : Prop :=
  ∀ n, (P6962807535780543111.a n : ℤ) = A286725 n

end A286725

/-! ## A286725.P14492478679117166713

`2*a(n-1)/n*(n+2)²` with `a(0)=1`
-/

namespace A286725.P14492478679117166713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) / (n : ℚ) * ((n + 2) ^ 2 : ℚ))

end

end A286725.P14492478679117166713

namespace A286725

/-- `2*a(n-1)/n*(n+2)²` -/
def P14492478679117166713.Spec : Prop :=
  ∀ n, P14492478679117166713.a n = (A286725 n : ℚ)

end A286725

/-! ## A286725.P723921820770487251

`(n+2)!*∑[n+1]*2^(n-1)`
-/

namespace A286725.P723921820770487251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A286725.P723921820770487251

namespace A286725

/-- `(n+2)!*∑[n+1]*2^(n-1)` -/
def P723921820770487251.Spec : Prop :=
  ∀ n, P723921820770487251.a n = (A286725 n : ℚ)

end A286725

/-! ## A286725.P10158087464764394766

`∑[n+1]*A051578(n)`
-/

namespace A286725.P10158087464764394766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A051578 n

end

end A286725.P10158087464764394766

namespace A286725

/-- `∑[n+1]*A051578(n)` -/
def P10158087464764394766.Spec : Prop :=
  ∀ n, P10158087464764394766.a n = A286725 n

end A286725

/-! ## A286725.P15088607782673532022

`∑[n+1]²*A000165(n)`
-/

namespace A286725.P15088607782673532022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A000165 n

end

end A286725.P15088607782673532022

namespace A286725

/-- `∑[n+1]²*A000165(n)` -/
def P15088607782673532022.Spec : Prop :=
  ∀ n, P15088607782673532022.a n = A286725 n

end A286725

/-! ## A286725.P12426147322403652644

`(A052905(2*n)+n+7)*a(n-1)/n` with `a(0)=1`
-/

namespace A286725.P12426147322403652644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A052905 (2 * n) + (n + 7 : ℤ) : ℚ) * a (n - 1) / (n : ℚ)

end

end A286725.P12426147322403652644

namespace A286725

/-- `(A052905(2*n)+n+7)*a(n-1)/n` -/
def P12426147322403652644.Spec : Prop :=
  ∀ n, P12426147322403652644.a n = (A286725 n : ℚ)

end A286725

/-! ## A286725.P2722780290562574717

`A000165(n)*A000537(n+1)`
-/

namespace A286725.P2722780290562574717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A000537 (n + 1)

end

end A286725.P2722780290562574717

namespace A286725

/-- `A000165(n)*A000537(n+1)` -/
def P2722780290562574717.Spec : Prop :=
  ∀ n, P2722780290562574717.a n = A286725 n

end A286725

/-! ## A286725.P3719141139517816627

`A000165(n)*A000217(n+1)²`
-/

namespace A286725.P3719141139517816627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A000217 (n + 1) ^ 2

end

end A286725.P3719141139517816627

namespace A286725

/-- `A000165(n)*A000217(n+1)²` -/
def P3719141139517816627.Spec : Prop :=
  ∀ n, P3719141139517816627.a n = A286725 n

end A286725

/-! ## A286725.P6017658389627783176

`∏[A004277(n)]*A000537(n+1)`
-/

namespace A286725.P6017658389627783176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000537 (n + 1)

end

end A286725.P6017658389627783176

namespace A286725

/-- `∏[A004277(n)]*A000537(n+1)` -/
def P6017658389627783176.Spec : Prop :=
  ∀ n, P6017658389627783176.a n = A286725 n

end A286725

/-!
# A286726: {0->10, 1->01}-transform of the Pell word, A171588.

The programs for A286726, the canonical program `A286726.P13971804869111894166` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286726 has offset 1).

The definition of A286726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286726.P13971804869111894166

`1-A286685(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A286726

/-- `1-A286685(n+1)` -/
def P13971804869111894166.Spec : Prop :=
  ∀ n, P13971804869111894166.a n = A286726 (n + 1)

theorem P13971804869111894166.correct : P13971804869111894166.Spec := by
  intro n
  simp only [A286726, Nat.add_sub_cancel]

end A286726

/-! ## A286726.P13970765070429063852

`A286685(xor(1, n)+1)`
-/

namespace A286726.P13970765070429063852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (Nat.xor 1 n + 1)

end

end A286726.P13970765070429063852

namespace A286726

/-- `A286685(xor(1, n)+1)` -/
def P13970765070429063852.Spec : Prop :=
  ∀ n, P13970765070429063852.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P14291013890685165750

`char[A286686(n+1)-1]`
-/

namespace A286726.P14291013890685165750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286726.P14291013890685165750

namespace A286726

/-- `char[A286686(n+1)-1]` -/
def P14291013890685165750.Spec : Prop :=
  ∀ n, (P14291013890685165750.a n : ℤ) = A286726 (n + 1)

end A286726

/-! ## A286726.P7124951758837014693

`char[Δ[n²]-A080764(n)]`
-/

namespace A286726.P7124951758837014693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A080764 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286726.P7124951758837014693

namespace A286726

/-- `char[Δ[n²]-A080764(n)]` -/
def P7124951758837014693.Spec : Prop :=
  ∀ n, (P7124951758837014693.a n : ℤ) = A286726 (n + 1)

end A286726

/-! ## A286726.P2175377568110469875

`1-char[A286687(n+1)-1]`
-/

namespace A286726.P2175377568110469875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286726.P2175377568110469875

namespace A286726

/-- `1-char[A286687(n+1)-1]` -/
def P2175377568110469875.Spec : Prop :=
  ∀ n, P2175377568110469875.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P3929035332794368128

`char[A171588(n+1)+2*n]`
-/

namespace A286726.P3929035332794368128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1) + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286726.P3929035332794368128

namespace A286726

/-- `char[A171588(n+1)+2*n]` -/
def P3929035332794368128.Spec : Prop :=
  ∀ n, (P3929035332794368128.a n : ℤ) = A286726 (n + 1)

end A286726

/-! ## A286726.P10442810354466225200

`char[2*n-char[A001951(n)]-1]`
-/

namespace A286726.P10442810354466225200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286726.P10442810354466225200

namespace A286726

/-- `char[2*n-char[A001951(n)]-1]` -/
def P10442810354466225200.Spec : Prop :=
  ∀ n, (P10442810354466225200.a n : ℤ) = A286726 (n + 1)

end A286726

/-! ## A286726.P9313679036984841691

`A286685(A004442(n)+1)`
-/

namespace A286726.P9313679036984841691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A004442 n + 1).toNat

end

end A286726.P9313679036984841691

namespace A286726

/-- `A286685(A004442(n)+1)` -/
def P9313679036984841691.Spec : Prop :=
  ∀ n, P9313679036984841691.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P6852769835332880477

`A286685(A014681(n+1))`
-/

namespace A286726.P6852769835332880477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A014681 (n + 1)).toNat

end

end A286726.P6852769835332880477

namespace A286726

/-- `A286685(A014681(n+1))` -/
def P6852769835332880477.Spec : Prop :=
  ∀ n, P6852769835332880477.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P11602144011165707417

`A286685(A103889(n+1))`
-/

namespace A286726.P11602144011165707417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A103889 (n + 1)).toNat

end

end A286726.P11602144011165707417

namespace A286726

/-- `A286685(A103889(n+1))` -/
def P11602144011165707417.Spec : Prop :=
  ∀ n, P11602144011165707417.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P5091972162185285032

`1-(A286907(n+1)+A286688(n+1))`
-/

namespace A286726.P5091972162185285032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A286907 (n + 1) + A286688 (n + 1))

end

end A286726.P5091972162185285032

namespace A286726

/-- `1-(A286907(n+1)+A286688(n+1))` -/
def P5091972162185285032.Spec : Prop :=
  ∀ n, P5091972162185285032.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P5623206182201269587

`A286907(A286925(n+1)+2+n)`
-/

namespace A286726.P5623206182201269587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286907 (A286925 (n + 1) + 2 + (n : ℤ)).toNat

end

end A286726.P5623206182201269587

namespace A286726

/-- `A286907(A286925(n+1)+2+n)` -/
def P5623206182201269587.Spec : Prop :=
  ∀ n, P5623206182201269587.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P12802480454601999378

`A135528(A135528(n+1)+A286685(n+1)+n)`
-/

namespace A286726.P12802480454601999378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A135528 (n + 1) + (A286685 (n + 1) + (n : ℤ))).toNat

end

end A286726.P12802480454601999378

namespace A286726

/-- `A135528(A135528(n+1)+A286685(n+1)+n)` -/
def P12802480454601999378.Spec : Prop :=
  ∀ n, P12802480454601999378.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P11822660524878459526

`A188374(A188397(n+1))`
-/

namespace A286726.P11822660524878459526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (A188397 (n + 1)).toNat

end

end A286726.P11822660524878459526

namespace A286726

/-- `A188374(A188397(n+1))` -/
def P11822660524878459526.Spec : Prop :=
  ∀ n, P11822660524878459526.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P12392660690657501427

`A286990(A001651(n+1))`
-/

namespace A286726.P12392660690657501427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286990 (A001651 (n + 1)).toNat

end

end A286726.P12392660690657501427

namespace A286726

/-- `A286990(A001651(n+1))` -/
def P12392660690657501427.Spec : Prop :=
  ∀ n, P12392660690657501427.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P11405174697365433554

`A287028(A166517(n))`
-/

namespace A286726.P11405174697365433554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287028 (A166517 n).toNat

end

end A286726.P11405174697365433554

namespace A286726

/-- `A287028(A166517(n))` -/
def P11405174697365433554.Spec : Prop :=
  ∀ n, P11405174697365433554.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P10505487855929155511

`A287028(A007494(n+1))`
-/

namespace A286726.P10505487855929155511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287028 (A007494 (n + 1)).toNat

end

end A286726.P10505487855929155511

namespace A286726

/-- `A287028(A007494(n+1))` -/
def P10505487855929155511.Spec : Prop :=
  ∀ n, P10505487855929155511.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P337460839257710268

`A286990(A166517(n)+1)`
-/

namespace A286726.P337460839257710268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286990 (A166517 n + 1).toNat

end

end A286726.P337460839257710268

namespace A286726

/-- `A286990(A166517(n)+1)` -/
def P337460839257710268.Spec : Prop :=
  ∀ n, P337460839257710268.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P8592144744819687463

`A287028(A294732(n+3))`
-/

namespace A286726.P8592144744819687463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287028 (A294732 (n + 3)).toNat

end

end A286726.P8592144744819687463

namespace A286726

/-- `A287028(A294732(n+3))` -/
def P8592144744819687463.Spec : Prop :=
  ∀ n, P8592144744819687463.a n = A286726 (n + 1)

end A286726

/-! ## A286726.P984317231764656441

`A287028(A001651(n+1)+1)`
-/

namespace A286726.P984317231764656441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287028 (A001651 (n + 1) + 1).toNat

end

end A286726.P984317231764656441

namespace A286726

/-- `A287028(A001651(n+1)+1)` -/
def P984317231764656441.Spec : Prop :=
  ∀ n, P984317231764656441.a n = A286726 (n + 1)

end A286726

/-!
# A286727: Positions of 0 in A286063; complement of A286728.

The programs for A286727, the canonical program `A286727.P12806024800689892931` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286727 has offset 1).

The definition of A286727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286727.P17014494989345329011

`∑[ceil(sqrt(A254378(n+1)))]`
-/

namespace A286727.P17014494989345329011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A254378 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286727.P17014494989345329011

namespace A286727

/-- `∑[ceil(sqrt(A254378(n+1)))]` -/
def P17014494989345329011.Spec : Prop :=
  ∀ n, P17014494989345329011.a n = A286727 (n + 1)

end A286727

/-! ## A286727.P2281748381414952311

`comp[A128309(n+1)-n]+1`
-/

namespace A286727.P2281748381414952311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286727.P2281748381414952311

namespace A286727

/-- `comp[A128309(n+1)-n]+1` -/
def P2281748381414952311.Spec : Prop :=
  ∀ n, (P2281748381414952311.a n : ℤ) = A286727 (n + 1)

end A286727

/-! ## A286727.P17139240550546065712

`(A006364(n+1)+n)/2+1`
-/

namespace A286727.P17139240550546065712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006364 (n + 1) + (n : ℤ) : ℚ) / 2 + 1

end

end A286727.P17139240550546065712

namespace A286727

/-- `(A006364(n+1)+n)/2+1` -/
def P17139240550546065712.Spec : Prop :=
  ∀ n, P17139240550546065712.a n = (A286727 (n + 1) : ℚ)

end A286727

/-! ## A286727.P5097389599265414006

`comp[2*A000069(n+1)-n]+1`
-/

namespace A286727.P5097389599265414006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000069 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286727.P5097389599265414006

namespace A286727

/-- `comp[2*A000069(n+1)-n]+1` -/
def P5097389599265414006.Spec : Prop :=
  ∀ n, (P5097389599265414006.a n : ℤ) = A286727 (n + 1)

end A286727

/-! ## A286727.P10773470409154662338

`∑[2-char[xor(n, 2*n)]]-A228495(n)`
-/

namespace A286727.P10773470409154662338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A228495 n

end

end A286727.P10773470409154662338

namespace A286727

/-- `∑[2-char[xor(n, 2*n)]]-A228495(n)` -/
def P10773470409154662338.Spec : Prop :=
  ∀ n, P10773470409154662338.a n = A286727 (n + 1)

end A286727

/-! ## A286727.P12806024800689892931

`A095190(n)+A001651(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286727

/-- `A095190(n)+A001651(n+1)` -/
def P12806024800689892931.Spec : Prop :=
  ∀ n, P12806024800689892931.a n = A286727 (n + 1)

theorem P12806024800689892931.correct : P12806024800689892931.Spec := by
  intro n
  simp only [A286727, Nat.add_sub_cancel]

end A286727

/-! ## A286727.P2491247023821633273

`A285954(n+1)+A254379(n)`
-/

namespace A286727.P2491247023821633273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (n + 1) + A254379 n

end

end A286727.P2491247023821633273

namespace A286727

/-- `A285954(n+1)+A254379(n)` -/
def P2491247023821633273.Spec : Prop :=
  ∀ n, P2491247023821633273.a n = A286727 (n + 1)

end A286727

/-! ## A286727.P18323283550250030785

`∑[A001285(n)]-n%A001285(n)`
-/

namespace A286727.P18323283550250030785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (n : ℤ) (A001285 n)

end

end A286727.P18323283550250030785

namespace A286727

/-- `∑[A001285(n)]-n%A001285(n)` -/
def P18323283550250030785.Spec : Prop :=
  ∀ n, P18323283550250030785.a n = A286727 (n + 1)

end A286727

/-! ## A286727.P15017139227313896739

`n+1+A093505(A110654(n+1))`
-/

namespace A286727.P15017139227313896739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A093505 (A110654 (n + 1)).toNat

end

end A286727.P15017139227313896739

namespace A286727

/-- `n+1+A093505(A110654(n+1))` -/
def P15017139227313896739.Spec : Prop :=
  ∀ n, P15017139227313896739.a n = A286727 (n + 1)

end A286727

/-! ## A286727.P17160898680220587112

`∪[A285951(n+1)-1, A285951(n+1)]`
-/

namespace A286727.P17160898680220587112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285951 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286727.P17160898680220587112

namespace A286727

/-- `∪[A285951(n+1)-1, A285951(n+1)]` -/
def P17160898680220587112.Spec : Prop :=
  ∀ n, (P17160898680220587112.a n : ℤ) = A286727 (n + 1)

end A286727

/-! ## A286727.P14290958324703604766

`A008619(n+1)+xor(n, 1-A010059(n))`
-/

namespace A286727.P14290958324703604766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + Int.xor (n : ℤ) (1 - A010059 n)

end

end A286727.P14290958324703604766

namespace A286727

/-- `A008619(n+1)+xor(n, 1-A010059(n))` -/
def P14290958324703604766.Spec : Prop :=
  ∀ n, P14290958324703604766.a n = A286727 (n + 1)

end A286727

/-! ## A286727.P3593051599479334872

`A008619(n+1)+A001969(A008619(n))`
-/

namespace A286727.P3593051599479334872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + A001969 (A008619 n).toNat

end

end A286727.P3593051599479334872

namespace A286727

/-- `A008619(n+1)+A001969(A008619(n))` -/
def P3593051599479334872.Spec : Prop :=
  ∀ n, P3593051599479334872.a n = A286727 (n + 1)

end A286727

/-! ## A286727.P5788198902120623907

`A004526(n)+A001285(A004526(n))+n`
-/

namespace A286727.P5788198902120623907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A001285 (A004526 n).toNat + (n : ℤ))

end

end A286727.P5788198902120623907

namespace A286727

/-- `A004526(n)+A001285(A004526(n))+n` -/
def P5788198902120623907.Spec : Prop :=
  ∀ n, P5788198902120623907.a n = A286727 (n + 1)

end A286727

/-! ## A286727.P9290324256654795564

`A066530(A006364(n+1))`
-/

namespace A286727.P9290324256654795564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 (A006364 (n + 1)).toNat

end

end A286727.P9290324256654795564

namespace A286727

/-- `A066530(A006364(n+1))` -/
def P9290324256654795564.Spec : Prop :=
  ∀ n, P9290324256654795564.a n = A286727 (n + 1)

end A286727

/-! ## A286727.P16567355069239917252

`comp[A010060(n)*A285950(n+1)]`
-/

namespace A286727.P16567355069239917252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n * A285950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286727.P16567355069239917252

namespace A286727

/-- `comp[A010060(n)*A285950(n+1)]` -/
def P16567355069239917252.Spec : Prop :=
  ∀ n, (P16567355069239917252.a n : ℤ) = A286727 (n + 1)

end A286727

/-! ## A286727.P1790185913675512136

`comp[(1-A010059(n))*A285950(n+1)]`
-/

namespace A286727.P1790185913675512136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010059 n) * A285950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286727.P1790185913675512136

namespace A286727

/-- `comp[(1-A010059(n))*A285950(n+1)]` -/
def P1790185913675512136.Spec : Prop :=
  ∀ n, (P1790185913675512136.a n : ℤ) = A286727 (n + 1)

end A286727

/-! ## A286727.P16912964639650461352

`comp[A000120(n)%2*A285950(n+1)]`
-/

namespace A286727.P16912964639650461352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2 * A285950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286727.P16912964639650461352

namespace A286727

/-- `comp[A000120(n)%2*A285950(n+1)]` -/
def P16912964639650461352.Spec : Prop :=
  ∀ n, (P16912964639650461352.a n : ℤ) = A286727 (n + 1)

end A286727

/-! ## A286727.P5084863555048714523

`A008619(n+1)+xor(n, A010059(2*n+1))`
-/

namespace A286727.P5084863555048714523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + Int.xor (n : ℤ) (A010059 (2 * n + 1))

end

end A286727.P5084863555048714523

namespace A286727

/-- `A008619(n+1)+xor(n, A010059(2*n+1))` -/
def P5084863555048714523.Spec : Prop :=
  ∀ n, P5084863555048714523.a n = A286727 (n + 1)

end A286727

/-! ## A286727.P7459529141985052473

`eq[A285952(2*n+1), A285952(n+2)]+1`
-/

namespace A286727.P7459529141985052473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285952 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285952 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A286727.P7459529141985052473

namespace A286727

/-- `eq[A285952(2*n+1), A285952(n+2)]+1` -/
def P7459529141985052473.Spec : Prop :=
  ∀ n, (P7459529141985052473.a n : ℤ) = A286727 (n + 1)

end A286727

/-!
# A286728: Positions of 1 in A286063; complement of A286727.

The programs for A286728, the canonical program `A286728.P15602281244658030845` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286728 has offset 1).

The definition of A286728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286728.P12451849296863848672

`2*comp[xor(n, 2*n)]+1-n`
-/

namespace A286728.P12451849296863848672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (1 - (n : ℤ))

end

end A286728.P12451849296863848672

namespace A286728

/-- `2*comp[xor(n, 2*n)]+1-n` -/
def P12451849296863848672.Spec : Prop :=
  ∀ n, P12451849296863848672.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P6933735481751402613

`1-(n-2*comp[xor(n, 2*n)])`
-/

namespace A286728.P6933735481751402613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A286728.P6933735481751402613

namespace A286728

/-- `1-(n-2*comp[xor(n, 2*n)])` -/
def P6933735481751402613.Spec : Prop :=
  ∀ n, P6933735481751402613.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P15602281244658030845

`eq[-a(and(n, n-1)), n%2]-n` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286728

/-- `eq[-a(and(n, n-1)), n%2]-n` -/
def P15602281244658030845.Spec : Prop :=
  ∀ n, P15602281244658030845.a n = A286728 (n + 1)

theorem P15602281244658030845.correct : P15602281244658030845.Spec := by
  intro n
  simp only [A286728, Nat.add_sub_cancel]

end A286728

/-! ## A286728.P3431604358536018744

`A129771(n+1)-n`
-/

namespace A286728.P3431604358536018744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1) - (n : ℤ)

end

end A286728.P3431604358536018744

namespace A286728

/-- `A129771(n+1)-n` -/
def P3431604358536018744.Spec : Prop :=
  ∀ n, P3431604358536018744.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P6968733727356424626

`∑[A292118(n)+2]+n`
-/

namespace A286728.P6968733727356424626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292118 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A286728.P6968733727356424626

namespace A286728

/-- `∑[A292118(n)+2]+n` -/
def P6968733727356424626.Spec : Prop :=
  ∀ n, P6968733727356424626.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P14784266502201573503

`A128309(n+1)+1-n`
-/

namespace A286728.P14784266502201573503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1) + (1 - (n : ℤ))

end

end A286728.P14784266502201573503

namespace A286728

/-- `A128309(n+1)+1-n` -/
def P14784266502201573503.Spec : Prop :=
  ∀ n, P14784266502201573503.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P5138659180655455242

`A106400(n)+3*n+2`
-/

namespace A286728.P5138659180655455242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n + (3 * n + 2 : ℤ)

end

end A286728.P5138659180655455242

namespace A286728

/-- `A106400(n)+3*n+2` -/
def P5138659180655455242.Spec : Prop :=
  ∀ n, P5138659180655455242.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P240208811492244007

`or(1, A181155(n+1))+n`
-/

namespace A286728.P240208811492244007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A181155 (n + 1)) + (n : ℤ)

end

end A286728.P240208811492244007

namespace A286728

/-- `or(1, A181155(n+1))+n` -/
def P240208811492244007.Spec : Prop :=
  ∀ n, P240208811492244007.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P12068328881109285276

`xor(2, A092246(n+1))-n`
-/

namespace A286728.P12068328881109285276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A092246 (n + 1)) - (n : ℤ)

end

end A286728.P12068328881109285276

namespace A286728

/-- `xor(2, A092246(n+1))-n` -/
def P12068328881109285276.Spec : Prop :=
  ∀ n, P12068328881109285276.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P14256797690706400054

`∑[A254655(2*n+1)]+1`
-/

namespace A286728.P14256797690706400054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A286728.P14256797690706400054

namespace A286728

/-- `∑[A254655(2*n+1)]+1` -/
def P14256797690706400054.Spec : Prop :=
  ∀ n, P14256797690706400054.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P6833136592014384346

`2*A000069(n+1)+1-n`
-/

namespace A286728.P6833136592014384346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000069 (n + 1) + 1 - (n : ℤ)

end

end A286728.P6833136592014384346

namespace A286728

/-- `2*A000069(n+1)+1-n` -/
def P6833136592014384346.Spec : Prop :=
  ∀ n, P6833136592014384346.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P1133695353659098228

`2*A161560(n+1)+n+3`
-/

namespace A286728.P1133695353659098228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161560 (n + 1) + (n + 3 : ℤ)

end

end A286728.P1133695353659098228

namespace A286728

/-- `2*A161560(n+1)+n+3` -/
def P1133695353659098228.Spec : Prop :=
  ∀ n, P1133695353659098228.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P14051351003617880032

`2*(n-A010060(n))+3+n`
-/

namespace A286728.P14051351003617880032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A010060 n) + 3 + (n : ℤ)

end

end A286728.P14051351003617880032

namespace A286728

/-- `2*(n-A010060(n))+3+n` -/
def P14051351003617880032.Spec : Prop :=
  ∀ n, P14051351003617880032.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P1754128030144269389

`2*(n+1-A000120(n)%2)+n+1`
-/

namespace A286728.P1754128030144269389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - Int.tmod (A000120 n) 2) + (n : ℤ) + 1

end

end A286728.P1754128030144269389

namespace A286728

/-- `2*(n+1-A000120(n)%2)+n+1` -/
def P1754128030144269389.Spec : Prop :=
  ∀ n, P1754128030144269389.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P767808548022514661

`A336146(A128309(n+1)+1)`
-/

namespace A286728.P767808548022514661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336146 (A128309 (n + 1) + 1).toNat

end

end A286728.P767808548022514661

namespace A286728

/-- `A336146(A128309(n+1)+1)` -/
def P767808548022514661.Spec : Prop :=
  ∀ n, P767808548022514661.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P5004383053391157287

`A356133(n+1)+A010059(n)`
-/

namespace A286728.P5004383053391157287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1) + A010059 n

end

end A286728.P5004383053391157287

namespace A286728

/-- `A356133(n+1)+A010059(n)` -/
def P5004383053391157287.Spec : Prop :=
  ∀ n, P5004383053391157287.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P17667028890047097033

`A017029(n)-A092246(n+1)`
-/

namespace A286728.P17667028890047097033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - A092246 (n + 1)

end

end A286728.P17667028890047097033

namespace A286728

/-- `A017029(n)-A092246(n+1)` -/
def P17667028890047097033.Spec : Prop :=
  ∀ n, P17667028890047097033.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P14740457926761508525

`A017017(n)-A125592(n+1)`
-/

namespace A286728.P14740457926761508525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n - A125592 (n + 1)

end

end A286728.P14740457926761508525

namespace A286728

/-- `A017017(n)-A125592(n+1)` -/
def P14740457926761508525.Spec : Prop :=
  ∀ n, P14740457926761508525.a n = A286728 (n + 1)

end A286728

/-! ## A286728.P6213143974958202841

`A285953(n+1)-A010060(n)`
-/

namespace A286728.P6213143974958202841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (n + 1) - A010060 n

end

end A286728.P6213143974958202841

namespace A286728

/-- `A285953(n+1)-A010060(n)` -/
def P6213143974958202841.Spec : Prop :=
  ∀ n, P6213143974958202841.a n = A286728 (n + 1)

end A286728

/-!
# A286729: a(n)=position of the first occurrence of a local maximum equal to 2n in A001223, n>1.

The programs for A286729, there is no canonical definition to state claims against.
-/

/-! ## A286729.P2560437426644994016

`A000720(A368640(n+2))`
-/

namespace A286729.P2560437426644994016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A368640 (n + 2)).toNat

end

end A286729.P2560437426644994016

/-! ## A286729.P9792876788645150453

`A067004(or(1, A368640(n+2)))`
-/

namespace A286729.P9792876788645150453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (Int.lor 1 (A368640 (n + 2))).toNat

end

end A286729.P9792876788645150453

/-!
# A286730: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A286730, there is no canonical definition to state claims against.
-/

/-! ## A286730.P2223572023047997000

`A285651(n)-A010051(A025617(n+1))`
-/

namespace A286730.P2223572023047997000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285651 n - A010051 (A025617 (n + 1)).toNat

end

end A286730.P2223572023047997000

/-! ## A286730.P12816019843281916840

`A285651(n)-A003982(A058278(n))`
-/

namespace A286730.P12816019843281916840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285651 n - A003982 (A058278 n).toNat

end

end A286730.P12816019843281916840

/-! ## A286730.P17129502370072569666

`A285651(n)-A010051(A143095(n))`
-/

namespace A286730.P17129502370072569666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285651 n - A010051 (A143095 n).toNat

end

end A286730.P17129502370072569666

/-! ## A286730.P14422423849632679133

`A285651(n)-A285701(A008517(n+1))`
-/

namespace A286730.P14422423849632679133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285651 n - A285701 (A008517 (n + 1)).toNat

end

end A286730.P14422423849632679133

/-! ## A286730.P14883661013725489734

`A285651(n)-A209229(A017510(n))`
-/

namespace A286730.P14883661013725489734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285651 n - A209229 (A017510 n).toNat

end

end A286730.P14883661013725489734

/-!
# A286731: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A286731, there is no canonical definition to state claims against.
-/

/-! ## A286731.P7448345187098086347

`A005171(A025617(n+1))*A285652(n)`
-/

namespace A286731.P7448345187098086347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A025617 (n + 1)).toNat * A285652 n

end

end A286731.P7448345187098086347

/-! ## A286731.P15353721346930839842

`A057427(A058278(n))*A285652(n)`
-/

namespace A286731.P15353721346930839842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A058278 n).toNat * A285652 n

end

end A286731.P15353721346930839842

/-! ## A286731.P12583466079122078711

`A285652(n)%A285609(A285614(n+1))`
-/

namespace A286731.P12583466079122078711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285652 n) (A285609 (A285614 (n + 1)).toNat)

end

end A286731.P12583466079122078711

/-! ## A286731.P17557837209010582489

`A007088(A286733(n))`
-/

namespace A286731.P17557837209010582489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286733 n).toNat

end

end A286731.P17557837209010582489

/-! ## A286731.P2886401620664807073

`A007088(A266678(n)*A285654(n))`
-/

namespace A286731.P2886401620664807073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266678 n * A285654 n).toNat

end

end A286731.P2886401620664807073

/-!
# A286732: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A286732, there is no canonical definition to state claims against.
-/

/-! ## A286732.P12959065549994097564

`A285653(n)-A003982(A073150(n))`
-/

namespace A286732.P12959065549994097564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285653 n - A003982 (A073150 n).toNat

end

end A286732.P12959065549994097564

/-! ## A286732.P18446215309685400639

`A285653(n)-A209229(∑[A022264(n)])`
-/

namespace A286732.P18446215309685400639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285653 n - A209229 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286732.P18446215309685400639

/-! ## A286732.P8875427606331117971

`A285653(n)-A010051(A025617(n+1))`
-/

namespace A286732.P8875427606331117971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285653 n - A010051 (A025617 (n + 1)).toNat

end

end A286732.P8875427606331117971

/-! ## A286732.P2952246902624951833

`A011558(A319613(n+1))*A285653(n)`
-/

namespace A286732.P2952246902624951833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A319613 (n + 1)).toNat * A285653 n

end

end A286732.P2952246902624951833

/-! ## A286732.P4698433362064502212

`A266678(A051885(n))*A285653(n)`
-/

namespace A286732.P4698433362064502212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 (A051885 n).toNat * A285653 n

end

end A286732.P4698433362064502212

/-!
# A286733: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A286733, there is no canonical definition to state claims against.
-/

/-! ## A286733.P4444919520184094199

`A011558(A319613(n+1))*A285654(n)`
-/

namespace A286733.P4444919520184094199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A319613 (n + 1)).toNat * A285654 n

end

end A286733.P4444919520184094199

/-! ## A286733.P2156317302776428753

`A266678(n)*A285654(n)*A255327(A094159(n+1)-n)`
-/

namespace A286733.P2156317302776428753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n * A285654 n * A255327 (A094159 (n + 1) - (n : ℤ)).toNat

end

end A286733.P2156317302776428753

/-! ## A286733.P10016526691489166519

`A266678(A051885(n))*A285654(n)`
-/

namespace A286733.P10016526691489166519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 (A051885 n).toNat * A285654 n

end

end A286733.P10016526691489166519

/-! ## A286733.P4788558993330280261

`A285654(n)%A079007(n)`
-/

namespace A286733.P4788558993330280261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285654 n) (A079007 n)

end

end A286733.P4788558993330280261

/-! ## A286733.P17601216615334944619

`A124766(A288196(n))*A285654(n)`
-/

namespace A286733.P17601216615334944619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A288196 n).toNat * A285654 n

end

end A286733.P17601216615334944619

/-!
# A286734: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 214", based on the 5-celled von Neumann neighborhood.

The programs for A286734, there is no canonical definition to state claims against.
-/

/-! ## A286734.P7646425832530854203

`A007088(A286736(n))`
-/

namespace A286734.P7646425832530854203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286736 n).toNat

end

end A286734.P7646425832530854203

/-! ## A286734.P5236512513932260436

`A185544(2*A286736(n))`
-/

namespace A286734.P5236512513932260436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286736 n).toNat

end

end A286734.P5236512513932260436

/-! ## A286734.P10956453580752026575

`A288494(n)-A348613(A000288(n))`
-/

namespace A286734.P10956453580752026575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288494 n - A348613 (A000288 n).toNat

end

end A286734.P10956453580752026575

/-! ## A286734.P3493479186335267485

`A288494(n)-A288462(A288482(2*n+3))`
-/

namespace A286734.P3493479186335267485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288494 n - A288462 (A288482 (2 * n + 3)).toNat

end

end A286734.P3493479186335267485

/-! ## A286734.P16523404287805148618

`A288494(n)-A316345(A328464(3*n+5))`
-/

namespace A286734.P16523404287805148618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288494 n - A316345 (A328464 (3 * n + 5)).toNat

end

end A286734.P16523404287805148618

/-!
# A286735: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 214", based on the 5-celled von Neumann neighborhood.

The programs for A286735, there is no canonical definition to state claims against.
-/

/-! ## A286735.P117974847455359723

`A007088(A286737(n))`
-/

namespace A286735.P117974847455359723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286737 n).toNat

end

end A286735.P117974847455359723

/-! ## A286735.P15869921495777639718

`A185544(2*A286737(n))`
-/

namespace A286735.P15869921495777639718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286737 n).toNat

end

end A286735.P15869921495777639718

/-! ## A286735.P18268235079999348613

`lcm(A000265(A286734(n)), A286508(n))`
-/

namespace A286735.P18268235079999348613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A286734 n).toNat) (A286508 n)

end

end A286735.P18268235079999348613

/-! ## A286735.P12042990205224926303

`lcm(A286508(A004881(n+1)), A286734(n))`
-/

namespace A286735.P12042990205224926303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286508 (A004881 (n + 1)).toNat) (A286734 n)

end

end A286735.P12042990205224926303

/-!
# A286737: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 214", based on the 5-celled von Neumann neighborhood.

The programs for A286737, there is no canonical definition to state claims against.
-/

/-! ## A286737.P8144938314124438957

`lcm(A060546(n), A348330(A101216(n+1)))`
-/

namespace A286737.P8144938314124438957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060546 n) (A348330 (A101216 (n + 1)).toNat)

end

end A286737.P8144938314124438957

/-! ## A286737.P243680362160144466

`lcm(A065033(A052551(n+1)), A327236(2*n+1))`
-/

namespace A286737.P243680362160144466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065033 (A052551 (n + 1)).toNat) (A327236 (2 * n + 1))

end

end A286737.P243680362160144466

/-! ## A286737.P14615036066887185103

`A261360(A089483(n)-A261360(n))`
-/

namespace A286737.P14615036066887185103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261360 (A089483 n - A261360 n).toNat

end

end A286737.P14615036066887185103

/-! ## A286737.P15976695107927897747

`A261360(A030451(n)*A219653(n))`
-/

namespace A286737.P15976695107927897747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261360 (A030451 n * A219653 n).toNat

end

end A286737.P15976695107927897747

/-! ## A286737.P12420865487836367015

`lcm(A060546(n), A069010(A002212(n)))`
-/

namespace A286737.P12420865487836367015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060546 n) (A069010 (A002212 n).toNat)

end

end A286737.P12420865487836367015

/-!
# A286738: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 217", based on the 5-celled von Neumann neighborhood.

The programs for A286738, there is no canonical definition to state claims against.
-/

/-! ## A286738.P17822193064607990505

`A007088(A286740(n))`
-/

namespace A286738.P17822193064607990505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286740 n).toNat

end

end A286738.P17822193064607990505

/-! ## A286738.P13552552546417804506

`A185544(2*A286740(n))`
-/

namespace A286738.P13552552546417804506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286740 n).toNat

end

end A286738.P13552552546417804506

/-! ## A286738.P16912015696432358769

`A286082(n)+A175992(A000108(n))`
-/

namespace A286738.P16912015696432358769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286082 n + A175992 (A000108 n).toNat

end

end A286738.P16912015696432358769

/-! ## A286738.P3734698547848081822

`A286082(n)+A286063(A208983(n))`
-/

namespace A286738.P3734698547848081822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286082 n + A286063 (A208983 n).toNat

end

end A286738.P3734698547848081822

/-! ## A286738.P10331866110051151211

`A286116(n)+A286063(A208983(n))`
-/

namespace A286738.P10331866110051151211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286116 n + A286063 (A208983 n).toNat

end

end A286738.P10331866110051151211

/-!
# A286739: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 217", based on the 5-celled von Neumann neighborhood.

The programs for A286739, there is no canonical definition to state claims against.
-/

/-! ## A286739.P16125625564081049658

`A007088(A286741(n))`
-/

namespace A286739.P16125625564081049658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286741 n).toNat

end

end A286739.P16125625564081049658

/-! ## A286739.P7641438202643698886

`A185544(2*A286741(n))`
-/

namespace A286739.P7641438202643698886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286741 n).toNat

end

end A286739.P7641438202643698886

/-!
# A286740: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 217", based on the 5-celled von Neumann neighborhood.

The programs for A286740, there is no canonical definition to state claims against.
-/

/-! ## A286740.P12074824383089415361

`A286084(n)+A286063(A208983(n))`
-/

namespace A286740.P12074824383089415361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286084 n + A286063 (A208983 n).toNat

end

end A286740.P12074824383089415361

/-! ## A286740.P8075075841905807599

`A286118(n)+A286063(A208983(n))`
-/

namespace A286740.P8075075841905807599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286118 n + A286063 (A208983 n).toNat

end

end A286740.P8075075841905807599

/-! ## A286740.P16209469785921236651

`A287492(n)-A080584(A287484(n))`
-/

namespace A286740.P16209469785921236651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287492 n - A080584 (A287484 n).toNat

end

end A286740.P16209469785921236651

/-! ## A286740.P12384624858654961388

`or(A054973(A014137(n)), A286084(n))`
-/

namespace A286740.P12384624858654961388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054973 (A014137 n).toNat) (A286084 n)

end

end A286740.P12384624858654961388

/-! ## A286740.P16823966858222963700

`or(A054973(A014137(n)), A286118(n))`
-/

namespace A286740.P16823966858222963700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054973 (A014137 n).toNat) (A286118 n)

end

end A286740.P16823966858222963700

/-!
# A286741: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 217", based on the 5-celled von Neumann neighborhood.

The programs for A286741, there is no canonical definition to state claims against.
-/

/-! ## A286741.P7203172023032211193

`or(A204694(A062868(n)), A286085(n))`
-/

namespace A286741.P7203172023032211193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204694 (A062868 n).toNat) (A286085 n)

end

end A286741.P7203172023032211193

/-! ## A286741.P10908239542287930805

`or(A204694(n), A286085(A004891(n+1)))`
-/

namespace A286741.P10908239542287930805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204694 n) (A286085 (A004891 (n + 1)).toNat)

end

end A286741.P10908239542287930805

/-! ## A286741.P10145603752976506530

`or(A204694(A054960(n+1)), A286085(n))`
-/

namespace A286741.P10145603752976506530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204694 (A054960 (n + 1)).toNat) (A286085 n)

end

end A286741.P10145603752976506530

/-!
# A286742: a(n) minimizes (over the integers) the absolute difference between Pi and x(n) + 1/a(n), where x(n) is Pi truncated at the n-th decimal digit.

The programs for A286742, there is no canonical definition to state claims against.
-/

/-! ## A286742.P16546035302571997477

`A074783(n)+A066829(A137957(n))`
-/

namespace A286742.P16546035302571997477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074783 n + A066829 (A137957 n).toNat

end

end A286742.P16546035302571997477

/-! ## A286742.P13890358975962414765

`A157687(A205571(n))+A074783(n)`
-/

namespace A286742.P13890358975962414765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157687 (A205571 n).toNat + A074783 n

end

end A286742.P13890358975962414765

/-! ## A286742.P6483118358537520998

`A129251(A131924(2*n))+A074783(n)`
-/

namespace A286742.P6483118358537520998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A131924 (2 * n)).toNat + A074783 n

end

end A286742.P6483118358537520998

/-!
# A286743: Number of (not necessarily connected) simple cyclic graphs on n vertices.

The programs for A286743, there is no canonical definition to state claims against.
-/

/-! ## A286743.P13945789697007262412

`A000088(n+1)-A005195(n+1)`
-/

namespace A286743.P13945789697007262412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A005195 (n + 1)

end

end A286743.P13945789697007262412

/-! ## A286743.P9509026253196374717

`A076321(n+1)-A005195(A032555(n+1))`
-/

namespace A286743.P9509026253196374717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - A005195 (A032555 (n + 1)).toNat

end

end A286743.P9509026253196374717

/-! ## A286743.P2635618974863303350

`A061136(n)+A055255(A360582(n))`
-/

namespace A286743.P2635618974863303350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061136 n + A055255 (A360582 n).toNat

end

end A286743.P2635618974863303350

/-!
# A286744: Number of distinct partitions of n with parts differing by at least two with smallest part at least two and with an even number of parts.

The programs for A286744, there is no canonical definition to state claims against.
-/

/-! ## A286744.P55612066252483340

`A286745(n)+A224898(n)`
-/

namespace A286744.P55612066252483340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286745 n + A224898 n

end

end A286744.P55612066252483340

/-! ## A286744.P3649834640200993239

`A003106(n)-A286745(n)`
-/

namespace A286744.P3649834640200993239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n - A286745 n

end

end A286744.P3649834640200993239

/-! ## A286744.P5006996882689321677

`(A224898(n)+A003106(n))/2`
-/

namespace A286744.P5006996882689321677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224898 n + A003106 n : ℚ) / 2

end

end A286744.P5006996882689321677

/-! ## A286744.P16200332155573046689

`A003113(n)-(A286745(n)+A003114(n))`
-/

namespace A286744.P16200332155573046689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n - (A286745 n + A003114 n)

end

end A286744.P16200332155573046689

/-! ## A286744.P12309640283469488292

`(A003113(n)+A224898(n)-A003114(n))/2`
-/

namespace A286744.P12309640283469488292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003113 n + (A224898 n - A003114 n) : ℚ) / 2

end

end A286744.P12309640283469488292

/-!
# A286745: Number of distinct partitions of n with parts differing by at least two with smallest part at least two and with an odd number of parts.

The programs for A286745, there is no canonical definition to state claims against.
-/

/-! ## A286745.P112244558598951946

`A003106(n)-A286744(n)`
-/

namespace A286745.P112244558598951946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n - A286744 n

end

end A286745.P112244558598951946

/-! ## A286745.P13709154455980036594

`A286744(n)-A224898(n)`
-/

namespace A286745.P13709154455980036594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286744 n - A224898 n

end

end A286745.P13709154455980036594

/-! ## A286745.P11245244340867786601

`(A003106(n)-A224898(n))/2`
-/

namespace A286745.P11245244340867786601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003106 n - A224898 n : ℚ) / 2

end

end A286745.P11245244340867786601

/-! ## A286745.P5675915542293693613

`A003113(n)-(A286744(n)+A003114(n))`
-/

namespace A286745.P5675915542293693613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n - (A286744 n + A003114 n)

end

end A286745.P5675915542293693613

/-! ## A286745.P4124541318943909541

`(A003113(n)-(A224898(n)+A003114(n)))/2`
-/

namespace A286745.P4124541318943909541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003113 n - (A224898 n + A003114 n) : ℚ) / 2

end

end A286745.P4124541318943909541

/-!
# A286746: {00->null}-transform of the infinite Fibonacci word A003849.

The programs for A286746, the canonical program `A286746.P13513340777740574846` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286746 has offset 1).

The definition of A286746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286746.P13513340777740574846

`floor((n+1)/(3-ϕ))-floor(n/(3-ϕ))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286746

/-- `floor((n+1)/(3-ϕ))-floor(n/(3-ϕ))` -/
def P13513340777740574846.Spec : Prop :=
  ∀ n, P13513340777740574846.a n = A286746 (n + 1)

theorem P13513340777740574846.correct : P13513340777740574846.Spec := by
  intro n
  simp only [A286746, Nat.add_sub_cancel]

end A286746

/-! ## A286746.P11729339987139416229

`and(1, char[floor((n+1)*(3-ϕ))])`
-/

namespace A286746.P11729339987139416229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (3 - Real.goldenRatio)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A286746.P11729339987139416229

namespace A286746

/-- `and(1, char[floor((n+1)*(3-ϕ))])` -/
def P11729339987139416229.Spec : Prop :=
  ∀ n, (P11729339987139416229.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P3421834029227629009

`char[floor((n+1)*(3-ϕ))%(4*n+5)]`
-/

namespace A286746.P3421834029227629009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * (3 - Real.goldenRatio)⌋ (4 * n + 5 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286746.P3421834029227629009

namespace A286746

/-- `char[floor((n+1)*(3-ϕ))%(4*n+5)]` -/
def P3421834029227629009.Spec : Prop :=
  ∀ n, (P3421834029227629009.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P17898258670509027566

`char[∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3]-n]`
-/

namespace A286746.P17898258670509027566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286746.P17898258670509027566

namespace A286746

/-- `char[∩[floor(ϕ*(n+1)), floor(ϕ*(n+2))-3]-n]` -/
def P17898258670509027566.Spec : Prop :=
  ∀ n, (P17898258670509027566.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P6531708549495193534

`char[A249115(n+1)]`
-/

namespace A286746.P6531708549495193534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286746.P6531708549495193534

namespace A286746

/-- `char[A249115(n+1)]` -/
def P6531708549495193534.Spec : Prop :=
  ∀ n, (P6531708549495193534.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P10429103296316481894

`char[A195121(n)-1]`
-/

namespace A286746.P10429103296316481894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286746.P10429103296316481894

namespace A286746

/-- `char[A195121(n)-1]` -/
def P10429103296316481894.Spec : Prop :=
  ∀ n, (P10429103296316481894.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P7070369131670315161

`A130311(n+1)%2`
-/

namespace A286746.P7070369131670315161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130311 (n + 1)) 2

end

end A286746.P7070369131670315161

namespace A286746

/-- `A130311(n+1)%2` -/
def P7070369131670315161.Spec : Prop :=
  ∀ n, P7070369131670315161.a n = A286746 (n + 1)

end A286746

/-! ## A286746.P6415198440227092589

`floor(sqrt(A284749(n+1)))`
-/

namespace A286746.P6415198440227092589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A284749 (n + 1))

end

end A286746.P6415198440227092589

namespace A286746

/-- `floor(sqrt(A284749(n+1)))` -/
def P6415198440227092589.Spec : Prop :=
  ∀ n, P6415198440227092589.a n = A286746 (n + 1)

end A286746

/-! ## A286746.P18421163660830917552

`char[comp[A276855(n)-n]]`
-/

namespace A286746.P18421163660830917552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286746.P18421163660830917552

namespace A286746

/-- `char[comp[A276855(n)-n]]` -/
def P18421163660830917552.Spec : Prop :=
  ∀ n, (P18421163660830917552.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P16833063859423422921

`a(A284387(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A286746.P16833063859423422921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A284387 (n + 1)).toNat

end

end A286746.P16833063859423422921

namespace A286746

/-- `a(A284387(n+1))` -/
def P16833063859423422921.Spec : Prop :=
  ∀ n, (P16833063859423422921.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P14989639468653896691

`char[A063732(n+1)+1]`
-/

namespace A286746.P14989639468653896691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286746.P14989639468653896691

namespace A286746

/-- `char[A063732(n+1)+1]` -/
def P14989639468653896691.Spec : Prop :=
  ∀ n, (P14989639468653896691.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P11508688881125454249

`char[A187952(n+1)-n]`
-/

namespace A286746.P11508688881125454249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286746.P11508688881125454249

namespace A286746

/-- `char[A187952(n+1)-n]` -/
def P11508688881125454249.Spec : Prop :=
  ∀ n, (P11508688881125454249.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P665499400302140484

`char[A189663(n+2)+n]`
-/

namespace A286746.P665499400302140484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286746.P665499400302140484

namespace A286746

/-- `char[A189663(n+2)+n]` -/
def P665499400302140484.Spec : Prop :=
  ∀ n, (P665499400302140484.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P2397408077294088213

`A287772(n-a(n-1))` with `a(0)=0`
-/

namespace A286746.P2397408077294088213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A287772 ((n : ℤ) - a (n - 1)).toNat

end

end A286746.P2397408077294088213

namespace A286746

/-- `A287772(n-a(n-1))` -/
def P2397408077294088213.Spec : Prop :=
  ∀ n, P2397408077294088213.a n = A286746 (n + 1)

end A286746

/-! ## A286746.P17577748718919733592

`char[∑[A188432(n+1)+1]]`
-/

namespace A286746.P17577748718919733592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286746.P17577748718919733592

namespace A286746

/-- `char[∑[A188432(n+1)+1]]` -/
def P17577748718919733592.Spec : Prop :=
  ∀ n, (P17577748718919733592.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P3539958705391400888

`char[∑[A284620(n+1)]+1]`
-/

namespace A286746.P3539958705391400888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286746.P3539958705391400888

namespace A286746

/-- `char[∑[A284620(n+1)]+1]` -/
def P3539958705391400888.Spec : Prop :=
  ∀ n, (P3539958705391400888.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P12407391949304081932

`char[∑[2-A189479(n+2)]]`
-/

namespace A286746.P12407391949304081932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A189479 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286746.P12407391949304081932

namespace A286746

/-- `char[∑[2-A189479(n+2)]]` -/
def P12407391949304081932.Spec : Prop :=
  ∀ n, (P12407391949304081932.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P10170991270145345140

`a(A284749(a(n-2)+n))` with `a(0)=0, a(1)=1`
-/

namespace A286746.P10170991270145345140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A284749 (a (n - 2) + n)).toNat

end

end A286746.P10170991270145345140

namespace A286746

/-- `a(A284749(a(n-2)+n))` -/
def P10170991270145345140.Spec : Prop :=
  ∀ n, (P10170991270145345140.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P16024063583111536532

`char[A004273(n+1)-A005206(n)]`
-/

namespace A286746.P16024063583111536532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) - A005206 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286746.P16024063583111536532

namespace A286746

/-- `char[A004273(n+1)-A005206(n)]` -/
def P16024063583111536532.Spec : Prop :=
  ∀ n, (P16024063583111536532.a n : ℤ) = A286746 (n + 1)

end A286746

/-! ## A286746.P6076342385615679887

`log2(Δ[A285681(n+2)])`
-/

namespace A286746.P6076342385615679887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285681 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A286746.P6076342385615679887

namespace A286746

/-- `log2(Δ[A285681(n+2)])` -/
def P6076342385615679887.Spec : Prop :=
  ∀ n, P6076342385615679887.a n = (A286746 (n + 1) : ℝ)

end A286746

/-!
# A286747: Characteristic sequence of the Beatty sequence, A177102, of sqrt(10).

The programs for A286747, the canonical program `A286747.P13874017091104576782` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286747 has offset 1).

The definition of A286747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286747.P13874017091104576782

`Δ[floor((n+1)/sqrt(10))]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286747

/-- `Δ[floor((n+1)/sqrt(10))]` -/
def P13874017091104576782.Spec : Prop :=
  ∀ n, P13874017091104576782.a n = A286747 (n + 1)

theorem P13874017091104576782.correct : P13874017091104576782.Spec := by
  intro n
  simp only [A286747, Nat.add_sub_cancel]

end A286747

/-! ## A286747.P11508240223946541632

`char[A177102(n+1)-1]`
-/

namespace A286747.P11508240223946541632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177102 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286747.P11508240223946541632

namespace A286747

/-- `char[A177102(n+1)-1]` -/
def P11508240223946541632.Spec : Prop :=
  ∀ n, (P11508240223946541632.a n : ℤ) = A286747 (n + 1)

end A286747

/-! ## A286747.P4152846389669192919

`A000120(Δ[ceil((n+1)/sqrt(10))])`
-/

namespace A286747.P4152846389669192919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (10 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat

end

end A286747.P4152846389669192919

namespace A286747

/-- `A000120(Δ[ceil((n+1)/sqrt(10))])` -/
def P4152846389669192919.Spec : Prop :=
  ∀ n, P4152846389669192919.a n = A286747 (n + 1)

end A286747

/-! ## A286747.P1749950033236576366

`A033865(Δ[ceil((n+1)/sqrt(10))])`
-/

namespace A286747.P1749950033236576366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (10 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (f1 (n + 1) - f1 n).toNat

end

end A286747.P1749950033236576366

namespace A286747

/-- `A033865(Δ[ceil((n+1)/sqrt(10))])` -/
def P1749950033236576366.Spec : Prop :=
  ∀ n, P1749950033236576366.a n = A286747 (n + 1)

end A286747

/-! ## A286747.P9333831761734236173

`char[A103889(A329829(n+1))+n]`
-/

namespace A286747.P9333831761734236173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A329829 (n + 1)).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286747.P9333831761734236173

namespace A286747

/-- `char[A103889(A329829(n+1))+n]` -/
def P9333831761734236173.Spec : Prop :=
  ∀ n, (P9333831761734236173.a n : ℤ) = A286747 (n + 1)

end A286747

/-! ## A286747.P10368943261256599846

`3-Δ[A330094(n+1)]`
-/

namespace A286747.P10368943261256599846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A286747.P10368943261256599846

namespace A286747

/-- `3-Δ[A330094(n+1)]` -/
def P10368943261256599846.Spec : Prop :=
  ∀ n, P10368943261256599846.a n = A286747 (n + 1)

end A286747

/-! ## A286747.P12512508984116746222

`A300866(Δ[A330094(n+1)])`
-/

namespace A286747.P12512508984116746222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300866 (f1 (n + 1) - f1 n).toNat

end

end A286747.P12512508984116746222

namespace A286747

/-- `A300866(Δ[A330094(n+1)])` -/
def P12512508984116746222.Spec : Prop :=
  ∀ n, P12512508984116746222.a n = A286747 (n + 1)

end A286747

/-! ## A286747.P2948605174709476711

`A356265(Δ[A330094(n+1)])`
-/

namespace A286747.P2948605174709476711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356265 (f1 (n + 1) - f1 n).toNat

end

end A286747.P2948605174709476711

namespace A286747

/-- `A356265(Δ[A330094(n+1)])` -/
def P2948605174709476711.Spec : Prop :=
  ∀ n, P2948605174709476711.a n = A286747 (n + 1)

end A286747

/-! ## A286747.P11679413635471209721

`A237018(Δ[A330094(n+1)]²)`
-/

namespace A286747.P11679413635471209721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A286747.P11679413635471209721

namespace A286747

/-- `A237018(Δ[A330094(n+1)]²)` -/
def P11679413635471209721.Spec : Prop :=
  ∀ n, P11679413635471209721.a n = A286747 (n + 1)

end A286747

/-! ## A286747.P9549470566680359907

`A237018(Δ[A330094(n+1)]+2)`
-/

namespace A286747.P9549470566680359907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (f1 (n + 1) - f1 n + 2).toNat

end

end A286747.P9549470566680359907

namespace A286747

/-- `A237018(Δ[A330094(n+1)]+2)` -/
def P9549470566680359907.Spec : Prop :=
  ∀ n, P9549470566680359907.a n = A286747 (n + 1)

end A286747

/-!
# A286748: Characteristic sequence of the Beatty sequence, A194028, of sqrt(12).

The programs for A286748, the canonical program `A286748.P9622908324323977551` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286748 has offset 1).

The definition of A286748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286748.P9622908324323977551

`Δ[floor((n+1)/sqrt(12))]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286748

/-- `Δ[floor((n+1)/sqrt(12))]` -/
def P9622908324323977551.Spec : Prop :=
  ∀ n, P9622908324323977551.a n = A286748 (n + 1)

theorem P9622908324323977551.correct : P9622908324323977551.Spec := by
  intro n
  simp only [A286748, Nat.add_sub_cancel]

end A286748

/-!
# A286749: {0100->null}-transform of the infinite Fibonacci word A003849.

The programs for A286749, the canonical program `A286749.P15826766556314243129` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286749 has offset 1).

The definition of A286749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286749.P15826766556314243129

`1-char[floor((floor(n/2)+1)*ϕ²)+n]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286749

/-- `1-char[floor((floor(n/2)+1)*ϕ²)+n]` -/
def P15826766556314243129.Spec : Prop :=
  ∀ n, P15826766556314243129.a n = A286749 (n + 1)

theorem P15826766556314243129.correct : P15826766556314243129.Spec := by
  intro n
  simp only [A286749, Nat.add_sub_cancel]

end A286749

/-! ## A286749.P2595453260587819720

`char[A286751(n+1)-1]`
-/

namespace A286749.P2595453260587819720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286751 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286749.P2595453260587819720

namespace A286749

/-- `char[A286751(n+1)-1]` -/
def P2595453260587819720.Spec : Prop :=
  ∀ n, (P2595453260587819720.a n : ℤ) = A286749 (n + 1)

end A286749

/-! ## A286749.P17800813853039554607

`A287663(n+1-a(n-1))` with `a(0)=1`
-/

namespace A286749.P17800813853039554607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287663 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A286749.P17800813853039554607

namespace A286749

/-- `A287663(n+1-a(n-1))` -/
def P17800813853039554607.Spec : Prop :=
  ∀ n, P17800813853039554607.a n = A286749 (n + 1)

end A286749

/-! ## A286749.P5465431093860276162

`A287722(n+1-a(n-1))` with `a(0)=1`
-/

namespace A286749.P5465431093860276162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287722 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A286749.P5465431093860276162

namespace A286749

/-- `A287722(n+1-a(n-1))` -/
def P5465431093860276162.Spec : Prop :=
  ∀ n, P5465431093860276162.a n = A286749 (n + 1)

end A286749

/-! ## A286749.P9836066152761758629

`A287674(A028310(n))`
-/

namespace A286749.P9836066152761758629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 (A028310 n).toNat

end

end A286749.P9836066152761758629

namespace A286749

/-- `A287674(A028310(n))` -/
def P9836066152761758629.Spec : Prop :=
  ∀ n, P9836066152761758629.a n = A286749 (n + 1)

end A286749

/-! ## A286749.P12982477770743576652

`A287663(A287663(n+1)+n)`
-/

namespace A286749.P12982477770743576652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287663 (A287663 (n + 1) + (n : ℤ)).toNat

end

end A286749.P12982477770743576652

namespace A286749

/-- `A287663(A287663(n+1)+n)` -/
def P12982477770743576652.Spec : Prop :=
  ∀ n, P12982477770743576652.a n = A286749 (n + 1)

end A286749

/-! ## A286749.P145574185541614440

`A287722(A287674(n+1)+n)`
-/

namespace A286749.P145574185541614440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287722 (A287674 (n + 1) + (n : ℤ)).toNat

end

end A286749.P145574185541614440

namespace A286749

/-- `A287722(A287674(n+1)+n)` -/
def P145574185541614440.Spec : Prop :=
  ∀ n, P145574185541614440.a n = A286749 (n + 1)

end A286749

/-! ## A286749.P6267055060361722374

`A287769(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A286749.P6267055060361722374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287769 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A286749.P6267055060361722374

namespace A286749

/-- `A287769(a(n-1)+n+1)` -/
def P6267055060361722374.Spec : Prop :=
  ∀ n, P6267055060361722374.a n = A286749 (n + 1)

end A286749

/-! ## A286749.P5025853710530415250

`A287769(2-A221151(n)+n)`
-/

namespace A286749.P5025853710530415250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (2 - A221151 n + (n : ℤ)).toNat

end

end A286749.P5025853710530415250

namespace A286749

/-- `A287769(2-A221151(n)+n)` -/
def P5025853710530415250.Spec : Prop :=
  ∀ n, P5025853710530415250.a n = A286749 (n + 1)

end A286749

/-! ## A286749.P12769837036152265143

`A287769(A221151(n+1)+n+1)`
-/

namespace A286749.P12769837036152265143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (A221151 (n + 1) + (n + 1 : ℤ)).toNat

end

end A286749.P12769837036152265143

namespace A286749

/-- `A287769(A221151(n+1)+n+1)` -/
def P12769837036152265143.Spec : Prop :=
  ∀ n, P12769837036152265143.a n = A286749 (n + 1)

end A286749

/-! ## A286749.P548581224291706571

`A287769(A287769(n+1)+n+1)`
-/

namespace A286749.P548581224291706571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (A287769 (n + 1) + (n + 1 : ℤ)).toNat

end

end A286749.P548581224291706571

namespace A286749

/-- `A287769(A287769(n+1)+n+1)` -/
def P548581224291706571.Spec : Prop :=
  ∀ n, P548581224291706571.a n = A286749 (n + 1)

end A286749

/-! ## A286749.P12790454490521224533

`A287674(n+1-A287725(n+2))`
-/

namespace A286749.P12790454490521224533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 ((n + 1 : ℤ) - A287725 (n + 2)).toNat

end

end A286749.P12790454490521224533

namespace A286749

/-- `A287674(n+1-A287725(n+2))` -/
def P12790454490521224533.Spec : Prop :=
  ∀ n, P12790454490521224533.a n = A286749 (n + 1)

end A286749

/-!
# A286750: Positions of 0 in A286749; complement of A286751.

The programs for A286750, the canonical program `A286750.P11189244563480546457` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286750 has offset 1).

The definition of A286750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286750.P11189244563480546457

`floor((floor(n/2)+1)*ϕ²)+n+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286750

/-- `floor((floor(n/2)+1)*ϕ²)+n+1` -/
def P11189244563480546457.Spec : Prop :=
  ∀ n, P11189244563480546457.a n = A286750 (n + 1)

theorem P11189244563480546457.correct : P11189244563480546457.Spec := by
  intro n
  simp only [A286750, Nat.add_sub_cancel]

end A286750

/-! ## A286750.P16679241252593265914

`comp[(7*n+3)%(floor(n*ϕ²)+2)-1]`
-/

namespace A286750.P16679241252593265914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 * n + 3 : ℤ) (⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286750.P16679241252593265914

namespace A286750

/-- `comp[(7*n+3)%(floor(n*ϕ²)+2)-1]` -/
def P16679241252593265914.Spec : Prop :=
  ∀ n, (P16679241252593265914.a n : ℤ) = A286750 (n + 1)

end A286750

/-! ## A286750.P7745254438593636181

`∪[A287723(2*n+1)+1, A287723(2*(n+1))]`
-/

namespace A286750.P7745254438593636181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287723 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287723 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286750.P7745254438593636181

namespace A286750

/-- `∪[A287723(2*n+1)+1, A287723(2*(n+1))]` -/
def P7745254438593636181.Spec : Prop :=
  ∀ n, (P7745254438593636181.a n : ℤ) = A286750 (n + 1)

end A286750

/-! ## A286750.P3399195404488745051

`A000027(A287723(n+1)+A000035(n+1))`
-/

namespace A286750.P3399195404488745051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A287723 (n + 1) + A000035 (n + 1)).toNat

end

end A286750.P3399195404488745051

namespace A286750

/-- `A000027(A287723(n+1)+A000035(n+1))` -/
def P3399195404488745051.Spec : Prop :=
  ∀ n, P3399195404488745051.a n = A286750 (n + 1)

end A286750

/-! ## A286750.P16341637245808372642

`A287664(A007494(n+1))`
-/

namespace A286750.P16341637245808372642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (A007494 (n + 1)).toNat

end

end A286750.P16341637245808372642

namespace A286750

/-- `A287664(A007494(n+1))` -/
def P16341637245808372642.Spec : Prop :=
  ∀ n, P16341637245808372642.a n = A286750 (n + 1)

end A286750

/-! ## A286750.P6923752984213003668

`A287664(A032766(n)+2)`
-/

namespace A286750.P6923752984213003668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (A032766 n + 2).toNat

end

end A286750.P6923752984213003668

namespace A286750

/-- `A287664(A032766(n)+2)` -/
def P6923752984213003668.Spec : Prop :=
  ∀ n, P6923752984213003668.a n = A286750 (n + 1)

end A286750

/-! ## A286750.P8011536226914502745

`A287664(A294732(n+3))`
-/

namespace A286750.P8011536226914502745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (A294732 (n + 3)).toNat

end

end A286750.P8011536226914502745

namespace A286750

/-- `A287664(A294732(n+3))` -/
def P8011536226914502745.Spec : Prop :=
  ∀ n, P8011536226914502745.a n = A286750 (n + 1)

end A286750

/-! ## A286750.P13853215508183184045

`A287664(A001651(n+1)+1)`
-/

namespace A286750.P13853215508183184045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (A001651 (n + 1) + 1).toNat

end

end A286750.P13853215508183184045

namespace A286750

/-- `A287664(A001651(n+1)+1)` -/
def P13853215508183184045.Spec : Prop :=
  ∀ n, P13853215508183184045.a n = A286750 (n + 1)

end A286750

/-! ## A286750.P15865261168518814799

`A287727(A287775(n+1))`
-/

namespace A286750.P15865261168518814799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287727 (A287775 (n + 1)).toNat

end

end A286750.P15865261168518814799

namespace A286750

/-- `A287727(A287775(n+1))` -/
def P15865261168518814799.Spec : Prop :=
  ∀ n, P15865261168518814799.a n = A286750 (n + 1)

end A286750

/-! ## A286750.P2406416380411607747

`∩[A287664(n+1), A287727(n+1)]`
-/

namespace A286750.P2406416380411607747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286750.P2406416380411607747

namespace A286750

/-- `∩[A287664(n+1), A287727(n+1)]` -/
def P2406416380411607747.Spec : Prop :=
  ∀ n, (P2406416380411607747.a n : ℤ) = A286750 (n + 1)

end A286750

/-! ## A286750.P11281850430774616245

`A020725(A287675(n+1))`
-/

namespace A286750.P11281850430774616245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A287675 (n + 1)).toNat

end

end A286750.P11281850430774616245

namespace A286750

/-- `A020725(A287675(n+1))` -/
def P11281850430774616245.Spec : Prop :=
  ∀ n, P11281850430774616245.a n = A286750 (n + 1)

end A286750

/-! ## A286750.P8664045151340644306

`filter[A287664(n+1), A287725(#)]`
-/

namespace A286750.P8664045151340644306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287725 (f1 j).toNat = 1) n)

end

end A286750.P8664045151340644306

namespace A286750

/-- `filter[A287664(n+1), A287725(#)]` -/
def P8664045151340644306.Spec : Prop :=
  ∀ n, P8664045151340644306.a n = A286750 (n + 1)

end A286750

/-! ## A286750.P9893457508316723577

`eq[A040063(A188036(n+3)), A040063(n)]`
-/

namespace A286750.P9893457508316723577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040063 (A188036 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286750.P9893457508316723577

namespace A286750

/-- `eq[A040063(A188036(n+3)), A040063(n)]` -/
def P9893457508316723577.Spec : Prop :=
  ∀ n, (P9893457508316723577.a n : ℤ) = A286750 (n + 1)

end A286750

/-!
# A286751: Positions of 1 in A286749; complement of A286750.

The programs for A286751, the canonical program `A286751.P10639495155558000716` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286751 has offset 1).

The definition of A286751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286751.P10639495155558000716

`5*(n+1)-2*floor((n+1)*ϕ)-2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286751

/-- `5*(n+1)-2*floor((n+1)*ϕ)-2` -/
def P10639495155558000716.Spec : Prop :=
  ∀ n, P10639495155558000716.a n = A286751 (n + 1)

theorem P10639495155558000716.correct : P10639495155558000716.Spec := by
  intro n
  simp only [A286751, Nat.add_sub_cancel]

end A286751

/-! ## A286751.P12183768404567292369

`∑[gcd(3, Δ[ceil(n/ϕ)])]`
-/

namespace A286751.P12183768404567292369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286751.P12183768404567292369

namespace A286751

/-- `∑[gcd(3, Δ[ceil(n/ϕ)])]` -/
def P12183768404567292369.Spec : Prop :=
  ∀ n, (P12183768404567292369.a n : ℤ) = A286751 (n + 1)

end A286751

/-! ## A286751.P16880507406205218023

`A017041(n)%A001950(n+1)`
-/

namespace A286751.P16880507406205218023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017041 n) (A001950 (n + 1))

end

end A286751.P16880507406205218023

namespace A286751

/-- `A017041(n)%A001950(n+1)` -/
def P16880507406205218023.Spec : Prop :=
  ∀ n, P16880507406205218023.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P13339909551589001739

`A017245(n)%A003231(n+1)`
-/

namespace A286751.P13339909551589001739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017245 n) (A003231 (n + 1))

end

end A286751.P13339909551589001739

namespace A286751

/-- `A017245(n)%A003231(n+1)` -/
def P13339909551589001739.Spec : Prop :=
  ∀ n, P13339909551589001739.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P8415900164177017945

`A016957(n)%A003623(n+1)`
-/

namespace A286751.P8415900164177017945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016957 n) (A003623 (n + 1))

end

end A286751.P8415900164177017945

namespace A286751

/-- `A016957(n)%A003623(n+1)` -/
def P8415900164177017945.Spec : Prop :=
  ∀ n, P8415900164177017945.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P2767708753204647006

`A016945(n)%A035336(n+1)`
-/

namespace A286751.P2767708753204647006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016945 n) (A035336 (n + 1))

end

end A286751.P2767708753204647006

namespace A286751

/-- `A016945(n)%A035336(n+1)` -/
def P2767708753204647006.Spec : Prop :=
  ∀ n, P2767708753204647006.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P16004186017056260183

`A017221(n)%A054770(n+1)`
-/

namespace A286751.P16004186017056260183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017221 n) (A054770 (n + 1))

end

end A286751.P16004186017056260183

namespace A286751

/-- `A017221(n)%A054770(n+1)` -/
def P16004186017056260183.Spec : Prop :=
  ∀ n, P16004186017056260183.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P8838299118923751370

`A017029(n)%A075318(n+1)`
-/

namespace A286751.P8838299118923751370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017029 n) (A075318 (n + 1))

end

end A286751.P8838299118923751370

namespace A286751

/-- `A017029(n)%A075318(n+1)` -/
def P8838299118923751370.Spec : Prop :=
  ∀ n, P8838299118923751370.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P12617949705079141600

`A016969(n)%A089910(n+1)`
-/

namespace A286751.P12617949705079141600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A089910 (n + 1))

end

end A286751.P12617949705079141600

namespace A286751

/-- `A016969(n)%A089910(n+1)` -/
def P12617949705079141600.Spec : Prop :=
  ∀ n, P12617949705079141600.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P5549216456711896812

`A016885(n)%A283233(n+1)`
-/

namespace A286751.P5549216456711896812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016885 n) (A283233 (n + 1))

end

end A286751.P5549216456711896812

namespace A286751

/-- `A016885(n)%A283233(n+1)` -/
def P5549216456711896812.Spec : Prop :=
  ∀ n, P5549216456711896812.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P9649145811407252144

`A017449(n)%A287726(n+1)`
-/

namespace A286751.P9649145811407252144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017449 n) (A287726 (n + 1))

end

end A286751.P9649145811407252144

namespace A286751

/-- `A017449(n)%A287726(n+1)` -/
def P9649145811407252144.Spec : Prop :=
  ∀ n, P9649145811407252144.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P13957684240910080406

`A101869(n+1)%A284625(n+1)`
-/

namespace A286751.P13957684240910080406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101869 (n + 1)) (A284625 (n + 1))

end

end A286751.P13957684240910080406

namespace A286751

/-- `A101869(n+1)%A284625(n+1)` -/
def P13957684240910080406.Spec : Prop :=
  ∀ n, P13957684240910080406.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P17488967518677853282

`∪[A287665(n+1), A287726(n+1)]`
-/

namespace A286751.P17488967518677853282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286751.P17488967518677853282

namespace A286751

/-- `∪[A287665(n+1), A287726(n+1)]` -/
def P17488967518677853282.Spec : Prop :=
  ∀ n, (P17488967518677853282.a n : ℤ) = A286751 (n + 1)

end A286751

/-! ## A286751.P3032771210864660365

`A287770(A249115(n+1))`
-/

namespace A286751.P3032771210864660365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287770 (A249115 (n + 1)).toNat

end

end A286751.P3032771210864660365

namespace A286751

/-- `A287770(A249115(n+1))` -/
def P3032771210864660365.Spec : Prop :=
  ∀ n, P3032771210864660365.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P1903318293855140156

`A131914(A054066(n+1))`
-/

namespace A286751.P1903318293855140156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (A054066 (n + 1)).toNat

end

end A286751.P1903318293855140156

namespace A286751

/-- `A131914(A054066(n+1))` -/
def P1903318293855140156.Spec : Prop :=
  ∀ n, P1903318293855140156.a n = A286751 (n + 1)

end A286751

/-! ## A286751.P2944803726200033305

`A204012(A372231(n+1))`
-/

namespace A286751.P2944803726200033305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204012 (A372231 (n + 1)).toNat

end

end A286751.P2944803726200033305

namespace A286751

/-- `A204012(A372231(n+1))` -/
def P2944803726200033305.Spec : Prop :=
  ∀ n, P2944803726200033305.a n = A286751 (n + 1)

end A286751

/-!
# A286752: {010010->null}-transform of the infinite Fibonacci word A003849.

The programs for A286752, the canonical program `A286752.P17365637770486763028` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286752 has offset 1).

The definition of A286752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286752.P18209958308303855370

`floor(∑[ϕ^((1-n)%2)])%2`
-/

namespace A286752.P18209958308303855370
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ 2

end

end A286752.P18209958308303855370

namespace A286752

/-- `floor(∑[ϕ^((1-n)%2)])%2` -/
def P18209958308303855370.Spec : Prop :=
  ∀ n, P18209958308303855370.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P906839466971388497

`ceil(∑[ϕ^(n%2-1)])%2`
-/

namespace A286752.P906839466971388497
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (((n % 2 : ℕ) : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ 2

end

end A286752.P906839466971388497

namespace A286752

/-- `ceil(∑[ϕ^(n%2-1)])%2` -/
def P906839466971388497.Spec : Prop :=
  ∀ n, P906839466971388497.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P6770708141280508676

`and(1, ceil(∑[ϕ/a(n-1)]/ϕ))` with `a(0)=1`
-/

namespace A286752.P6770708141280508676
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / Real.goldenRatio⌉

end

end A286752.P6770708141280508676

namespace A286752

/-- `and(1, ceil(∑[ϕ/a(n-1)]/ϕ))` -/
def P6770708141280508676.Spec : Prop :=
  ∀ n, P6770708141280508676.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P13802462128382122711

`floor(∑[ϕ-a(n-1)]+ϕ)%2` with `a(0)=0, a(1)=1`
-/

namespace A286752.P13802462128382122711
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Real.goldenRatio - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∑ j ∈ Finset.range (n + 1), f1 j + Real.goldenRatio⌋ 2

end

end A286752.P13802462128382122711

namespace A286752

/-- `floor(∑[ϕ-a(n-1)]+ϕ)%2` -/
def P13802462128382122711.Spec : Prop :=
  ∀ n, P13802462128382122711.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P731103000731205150

`and(1, floor(∑[ϕ-a(n-1)]+ϕ))` with `a(0)=0, a(1)=1`
-/

namespace A286752.P731103000731205150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Real.goldenRatio - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊∑ j ∈ Finset.range (n + 1), f1 j + Real.goldenRatio⌋

end

end A286752.P731103000731205150

namespace A286752

/-- `and(1, floor(∑[ϕ-a(n-1)]+ϕ))` -/
def P731103000731205150.Spec : Prop :=
  ∀ n, P731103000731205150.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P17365637770486763028

`A307294(n)%2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A286752

/-- `A307294(n)%2` -/
def P17365637770486763028.Spec : Prop :=
  ∀ n, P17365637770486763028.a n = A286752 (n + 1)

theorem P17365637770486763028.correct : P17365637770486763028.Spec := by
  intro n
  simp only [A286752, Nat.add_sub_cancel]

end A286752

/-! ## A286752.P17638485506721522459

`log2(gcd(2, A287775(n+1)))`
-/

namespace A286752.P17638485506721522459
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A287775 (n + 1)) : ℝ)

end

end A286752.P17638485506721522459

namespace A286752

/-- `log2(gcd(2, A287775(n+1)))` -/
def P17638485506721522459.Spec : Prop :=
  ∀ n, P17638485506721522459.a n = (A286752 (n + 1) : ℝ)

end A286752

/-! ## A286752.P10375532895212033695

`char[A286754(n+1)-1]`
-/

namespace A286752.P10375532895212033695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286754 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286752.P10375532895212033695

namespace A286752

/-- `char[A286754(n+1)-1]` -/
def P10375532895212033695.Spec : Prop :=
  ∀ n, (P10375532895212033695.a n : ℤ) = A286752 (n + 1)

end A286752

/-! ## A286752.P304010501798909702

`char[Δ[n²]-A035337(n)%2]`
-/

namespace A286752.P304010501798909702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - Int.tmod (A035337 n) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286752.P304010501798909702

namespace A286752

/-- `char[Δ[n²]-A035337(n)%2]` -/
def P304010501798909702.Spec : Prop :=
  ∀ n, (P304010501798909702.a n : ℤ) = A286752 (n + 1)

end A286752

/-! ## A286752.P9733840414100146098

`(A000201(∑[char[2*n]])+n)%2`
-/

namespace A286752.P9733840414100146098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000201 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)) 2

end

end A286752.P9733840414100146098

namespace A286752

/-- `(A000201(∑[char[2*n]])+n)%2` -/
def P9733840414100146098.Spec : Prop :=
  ∀ n, P9733840414100146098.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P1195438776251056278

`A000035(A307294(n))`
-/

namespace A286752.P1195438776251056278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A307294 n).toNat

end

end A286752.P1195438776251056278

namespace A286752

/-- `A000035(A307294(n))` -/
def P1195438776251056278.Spec : Prop :=
  ∀ n, P1195438776251056278.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P14095107820349498098

`and(A060576(n), A307294(n))`
-/

namespace A286752.P14095107820349498098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A307294 n)

end

end A286752.P14095107820349498098

namespace A286752

/-- `and(A060576(n), A307294(n))` -/
def P14095107820349498098.Spec : Prop :=
  ∀ n, P14095107820349498098.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P16653759064361651591

`and(A158388(n), A307294(n))`
-/

namespace A286752.P16653759064361651591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A307294 n)

end

end A286752.P16653759064361651591

namespace A286752

/-- `and(A158388(n), A307294(n))` -/
def P16653759064361651591.Spec : Prop :=
  ∀ n, P16653759064361651591.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P15436133537477264918

`and(A267587(n), A307294(n))`
-/

namespace A286752.P15436133537477264918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267587 n) (A307294 n)

end

end A286752.P15436133537477264918

namespace A286752

/-- `and(A267587(n), A307294(n))` -/
def P15436133537477264918.Spec : Prop :=
  ∀ n, P15436133537477264918.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P5615941828794386410

`and(A267870(n), A307294(n))`
-/

namespace A286752.P5615941828794386410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267870 n) (A307294 n)

end

end A286752.P5615941828794386410

namespace A286752

/-- `and(A267870(n), A307294(n))` -/
def P5615941828794386410.Spec : Prop :=
  ∀ n, P5615941828794386410.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P9024563850659218096

`and(A267871(n), A307294(n))`
-/

namespace A286752.P9024563850659218096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267871 n) (A307294 n)

end

end A286752.P9024563850659218096

namespace A286752

/-- `and(A267871(n), A307294(n))` -/
def P9024563850659218096.Spec : Prop :=
  ∀ n, P9024563850659218096.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P4002486851567717587

`A003622(A187485(n+1))%2`
-/

namespace A286752.P4002486851567717587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003622 (A187485 (n + 1)).toNat) 2

end

end A286752.P4002486851567717587

namespace A286752

/-- `A003622(A187485(n+1))%2` -/
def P4002486851567717587.Spec : Prop :=
  ∀ n, P4002486851567717587.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P4878592758575556062

`A294203(and(1, 2-A287775(n+1)))`
-/

namespace A286752.P4878592758575556062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (Int.land 1 (2 - A287775 (n + 1))).toNat

end

end A286752.P4878592758575556062

namespace A286752

/-- `A294203(and(1, 2-A287775(n+1)))` -/
def P4878592758575556062.Spec : Prop :=
  ∀ n, P4878592758575556062.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P3514742141311611354

`((A020639(A284624(∑[char[2*n]]+1))+n)%2)^n`
-/

namespace A286752.P3514742141311611354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A284624 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat + (n : ℤ)) 2 ^ n

end

end A286752.P3514742141311611354

namespace A286752

/-- `((A020639(A284624(∑[char[2*n]]+1))+n)%2)^n` -/
def P3514742141311611354.Spec : Prop :=
  ∀ n, P3514742141311611354.a n = A286752 (n + 1)

end A286752

/-! ## A286752.P8818436194096010999

`and(1, A188473(n+2)+1)`
-/

namespace A286752.P8818436194096010999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A188473 (n + 2) + 1)

end

end A286752.P8818436194096010999

namespace A286752

/-- `and(1, A188473(n+2)+1)` -/
def P8818436194096010999.Spec : Prop :=
  ∀ n, P8818436194096010999.a n = A286752 (n + 1)

end A286752

/-!
# A286753: Positions of 0 in A286752; complement of A286753.

The programs for A286753, the canonical program `A286753.P7951708052083784182` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286753 has offset 1).

The definition of A286753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286753.P10303050413056265980

`gcd(2, ceil(ϕ*(n+1)))+2*n`
-/

namespace A286753.P10303050413056265980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌈Real.goldenRatio * (n + 1 : ℝ)⌉ + 2 * n

end

end A286753.P10303050413056265980

namespace A286753

/-- `gcd(2, ceil(ϕ*(n+1)))+2*n` -/
def P10303050413056265980.Spec : Prop :=
  ∀ n, (P10303050413056265980.a n : ℤ) = A286753 (n + 1)

end A286753

/-! ## A286753.P15133181766003718762

`Δ[n²]+floor(ϕ*(n+1))%2`
-/

namespace A286753.P15133181766003718762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + Int.tmod ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ 2

end

end A286753.P15133181766003718762

namespace A286753

/-- `Δ[n²]+floor(ϕ*(n+1))%2` -/
def P15133181766003718762.Spec : Prop :=
  ∀ n, P15133181766003718762.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P16115870680634331470

`and(1, floor(ϕ*(n+1)))+2*n+1`
-/

namespace A286753.P16115870680634331470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (2 * n + 1 : ℤ)

end

end A286753.P16115870680634331470

namespace A286753

/-- `and(1, floor(ϕ*(n+1)))+2*n+1` -/
def P16115870680634331470.Spec : Prop :=
  ∀ n, P16115870680634331470.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P17140799173374121272

`A085002(n+1)+Δ[n²]`
-/

namespace A286753.P17140799173374121272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286753.P17140799173374121272

namespace A286753

/-- `A085002(n+1)+Δ[n²]` -/
def P17140799173374121272.Spec : Prop :=
  ∀ n, P17140799173374121272.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P7951708052083784182

`2*n+A035340(n)%2+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A286753

/-- `2*n+A035340(n)%2+1` -/
def P7951708052083784182.Spec : Prop :=
  ∀ n, P7951708052083784182.a n = A286753 (n + 1)

theorem P7951708052083784182.correct : P7951708052083784182.Spec := by
  intro n
  simp only [A286753, Nat.add_sub_cancel]

end A286753

/-! ## A286753.P7796455579631869791

`A000201(n+1)%2+2*n+1`
-/

namespace A286753.P7796455579631869791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000201 (n + 1)) 2 + (2 * n + 1 : ℤ)

end

end A286753.P7796455579631869791

namespace A286753

/-- `A000201(n+1)%2+2*n+1` -/
def P7796455579631869791.Spec : Prop :=
  ∀ n, P7796455579631869791.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P12668876716877857666

`A004767(n)-A286754(n+1)`
-/

namespace A286753.P12668876716877857666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A286754 (n + 1)

end

end A286753.P12668876716877857666

namespace A286753

/-- `A004767(n)-A286754(n+1)` -/
def P12668876716877857666.Spec : Prop :=
  ∀ n, P12668876716877857666.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P6950297305854669529

`xor(A088837(n+1), A286754(n+1))`
-/

namespace A286753.P6950297305854669529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A286754 (n + 1))

end

end A286753.P6950297305854669529

namespace A286753

/-- `xor(A088837(n+1), A286754(n+1))` -/
def P6950297305854669529.Spec : Prop :=
  ∀ n, P6950297305854669529.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P17423308317541707372

`A287658(n+1)+A287659(n+1)-A286754(n+1)`
-/

namespace A286753.P17423308317541707372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (n + 1) + (A287659 (n + 1) - A286754 (n + 1))

end

end A286753.P17423308317541707372

namespace A286753

/-- `A287658(n+1)+A287659(n+1)-A286754(n+1)` -/
def P17423308317541707372.Spec : Prop :=
  ∀ n, P17423308317541707372.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P16494606892284822926

`A000034(A000201(n+1))+2*n`
-/

namespace A286753.P16494606892284822926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000201 (n + 1)).toNat + (2 * n : ℤ)

end

end A286753.P16494606892284822926

namespace A286753

/-- `A000034(A000201(n+1))+2*n` -/
def P16494606892284822926.Spec : Prop :=
  ∀ n, P16494606892284822926.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P4372213719656522001

`abs(n-A000034(lt[1, A083368(n+1)])-3*n)`
-/

namespace A286753.P4372213719656522001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - (3 * n : ℤ)|

end

end A286753.P4372213719656522001

namespace A286753

/-- `abs(n-A000034(lt[1, A083368(n+1)])-3*n)` -/
def P4372213719656522001.Spec : Prop :=
  ∀ n, P4372213719656522001.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P2429074336279718571

`A286752(2*n+1)+Δ[n²]`
-/

namespace A286753.P2429074336279718571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286752 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286753.P2429074336279718571

namespace A286753

/-- `A286752(2*n+1)+Δ[n²]` -/
def P2429074336279718571.Spec : Prop :=
  ∀ n, P2429074336279718571.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P8084235976681980535

`A014681(A286754(n+1))`
-/

namespace A286753.P8084235976681980535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A286754 (n + 1)).toNat

end

end A286753.P8084235976681980535

namespace A286753

/-- `A014681(A286754(n+1))` -/
def P8084235976681980535.Spec : Prop :=
  ∀ n, P8084235976681980535.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P6188872501768790258

`A000035(A072061(2*n+1))+2*n+1`
-/

namespace A286753.P6188872501768790258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A072061 (2 * n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286753.P6188872501768790258

namespace A286753

/-- `A000035(A072061(2*n+1))+2*n+1` -/
def P6188872501768790258.Spec : Prop :=
  ∀ n, P6188872501768790258.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P14090557963705071718

`A000034(A195170(n+1))+2*n`
-/

namespace A286753.P14090557963705071718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A195170 (n + 1)).toNat + (2 * n : ℤ)

end

end A286753.P14090557963705071718

namespace A286753

/-- `A000034(A195170(n+1))+2*n` -/
def P14090557963705071718.Spec : Prop :=
  ∀ n, P14090557963705071718.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P13475644152002985444

`A171587(A001950(n+1))+2*n+1`
-/

namespace A286753.P13475644152002985444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 (A001950 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286753.P13475644152002985444

namespace A286753

/-- `A171587(A001950(n+1))+2*n+1` -/
def P13475644152002985444.Spec : Prop :=
  ∀ n, P13475644152002985444.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P7586142586740018320

`abs(or(4*n, A280193(A003231(n+1)+1))-n-n)`
-/

namespace A286753.P7586142586740018320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (4 * n : ℤ) (A280193 (A003231 (n + 1) + 1).toNat) - (n : ℤ) - (n : ℤ)|

end

end A286753.P7586142586740018320

namespace A286753

/-- `abs(or(4*n, A280193(A003231(n+1)+1))-n-n)` -/
def P7586142586740018320.Spec : Prop :=
  ∀ n, P7586142586740018320.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P11445066061873299638

`A000034(A284396(n+1))+2*n`
-/

namespace A286753.P11445066061873299638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A284396 (n + 1)).toNat + (2 * n : ℤ)

end

end A286753.P11445066061873299638

namespace A286753

/-- `A000034(A284396(n+1))+2*n` -/
def P11445066061873299638.Spec : Prop :=
  ∀ n, P11445066061873299638.a n = A286753 (n + 1)

end A286753

/-! ## A286753.P7427933210975648692

`A176895(A035336(n+1)+3*n)+2*n`
-/

namespace A286753.P7427933210975648692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (A035336 (n + 1) + (3 * n : ℤ)).toNat + (2 * n : ℤ)

end

end A286753.P7427933210975648692

namespace A286753

/-- `A176895(A035336(n+1)+3*n)+2*n` -/
def P7427933210975648692.Spec : Prop :=
  ∀ n, P7427933210975648692.a n = A286753 (n + 1)

end A286753

/-!
# A286754: Positions of 1 in A286752; complement of A286753.

The programs for A286754, the canonical program `A286754.P11351865985503812535` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286754 has offset 1).

The definition of A286754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286754.P16357324409347220873

`gcd(2, floor(ϕ*(n+1)))+2*n`
-/

namespace A286754.P16357324409347220873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + 2 * n

end

end A286754.P16357324409347220873

namespace A286754

/-- `gcd(2, floor(ϕ*(n+1)))+2*n` -/
def P16357324409347220873.Spec : Prop :=
  ∀ n, (P16357324409347220873.a n : ℤ) = A286754 (n + 1)

end A286754

/-! ## A286754.P11898021667731604913

`and(1, ceil(ϕ*(n+1)))+2*n+1`
-/

namespace A286754.P11898021667731604913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.goldenRatio * (n + 1 : ℝ)⌉ + (2 * n + 1 : ℤ)

end

end A286754.P11898021667731604913

namespace A286754

/-- `and(1, ceil(ϕ*(n+1)))+2*n+1` -/
def P11898021667731604913.Spec : Prop :=
  ∀ n, P11898021667731604913.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P15839923879881913791

`2*(n+1)-A085002(n+1)`
-/

namespace A286754.P15839923879881913791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A085002 (n + 1)

end

end A286754.P15839923879881913791

namespace A286754

/-- `2*(n+1)-A085002(n+1)` -/
def P15839923879881913791.Spec : Prop :=
  ∀ n, P15839923879881913791.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P11351865985503812535

`2*(n+1)-A035337(n)%2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A286754

/-- `2*(n+1)-A035337(n)%2` -/
def P11351865985503812535.Spec : Prop :=
  ∀ n, P11351865985503812535.a n = A286754 (n + 1)

theorem P11351865985503812535.correct : P11351865985503812535.Spec := by
  intro n
  simp only [A286754, Nat.add_sub_cancel]

end A286754

/-! ## A286754.P2827838346586863661

`2*(n+1)-A035340(n)%2`
-/

namespace A286754.P2827838346586863661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - Int.tmod (A035340 n) 2

end

end A286754.P2827838346586863661

namespace A286754

/-- `2*(n+1)-A035340(n)%2` -/
def P2827838346586863661.Spec : Prop :=
  ∀ n, P2827838346586863661.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P10836847199122515335

`A004767(n)-A286753(n+1)`
-/

namespace A286754.P10836847199122515335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A286753 (n + 1)

end

end A286754.P10836847199122515335

namespace A286754

/-- `A004767(n)-A286753(n+1)` -/
def P10836847199122515335.Spec : Prop :=
  ∀ n, P10836847199122515335.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P10360003728770907075

`xor(A088837(n+1), A286753(n+1))`
-/

namespace A286754.P10360003728770907075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A286753 (n + 1))

end

end A286754.P10360003728770907075

namespace A286754

/-- `xor(A088837(n+1), A286753(n+1))` -/
def P10360003728770907075.Spec : Prop :=
  ∀ n, P10360003728770907075.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P8221681030138790790

`2*A108598(n+1)-A000201(n+1)`
-/

namespace A286754.P8221681030138790790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108598 (n + 1) - A000201 (n + 1)

end

end A286754.P8221681030138790790

namespace A286754

/-- `2*A108598(n+1)-A000201(n+1)` -/
def P8221681030138790790.Spec : Prop :=
  ∀ n, P8221681030138790790.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P1691180755135306410

`A287658(n+1)+A287659(n+1)-A286753(n+1)`
-/

namespace A286754.P1691180755135306410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (n + 1) + (A287659 (n + 1) - A286753 (n + 1))

end

end A286754.P1691180755135306410

namespace A286754

/-- `A287658(n+1)+A287659(n+1)-A286753(n+1)` -/
def P1691180755135306410.Spec : Prop :=
  ∀ n, P1691180755135306410.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P14190385905675440001

`2*n-A000034(lt[1, A083368(n+1)])+3`
-/

namespace A286754.P14190385905675440001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 3

end

end A286754.P14190385905675440001

namespace A286754

/-- `2*n-A000034(lt[1, A083368(n+1)])+3` -/
def P14190385905675440001.Spec : Prop :=
  ∀ n, P14190385905675440001.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P6142598412693065099

`∑[Δ[A000035(floor(ϕ*n)+1)]+1]+n+1`
-/

namespace A286754.P6142598412693065099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (⌊Real.goldenRatio * (n : ℝ)⌋ + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A286754.P6142598412693065099

namespace A286754

/-- `∑[Δ[A000035(floor(ϕ*n)+1)]+1]+n+1` -/
def P6142598412693065099.Spec : Prop :=
  ∀ n, P6142598412693065099.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P17053180713873919969

`eq[1, A286752(n+1)]+1`
-/

namespace A286754.P17053180713873919969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286754.P17053180713873919969

namespace A286754

/-- `eq[1, A286752(n+1)]+1` -/
def P17053180713873919969.Spec : Prop :=
  ∀ n, (P17053180713873919969.a n : ℤ) = A286754 (n + 1)

end A286754

/-! ## A286754.P9061237484487374625

`A286752(2*(n+1))+Δ[n²]`
-/

namespace A286754.P9061237484487374625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286752 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A286754.P9061237484487374625

namespace A286754

/-- `A286752(2*(n+1))+Δ[n²]` -/
def P9061237484487374625.Spec : Prop :=
  ∀ n, P9061237484487374625.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P10151239093313479923

`A014681(A286753(n+1))`
-/

namespace A286754.P10151239093313479923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A286753 (n + 1)).toNat

end

end A286754.P10151239093313479923

namespace A286754

/-- `A014681(A286753(n+1))` -/
def P10151239093313479923.Spec : Prop :=
  ∀ n, P10151239093313479923.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P14050208386559113980

`A287657(A003622(n+1))+2*n+1`
-/

namespace A286754.P14050208386559113980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287657 (A003622 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286754.P14050208386559113980

namespace A286754

/-- `A287657(A003622(n+1))+2*n+1` -/
def P14050208386559113980.Spec : Prop :=
  ∀ n, P14050208386559113980.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P12976076480656703222

`2*A108598(n+1)-A060143(A001950(n+1))`
-/

namespace A286754.P12976076480656703222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108598 (n + 1) - A060143 (A001950 (n + 1)).toNat

end

end A286754.P12976076480656703222

namespace A286754

/-- `2*A108598(n+1)-A060143(A001950(n+1))` -/
def P12976076480656703222.Spec : Prop :=
  ∀ n, P12976076480656703222.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P17462363601630699102

`A176895(A035336(n+1)-(n+2))+2*n`
-/

namespace A286754.P17462363601630699102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (A035336 (n + 1) - (n + 2 : ℤ)).toNat + (2 * n : ℤ)

end

end A286754.P17462363601630699102

namespace A286754

/-- `A176895(A035336(n+1)-(n+2))+2*n` -/
def P17462363601630699102.Spec : Prop :=
  ∀ n, P17462363601630699102.a n = A286754 (n + 1)

end A286754

/-! ## A286754.P9702395426485284640

`A085002(A003623(n+1))+2*n+1`
-/

namespace A286754.P9702395426485284640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A003623 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A286754.P9702395426485284640

namespace A286754

/-- `A085002(A003623(n+1))+2*n+1` -/
def P9702395426485284640.Spec : Prop :=
  ∀ n, P9702395426485284640.a n = A286754 (n + 1)

end A286754

/-!
# A286755: Möbius (or Moebius) partition function of partitions in graded reverse lexicographic ordering.

The programs for A286755, there is no canonical definition to state claims against.
-/

/-! ## A286755.P14493025874302184512

`∏{digits}[A322762(n+1), #-2]`
-/

namespace A286755.P14493025874302184512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) - 2).prod

end

end A286755.P14493025874302184512

/-! ## A286755.P10208795466247393117

`A008683(A129129(n+1))`
-/

namespace A286755.P10208795466247393117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A129129 (n + 1)).toNat

end

end A286755.P10208795466247393117

/-! ## A286755.P11516711792203177957

`A157657(29*A129129(n+1))`
-/

namespace A286755.P11516711792203177957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (29 * A129129 (n + 1)).toNat

end

end A286755.P11516711792203177957

/-! ## A286755.P12097141575913393215

`∑{d}[A129129(n+1), A007427(#)]`
-/

namespace A286755.P12097141575913393215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A286755.P12097141575913393215

/-! ## A286755.P3035106343744304704

`A181435(A129129(n+1)+C(2, n+2))`
-/

namespace A286755.P3035106343744304704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181435 (A129129 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A286755.P3035106343744304704

/-! ## A286755.P3614926757211268493

`A008683(A122111(A333485(n+1)))`
-/

namespace A286755.P3614926757211268493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A122111 (A333485 (n + 1)).toNat).toNat

end

end A286755.P3614926757211268493

/-! ## A286755.P11815413282042785729

`A008683(ratio[A129129(n)]*A129129(n))`
-/

namespace A286755.P11815413282042785729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A129129 n : ℚ))).toNat

end

end A286755.P11815413282042785729

/-!
# A286758: Numbers k such that sigma(k) divides sigma(k!).

The programs for A286758, there is no canonical definition to state claims against.
-/

/-! ## A286758.P4471307646531220902

`comp[A262812(n+1)-1]+1`
-/

namespace A286758.P4471307646531220902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262812 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286758.P4471307646531220902

/-! ## A286758.P6923873626409726592

`eq[char[A262812(n+1)], A151933(n)]`
-/

namespace A286758.P6923873626409726592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262812 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286758.P6923873626409726592

/-!
# A286759: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A286759, there is no canonical definition to state claims against.
-/

/-! ## A286759.P17904790524324496266

`A030101(A286780(n)/A060546(n))`
-/

namespace A286759.P17904790524324496266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A286780 n : ℚ) / (A060546 n : ℚ))).toNat

end

end A286759.P17904790524324496266

/-! ## A286759.P7051446707917663667

`A030101(A286780(n)/A016116(n+1))`
-/

namespace A286759.P7051446707917663667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A286780 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A286759.P7051446707917663667

/-! ## A286759.P14482160747655658762

`A030101(1/A016116(n)*A286780(n))`
-/

namespace A286759.P14482160747655658762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (1 / (A016116 n : ℚ) * (A286780 n : ℚ))).toNat

end

end A286759.P14482160747655658762

/-! ## A286759.P12166818405696192165

`A030101(∏{p}[A286780(n), #])`
-/

namespace A286759.P12166818405696192165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A286759.P12166818405696192165

/-! ## A286759.P3708645419854554199

`A281589(∏{p}[A286780(n), #])`
-/

namespace A286759.P3708645419854554199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A286759.P3708645419854554199

/-!
# A286760: Total number of nodes summed over all lattice paths from (0,0) to (n,0) that do not go below the x-axis or above the diagonal x=y and consist of steps U=(1,1), D=(1,-1), H=(1,0) and S=(0,1).

The programs for A286760, there is no canonical definition to state claims against.
-/

/-! ## A286760.P9711364547822373100

`A181834(A339886(n+1))+A154626(n)`
-/

namespace A286760.P9711364547822373100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 (A339886 (n + 1)).toNat + A154626 n

end

end A286760.P9711364547822373100

/-! ## A286760.P9138551797522002605

`A154440(A007051(n)*A331680(n+3))`
-/

namespace A286760.P9138551797522002605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (A007051 n * A331680 (n + 3)).toNat

end

end A286760.P9138551797522002605

/-!
# A286761: Total number of nodes summed over all lattice paths from (0,0) to (n,0) that do not go below the x-axis or above the diagonal x=y and consist of steps D=(1,-1), H=(1,0) and S=(0,1).

The programs for A286761, there is no canonical definition to state claims against.
-/

/-! ## A286761.P7470858259444280032

`A356737(∑[a(n-2)+8])` with `a(0)=2, a(1)=2, a(2)=7`
-/

namespace A286761.P7470858259444280032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 7] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356737 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286761.P7470858259444280032

/-! ## A286761.P4051666768765360035

`A344290(A291648(n+1))`
-/

namespace A286761.P4051666768765360035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344290 (A291648 (n + 1)).toNat

end

end A286761.P4051666768765360035

/-!
# A286762: Indices k such that A195441(k) = A195441(k+1).

The programs for A286762, there is no canonical definition to state claims against.
-/

/-! ## A286762.P9809837178002489317

`eq[A195441(n+1), A195441(n)]`
-/

namespace A286762.P9809837178002489317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286762.P9809837178002489317

/-!
# A286763: Numbers that appear in A195441 at least once for two consecutive indices.

The programs for A286763, there is no canonical definition to state claims against.
-/

/-! ## A286763.P16640153980872490676

`A076734(A024916(2*n+1)*A156303(n))`
-/

namespace A286763.P16640153980872490676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076734 (A024916 (2 * n + 1) * A156303 n).toNat

end

end A286763.P16640153980872490676

/-! ## A286763.P15571314804404952033

`A295644(A295625(n+2)-A295630(2*(n+1)))`
-/

namespace A286763.P15571314804404952033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295644 (A295625 (n + 2) - A295630 (2 * (n + 1))).toNat

end

end A286763.P15571314804404952033

/-!
# A286764: Total number of nodes summed over all lattice paths from (0,0) to (n,n) that do not go below the x-axis or above the diagonal x=y and consist of steps D=(1,-1), H=(1,0) and S=(0,1).

The programs for A286764, there is no canonical definition to state claims against.
-/

/-! ## A286764.P12663635749907641050

`∑[A285759(A246539(n))]`
-/

namespace A286764.P12663635749907641050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285759 (A246539 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286764.P12663635749907641050

/-!
# A286765: Total number of nodes summed over all lattice paths from (0,0) to (n,n) that do not go below the x-axis or above the diagonal x=y and consist of steps U=(1,1), D=(1,-1), H=(1,0) and S=(0,1).

The programs for A286765, there is no canonical definition to state claims against.
-/

/-! ## A286765.P6772902153818714834

`A007093(A005329(n)+A005319(n))`
-/

namespace A286765.P6772902153818714834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A005329 n + A005319 n).toNat

end

end A286765.P6772902153818714834

/-!
# A286766: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 219", based on the 5-celled von Neumann neighborhood.

The programs for A286766, there is no canonical definition to state claims against.
-/

/-! ## A286766.P4941862075902614332

`A007088(A286768(n))`
-/

namespace A286766.P4941862075902614332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286768 n).toNat

end

end A286766.P4941862075902614332

/-! ## A286766.P9002891448393626116

`A286112(A077168(n)-A333901(n))`
-/

namespace A286766.P9002891448393626116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286112 (A077168 n - A333901 n).toNat

end

end A286766.P9002891448393626116

/-! ## A286766.P810689250143536007

`A127254(A100624(n))*A286112(n)`
-/

namespace A286766.P810689250143536007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (A100624 n).toNat * A286112 n

end

end A286766.P810689250143536007

/-! ## A286766.P9670980698182919276

`A014577(A260811(n))*A286112(n)`
-/

namespace A286766.P9670980698182919276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A260811 n).toNat * A286112 n

end

end A286766.P9670980698182919276

/-! ## A286766.P11794223643900950456

`A305989(A286769(n))`
-/

namespace A286766.P11794223643900950456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A286769 n).toNat

end

end A286766.P11794223643900950456

/-!
# A286767: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 219", based on the 5-celled von Neumann neighborhood.

The programs for A286767, there is no canonical definition to state claims against.
-/

/-! ## A286767.P2821886658953478633

`A007088(A286769(n))`
-/

namespace A286767.P2821886658953478633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286769 n).toNat

end

end A286767.P2821886658953478633

/-! ## A286767.P2142874659792721879

`lcm(A007088(A286768(n)), A286673(n))`
-/

namespace A286767.P2142874659792721879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007088 (A286768 n).toNat) (A286673 n)

end

end A286767.P2142874659792721879

/-! ## A286767.P4377471839746326110

`A286113(A077168(n)-A333901(n))`
-/

namespace A286767.P4377471839746326110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286113 (A077168 n - A333901 n).toNat

end

end A286767.P4377471839746326110

/-! ## A286767.P5456527322413406510

`A127254(A100624(n))*A286113(n)`
-/

namespace A286767.P5456527322413406510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (A100624 n).toNat * A286113 n

end

end A286767.P5456527322413406510

/-! ## A286767.P8991115216538046208

`A007088(lcm(A286115(n), A286768(n)))`
-/

namespace A286767.P8991115216538046208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A286115 n) (A286768 n))

end

end A286767.P8991115216538046208

/-!
# A286768: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 219", based on the 5-celled von Neumann neighborhood.

The programs for A286768, there is no canonical definition to state claims against.
-/

/-! ## A286768.P11847038556067871526

`A325401(A286769(n)%A205836(n+1))`
-/

namespace A286768.P11847038556067871526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.tmod (A286769 n) (A205836 (n + 1))).toNat

end

end A286768.P11847038556067871526

/-! ## A286768.P6366661652947041549

`A325401(A286769(n))`
-/

namespace A286768.P6366661652947041549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A286769 n).toNat

end

end A286768.P6366661652947041549

/-! ## A286768.P16927983696993243811

`A286114(and(n, -(A320893(2*n+5)+1)))`
-/

namespace A286768.P16927983696993243811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286114 (Int.land (n : ℤ) (-(A320893 (2 * n + 5) + 1))).toNat

end

end A286768.P16927983696993243811

/-! ## A286768.P11616540405775810731

`A286114(A077168(n)-A333901(n))`
-/

namespace A286768.P11616540405775810731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286114 (A077168 n - A333901 n).toNat

end

end A286768.P11616540405775810731

/-! ## A286768.P6894383204551014429

`A127254(A100624(n))*A286114(n)`
-/

namespace A286768.P6894383204551014429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (A100624 n).toNat * A286114 n

end

end A286768.P6894383204551014429

/-!
# A286769: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 219", based on the 5-celled von Neumann neighborhood.

The programs for A286769, there is no canonical definition to state claims against.
-/

/-! ## A286769.P17911733434167998314

`A286115(A077168(n)-A333901(n))`
-/

namespace A286769.P17911733434167998314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286115 (A077168 n - A333901 n).toNat

end

end A286769.P17911733434167998314

/-! ## A286769.P4154804875537223496

`A127254(A100624(n))*A286115(n)`
-/

namespace A286769.P4154804875537223496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (A100624 n).toNat * A286115 n

end

end A286769.P4154804875537223496

/-! ## A286769.P1199481685566081189

`A014577(A260811(n))*A286115(n)`
-/

namespace A286769.P1199481685566081189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A260811 n).toNat * A286115 n

end

end A286769.P1199481685566081189

/-! ## A286769.P8632079812182637424

`A266300(A288053(n))*A286115(n)`
-/

namespace A286769.P8632079812182637424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A288053 n).toNat * A286115 n

end

end A286769.P8632079812182637424

/-! ## A286769.P7431252300732721536

`C(A286115(n), A203809(A325538(n)))`
-/

namespace A286769.P7431252300732721536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286115 n).toNat (A203809 (A325538 n).toNat).toNat

end

end A286769.P7431252300732721536

/-!
# A286770: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A286770, the canonical program `A286770.P12168461856078736924` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286770 has offset 0).

The definition of A286770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286770.P14890699929579322222

`A280410(n)-char[2]`
-/

namespace A286770.P14890699929579322222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280410 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286770.P14890699929579322222

namespace A286770

/-- `A280410(n)-char[2]` -/
def P14890699929579322222.Spec : Prop :=
  ∀ n, P14890699929579322222.a n = A286770 n

end A286770

/-! ## A286770.P9722115037397671629

`A282656(lcm(2, n)-n)-char[2]`
-/

namespace A286770.P9722115037397671629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282656 (Nat.lcm 2 n - n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286770.P9722115037397671629

namespace A286770

/-- `A282656(lcm(2, n)-n)-char[2]` -/
def P9722115037397671629.Spec : Prop :=
  ∀ n, P9722115037397671629.a n = A286770 n

end A286770

/-! ## A286770.P17367273737018628982

`A285473(n)-and(1, n)-char[2]`
-/

namespace A286770.P17367273737018628982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285473 n - (Nat.land 1 n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286770.P17367273737018628982

namespace A286770

/-- `A285473(n)-and(1, n)-char[2]` -/
def P17367273737018628982.Spec : Prop :=
  ∀ n, P17367273737018628982.a n = A286770 n

end A286770

/-! ## A286770.P10273614017234054264

`A287190(n*and(1, n))-char[2]`
-/

namespace A286770.P10273614017234054264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 (n * Nat.land 1 n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286770.P10273614017234054264

namespace A286770

/-- `A287190(n*and(1, n))-char[2]` -/
def P10273614017234054264.Spec : Prop :=
  ∀ n, P10273614017234054264.a n = A286770 n

end A286770

/-! ## A286770.P5340037121572719629

`and(A033999(n), A287190(n))`
-/

namespace A286770.P5340037121572719629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A287190 n)

end

end A286770.P5340037121572719629

namespace A286770

/-- `and(A033999(n), A287190(n))` -/
def P5340037121572719629.Spec : Prop :=
  ∀ n, P5340037121572719629.a n = A286770 n

end A286770

/-! ## A286770.P10261622896225722769

`and(A280410(n), A287190(n))`
-/

namespace A286770.P10261622896225722769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280410 n) (A287190 n)

end

end A286770.P10261622896225722769

namespace A286770

/-- `and(A280410(n), A287190(n))` -/
def P10261622896225722769.Spec : Prop :=
  ∀ n, P10261622896225722769.a n = A286770 n

end A286770

/-! ## A286770.P15435479932687417919

`and(A285473(n), A287190(n))`
-/

namespace A286770.P15435479932687417919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285473 n) (A287190 n)

end

end A286770.P15435479932687417919

namespace A286770

/-- `and(A285473(n), A287190(n))` -/
def P15435479932687417919.Spec : Prop :=
  ∀ n, P15435479932687417919.a n = A286770 n

end A286770

/-! ## A286770.P14103488719887684926

`A287190(and(n, A287097(n)))`
-/

namespace A286770.P14103488719887684926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 (Int.land (n : ℤ) (A287097 n)).toNat

end

end A286770.P14103488719887684926

namespace A286770

/-- `A287190(and(n, A287097(n)))` -/
def P14103488719887684926.Spec : Prop :=
  ∀ n, P14103488719887684926.a n = A286770 n

end A286770

/-! ## A286770.P16365460539781129628

`A287190(and(n, A287101(n)))`
-/

namespace A286770.P16365460539781129628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 (Int.land (n : ℤ) (A287101 n)).toNat

end

end A286770.P16365460539781129628

namespace A286770

/-- `A287190(and(n, A287101(n)))` -/
def P16365460539781129628.Spec : Prop :=
  ∀ n, P16365460539781129628.a n = A286770 n

end A286770

/-! ## A286770.P5644280825727772473

`A287190(and(n, A287140(n)))`
-/

namespace A286770.P5644280825727772473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 (Int.land (n : ℤ) (A287140 n)).toNat

end

end A286770.P5644280825727772473

namespace A286770

/-- `A287190(and(n, A287140(n)))` -/
def P5644280825727772473.Spec : Prop :=
  ∀ n, P5644280825727772473.a n = A286770 n

end A286770

/-! ## A286770.P4185706784589014505

`A287190(and(n, A287189(n)))`
-/

namespace A286770.P4185706784589014505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 (Int.land (n : ℤ) (A287189 n)).toNat

end

end A286770.P4185706784589014505

namespace A286770

/-- `A287190(and(n, A287189(n)))` -/
def P4185706784589014505.Spec : Prop :=
  ∀ n, P4185706784589014505.a n = A286770 n

end A286770

/-! ## A286770.P3483437002468059102

`char[A331332(n)]*A280410(n)`
-/

namespace A286770.P3483437002468059102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A280410 n

end

end A286770.P3483437002468059102

namespace A286770

/-- `char[A331332(n)]*A280410(n)` -/
def P3483437002468059102.Spec : Prop :=
  ∀ n, P3483437002468059102.a n = A286770 n

end A286770

/-! ## A286770.P12168461856078736924

`A057427(xor(2, n))*A280410(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A286770

/-- `A057427(xor(2, n))*A280410(n)` -/
def P12168461856078736924.Spec : Prop :=
  ∀ n, P12168461856078736924.a n = A286770 n

theorem P12168461856078736924.correct : P12168461856078736924.Spec := by
  intro n
  simp only [A286770]

end A286770

/-! ## A286770.P10539148127894081426

`and(A094026(A266303(n)), A287190(n))`
-/

namespace A286770.P10539148127894081426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094026 (A266303 n).toNat) (A287190 n)

end

end A286770.P10539148127894081426

namespace A286770

/-- `and(A094026(A266303(n)), A287190(n))` -/
def P10539148127894081426.Spec : Prop :=
  ∀ n, P10539148127894081426.a n = A286770 n

end A286770

/-! ## A286770.P12265626566146956316

`A280410(n)/A051049(n)*A286773(n)`
-/

namespace A286770.P12265626566146956316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280410 n : ℚ) / (A051049 n : ℚ) * (A286773 n : ℚ)

end

end A286770.P12265626566146956316

namespace A286770

/-- `A280410(n)/A051049(n)*A286773(n)` -/
def P12265626566146956316.Spec : Prop :=
  ∀ n, P12265626566146956316.a n = (A286770 n : ℚ)

end A286770

/-! ## A286770.P16081942193781095737

`A280410(n)/A280411(n)*A286771(n)`
-/

namespace A286770.P16081942193781095737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280410 n : ℚ) / (A280411 n : ℚ) * (A286771 n : ℚ)

end

end A286770.P16081942193781095737

namespace A286770

/-- `A280410(n)/A280411(n)*A286771(n)` -/
def P16081942193781095737.Spec : Prop :=
  ∀ n, P16081942193781095737.a n = (A286770 n : ℚ)

end A286770

/-! ## A286770.P5782176857555461982

`and(A287190(n*A000035(n)), A287190(n))`
-/

namespace A286770.P5782176857555461982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287190 ((n : ℤ) * A000035 n).toNat) (A287190 n)

end

end A286770.P5782176857555461982

namespace A286770

/-- `and(A287190(n*A000035(n)), A287190(n))` -/
def P5782176857555461982.Spec : Prop :=
  ∀ n, P5782176857555461982.a n = A286770 n

end A286770

/-!
# A286771: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A286771, the canonical program `A286771.P2105546020748147357` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286771 has offset 0).

The definition of A286771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286771.P2105546020748147357

`lcm(A280411(n), A288699(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A286771

/-- `lcm(A280411(n), A288699(n))` -/
def P2105546020748147357.Spec : Prop :=
  ∀ n, (P2105546020748147357.a n : ℤ) = A286771 n

theorem P2105546020748147357.correct : P2105546020748147357.Spec := by
  intro n
  simp only [A286771]

end A286771

/-! ## A286771.P3324470547280118256

`A280411(n)/A051049(n)*A286773(n)`
-/

namespace A286771.P3324470547280118256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280411 n : ℚ) / (A051049 n : ℚ) * (A286773 n : ℚ)

end

end A286771.P3324470547280118256

namespace A286771

/-- `A280411(n)/A051049(n)*A286773(n)` -/
def P3324470547280118256.Spec : Prop :=
  ∀ n, P3324470547280118256.a n = (A286771 n : ℚ)

end A286771

/-! ## A286771.P2005330733740619193

`A280411(n)/A280410(n)*A286770(n)`
-/

namespace A286771.P2005330733740619193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280411 n : ℚ) / (A280410 n : ℚ) * (A286770 n : ℚ)

end

end A286771.P2005330733740619193

namespace A286771

/-- `A280411(n)/A280410(n)*A286770(n)` -/
def P2005330733740619193.Spec : Prop :=
  ∀ n, P2005330733740619193.a n = (A286771 n : ℚ)

end A286771

/-! ## A286771.P14008166510022092846

`A280411(n)/A280412(n)*A286772(n)`
-/

namespace A286771.P14008166510022092846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280411 n : ℚ) / (A280412 n : ℚ) * (A286772 n : ℚ)

end

end A286771.P14008166510022092846

namespace A286771

/-- `A280411(n)/A280412(n)*A286772(n)` -/
def P14008166510022092846.Spec : Prop :=
  ∀ n, P14008166510022092846.a n = (A286771 n : ℚ)

end A286771

/-! ## A286771.P13498175985031569709

`A280411(n)%lcm(4, A283352(n))`
-/

namespace A286771.P13498175985031569709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280411 n) (Int.lcm 4 (A283352 n) : ℤ)

end

end A286771.P13498175985031569709

namespace A286771

/-- `A280411(n)%lcm(4, A283352(n))` -/
def P13498175985031569709.Spec : Prop :=
  ∀ n, P13498175985031569709.a n = A286771 n

end A286771

/-!
# A286772: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A286772, the canonical program `A286772.P3630278976342246387` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286772 has offset 0).

The definition of A286772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286772.P14827418548126160270

`abs(2-gcd(2, n+1)^(n+1))-char[2]`
-/

namespace A286772.P14827418548126160270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.gcd 2 (n + 1) ^ (n + 1) : ℤ)| - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286772.P14827418548126160270

namespace A286772

/-- `abs(2-gcd(2, n+1)^(n+1))-char[2]` -/
def P14827418548126160270.Spec : Prop :=
  ∀ n, P14827418548126160270.a n = A286772 n

end A286772

/-! ## A286772.P11318556228564420195

`A280412(n)-char[2]`
-/

namespace A286772.P11318556228564420195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280412 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286772.P11318556228564420195

namespace A286772

/-- `A280412(n)-char[2]` -/
def P11318556228564420195.Spec : Prop :=
  ∀ n, P11318556228564420195.a n = A286772 n

end A286772

/-! ## A286772.P13331577020021186112

`and(A033999(n), A287192(n))`
-/

namespace A286772.P13331577020021186112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A287192 n)

end

end A286772.P13331577020021186112

namespace A286772

/-- `and(A033999(n), A287192(n))` -/
def P13331577020021186112.Spec : Prop :=
  ∀ n, P13331577020021186112.a n = A286772 n

end A286772

/-! ## A286772.P16390746775381810487

`and(A115638(n), A287192(n))`
-/

namespace A286772.P16390746775381810487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115638 n) (A287192 n)

end

end A286772.P16390746775381810487

namespace A286772

/-- `and(A115638(n), A287192(n))` -/
def P16390746775381810487.Spec : Prop :=
  ∀ n, P16390746775381810487.a n = A286772 n

end A286772

/-! ## A286772.P11108973966591567029

`and(A280412(n), A287192(n))`
-/

namespace A286772.P11108973966591567029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280412 n) (A287192 n)

end

end A286772.P11108973966591567029

namespace A286772

/-- `and(A280412(n), A287192(n))` -/
def P11108973966591567029.Spec : Prop :=
  ∀ n, P11108973966591567029.a n = A286772 n

end A286772

/-! ## A286772.P4150711193836201913

`xor(A185012(n), A280412(n))`
-/

namespace A286772.P4150711193836201913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A280412 n)

end

end A286772.P4150711193836201913

namespace A286772

/-- `xor(A185012(n), A280412(n))` -/
def P4150711193836201913.Spec : Prop :=
  ∀ n, P4150711193836201913.a n = A286772 n

end A286772

/-! ## A286772.P5088495510832235581

`A287192(n)/A153284(n+1)`
-/

namespace A286772.P5088495510832235581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287192 n : ℚ) / (A153284 (n + 1) : ℚ)

end

end A286772.P5088495510832235581

namespace A286772

/-- `A287192(n)/A153284(n+1)` -/
def P5088495510832235581.Spec : Prop :=
  ∀ n, P5088495510832235581.a n = (A286772 n : ℚ)

end A286772

/-! ## A286772.P1402055069451109803

`lcm(A171905(n+1), A280412(n))`
-/

namespace A286772.P1402055069451109803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A171905 (n + 1)) (A280412 n)

end

end A286772.P1402055069451109803

namespace A286772

/-- `lcm(A171905(n+1), A280412(n))` -/
def P1402055069451109803.Spec : Prop :=
  ∀ n, (P1402055069451109803.a n : ℤ) = A286772 n

end A286772

/-! ## A286772.P7470823633100588564

`and(A287192(n), A327767(n+1))`
-/

namespace A286772.P7470823633100588564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287192 n) (A327767 (n + 1))

end

end A286772.P7470823633100588564

namespace A286772

/-- `and(A287192(n), A327767(n+1))` -/
def P7470823633100588564.Spec : Prop :=
  ∀ n, P7470823633100588564.a n = A286772 n

end A286772

/-! ## A286772.P3529538082286717226

`xor(A056453(n+1), A279879(n))`
-/

namespace A286772.P3529538082286717226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056453 (n + 1)) (A279879 n)

end

end A286772.P3529538082286717226

namespace A286772

/-- `xor(A056453(n+1), A279879(n))` -/
def P3529538082286717226.Spec : Prop :=
  ∀ n, P3529538082286717226.a n = A286772 n

end A286772

/-! ## A286772.P1712764010004835563

`and(1, A305750(n))*A280412(n)`
-/

namespace A286772.P1712764010004835563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A305750 n) * A280412 n

end

end A286772.P1712764010004835563

namespace A286772

/-- `and(1, A305750(n))*A280412(n)` -/
def P1712764010004835563.Spec : Prop :=
  ∀ n, P1712764010004835563.a n = A286772 n

end A286772

/-! ## A286772.P621172233246739380

`A280412(n)/A051049(n)*A286773(n)`
-/

namespace A286772.P621172233246739380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280412 n : ℚ) / (A051049 n : ℚ) * (A286773 n : ℚ)

end

end A286772.P621172233246739380

namespace A286772

/-- `A280412(n)/A051049(n)*A286773(n)` -/
def P621172233246739380.Spec : Prop :=
  ∀ n, P621172233246739380.a n = (A286772 n : ℚ)

end A286772

/-! ## A286772.P6185323622194511012

`A171905(n+1)*A280412(n*A171905(n+1))`
-/

namespace A286772.P6185323622194511012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1) * A280412 ((n : ℤ) * A171905 (n + 1)).toNat

end

end A286772.P6185323622194511012

namespace A286772

/-- `A171905(n+1)*A280412(n*A171905(n+1))` -/
def P6185323622194511012.Spec : Prop :=
  ∀ n, P6185323622194511012.a n = A286772 n

end A286772

/-! ## A286772.P18204030011983684921

`A287192(and(n, A287189(n)))`
-/

namespace A286772.P18204030011983684921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287192 (Int.land (n : ℤ) (A287189 n)).toNat

end

end A286772.P18204030011983684921

namespace A286772

/-- `A287192(and(n, A287189(n)))` -/
def P18204030011983684921.Spec : Prop :=
  ∀ n, P18204030011983684921.a n = A286772 n

end A286772

/-! ## A286772.P10601952165831120348

`and(A287192(n), A289098(n))`
-/

namespace A286772.P10601952165831120348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287192 n) (A289098 n)

end

end A286772.P10601952165831120348

namespace A286772

/-- `and(A287192(n), A289098(n))` -/
def P10601952165831120348.Spec : Prop :=
  ∀ n, P10601952165831120348.a n = A286772 n

end A286772

/-! ## A286772.P987519863523186333

`and(A287192(n), A289268(n))`
-/

namespace A286772.P987519863523186333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287192 n) (A289268 n)

end

end A286772.P987519863523186333

namespace A286772

/-- `and(A287192(n), A289268(n))` -/
def P987519863523186333.Spec : Prop :=
  ∀ n, P987519863523186333.a n = A286772 n

end A286772

/-! ## A286772.P3630278976342246387

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=0, a(3)=14, a(4)=1, a(5)=62, a(6)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286772

/-- `5*a(n-2)-4*a(n-4)` -/
def P3630278976342246387.Spec : Prop :=
  ∀ n, P3630278976342246387.a n = A286772 n

theorem P3630278976342246387.correct : P3630278976342246387.Spec := by
  intro n
  simp only [A286772]

end A286772

/-! ## A286772.P6945126392633222042

`A280412(n)%A266699(n)`
-/

namespace A286772.P6945126392633222042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280412 n) (A266699 n)

end

end A286772.P6945126392633222042

namespace A286772

/-- `A280412(n)%A266699(n)` -/
def P6945126392633222042.Spec : Prop :=
  ∀ n, P6945126392633222042.a n = A286772 n

end A286772

/-! ## A286772.P18417056104626854361

`and(A266302(n), A287192(n))`
-/

namespace A286772.P18417056104626854361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266302 n) (A287192 n)

end

end A286772.P18417056104626854361

namespace A286772

/-- `and(A266302(n), A287192(n))` -/
def P18417056104626854361.Spec : Prop :=
  ∀ n, P18417056104626854361.a n = A286772 n

end A286772

/-!
# A286773: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

The programs for A286773, the canonical program `A286773.P4676500292446874195` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286773 has offset 0).

The definition of A286773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286773.P16127869909747076917

`or(2^n, comp[or(2, n)])-2*n`
-/

namespace A286773.P16127869909747076917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (2 ^ n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) - (2 * n : ℤ)

end

end A286773.P16127869909747076917

namespace A286773

/-- `or(2^n, comp[or(2, n)])-2*n` -/
def P16127869909747076917.Spec : Prop :=
  ∀ n, P16127869909747076917.a n = A286773 n

end A286773

/-! ## A286773.P15275625632571520622

`2^n-a(n-2)%2` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A286773.P15275625632571520622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  (2 ^ n : ℤ) - Int.tmod (a (n - 2)) 2

end

end A286773.P15275625632571520622

namespace A286773

/-- `2^n-a(n-2)%2` -/
def P15275625632571520622.Spec : Prop :=
  ∀ n, P15275625632571520622.a n = A286773 n

end A286773

/-! ## A286773.P13908247035393518483

`abs(or(or(1, n)+1, 2^n)-2-n)`
-/

namespace A286773.P13908247035393518483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor (Nat.lor 1 n + 1) (2 ^ n) : ℤ) - 2 - (n : ℤ)|

end

end A286773.P13908247035393518483

namespace A286773

/-- `abs(or(or(1, n)+1, 2^n)-2-n)` -/
def P13908247035393518483.Spec : Prop :=
  ∀ n, P13908247035393518483.a n = A286773 n

end A286773

/-! ## A286773.P17540811261443385698

`(1-char[2])*A051049(n)`
-/

namespace A286773.P17540811261443385698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A051049 n

end

end A286773.P17540811261443385698

namespace A286773

/-- `(1-char[2])*A051049(n)` -/
def P17540811261443385698.Spec : Prop :=
  ∀ n, P17540811261443385698.a n = A286773 n

end A286773

/-! ## A286773.P1787452060134774123

`and(A000079(n)+1, -(n+5))-1`
-/

namespace A286773.P1787452060134774123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 n + 1) (-(n + 5 : ℤ)) - 1

end

end A286773.P1787452060134774123

namespace A286773

/-- `and(A000079(n)+1, -(n+5))-1` -/
def P1787452060134774123.Spec : Prop :=
  ∀ n, P1787452060134774123.a n = A286773 n

end A286773

/-! ## A286773.P7740512054917494439

`and(A000225(n)+2, -(n+5))-1`
-/

namespace A286773.P7740512054917494439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n + 2) (-(n + 5 : ℤ)) - 1

end

end A286773.P7740512054917494439

namespace A286773

/-- `and(A000225(n)+2, -(n+5))-1` -/
def P7740512054917494439.Spec : Prop :=
  ∀ n, P7740512054917494439.a n = A286773 n

end A286773

/-! ## A286773.P16608883094492854558

`lcm(A051049(n), A288699(n))`
-/

namespace A286773.P16608883094492854558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051049 n) (A288699 n)

end

end A286773.P16608883094492854558

namespace A286773

/-- `lcm(A051049(n), A288699(n))` -/
def P16608883094492854558.Spec : Prop :=
  ∀ n, (P16608883094492854558.a n : ℤ) = A286773 n

end A286773

/-! ## A286773.P17428443648345438561

`A000225(and(1, a(n-1)))+A000225(n)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A286773.P17428443648345438561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A000225 (Int.land 1 (a (n - 1))).toNat + A000225 n

end

end A286773.P17428443648345438561

namespace A286773

/-- `A000225(and(1, a(n-1)))+A000225(n)` -/
def P17428443648345438561.Spec : Prop :=
  ∀ n, P17428443648345438561.a n = A286773 n

end A286773

/-! ## A286773.P13726483317225634230

`A051049(n)/A280412(n)*A286772(n)`
-/

namespace A286773.P13726483317225634230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051049 n : ℚ) / (A280412 n : ℚ) * (A286772 n : ℚ)

end

end A286773.P13726483317225634230

namespace A286773

/-- `A051049(n)/A280412(n)*A286772(n)` -/
def P13726483317225634230.Spec : Prop :=
  ∀ n, P13726483317225634230.a n = (A286773 n : ℚ)

end A286773

/-! ## A286773.P4676500292446874195

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=7, a(4)=16, a(5)=31`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286773

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P4676500292446874195.Spec : Prop :=
  ∀ n, P4676500292446874195.a n = A286773 n

theorem P4676500292446874195.correct : P4676500292446874195.Spec := by
  intro n
  simp only [A286773]

end A286773

/-! ## A286773.P13586745520711196539

`A051049(n)%A130626(n)`
-/

namespace A286773.P13586745520711196539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051049 n) (A130626 n)

end

end A286773.P13586745520711196539

namespace A286773

/-- `A051049(n)%A130626(n)` -/
def P13586745520711196539.Spec : Prop :=
  ∀ n, P13586745520711196539.a n = A286773 n

end A286773

/-! ## A286773.P15892438235243217500

`and(A051049(n), A287193(n))`
-/

namespace A286773.P15892438235243217500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051049 n) (A287193 n)

end

end A286773.P15892438235243217500

namespace A286773

/-- `and(A051049(n), A287193(n))` -/
def P15892438235243217500.Spec : Prop :=
  ∀ n, P15892438235243217500.a n = A286773 n

end A286773

/-! ## A286773.P11402134444835459883

`and(A280293(n), A287193(n))`
-/

namespace A286773.P11402134444835459883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280293 n) (A287193 n)

end

end A286773.P11402134444835459883

namespace A286773

/-- `and(A280293(n), A287193(n))` -/
def P11402134444835459883.Spec : Prop :=
  ∀ n, P11402134444835459883.a n = A286773 n

end A286773

/-! ## A286773.P7458541670379138728

`and(A285475(n), A287193(n))`
-/

namespace A286773.P7458541670379138728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285475 n) (A287193 n)

end

end A286773.P7458541670379138728

namespace A286773

/-- `and(A285475(n), A287193(n))` -/
def P7458541670379138728.Spec : Prop :=
  ∀ n, P7458541670379138728.a n = A286773 n

end A286773

/-! ## A286773.P523549235331628895

`and(A287193(n), A289099(n))`
-/

namespace A286773.P523549235331628895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287193 n) (A289099 n)

end

end A286773.P523549235331628895

namespace A286773

/-- `and(A287193(n), A289099(n))` -/
def P523549235331628895.Spec : Prop :=
  ∀ n, P523549235331628895.a n = A286773 n

end A286773

/-! ## A286773.P1897866228735960174

`and(A287193(n), A289370(n))`
-/

namespace A286773.P1897866228735960174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287193 n) (A289370 n)

end

end A286773.P1897866228735960174

namespace A286773

/-- `and(A287193(n), A289370(n))` -/
def P1897866228735960174.Spec : Prop :=
  ∀ n, P1897866228735960174.a n = A286773 n

end A286773

/-! ## A286773.P10256946218832278919

`and(A287193(n), A290662(n))`
-/

namespace A286773.P10256946218832278919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287193 n) (A290662 n)

end

end A286773.P10256946218832278919

namespace A286773

/-- `and(A287193(n), A290662(n))` -/
def P10256946218832278919.Spec : Prop :=
  ∀ n, P10256946218832278919.a n = A286773 n

end A286773

/-! ## A286773.P13087586190270178220

`xor(A233411(n), A279880(n))`
-/

namespace A286773.P13087586190270178220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A233411 n) (A279880 n)

end

end A286773.P13087586190270178220

namespace A286773

/-- `xor(A233411(n), A279880(n))` -/
def P13087586190270178220.Spec : Prop :=
  ∀ n, P13087586190270178220.a n = A286773 n

end A286773

/-! ## A286773.P16900099089008745756

`and(A051049(n), A267614(n))`
-/

namespace A286773.P16900099089008745756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051049 n) (A267614 n)

end

end A286773.P16900099089008745756

namespace A286773

/-- `and(A051049(n), A267614(n))` -/
def P16900099089008745756.Spec : Prop :=
  ∀ n, P16900099089008745756.a n = A286773 n

end A286773

/-!
# A286774: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A286774, there is no canonical definition to state claims against.
-/

/-! ## A286774.P11919209809345199827

`A007088(A286776(n))`
-/

namespace A286774.P11919209809345199827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286776 n).toNat

end

end A286774.P11919209809345199827

/-! ## A286774.P13901706039672320878

`A185544(2*A286776(n))`
-/

namespace A286774.P13901706039672320878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286776 n).toNat

end

end A286774.P13901706039672320878

/-! ## A286774.P8904241584940839512

`A185544(A286776(n)+A286776(n))`
-/

namespace A286774.P8904241584940839512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A286776 n + A286776 n).toNat

end

end A286774.P8904241584940839512

/-!
# A286775: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A286775, there is no canonical definition to state claims against.
-/

/-! ## A286775.P11092672587586834626

`A007088(A286777(n))`
-/

namespace A286775.P11092672587586834626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286777 n).toNat

end

end A286775.P11092672587586834626

/-! ## A286775.P18334333271369311480

`A185544(2*A286777(n))`
-/

namespace A286775.P18334333271369311480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286777 n).toNat

end

end A286775.P18334333271369311480

/-! ## A286775.P14871703138038463076

`A185544(A286777(n)+A286777(n))`
-/

namespace A286775.P14871703138038463076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A286777 n + A286777 n).toNat

end

end A286775.P14871703138038463076

/-!
# A286776: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A286776, there is no canonical definition to state claims against.
-/

/-! ## A286776.P12988223318831468667

`A324088(A344726(n+1))+A286122(n)`
-/

namespace A286776.P12988223318831468667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324088 (A344726 (n + 1)).toNat + A286122 n

end

end A286776.P12988223318831468667

/-!
# A286777: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 222", based on the 5-celled von Neumann neighborhood.

The programs for A286777, there is no canonical definition to state claims against.
-/

/-! ## A286777.P14070428112923568569

`A130706(n)+A035327(A288976(n))`
-/

namespace A286777.P14070428112923568569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + A035327 (A288976 n).toNat

end

end A286777.P14070428112923568569

/-! ## A286777.P7981510039224211231

`lcm(A025581(A325617(n)), A084102(n))`
-/

namespace A286777.P7981510039224211231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025581 (A325617 n).toNat) (A084102 n)

end

end A286777.P7981510039224211231

/-! ## A286777.P1422659945882109318

`lcm(A225529(n), A323407(A323395(n)))`
-/

namespace A286777.P1422659945882109318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A225529 n) (A323407 (A323395 n).toNat)

end

end A286777.P1422659945882109318

/-!
# A286778: Sum of the common path length over all 2-tuples of nodes in a complete binary tree of height n.

The programs for A286778, the canonical program `A286778.P15594599367603054838` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286778 has offset 0).

The definition of A286778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286778.P15594599367603054838

`4*2^(2*n)-(4*n+2)*2^n-2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286778

/-- `4*2^(2*n)-(4*n+2)*2^n-2` -/
def P15594599367603054838.Spec : Prop :=
  ∀ n, P15594599367603054838.a n = A286778 n

theorem P15594599367603054838.correct : P15594599367603054838.Spec := by
  intro n
  simp only [A286778]

end A286778

/-! ## A286778.P17438435701064502749

`2*A386875(Δ[n²])`
-/

namespace A286778.P17438435701064502749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A386875 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A286778.P17438435701064502749

namespace A286778

/-- `2*A386875(Δ[n²])` -/
def P17438435701064502749.Spec : Prop :=
  ∀ n, P17438435701064502749.a n = A286778 n

end A286778

/-! ## A286778.P213787120668377341

`∑[2^n*A050488(n)]`
-/

namespace A286778.P213787120668377341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A050488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286778.P213787120668377341

namespace A286778

/-- `∑[2^n*A050488(n)]` -/
def P213787120668377341.Spec : Prop :=
  ∀ n, P213787120668377341.a n = A286778 n

end A286778

/-! ## A286778.P17276860477435632193

`2*(a(n-1)+A255047(n)²)` with `a(0)=0`
-/

namespace A286778.P17276860477435632193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + A255047 n ^ 2)

end

end A286778.P17276860477435632193

namespace A286778

/-- `2*(a(n-1)+A255047(n)²)` -/
def P17276860477435632193.Spec : Prop :=
  ∀ n, P17276860477435632193.a n = A286778 n

end A286778

/-! ## A286778.P4169550036222993336

`∑[(∑[2^n-2]+2^n)*A011782(n+1)]`
-/

namespace A286778.P4169550036222993336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + (2 ^ n : ℤ)) * A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286778.P4169550036222993336

namespace A286778

/-- `∑[(∑[2^n-2]+2^n)*A011782(n+1)]` -/
def P4169550036222993336.Spec : Prop :=
  ∀ n, P4169550036222993336.a n = A286778 n

end A286778

/-! ## A286778.P4626894132578142404

`∑[lcm(A000079(n), A050488(n))]`
-/

namespace A286778.P4626894132578142404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A050488 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286778.P4626894132578142404

namespace A286778

/-- `∑[lcm(A000079(n), A050488(n))]` -/
def P4626894132578142404.Spec : Prop :=
  ∀ n, (P4626894132578142404.a n : ℤ) = A286778 n

end A286778

/-! ## A286778.P14383845659923285571

`∑[(A095151(n)-n)*A000079(n)]`
-/

namespace A286778.P14383845659923285571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095151 n - (n : ℤ)) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286778.P14383845659923285571

namespace A286778

/-- `∑[(A095151(n)-n)*A000079(n)]` -/
def P14383845659923285571.Spec : Prop :=
  ∀ n, P14383845659923285571.a n = A286778 n

end A286778

/-! ## A286778.P5088153151628728039

`∑[(A079583(n)-(n+1))*A000079(n)]`
-/

namespace A286778.P5088153151628728039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079583 n - (n + 1 : ℤ)) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286778.P5088153151628728039

namespace A286778

/-- `∑[(A079583(n)-(n+1))*A000079(n)]` -/
def P5088153151628728039.Spec : Prop :=
  ∀ n, P5088153151628728039.a n = A286778 n

end A286778

/-!
# A286779: Multiplicative with a(p^e) = 2e^2 + 2.

The programs for A286779, the canonical program `A286779.P6860197201783221995` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286779 has offset 1).

The definition of A286779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286779.P6860197201783221995

`∏{e}[n+1, 2*(#²+1)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286779

/-- `∏{e}[n+1, 2*(#²+1)]` -/
def P6860197201783221995.Spec : Prop :=
  ∀ n, (P6860197201783221995.a n : ℤ) = A286779 (n + 1)

theorem P6860197201783221995.correct : P6860197201783221995.Spec := by
  intro n
  simp only [A286779, Nat.add_sub_cancel]

end A286779

/-! ## A286779.P17283917183251395806

`∑{d}[n+1, A000005(#)*A252505((n+1)/#)]`
-/

namespace A286779.P17283917183251395806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A252505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A286779.P17283917183251395806

namespace A286779

/-- `∑{d}[n+1, A000005(#)*A252505((n+1)/#)]` -/
def P17283917183251395806.Spec : Prop :=
  ∀ n, P17283917183251395806.a n = A286779 (n + 1)

end A286779

/-! ## A286779.P9797589388351211604

`∑{d}[n+1, A035116(#)*A227291((n+1)/#)]`
-/

namespace A286779.P9797589388351211604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A227291 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A286779.P9797589388351211604

namespace A286779

/-- `∑{d}[n+1, A035116(#)*A227291((n+1)/#)]` -/
def P9797589388351211604.Spec : Prop :=
  ∀ n, P9797589388351211604.a n = A286779 (n + 1)

end A286779

/-! ## A286779.P8637910547120185716

`∑{d}[n+1, A007425(#)*A307430((n+1)/#)]`
-/

namespace A286779.P8637910547120185716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A307430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A286779.P8637910547120185716

namespace A286779

/-- `∑{d}[n+1, A007425(#)*A307430((n+1)/#)]` -/
def P8637910547120185716.Spec : Prop :=
  ∀ n, P8637910547120185716.a n = A286779 (n + 1)

end A286779

/-! ## A286779.P860201994702078964

`∑{d}[n+1, A034444(#)*A322327((n+1)/#)]`
-/

namespace A286779.P860201994702078964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A322327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A286779.P860201994702078964

namespace A286779

/-- `∑{d}[n+1, A034444(#)*A322327((n+1)/#)]` -/
def P860201994702078964.Spec : Prop :=
  ∀ n, P860201994702078964.a n = A286779 (n + 1)

end A286779

/-! ## A286779.P3685959028656809117

`∑{d}[n+1, A048691(#)*A323308((n+1)/#)]`
-/

namespace A286779.P3685959028656809117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A323308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A286779.P3685959028656809117

namespace A286779

/-- `∑{d}[n+1, A048691(#)*A323308((n+1)/#)]` -/
def P3685959028656809117.Spec : Prop :=
  ∀ n, P3685959028656809117.a n = A286779 (n + 1)

end A286779

/-! ## A286779.P15564672056493999457

`∑{d}[n+1, A008966(#)*A370296((n+1)/#)]`
-/

namespace A286779.P15564672056493999457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A370296 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A286779.P15564672056493999457

namespace A286779

/-- `∑{d}[n+1, A008966(#)*A370296((n+1)/#)]` -/
def P15564672056493999457.Spec : Prop :=
  ∀ n, P15564672056493999457.a n = A286779 (n + 1)

end A286779

/-! ## A286779.P402575139405603989

`∑{d}[n+1, A062367(#)*A363552((n+1)/#)]`
-/

namespace A286779.P402575139405603989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062367 d * A363552 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A286779.P402575139405603989

namespace A286779

/-- `∑{d}[n+1, A062367(#)*A363552((n+1)/#)]` -/
def P402575139405603989.Spec : Prop :=
  ∀ n, P402575139405603989.a n = A286779 (n + 1)

end A286779

/-!
# A286780: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A286780, there is no canonical definition to state claims against.
-/

/-! ## A286780.P10710065637958405148

`A030101(A286759(n))*A060546(n)`
-/

namespace A286780.P10710065637958405148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A286759 n).toNat * A060546 n

end

end A286780.P10710065637958405148

/-! ## A286780.P3449626464665112893

`A262689(A110953(n+1))`
-/

namespace A286780.P3449626464665112893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A110953 (n + 1)).toNat

end

end A286780.P3449626464665112893

/-! ## A286780.P8690450561162146648

`A262689(Δ[A015249(n+2)])`
-/

namespace A286780.P8690450561162146648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015249 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (f1 (n + 1) - f1 n).toNat

end

end A286780.P8690450561162146648

/-! ## A286780.P1099734503188987040

`A057889(C(A288984(n), A287641(n)))`
-/

namespace A286780.P1099734503188987040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Nat.choose (A288984 n).toNat (A287641 n).toNat)

end

end A286780.P1099734503188987040

/-!
# A286783: Triangle T(n,k) read by rows: coefficients of polynomials P_n(t) defined in Formula section.

The programs for A286783, there is no canonical definition to state claims against.
-/

/-! ## A286783.P1909739845835698794

`A206496((2*n)²+2)`
-/

namespace A286783.P1909739845835698794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206496 ((2 * n) ^ 2 + 2)

end

end A286783.P1909739845835698794

/-!
# A286784: Triangle read by rows: T(n, k) = binomial(2*n, n + k) * binomial(n + 1, k)/(n + 1).

The programs for A286784, the canonical program `A286784.P1766115053411734511` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286784 has offset 0).

The definition of A286784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286784.P1766115053411734511

`C(2*row(n), row(n)+col(n))*C(row(n)+1, col(n))/(row(n)+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A286784

/-- `C(2*row(n), row(n)+col(n))*C(row(n)+1, col(n))/(row(n)+1)` -/
def P1766115053411734511.Spec : Prop :=
  ∀ n, P1766115053411734511.a n = (A286784 n : ℚ)

end A286784

/-! ## A286784.P14644862398582893663

`A110608(n)/A004736(n+1)`
-/

namespace A286784.P14644862398582893663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A286784.P14644862398582893663

namespace A286784

/-- `A110608(n)/A004736(n+1)` -/
def P14644862398582893663.Spec : Prop :=
  ∀ n, P14644862398582893663.a n = (A286784 n : ℚ)

end A286784

/-! ## A286784.P9735775900464413118

`A110608(n)/(A025581(n)+1)`
-/

namespace A286784.P9735775900464413118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A025581 n + 1 : ℚ)

end

end A286784.P9735775900464413118

namespace A286784

/-- `A110608(n)/(A025581(n)+1)` -/
def P9735775900464413118.Spec : Prop :=
  ∀ n, P9735775900464413118.a n = (A286784 n : ℚ)

end A286784

/-! ## A286784.P8445638323790183693

`A110608(n)/sqrt(A055461(n+1))`
-/

namespace A286784.P8445638323790183693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℝ) / Real.sqrt (A055461 (n + 1) : ℝ)

end

end A286784.P8445638323790183693

namespace A286784

/-- `A110608(n)/sqrt(A055461(n+1))` -/
def P8445638323790183693.Spec : Prop :=
  ∀ n, P8445638323790183693.a n = (A286784 n : ℝ)

end A286784

/-! ## A286784.P7589079834648294375

`A110608(n)/A008619(A099375(n))`
-/

namespace A286784.P7589079834648294375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A008619 (A099375 n).toNat : ℚ)

end

end A286784.P7589079834648294375

namespace A286784

/-- `A110608(n)/A008619(A099375(n))` -/
def P7589079834648294375.Spec : Prop :=
  ∀ n, P7589079834648294375.a n = (A286784 n : ℚ)

end A286784

/-! ## A286784.P17636978953904319004

`A110608(n)/A002260(A038722(n+1))`
-/

namespace A286784.P17636978953904319004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A002260 (A038722 (n + 1)).toNat : ℚ)

end

end A286784.P17636978953904319004

namespace A286784

/-- `A110608(n)/A002260(A038722(n+1))` -/
def P17636978953904319004.Spec : Prop :=
  ∀ n, P17636978953904319004.a n = (A286784 n : ℚ)

end A286784

/-! ## A286784.P7127224611090902205

`A110608(n)/A065033(A143956(n+1))`
-/

namespace A286784.P7127224611090902205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A065033 (A143956 (n + 1)).toNat : ℚ)

end

end A286784.P7127224611090902205

namespace A286784

/-- `A110608(n)/A065033(A143956(n+1))` -/
def P7127224611090902205.Spec : Prop :=
  ∀ n, P7127224611090902205.a n = (A286784 n : ℚ)

end A286784

/-! ## A286784.P4175550610095656189

`A110608(n)/(A093995(n+1)-A061885(n))`
-/

namespace A286784.P4175550610095656189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A093995 (n + 1) - A061885 n : ℚ)

end

end A286784.P4175550610095656189

namespace A286784

/-- `A110608(n)/(A093995(n+1)-A061885(n))` -/
def P4175550610095656189.Spec : Prop :=
  ∀ n, P4175550610095656189.a n = (A286784 n : ℚ)

end A286784

/-! ## A286784.P574238238117760591

`A110608(n)/A000005(A130321(n))`
-/

namespace A286784.P574238238117760591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A000005 (A130321 n).toNat : ℚ)

end

end A286784.P574238238117760591

namespace A286784

/-- `A110608(n)/A000005(A130321(n))` -/
def P574238238117760591.Spec : Prop :=
  ∀ n, P574238238117760591.a n = (A286784 n : ℚ)

end A286784

/-!
# A286786: Column 1 of A286781.

The programs for A286786, there is no canonical definition to state claims against.
-/

/-! ## A286786.P14284166417377019377

`A286781(∑[n+1]+1)`
-/

namespace A286786.P14284166417377019377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A286786.P14284166417377019377

/-! ## A286786.P17515088186478765280

`or(1, A286781(A000124(n+1)))`
-/

namespace A286786.P17515088186478765280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A286781 (A000124 (n + 1)).toNat)

end

end A286786.P17515088186478765280

/-! ## A286786.P9758196563325805938

`A001511(Δ[n^2])*A286781(A000124(n+1))`
-/

namespace A286786.P9758196563325805938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A286781 (A000124 (n + 1)).toNat

end

end A286786.P9758196563325805938

/-! ## A286786.P6163429822788290534

`A286781(A000124(n+1))+A348647(and(n+1, -n))-1`
-/

namespace A286786.P6163429822788290534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (A000124 (n + 1)).toNat + (A348647 (Int.land (n + 1 : ℤ) (-(n : ℤ))).toNat - 1)

end

end A286786.P6163429822788290534

/-! ## A286786.P7162396852362741535

`A014963(A052020(n+1))*A286781(A000124(n+1))`
-/

namespace A286786.P7162396852362741535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A052020 (n + 1)).toNat * A286781 (A000124 (n + 1)).toNat

end

end A286786.P7162396852362741535

/-! ## A286786.P17070174044163907780

`A001222(A020482(n+2))*A286781(A000124(n+1))`
-/

namespace A286786.P17070174044163907780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020482 (n + 2)).toNat * A286781 (A000124 (n + 1)).toNat

end

end A286786.P17070174044163907780

/-! ## A286786.P3691055439824024440

`A014963(A005899(n))*A286781(A000124(n+1))`
-/

namespace A286786.P3691055439824024440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005899 n).toNat * A286781 (A000124 (n + 1)).toNat

end

end A286786.P3691055439824024440

/-!
# A286787: Column 2 of A286781.

The programs for A286787, there is no canonical definition to state claims against.
-/

/-! ## A286787.P13756523164926068197

`A286781(∑[n+2]+3)`
-/

namespace A286787.P13756523164926068197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A286787.P13756523164926068197

/-! ## A286787.P14954600417485752752

`A287032(n+3)/A005408(n+2)`
-/

namespace A286787.P14954600417485752752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287032 (n + 3) : ℚ) / (A005408 (n + 2) : ℚ)

end

end A286787.P14954600417485752752

/-! ## A286787.P10711244142273846767

`A287032(n+3)/A060747(n+3)`
-/

namespace A286787.P10711244142273846767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287032 (n + 3) : ℚ) / (A060747 (n + 3) : ℚ)

end

end A286787.P10711244142273846767

/-! ## A286787.P7233077827505074931

`A287032(n+3)/Δ[Δ[A101986(n)]]`
-/

namespace A286787.P7233077827505074931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287032 (n + 3) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A286787.P7233077827505074931

/-! ## A286787.P6229038991910828840

`A287032(n+3)/(A167614(n+1)-A000124(n))`
-/

namespace A286787.P6229038991910828840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287032 (n + 3) : ℚ) / (A167614 (n + 1) - A000124 n : ℚ)

end

end A286787.P6229038991910828840

/-!
# A286788: Column 3 of A286781.

The programs for A286788, there is no canonical definition to state claims against.
-/

/-! ## A286788.P5172635216094237618

`A286781(A167614(n+2))`
-/

namespace A286788.P5172635216094237618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (A167614 (n + 2)).toNat

end

end A286788.P5172635216094237618

/-! ## A286788.P15530096386699912484

`A286781(A052905(n)+8)`
-/

namespace A286788.P15530096386699912484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (A052905 n + 8).toNat

end

end A286788.P15530096386699912484

/-! ## A286788.P5053272422488826391

`A286781(eq[2, A141169(n)])`
-/

namespace A286788.P5053272422488826391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286788.P5053272422488826391

/-! ## A286788.P2918979715618244313

`A286781(eq[3, A002262(n)])`
-/

namespace A286788.P2918979715618244313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286788.P2918979715618244313

/-! ## A286788.P9475763730959682841

`A286781(eq[8, A059268(n)])`
-/

namespace A286788.P9475763730959682841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286788.P9475763730959682841

/-! ## A286788.P10355659249226241881

`A286781(A000096(n+2)+4)`
-/

namespace A286788.P10355659249226241881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (A000096 (n + 2) + 4).toNat

end

end A286788.P10355659249226241881

/-! ## A286788.P26683336683106986

`A286781(A166136(n+2)-3)`
-/

namespace A286788.P26683336683106986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (A166136 (n + 2) - 3).toNat

end

end A286788.P26683336683106986

/-! ## A286788.P590316317493494961

`A286781(eq[4, A002260(n+1)])`
-/

namespace A286788.P590316317493494961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286788.P590316317493494961

/-! ## A286788.P1389682885136385464

`A286781(eq[1, A104763(n+1)-2])`
-/

namespace A286788.P1389682885136385464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286788.P1389682885136385464

/-! ## A286788.P12746148543945865506

`A286781(eq[1, A144328(n+1)-2])`
-/

namespace A286788.P12746148543945865506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286788.P12746148543945865506

/-!
# A286789: Column 4 of A286781.

The programs for A286789, there is no canonical definition to state claims against.
-/

/-! ## A286789.P12894552459885298474

`A286781(eq[3, A141169(n)])`
-/

namespace A286789.P12894552459885298474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286789.P12894552459885298474

/-! ## A286789.P10120002775255490568

`A286781(eq[4, A002262(n)])`
-/

namespace A286789.P10120002775255490568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286789.P10120002775255490568

/-! ## A286789.P12352619963534821558

`A286781(eq[4, sqrt(A059268(n))])`
-/

namespace A286789.P12352619963534821558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A286789.P12352619963534821558

/-! ## A286789.P18030886580528576257

`A286781(A000217(n+4)+4)`
-/

namespace A286789.P18030886580528576257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (A000217 (n + 4) + 4).toNat

end

end A286789.P18030886580528576257

/-! ## A286789.P15805719761562903727

`A286781(eq[5, A002260(n+1)])`
-/

namespace A286789.P15805719761562903727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286789.P15805719761562903727

/-! ## A286789.P10978566952796091980

`A286781(eq[2, A144328(n+1)-2])`
-/

namespace A286789.P10978566952796091980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286789.P10978566952796091980

/-! ## A286789.P265563510218719728

`A286781(eq[2, A144328(n+1)/2])`
-/

namespace A286789.P265563510218719728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A286789.P265563510218719728

/-! ## A286789.P17175351464732531659

`A286781(A167614(n+1)+A005408(n)+7)`
-/

namespace A286789.P17175351464732531659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (A167614 (n + 1) + A005408 n + 7).toNat

end

end A286789.P17175351464732531659

/-!
# A286790: Column 5 of A286781.

The programs for A286790, there is no canonical definition to state claims against.
-/

/-! ## A286790.P14162971833492522570

`A286781(A077169(n+6))`
-/

namespace A286790.P14162971833492522570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (A077169 (n + 6)).toNat

end

end A286790.P14162971833492522570

/-! ## A286790.P17849184998939958741

`A286781(eq[5, A002262(n)])`
-/

namespace A286790.P17849184998939958741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286790.P17849184998939958741

/-! ## A286790.P11028930213439276040

`A286781(eq[5, A141169(n)])`
-/

namespace A286790.P11028930213439276040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286790.P11028930213439276040

/-! ## A286790.P13973030310747554605

`A286781(eq[5, A144328(n+1)])`
-/

namespace A286790.P13973030310747554605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286790.P13973030310747554605

/-! ## A286790.P15227709010409068319

`A286781(eq[6, A002260(n+1)])`
-/

namespace A286790.P15227709010409068319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286790.P15227709010409068319

/-! ## A286790.P4980918700025782541

`A286781(eq[8, A104763(n+1)])`
-/

namespace A286790.P4980918700025782541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286790.P4980918700025782541

/-!
# A286791: Column 6 of A286781.

The programs for A286791, there is no canonical definition to state claims against.
-/

/-! ## A286791.P4560762607662730891

`A286781(A166136(n+5))`
-/

namespace A286791.P4560762607662730891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (A166136 (n + 5)).toNat

end

end A286791.P4560762607662730891

/-! ## A286791.P11417255967897471717

`A286781(eq[6, A002262(n)])`
-/

namespace A286791.P11417255967897471717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286791.P11417255967897471717

/-! ## A286791.P10671834981848212008

`A286781(eq[8, A141169(n)])`
-/

namespace A286791.P10671834981848212008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286791.P10671834981848212008

/-! ## A286791.P15980215771656667287

`A286781(eq[64, A059268(n)])`
-/

namespace A286791.P15980215771656667287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286791.P15980215771656667287

/-! ## A286791.P6942838237234847792

`A286781(eq[6, A144328(n+1)])`
-/

namespace A286791.P6942838237234847792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286791.P6942838237234847792

/-! ## A286791.P5304762986646074711

`A286781(eq[7, A002260(n+1)])`
-/

namespace A286791.P5304762986646074711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286791.P5304762986646074711

/-!
# A286792: Column 7 of A286781.

The programs for A286792, there is no canonical definition to state claims against.
-/

/-! ## A286792.P14245967542904575546

`A286781(eq[7, A002262(n)])`
-/

namespace A286792.P14245967542904575546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286792.P14245967542904575546

/-! ## A286792.P2223458989694788108

`A286781(eq[13, A141169(n)])`
-/

namespace A286792.P2223458989694788108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286792.P2223458989694788108

/-! ## A286792.P7266626949563887505

`A286781(eq[7, A144328(n+1)])`
-/

namespace A286792.P7266626949563887505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286792.P7266626949563887505

/-! ## A286792.P1180796643010611604

`A286781(eq[8, A002260(n+1)])`
-/

namespace A286792.P1180796643010611604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286792.P1180796643010611604

/-! ## A286792.P1426314797912167696

`A286781(eq[8, A134868(n+1)])`
-/

namespace A286792.P1426314797912167696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286792.P1426314797912167696

/-!
# A286793: Column 8 of A286781.

The programs for A286793, there is no canonical definition to state claims against.
-/

/-! ## A286793.P4959902694395274657

`A286781(eq[8, A002262(n)])`
-/

namespace A286793.P4959902694395274657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286793.P4959902694395274657

/-! ## A286793.P6595672714168727117

`A286781(A000217(n+8)+8)`
-/

namespace A286793.P6595672714168727117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (A000217 (n + 8) + 8).toNat

end

end A286793.P6595672714168727117

/-! ## A286793.P151202829945884064

`A286781(eq[8, A144328(n+1)])`
-/

namespace A286793.P151202829945884064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286793.P151202829945884064

/-! ## A286793.P1199088303853090397

`A286781(eq[9, A002260(n+1)])`
-/

namespace A286793.P1199088303853090397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286793.P1199088303853090397

/-! ## A286793.P3995754277258105749

`A286781(eq[9, A134868(n+1)])`
-/

namespace A286793.P3995754277258105749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286793.P3995754277258105749

/-!
# A286794: Row sums of A286781.

The programs for A286794, there is no canonical definition to state claims against.
-/

/-! ## A286794.P471270954449775060

`abs(A208975(n+1))`
-/

namespace A286794.P471270954449775060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208975 (n + 1)|

end

end A286794.P471270954449775060

/-! ## A286794.P7462911260474272014

`(2*n+1)*A286796(∑[n])`
-/

namespace A286794.P7462911260474272014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A286796 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286794.P7462911260474272014

/-! ## A286794.P13311568808292856459

`(2*n+1)*A000699(n+1)`
-/

namespace A286794.P13311568808292856459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000699 (n + 1)

end

end A286794.P13311568808292856459

/-! ## A286794.P5948775599240914004

`record[abs(A208975(A025480(n)))]`
-/

namespace A286794.P5948775599240914004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208975 (A025480 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286794.P5948775599240914004

/-! ## A286794.P262124295580886633

`record[abs(A208975(A025581(n)))]`
-/

namespace A286794.P262124295580886633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208975 (A025581 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286794.P262124295580886633

/-! ## A286794.P17955750803366906128

`record[abs(A208975(A028242(n)))]`
-/

namespace A286794.P17955750803366906128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208975 (A028242 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286794.P17955750803366906128

/-! ## A286794.P7107611968399792368

`record[abs(A208975(A274820(n)))]`
-/

namespace A286794.P7107611968399792368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208975 (A274820 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286794.P7107611968399792368

/-! ## A286794.P17154744763678361005

`A000699(n+1)*A004273(n+1)`
-/

namespace A286794.P17154744763678361005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000699 (n + 1) * A004273 (n + 1)

end

end A286794.P17154744763678361005

/-! ## A286794.P11746846412749898966

`A000699(n+1)*A060747(n+1)`
-/

namespace A286794.P11746846412749898966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000699 (n + 1) * A060747 (n + 1)

end

end A286794.P11746846412749898966

/-!
# A286797: Row sums of A286796.

The programs for A286797, there is no canonical definition to state claims against.
-/

/-! ## A286797.P10765308686723356978

`A137719(n^n*ceil(n*sqrt(3)))+1`
-/

namespace A286797.P10765308686723356978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137719 ((n ^ n : ℤ) * ⌈(n : ℝ) * Real.sqrt (3 : ℝ)⌉).toNat + 1

end

end A286797.P10765308686723356978

/-!
# A286799: Row sums of A286798.

The programs for A286799, there is no canonical definition to state claims against.
-/

/-! ## A286799.P17173694669271599445

`A181092(ceil((n+1)^(n+1)/6))`
-/

namespace A286799.P17173694669271599445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181092 ⌈((n + 1) ^ (n + 1) : ℚ) / 6⌉.toNat

end

end A286799.P17173694669271599445

