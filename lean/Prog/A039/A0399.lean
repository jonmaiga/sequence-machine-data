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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

/-!
# A039900: Number of partitions satisfying 0 < cn(0,5) + cn(1,5) + cn(4,5).

The programs for A039900, there is no canonical definition to state claims against.
-/

/-! ## A039900.P11326839671077760133

`A000041(n)-A003106(n)`
-/

namespace A039900.P11326839671077760133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A003106 n

end

end A039900.P11326839671077760133

/-! ## A039900.P6680161673278410113

`∑[A002865(n)]-A003106(n)`
-/

namespace A039900.P6680161673278410113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003106 n

end

end A039900.P6680161673278410113

/-! ## A039900.P2611249946260730145

`A000065(n)+1-A003106(n)`
-/

namespace A039900.P2611249946260730145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A003106 n)

end

end A039900.P2611249946260730145

/-! ## A039900.P2522517732882888925

`A032741(n)+A167934(n)-A003106(n)`
-/

namespace A039900.P2522517732882888925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (A167934 n - A003106 n)

end

end A039900.P2522517732882888925

/-! ## A039900.P11969982126439677364

`A139582(n)/2-A003106(n)`
-/

namespace A039900.P11969982126439677364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A003106 n : ℚ)

end

end A039900.P11969982126439677364

/-! ## A039900.P5707326334605229197

`A000041(n)+A003114(n)-A003113(n)`
-/

namespace A039900.P5707326334605229197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A003114 n - A003113 n)

end

end A039900.P5707326334605229197

/-! ## A039900.P17633700479717137894

`A052335(n)+A387578(n)-A003106(n)`
-/

namespace A039900.P17633700479717137894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052335 n + (A387578 n - A003106 n)

end

end A039900.P17633700479717137894

/-! ## A039900.P14239256867198468316

`A035363(2*n)-A003106(n)`
-/

namespace A039900.P14239256867198468316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A003106 n

end

end A039900.P14239256867198468316

/-! ## A039900.P13007309610845736568

`A003114(n)+A039899(n)-A003106(n)`
-/

namespace A039900.P13007309610845736568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A039899 n - A003106 n)

end

end A039900.P13007309610845736568

/-! ## A039900.P13907153847148383937

`A183568(∑[n])-A003106(n)`
-/

namespace A039900.P13907153847148383937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (∑ j ∈ Finset.range (n + 1), f1 j) - A003106 n

end

end A039900.P13907153847148383937

/-!
# A039901: Number of partitions satisfying 0 < cn(1,5) + cn(2,5) + cn(3,5) and 0 < cn(4,5) + cn(2,5) + cn(3,5).

The programs for A039901, there is no canonical definition to state claims against.
-/

/-! ## A039901.P5546923776284050599

`A039899(n)+A145817(n+1)%2`
-/

namespace A039901.P5546923776284050599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039899 n + Int.tmod (A145817 (n + 1)) 2

end

end A039901.P5546923776284050599

/-! ## A039901.P4531043796154944049

`A055641(A001384(n))+A039899(n)`
-/

namespace A039901.P4531043796154944049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A001384 n).toNat + A039899 n

end

end A039901.P4531043796154944049

/-! ## A039901.P12375788704239495643

`A144200(A239958(n))+A039899(n)`
-/

namespace A039901.P12375788704239495643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144200 (A239958 n).toNat + A039899 n

end

end A039901.P12375788704239495643

/-! ## A039901.P2558341437297414522

`A323239(A255380(n))+A039899(n)`
-/

namespace A039901.P2558341437297414522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A255380 n).toNat + A039899 n

end

end A039901.P2558341437297414522

/-! ## A039901.P5171986399822316877

`A367512(A036256(n+2))+A039899(n)`
-/

namespace A039901.P5171986399822316877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367512 (A036256 (n + 2)).toNat + A039899 n

end

end A039901.P5171986399822316877

/-!
# A039902: Number of partitions satisfying 0 < cn(1,5) + cn(4,5) + cn(2,5) and 0 < cn(1,5) + cn(4,5) + cn(3,5).

The programs for A039902, there is no canonical definition to state claims against.
-/

/-! ## A039902.P16272162592819907360

`or(A039900(n), A051767(n+2))`
-/

namespace A039902.P16272162592819907360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039900 n) (A051767 (n + 2))

end

end A039902.P16272162592819907360

/-! ## A039902.P144348281246451757

`A126010(A141476(n))+A039900(n)`
-/

namespace A039902.P144348281246451757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126010 (A141476 n).toNat + A039900 n

end

end A039902.P144348281246451757

/-! ## A039902.P16092306830060660848

`or(A039900(n), A091444(A000295(n)))`
-/

namespace A039902.P16092306830060660848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039900 n) (A091444 (A000295 n).toNat)

end

end A039902.P16092306830060660848

/-! ## A039902.P5669793518644199109

`A158821(A060666(n+1))+A039900(n)`
-/

namespace A039902.P5669793518644199109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 (A060666 (n + 1)).toNat + A039900 n

end

end A039902.P5669793518644199109

/-! ## A039902.P5677284130894548742

`A294937(A131412(n+1))+A039900(n)`
-/

namespace A039902.P5677284130894548742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (A131412 (n + 1)).toNat + A039900 n

end

end A039902.P5677284130894548742

/-!
# A039903: Number of partitions satisfying 0 < cn(0,5) + cn(1,5) + cn(2,5) + cn(3,5) and 0 < cn(0,5) + cn(4,5) + cn(2,5) + cn(3,5).

The programs for A039903, there is no canonical definition to state claims against.
-/

/-! ## A039903.P17721660446784713061

`A039899(n)+A035633(A233583(n+1))`
-/

namespace A039903.P17721660446784713061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039899 n + A035633 (A233583 (n + 1)).toNat

end

end A039903.P17721660446784713061

/-! ## A039903.P2720645484291483114

`∑[A002865(n)]-A320888(A147851(n+3))`
-/

namespace A039903.P2720645484291483114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A320888 (A147851 (n + 3)).toNat

end

end A039903.P2720645484291483114

/-! ## A039903.P10214661286344877716

`∑[A085811(n+3)]-A320888(A147851(n+3))`
-/

namespace A039903.P10214661286344877716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A320888 (A147851 (n + 3)).toNat

end

end A039903.P10214661286344877716

/-! ## A039903.P12678177226909488386

`A018783(n)+A000837(n)-A320888(A147851(n+3))`
-/

namespace A039903.P12678177226909488386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000837 n - A320888 (A147851 (n + 3)).toNat

end

end A039903.P12678177226909488386

/-! ## A039903.P8054776062579090064

`A000041(n)-A351014(A079398(2*n+3))`
-/

namespace A039903.P8054776062579090064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A351014 (A079398 (2 * n + 3)).toNat

end

end A039903.P8054776062579090064

/-!
# A039904: Number of partitions satisfying 0 < cn(0,5) + cn(1,5) + cn(4,5) + cn(2,5) and 0 < cn(0,5) + cn(1,5) + cn(4,5) + cn(3,5).

The programs for A039904, there is no canonical definition to state claims against.
-/

/-! ## A039904.P11116983011481055715

`A039900(n)+A035634(round(sqrt(n²+1)))`
-/

namespace A039904.P11116983011481055715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n + A035634 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A039904.P11116983011481055715

/-! ## A039904.P15304207000348168009

`A000041(A062399(n))-A264398(n)`
-/

namespace A039904.P15304207000348168009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A062399 n).toNat - A264398 n

end

end A039904.P15304207000348168009

/-! ## A039904.P17471255247265156410

`∑[A002865(n)]-A264398(A351870(n))`
-/

namespace A039904.P17471255247265156410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A264398 (A351870 n).toNat

end

end A039904.P17471255247265156410

/-! ## A039904.P367910157881698917

`A039983(A039944(n+1))+A039903(n)`
-/

namespace A039904.P367910157881698917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039983 (A039944 (n + 1)).toNat + A039903 n

end

end A039904.P367910157881698917

/-! ## A039904.P8002643441468026218

`A213259(A033844(n)+A000201(n+1))`
-/

namespace A039904.P8002643441468026218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (A033844 n + A000201 (n + 1)).toNat

end

end A039904.P8002643441468026218

/-!
# A039905: Number of partitions with at most one part divisible by 5.

The programs for A039905, there is no canonical definition to state claims against.
-/

/-! ## A039905.P14407401924324817393

`A036009(n+1)-A178798(A087153(n))`
-/

namespace A039905.P14407401924324817393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036009 (n + 1) - A178798 (A087153 n).toNat

end

end A039905.P14407401924324817393

/-! ## A039905.P13029415461248627514

`A036009(n+1)-A185284(A004273(n))`
-/

namespace A039905.P13029415461248627514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036009 (n + 1) - A185284 (A004273 n).toNat

end

end A039905.P13029415461248627514

/-!
# A039906: Number of partitions satisfying cn(0,5) + cn(1,5) + cn(4,5) <= cn(2,5) and cn(0,5) + cn(1,5) + cn(4,5) <= cn(3,5).

The programs for A039906, there is no canonical definition to state claims against.
-/

/-! ## A039906.P17637454501536045919

`A185284(A302427(n+1))+A036812(n+1)`
-/

namespace A039906.P17637454501536045919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A302427 (n + 1)).toNat + A036812 (n + 1)

end

end A039906.P17637454501536045919

/-! ## A039906.P1776604876818002238

`A185284(A303197(n+1))+A036812(n+1)`
-/

namespace A039906.P1776604876818002238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A303197 (n + 1)).toNat + A036812 (n + 1)

end

end A039906.P1776604876818002238

/-! ## A039906.P15983341409202452911

`A323048(A036812(n+1)+1)`
-/

namespace A039906.P15983341409202452911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A036812 (n + 1) + 1).toNat

end

end A039906.P15983341409202452911

/-! ## A039906.P9801008875329097590

`A097449(A036812(n+1))`
-/

namespace A039906.P9801008875329097590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A036812 (n + 1)).toNat

end

end A039906.P9801008875329097590

/-!
# A039907: Number of perfect matchings in triangle graph with n nodes per side.

The programs for A039907, there is no canonical definition to state claims against.
-/

/-! ## A039907.P14944318338176624855

`Δ[A004525(n)]*A178446(n)`
-/

namespace A039907.P14944318338176624855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A178446 n

end

end A039907.P14944318338176624855

/-! ## A039907.P14454194052625270157

`A000035(A000124(n))*A178446(n)`
-/

namespace A039907.P14454194052625270157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000124 n).toNat * A178446 n

end

end A039907.P14454194052625270157

/-! ## A039907.P7960477658738339518

`A000035(A028242(n))*A178446(n)`
-/

namespace A039907.P7960477658738339518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A028242 n).toNat * A178446 n

end

end A039907.P7960477658738339518

/-! ## A039907.P13663222458204456543

`A083035(A008458(n))*A178446(n)`
-/

namespace A039907.P13663222458204456543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (A008458 n).toNat * A178446 n

end

end A039907.P13663222458204456543

/-! ## A039907.P14207596603837116611

`A000035(A000217(n)+1)*A178446(n)`
-/

namespace A039907.P14207596603837116611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000217 n + 1).toNat * A178446 n

end

end A039907.P14207596603837116611

/-!
# A039908: Number of partitions satisfying cn(0,5) + cn(2,5) + cn(3,5) <= cn(1,5) and cn(0,5) + cn(2,5) + cn(3,5) <= cn(4,5).

The programs for A039908, there is no canonical definition to state claims against.
-/

/-! ## A039908.P5295331014394524244

`A185284(A326632(n))+A036806(n+1)`
-/

namespace A039908.P5295331014394524244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A326632 n).toNat + A036806 (n + 1)

end

end A039908.P5295331014394524244

/-! ## A039908.P5133589946642169364

`or(A036806(n+1), A165471(A076710(n)))`
-/

namespace A039908.P5133589946642169364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036806 (n + 1)) (A165471 (A076710 n).toNat)

end

end A039908.P5133589946642169364

/-! ## A039908.P5642777904387420148

`or(A036806(n+1), A055641(A343304(n)))`
-/

namespace A039908.P5642777904387420148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036806 (n + 1)) (A055641 (A343304 n).toNat)

end

end A039908.P5642777904387420148

/-! ## A039908.P1272180099780476726

`A036806(n+1)+A165471(n*A165471(A076710(n)))`
-/

namespace A039908.P1272180099780476726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036806 (n + 1) + A165471 ((n : ℤ) * A165471 (A076710 n).toNat).toNat

end

end A039908.P1272180099780476726

/-!
# A039909: Largest coefficient in expansion of Product_{i=1..n} (1-q^1+q^2-...+(-q)^i).

The programs for A039909, there is no canonical definition to state claims against.
-/

/-! ## A039909.P12271078962276881015

`A000140(n+1)-A269166(A199247(n))`
-/

namespace A039909.P12271078962276881015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000140 (n + 1) - A269166 (A199247 n).toNat

end

end A039909.P12271078962276881015

/-! ## A039909.P5394503318967440951

`A000140(n+1)-A089049(A008986(n))`
-/

namespace A039909.P5394503318967440951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000140 (n + 1) - A089049 (A008986 n).toNat

end

end A039909.P5394503318967440951

/-! ## A039909.P5692584723367565673

`A000140(n+1)-A325660(A202252(3*n+1))`
-/

namespace A039909.P5692584723367565673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000140 (n + 1) - A325660 (A202252 (3 * n + 1)).toNat

end

end A039909.P5692584723367565673

/-! ## A039909.P18326529191247991580

`A000140(n+1)-A085980(A239059(3*n+2))`
-/

namespace A039909.P18326529191247991580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000140 (n + 1) - A085980 (A239059 (3 * n + 2)).toNat

end

end A039909.P18326529191247991580

/-!
# A039910: Lower triangular matrix T = Pascal lower triangular matrix divided on the left by its entry-square.

The programs for A039910, there is no canonical definition to state claims against.
-/

/-! ## A039910.P4011683996242916957

`A003056(A095891(n+1))*A048994(n)`
-/

namespace A039910.P4011683996242916957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A095891 (n + 1)).toNat * A048994 n

end

end A039910.P4011683996242916957

/-! ## A039910.P13535901840729478051

`A048994(n)*A051889(A144881(n+1))`
-/

namespace A039910.P13535901840729478051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A051889 (A144881 (n + 1)).toNat

end

end A039910.P13535901840729478051

/-!
# A039911: Triangle read by rows: number of compositions of n into relatively prime summands.

The programs for A039911, there is no canonical definition to state claims against.
-/

/-! ## A039911.P14704060292498030991

`A101391(∑[char[∑[n]]]²-n)`
-/

namespace A039911.P14704060292498030991
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101391 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A039911.P14704060292498030991

/-! ## A039911.P15625837161733202435

`and(A101391(A038722(n+1)), A260196(n))`
-/

namespace A039911.P15625837161733202435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101391 (A038722 (n + 1)).toNat) (A260196 n)

end

end A039911.P15625837161733202435

/-! ## A039911.P14467816285568965762

`A057427(2*n+3)*A101391(A038722(n+1))`
-/

namespace A039911.P14467816285568965762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * n + 3) * A101391 (A038722 (n + 1)).toNat

end

end A039911.P14467816285568965762

/-! ## A039911.P4268311053559630013

`A174956(A005180(n+1))+A101391(A038722(n+1))`
-/

namespace A039911.P4268311053559630013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A005180 (n + 1)).toNat + A101391 (A038722 (n + 1)).toNat

end

end A039911.P4268311053559630013

/-! ## A039911.P14607557483061142451

`A174956(A257244(n+1))+A101391(A038722(n+1))`
-/

namespace A039911.P14607557483061142451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A257244 (n + 1)).toNat + A101391 (A038722 (n + 1)).toNat

end

end A039911.P14607557483061142451

/-! ## A039911.P12745046264352444174

`A209229(A303094(n+1))+A101391(A038722(n+1))`
-/

namespace A039911.P12745046264352444174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A303094 (n + 1)).toNat + A101391 (A038722 (n + 1)).toNat

end

end A039911.P12745046264352444174

/-!
# A039912: Triangle related to number of compositions of n into relatively prime summands.

The programs for A039912, there is no canonical definition to state claims against.
-/

/-! ## A039912.P15291037332268898947

`A307047(∑[char[∑[n]]]+n)`
-/

namespace A039912.P15291037332268898947
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A039912.P15291037332268898947

/-! ## A039912.P16078000937652054055

`((-1)^n)²*A307047(A007401(n+1))`
-/

namespace A039912.P16078000937652054055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A307047 (A007401 (n + 1)).toNat

end

end A039912.P16078000937652054055

/-! ## A039912.P15088921826931669026

`or(A000007(n), A307047(A007401(n+1)))`
-/

namespace A039912.P15088921826931669026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A307047 (A007401 (n + 1)).toNat)

end

end A039912.P15088921826931669026

/-! ## A039912.P3983744344051035959

`or(A073424(n), A307047(A007401(n+1)))`
-/

namespace A039912.P3983744344051035959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073424 n) (A307047 (A007401 (n + 1)).toNat)

end

end A039912.P3983744344051035959

/-! ## A039912.P15413660457410511566

`A307047(A007401(n+1))^A019429(2*n)`
-/

namespace A039912.P15413660457410511566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307047 (A007401 (n + 1)).toNat : ℚ) ^ (A019429 (2 * n) : ℤ)

end

end A039912.P15413660457410511566

/-! ## A039912.P7654090543050523237

`A307047(A007401(n+1))^(1-A198954(n))²`
-/

namespace A039912.P7654090543050523237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307047 (A007401 (n + 1)).toNat : ℚ) ^ ((1 - A198954 n) ^ 2 : ℤ)

end

end A039912.P7654090543050523237

/-! ## A039912.P560242801419823073

`A307047(A007401(n+1))%A048577(n)`
-/

namespace A039912.P560242801419823073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307047 (A007401 (n + 1)).toNat) (A048577 n)

end

end A039912.P560242801419823073

/-! ## A039912.P1476896905893593080

`A307047(A007401(n+1))+A010052(A238086(n+1))`
-/

namespace A039912.P1476896905893593080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (A007401 (n + 1)).toNat + A010052 (A238086 (n + 1)).toNat

end

end A039912.P1476896905893593080

/-!
# A039913: Triangular "Fibonacci array".

The programs for A039913, the canonical program `A039913.P15406212472898835494` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039913 has offset 0).

The definition of A039913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039913.P15406212472898835494

`A108037(n)+A098356(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039913

/-- `A108037(n)+A098356(n)` -/
def P15406212472898835494.Spec : Prop :=
  ∀ n, P15406212472898835494.a n = A039913 n

theorem P15406212472898835494.correct : P15406212472898835494.Spec := by
  intro n
  simp only [A039913]

end A039913

/-! ## A039913.P3688262611702694598

`A108038(n)-A098356(n)`
-/

namespace A039913.P3688262611702694598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108038 n - A098356 n

end

end A039913.P3688262611702694598

namespace A039913

/-- `A108038(n)-A098356(n)` -/
def P3688262611702694598.Spec : Prop :=
  ∀ n, P3688262611702694598.a n = A039913 n

end A039913

/-! ## A039913.P6005285773929286578

`A108035(n+1)-A058071(n)`
-/

namespace A039913.P6005285773929286578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (n + 1) - A058071 n

end

end A039913.P6005285773929286578

namespace A039913

/-- `A108035(n+1)-A058071(n)` -/
def P6005285773929286578.Spec : Prop :=
  ∀ n, P6005285773929286578.a n = A039913 n

end A039913

/-! ## A039913.P11682630722850023607

`A098356(n)+A000045(A003056(n))`
-/

namespace A039913.P11682630722850023607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 n + A000045 (A003056 n).toNat

end

end A039913.P11682630722850023607

namespace A039913

/-- `A098356(n)+A000045(A003056(n))` -/
def P11682630722850023607.Spec : Prop :=
  ∀ n, P11682630722850023607.a n = A039913 n

end A039913

/-! ## A039913.P11849219308379460857

`A302126(A131507(n)-1)+A098356(n)`
-/

namespace A039913.P11849219308379460857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A131507 n - 1).toNat + A098356 n

end

end A039913.P11849219308379460857

namespace A039913

/-- `A302126(A131507(n)-1)+A098356(n)` -/
def P11849219308379460857.Spec : Prop :=
  ∀ n, P11849219308379460857.a n = A039913 n

end A039913

/-! ## A039913.P17417685025599560503

`A000045(A003057(n+2))-A058071(n)`
-/

namespace A039913.P17417685025599560503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003057 (n + 2)).toNat - A058071 n

end

end A039913.P17417685025599560503

namespace A039913

/-- `A000045(A003057(n+2))-A058071(n)` -/
def P17417685025599560503.Spec : Prop :=
  ∀ n, P17417685025599560503.a n = A039913 n

end A039913

/-! ## A039913.P11333724648047804997

`A082498(A089633(n))`
-/

namespace A039913.P11333724648047804997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A089633 n).toNat

end

end A039913.P11333724648047804997

namespace A039913

/-- `A082498(A089633(n))` -/
def P11333724648047804997.Spec : Prop :=
  ∀ n, P11333724648047804997.a n = A039913 n

end A039913

/-! ## A039913.P8522951394394053477

`A082498(A023758(n+2)-1)`
-/

namespace A039913.P8522951394394053477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A023758 (n + 2) - 1).toNat

end

end A039913.P8522951394394053477

namespace A039913

/-- `A082498(A023758(n+2)-1)` -/
def P8522951394394053477.Spec : Prop :=
  ∀ n, P8522951394394053477.a n = A039913 n

end A039913

/-! ## A039913.P2092178124206345522

`A082498(eq[1, A069010(n+1)])`
-/

namespace A039913.P2092178124206345522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039913.P2092178124206345522

namespace A039913

/-- `A082498(eq[1, A069010(n+1)])` -/
def P2092178124206345522.Spec : Prop :=
  ∀ n, P2092178124206345522.a n = A039913 n

end A039913

/-! ## A039913.P16946013961316255880

`A082498((A081118(n+1)-1)/2)`
-/

namespace A039913.P16946013961316255880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (SequenceMachineLib.roundAway ((A081118 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A039913.P16946013961316255880

namespace A039913

/-- `A082498((A081118(n+1)-1)/2)` -/
def P16946013961316255880.Spec : Prop :=
  ∀ n, P16946013961316255880.a n = A039913 n

end A039913

/-!
# A039914: Smallest k>1 such that k(p-1)-1 is divisible by p^2, p=n-th prime.

The programs for A039914, the canonical program `A039914.P4400302349776445066` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039914 has offset 1).

The definition of A039914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039914.P8114267454085436

`A345988(p?[abs(2*n-3)])-1`
-/

namespace A039914.P8114267454085436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345988 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A039914.P8114267454085436

namespace A039914

/-- `A345988(p?[abs(2*n-3)])-1` -/
def P8114267454085436.Spec : Prop :=
  ∀ n, P8114267454085436.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P4400302349776445066

`2*abs(2-C(A000040(n+1), 2))+3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039914

/-- `2*abs(2-C(A000040(n+1), 2))+3` -/
def P4400302349776445066.Spec : Prop :=
  ∀ n, P4400302349776445066.a n = A039914 (n + 1)

theorem P4400302349776445066.correct : P4400302349776445066.Spec := by
  intro n
  simp only [A039914, Nat.add_sub_cancel]

end A039914

/-! ## A039914.P14562974732756725949

`A125202(A130291(n+1))`
-/

namespace A039914.P14562974732756725949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (A130291 (n + 1)).toNat

end

end A039914.P14562974732756725949

namespace A039914

/-- `A125202(A130291(n+1))` -/
def P14562974732756725949.Spec : Prop :=
  ∀ n, P14562974732756725949.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P4613045822977724744

`A306190(A254667(n+1))`
-/

namespace A039914.P4613045822977724744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (A254667 (n + 1)).toNat

end

end A039914.P4613045822977724744

namespace A039914

/-- `A306190(A254667(n+1))` -/
def P4613045822977724744.Spec : Prop :=
  ∀ n, P4613045822977724744.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P8485111897581100703

`A306190(A233583(n+2))`
-/

namespace A039914.P8485111897581100703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (A233583 (n + 2)).toNat

end

end A039914.P8485111897581100703

namespace A039914

/-- `A306190(A233583(n+2))` -/
def P8485111897581100703.Spec : Prop :=
  ∀ n, P8485111897581100703.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P17269761019168395674

`A036689(A028310(n)+1)-1`
-/

namespace A039914.P17269761019168395674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (A028310 n + 1).toNat - 1

end

end A039914.P17269761019168395674

namespace A039914

/-- `A036689(A028310(n)+1)-1` -/
def P17269761019168395674.Spec : Prop :=
  ∀ n, P17269761019168395674.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P16923238969672105852

`A046151(or(1, A000040(n+1)))`
-/

namespace A039914.P16923238969672105852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (Int.lor 1 (A000040 (n + 1))).toNat

end

end A039914.P16923238969672105852

namespace A039914

/-- `A046151(or(1, A000040(n+1)))` -/
def P16923238969672105852.Spec : Prop :=
  ∀ n, P16923238969672105852.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P8238339204817061405

`A046151(or(1, record[A006530(n+2)]))`
-/

namespace A039914.P8238339204817061405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A039914.P8238339204817061405

namespace A039914

/-- `A046151(or(1, record[A006530(n+2)]))` -/
def P8238339204817061405.Spec : Prop :=
  ∀ n, P8238339204817061405.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P6364085560191388038

`A046151(or(1, record[A014963(n+2)]))`
-/

namespace A039914.P6364085560191388038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A039914.P6364085560191388038

namespace A039914

/-- `A046151(or(1, record[A014963(n+2)]))` -/
def P6364085560191388038.Spec : Prop :=
  ∀ n, P6364085560191388038.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P13337722820460262837

`A046151(or(1, record[A020639(n+2)]))`
-/

namespace A039914.P13337722820460262837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A039914.P13337722820460262837

namespace A039914

/-- `A046151(or(1, record[A020639(n+2)]))` -/
def P13337722820460262837.Spec : Prop :=
  ∀ n, P13337722820460262837.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P10490903524103405187

`A165900(2*A130291(n+1)-1)`
-/

namespace A039914.P10490903524103405187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (2 * A130291 (n + 1) - 1).toNat

end

end A039914.P10490903524103405187

namespace A039914

/-- `A165900(2*A130291(n+1)-1)` -/
def P10490903524103405187.Spec : Prop :=
  ∀ n, P10490903524103405187.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P2584133250672179959

`A028387(or(1, A000040(n+1)-2))`
-/

namespace A039914.P2584133250672179959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (Int.lor 1 (A000040 (n + 1) - 2)).toNat

end

end A039914.P2584133250672179959

namespace A039914

/-- `A028387(or(1, A000040(n+1)-2))` -/
def P2584133250672179959.Spec : Prop :=
  ∀ n, P2584133250672179959.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P17810752185073011175

`A024206(4*floor(A000040(n+1)/2))`
-/

namespace A039914.P17810752185073011175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (4 * ⌊(A000040 (n + 1) : ℚ) / 2⌋).toNat

end

end A039914.P17810752185073011175

namespace A039914

/-- `A024206(4*floor(A000040(n+1)/2))` -/
def P17810752185073011175.Spec : Prop :=
  ∀ n, P17810752185073011175.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P5392023853887139387

`p?[A027656(n)]*A039915(n+1)-1`
-/

namespace A039914.P5392023853887139387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A039915 (n + 1) - 1

end

end A039914.P5392023853887139387

namespace A039914

/-- `p?[A027656(n)]*A039915(n+1)-1` -/
def P5392023853887139387.Spec : Prop :=
  ∀ n, P5392023853887139387.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P11792275872592727010

`A046151(or(1, eq[2, A000005(n+1)]+1))`
-/

namespace A039914.P11792275872592727010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (Nat.lor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A039914.P11792275872592727010

namespace A039914

/-- `A046151(or(1, eq[2, A000005(n+1)]+1))` -/
def P11792275872592727010.Spec : Prop :=
  ∀ n, P11792275872592727010.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P13004014918906158838

`A000040(n+1)*A039915(n+1)-1`
-/

namespace A039914.P13004014918906158838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A039915 (n + 1) - 1

end

end A039914.P13004014918906158838

namespace A039914

/-- `A000040(n+1)*A039915(n+1)-1` -/
def P13004014918906158838.Spec : Prop :=
  ∀ n, P13004014918906158838.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P3216712618581723981

`2*A084921(n+1)-A006005(n+1)`
-/

namespace A039914.P3216712618581723981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084921 (n + 1) - A006005 (n + 1)

end

end A039914.P3216712618581723981

namespace A039914

/-- `2*A084921(n+1)-A006005(n+1)` -/
def P3216712618581723981.Spec : Prop :=
  ∀ n, P3216712618581723981.a n = A039914 (n + 1)

end A039914

/-! ## A039914.P11753701495226255801

`A117762(n+1)/A111333(n+1)-1`
-/

namespace A039914.P11753701495226255801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117762 (n + 1) : ℚ) / (A111333 (n + 1) : ℚ) - 1

end

end A039914.P11753701495226255801

namespace A039914

/-- `A117762(n+1)/A111333(n+1)-1` -/
def P11753701495226255801.Spec : Prop :=
  ∀ n, P11753701495226255801.a n = (A039914 (n + 1) : ℚ)

end A039914

/-! ## A039914.P3522572327239895349

`A110496(n+1)/A111333(n+1)-2`
-/

namespace A039914.P3522572327239895349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110496 (n + 1) : ℚ) / (A111333 (n + 1) : ℚ) - 2

end

end A039914.P3522572327239895349

namespace A039914

/-- `A110496(n+1)/A111333(n+1)-2` -/
def P3522572327239895349.Spec : Prop :=
  ∀ n, P3522572327239895349.a n = (A039914 (n + 1) : ℚ)

end A039914

/-! ## A039914.P11264835301599645612

`xor(1, A000040(n+1))*record[A006530(n+2)]-1`
-/

namespace A039914.P11264835301599645612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000040 (n + 1)) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A039914.P11264835301599645612

namespace A039914

/-- `xor(1, A000040(n+1))*record[A006530(n+2)]-1` -/
def P11264835301599645612.Spec : Prop :=
  ∀ n, P11264835301599645612.a n = A039914 (n + 1)

end A039914

/-!
# A039915: Smallest k such that k(p-1)-1 is positive and divisible by p where p = n-th prime.

The programs for A039915, the canonical program `A039915.P14541109354943719333` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039915 has offset 1).

The definition of A039915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039915.P6352647015500762740

`xor(1, Δ[A007504(n)])`
-/

namespace A039915.P6352647015500762740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A039915.P6352647015500762740

namespace A039915

/-- `xor(1, Δ[A007504(n)])` -/
def P6352647015500762740.Spec : Prop :=
  ∀ n, P6352647015500762740.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P14541109354943719333

