import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C008
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A009402: Expansion of log(1+tanh(x)/exp(x)).

The programs for A009402, there is no canonical definition to state claims against.
-/

/-! ## A009402.P7937344150745536941

`A066272(A073516(n+1))*A099323(n+2)`
-/

namespace A009402.P7937344150745536941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A073516 (n + 1)).toNat * A099323 (n + 2)

end

end A009402.P7937344150745536941

/-!
# A009403: Expansion of e.g.f. log(1 + tanh(x)^2), even powers only.

The programs for A009403, there is no canonical definition to state claims against.
-/

/-! ## A009403.P7233106356532598829

`2*A024299(n)`
-/

namespace A009403.P7233106356532598829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024299 n

end

end A009403.P7233106356532598829

/-! ## A009403.P13716107746237390508

`A024299(n)+A024299(A292579(n))`
-/

namespace A009403.P13716107746237390508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024299 n + A024299 (A292579 n).toNat

end

end A009403.P13716107746237390508

/-! ## A009403.P9777277306984307128

`2*A003707(A005843(n))*A033999(n)`
-/

namespace A009403.P9777277306984307128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003707 (A005843 n).toNat * A033999 n)

end

end A009403.P9777277306984307128

/-! ## A009403.P92475133782703684

`A024299(n)+A024299(n)%A002436(n)`
-/

namespace A009403.P92475133782703684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024299 n + Int.tmod (A024299 n) (A002436 n)

end

end A009403.P92475133782703684

/-! ## A009403.P3735591969750418830

`A024299(A135385(n+1))+A024299(n)`
-/

namespace A009403.P3735591969750418830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024299 (A135385 (n + 1)).toNat + A024299 n

end

end A009403.P3735591969750418830

/-!
# A009404: Squares formed by concatenating other squares, not ending in 0.

The programs for A009404, there is no canonical definition to state claims against.
-/

/-! ## A009404.P10895781044293394143

`record[A004151(A128783(n+1))²]`
-/

namespace A009404.P10895781044293394143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A128783 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009404.P10895781044293394143

/-! ## A009404.P9768496743234543607

`record[A004151(sqrt(A019547(n+1)))²]`
-/

namespace A009404.P9768496743234543607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway (Real.sqrt (A019547 (n + 1) : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009404.P9768496743234543607

/-! ## A009404.P8267318985569228728

`record[A004151(A128783(n+1))^(2%A004767(n))]`
-/

namespace A009404.P8267318985569228728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004151 (A128783 (n + 1)).toNat : ℚ) ^ (Int.tmod 2 (A004767 n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009404.P8267318985569228728

/-! ## A009404.P2146809868050985463

`record[A004151(A128783(n+1))^A043529(2*(n+2))]`
-/

namespace A009404.P2146809868050985463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004151 (A128783 (n + 1)).toNat : ℚ) ^ (A043529 (2 * (n + 2)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009404.P2146809868050985463

/-! ## A009404.P13696940555275756352

`record[A004086(A004086(A019547(n+1)))]`
-/

namespace A009404.P13696940555275756352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (A019547 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009404.P13696940555275756352

/-!
# A009411: Expansion of log(1+x)*cosh(log(1+x)).

The programs for A009411, there is no canonical definition to state claims against.
-/

/-! ## A009411.P5690538501095231684

`A081048(n)+A009575(n)`
-/

namespace A009411.P5690538501095231684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 n + A009575 n

end

end A009411.P5690538501095231684

/-! ## A009411.P2346670829708527623

`A081048(n)+2*A024337(n)`
-/

namespace A009411.P2346670829708527623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 n + 2 * A024337 n

end

end A009411.P2346670829708527623

/-! ## A009411.P6881362675909821888

`A048994(∑[n+1]+2)+A009575(n)`
-/

namespace A009411.P6881362675909821888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A009575 n

end

end A009411.P6881362675909821888

/-! ## A009411.P16685329568106280735

`A009575(n)+A081052(n)+A081051(n)`
-/

namespace A009411.P16685329568106280735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009575 n + (A081052 n + A081051 n)

end

end A009411.P16685329568106280735

/-! ## A009411.P408564835879081963

`A009575(n)+A000254(n)*A062157(n)`
-/

namespace A009411.P408564835879081963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009575 n + A000254 n * A062157 n

end

end A009411.P408564835879081963

/-! ## A009411.P198688185401721924

`A009575(n)-A000254(n)*A033999(n)`
-/

namespace A009411.P198688185401721924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009575 n - A000254 n * A033999 n

end

end A009411.P198688185401721924

/-! ## A009411.P15365475984179370813

`A009575(n)+record[A067176(n)]*A062157(n)`
-/

namespace A009411.P15365475984179370813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009575 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A062157 n

end

end A009411.P15365475984179370813

/-! ## A009411.P5032288904737426868

`A009575(n)+A000254(n)/A033999(n+1)`
-/

namespace A009411.P5032288904737426868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009575 n : ℚ) + (A000254 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A009411.P5032288904737426868

/-! ## A009411.P2520052663447828970

`A009575(n)+record[A157525(n)]*A165326(n)`
-/

namespace A009411.P2520052663447828970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009575 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A165326 n

end

end A009411.P2520052663447828970

/-!
# A009412: Expansion of log(1+x)*cosh(sin(x)).

The programs for A009412, there is no canonical definition to state claims against.
-/

/-! ## A009412.P9185588297434870820

`(A009436(n)+A009417(n))/2`
-/

namespace A009412.P9185588297434870820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009436 n + A009417 n : ℚ) / 2

end

end A009412.P9185588297434870820

/-!
# A009413: Expansion of log(1+x)*cosh(sinh(x)).

The programs for A009413, there is no canonical definition to state claims against.
-/

/-! ## A009413.P2304236850453137543

`(A009437(n)+A009418(n))/2`
-/

namespace A009413.P2304236850453137543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009437 n + A009418 n : ℚ) / 2

end

end A009413.P2304236850453137543

/-!
# A009414: Expansion of log(1+x)*cosh(tan(x)).

The programs for A009414, there is no canonical definition to state claims against.
-/

/-! ## A009414.P4930395191048564752

`(A009438(n)+A009419(n))/2`
-/

namespace A009414.P4930395191048564752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009438 n + A009419 n : ℚ) / 2

end

end A009414.P4930395191048564752

/-!
# A009415: Expansion of log(1+x)*cosh(tanh(x)).

The programs for A009415, there is no canonical definition to state claims against.
-/

/-! ## A009415.P18223115325413049617

`(A009439(n)+A009420(n))/2`
-/

namespace A009415.P18223115325413049617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009439 n + A009420 n : ℚ) / 2

end

end A009415.P18223115325413049617

/-! ## A009415.P18233098504455979112

`A009416(n)%A018744(A000124(n))`
-/

namespace A009415.P18233098504455979112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009416 n) (A018744 (A000124 n).toNat)

end

end A009415.P18233098504455979112

/-!
# A009416: Expansion of e.g.f. log(1+x)*cosh(x).

The programs for A009416, there is no canonical definition to state claims against.
-/

/-! ## A009416.P7088952216106838047

`A291484(n)-A002104(n%or(1, n))`
-/

namespace A009416.P7088952216106838047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 n - A002104 (n % Nat.lor 1 n)

end

end A009416.P7088952216106838047

/-! ## A009416.P6168910614569539154

`A291484(n)-A002104(A237420(n))`
-/

namespace A009416.P6168910614569539154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 n - A002104 (A237420 n).toNat

end

end A009416.P6168910614569539154

