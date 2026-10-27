import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A340002: Random walk in R^3: Numerators of the expected distance after n steps.

The programs for A340002, there is no canonical definition to state claims against.
-/

/-! ## A340002.P5210024755565326865

`A334490(A106037(n+1))-A062264(n)`
-/

namespace A340002.P5210024755565326865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334490 (A106037 (n + 1)).toNat - A062264 n

end

end A340002.P5210024755565326865

/-! ## A340002.P10206767988721017144

`∑[A109606(A306021(n)+A098294(2*n+1))]`
-/

namespace A340002.P10206767988721017144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A306021 n + A098294 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340002.P10206767988721017144

/-!
# A340003: Random walk in R^3: Denominators of the expected distance after n steps.

The programs for A340003, there is no canonical definition to state claims against.
-/

/-! ## A340003.P7576679846207122742

`A000105(n)*A367761(A019320(n))`
-/

namespace A340003.P7576679846207122742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n * A367761 (A019320 n).toNat

end

end A340003.P7576679846207122742

/-! ## A340003.P10396804656575578343

`A348356(A092203(n))`
-/

namespace A340003.P10396804656575578343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348356 (A092203 n).toNat

end

end A340003.P10396804656575578343

/-!
# A340005: Number of self-avoiding paths along the edges of a grid with n X n square cells, which do not pass above the diagonal. The paths start at the lower left corner and finish at the upper right corner.

The programs for A340005, there is no canonical definition to state claims against.
-/

/-! ## A340005.P2706247861396419891

`4*A334265(a(n-1))+n` with `a(0)=1`
-/

namespace A340005.P2706247861396419891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A334265 (a (n - 1)).toNat + (n : ℤ)

end

end A340005.P2706247861396419891

/-! ## A340005.P8949245332112197

`A354220(A099484(n))`
-/

namespace A340005.P8949245332112197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354220 (A099484 n).toNat

end

end A340005.P8949245332112197

/-!
# A340006: Number of times the n-th prime (=A000040(n)) occurs in A060270.

The programs for A340006, there is no canonical definition to state claims against.
-/

/-! ## A340006.P5080770054811098893

`(A097792(n+2)%A066049(2*(n+2)))%A240235(A239787(n+1))`
-/

namespace A340006.P5080770054811098893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A097792 (n + 2)) (A066049 (2 * (n + 2)))) (A240235 (A239787 (n + 1)).toNat)

end

end A340006.P5080770054811098893

/-! ## A340006.P10134193726889169243

`val(A007318(A045991(n)), 21)`
-/

namespace A340006.P10134193726889169243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007318 (A045991 n).toNat).toNat 21

end

end A340006.P10134193726889169243

/-! ## A340006.P5439400450829170829

`A000005(A108411(n))%A353849(3*n+1)`
-/

namespace A340006.P5439400450829170829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A108411 n).toNat) (A353849 (3 * n + 1))

end

end A340006.P5439400450829170829

/-! ## A340006.P7235054971948351963

`A341354(A250051(2*n+3)*A271322(n+3))`
-/

namespace A340006.P7235054971948351963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341354 (A250051 (2 * n + 3) * A271322 (n + 3)).toNat

end

end A340006.P7235054971948351963

/-! ## A340006.P395035927395929

`A065003(n+1)%A084783(A048881(3*n+2))`
-/

namespace A340006.P395035927395929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065003 (n + 1)) (A084783 (A048881 (3 * n + 2)).toNat)

end

end A340006.P395035927395929

/-!
# A340007: Number of times the n-th prime (=A000040(n)) occurs in A038711.

The programs for A340007, there is no canonical definition to state claims against.
-/

/-! ## A340007.P5659952568563855940

`val(∏[A038711(n)], A008578(n+2))`
-/

namespace A340007.P5659952568563855940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A008578 (n + 2)).toNat

end

end A340007.P5659952568563855940

/-! ## A340007.P4279356386769925017

`val(∏[A038711(n)], A015919(n+2))`
-/

namespace A340007.P4279356386769925017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A015919 (n + 2)).toNat

end

end A340007.P4279356386769925017

/-! ## A340007.P8797172970407218348

`val(∏[A038711(n)], A064555(n+2))`
-/

namespace A340007.P8797172970407218348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A064555 (n + 2)).toNat

end

end A340007.P8797172970407218348

/-! ## A340007.P11636467265420441141

`A250120(n)%A082647(A342342(2*n+3))`
-/

namespace A340007.P11636467265420441141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 n) (A082647 (A342342 (2 * n + 3)).toNat)

end

end A340007.P11636467265420441141

/-! ## A340007.P3592536870119853797

`A049639(n)*A213729(A026054(n+3))`
-/

namespace A340007.P3592536870119853797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 n * A213729 (A026054 (n + 3)).toNat

end

end A340007.P3592536870119853797

/-!
# A340008: a(n) is the image of n under the map: n -> n/2 if n is even, n-> n^2 - 1 if n is an odd prime, otherwise n -> n - 1.

The programs for A340008, there is no canonical definition to state claims against.
-/

/-! ## A340008.P3618800557854491111

`A029578(A089026(n+1)*A131209(n))`
-/

namespace A340008.P3618800557854491111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A089026 (n + 1) * A131209 n).toNat

end

end A340008.P3618800557854491111

/-! ## A340008.P10830758992749156627

`A029578(A089026(n+1)*A184985(n+1))`
-/

namespace A340008.P10830758992749156627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A089026 (n + 1) * A184985 (n + 1)).toNat

end

end A340008.P10830758992749156627

/-! ## A340008.P6190389036557264381

`A340801(n+1)+A257531(n+1)`
-/

namespace A340008.P6190389036557264381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340801 (n + 1) + A257531 (n + 1)

end

end A340008.P6190389036557264381

/-! ## A340008.P2417471436646119218

`A340801(n+1)+abs(A151763(n+1))`
-/

namespace A340008.P2417471436646119218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340801 (n + 1) + |A151763 (n + 1)|

end

end A340008.P2417471436646119218

/-! ## A340008.P11546387328476285096

`A340801(n+1)+char[A000040(n+2)-1]`
-/

namespace A340008.P11546387328476285096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340801 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A340008.P11546387328476285096

/-! ## A340008.P7984332035687230904

`A340801(n+1)+and(n+1, A010051(n+1))`
-/

namespace A340008.P7984332035687230904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340801 (n + 1) + Int.land (n + 1 : ℤ) (A010051 (n + 1))

end

end A340008.P7984332035687230904

/-! ## A340008.P16651558303274567865

`A340801(n+1)+A010051(A079097(n))`
-/

namespace A340008.P16651558303274567865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340801 (n + 1) + A010051 (A079097 n).toNat

end

end A340008.P16651558303274567865

/-! ## A340008.P2121713951162409681

`A340801(n+1)+A101264(A006370(n))`
-/

namespace A340008.P2121713951162409681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340801 (n + 1) + A101264 (A006370 n).toNat

end

end A340008.P2121713951162409681

/-! ## A340008.P677263444301439946

`A340801(n+1)+A103589(A271353(n+1))`
-/

namespace A340008.P677263444301439946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340801 (n + 1) + A103589 (A271353 (n + 1)).toNat

end

end A340008.P677263444301439946

/-!
# A340011: Irregular triangle read by rows T(n,k) in which row n lists n blocks, where the m-th block consists of the j-th row of triangle A127093 but with every term multiplied by A000041(m-1), where j = n - m + 1 and 1 <= m <= n.

The programs for A340011, there is no canonical definition to state claims against.
-/

/-! ## A340011.P9685820970646142513

`C(A359305(A066739(2*n)), A359305(n+1))`
-/

namespace A340011.P9685820970646142513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A359305 (A066739 (2 * n)).toNat).toNat (A359305 (n + 1)).toNat

end

end A340011.P9685820970646142513

/-! ## A340011.P17058070662677700891

`A030373(A007306(n)*A320423(n))`
-/

namespace A340011.P17058070662677700891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (A007306 n * A320423 n).toNat

end

end A340011.P17058070662677700891

/-! ## A340011.P16406754300101913765

`A287352(A221365(n)+A079068(n+1))`
-/

namespace A340011.P16406754300101913765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287352 (A221365 n + A079068 (n + 1)).toNat

end

end A340011.P16406754300101913765

/-! ## A340011.P1387614683245284413

`C(A099244(n+1), A095345(A342334(n)))`
-/

namespace A340011.P1387614683245284413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099244 (n + 1)).toNat (A095345 (A342334 n).toNat).toNat

end

end A340011.P1387614683245284413

/-! ## A340011.P1221622798500449652

`A238470(n)+A144871(A294296(2*n+1))`
-/

namespace A340011.P1221622798500449652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 n + A144871 (A294296 (2 * n + 1)).toNat

end

end A340011.P1221622798500449652

/-!
# A340013: The prime gap, divided by two, which surrounds n!.

The programs for A340013, there is no canonical definition to state claims against.
-/

/-! ## A340013.P18042241143180138839

`A058054(n+3)/2`
-/

namespace A340013.P18042241143180138839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058054 (n + 3) : ℚ) / 2

end

end A340013.P18042241143180138839

/-! ## A340013.P5984015763887337159

`(A033932(n+3)+A033933(n+3))/2`
-/

namespace A340013.P5984015763887337159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033932 (n + 3) + A033933 (n + 3) : ℚ) / 2

end

end A340013.P5984015763887337159

/-! ## A340013.P15930819372589645156

`A054588(n+3)/2`
-/

namespace A340013.P15930819372589645156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054588 (n + 3) : ℚ) / 2

end

end A340013.P15930819372589645156

/-! ## A340013.P11179164778400331509

`(A037151(n+3)-A006990(n+3))/2`
-/

namespace A340013.P11179164778400331509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037151 (n + 3) - A006990 (n + 3) : ℚ) / 2

end

end A340013.P11179164778400331509

/-! ## A340013.P14289232466778057490

`(A340802(n+3)+1)/2`
-/

namespace A340013.P14289232466778057490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340802 (n + 3) + 1 : ℚ) / 2

end

end A340013.P14289232466778057490

/-! ## A340013.P3552375752435283585

`A001281(A058054(n+3))`
-/

namespace A340013.P3552375752435283585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A058054 (n + 3)).toNat

end

end A340013.P3552375752435283585

/-! ## A340013.P15680743552226909619

`A008619(A340802(n+3))`
-/

namespace A340013.P15680743552226909619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A340802 (n + 3)).toNat

end

end A340013.P15680743552226909619

/-! ## A340013.P10325757955179501022

`A110654(A058054(n+3)-1)`
-/

namespace A340013.P10325757955179501022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A058054 (n + 3) - 1).toNat

end

end A340013.P10325757955179501022

/-! ## A340013.P2377957477715545356

`A006370(lcm(2, A058054(n+3)))`
-/

namespace A340013.P2377957477715545356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (Int.lcm 2 (A058054 (n + 3)))

end

end A340013.P2377957477715545356

/-! ## A340013.P8863661194671158906

`A001281(A054588(n+3))`
-/

namespace A340013.P8863661194671158906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A054588 (n + 3)).toNat

end

end A340013.P8863661194671158906

/-! ## A340013.P13819380798053422262

`A004526(A054588(n+3)+1)`
-/

namespace A340013.P13819380798053422262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054588 (n + 3) + 1).toNat

end

end A340013.P13819380798053422262

/-! ## A340013.P3344400879557118182

`A054576(2*A054588(n+3))`
-/

namespace A340013.P3344400879557118182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A054588 (n + 3)).toNat

end

end A340013.P3344400879557118182

/-!
# A340014: Numbers k in A305056 such that k * A002110(j) is in A004394 for some j >= 0.

The programs for A340014, there is no canonical definition to state claims against.
-/

/-! ## A340014.P12939697508178175335

`record[A305056(n+1)%A289631(n+1)]`
-/

namespace A340014.P12939697508178175335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305056 (n + 1)) (A289631 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340014.P12939697508178175335

/-! ## A340014.P13378098856899116001

`lcm(record[A305056(n+1)], A305054(3*(n+1)))`
-/

namespace A340014.P13378098856899116001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A305054 (3 * (n + 1)))

end

end A340014.P13378098856899116001

/-! ## A340014.P6272563326811476274

`record[A305056(A000194(n+1))]`
-/

namespace A340014.P6272563326811476274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305056 (A000194 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340014.P6272563326811476274

/-! ## A340014.P13368951337452613922

`record[A004394(n+1)/A247451(A293635(n+1))]`
-/

namespace A340014.P13368951337452613922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004394 (n + 1) : ℚ) / (A247451 (A293635 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340014.P13368951337452613922

/-! ## A340014.P7577788957763241028

`∩[A247756(n+1), A374781(n+1)]`
-/

namespace A340014.P7577788957763241028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340014.P7577788957763241028

/-!
# A340017: Products of squarefree semiprimes that are not products of distinct squarefree semiprimes.

The programs for A340017, there is no canonical definition to state claims against.
-/

/-! ## A340017.P7895417409070242324

`∩[A320894(n+1), A320911(n+1)]`
-/

namespace A340017.P7895417409070242324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340017.P7895417409070242324

/-!
# A340018: MM-numbers of labeled graphs with half-loops covering an initial interval of positive integers, without isolated vertices.

The programs for A340018, there is no canonical definition to state claims against.
-/

/-! ## A340018.P9596969081426314349

`∩[A320634(n+1), A340019(n+1)]`
-/

namespace A340018.P9596969081426314349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340018.P9596969081426314349

/-!
# A340019: MM-numbers of labeled graphs with half-loops, without isolated vertices.

The programs for A340019, there is no canonical definition to state claims against.
-/

/-! ## A340019.P3003541390878162837

`A329629(comp[or(2, A329630(2*(n+2)))+1]+1)`
-/

namespace A340019.P3003541390878162837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A329630 (2 * (n + 2))) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329629 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A340019.P3003541390878162837

/-! ## A340019.P7697343660262155409

`∩[A302494(n+1), A368729(n+1)]`
-/

namespace A340019.P7697343660262155409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340019.P7697343660262155409

/-! ## A340019.P15436137097448066304

`∩[A329629(n+1), A368729(n+1)]`
-/

namespace A340019.P15436137097448066304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340019.P15436137097448066304

/-! ## A340019.P9576778472915676901

`A329629(A090106(n+1))`
-/

namespace A340019.P9576778472915676901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329629 (A090106 (n + 1)).toNat

end

end A340019.P9576778472915676901

/-!
# A340020: MM-numbers of labeled graphs with loops, without isolated vertices.

The programs for A340020, there is no canonical definition to state claims against.
-/

/-! ## A340020.P18377492433124169431

`record[A007913(A339112(n+1))]`
-/

namespace A340020.P18377492433124169431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A339112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340020.P18377492433124169431

/-! ## A340020.P7502767456695398016

`filter[A339112(n+1), A008966(#)]`
-/

namespace A340020.P7502767456695398016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A340020.P7502767456695398016

/-! ## A340020.P18180239573321478176

`filter[A339112(n+1), A323154(#)]`
-/

namespace A340020.P18180239573321478176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A340020.P18180239573321478176

/-! ## A340020.P13604407978985836975

`filter[A339112(n+1), A323239(#)]`
-/

namespace A340020.P13604407978985836975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A340020.P13604407978985836975

/-! ## A340020.P8385982852065670631

`filter[A339112(n+1), A353519(#)]`
-/

namespace A340020.P8385982852065670631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A340020.P8385982852065670631

/-! ## A340020.P18037723779652661189

`filter[A339112(n+1), A353559(#)]`
-/

namespace A340020.P18037723779652661189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A340020.P18037723779652661189

/-! ## A340020.P1971564910211143921

`filter[A339112(n+1), A353627(#)]`
-/

namespace A340020.P1971564910211143921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A340020.P1971564910211143921

/-! ## A340020.P9999464479967031073

`filter[A339112(n+1), A353628(#)]`
-/

namespace A340020.P9999464479967031073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A340020.P9999464479967031073

/-! ## A340020.P7710609083186102485

`filter[A339112(n+1), A359377(#)]`
-/

namespace A340020.P7710609083186102485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A340020.P7710609083186102485

/-! ## A340020.P11305152615843351421

`filter[A339112(n+1), A359590(#)]`
-/

namespace A340020.P11305152615843351421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A340020.P11305152615843351421

/-!
# A340021: Number of bicolored graphs on n unlabeled nodes such that black nodes are not adjacent to each other and every white node is adjacent to a black node.

The programs for A340021, there is no canonical definition to state claims against.
-/

/-! ## A340021.P1454855749171877575

`A237270(Δ[A270598(n)]+1)`
-/

namespace A340021.P1454855749171877575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (f1 (n + 1) - f1 n + 1).toNat

end

end A340021.P1454855749171877575

/-! ## A340021.P4208225083115593684

`A236335(n+1)+∑[A241469(n+4)]`
-/

namespace A340021.P4208225083115593684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241469 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236335 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340021.P4208225083115593684

/-! ## A340021.P4507210640516133685

`A263270(A275553(n)+A001764(n))`
-/

namespace A340021.P4507210640516133685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A275553 n + A001764 n).toNat

end

end A340021.P4507210640516133685

/-!
# A340022: Number of graphs with vertices labeled with positive integers summing to n.

The programs for A340022, there is no canonical definition to state claims against.
-/

/-! ## A340022.P5293644642798466670

`or(n, A022290(A193281(n)))`
-/

namespace A340022.P5293644642798466670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A022290 (A193281 n).toNat)

end

end A340022.P5293644642798466670

/-! ## A340022.P7930191049214867576

`or(n, A219838(A000111(n+3)))`
-/

namespace A340022.P7930191049214867576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A219838 (A000111 (n + 3)).toNat)

end

end A340022.P7930191049214867576

/-! ## A340022.P3690477254891108311

`A005206(A051240(n)+A006190(n))`
-/

namespace A340022.P3690477254891108311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A051240 n + A006190 n).toNat

end

end A340022.P3690477254891108311

/-!
# A340023: Number of graphs with n integer labeled vertices covering an initial interval of positive integers.

The programs for A340023, there is no canonical definition to state claims against.
-/

/-! ## A340023.P5892854246248797386

`A002637(∑[7^n])`
-/

namespace A340023.P5892854246248797386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002637 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340023.P5892854246248797386

/-!
# A340024: Number of inequivalent vertex colorings of graphs on n unlabeled vertices.

The programs for A340024, there is no canonical definition to state claims against.
-/

/-! ## A340024.P12132631490152535583

`A060431(A273129(n)+A001147(n))`
-/

namespace A340024.P12132631490152535583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (A273129 n + A001147 n).toNat

end

end A340024.P12132631490152535583

/-! ## A340024.P14735933015619778699

`A324117(A077047(n))+A077047(n)`
-/

namespace A340024.P14735933015619778699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A077047 n).toNat + A077047 n

end

end A340024.P14735933015619778699

/-!
# A340025: Number of connected graphs with vertices labeled with positive integers summing to n.

The programs for A340025, there is no canonical definition to state claims against.
-/

/-! ## A340025.P11702126952141460165

`A330558(A005027(n+3)+2)`
-/

namespace A340025.P11702126952141460165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A005027 (n + 3) + 2).toNat

end

end A340025.P11702126952141460165

/-! ## A340025.P12852761893315534821

`A144151(n)+A098429(or(1, -∏[2*n-1]))`
-/