`xor(1, A000040(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039915

/-- `xor(1, A000040(n+1))` -/
def P14541109354943719333.Spec : Prop :=
  ∀ n, P14541109354943719333.a n = A039915 (n + 1)

theorem P14541109354943719333.correct : P14541109354943719333.Spec := by
  intro n
  simp only [A039915, Nat.add_sub_cancel]

end A039915

/-! ## A039915.P9040681073451494628

`xor(1, abs(Δ[A008348(n)]))`
-/

namespace A039915.P9040681073451494628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |f1 (n + 1) - f1 n|

end

end A039915.P9040681073451494628

namespace A039915

/-- `xor(1, abs(Δ[A008348(n)]))` -/
def P9040681073451494628.Spec : Prop :=
  ∀ n, P9040681073451494628.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P11894366007394761348

`xor(1, abs(Δ[A022837(n)]))`
-/

namespace A039915.P11894366007394761348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |f1 (n + 1) - f1 n|

end

end A039915.P11894366007394761348

namespace A039915

/-- `xor(1, abs(Δ[A022837(n)]))` -/
def P11894366007394761348.Spec : Prop :=
  ∀ n, P11894366007394761348.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P6956057136133835449

`xor(1, abs(Δ[A064365(n)]))`
-/

namespace A039915.P6956057136133835449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |f1 (n + 1) - f1 n|

end

end A039915.P6956057136133835449

namespace A039915

/-- `xor(1, abs(Δ[A064365(n)]))` -/
def P6956057136133835449.Spec : Prop :=
  ∀ n, P6956057136133835449.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P12765816239087728811

`abs(A086801(n+1))+2`
-/

namespace A039915.P12765816239087728811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086801 (n + 1)| + 2

end

end A039915.P12765816239087728811

namespace A039915

/-- `abs(A086801(n+1))+2` -/
def P12765816239087728811.Spec : Prop :=
  ∀ n, P12765816239087728811.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P5096893090633623465

`xor(1, sqrt(A001248(n+1)))`
-/

namespace A039915.P5096893090633623465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A039915.P5096893090633623465

namespace A039915

/-- `xor(1, sqrt(A001248(n+1)))` -/
def P5096893090633623465.Spec : Prop :=
  ∀ n, P5096893090633623465.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P7930246436845918844

`xor(1, ∑[A054541(n+1)])`
-/

namespace A039915.P7930246436845918844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039915.P7930246436845918844

namespace A039915

/-- `xor(1, ∑[A054541(n+1)])` -/
def P7930246436845918844.Spec : Prop :=
  ∀ n, P7930246436845918844.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P12038974971235077559

`xor(1, A006093(n+1)+1)`
-/

namespace A039915.P12038974971235077559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A006093 (n + 1) + 1)

end

end A039915.P12038974971235077559

namespace A039915

/-- `xor(1, A006093(n+1)+1)` -/
def P12038974971235077559.Spec : Prop :=
  ∀ n, P12038974971235077559.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P16939799842575093407

`xor(1, A040976(n+1)+2)`
-/

namespace A039915.P16939799842575093407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A040976 (n + 1) + 2)

end

end A039915.P16939799842575093407

namespace A039915

/-- `xor(1, A040976(n+1)+2)` -/
def P16939799842575093407.Spec : Prop :=
  ∀ n, P16939799842575093407.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P4381744578227012523

`xor(1, A014692(n+1)+n)`
-/

namespace A039915.P4381744578227012523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A014692 (n + 1) + (n : ℤ))

end

end A039915.P4381744578227012523

namespace A039915

/-- `xor(1, A014692(n+1)+n)` -/
def P4381744578227012523.Spec : Prop :=
  ∀ n, P4381744578227012523.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P7747133088370301615

`A001223(n)+a(n-1)` with `a(0)=3, a(1)=2`
-/

namespace A039915.P7747133088370301615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A001223 n + a (n - 1)

end

end A039915.P7747133088370301615

namespace A039915

/-- `A001223(n)+a(n-1)` -/
def P7747133088370301615.Spec : Prop :=
  ∀ n, P7747133088370301615.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P8887505407157666613

`A083553(n)/a(n-1)` with `a(0)=3, a(1)=2`
-/

namespace A039915.P8887505407157666613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  (A083553 n : ℚ) / a (n - 1)

end

end A039915.P8887505407157666613

namespace A039915

/-- `A083553(n)/a(n-1)` -/
def P8887505407157666613.Spec : Prop :=
  ∀ n, P8887505407157666613.a n = (A039915 (n + 1) : ℚ)

end A039915

/-! ## A039915.P8090875260101967787

`A006093(n+1)+A000038(n)`
-/

namespace A039915.P8090875260101967787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000038 n

end

end A039915.P8090875260101967787

namespace A039915

/-- `A006093(n+1)+A000038(n)` -/
def P8090875260101967787.Spec : Prop :=
  ∀ n, P8090875260101967787.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P17470689972481125617

`A113935(n+1)-A040002(n)`
-/

namespace A039915.P17470689972481125617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - A040002 n

end

end A039915.P17470689972481125617

namespace A039915

/-- `A113935(n+1)-A040002(n)` -/
def P17470689972481125617.Spec : Prop :=
  ∀ n, P17470689972481125617.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P15519600113817326200

`A000040(n+1)-A158388(n)`
-/

namespace A039915.P15519600113817326200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A158388 n

end

end A039915.P15519600113817326200

namespace A039915

/-- `A000040(n+1)-A158388(n)` -/
def P15519600113817326200.Spec : Prop :=
  ∀ n, P15519600113817326200.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P2007272860311023192

`A052147(n+1)-A122553(n)`
-/

namespace A039915.P2007272860311023192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A122553 n

end

end A039915.P2007272860311023192

namespace A039915

/-- `A052147(n+1)-A122553(n)` -/
def P2007272860311023192.Spec : Prop :=
  ∀ n, P2007272860311023192.a n = A039915 (n + 1)

end A039915

/-! ## A039915.P1151939802423341144

`A107622(n+1)-A103947(n)`
-/

namespace A039915.P1151939802423341144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107622 (n + 1) - A103947 n

end

end A039915.P1151939802423341144

namespace A039915

/-- `A107622(n+1)-A103947(n)` -/
def P1151939802423341144.Spec : Prop :=
  ∀ n, P1151939802423341144.a n = A039915 (n + 1)

end A039915

/-!
# A039916: Concatenation of the decimal digits of Pi-3.

The programs for A039916, the canonical program `A039916.P387445281154121364` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039916 has offset 1).

The definition of A039916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039916.P387445281154121364

`floor((π-3)*10^(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A039916

/-- `floor((π-3)*10^(n+1))` -/
def P387445281154121364.Spec : Prop :=
  ∀ n, P387445281154121364.a n = A039916 (n + 1)

theorem P387445281154121364.correct : P387445281154121364.Spec := by
  intro n
  simp only [A039916, Nat.add_sub_cancel]

end A039916

/-! ## A039916.P14200644913269243888

`record[A322776(n+1)]`
-/

namespace A039916.P14200644913269243888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039916.P14200644913269243888

namespace A039916

/-- `record[A322776(n+1)]` -/
def P14200644913269243888.Spec : Prop :=
  ∀ n, P14200644913269243888.a n = A039916 (n + 1)

end A039916

/-! ## A039916.P9279972224138975357

`Δ[A046974(n)]+10*a(n-1)` with `a(0)=1`
-/

namespace A039916.P9279972224138975357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 10 * a (n - 1)

end

end A039916.P9279972224138975357

namespace A039916

/-- `Δ[A046974(n)]+10*a(n-1)` -/
def P9279972224138975357.Spec : Prop :=
  ∀ n, P9279972224138975357.a n = A039916 (n + 1)

end A039916

/-! ## A039916.P7680417221198209582

`A000796(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A039916.P7680417221198209582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000796 (n + 1 + 1) + 10 * a (n - 1)

end

end A039916.P7680417221198209582

namespace A039916

/-- `A000796(n+1)+10*a(n-1)` -/
def P7680417221198209582.Spec : Prop :=
  ∀ n, P7680417221198209582.a n = A039916 (n + 1)

end A039916

/-! ## A039916.P1256641532412134341

`Δ[A059582(n+1)]+10*a(n-1)` with `a(0)=1`
-/

namespace A039916.P1256641532412134341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 10 * a (n - 1)

end

end A039916.P1256641532412134341

namespace A039916

/-- `Δ[A059582(n+1)]+10*a(n-1)` -/
def P1256641532412134341.Spec : Prop :=
  ∀ n, P1256641532412134341.a n = A039916 (n + 1)

end A039916

/-!
# A039918: Partial sums of decimal digits of Pi (ignoring the initial 3).

The programs for A039918, there is no canonical definition to state claims against.
-/

/-! ## A039918.P10267125082521662256

`∑[A000796(n+1)]`
-/

namespace A039918.P10267125082521662256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P10267125082521662256

/-! ## A039918.P2829809746292576246

`∑[A123152(n+2)-1]`
-/

namespace A039918.P2829809746292576246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P2829809746292576246

/-! ## A039918.P12863507400303340441

`Δ[A227844(n+3)]-4`
-/

namespace A039918.P12863507400303340441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A039918.P12863507400303340441

/-! ## A039918.P15327065132437899953

`∑[∑[A095916(n+1)]+3]`
-/

namespace A039918.P15327065132437899953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P15327065132437899953

/-! ## A039918.P5756419550239102090

`∑[A110883(n+1)]-A046974(n)`
-/

namespace A039918.P5756419550239102090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A046974 n

end

end A039918.P5756419550239102090

/-! ## A039918.P4498880981639288348

`∑[A187747(n+1)+A001113(n+1)]`
-/

namespace A039918.P4498880981639288348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 (n + 1) + A001113 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P4498880981639288348

/-! ## A039918.P8799013941186779502

`∑[A110883(n+1)-(9-A030644(n))]`
-/

namespace A039918.P8799013941186779502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 1) - (9 - A030644 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P8799013941186779502

/-! ## A039918.P2187189330969639310

`∑[abs(Δ[A046974(n)])]`
-/

namespace A039918.P2187189330969639310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P2187189330969639310

/-! ## A039918.P8620680632927437901

`A046974(n+1)-3`
-/

namespace A039918.P8620680632927437901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 (n + 1) - 3

end

end A039918.P8620680632927437901

/-! ## A039918.P8880097361855084801

`∑[sqrt(A072448(n+2))]`
-/

namespace A039918.P8880097361855084801
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072448 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P8880097361855084801

/-! ## A039918.P12707245599017690846

`∑[9-A030644(n+1)]`
-/

namespace A039918.P12707245599017690846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P12707245599017690846

/-! ## A039918.P2441280921005102748

`∑[abs(Δ[A069159(n+1)])]`
-/

namespace A039918.P2441280921005102748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069159 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P2441280921005102748

/-! ## A039918.P1167187759095075848

`∑[A007953(Δ[A046974(n)])]`
-/

namespace A039918.P1167187759095075848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P1167187759095075848

/-! ## A039918.P6906628483145303810

`∑[A048766(A261197(n+2))]`
-/

namespace A039918.P6906628483145303810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A261197 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P6906628483145303810

/-! ## A039918.P1135761054249812502

`∑[Δ[A046974(n)]%A035336(n+1)]`
-/

namespace A039918.P1135761054249812502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A035336 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P1135761054249812502

/-! ## A039918.P558706489688958016

`∑[A073212(n+1)-A001113(n+1)]`
-/

namespace A039918.P558706489688958016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 (n + 1) - A001113 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P558706489688958016

/-! ## A039918.P11634579430581069544

`∑[A054249(n+2)+A033999(n+1)]`
-/

namespace A039918.P11634579430581069544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 2) + A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P11634579430581069544

/-! ## A039918.P11285486048960359035

`∑[A054249(n+2)-A062157(n+1)]`
-/

namespace A039918.P11285486048960359035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 2) - A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P11285486048960359035

/-! ## A039918.P591929460460507787

`∑[A001355(2*n+3)]`
-/

namespace A039918.P591929460460507787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P591929460460507787

/-! ## A039918.P2452548804326291129

`∑[A110766(2*n+3)]`
-/

namespace A039918.P2452548804326291129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039918.P2452548804326291129

/-!
# A039919: Related to enumeration of edge-rooted catafusenes.

The programs for A039919, the canonical program `A039919.P74578946767389129` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039919 has offset 1).

The definition of A039919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039919.P365828371367436933

`A045868(n)-A181768(n)`
-/

namespace A039919.P365828371367436933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - A181768 n

end

end A039919.P365828371367436933

namespace A039919

/-- `A045868(n)-A181768(n)` -/
def P365828371367436933.Spec : Prop :=
  ∀ n, P365828371367436933.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P12531111007613356810

`A026759(n)-A278301(n)`
-/

namespace A039919.P12531111007613356810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026759 n - A278301 n

end

end A039919.P12531111007613356810

namespace A039919

/-- `A026759(n)-A278301(n)` -/
def P12531111007613356810.Spec : Prop :=
  ∀ n, P12531111007613356810.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P9598565710236445305

`∑[A045908(n)+A044046(n)]`
-/

namespace A039919.P9598565710236445305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 n + A044046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039919.P9598565710236445305

namespace A039919

/-- `∑[A045908(n)+A044046(n)]` -/
def P9598565710236445305.Spec : Prop :=
  ∀ n, P9598565710236445305.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P16801352744728329306

`∑[A045868(n)-A002212(n)]`
-/

namespace A039919.P16801352744728329306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039919.P16801352744728329306

namespace A039919

/-- `∑[A045868(n)-A002212(n)]` -/
def P16801352744728329306.Spec : Prop :=
  ∀ n, P16801352744728329306.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P74578946767389129

`A002212(n+1)-∑[A002212(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039919

/-- `A002212(n+1)-∑[A002212(n)]` -/
def P74578946767389129.Spec : Prop :=
  ∀ n, P74578946767389129.a n = A039919 (n + 1)

theorem P74578946767389129.correct : P74578946767389129.Spec := by
  intro n
  simp only [A039919, Nat.add_sub_cancel]

end A039919

/-! ## A039919.P16548885601997492762

`∑[A045868(n)]-A007317(n+1)`
-/

namespace A039919.P16548885601997492762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007317 (n + 1)

end

end A039919.P16548885601997492762

namespace A039919

/-- `∑[A045868(n)]-A007317(n+1)` -/
def P16548885601997492762.Spec : Prop :=
  ∀ n, P16548885601997492762.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P6229608761627473620

`2*Δ[A033321(n)]-A129167(n)`
-/

namespace A039919.P6229608761627473620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A129167 n

end

end A039919.P6229608761627473620

namespace A039919

/-- `2*Δ[A033321(n)]-A129167(n)` -/
def P6229608761627473620.Spec : Prop :=
  ∀ n, P6229608761627473620.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P9598818866878724492

`A002212(n+1)-A007317(n+1)`
-/

namespace A039919.P9598818866878724492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) - A007317 (n + 1)

end

end A039919.P9598818866878724492

namespace A039919

/-- `A002212(n+1)-A007317(n+1)` -/
def P9598818866878724492.Spec : Prop :=
  ∀ n, P9598818866878724492.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P2644279416747678868

`A002212(n+1)-A181768(n+1)`
-/

namespace A039919.P2644279416747678868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) - A181768 (n + 1)

end

end A039919.P2644279416747678868

namespace A039919

/-- `A002212(n+1)-A181768(n+1)` -/
def P2644279416747678868.Spec : Prop :=
  ∀ n, P2644279416747678868.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P9672446415957245503

`A025238(n+2)-A007317(n+1)`
-/

namespace A039919.P9672446415957245503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025238 (n + 2) - A007317 (n + 1)

end

end A039919.P9672446415957245503

namespace A039919

/-- `A025238(n+2)-A007317(n+1)` -/
def P9672446415957245503.Spec : Prop :=
  ∀ n, P9672446415957245503.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P16188557490333249854

`∑[A030520(n+2)-A030529(n+2)]`
-/

namespace A039919.P16188557490333249854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030520 (n + 2) - A030529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039919.P16188557490333249854

namespace A039919

/-- `∑[A030520(n+2)-A030529(n+2)]` -/
def P16188557490333249854.Spec : Prop :=
  ∀ n, P16188557490333249854.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P9729523893318250855

`A002212(n+1)-A055879(2*(n+1))`
-/

namespace A039919.P9729523893318250855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) - A055879 (2 * (n + 1))

end

end A039919.P9729523893318250855

namespace A039919

/-- `A002212(n+1)-A055879(2*(n+1))` -/
def P9729523893318250855.Spec : Prop :=
  ∀ n, P9729523893318250855.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P6125083099742537293

`A025238(n+2)-A055879(2*(n+1))`
-/

namespace A039919.P6125083099742537293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025238 (n + 2) - A055879 (2 * (n + 1))

end

end A039919.P6125083099742537293

namespace A039919

/-- `A025238(n+2)-A055879(2*(n+1))` -/
def P6125083099742537293.Spec : Prop :=
  ∀ n, P6125083099742537293.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P6467336868229806796

`A002215(2*(n+1))-A055879(2*(n+1))`
-/

namespace A039919.P6467336868229806796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002215 (2 * (n + 1)) - A055879 (2 * (n + 1))

end

end A039919.P6467336868229806796

namespace A039919

/-- `A002215(2*(n+1))-A055879(2*(n+1))` -/
def P6467336868229806796.Spec : Prop :=
  ∀ n, P6467336868229806796.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P17105158326237197000

`∑[A002215(2*(n+1))-A002215(2*n+1)]`
-/

namespace A039919.P17105158326237197000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002215 (2 * (n + 1)) - A002215 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039919.P17105158326237197000

namespace A039919

/-- `∑[A002215(2*(n+1))-A002215(2*n+1)]` -/
def P17105158326237197000.Spec : Prop :=
  ∀ n, P17105158326237197000.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P10534206565562956968

`A002212(n+1)-(A129167(n)+A033321(n))`
-/

namespace A039919.P10534206565562956968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) - (A129167 n + A033321 n)

end

end A039919.P10534206565562956968

namespace A039919

/-- `A002212(n+1)-(A129167(n)+A033321(n))` -/
def P10534206565562956968.Spec : Prop :=
  ∀ n, P10534206565562956968.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P5499696956662462906

`∑[∑[A045890(n)]-A045890(n)]`
-/

namespace A039919.P5499696956662462906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045890 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A045890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039919.P5499696956662462906

namespace A039919

/-- `∑[∑[A045890(n)]-A045890(n)]` -/
def P5499696956662462906.Spec : Prop :=
  ∀ n, P5499696956662462906.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P4334653879944708000

`A122737(n+2)-A007317(n+2)`
-/

namespace A039919.P4334653879944708000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122737 (n + 2) - A007317 (n + 2)

end

end A039919.P4334653879944708000

namespace A039919

/-- `A122737(n+2)-A007317(n+2)` -/
def P4334653879944708000.Spec : Prop :=
  ∀ n, P4334653879944708000.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P14997355150063182330

`A045907(2*n+1)-A002212(n+1)`
-/

namespace A039919.P14997355150063182330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045907 (2 * n + 1) - A002212 (n + 1)

end

end A039919.P14997355150063182330

namespace A039919

/-- `A045907(2*n+1)-A002212(n+1)` -/
def P14997355150063182330.Spec : Prop :=
  ∀ n, P14997355150063182330.a n = A039919 (n + 1)

end A039919

/-! ## A039919.P16222702223610243454

`A007317(n+2)-2*A007317(n+1)`
-/

namespace A039919.P16222702223610243454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 2) - 2 * A007317 (n + 1)

end

end A039919.P16222702223610243454

namespace A039919

/-- `A007317(n+2)-2*A007317(n+1)` -/
def P16222702223610243454.Spec : Prop :=
  ∀ n, P16222702223610243454.a n = A039919 (n + 1)

end A039919

/-!
# A039920: Concatenation of the first n decimal digits of e-2.

The programs for A039920, there is no canonical definition to state claims against.
-/

/-! ## A039920.P1039394235992956241

`A011543(n+1)-2*A011557(n+1)`
-/

namespace A039920.P1039394235992956241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011543 (n + 1) - 2 * A011557 (n + 1)

end

end A039920.P1039394235992956241

/-!
# A039921: Continued fraction expansion of w = 2*cos(Pi/7).

The programs for A039921, there is no canonical definition to state claims against.
-/

/-! ## A039921.P1407777974485594912

`A316389(A184985(n+1))`
-/

namespace A039921.P1407777974485594912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316389 (A184985 (n + 1)).toNat

end

end A039921.P1407777974485594912

/-!
# A039924: G.f.: Sum_{k>=0} x^(k^2)*(-1)^k/(Product_{i=1..k} 1-x^i).

The programs for A039924, there is no canonical definition to state claims against.
-/

/-! ## A039924.P1900361383580621242

`A286041(n)-A286316(n)`
-/

namespace A039924.P1900361383580621242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286041 n - A286316 n

end

end A039924.P1900361383580621242

/-! ## A039924.P1778176428966578225

`2*A286041(n)-A003114(n)`
-/

namespace A039924.P1778176428966578225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286041 n - A003114 n

end

end A039924.P1778176428966578225

/-! ## A039924.P12190819390742426832

`A003114(n)-2*A286316(n)`
-/

namespace A039924.P12190819390742426832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n - 2 * A286316 n

end

end A039924.P12190819390742426832

/-! ## A039924.P6990054328991852482

`A286041(n)+A057428(n)*A286316(n)`
-/

namespace A039924.P6990054328991852482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286041 n + A057428 n * A286316 n

end

end A039924.P6990054328991852482

/-! ## A039924.P509725257578571047

`A057428(n)+A052839(n)-A238708(n)-2*A286316(n)`
-/

namespace A039924.P509725257578571047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A052839 n - A238708 n - 2 * A286316 n

end

end A039924.P509725257578571047

/-! ## A039924.P17075359719327093200

`A035457(2*n)-A238708(n)-2*A286316(n)`
-/

namespace A039924.P17075359719327093200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A238708 n - 2 * A286316 n

end

end A039924.P17075359719327093200

/-! ## A039924.P17524835841819568083

`A000041(n)-A039899(n)-2*A286316(n)`
-/

namespace A039924.P17524835841819568083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A039899 n - 2 * A286316 n

end

end A039924.P17524835841819568083

/-! ## A039924.P8364126330981109100

`A133041(n)-n-A039899(n)-2*A286316(n)`
-/

namespace A039924.P8364126330981109100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A039899 n - 2 * A286316 n

end

end A039924.P8364126330981109100

/-! ## A039924.P644100705153911210

`2*A286041(n)-A114087(A152947(n+1))`
-/

namespace A039924.P644100705153911210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286041 n - A114087 (A152947 (n + 1)).toNat

end

end A039924.P644100705153911210

/-! ## A039924.P6414493137767040732

`A114087(A152947(n+1))-2*A286316(n)`
-/

namespace A039924.P6414493137767040732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114087 (A152947 (n + 1)).toNat - 2 * A286316 n

end

end A039924.P6414493137767040732

/-! ## A039924.P831986226272031892

`2*A286041(n)-A114087(A133263(n))`
-/

namespace A039924.P831986226272031892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286041 n - A114087 (A133263 n).toNat

end

end A039924.P831986226272031892

/-! ## A039924.P2254581158595245567

`A114087(A133263(n))-2*A286316(n)`
-/

namespace A039924.P2254581158595245567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114087 (A133263 n).toNat - 2 * A286316 n

end

end A039924.P2254581158595245567

/-!
# A039925: Random digits.

The programs for A039925, there is no canonical definition to state claims against.
-/

/-! ## A039925.P3442764791611450528

`A039926(2*n)*10+A039926(2*n+1)`
-/

namespace A039925.P3442764791611450528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039926 (2 * n) * 10 + A039926 (2 * n + 1)

end

end A039925.P3442764791611450528

/-!
# A039927: Number of types of maximal mixed orthogonal arrays with n runs.

The programs for A039927, there is no canonical definition to state claims against.
-/

/-! ## A039927.P5927717265544995333

`gcd(2^val(n+1, 2), ∏{e}[n+1, #+2])%∏{e}[n+1, #+1]`
-/

namespace A039927.P5927717265544995333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ SequenceMachineLib.valuation (n + 1) 2) (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 2)) % (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A039927.P5927717265544995333

/-! ## A039927.P17940526091007155362

`ceil(A088433(n+1)²/5)`
-/

namespace A039927.P17940526091007155362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088433 (n + 1) ^ 2 : ℚ) / 5⌉

end

end A039927.P17940526091007155362

/-! ## A039927.P1541690452081896029

`A035684(∑{d}[n+1, gcd(2, #)]+6)`
-/

namespace A039927.P1541690452081896029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035684 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 d + 6)

end

end A039927.P1541690452081896029

/-! ## A039927.P2827824807909843279

`gcd(a(floor(n/5))+n, A037291(n+1))` with `a(0)=0`
-/

namespace A039927.P2827824807909843279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (a ⌊(n : ℚ) / 5⌋.toNat + n : ℤ) (A037291 (n + 1))

end

end A039927.P2827824807909843279

/-! ## A039927.P4482659681455427885

`A300385(n+1)^(2-char[xor(n, 2*n)])`
-/

namespace A039927.P4482659681455427885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300385 (n + 1) : ℚ) ^ (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A039927.P4482659681455427885

/-!
# A039929: Second column of Fibonacci Jabotinsky-triangle A039692.

The programs for A039929, there is no canonical definition to state claims against.
-/

/-! ## A039929.P18328484215517980204

`A194938(∑[n+1]+3)`
-/

namespace A039929.P18328484215517980204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194938 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A039929.P18328484215517980204

/-! ## A039929.P5484004666920798598

`A039692(∑[n]+2)*A057427(n)`
-/

namespace A039929.P5484004666920798598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039692 (∑ j ∈ Finset.range (n + 1), f1 j + 2) * A057427 n

end

end A039929.P5484004666920798598

/-! ## A039929.P5897733308520304912

`A039692(A133263(n))-A000007(n)`
-/

namespace A039929.P5897733308520304912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039692 (A133263 n).toNat - A000007 n

end

end A039929.P5897733308520304912

/-! ## A039929.P11254833447630478857

`A039692(A133263(n))*A178334(n)`
-/

namespace A039929.P11254833447630478857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039692 (A133263 n).toNat * A178334 n

end

end A039929.P11254833447630478857

/-! ## A039929.P6348484632177422304

`lcm(A039692(A133263(n)), A072376(n))`
-/

namespace A039929.P6348484632177422304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039692 (A133263 n).toNat) (A072376 n)

end

end A039929.P6348484632177422304

/-! ## A039929.P5284600077320740401

`A039692(A133263(n))-A051924(n+1)%2`
-/

namespace A039929.P5284600077320740401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039692 (A133263 n).toNat - Int.tmod (A051924 (n + 1)) 2

end

end A039929.P5284600077320740401

/-!
# A039930: Height of lattice of parameters of mixed orthogonal arrays with n runs and strength 2.

The programs for A039930, there is no canonical definition to state claims against.
-/

/-! ## A039930.P17631061139002749656

`A178638(n+1)+A077600(A178649(n+1))`
-/

namespace A039930.P17631061139002749656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178638 (n + 1) + A077600 (A178649 (n + 1)).toNat

end

end A039930.P17631061139002749656

/-! ## A039930.P802441839225759126

`A069157(A054496(n+1)*A093803(n+1))`
-/

namespace A039930.P802441839225759126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A054496 (n + 1) * A093803 (n + 1)).toNat

end

end A039930.P802441839225759126

/-!
# A039932: Smallest number k for which k, 2k, ... nk all contain the digit 1.

The programs for A039932, there is no canonical definition to state claims against.
-/

/-! ## A039932.P2999125416177299886

`A319542(∑[char[A319548(n+1)]]+1)`
-/

namespace A039932.P2999125416177299886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319548 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319542 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A039932.P2999125416177299886

/-! ## A039932.P11018454626355510618

`A319542(A101296(n+1)^A211271(n+4))`
-/

namespace A039932.P11018454626355510618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319542 (SequenceMachineLib.roundAway ((A101296 (n + 1) : ℚ) ^ (A211271 (n + 4) : ℤ))).toNat

end

end A039932.P11018454626355510618

/-! ## A039932.P14456182579434761801

`A319542(A101296(n+1)^A072670(2*n+3))`
-/

namespace A039932.P14456182579434761801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319542 (SequenceMachineLib.roundAway ((A101296 (n + 1) : ℚ) ^ (A072670 (2 * n + 3) : ℤ))).toNat

end

end A039932.P14456182579434761801

/-!
# A039933: Smallest k for which k, 2k, ... n*k all contain the digit 2.

The programs for A039933, there is no canonical definition to state claims against.
-/

/-! ## A039933.P12725287797265404556

`A008619(n)*A226570(A206451(n+1))`
-/

namespace A039933.P12725287797265404556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A226570 (A206451 (n + 1)).toNat

end

end A039933.P12725287797265404556

/-!
# A039936: Smallest k for which k, 2k, ... nk all contain the digit 5.

The programs for A039936, the canonical program `A039936.P4292264429620002064` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039936 has offset 1).

The definition of A039936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039936.P700482993905137932

`5^ceil(log2(n+2))`
-/

namespace A039936.P700482993905137932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌈Real.logb 2 (n + 2 : ℝ)⌉ : ℤ)

end

end A039936.P700482993905137932

namespace A039936

/-- `5^ceil(log2(n+2))` -/
def P700482993905137932.Spec : Prop :=
  ∀ n, P700482993905137932.a n = (A039936 (n + 1) : ℚ)

end A039936

/-! ## A039936.P4292264429620002064