/-! ## A009416.P853538391550603719

`A291484(n)-(A263102(n)+A177699(n))`
-/

namespace A009416.P853538391550603719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 n - (A263102 n + A177699 n)

end

end A009416.P853538391550603719

/-! ## A009416.P7524703487574351100

`A002104(n-A237420(n))-A263102(n)`
-/

namespace A009416.P7524703487574351100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 ((n : ℤ) - A237420 n).toNat - A263102 n

end

end A009416.P7524703487574351100

/-! ## A009416.P16573903822143678769

`A177699(n)-A002104(n)*A033999(n)`
-/

namespace A009416.P16573903822143678769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177699 n - A002104 n * A033999 n

end

end A009416.P16573903822143678769

/-! ## A009416.P6085116459970366598

`A177699(n+1)-A009628(n)`
-/

namespace A009416.P6085116459970366598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177699 (n + 1) - A009628 n

end

end A009416.P6085116459970366598

/-!
# A009417: Expansion of log(1+x)*exp(sin(x)).

The programs for A009417, there is no canonical definition to state claims against.
-/

/-! ## A009417.P3136661283441657648

`2*A009412(n)-A009436(n)`
-/

namespace A009417.P3136661283441657648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009412 n - A009436 n

end

end A009417.P3136661283441657648

/-!
# A009418: Expansion of log(1+x)*exp(sinh(x)).

The programs for A009418, there is no canonical definition to state claims against.
-/

/-! ## A009418.P9695890474366152998

`2*A009413(n)-A009437(n)`
-/

namespace A009418.P9695890474366152998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009413 n - A009437 n

end

end A009418.P9695890474366152998

/-!
# A009419: Expansion of log(1+x)*exp(tan(x)).

The programs for A009419, there is no canonical definition to state claims against.
-/

/-! ## A009419.P3828467976313408320

`2*A009414(n)-A009438(n)`
-/

namespace A009419.P3828467976313408320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009414 n - A009438 n

end

end A009419.P3828467976313408320

/-! ## A009419.P18399357044537576801

`A194640(A009243(n))`
-/

namespace A009419.P18399357044537576801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A009243 n).toNat

end

end A009419.P18399357044537576801

/-! ## A009419.P6004676760865065988

`A037203(A344229(n))`
-/

namespace A009419.P6004676760865065988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 (A344229 n).toNat

end

end A009419.P6004676760865065988

/-!
# A009420: Expansion of log(1+x)*exp(tanh(x)).

The programs for A009420, there is no canonical definition to state claims against.
-/

/-! ## A009420.P4638362635581724317

`2*A009415(n)-A009439(n)`
-/

namespace A009420.P4638362635581724317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009415 n - A009439 n

end

end A009420.P4638362635581724317

/-! ## A009420.P12311153999995776565

`2*A009415(n)+A009439(n)*A308778(n²)`
-/

namespace A009420.P12311153999995776565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009415 n + A009439 n * A308778 (n ^ 2)

end

end A009420.P12311153999995776565

/-!
# A009421: Cubes, not ending in 0, formed by concatenating other cubes.

The programs for A009421, there is no canonical definition to state claims against.
-/

/-! ## A009421.P8367213749063192491

`A061341(n+1)^3`
-/

namespace A009421.P8367213749063192491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061341 (n + 1) ^ 3

end

end A009421.P8367213749063192491

/-! ## A009421.P1749435128791696687

`A061341(A005408(n)-n)²^(3/2)`
-/

namespace A009421.P1749435128791696687
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061341 (A005408 n - (n : ℤ)).toNat ^ 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)

end

end A009421.P1749435128791696687

/-! ## A009421.P8641415134825115803

`A061341(A000027(n+1))²*A061341(n+1)`
-/

namespace A009421.P8641415134825115803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061341 (A000027 (n + 1)).toNat ^ 2 * A061341 (n + 1)

end

end A009421.P8641415134825115803

/-! ## A009421.P2448056107551885079

`A061341(A005408(n)-n)²*A061341(n+1)`
-/

namespace A009421.P2448056107551885079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061341 (A005408 n - (n : ℤ)).toNat ^ 2 * A061341 (n + 1)

end

end A009421.P2448056107551885079

/-! ## A009421.P13230307456394677281

`A061341(1-(n-A005843(n)))²*A061341(n+1)`
-/

namespace A009421.P13230307456394677281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061341 (1 - ((n : ℤ) - A005843 n)).toNat ^ 2 * A061341 (n + 1)

end

end A009421.P13230307456394677281

/-!
# A009422: Expansion of log(1+x)*log(1+tan(x)).

The programs for A009422, there is no canonical definition to state claims against.
-/

/-! ## A009422.P7048445188196112350

`2*A024338(n)`
-/

namespace A009422.P7048445188196112350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024338 n

end

end A009422.P7048445188196112350

/-! ## A009422.P10625424346631947949

`A024338(n)+A024338(A028310(n))`
-/

namespace A009422.P10625424346631947949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024338 n + A024338 (A028310 n).toNat

end

end A009422.P10625424346631947949

/-! ## A009422.P15278497243247583668

`A024338(A193739(∑[n]))+A024338(n)`
-/

namespace A009422.P15278497243247583668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024338 (A193739 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A024338 n

end

end A009422.P15278497243247583668

/-! ## A009422.P6978329663963873292

`A024338(n)/2^A008683(A020483(n))`
-/

namespace A009422.P6978329663963873292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024338 n : ℚ) / (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A009422.P6978329663963873292

/-! ## A009422.P12352861970685007282

`A024338(A000007(n)+n)+A024338(n)`
-/

namespace A009422.P12352861970685007282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024338 (A000007 n + (n : ℤ)).toNat + A024338 n

end

end A009422.P12352861970685007282

/-! ## A009422.P11827954088282171127

`A024338(and(n, A057428(n)))+A024338(n)`
-/

namespace A009422.P11827954088282171127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024338 (Int.land (n : ℤ) (A057428 n)).toNat + A024338 n

end

end A009422.P11827954088282171127

/-! ## A009422.P10574704534518032887

`A024338(n)+A024338(A007318(∑[n]+1))`
-/

namespace A009422.P10574704534518032887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024338 n + A024338 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A009422.P10574704534518032887

/-!
# A009423: Expansion of log(1+x)*log(1+tanh(x)).

The programs for A009423, there is no canonical definition to state claims against.
-/

/-! ## A009423.P17531709280820343314

`2*A024331(n)`
-/

namespace A009423.P17531709280820343314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024331 n

end

end A009423.P17531709280820343314

/-! ## A009423.P15239918507440149089

`A024331(floor(sqrt(n²+1)))+A024331(n)`
-/

namespace A009423.P15239918507440149089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024331 (Nat.sqrt (n ^ 2 + 1)) + A024331 n

end

end A009423.P15239918507440149089

/-! ## A009423.P9653056493183156241

`A024331(n)+A024331(n)-A151933(n+2)`
-/

namespace A009423.P9653056493183156241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024331 n + (A024331 n - A151933 (n + 2))

end

end A009423.P9653056493183156241

/-! ## A009423.P17131314449614558989

`A024331(n)+A024331(n)%A000142(n)`
-/

namespace A009423.P17131314449614558989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024331 n + Int.tmod (A024331 n) (A000142 n)

end

end A009423.P17131314449614558989

/-!
# A009424: Expansion of log(1+x)/cos(log(1+x)).

The programs for A009424, there is no canonical definition to state claims against.
-/

/-! ## A009424.P764808770863236154

`A009601(n)-A241468(A225393(n))`
-/

namespace A009424.P764808770863236154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009601 n - A241468 (A225393 n).toNat

end

end A009424.P764808770863236154

/-! ## A009424.P7967132832337154327

`A009601(n)-A009683(A120814(n+1))`
-/

namespace A009424.P7967132832337154327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009601 n - A009683 (A120814 (n + 1)).toNat

end

end A009424.P7967132832337154327

/-!
# A009426: Expansion of log(1+x)/cos(sinh(x)).

The programs for A009426, there is no canonical definition to state claims against.
-/

/-! ## A009426.P8440642719084314805

`A009414(n^A180580(n+1))`
-/

namespace A009426.P8440642719084314805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009414 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A180580 (n + 1) : ℤ))).toNat