namespace A340025.P12852761893315534821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144151 n + A098429 (Int.lor 1 (-(∏ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A340025.P12852761893315534821

/-! ## A340025.P7881864922136827571

`A098429(or(1, -∏[2*n-1]))+A026148(n+2)`
-/

namespace A340025.P7881864922136827571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (Int.lor 1 (-(∏ j ∈ Finset.range (n + 1), f1 j))).toNat + A026148 (n + 2)

end

end A340025.P7881864922136827571

/-!
# A340026: Number of connected graphs with n integer labeled vertices covering an initial interval of positive integers.

The programs for A340026, there is no canonical definition to state claims against.
-/

/-! ## A340026.P2776292326871187745

`A123604(C(n+1, 3))`
-/

namespace A340026.P2776292326871187745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123604 (Nat.choose (n + 1) 3 + 33)

end

end A340026.P2776292326871187745

/-!
# A340027: Number of inequivalent vertex colorings of connected graphs on n unlabeled vertices.

The programs for A340027, there is no canonical definition to state claims against.
-/

/-! ## A340027.P16044183416744182424

`A068962((n+1)^(n-1)+2)`
-/

namespace A340027.P16044183416744182424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2)).toNat

end

end A340027.P16044183416744182424

/-! ## A340027.P16884920072631395404

`A026414(A244432(n)+2)`
-/

namespace A340027.P16884920072631395404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026414 (A244432 n + 2).toNat

end

end A340027.P16884920072631395404

/-!
# A340028: Number of unlabeled 2-connected graphs with n vertices rooted at a pair of noninterchangeable vertices.

The programs for A340028, there is no canonical definition to state claims against.
-/

/-! ## A340028.P16919849433284522302

`A192592(a(n-1)+1)+2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A340028.P16919849433284522302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A192592 (a (n - 1) + 1).toNat + 2

end

end A340028.P16919849433284522302

/-! ## A340028.P12911317893898293155

`A063195(A278992(n+1)+1)`
-/

namespace A340028.P12911317893898293155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A278992 (n + 1) + 1).toNat

end

end A340028.P12911317893898293155

/-!
# A340029: Number of unlabeled 2-connected graphs with n vertices rooted at a pair of indistinguishable vertices.

The programs for A340029, there is no canonical definition to state claims against.
-/

/-! ## A340029.P2160617861613345093

`A233564(A353391(3*(n+1))-n)`
-/

namespace A340029.P2160617861613345093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (A353391 (3 * (n + 1)) - (n : ℤ)).toNat

end

end A340029.P2160617861613345093

/-! ## A340029.P11494588677214246354

`A002265(A052318(n+1))+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n`
-/

namespace A340029.P11494588677214246354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 (A052318 (n + 1)).toNat : ℚ) + (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))

end

end A340029.P11494588677214246354

/-!
# A340031: Irregular triangle read by rows T(n,k) in which row n lists n blocks, where the m-th block consists of A000041(m-1) copies of the j-th row of triangle A127093, where j = n - m + 1 and 1 <= m <= n.

The programs for A340031, there is no canonical definition to state claims against.
-/

/-! ## A340031.P10337111329805138538

`A023416(n+2)+A008683(A250691(n+1))`
-/

namespace A340031.P10337111329805138538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 2) + A008683 (A250691 (n + 1)).toNat

end

end A340031.P10337111329805138538

/-! ## A340031.P4016763413087022823

`A128583(A000079(n)-A002620(n))`
-/

namespace A340031.P4016763413087022823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128583 (A000079 n - A002620 n).toNat

end

end A340031.P4016763413087022823

/-! ## A340031.P4958432604204415895

`A128583(A000051(n)-A008811(n))`
-/

namespace A340031.P4958432604204415895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128583 (A000051 n - A008811 n).toNat

end

end A340031.P4958432604204415895

/-! ## A340031.P929892731924995557

`C(A328620(A282417(n+1)), A087116(n))`
-/

namespace A340031.P929892731924995557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A328620 (A282417 (n + 1)).toNat).toNat (A087116 n).toNat

end

end A340031.P929892731924995557

/-! ## A340031.P3649444808621357804

`A194285(A000051(n))+A025426(2*n+1)`
-/

namespace A340031.P3649444808621357804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A000051 n).toNat + A025426 (2 * n + 1)

end

end A340031.P3649444808621357804

/-!
# A340032: Irregular triangle read by rows T(n,k) in which row n lists n blocks, where the m-th block consists of A000041(n-m) copies of the row m of triangle A127093, with 1 <= m <= n.

The programs for A340032, there is no canonical definition to state claims against.
-/

/-! ## A340032.P15268872608784700909

`and(A008284(A349820(n+1)), A132680(n+3))`
-/

namespace A340032.P15268872608784700909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008284 (A349820 (n + 1)).toNat) (A132680 (n + 3))

end

end A340032.P15268872608784700909

/-! ## A340032.P12459709863835616315

`A050075(A204992(round(acot(n)+n)))`
-/

namespace A340032.P12459709863835616315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050075 (A204992 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A340032.P12459709863835616315

/-! ## A340032.P17713672513948976056

`A001227(3*n+5)-A118111(A211786(n+1))`
-/

namespace A340032.P17713672513948976056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (3 * n + 5) - A118111 (A211786 (n + 1)).toNat

end

end A340032.P17713672513948976056

/-! ## A340032.P7736299918071152789

`A060990(A061222(n)+A002193(n))`
-/

namespace A340032.P7736299918071152789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A061222 n + A002193 (n + 1)).toNat

end

end A340032.P7736299918071152789

/-! ## A340032.P15798575929094738398

`A323302(C(A323306(n+1), A321854(n+2)))`
-/

namespace A340032.P15798575929094738398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323302 (Nat.choose (A323306 (n + 1)).toNat (A321854 (n + 2)).toNat)

end

end A340032.P15798575929094738398

/-!
# A340033: a(n) is the largest number of distinct numbers whose product is A025487(n).

The programs for A340033, there is no canonical definition to state claims against.
-/

/-! ## A340033.P17911720534767224140

`A086435(A025487(n+1))+1`
-/

namespace A340033.P17911720534767224140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A025487 (n + 1)).toNat + 1

end

end A340033.P17911720534767224140

/-! ## A340033.P5433964579309095232

`A086435(record[A046523(n+1)])+1`
-/

namespace A340033.P5433964579309095232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A340033.P5433964579309095232

/-! ## A340033.P8149728417053276493

`A086435(record[A329899(n+1)])+1`
-/

namespace A340033.P8149728417053276493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A340033.P8149728417053276493

/-! ## A340033.P3157844187702161789

`A086435(record[A051466(n+2)])+1`
-/

namespace A340033.P3157844187702161789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A340033.P3157844187702161789

/-! ## A340033.P4225619283377418794

`A086435(A247451(n+1)*A307107(n+1))+1`
-/

namespace A340033.P4225619283377418794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A247451 (n + 1) * A307107 (n + 1)).toNat + 1

end

end A340033.P4225619283377418794

/-! ## A340033.P12154949174359163334

`A086435(A181817(n+1)/A181816(n+1))+1`
-/

namespace A340033.P12154949174359163334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat + 1

end

end A340033.P12154949174359163334

/-! ## A340033.P14646418675964032586

`A086435(gcd(A181817(n+1), A324577(n+1)))+1`
-/

namespace A340033.P14646418675964032586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (Int.gcd (A181817 (n + 1)) (A324577 (n + 1))) + 1

end

end A340033.P14646418675964032586

/-!
# A340034: a(n) is the number of ways to represent A025487(n) as a product of the largest possible number of distinct factors in the product.

The programs for A340034, there is no canonical definition to state claims against.
-/

/-! ## A340034.P7344307462977916164

`A338160(A025487(n+1))`
-/

namespace A340034.P7344307462977916164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338160 (A025487 (n + 1)).toNat

end

end A340034.P7344307462977916164

/-! ## A340034.P8123770484248704876

`A338160(A233819(n+1))`
-/

namespace A340034.P8123770484248704876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338160 (A233819 (n + 1)).toNat

end

end A340034.P8123770484248704876

/-! ## A340034.P6776510610209250769

`A007318(and(A073138(n), A288150(n+1)))`
-/

namespace A340034.P6776510610209250769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land (A073138 n) (A288150 (n + 1))).toNat

end

end A340034.P6776510610209250769

/-! ## A340034.P3669738485888464308

`gcd(A104148(n+2), A175306(A129157(n)))`
-/

namespace A340034.P3669738485888464308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104148 (n + 2)) (A175306 (A129157 n).toNat)

end

end A340034.P3669738485888464308

/-! ## A340034.P4013624762383190676

`gcd(A285229(A000720(5*n+4)), A305499(4*(n+1)))`
-/

namespace A340034.P4013624762383190676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285229 (A000720 (5 * n + 4)).toNat) (A305499 (4 * (n + 1)))

end

end A340034.P4013624762383190676

/-!
# A340035: Irregular triangle read by rows T(n,k) in which row n lists n blocks, where the m-th block consists of A000041(n-m) copies of the divisors of m, with 1 <= m <= n.

The programs for A340035, there is no canonical definition to state claims against.
-/

/-! ## A340035.P12843129544535533397

`A340032(record[n%(A340032(n+1)+n)]+1)`
-/

namespace A340035.P12843129544535533397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A340032 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340032 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A340035.P12843129544535533397

/-! ## A340035.P3458347146970856613

`A340032(lt[A340032(n+1), A103507(3*n+1)])`
-/

namespace A340035.P3458347146970856613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103507 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340032 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340035.P3458347146970856613

/-! ## A340035.P283768011960224371

`A300826(record[A300671(n)])`
-/

namespace A340035.P283768011960224371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340035.P283768011960224371

/-! ## A340035.P17464107331598616144

`A300826(A300671(n+3))`
-/

namespace A340035.P17464107331598616144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (A300671 (n + 3)).toNat

end

end A340035.P17464107331598616144

/-! ## A340035.P6732126109545187262

`A030302(n+1)+A007814(A248324(n))`
-/

namespace A340035.P6732126109545187262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1) + A007814 (A248324 n).toNat

end

end A340035.P6732126109545187262

/-!
# A340037: Primes p such that (p^2+q^2)/2 and (q^2 + 2*p*q - p^2)/2 are prime, where q is the next prime after p.

The programs for A340037, there is no canonical definition to state claims against.
-/

/-! ## A340037.P2589832736468055767

`A006530(A201042((1-comp[∑[n]])²))`
-/

namespace A340037.P2589832736468055767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A201042 ((1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2).toNat).toNat

end

end A340037.P2589832736468055767

/-!
# A340038: Numbers that are the sum of a square s and a cube t such that 0 < s <= t.

The programs for A340038, there is no canonical definition to state claims against.
-/

/-! ## A340038.P11465489393262714155

`∪[A003358(n+1), A340040(n+1)]`
-/

namespace A340038.P11465489393262714155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340038.P11465489393262714155

/-! ## A340038.P8465671209140889438

`∪[A106318(n+1), A340040(n+1)]`
-/

namespace A340038.P8465671209140889438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340038.P8465671209140889438

/-!
# A340039: Numbers that are the sum of a cube s and a square t such that 0 < s <= t.

The programs for A340039, there is no canonical definition to state claims against.
-/

/-! ## A340039.P3711636941714873265

`∪[A003358(n+1), A340042(n+1)]`
-/

namespace A340039.P3711636941714873265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340039.P3711636941714873265

/-! ## A340039.P7257403313454383251

`∪[A106318(n+1), A340042(n+1)]`
-/

namespace A340039.P7257403313454383251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340039.P7257403313454383251

/-! ## A340039.P18250769743883460401

`∪[A273498(n+1), A340042(n+1)]`
-/

namespace A340039.P18250769743883460401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340039.P18250769743883460401

/-! ## A340039.P11829361949579928818

`∪[A340042(n+1), A273498(A016777(n))]`
-/

namespace A340039.P11829361949579928818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273498 (A016777 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340039.P11829361949579928818

/-! ## A340039.P15299210923234896672

`A340042(A028310(n))%A340018(3*n+2)`
-/

namespace A340039.P15299210923234896672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340042 (A028310 n).toNat) (A340018 (3 * n + 2))

end

end A340039.P15299210923234896672

/-!
# A340040: Numbers that are the sum of a square s and a cube t such that 0 < s < t.

The programs for A340040, there is no canonical definition to state claims against.
-/

/-! ## A340040.P16627339567564713420

`A340038(comp[(4*n)²]+1)`
-/

namespace A340040.P16627339567564713420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340038 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A340040.P16627339567564713420

/-! ## A340040.P3939744185664125268

`∩[A340038(n+1), A391195(n+1)]`
-/

namespace A340040.P3939744185664125268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340040.P3939744185664125268

/-! ## A340040.P10780072438281840194

`record[A340038(n+2)-A270850(A294875(n+1))]`
-/

namespace A340040.P10780072438281840194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340038 (n + 2) - A270850 (A294875 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340040.P10780072438281840194

/-! ## A340040.P15760752171218975917

`A340038(n+2)-A307424(A339993(3*(n+1)))`
-/

namespace A340040.P15760752171218975917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340038 (n + 2) - A307424 (A339993 (3 * (n + 1))).toNat

end

end A340040.P15760752171218975917

/-! ## A340040.P11043279820260845781

`A340038(n+2)%A016814(A214826(n))`
-/

namespace A340040.P11043279820260845781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340038 (n + 2)) (A016814 (A214826 n).toNat)

end

end A340040.P11043279820260845781

/-!
# A340041: The prime gap, divided by two, which surrounds p#.

The programs for A340041, there is no canonical definition to state claims against.
-/

/-! ## A340041.P11172757199230786560

`A058044(n+2)/2`
-/

namespace A340041.P11172757199230786560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058044 (n + 2) : ℚ) / 2

end

end A340041.P11172757199230786560

/-! ## A340041.P12071002138054361906

`(A038711(n+2)+A060270(n+2))/2`
-/

namespace A340041.P12071002138054361906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038711 (n + 2) + A060270 (n + 2) : ℚ) / 2

end

end A340041.P12071002138054361906

/-! ## A340041.P8984056525265082864

`A001281(A058044(n+2))`
-/

namespace A340041.P8984056525265082864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A058044 (n + 2)).toNat

end

end A340041.P8984056525265082864

/-! ## A340041.P11764344142255347879

`A004524(A058044(n+2)+1)`
-/

namespace A340041.P11764344142255347879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A058044 (n + 2) + 1).toNat

end

end A340041.P11764344142255347879

/-! ## A340041.P15591152986166535928

`A004526(A058044(n+2)+1)`
-/

namespace A340041.P15591152986166535928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A058044 (n + 2) + 1).toNat

end

end A340041.P15591152986166535928

/-! ## A340041.P14951516465770473593

`A028242(A058044(n+2)+1)`
-/

namespace A340041.P14951516465770473593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A058044 (n + 2) + 1).toNat

end

end A340041.P14951516465770473593

/-! ## A340041.P4481451436989091887

`A000463(A058044(n+2)-1)`
-/

namespace A340041.P4481451436989091887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A058044 (n + 2) - 1).toNat

end

end A340041.P4481451436989091887

/-! ## A340041.P2721996374689686388

`A001057(A058044(n+2)-1)`
-/

namespace A340041.P2721996374689686388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A058044 (n + 2) - 1).toNat

end

end A340041.P2721996374689686388

/-! ## A340041.P10141477442281645955

`A003602(A058044(n+2)-1)`
-/

namespace A340041.P10141477442281645955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A058044 (n + 2) - 1).toNat

end

end A340041.P10141477442281645955

/-! ## A340041.P17344379295051039714

`A038572(A058044(n+2)+2)-1`
-/

namespace A340041.P17344379295051039714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A058044 (n + 2) + 2).toNat - 1

end

end A340041.P17344379295051039714

/-! ## A340041.P4719311289624502045

`A038572(A058044(A020725(n+1)))`
-/

namespace A340041.P4719311289624502045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A058044 (A020725 (n + 1)).toNat).toNat

end

end A340041.P4719311289624502045

/-!
# A340042: Numbers that are the sum of a cube s and a square t such that 0 < s < t.

The programs for A340042, there is no canonical definition to state claims against.
-/

/-! ## A340042.P16452422907562062500

`filter[A340039(n+1), A267579(#)]`
-/

namespace A340042.P16452422907562062500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A340042.P16452422907562062500

/-! ## A340042.P10832005528900956033

`filter[A340039(n+1), A347523(#)]`
-/

namespace A340042.P10832005528900956033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A340042.P10832005528900956033

/-! ## A340042.P15072174336715682486

`∩[A057716(n), A340039(n+1)]`
-/

namespace A340042.P15072174336715682486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340042.P15072174336715682486

/-! ## A340042.P9021929871458247000

`A340039(comp[A340052(n)²-n])`
-/

namespace A340042.P9021929871458247000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340052 n ^ 2 - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340039 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340042.P9021929871458247000

/-! ## A340042.P8365585373119793145

`∩[A138591(n+1), A340039(n+1)]`
-/

namespace A340042.P8365585373119793145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340042.P8365585373119793145

/-! ## A340042.P1723296707512846202

`∩[A340039(n+1), A391195(n+1)]`
-/

namespace A340042.P1723296707512846202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340042.P1723296707512846202

/-! ## A340042.P566133598138589671

`A340039(comp[A340052(n)-A250258(n+1)])`
-/

namespace A340042.P566133598138589671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340052 n - A250258 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340039 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340042.P566133598138589671

/-!
# A340044: Numbers that are the sum of a square s and a fourth power t such that 0 < s <= t.

The programs for A340044, there is no canonical definition to state claims against.
-/

/-! ## A340044.P14694088565191431070

`round(root(3*(n+1), 3))²²+A064866(n+1)²`
-/

namespace A340044.P14694088565191431070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((3 * (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2) ^ 2 + A064866 (n + 1) ^ 2

end

end A340044.P14694088565191431070

/-! ## A340044.P14192200661422599319

`∪[A003336(n+1), A340046(n+1)]`
-/

namespace A340044.P14192200661422599319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340044.P14192200661422599319

/-! ## A340044.P11486821109206320604

`∪[A060387(n+1), A340046(n+1)]`
-/

namespace A340044.P11486821109206320604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340044.P11486821109206320604

/-! ## A340044.P6015151442003079355

`A064866(n+1)²+A213083(n+1)²`
-/

namespace A340044.P6015151442003079355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (n + 1) ^ 2 + A213083 (n + 1) ^ 2

end

end A340044.P6015151442003079355

/-! ## A340044.P6889231255635081351

`A064866(n+1)²+A074279(n+1)²²`
-/

namespace A340044.P6889231255635081351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (n + 1) ^ 2 + (A074279 (n + 1) ^ 2) ^ 2

end

end A340044.P6889231255635081351

/-! ## A340044.P13324788488816673022

`record[A010052(A002024(n+1))*A070216(n+1)]`
-/

namespace A340044.P13324788488816673022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A002024 (n + 1)).toNat * A070216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340044.P13324788488816673022

/-!
# A340045: Numbers that are the sum of a fourth power s and a square t such that 0 < s <= t.

The programs for A340045, there is no canonical definition to state claims against.
-/

/-! ## A340045.P13883816038613613477

`∪[A003336(n+1), A340047(n+1)]`
-/

namespace A340045.P13883816038613613477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340045.P13883816038613613477

/-! ## A340045.P3463537591643346916

`∪[A060387(n+1), A340047(n+1)]`
-/

namespace A340045.P3463537591643346916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340045.P3463537591643346916

/-! ## A340045.P8825097259352329618

`eq[A096744(A262678(n)), A262678(n)]`
-/

namespace A340045.P8825097259352329618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096744 (A262678 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340045.P8825097259352329618

/-! ## A340045.P8908891409851320188

`∩[A111925(n+1), A193533(n+1)]`
-/

namespace A340045.P8908891409851320188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340045.P8908891409851320188

/-!
# A340046: Numbers that are the sum of a square s and a fourth power t such that 0 < s < t.

The programs for A340046, there is no canonical definition to state claims against.
-/

/-! ## A340046.P9263221306787888924

`A340044(comp[∑[n²]])`
-/

namespace A340046.P9263221306787888924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340044 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A340046.P9263221306787888924

/-! ## A340046.P1139263579789495125

`or(char[2], A340044(A302058(n+1)))`
-/

namespace A340046.P1139263579789495125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A340044 (A302058 (n + 1)).toNat)

end

end A340046.P1139263579789495125

/-! ## A340046.P3426049804308238501

`∩[A182834(n+1), A340044(n+1)]`
-/

namespace A340046.P3426049804308238501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340046.P3426049804308238501

/-! ## A340046.P14706015834970353352

`∩[A183300(n+1), A340044(n+1)]`
-/

namespace A340046.P14706015834970353352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340046.P14706015834970353352

/-! ## A340046.P3985858775213359645

`A340044(A302058(n+1))+A025444(n)`
-/

namespace A340046.P3985858775213359645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340044 (A302058 (n + 1)).toNat + A025444 n

end

end A340046.P3985858775213359645

/-! ## A340046.P5622791289821647766

`A340044(A302058(n+1))%A017451(n)`
-/

namespace A340046.P5622791289821647766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340044 (A302058 (n + 1)).toNat) (A017451 n)

end

end A340046.P5622791289821647766

/-! ## A340046.P2504805332130316027

`A010052(n²)*A340044(A302058(n+1))`
-/

namespace A340046.P2504805332130316027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A340044 (A302058 (n + 1)).toNat

end

end A340046.P2504805332130316027

/-! ## A340046.P16381848664684614444

`A007318(∑[n])*A340044(A302058(n+1))`
-/

namespace A340046.P16381848664684614444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A340044 (A302058 (n + 1)).toNat

end

end A340046.P16381848664684614444

/-! ## A340046.P2869264982311258056

`A340044(A302058(n+1))+A000007(n+1)`
-/

namespace A340046.P2869264982311258056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340044 (A302058 (n + 1)).toNat + A000007 (n + 1)

end

end A340046.P2869264982311258056

/-! ## A340046.P7388031975369839383

`A340044(A302058(n+1))^A001222(gcd(n, n+1)+1)`
-/

namespace A340046.P7388031975369839383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340044 (A302058 (n + 1)).toNat : ℚ) ^ (A001222 (Nat.gcd n (n + 1) + 1) : ℤ)

end

end A340046.P7388031975369839383

/-!
# A340047: Numbers that are the sum of a fourth power s and a square t such that 0 < s < t.

The programs for A340047, there is no canonical definition to state claims against.
-/

/-! ## A340047.P13954328567818318791

`filter[A340045(n+1), A353814(#)]`
-/

namespace A340047.P13954328567818318791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A340047.P13954328567818318791

/-! ## A340047.P17680292377871219935

`∩[A001983(n+1), A340045(n+1)]`
-/

namespace A340047.P17680292377871219935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340047.P17680292377871219935

/-! ## A340047.P15161231041524839725

`∩[A004431(n+1), A340045(n+1)]`
-/

namespace A340047.P15161231041524839725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340047.P15161231041524839725

/-! ## A340047.P4934214599181361547

`∩[A009003(n+1), A340045(n+1)]`
-/

namespace A340047.P4934214599181361547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340047.P4934214599181361547

/-! ## A340047.P1800962395867518963

`∩[A059485(n+1), A340045(n+1)]`
-/

namespace A340047.P1800962395867518963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340047.P1800962395867518963

/-! ## A340047.P9772047398933318431

`∩[A071821(n+1), A340045(n+1)]`
-/

namespace A340047.P9772047398933318431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340047.P9772047398933318431

/-! ## A340047.P1776607526591126499

`∩[A080259(n+1), A340045(n+1)]`
-/

namespace A340047.P1776607526591126499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340047.P1776607526591126499

/-! ## A340047.P3408311015304180934

`∩[A340045(n+1), A379851(n+1)]`
-/

namespace A340047.P3408311015304180934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340047.P3408311015304180934

/-!
# A340048: Numbers that are the sum of a cube s and a fourth power t such that 0 < s <= t.

The programs for A340048, there is no canonical definition to state claims against.
-/

/-! ## A340048.P12597506104242616022

`A340050(n%a(n-1))` with `a(0)=2`
-/

namespace A340048.P12597506104242616022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A340050 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A340048.P12597506104242616022

/-! ## A340048.P17040128112220340276

`∪[A006686(n+1), A340050(n+1)]`
-/

namespace A340048.P17040128112220340276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340048.P17040128112220340276

/-! ## A340048.P13348627937994656641

`∪[A006935(n+1), A340050(n+1)]`
-/

namespace A340048.P13348627937994656641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340048.P13348627937994656641

/-! ## A340048.P7041009460520621825

`∪[A007352(n+1), A340050(n+1)]`
-/

namespace A340048.P7041009460520621825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340048.P7041009460520621825

/-! ## A340048.P14934425800425419710

`∪[A023328(n+1), A340050(n+1)]`
-/

namespace A340048.P14934425800425419710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340048.P14934425800425419710

/-!
# A340049: Numbers that are the sum of a fourth power s and a cube t such that 0 < s <= t.

The programs for A340049, there is no canonical definition to state claims against.
-/

/-! ## A340049.P12983616103153550264

`eq[A055400(n), A133790(A027948(n))]`
-/

namespace A340049.P12983616103153550264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133790 (A027948 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340049.P12983616103153550264

/-!
# A340050: Numbers that are the sum of a cube s and a fourth power t such that 0 < s < t.

The programs for A340050, there is no canonical definition to state claims against.
-/

/-! ## A340050.P12623543487326856387

`A340048(n+2)`
-/

namespace A340050.P12623543487326856387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340048 (n + 2)

end

end A340050.P12623543487326856387

/-! ## A340050.P12214574430109183

`record[A340048(A263274(xor(2, n)))]`
-/

namespace A340050.P12214574430109183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340048 (A263274 (Nat.xor 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340050.P12214574430109183

/-! ## A340050.P1870527518025186838

`record[A340048(A133310(abs(1-n)))]`
-/

namespace A340050.P1870527518025186838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340048 (A133310 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340050.P1870527518025186838

/-! ## A340050.P7981685858167320248

`record[A340048(A126759(A005408(n)))]`
-/

namespace A340050.P7981685858167320248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340048 (A126759 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340050.P7981685858167320248

/-! ## A340050.P1649503098871924183

`record[A340048(A126759(A008611(n)))]`
-/

namespace A340050.P1649503098871924183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340048 (A126759 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340050.P1649503098871924183

/-!
# A340051: Mixed-radix representation of n where the least significant digit is in base 3 and other digits are in base 2.

The programs for A340051, the canonical program `A340051.P1850340533376232124` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340051 has offset 0).

The definition of A340051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340051.P1850340533376232124

`10*A007088(floor(n/3))+n%3`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A340051

/-- `10*A007088(floor(n/3))+n%3` -/
def P1850340533376232124.Spec : Prop :=
  ∀ n, P1850340533376232124.a n = A340051 n

theorem P1850340533376232124.correct : P1850340533376232124.Spec := by
  intro n
  simp only [A340051]

end A340051

/-! ## A340051.P13897420907592727479

`A007088(round(2*n/3))+C(n, 2)%3`
-/

namespace A340051.P13897420907592727479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat + ((Nat.choose n 2 % 3 : ℕ) : ℤ)

end

end A340051.P13897420907592727479

namespace A340051

/-- `A007088(round(2*n/3))+C(n, 2)%3` -/
def P13897420907592727479.Spec : Prop :=
  ∀ n, P13897420907592727479.a n = A340051 n

end A340051

/-! ## A340051.P13635006407526265774

`∪[A007088(n)+1, A007088(n)]`
-/

namespace A340051.P13635006407526265774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340051.P13635006407526265774

namespace A340051

/-- `∪[A007088(n)+1, A007088(n)]` -/
def P13635006407526265774.Spec : Prop :=
  ∀ n, (P13635006407526265774.a n : ℤ) = A340051 n

end A340051

/-! ## A340051.P8506683570517657196

`A007088(A004396(n))+A167614(n+1)%3`
-/

namespace A340051.P8506683570517657196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004396 n).toNat + Int.tmod (A167614 (n + 1)) 3

end

end A340051.P8506683570517657196

namespace A340051

/-- `A007088(A004396(n))+A167614(n+1)%3` -/
def P8506683570517657196.Spec : Prop :=
  ∀ n, P8506683570517657196.a n = A340051 n

end A340051

/-! ## A340051.P865969671928709354

`A007088(A004523(n))+Δ[A004523(n)]`
-/

namespace A340051.P865969671928709354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004523 n).toNat + (f1 (n + 1) - f1 n)

end

end A340051.P865969671928709354

namespace A340051

/-- `A007088(A004523(n))+Δ[A004523(n)]` -/
def P865969671928709354.Spec : Prop :=
  ∀ n, P865969671928709354.a n = A340051 n

end A340051

/-! ## A340051.P9832217809630443456

`A169683(eq[A215020(n+1)², A215020(n+1)])`
-/

namespace A340051.P9832217809630443456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215020 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340051.P9832217809630443456

namespace A340051

/-- `A169683(eq[A215020(n+1)², A215020(n+1)])` -/
def P9832217809630443456.Spec : Prop :=
  ∀ n, P9832217809630443456.a n = A340051 n

end A340051

/-! ## A340051.P4284556380040637272

`A169683(eq[A215020(n+1)+1, A182105(n+1)])`
-/

namespace A340051.P4284556380040637272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215020 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340051.P4284556380040637272

namespace A340051

/-- `A169683(eq[A215020(n+1)+1, A182105(n+1)])` -/
def P4284556380040637272.Spec : Prop :=
  ∀ n, P4284556380040637272.a n = A340051 n

end A340051

/-! ## A340051.P8211012599898845669

`record[A007088(A123087(n))+n%2]`
-/

namespace A340051.P8211012599898845669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A123087 n).toNat + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340051.P8211012599898845669

namespace A340051

/-- `record[A007088(A123087(n))+n%2]` -/
def P8211012599898845669.Spec : Prop :=
  ∀ n, P8211012599898845669.a n = A340051 n

end A340051

/-! ## A340051.P9233573370328239146

`record[A007088(A002264(n))+and(1, n)]`
-/

namespace A340051.P9233573370328239146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A002264 n).toNat + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340051.P9233573370328239146

namespace A340051

/-- `record[A007088(A002264(n))+and(1, n)]` -/
def P9233573370328239146.Spec : Prop :=
  ∀ n, P9233573370328239146.a n = A340051 n

end A340051

/-! ## A340051.P15701932499888533985

`record[A059841(n+1)+A007088(A002265(n))]`
-/

namespace A340051.P15701932499888533985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A007088 (A002265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340051.P15701932499888533985

namespace A340051

/-- `record[A059841(n+1)+A007088(A002265(n))]` -/
def P15701932499888533985.Spec : Prop :=
  ∀ n, P15701932499888533985.a n = A340051 n

end A340051

/-! ## A340051.P2995780858352900619

`A007089(∩[A354047(n)-1, A354047(n)])`
-/

namespace A340051.P2995780858352900619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354047 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354047 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A340051.P2995780858352900619

namespace A340051

/-- `A007089(∩[A354047(n)-1, A354047(n)])` -/
def P2995780858352900619.Spec : Prop :=
  ∀ n, P2995780858352900619.a n = A340051 n

end A340051

/-! ## A340051.P6288771225437533042

`A007089(eq[A006997(n), A189640(2*(n+1))])`
-/

namespace A340051.P6288771225437533042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340051.P6288771225437533042

namespace A340051

/-- `A007089(eq[A006997(n), A189640(2*(n+1))])` -/
def P6288771225437533042.Spec : Prop :=
  ∀ n, P6288771225437533042.a n = A340051 n

end A340051

/-! ## A340051.P8836520608888933198

`A007090(eq[A059906(n), A160382(n)])`
-/

namespace A340051.P8836520608888933198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340051.P8836520608888933198

namespace A340051

/-- `A007090(eq[A059906(n), A160382(n)])` -/
def P8836520608888933198.Spec : Prop :=
  ∀ n, P8836520608888933198.a n = A340051 n

end A340051

/-! ## A340051.P13771830027718853449

`A007090(eq[A059906(n)², A292372(n)])`
-/

namespace A340051.P13771830027718853449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340051.P13771830027718853449

namespace A340051

/-- `A007090(eq[A059906(n)², A292372(n)])` -/
def P13771830027718853449.Spec : Prop :=
  ∀ n, P13771830027718853449.a n = A340051 n

end A340051

/-!
# A340052: a(n) = Product_{1<=i<j<=n} (4*sin(i*Pi/(2*n+1))^2 + 4*sin(j*Pi/(2*n+1))^2).

The programs for A340052, there is no canonical definition to state claims against.
-/

/-! ## A340052.P18308579405415567477

`A340185(n)/A065072(n)`
-/

namespace A340052.P18308579405415567477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340185 n : ℚ) / (A065072 n : ℚ)

end

end A340052.P18308579405415567477

/-! ## A340052.P14989428757960385238

`A340185(n)/sqrt(A004003(n)/A000079(n))`
-/

namespace A340052.P14989428757960385238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340185 n : ℝ) / Real.sqrt ((A004003 n : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A340052.P14989428757960385238

/-! ## A340052.P15421260701526354615

`A340185(n)/sqrt(A189002(2*n)/A000079(n))`
-/

namespace A340052.P15421260701526354615
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340185 n : ℝ) / Real.sqrt ((A189002 (2 * n) : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A340052.P15421260701526354615

/-! ## A340052.P11353093711403473285

`A340185(n)/sqrt(A004003(n)/A135318(2*n+1))`
-/

namespace A340052.P11353093711403473285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340185 n : ℝ) / Real.sqrt ((A004003 n : ℚ) / (A135318 (2 * n + 1) : ℚ) : ℝ)

end

end A340052.P11353093711403473285

/-! ## A340052.P18013075877576163875

`A340185(n)/sqrt(A137308(2*n)/2^n)`
-/

namespace A340052.P18013075877576163875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340185 n : ℝ) / Real.sqrt ((A137308 (2 * n) : ℚ) / (2 ^ n : ℚ) : ℝ)

end

end A340052.P18013075877576163875

/-!
# A340056: Irregular triangle read by rows T(n,k) in which row n lists n blocks, where the m-th block consists of the divisors of j multiplied by A000041(m-1), where j = n - m + 1 and 1 <= m <= n.

The programs for A340056, there is no canonical definition to state claims against.
-/

/-! ## A340056.P966414106656169031

`A124768(∑[A000001(n)^A089224(n)])`
-/

namespace A340056.P966414106656169031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000001 n : ℚ) ^ (A089224 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A340056.P966414106656169031

/-! ## A340056.P8895793705756497620

`A206491(A291122(n+2))`
-/

namespace A340056.P8895793705756497620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206491 (A291122 (n + 2)).toNat

end

end A340056.P8895793705756497620

/-! ## A340056.P517054178187808987

`A240595(A065107(n+1)-1)`
-/

namespace A340056.P517054178187808987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240595 (A065107 (n + 1) - 1).toNat

end

end A340056.P517054178187808987

/-! ## A340056.P4385614457605981512

`A240595(xor(1, A065107(n+1)))`
-/

namespace A340056.P4385614457605981512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240595 (Int.xor 1 (A065107 (n + 1))).toNat

end

end A340056.P4385614457605981512

/-! ## A340056.P2980428311954604260

`A284583(A102627(n+1)+A079209(n+1))`
-/

namespace A340056.P2980428311954604260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284583 (A102627 (n + 1) + A079209 (n + 1)).toNat

end

end A340056.P2980428311954604260

/-!
# A340057: Irregular triangle read by rows T(n,k) in which row n lists n blocks, where the block m consists of the divisors of m multiplied by A000041(n-m), with 1 <= m <= n.

The programs for A340057, there is no canonical definition to state claims against.
-/

/-! ## A340057.P8561080117460594941

`A221649(lt[0, A221649(n+1)]+1)`
-/

namespace A340057.P8561080117460594941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A340057.P8561080117460594941

/-! ## A340057.P17662332488855920667

`A334948(A108371(3*n+2)+A001678(n+4))`
-/

namespace A340057.P17662332488855920667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334948 (A108371 (3 * n + 2) + A001678 (n + 4)).toNat

end

end A340057.P17662332488855920667

/-! ## A340057.P5921254349633399351

`A220400(4*record[A097357(n+1)])`
-/

namespace A340057.P5921254349633399351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340057.P5921254349633399351

/-! ## A340057.P7261276312592898234

`ceil(A000005(record[A097357(n+1)])/2)`
-/

namespace A340057.P7261276312592898234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2⌉

end

end A340057.P7261276312592898234

/-! ## A340057.P15203881304649813007

`gcd(A001221(A007661(n+2)), A037909(n+1))`
-/

namespace A340057.P15203881304649813007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A007661 (n + 2)).toNat) (A037909 (n + 1))

end

end A340057.P15203881304649813007

/-!
# A340058: Composite numbers c such that phi(c)/phi(mind(c)) mod phi(c)/phi(maxd(c)) = 0, where phi is the Euler function, mind(c) is the smallest nontrivial divisor of c, maxd(c) is the largest nontrivial divisor of c.

The programs for A340058, there is no canonical definition to state claims against.
-/

/-! ## A340058.P14293472255015482077

`lt[1, A082477(n+1)]+2`
-/

namespace A340058.P14293472255015482077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082477 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A340058.P14293472255015482077

/-! ## A340058.P2766485182108334196

`∪[2*(n+2), A136410(n+1)]`
-/

namespace A340058.P2766485182108334196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340058.P2766485182108334196

/-! ## A340058.P7544959035385843479

`∪[A082772(n+1)+1, 2*(n+2)]`
-/

namespace A340058.P7544959035385843479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082772 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A340058.P7544959035385843479

/-! ## A340058.P15480699883387261892

`eq[n+1, lcm(n+1, A251758(n+2))]+2`
-/

namespace A340058.P15480699883387261892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A251758 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A340058.P15480699883387261892

/-! ## A340058.P5739504907703349277

`record[n+1-a(n-1)%A250480(n+1)]` with `a(0)=4`
-/

namespace A340058.P5739504907703349277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  (n + 1 : ℤ) - Int.tmod (f1 (n - 1)) (A250480 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340058.P5739504907703349277

/-! ## A340058.P11906088483477615066

`lt[A008314(n), A007650(n)]`
-/

namespace A340058.P11906088483477615066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007650 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340058.P11906088483477615066

/-! ## A340058.P14750958224839283333

`lt[A211110(n+1), A003415(n)²]`
-/

namespace A340058.P14750958224839283333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340058.P14750958224839283333

/-! ## A340058.P13822609615263183620

`lt[A347135(n+1), A003415(n)²]`
-/

namespace A340058.P13822609615263183620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340058.P13822609615263183620

/-! ## A340058.P2933641710836243928

`lt[A327156(n+1)², A078898(n)]`
-/

namespace A340058.P2933641710836243928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327156 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340058.P2933641710836243928

/-! ## A340058.P2307994281464100538

`∪[A033942(n+1), A108574(n+1)]`
-/

namespace A340058.P2307994281464100538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340058.P2307994281464100538

/-!
# A340060: Averages k of twin primes such that the sum (with multiplicity) of prime factors of k-1, k and k+1 is prime.

The programs for A340060, there is no canonical definition to state claims against.
-/

/-! ## A340060.P9181168363660114150

`A330488(n+1)+1`
-/

namespace A340060.P9181168363660114150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330488 (n + 1) + 1

end

end A340060.P9181168363660114150

/-! ## A340060.P17184784246810736740

`A000203(A330488(n+1))`
-/

namespace A340060.P17184784246810736740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A330488 (n + 1)).toNat

end

end A340060.P17184784246810736740

/-!
# A340061: Irregular triangle read by rows T(n,k) in which row n lists n blocks, where the m-th block consists of A000041(n-m) copies of m, with n >= 1 and m >= 1.

The programs for A340061, there is no canonical definition to state claims against.
-/

/-! ## A340061.P2358257061326490893

`A340035(record[A028310(n)/A340035(n+1)])`
-/

namespace A340061.P2358257061326490893
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A340035 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A340061.P2358257061326490893

/-! ## A340061.P9818908891292251905

`A340035(eq[A000038(n)!, A340035(n+1)])`
-/

namespace A340061.P9818908891292251905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340061.P9818908891292251905

/-! ## A340061.P6411003879500937040

`A340035(eq[1, A340035(n+1)+A000038(n)])`
-/

namespace A340061.P6411003879500937040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (n + 1) + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340061.P6411003879500937040

/-! ## A340061.P14907026607182233942

`A340035(eq[A054977(n), A340035(n+1)])`
-/

namespace A340061.P14907026607182233942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340061.P14907026607182233942

/-! ## A340061.P15257420753837351944

`A340035(eq[A057427(n), A340035(n+1)])`
-/

namespace A340061.P15257420753837351944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340061.P15257420753837351944

/-! ## A340061.P11495602567594090861

`A340035(eq[A158388(n), A340035(n+1)])`
-/

namespace A340061.P11495602567594090861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340061.P11495602567594090861

/-! ## A340061.P9030958086862288570

`A340035(eq[1, A340035(n+1)+A000007(n)])`
-/

namespace A340061.P9030958086862288570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340061.P9030958086862288570

/-! ## A340061.P10936121878321006058

`A340035(eq[A112773(n+2)%2, A340035(n+1)])`
-/

namespace A340061.P10936121878321006058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112773 (n + 2)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340061.P10936121878321006058

/-! ## A340061.P7048182292466355358

`A090996(lt[A049502(n), A080791(n)])`
-/

namespace A340061.P7048182292466355358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340061.P7048182292466355358

/-!
# A340067: a(n) is the smallest k > 1 such that 2^n - 2 divides k^n - 1, for n > 1.

The programs for A340067, there is no canonical definition to state claims against.
-/

/-! ## A340067.P1748217189025141369

`p?[C(A080649(n+2), 2*(n+1)/gcd(16, 7-n))]`
-/

namespace A340067.P1748217189025141369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080649 (n + 2)).toNat (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Int.gcd 16 (7 - (n : ℤ)) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A340067.P1748217189025141369

/-! ## A340067.P4356391255485553211

`or(A130141(3*n), A299101(A130141(n)))`
-/

namespace A340067.P4356391255485553211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130141 (3 * n)) (A299101 (A130141 n).toNat)