`5*a(floor((n-1)/2))` with `a(0)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A039936

/-- `5*a(floor((n-1)/2))` -/
def P4292264429620002064.Spec : Prop :=
  ∀ n, (P4292264429620002064.a n : ℤ) = A039936 (n + 1)

theorem P4292264429620002064.correct : P4292264429620002064.Spec := by
  intro n
  simp only [A039936, Nat.add_sub_cancel]

end A039936

/-! ## A039936.P14193567798596152948

`∏[gcd(5, (2^val(n+1, 2))%(n+1))]`
-/

namespace A039936.P14193567798596152948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (2 ^ SequenceMachineLib.valuation (n + 1) 2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A039936.P14193567798596152948

namespace A039936

/-- `∏[gcd(5, (2^val(n+1, 2))%(n+1))]` -/
def P14193567798596152948.Spec : Prop :=
  ∀ n, (P14193567798596152948.a n : ℤ) = A039936 (n + 1)

end A039936

/-! ## A039936.P2005025306690959264

`A000351(ceil(log2(n+2)))`
-/

namespace A039936.P2005025306690959264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat

end

end A039936.P2005025306690959264

namespace A039936

/-- `A000351(ceil(log2(n+2)))` -/
def P2005025306690959264.Spec : Prop :=
  ∀ n, P2005025306690959264.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P16671403994306458502

`sqrt(5^A191682(n+1))`
-/

namespace A039936.P16671403994306458502
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((5 : ℚ) ^ (A191682 (n + 1) : ℤ) : ℝ)

end

end A039936.P16671403994306458502

namespace A039936

/-- `sqrt(5^A191682(n+1))` -/
def P16671403994306458502.Spec : Prop :=
  ∀ n, P16671403994306458502.a n = (A039936 (n + 1) : ℝ)

end A039936

/-! ## A039936.P11306493487316393834

`∏[4*char[A000225(n)]+1]`
-/

namespace A039936.P11306493487316393834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A039936.P11306493487316393834

namespace A039936

/-- `∏[4*char[A000225(n)]+1]` -/
def P11306493487316393834.Spec : Prop :=
  ∀ n, (P11306493487316393834.a n : ℤ) = A039936 (n + 1)

end A039936

/-! ## A039936.P10186332166446170152

`∏[C(5, val(A318884(n+1), 2))]`
-/

namespace A039936.P10186332166446170152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (SequenceMachineLib.valuation (A318884 (n + 1)).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A039936.P10186332166446170152

namespace A039936

/-- `∏[C(5, val(A318884(n+1), 2))]` -/
def P10186332166446170152.Spec : Prop :=
  ∀ n, (P10186332166446170152.a n : ℤ) = A039936 (n + 1)

end A039936

/-! ## A039936.P14039698801179980612

`A056451(A129972(n+1))`
-/

namespace A039936.P14039698801179980612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (A129972 (n + 1)).toNat

end

end A039936.P14039698801179980612

namespace A039936

/-- `A056451(A129972(n+1))` -/
def P14039698801179980612.Spec : Prop :=
  ∀ n, P14039698801179980612.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P13791317718931546025

`A056451(A358700(n+1))`
-/

namespace A039936.P13791317718931546025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (A358700 (n + 1)).toNat

end

end A039936.P13791317718931546025

namespace A039936

/-- `A056451(A358700(n+1))` -/
def P13791317718931546025.Spec : Prop :=
  ∀ n, P13791317718931546025.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P5055327820421677177

`∏[A000108(C(3, A006530(n+1)))]`
-/

namespace A039936.P5055327820421677177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 3 (A006530 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A039936.P5055327820421677177

namespace A039936

/-- `∏[A000108(C(3, A006530(n+1)))]` -/
def P5055327820421677177.Spec : Prop :=
  ∀ n, P5055327820421677177.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P5539123332410781106

`A017920(2*A070939(n+1))`
-/

namespace A039936.P5539123332410781106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017920 (2 * A070939 (n + 1)).toNat

end

end A039936.P5539123332410781106

namespace A039936

/-- `A017920(2*A070939(n+1))` -/
def P5539123332410781106.Spec : Prop :=
  ∀ n, P5539123332410781106.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P15479782864317059502

`A007088(A062383(n+1))/A062383(n+1)`
-/

namespace A039936.P15479782864317059502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (A062383 (n + 1)).toNat : ℚ) / (A062383 (n + 1) : ℚ)

end

end A039936.P15479782864317059502

namespace A039936

/-- `A007088(A062383(n+1))/A062383(n+1)` -/
def P15479782864317059502.Spec : Prop :=
  ∀ n, P15479782864317059502.a n = (A039936 (n + 1) : ℚ)

end A039936

/-! ## A039936.P14170986316479982275

`A032532(A062383(n+1))`
-/

namespace A039936.P14170986316479982275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A062383 (n + 1)).toNat

end

end A039936.P14170986316479982275

namespace A039936

/-- `A032532(A062383(n+1))` -/
def P14170986316479982275.Spec : Prop :=
  ∀ n, P14170986316479982275.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P16103596675096960207

`A116553(A003817(n+1))`
-/

namespace A039936.P16103596675096960207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116553 (A003817 (n + 1)).toNat

end

end A039936.P16103596675096960207

namespace A039936

/-- `A116553(A003817(n+1))` -/
def P16103596675096960207.Spec : Prop :=
  ∀ n, P16103596675096960207.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P1851020725497799174

`A033042(2*A053644(n+1))`
-/

namespace A039936.P1851020725497799174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (2 * A053644 (n + 1)).toNat

end

end A039936.P1851020725497799174

namespace A039936

/-- `A033042(2*A053644(n+1))` -/
def P1851020725497799174.Spec : Prop :=
  ∀ n, P1851020725497799174.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P11075455033446420655

`A116520(2*A053644(n+1))`
-/

namespace A039936.P11075455033446420655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 (2 * A053644 (n + 1)).toNat

end

end A039936.P11075455033446420655

namespace A039936

/-- `A116520(2*A053644(n+1))` -/
def P11075455033446420655.Spec : Prop :=
  ∀ n, P11075455033446420655.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P11214602957343077854

`A268525(2*A053644(n+1))`
-/

namespace A039936.P11214602957343077854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268525 (2 * A053644 (n + 1)).toNat

end

end A039936.P11214602957343077854

namespace A039936

/-- `A268525(2*A053644(n+1))` -/
def P11214602957343077854.Spec : Prop :=
  ∀ n, P11214602957343077854.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P12286789393589291730

`A268526(2*A053644(n+1))`
-/

namespace A039936.P12286789393589291730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268526 (2 * A053644 (n + 1)).toNat

end

end A039936.P12286789393589291730

namespace A039936

/-- `A268526(2*A053644(n+1))` -/
def P12286789393589291730.Spec : Prop :=
  ∀ n, P12286789393589291730.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P4638636197194953462

`A033042(A206332(n+1)-n)`
-/

namespace A039936.P4638636197194953462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A206332 (n + 1) - (n : ℤ)).toNat

end

end A039936.P4638636197194953462

namespace A039936

/-- `A033042(A206332(n+1)-n)` -/
def P4638636197194953462.Spec : Prop :=
  ∀ n, P4638636197194953462.a n = A039936 (n + 1)

end A039936

/-! ## A039936.P3517770000519234263

`A033042(A080079(n+1)+n+1)`
-/

namespace A039936.P3517770000519234263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A080079 (n + 1) + (n + 1 : ℤ)).toNat

end

end A039936.P3517770000519234263

namespace A039936

/-- `A033042(A080079(n+1)+n+1)` -/
def P3517770000519234263.Spec : Prop :=
  ∀ n, P3517770000519234263.a n = A039936 (n + 1)

end A039936

/-!
# A039938: Smallest k for which k, 2k, ... nk all contain the digit 7.

The programs for A039938, there is no canonical definition to state claims against.
-/

/-! ## A039938.P17960506418799689003

`A285846(A082743(n))`
-/

namespace A039938.P17960506418799689003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285846 (A082743 n).toNat

end

end A039938.P17960506418799689003

/-! ## A039938.P7193297138941420145

`A285846(A381225(n))`
-/

namespace A039938.P7193297138941420145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285846 (A381225 n).toNat

end

end A039938.P7193297138941420145

/-! ## A039938.P15440138938153293662

`A285846(record[A307974(n)])`
-/

namespace A039938.P15440138938153293662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039938.P15440138938153293662

/-! ## A039938.P10409926090163241403

`A285846(A001104(n+1))`
-/

namespace A039938.P10409926090163241403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285846 (A001104 (n + 1)).toNat

end

end A039938.P10409926090163241403

/-! ## A039938.P250194094851792936

`A285846(A002998(n+1))`
-/

namespace A039938.P250194094851792936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285846 (A002998 (n + 1)).toNat

end

end A039938.P250194094851792936

/-!
# A039941: Alternately add and multiply.

The programs for A039941, there is no canonical definition to state claims against.
-/

/-! ## A039941.P15587888823844150394

`A029157(eq[A066635(n+1), A348217(n+1)])`
-/

namespace A039941.P15587888823844150394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029157 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A039941.P15587888823844150394

/-!
# A039943: Every integer eventually goes to one of these under the "x goes to sum of squares of digits of x" map.

The programs for A039943, there is no canonical definition to state claims against.
-/

/-! ## A039943.P528420547134612239

`eq[1, A364682(n)]`
-/

namespace A039943.P528420547134612239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039943.P528420547134612239

/-! ## A039943.P14338899857686396252

`∪[A193996(n+1), n^17]`
-/

namespace A039943.P14338899857686396252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193996 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 17

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A039943.P14338899857686396252

/-! ## A039943.P17297141397794324097

`eq[0, A099645(round(sqrt(n²+1)))]`
-/

namespace A039943.P17297141397794324097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039943.P17297141397794324097

/-! ## A039943.P12305408921558090106

`lt[A099645(A028310(n)), 1]`
-/

namespace A039943.P12305408921558090106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039943.P12305408921558090106

/-! ## A039943.P436124037911509284

`lt[A099645(A065033(2*n)), 1]`
-/

namespace A039943.P436124037911509284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039943.P436124037911509284

/-!
# A039944: Undulating palindromic primes of form ABABAB...BA with alternating prime and nonprime digits.

The programs for A039944, there is no canonical definition to state claims against.
-/

/-! ## A039944.P17634202929088175636

`filter[A217560(2*(n+1)), A136522(#)]`
-/

namespace A039944.P17634202929088175636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217560 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A039944.P17634202929088175636

/-! ## A039944.P16250290416911079101

`filter[A375326(2*(n+1)), A136522(#)]`
-/

namespace A039944.P16250290416911079101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375326 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A039944.P16250290416911079101

/-! ## A039944.P4065792146893035149

`∪[A046479(n+1), A020639(A155924(n+1))]`
-/

namespace A039944.P4065792146893035149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155924 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039944.P4065792146893035149

/-! ## A039944.P7724558358035516748

`∩[A002385(A161336(n)+1), A030291(n+1)]`
-/

namespace A039944.P7724558358035516748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A161336 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039944.P7724558358035516748

/-!
# A039946: Expansion of Molien series for 8-dimensional complex Clifford group of genus 3 and order 743178240.

The programs for A039946, there is no canonical definition to state claims against.
-/

/-! ## A039946.P6283277325364654043

`A027633(2*n)`
-/

namespace A039946.P6283277325364654043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 (2 * n)

end

end A039946.P6283277325364654043

/-! ## A039946.P4486372832235035773

`A027633(A004277(n))+A000007(n)`
-/

namespace A039946.P4486372832235035773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 (A004277 n).toNat + A000007 n

end

end A039946.P4486372832235035773

/-! ## A039946.P778362378092328338

`A027633(record[A014681(n)])^A057428(n)²`
-/

namespace A039946.P778362378092328338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027633 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A039946.P778362378092328338

/-! ## A039946.P16864646485855978189

`A027633(record[A014681(n)])^A260196(n)²`
-/

namespace A039946.P16864646485855978189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027633 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ (A260196 n ^ 2 : ℤ)

end

end A039946.P16864646485855978189

/-! ## A039946.P6192484888624676712

`A027633(record[A014681(n)])^(1-A000007(n))`
-/

namespace A039946.P6192484888624676712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027633 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A039946.P6192484888624676712

/-! ## A039946.P4642088176327936721

`A027633(record[A014681(n)])^(A000040(n+1)%2)`
-/

namespace A039946.P4642088176327936721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027633 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A039946.P4642088176327936721

/-! ## A039946.P5932586381970229675

`A027633(record[A014681(n)])^(n-(A004273(n)-n))`
-/

namespace A039946.P5932586381970229675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027633 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ ((n : ℤ) - (A004273 n - (n : ℤ)) : ℤ)

end

end A039946.P5932586381970229675

/-!
# A039948: A triangle related to A000045 (Fibonacci numbers).

The programs for A039948, the canonical program `A039948.P16586624803639266693` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039948 has offset 0).

The definition of A039948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039948.P15862748140487865548

`A094441(n)*A119502(n)`
-/

namespace A039948.P15862748140487865548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 n * A119502 n

end

end A039948.P15862748140487865548

namespace A039948

/-- `A094441(n)*A119502(n)` -/
def P15862748140487865548.Spec : Prop :=
  ∀ n, P15862748140487865548.a n = A039948 n

end A039948

/-! ## A039948.P2764867544595683818

`A025581(n)!*A094441(n)`
-/

namespace A039948.P2764867544595683818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A094441 n

end

end A039948.P2764867544595683818

namespace A039948

/-- `A025581(n)!*A094441(n)` -/
def P2764867544595683818.Spec : Prop :=
  ∀ n, P2764867544595683818.a n = A039948 n

end A039948

/-! ## A039948.P16586624803639266693

`A094587(n)*A104762(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039948

/-- `A094587(n)*A104762(n+1)` -/
def P16586624803639266693.Spec : Prop :=
  ∀ n, P16586624803639266693.a n = A039948 n

theorem P16586624803639266693.correct : P16586624803639266693.Spec := by
  intro n
  simp only [A039948]

end A039948

/-! ## A039948.P3884926481607153183

`A094587(n)*A123231(A099375(n))`
-/

namespace A039948.P3884926481607153183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A123231 (A099375 n).toNat

end

end A039948.P3884926481607153183

namespace A039948

/-- `A094587(n)*A123231(A099375(n))` -/
def P3884926481607153183.Spec : Prop :=
  ∀ n, P3884926481607153183.a n = A039948 n

end A039948

/-! ## A039948.P5585705891420456229

`A000045(A004736(n+1))*A094587(n)`
-/

namespace A039948.P5585705891420456229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1)).toNat * A094587 n

end

end A039948.P5585705891420456229

namespace A039948

/-- `A000045(A004736(n+1))*A094587(n)` -/
def P5585705891420456229.Spec : Prop :=
  ∀ n, P5585705891420456229.a n = A039948 n

end A039948

/-! ## A039948.P2876996892259790047

`A000045(A193739(A014132(n+1)))*A094587(n)`
-/

namespace A039948.P2876996892259790047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A193739 (A014132 (n + 1)).toNat).toNat * A094587 n

end

end A039948.P2876996892259790047

namespace A039948

/-- `A000045(A193739(A014132(n+1)))*A094587(n)` -/
def P2876996892259790047.Spec : Prop :=
  ∀ n, P2876996892259790047.a n = A039948 n

end A039948

/-!
# A039949: Primes of the form 30n - 13.

The programs for A039949, the canonical program `A039949.P4682941699445093931` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039949 has offset 1).

The definition of A039949 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141860, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A039949.P14714949720780472930

`A158648(n+1)*30+17`
-/

namespace A039949.P14714949720780472930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158648 (n + 1) * 30 + 17

end

end A039949.P14714949720780472930

namespace A039949

/-- `A158648(n+1)*30+17` -/
def P14714949720780472930.Spec : Prop :=
  ∀ n, P14714949720780472930.a n = A039949 (n + 1)

end A039949

/-! ## A039949.P4682941699445093931

`A141860(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039949

/-- `A141860(n+2)` -/
def P4682941699445093931.Spec : Prop :=
  ∀ n, P4682941699445093931.a n = A039949 (n + 1)

theorem P4682941699445093931.correct : P4682941699445093931.Spec := by
  intro n
  simp only [A039949, Nat.add_sub_cancel]

end A039949

/-! ## A039949.P6992861302872493297

`p?[30*n+17]`
-/

namespace A039949.P6992861302872493297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A039949.P6992861302872493297

namespace A039949

/-- `p?[30*n+17]` -/
def P6992861302872493297.Spec : Prop :=
  ∀ n, (P6992861302872493297.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P2510530242891743399

`or(1, p?[a(n-1)+15])` with `a(0)=17`
-/

namespace A039949.P2510530242891743399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A039949.P2510530242891743399

namespace A039949

/-- `or(1, p?[a(n-1)+15])` -/
def P2510530242891743399.Spec : Prop :=
  ∀ n, (P2510530242891743399.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P3602364832710992

`∩[A030432(n+1), A132239(n+1)]`
-/

namespace A039949.P3602364832710992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P3602364832710992

namespace A039949

/-- `∩[A030432(n+1), A132239(n+1)]` -/
def P3602364832710992.Spec : Prop :=
  ∀ n, (P3602364832710992.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P16629506175554631570

`∩[A045357(n+1), A132239(n+1)]`
-/

namespace A039949.P16629506175554631570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P16629506175554631570

namespace A039949

/-- `∩[A045357(n+1), A132239(n+1)]` -/
def P16629506175554631570.Spec : Prop :=
  ∀ n, (P16629506175554631570.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P11986816470734986778

`∩[A045380(n+1), A051615(n+1)]`
-/

namespace A039949.P11986816470734986778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P11986816470734986778

namespace A039949

/-- `∩[A045380(n+1), A051615(n+1)]` -/
def P11986816470734986778.Spec : Prop :=
  ∀ n, (P11986816470734986778.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P15864816015262834682

`or(1, p?[A128468(n)])`
-/

namespace A039949.P15864816015262834682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A039949.P15864816015262834682

namespace A039949

/-- `or(1, p?[A128468(n)])` -/
def P15864816015262834682.Spec : Prop :=
  ∀ n, P15864816015262834682.a n = A039949 (n + 1)

end A039949

/-! ## A039949.P10013713158244621242

`A128468(A158648(n+1))`
-/

namespace A039949.P10013713158244621242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 (A158648 (n + 1)).toNat

end

end A039949.P10013713158244621242

namespace A039949

/-- `A128468(A158648(n+1))` -/
def P10013713158244621242.Spec : Prop :=
  ∀ n, P10013713158244621242.a n = A039949 (n + 1)

end A039949

/-! ## A039949.P8590006813162987495

`∩[A030432(n+1), A128468(n)]`
-/

namespace A039949.P8590006813162987495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P8590006813162987495

namespace A039949

/-- `∩[A030432(n+1), A128468(n)]` -/
def P8590006813162987495.Spec : Prop :=
  ∀ n, (P8590006813162987495.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P3070929520552770190

`∩[A045357(n+1), A128468(n)]`
-/

namespace A039949.P3070929520552770190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P3070929520552770190

namespace A039949

/-- `∩[A045357(n+1), A128468(n)]` -/
def P3070929520552770190.Spec : Prop :=
  ∀ n, (P3070929520552770190.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P17416873413685415484

`∩[A045380(n+1), A128468(n)]`
-/

namespace A039949.P17416873413685415484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P17416873413685415484

namespace A039949

/-- `∩[A045380(n+1), A128468(n)]` -/
def P17416873413685415484.Spec : Prop :=
  ∀ n, (P17416873413685415484.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P11573351630113887007

`∩[A051615(n+1), A128468(n)]`
-/

namespace A039949.P11573351630113887007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P11573351630113887007

namespace A039949

/-- `∩[A051615(n+1), A128468(n)]` -/
def P11573351630113887007.Spec : Prop :=
  ∀ n, (P11573351630113887007.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P2205359794886704246

`∩[A051616(n+1), A128468(n)]`
-/

namespace A039949.P2205359794886704246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P2205359794886704246

namespace A039949

/-- `∩[A051616(n+1), A128468(n)]` -/
def P2205359794886704246.Spec : Prop :=
  ∀ n, (P2205359794886704246.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P2221607386254348684

`∩[A106859(n+1), A128468(n)]`
-/

namespace A039949.P2221607386254348684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P2221607386254348684

namespace A039949

/-- `∩[A106859(n+1), A128468(n)]` -/
def P2221607386254348684.Spec : Prop :=
  ∀ n, (P2221607386254348684.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P18056238879660139860

`p?[A128468(n)]%A078851(n+1)`
-/

namespace A039949.P18056238879660139860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A078851 (n + 1))

end

end A039949.P18056238879660139860

namespace A039949

/-- `p?[A128468(n)]%A078851(n+1)` -/
def P18056238879660139860.Spec : Prop :=
  ∀ n, P18056238879660139860.a n = A039949 (n + 1)

end A039949

/-! ## A039949.P4849992705319889598

`∩[A191018(n+1), A128468(n)]`
-/

namespace A039949.P4849992705319889598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P4849992705319889598

namespace A039949

/-- `∩[A191018(n+1), A128468(n)]` -/
def P4849992705319889598.Spec : Prop :=
  ∀ n, (P4849992705319889598.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P14386495106070765317

`∩[A045372(n+1), A128468(n)]`
-/

namespace A039949.P14386495106070765317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P14386495106070765317

namespace A039949

/-- `∩[A045372(n+1), A128468(n)]` -/
def P14386495106070765317.Spec : Prop :=
  ∀ n, (P14386495106070765317.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P4523412927206951100

`∩[A045372(n+1), A140533(n+1)]`
-/

namespace A039949.P4523412927206951100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P4523412927206951100

namespace A039949

/-- `∩[A045372(n+1), A140533(n+1)]` -/
def P4523412927206951100.Spec : Prop :=
  ∀ n, (P4523412927206951100.a n : ℤ) = A039949 (n + 1)

end A039949

/-! ## A039949.P14334400877699642065

`∩[A045349(n+1), A128468(n)]`
-/

namespace A039949.P14334400877699642065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039949.P14334400877699642065

namespace A039949

/-- `∩[A045349(n+1), A128468(n)]` -/
def P14334400877699642065.Spec : Prop :=
  ∀ n, (P14334400877699642065.a n : ℤ) = A039949 (n + 1)

end A039949

/-!
# A039950: Primes of form abs(2*n^2-199).

The programs for A039950, there is no canonical definition to state claims against.
-/

/-! ## A039950.P17636998528075282684

`A364962(A287557(n+2))`
-/

namespace A039950.P17636998528075282684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364962 (A287557 (n + 2)).toNat

end

end A039950.P17636998528075282684

/-! ## A039950.P2923885540098906979

`A106449(C(A105887(2*n+5), 2))`
-/

namespace A039950.P2923885540098906979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106449 (Nat.choose (A105887 (2 * n + 5)).toNat 2)

end

end A039950.P2923885540098906979

/-!
# A039951: a(n) is the smallest prime p such that p^2 divides n^(p-1) - 1.

The programs for A039951, there is no canonical definition to state claims against.
-/

/-! ## A039951.P9839749722501375820

`sqrt(A090096(n+1))`
-/

namespace A039951.P9839749722501375820
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A090096 (n + 1) : ℝ)

end

end A039951.P9839749722501375820

/-! ## A039951.P6934471782126437118

`root(A090096(n+1), gcd(2, A016825(n)))`
-/

namespace A039951.P6934471782126437118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090096 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A016825 n) : ℝ))

end

end A039951.P6934471782126437118

/-! ## A039951.P1973669386526552285

`root(A090096(n+1), A001316(A001316(n)))`
-/

namespace A039951.P1973669386526552285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090096 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A039951.P1973669386526552285

/-! ## A039951.P10261918064641781616

`A006530(root(A090096(n+1), 2))`
-/

namespace A039951.P10261918064641781616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A090096 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A039951.P10261918064641781616

/-!
# A039952: Maximum cardinality of finite D0L sequence over an alphabet with n symbols.

The programs for A039952, there is no canonical definition to state claims against.
-/

/-! ## A039952.P16228466223871082282

`record[A002262(n)+A000793(A025581(n))]`
-/

namespace A039952.P16228466223871082282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000793 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039952.P16228466223871082282

/-! ## A039952.P16426592399401305627

`lt[A304961(n), A327550(A347387(n+1)²)]`
-/

namespace A039952.P16426592399401305627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304961 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327550 (A347387 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039952.P16426592399401305627

/-! ## A039952.P12223835712763951886

`A126565(A126593(2*n+5))+A000793(n)`
-/

namespace A039952.P12223835712763951886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126565 (A126593 (2 * n + 5)).toNat + A000793 n

end

end A039952.P12223835712763951886

/-! ## A039952.P10837459541881769107

`lt[A006884(n+1), A048987(A347387(n+1))]`
-/

namespace A039952.P10837459541881769107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048987 (A347387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039952.P10837459541881769107

/-! ## A039952.P7439652059606945210

`lt[A005434(n+1), A342632(A347387(n+1))]`
-/

namespace A039952.P7439652059606945210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342632 (A347387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039952.P7439652059606945210

/-!
# A039953: Triangle of "canonical" optimal Golomb rulers.

The programs for A039953, there is no canonical definition to state claims against.
-/

/-! ## A039953.P6705571683688477275

`A329508(A043318(n+1)%A037005(n+1))`
-/

namespace A039953.P6705571683688477275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329508 (Int.tmod (A043318 (n + 1)) (A037005 (n + 1))).toNat

end

end A039953.P6705571683688477275

/-! ## A039953.P6241272568224993312

`A329508(or(n+1, A185213(n)))`
-/

namespace A039953.P6241272568224993312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329508 (Int.lor (n + 1 : ℤ) (A185213 n)).toNat

end

end A039953.P6241272568224993312

/-! ## A039953.P11665310815926205749

`A329508(n+1)+A229655(A185213(n))`
-/

namespace A039953.P11665310815926205749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329508 (n + 1) + A229655 (A185213 n).toNat

end

end A039953.P11665310815926205749

/-! ## A039953.P11127484907239710929

`A329508(∪[A043318(n+1), A002727(n)])`
-/

namespace A039953.P11127484907239710929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329508 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A039953.P11127484907239710929

/-! ## A039953.P2221215914857985619

`A329508(∪[A044915(n+1), A002727(n)])`
-/

namespace A039953.P2221215914857985619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329508 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A039953.P2221215914857985619

/-!
# A039955: Squarefree numbers congruent to 1 (mod 4).

The programs for A039955, the canonical program `A039955.P18334363973786166816` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039955 has offset 1).

The definition of A039955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039955.P12597215825464825551

`record[A007913(4*n+1)]`
-/

namespace A039955.P12597215825464825551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039955.P12597215825464825551

namespace A039955

/-- `record[A007913(4*n+1)]` -/
def P12597215825464825551.Spec : Prop :=
  ∀ n, P12597215825464825551.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P7880512305942484416

`record[A007947(4*n+1)]`
-/

namespace A039955.P7880512305942484416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039955.P7880512305942484416

namespace A039955

/-- `record[A007947(4*n+1)]` -/
def P7880512305942484416.Spec : Prop :=
  ∀ n, P7880512305942484416.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P4376663730212356427

`eq[n%4, A048146(n+1)]+1`
-/

namespace A039955.P4376663730212356427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039955.P4376663730212356427

namespace A039955

/-- `eq[n%4, A048146(n+1)]+1` -/
def P4376663730212356427.Spec : Prop :=
  ∀ n, (P4376663730212356427.a n : ℤ) = A039955 (n + 1)

end A039955

/-! ## A039955.P16268495232399317063

`∩[4*n+1, A005117(n+1)]`
-/

namespace A039955.P16268495232399317063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039955.P16268495232399317063

namespace A039955

/-- `∩[4*n+1, A005117(n+1)]` -/
def P16268495232399317063.Spec : Prop :=
  ∀ n, (P16268495232399317063.a n : ℤ) = A039955 (n + 1)

end A039955

/-! ## A039955.P17597028539633107100

`eq[(-1)^n, A290098(n+1)]+1`
-/

namespace A039955.P17597028539633107100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039955.P17597028539633107100

namespace A039955

/-- `eq[(-1)^n, A290098(n+1)]+1` -/
def P17597028539633107100.Spec : Prop :=
  ∀ n, (P17597028539633107100.a n : ℤ) = A039955 (n + 1)

end A039955

/-! ## A039955.P18334363973786166816

`eq[1, A105570(n)+A010873(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039955

/-- `eq[1, A105570(n)+A010873(n)]` -/
def P18334363973786166816.Spec : Prop :=
  ∀ n, (P18334363973786166816.a n : ℤ) = A039955 (n + 1)

theorem P18334363973786166816.correct : P18334363973786166816.Spec := by
  intro n
  simp only [A039955, Nat.add_sub_cancel]

end A039955

/-! ## A039955.P11524385166239639779

`record[∏{p}[4*n+1, #]]`
-/

namespace A039955.P11524385166239639779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039955.P11524385166239639779

namespace A039955

/-- `record[∏{p}[4*n+1, #]]` -/
def P11524385166239639779.Spec : Prop :=
  ∀ n, (P11524385166239639779.a n : ℤ) = A039955 (n + 1)

end A039955

/-! ## A039955.P7534541496954131161

`filter[A016813(n), A008966(#)]`
-/

namespace A039955.P7534541496954131161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A039955.P7534541496954131161

namespace A039955

/-- `filter[A016813(n), A008966(#)]` -/
def P7534541496954131161.Spec : Prop :=
  ∀ n, P7534541496954131161.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P10445670919353287857

`filter[A016813(n), A290098(#)]`
-/

namespace A039955.P10445670919353287857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A039955.P10445670919353287857

namespace A039955

/-- `filter[A016813(n), A290098(#)]` -/
def P10445670919353287857.Spec : Prop :=
  ∀ n, P10445670919353287857.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P4508988892468672983

`filter[A016813(n), A323154(#)]`
-/

namespace A039955.P4508988892468672983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A039955.P4508988892468672983

namespace A039955

/-- `filter[A016813(n), A323154(#)]` -/
def P4508988892468672983.Spec : Prop :=
  ∀ n, P4508988892468672983.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P12864541591154736372

`filter[A016813(n), A323239(#)]`
-/

namespace A039955.P12864541591154736372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A039955.P12864541591154736372

namespace A039955

/-- `filter[A016813(n), A323239(#)]` -/
def P12864541591154736372.Spec : Prop :=
  ∀ n, P12864541591154736372.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P9728223719441965574

`filter[A016813(n), A353559(#)]`
-/

namespace A039955.P9728223719441965574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A039955.P9728223719441965574

namespace A039955

/-- `filter[A016813(n), A353559(#)]` -/
def P9728223719441965574.Spec : Prop :=
  ∀ n, P9728223719441965574.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P16100905787104347597

`filter[A016813(n), A353627(#)]`
-/

namespace A039955.P16100905787104347597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A039955.P16100905787104347597

namespace A039955

/-- `filter[A016813(n), A353627(#)]` -/
def P16100905787104347597.Spec : Prop :=
  ∀ n, P16100905787104347597.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P9995121647375393093

`filter[A016813(n), A359590(#)]`
-/

namespace A039955.P9995121647375393093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A039955.P9995121647375393093

namespace A039955

/-- `filter[A016813(n), A359590(#)]` -/
def P9995121647375393093.Spec : Prop :=
  ∀ n, P9995121647375393093.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P7763079959041442030

`filter[A016813(n), A359592(#)]`
-/

namespace A039955.P7763079959041442030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A039955.P7763079959041442030

namespace A039955

/-- `filter[A016813(n), A359592(#)]` -/
def P7763079959041442030.Spec : Prop :=
  ∀ n, P7763079959041442030.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P11542178008727978434

`filter[A016813(n), A359834(#)]`
-/

namespace A039955.P11542178008727978434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A039955.P11542178008727978434

namespace A039955

/-- `filter[A016813(n), A359834(#)]` -/
def P11542178008727978434.Spec : Prop :=
  ∀ n, P11542178008727978434.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P2611111234158146588

`filter[A072284(n+1), A290098(#)]`
-/

namespace A039955.P2611111234158146588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A039955.P2611111234158146588

namespace A039955

/-- `filter[A072284(n+1), A290098(#)]` -/
def P2611111234158146588.Spec : Prop :=
  ∀ n, P2611111234158146588.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P13341276006883165266

`∩[A072284(n+1), A016813(n)]`
-/

namespace A039955.P13341276006883165266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039955.P13341276006883165266

namespace A039955

/-- `∩[A072284(n+1), A016813(n)]` -/
def P13341276006883165266.Spec : Prop :=
  ∀ n, (P13341276006883165266.a n : ℤ) = A039955 (n + 1)

end A039955

/-! ## A039955.P10720598582024173721

`record[A306300(n+1)]`
-/

namespace A039955.P10720598582024173721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039955.P10720598582024173721

namespace A039955

/-- `record[A306300(n+1)]` -/
def P10720598582024173721.Spec : Prop :=
  ∀ n, P10720598582024173721.a n = A039955 (n + 1)

end A039955

/-! ## A039955.P3759987400808165360

`filter[A003658(n+1), A008966(#)]`
-/

namespace A039955.P3759987400808165360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A039955.P3759987400808165360

namespace A039955

/-- `filter[A003658(n+1), A008966(#)]` -/
def P3759987400808165360.Spec : Prop :=
  ∀ n, P3759987400808165360.a n = A039955 (n + 1)

end A039955

/-!
# A039956: Even squarefree numbers.

The programs for A039956, the canonical program `A039956.P6592204116604427737` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039956 has offset 1).

The definition of A039956 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A039956.P6592204116604427737

`2*A056911(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039956

/-- `2*A056911(n+1)` -/
def P6592204116604427737.Spec : Prop :=
  ∀ n, P6592204116604427737.a n = A039956 (n + 1)

theorem P6592204116604427737.correct : P6592204116604427737.Spec := by
  intro n
  simp only [A039956, Nat.add_sub_cancel]

end A039956

/-! ## A039956.P13857738512687724763

`2*(1+2*A264387(n+1))`
-/

namespace A039956.P13857738512687724763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + 2 * A264387 (n + 1))

end

end A039956.P13857738512687724763

namespace A039956

/-- `2*(1+2*A264387(n+1))` -/
def P13857738512687724763.Spec : Prop :=
  ∀ n, P13857738512687724763.a n = A039956 (n + 1)

end A039956

/-! ## A039956.P742798256544377882

`eq[0, A105234(n)]`
-/

namespace A039956.P742798256544377882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039956.P742798256544377882

namespace A039956

/-- `eq[0, A105234(n)]` -/
def P742798256544377882.Spec : Prop :=
  ∀ n, (P742798256544377882.a n : ℤ) = A039956 (n + 1)

end A039956

/-! ## A039956.P274893214683689512

`A160785(n+1)-1`
-/

namespace A039956.P274893214683689512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160785 (n + 1) - 1

end

end A039956.P274893214683689512

namespace A039956

/-- `A160785(n+1)-1` -/
def P274893214683689512.Spec : Prop :=
  ∀ n, P274893214683689512.a n = A039956 (n + 1)

end A039956

/-! ## A039956.P14576413857517401598

`A081770(n+1)/2`
-/

namespace A039956.P14576413857517401598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081770 (n + 1) : ℚ) / 2

end

end A039956.P14576413857517401598

namespace A039956

/-- `A081770(n+1)/2` -/
def P14576413857517401598.Spec : Prop :=
  ∀ n, P14576413857517401598.a n = (A039956 (n + 1) : ℚ)

end A039956

/-! ## A039956.P16245521615857207476

`2*eq[1, A323239(n)]`
-/

namespace A039956.P16245521615857207476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039956.P16245521615857207476

namespace A039956

/-- `2*eq[1, A323239(n)]` -/
def P16245521615857207476.Spec : Prop :=
  ∀ n, (P16245521615857207476.a n : ℤ) = A039956 (n + 1)

end A039956

/-! ## A039956.P12761740732704935858

`2*sqrt(A392366(n+1))`
-/

namespace A039956.P12761740732704935858
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A392366 (n + 1) : ℝ)

end

end A039956.P12761740732704935858

namespace A039956

/-- `2*sqrt(A392366(n+1))` -/
def P12761740732704935858.Spec : Prop :=
  ∀ n, P12761740732704935858.a n = (A039956 (n + 1) : ℝ)

end A039956

/-! ## A039956.P6987463875085411598

`record[A007913(2*(n+1))]`
-/

namespace A039956.P6987463875085411598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039956.P6987463875085411598

namespace A039956

/-- `record[A007913(2*(n+1))]` -/
def P6987463875085411598.Spec : Prop :=
  ∀ n, P6987463875085411598.a n = A039956 (n + 1)

end A039956

/-! ## A039956.P7059119032612710172

`record[A007947(2*(n+1))]`
-/

namespace A039956.P7059119032612710172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039956.P7059119032612710172

namespace A039956

/-- `record[A007947(2*(n+1))]` -/
def P7059119032612710172.Spec : Prop :=
  ∀ n, P7059119032612710172.a n = A039956 (n + 1)

end A039956

/-! ## A039956.P17533064680892619548

`record[lcm(2, A005117(n+1))]`
-/

namespace A039956.P17533064680892619548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005117 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039956.P17533064680892619548

namespace A039956

/-- `record[lcm(2, A005117(n+1))]` -/
def P17533064680892619548.Spec : Prop :=
  ∀ n, (P17533064680892619548.a n : ℤ) = A039956 (n + 1)

end A039956

/-! ## A039956.P8953110586529007852

`4*A264387(n+1)+2`
-/

namespace A039956.P8953110586529007852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A264387 (n + 1) + 2

end

end A039956.P8953110586529007852

namespace A039956

/-- `4*A264387(n+1)+2` -/
def P8953110586529007852.Spec : Prop :=
  ∀ n, P8953110586529007852.a n = A039956 (n + 1)

end A039956

/-! ## A039956.P4417192533243226773

`eq[A008683(n+1)², gcd(2, n)]+1`
-/

namespace A039956.P4417192533243226773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A039956.P4417192533243226773

namespace A039956

/-- `eq[A008683(n+1)², gcd(2, n)]+1` -/
def P4417192533243226773.Spec : Prop :=
  ∀ n, (P4417192533243226773.a n : ℤ) = A039956 (n + 1)

end A039956

/-! ## A039956.P8920076858380052273

`record[(2*n+1)*(A008683(2*n+1)²+1)]`
-/

namespace A039956.P8920076858380052273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (A008683 (2 * n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039956.P8920076858380052273

namespace A039956

/-- `record[(2*n+1)*(A008683(2*n+1)²+1)]` -/
def P8920076858380052273.Spec : Prop :=
  ∀ n, P8920076858380052273.a n = A039956 (n + 1)

end A039956

/-! ## A039956.P13037113784838675524

`A007947(A081770(n+1))`
-/

namespace A039956.P13037113784838675524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A081770 (n + 1)).toNat

end

end A039956.P13037113784838675524

namespace A039956

/-- `A007947(A081770(n+1))` -/
def P13037113784838675524.Spec : Prop :=
  ∀ n, P13037113784838675524.a n = A039956 (n + 1)

end A039956

/-! ## A039956.P2761612935209660607

`A016825(A264387(n+1))`
-/

namespace A039956.P2761612935209660607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A264387 (n + 1)).toNat

end

end A039956.P2761612935209660607

namespace A039956

/-- `A016825(A264387(n+1))` -/
def P2761612935209660607.Spec : Prop :=
  ∀ n, P2761612935209660607.a n = A039956 (n + 1)

end A039956

/-! ## A039956.P963133644262751310

`A005117(A383008(n+1))`
-/

namespace A039956.P963133644262751310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A383008 (n + 1)).toNat

end

end A039956.P963133644262751310

namespace A039956

/-- `A005117(A383008(n+1))` -/
def P963133644262751310.Spec : Prop :=
  ∀ n, P963133644262751310.a n = A039956 (n + 1)

end A039956

/-! ## A039956.P241135752906721687

`A007947(A056911(n+1)+A056911(n+1))`
-/

namespace A039956.P241135752906721687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A056911 (n + 1) + A056911 (n + 1)).toNat

end

end A039956.P241135752906721687

namespace A039956

/-- `A007947(A056911(n+1)+A056911(n+1))` -/
def P241135752906721687.Spec : Prop :=
  ∀ n, P241135752906721687.a n = A039956 (n + 1)

end A039956

/-! ## A039956.P6538289600929742099

`A081770(n+1)-A056911(n+1)-A056911(n+1)`
-/

namespace A039956.P6538289600929742099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081770 (n + 1) - A056911 (n + 1) - A056911 (n + 1)

end

end A039956.P6538289600929742099

namespace A039956

/-- `A081770(n+1)-A056911(n+1)-A056911(n+1)` -/
def P6538289600929742099.Spec : Prop :=
  ∀ n, P6538289600929742099.a n = A039956 (n + 1)

end A039956

/-! ## A039956.P3873777626273531925

`A056911(n+1)+A392366(n+1)/A056911(n+1)`
-/

namespace A039956.P3873777626273531925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056911 (n + 1) : ℚ) + (A392366 (n + 1) : ℚ) / (A056911 (n + 1) : ℚ)

end

end A039956.P3873777626273531925

namespace A039956

/-- `A056911(n+1)+A392366(n+1)/A056911(n+1)` -/
def P3873777626273531925.Spec : Prop :=
  ∀ n, P3873777626273531925.a n = (A039956 (n + 1) : ℚ)

end A039956

/-! ## A039956.P8844134279331575668

`record[∏{p}[4*n+2, #]]`
-/

namespace A039956.P8844134279331575668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039956.P8844134279331575668

namespace A039956

/-- `record[∏{p}[4*n+2, #]]` -/
def P8844134279331575668.Spec : Prop :=
  ∀ n, (P8844134279331575668.a n : ℤ) = A039956 (n + 1)

end A039956

/-!
# A039957: Squarefree numbers congruent to 3 mod 4.

The programs for A039957, the canonical program `A039957.P1685131244349745100` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039957 has offset 1).

The definition of A039957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039957.P12607075952946768006

`record[A007947(or(3, n))]`
-/

namespace A039957.P12607075952946768006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Nat.lor 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039957.P12607075952946768006

namespace A039957

/-- `record[A007947(or(3, n))]` -/
def P12607075952946768006.Spec : Prop :=
  ∀ n, P12607075952946768006.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P3850828687609286887

`eq[n, A007913(or(3, n))]`
-/

namespace A039957.P3850828687609286887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.lor 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039957.P3850828687609286887

namespace A039957

/-- `eq[n, A007913(or(3, n))]` -/
def P3850828687609286887.Spec : Prop :=
  ∀ n, (P3850828687609286887.a n : ℤ) = A039957 (n + 1)

end A039957

/-! ## A039957.P11138321910195263420

`record[A007947(4*(n+1)-1)]`
-/

namespace A039957.P11138321910195263420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (4 * (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039957.P11138321910195263420

namespace A039957

/-- `record[A007947(4*(n+1)-1)]` -/
def P11138321910195263420.Spec : Prop :=
  ∀ n, P11138321910195263420.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P17623663716990989577

`∩[4*n-1, A005117(n+1)]`
-/

namespace A039957.P17623663716990989577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039957.P17623663716990989577

namespace A039957

/-- `∩[4*n-1, A005117(n+1)]` -/
def P17623663716990989577.Spec : Prop :=
  ∀ n, (P17623663716990989577.a n : ℤ) = A039957 (n + 1)

end A039957

/-! ## A039957.P8421759402030193298

`record[or(1-and(2, n), A007913(n+3))]`
-/

namespace A039957.P8421759402030193298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - (Nat.land 2 n : ℤ)) (A007913 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039957.P8421759402030193298

namespace A039957

/-- `record[or(1-and(2, n), A007913(n+3))]` -/
def P8421759402030193298.Spec : Prop :=
  ∀ n, P8421759402030193298.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P7887371611954751856

`record[log2(gcd(2, n))*A007947(2*n+3)]`
-/

namespace A039957.P7887371611954751856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A007947 (2 * n + 3) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039957.P7887371611954751856

namespace A039957

/-- `record[log2(gcd(2, n))*A007947(2*n+3)]` -/
def P7887371611954751856.Spec : Prop :=
  ∀ n, P7887371611954751856.a n = (A039957 (n + 1) : ℝ)

end A039957

/-! ## A039957.P1685131244349745100

`eq[A010873(n+1), A105570(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039957

/-- `eq[A010873(n+1), A105570(n)]` -/
def P1685131244349745100.Spec : Prop :=
  ∀ n, (P1685131244349745100.a n : ℤ) = A039957 (n + 1)

theorem P1685131244349745100.correct : P1685131244349745100.Spec := by
  intro n
  simp only [A039957, Nat.add_sub_cancel]

end A039957

/-! ## A039957.P16827875312826372809

`record[∏{p}[4*n+3, #]]`
-/

namespace A039957.P16827875312826372809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039957.P16827875312826372809

namespace A039957

/-- `record[∏{p}[4*n+3, #]]` -/
def P16827875312826372809.Spec : Prop :=
  ∀ n, (P16827875312826372809.a n : ℤ) = A039957 (n + 1)

end A039957

/-! ## A039957.P12280417453803409770

`record[A007913(A004767(n))]`
-/

namespace A039957.P12280417453803409770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039957.P12280417453803409770

namespace A039957

/-- `record[A007913(A004767(n))]` -/
def P12280417453803409770.Spec : Prop :=
  ∀ n, P12280417453803409770.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P17923856898708931352

`filter[A004767(n), A008966(#)]`
-/

namespace A039957.P17923856898708931352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A039957.P17923856898708931352

namespace A039957

/-- `filter[A004767(n), A008966(#)]` -/
def P17923856898708931352.Spec : Prop :=
  ∀ n, P17923856898708931352.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P5511150721589582749

`filter[A004767(n), A323154(#)]`
-/

namespace A039957.P5511150721589582749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A039957.P5511150721589582749

namespace A039957

/-- `filter[A004767(n), A323154(#)]` -/
def P5511150721589582749.Spec : Prop :=
  ∀ n, P5511150721589582749.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P10514052487036356798

`filter[A004767(n), A323239(#)]`
-/

namespace A039957.P10514052487036356798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A039957.P10514052487036356798

namespace A039957

/-- `filter[A004767(n), A323239(#)]` -/
def P10514052487036356798.Spec : Prop :=
  ∀ n, P10514052487036356798.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P10676569847553947388

`filter[A004767(n), A353559(#)]`
-/

namespace A039957.P10676569847553947388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A039957.P10676569847553947388

namespace A039957

/-- `filter[A004767(n), A353559(#)]` -/
def P10676569847553947388.Spec : Prop :=
  ∀ n, P10676569847553947388.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P731706108287348797

`filter[A004767(n), A353627(#)]`
-/

namespace A039957.P731706108287348797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A039957.P731706108287348797

namespace A039957

/-- `filter[A004767(n), A353627(#)]` -/
def P731706108287348797.Spec : Prop :=
  ∀ n, P731706108287348797.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P1158759976230686000

`filter[A004767(n), A359590(#)]`
-/

namespace A039957.P1158759976230686000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A039957.P1158759976230686000

namespace A039957

/-- `filter[A004767(n), A359590(#)]` -/
def P1158759976230686000.Spec : Prop :=
  ∀ n, P1158759976230686000.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P12238827124224177339

`filter[A004767(n), A359592(#)]`
-/

namespace A039957.P12238827124224177339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A039957.P12238827124224177339

namespace A039957

/-- `filter[A004767(n), A359592(#)]` -/
def P12238827124224177339.Spec : Prop :=
  ∀ n, P12238827124224177339.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P7927391515557123791

`filter[A004767(n), A359834(#)]`
-/

namespace A039957.P7927391515557123791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A039957.P7927391515557123791

namespace A039957

/-- `filter[A004767(n), A359834(#)]` -/
def P7927391515557123791.Spec : Prop :=
  ∀ n, P7927391515557123791.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P7566573488692253160

`filter[A131098(n+2), A008966(#)]`
-/

namespace A039957.P7566573488692253160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A039957.P7566573488692253160

namespace A039957

/-- `filter[A131098(n+2), A008966(#)]` -/
def P7566573488692253160.Spec : Prop :=
  ∀ n, P7566573488692253160.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P1201641479785223000

`filter[A131098(n+2), A323154(#)]`
-/

namespace A039957.P1201641479785223000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A039957.P1201641479785223000

namespace A039957

/-- `filter[A131098(n+2), A323154(#)]` -/
def P1201641479785223000.Spec : Prop :=
  ∀ n, P1201641479785223000.a n = A039957 (n + 1)

end A039957

/-! ## A039957.P577191551868523955

`filter[A131098(n+2), A323239(#)]`
-/

namespace A039957.P577191551868523955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A039957.P577191551868523955

namespace A039957

/-- `filter[A131098(n+2), A323239(#)]` -/
def P577191551868523955.Spec : Prop :=
  ∀ n, P577191551868523955.a n = A039957 (n + 1)

end A039957

/-!
# A039959: Number of ways of numbering the vertices of a cube so sum of the 8 numbers is n.

The programs for A039959, there is no canonical definition to state claims against.
-/

/-! ## A039959.P5314200425335279191

`A330110(A364557(n+1)+A003116(n))`
-/

namespace A039959.P5314200425335279191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330110 (A364557 (n + 1) + A003116 n).toNat

end

end A039959.P5314200425335279191

/-!
# A039960: For n >= 2, a(n) = largest value of k such that n^k is <= n! (a(0) = a(1) = 1 by convention).

The programs for A039960, there is no canonical definition to state claims against.
-/

/-! ## A039960.P5614014822050391354

`∑[char[A230319(n)%A005408(n)]]`
-/

namespace A039960.P5614014822050391354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230319 n) (A005408 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039960.P5614014822050391354

/-! ## A039960.P8990314299194603994

`A060151(n)-a(A025456(n))` with `a(0)=1, a(1)=1`
-/

namespace A039960.P8990314299194603994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060151 n - a (A025456 n).toNat

end

end A039960.P8990314299194603994

/-! ## A039960.P9105082041574388335

`A028310(A060151(A028310(n))-1)`
-/

namespace A039960.P9105082041574388335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A060151 (A028310 n).toNat - 1).toNat

end

end A039960.P9105082041574388335

/-! ## A039960.P5007468461320106161

`A028310(A074184(A028310(n))-1)`
-/

namespace A039960.P5007468461320106161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A074184 (A028310 n).toNat - 1).toNat

end

end A039960.P5007468461320106161

/-! ## A039960.P6184024280383256831

`A060151(n)+A030200(a(A025456(n)))` with `a(0)=1, a(1)=1`
-/

namespace A039960.P6184024280383256831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060151 n + A030200 (a (A025456 n).toNat).toNat

end

end A039960.P6184024280383256831

/-! ## A039960.P7131354634953407716

`A123108(A060151(n)+a(n-1))` with `a(0)=1`
-/

namespace A039960.P7131354634953407716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123108 (A060151 n + a (n - 1)).toNat

end

end A039960.P7131354634953407716

/-! ## A039960.P12305648726634978192

`A060151(A233583(n+1))-1`
-/

namespace A039960.P12305648726634978192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 (A233583 (n + 1)).toNat - 1

end

end A039960.P12305648726634978192

/-! ## A039960.P16019654400906626424

`A023443(A060151(A233583(n+1)))`
-/

namespace A039960.P16019654400906626424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A060151 (A233583 (n + 1)).toNat).toNat

end

end A039960.P16019654400906626424

/-! ## A039960.P8079502443122962319

`A259361(A060151(A233583(n+1))²)`
-/

namespace A039960.P8079502443122962319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A060151 (A233583 (n + 1)).toNat ^ 2).toNat

end

end A039960.P8079502443122962319

/-!
# A039961: Triangle of coefficients in a Fibonacci-like sequence of polynomials.

The programs for A039961, the canonical program `A039961.P8581143921981610919` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039961 has offset 1).

The definition of A039961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039961.P1628025615315991437

`A108299(abs(1-n))`
-/

namespace A039961.P1628025615315991437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 |1 - (n : ℤ)|.toNat

end

end A039961.P1628025615315991437

namespace A039961

/-- `A108299(abs(1-n))` -/
def P1628025615315991437.Spec : Prop :=
  ∀ n, P1628025615315991437.a n = A039961 (n + 1)

end A039961

/-! ## A039961.P8581143921981610919

`A130777(A061579(abs(1-n)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A039961

/-- `A130777(A061579(abs(1-n)))` -/
def P8581143921981610919.Spec : Prop :=
  ∀ n, P8581143921981610919.a n = A039961 (n + 1)

theorem P8581143921981610919.correct : P8581143921981610919.Spec := by
  intro n
  simp only [A039961, Nat.add_sub_cancel]

end A039961

/-! ## A039961.P10208059831357733496

`A133607(comp[∑[n+1]])`
-/

namespace A039961.P10208059831357733496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133607 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A039961.P10208059831357733496

namespace A039961

/-- `A133607(comp[∑[n+1]])` -/
def P10208059831357733496.Spec : Prop :=
  ∀ n, P10208059831357733496.a n = A039961 (n + 1)

end A039961

/-! ## A039961.P6760477803380062277

`A130777(A053187(2*n)-n)`
-/

namespace A039961.P6760477803380062277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 (A053187 (2 * n) - (n : ℤ)).toNat

end

end A039961.P6760477803380062277

namespace A039961

/-- `A130777(A053187(2*n)-n)` -/
def P6760477803380062277.Spec : Prop :=
  ∀ n, P6760477803380062277.a n = A039961 (n + 1)

end A039961

/-! ## A039961.P17917956707682384408

`A130777(A000194(2*n)²-n)`
-/

namespace A039961.P17917956707682384408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 (A000194 (2 * n) ^ 2 - (n : ℤ)).toNat

end

end A039961.P17917956707682384408

namespace A039961

/-- `A130777(A000194(2*n)²-n)` -/
def P17917956707682384408.Spec : Prop :=
  ∀ n, P17917956707682384408.a n = A039961 (n + 1)

end A039961

/-!
# A039963: The period-doubling sequence A035263 repeated.

The programs for A039963, the canonical program `A039963.P7442074612233397869` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039963 has offset 0).

The definition of A039963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039963.P7442074612233397869

`A035263(1+floor(n/2))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039963

/-- `A035263(1+floor(n/2))` -/
def P7442074612233397869.Spec : Prop :=
  ∀ n, P7442074612233397869.a n = A039963 n

theorem P7442074612233397869.correct : P7442074612233397869.Spec := by
  intro n
  simp only [A039963]

end A039963

/-! ## A039963.P16139365696111075452

`(-1)^n*(A096268(n+1)-A096268(n))`
-/

namespace A039963.P16139365696111075452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (A096268 (n + 1) - A096268 n)

end

end A039963.P16139365696111075452

namespace A039963

/-- `(-1)^n*(A096268(n+1)-A096268(n))` -/
def P16139365696111075452.Spec : Prop :=
  ∀ n, P16139365696111075452.a n = A039963 n

end A039963

/-! ## A039963.P15955233608262071446

`and(1, Δ[val(n+1, 2)])`
-/

namespace A039963.P15955233608262071446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A039963.P15955233608262071446

namespace A039963

/-- `and(1, Δ[val(n+1, 2)])` -/
def P15955233608262071446.Spec : Prop :=
  ∀ n, P15955233608262071446.a n = A039963 n

end A039963

/-! ## A039963.P11368743230331586912

`xor(n, n+2)²%3`
-/

namespace A039963.P11368743230331586912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2) ^ 2 % 3

end

end A039963.P11368743230331586912

namespace A039963

/-- `xor(n, n+2)²%3` -/
def P11368743230331586912.Spec : Prop :=
  ∀ n, (P11368743230331586912.a n : ℤ) = A039963 n

end A039963

/-! ## A039963.P14928058085465213473

`val(or(1, n)+1, 2)%2`
-/

namespace A039963.P14928058085465213473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 1 n + 1) 2 % 2

end

end A039963.P14928058085465213473

namespace A039963

/-- `val(or(1, n)+1, 2)%2` -/
def P14928058085465213473.Spec : Prop :=
  ∀ n, (P14928058085465213473.a n : ℤ) = A039963 n

end A039963

/-! ## A039963.P12105498586776561897

`and(1, val(or(1, n)+1, 2))`
-/

namespace A039963.P12105498586776561897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (Nat.lor 1 n + 1) 2)

end

end A039963.P12105498586776561897

namespace A039963

/-- `and(1, val(or(1, n)+1, 2))` -/
def P12105498586776561897.Spec : Prop :=
  ∀ n, (P12105498586776561897.a n : ℤ) = A039963 n

end A039963

/-! ## A039963.P9553921848438596370

`(2*xor(n, n+2))%3`
-/

namespace A039963.P9553921848438596370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (n + 2) % 3

end

end A039963.P9553921848438596370

namespace A039963

/-- `(2*xor(n, n+2))%3` -/
def P9553921848438596370.Spec : Prop :=
  ∀ n, (P9553921848438596370.a n : ℤ) = A039963 n

end A039963

/-! ## A039963.P16584393696387356127

`(xor(n, n+2)/2)%3`
-/

namespace A039963.P16584393696387356127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.xor n (n + 2) : ℚ) / 2)) 3

end

end A039963.P16584393696387356127

namespace A039963

/-- `(xor(n, n+2)/2)%3` -/
def P16584393696387356127.Spec : Prop :=
  ∀ n, P16584393696387356127.a n = A039963 n

end A039963

/-! ## A039963.P6690175527809041252

`val(xor(n, n+2)+4, 6)`
-/

namespace A039963.P6690175527809041252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.xor n (n + 2) + 4) 6

end

end A039963.P6690175527809041252

namespace A039963

/-- `val(xor(n, n+2)+4, 6)` -/
def P6690175527809041252.Spec : Prop :=
  ∀ n, (P6690175527809041252.a n : ℤ) = A039963 n

end A039963

/-! ## A039963.P12123110568567519249

`(xor(n, n+2)^4)%3`
-/

namespace A039963.P12123110568567519249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2) ^ 4 % 3

end

end A039963.P12123110568567519249

namespace A039963

/-- `(xor(n, n+2)^4)%3` -/
def P12123110568567519249.Spec : Prop :=
  ∀ n, (P12123110568567519249.a n : ℤ) = A039963 n

end A039963

/-! ## A039963.P13991817634233336503

`gcd(3, xor(n, n+2))%3`
-/

namespace A039963.P13991817634233336503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (Nat.xor n (n + 2)) % 3

end

end A039963.P13991817634233336503

namespace A039963

/-- `gcd(3, xor(n, n+2))%3` -/
def P13991817634233336503.Spec : Prop :=
  ∀ n, (P13991817634233336503.a n : ℤ) = A039963 n

end A039963

/-! ## A039963.P3568761041459419489

`lcm(4, xor(n, n+2))%3`
-/

namespace A039963.P3568761041459419489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Nat.xor n (n + 2)) % 3

end

end A039963.P3568761041459419489

namespace A039963

/-- `lcm(4, xor(n, n+2))%3` -/
def P3568761041459419489.Spec : Prop :=
  ∀ n, (P3568761041459419489.a n : ℤ) = A039963 n

end A039963

/-! ## A039963.P9902608004817035439

`C(xor(n, n+2), 2)%3`
-/

namespace A039963.P9902608004817035439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor n (n + 2)) 2 % 3

end

end A039963.P9902608004817035439

namespace A039963

/-- `C(xor(n, n+2), 2)%3` -/
def P9902608004817035439.Spec : Prop :=
  ∀ n, (P9902608004817035439.a n : ℤ) = A039963 n

end A039963

/-! ## A039963.P12001146429863973304

`abs(Δ[val(n+1, 2)%2])`
-/

namespace A039963.P12001146429863973304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A039963.P12001146429863973304

namespace A039963

/-- `abs(Δ[val(n+1, 2)%2])` -/
def P12001146429863973304.Spec : Prop :=
  ∀ n, P12001146429863973304.a n = A039963 n

end A039963

/-! ## A039963.P2918378981590817423

`abs(Δ[xor(n, n+1)%3])`
-/

namespace A039963.P2918378981590817423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A039963.P2918378981590817423

namespace A039963

/-- `abs(Δ[xor(n, n+1)%3])` -/
def P2918378981590817423.Spec : Prop :=
  ∀ n, P2918378981590817423.a n = A039963 n

end A039963

/-! ## A039963.P60166943997669409

`(val(∑[n+1], 2)+1)%2`
-/

namespace A039963.P60166943997669409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1) % 2

end

end A039963.P60166943997669409

namespace A039963

/-- `(val(∑[n+1], 2)+1)%2` -/
def P60166943997669409.Spec : Prop :=
  ∀ n, (P60166943997669409.a n : ℤ) = A039963 n

end A039963

/-! ## A039963.P7782823081466697250

`gcd(2, val(∑[n+1], 2))-1`
-/

namespace A039963.P7782823081466697250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℤ) - 1

end

end A039963.P7782823081466697250

namespace A039963

/-- `gcd(2, val(∑[n+1], 2))-1` -/
def P7782823081466697250.Spec : Prop :=
  ∀ n, P7782823081466697250.a n = A039963 n

end A039963

/-!
# A039964: Motzkin numbers A001006 read mod 3.

The programs for A039964, the canonical program `A039964.P6848612455107307311` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039964 has offset 0).