end

end A009426.P8440642719084314805

/-! ## A009426.P16271214836005449301

`A009414(A048068(n+3)²+n)`
-/

namespace A009426.P16271214836005449301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009414 (A048068 (n + 3) ^ 2 + (n : ℤ)).toNat

end

end A009426.P16271214836005449301

/-! ## A009426.P185454589386301136

`A009414(n)+A000007(A000110(n))`
-/

namespace A009426.P185454589386301136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009414 n + A000007 (A000110 n).toNat

end

end A009426.P185454589386301136

/-! ## A009426.P6128123166617003167

`A009414(n)*A212793(A032443(n))`
-/

namespace A009426.P6128123166617003167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009414 n * A212793 (A032443 n).toNat

end

end A009426.P6128123166617003167

/-! ## A009426.P1186769078780348949

`A009414(n)*A306927(A007097(n))`
-/

namespace A009426.P1186769078780348949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009414 n * A306927 (A007097 n).toNat

end

end A009426.P1186769078780348949

/-!
# A009427: Expansion of e.g.f. log(1+x)/cos(tan(x)).

The programs for A009427, there is no canonical definition to state claims against.
-/

/-! ## A009427.P2452104671535203671

`or(∑{e}[11^n, A019536(#)], A009429(n))`
-/

namespace A009427.P2452104671535203671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ p ∈ Nat.primeFactors (f1 n), A019536 (Nat.factorization (f1 n) p)) (A009429 n)

end

end A009427.P2452104671535203671

/-! ## A009427.P12930909639563707164

`(n%5)%2-A214667(A005121(n+1))`
-/

namespace A009427.P12930909639563707164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 5 % 2 : ℕ) : ℤ) - A214667 (A005121 (n + 1)).toNat

end

end A009427.P12930909639563707164

/-!
# A009428: Expansion of e.g.f. log(1+x)/cos(tanh(x)).

The programs for A009428, there is no canonical definition to state claims against.
-/

/-! ## A009428.P6166932264812693990

`A009412(n^A375706(2*(n+1)))`
-/

namespace A009428.P6166932264812693990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009412 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A375706 (2 * (n + 1)) : ℤ))).toNat

end

end A009428.P6166932264812693990

/-! ## A009428.P4293343772405758876

`A009412(n)+A000007(A000110(n))`
-/

namespace A009428.P4293343772405758876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009412 n + A000007 (A000110 n).toNat

end

end A009428.P4293343772405758876

/-! ## A009428.P10277500217043829898

`A009412(n)*A057427(A026898(n))`
-/

namespace A009428.P10277500217043829898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009412 n * A057427 (A026898 n).toNat

end

end A009428.P10277500217043829898

/-! ## A009428.P13948525720339854804

`A009412(n)*A212793(A032443(n))`
-/

namespace A009428.P13948525720339854804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009412 n * A212793 (A032443 n).toNat

end

end A009428.P13948525720339854804

/-! ## A009428.P9993705290800176647

`A009412(n)%A007865(A001045(n))`
-/

namespace A009428.P9993705290800176647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009412 n) (A007865 (A001045 n).toNat)

end

end A009428.P9993705290800176647

/-!
# A009429: E.g.f. log(1+x)/cos(x).

The programs for A009429, there is no canonical definition to state claims against.
-/

/-! ## A009429.P2207369605114804908

`A009413(n)^A029122(n)^n`
-/

namespace A009429.P2207369605114804908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009413 n : ℚ) ^ (A029122 n ^ n : ℤ)

end

end A009429.P2207369605114804908

/-! ## A009429.P4696973834635781490

`A011745(A000272(n))+A009413(n)`
-/

namespace A009429.P4696973834635781490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011745 (A000272 n).toNat + A009413 n

end

end A009429.P4696973834635781490

/-! ## A009429.P10496522352861861154

`A011745(A048899(n))+A009413(n)`
-/

namespace A009429.P10496522352861861154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011745 (A048899 n).toNat + A009413 n

end

end A009429.P10496522352861861154

/-!
# A009431: Expansion of log(1+x)/cosh(sin(x)).

The programs for A009431, there is no canonical definition to state claims against.
-/

/-! ## A009431.P5571400236630281964

`A089798(A000244(n))+A009409(n)`
-/

namespace A009431.P5571400236630281964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 (A000244 n).toNat + A009409 n

end

end A009431.P5571400236630281964

/-! ## A009431.P5990344256589804290

`A010051(A126380(n))+A009409(n)`
-/

namespace A009431.P5990344256589804290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A126380 n).toNat + A009409 n

end

end A009431.P5990344256589804290

/-! ## A009431.P6385314143138262443

`A009409(n)*A043290(A109153(n))`
-/

namespace A009431.P6385314143138262443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009409 n * A043290 (A109153 n).toNat

end

end A009431.P6385314143138262443

/-! ## A009431.P2167021421049868587

`A009409(n)*A306927(A007097(n))`
-/

namespace A009431.P2167021421049868587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009409 n * A306927 (A007097 n).toNat

end

end A009431.P2167021421049868587

/-! ## A009431.P4354185522616719730

`or(A009409(n), A309752(A033865(2*n)))`
-/

namespace A009431.P4354185522616719730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009409 n) (A309752 (A033865 (2 * n)).toNat)

end

end A009431.P4354185522616719730

/-!
# A009433: Expansion of e.g.f. log(1+x)/cosh(tan(x)).

The programs for A009433, there is no canonical definition to state claims against.
-/

/-! ## A009433.P14036320063429321129

`A009407(C(n, A336467(n+1)))`
-/

namespace A009433.P14036320063429321129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009407 (Nat.choose n (A336467 (n + 1)).toNat)

end

end A009433.P14036320063429321129

/-! ## A009433.P10712790287134975502

`A009407(n)+A000007(A000110(n))`
-/

namespace A009433.P10712790287134975502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009407 n + A000007 (A000110 n).toNat

end

end A009433.P10712790287134975502

/-! ## A009433.P4194854227256705456

`A009407(n)*A043290(A109153(n))`
-/

namespace A009433.P4194854227256705456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009407 n * A043290 (A109153 n).toNat

end

end A009433.P4194854227256705456

/-! ## A009433.P14020732096276302009

`A009407(n)%A000203(A003947(n))`
-/

namespace A009433.P14020732096276302009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009407 n) (A000203 (A003947 n).toNat)

end

end A009433.P14020732096276302009

/-! ## A009433.P853267493135678473

`A009407(n)+A000007(A125248(n+1))`
-/

namespace A009433.P853267493135678473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009407 n + A000007 (A125248 (n + 1)).toNat

end

end A009433.P853267493135678473

/-!
# A009435: Expansion of e.g.f.: log(1+x)/cosh(x).

The programs for A009435, there is no canonical definition to state claims against.
-/

/-! ## A009435.P16378972994783627131