end

end A340067.P4356391255485553211

/-!
# A340068: a(n) is the number of integers in the set {n+1, n+2, ..., 2*n} whose representation in base 2 contain exactly three digits 1's.

The programs for A340068, the canonical program `A340068.P1048881016749436141` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340068 has offset 1).

The definition of A340068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340068.P1048881016749436141

`∑[A151774(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A340068

/-- `∑[A151774(n)]` -/
def P1048881016749436141.Spec : Prop :=
  ∀ n, P1048881016749436141.a n = A340068 (n + 1)

theorem P1048881016749436141.correct : P1048881016749436141.Spec := by
  intro n
  simp only [A340068, Nat.add_sub_cancel]

end A340068

/-! ## A340068.P7726535853982274459

`∑[val(A057334(n), 3)]`
-/

namespace A340068.P7726535853982274459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057334 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P7726535853982274459

namespace A340068

/-- `∑[val(A057334(n), 3)]` -/
def P7726535853982274459.Spec : Prop :=
  ∀ n, (P7726535853982274459.a n : ℤ) = A340068 (n + 1)

end A340068

/-! ## A340068.P5881223284798752734

`∑[C(A073267(n), 2)]`
-/

namespace A340068.P5881223284798752734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A073267 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P5881223284798752734

namespace A340068

/-- `∑[C(A073267(n), 2)]` -/
def P5881223284798752734.Spec : Prop :=
  ∀ n, (P5881223284798752734.a n : ℤ) = A340068 (n + 1)

end A340068

/-! ## A340068.P13276443717990051914

`∑[char[A018900(n+1)]]`
-/

namespace A340068.P13276443717990051914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P13276443717990051914

namespace A340068

/-- `∑[char[A018900(n+1)]]` -/
def P13276443717990051914.Spec : Prop :=
  ∀ n, (P13276443717990051914.a n : ℤ) = A340068 (n + 1)

end A340068

/-! ## A340068.P13684052993133964032

`∑[char[A048639(n+1)]]`
-/

namespace A340068.P13684052993133964032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048639 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P13684052993133964032

namespace A340068

/-- `∑[char[A048639(n+1)]]` -/
def P13684052993133964032.Spec : Prop :=
  ∀ n, (P13684052993133964032.a n : ℤ) = A340068 (n + 1)

end A340068

/-! ## A340068.P13961446138069712194

`∑[char[A239303(2*(n+1))]]`
-/

namespace A340068.P13961446138069712194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239303 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P13961446138069712194

namespace A340068

/-- `∑[char[A239303(2*(n+1))]]` -/
def P13961446138069712194.Spec : Prop :=
  ∀ n, (P13961446138069712194.a n : ℤ) = A340068 (n + 1)

end A340068

/-! ## A340068.P11194397212619400721

`∑[char[record[A057168(n+1)+1]]]`
-/

namespace A340068.P11194397212619400721
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P11194397212619400721

namespace A340068

/-- `∑[char[record[A057168(n+1)+1]]]` -/
def P11194397212619400721.Spec : Prop :=
  ∀ n, (P11194397212619400721.a n : ℤ) = A340068 (n + 1)

end A340068

/-! ## A340068.P11532916176413959223

`∑[char[eq[2, A273126(n+1)]+1]]`
-/

namespace A340068.P11532916176413959223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273126 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P11532916176413959223

namespace A340068

/-- `∑[char[eq[2, A273126(n+1)]+1]]` -/
def P11532916176413959223.Spec : Prop :=
  ∀ n, (P11532916176413959223.a n : ℤ) = A340068 (n + 1)

end A340068

/-! ## A340068.P12771058810421913638

`∑[(C(A001316(n)+5, 5)%2-1)²]-1`
-/

namespace A340068.P12771058810421913638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (A001316 n + 5).toNat 5 % 2 : ℕ) : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A340068.P12771058810421913638

namespace A340068

/-- `∑[(C(A001316(n)+5, 5)%2-1)²]-1` -/
def P12771058810421913638.Spec : Prop :=
  ∀ n, P12771058810421913638.a n = A340068 (n + 1)

end A340068

/-! ## A340068.P2311833350257065453

`∑[A014317(A000120(n)²)]-1`
-/

namespace A340068.P2311833350257065453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014317 (A000120 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A340068.P2311833350257065453

namespace A340068

/-- `∑[A014317(A000120(n)²)]-1` -/
def P2311833350257065453.Spec : Prop :=
  ∀ n, P2311833350257065453.a n = A340068 (n + 1)

end A340068

/-! ## A340068.P13799514046462279175

`∑[char[eq[2, A000120(n)]]]`
-/

namespace A340068.P13799514046462279175
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P13799514046462279175

namespace A340068

/-- `∑[char[eq[2, A000120(n)]]]` -/
def P13799514046462279175.Spec : Prop :=
  ∀ n, (P13799514046462279175.a n : ℤ) = A340068 (n + 1)

end A340068

/-! ## A340068.P13968445926573488388

`∑[char[A048675(A006881(n+1))]]`
-/

namespace A340068.P13968445926573488388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A006881 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P13968445926573488388

namespace A340068

/-- `∑[char[A048675(A006881(n+1))]]` -/
def P13968445926573488388.Spec : Prop :=
  ∀ n, (P13968445926573488388.a n : ℤ) = A340068 (n + 1)

end A340068

/-! ## A340068.P4954642939701231494

`∑[A089049(A174354(2*n)+A089049(2*n+1))]`
-/

namespace A340068.P4954642939701231494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089049 (A174354 (2 * n) + A089049 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P4954642939701231494

namespace A340068

/-- `∑[A089049(A174354(2*n)+A089049(2*n+1))]` -/
def P4954642939701231494.Spec : Prop :=
  ∀ n, P4954642939701231494.a n = A340068 (n + 1)

end A340068

/-! ## A340068.P1513910233449838721

`∑[A064911(A005940(n+1))]`
-/

namespace A340068.P1513910233449838721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P1513910233449838721

namespace A340068

/-- `∑[A064911(A005940(n+1))]` -/
def P1513910233449838721.Spec : Prop :=
  ∀ n, P1513910233449838721.a n = A340068 (n + 1)

end A340068

/-! ## A340068.P11278884914135248001

`∑[log2(A014963(∑[∑{e}[xor(n, -n), 2-#]]!))]`
-/

namespace A340068.P11278884914135248001
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, (2 - (Nat.factorization (f3 n).natAbs p : ℤ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014963 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j).toNat) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P11278884914135248001

namespace A340068

/-- `∑[log2(A014963(∑[∑{e}[xor(n, -n), 2-#]]!))]` -/
def P11278884914135248001.Spec : Prop :=
  ∀ n, P11278884914135248001.a n = (A340068 (n + 1) : ℝ)

end A340068

/-! ## A340068.P3923903920617215125

`∑[A014963(A093659(n))-1]`
-/

namespace A340068.P3923903920617215125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A093659 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P3923903920617215125

namespace A340068

/-- `∑[A014963(A093659(n))-1]` -/
def P3923903920617215125.Spec : Prop :=
  ∀ n, P3923903920617215125.a n = A340068 (n + 1)

end A340068

/-! ## A340068.P17431074666619456053

`∑[and(2, A120588(n))/2]`
-/

namespace A340068.P17431074666619456053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A120588 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P17431074666619456053

namespace A340068

/-- `∑[and(2, A120588(n))/2]` -/
def P17431074666619456053.Spec : Prop :=
  ∀ n, P17431074666619456053.a n = (A340068 (n + 1) : ℚ)

end A340068

/-! ## A340068.P16588620886118255292

`∑[A151756(A151787(n+1))]`
-/

namespace A340068.P16588620886118255292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151756 (A151787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P16588620886118255292

namespace A340068

/-- `∑[A151756(A151787(n+1))]` -/
def P16588620886118255292.Spec : Prop :=
  ∀ n, P16588620886118255292.a n = A340068 (n + 1)

end A340068

/-!
# A340070: a(n) = gcd(A003415(n), A069359(n)).

The programs for A340070, the canonical program `A340070.P6497847320767913254` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340070 has offset 1).

The definition of A340070 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340070.P6497847320767913254

`gcd(A003415(n+1), A069359(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A340070

/-- `gcd(A003415(n+1), A069359(n+1))` -/
def P6497847320767913254.Spec : Prop :=
  ∀ n, (P6497847320767913254.a n : ℤ) = A340070 (n + 1)

theorem P6497847320767913254.correct : P6497847320767913254.Spec := by
  intro n
  simp only [A340070, Nat.add_sub_cancel]

end A340070

/-! ## A340070.P9886036474916302496

`gcd(∑[A258057(n)], ∑{p}[n+1, (n+1)/#])`
-/

namespace A340070.P9886036474916302496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))

end

end A340070.P9886036474916302496

namespace A340070

/-- `gcd(∑[A258057(n)], ∑{p}[n+1, (n+1)/#])` -/
def P9886036474916302496.Spec : Prop :=
  ∀ n, (P9886036474916302496.a n : ℤ) = A340070 (n + 1)

end A340070

/-! ## A340070.P1721419055519715632

`gcd(round(∑{p}[n+1, (n+1)/#]), A329039(n+1))`
-/

namespace A340070.P1721419055519715632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (A329039 (n + 1))

end

end A340070.P1721419055519715632

namespace A340070

/-- `gcd(round(∑{p}[n+1, (n+1)/#]), A329039(n+1))` -/
def P1721419055519715632.Spec : Prop :=
  ∀ n, (P1721419055519715632.a n : ℤ) = A340070 (n + 1)

end A340070

/-! ## A340070.P3124263284281096149

`gcd(∑[A258057(n)], A069359(n+1))`
-/

namespace A340070.P3124263284281096149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A069359 (n + 1))

end

end A340070.P3124263284281096149

namespace A340070

/-- `gcd(∑[A258057(n)], A069359(n+1))` -/
def P3124263284281096149.Spec : Prop :=
  ∀ n, (P3124263284281096149.a n : ℤ) = A340070 (n + 1)

end A340070

/-! ## A340070.P12287826257403768243

`gcd(∑{p}[n+1, (n+1)²/#]/(n+1), A329039(A000027(n+1)))`
-/

namespace A340070.P12287826257403768243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((∑ p ∈ Nat.primeFactors (f1 n), ((n + 1) ^ 2 : ℚ) / (p : ℚ)) / (n + 1 : ℚ))) (A329039 (A000027 (n + 1)).toNat)

end

end A340070.P12287826257403768243

namespace A340070

/-- `gcd(∑{p}[n+1, (n+1)²/#]/(n+1), A329039(A000027(n+1)))` -/
def P12287826257403768243.Spec : Prop :=
  ∀ n, (P12287826257403768243.a n : ℤ) = A340070 (n + 1)

end A340070

/-! ## A340070.P13611767243866756033

`gcd(A033273(n+1)-A348219(n+1), A190116(n+1))`
-/

namespace A340070.P13611767243866756033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033273 (n + 1) - A348219 (n + 1)) (A190116 (n + 1))

end

end A340070.P13611767243866756033

namespace A340070

/-- `gcd(A033273(n+1)-A348219(n+1), A190116(n+1))` -/
def P13611767243866756033.Spec : Prop :=
  ∀ n, (P13611767243866756033.a n : ℤ) = A340070 (n + 1)

end A340070

/-! ## A340070.P3501069436578166251

`gcd(A319703(A103517(n)), A329039(n+1))`
-/

namespace A340070.P3501069436578166251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319703 (A103517 n).toNat) (A329039 (n + 1))

end

end A340070.P3501069436578166251

namespace A340070

/-- `gcd(A319703(A103517(n)), A329039(n+1))` -/
def P3501069436578166251.Spec : Prop :=
  ∀ n, (P3501069436578166251.a n : ℤ) = A340070 (n + 1)

end A340070

/-!
# A340071: a(n) = gcd(A003961(n)-1, phi(A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes.

The programs for A340071, the canonical program `A340071.P3662903536855616101` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340071 has offset 1).