The definition of A039964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039964.P6848612455107307311

`A001006(n)%3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039964

/-- `A001006(n)%3` -/
def P6848612455107307311.Spec : Prop :=
  ∀ n, P6848612455107307311.a n = A039964 n

theorem P6848612455107307311.correct : P6848612455107307311.Spec := by
  intro n
  simp only [A039964]

end A039964

/-! ## A039964.P9738855428504046957

`A299920(n)%3`
-/

namespace A039964.P9738855428504046957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299920 n) 3

end

end A039964.P9738855428504046957

namespace A039964

/-- `A299920(n)%3` -/
def P9738855428504046957.Spec : Prop :=
  ∀ n, P9738855428504046957.a n = A039964 n

end A039964

/-! ## A039964.P7587501361175727053

`A088917(2*(n+2))+A039966(n+1)`
-/

namespace A039964.P7587501361175727053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * (n + 2)) + A039966 (n + 1)

end

end A039964.P7587501361175727053

namespace A039964

/-- `A088917(2*(n+2))+A039966(n+1)` -/
def P7587501361175727053.Spec : Prop :=
  ∀ n, P7587501361175727053.a n = A039964 n

end A039964

/-! ## A039964.P18151832753489609934

`A081611(n+2)-A081611(n)`
-/

namespace A039964.P18151832753489609934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (n + 2) - A081611 n

end

end A039964.P18151832753489609934

namespace A039964

/-- `A081611(n+2)-A081611(n)` -/
def P18151832753489609934.Spec : Prop :=
  ∀ n, P18151832753489609934.a n = A039964 n

end A039964

/-! ## A039964.P11112956687955106077

`Δ[A081611(n+1)+A081611(n)]`
-/

namespace A039964.P11112956687955106077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (n + 1) + A081611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039964.P11112956687955106077

namespace A039964

/-- `Δ[A081611(n+1)+A081611(n)]` -/
def P11112956687955106077.Spec : Prop :=
  ∀ n, P11112956687955106077.a n = A039964 n

end A039964

/-! ## A039964.P16936903295987176530

`A039966(n+1)+A039966(n+2)`
-/

namespace A039964.P16936903295987176530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (n + 1) + A039966 (n + 2)

end

end A039964.P16936903295987176530

namespace A039964

/-- `A039966(n+1)+A039966(n+2)` -/
def P16936903295987176530.Spec : Prop :=
  ∀ n, P16936903295987176530.a n = A039964 n

end A039964

/-! ## A039964.P9403979512463255799

`∑{e}[A088564(n+2)-A088564(n)+1, #]`
-/

namespace A039964.P9403979512463255799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088564 (n + 2) - A088564 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A039964.P9403979512463255799

namespace A039964

/-- `∑{e}[A088564(n+2)-A088564(n)+1, #]` -/
def P9403979512463255799.Spec : Prop :=
  ∀ n, (P9403979512463255799.a n : ℤ) = A039964 n

end A039964

/-! ## A039964.P13495053934973000364

`A000045(A088564(n+2)-A088564(n))`
-/

namespace A039964.P13495053934973000364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A088564 (n + 2) - A088564 n).toNat

end

end A039964.P13495053934973000364

namespace A039964

/-- `A000045(A088564(n+2)-A088564(n))` -/
def P13495053934973000364.Spec : Prop :=
  ∀ n, P13495053934973000364.a n = A039964 n

end A039964

/-! ## A039964.P18353496174542907032

`A000120(A088564(n+2)-A088564(n))`
-/

namespace A039964.P18353496174542907032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A088564 (n + 2) - A088564 n).toNat

end

end A039964.P18353496174542907032

namespace A039964

/-- `A000120(A088564(n+2)-A088564(n))` -/
def P18353496174542907032.Spec : Prop :=
  ∀ n, P18353496174542907032.a n = A039964 n

end A039964

/-! ## A039964.P5448328875922814633

`A000120(A151668(n+1)+A151668(n+2))`
-/

namespace A039964.P5448328875922814633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A151668 (n + 1) + A151668 (n + 2)).toNat

end

end A039964.P5448328875922814633

namespace A039964

/-- `A000120(A151668(n+1)+A151668(n+2))` -/
def P5448328875922814633.Spec : Prop :=
  ∀ n, P5448328875922814633.a n = A039964 n

end A039964

/-! ## A039964.P2233819706888990697

`A039975(2*(n+2))`
-/

namespace A039964.P2233819706888990697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (2 * (n + 2))

end

end A039964.P2233819706888990697

namespace A039964

/-- `A039975(2*(n+2))` -/
def P2233819706888990697.Spec : Prop :=
  ∀ n, P2233819706888990697.a n = A039964 n

end A039964

/-! ## A039964.P12841853902755553184

`Δ[A081611(3*(n+1))]`
-/

namespace A039964.P12841853902755553184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039964.P12841853902755553184

namespace A039964

/-- `Δ[A081611(3*(n+1))]` -/
def P12841853902755553184.Spec : Prop :=
  ∀ n, P12841853902755553184.a n = A039964 n

end A039964

/-! ## A039964.P18128578468831247281

`Δ[A104406(3*(n+1))]`
-/

namespace A039964.P18128578468831247281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104406 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039964.P18128578468831247281

namespace A039964

/-- `Δ[A104406(3*(n+1))]` -/
def P18128578468831247281.Spec : Prop :=
  ∀ n, P18128578468831247281.a n = A039964 n

end A039964

/-! ## A039964.P14893698232867102658

`A000120(A151672(n+1)+A151672(n+2))`
-/

namespace A039964.P14893698232867102658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A151672 (n + 1) + A151672 (n + 2)).toNat

end

end A039964.P14893698232867102658

namespace A039964

/-- `A000120(A151672(n+1)+A151672(n+2))` -/
def P14893698232867102658.Spec : Prop :=
  ∀ n, P14893698232867102658.a n = A039964 n

end A039964

/-! ## A039964.P5349789312189408820

`A398041(n+2)%3`
-/

namespace A039964.P5349789312189408820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398041 (n + 2)) 3

end

end A039964.P5349789312189408820

namespace A039964

/-- `A398041(n+2)%3` -/
def P5349789312189408820.Spec : Prop :=
  ∀ n, P5349789312189408820.a n = A039964 n

end A039964

/-! ## A039964.P18174529064066974786

`A086246(n+2)%3`
-/

namespace A039964.P18174529064066974786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086246 (n + 2)) 3

end

end A039964.P18174529064066974786

namespace A039964

/-- `A086246(n+2)%3` -/
def P18174529064066974786.Spec : Prop :=
  ∀ n, P18174529064066974786.a n = A039964 n

end A039964

/-! ## A039964.P3597670981587571378

`A168049(n+2)%3`
-/

namespace A039964.P3597670981587571378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168049 (n + 2)) 3

end

end A039964.P3597670981587571378

namespace A039964

/-- `A168049(n+2)%3` -/
def P3597670981587571378.Spec : Prop :=
  ∀ n, P3597670981587571378.a n = A039964 n

end A039964

/-! ## A039964.P8750082067595310785

`A298300(n+2)%3`
-/

namespace A039964.P8750082067595310785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298300 (n + 2)) 3

end

end A039964.P8750082067595310785

namespace A039964

/-- `A298300(n+2)%3` -/
def P8750082067595310785.Spec : Prop :=
  ∀ n, P8750082067595310785.a n = A039964 n

end A039964

/-! ## A039964.P11310295920844680513

`A025565(n+3)%3`
-/

namespace A039964.P11310295920844680513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025565 (n + 3)) 3

end

end A039964.P11310295920844680513

namespace A039964

/-- `A025565(n+3)%3` -/
def P11310295920844680513.Spec : Prop :=
  ∀ n, P11310295920844680513.a n = A039964 n

end A039964

/-! ## A039964.P6253788188103904043

`A330796(n+1)%3`
-/

namespace A039964.P6253788188103904043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330796 (n + 1)) 3

end

end A039964.P6253788188103904043

namespace A039964

/-- `A330796(n+1)%3` -/
def P6253788188103904043.Spec : Prop :=
  ∀ n, P6253788188103904043.a n = A039964 n

end A039964

/-!
# A039965: An example of a d-perfect sequence.

The programs for A039965, the canonical program `A039965.P14292940567836305902` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039965 has offset 1).

The definition of A039965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039965.P14292940567836305902

`A039973(Δ[n²])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A039965

/-- `A039973(Δ[n²])` -/
def P14292940567836305902.Spec : Prop :=
  ∀ n, P14292940567836305902.a n = A039965 (n + 1)

theorem P14292940567836305902.correct : P14292940567836305902.Spec := by
  intro n
  simp only [A039965, Nat.add_sub_cancel]

end A039965

/-! ## A039965.P13669856891780472311

`dr(A039973(2*n+1))`
-/

namespace A039965.P13669856891780472311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A039973 (2 * n + 1))

end

end A039965.P13669856891780472311

namespace A039965

/-- `dr(A039973(2*n+1))` -/
def P13669856891780472311.Spec : Prop :=
  ∀ n, (P13669856891780472311.a n : ℤ) = A039965 (n + 1)

end A039965

/-! ## A039965.P8184911565789085287

`A039973(A005408(n))%3`
-/

namespace A039965.P8184911565789085287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039973 (A005408 n).toNat) 3

end

end A039965.P8184911565789085287

namespace A039965

/-- `A039973(A005408(n))%3` -/
def P8184911565789085287.Spec : Prop :=
  ∀ n, P8184911565789085287.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P6091815588649919078

`A039973(A004273(n+1))%3`
-/

namespace A039965.P6091815588649919078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039973 (A004273 (n + 1)).toNat) 3

end

end A039965.P6091815588649919078

namespace A039965

/-- `A039973(A004273(n+1))%3` -/
def P6091815588649919078.Spec : Prop :=
  ∀ n, P6091815588649919078.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P17689696982011888198

`lcm(A039964(n)!, A039973(2*n+1))`
-/

namespace A039965.P17689696982011888198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A039964 n).toNat : ℤ) (A039973 (2 * n + 1))

end

end A039965.P17689696982011888198

namespace A039965

/-- `lcm(A039964(n)!, A039973(2*n+1))` -/
def P17689696982011888198.Spec : Prop :=
  ∀ n, (P17689696982011888198.a n : ℤ) = A039965 (n + 1)

end A039965

/-! ## A039965.P4003824610860073849

`A039973(2*n+1)+A039973(2*(n+1))`
-/

namespace A039965.P4003824610860073849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (2 * n + 1) + A039973 (2 * (n + 1))

end

end A039965.P4003824610860073849

namespace A039965

/-- `A039973(2*n+1)+A039973(2*(n+1))` -/
def P4003824610860073849.Spec : Prop :=
  ∀ n, P4003824610860073849.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P3736748677047258542

`A039975(A085296(2*n+1)-A039975(2*(n+1)))`
-/

namespace A039965.P3736748677047258542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (A085296 (2 * n + 1) - A039975 (2 * (n + 1))).toNat

end

end A039965.P3736748677047258542

namespace A039965

/-- `A039975(A085296(2*n+1)-A039975(2*(n+1)))` -/
def P3736748677047258542.Spec : Prop :=
  ∀ n, P3736748677047258542.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P9698545641195983739

`A039975(A039957(n+1))+A039973(2*n+1)`
-/

namespace A039965.P9698545641195983739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (A039957 (n + 1)).toNat + A039973 (2 * n + 1)

end

end A039965.P9698545641195983739

namespace A039965

/-- `A039975(A039957(n+1))+A039973(2*n+1)` -/
def P9698545641195983739.Spec : Prop :=
  ∀ n, P9698545641195983739.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P2626336001390762660

`A010872(A039975(2*(n+1))*(3*n+2))`
-/

namespace A039965.P2626336001390762660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A039975 (2 * (n + 1)) * (3 * n + 2 : ℤ)).toNat

end

end A039965.P2626336001390762660

namespace A039965

/-- `A010872(A039975(2*(n+1))*(3*n+2))` -/
def P2626336001390762660.Spec : Prop :=
  ∀ n, P2626336001390762660.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P5161759394177100004

`A010872(A039969(n)*A056020(n+1))`
-/

namespace A039965.P5161759394177100004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A039969 n * A056020 (n + 1)).toNat

end

end A039965.P5161759394177100004

namespace A039965

/-- `A010872(A039969(n)*A056020(n+1))` -/
def P5161759394177100004.Spec : Prop :=
  ∀ n, P5161759394177100004.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P6215250304606354096

`A039973(2*n+1)^A039974(n+1)!`
-/

namespace A039965.P6215250304606354096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (2 * n + 1) ^ Nat.factorial (A039974 (n + 1)).toNat

end

end A039965.P6215250304606354096

namespace A039965

/-- `A039973(2*n+1)^A039974(n+1)!` -/
def P6215250304606354096.Spec : Prop :=
  ∀ n, P6215250304606354096.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P7644287211436584589

`A039974(2*(n+1))`
-/

namespace A039965.P7644287211436584589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039974 (2 * (n + 1))

end

end A039965.P7644287211436584589

namespace A039965

/-- `A039974(2*(n+1))` -/
def P7644287211436584589.Spec : Prop :=
  ∀ n, P7644287211436584589.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P6352440677392564291

`A039974(Δ[A002378(n)])%3`
-/

namespace A039965.P6352440677392564291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039974 (f1 (n + 1) - f1 n).toNat) 3

end

end A039965.P6352440677392564291

namespace A039965

/-- `A039974(Δ[A002378(n)])%3` -/
def P6352440677392564291.Spec : Prop :=
  ∀ n, P6352440677392564291.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P875757617200163825

`A010872(A085296(n+2)-A039975(2*(n+1)))`
-/

namespace A039965.P875757617200163825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A085296 (n + 2) - A039975 (2 * (n + 1))).toNat

end

end A039965.P875757617200163825

namespace A039965

/-- `A010872(A085296(n+2)-A039975(2*(n+1)))` -/
def P875757617200163825.Spec : Prop :=
  ∀ n, P875757617200163825.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P8521607673289744923

`A007971(n+1)%3`
-/

namespace A039965.P8521607673289744923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007971 (n + 1)) 3

end

end A039965.P8521607673289744923

namespace A039965

/-- `A007971(n+1)%3` -/
def P8521607673289744923.Spec : Prop :=
  ∀ n, P8521607673289744923.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P16588004735318204620

`A005773(n+1)%3`
-/

namespace A039965.P16588004735318204620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005773 (n + 1)) 3

end

end A039965.P16588004735318204620

namespace A039965

/-- `A005773(n+1)%3` -/
def P16588004735318204620.Spec : Prop :=
  ∀ n, P16588004735318204620.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P14779280182886975372

`A307789(n+2)%3`
-/

namespace A039965.P14779280182886975372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307789 (n + 2)) 3

end

end A039965.P14779280182886975372

namespace A039965

/-- `A307789(n+2)%3` -/
def P14779280182886975372.Spec : Prop :=
  ∀ n, P14779280182886975372.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P12268701223581992238

`A081113(n+2)%3`
-/

namespace A039965.P12268701223581992238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081113 (n + 2)) 3

end

end A039965.P12268701223581992238

namespace A039965

/-- `A081113(n+2)%3` -/
def P12268701223581992238.Spec : Prop :=
  ∀ n, P12268701223581992238.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P12977295171513381000

`A188860(n+2)%3`
-/

namespace A039965.P12977295171513381000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188860 (n + 2)) 3

end

end A039965.P12977295171513381000

namespace A039965

/-- `A188860(n+2)%3` -/
def P12977295171513381000.Spec : Prop :=
  ∀ n, P12977295171513381000.a n = A039965 (n + 1)

end A039965

/-! ## A039965.P6709453026453378062

`A115967(n)%3`
-/

namespace A039965.P6709453026453378062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115967 n) 3

end

end A039965.P6709453026453378062

namespace A039965

/-- `A115967(n)%3` -/
def P6709453026453378062.Spec : Prop :=
  ∀ n, P6709453026453378062.a n = A039965 (n + 1)

end A039965

/-!
# A039966: a(0) = 1; thereafter a(3n+2) = 0, a(3n) = a(3n+1) = a(n).

The programs for A039966, the canonical program `A039966.P2983732039827484293` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039966 has offset 0).

The definition of A039966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039966.P2983732039827484293

`a(floor(n/3))*a(n%3)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A039966

/-- `a(floor(n/3))*a(n%3)` -/
def P2983732039827484293.Spec : Prop :=
  ∀ n, (P2983732039827484293.a n : ℤ) = A039966 n

theorem P2983732039827484293.correct : P2983732039827484293.Spec := by
  intro n
  simp only [A039966]

end A039966

/-! ## A039966.P430239358193371387