`A009406(n)%A115931(n+1)`
-/

namespace A009435.P16378972994783627131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009406 n) (A115931 (n + 1))

end

end A009435.P16378972994783627131

/-! ## A009435.P7455882652762567060

`A009406(n)*A043290(A002110(n))`
-/

namespace A009435.P7455882652762567060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009406 n * A043290 (A002110 n).toNat

end

end A009435.P7455882652762567060

/-! ## A009435.P15131719868772354279

`A009406(n)^A001764(A166357(n))`
-/

namespace A009435.P15131719868772354279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009406 n : ℚ) ^ (A001764 (A166357 n).toNat : ℤ)

end

end A009435.P15131719868772354279

/-!
# A009436: Expansion of e.g.f. log(1+x)/exp(sin(x)).

The programs for A009436, there is no canonical definition to state claims against.
-/

/-! ## A009436.P14835827793239143627

`2*A009412(n)-A009417(n)`
-/

namespace A009436.P14835827793239143627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009412 n - A009417 n

end

end A009436.P14835827793239143627

/-!
# A009437: Expansion of e.g.f. log(1+x)/exp(sinh(x)).

The programs for A009437, there is no canonical definition to state claims against.
-/

/-! ## A009437.P9002773673722709997

`2*A009413(n)-A009418(n)`
-/

namespace A009437.P9002773673722709997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009413 n - A009418 n

end

end A009437.P9002773673722709997

/-! ## A009437.P9328572240583475992

`2*A009413(n)+A009418(n)*A153881(n+1)`
-/

namespace A009437.P9328572240583475992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009413 n + A009418 n * A153881 (n + 1)

end

end A009437.P9328572240583475992

/-!
# A009438: Expansion of e.g.f. log(1+x)/exp(tan(x)).

The programs for A009438, there is no canonical definition to state claims against.
-/

/-! ## A009438.P11402397740810614091

`2*A009414(n)-A009419(n)`
-/

namespace A009438.P11402397740810614091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009414 n - A009419 n

end

end A009438.P11402397740810614091

/-! ## A009438.P7184831878109701443

`2*A009414(n)+A001489(A009419(n)+1)+1`
-/

namespace A009438.P7184831878109701443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009414 n + (A001489 (A009419 n + 1).toNat + 1)

end

end A009438.P7184831878109701443

/-!
# A009439: Expansion of e.g.f. log(1+x)/exp(tanh(x)).

The programs for A009439, there is no canonical definition to state claims against.
-/

/-! ## A009439.P11114663186217531547

`2*A009415(n)-A009420(n)`
-/

namespace A009439.P11114663186217531547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009415 n - A009420 n

end

end A009439.P11114663186217531547

/-!
# A009442: E.g.f. log(1 + x/cos(x)).

The programs for A009442, there is no canonical definition to state claims against.
-/

/-! ## A009442.P3079555891119939721

`A009597(n)+A007814(A162633(n))`
-/

namespace A009442.P3079555891119939721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009597 n + A007814 (A162633 n).toNat

end

end A009442.P3079555891119939721

/-! ## A009442.P8579347354364088000

`A036587(A056823(n))-A058006(n)`
-/

namespace A009442.P8579347354364088000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036587 (A056823 n).toNat - A058006 n

end

end A009442.P8579347354364088000

/-!
# A009445: a(n) = (2*n+1)!.

The programs for A009445, the canonical program `A009445.P11994269820952531267` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009445 has offset 0).

The definition of A009445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)!` (program `A009445.P11994269820952531267`, by `A009445.P11994269820952531267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A009445.P11994269820952531267

`(2*n+1)!`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009445

/-- `(2*n+1)!` -/
def P11994269820952531267.Spec : Prop :=
  ∀ n, (P11994269820952531267.a n : ℤ) = A009445 n

theorem P11994269820952531267.correct : P11994269820952531267.Spec := by
  intro n
  simp only [A009445]

end A009445

/-! ## A009445.P5420518804284703216

`2*n*(2*n+1)*a(n-1)` with `a(0)=1`
-/

namespace A009445.P5420518804284703216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n * (2 * n + 1) * a (n - 1)

end

end A009445.P5420518804284703216

namespace A009445

/-- `2*n*(2*n+1)*a(n-1)` -/
def P5420518804284703216.Spec : Prop :=
  ∀ n, (P5420518804284703216.a n : ℤ) = A009445 n

end A009445

/-! ## A009445.P16638199876387338566

`A000142(2*n+1)`
-/

namespace A009445.P16638199876387338566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n + 1)

end

end A009445.P16638199876387338566

namespace A009445

/-- `A000142(2*n+1)` -/
def P16638199876387338566.Spec : Prop :=
  ∀ n, P16638199876387338566.a n = A009445 n

end A009445

/-! ## A009445.P18085467092759557712

`A014481(n)*A001147(n)`
-/

namespace A009445.P18085467092759557712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014481 n * A001147 n

end

end A009445.P18085467092759557712

namespace A009445

/-- `A014481(n)*A001147(n)` -/
def P18085467092759557712.Spec : Prop :=
  ∀ n, P18085467092759557712.a n = A009445 n

end A009445

/-! ## A009445.P13432178686467980913

`record[xor(1, n)!]`
-/

namespace A009445.P13432178686467980913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009445.P13432178686467980913

namespace A009445

/-- `record[xor(1, n)!]` -/
def P13432178686467980913.Spec : Prop :=
  ∀ n, (P13432178686467980913.a n : ℤ) = A009445 n

end A009445

/-!
# A009446: Expansion of e.g.f. sin(x*cos(x)) (odd powers only).

The programs for A009446, there is no canonical definition to state claims against.
-/

/-! ## A009446.P9916027365648443668

`(-1)^n*A003727(Δ[n²])`
-/

namespace A009446.P9916027365648443668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A003727 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009446.P9916027365648443668

/-! ## A009446.P14226458723853210556

`A003727(2*n+1)*A033999(n)`
-/

namespace A009446.P14226458723853210556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003727 (2 * n + 1) * A033999 n

end

end A009446.P14226458723853210556

/-! ## A009446.P9110356175125969310

`A003727(A005408(n))/A033999(n)`
-/

namespace A009446.P9110356175125969310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003727 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009446.P9110356175125969310

/-! ## A009446.P13671007841431451848

`A003727(2*n+1)*A054354(A054353(n+1))`
-/

namespace A009446.P13671007841431451848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003727 (2 * n + 1) * A054354 (A054353 (n + 1)).toNat

end

end A009446.P13671007841431451848

/-! ## A009446.P1810569245503879251

`A003727(2*n+1)*A049347(A027642(3*n+4))`
-/

namespace A009446.P1810569245503879251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003727 (2 * n + 1) * A049347 (A027642 (3 * n + 4)).toNat

end

end A009446.P1810569245503879251

/-!
# A009447: Expansion of sin(cosh(x)*x).

The programs for A009447, there is no canonical definition to state claims against.
-/

/-! ## A009447.P12008673527233660213

`A009189(Δ[n²])/(-1)^n`
-/

namespace A009447.P12008673527233660213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A009447.P12008673527233660213

/-! ## A009447.P6452902236912522373

`(1-2*n%2)*A009189((n+1)²-n²)`
-/

namespace A009447.P6452902236912522373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * (n % 2) : ℕ) : ℤ)) * A009189 ((n + 1) ^ 2 - n ^ 2)

end

end A009447.P6452902236912522373

/-! ## A009447.P18267637444441959604

`A009189(2*n+1)*A033999(n)`
-/