The definition of A340071 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340071.P14391809678338825772

`gcd(A253885(n), A003972(n+1))`
-/

namespace A340071.P14391809678338825772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253885 n) (A003972 (n + 1))

end

end A340071.P14391809678338825772

namespace A340071

/-- `gcd(A253885(n), A003972(n+1))` -/
def P14391809678338825772.Spec : Prop :=
  ∀ n, (P14391809678338825772.a n : ℤ) = A340071 (n + 1)

end A340071

/-! ## A340071.P13265441494167154318

`A003972(n+1)/A340072(n+1)`
-/

namespace A340071.P13265441494167154318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003972 (n + 1) : ℚ) / (A340072 (n + 1) : ℚ)

end

end A340071.P13265441494167154318

namespace A340071

/-- `A003972(n+1)/A340072(n+1)` -/
def P13265441494167154318.Spec : Prop :=
  ∀ n, P13265441494167154318.a n = (A340071 (n + 1) : ℚ)

end A340071

/-! ## A340071.P3662903536855616101

`gcd(A003961(n+1)-1, A000010(A003961(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A340071

/-- `gcd(A003961(n+1)-1, A000010(A003961(n+1)))` -/
def P3662903536855616101.Spec : Prop :=
  ∀ n, (P3662903536855616101.a n : ℤ) = A340071 (n + 1)

theorem P3662903536855616101.correct : P3662903536855616101.Spec := by
  intro n
  simp only [A340071, Nat.add_sub_cancel]

end A340071

/-! ## A340071.P10871235182773967563

`A049559(A003961(n+1))`
-/

namespace A340071.P10871235182773967563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A003961 (n + 1)).toNat

end

end A340071.P10871235182773967563

namespace A340071

/-- `A049559(A003961(n+1))` -/
def P10871235182773967563.Spec : Prop :=
  ∀ n, P10871235182773967563.a n = A340071 (n + 1)

end A340071

/-! ## A340071.P16379609221858900685

`A340147(n+1)/A340072(n+1)*A340148(n+1)`
-/

namespace A340071.P16379609221858900685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340147 (n + 1) : ℚ) / (A340072 (n + 1) : ℚ) * (A340148 (n + 1) : ℚ)

end

end A340071.P16379609221858900685

namespace A340071

/-- `A340147(n+1)/A340072(n+1)*A340148(n+1)` -/
def P16379609221858900685.Spec : Prop :=
  ∀ n, P16379609221858900685.a n = (A340071 (n + 1) : ℚ)

end A340071

/-! ## A340071.P11401527632554347905

`A000010(A003961(n+1))/A340072(n+1)`
-/

namespace A340071.P11401527632554347905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A003961 (n + 1)).toNat : ℚ) / (A340072 (n + 1) : ℚ)

end

end A340071.P11401527632554347905

namespace A340071

/-- `A000010(A003961(n+1))/A340072(n+1)` -/
def P11401527632554347905.Spec : Prop :=
  ∀ n, P11401527632554347905.a n = (A340071 (n + 1) : ℚ)

end A340071

/-! ## A340071.P10388500490342453770

`A000010(A045965(n+1))/A340072(n+1)`
-/

namespace A340071.P10388500490342453770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A045965 (n + 1)).toNat : ℚ) / (A340072 (n + 1) : ℚ)

end

end A340071.P10388500490342453770

namespace A340071

/-- `A000010(A045965(n+1))/A340072(n+1)` -/
def P10388500490342453770.Spec : Prop :=
  ∀ n, P10388500490342453770.a n = (A340071 (n + 1) : ℚ)

end A340071

/-! ## A340071.P9195206503244385381

`A000010(A253885(n)+1)/A340072(n+1)`
-/

namespace A340071.P9195206503244385381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A253885 n + 1).toNat : ℚ) / (A340072 (n + 1) : ℚ)

end

end A340071.P9195206503244385381

namespace A340071

/-- `A000010(A253885(n)+1)/A340072(n+1)` -/
def P9195206503244385381.Spec : Prop :=
  ∀ n, P9195206503244385381.a n = (A340071 (n + 1) : ℚ)

end A340071

/-! ## A340071.P8528861076920718920

`A000010(A243501(n+1)-1)/A340072(n+1)`
-/

namespace A340071.P8528861076920718920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A243501 (n + 1) - 1).toNat : ℚ) / (A340072 (n + 1) : ℚ)

end

end A340071.P8528861076920718920

namespace A340071

/-- `A000010(A243501(n+1)-1)/A340072(n+1)` -/
def P8528861076920718920.Spec : Prop :=
  ∀ n, P8528861076920718920.a n = (A340071 (n + 1) : ℚ)

end A340071

/-! ## A340071.P1642999123343018861

`A000010(2*A048673(n+1)-1)/A340072(n+1)`
-/

namespace A340071.P1642999123343018861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * A048673 (n + 1) - 1).toNat : ℚ) / (A340072 (n + 1) : ℚ)

end

end A340071.P1642999123343018861

namespace A340071

/-- `A000010(2*A048673(n+1)-1)/A340072(n+1)` -/
def P1642999123343018861.Spec : Prop :=
  ∀ n, P1642999123343018861.a n = (A340071 (n + 1) : ℚ)

end A340071

/-! ## A340071.P11468402901270015512

`A000010(A191002(n+1)/(n+1))/A340072(n+1)`
-/

namespace A340071.P11468402901270015512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.roundAway ((A191002 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℚ) / (A340072 (n + 1) : ℚ)

end

end A340071.P11468402901270015512

namespace A340071

/-- `A000010(A191002(n+1)/(n+1))/A340072(n+1)` -/
def P11468402901270015512.Spec : Prop :=
  ∀ n, P11468402901270015512.a n = (A340071 (n + 1) : ℚ)

end A340071

/-! ## A340071.P7240000326472258188

`A000010(A280702(n+1)*A280703(n+1))/A340072(n+1)`
-/

namespace A340071.P7240000326472258188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A280702 (n + 1) * A280703 (n + 1)).toNat : ℚ) / (A340072 (n + 1) : ℚ)

end

end A340071.P7240000326472258188

namespace A340071

/-- `A000010(A280702(n+1)*A280703(n+1))/A340072(n+1)` -/
def P7240000326472258188.Spec : Prop :=
  ∀ n, P7240000326472258188.a n = (A340071 (n + 1) : ℚ)

end A340071

/-! ## A340071.P8589991086989541781

`A003972(n+1)/A160595(A003961(n+1))`
-/

namespace A340071.P8589991086989541781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003972 (n + 1) : ℚ) / (A160595 (A003961 (n + 1)).toNat : ℚ)

end

end A340071.P8589991086989541781

namespace A340071

/-- `A003972(n+1)/A160595(A003961(n+1))` -/
def P8589991086989541781.Spec : Prop :=
  ∀ n, P8589991086989541781.a n = (A340071 (n + 1) : ℚ)

end A340071

/-! ## A340071.P9236208042927939230

`A049559(A045965(n+1))`
-/

namespace A340071.P9236208042927939230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A045965 (n + 1)).toNat

end

end A340071.P9236208042927939230

namespace A340071

/-- `A049559(A045965(n+1))` -/
def P9236208042927939230.Spec : Prop :=
  ∀ n, P9236208042927939230.a n = A340071 (n + 1)

end A340071

/-! ## A340071.P7367460919186271414

`A049559(A253885(n)+1)`
-/

namespace A340071.P7367460919186271414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A253885 n + 1).toNat

end

end A340071.P7367460919186271414

namespace A340071

/-- `A049559(A253885(n)+1)` -/
def P7367460919186271414.Spec : Prop :=
  ∀ n, P7367460919186271414.a n = A340071 (n + 1)

end A340071

/-! ## A340071.P2543124018948631786

`A000010(A266646(2*(n+1))-1)/A340072(n+1)`
-/

namespace A340071.P2543124018948631786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A266646 (2 * (n + 1)) - 1).toNat : ℚ) / (A340072 (n + 1) : ℚ)

end

end A340071.P2543124018948631786

namespace A340071

/-- `A000010(A266646(2*(n+1))-1)/A340072(n+1)` -/
def P2543124018948631786.Spec : Prop :=
  ∀ n, P2543124018948631786.a n = (A340071 (n + 1) : ℚ)

end A340071

/-!
# A340072: a(n) = phi(x) / gcd(x-1, phi(x)), where x = A003961(n), i.e., n with its prime factorization shifted one step towards larger primes.

The programs for A340072, the canonical program `A340072.P10983682379328277677` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340072 has offset 1).

The definition of A340072 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A160595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340072.P12807135164218538272

`A003972(n+1)/A340071(n+1)`
-/

namespace A340072.P12807135164218538272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003972 (n + 1) : ℚ) / (A340071 (n + 1) : ℚ)

end

end A340072.P12807135164218538272

namespace A340072

/-- `A003972(n+1)/A340071(n+1)` -/
def P12807135164218538272.Spec : Prop :=
  ∀ n, P12807135164218538272.a n = (A340072 (n + 1) : ℚ)

end A340072

/-! ## A340072.P10983682379328277677

`A160595(A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A340072

/-- `A160595(A003961(n+1))` -/
def P10983682379328277677.Spec : Prop :=
  ∀ n, P10983682379328277677.a n = A340072 (n + 1)

theorem P10983682379328277677.correct : P10983682379328277677.Spec := by
  intro n
  simp only [A340072, Nat.add_sub_cancel]

end A340072

/-! ## A340072.P7245161378697953395

`A003972(n+1)/gcd(A003972(n+1), A253885(n))`
-/

namespace A340072.P7245161378697953395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003972 (n + 1) : ℚ) / (Int.gcd (A003972 (n + 1)) (A253885 n) : ℚ)

end

end A340072.P7245161378697953395

namespace A340072

/-- `A003972(n+1)/gcd(A003972(n+1), A253885(n))` -/
def P7245161378697953395.Spec : Prop :=
  ∀ n, P7245161378697953395.a n = (A340072 (n + 1) : ℚ)

end A340072

/-! ## A340072.P2733647616941650696

`A000010(A003961(n+1))/A340071(n+1)`
-/

namespace A340072.P2733647616941650696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A003961 (n + 1)).toNat : ℚ) / (A340071 (n + 1) : ℚ)

end

end A340072.P2733647616941650696

namespace A340072

/-- `A000010(A003961(n+1))/A340071(n+1)` -/
def P2733647616941650696.Spec : Prop :=
  ∀ n, P2733647616941650696.a n = (A340072 (n + 1) : ℚ)

end A340072

/-! ## A340072.P14023587758811403587

`A000010(A253885(n)+1)/A340071(n+1)`
-/

namespace A340072.P14023587758811403587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A253885 n + 1).toNat : ℚ) / (A340071 (n + 1) : ℚ)

end

end A340072.P14023587758811403587

namespace A340072

/-- `A000010(A253885(n)+1)/A340071(n+1)` -/
def P14023587758811403587.Spec : Prop :=
  ∀ n, P14023587758811403587.a n = (A340072 (n + 1) : ℚ)

end A340072

/-! ## A340072.P17056082640464257478

`A160595(A045965(n+1))`
-/