`a(floor(n/3))-a(n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A039966.P430239358193371387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat - a (n - 1) * a (n - 2)

end

end A039966.P430239358193371387

namespace A039966

/-- `a(floor(n/3))-a(n-1)*a(n-2)` -/
def P430239358193371387.Spec : Prop :=
  ∀ n, P430239358193371387.a n = A039966 n

end A039966

/-! ## A039966.P4161999225099961549

`char[A060372(n)]`
-/

namespace A039966.P4161999225099961549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A039966.P4161999225099961549

namespace A039966

/-- `char[A060372(n)]` -/
def P4161999225099961549.Spec : Prop :=
  ∀ n, (P4161999225099961549.a n : ℤ) = A039966 n

end A039966

/-! ## A039966.P14061064334121399037

`char[A060374(n)]`
-/

namespace A039966.P14061064334121399037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A039966.P14061064334121399037

namespace A039966

/-- `char[A060374(n)]` -/
def P14061064334121399037.Spec : Prop :=
  ∀ n, (P14061064334121399037.a n : ℤ) = A039966 n

end A039966

/-! ## A039966.P12024923997394587356

`char[A244042(n)]`
-/

namespace A039966.P12024923997394587356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A039966.P12024923997394587356

namespace A039966

/-- `char[A244042(n)]` -/
def P12024923997394587356.Spec : Prop :=
  ∀ n, (P12024923997394587356.a n : ℤ) = A039966 n

end A039966

/-! ## A039966.P976531876599901208

`A088917(2*n)`
-/

namespace A039966.P976531876599901208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n)

end

end A039966.P976531876599901208

namespace A039966

/-- `A088917(2*n)` -/
def P976531876599901208.Spec : Prop :=
  ∀ n, P976531876599901208.a n = A039966 n

end A039966

/-! ## A039966.P7926197659361302188

`A105420(n)%2`
-/

namespace A039966.P7926197659361302188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105420 n) 2

end

end A039966.P7926197659361302188

namespace A039966

/-- `A105420(n)%2` -/
def P7926197659361302188.Spec : Prop :=
  ∀ n, P7926197659361302188.a n = A039966 n

end A039966

/-! ## A039966.P9845552842073614291

`A117592(n)%2`
-/

namespace A039966.P9845552842073614291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117592 n) 2

end

end A039966.P9845552842073614291

namespace A039966

/-- `A117592(n)%2` -/
def P9845552842073614291.Spec : Prop :=
  ∀ n, P9845552842073614291.a n = A039966 n

end A039966

/-! ## A039966.P332352336658307854

`A117940(n)%2`
-/

namespace A039966.P332352336658307854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117940 n) 2

end

end A039966.P332352336658307854

namespace A039966

/-- `A117940(n)%2` -/
def P332352336658307854.Spec : Prop :=
  ∀ n, P332352336658307854.a n = A039966 n

end A039966

/-! ## A039966.P4897662581807963872

`A120879(n)%2`
-/

namespace A039966.P4897662581807963872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120879 n) 2

end

end A039966.P4897662581807963872

namespace A039966

/-- `A120879(n)%2` -/
def P4897662581807963872.Spec : Prop :=
  ∀ n, P4897662581807963872.a n = A039966 n

end A039966

/-! ## A039966.P14686367166683801184

`A290092(n)%2`
-/

namespace A039966.P14686367166683801184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290092 n) 2

end

end A039966.P14686367166683801184

namespace A039966

/-- `A290092(n)%2` -/
def P14686367166683801184.Spec : Prop :=
  ∀ n, P14686367166683801184.a n = A039966 n

end A039966

/-! ## A039966.P12295280125870772776

`A151672(n)%3`
-/

namespace A039966.P12295280125870772776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151672 n) 3

end

end A039966.P12295280125870772776

namespace A039966

/-- `A151672(n)%3` -/
def P12295280125870772776.Spec : Prop :=
  ∀ n, P12295280125870772776.a n = A039966 n

end A039966

/-! ## A039966.P10106393938376965778

`and(1, A117942(n))`
-/

namespace A039966.P10106393938376965778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117942 n)

end

end A039966.P10106393938376965778

namespace A039966

/-- `and(1, A117942(n))` -/
def P10106393938376965778.Spec : Prop :=
  ∀ n, P10106393938376965778.a n = A039966 n

end A039966

/-! ## A039966.P16558856219412896730

`C(2, A273515(n))`
-/

namespace A039966.P16558856219412896730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A273515 n).toNat

end

end A039966.P16558856219412896730

namespace A039966

/-- `C(2, A273515(n))` -/
def P16558856219412896730.Spec : Prop :=
  ∀ n, (P16558856219412896730.a n : ℤ) = A039966 n

end A039966

/-! ## A039966.P16936111532908701364

`C(A167877(n), n)`
-/

namespace A039966.P16936111532908701364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A167877 n).toNat n

end

end A039966.P16936111532908701364

namespace A039966

/-- `C(A167877(n), n)` -/
def P16936111532908701364.Spec : Prop :=
  ∀ n, (P16936111532908701364.a n : ℤ) = A039966 n

end A039966

/-! ## A039966.P7915526950584447929

`floor(sqrt(A006996(n)))`
-/

namespace A039966.P7915526950584447929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006996 n)

end

end A039966.P7915526950584447929

namespace A039966

/-- `floor(sqrt(A006996(n)))` -/
def P7915526950584447929.Spec : Prop :=
  ∀ n, P7915526950584447929.a n = A039966 n

end A039966

/-! ## A039966.P10089300688913224858

`floor(sqrt(A092037(n)))`
-/

namespace A039966.P10089300688913224858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A092037 n)

end

end A039966.P10089300688913224858

namespace A039966

/-- `floor(sqrt(A092037(n)))` -/
def P10089300688913224858.Spec : Prop :=
  ∀ n, P10089300688913224858.a n = A039966 n

end A039966

/-! ## A039966.P6611368820563285601

`char[record[A117966(n)]]`
-/

namespace A039966.P6611368820563285601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A039966.P6611368820563285601

namespace A039966

/-- `char[record[A117966(n)]]` -/
def P6611368820563285601.Spec : Prop :=
  ∀ n, (P6611368820563285601.a n : ℤ) = A039966 n

end A039966

/-! ## A039966.P17678888192118131438

`C(2, A273514(n)²)`
-/

namespace A039966.P17678888192118131438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A273514 n ^ 2).toNat

end

end A039966.P17678888192118131438

namespace A039966

/-- `C(2, A273514(n)²)` -/
def P17678888192118131438.Spec : Prop :=
  ∀ n, (P17678888192118131438.a n : ℤ) = A039966 n

end A039966

/-!
# A039968: An example of a d-perfect sequence.

The programs for A039968, the canonical program `A039968.P13772804435382052728` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039968 has offset 1).

The definition of A039968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039968.P13718945291667613671

`2-A137992(n)`
-/

namespace A039968.P13718945291667613671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A137992 n

end

end A039968.P13718945291667613671

namespace A039968

/-- `2-A137992(n)` -/
def P13718945291667613671.Spec : Prop :=
  ∀ n, P13718945291667613671.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P13772804435382052728

`A006996(3*n+4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039968

/-- `A006996(3*n+4)` -/
def P13772804435382052728.Spec : Prop :=
  ∀ n, P13772804435382052728.a n = A039968 (n + 1)

theorem P13772804435382052728.correct : P13772804435382052728.Spec := by
  intro n
  simp only [A039968, Nat.add_sub_cancel]

end A039968

/-! ## A039968.P8813439951950285060

`A113046(2*n)%3`
-/

namespace A039968.P8813439951950285060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113046 (2 * n)) 3

end

end A039968.P8813439951950285060

namespace A039968

/-- `A113046(2*n)%3` -/
def P8813439951950285060.Spec : Prop :=
  ∀ n, P8813439951950285060.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P5157335178245925687

`(2*A006047(n+1))%3`
-/

namespace A039968.P5157335178245925687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A006047 (n + 1)) 3

end

end A039968.P5157335178245925687

namespace A039968

/-- `(2*A006047(n+1))%3` -/
def P5157335178245925687.Spec : Prop :=
  ∀ n, P5157335178245925687.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P1633424160832965749

`A099905(3*(n+1))%3`
-/

namespace A039968.P1633424160832965749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099905 (3 * (n + 1))) 3

end

end A039968.P1633424160832965749

namespace A039968

/-- `A099905(3*(n+1))%3` -/
def P1633424160832965749.Spec : Prop :=
  ∀ n, P1633424160832965749.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P2490091104865374349

`A005704(3*n+4)%3`
-/

namespace A039968.P2490091104865374349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005704 (3 * n + 4)) 3

end

end A039968.P2490091104865374349

namespace A039968

/-- `A005704(3*n+4)%3` -/
def P2490091104865374349.Spec : Prop :=
  ∀ n, P2490091104865374349.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P6349150174508353524

`A039970(Δ[(3*(n+1))²])`
-/

namespace A039968.P6349150174508353524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A039968.P6349150174508353524

namespace A039968

/-- `A039970(Δ[(3*(n+1))²])` -/
def P6349150174508353524.Spec : Prop :=
  ∀ n, P6349150174508353524.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P11193038054791785907

`A039964(A007310(n+1))`
-/

namespace A039968.P11193038054791785907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039964 (A007310 (n + 1)).toNat

end

end A039968.P11193038054791785907

namespace A039968

/-- `A039964(A007310(n+1))` -/
def P11193038054791785907.Spec : Prop :=
  ∀ n, P11193038054791785907.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P11693206154542833447

`A080425(A006047(n+1))`
-/

namespace A039968.P11693206154542833447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A006047 (n + 1)).toNat

end

end A039968.P11693206154542833447

namespace A039968

/-- `A080425(A006047(n+1))` -/
def P11693206154542833447.Spec : Prop :=
  ∀ n, P11693206154542833447.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P15021336610621638792

`A039964(A038179(n+2))`
-/

namespace A039968.P15021336610621638792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039964 (A038179 (n + 2)).toNat

end

end A039968.P15021336610621638792

namespace A039968

/-- `A039964(A038179(n+2))` -/
def P15021336610621638792.Spec : Prop :=
  ∀ n, P15021336610621638792.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P1780382354531448352

`2-A010872(∑[A039969(n)])`
-/

namespace A039968.P1780382354531448352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039968.P1780382354531448352

namespace A039968

/-- `2-A010872(∑[A039969(n)])` -/
def P1780382354531448352.Spec : Prop :=
  ∀ n, P1780382354531448352.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P17936913942130158192

`A096271(A120879(n+1)+2)`
-/

namespace A039968.P17936913942130158192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A120879 (n + 1) + 2).toNat

end

end A039968.P17936913942130158192

namespace A039968

/-- `A096271(A120879(n+1)+2)` -/
def P17936913942130158192.Spec : Prop :=
  ∀ n, P17936913942130158192.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P15744995635019660590

`A039965(A007310(n+2)-1)`
-/

namespace A039968.P15744995635019660590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039965 (A007310 (n + 2) - 1).toNat

end

end A039968.P15744995635019660590

namespace A039968

/-- `A039965(A007310(n+2)-1)` -/
def P15744995635019660590.Spec : Prop :=
  ∀ n, P15744995635019660590.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P9912445764720169707

`2-A100286(A038574(n+1))`
-/

namespace A039968.P9912445764720169707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A100286 (A038574 (n + 1)).toNat

end

end A039968.P9912445764720169707

namespace A039968

/-- `2-A100286(A038574(n+1))` -/
def P9912445764720169707.Spec : Prop :=
  ∀ n, P9912445764720169707.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P4238700465369447169

`A010872(2*A006047(n+1))`
-/

namespace A039968.P4238700465369447169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * A006047 (n + 1)).toNat

end

end A039968.P4238700465369447169

namespace A039968

/-- `A010872(2*A006047(n+1))` -/
def P4238700465369447169.Spec : Prop :=
  ∀ n, P4238700465369447169.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P1512810434836476320

`A039964(A047269(2*(n+1)))`
-/

namespace A039968.P1512810434836476320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039964 (A047269 (2 * (n + 1))).toNat

end

end A039968.P1512810434836476320

namespace A039968

/-- `A039964(A047269(2*(n+1)))` -/
def P1512810434836476320.Spec : Prop :=
  ∀ n, P1512810434836476320.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P9079041586874310577

`A000034(n)*A039966(n+1)`
-/

namespace A039968.P9079041586874310577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A039966 (n + 1)

end

end A039968.P9079041586874310577

namespace A039968

/-- `A000034(n)*A039966(n+1)` -/
def P9079041586874310577.Spec : Prop :=
  ∀ n, P9079041586874310577.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P17436640481536831846

`A039966(n+1)*A040001(n+1)`
-/

namespace A039968.P17436640481536831846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (n + 1) * A040001 (n + 1)

end

end A039968.P17436640481536831846

namespace A039968

/-- `A039966(n+1)*A040001(n+1)` -/
def P17436640481536831846.Spec : Prop :=
  ∀ n, P17436640481536831846.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P12831959206308108248

`A371222(A073849(2*n+1)-n)`
-/

namespace A039968.P12831959206308108248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371222 (A073849 (2 * n + 1) - (n : ℤ)).toNat

end

end A039968.P12831959206308108248

namespace A039968

/-- `A371222(A073849(2*n+1)-n)` -/
def P12831959206308108248.Spec : Prop :=
  ∀ n, P12831959206308108248.a n = A039968 (n + 1)

end A039968

/-! ## A039968.P15974023505945447081

`A010872((2*n+1)*A039969(n))`
-/

namespace A039968.P15974023505945447081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((2 * n + 1 : ℤ) * A039969 n).toNat

end

end A039968.P15974023505945447081

namespace A039968

/-- `A010872((2*n+1)*A039969(n))` -/
def P15974023505945447081.Spec : Prop :=
  ∀ n, P15974023505945447081.a n = A039968 (n + 1)

end A039968

/-!
# A039969: An example of a d-perfect sequence: a(n) = Catalan(n) mod 3.

The programs for A039969, the canonical program `A039969.P8110063093682145486` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039969 has offset 0).

The definition of A039969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039969.P11568271290126300426

`A004095(n)%3`
-/

namespace A039969.P11568271290126300426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004095 n) 3

end

end A039969.P11568271290126300426

namespace A039969

/-- `A004095(n)%3` -/
def P11568271290126300426.Spec : Prop :=
  ∀ n, P11568271290126300426.a n = A039969 n

end A039969

/-! ## A039969.P15848655576805951751

`A130851(n)%3`
-/

namespace A039969.P15848655576805951751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130851 n) 3

end

end A039969.P15848655576805951751

namespace A039969

/-- `A130851(n)%3` -/
def P15848655576805951751.Spec : Prop :=
  ∀ n, P15848655576805951751.a n = A039969 n

end A039969

/-! ## A039969.P3597585769818133645

`A130856(n)%3`
-/

namespace A039969.P3597585769818133645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130856 n) 3

end

end A039969.P3597585769818133645

namespace A039969

/-- `A130856(n)%3` -/
def P3597585769818133645.Spec : Prop :=
  ∀ n, P3597585769818133645.a n = A039969 n

end A039969

/-! ## A039969.P8230805851290488852

`A159979(n)%3`
-/

namespace A039969.P8230805851290488852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159979 n) 3

end

end A039969.P8230805851290488852

namespace A039969

/-- `A159979(n)%3` -/
def P8230805851290488852.Spec : Prop :=
  ∀ n, P8230805851290488852.a n = A039969 n

end A039969

/-! ## A039969.P8589626966589602301

`A159989(n)%3`
-/

namespace A039969.P8589626966589602301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159989 n) 3

end

end A039969.P8589626966589602301

namespace A039969

/-- `A159989(n)%3` -/
def P8589626966589602301.Spec : Prop :=
  ∀ n, P8589626966589602301.a n = A039969 n

end A039969

/-! ## A039969.P2151874129357483431

`A259667(n)%3`
-/

namespace A039969.P2151874129357483431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259667 n) 3

end

end A039969.P2151874129357483431

namespace A039969

/-- `A259667(n)%3` -/
def P2151874129357483431.Spec : Prop :=
  ∀ n, P2151874129357483431.a n = A039969 n

end A039969

/-! ## A039969.P15154584456994461690

`A039970(Δ[n²])`
-/

namespace A039969.P15154584456994461690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A039969.P15154584456994461690

namespace A039969

/-- `A039970(Δ[n²])` -/
def P15154584456994461690.Spec : Prop :=
  ∀ n, P15154584456994461690.a n = A039969 n

end A039969

/-! ## A039969.P8110063093682145486

`A006996(round(n/3))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039969

/-- `A006996(round(n/3))` -/
def P8110063093682145486.Spec : Prop :=
  ∀ n, P8110063093682145486.a n = A039969 n

theorem P8110063093682145486.correct : P8110063093682145486.Spec := by
  intro n
  simp only [A039969]

end A039969

/-! ## A039969.P6074408932290293398

`Δ[A005704(n)]%3`
-/

namespace A039969.P6074408932290293398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A039969.P6074408932290293398

namespace A039969

/-- `Δ[A005704(n)]%3` -/
def P6074408932290293398.Spec : Prop :=
  ∀ n, P6074408932290293398.a n = A039969 n

end A039969

/-! ## A039969.P7716179471321111445

`A132328(n+1)%3`
-/

namespace A039969.P7716179471321111445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132328 (n + 1)) 3

end

end A039969.P7716179471321111445

namespace A039969

/-- `A132328(n+1)%3` -/
def P7716179471321111445.Spec : Prop :=
  ∀ n, P7716179471321111445.a n = A039969 n

end A039969

/-! ## A039969.P14869859274420037327

`dr(A039970(2*n+1))`
-/

namespace A039969.P14869859274420037327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A039970 (2 * n + 1))

end

end A039969.P14869859274420037327

namespace A039969

/-- `dr(A039970(2*n+1))` -/
def P14869859274420037327.Spec : Prop :=
  ∀ n, (P14869859274420037327.a n : ℤ) = A039969 n

end A039969

/-! ## A039969.P10046962721323594203

`A010872(A159989(n))`
-/

namespace A039969.P10046962721323594203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A159989 n).toNat

end

end A039969.P10046962721323594203

namespace A039969

/-- `A010872(A159989(n))` -/
def P10046962721323594203.Spec : Prop :=
  ∀ n, P10046962721323594203.a n = A039969 n

end A039969

/-! ## A039969.P13993382164548226671

`A010875(2*A159989(n))/2`
-/

namespace A039969.P13993382164548226671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010875 (2 * A159989 n).toNat : ℚ) / 2

end

end A039969.P13993382164548226671

namespace A039969

/-- `A010875(2*A159989(n))/2` -/
def P13993382164548226671.Spec : Prop :=
  ∀ n, P13993382164548226671.a n = (A039969 n : ℚ)

end A039969

/-! ## A039969.P5376010022288174202

`A039970(2*n+1)+A039970(2*(n+1))`
-/

namespace A039969.P5376010022288174202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (2 * n + 1) + A039970 (2 * (n + 1))

end

end A039969.P5376010022288174202

namespace A039969

/-- `A039970(2*n+1)+A039970(2*(n+1))` -/
def P5376010022288174202.Spec : Prop :=
  ∀ n, P5376010022288174202.a n = A039969 n

end A039969

/-! ## A039969.P9015553023706108755

`A062051(n+1)%3`
-/

namespace A039969.P9015553023706108755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062051 (n + 1)) 3

end

end A039969.P9015553023706108755

namespace A039969

/-- `A062051(n+1)%3` -/
def P9015553023706108755.Spec : Prop :=
  ∀ n, P9015553023706108755.a n = A039969 n

end A039969

/-! ## A039969.P6173846664181520235

`A039972(ceil((2*n+1)/3))`
-/

namespace A039969.P6173846664181520235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039972 ⌈(2 * n + 1 : ℚ) / 3⌉.toNat

end

end A039969.P6173846664181520235

namespace A039969

/-- `A039972(ceil((2*n+1)/3))` -/
def P6173846664181520235.Spec : Prop :=
  ∀ n, P6173846664181520235.a n = A039969 n

end A039969

/-! ## A039969.P15609764016980938395

`A010872(A159979(n))`
-/

namespace A039969.P15609764016980938395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A159979 n).toNat

end

end A039969.P15609764016980938395

namespace A039969

/-- `A010872(A159979(n))` -/
def P15609764016980938395.Spec : Prop :=
  ∀ n, P15609764016980938395.a n = A039969 n

end A039969

/-! ## A039969.P2514451805692501894

`A010872(A004095(n))`
-/

namespace A039969.P2514451805692501894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A004095 n).toNat

end

end A039969.P2514451805692501894

namespace A039969

/-- `A010872(A004095(n))` -/
def P2514451805692501894.Spec : Prop :=
  ∀ n, P2514451805692501894.a n = A039969 n

end A039969

/-! ## A039969.P15976704061649250823

`Δ[A062051(3*n)]%3`
-/

namespace A039969.P15976704061649250823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A039969.P15976704061649250823

namespace A039969

/-- `Δ[A062051(3*n)]%3` -/
def P15976704061649250823.Spec : Prop :=
  ∀ n, P15976704061649250823.a n = A039969 n

end A039969

/-! ## A039969.P4574942037856754046

`A039971(A130823(n+2))`
-/

namespace A039969.P4574942037856754046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039971 (A130823 (n + 2)).toNat

end

end A039969.P4574942037856754046

namespace A039969

/-- `A039971(A130823(n+2))` -/
def P4574942037856754046.Spec : Prop :=
  ∀ n, P4574942037856754046.a n = A039969 n

end A039969

/-!
# A039970: An example of a d-perfect sequence: a(2*n) = 0, a(2*n+1) = Catalan(n) mod 3.

The programs for A039970, the canonical program `A039970.P17445179311011045739` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039970 has offset 1).

The definition of A039970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039970.P6065007253556724862

`A126120(n)%3`
-/

namespace A039970.P6065007253556724862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 n) 3

end

end A039970.P6065007253556724862

namespace A039970

/-- `A126120(n)%3` -/
def P6065007253556724862.Spec : Prop :=
  ∀ n, P6065007253556724862.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P17623904163316294332

`A097331(n+1)%3`
-/

namespace A039970.P17623904163316294332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 (n + 1)) 3

end

end A039970.P17623904163316294332

namespace A039970

/-- `A097331(n+1)%3` -/
def P17623904163316294332.Spec : Prop :=
  ∀ n, P17623904163316294332.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P4771518168826766782

`abs(A105523(n+1)%3)`
-/

namespace A039970.P4771518168826766782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A105523 (n + 1)) 3|

end

end A039970.P4771518168826766782

namespace A039970

/-- `abs(A105523(n+1)%3)` -/
def P4771518168826766782.Spec : Prop :=
  ∀ n, P4771518168826766782.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P4152927385458986112

`abs(A182492(2*n+3))%3`
-/

namespace A039970.P4152927385458986112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A182492 (2 * n + 3)| 3

end

end A039970.P4152927385458986112

namespace A039970

/-- `abs(A182492(2*n+3))%3` -/
def P4152927385458986112.Spec : Prop :=
  ∀ n, P4152927385458986112.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P5819063540213982684

`(A000108(A004526(n))*char[2*n])%3`
-/

namespace A039970.P5819063540213982684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A004526 n).toNat * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) 3

end

end A039970.P5819063540213982684

namespace A039970

/-- `(A000108(A004526(n))*char[2*n])%3` -/
def P5819063540213982684.Spec : Prop :=
  ∀ n, P5819063540213982684.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P17445179311011045739

`(A000108(A123108(n))*and(1, n+1))%3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039970

/-- `(A000108(A123108(n))*and(1, n+1))%3` -/
def P17445179311011045739.Spec : Prop :=
  ∀ n, P17445179311011045739.a n = A039970 (n + 1)

theorem P17445179311011045739.correct : P17445179311011045739.Spec := by
  intro n
  simp only [A039970, Nat.add_sub_cancel]

end A039970

/-! ## A039970.P14747067163992304437

`(A000108(A142150(n))*A059841(n))%3`
-/

namespace A039970.P14747067163992304437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A142150 n).toNat * A059841 n) 3

end

end A039970.P14747067163992304437

namespace A039970

/-- `(A000108(A142150(n))*A059841(n))%3` -/
def P14747067163992304437.Spec : Prop :=
  ∀ n, P14747067163992304437.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P16479181103562797868

`A126324(n)%3`
-/

namespace A039970.P16479181103562797868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126324 n) 3

end

end A039970.P16479181103562797868

namespace A039970

/-- `A126324(n)%3` -/
def P16479181103562797868.Spec : Prop :=
  ∀ n, P16479181103562797868.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P2134268729477099792

`A028303(n)%A112030(n)`
-/

namespace A039970.P2134268729477099792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 n) (A112030 n)

end

end A039970.P2134268729477099792

namespace A039970

/-- `A028303(n)%A112030(n)` -/
def P2134268729477099792.Spec : Prop :=
  ∀ n, P2134268729477099792.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P16572721958100927050

`A028304(n)%A112030(n)`
-/

namespace A039970.P16572721958100927050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028304 n) (A112030 n)

end

end A039970.P16572721958100927050

namespace A039970

/-- `A028304(n)%A112030(n)` -/
def P16572721958100927050.Spec : Prop :=
  ∀ n, P16572721958100927050.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P4815269852389878620

`A208355(n)%A112030(n)`
-/

namespace A039970.P4815269852389878620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 n) (A112030 n)

end

end A039970.P4815269852389878620

namespace A039970

/-- `A208355(n)%A112030(n)` -/
def P4815269852389878620.Spec : Prop :=
  ∀ n, P4815269852389878620.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P13045756111265443629

`gcd(3*A090192(n), A090192(n+1))%3`
-/

namespace A039970.P13045756111265443629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A090192 n) (A090192 (n + 1)) % 3

end

end A039970.P13045756111265443629

namespace A039970

/-- `gcd(3*A090192(n), A090192(n+1))%3` -/
def P13045756111265443629.Spec : Prop :=
  ∀ n, (P13045756111265443629.a n : ℤ) = A039970 (n + 1)

end A039970

/-! ## A039970.P14935140364692616426

`A063786(n+2)%A112030(n)`
-/

namespace A039970.P14935140364692616426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063786 (n + 2)) (A112030 n)

end

end A039970.P14935140364692616426

namespace A039970

/-- `A063786(n+2)%A112030(n)` -/
def P14935140364692616426.Spec : Prop :=
  ∀ n, P14935140364692616426.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P8360842542394067836

`A099363(n)%A112030(n)`
-/

namespace A039970.P8360842542394067836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099363 n) (A112030 n)

end

end A039970.P8360842542394067836

namespace A039970

/-- `A099363(n)%A112030(n)` -/
def P8360842542394067836.Spec : Prop :=
  ∀ n, P8360842542394067836.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P10541528164629268855

`A057977(n)%A112030(n)`
-/

namespace A039970.P10541528164629268855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057977 n) (A112030 n)

end

end A039970.P10541528164629268855

namespace A039970

/-- `A057977(n)%A112030(n)` -/
def P10541528164629268855.Spec : Prop :=
  ∀ n, P10541528164629268855.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P3755505246726180673

`A026010(n)%A112030(n)`
-/

namespace A039970.P3755505246726180673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026010 n) (A112030 n)

end

end A039970.P3755505246726180673

namespace A039970

/-- `A026010(n)%A112030(n)` -/
def P3755505246726180673.Spec : Prop :=
  ∀ n, P3755505246726180673.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P7686901236794992666

`A337499(n)%A112030(n)`
-/

namespace A039970.P7686901236794992666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337499 n) (A112030 n)

end

end A039970.P7686901236794992666

namespace A039970

/-- `A337499(n)%A112030(n)` -/
def P7686901236794992666.Spec : Prop :=
  ∀ n, P7686901236794992666.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P16542397369436067760

`A141811(A117142(n+1))%3`
-/

namespace A039970.P16542397369436067760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141811 (A117142 (n + 1)).toNat) 3

end

end A039970.P16542397369436067760

namespace A039970

/-- `A141811(A117142(n+1))%3` -/
def P16542397369436067760.Spec : Prop :=
  ∀ n, P16542397369436067760.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P14345568613813941863

`(C(n+1, lcm(2, n+2)/2)/(n+1))%3`
-/

namespace A039970.P14345568613813941863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.choose (n + 1) (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / 2)).toNat : ℚ) / (n + 1 : ℚ))) 3

end

end A039970.P14345568613813941863

namespace A039970

/-- `(C(n+1, lcm(2, n+2)/2)/(n+1))%3` -/
def P14345568613813941863.Spec : Prop :=
  ∀ n, P14345568613813941863.a n = A039970 (n + 1)

end A039970

/-! ## A039970.P2434505007961104019

`A126931(n)%3`
-/

namespace A039970.P2434505007961104019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126931 n) 3

end

end A039970.P2434505007961104019

namespace A039970

/-- `A126931(n)%3` -/
def P2434505007961104019.Spec : Prop :=
  ∀ n, P2434505007961104019.a n = A039970 (n + 1)

end A039970

/-!
# A039971: An example of a d-perfect sequence.

The programs for A039971, the canonical program `A039971.P87392334501609203` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039971 has offset 1).

The definition of A039971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039971.P13755590112476835077

`A113046(3*n)%3`
-/

namespace A039971.P13755590112476835077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113046 (3 * n)) 3

end

end A039971.P13755590112476835077

namespace A039971

/-- `A113046(3*n)%3` -/
def P13755590112476835077.Spec : Prop :=
  ∀ n, P13755590112476835077.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P87392334501609203

`A039964(A047269(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039971

/-- `A039964(A047269(n+1))` -/
def P87392334501609203.Spec : Prop :=
  ∀ n, P87392334501609203.a n = A039971 (n + 1)

theorem P87392334501609203.correct : P87392334501609203.Spec := by
  intro n
  simp only [A039971, Nat.add_sub_cancel]

end A039971

/-! ## A039971.P16106097891337092766

`A039972(A136320(n+1))`
-/

namespace A039971.P16106097891337092766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039972 (A136320 (n + 1)).toNat

end

end A039971.P16106097891337092766

namespace A039971

/-- `A039972(A136320(n+1))` -/
def P16106097891337092766.Spec : Prop :=
  ∀ n, P16106097891337092766.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P14708569485704504867

`A039965(A047260(n+2))`
-/

namespace A039971.P14708569485704504867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039965 (A047260 (n + 2)).toNat

end

end A039971.P14708569485704504867

namespace A039971

/-- `A039965(A047260(n+2))` -/
def P14708569485704504867.Spec : Prop :=
  ∀ n, P14708569485704504867.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P10979437029638316048

`A006996(A087444(n+2))`
-/

namespace A039971.P10979437029638316048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (A087444 (n + 2)).toNat

end

end A039971.P10979437029638316048

namespace A039971

/-- `A006996(A087444(n+2))` -/
def P10979437029638316048.Spec : Prop :=
  ∀ n, P10979437029638316048.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P1092938799376154492

`A039968(A341054(n+1))`
-/

namespace A039971.P1092938799376154492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039968 (A341054 (n + 1)).toNat

end

end A039971.P1092938799376154492

namespace A039971

/-- `A039968(A341054(n+1))` -/
def P1092938799376154492.Spec : Prop :=
  ∀ n, P1092938799376154492.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P6212710654403738368

`A039968(A127427(n+1))`
-/

namespace A039971.P6212710654403738368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039968 (A127427 (n + 1)).toNat

end

end A039971.P6212710654403738368

namespace A039971

/-- `A039968(A127427(n+1))` -/
def P6212710654403738368.Spec : Prop :=
  ∀ n, P6212710654403738368.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P257012488712704312

`A039968(A026178(n+1))`
-/

namespace A039971.P257012488712704312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039968 (A026178 (n + 1)).toNat

end

end A039971.P257012488712704312

namespace A039971

/-- `A039968(A026178(n+1))` -/
def P257012488712704312.Spec : Prop :=
  ∀ n, P257012488712704312.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P10128139369913458127

`A039968(A032766(n+1))`
-/

namespace A039971.P10128139369913458127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039968 (A032766 (n + 1)).toNat

end

end A039971.P10128139369913458127

namespace A039971

/-- `A039968(A032766(n+1))` -/
def P10128139369913458127.Spec : Prop :=
  ∀ n, P10128139369913458127.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P16695970387832675769

`A039968(A123684(n+1))`
-/

namespace A039971.P16695970387832675769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039968 (A123684 (n + 1)).toNat

end

end A039971.P16695970387832675769

namespace A039971

/-- `A039968(A123684(n+1))` -/
def P16695970387832675769.Spec : Prop :=
  ∀ n, P16695970387832675769.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P16134638827947356268

`A039968(A189665(n+1))`
-/

namespace A039971.P16134638827947356268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039968 (A189665 (n + 1)).toNat

end

end A039971.P16134638827947356268

namespace A039971

/-- `A039968(A189665(n+1))` -/
def P16134638827947356268.Spec : Prop :=
  ∀ n, P16134638827947356268.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P2490731213657733549

`A039968(∑[log2(A040003(n+1))])`
-/

namespace A039971.P2490731213657733549
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040003 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039968 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A039971.P2490731213657733549

namespace A039971

/-- `A039968(∑[log2(A040003(n+1))])` -/
def P2490731213657733549.Spec : Prop :=
  ∀ n, P2490731213657733549.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P8393369114498333301

`A039968(∑[A040003(n+1)/2])`
-/

namespace A039971.P8393369114498333301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040003 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039968 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A039971.P8393369114498333301

namespace A039971

/-- `A039968(∑[A040003(n+1)/2])` -/
def P8393369114498333301.Spec : Prop :=
  ∀ n, P8393369114498333301.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P16246785870326666601

`A001405(n)%3`
-/

namespace A039971.P16246785870326666601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 n) 3

end

end A039971.P16246785870326666601

namespace A039971

/-- `A001405(n)%3` -/
def P16246785870326666601.Spec : Prop :=
  ∀ n, P16246785870326666601.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P10172441586855667203

`A210736(n+1)%3`
-/

namespace A039971.P10172441586855667203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210736 (n + 1)) 3

end

end A039971.P10172441586855667203

namespace A039971

/-- `A210736(n+1)%3` -/
def P10172441586855667203.Spec : Prop :=
  ∀ n, P10172441586855667203.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P16178242179894002694

`(∏[2*or(1, n)/(n+1)]/2)%3`
-/

namespace A039971.P16178242179894002694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) / 2)) 3

end

end A039971.P16178242179894002694

namespace A039971

/-- `(∏[2*or(1, n)/(n+1)]/2)%3` -/
def P16178242179894002694.Spec : Prop :=
  ∀ n, P16178242179894002694.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P17043230197787942687

`A257546(n)%3`
-/

namespace A039971.P17043230197787942687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257546 n) 3

end

end A039971.P17043230197787942687

namespace A039971

/-- `A257546(n)%3` -/
def P17043230197787942687.Spec : Prop :=
  ∀ n, P17043230197787942687.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P2179664422256750571

`A047073(n+2)%3`
-/

namespace A039971.P2179664422256750571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047073 (n + 2)) 3

end

end A039971.P2179664422256750571

namespace A039971

/-- `A047073(n+2)%3` -/
def P2179664422256750571.Spec : Prop :=
  ∀ n, P2179664422256750571.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P10672812797824375222

`A026914(n)%3`
-/

namespace A039971.P10672812797824375222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026914 n) 3

end

end A039971.P10672812797824375222

namespace A039971

/-- `A026914(n)%3` -/
def P10672812797824375222.Spec : Prop :=
  ∀ n, P10672812797824375222.a n = A039971 (n + 1)

end A039971

/-! ## A039971.P5976637491634424018

`A039968(A261953(n+1))`
-/

namespace A039971.P5976637491634424018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039968 (A261953 (n + 1)).toNat

end

end A039971.P5976637491634424018

namespace A039971

/-- `A039968(A261953(n+1))` -/
def P5976637491634424018.Spec : Prop :=
  ∀ n, P5976637491634424018.a n = A039971 (n + 1)

end A039971

/-!
# A039972: An example of a d-perfect sequence: a(n) = A007317(n) mod 3.

The programs for A039972, the canonical program `A039972.P6001720559587628495` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039972 has offset 1).

The definition of A039972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039972.P6001720559587628495

`A006996(ceil(n/2))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039972

/-- `A006996(ceil(n/2))` -/
def P6001720559587628495.Spec : Prop :=
  ∀ n, P6001720559587628495.a n = A039972 (n + 1)

theorem P6001720559587628495.correct : P6001720559587628495.Spec := by
  intro n
  simp only [A039972, Nat.add_sub_cancel]

end A039972

/-! ## A039972.P8211907883219889962

`A039969(3*ceil(n/2))`
-/

namespace A039972.P8211907883219889962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 (3 * ⌈(n : ℚ) / 2⌉).toNat

end

end A039972.P8211907883219889962

namespace A039972

/-- `A039969(3*ceil(n/2))` -/
def P8211907883219889962.Spec : Prop :=
  ∀ n, P8211907883219889962.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P13638470053751405444

`A039970(A007310(n+1))`
-/

namespace A039972.P13638470053751405444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (A007310 (n + 1)).toNat

end

end A039972.P13638470053751405444

namespace A039972

/-- `A039970(A007310(n+1))` -/
def P13638470053751405444.Spec : Prop :=
  ∀ n, P13638470053751405444.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P3973191748952170637

`A039970(A047270(n+1))`
-/

namespace A039972.P3973191748952170637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (A047270 (n + 1)).toNat

end

end A039972.P3973191748952170637

namespace A039972

/-- `A039970(A047270(n+1))` -/
def P3973191748952170637.Spec : Prop :=
  ∀ n, P3973191748952170637.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P17055526981302064936

`A039970(A038179(n+2))`
-/

namespace A039972.P17055526981302064936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (A038179 (n + 2)).toNat

end

end A039972.P17055526981302064936

namespace A039972

/-- `A039970(A038179(n+2))` -/
def P17055526981302064936.Spec : Prop :=
  ∀ n, P17055526981302064936.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P14818589608723295675

`A039970(A047241(n+2))`
-/

namespace A039972.P14818589608723295675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (A047241 (n + 2)).toNat

end

end A039972.P14818589608723295675

namespace A039972

/-- `A039970(A047241(n+2))` -/
def P14818589608723295675.Spec : Prop :=
  ∀ n, P14818589608723295675.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P12381506359985107939

`A039971(or(1, n+1))`
-/

namespace A039972.P12381506359985107939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039971 (Nat.lor 1 (n + 1))

end

end A039972.P12381506359985107939

namespace A039972

/-- `A039971(or(1, n+1))` -/
def P12381506359985107939.Spec : Prop :=
  ∀ n, P12381506359985107939.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P12653704767227806918

`A039971(A040001(n+1)+n)`
-/