namespace A009447.P18267637444441959604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009189 (2 * n + 1) * A033999 n

end

end A009447.P18267637444441959604

/-! ## A009447.P12282755961263623086

`A009189(2*n+1)*A010892(3*n+1)`
-/

namespace A009447.P12282755961263623086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009189 (2 * n + 1) * A010892 (3 * n + 1)

end

end A009447.P12282755961263623086

/-!
# A009454: Expansion of e.g.f. sin(log(1+x)).

The programs for A009454, there is no canonical definition to state claims against.
-/

/-! ## A009454.P12594434398921798971

`A242652(abs(2-n)+1)`
-/

namespace A009454.P12594434398921798971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242652 (|2 - (n : ℤ)| + 1).toNat

end

end A009454.P12594434398921798971

/-! ## A009454.P3915783748128351118

`A242652(log2(A011782(n)))-A000007(n)`
-/

namespace A009454.P3915783748128351118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242652 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat - A000007 n

end

end A009454.P3915783748128351118

/-! ## A009454.P1924934516442860898

`A242652(log2(A011782(n)))-A063524(n+1)`
-/

namespace A009454.P1924934516442860898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242652 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat - A063524 (n + 1)

end

end A009454.P1924934516442860898

/-! ## A009454.P13680827989575934949

`A242652(log2(A011782(n)))-A014574(n+1)%3`
-/

namespace A009454.P13680827989575934949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242652 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat - Int.tmod (A014574 (n + 1)) 3

end

end A009454.P13680827989575934949

/-! ## A009454.P3291996301950649837

`A003703(n)-(A009024(n+1)+A003703(n+1))`
-/

namespace A009454.P3291996301950649837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003703 n - (A009024 (n + 1) + A003703 (n + 1))

end

end A009454.P3291996301950649837

/-!
# A009456: Expansion of sin(log(1+x))*cosh(x).

The programs for A009456, there is no canonical definition to state claims against.
-/

/-! ## A009456.P8889924302428448629

`(A009461(n)+A009457(n))/2`
-/

namespace A009456.P8889924302428448629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009461 n + A009457 n : ℚ) / 2

end

end A009456.P8889924302428448629

/-!
# A009457: Expansion of sin(log(1+x))*exp(x).

The programs for A009457, there is no canonical definition to state claims against.
-/

/-! ## A009457.P12103962967627847451

`2*A009456(n)-A009461(n)`
-/

namespace A009457.P12103962967627847451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009456 n - A009461 n

end

end A009457.P12103962967627847451

/-!
# A009458: Expansion of sin(log(1+x))*log(1+x).

The programs for A009458, there is no canonical definition to state claims against.
-/

/-! ## A009458.P9842087296368571829

`2*A024332(n)`
-/

namespace A009458.P9842087296368571829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024332 n

end

end A009458.P9842087296368571829

/-! ## A009458.P6707137523922288323

`A024332(floor(sqrt(n²+1)))+A024332(n)`
-/

namespace A009458.P6707137523922288323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024332 (Nat.sqrt (n ^ 2 + 1)) + A024332 n

end

end A009458.P6707137523922288323

/-! ## A009458.P1097232428366740320

`A059692(A103847(n+1))+A024332(n)+A024332(n)`
-/

namespace A009458.P1097232428366740320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (A103847 (n + 1)).toNat + (A024332 n + A024332 n)

end

end A009458.P1097232428366740320

/-! ## A009458.P7380812207163903927

`A024332(n)-(A010054(A016825(n)+n)-A024332(n))`
-/

namespace A009458.P7380812207163903927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024332 n - (A010054 (A016825 n + (n : ℤ)).toNat - A024332 n)

end

end A009458.P7380812207163903927

/-! ## A009458.P5130392825997703930

`A024332(n)+A024332(n)%A000142(n)`
-/

namespace A009458.P5130392825997703930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024332 n + Int.tmod (A024332 n) (A000142 n)

end

end A009458.P5130392825997703930

/-!
# A009461: Expansion of e.g.f.: sin(log(1+x))/exp(x).

The programs for A009461, there is no canonical definition to state claims against.
-/

/-! ## A009461.P5917695587646303674

`2*A009456(n)-A009457(n)`
-/

namespace A009461.P5917695587646303674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009456 n - A009457 n

end

end A009461.P5917695587646303674

/-! ## A009461.P15987609763778870821

`2*A009456(n)+A009457(n)*A057428(n)`
-/

namespace A009461.P15987609763778870821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009456 n + A009457 n * A057428 n

end

end A009461.P15987609763778870821

/-!
# A009464: Expansion of e.g.f.: sin(log(1+x)*exp(x)).

The programs for A009464, there is no canonical definition to state claims against.
-/

/-! ## A009464.P3551061600454492588

`A225381(n+1)-A030307(A304361(n))`
-/

namespace A009464.P3551061600454492588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225381 (n + 1) - A030307 (A304361 n).toNat

end

end A009464.P3551061600454492588

/-! ## A009464.P3984978887388283743

`A334968(n)-A333524(A049937(n+1))`
-/

namespace A009464.P3984978887388283743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 n - A333524 (A049937 (n + 1)).toNat

end

end A009464.P3984978887388283743

/-! ## A009464.P15417499211050988276

`A342384(n+2)-A065716(A003422(n+2))`
-/

namespace A009464.P15417499211050988276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342384 (n + 2) - A065716 (A003422 (n + 2)).toNat

end

end A009464.P15417499211050988276

/-!
# A009467: Expansion of sin(log(1+x)/exp(x)).

The programs for A009467, there is no canonical definition to state claims against.
-/

/-! ## A009467.P17102933471975583029

`A351420(A086148(n+1)-1)-1`
-/

namespace A009467.P17102933471975583029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351420 (A086148 (n + 1) - 1).toNat - 1

end

end A009467.P17102933471975583029

/-! ## A009467.P562608790899048128

`A078182(A313154(n))-A180632(n)`
-/

namespace A009467.P562608790899048128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A313154 n).toNat - A180632 n

end

end A009467.P562608790899048128

/-!
# A009468: Expansion of sin(log(1+x)^2).

The programs for A009468, there is no canonical definition to state claims against.
-/

/-! ## A009468.P6469875380496278545

`2*A024334(n)`
-/

namespace A009468.P6469875380496278545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024334 n

end

end A009468.P6469875380496278545

/-! ## A009468.P6953278638923247114

`A024334(n)+A024334(n%(n+1))`
-/

namespace A009468.P6953278638923247114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024334 n + A024334 (n % (n + 1))

end

end A009468.P6953278638923247114

/-! ## A009468.P5502140657916283784

`A024334(floor(sqrt(n²+1)))+A024334(n)`
-/

namespace A009468.P5502140657916283784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024334 (Nat.sqrt (n ^ 2 + 1)) + A024334 n

end

end A009468.P5502140657916283784

/-! ## A009468.P12672263702205321003

`A024334(n)/2^A008683(A003629(n+1))`
-/

namespace A009468.P12672263702205321003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024334 n : ℚ) / (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A009468.P12672263702205321003

/-! ## A009468.P12162701084529496732

`A024334(n)-(4%A010685(n)-A024334(n))`
-/

namespace A009468.P12162701084529496732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024334 n - (Int.tmod 4 (A010685 n) - A024334 n)

end

end A009468.P12162701084529496732

/-!
# A009469: Expansion of sin(sin(log(1+x))).

The programs for A009469, there is no canonical definition to state claims against.
-/

/-! ## A009469.P8243389964267333823

`A033999(A047665(n))*A086934(n)`
-/

namespace A009469.P8243389964267333823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A047665 n).toNat * A086934 n