namespace A340072.P17056082640464257478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (A045965 (n + 1)).toNat

end

end A340072.P17056082640464257478

namespace A340072

/-- `A160595(A045965(n+1))` -/
def P17056082640464257478.Spec : Prop :=
  ∀ n, P17056082640464257478.a n = A340072 (n + 1)

end A340072

/-! ## A340072.P13322712882662123710

`A160595(A253885(n)+1)`
-/

namespace A340072.P13322712882662123710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (A253885 n + 1).toNat

end

end A340072.P13322712882662123710

namespace A340072

/-- `A160595(A253885(n)+1)` -/
def P13322712882662123710.Spec : Prop :=
  ∀ n, P13322712882662123710.a n = A340072 (n + 1)

end A340072

/-! ## A340072.P2767617707937154879

`A003972(n+1)/A049559(A003961(n+1))`
-/

namespace A340072.P2767617707937154879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003972 (n + 1) : ℚ) / (A049559 (A003961 (n + 1)).toNat : ℚ)

end

end A340072.P2767617707937154879

namespace A340072

/-- `A003972(n+1)/A049559(A003961(n+1))` -/
def P2767617707937154879.Spec : Prop :=
  ∀ n, P2767617707937154879.a n = (A340072 (n + 1) : ℚ)

end A340072

/-!
# A340073: a(n) = (x-1) / gcd(x-1, phi(x)), where x = A003961(n), i.e., n with its prime factorization shifted one step towards larger primes.

The programs for A340073, the canonical program `A340073.P3788294706891105831` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340073 has offset 1).

The definition of A340073 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253885, A340071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340073.P3788294706891105831

`A253885(n)/A340071(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340073

/-- `A253885(n)/A340071(n+1)` -/
def P3788294706891105831.Spec : Prop :=
  ∀ n, P3788294706891105831.a n = (A340073 (n + 1) : ℚ)

end A340073

/-! ## A340073.P14288017072123698631

`(A003961(n+1)-1)/A340071(n+1)`
-/

namespace A340073.P14288017072123698631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - 1 : ℚ) / (A340071 (n + 1) : ℚ)

end

end A340073.P14288017072123698631

namespace A340073

/-- `(A003961(n+1)-1)/A340071(n+1)` -/
def P14288017072123698631.Spec : Prop :=
  ∀ n, P14288017072123698631.a n = (A340073 (n + 1) : ℚ)

end A340073

/-! ## A340073.P7343191385523304713

`A253885(n)/gcd(A003972(n+1), A253885(n))`
-/

namespace A340073.P7343191385523304713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n : ℚ) / (Int.gcd (A003972 (n + 1)) (A253885 n) : ℚ)

end

end A340073.P7343191385523304713

namespace A340073

/-- `A253885(n)/gcd(A003972(n+1), A253885(n))` -/
def P7343191385523304713.Spec : Prop :=
  ∀ n, P7343191385523304713.a n = (A340073 (n + 1) : ℚ)

end A340073

/-! ## A340073.P48489690597813002

`A340072(n+1)/A003972(n+1)*A253885(n)`
-/

namespace A340073.P48489690597813002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340072 (n + 1) : ℚ) / (A003972 (n + 1) : ℚ) * (A253885 n : ℚ)

end

end A340073.P48489690597813002

namespace A340073

/-- `A340072(n+1)/A003972(n+1)*A253885(n)` -/
def P48489690597813002.Spec : Prop :=
  ∀ n, P48489690597813002.a n = (A340073 (n + 1) : ℚ)

end A340073

/-! ## A340073.P3461539032841371916

`A253885(n)/A049559(A003961(n+1))`
-/

namespace A340073.P3461539032841371916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n : ℚ) / (A049559 (A003961 (n + 1)).toNat : ℚ)

end

end A340073.P3461539032841371916

namespace A340073

/-- `A253885(n)/A049559(A003961(n+1))` -/
def P3461539032841371916.Spec : Prop :=
  ∀ n, P3461539032841371916.a n = (A340073 (n + 1) : ℚ)

end A340073

/-! ## A340073.P14594198319336121658

`A253885(n)/A049559(A253885(n)+1)`
-/

namespace A340073.P14594198319336121658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n : ℚ) / (A049559 (A253885 n + 1).toNat : ℚ)

end

end A340073.P14594198319336121658

namespace A340073

/-- `A253885(n)/A049559(A253885(n)+1)` -/
def P14594198319336121658.Spec : Prop :=
  ∀ n, P14594198319336121658.a n = (A340073 (n + 1) : ℚ)

end A340073

/-!
# A340074: a(n) = gcd(A003961(n)-1, A339904(n)).

The programs for A340074, the canonical program `A340074.P15642945352371498565` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340074 has offset 1).

The definition of A340074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A339904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340074.P9715847898431689287

`A000265(A340071(n+1))`
-/

namespace A340074.P9715847898431689287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340071 (n + 1)).toNat

end

end A340074.P9715847898431689287

namespace A340074

/-- `A000265(A340071(n+1))` -/
def P9715847898431689287.Spec : Prop :=
  ∀ n, P9715847898431689287.a n = A340074 (n + 1)

end A340074

/-! ## A340074.P12353815175865758932

`A339904(n+1)/A340075(n+1)`
-/

namespace A340074.P12353815175865758932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339904 (n + 1) : ℚ) / (A340075 (n + 1) : ℚ)

end

end A340074.P12353815175865758932

namespace A340074

/-- `A339904(n+1)/A340075(n+1)` -/
def P12353815175865758932.Spec : Prop :=
  ∀ n, P12353815175865758932.a n = (A340074 (n + 1) : ℚ)

end A340074

/-! ## A340074.P15642945352371498565

`gcd(A003961(n+1)-1, A339904(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340074

/-- `gcd(A003961(n+1)-1, A339904(n+1))` -/
def P15642945352371498565.Spec : Prop :=
  ∀ n, (P15642945352371498565.a n : ℤ) = A340074 (n + 1)

theorem P15642945352371498565.correct : P15642945352371498565.Spec := by
  intro n
  simp only [A340074, Nat.add_sub_cancel]

end A340074

/-! ## A340074.P2741281747945099296

`gcd(A108228(n+1), A339904(n+1))`
-/

namespace A340074.P2741281747945099296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108228 (n + 1)) (A339904 (n + 1))

end

end A340074.P2741281747945099296

namespace A340074

/-- `gcd(A108228(n+1), A339904(n+1))` -/
def P2741281747945099296.Spec : Prop :=
  ∀ n, (P2741281747945099296.a n : ℤ) = A340074 (n + 1)

end A340074

/-! ## A340074.P16562928472324768572

`A000265(A003972(n+1)/A340072(n+1))`
-/

namespace A340074.P16562928472324768572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A003972 (n + 1) : ℚ) / (A340072 (n + 1) : ℚ))).toNat

end

end A340074.P16562928472324768572

namespace A340074

/-- `A000265(A003972(n+1)/A340072(n+1))` -/
def P16562928472324768572.Spec : Prop :=
  ∀ n, P16562928472324768572.a n = A340074 (n + 1)

end A340074

/-! ## A340074.P6755874842375563685

`A000265(A003972(n+1)/A340075(n+1))`
-/

namespace A340074.P6755874842375563685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A003972 (n + 1) : ℚ) / (A340075 (n + 1) : ℚ))).toNat

end

end A340074.P6755874842375563685

namespace A340074

/-- `A000265(A003972(n+1)/A340075(n+1))` -/
def P6755874842375563685.Spec : Prop :=
  ∀ n, P6755874842375563685.a n = A340074 (n + 1)

end A340074

/-! ## A340074.P17237095625413945126

`A339904(n+1)/A000265(A340072(n+1))`
-/

namespace A340074.P17237095625413945126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339904 (n + 1) : ℚ) / (A000265 (A340072 (n + 1)).toNat : ℚ)

end

end A340074.P17237095625413945126

namespace A340074

/-- `A339904(n+1)/A000265(A340072(n+1))` -/
def P17237095625413945126.Spec : Prop :=
  ∀ n, P17237095625413945126.a n = (A340074 (n + 1) : ℚ)

end A340074

/-! ## A340074.P12831960589328495906

`A053575(A003961(n+1))/A340075(n+1)`
-/

namespace A340074.P12831960589328495906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053575 (A003961 (n + 1)).toNat : ℚ) / (A340075 (n + 1) : ℚ)

end

end A340074.P12831960589328495906

namespace A340074

/-- `A053575(A003961(n+1))/A340075(n+1)` -/
def P12831960589328495906.Spec : Prop :=
  ∀ n, P12831960589328495906.a n = (A340074 (n + 1) : ℚ)

end A340074

/-! ## A340074.P1950754014705501801

`A053575(A045965(n+1))/A340075(n+1)`
-/

namespace A340074.P1950754014705501801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053575 (A045965 (n + 1)).toNat : ℚ) / (A340075 (n + 1) : ℚ)

end

end A340074.P1950754014705501801

namespace A340074

/-- `A053575(A045965(n+1))/A340075(n+1)` -/
def P1950754014705501801.Spec : Prop :=
  ∀ n, P1950754014705501801.a n = (A340074 (n + 1) : ℚ)

end A340074

/-! ## A340074.P1720746878117127388

`A053575(A253885(n)+1)/A340075(n+1)`
-/

namespace A340074.P1720746878117127388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053575 (A253885 n + 1).toNat : ℚ) / (A340075 (n + 1) : ℚ)

end

end A340074.P1720746878117127388

namespace A340074

/-- `A053575(A253885(n)+1)/A340075(n+1)` -/
def P1720746878117127388.Spec : Prop :=
  ∀ n, P1720746878117127388.a n = (A340074 (n + 1) : ℚ)

end A340074

/-! ## A340074.P18227801329784111027

`A053575(A243501(n+1)-1)/A340075(n+1)`
-/

namespace A340074.P18227801329784111027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053575 (A243501 (n + 1) - 1).toNat : ℚ) / (A340075 (n + 1) : ℚ)

end

end A340074.P18227801329784111027

namespace A340074

/-- `A053575(A243501(n+1)-1)/A340075(n+1)` -/
def P18227801329784111027.Spec : Prop :=
  ∀ n, P18227801329784111027.a n = (A340074 (n + 1) : ℚ)

end A340074

/-! ## A340074.P1672612398919246705

`A053575(2*A048673(n+1)-1)/A340075(n+1)`
-/

namespace A340074.P1672612398919246705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053575 (2 * A048673 (n + 1) - 1).toNat : ℚ) / (A340075 (n + 1) : ℚ)

end

end A340074.P1672612398919246705

namespace A340074

/-- `A053575(2*A048673(n+1)-1)/A340075(n+1)` -/
def P1672612398919246705.Spec : Prop :=
  ∀ n, P1672612398919246705.a n = (A340074 (n + 1) : ℚ)

end A340074

/-! ## A340074.P4848339716042407657

`A053575(2*A048673(n+1)-1)/A000265(A340072(n+1))`
-/

namespace A340074.P4848339716042407657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053575 (2 * A048673 (n + 1) - 1).toNat : ℚ) / (A000265 (A340072 (n + 1)).toNat : ℚ)

end

end A340074.P4848339716042407657

namespace A340074

/-- `A053575(2*A048673(n+1)-1)/A000265(A340072(n+1))` -/
def P4848339716042407657.Spec : Prop :=
  ∀ n, P4848339716042407657.a n = (A340074 (n + 1) : ℚ)

end A340074

/-! ## A340074.P15648061234169129325

`gcd(A217858(n+1), A340071(n+1))`
-/

namespace A340074.P15648061234169129325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217858 (n + 1)) (A340071 (n + 1))

end

end A340074.P15648061234169129325

namespace A340074

/-- `gcd(A217858(n+1), A340071(n+1))` -/
def P15648061234169129325.Spec : Prop :=
  ∀ n, (P15648061234169129325.a n : ℤ) = A340074 (n + 1)

end A340074

/-! ## A340074.P11749925611151630927

`A340084((A340071(n+1)+1)²)`
-/

namespace A340074.P11749925611151630927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340084 ((A340071 (n + 1) + 1) ^ 2).toNat

end

end A340074.P11749925611151630927

namespace A340074

/-- `A340084((A340071(n+1)+1)²)` -/
def P11749925611151630927.Spec : Prop :=
  ∀ n, P11749925611151630927.a n = A340074 (n + 1)

end A340074

/-! ## A340074.P3867734277061229686

`gcd(A133221(n), A340071(n+1))`
-/

namespace A340074.P3867734277061229686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133221 n) (A340071 (n + 1))

end

end A340074.P3867734277061229686

namespace A340074

/-- `gcd(A133221(n), A340071(n+1))` -/
def P3867734277061229686.Spec : Prop :=
  ∀ n, (P3867734277061229686.a n : ℤ) = A340074 (n + 1)

end A340074

/-!
# A340075: The odd part of A340072(n).

The programs for A340075, the canonical program `A340075.P18306248190705191275` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340075 has offset 1).

The definition of A340075 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340072, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340075.P16779196783479799454

`A339904(n+1)/A340074(n+1)`
-/

namespace A340075.P16779196783479799454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339904 (n + 1) : ℚ) / (A340074 (n + 1) : ℚ)

end

end A340075.P16779196783479799454

namespace A340075

/-- `A339904(n+1)/A340074(n+1)` -/
def P16779196783479799454.Spec : Prop :=
  ∀ n, P16779196783479799454.a n = (A340075 (n + 1) : ℚ)

end A340075

/-! ## A340075.P617153431914751034

`A339904(n+1)/gcd(A003961(n+1)-1, A339904(n+1))`
-/

namespace A340075.P617153431914751034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339904 (n + 1) : ℚ) / (Int.gcd (A003961 (n + 1) - 1) (A339904 (n + 1)) : ℚ)

end

end A340075.P617153431914751034

namespace A340075

/-- `A339904(n+1)/gcd(A003961(n+1)-1, A339904(n+1))` -/
def P617153431914751034.Spec : Prop :=
  ∀ n, P617153431914751034.a n = (A340075 (n + 1) : ℚ)

end A340075

/-! ## A340075.P18306248190705191275