namespace A039972.P12653704767227806918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039971 (A040001 (n + 1) + (n : ℤ)).toNat

end

end A039972.P12653704767227806918

namespace A039972

/-- `A039971(A040001(n+1)+n)` -/
def P12653704767227806918.Spec : Prop :=
  ∀ n, P12653704767227806918.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P439444068259608442

`A166588(n)%3`
-/

namespace A039972.P439444068259608442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166588 n) 3

end

end A039972.P439444068259608442

namespace A039972

/-- `A166588(n)%3` -/
def P439444068259608442.Spec : Prop :=
  ∀ n, P439444068259608442.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P17774586466135310969

`A128014(n+1)%3`
-/

namespace A039972.P17774586466135310969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128014 (n + 1)) 3

end

end A039972.P17774586466135310969

namespace A039972

/-- `A128014(n+1)%3` -/
def P17774586466135310969.Spec : Prop :=
  ∀ n, P17774586466135310969.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P4393066907598048793

`A117186(n)%3`
-/

namespace A039972.P4393066907598048793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117186 n) 3

end

end A039972.P4393066907598048793

namespace A039972

/-- `A117186(n)%3` -/
def P4393066907598048793.Spec : Prop :=
  ∀ n, P4393066907598048793.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P1385238251914543083

`A054341(n)%3`
-/

namespace A039972.P1385238251914543083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054341 n) 3

end

end A039972.P1385238251914543083

namespace A039972

/-- `A054341(n)%3` -/
def P1385238251914543083.Spec : Prop :=
  ∀ n, P1385238251914543083.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P17290269219446721944

`A369982(n+1)%3`
-/

namespace A039972.P17290269219446721944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369982 (n + 1)) 3

end

end A039972.P17290269219446721944

namespace A039972

/-- `A369982(n+1)%3` -/
def P17290269219446721944.Spec : Prop :=
  ∀ n, P17290269219446721944.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P12256235092129449609

`A133443(n)%3`
-/

namespace A039972.P12256235092129449609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133443 n) 3

end

end A039972.P12256235092129449609

namespace A039972

/-- `A133443(n)%3` -/
def P12256235092129449609.Spec : Prop :=
  ∀ n, P12256235092129449609.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P4827958972788421478

`A060899(n)%3`
-/

namespace A039972.P4827958972788421478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060899 n) 3

end

end A039972.P4827958972788421478

namespace A039972

/-- `A060899(n)%3` -/
def P4827958972788421478.Spec : Prop :=
  ∀ n, P4827958972788421478.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P5110701716181907680

`A304940(n+1)%3`
-/

namespace A039972.P5110701716181907680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304940 (n + 1)) 3

end

end A039972.P5110701716181907680

namespace A039972

/-- `A304940(n+1)%3` -/
def P5110701716181907680.Spec : Prop :=
  ∀ n, P5110701716181907680.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P16533700129125631279

`A176754(n)%3`
-/

namespace A039972.P16533700129125631279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176754 n) 3

end

end A039972.P16533700129125631279

namespace A039972

/-- `A176754(n)%3` -/
def P16533700129125631279.Spec : Prop :=
  ∀ n, P16533700129125631279.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P18230919153733483121

`A007317(n+1)%3`
-/

namespace A039972.P18230919153733483121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007317 (n + 1)) 3

end

end A039972.P18230919153733483121

namespace A039972

/-- `A007317(n+1)%3` -/
def P18230919153733483121.Spec : Prop :=
  ∀ n, P18230919153733483121.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P429992710017709187

`A181768(n+1)%3`
-/

namespace A039972.P429992710017709187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181768 (n + 1)) 3

end

end A039972.P429992710017709187

namespace A039972

/-- `A181768(n+1)%3` -/
def P429992710017709187.Spec : Prop :=
  ∀ n, P429992710017709187.a n = A039972 (n + 1)

end A039972

/-! ## A039972.P5339166795861690511

`A055879(2*(n+1))%3`
-/

namespace A039972.P5339166795861690511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055879 (2 * (n + 1))) 3

end

end A039972.P5339166795861690511

namespace A039972

/-- `A055879(2*(n+1))%3` -/
def P5339166795861690511.Spec : Prop :=
  ∀ n, P5339166795861690511.a n = A039972 (n + 1)

end A039972

/-!
# A039973: An example of a d-perfect sequence: a(2*n) = 0, a(2*n-1) = A039965(n).

The programs for A039973, the canonical program `A039973.P9709266713566998332` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039973 has offset 1).

The definition of A039973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039973.P9002427176506476761

`(3-A039975(n+2))%3`
-/

namespace A039973.P9002427176506476761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - A039975 (n + 2)) 3

end

end A039973.P9002427176506476761

namespace A039973

/-- `(3-A039975(n+2))%3` -/
def P9002427176506476761.Spec : Prop :=
  ∀ n, P9002427176506476761.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P1544440633893342880

`A039975(a(A039975(n+2))+2)` with `a(0)=1`
-/

namespace A039973.P1544440633893342880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039975 (a (A039975 (n + 2)).toNat + 2).toNat

end

end A039973.P1544440633893342880

namespace A039973

/-- `A039975(a(A039975(n+2))+2)` -/
def P1544440633893342880.Spec : Prop :=
  ∀ n, P1544440633893342880.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P13899538974461784479

`A052938(A039975(n+2)+n)-A052938(n)`
-/

namespace A039973.P13899538974461784479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A039975 (n + 2) + (n : ℤ)).toNat - A052938 n

end

end A039973.P13899538974461784479

namespace A039973

/-- `A052938(A039975(n+2)+n)-A052938(n)` -/
def P13899538974461784479.Spec : Prop :=
  ∀ n, P13899538974461784479.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P14378556850246645236

`A038722(A039975(n+2)*A049077(n+1)+1)-1`
-/

namespace A039973.P14378556850246645236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A039975 (n + 2) * A049077 (n + 1) + 1).toNat - 1

end

end A039973.P14378556850246645236

namespace A039973

/-- `A038722(A039975(n+2)*A049077(n+1)+1)-1` -/
def P14378556850246645236.Spec : Prop :=
  ∀ n, P14378556850246645236.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P8036554671414058862

`A039975(A192969(gcd(n, n+1))-A039975(n+2)+1)`
-/

namespace A039973.P8036554671414058862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (A192969 (Nat.gcd n (n + 1)) - A039975 (n + 2) + 1).toNat

end

end A039973.P8036554671414058862

namespace A039973

/-- `A039975(A192969(gcd(n, n+1))-A039975(n+2)+1)` -/
def P8036554671414058862.Spec : Prop :=
  ∀ n, P8036554671414058862.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P9709266713566998332

`A025581(2-Δ[Δ[A316829(n)]])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039973

/-- `A025581(2-Δ[Δ[A316829(n)]])` -/
def P9709266713566998332.Spec : Prop :=
  ∀ n, P9709266713566998332.a n = A039973 (n + 1)

theorem P9709266713566998332.correct : P9709266713566998332.Spec := by
  intro n
  simp only [A039973, Nat.add_sub_cancel]

end A039973

/-! ## A039973.P17307111327321781515

`A039975(A085296(2*n+1)-A039975(n+2))`
-/

namespace A039973.P17307111327321781515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (A085296 (2 * n + 1) - A039975 (n + 2)).toNat

end

end A039973.P17307111327321781515

namespace A039973

/-- `A039975(A085296(2*n+1)-A039975(n+2))` -/
def P17307111327321781515.Spec : Prop :=
  ∀ n, P17307111327321781515.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P9688453039059084396

`A010872(A039975(n+2)*A294732(n+3))`
-/

namespace A039973.P9688453039059084396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A039975 (n + 2) * A294732 (n + 3)).toNat

end

end A039973.P9688453039059084396

namespace A039973

/-- `A010872(A039975(n+2)*A294732(n+3))` -/
def P9688453039059084396.Spec : Prop :=
  ∀ n, P9688453039059084396.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P12031259849833217624

`A039974(n+2)`
-/

namespace A039973.P12031259849833217624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039974 (n + 2)

end

end A039973.P12031259849833217624

namespace A039973

/-- `A039974(n+2)` -/
def P12031259849833217624.Spec : Prop :=
  ∀ n, P12031259849833217624.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P17010837218111281488

`A010872(A085296(n+1)-A039975(n+2))`
-/

namespace A039973.P17010837218111281488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A085296 (n + 1) - A039975 (n + 2)).toNat

end

end A039973.P17010837218111281488

namespace A039973

/-- `A010872(A085296(n+1)-A039975(n+2))` -/
def P17010837218111281488.Spec : Prop :=
  ∀ n, P17010837218111281488.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P6410304254123411619

`A004148(n+1)%gcd(3, n%2)`
-/

namespace A039973.P6410304254123411619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004148 (n + 1)) (Nat.gcd 3 (n % 2) : ℤ)

end

end A039973.P6410304254123411619

namespace A039973

/-- `A004148(n+1)%gcd(3, n%2)` -/
def P6410304254123411619.Spec : Prop :=
  ∀ n, P6410304254123411619.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P15231466398494644280

`A292460(n)%A112030(n)`
-/

namespace A039973.P15231466398494644280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292460 n) (A112030 n)

end

end A039973.P15231466398494644280

namespace A039973

/-- `A292460(n)%A112030(n)` -/
def P15231466398494644280.Spec : Prop :=
  ∀ n, P15231466398494644280.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P16495955789593471353

`A090413(n)%3`
-/

namespace A039973.P16495955789593471353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090413 n) 3

end

end A039973.P16495955789593471353

namespace A039973

/-- `A090413(n)%3` -/
def P16495955789593471353.Spec : Prop :=
  ∀ n, P16495955789593471353.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P13160537955482615103

`A126087(n+1)%3`
-/

namespace A039973.P13160537955482615103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126087 (n + 1)) 3

end

end A039973.P13160537955482615103

namespace A039973

/-- `A126087(n+1)%3` -/
def P13160537955482615103.Spec : Prop :=
  ∀ n, P13160537955482615103.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P14864947167285180462

`A159771(n+1)%A112030(n)`
-/

namespace A039973.P14864947167285180462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159771 (n + 1)) (A112030 n)

end

end A039973.P14864947167285180462

namespace A039973

/-- `A159771(n+1)%A112030(n)` -/
def P14864947167285180462.Spec : Prop :=
  ∀ n, P14864947167285180462.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P12151676579345519042

`A128387(n+1)%3`
-/

namespace A039973.P12151676579345519042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128387 (n + 1)) 3

end

end A039973.P12151676579345519042

namespace A039973

/-- `A128387(n+1)%3` -/
def P12151676579345519042.Spec : Prop :=
  ∀ n, P12151676579345519042.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P353072542529269043

`A290453(A182456(n+1))`
-/

namespace A039973.P353072542529269043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290453 (A182456 (n + 1)).toNat

end

end A039973.P353072542529269043

namespace A039973

/-- `A290453(A182456(n+1))` -/
def P353072542529269043.Spec : Prop :=
  ∀ n, P353072542529269043.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P2338965211347955055

`A114710(n)%3`
-/

namespace A039973.P2338965211347955055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114710 n) 3

end

end A039973.P2338965211347955055

namespace A039973

/-- `A114710(n)%3` -/
def P2338965211347955055.Spec : Prop :=
  ∀ n, P2338965211347955055.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P11766902702994287085

`A132375(n+1)%3`
-/

namespace A039973.P11766902702994287085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132375 (n + 1)) 3

end

end A039973.P11766902702994287085

namespace A039973

/-- `A132375(n+1)%3` -/
def P11766902702994287085.Spec : Prop :=
  ∀ n, P11766902702994287085.a n = A039973 (n + 1)

end A039973

/-! ## A039973.P5813058179564529039

`A001003(n+1)%3`
-/

namespace A039973.P5813058179564529039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001003 (n + 1)) 3

end

end A039973.P5813058179564529039

namespace A039973

/-- `A001003(n+1)%3` -/
def P5813058179564529039.Spec : Prop :=
  ∀ n, P5813058179564529039.a n = A039973 (n + 1)

end A039973

/-!
# A039974: An example of a d-perfect sequence.

The programs for A039974, the canonical program `A039974.P14858621183386826904` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039974 has offset 1).

The definition of A039974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039974.P14858621183386826904

`A039973(floor(sqrt(n²+1)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A039974

/-- `A039973(floor(sqrt(n²+1)))` -/
def P14858621183386826904.Spec : Prop :=
  ∀ n, P14858621183386826904.a n = A039974 (n + 1)

theorem P14858621183386826904.correct : P14858621183386826904.Spec := by
  intro n
  simp only [A039974, Nat.add_sub_cancel]

end A039974

/-! ## A039974.P16985018707275409298

`a(a(n-1))*A039973(n)` with `a(0)=1, a(1)=1`
-/

namespace A039974.P16985018707275409298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a (n - 1)).toNat * A039973 n

end

end A039974.P16985018707275409298

namespace A039974

/-- `a(a(n-1))*A039973(n)` -/
def P16985018707275409298.Spec : Prop :=
  ∀ n, P16985018707275409298.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P10891012460298997408

`A039973(A028310(n))%3`
-/

namespace A039974.P10891012460298997408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039973 (A028310 n).toNat) 3

end

end A039974.P10891012460298997408

namespace A039974

/-- `A039973(A028310(n))%3` -/
def P10891012460298997408.Spec : Prop :=
  ∀ n, P10891012460298997408.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P18241773166802313145

`A039973(A028310(n))*A039982(n)`
-/

namespace A039974.P18241773166802313145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (A028310 n).toNat * A039982 n

end

end A039974.P18241773166802313145

namespace A039974

/-- `A039973(A028310(n))*A039982(n)` -/
def P18241773166802313145.Spec : Prop :=
  ∀ n, P18241773166802313145.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P317466874006149661

`A039973(A028310(n))/A039964(n)!`
-/

namespace A039974.P317466874006149661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039973 (A028310 n).toNat : ℚ) / (Nat.factorial (A039964 n).toNat : ℚ)

end

end A039974.P317466874006149661

namespace A039974

/-- `A039973(A028310(n))/A039964(n)!` -/
def P317466874006149661.Spec : Prop :=
  ∀ n, P317466874006149661.a n = (A039974 (n + 1) : ℚ)

end A039974

/-! ## A039974.P2882074115689116637

`and(A004273(n+1), A039973(A028310(n)))`
-/

namespace A039974.P2882074115689116637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (n + 1)) (A039973 (A028310 n).toNat)

end

end A039974.P2882074115689116637

namespace A039974

/-- `and(A004273(n+1), A039973(A028310(n)))` -/
def P2882074115689116637.Spec : Prop :=
  ∀ n, P2882074115689116637.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P10492590803131060961

`and(A039973(A028310(n)), A158640(n+1))`
-/

namespace A039974.P10492590803131060961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039973 (A028310 n).toNat) (A158640 (n + 1))

end

end A039974.P10492590803131060961

namespace A039974

/-- `and(A039973(A028310(n)), A158640(n+1))` -/
def P10492590803131060961.Spec : Prop :=
  ∀ n, P10492590803131060961.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P12194900032222576610

`A039973(A028310(n))/A039973(n+1)!`
-/

namespace A039974.P12194900032222576610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039973 (A028310 n).toNat : ℚ) / (Nat.factorial (A039973 (n + 1)).toNat : ℚ)

end

end A039974.P12194900032222576610

namespace A039974

/-- `A039973(A028310(n))/A039973(n+1)!` -/
def P12194900032222576610.Spec : Prop :=
  ∀ n, P12194900032222576610.a n = (A039974 (n + 1) : ℚ)

end A039974

/-! ## A039974.P13687856686123263603

`A039973(2*(n+1))+A039973(A257088(n))`
-/

namespace A039974.P13687856686123263603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (2 * (n + 1)) + A039973 (A257088 n).toNat

end

end A039974.P13687856686123263603

namespace A039974

/-- `A039973(2*(n+1))+A039973(A257088(n))` -/
def P13687856686123263603.Spec : Prop :=
  ∀ n, P13687856686123263603.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P7758183728377012573

`A010872(A039975(n+1)*A294732(n+2))`
-/

namespace A039974.P7758183728377012573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A039975 (n + 1) * A294732 (n + 2)).toNat

end

end A039974.P7758183728377012573

namespace A039974

/-- `A010872(A039975(n+1)*A294732(n+2))` -/
def P7758183728377012573.Spec : Prop :=
  ∀ n, P7758183728377012573.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P3789423437042033693

`A126087(n)%3`
-/

namespace A039974.P3789423437042033693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126087 n) 3

end

end A039974.P3789423437042033693

namespace A039974

/-- `A126087(n)%3` -/
def P3789423437042033693.Spec : Prop :=
  ∀ n, P3789423437042033693.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P13172845251499690154

`A159771(n+1)%A010693(n)`
-/

namespace A039974.P13172845251499690154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159771 (n + 1)) (A010693 n)

end

end A039974.P13172845251499690154

namespace A039974

/-- `A159771(n+1)%A010693(n)` -/
def P13172845251499690154.Spec : Prop :=
  ∀ n, P13172845251499690154.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P1256313440869610695

`A039973(A028310(n))+A039966(A191195(n+1)+1)`
-/

namespace A039974.P1256313440869610695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (A028310 n).toNat + A039966 (A191195 (n + 1) + 1).toNat

end

end A039974.P1256313440869610695

namespace A039974

/-- `A039973(A028310(n))+A039966(A191195(n+1)+1)` -/
def P1256313440869610695.Spec : Prop :=
  ∀ n, P1256313440869610695.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P9847633885392874850

`A128387(n)%3`
-/

namespace A039974.P9847633885392874850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128387 n) 3

end

end A039974.P9847633885392874850

namespace A039974

/-- `A128387(n)%3` -/
def P9847633885392874850.Spec : Prop :=
  ∀ n, P9847633885392874850.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P5577154042282360765

`A290453(A182456(n))`
-/

namespace A039974.P5577154042282360765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290453 (A182456 n).toNat

end

end A039974.P5577154042282360765

namespace A039974

/-- `A290453(A182456(n))` -/
def P5577154042282360765.Spec : Prop :=
  ∀ n, P5577154042282360765.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P15302689996176787031

`A132375(n)%3`
-/

namespace A039974.P15302689996176787031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132375 n) 3

end

end A039974.P15302689996176787031

namespace A039974

/-- `A132375(n)%3` -/
def P15302689996176787031.Spec : Prop :=
  ∀ n, P15302689996176787031.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P7260999399977723541

`A001003(n)%3`
-/

namespace A039974.P7260999399977723541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001003 n) 3

end

end A039974.P7260999399977723541

namespace A039974

/-- `A001003(n)%3` -/
def P7260999399977723541.Spec : Prop :=
  ∀ n, P7260999399977723541.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P4413178335971229524

`A089387(n)%A010693(n)`
-/

namespace A039974.P4413178335971229524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089387 n) (A010693 n)

end

end A039974.P4413178335971229524

namespace A039974

/-- `A089387(n)%A010693(n)` -/
def P4413178335971229524.Spec : Prop :=
  ∀ n, P4413178335971229524.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P6605710822771642973

`ceil(A006318(n)/2)%3`
-/

namespace A039974.P6605710822771642973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A006318 n : ℚ) / 2⌉ 3

end

end A039974.P6605710822771642973

namespace A039974

/-- `ceil(A006318(n)/2)%3` -/
def P6605710822771642973.Spec : Prop :=
  ∀ n, P6605710822771642973.a n = A039974 (n + 1)

end A039974

/-! ## A039974.P13293353901465841614

`(A155069(n+1)/A020639(A025487(n+1)))%3`
-/

namespace A039974.P13293353901465841614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A155069 (n + 1) : ℚ) / (A020639 (A025487 (n + 1)).toNat : ℚ))) 3

end

end A039974.P13293353901465841614

namespace A039974

/-- `(A155069(n+1)/A020639(A025487(n+1)))%3` -/
def P13293353901465841614.Spec : Prop :=
  ∀ n, P13293353901465841614.a n = A039974 (n + 1)

end A039974

/-!
# A039975: An example of a d-perfect sequence: a(n) = A006318(n-1) mod 3.

The programs for A039975, the canonical program `A039975.P14961801530530894059` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039975 has offset 1).

The definition of A039975 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A039975.P14961801530530894059

`A006318(n)%3`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A039975

/-- `A006318(n)%3` -/
def P14961801530530894059.Spec : Prop :=
  ∀ n, P14961801530530894059.a n = A039975 (n + 1)

theorem P14961801530530894059.correct : P14961801530530894059.Spec := by
  intro n
  simp only [A039975, Nat.add_sub_cancel]

end A039975

/-! ## A039975.P2985446965125101428

`A039973(a(A039973(n))+1)` with `a(0)=1, a(1)=2`
-/

namespace A039975.P2985446965125101428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A039973 (a (A039973 n).toNat + 1).toNat

end

end A039975.P2985446965125101428

namespace A039975

/-- `A039973(a(A039973(n))+1)` -/
def P2985446965125101428.Spec : Prop :=
  ∀ n, P2985446965125101428.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P1656441232536766347

`2-A033743(a(A039973(n)))` with `a(0)=1, a(1)=2`
-/

namespace A039975.P1656441232536766347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - A033743 (a (A039973 n).toNat).toNat

end

end A039975.P1656441232536766347

namespace A039975

/-- `2-A033743(a(A039973(n)))` -/
def P1656441232536766347.Spec : Prop :=
  ∀ n, P1656441232536766347.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P7340089136769614498

`A088917(n+1)+char[(n+1)*A088917(n)]`
-/

namespace A039975.P7340089136769614498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088917 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A039975.P7340089136769614498

namespace A039975

/-- `A088917(n+1)+char[(n+1)*A088917(n)]` -/
def P7340089136769614498.Spec : Prop :=
  ∀ n, P7340089136769614498.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P12349448133642779566

`Δ[A061392(A004442(A008486(n)))]`
-/

namespace A039975.P12349448133642779566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A004442 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039975.P12349448133642779566

namespace A039975

/-- `Δ[A061392(A004442(A008486(n)))]` -/
def P12349448133642779566.Spec : Prop :=
  ∀ n, P12349448133642779566.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P666799950851775487

`(A105523(n)%3+3)%3`
-/

namespace A039975.P666799950851775487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A105523 n) 3 + 3) 3

end

end A039975.P666799950851775487

namespace A039975

/-- `(A105523(n)%3+3)%3` -/
def P666799950851775487.Spec : Prop :=
  ∀ n, P666799950851775487.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P1098269567862967463

`A103973(n)%A010693(n)`
-/

namespace A039975.P1098269567862967463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103973 n) (A010693 n)

end

end A039975.P1098269567862967463

namespace A039975

/-- `A103973(n)%A010693(n)` -/
def P1098269567862967463.Spec : Prop :=
  ∀ n, P1098269567862967463.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P1498975035831688172

`A151281(n)%3`
-/

namespace A039975.P1498975035831688172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151281 n) 3

end

end A039975.P1498975035831688172

namespace A039975

/-- `A151281(n)%3` -/
def P1498975035831688172.Spec : Prop :=
  ∀ n, P1498975035831688172.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P9890732171193929453

`A200376(n+1)%3`
-/

namespace A039975.P9890732171193929453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200376 (n + 1)) 3

end

end A039975.P9890732171193929453

namespace A039975

/-- `A200376(n+1)%3` -/
def P9890732171193929453.Spec : Prop :=
  ∀ n, P9890732171193929453.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P10897244857022879190

`A156909(n+2)%3`
-/

namespace A039975.P10897244857022879190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156909 (n + 2)) 3

end

end A039975.P10897244857022879190

namespace A039975

/-- `A156909(n+2)%3` -/
def P10897244857022879190.Spec : Prop :=
  ∀ n, P10897244857022879190.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P3693993971554814185

`A187256(n)%A010693(n)`
-/

namespace A039975.P3693993971554814185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187256 n) (A010693 n)

end

end A039975.P3693993971554814185

namespace A039975

/-- `A187256(n)%A010693(n)` -/
def P3693993971554814185.Spec : Prop :=
  ∀ n, P3693993971554814185.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P1964912864070026284

`A372531(n+2)%3`
-/

namespace A039975.P1964912864070026284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372531 (n + 2)) 3

end

end A039975.P1964912864070026284

namespace A039975

/-- `A372531(n+2)%3` -/
def P1964912864070026284.Spec : Prop :=
  ∀ n, P1964912864070026284.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P9452351381966179072

`A171190(n)%3`
-/

namespace A039975.P9452351381966179072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171190 n) 3

end

end A039975.P9452351381966179072

namespace A039975

/-- `A171190(n)%3` -/
def P9452351381966179072.Spec : Prop :=
  ∀ n, P9452351381966179072.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P12211606910522925771

`∑[A006319(n)]%3`
-/

namespace A039975.P12211606910522925771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A039975.P12211606910522925771

namespace A039975

/-- `∑[A006319(n)]%3` -/
def P12211606910522925771.Spec : Prop :=
  ∀ n, P12211606910522925771.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P8224286508380555722

`A155069(n+1)%3`
-/

namespace A039975.P8224286508380555722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155069 (n + 1)) 3

end

end A039975.P8224286508380555722

namespace A039975

/-- `A155069(n+1)%3` -/
def P8224286508380555722.Spec : Prop :=
  ∀ n, P8224286508380555722.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P2514011907247014751

`A134425(n)%3`
-/

namespace A039975.P2514011907247014751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134425 n) 3

end

end A039975.P2514011907247014751

namespace A039975

/-- `A134425(n)%3` -/
def P2514011907247014751.Spec : Prop :=
  ∀ n, P2514011907247014751.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P14431365443920606107

`A156195(n)%3`
-/

namespace A039975.P14431365443920606107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156195 n) 3

end

end A039975.P14431365443920606107

namespace A039975

/-- `A156195(n)%3` -/
def P14431365443920606107.Spec : Prop :=
  ∀ n, P14431365443920606107.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P9135082138980644132

`A321574(n+1)%3`
-/

namespace A039975.P9135082138980644132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321574 (n + 1)) 3

end

end A039975.P9135082138980644132

namespace A039975

/-- `A321574(n+1)%3` -/
def P9135082138980644132.Spec : Prop :=
  ∀ n, P9135082138980644132.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P4746113652401737007

`A394146(n+1)%3`
-/

namespace A039975.P4746113652401737007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394146 (n + 1)) 3

end

end A039975.P4746113652401737007

namespace A039975

/-- `A394146(n+1)%3` -/
def P4746113652401737007.Spec : Prop :=
  ∀ n, P4746113652401737007.a n = A039975 (n + 1)

end A039975

/-! ## A039975.P5998428332982414337

`A156566(n)%3`
-/

namespace A039975.P5998428332982414337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156566 n) 3

end

end A039975.P5998428332982414337

namespace A039975

/-- `A156566(n)%3` -/
def P5998428332982414337.Spec : Prop :=
  ∀ n, P5998428332982414337.a n = A039975 (n + 1)

end A039975

/-!
# A039976: An example of a d-perfect sequence.

The programs for A039976, there is no canonical definition to state claims against.
-/

/-! ## A039976.P2477172183194807396

`(A000034(n)*A039979(n+1))%3`
-/

namespace A039976.P2477172183194807396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000034 n * A039979 (n + 1)) 3

end

end A039976.P2477172183194807396

/-! ## A039976.P2879649538645214524

`(A003278(n+1)*A039979(n+1))%3`
-/

namespace A039976.P2879649538645214524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003278 (n + 1) * A039979 (n + 1)) 3

end

end A039976.P2879649538645214524

/-! ## A039976.P672758722298760213

`((A032528(n)+1)*A039979(n+1))%3`
-/

namespace A039976.P672758722298760213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A032528 n + 1) * A039979 (n + 1)) 3

end

end A039976.P672758722298760213

/-! ## A039976.P8384970592039927541

`(Δ[A039977(n+1)]-2)%3+2`
-/

namespace A039976.P8384970592039927541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - 2) 3 + 2

end

end A039976.P8384970592039927541

/-! ## A039976.P7953985207988377367

`A003611(n+1)%3`
-/

namespace A039976.P7953985207988377367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003611 (n + 1)) 3

end

end A039976.P7953985207988377367

/-! ## A039976.P16845841526882088215

`A025235(n)%3`
-/

namespace A039976.P16845841526882088215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025235 n) 3

end

end A039976.P16845841526882088215

/-! ## A039976.P7747608480364986584

`(A014431(n+2)/2)%3`
-/

namespace A039976.P7747608480364986584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A014431 (n + 2) : ℚ) / 2)) 3

end

end A039976.P7747608480364986584

/-! ## A039976.P11981258176114799543

`Δ[A151282(n)]%3`
-/

namespace A039976.P11981258176114799543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A039976.P11981258176114799543

/-! ## A039976.P9379087313766026032

`A162162(n)%3`
-/

namespace A039976.P9379087313766026032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162162 n) 3

end

end A039976.P9379087313766026032

/-! ## A039976.P15324084877235034982

`A091148(n)%3`
-/

namespace A039976.P15324084877235034982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091148 n) 3

end

end A039976.P15324084877235034982

/-! ## A039976.P14754146696443678185

`A068764(n+1)%3`
-/

namespace A039976.P14754146696443678185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068764 (n + 1)) 3

end

end A039976.P14754146696443678185

/-! ## A039976.P16816364588728333405

`Δ[A118376(n+1)]%3`
-/

namespace A039976.P16816364588728333405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A039976.P16816364588728333405

/-!
# A039977: An example of a d-perfect sequence.

The programs for A039977, there is no canonical definition to state claims against.
-/

/-! ## A039977.P1941519743551825124

`2-A039978(n+1)`
-/

namespace A039977.P1941519743551825124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039978 (n + 1)

end

end A039977.P1941519743551825124

/-! ## A039977.P12462445804342658127

`A008683(A328579(n))*A039978(n+1)+2`
-/

namespace A039977.P12462445804342658127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A328579 n).toNat * A039978 (n + 1) + 2

end

end A039977.P12462445804342658127

/-! ## A039977.P8399016105244780434

`A271224(A007318(C(2, n))*A039978(n+1))`
-/

namespace A039977.P8399016105244780434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271224 (A007318 (Nat.choose 2 n) * A039978 (n + 1)).toNat

end

end A039977.P8399016105244780434

/-! ## A039977.P472146266354848876

`A271224(A039978(n+1)^A007318(C(2, n)))`
-/

namespace A039977.P472146266354848876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271224 (SequenceMachineLib.roundAway ((A039978 (n + 1) : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ))).toNat

end

end A039977.P472146266354848876

/-! ## A039977.P1181866705912641324

`A271224(lcm(A007318(C(2, n)), A039978(n+1)))`
-/

namespace A039977.P1181866705912641324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271224 (Int.lcm (A007318 (Nat.choose 2 n)) (A039978 (n + 1)))

end

end A039977.P1181866705912641324

/-! ## A039977.P15878998486528098042

`2-A010872(A032924(n+1)*A039980(n+1))`
-/

namespace A039977.P15878998486528098042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010872 (A032924 (n + 1) * A039980 (n + 1)).toNat

end

end A039977.P15878998486528098042

/-! ## A039977.P9094689088833932150

`2-∑[A014431(n+1)]%3`
-/

namespace A039977.P9094689088833932150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A039977.P9094689088833932150

/-! ## A039977.P17825890085154730968

`A151282(n)%3`
-/

namespace A039977.P17825890085154730968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151282 n) 3

end

end A039977.P17825890085154730968

/-! ## A039977.P5730243295437797270

`2-A129637(n)%3`
-/

namespace A039977.P5730243295437797270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A129637 n) 3

end

end A039977.P5730243295437797270

/-! ## A039977.P632135981008562512

`∑[A068764(n)]%3`
-/

namespace A039977.P632135981008562512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A039977.P632135981008562512

/-! ## A039977.P16754543272461656669

`A118376(n+1)%3`
-/

namespace A039977.P16754543272461656669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118376 (n + 1)) 3

end

end A039977.P16754543272461656669

/-!
# A039978: An example of a d-perfect sequence.

The programs for A039978, there is no canonical definition to state claims against.
-/

/-! ## A039978.P2961180064247709330

`2-A039977(n+1)`
-/

namespace A039978.P2961180064247709330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039977 (n + 1)

end

end A039978.P2961180064247709330

/-! ## A039978.P15191874105981510632

`A039977(a(A039977(n+1))+1)` with `a(0)=1, a(1)=0`
-/

namespace A039978.P15191874105981510632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A039977 (a (A039977 (n + 1)).toNat + 1).toNat

end

end A039978.P15191874105981510632

/-! ## A039978.P8815633572224277148

`abs(A292140(gcd(n, n+1))+A039977(n+1))`
-/

namespace A039978.P8815633572224277148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292140 (Nat.gcd n (n + 1)) + A039977 (n + 1)|

end

end A039978.P8815633572224277148

/-! ## A039978.P18441761953857949828

`A010872(A032924(n+1)*A039980(n+1))`
-/

namespace A039978.P18441761953857949828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A032924 (n + 1) * A039980 (n + 1)).toNat

end

end A039978.P18441761953857949828

/-! ## A039978.P6628692465911720436

`(A108623(n+1)%3+3)%3`
-/

namespace A039978.P6628692465911720436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A108623 (n + 1)) 3 + 3) 3

end

end A039978.P6628692465911720436

/-! ## A039978.P2322068126406815391

`∑[A014431(n+1)]%3`
-/

namespace A039978.P2322068126406815391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A039978.P2322068126406815391

/-! ## A039978.P13534170493080266203

`2-A151282(n)%3`
-/

namespace A039978.P13534170493080266203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A151282 n) 3

end

end A039978.P13534170493080266203

/-! ## A039978.P5834296141527335162

`A129637(n)%3`
-/

namespace A039978.P5834296141527335162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129637 n) 3

end

end A039978.P5834296141527335162

/-! ## A039978.P9167403409414947961

`A174347(n)%3`
-/

namespace A039978.P9167403409414947961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174347 n) 3

end

end A039978.P9167403409414947961

/-! ## A039978.P2076036000563240650

`∑[A166229(n)]%3`
-/

namespace A039978.P2076036000563240650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A039978.P2076036000563240650

/-! ## A039978.P12527845619358273078

`2-A118376(n+1)%3`
-/

namespace A039978.P12527845619358273078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A118376 (n + 1)) 3

end

end A039978.P12527845619358273078

/-!
# A039979: An example of a d-perfect sequence.

The programs for A039979, there is no canonical definition to state claims against.
-/

/-! ## A039979.P10776228442353838136

`(A039980(n+2)+A039980(n+1))%3`
-/

namespace A039979.P10776228442353838136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039980 (n + 2) + A039980 (n + 1)) 3

end

end A039979.P10776228442353838136

/-! ## A039979.P16847870159289656702

`(gcd(2, n)*A014431(n+2))%3`
-/

namespace A039979.P16847870159289656702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.gcd 2 n : ℤ) * A014431 (n + 2)) 3

end

end A039979.P16847870159289656702

/-! ## A039979.P11406484142540596495

`A071356(n)%3`
-/

namespace A039979.P11406484142540596495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071356 n) 3

end

end A039979.P11406484142540596495

/-! ## A039979.P7412318605613025912

`A110681(∑[n])%3`
-/

namespace A039979.P7412318605613025912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110681 (∑ j ∈ Finset.range (n + 1), f1 j)) 3

end

end A039979.P7412318605613025912

/-! ## A039979.P13348983669293611451

`A179190(n+2)%3`
-/