end

end A009469.P8243389964267333823

/-! ## A009469.P14886619433435775352

`A033999(A064671(n+1))*A086934(n)`
-/

namespace A009469.P14886619433435775352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A064671 (n + 1)).toNat * A086934 n

end

end A009469.P14886619433435775352

/-!
# A009470: a(n) is the concatenation of n and 8n.

The programs for A009470, there is no canonical definition to state claims against.
-/

/-! ## A009470.P13712560721816974119

`A067574(A062741(3*(n+1))-n)`
-/

namespace A009470.P13712560721816974119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067574 (A062741 (3 * (n + 1)) - (n : ℤ)).toNat

end

end A009470.P13712560721816974119

/-!
# A009471: Expansion of sin(sin(sinh(x))).

The programs for A009471, there is no canonical definition to state claims against.
-/

/-! ## A009471.P16687574994095048040

`A009219(Δ[n²])*A033999(n)`
-/

namespace A009471.P16687574994095048040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009219 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009471.P16687574994095048040

/-!
# A009472: Expansion of sin(sin(tan(x))).

The programs for A009472, there is no canonical definition to state claims against.
-/

/-! ## A009472.P7418701335657799606

`A009222(Δ[n²])/A033999(n)`
-/

namespace A009472.P7418701335657799606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A033999 n : ℚ)

end

end A009472.P7418701335657799606

/-! ## A009472.P169708557890595225

`A009222(2*n+1)*A033999(n)`
-/

namespace A009472.P169708557890595225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009222 (2 * n + 1) * A033999 n

end

end A009472.P169708557890595225

/-! ## A009472.P13270325734361519950

`A009222(2*n+1)*A209615(n²+1)`
-/

namespace A009472.P13270325734361519950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009222 (2 * n + 1) * A209615 (n ^ 2 + 1)

end

end A009472.P13270325734361519950

/-!
# A009473: Expansion of sin(sin(tanh(x))).

The programs for A009473, there is no canonical definition to state claims against.
-/

/-! ## A009473.P16964845253513654680

`A009221(2*n+1)*A009384(2*n+1)`
-/

namespace A009473.P16964845253513654680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009221 (2 * n + 1) * A009384 (2 * n + 1)

end

end A009473.P16964845253513654680

/-!
# A009476: Expansion of sin(sin(x))*cosh(x).

The programs for A009476, there is no canonical definition to state claims against.
-/

/-! ## A009476.P6541960732150330149

`A009477(Δ[n²])`
-/

namespace A009476.P6541960732150330149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009477 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009476.P6541960732150330149

/-! ## A009476.P11533465440465680760

`or(1, A009477(A005408(n)))`
-/

namespace A009476.P11533465440465680760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009477 (A005408 n).toNat)

end

end A009476.P11533465440465680760

/-! ## A009476.P12371948666825102164

`A033999(n)²*A009477(A005408(n))`
-/

namespace A009476.P12371948666825102164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A009477 (A005408 n).toNat

end

end A009476.P12371948666825102164

/-! ## A009476.P13385973038200547822

`A009477(A005408(n))/gcd(5, A000032(n+2))`
-/

namespace A009476.P13385973038200547822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009477 (A005408 n).toNat : ℚ) / (Int.gcd 5 (A000032 (n + 2)) : ℚ)

end

end A009476.P13385973038200547822

/-! ## A009476.P3101204275162657416

`A009477(A005408(n))/A000045(C(2, n+2)+1)`
-/

namespace A009476.P3101204275162657416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009477 (A005408 n).toNat : ℚ) / (A000045 (Nat.choose 2 (n + 2) + 1) : ℚ)

end

end A009476.P3101204275162657416

/-!
# A009478: Expansion of sin(sin(x))*x.

The programs for A009478, there is no canonical definition to state claims against.
-/

/-! ## A009478.P1475808495815583363

`2*A024253(n)`
-/

namespace A009478.P1475808495815583363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024253 n

end

end A009478.P1475808495815583363

/-! ## A009478.P11760724766930219714

`A024253(n)/abs(A033999(n)/2)`
-/

namespace A009478.P11760724766930219714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024253 n : ℚ) / |(A033999 n : ℚ) / 2|

end

end A009478.P11760724766930219714

/-! ## A009478.P12668113036634579705

`A024253(log2(A000079(n)))+A024253(n)`
-/

namespace A009478.P12668113036634579705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024253 (SequenceMachineLib.roundAway (Real.logb 2 (A000079 n : ℝ))).toNat + A024253 n

end

end A009478.P12668113036634579705

/-! ## A009478.P18400206362972922610

`A009224(2*n)*A033999(n+1)`
-/

namespace A009478.P18400206362972922610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009224 (2 * n) * A033999 (n + 1)

end

end A009478.P18400206362972922610

/-!
# A009479: Expansion of sin(sin(x))/cos(x).

The programs for A009479, there is no canonical definition to state claims against.
-/

/-! ## A009479.P18199210202456214370

`abs(A009226(2*n+1))`
-/

namespace A009479.P18199210202456214370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009226 (2 * n + 1)|

end

end A009479.P18199210202456214370

/-! ## A009479.P3485301952680831184

`A009226(2*n+1)*A033999(n)`
-/

namespace A009479.P3485301952680831184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009226 (2 * n + 1) * A033999 n

end

end A009479.P3485301952680831184

/-! ## A009479.P12783390627277090153

`gcd(A008574(n)%2, A009226(2*n+1))`
-/

namespace A009479.P12783390627277090153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A008574 n) 2) (A009226 (2 * n + 1))

end

end A009479.P12783390627277090153

/-! ## A009479.P14862301541533420063

`(A004442(n)-n)*A009226(2*n+1)`
-/

namespace A009479.P14862301541533420063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A009226 (2 * n + 1)

end

end A009479.P14862301541533420063

/-! ## A009479.P3177742152780168495

`((-1)^n)%A005117(2*(n+1))*A009226(2*n+1)`
-/

namespace A009479.P3177742152780168495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-1) ^ n) (A005117 (2 * (n + 1))) * A009226 (2 * n + 1)

end

end A009479.P3177742152780168495

/-!
# A009480: E.g.f. sin(sin(x))/cosh(x) (odd powers only).

The programs for A009480, there is no canonical definition to state claims against.
-/

/-! ## A009480.P1131842767768505377

`(-1)^n*A009225(Δ[n²])`
-/

namespace A009480.P1131842767768505377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009225 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009480.P1131842767768505377

/-! ## A009480.P13416664729969200071

`A009225(Δ[n²])*A033999(n)`
-/

namespace A009480.P13416664729969200071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009225 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009480.P13416664729969200071

/-!
# A009481: Expansion of sin(sin(x)*cos(x)).

The programs for A009481, there is no canonical definition to state claims against.
-/

/-! ## A009481.P15204542253915362911

`A009229(Δ[n²])/(-1)^n`
-/

namespace A009481.P15204542253915362911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009229 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A009481.P15204542253915362911

/-! ## A009481.P10131615942689605564

`(-1)^n*A009229(2*n+1)`
-/

namespace A009481.P10131615942689605564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009229 (2 * n + 1)

end

end A009481.P10131615942689605564

/-! ## A009481.P7233947804602894455

`A009229(Δ[n²])*A033999(n)`
-/

namespace A009481.P7233947804602894455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009229 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009481.P7233947804602894455

/-!
# A009482: E.g.f. sin(sin(x)*cosh(x)) (odd powers only).