`A000265(A340072(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340075

/-- `A000265(A340072(n+1))` -/
def P18306248190705191275.Spec : Prop :=
  ∀ n, P18306248190705191275.a n = A340075 (n + 1)

theorem P18306248190705191275.correct : P18306248190705191275.Spec := by
  intro n
  simp only [A340075, Nat.add_sub_cancel]

end A340075

/-! ## A340075.P8353323727930238034

`gcd(A339904(n+1), A340072(n+1))`
-/

namespace A340075.P8353323727930238034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A339904 (n + 1)) (A340072 (n + 1))

end

end A340075.P8353323727930238034

namespace A340075

/-- `gcd(A339904(n+1), A340072(n+1))` -/
def P8353323727930238034.Spec : Prop :=
  ∀ n, (P8353323727930238034.a n : ℤ) = A340075 (n + 1)

end A340075

/-! ## A340075.P15863693204209465165

`A339904(n+1)/A000265(A340071(n+1))`
-/

namespace A340075.P15863693204209465165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339904 (n + 1) : ℚ) / (A000265 (A340071 (n + 1)).toNat : ℚ)

end

end A340075.P15863693204209465165

namespace A340075

/-- `A339904(n+1)/A000265(A340071(n+1))` -/
def P15863693204209465165.Spec : Prop :=
  ∀ n, P15863693204209465165.a n = (A340075 (n + 1) : ℚ)

end A340075

/-! ## A340075.P694948993503249496

`A000265(A003972(n+1)/A340071(n+1))`
-/

namespace A340075.P694948993503249496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A003972 (n + 1) : ℚ) / (A340071 (n + 1) : ℚ))).toNat

end

end A340075.P694948993503249496

namespace A340075

/-- `A000265(A003972(n+1)/A340071(n+1))` -/
def P694948993503249496.Spec : Prop :=
  ∀ n, P694948993503249496.a n = A340075 (n + 1)

end A340075

/-! ## A340075.P7181265093340478754

`A000265(A003972(n+1)/A340074(n+1))`
-/

namespace A340075.P7181265093340478754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A003972 (n + 1) : ℚ) / (A340074 (n + 1) : ℚ))).toNat

end

end A340075.P7181265093340478754

namespace A340075

/-- `A000265(A003972(n+1)/A340074(n+1))` -/
def P7181265093340478754.Spec : Prop :=
  ∀ n, P7181265093340478754.a n = A340075 (n + 1)

end A340075

/-! ## A340075.P421764991688681652

`A000265(A160595(A003961(n+1)))`
-/

namespace A340075.P421764991688681652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A160595 (A003961 (n + 1)).toNat).toNat

end

end A340075.P421764991688681652

namespace A340075

/-- `A000265(A160595(A003961(n+1)))` -/
def P421764991688681652.Spec : Prop :=
  ∀ n, P421764991688681652.a n = A340075 (n + 1)

end A340075

/-! ## A340075.P4476021071204453259

`A353412(2*A340072(n+1))`
-/

namespace A340075.P4476021071204453259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (2 * A340072 (n + 1)).toNat

end

end A340075.P4476021071204453259

namespace A340075

/-- `A353412(2*A340072(n+1))` -/
def P4476021071204453259.Spec : Prop :=
  ∀ n, P4476021071204453259.a n = A340075 (n + 1)

end A340075

/-! ## A340075.P10789035604596824912

`A053575(A003961(n+1))/A340074(n+1)`
-/

namespace A340075.P10789035604596824912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053575 (A003961 (n + 1)).toNat : ℚ) / (A340074 (n + 1) : ℚ)

end

end A340075.P10789035604596824912

namespace A340075

/-- `A053575(A003961(n+1))/A340074(n+1)` -/
def P10789035604596824912.Spec : Prop :=
  ∀ n, P10789035604596824912.a n = (A340075 (n + 1) : ℚ)

end A340075

/-! ## A340075.P14180692550489331925

`A053575(A045965(n+1))/A340074(n+1)`
-/

namespace A340075.P14180692550489331925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053575 (A045965 (n + 1)).toNat : ℚ) / (A340074 (n + 1) : ℚ)

end

end A340075.P14180692550489331925

namespace A340075

/-- `A053575(A045965(n+1))/A340074(n+1)` -/
def P14180692550489331925.Spec : Prop :=
  ∀ n, P14180692550489331925.a n = (A340075 (n + 1) : ℚ)

end A340075

/-! ## A340075.P17041859914850711194

`A053575(A253885(n)+1)/A340074(n+1)`
-/

namespace A340075.P17041859914850711194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053575 (A253885 n + 1).toNat : ℚ) / (A340074 (n + 1) : ℚ)

end

end A340075.P17041859914850711194

namespace A340075

/-- `A053575(A253885(n)+1)/A340074(n+1)` -/
def P17041859914850711194.Spec : Prop :=
  ∀ n, P17041859914850711194.a n = (A340075 (n + 1) : ℚ)

end A340075

/-! ## A340075.P5540804306426450609

`A053575(A243501(n+1)-1)/A340074(n+1)`
-/

namespace A340075.P5540804306426450609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053575 (A243501 (n + 1) - 1).toNat : ℚ) / (A340074 (n + 1) : ℚ)

end

end A340075.P5540804306426450609

namespace A340075

/-- `A053575(A243501(n+1)-1)/A340074(n+1)` -/
def P5540804306426450609.Spec : Prop :=
  ∀ n, P5540804306426450609.a n = (A340075 (n + 1) : ℚ)

end A340075

/-! ## A340075.P12821375112007623119

`A053575(2*A048673(n+1)-1)/A340074(n+1)`
-/

namespace A340075.P12821375112007623119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053575 (2 * A048673 (n + 1) - 1).toNat : ℚ) / (A340074 (n + 1) : ℚ)

end

end A340075.P12821375112007623119

namespace A340075

/-- `A053575(2*A048673(n+1)-1)/A340074(n+1)` -/
def P12821375112007623119.Spec : Prop :=
  ∀ n, P12821375112007623119.a n = (A340075 (n + 1) : ℚ)

end A340075

/-!
# A340076: Positions of ones in A340075.

The programs for A340076, the canonical program `A340076.P9543000628144570733` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340076 has offset 1).

The definition of A340076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340076.P9543000628144570733

`eq[1, A340075(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340076

/-- `eq[1, A340075(n+1)]+1` -/
def P9543000628144570733.Spec : Prop :=
  ∀ n, (P9543000628144570733.a n : ℤ) = A340076 (n + 1)

theorem P9543000628144570733.correct : P9543000628144570733.Spec := by
  intro n
  simp only [A340076, Nat.add_sub_cancel]

end A340076

/-! ## A340076.P4609874302223375042

`record[A000027(n+1)/A340075(n+1)]`
-/

namespace A340076.P4609874302223375042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A340075 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340076.P4609874302223375042

namespace A340076

/-- `record[A000027(n+1)/A340075(n+1)]` -/
def P4609874302223375042.Spec : Prop :=
  ∀ n, P4609874302223375042.a n = (A340076 (n + 1) : ℚ)

end A340076

/-! ## A340076.P2456756138860703620

`record[A007913(n+1)/A340075(n+1)]`
-/

namespace A340076.P2456756138860703620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A340075 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340076.P2456756138860703620

namespace A340076

/-- `record[A007913(n+1)/A340075(n+1)]` -/
def P2456756138860703620.Spec : Prop :=
  ∀ n, P2456756138860703620.a n = (A340076 (n + 1) : ℚ)

end A340076

/-! ## A340076.P10670629624652563361

`record[A007947(n+1)/A340075(n+1)]`
-/

namespace A340076.P10670629624652563361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A340075 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340076.P10670629624652563361

namespace A340076

/-- `record[A007947(n+1)/A340075(n+1)]` -/
def P10670629624652563361.Spec : Prop :=
  ∀ n, P10670629624652563361.a n = (A340076 (n + 1) : ℚ)

end A340076

/-! ## A340076.P1779104481704008854

`record[A175067(n+1)/A340075(n+1)]`
-/

namespace A340076.P1779104481704008854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175067 (n + 1) : ℚ) / (A340075 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340076.P1779104481704008854

namespace A340076

/-- `record[A175067(n+1)/A340075(n+1)]` -/
def P1779104481704008854.Spec : Prop :=
  ∀ n, P1779104481704008854.a n = (A340076 (n + 1) : ℚ)

end A340076

/-! ## A340076.P10650972818830221286

`record[A005843(n+1)/(A340075(n+1)+1)]`
-/

namespace A340076.P10650972818830221286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A340075 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340076.P10650972818830221286

namespace A340076

/-- `record[A005843(n+1)/(A340075(n+1)+1)]` -/
def P10650972818830221286.Spec : Prop :=
  ∀ n, P10650972818830221286.a n = (A340076 (n + 1) : ℚ)

end A340076

/-! ## A340076.P9989130878745920311

`eq[A057427(n), A340075(A028310(n))]`
-/

namespace A340076.P9989130878745920311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340075 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340076.P9989130878745920311

namespace A340076

/-- `eq[A057427(n), A340075(A028310(n))]` -/
def P9989130878745920311.Spec : Prop :=
  ∀ n, (P9989130878745920311.a n : ℤ) = A340076 (n + 1)

end A340076

/-! ## A340076.P17240494131175114122

`record[A340150(n+1)/A340075(A340150(n+1))]`
-/

namespace A340076.P17240494131175114122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340150 (n + 1) : ℚ) / (A340075 (A340150 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340076.P17240494131175114122

namespace A340076

/-- `record[A340150(n+1)/A340075(A340150(n+1))]` -/
def P17240494131175114122.Spec : Prop :=
  ∀ n, P17240494131175114122.a n = (A340076 (n + 1) : ℚ)

end A340076

/-! ## A340076.P3050236852074956798

`lt[A340075(n+1), A060474(A014963(n+1)+1)]+1`
-/

namespace A340076.P3050236852074956798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060474 (A014963 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A340076.P3050236852074956798

namespace A340076

/-- `lt[A340075(n+1), A060474(A014963(n+1)+1)]+1` -/
def P3050236852074956798.Spec : Prop :=
  ∀ n, (P3050236852074956798.a n : ℤ) = A340076 (n + 1)

end A340076

/-! ## A340076.P11550330060285890567

`eq[1, A000265(A340072(n+1))]+1`
-/

namespace A340076.P11550330060285890567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340072 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340076.P11550330060285890567

namespace A340076

/-- `eq[1, A000265(A340072(n+1))]+1` -/
def P11550330060285890567.Spec : Prop :=
  ∀ n, (P11550330060285890567.a n : ℤ) = A340076 (n + 1)

end A340076

/-! ## A340076.P1062879757625197319

`record[n+1-A195145(A340075(n+1)-1)]`
-/

namespace A340076.P1062879757625197319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A195145 (A340075 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340076.P1062879757625197319

namespace A340076

/-- `record[n+1-A195145(A340075(n+1)-1)]` -/
def P1062879757625197319.Spec : Prop :=
  ∀ n, P1062879757625197319.a n = A340076 (n + 1)

end A340076

/-!
# A340077: Odd numbers k for which k-1 is a multiple of A053575(k) [the odd part of phi(k)].

The programs for A340077, the canonical program `A340077.P4965275238882389020` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340077 has offset 1).

The definition of A340077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9673 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340077.P10966385319211305503

`∩[2*n+1, A339879(n+1)]`
-/

namespace A340077.P10966385319211305503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340077.P10966385319211305503

namespace A340077

/-- `∩[2*n+1, A339879(n+1)]` -/
def P10966385319211305503.Spec : Prop :=
  ∀ n, (P10966385319211305503.a n : ℤ) = A340077 (n + 1)

end A340077

/-! ## A340077.P4965275238882389020

`record[A000265(A339879(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A340077

/-- `record[A000265(A339879(n+1))]` -/
def P4965275238882389020.Spec : Prop :=
  ∀ n, P4965275238882389020.a n = A340077 (n + 1)

theorem P4965275238882389020.correct : P4965275238882389020.Spec := by
  intro n
  simp only [A340077, Nat.add_sub_cancel]

end A340077

/-! ## A340077.P6922784654626926641

`filter[A339879(n+1), A374134(#)]`
-/

namespace A340077.P6922784654626926641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A340077.P6922784654626926641

namespace A340077

/-- `filter[A339879(n+1), A374134(#)]` -/
def P6922784654626926641.Spec : Prop :=
  ∀ n, P6922784654626926641.a n = A340077 (n + 1)

end A340077

/-! ## A340077.P16328104130196372999

`filter[A339879(n+1), A323239(#)]`
-/

namespace A340077.P16328104130196372999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A340077.P16328104130196372999

namespace A340077

/-- `filter[A339879(n+1), A323239(#)]` -/
def P16328104130196372999.Spec : Prop :=
  ∀ n, P16328104130196372999.a n = A340077 (n + 1)

end A340077

/-! ## A340077.P3881939186885498879

`record[A000265(n+1)/A000265(A160595(n+1))]`
-/

namespace A340077.P3881939186885498879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A000265 (A160595 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340077.P3881939186885498879

namespace A340077

/-- `record[A000265(n+1)/A000265(A160595(n+1))]` -/
def P3881939186885498879.Spec : Prop :=
  ∀ n, P3881939186885498879.a n = (A340077 (n + 1) : ℚ)

end A340077

/-! ## A340077.P15757248918428457450

`record[(2*n+1)/A000593(A160595(2*n+1))]`
-/

namespace A340077.P15757248918428457450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A000593 (A160595 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340077.P15757248918428457450

namespace A340077

/-- `record[(2*n+1)/A000593(A160595(2*n+1))]` -/
def P15757248918428457450.Spec : Prop :=
  ∀ n, P15757248918428457450.a n = (A340077 (n + 1) : ℚ)

end A340077

/-! ## A340077.P10272492240126932329

`∩[A339879(n+1), A004273(n)]`
-/

namespace A340077.P10272492240126932329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340077.P10272492240126932329

namespace A340077

/-- `∩[A339879(n+1), A004273(n)]` -/
def P10272492240126932329.Spec : Prop :=
  ∀ n, (P10272492240126932329.a n : ℤ) = A340077 (n + 1)

end A340077

/-! ## A340077.P6188583696015666359

`∩[A339879(n+1), A060747(n)]`
-/

namespace A340077.P6188583696015666359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340077.P6188583696015666359

namespace A340077

/-- `∩[A339879(n+1), A060747(n)]` -/
def P6188583696015666359.Spec : Prop :=
  ∀ n, (P6188583696015666359.a n : ℤ) = A340077 (n + 1)

end A340077

/-! ## A340077.P16845665168871707641

`filter[A339879(n+1), A000035(#)]`
-/

namespace A340077.P16845665168871707641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A340077.P16845665168871707641

namespace A340077

/-- `filter[A339879(n+1), A000035(#)]` -/
def P16845665168871707641.Spec : Prop :=
  ∀ n, P16845665168871707641.a n = A340077 (n + 1)

end A340077

/-! ## A340077.P985905402989894563

`record[A204455(n+1)/A340085(n+1)]`
-/

namespace A340077.P985905402989894563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204455 (n + 1) : ℚ) / (A340085 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340077.P985905402989894563

namespace A340077

/-- `record[A204455(n+1)/A340085(n+1)]` -/
def P985905402989894563.Spec : Prop :=
  ∀ n, P985905402989894563.a n = (A340077 (n + 1) : ℚ)

end A340077

/-! ## A340077.P313218977806708616

`record[A000265(n+1)/A340075(A064989(n+1))]`
-/

namespace A340077.P313218977806708616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A340075 (A064989 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340077.P313218977806708616

namespace A340077

/-- `record[A000265(n+1)/A340075(A064989(n+1))]` -/
def P313218977806708616.Spec : Prop :=
  ∀ n, P313218977806708616.a n = (A340077 (n + 1) : ℚ)

end A340077

/-!
# A340078: a(n) = gcd(n, 1+A018804(n)), where A018804(n) = Sum_{k=1..n} gcd(k, n).

The programs for A340078, the canonical program `A340078.P18087616502759424446` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340078 has offset 1).

The definition of A340078 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340078.P18087616502759424446

`gcd(n+1, 1+A018804(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A340078

/-- `gcd(n+1, 1+A018804(n+1))` -/
def P18087616502759424446.Spec : Prop :=
  ∀ n, (P18087616502759424446.a n : ℤ) = A340078 (n + 1)

theorem P18087616502759424446.correct : P18087616502759424446.Spec := by
  intro n
  simp only [A340078, Nat.add_sub_cancel]

end A340078

/-! ## A340078.P9434537272961669191

`(n+1)/A340079(n+1)`
-/

namespace A340078.P9434537272961669191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A340079 (n + 1) : ℚ)

end

end A340078.P9434537272961669191

namespace A340078

/-- `(n+1)/A340079(n+1)` -/
def P9434537272961669191.Spec : Prop :=
  ∀ n, P9434537272961669191.a n = (A340078 (n + 1) : ℚ)

end A340078

/-! ## A340078.P8071300620726014984

`gcd(n+1, A268631(n+1))`
-/

namespace A340078.P8071300620726014984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A268631 (n + 1))

end

end A340078.P8071300620726014984

namespace A340078

/-- `gcd(n+1, A268631(n+1))` -/
def P8071300620726014984.Spec : Prop :=
  ∀ n, (P8071300620726014984.a n : ℤ) = A340078 (n + 1)

end A340078

/-! ## A340078.P18366831274413488675

`gcd(A018804(n+1)-n, A131738(n))`
-/

namespace A340078.P18366831274413488675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018804 (n + 1) - (n : ℤ)) (A131738 n)

end

end A340078.P18366831274413488675

namespace A340078

/-- `gcd(A018804(n+1)-n, A131738(n))` -/
def P18366831274413488675.Spec : Prop :=
  ∀ n, (P18366831274413488675.a n : ℤ) = A340078 (n + 1)

end A340078

/-! ## A340078.P2566950385409417227

`ceil(A018804(n+1)/A340080(n+1))`
-/

namespace A340078.P2566950385409417227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018804 (n + 1) : ℚ) / (A340080 (n + 1) : ℚ)⌉

end

end A340078.P2566950385409417227

namespace A340078

/-- `ceil(A018804(n+1)/A340080(n+1))` -/
def P2566950385409417227.Spec : Prop :=
  ∀ n, P2566950385409417227.a n = A340078 (n + 1)

end A340078

/-! ## A340078.P17404096119119626269

`gcd(A209295(n+1)+1, A028310(n+1))`
-/

namespace A340078.P17404096119119626269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209295 (n + 1) + 1) (A028310 (n + 1))

end

end A340078.P17404096119119626269

namespace A340078

/-- `gcd(A209295(n+1)+1, A028310(n+1))` -/
def P17404096119119626269.Spec : Prop :=
  ∀ n, (P17404096119119626269.a n : ℤ) = A340078 (n + 1)

end A340078

/-! ## A340078.P1681516755481344261

`gcd(A209295(n+1)-n, A007913(n+1))`
-/

namespace A340078.P1681516755481344261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209295 (n + 1) - (n : ℤ)) (A007913 (n + 1))

end

end A340078.P1681516755481344261

namespace A340078

/-- `gcd(A209295(n+1)-n, A007913(n+1))` -/
def P1681516755481344261.Spec : Prop :=
  ∀ n, (P1681516755481344261.a n : ℤ) = A340078 (n + 1)

end A340078

/-! ## A340078.P12879682208859305735

`gcd(A209295(A000027(n+1))+1, A000027(n+1))`
-/

namespace A340078.P12879682208859305735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209295 (A000027 (n + 1)).toNat + 1) (A000027 (n + 1))

end

end A340078.P12879682208859305735

namespace A340078

/-- `gcd(A209295(A000027(n+1))+1, A000027(n+1))` -/
def P12879682208859305735.Spec : Prop :=
  ∀ n, (P12879682208859305735.a n : ℤ) = A340078 (n + 1)

end A340078

/-! ## A340078.P9817333340106415588

`gcd(A079097(A018804(n+1)), A131738(n))`
-/

namespace A340078.P9817333340106415588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079097 (A018804 (n + 1)).toNat) (A131738 n)

end

end A340078.P9817333340106415588

namespace A340078

/-- `gcd(A079097(A018804(n+1)), A131738(n))` -/
def P9817333340106415588.Spec : Prop :=
  ∀ n, (P9817333340106415588.a n : ℤ) = A340078 (n + 1)

end A340078

/-! ## A340078.P7169709330198313090

`A007913((n+1)*A340079(n+1))`
-/

namespace A340078.P7169709330198313090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A340079 (n + 1)).toNat

end

end A340078.P7169709330198313090

namespace A340078

/-- `A007913((n+1)*A340079(n+1))` -/
def P7169709330198313090.Spec : Prop :=
  ∀ n, P7169709330198313090.a n = A340078 (n + 1)

end A340078

/-! ## A340078.P2817886607809700312

`A010766(A340079(n+1)+A000217(n))`
-/

namespace A340078.P2817886607809700312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A340079 (n + 1) + A000217 n).toNat

end

end A340078.P2817886607809700312

namespace A340078

/-- `A010766(A340079(n+1)+A000217(n))` -/
def P2817886607809700312.Spec : Prop :=
  ∀ n, P2817886607809700312.a n = A340078 (n + 1)

end A340078

/-!
# A340079: a(n) = n / gcd(n, 1+A018804(n)), where A018804(n) = Sum_{k=1..n} gcd(k, n).

The programs for A340079, the canonical program `A340079.P6582088419165452979` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340079 has offset 1).

The definition of A340079 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340078, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340079.P6582088419165452979

`(n+1)/A340078(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A340079

/-- `(n+1)/A340078(n+1)` -/
def P6582088419165452979.Spec : Prop :=
  ∀ n, P6582088419165452979.a n = (A340079 (n + 1) : ℚ)

end A340079

/-! ## A340079.P726514951695839777

`(n+1)/gcd(n+1, 1+A018804(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340079.P726514951695839777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (1 + A018804 (n + 1)) : ℚ)

end

end A340079.P726514951695839777

namespace A340079

/-- `(n+1)/gcd(n+1, 1+A018804(n+1))` -/
def P726514951695839777.Spec : Prop :=
  ∀ n, P726514951695839777.a n = (A340079 (n + 1) : ℚ)

end A340079

/-! ## A340079.P8304533775066358287

`(n+1)/gcd(n+1, A268631(n+1))`
-/

namespace A340079.P8304533775066358287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A268631 (n + 1)) : ℚ)

end

end A340079.P8304533775066358287

namespace A340079

/-- `(n+1)/gcd(n+1, A268631(n+1))` -/
def P8304533775066358287.Spec : Prop :=
  ∀ n, P8304533775066358287.a n = (A340079 (n + 1) : ℚ)

end A340079

/-! ## A340079.P14075117870654367657

`(n+1)/ceil(A018804(n+1)/A340080(n+1))`
-/

namespace A340079.P14075117870654367657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈(A018804 (n + 1) : ℚ) / (A340080 (n + 1) : ℚ)⌉ : ℚ)

end

end A340079.P14075117870654367657

namespace A340079

/-- `(n+1)/ceil(A018804(n+1)/A340080(n+1))` -/
def P14075117870654367657.Spec : Prop :=
  ∀ n, P14075117870654367657.a n = (A340079 (n + 1) : ℚ)

end A340079

/-! ## A340079.P1398493242273977111

`(n+1)/gcd(A209295(n+1)-n, A007913(n+1))`
-/

namespace A340079.P1398493242273977111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A209295 (n + 1) - (n : ℤ)) (A007913 (n + 1)) : ℚ)

end

end A340079.P1398493242273977111

namespace A340079

/-- `(n+1)/gcd(A209295(n+1)-n, A007913(n+1))` -/
def P1398493242273977111.Spec : Prop :=
  ∀ n, P1398493242273977111.a n = (A340079 (n + 1) : ℚ)

end A340079

/-! ## A340079.P2347412971923567687

`A054531(A340078(n+1)+∑[n])`
-/

namespace A340079.P2347412971923567687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A340078 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A340079.P2347412971923567687

namespace A340079

/-- `A054531(A340078(n+1)+∑[n])` -/
def P2347412971923567687.Spec : Prop :=
  ∀ n, P2347412971923567687.a n = A340079 (n + 1)

end A340079

/-! ## A340079.P8253946498533916176

`A126988(A340078(n+1)+∑[n])`
-/

namespace A340079.P8253946498533916176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A340078 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A340079.P8253946498533916176

namespace A340079

/-- `A126988(A340078(n+1)+∑[n])` -/
def P8253946498533916176.Spec : Prop :=
  ∀ n, P8253946498533916176.a n = A340079 (n + 1)

end A340079

/-! ## A340079.P2452003076848229449

`A010766(A340078(n+1)+A000217(n))`
-/

namespace A340079.P2452003076848229449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A340078 (n + 1) + A000217 n).toNat

end

end A340079.P2452003076848229449

namespace A340079

/-- `A010766(A340078(n+1)+A000217(n))` -/
def P2452003076848229449.Spec : Prop :=
  ∀ n, P2452003076848229449.a n = A340079 (n + 1)

end A340079

/-!
# A340080: a(n) = (1+A018804(n)) / gcd(n, 1+A018804(n)), where A018804(n) = Sum_{k=1..n} gcd(k, n).

The programs for A340080, the canonical program `A340080.P13659753858061397286` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340080 has offset 1).

The definition of A340080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340080.P13659753858061397286

`(1+A018804(n+1))/gcd(n+1, 1+A018804(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A340080

/-- `(1+A018804(n+1))/gcd(n+1, 1+A018804(n+1))` -/
def P13659753858061397286.Spec : Prop :=
  ∀ n, P13659753858061397286.a n = (A340080 (n + 1) : ℚ)

end A340080

/-! ## A340080.P552086926043730112

`(A018804(n+1)+1)/A340078(n+1)`
-/

namespace A340080.P552086926043730112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) + 1 : ℚ) / (A340078 (n + 1) : ℚ)

end

end A340080.P552086926043730112

namespace A340080

/-- `(A018804(n+1)+1)/A340078(n+1)` -/
def P552086926043730112.Spec : Prop :=
  ∀ n, P552086926043730112.a n = (A340080 (n + 1) : ℚ)

end A340080

/-! ## A340080.P14246239708131789262

`A020725(A018804(n+1))/A340078(n+1)`
-/

namespace A340080.P14246239708131789262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (A018804 (n + 1)).toNat : ℚ) / (A340078 (n + 1) : ℚ)

end

end A340080.P14246239708131789262

namespace A340080

/-- `A020725(A018804(n+1))/A340078(n+1)` -/
def P14246239708131789262.Spec : Prop :=
  ∀ n, P14246239708131789262.a n = (A340080 (n + 1) : ℚ)

end A340080

/-! ## A340080.P8894067814145422841

`A020725(∑{d}[n+1, A029935(#)])/A340078(n+1)`
-/

namespace A340080.P8894067814145422841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (∑ d ∈ Nat.divisors (f1 n), A029935 d).toNat : ℚ) / (A340078 (n + 1) : ℚ)

end

end A340080.P8894067814145422841

namespace A340080

/-- `A020725(∑{d}[n+1, A029935(#)])/A340078(n+1)` -/
def P8894067814145422841.Spec : Prop :=
  ∀ n, P8894067814145422841.a n = (A340080 (n + 1) : ℚ)

end A340080

/-! ## A340080.P9365711619880409434

`A020725(A209295(n+1)-(n+1))/A340078(n+1)`
-/

namespace A340080.P9365711619880409434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (A209295 (n + 1) - (n + 1 : ℤ)).toNat : ℚ) / (A340078 (n + 1) : ℚ)

end

end A340080.P9365711619880409434

namespace A340080

/-- `A020725(A209295(n+1)-(n+1))/A340078(n+1)` -/
def P9365711619880409434.Spec : Prop :=
  ∀ n, P9365711619880409434.a n = (A340080 (n + 1) : ℚ)

end A340080

/-! ## A340080.P13004601658352303225

`A020725(A018804(n+1))/gcd(n+1, A268631(n+1))`
-/

namespace A340080.P13004601658352303225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (A018804 (n + 1)).toNat : ℚ) / (Int.gcd (n + 1 : ℤ) (A268631 (n + 1)) : ℚ)

end

end A340080.P13004601658352303225

namespace A340080

/-- `A020725(A018804(n+1))/gcd(n+1, A268631(n+1))` -/
def P13004601658352303225.Spec : Prop :=
  ∀ n, P13004601658352303225.a n = (A340080 (n + 1) : ℚ)

end A340080

/-! ## A340080.P13326432577760663665

`A020725(A268631(n+1)+2*n+1)/A340078(n+1)`
-/

namespace A340080.P13326432577760663665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (A268631 (n + 1) + (2 * n + 1 : ℤ)).toNat : ℚ) / (A340078 (n + 1) : ℚ)

end

end A340080.P13326432577760663665

namespace A340080

/-- `A020725(A268631(n+1)+2*n+1)/A340078(n+1)` -/
def P13326432577760663665.Spec : Prop :=
  ∀ n, P13326432577760663665.a n = (A340080 (n + 1) : ℚ)

end A340080

/-! ## A340080.P7094245529067254071

`A020725(∑{d}[n+1, (n+1)/#*A000010(#)])/A340078(n+1)`
-/

namespace A340080.P7094245529067254071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A000010 d : ℚ))).toNat : ℚ) / (A340078 (n + 1) : ℚ)