namespace A039979.P13348983669293611451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179190 (n + 2)) 3

end

end A039979.P13348983669293611451

/-! ## A039979.P985300656318652220

`A249925(n)%3`
-/

namespace A039979.P985300656318652220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249925 n) 3

end

end A039979.P985300656318652220

/-! ## A039979.P10792202999897276618

`A107265(n)%3`
-/

namespace A039979.P10792202999897276618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107265 n) 3

end

end A039979.P10792202999897276618

/-! ## A039979.P9740318827285698120

`(2^n*A088368(n))%3`
-/

namespace A039979.P9740318827285698120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ n : ℤ) * A088368 n) 3

end

end A039979.P9740318827285698120

/-! ## A039979.P10739270438385253163

`A301833(n)%3`
-/

namespace A039979.P10739270438385253163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301833 n) 3

end

end A039979.P10739270438385253163

/-!
# A039980: An example of a d-perfect sequence.

The programs for A039980, there is no canonical definition to state claims against.
-/

/-! ## A039980.P16085803295575004105

`(A000034(n)*A039978(n+1))%3`
-/

namespace A039980.P16085803295575004105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000034 n * A039978 (n + 1)) 3

end

end A039980.P16085803295575004105

/-! ## A039980.P16277679728071931552

`(A000079(n)*A039978(n+1))%3`
-/

namespace A039980.P16277679728071931552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n * A039978 (n + 1)) 3

end

end A039980.P16277679728071931552

/-! ## A039980.P14694398864855643384

`A010872(A007310(n+1)*A039978(n+1))`
-/

namespace A039980.P14694398864855643384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A007310 (n + 1) * A039978 (n + 1)).toNat

end

end A039980.P14694398864855643384

/-! ## A039980.P7218345578363598620

`A010872(A032924(n+1)*A039978(n+1))`
-/

namespace A039980.P7218345578363598620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A032924 (n + 1) * A039978 (n + 1)).toNat

end

end A039980.P7218345578363598620

/-! ## A039980.P11674092721061462842

`A010872((2-A039977(n+1))*A007310(n+1))`
-/

namespace A039980.P11674092721061462842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((2 - A039977 (n + 1)) * A007310 (n + 1)).toNat

end

end A039980.P11674092721061462842

/-! ## A039980.P7211143210843976717

`A010872((2-A039977(n+1))*A032924(n+1))`
-/

namespace A039980.P7211143210843976717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((2 - A039977 (n + 1)) * A032924 (n + 1)).toNat

end

end A039980.P7211143210843976717

/-! ## A039980.P7005579542530697110

`A010872(lcm(2-A039977(n+1), A007310(n+1)))`
-/

namespace A039980.P7005579542530697110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Int.lcm (2 - A039977 (n + 1)) (A007310 (n + 1)))

end

end A039980.P7005579542530697110

/-! ## A039980.P14976833387240369733

`A306519(n)%3`
-/

namespace A039980.P14976833387240369733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306519 n) 3

end

end A039980.P14976833387240369733

/-! ## A039980.P2719027130571866948

`A010872(∑{digits}[A306519(n), #])`
-/

namespace A039980.P2719027130571866948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A039980.P2719027130571866948

/-! ## A039980.P17299421369442420181

`A166076(n)%3`
-/

namespace A039980.P17299421369442420181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166076 n) 3

end

end A039980.P17299421369442420181

/-!
# A039981: An example of a d-perfect sequence.

The programs for A039981, there is no canonical definition to state claims against.
-/

/-! ## A039981.P16422279445102662650

`(A001651(n+1)*A039977(n+1))%3`
-/

namespace A039981.P16422279445102662650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001651 (n + 1) * A039977 (n + 1)) 3

end

end A039981.P16422279445102662650

/-! ## A039981.P9089552152684802876

`(A007310(n+1)*A039977(n+1))%3`
-/

namespace A039981.P9089552152684802876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007310 (n + 1) * A039977 (n + 1)) 3

end

end A039981.P9089552152684802876

/-! ## A039981.P1200272318434664959

`A010872(A007310(n+1)*A039977(n+1))`
-/

namespace A039981.P1200272318434664959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A007310 (n + 1) * A039977 (n + 1)).toNat

end

end A039981.P1200272318434664959

/-! ## A039981.P8944921455212775448

`A010872(lcm(A007310(n+1), A039977(n+1)))`
-/

namespace A039981.P8944921455212775448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Int.lcm (A007310 (n + 1)) (A039977 (n + 1)))

end

end A039981.P8944921455212775448

/-! ## A039981.P10248505521620735348

`A010872((2-A039978(n+1))*A007310(n+1))`
-/

namespace A039981.P10248505521620735348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((2 - A039978 (n + 1)) * A007310 (n + 1)).toNat

end

end A039981.P10248505521620735348

/-! ## A039981.P13380325550159573168

`A010872(A032924(n+1)*A039977(n+1))`
-/

namespace A039981.P13380325550159573168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A032924 (n + 1) * A039977 (n + 1)).toNat

end

end A039981.P13380325550159573168

/-! ## A039981.P999499741826472596

`A010872((2-A039978(n+1))*A032924(n+1))`
-/

namespace A039981.P999499741826472596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((2 - A039978 (n + 1)) * A032924 (n + 1)).toNat

end

end A039981.P999499741826472596

/-! ## A039981.P8214818380788566953

`A010872(2*(A039980(n+1)+A032924(n+1)))`
-/

namespace A039981.P8214818380788566953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * (A039980 (n + 1) + A032924 (n + 1))).toNat

end

end A039981.P8214818380788566953

/-! ## A039981.P1178513969083045538

`A010872(A032924(n+1)+A032924(n+1)-A039980(n+1))`
-/

namespace A039981.P1178513969083045538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A032924 (n + 1) + (A032924 (n + 1) - A039980 (n + 1))).toNat

end

end A039981.P1178513969083045538

/-! ## A039981.P16034491406109922374

`A052709(n+1)%3`
-/

namespace A039981.P16034491406109922374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052709 (n + 1)) 3

end

end A039981.P16034491406109922374

/-! ## A039981.P12459612937054578191

`∑[A190733(n)]%3`
-/

namespace A039981.P12459612937054578191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A039981.P12459612937054578191

/-! ## A039981.P15753331570834061449

`A071943(A000096(n))%3`
-/

namespace A039981.P15753331570834061449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071943 (A000096 n).toNat) 3

end

end A039981.P15753331570834061449

/-! ## A039981.P5935246741392155346

`A108916(∑[n])%3`
-/

namespace A039981.P5935246741392155346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108916 (∑ j ∈ Finset.range (n + 1), f1 j)) 3

end

end A039981.P5935246741392155346

/-! ## A039981.P3767486667674861136

`A151251(n)%3`
-/

namespace A039981.P3767486667674861136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151251 n) 3

end

end A039981.P3767486667674861136

/-!
# A039982: Let phi denote the morphism 0 -> 11, 1 -> 10. This sequence is the limit S(oo) where S(0) = 1; S(n+1) = 1.phi(S(n)).

The programs for A039982, the canonical program `A039982.P3162502639953544015` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039982 has offset 0).

The definition of A039982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039982.P14580267679488606579

`A090344(n)%2`
-/

namespace A039982.P14580267679488606579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090344 n) 2

end

end A039982.P14580267679488606579

namespace A039982

/-- `A090344(n)%2` -/
def P14580267679488606579.Spec : Prop :=
  ∀ n, P14580267679488606579.a n = A039982 n

end A039982

/-! ## A039982.P3162502639953544015

`Δ[n-a(floor((n-1)/2))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A039982

/-- `Δ[n-a(floor((n-1)/2))]` -/
def P3162502639953544015.Spec : Prop :=
  ∀ n, P3162502639953544015.a n = A039982 n

theorem P3162502639953544015.correct : P3162502639953544015.Spec := by
  intro n
  simp only [A039982]

end A039982

/-! ## A039982.P9092129059450525298

`abs(Δ[2/a(lcm(2, 1-n)/2)])` with `a(0)=1`
-/

namespace A039982.P9092129059450525298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (SequenceMachineLib.roundAway ((Int.lcm 2 (1 - (n : ℤ)) : ℚ) / 2)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A039982.P9092129059450525298

namespace A039982

/-- `abs(Δ[2/a(lcm(2, 1-n)/2)])` -/
def P9092129059450525298.Spec : Prop :=
  ∀ n, P9092129059450525298.a n = (A039982 n : ℚ)

end A039982

/-! ## A039982.P9711216789798401421

`(xor(n+1, n+2)%(n+2))%3`
-/

namespace A039982.P9711216789798401421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (n + 2) % (n + 2) % 3

end

end A039982.P9711216789798401421

namespace A039982

/-- `(xor(n+1, n+2)%(n+2))%3` -/
def P9711216789798401421.Spec : Prop :=
  ∀ n, (P9711216789798401421.a n : ℤ) = A039982 n

end A039982

/-! ## A039982.P5350181442224726305

`C(n, a(gcd(n, ∑[n])-1)%n)%2` with `a(0)=1`
-/

namespace A039982.P5350181442224726305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose n (a (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) - 1) % n) % 2

end

end A039982.P5350181442224726305

namespace A039982

/-- `C(n, a(gcd(n, ∑[n])-1)%n)%2` -/
def P5350181442224726305.Spec : Prop :=
  ∀ n, (P5350181442224726305.a n : ℤ) = A039982 n

end A039982

/-! ## A039982.P14046826178425498198

`1-a(floor(n/(a(n-1)+1))-1)` with `a(0)=1, a(1)=1`
-/

namespace A039982.P14046826178425498198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (⌊(n : ℚ) / (a (n - 1) + 1 : ℚ)⌋ - 1).toNat

end

end A039982.P14046826178425498198

namespace A039982

/-- `1-a(floor(n/(a(n-1)+1))-1)` -/
def P14046826178425498198.Spec : Prop :=
  ∀ n, P14046826178425498198.a n = A039982 n

end A039982

/-! ## A039982.P2437526705332730686

`1-a(n-1)*a(floor(n/2)-1)` with `a(0)=1, a(1)=1`
-/

namespace A039982.P2437526705332730686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (n - 1) * a (⌊(n : ℚ) / 2⌋ - 1).toNat

end

end A039982.P2437526705332730686

namespace A039982

/-- `1-a(n-1)*a(floor(n/2)-1)` -/
def P2437526705332730686.Spec : Prop :=
  ∀ n, P2437526705332730686.a n = A039982 n

end A039982

/-! ## A039982.P6025519716224525971

`2-a(n-1)-a(floor(n/2)-1)` with `a(0)=1, a(1)=1`
-/

namespace A039982.P6025519716224525971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - a (n - 1) - a (⌊(n : ℚ) / 2⌋ - 1).toNat

end

end A039982.P6025519716224525971

namespace A039982

/-- `2-a(n-1)-a(floor(n/2)-1)` -/
def P6025519716224525971.Spec : Prop :=
  ∀ n, P6025519716224525971.a n = A039982 n

end A039982

/-! ## A039982.P1783391887843634456

`abs(a(n-1)-a(n-∑[1-a(n-1)]))` with `a(0)=1, a(1)=1`
-/

namespace A039982.P1783391887843634456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |a (n - 1) - a ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A039982.P1783391887843634456

namespace A039982

/-- `abs(a(n-1)-a(n-∑[1-a(n-1)]))` -/
def P1783391887843634456.Spec : Prop :=
  ∀ n, P1783391887843634456.a n = A039982 n

end A039982

/-! ## A039982.P14142186985004015871

`(a(n-1)-a(n-∑[1-a(n-1)]))²` with `a(0)=1, a(1)=1`
-/

namespace A039982.P14142186985004015871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - a ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat) ^ 2

end

end A039982.P14142186985004015871

namespace A039982

/-- `(a(n-1)-a(n-∑[1-a(n-1)]))²` -/
def P14142186985004015871.Spec : Prop :=
  ∀ n, P14142186985004015871.a n = A039982 n

end A039982

/-! ## A039982.P6585756125690546176

`dr(a(n-1)-a(n-∑[1-a(n-1)]))` with `a(0)=1, a(1)=1`
-/

namespace A039982.P6585756125690546176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.digitalRoot ((a (n - 1) : ℤ) - (a ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ))

end

end A039982.P6585756125690546176

namespace A039982

/-- `dr(a(n-1)-a(n-∑[1-a(n-1)]))` -/
def P6585756125690546176.Spec : Prop :=
  ∀ n, (P6585756125690546176.a n : ℤ) = A039982 n

end A039982

/-! ## A039982.P4150999108078674783

`2-(a(n-∑[1-a(n-1)])+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A039982.P4150999108078674783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (a ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat + a (n - 1))

end

end A039982.P4150999108078674783

namespace A039982

/-- `2-(a(n-∑[1-a(n-1)])+a(n-1))` -/
def P4150999108078674783.Spec : Prop :=
  ∀ n, P4150999108078674783.a n = A039982 n

end A039982

/-! ## A039982.P15524811649260750608

`1-A217586(n+2)`
-/

namespace A039982.P15524811649260750608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A217586 (n + 2)

end

end A039982.P15524811649260750608

namespace A039982

/-- `1-A217586(n+2)` -/
def P15524811649260750608.Spec : Prop :=
  ∀ n, P15524811649260750608.a n = A039982 n

end A039982

/-! ## A039982.P5015796457943277160

`A217586(2*(n+2))`
-/

namespace A039982.P5015796457943277160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (2 * (n + 2))

end

end A039982.P5015796457943277160

namespace A039982

/-- `A217586(2*(n+2))` -/
def P5015796457943277160.Spec : Prop :=
  ∀ n, P5015796457943277160.a n = A039982 n

end A039982

/-! ## A039982.P12427780639124367940

`A062188(n+1)%2`
-/

namespace A039982.P12427780639124367940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062188 (n + 1)) 2

end

end A039982.P12427780639124367940

namespace A039982

/-- `A062188(n+1)%2` -/
def P12427780639124367940.Spec : Prop :=
  ∀ n, P12427780639124367940.a n = A039982 n

end A039982

/-! ## A039982.P14190462007985872855

`A091090(n+1)%2`
-/

namespace A039982.P14190462007985872855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091090 (n + 1)) 2

end

end A039982.P14190462007985872855

namespace A039982

/-- `A091090(n+1)%2` -/
def P14190462007985872855.Spec : Prop :=
  ∀ n, P14190462007985872855.a n = A039982 n

end A039982

/-! ## A039982.P1551402623014112922

`A135542(n+1)%2`
-/

namespace A039982.P1551402623014112922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135542 (n + 1)) 2

end

end A039982.P1551402623014112922

namespace A039982

/-- `A135542(n+1)%2` -/
def P1551402623014112922.Spec : Prop :=
  ∀ n, P1551402623014112922.a n = A039982 n

end A039982

/-! ## A039982.P12508652104196754714

`A135521(n+1)%3`
-/

namespace A039982.P12508652104196754714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135521 (n + 1)) 3

end

end A039982.P12508652104196754714

namespace A039982

/-- `A135521(n+1)%3` -/
def P12508652104196754714.Spec : Prop :=
  ∀ n, P12508652104196754714.a n = A039982 n

end A039982

/-! ## A039982.P17305791429552029317

`and(1, A089263(n+2))`
-/

namespace A039982.P17305791429552029317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A089263 (n + 2))

end

end A039982.P17305791429552029317

namespace A039982

/-- `and(1, A089263(n+2))` -/
def P17305791429552029317.Spec : Prop :=
  ∀ n, P17305791429552029317.a n = A039982 n

end A039982

/-! ## A039982.P9730313411120729192

`char[A053661(n+1)-2]`
-/

namespace A039982.P9730313411120729192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A039982.P9730313411120729192

namespace A039982

/-- `char[A053661(n+1)-2]` -/
def P9730313411120729192.Spec : Prop :=
  ∀ n, (P9730313411120729192.a n : ℤ) = A039982 n

end A039982

/-!
# A039983: An example of a d-perfect sequence.

The programs for A039983, the canonical program `A039983.P7559840329530151470` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039983 has offset 1).

The definition of A039983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039983.P13381048696035366318

`xor(A011655(n), A039985(n+1))`
-/

namespace A039983.P13381048696035366318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 n) (A039985 (n + 1))

end

end A039983.P13381048696035366318

namespace A039983

/-- `xor(A011655(n), A039985(n+1))` -/
def P13381048696035366318.Spec : Prop :=
  ∀ n, P13381048696035366318.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P7134192184798193609

`xor(char[A001651(n+1)], A039985(n+1))`
-/

namespace A039983.P7134192184798193609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A039985 (n + 1))

end

end A039983.P7134192184798193609

namespace A039983

/-- `xor(char[A001651(n+1)], A039985(n+1))` -/
def P7134192184798193609.Spec : Prop :=
  ∀ n, P7134192184798193609.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P7559840329530151470

`and(1, Δ[A215673(n+1)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039983

/-- `and(1, Δ[A215673(n+1)])` -/
def P7559840329530151470.Spec : Prop :=
  ∀ n, P7559840329530151470.a n = A039983 (n + 1)

theorem P7559840329530151470.correct : P7559840329530151470.Spec := by
  intro n
  simp only [A039983, Nat.add_sub_cancel]

end A039983

/-! ## A039983.P15859891603269481196

`A000035(abs(Δ[A215673(n+1)]))`
-/

namespace A039983.P15859891603269481196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 |f1 (n + 1) - f1 n|.toNat

end

end A039983.P15859891603269481196

namespace A039983

/-- `A000035(abs(Δ[A215673(n+1)]))` -/
def P15859891603269481196.Spec : Prop :=
  ∀ n, P15859891603269481196.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P6514766106014391371

`A000035(lcm(3, Δ[A215673(n+1)]))`
-/

namespace A039983.P6514766106014391371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lcm 3 (f1 (n + 1) - f1 n))

end

end A039983.P6514766106014391371

namespace A039983

/-- `A000035(lcm(3, Δ[A215673(n+1)]))` -/
def P6514766106014391371.Spec : Prop :=
  ∀ n, P6514766106014391371.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P8648181467049801185

`A020639(abs(Δ[A215673(n+1)]))%2`
-/

namespace A039983.P8648181467049801185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 |f1 (n + 1) - f1 n|.toNat) 2

end

end A039983.P8648181467049801185

namespace A039983

/-- `A020639(abs(Δ[A215673(n+1)]))%2` -/
def P8648181467049801185.Spec : Prop :=
  ∀ n, P8648181467049801185.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P10465267019708488484

`A039985(A054429(n+1))`
-/

namespace A039983.P10465267019708488484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039985 (A054429 (n + 1)).toNat

end

end A039983.P10465267019708488484

namespace A039983

/-- `A039985(A054429(n+1))` -/
def P10465267019708488484.Spec : Prop :=
  ∀ n, P10465267019708488484.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P10493081212284693843

`A039985(A065266(n+1))`
-/

namespace A039983.P10493081212284693843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039985 (A065266 (n + 1)).toNat

end

end A039983.P10493081212284693843

namespace A039983

/-- `A039985(A065266(n+1))` -/
def P10493081212284693843.Spec : Prop :=
  ∀ n, P10493081212284693843.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P17745169089669675392

`A039985(A004754(n+1))`
-/

namespace A039983.P17745169089669675392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039985 (A004754 (n + 1)).toNat

end

end A039983.P17745169089669675392

namespace A039983

/-- `A039985(A004754(n+1))` -/
def P17745169089669675392.Spec : Prop :=
  ∀ n, P17745169089669675392.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P2465142556479676792

`A039985(A065271(n+1))`
-/

namespace A039983.P2465142556479676792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039985 (A065271 (n + 1)).toNat

end

end A039983.P2465142556479676792

namespace A039983

/-- `A039985(A065271(n+1))` -/
def P2465142556479676792.Spec : Prop :=
  ∀ n, P2465142556479676792.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P12683842826859543945

`A039985(A154447(n+1))`
-/

namespace A039983.P12683842826859543945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039985 (A154447 (n + 1)).toNat

end

end A039983.P12683842826859543945

namespace A039983

/-- `A039985(A154447(n+1))` -/
def P12683842826859543945.Spec : Prop :=
  ∀ n, P12683842826859543945.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P3454070349066362950

`A215673(A004768(n))%2`
-/

namespace A039983.P3454070349066362950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215673 (A004768 n).toNat) 2

end

end A039983.P3454070349066362950

namespace A039983

/-- `A215673(A004768(n))%2` -/
def P3454070349066362950.Spec : Prop :=
  ∀ n, P3454070349066362950.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P1237907025787540787

`and(1, A053602(n)+A039985(n+1))`
-/

namespace A039983.P1237907025787540787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A053602 n + A039985 (n + 1))

end

end A039983.P1237907025787540787

namespace A039983

/-- `and(1, A053602(n)+A039985(n+1))` -/
def P1237907025787540787.Spec : Prop :=
  ∀ n, P1237907025787540787.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P4593179064973059097

`A135481(Δ[A215673(n+1)]²)`
-/

namespace A039983.P4593179064973059097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A039983.P4593179064973059097

namespace A039983

/-- `A135481(Δ[A215673(n+1)]²)` -/
def P4593179064973059097.Spec : Prop :=
  ∀ n, P4593179064973059097.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P2364713515849092484

`(A039985(n+1)+A000045(n))%2`
-/

namespace A039983.P2364713515849092484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039985 (n + 1) + A000045 n) 2

end

end A039983.P2364713515849092484

namespace A039983

/-- `(A039985(n+1)+A000045(n))%2` -/
def P2364713515849092484.Spec : Prop :=
  ∀ n, P2364713515849092484.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P1121660036549029385

`A096268(Δ[A215673(n+1)]²)`
-/

namespace A039983.P1121660036549029385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A039983.P1121660036549029385

namespace A039983

/-- `A096268(Δ[A215673(n+1)]²)` -/
def P1121660036549029385.Spec : Prop :=
  ∀ n, P1121660036549029385.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P17223985694245177119

`A267001(Δ[A215673(n+1)]²)`
-/

namespace A039983.P17223985694245177119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267001 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A039983.P17223985694245177119

namespace A039983

/-- `A267001(Δ[A215673(n+1)]²)` -/
def P17223985694245177119.Spec : Prop :=
  ∀ n, P17223985694245177119.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P3327668481070994843

`A000035(Δ[A215673(n+1)]²)`
-/

namespace A039983.P3327668481070994843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A039983.P3327668481070994843

namespace A039983

/-- `A000035(Δ[A215673(n+1)]²)` -/
def P3327668481070994843.Spec : Prop :=
  ∀ n, P3327668481070994843.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P4716351379099964238

`A108629(n+1)%2`
-/

namespace A039983.P4716351379099964238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108629 (n + 1)) 2

end

end A039983.P4716351379099964238

namespace A039983

/-- `A108629(n+1)%2` -/
def P4716351379099964238.Spec : Prop :=
  ∀ n, P4716351379099964238.a n = A039983 (n + 1)

end A039983

/-! ## A039983.P4560955836771547148

`and(A060576(n), A108629(n+1))`
-/

namespace A039983.P4560955836771547148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A108629 (n + 1))

end

end A039983.P4560955836771547148

namespace A039983

/-- `and(A060576(n), A108629(n+1))` -/
def P4560955836771547148.Spec : Prop :=
  ∀ n, P4560955836771547148.a n = A039983 (n + 1)

end A039983

/-!
# A039984: An example of a d-perfect sequence.

The programs for A039984, the canonical program `A039984.P12452810510463565344` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039984 has offset 1).

The definition of A039984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039984.P5743930904759487925

`a(a(floor(n/2)))^and(2, n)` with `a(0)=1, a(1)=0`
-/

namespace A039984.P5743930904759487925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (a ⌊(n : ℚ) / 2⌋.toNat) ^ Nat.land 2 n

end

end A039984.P5743930904759487925

namespace A039984

/-- `a(a(floor(n/2)))^and(2, n)` -/
def P5743930904759487925.Spec : Prop :=
  ∀ n, (P5743930904759487925.a n : ℤ) = A039984 (n + 1)

end A039984

/-! ## A039984.P12452810510463565344

`abs(Δ[n%(2-a(floor(n/2)))])` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A039984

/-- `abs(Δ[n%(2-a(floor(n/2)))])` -/
def P12452810510463565344.Spec : Prop :=
  ∀ n, P12452810510463565344.a n = A039984 (n + 1)

theorem P12452810510463565344.correct : P12452810510463565344.Spec := by
  intro n
  simp only [A039984, Nat.add_sub_cancel]

end A039984

/-! ## A039984.P7627168981360009550

`Δ[(xor(n, n+1)%(n+1))%3]²`
-/

namespace A039984.P7627168981360009550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % (n + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A039984.P7627168981360009550

namespace A039984

/-- `Δ[(xor(n, n+1)%(n+1))%3]²` -/
def P7627168981360009550.Spec : Prop :=
  ∀ n, P7627168981360009550.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P2272534465412593115

`a(a(floor(n/2))+and(2, n+2))` with `a(0)=1, a(1)=0`
-/

namespace A039984.P2272534465412593115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (a ⌊(n : ℚ) / 2⌋.toNat + Nat.land 2 (n + 2))

end

end A039984.P2272534465412593115

namespace A039984

/-- `a(a(floor(n/2))+and(2, n+2))` -/
def P2272534465412593115.Spec : Prop :=
  ∀ n, (P2272534465412593115.a n : ℤ) = A039984 (n + 1)

end A039984

/-! ## A039984.P17159351828722658997

`abs(Δ[A217586(n+1)])`
-/

namespace A039984.P17159351828722658997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A039984.P17159351828722658997

namespace A039984

/-- `abs(Δ[A217586(n+1)])` -/
def P17159351828722658997.Spec : Prop :=
  ∀ n, P17159351828722658997.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P6322992714093861989

`abs(Δ[A039982(2*n)])`
-/

namespace A039984.P6322992714093861989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A039984.P6322992714093861989

namespace A039984

/-- `abs(Δ[A039982(2*n)])` -/
def P6322992714093861989.Spec : Prop :=
  ∀ n, P6322992714093861989.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P13613772058522904074

`A039982(A063210(n+1))`
-/

namespace A039984.P13613772058522904074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A063210 (n + 1)).toNat

end

end A039984.P13613772058522904074

namespace A039984

/-- `A039982(A063210(n+1))` -/
def P13613772058522904074.Spec : Prop :=
  ∀ n, P13613772058522904074.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P7204278278238180203

`A035263(A038554(n)+1+n)`
-/

namespace A039984.P7204278278238180203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A038554 n + 1 + (n : ℤ)).toNat

end

end A039984.P7204278278238180203

namespace A039984

/-- `A035263(A038554(n)+1+n)` -/
def P7204278278238180203.Spec : Prop :=
  ∀ n, P7204278278238180203.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P9036103659688057335

`A039982(2*n*A039982(n))`
-/

namespace A039984.P9036103659688057335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (2 * ((n : ℤ) * A039982 n)).toNat

end

end A039984.P9036103659688057335

namespace A039984

/-- `A039982(2*n*A039982(n))` -/
def P9036103659688057335.Spec : Prop :=
  ∀ n, P9036103659688057335.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P13477621633210946067

`and(1, A082560(A040001(n)+n))`
-/

namespace A039984.P13477621633210946067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A082560 (A040001 n + (n : ℤ)).toNat)

end

end A039984.P13477621633210946067

namespace A039984

/-- `and(1, A082560(A040001(n)+n))` -/
def P13477621633210946067.Spec : Prop :=
  ∀ n, P13477621633210946067.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P12274224942197442350

`A039982(Δ[n²]-A039982(n))`
-/

namespace A039984.P12274224942197442350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A039982 n).toNat

end

end A039984.P12274224942197442350

namespace A039984

/-- `A039982(Δ[n²]-A039982(n))` -/
def P12274224942197442350.Spec : Prop :=
  ∀ n, P12274224942197442350.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P6686986475961194146

`A217586(n+1)+A217586(n+2)`
-/

namespace A039984.P6686986475961194146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (n + 1) + A217586 (n + 2)

end

end A039984.P6686986475961194146

namespace A039984

/-- `A217586(n+1)+A217586(n+2)` -/
def P6686986475961194146.Spec : Prop :=
  ∀ n, P6686986475961194146.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P2305641906491205793

`A010059(A059009(n+2)-A059009(n))`
-/

namespace A039984.P2305641906491205793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A059009 (n + 2) - A059009 n).toNat

end

end A039984.P2305641906491205793

namespace A039984

/-- `A010059(A059009(n+2)-A059009(n))` -/
def P2305641906491205793.Spec : Prop :=
  ∀ n, P2305641906491205793.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P2019589485165961897

`A010059(A059010(n+2)-A059010(n))`
-/

namespace A039984.P2019589485165961897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A059010 (n + 2) - A059010 n).toNat

end

end A039984.P2019589485165961897

namespace A039984

/-- `A010059(A059010(n+2)-A059010(n))` -/
def P2019589485165961897.Spec : Prop :=
  ∀ n, P2019589485165961897.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P8253207914464475227

`A059016(A059010(n+2)-A059010(n))`
-/

namespace A039984.P8253207914464475227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059016 (A059010 (n + 2) - A059010 n).toNat

end

end A039984.P8253207914464475227

namespace A039984

/-- `A059016(A059010(n+2)-A059010(n))` -/
def P8253207914464475227.Spec : Prop :=
  ∀ n, P8253207914464475227.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P595707121878817042

`A156549(A059009(n+2)-A059009(n))`
-/

namespace A039984.P595707121878817042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156549 (A059009 (n + 2) - A059009 n).toNat

end

end A039984.P595707121878817042

namespace A039984

/-- `A156549(A059009(n+2)-A059009(n))` -/
def P595707121878817042.Spec : Prop :=
  ∀ n, P595707121878817042.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P14192182754895623847

`A156549(A059010(n+2)-A059010(n))`
-/

namespace A039984.P14192182754895623847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156549 (A059010 (n + 2) - A059010 n).toNat

end

end A039984.P14192182754895623847

namespace A039984

/-- `A156549(A059010(n+2)-A059010(n))` -/
def P14192182754895623847.Spec : Prop :=
  ∀ n, P14192182754895623847.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P865177503407617982

`A000035(A135560(n+1)+A091090(n+1))`
-/

namespace A039984.P865177503407617982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A135560 (n + 1) + A091090 (n + 1)).toNat

end

end A039984.P865177503407617982

namespace A039984

/-- `A000035(A135560(n+1)+A091090(n+1))` -/
def P865177503407617982.Spec : Prop :=
  ∀ n, P865177503407617982.a n = A039984 (n + 1)

end A039984

/-! ## A039984.P16001138522810665261

`and(1, Δ[A082560(n+1)])`
-/

namespace A039984.P16001138522810665261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A039984.P16001138522810665261

namespace A039984

/-- `and(1, Δ[A082560(n+1)])` -/
def P16001138522810665261.Spec : Prop :=
  ∀ n, P16001138522810665261.a n = A039984 (n + 1)

end A039984

/-!
# A039985: An example of a d-perfect sequence.

The programs for A039985, the canonical program `A039985.P12648521438215909424` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039985 has offset 1).

The definition of A039985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039985.P12648521438215909424

`xor(A011655(n), A039983(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039985

/-- `xor(A011655(n), A039983(n+1))` -/
def P12648521438215909424.Spec : Prop :=
  ∀ n, P12648521438215909424.a n = A039985 (n + 1)

theorem P12648521438215909424.correct : P12648521438215909424.Spec := by
  intro n
  simp only [A039985, Nat.add_sub_cancel]

end A039985

/-! ## A039985.P17081652610780079600

`xor(char[A166517(n)], A039983(n+1))`
-/

namespace A039985.P17081652610780079600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A039983 (n + 1))

end

end A039985.P17081652610780079600

namespace A039985

/-- `xor(char[A166517(n)], A039983(n+1))` -/
def P17081652610780079600.Spec : Prop :=
  ∀ n, P17081652610780079600.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P9201090483845357973

`xor(Δ[A004523(n)], A039983(n+1))`
-/

namespace A039985.P9201090483845357973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A039983 (n + 1))

end

end A039985.P9201090483845357973

namespace A039985

/-- `xor(Δ[A004523(n)], A039983(n+1))` -/
def P9201090483845357973.Spec : Prop :=
  ∀ n, P9201090483845357973.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P5854121263745943207

`A000035(A004396(n)+Δ[A215673(n+1)])`
-/

namespace A039985.P5854121263745943207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004396 n + (f1 (n + 1) - f1 n)).toNat

end

end A039985.P5854121263745943207

namespace A039985

/-- `A000035(A004396(n)+Δ[A215673(n+1)])` -/
def P5854121263745943207.Spec : Prop :=
  ∀ n, P5854121263745943207.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P11728882863903401336

`A039983(A054429(n+1))`
-/

namespace A039985.P11728882863903401336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039983 (A054429 (n + 1)).toNat

end

end A039985.P11728882863903401336

namespace A039985

/-- `A039983(A054429(n+1))` -/
def P11728882863903401336.Spec : Prop :=
  ∀ n, P11728882863903401336.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P5689061189195498726

`A020943(2*(n+1))%2`
-/

namespace A039985.P5689061189195498726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020943 (2 * (n + 1))) 2

end

end A039985.P5689061189195498726

namespace A039985

/-- `A020943(2*(n+1))%2` -/
def P5689061189195498726.Spec : Prop :=
  ∀ n, P5689061189195498726.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P10508544857190893312

`and(1, A020943(2*n+2))`
-/

namespace A039985.P10508544857190893312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A020943 (2 * n + 2))

end

end A039985.P10508544857190893312

namespace A039985

/-- `and(1, A020943(2*n+2))` -/
def P10508544857190893312.Spec : Prop :=
  ∀ n, P10508544857190893312.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P15410368033091083052

`A000035(A020943(2*(n+1)))`
-/

namespace A039985.P15410368033091083052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A020943 (2 * (n + 1))).toNat

end

end A039985.P15410368033091083052

namespace A039985

/-- `A000035(A020943(2*(n+1)))` -/
def P15410368033091083052.Spec : Prop :=
  ∀ n, P15410368033091083052.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P10383990994181611588

`A000034(A020943(2*n+2))-A000034(2*n)`
-/

namespace A039985.P10383990994181611588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A020943 (2 * n + 2)).toNat - A000034 (2 * n)

end

end A039985.P10383990994181611588

namespace A039985

/-- `A000034(A020943(2*n+2))-A000034(2*n)` -/
def P10383990994181611588.Spec : Prop :=
  ∀ n, P10383990994181611588.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P6984057289433533666

`abs(Δ[A000034(A020943(2*n+1))])`
-/

namespace A039985.P6984057289433533666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A020943 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A039985.P6984057289433533666

namespace A039985

/-- `abs(Δ[A000034(A020943(2*n+1))])` -/
def P6984057289433533666.Spec : Prop :=
  ∀ n, P6984057289433533666.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P13670957526982879584

`Δ[A000034(A020943(n+1+n))]²`
-/

namespace A039985.P13670957526982879584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A020943 (n + 1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A039985.P13670957526982879584

namespace A039985

/-- `Δ[A000034(A020943(n+1+n))]²` -/
def P13670957526982879584.Spec : Prop :=
  ∀ n, P13670957526982879584.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P13053180069878496834

`A039983(A065265(n+1))`
-/

namespace A039985.P13053180069878496834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039983 (A065265 (n + 1)).toNat

end

end A039985.P13053180069878496834

namespace A039985

/-- `A039983(A065265(n+1))` -/
def P13053180069878496834.Spec : Prop :=
  ∀ n, P13053180069878496834.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P1455454454317289854

`A000035(A215675(2*(n+1))+1)`
-/

namespace A039985.P1455454454317289854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A215675 (2 * (n + 1)) + 1).toNat