The programs for A009482, there is no canonical definition to state claims against.
-/

/-! ## A009482.P6093138947364244246

`A009228(2*n+1)*A033999(n)`
-/

namespace A009482.P6093138947364244246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009228 (2 * n + 1) * A033999 n

end

end A009482.P6093138947364244246

/-! ## A009482.P11424433921834346271

`A009228(2*n+1)*A034947(n²+5)`
-/

namespace A009482.P11424433921834346271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009228 (2 * n + 1) * A034947 (n ^ 2 + 5)

end

end A009482.P11424433921834346271

/-! ## A009482.P6708036709319031792

`A009228(A005408(n))/A033999(n)`
-/

namespace A009482.P6708036709319031792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009228 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009482.P6708036709319031792

/-! ## A009482.P16130449324964487827

`A009228(A004277(n)+1)/A033999(n)`
-/

namespace A009482.P16130449324964487827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009228 (A004277 n + 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A009482.P16130449324964487827

/-! ## A009482.P15434565827335044593

`A009228(A005843(n)+1)/A033999(n)`
-/

namespace A009482.P15434565827335044593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009228 (A005843 n + 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A009482.P15434565827335044593

/-!
# A009484: From the expansion of sin(sin(x)*x).

The programs for A009484, there is no canonical definition to state claims against.
-/

/-! ## A009484.P4243264995992088877

`2*A024237(n)`
-/

namespace A009484.P4243264995992088877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024237 n

end

end A009484.P4243264995992088877

/-! ## A009484.P5950071885911293393

`A000038(n+1)+A024237(n)+A024237(n)`
-/

namespace A009484.P5950071885911293393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A024237 n + A024237 n)

end

end A009484.P5950071885911293393

/-! ## A009484.P5074541839246516544

`or(-1, A000041(n))+1+A024237(n)+A024237(n)`
-/

namespace A009484.P5074541839246516544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) + 1 + (A024237 n + A024237 n)

end

end A009484.P5074541839246516544

/-! ## A009484.P11555578509479260692

`A024237(A262545(n+1))+A024237(n)`
-/

namespace A009484.P11555578509479260692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024237 (A262545 (n + 1)).toNat + A024237 n

end

end A009484.P11555578509479260692

/-! ## A009484.P16785346526859599423

`A024237(A004874(n+1))+A024237(n)`
-/

namespace A009484.P16785346526859599423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024237 (A004874 (n + 1)).toNat + A024237 n

end

end A009484.P16785346526859599423

/-!
# A009485: Expansion of e.g.f. sin(sin(x)/cosh(x)), odd powers only.

The programs for A009485, there is no canonical definition to state claims against.
-/

/-! ## A009485.P1400467508767037905

`A009234(2*n+1)*A033999(n)`
-/

namespace A009485.P1400467508767037905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009234 (2 * n + 1) * A033999 n

end

end A009485.P1400467508767037905

/-! ## A009485.P7145777853764876217

`A009234(2*n+1)*A092220(A009239(n+2))`
-/

namespace A009485.P7145777853764876217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009234 (2 * n + 1) * A092220 (A009239 (n + 2)).toNat

end

end A009485.P7145777853764876217

/-!
# A009486: sin(sin(x)*sin(x)) = 2/2!*x^2 - 8/4!*x^4 - 88/6!*x^6 + 6592/8!*x^8 - ...

The programs for A009486, there is no canonical definition to state claims against.
-/

/-! ## A009486.P12524026898431373349

`2*A024254(n)`
-/

namespace A009486.P12524026898431373349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024254 n

end

end A009486.P12524026898431373349

/-! ## A009486.P17192114201824321948

`A024254(n)+A024254(A118759(n))`
-/

namespace A009486.P17192114201824321948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024254 n + A024254 (A118759 n).toNat

end

end A009486.P17192114201824321948

/-! ## A009486.P16092061522589498242

`A024254(A033619(n+1))+A024254(n)`
-/

namespace A009486.P16092061522589498242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024254 (A033619 (n + 1)).toNat + A024254 n

end

end A009486.P16092061522589498242

/-! ## A009486.P7959682600957439236

`A024254(A004863(n+1))+A024254(n)`
-/

namespace A009486.P7959682600957439236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024254 (A004863 (n + 1)).toNat + A024254 n

end

end A009486.P7959682600957439236

/-! ## A009486.P12491968275276978468

`A024254(n)+A024254(A049872(n))`
-/

namespace A009486.P12491968275276978468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024254 n + A024254 (A049872 n).toNat

end

end A009486.P12491968275276978468

/-!
# A009488: E.g.f. sin(sinh(sin(x))) (odd powers only).

The programs for A009488, there is no canonical definition to state claims against.
-/

/-! ## A009488.P14168850398209238693

`A009202(2*n+1)*A033999(n)`
-/

namespace A009488.P14168850398209238693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009202 (2 * n + 1) * A033999 n

end

end A009488.P14168850398209238693

/-! ## A009488.P5061695888904126963

`A009202(2*n+1)*A130595(∑[n])`
-/

namespace A009488.P5061695888904126963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009202 (2 * n + 1) * A130595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A009488.P5061695888904126963

/-!
# A009489: Expansion of sin(sinh(tan(x))).

The programs for A009489, there is no canonical definition to state claims against.
-/

/-! ## A009489.P3338159256500843575

`A009204(2*n+1)*A033999(n)`
-/

namespace A009489.P3338159256500843575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009204 (2 * n + 1) * A033999 n

end

end A009489.P3338159256500843575

/-! ## A009489.P16839203680212287788

`A009204(2*n+1)*A056594(2*n)`
-/

namespace A009489.P16839203680212287788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009204 (2 * n + 1) * A056594 (2 * n)

end

end A009489.P16839203680212287788

/-! ## A009489.P13616283128106435429

`A009204(2*n+1)*A009531(2*n+1)`
-/

namespace A009489.P13616283128106435429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009204 (2 * n + 1) * A009531 (2 * n + 1)

end

end A009489.P13616283128106435429

/-! ## A009489.P1513363266827088125

`A009204(A005408(n))/A033999(n)`
-/

namespace A009489.P1513363266827088125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009204 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009489.P1513363266827088125

/-!
# A009490: Number of distinct orders of permutations of n objects; number of nonisomorphic cyclic subgroups of symmetric group S_n.

The programs for A009490, there is no canonical definition to state claims against.
-/

/-! ## A009490.P13442225353981366441

`∑[A051613(n)]`
-/

namespace A009490.P13442225353981366441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009490.P13442225353981366441

/-! ## A009490.P2363580641651499342