end

end A340080.P7094245529067254071

namespace A340080

/-- `A020725(∑{d}[n+1, (n+1)/#*A000010(#)])/A340078(n+1)` -/
def P7094245529067254071.Spec : Prop :=
  ∀ n, P7094245529067254071.a n = (A340080 (n + 1) : ℚ)

end A340080

/-!
# A340081: a(n) = gcd(n-1, A003958(n)).

The programs for A340081, the canonical program `A340081.P14898792459419955035` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340081 has offset 1).

The definition of A340081 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340081.P14898792459419955035

`gcd(n, A003958(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A340081

/-- `gcd(n, A003958(n+1))` -/
def P14898792459419955035.Spec : Prop :=
  ∀ n, (P14898792459419955035.a n : ℤ) = A340081 (n + 1)

theorem P14898792459419955035.correct : P14898792459419955035.Spec := by
  intro n
  simp only [A340081, Nat.add_sub_cancel]

end A340081

/-! ## A340081.P85855578987033915

`A003958(n+1)/A340082(n+1)`
-/

namespace A340081.P85855578987033915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A340082 (n + 1) : ℚ)

end

end A340081.P85855578987033915

namespace A340081

/-- `A003958(n+1)/A340082(n+1)` -/
def P85855578987033915.Spec : Prop :=
  ∀ n, P85855578987033915.a n = (A340081 (n + 1) : ℚ)

end A340081

/-! ## A340081.P8065619193979312416

`sqrt(gcd(n², A167343(n+1)))`
-/

namespace A340081.P8065619193979312416
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (n ^ 2 : ℤ) (A167343 (n + 1)) : ℝ)

end

end A340081.P8065619193979312416

namespace A340081

/-- `sqrt(gcd(n², A167343(n+1)))` -/
def P8065619193979312416.Spec : Prop :=
  ∀ n, P8065619193979312416.a n = (A340081 (n + 1) : ℝ)

end A340081

/-! ## A340081.P18230477268663012726

`gcd(A028310(n), A072194(n+1))`
-/

namespace A340081.P18230477268663012726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A072194 (n + 1))

end

end A340081.P18230477268663012726

namespace A340081

/-- `gcd(A028310(n), A072194(n+1))` -/
def P18230477268663012726.Spec : Prop :=
  ∀ n, (P18230477268663012726.a n : ℤ) = A340081 (n + 1)

end A340081

/-! ## A340081.P147517380987635697

`gcd(A079579(n+1), A103164(n))`
-/

namespace A340081.P147517380987635697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079579 (n + 1)) (A103164 n)

end

end A340081.P147517380987635697

namespace A340081

/-- `gcd(A079579(n+1), A103164(n))` -/
def P147517380987635697.Spec : Prop :=
  ∀ n, (P147517380987635697.a n : ℤ) = A340081 (n + 1)

end A340081

/-! ## A340081.P16189302778613998117

`gcd(A135639(n), A333787(n+1))`
-/

namespace A340081.P16189302778613998117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135639 n) (A333787 (n + 1))

end

end A340081.P16189302778613998117

namespace A340081

/-- `gcd(A135639(n), A333787(n+1))` -/
def P16189302778613998117.Spec : Prop :=
  ∀ n, (P16189302778613998117.a n : ℤ) = A340081 (n + 1)

end A340081

/-! ## A340081.P17810567725427011536

`gcd(A117495(n+1), A125131(n+1))`
-/

namespace A340081.P17810567725427011536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117495 (n + 1)) (A125131 (n + 1))

end

end A340081.P17810567725427011536

namespace A340081

/-- `gcd(A117495(n+1), A125131(n+1))` -/
def P17810567725427011536.Spec : Prop :=
  ∀ n, (P17810567725427011536.a n : ℤ) = A340081 (n + 1)

end A340081

/-! ## A340081.P16166336328791173516

`gcd(A079579(n+1)+n, A002378(n))`
-/

namespace A340081.P16166336328791173516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079579 (n + 1) + (n : ℤ)) (A002378 n)

end

end A340081.P16166336328791173516

namespace A340081

/-- `gcd(A079579(n+1)+n, A002378(n))` -/
def P16166336328791173516.Spec : Prop :=
  ∀ n, (P16166336328791173516.a n : ℤ) = A340081 (n + 1)

end A340081

/-! ## A340081.P5747024657482752043

`A008458(n)/A008458(A340083(n+1))`
-/

namespace A340081.P5747024657482752043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / (A008458 (A340083 (n + 1)).toNat : ℚ)

end

end A340081.P5747024657482752043

namespace A340081

/-- `A008458(n)/A008458(A340083(n+1))` -/
def P5747024657482752043.Spec : Prop :=
  ∀ n, P5747024657482752043.a n = (A340081 (n + 1) : ℚ)

end A340081

/-! ## A340081.P9104211460605393401

`gcd(n, A125131(A103517(n)))`
-/

namespace A340081.P9104211460605393401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A125131 (A103517 n).toNat)

end

end A340081.P9104211460605393401

namespace A340081

/-- `gcd(n, A125131(A103517(n)))` -/
def P9104211460605393401.Spec : Prop :=
  ∀ n, (P9104211460605393401.a n : ℤ) = A340081 (n + 1)

end A340081

/-! ## A340081.P8110657516578942396

`gcd(A004934(n), A125131(2*(n+1)))`
-/

namespace A340081.P8110657516578942396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004934 n) (A125131 (2 * (n + 1)))

end

end A340081.P8110657516578942396

namespace A340081

/-- `gcd(A004934(n), A125131(2*(n+1)))` -/
def P8110657516578942396.Spec : Prop :=
  ∀ n, (P8110657516578942396.a n : ℤ) = A340081 (n + 1)

end A340081

/-! ## A340081.P3296700120246165965

`A109004(A003958(n+1)+∑[n])`
-/

namespace A340081.P3296700120246165965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A003958 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A340081.P3296700120246165965

namespace A340081

/-- `A109004(A003958(n+1)+∑[n])` -/
def P3296700120246165965.Spec : Prop :=
  ∀ n, P3296700120246165965.a n = A340081 (n + 1)

end A340081

/-!
# A340082: a(n) = A003958(n) / gcd(n-1, A003958(n)).

The programs for A340082, the canonical program `A340082.P8525962363158034396` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340082 has offset 1).

The definition of A340082 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A340081, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340082.P8525962363158034396

`A003958(n+1)/A340081(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A340082

/-- `A003958(n+1)/A340081(n+1)` -/
def P8525962363158034396.Spec : Prop :=
  ∀ n, P8525962363158034396.a n = (A340082 (n + 1) : ℚ)

end A340082

/-! ## A340082.P2398635573122524097

`A003958(n+1)/gcd(n, A003958(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340082.P2398635573122524097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (Int.gcd (n : ℤ) (A003958 (n + 1)) : ℚ)

end

end A340082.P2398635573122524097

namespace A340082

/-- `A003958(n+1)/gcd(n, A003958(n+1))` -/
def P2398635573122524097.Spec : Prop :=
  ∀ n, P2398635573122524097.a n = (A340082 (n + 1) : ℚ)

end A340082

/-! ## A340082.P16438378680195466665

`abs(A125131(n+1)/A340081(n+1))`
-/

namespace A340082.P16438378680195466665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A125131 (n + 1) : ℚ) / (A340081 (n + 1) : ℚ)|

end

end A340082.P16438378680195466665

namespace A340082

/-- `abs(A125131(n+1)/A340081(n+1))` -/
def P16438378680195466665.Spec : Prop :=
  ∀ n, P16438378680195466665.a n = (A340082 (n + 1) : ℚ)

end A340082

/-! ## A340082.P2828295374988026398

`A339905(A064989(n+1))/A340081(n+1)`
-/

namespace A340082.P2828295374988026398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339905 (A064989 (n + 1)).toNat : ℚ) / (A340081 (n + 1) : ℚ)

end

end A340082.P2828295374988026398

namespace A340082

/-- `A339905(A064989(n+1))/A340081(n+1)` -/
def P2828295374988026398.Spec : Prop :=
  ∀ n, P2828295374988026398.a n = (A340082 (n + 1) : ℚ)

end A340082

/-! ## A340082.P10132750905679661314

`lcm(A003958(n+1), A028310(n))/A028310(n)`
-/

namespace A340082.P10132750905679661314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003958 (n + 1)) (A028310 n) : ℚ) / (A028310 n : ℚ)

end

end A340082.P10132750905679661314

namespace A340082

/-- `lcm(A003958(n+1), A028310(n))/A028310(n)` -/
def P10132750905679661314.Spec : Prop :=
  ∀ n, P10132750905679661314.a n = (A340082 (n + 1) : ℚ)

end A340082

/-! ## A340082.P2262660982580834306

`A079579(n+1)/gcd(A002378(n), A079579(n+1))`
-/

namespace A340082.P2262660982580834306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079579 (n + 1) : ℚ) / (Int.gcd (A002378 n) (A079579 (n + 1)) : ℚ)

end

end A340082.P2262660982580834306

namespace A340082

/-- `A079579(n+1)/gcd(A002378(n), A079579(n+1))` -/
def P2262660982580834306.Spec : Prop :=
  ∀ n, P2262660982580834306.a n = (A340082 (n + 1) : ℚ)

end A340082

/-! ## A340082.P8895833974662622601

`A164306(A161680(n)+A003958(n+1))`
-/

namespace A340082.P8895833974662622601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A161680 n + A003958 (n + 1)).toNat

end

end A340082.P8895833974662622601

namespace A340082

/-- `A164306(A161680(n)+A003958(n+1))` -/
def P8895833974662622601.Spec : Prop :=
  ∀ n, P8895833974662622601.a n = A340082 (n + 1)

end A340082

/-!
# A340083: a(n) = (n-1) / gcd(n-1, A003958(n)).

The programs for A340083, the canonical program `A340083.P188478940144942709` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340083 has offset 1).

The definition of A340083 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340081, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340083.P188478940144942709

`n/A340081(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A340083

/-- `n/A340081(n+1)` -/
def P188478940144942709.Spec : Prop :=
  ∀ n, P188478940144942709.a n = (A340083 (n + 1) : ℚ)

end A340083

/-! ## A340083.P16194938875890310300

`n/gcd(n, A003958(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340083.P16194938875890310300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A003958 (n + 1)) : ℚ)

end

end A340083.P16194938875890310300

namespace A340083

/-- `n/gcd(n, A003958(n+1))` -/
def P16194938875890310300.Spec : Prop :=
  ∀ n, P16194938875890310300.a n = (A340083 (n + 1) : ℚ)

end A340083

/-! ## A340083.P17568519885716701830

`n/gcd(A079579(n+1), A103164(n))`
-/

namespace A340083.P17568519885716701830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (A079579 (n + 1)) (A103164 n) : ℚ)

end

end A340083.P17568519885716701830

namespace A340083

/-- `n/gcd(A079579(n+1), A103164(n))` -/
def P17568519885716701830.Spec : Prop :=
  ∀ n, P17568519885716701830.a n = (A340083 (n + 1) : ℚ)

end A340083

/-! ## A340083.P11439400148602778934

`n/gcd(A135639(n), A333787(n+1))`
-/

namespace A340083.P11439400148602778934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (A135639 n) (A333787 (n + 1)) : ℚ)

end

end A340083.P11439400148602778934

namespace A340083

/-- `n/gcd(A135639(n), A333787(n+1))` -/
def P11439400148602778934.Spec : Prop :=
  ∀ n, P11439400148602778934.a n = (A340083 (n + 1) : ℚ)

end A340083

/-! ## A340083.P4362220515572542693

`n/A003958(n+1)*A340082(n+1)`
-/

namespace A340083.P4362220515572542693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A003958 (n + 1) : ℚ) * (A340082 (n + 1) : ℚ)

end

end A340083.P4362220515572542693

namespace A340083

/-- `n/A003958(n+1)*A340082(n+1)` -/
def P4362220515572542693.Spec : Prop :=
  ∀ n, P4362220515572542693.a n = (A340083 (n + 1) : ℚ)

end A340083

/-! ## A340083.P3616630075247880626

`n/gcd(A117495(n+1), A125131(n+1))`
-/

namespace A340083.P3616630075247880626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (A117495 (n + 1)) (A125131 (n + 1)) : ℚ)

end

end A340083.P3616630075247880626

namespace A340083

/-- `n/gcd(A117495(n+1), A125131(n+1))` -/
def P3616630075247880626.Spec : Prop :=
  ∀ n, P3616630075247880626.a n = (A340083 (n + 1) : ℚ)

end A340083

/-! ## A340083.P11995441024499246483

`lcm(n, A003958(2*(n+1)))/A003958(2*(n+1))`
-/

namespace A340083.P11995441024499246483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A003958 (2 * (n + 1))) : ℚ) / (A003958 (2 * (n + 1)) : ℚ)

end

end A340083.P11995441024499246483

namespace A340083

/-- `lcm(n, A003958(2*(n+1)))/A003958(2*(n+1))` -/
def P11995441024499246483.Spec : Prop :=
  ∀ n, P11995441024499246483.a n = (A340083 (n + 1) : ℚ)

end A340083

/-! ## A340083.P13999872052281531984

`n/gcd(n, A125131(A103517(n)))`
-/

namespace A340083.P13999872052281531984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A125131 (A103517 n).toNat) : ℚ)

end

end A340083.P13999872052281531984

namespace A340083

/-- `n/gcd(n, A125131(A103517(n)))` -/
def P13999872052281531984.Spec : Prop :=
  ∀ n, P13999872052281531984.a n = (A340083 (n + 1) : ℚ)

end A340083

/-!
# A340084: a(n) = gcd(n-1, A336466(n)); Odd part of A340081(n).

The programs for A340084, the canonical program `A340084.P17512865495283900918` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340084 has offset 1).

The definition of A340084 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340084.P17512865495283900918

`gcd(n, A336466(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A340084

/-- `gcd(n, A336466(n+1))` -/
def P17512865495283900918.Spec : Prop :=
  ∀ n, (P17512865495283900918.a n : ℤ) = A340084 (n + 1)

theorem P17512865495283900918.correct : P17512865495283900918.Spec := by
  intro n
  simp only [A340084, Nat.add_sub_cancel]

end A340084

/-! ## A340084.P8809372452069052885

`A000265(A340081(n+1))`
-/

namespace A340084.P8809372452069052885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340081 (n + 1)).toNat

end

end A340084.P8809372452069052885

namespace A340084

/-- `A000265(A340081(n+1))` -/
def P8809372452069052885.Spec : Prop :=
  ∀ n, P8809372452069052885.a n = A340084 (n + 1)

end A340084

/-! ## A340084.P1911031240765165029

`A336466(n+1)/A340085(n+1)`
-/

namespace A340084.P1911031240765165029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336466 (n + 1) : ℚ) / (A340085 (n + 1) : ℚ)

end

end A340084.P1911031240765165029

namespace A340084

/-- `A336466(n+1)/A340085(n+1)` -/
def P1911031240765165029.Spec : Prop :=
  ∀ n, P1911031240765165029.a n = (A340084 (n + 1) : ℚ)

end A340084

/-! ## A340084.P12810926227467542566

`gcd(A335915(n+1), A340081(n+1))`
-/

namespace A340084.P12810926227467542566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335915 (n + 1)) (A340081 (n + 1))

end

end A340084.P12810926227467542566

namespace A340084

/-- `gcd(A335915(n+1), A340081(n+1))` -/
def P12810926227467542566.Spec : Prop :=
  ∀ n, (P12810926227467542566.a n : ℤ) = A340084 (n + 1)

end A340084

/-! ## A340084.P3792381902064397839

`A000265(gcd(A003958(n+1), A008574(n)))`
-/

namespace A340084.P3792381902064397839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.gcd (A003958 (n + 1)) (A008574 n))

end

end A340084.P3792381902064397839

namespace A340084

/-- `A000265(gcd(A003958(n+1), A008574(n)))` -/
def P3792381902064397839.Spec : Prop :=
  ∀ n, P3792381902064397839.a n = A340084 (n + 1)

end A340084

/-! ## A340084.P13415857179277135413

`gcd(A000265(A003958(n+1)), A008586(n))`
-/

namespace A340084.P13415857179277135413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A003958 (n + 1)).toNat) (A008586 n)

end

end A340084.P13415857179277135413

namespace A340084

/-- `gcd(A000265(A003958(n+1)), A008586(n))` -/
def P13415857179277135413.Spec : Prop :=
  ∀ n, (P13415857179277135413.a n : ℤ) = A340084 (n + 1)

end A340084

/-! ## A340084.P8083865473748037704

`A000265(A003958(n+1)/A340085(n+1))`
-/

namespace A340084.P8083865473748037704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A003958 (n + 1) : ℚ) / (A340085 (n + 1) : ℚ))).toNat

end

end A340084.P8083865473748037704

namespace A340084

/-- `A000265(A003958(n+1)/A340085(n+1))` -/
def P8083865473748037704.Spec : Prop :=
  ∀ n, P8083865473748037704.a n = A340084 (n + 1)

end A340084

/-! ## A340084.P11092623687163586804

`(A349912(n+1)-A349911(n+1))/A340085(n+1)`
-/

namespace A340084.P11092623687163586804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349912 (n + 1) - A349911 (n + 1) : ℚ) / (A340085 (n + 1) : ℚ)

end

end A340084.P11092623687163586804

namespace A340084

/-- `(A349912(n+1)-A349911(n+1))/A340085(n+1)` -/
def P11092623687163586804.Spec : Prop :=
  ∀ n, P11092623687163586804.a n = (A340084 (n + 1) : ℚ)

end A340084

/-! ## A340084.P17629868661402174989

`gcd(A294640(n), A340081(n+1))`
-/

namespace A340084.P17629868661402174989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A294640 n) (A340081 (n + 1))

end

end A340084.P17629868661402174989

namespace A340084

/-- `gcd(A294640(n), A340081(n+1))` -/
def P17629868661402174989.Spec : Prop :=
  ∀ n, (P17629868661402174989.a n : ℤ) = A340084 (n + 1)

end A340084

/-! ## A340084.P3404980289516715930

`A000265(A049559(n+1)²)/A000265(A049559(n+1))`
-/

namespace A340084.P3404980289516715930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A049559 (n + 1) ^ 2).toNat : ℚ) / (A000265 (A049559 (n + 1)).toNat : ℚ)

end

end A340084.P3404980289516715930

namespace A340084

/-- `A000265(A049559(n+1)²)/A000265(A049559(n+1))` -/
def P3404980289516715930.Spec : Prop :=
  ∀ n, P3404980289516715930.a n = (A340084 (n + 1) : ℚ)

end A340084

/-! ## A340084.P8110623530279235077

`gcd(A001787(n), A053575(n+1))`
-/

namespace A340084.P8110623530279235077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001787 n) (A053575 (n + 1))

end

end A340084.P8110623530279235077

namespace A340084

/-- `gcd(A001787(n), A053575(n+1))` -/
def P8110623530279235077.Spec : Prop :=
  ∀ n, (P8110623530279235077.a n : ℤ) = A340084 (n + 1)

end A340084

/-! ## A340084.P6678727355969595257

`gcd(A049559(n+1), A084715(n+2))`
-/

namespace A340084.P6678727355969595257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049559 (n + 1)) (A084715 (n + 2))

end

end A340084.P6678727355969595257

namespace A340084

/-- `gcd(A049559(n+1), A084715(n+2))` -/
def P6678727355969595257.Spec : Prop :=
  ∀ n, (P6678727355969595257.a n : ℤ) = A340084 (n + 1)

end A340084

/-! ## A340084.P8671516443275377653

`gcd(A049559(n+1), A095987(n))`
-/

namespace A340084.P8671516443275377653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049559 (n + 1)) (A095987 n)

end

end A340084.P8671516443275377653

namespace A340084

/-- `gcd(A049559(n+1), A095987(n))` -/
def P8671516443275377653.Spec : Prop :=
  ∀ n, (P8671516443275377653.a n : ℤ) = A340084 (n + 1)

end A340084

/-! ## A340084.P13944761765918697418

`gcd(A063994(n+1), A209388(n+1))`
-/