end

end A039985.P1455454454317289854

namespace A039985

/-- `A000035(A215675(2*(n+1))+1)` -/
def P1455454454317289854.Spec : Prop :=
  ∀ n, P1455454454317289854.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P12730206910465665209

`A039983(A004755(n+1))`
-/

namespace A039985.P12730206910465665209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039983 (A004755 (n + 1)).toNat

end

end A039985.P12730206910465665209

namespace A039985

/-- `A039983(A004755(n+1))` -/
def P12730206910465665209.Spec : Prop :=
  ∀ n, P12730206910465665209.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P13600623677969512466

`A039983(A065272(n+1))`
-/

namespace A039985.P13600623677969512466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039983 (A065272 (n + 1)).toNat

end

end A039985.P13600623677969512466

namespace A039985

/-- `A039983(A065272(n+1))` -/
def P13600623677969512466.Spec : Prop :=
  ∀ n, P13600623677969512466.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P10247380900989601106

`and(1, Δ[A020943(A008574(n))])`
-/

namespace A039985.P10247380900989601106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020943 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A039985.P10247380900989601106

namespace A039985

/-- `and(1, Δ[A020943(A008574(n))])` -/
def P10247380900989601106.Spec : Prop :=
  ∀ n, P10247380900989601106.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P4372624486877938719

`A039983(A154448(n+1))`
-/

namespace A039985.P4372624486877938719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039983 (A154448 (n + 1)).toNat

end

end A039985.P4372624486877938719

namespace A039985

/-- `A039983(A154448(n+1))` -/
def P4372624486877938719.Spec : Prop :=
  ∀ n, P4372624486877938719.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P13109113073242448533

`A000035(A215675(Δ[A016754(n)]))`
-/

namespace A039985.P13109113073242448533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A215675 (f1 (n + 1) - f1 n).toNat).toNat

end

end A039985.P13109113073242448533

namespace A039985

/-- `A000035(A215675(Δ[A016754(n)]))` -/
def P13109113073242448533.Spec : Prop :=
  ∀ n, P13109113073242448533.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P13469932744314576182

`A000034(A020943(2*(n+1))²)-1`
-/

namespace A039985.P13469932744314576182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A020943 (2 * (n + 1)) ^ 2).toNat - 1

end

end A039985.P13469932744314576182

namespace A039985

/-- `A000034(A020943(2*(n+1))²)-1` -/
def P13469932744314576182.Spec : Prop :=
  ∀ n, P13469932744314576182.a n = A039985 (n + 1)

end A039985

/-! ## A039985.P8889007260147406096

`A108630(n+1)%2`
-/

namespace A039985.P8889007260147406096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108630 (n + 1)) 2

end

end A039985.P8889007260147406096

namespace A039985

/-- `A108630(n+1)%2` -/
def P8889007260147406096.Spec : Prop :=
  ∀ n, P8889007260147406096.a n = A039985 (n + 1)

end A039985

/-!
# A039986: Primes such that every distinct permutation of digits is composite (including permutations with leading zeros).

The programs for A039986, there is no canonical definition to state claims against.
-/

/-! ## A039986.P7068634827355095145

`record[gcd(A000040(n+1), A052902(n+1))]`
-/

namespace A039986.P7068634827355095145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A052902 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039986.P7068634827355095145

/-! ## A039986.P14404889893430646413

`record[gcd(A008578(n+2), A052998(n+1))]`
-/

namespace A039986.P14404889893430646413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008578 (n + 2)) (A052998 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039986.P14404889893430646413

/-! ## A039986.P4969817703984619772

`record[(A006093(n+1)+1)/A039998(n+1)]`
-/

namespace A039986.P4969817703984619772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1 : ℚ) / (A039998 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039986.P4969817703984619772

/-! ## A039986.P13905760870734032477

`p?[A000040(n+1)*A039998(n+1)]`
-/

namespace A039986.P13905760870734032477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A039998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039986.P13905760870734032477

/-! ## A039986.P13503472189079288284

`p?[A008578(n+2)*A039998(n+1)]`
-/

namespace A039986.P13503472189079288284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A039998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039986.P13503472189079288284

/-! ## A039986.P12321225647258324602

`p?[comp[A225035(n+1)]]`
-/

namespace A039986.P12321225647258324602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225035 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A039986.P12321225647258324602

/-! ## A039986.P6534924144380812141

`p?[(n+1)*A039999(n+1)]`
-/

namespace A039986.P6534924144380812141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A039999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039986.P6534924144380812141

/-! ## A039986.P11620383319100799911

`p?[lcm(n+2, A039999(n+2))]`
-/

namespace A039986.P11620383319100799911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A039999 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A039986.P11620383319100799911

/-! ## A039986.P13092378225796122682

`record[A051698(n)/A039999(A051698(n))]`
-/

namespace A039986.P13092378225796122682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051698 n : ℚ) / (A039999 (A051698 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039986.P13092378225796122682

/-! ## A039986.P4347359313347898065

`record[A006530(n+2)/A039999(A006530(n+2))]`
-/

namespace A039986.P4347359313347898065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℚ) / (A039999 (A006530 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039986.P4347359313347898065

/-!
# A039987: k th digit of a(n) = number of different digits within 2 places of k (not including k).

The programs for A039987, there is no canonical definition to state claims against.
-/

/-! ## A039987.P1206249144820867385

`A039989(n)-A083895(A124303(n))`
-/

namespace A039987.P1206249144820867385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039989 n - A083895 (A124303 n).toNat

end

end A039987.P1206249144820867385

/-! ## A039987.P6501424287551381624

`A039989(n)-A039966(A040016(n+1))`
-/

namespace A039987.P6501424287551381624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039989 n - A039966 (A040016 (n + 1)).toNat

end

end A039987.P6501424287551381624

/-! ## A039987.P7209146583289376913

`A039990(n+1)-A083895(A124303(n))`
-/

namespace A039987.P7209146583289376913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039990 (n + 1) - A083895 (A124303 n).toNat

end

end A039987.P7209146583289376913

/-! ## A039987.P17546753673599234453

`A039990(n+1)-A039999(A294782(n))`
-/

namespace A039987.P17546753673599234453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039990 (n + 1) - A039999 (A294782 n).toNat

end

end A039987.P17546753673599234453

/-! ## A039987.P17538811693078751495

`A039989(n)-A267417(A323340(n+1))`
-/

namespace A039987.P17538811693078751495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039989 n - A267417 (A323340 (n + 1)).toNat

end

end A039987.P17538811693078751495

/-!
# A039988: k th digit of a(n) is the number of different digits within 1 of k (not including k).

The programs for A039988, there is no canonical definition to state claims against.
-/

/-! ## A039988.P6053108488441292353

`A077488(∑[A229736(n)!])`
-/

namespace A039988.P6053108488441292353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A229736 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077488 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039988.P6053108488441292353

/-! ## A039988.P10773362070843294236

`∩[A082810(n+1), A039987(n)]`
-/

namespace A039988.P10773362070843294236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039987 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039988.P10773362070843294236

/-!
# A039989: k th digit of a(n) is the number of different digits within 3 of k (not including k).

The programs for A039989, there is no canonical definition to state claims against.
-/

/-! ## A039989.P1399890962278889493

`A039990(A187829(n+1))-char[11]`
-/

namespace A039989.P1399890962278889493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039990 (A187829 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A039989.P1399890962278889493

/-! ## A039989.P1089393854066170960

`A039990(n+1)+A014025(A124343(n+1))`
-/

namespace A039989.P1089393854066170960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039990 (n + 1) + A014025 (A124343 (n + 1)).toNat

end

end A039989.P1089393854066170960

/-! ## A039989.P8401761866913807630

`A039990(n+1)-A240467(A000041(2*(n+2)))`
-/

namespace A039989.P8401761866913807630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039990 (n + 1) - A240467 (A000041 (2 * (n + 2))).toNat

end

end A039989.P8401761866913807630

/-! ## A039989.P8492593981611755246

`A039990(n+1)-A088722(A004148(n))`
-/

namespace A039989.P8492593981611755246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039990 (n + 1) - A088722 (A004148 n).toNat

end

end A039989.P8492593981611755246

/-! ## A039989.P9741029598402132776

`A039990(A061147(n+1))`
-/

namespace A039989.P9741029598402132776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039990 (A061147 (n + 1)).toNat

end

end A039989.P9741029598402132776

/-!
# A039990: k th digit of a(n) is the number of different digits within 4 of k (not including k).

The programs for A039990, there is no canonical definition to state claims against.
-/

/-! ## A039990.P10032448770197628207

`A345952(A039989(n))+A039989(n)`
-/

namespace A039990.P10032448770197628207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345952 (A039989 n).toNat + A039989 n

end

end A039990.P10032448770197628207

/-! ## A039990.P5155791133722472493

`A039989(n)-A014025(A124343(n+1))`
-/

namespace A039990.P5155791133722472493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039989 n - A014025 (A124343 (n + 1)).toNat

end

end A039990.P5155791133722472493

/-! ## A039990.P3372812773224414784

`A284905(A182172(A024786(n+1)))+A039989(n)`
-/

namespace A039990.P3372812773224414784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (A182172 (A024786 (n + 1)).toNat).toNat + A039989 n

end

end A039990.P3372812773224414784

/-! ## A039990.P10285095765487258876

`A088722(A004148(n))+A039989(n)`
-/

namespace A039990.P10285095765487258876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (A004148 n).toNat + A039989 n

end

end A039990.P10285095765487258876

/-!
# A039991: Triangle of coefficients of cos(x)^n in polynomial for cos(nx).

The programs for A039991, the canonical program `A039991.P3632847028178845373` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039991 has offset 0).

The definition of A039991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039991.P3632847028178845373

`A140883(n)-A053120(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A039991

/-- `A140883(n)-A053120(n)` -/
def P3632847028178845373.Spec : Prop :=
  ∀ n, P3632847028178845373.a n = A039991 n

theorem P3632847028178845373.correct : P3632847028178845373.Spec := by
  intro n
  simp only [A039991]

end A039991

/-! ## A039991.P18248117889138691931

`A053120(A061579(n))`
-/

namespace A039991.P18248117889138691931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A061579 n).toNat

end

end A039991.P18248117889138691931

namespace A039991

/-- `A053120(A061579(n))` -/
def P18248117889138691931.Spec : Prop :=
  ∀ n, P18248117889138691931.a n = A039991 n

end A039991

/-! ## A039991.P11781823221509490771

`A053120(A114327(n)+n)`
-/

namespace A039991.P11781823221509490771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A114327 n + (n : ℤ)).toNat

end

end A039991.P11781823221509490771

namespace A039991

/-- `A053120(A114327(n)+n)` -/
def P11781823221509490771.Spec : Prop :=
  ∀ n, P11781823221509490771.a n = A039991 n

end A039991

/-! ## A039991.P9149131601077362780

`A053120(A038722(n+1)-1)`
-/

namespace A039991.P9149131601077362780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A038722 (n + 1) - 1).toNat

end

end A039991.P9149131601077362780

namespace A039991

/-- `A053120(A038722(n+1)-1)` -/
def P9149131601077362780.Spec : Prop :=
  ∀ n, P9149131601077362780.a n = A039991 n

end A039991

/-! ## A039991.P14007718361469018870

`A053120(A265129(n+1)-(n+2))`
-/

namespace A039991.P14007718361469018870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A265129 (n + 1) - (n + 2 : ℤ)).toNat

end

end A039991.P14007718361469018870

namespace A039991

/-- `A053120(A265129(n+1)-(n+2))` -/
def P14007718361469018870.Spec : Prop :=
  ∀ n, P14007718361469018870.a n = A039991 n

end A039991

/-! ## A039991.P13464249728066016976

`A053120(A002024(n+1)²-(n+1))`
-/

namespace A039991.P13464249728066016976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A039991.P13464249728066016976

namespace A039991

/-- `A053120(A002024(n+1)²-(n+1))` -/
def P13464249728066016976.Spec : Prop :=
  ∀ n, P13464249728066016976.a n = A039991 n

end A039991

/-! ## A039991.P2019686407578488089

`A053120(A057944(n)+A025581(n))`
-/

namespace A039991.P2019686407578488089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A057944 n + A025581 n).toNat

end

end A039991.P2019686407578488089

namespace A039991

/-- `A053120(A057944(n)+A025581(n))` -/
def P2019686407578488089.Spec : Prop :=
  ∀ n, P2019686407578488089.a n = A039991 n

end A039991

/-! ## A039991.P11318512019009413040

`and(1, A002260(n+1))*A136523(A061579(n))`
-/

namespace A039991.P11318512019009413040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002260 (n + 1)) * A136523 (A061579 n).toNat

end

end A039991.P11318512019009413040

namespace A039991

/-- `and(1, A002260(n+1))*A136523(A061579(n))` -/
def P11318512019009413040.Spec : Prop :=
  ∀ n, P11318512019009413040.a n = A039991 n

end A039991

/-! ## A039991.P6282620753041651760

`A228565(n+1)-Δ[A053118(n)]`
-/

namespace A039991.P6282620753041651760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228565 (n + 1) - (f1 (n + 1) - f1 n)

end

end A039991.P6282620753041651760

namespace A039991

/-- `A228565(n+1)-Δ[A053118(n)]` -/
def P6282620753041651760.Spec : Prop :=
  ∀ n, P6282620753041651760.a n = A039991 n

end A039991

/-! ## A039991.P1430372125963856079

`A228565(n+1)+A053118(n)-A053118(n+1)`
-/

namespace A039991.P1430372125963856079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228565 (n + 1) + (A053118 n - A053118 (n + 1))

end

end A039991.P1430372125963856079

namespace A039991

/-- `A228565(n+1)+A053118(n)-A053118(n+1)` -/
def P1430372125963856079.Spec : Prop :=
  ∀ n, P1430372125963856079.a n = A039991 n

end A039991

/-!
# A039992: Number of distinct primes embedded in prime p(n).

The programs for A039992, there is no canonical definition to state claims against.
-/

/-! ## A039992.P3105498416688282294

`A045719(n+1)+1`
-/

namespace A039992.P3105498416688282294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045719 (n + 1) + 1

end

end A039992.P3105498416688282294

/-! ## A039992.P16807167948098985138

`A039993(p?[xor(1, n)])`
-/

namespace A039992.P16807167948098985138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A039992.P16807167948098985138

/-! ## A039992.P11205594495945755611

`A039993(p?[comp[n²]])`
-/

namespace A039992.P11205594495945755611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A039992.P11205594495945755611

/-! ## A039992.P12136018374564700782

`A039993(Δ[A007504(n)])`
-/

namespace A039992.P12136018374564700782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (n + 1) - f1 n).toNat

end

end A039992.P12136018374564700782

/-! ## A039992.P10422908476083715845

`A039993(record[A051698(n)])`
-/

namespace A039992.P10422908476083715845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039992.P10422908476083715845

/-! ## A039992.P14882694943764804499

`A039993(A000040(n+1))`
-/

namespace A039992.P14882694943764804499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A000040 (n + 1)).toNat

end

end A039992.P14882694943764804499

/-! ## A039992.P18423105415982817163

`A039993(A004087(n+1))`
-/

namespace A039992.P18423105415982817163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A004087 (n + 1)).toNat

end

end A039992.P18423105415982817163

/-! ## A039992.P5684664192655161122

`A039993(A028906(n+1))`
-/

namespace A039992.P5684664192655161122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A028906 (n + 1)).toNat

end

end A039992.P5684664192655161122

/-! ## A039992.P6054451583031897896

`A039993(A008578(n+2))`
-/

namespace A039992.P6054451583031897896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A008578 (n + 2)).toNat

end

end A039992.P6054451583031897896

/-! ## A039992.P5402956151927996767

`A039993(A182986(n+2))`
-/

namespace A039992.P5402956151927996767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A182986 (n + 2)).toNat

end

end A039992.P5402956151927996767

/-! ## A039992.P15347823174870801892

`A039993(eq[1, A003415(n)])`
-/

namespace A039992.P15347823174870801892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039992.P15347823174870801892

/-! ## A039992.P8383001463559078022

`A039993(sqrt(A001248(n+1)))`
-/

namespace A039992.P8383001463559078022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A039992.P8383001463559078022

/-! ## A039992.P16321661687600449884

`A039993(record[A006530(n+2)])`
-/

namespace A039992.P16321661687600449884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039992.P16321661687600449884

/-! ## A039992.P15247270702337633397

`A039993(record[A014963(n+2)])`
-/

namespace A039992.P15247270702337633397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039992.P15247270702337633397

/-! ## A039992.P5124846098151198156

`A039993(record[A020639(n+2)])`
-/

namespace A039992.P5124846098151198156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039992.P5124846098151198156

/-! ## A039992.P17591976807483384732

`A039993(A007504(n+1)-A007504(n))`
-/

namespace A039992.P17591976807483384732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A007504 (n + 1) - A007504 n).toNat

end

end A039992.P17591976807483384732

/-! ## A039992.P8080291742526486700

`A039993(A101989(n+1))`
-/

namespace A039992.P8080291742526486700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A101989 (n + 1)).toNat

end

end A039992.P8080291742526486700

/-!
# A039993: Number of different primes embedded in n.

The programs for A039993, there is no canonical definition to state claims against.
-/

/-! ## A039993.P11152065611303648013

`gcd(A075053(n+1), A118553(A335896(n+1)))`
-/

namespace A039993.P11152065611303648013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075053 (n + 1)) (A118553 (A335896 (n + 1)).toNat)

end

end A039993.P11152065611303648013

/-! ## A039993.P8600069025143761143

`A001045(A075053(n+1))%A357575(2*(n+1))`
-/

namespace A039993.P8600069025143761143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001045 (A075053 (n + 1)).toNat) (A357575 (2 * (n + 1)))

end

end A039993.P8600069025143761143

/-! ## A039993.P8301882331053025692

`A075053(A044922(n+1)%A017377(A111636(n)))`
-/

namespace A039993.P8301882331053025692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (Int.tmod (A044922 (n + 1)) (A017377 (A111636 n).toNat)).toNat

end

end A039993.P8301882331053025692

/-! ## A039993.P1502874094995422932

`A075053(n+1)%A233695(n+1)`
-/

namespace A039993.P1502874094995422932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075053 (n + 1)) (A233695 (n + 1))

end

end A039993.P1502874094995422932

/-! ## A039993.P5852702920467412709

`A075053(n+1)^A000041(comp[or(2, n)]^(n%2))`
-/

namespace A039993.P5852702920467412709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075053 (n + 1) : ℚ) ^ (A000041 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ (n % 2)) : ℤ)

end

end A039993.P5852702920467412709

/-!
# A039994: Number of primes embedded in decimal expansion of prime(n) as subsequences.

The programs for A039994, there is no canonical definition to state claims against.
-/

/-! ## A039994.P12181376319350745193

`A039995(A000040(n+1))`
-/

namespace A039994.P12181376319350745193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A000040 (n + 1)).toNat

end

end A039994.P12181376319350745193

/-! ## A039994.P2345335907758307137

`A039995(p?[xor(1, n)])`
-/

namespace A039994.P2345335907758307137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A039994.P2345335907758307137

/-! ## A039994.P11222018133407457114

`A039995(Δ[A007504(n)])`
-/

namespace A039994.P11222018133407457114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (f1 (n + 1) - f1 n).toNat

end

end A039994.P11222018133407457114

/-! ## A039994.P6953095565688926220

`A039995(record[A051698(n)])`
-/

namespace A039994.P6953095565688926220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039994.P6953095565688926220

/-! ## A039994.P4775846575560793264

`A039995(A008578(n+2))`
-/

namespace A039994.P4775846575560793264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A008578 (n + 2)).toNat

end

end A039994.P4775846575560793264

/-! ## A039994.P11716301964042617902

`A039995(A182986(n+2))`
-/

namespace A039994.P11716301964042617902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A182986 (n + 2)).toNat

end

end A039994.P11716301964042617902

/-! ## A039994.P17769939421742159309

`A039995(record[A006530(n+2)])`
-/

namespace A039994.P17769939421742159309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039994.P17769939421742159309

/-! ## A039994.P13499911897140967183

`A039995(record[A014963(n+2)])`
-/

namespace A039994.P13499911897140967183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039994.P13499911897140967183

/-! ## A039994.P17773938195512421126

`A039995(record[A020639(n+2)])`
-/

namespace A039994.P17773938195512421126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039994.P17773938195512421126

/-! ## A039994.P8815613767863969575

`A039995(A007504(n+1)-A007504(n))`
-/

namespace A039994.P8815613767863969575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A007504 (n + 1) - A007504 n).toNat

end

end A039994.P8815613767863969575

/-! ## A039994.P1044193379572840119

`A039995(A142342(n+1))`
-/

namespace A039994.P1044193379572840119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A142342 (n + 1)).toNat

end

end A039994.P1044193379572840119

/-!
# A039995: Number of distinct primes which occur as subsequences of the sequence of digits of n.

The programs for A039995, there is no canonical definition to state claims against.
-/

/-! ## A039995.P19579458793157519

`A039997(A143182(∑[A118759(n)]))`
-/

namespace A039995.P19579458793157519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A143182 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A039995.P19579458793157519

/-! ## A039995.P227148369511217519

`A193095(A103505(n))+A039997(n+1)`
-/

namespace A039995.P227148369511217519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 (A103505 n).toNat + A039997 (n + 1)

end

end A039995.P227148369511217519

/-! ## A039995.P5209913042162630045

`A039997(n+1)+A000007(A096582(n+1))`
-/

namespace A039995.P5209913042162630045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1) + A000007 (A096582 (n + 1)).toNat

end

end A039995.P5209913042162630045

/-!
# A039996: Number of distinct primes embedded in prime(n) as substrings.

The programs for A039996, there is no canonical definition to state claims against.
-/

/-! ## A039996.P148839324198374200

`A079066(n+1)+1`
-/

namespace A039996.P148839324198374200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1) + 1

end

end A039996.P148839324198374200

/-! ## A039996.P16641074615932843673

`A039997(A000040(n+1))`
-/

namespace A039996.P16641074615932843673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A000040 (n + 1)).toNat

end

end A039996.P16641074615932843673

/-! ## A039996.P13665141509238379054

`A039997(A008578(n+2))`
-/

namespace A039996.P13665141509238379054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A008578 (n + 2)).toNat

end

end A039996.P13665141509238379054

/-! ## A039996.P971457974150728103

`A039997(A182986(n+2))`
-/

namespace A039996.P971457974150728103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A182986 (n + 2)).toNat

end

end A039996.P971457974150728103

/-! ## A039996.P1302823255606894988

`A039997(eq[1, A003415(n)])`
-/

namespace A039996.P1302823255606894988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039996.P1302823255606894988

/-! ## A039996.P10042564361884406294

`A039997(record[A006530(n+2)])`
-/

namespace A039996.P10042564361884406294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039996.P10042564361884406294

/-! ## A039996.P2664227461297043796

`A039997(record[A014963(n+2)])`
-/

namespace A039996.P2664227461297043796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039996.P2664227461297043796

/-! ## A039996.P6001999923097823059

`A039997(record[A020639(n+2)])`
-/

namespace A039996.P6001999923097823059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039996.P6001999923097823059

/-! ## A039996.P8391669492772722932

`A039997(eq[1, A010051(n+1)]+1)`
-/

namespace A039996.P8391669492772722932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A039996.P8391669492772722932

/-! ## A039996.P15051600062150395711

`A039997(A142342(n+1))`
-/

namespace A039996.P15051600062150395711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A142342 (n + 1)).toNat

end

end A039996.P15051600062150395711

/-!
# A039997: Number of distinct primes which occur as substrings of the digits of n.

The programs for A039997, there is no canonical definition to state claims against.
-/

/-! ## A039997.P16349286029090610189

`A035232(n+1)^A039995(7^A039995(n+1)+1)`
-/

namespace A039997.P16349286029090610189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035232 (n + 1) : ℚ) ^ (A039995 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A039995 (n + 1) : ℤ) + 1)).toNat : ℤ)

end

end A039997.P16349286029090610189

/-! ## A039997.P9446174214017671233

`A039995(A004719(n+1)%A219178(3*n+4))`
-/

namespace A039997.P9446174214017671233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (Int.tmod (A004719 (n + 1)) (A219178 (3 * n + 4))).toNat

end

end A039997.P9446174214017671233

/-! ## A039997.P5554929129630062988

`A039995(A118759(n)+1)`
-/

namespace A039997.P5554929129630062988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A118759 n + 1).toNat

end

end A039997.P5554929129630062988

/-! ## A039997.P14045446623516689309

`A039995(xor(1, 2*n)-A118759(n))`
-/

namespace A039997.P14045446623516689309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 ((Nat.xor 1 (2 * n) : ℤ) - A118759 n).toNat

end

end A039997.P14045446623516689309

/-! ## A039997.P1464161580615736899

`A039995(A005408(n)-A118759(n))`
-/

namespace A039997.P1464161580615736899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A005408 n - A118759 n).toNat

end

end A039997.P1464161580615736899

/-! ## A039997.P10545148420215258413

`A039995(A004719(n+1)%A213307(n))`
-/

namespace A039997.P10545148420215258413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (Int.tmod (A004719 (n + 1)) (A213307 n)).toNat

end

end A039997.P10545148420215258413

/-! ## A039997.P15269577808222457502

`A039995(n+1)-A000007(A096582(n+1))`
-/

namespace A039997.P15269577808222457502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (n + 1) - A000007 (A096582 (n + 1)).toNat

end

end A039997.P15269577808222457502

/-! ## A039997.P9561483958427974840

`and(A039995(n+1), A137029(n+1))`
-/

namespace A039997.P9561483958427974840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039995 (n + 1)) (A137029 (n + 1))

end

end A039997.P9561483958427974840

/-! ## A039997.P1173724310982036062

`and(A039995(n+1), A136973(n+1))`
-/

namespace A039997.P1173724310982036062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039995 (n + 1)) (A136973 (n + 1))

end

end A039997.P1173724310982036062

/-! ## A039997.P16217358556535629043

`A039995(A010051(A205956(n+1))+n)`
-/

namespace A039997.P16217358556535629043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A010051 (A205956 (n + 1)).toNat + (n : ℤ)).toNat

end

end A039997.P16217358556535629043

/-!
# A039998: Primes embedded in prime(n).

The programs for A039998, there is no canonical definition to state claims against.
-/

/-! ## A039998.P2945875598761379865

`A039999(p?[xor(1, n)])`
-/

namespace A039998.P2945875598761379865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A039998.P2945875598761379865

/-! ## A039998.P16869059127748941430

`A039999(Δ[A007504(n)])`
-/

namespace A039998.P16869059127748941430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (f1 (n + 1) - f1 n).toNat

end

end A039998.P16869059127748941430

/-! ## A039998.P16649552283089680668

`A039999(record[A051698(n)])`
-/

namespace A039998.P16649552283089680668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039998.P16649552283089680668

/-! ## A039998.P7007602824614267579

`A039999(A000040(n+1))`
-/

namespace A039998.P7007602824614267579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A000040 (n + 1)).toNat

end

end A039998.P7007602824614267579

/-! ## A039998.P11638265621009527479

`A039999(A004087(n+1))`
-/

namespace A039998.P11638265621009527479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A004087 (n + 1)).toNat

end

end A039998.P11638265621009527479

/-! ## A039998.P13555919699839305835

`A039999(A028906(n+1))`
-/

namespace A039998.P13555919699839305835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A028906 (n + 1)).toNat

end

end A039998.P13555919699839305835

/-! ## A039998.P15437840417882821537

`A039999(A063884(n+1))`
-/

namespace A039998.P15437840417882821537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A063884 (n + 1)).toNat

end

end A039998.P15437840417882821537

/-! ## A039998.P5387784377484045310

`A039999(A063904(n+1))`
-/

namespace A039998.P5387784377484045310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A063904 (n + 1)).toNat

end

end A039998.P5387784377484045310

/-! ## A039998.P6627108080860582658

`A039999(A008578(n+2))`
-/

namespace A039998.P6627108080860582658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A008578 (n + 2)).toNat

end

end A039998.P6627108080860582658

/-! ## A039998.P8863402871697503043

`A039999(A182986(n+2))`
-/

namespace A039998.P8863402871697503043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A182986 (n + 2)).toNat

end

end A039998.P8863402871697503043

/-! ## A039998.P3423009682478425375

`A039999(record[A006530(n+2)])`
-/

namespace A039998.P3423009682478425375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039998.P3423009682478425375

/-! ## A039998.P6863432953332513926

`A039999(record[A014963(n+2)])`
-/

namespace A039998.P6863432953332513926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039998.P6863432953332513926

/-! ## A039998.P4233167237751122163

`A039999(record[A020639(n+2)])`
-/

namespace A039998.P4233167237751122163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039998.P4233167237751122163

/-! ## A039998.P17537816663383500103

`A039999(eq[1, A010051(n+1)]+1)`
-/

namespace A039998.P17537816663383500103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A039998.P17537816663383500103

/-! ## A039998.P6336945099268451071

`A039999(eq[2, A000005(n+1)]+1)`
-/

namespace A039998.P6336945099268451071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A039998.P6336945099268451071

/-! ## A039998.P7972277317621433479

`A039999(eq[n, A000010(n+1)]+1)`
-/

namespace A039998.P7972277317621433479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A039998.P7972277317621433479

/-! ## A039998.P13783677215772564247

`A039999(A007504(n+1)-A007504(n))`
-/

namespace A039998.P13783677215772564247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A007504 (n + 1) - A007504 n).toNat

end

end A039998.P13783677215772564247

/-! ## A039998.P6300268391293647491

`A039999(A101989(n+1))`
-/

namespace A039998.P6300268391293647491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A101989 (n + 1)).toNat

end

end A039998.P6300268391293647491

/-! ## A039998.P14474200552160018946

`A039999(A083190(n+2))`
-/

namespace A039998.P14474200552160018946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A083190 (n + 2)).toNat

end

end A039998.P14474200552160018946

/-!
# A039999: Number of permutations of digits of n which yield distinct primes.

The programs for A039999, there is no canonical definition to state claims against.
-/

/-! ## A039999.P11375671824483312187

`A047726(n+1)-A086150(n+1)`
-/

namespace A039999.P11375671824483312187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (n + 1) - A086150 (n + 1)

end

end A039999.P11375671824483312187

/-! ## A039999.P4282462712945956274

`A276716(n+1)/∑{digits}[n+1, #]-A086150(n+1)`
-/

namespace A039999.P4282462712945956274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) - (A086150 (n + 1) : ℚ)

end

end A039999.P4282462712945956274

/-! ## A039999.P1057756251198813542

`A276716(n+1)/Δ[A037123(n)]-A086150(n+1)`
-/

namespace A039999.P1057756251198813542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ) - (A086150 (n + 1) : ℚ)

end

end A039999.P1057756251198813542

/-! ## A039999.P14122555123995956600

`A276716(n+1)/A007953(n+1)-A086150(n+1)`
-/

namespace A039999.P14122555123995956600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / (A007953 (n + 1) : ℚ) - (A086150 (n + 1) : ℚ)

end

end A039999.P14122555123995956600

/-! ## A039999.P11721452094044310182

`A276716(n+1)/A062329(A057169(n+1))-A086150(n+1)`
-/

namespace A039999.P11721452094044310182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / (A062329 (A057169 (n + 1)).toNat : ℚ) - (A086150 (n + 1) : ℚ)

end

end A039999.P11721452094044310182

/-! ## A039999.P2314504133179925269

`A262988(n+1)%A117768(n)`
-/

namespace A039999.P2314504133179925269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262988 (n + 1)) (A117768 n)

end

end A039999.P2314504133179925269

/-! ## A039999.P4968288059612697681

`A002828(n²*A262988(n+1))`
-/

namespace A039999.P4968288059612697681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 ((n ^ 2 : ℤ) * A262988 (n + 1)).toNat

end

end A039999.P4968288059612697681

/-! ## A039999.P8291560012594163247

`A002828(n*n*A262988(n+1))`
-/

namespace A039999.P8291560012594163247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 ((n : ℤ) * ((n : ℤ) * A262988 (n + 1))).toNat

end

end A039999.P8291560012594163247

/-! ## A039999.P4660232587923066679

`A262988(n+1)^A000034((n-2)²)`
-/

namespace A039999.P4660232587923066679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262988 (n + 1) : ℚ) ^ (A000034 (((n : ℤ) - 2) ^ 2).toNat : ℤ)

end

end A039999.P4660232587923066679

/-! ## A039999.P657200576528212785

`A262988(A006127(A264668(n))+n)`
-/

namespace A039999.P657200576528212785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (A006127 (A264668 n).toNat + (n : ℤ)).toNat

end

end A039999.P657200576528212785

/-! ## A039999.P6315539893019637326

`A090329(A007918(n))*A262988(n+1)`
-/

namespace A039999.P6315539893019637326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090329 (A007918 n).toNat * A262988 (n + 1)

end

end A039999.P6315539893019637326

/-! ## A039999.P4561004286863147408

`A109035(A109035(n))*A262988(n+1)`
-/

namespace A039999.P4561004286863147408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109035 (A109035 n).toNat * A262988 (n + 1)

end

end A039999.P4561004286863147408

/-! ## A039999.P2093196447748248360

`A262988(n+1)^A014963(A132106(n))`
-/

namespace A039999.P2093196447748248360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262988 (n + 1) : ℚ) ^ (A014963 (A132106 n).toNat : ℤ)

end

end A039999.P2093196447748248360

/-! ## A039999.P15932634678534794527

`and(A016777(A160164(n)), A262988(n+1))`
-/

namespace A039999.P15932634678534794527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016777 (A160164 n).toNat) (A262988 (n + 1))

end

end A039999.P15932634678534794527

/-! ## A039999.P17479471288581657885

`A262988(n+1)^A014963(A000124(n+3)+3)`
-/

namespace A039999.P17479471288581657885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262988 (n + 1) : ℚ) ^ (A014963 (A000124 (n + 3) + 3).toNat : ℤ)

end

end A039999.P17479471288581657885

/-! ## A039999.P8705094409362185679

`∑{d}[n+1, A151909(#-1)*A262988((n+1)/#)]`
-/

namespace A039999.P8705094409362185679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A151909 (d - 1) * A262988 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A039999.P8705094409362185679

/-! ## A039999.P6960625799603773916

`and(A148930(n-A262988(n+1)), A262988(n+1))`
-/

namespace A039999.P6960625799603773916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148930 ((n : ℤ) - A262988 (n + 1)).toNat) (A262988 (n + 1))

end

end A039999.P6960625799603773916

/-! ## A039999.P7361349309975570502

`A262988(and(1, A148528(n))+n)`
-/

namespace A039999.P7361349309975570502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (Int.land 1 (A148528 n) + (n : ℤ)).toNat

end

end A039999.P7361349309975570502

/-! ## A039999.P13503125167343246682

`and(A148524(n), A262988(n+1))`
-/

namespace A039999.P13503125167343246682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148524 n) (A262988 (n + 1))

end

end A039999.P13503125167343246682

/-! ## A039999.P17189098339761238026

`and(A148930(n), A262988(n+1))`
-/

namespace A039999.P17189098339761238026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148930 n) (A262988 (n + 1))

end

end A039999.P17189098339761238026