`A051613(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A009490.P2363580641651499342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051613 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A009490.P2363580641651499342

/-! ## A009490.P8866467979201771112

`A027423(n)-A211392(A028310(n))`
-/

namespace A009490.P8866467979201771112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n - A211392 (A028310 n).toNat

end

end A009490.P8866467979201771112

/-! ## A009490.P17292675339783680865

`A153823(n)+1-A211392(A028310(n))`
-/

namespace A009490.P17292675339783680865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n + (1 - A211392 (A028310 n).toNat)

end

end A009490.P17292675339783680865

/-! ## A009490.P8306443779083930124

`A027423(n)-A211392(A233583(n+1))`
-/

namespace A009490.P8306443779083930124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n - A211392 (A233583 (n + 1)).toNat

end

end A009490.P8306443779083930124

/-! ## A009490.P4635630826416122153

`A336940(n)+A337257(n)-A211392(A028310(n))`
-/

namespace A009490.P4635630826416122153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336940 n + (A337257 n - A211392 (A028310 n).toNat)

end

end A009490.P4635630826416122153

/-! ## A009490.P9263802495851816347

`A106245(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A009490.P9263802495851816347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A106245 n + a (n - 2)

end

end A009490.P9263802495851816347

/-! ## A009490.P4864996834112765790

`A054429(A054429(a(n-1)))+A051613(n)` with `a(0)=1`
-/

namespace A009490.P4864996834112765790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054429 (A054429 (a (n - 1)).toNat).toNat + A051613 n

end

end A009490.P4864996834112765790

/-! ## A009490.P6794551419898284303

`Δ[eq[1, A256553(n)]]`
-/

namespace A009490.P6794551419898284303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256553 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A009490.P6794551419898284303

/-!
# A009491: Expansion of sin(sinh(x))*cos(x).

The programs for A009491, there is no canonical definition to state claims against.
-/

/-! ## A009491.P7651703430905049773

`A009590(Δ[n²])*A033999(n)`
-/

namespace A009491.P7651703430905049773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009590 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009491.P7651703430905049773

/-! ## A009491.P6314568487765319851

`A009590(2*n+1)/A033999(n)`
-/

namespace A009491.P6314568487765319851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009590 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A009491.P6314568487765319851

/-! ## A009491.P1648483836054872095

`A009590(2*n+1)*A087960(n²)`
-/

namespace A009491.P1648483836054872095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009590 (2 * n + 1) * A087960 (n ^ 2)

end

end A009491.P1648483836054872095

/-! ## A009491.P6313023217781157506

`-(A009184(2*n+1)*A033999(n))`
-/

namespace A009491.P6313023217781157506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A009184 (2 * n + 1) * A033999 n)

end

end A009491.P6313023217781157506

/-! ## A009491.P5324140048606012653

`A009184(2*n+1)*A033999(n+1)`
-/

namespace A009491.P5324140048606012653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009184 (2 * n + 1) * A033999 (n + 1)

end

end A009491.P5324140048606012653

/-!
# A009492: Expansion of e.g.f.: sin(sinh(x))*exp(x).

The programs for A009492, there is no canonical definition to state claims against.
-/

/-! ## A009492.P14828167882176498042

`A009202(A004882(n+1))-1+n`
-/

namespace A009492.P14828167882176498042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009202 (A004882 (n + 1)).toNat - 1 + (n : ℤ)

end

end A009492.P14828167882176498042

/-! ## A009492.P2673520525459970891

`A009202(A004893(n+1))-1+n`
-/

namespace A009492.P2673520525459970891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009202 (A004893 (n + 1)).toNat - 1 + (n : ℤ)

end

end A009492.P2673520525459970891

/-! ## A009492.P4979447048829195529

`A009202(A050783(n+1))-1+n`
-/

namespace A009492.P4979447048829195529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009202 (A050783 (n + 1)).toNat - 1 + (n : ℤ)

end

end A009492.P4979447048829195529

/-! ## A009492.P3265082533817007947

`A009202(A004882(n+1))-A024000(n)`
-/

namespace A009492.P3265082533817007947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009202 (A004882 (n + 1)).toNat - A024000 n

end

end A009492.P3265082533817007947

/-! ## A009492.P18164716809201622550

`A009202(A004893(n+1))-A024000(n)`
-/

namespace A009492.P18164716809201622550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009202 (A004893 (n + 1)).toNat - A024000 n

end

end A009492.P18164716809201622550

/-!
# A009493: Expansion of sin(sinh(x))*x.

The programs for A009493, there is no canonical definition to state claims against.
-/

/-! ## A009493.P182709168103070308

`2*A024302(n)`
-/

namespace A009493.P182709168103070308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024302 n

end

end A009493.P182709168103070308

/-! ## A009493.P5155263440123628821

`A024302(n)+A024302(A292579(n))`
-/

namespace A009493.P5155263440123628821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024302 n + A024302 (A292579 n).toNat

end

end A009493.P5155263440123628821

/-! ## A009493.P6776481830108257023

`A024302(n)/2^A008683(A005382(n+1))`
-/

namespace A009493.P6776481830108257023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024302 n : ℚ) / (2 : ℚ) ^ (A008683 (A005382 (n + 1)).toNat : ℤ)

end

end A009493.P6776481830108257023

/-! ## A009493.P6931635862048985248

`A009206(2*n)*A033999(n+1)`
-/

namespace A009493.P6931635862048985248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009206 (2 * n) * A033999 (n + 1)

end

end A009493.P6931635862048985248

/-! ## A009493.P17519418246055085019

`A000007(A143794(n+1))+A024302(n)+A024302(n)`
-/

namespace A009493.P17519418246055085019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A143794 (n + 1)).toNat + (A024302 n + A024302 n)

end

end A009493.P17519418246055085019

/-!
# A009494: Expansion of e.g.f. sin(sinh(x))/cos(x), odd powers only.

The programs for A009494, there is no canonical definition to state claims against.
-/

/-! ## A009494.P1091272256887991566

`abs(A009208(2*n+1))`
-/

namespace A009494.P1091272256887991566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009208 (2 * n + 1)|

end

end A009494.P1091272256887991566

/-! ## A009494.P7981495524013332269

`record[abs(A009208(A099375(n)))]`
-/

namespace A009494.P7981495524013332269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009208 (A099375 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009494.P7981495524013332269

/-! ## A009494.P1636690778034211098

`A009208(2*n+1)*A033999(n)`
-/

namespace A009494.P1636690778034211098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009208 (2 * n + 1) * A033999 n

end

end A009494.P1636690778034211098

/-!
# A009495: Expansion of sin(sinh(x)*cos(x)).

The programs for A009495, there is no canonical definition to state claims against.
-/

/-! ## A009495.P517405589893300838

`A009211(2*n+1)*A033999(n)`
-/

namespace A009495.P517405589893300838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009211 (2 * n + 1) * A033999 n

end

end A009495.P517405589893300838

/-! ## A009495.P6085712909573012469

`A009211(2*n+1)*A009531(2*n+1)`
-/

namespace A009495.P6085712909573012469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009211 (2 * n + 1) * A009531 (2 * n + 1)

end

end A009495.P6085712909573012469

/-! ## A009495.P7137852103167759117

`A009211(A005408(n))/A033999(n)`
-/

namespace A009495.P7137852103167759117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009211 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009495.P7137852103167759117

/-!
# A009497: Expansion of e.g.f. sin(sinh(x)*sin(x))/2 in odd powers of x^2.

The programs for A009497, there is no canonical definition to state claims against.
-/

/-! ## A009497.P5743074829084228203

`A012524(n)/2`
-/

namespace A009497.P5743074829084228203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012524 n : ℚ) / 2

end

end A009497.P5743074829084228203

/-!
# A009499: Expansion of e.g.f. = sin(tan(log(1+x))).

The programs for A009499, there is no canonical definition to state claims against.
-/

/-! ## A009499.P13231295652701578746

`A009656(n*A010143(n))`
-/

namespace A009499.P13231295652701578746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009656 ((n : ℤ) * A010143 n).toNat

end

end A009499.P13231295652701578746

/-! ## A009499.P15928997446580485476

`A009656(n^A010143(n))`
-/

namespace A009499.P15928997446580485476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009656 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A010143 n : ℤ))).toNat

end

end A009499.P15928997446580485476

/-! ## A009499.P9584551953222365169

`A009656(n^A180502(n))`
-/

namespace A009499.P9584551953222365169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009656 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A180502 n : ℤ))).toNat

end

end A009499.P9584551953222365169