namespace A340084.P13944761765918697418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063994 (n + 1)) (A209388 (n + 1))

end

end A340084.P13944761765918697418

namespace A340084

/-- `gcd(A063994(n+1), A209388(n+1))` -/
def P13944761765918697418.Spec : Prop :=
  ∀ n, (P13944761765918697418.a n : ℤ) = A340084 (n + 1)

end A340084

/-! ## A340084.P13256423160245029816

`gcd(A063994(n+1), A133221(n))`
-/

namespace A340084.P13256423160245029816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063994 (n + 1)) (A133221 n)

end

end A340084.P13256423160245029816

namespace A340084

/-- `gcd(A063994(n+1), A133221(n))` -/
def P13256423160245029816.Spec : Prop :=
  ∀ n, (P13256423160245029816.a n : ℤ) = A340084 (n + 1)

end A340084

/-!
# A340085: a(n) = A336466(n) / gcd(n-1, A336466(n)); Odd part of A340082(n).

The programs for A340085, the canonical program `A340085.P7543650115475079382` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340085 has offset 1).

The definition of A340085 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A340084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340085.P3444183854820102589

`A000265(A340082(n+1))`
-/

namespace A340085.P3444183854820102589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340082 (n + 1)).toNat

end

end A340085.P3444183854820102589

namespace A340085

/-- `A000265(A340082(n+1))` -/
def P3444183854820102589.Spec : Prop :=
  ∀ n, P3444183854820102589.a n = A340085 (n + 1)

end A340085

/-! ## A340085.P7543650115475079382

`A336466(n+1)/A340084(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A340085

/-- `A336466(n+1)/A340084(n+1)` -/
def P7543650115475079382.Spec : Prop :=
  ∀ n, P7543650115475079382.a n = (A340085 (n + 1) : ℚ)

end A340085

/-! ## A340085.P4370507288214180424

`A336466(n+1)/gcd(n, A336466(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340085.P4370507288214180424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336466 (n + 1) : ℚ) / (Int.gcd (n : ℤ) (A336466 (n + 1)) : ℚ)

end

end A340085.P4370507288214180424

namespace A340085

/-- `A336466(n+1)/gcd(n, A336466(n+1))` -/
def P4370507288214180424.Spec : Prop :=
  ∀ n, P4370507288214180424.a n = (A340085 (n + 1) : ℚ)

end A340085

/-! ## A340085.P3710618819428994335

`A000265(A003958(n+1)/A340081(n+1))`
-/

namespace A340085.P3710618819428994335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A003958 (n + 1) : ℚ) / (A340081 (n + 1) : ℚ))).toNat

end

end A340085.P3710618819428994335

namespace A340085

/-- `A000265(A003958(n+1)/A340081(n+1))` -/
def P3710618819428994335.Spec : Prop :=
  ∀ n, P3710618819428994335.a n = A340085 (n + 1)

end A340085

/-! ## A340085.P14192806585895639562

`A000265(A003958(n+1)/A340084(n+1))`
-/

namespace A340085.P14192806585895639562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A003958 (n + 1) : ℚ) / (A340084 (n + 1) : ℚ))).toNat

end

end A340085.P14192806585895639562

namespace A340085

/-- `A000265(A003958(n+1)/A340084(n+1))` -/
def P14192806585895639562.Spec : Prop :=
  ∀ n, P14192806585895639562.a n = A340085 (n + 1)

end A340085

/-! ## A340085.P603968742784954169

`A336466(n+1)/A000265(A340081(n+1))`
-/

namespace A340085.P603968742784954169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336466 (n + 1) : ℚ) / (A000265 (A340081 (n + 1)).toNat : ℚ)

end

end A340085.P603968742784954169

namespace A340085

/-- `A336466(n+1)/A000265(A340081(n+1))` -/
def P603968742784954169.Spec : Prop :=
  ∀ n, P603968742784954169.a n = (A340085 (n + 1) : ℚ)

end A340085

/-! ## A340085.P17547125888418065151

`gcd(∏[A340074(n+1)], A340082(n+1))`
-/

namespace A340085.P17547125888418065151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A340082 (n + 1))

end

end A340085.P17547125888418065151

namespace A340085

/-- `gcd(∏[A340074(n+1)], A340082(n+1))` -/
def P17547125888418065151.Spec : Prop :=
  ∀ n, (P17547125888418065151.a n : ℤ) = A340085 (n + 1)

end A340085

/-! ## A340085.P12178334564079972913

`gcd(A217858(n+1), A340082(n+1))`
-/

namespace A340085.P12178334564079972913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217858 (n + 1)) (A340082 (n + 1))

end

end A340085.P12178334564079972913

namespace A340085

/-- `gcd(A217858(n+1), A340082(n+1))` -/
def P12178334564079972913.Spec : Prop :=
  ∀ n, (P12178334564079972913.a n : ℤ) = A340085 (n + 1)

end A340085

/-! ## A340085.P5595477493148522802

`gcd(A095987(n), A340082(n+1))`
-/

namespace A340085.P5595477493148522802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095987 n) (A340082 (n + 1))

end

end A340085.P5595477493148522802

namespace A340085

/-- `gcd(A095987(n), A340082(n+1))` -/
def P5595477493148522802.Spec : Prop :=
  ∀ n, (P5595477493148522802.a n : ℤ) = A340085 (n + 1)

end A340085

/-!
# A340086: a(1) = 0, for n > 1, a(n) = A000265(n-1) / gcd(n-1, A336466(n)).

The programs for A340086, the canonical program `A340086.P7171776503870000729` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340086 has offset 1).

The definition of A340086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340086.P7171776503870000729

`gcd(A129527(n), A340083(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A340086

/-- `gcd(A129527(n), A340083(n+1))` -/
def P7171776503870000729.Spec : Prop :=
  ∀ n, (P7171776503870000729.a n : ℤ) = A340086 (n + 1)

theorem P7171776503870000729.correct : P7171776503870000729.Spec := by
  intro n
  simp only [A340086, Nat.add_sub_cancel]

end A340086

/-! ## A340086.P8013868733201131932

`sqrt(A191871(n))/A340084(n+1)`
-/

namespace A340086.P8013868733201131932
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A191871 n : ℝ) / (A340084 (n + 1) : ℝ)

end

end A340086.P8013868733201131932

namespace A340086

/-- `sqrt(A191871(n))/A340084(n+1)` -/
def P8013868733201131932.Spec : Prop :=
  ∀ n, P8013868733201131932.a n = (A340086 (n + 1) : ℝ)

end A340086

/-! ## A340086.P4695676266769066736

`A030101(A030101(n))/A340084(n+1)`
-/

namespace A340086.P4695676266769066736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030101 (A030101 n).toNat : ℚ) / (A340084 (n + 1) : ℚ)

end

end A340086.P4695676266769066736

namespace A340086

/-- `A030101(A030101(n))/A340084(n+1)` -/
def P4695676266769066736.Spec : Prop :=
  ∀ n, P4695676266769066736.a n = (A340086 (n + 1) : ℚ)

end A340086

/-! ## A340086.P13212554305603354149

`n/gcd(n, A129952(A000010(n+1)))`
-/

namespace A340086.P13212554305603354149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A129952 (A000010 (n + 1)).toNat) : ℚ)

end

end A340086.P13212554305603354149

namespace A340086

/-- `n/gcd(n, A129952(A000010(n+1)))` -/
def P13212554305603354149.Spec : Prop :=
  ∀ n, P13212554305603354149.a n = (A340086 (n + 1) : ℚ)

end A340086

/-! ## A340086.P4593435658904549869

`A227140(n/A340084(n+1))%A189685(n+3)`
-/

namespace A340086.P4593435658904549869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227140 (SequenceMachineLib.roundAway ((n : ℚ) / (A340084 (n + 1) : ℚ))).toNat) (A189685 (n + 3))

end

end A340086.P4593435658904549869

namespace A340086

/-- `A227140(n/A340084(n+1))%A189685(n+3)` -/
def P4593435658904549869.Spec : Prop :=
  ∀ n, P4593435658904549869.a n = A340086 (n + 1)

end A340086

/-!
# A340087: a(n) = gcd(n-1, A091732(n)), where A091732 is an infinitary analog of Euler's phi function.

The programs for A340087, there is no canonical definition to state claims against.
-/

/-! ## A340087.P694725162237716548

`gcd(n, A091732(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340087.P694725162237716548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A091732 (n + 1))

end

end A340087.P694725162237716548

/-! ## A340087.P2737739870928107712

`A091732(n+1)/A340088(n+1)`
-/

namespace A340087.P2737739870928107712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091732 (n + 1) : ℚ) / (A340088 (n + 1) : ℚ)

end

end A340087.P2737739870928107712

/-! ## A340087.P5137759290121415901

`A008458(n)/A008458(A340089(n+1))`
-/

namespace A340087.P5137759290121415901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / (A008458 (A340089 (n + 1)).toNat : ℚ)

end

end A340087.P5137759290121415901

/-! ## A340087.P9036283182506632759

`A008486(n)/A008486(A340089(n+1))`
-/

namespace A340087.P9036283182506632759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) / (A008486 (A340089 (n + 1)).toNat : ℚ)

end

end A340087.P9036283182506632759

/-! ## A340087.P8531188568095790784

`A008574(n)/A008574(A340089(n+1))`
-/

namespace A340087.P8531188568095790784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 n : ℚ) / (A008574 (A340089 (n + 1)).toNat : ℚ)

end

end A340087.P8531188568095790784

/-!
# A340088: a(n) = A091732(n) / gcd(n-1, A091732(n)), where A091732 is an infinitary analog of Euler's phi function.

The programs for A340088, there is no canonical definition to state claims against.
-/

/-! ## A340088.P15488700253360524597

`A091732(n+1)/A340087(n+1)`
-/

namespace A340088.P15488700253360524597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091732 (n + 1) : ℚ) / (A340087 (n + 1) : ℚ)

end

end A340088.P15488700253360524597

/-! ## A340088.P13879655031383257507

`A091732(n+1)/gcd(n, A091732(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340088.P13879655031383257507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091732 (n + 1) : ℚ) / (Int.gcd (n : ℤ) (A091732 (n + 1)) : ℚ)

end

end A340088.P13879655031383257507

/-! ## A340088.P6967475217859208310

`ceil(lcm(A028310(n), A091732(n+1))/(n+1))`
-/

namespace A340088.P6967475217859208310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm (A028310 n) (A091732 (n + 1)) : ℚ) / (n + 1 : ℚ)⌉

end

end A340088.P6967475217859208310

/-! ## A340088.P998282684169963452

`(n+1-A323413(n+1))/A340087(n+1)`
-/

namespace A340088.P998282684169963452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A323413 (n + 1) : ℚ) / (A340087 (n + 1) : ℚ)

end

end A340088.P998282684169963452

/-! ## A340088.P12952187780717309255

`A028310(lcm(n, A091732(n+1))/A028310(n))`
-/

namespace A340088.P12952187780717309255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((Int.lcm (n : ℤ) (A091732 (n + 1)) : ℚ) / (A028310 n : ℚ))).toNat

end

end A340088.P12952187780717309255

/-! ## A340088.P8108644335901134532

`A164306(A000124(n)-A323413(n+1))`
-/

namespace A340088.P8108644335901134532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A000124 n - A323413 (n + 1)).toNat

end

end A340088.P8108644335901134532

/-!
# A340089: a(n) = (n-1) / gcd(n-1, A091732(n)), where A091732 is an infinitary analog of Euler's phi function.

The programs for A340089, there is no canonical definition to state claims against.
-/

/-! ## A340089.P14508212599492370496

`n/A340087(n+1)`
-/

namespace A340089.P14508212599492370496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A340087 (n + 1) : ℚ)

end

end A340089.P14508212599492370496

/-! ## A340089.P5616828346844070587

`n/gcd(n, A091732(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340089.P5616828346844070587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A091732 (n + 1)) : ℚ)

end

end A340089.P5616828346844070587

/-! ## A340089.P16500684758444803428

`n/A091732(n+1)*A340088(n+1)`
-/

namespace A340089.P16500684758444803428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A091732 (n + 1) : ℚ) * (A340088 (n + 1) : ℚ)

end

end A340089.P16500684758444803428

/-! ## A340089.P7028046149121808756

`n/A028310(A091732(n+1)/A340088(n+1))`
-/

namespace A340089.P7028046149121808756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A028310 (SequenceMachineLib.roundAway ((A091732 (n + 1) : ℚ) / (A340088 (n + 1) : ℚ))).toNat : ℚ)

end

end A340089.P7028046149121808756

/-! ## A340089.P11306887010962852304

`val(A000079(n), A000079(A340087(n+1)))`
-/

namespace A340089.P11306887010962852304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A000079 (A340087 (n + 1)).toNat).toNat

end

end A340089.P11306887010962852304

/-! ## A340089.P8545668586581078461

`val(A000244(n), A000244(A340087(n+1)))`
-/

namespace A340089.P8545668586581078461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000244 n).toNat (A000244 (A340087 (n + 1)).toNat).toNat

end

end A340089.P8545668586581078461

/-! ## A340089.P7826652022439826252

`val(A000351(n), A000351(A340087(n+1)))`
-/

namespace A340089.P7826652022439826252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000351 n).toNat (A000351 (A340087 (n + 1)).toNat).toNat

end

end A340089.P7826652022439826252

/-!
# A340090: Dirichlet inverse of A219428, n - phi(n) - 1.

The programs for A340090, there is no canonical definition to state claims against.
-/

/-! ## A340090.P10896932743173025870

`A159689(A090981(2*n+1))-(abs(A000010(n+1)-n)+1)`
-/

namespace A340090.P10896932743173025870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159689 (A090981 (2 * n + 1)).toNat - (|A000010 (n + 1) - (n : ℤ)| + 1)

end

end A340090.P10896932743173025870

/-! ## A340090.P14853579941813788575

`A154269(A046691(A046652(n)))-A016035(n+1)`
-/

namespace A340090.P14853579941813788575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A046691 (A046652 n).toNat).toNat - A016035 (n + 1)

end

end A340090.P14853579941813788575

/-! ## A340090.P2978175873280697935

`1-A051953(n+1)-(A341519(A007679(n+1))+A000038(n))`
-/

namespace A340090.P2978175873280697935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) - (A341519 (A007679 (n + 1)).toNat + A000038 n)

end

end A340090.P2978175873280697935

/-! ## A340090.P15081588885690313027

`A100047(A251652(n+1))-(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)`
-/

namespace A340090.P15081588885690313027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100047 (A251652 (n + 1)).toNat : ℚ) - (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))

end

end A340090.P15081588885690313027

/-! ## A340090.P7342728224352324657

`(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])*A023900(2^n)`
-/

namespace A340090.P7342728224352324657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) * (A023900 (2 ^ n) : ℚ)

end

end A340090.P7342728224352324657

/-!
# A340092: Carmichael numbers k for which A053575(k) [the odd part of phi] does not divide k-1.

The programs for A340092, there is no canonical definition to state claims against.
-/

/-! ## A340092.P11416674875138711637

`∩[A002997(n+1), A340091(n+1)]`
-/

namespace A340092.P11416674875138711637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340092.P11416674875138711637

/-! ## A340092.P23830707347916273

`∩[A080062(n+1), A340091(n+1)]`
-/

namespace A340092.P23830707347916273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340092.P23830707347916273

/-! ## A340092.P6739269672276494070

`∩[A087442(n+1), A340091(n+1)]`
-/

namespace A340092.P6739269672276494070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340092.P6739269672276494070

/-! ## A340092.P11155005512533351179

`∩[A225498(n+1), A340091(n+1)]`
-/

namespace A340092.P11155005512533351179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340092.P11155005512533351179

/-! ## A340092.P14575119295029075706

`∩[A231570(n+1), A340091(n+1)]`
-/

namespace A340092.P14575119295029075706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340092.P14575119295029075706

/-! ## A340092.P375653225864348493

`∩[A231572(n+1), A340091(n+1)]`
-/

namespace A340092.P375653225864348493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340092.P375653225864348493

/-! ## A340092.P2381662490167020309

`∩[A323214(n+1), A340091(n+1)]`
-/

namespace A340092.P2381662490167020309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340092.P2381662490167020309

/-! ## A340092.P13508943157060248610

`∩[A306270(n+1), A340091(n+1)]`
-/

namespace A340092.P13508943157060248610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340092.P13508943157060248610

/-!
# A340093: Composite numbers k such that A003958(k) divides k-1.

The programs for A340093, there is no canonical definition to state claims against.
-/

/-! ## A340093.P8854679553120189626

`∩[A080062(n+1), A251642(n+1)]`
-/

namespace A340093.P8854679553120189626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340093.P8854679553120189626

/-! ## A340093.P16844523079782296788

`∩[A088949(n+1), A251642(n+1)]`
-/

namespace A340093.P16844523079782296788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340093.P16844523079782296788

/-! ## A340093.P4752437470388308912

`∩[A119492(n+1), A251642(n+1)]`
-/

namespace A340093.P4752437470388308912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340093.P4752437470388308912

/-! ## A340093.P5836956255205402002

`∩[A134601(n+1), A251642(n+1)]`
-/

namespace A340093.P5836956255205402002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340093.P5836956255205402002

/-! ## A340093.P12493011618916369775

`∩[A134612(n+1), A251642(n+1)]`
-/

namespace A340093.P12493011618916369775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340093.P12493011618916369775

/-!
# A340095: Odd composite integers m such that A052918(m-J(m,29)) == 0 (mod m) and gcd(m,29)=1, where J(m,29) is the Jacobi symbol.

The programs for A340095, there is no canonical definition to state claims against.
-/

/-! ## A340095.P11881348325707714267

`∩[A337237(n+1), A339519(n+1)]`
-/

namespace A340095.P11881348325707714267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340095.P11881348325707714267

/-! ## A340095.P10377521953488156472

`∩[A339519(n+1), A340120(n+1)]`
-/

namespace A340095.P10377521953488156472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340095.P10377521953488156472

/-! ## A340095.P9011362809563034268

`record[A340120(A242628(3*n+4))]`
-/

namespace A340095.P9011362809563034268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340120 (A242628 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340095.P9011362809563034268

/-!
# A340096: Odd composite integers m such that A054413(m-J(m,53)) == 0 (mod m), where J(m,53) is the Jacobi symbol.

The programs for A340096, there is no canonical definition to state claims against.
-/

/-! ## A340096.P4124355984075991660

`∩[A339520(n+1), A340121(n+1)]`
-/

namespace A340096.P4124355984075991660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340096.P4124355984075991660

/-! ## A340096.P9977178850966306240

`∩[A338081(n+1), A339520(n+1)]`
-/

namespace A340096.P9977178850966306240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340096.P9977178850966306240

/-! ## A340096.P17983858658590513301

`A339520(lt[A238708(n+3), A002322(n+1)])`
-/

namespace A340096.P17983858658590513301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238708 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339520 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340096.P17983858658590513301

/-!
# A340097: Odd composite integers m such that A001906(m-J(m,5)) == 0 (mod m) and gcd(m,5)=1, where J(m,5) is the Jacobi symbol.

The programs for A340097, there is no canonical definition to state claims against.
-/

/-! ## A340097.P11670008169974517966

`∩[A338082(n+1), A339521(n+1)]`
-/

namespace A340097.P11670008169974517966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340097.P11670008169974517966

/-! ## A340097.P5581554937191456764

`∩[A339521(n+1), A340122(n+1)]`
-/

namespace A340097.P5581554937191456764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340097.P5581554937191456764

/-! ## A340097.P6967984351760578113

`∩[A338007(n+1), A339521(n+1)]`
-/

namespace A340097.P6967984351760578113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340097.P6967984351760578113

/-!
# A340098: Odd composite integers m such that A004254(m-J(m,21)) == 0 (mod m) and gcd(m,21)=1, where J(m,21) is the Jacobi symbol.

The programs for A340098, there is no canonical definition to state claims against.
-/

/-! ## A340098.P11497750357214308601

`∩[A339522(n+1), A340123(n+1)]`
-/

namespace A340098.P11497750357214308601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340098.P11497750357214308601

/-! ## A340098.P14110094681180387134

`∩[A338009(n+1), A339522(n+1)]`
-/

namespace A340098.P14110094681180387134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340098.P14110094681180387134

/-!
# A340099: Odd composite integers m such that A004187(m-J(m,45)) == 0 (mod m) and gcd(m,45)=1, where J(m,45) is the Jacobi symbol.

The programs for A340099, there is no canonical definition to state claims against.
-/

/-! ## A340099.P16140208470099097717

`∩[A339523(n+1), A340124(n+1)]`
-/

namespace A340099.P16140208470099097717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340099.P16140208470099097717

/-! ## A340099.P4462138612111753732

`∩[A338011(n+1), A339523(n+1)]`
-/

namespace A340099.P4462138612111753732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340099.P4462138612111753732

/-! ## A340099.P3671903416131497136

`A340124(A062298(2*n+5)^A094999(n))`
-/

namespace A340099.P3671903416131497136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340124 (SequenceMachineLib.roundAway ((A062298 (2 * n + 5) : ℚ) ^ (A094999 n : ℤ))).toNat

end

end A340099.P3671903416131497136

