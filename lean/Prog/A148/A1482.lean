import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025

/-!
# A148200: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148200, there is no canonical definition to state claims against.
-/

/-! ## A148200.P18081969501321680915

`A226190(A148619(n)+1)`
-/

namespace A148200.P18081969501321680915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A148619 n + 1).toNat

end

end A148200.P18081969501321680915

/-! ## A148200.P12407031021631135946

`A261585(A026151(n)*A079000(n+1))`
-/

namespace A148200.P12407031021631135946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A026151 n * A079000 (n + 1)).toNat

end

end A148200.P12407031021631135946

/-! ## A148200.P8333887862295193831

`A279552(n)+A219864(A360890(2*n))`
-/

namespace A148200.P8333887862295193831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279552 n + A219864 (A360890 (2 * n)).toNat

end

end A148200.P8333887862295193831

/-!
# A148201: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148201, there is no canonical definition to state claims against.
-/

/-! ## A148201.P9768299885529564258

`or(A148200(n), A284977(A047749(n+1)))`
-/

namespace A148201.P9768299885529564258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148200 n) (A284977 (A047749 (n + 1)).toNat)

end

end A148201.P9768299885529564258

/-! ## A148201.P9665521516783567326

`or(A148200(n), A284977(A004111(n+2)))`
-/

namespace A148201.P9665521516783567326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148200 n) (A284977 (A004111 (n + 2)).toNat)

end

end A148201.P9665521516783567326

/-!
# A148202: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148202, there is no canonical definition to state claims against.
-/

/-! ## A148202.P16508683739571681815

`A289497(A148486(n+1))`
-/

namespace A148202.P16508683739571681815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A148486 (n + 1)).toNat

end

end A148202.P16508683739571681815

/-! ## A148202.P2310777106988818679

`A070965(A006318(n))+A014335(n)`
-/

namespace A148202.P2310777106988818679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070965 (A006318 n).toNat + A014335 n

end

end A148202.P2310777106988818679

/-! ## A148202.P17644548430207413991

`A077766(A150072(n)+A150058(n))`
-/

namespace A148202.P17644548430207413991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (A150072 n + A150058 n).toNat

end

end A148202.P17644548430207413991

/-! ## A148202.P7411904954510296724

`A157271(A148206(n)+A148194(n))`
-/

namespace A148202.P7411904954510296724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148206 n + A148194 n).toNat

end

end A148202.P7411904954510296724

/-!
# A148203: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148203, there is no canonical definition to state claims against.
-/

/-! ## A148203.P12724533547473238896

`A108954(or(n, A109499(n)))`
-/

namespace A148203.P12724533547473238896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor (n : ℤ) (A109499 n)).toNat

end

end A148203.P12724533547473238896

/-! ## A148203.P3668462901307596519

`A148246(n)-A337509(ceil(2^(n-1)))`
-/

namespace A148203.P3668462901307596519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148246 n - A337509 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A148203.P3668462901307596519

/-! ## A148203.P9454969165047034046

`A108954(A015521(n)+Δ[p?[4*n+1]]/4)`
-/

namespace A148203.P9454969165047034046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (SequenceMachineLib.roundAway ((A015521 n : ℚ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 4)).toNat

end

end A148203.P9454969165047034046

/-! ## A148203.P17211631359070981287

`A108954(A108954(n+1)+A015521(n))`
-/

namespace A148203.P17211631359070981287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A108954 (n + 1) + A015521 n).toNat

end

end A148203.P17211631359070981287

/-!
# A148204: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148204, there is no canonical definition to state claims against.
-/

/-! ## A148204.P6404475073367985953

`A229301(round(sqrt(A361548(n))))`
-/

namespace A148204.P6404475073367985953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (SequenceMachineLib.roundAway (Real.sqrt (A361548 n : ℝ))).toNat

end

end A148204.P6404475073367985953

/-! ## A148204.P794663188850842461

`round(A014681(A007318(∑[4*n]+1)+1)/(n+1))`
-/

namespace A148204.P794663188850842461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014681 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat : ℚ) / (n + 1 : ℚ))

end

end A148204.P794663188850842461

/-! ## A148204.P1743402458124879387

`A267618(n+1)+A037952(A185354(n))`
-/

namespace A148204.P1743402458124879387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267618 (n + 1) + A037952 (A185354 n).toNat

end

end A148204.P1743402458124879387

/-! ## A148204.P1053874087492165688

`A264749(A177510(2*n+1)-A264749(2*n))`
-/

namespace A148204.P1053874087492165688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A177510 (2 * n + 1) - A264749 (2 * n)).toNat

end

end A148204.P1053874087492165688

/-!
# A148205: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, -1, 0), (1, 1, -1)}.

The programs for A148205, there is no canonical definition to state claims against.
-/

/-! ## A148205.P8481571117986144140

`A264749(3*A148876(n))`
-/

namespace A148205.P8481571117986144140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (3 * A148876 n).toNat

end

end A148205.P8481571117986144140

/-! ## A148205.P8048346579491311051

`A247623(n)+A059995(A038748(n+1))`
-/

namespace A148205.P8048346579491311051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247623 n + A059995 (A038748 (n + 1)).toNat

end

end A148205.P8048346579491311051

/-! ## A148205.P4527061748739021938

`A038142(n+1)-A005614(A216688(n))`
-/

namespace A148205.P4527061748739021938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038142 (n + 1) - A005614 (A216688 n).toNat

end

end A148205.P4527061748739021938

/-! ## A148205.P11759705266184311811

`A038142(n+1)-A305435(A085945(2*(n+1)))`
-/

namespace A148205.P11759705266184311811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038142 (n + 1) - A305435 (A085945 (2 * (n + 1))).toNat

end

end A148205.P11759705266184311811

/-!
# A148206: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148206, there is no canonical definition to state claims against.
-/

/-! ## A148206.P14756119668891212014

`A107037(A148166(n))`
-/

namespace A148206.P14756119668891212014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (A148166 n).toNat

end

end A148206.P14756119668891212014

/-! ## A148206.P9561428215870283880

`A126257(A151454(n))+1`
-/

namespace A148206.P9561428215870283880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A151454 n).toNat + 1

end

end A148206.P9561428215870283880

/-! ## A148206.P4150393822270654614

`A126257(A148209(n)+A148207(n))`
-/

namespace A148206.P4150393822270654614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A148209 n + A148207 n).toNat

end

end A148206.P4150393822270654614

/-! ## A148206.P9037962668519879466

`A126257(A148210(n)+A148207(n))`
-/

namespace A148206.P9037962668519879466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A148210 n + A148207 n).toNat

end

end A148206.P9037962668519879466

/-!
# A148207: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148207, there is no canonical definition to state claims against.
-/

/-! ## A148207.P13467527084512625965

`A248180(or(n, A148701(n)))`
-/

namespace A148207.P13467527084512625965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (Int.lor (n : ℤ) (A148701 n)).toNat

end

end A148207.P13467527084512625965

/-! ## A148207.P13712859264948579568

`A148693(n)-A126257(A148690(n))`
-/

namespace A148207.P13712859264948579568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148693 n - A126257 (A148690 n).toNat

end

end A148207.P13712859264948579568

/-! ## A148207.P17380472180784352570

`A148694(n)-A126257(A148690(n))`
-/

namespace A148207.P17380472180784352570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148694 n - A126257 (A148690 n).toNat

end

end A148207.P17380472180784352570

/-!
# A148208: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148208, there is no canonical definition to state claims against.
-/

/-! ## A148208.P923837259411272172

`A171511(A001462(n!))`
-/

namespace A148208.P923837259411272172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171511 (A001462 (Nat.factorial n)).toNat

end

end A148208.P923837259411272172

/-! ## A148208.P14723837201536544309

`A081753(10*A035349(n))`
-/

namespace A148208.P14723837201536544309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (10 * A035349 n).toNat

end

end A148208.P14723837201536544309

/-! ## A148208.P7904099078755185033

`A110656(A348746(n+1)+A112657(n))`
-/

namespace A148208.P7904099078755185033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A348746 (n + 1) + A112657 n).toNat

end

end A148208.P7904099078755185033

/-!
# A148209: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148209, there is no canonical definition to state claims against.
-/

/-! ## A148209.P12835052507585784000

`A004525(A148211(n)+A148208(n))`
-/

namespace A148209.P12835052507585784000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A148211 n + A148208 n).toNat

end

end A148209.P12835052507585784000

/-! ## A148209.P8664378695999960032

`A004526(A148211(n)+A148208(n))`
-/

namespace A148209.P8664378695999960032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148211 n + A148208 n).toNat

end

end A148209.P8664378695999960032

/-! ## A148209.P10777316425785793633

`A123108(A148211(n)+A148208(n))`
-/

namespace A148209.P10777316425785793633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A148211 n + A148208 n).toNat

end

end A148209.P10777316425785793633

/-! ## A148209.P7589980556333381938

`A148210(n)-A014025(A027377(n))`
-/

namespace A148209.P7589980556333381938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148210 n - A014025 (A027377 n).toNat

end

end A148209.P7589980556333381938

/-! ## A148209.P3232846831453605404

`A148210(n)-A107846(A000244(n))`
-/

namespace A148209.P3232846831453605404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148210 n - A107846 (A000244 n).toNat

end

end A148209.P3232846831453605404

/-!
# A148210: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148210, there is no canonical definition to state claims against.
-/

/-! ## A148210.P5548534600038037922

`A148209(n)+A014025(A027377(n))`
-/

namespace A148210.P5548534600038037922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148209 n + A014025 (A027377 n).toNat

end

end A148210.P5548534600038037922

/-! ## A148210.P589213065810295386

`A148209(n)+A107846(A000244(n))`
-/

namespace A148210.P589213065810295386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148209 n + A107846 (A000244 n).toNat

end

end A148210.P589213065810295386

/-! ## A148210.P17129007657362524063

`A065033(A148211(n)+A148208(n))`
-/

namespace A148210.P17129007657362524063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A148211 n + A148208 n).toNat

end

end A148210.P17129007657362524063

/-! ## A148210.P5068611163032009502

`A257994(A001075(n))+A148209(n)`
-/

namespace A148210.P5068611163032009502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A001075 n).toNat + A148209 n

end

end A148210.P5068611163032009502

/-! ## A148210.P13151378874938252014

`A181154(A004709(2*n+3))+A148209(n)`
-/

namespace A148210.P13151378874938252014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181154 (A004709 (2 * n + 3)).toNat + A148209 n

end

end A148210.P13151378874938252014

/-!
# A148211: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148211, there is no canonical definition to state claims against.
-/

/-! ## A148211.P5104745825307899336

`A248180(A151454(n))`
-/

namespace A148211.P5104745825307899336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A151454 n).toNat

end

end A148211.P5104745825307899336

/-! ## A148211.P13815192758806753185

`A126257(A194691(n)+1)`
-/

namespace A148211.P13815192758806753185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A194691 n + 1).toNat

end

end A148211.P13815192758806753185

/-! ## A148211.P4734941232053078153

`ceil(A194691(A004869(n+1))/2)`
-/

namespace A148211.P4734941232053078153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A194691 (A004869 (n + 1)).toNat : ℚ) / 2⌉

end

end A148211.P4734941232053078153

/-! ## A148211.P3582253347279091390

`A126257(A148701(n)+A051340(n))`
-/

namespace A148211.P3582253347279091390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A148701 n + A051340 n).toNat

end

end A148211.P3582253347279091390

/-!
# A148212: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A148212, there is no canonical definition to state claims against.
-/

/-! ## A148212.P3188901136961862270

`A065033(floor(A150412(n)/A233583(n+1)))`
-/

namespace A148212.P3188901136961862270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌊(A150412 n : ℚ) / (A233583 (n + 1) : ℚ)⌋.toNat

end

end A148212.P3188901136961862270

/-! ## A148212.P10766942389517817645

`A008618(8*A143330(n))`
-/

namespace A148212.P10766942389517817645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (8 * A143330 n).toNat

end

end A148212.P10766942389517817645

/-! ## A148212.P8882928380316125671

`A008618(8*A171199(n))`
-/

namespace A148212.P8882928380316125671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (8 * A171199 n).toNat

end

end A148212.P8882928380316125671

/-! ## A148212.P2638185663719399026

`A055930(A212380(n+2))+1`
-/

namespace A148212.P2638185663719399026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A212380 (n + 2)).toNat + 1

end

end A148212.P2638185663719399026

/-!
# A148213: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, 1, -1)}.

The programs for A148213, there is no canonical definition to state claims against.
-/

/-! ## A148213.P15470328152083576752

`A148217(n)-A193470(A193477(n))`
-/

namespace A148213.P15470328152083576752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148217 n - A193470 (A193477 n).toNat

end

end A148213.P15470328152083576752

/-! ## A148213.P17138244667012760568

`A148218(n)-A193470(A193477(n))`
-/

namespace A148213.P17138244667012760568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148218 n - A193470 (A193477 n).toNat

end

end A148213.P17138244667012760568

/-! ## A148213.P14102174708617084180

`xor(A010051(A147255(n+1)), A132441(n+1))`
-/

namespace A148213.P14102174708617084180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A147255 (n + 1)).toNat) (A132441 (n + 1))

end

end A148213.P14102174708617084180

/-!
# A148214: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 0), (0, 1, 1), (1, -1, -1)}.

The programs for A148214, there is no canonical definition to state claims against.
-/

/-! ## A148214.P17054119708320118606

`A005843(A148118(n))-A001006(n)`
-/

namespace A148214.P17054119708320118606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A148118 n).toNat - A001006 n

end

end A148214.P17054119708320118606

/-! ## A148214.P12137827788342623603

`A148215(A002998(n))`
-/

namespace A148214.P12137827788342623603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148215 (A002998 n).toNat

end

end A148214.P12137827788342623603

/-! ## A148214.P4391725045269913237

`A148215(A039723(n))`
-/

namespace A148214.P4391725045269913237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148215 (A039723 n).toNat

end

end A148214.P4391725045269913237

/-! ## A148214.P3489379896392178189

`A148215(A046469(n))`
-/

namespace A148214.P3489379896392178189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148215 (A046469 n).toNat

end

end A148214.P3489379896392178189

/-! ## A148214.P2675709048903455470

`A148215(A051022(n))`
-/

namespace A148214.P2675709048903455470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148215 (A051022 n).toNat

end

end A148214.P2675709048903455470

/-!
# A148217: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A148217, there is no canonical definition to state claims against.
-/

/-! ## A148217.P14373725028405541098

`A148218(A002998(n))`
-/

namespace A148217.P14373725028405541098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148218 (A002998 n).toNat

end

end A148217.P14373725028405541098

/-! ## A148217.P12562507323630030826

`A148218(A039723(n))`
-/

namespace A148217.P12562507323630030826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148218 (A039723 n).toNat

end

end A148217.P12562507323630030826

/-! ## A148217.P12626368703206064880

`A148218(A046469(n))`
-/

namespace A148217.P12626368703206064880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148218 (A046469 n).toNat

end

end A148217.P12626368703206064880

/-! ## A148217.P2492761411724074875

`A148218(A051022(n))`
-/

namespace A148217.P2492761411724074875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148218 (A051022 n).toNat

end

end A148217.P2492761411724074875

/-! ## A148217.P18038767119797785991

`A148218(A056142(n))`
-/

namespace A148217.P18038767119797785991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148218 (A056142 n).toNat

end

end A148217.P18038767119797785991

/-!
# A148219: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (0, 1, 1), (1, -1, -1)}.

The programs for A148219, there is no canonical definition to state claims against.
-/

/-! ## A148219.P3001822352596916636

`A148220(A002998(n))`
-/

namespace A148219.P3001822352596916636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148220 (A002998 n).toNat

end

end A148219.P3001822352596916636

/-! ## A148219.P4441164730042385766

`A148220(A024664(n))`
-/

namespace A148219.P4441164730042385766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148220 (A024664 n).toNat

end

end A148219.P4441164730042385766

/-! ## A148219.P8130661606632692132

`A148220(A039723(n))`
-/

namespace A148219.P8130661606632692132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148220 (A039723 n).toNat

end

end A148219.P8130661606632692132

/-! ## A148219.P12474070256660196056

`A148220(A046469(n))`
-/

namespace A148219.P12474070256660196056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148220 (A046469 n).toNat

end

end A148219.P12474070256660196056

/-! ## A148219.P14219962273509245852

`A148220(A051022(n))`
-/

namespace A148219.P14219962273509245852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148220 (A051022 n).toNat

end

end A148219.P14219962273509245852

/-!
# A148223: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A148223, there is no canonical definition to state claims against.
-/

/-! ## A148223.P16805638921904851842

`A193470(A193477(n))+A148217(n)`
-/

namespace A148223.P16805638921904851842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193470 (A193477 n).toNat + A148217 n

end

end A148223.P16805638921904851842

/-! ## A148223.P14301727800846127990

`A193470(A193477(n))+A148218(n)`
-/

namespace A148223.P14301727800846127990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193470 (A193477 n).toNat + A148218 n

end

end A148223.P14301727800846127990

/-!
# A148224: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (0, -1, -1), (1, 0, 0)}.

The programs for A148224, there is no canonical definition to state claims against.
-/

/-! ## A148224.P11150520849588340906

`A148225(A073789(n))`
-/

namespace A148224.P11150520849588340906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148225 (A073789 n).toNat

end

end A148224.P11150520849588340906

/-! ## A148224.P12342188571049159144

`A148225(A171644(n))`
-/

namespace A148224.P12342188571049159144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148225 (A171644 n).toNat

end

end A148224.P12342188571049159144

/-! ## A148224.P6902762982036331685

`A148225(A004869(n+1))`
-/

namespace A148224.P6902762982036331685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148225 (A004869 (n + 1)).toNat

end

end A148224.P6902762982036331685

/-! ## A148224.P13184025935326836872

`A148225(A004880(n+1))`
-/

namespace A148224.P13184025935326836872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148225 (A004880 (n + 1)).toNat

end

end A148224.P13184025935326836872

/-!
# A148226: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, -1), (1, 1, -1)}.

The programs for A148226, there is no canonical definition to state claims against.
-/

/-! ## A148226.P1695635900758006461

`or(A148190(n), A243148(A221270(n+1)))`
-/

namespace A148226.P1695635900758006461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148190 n) (A243148 (A221270 (n + 1)).toNat)

end

end A148226.P1695635900758006461

/-!
# A148227: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148227, there is no canonical definition to state claims against.
-/

/-! ## A148227.P7820427436770860519

`xor(floor(n/4), A347625(ceil(2^(n-1))))`
-/

namespace A148227.P7820427436770860519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℚ) / 4⌋ (A347625 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A148227.P7820427436770860519

/-! ## A148227.P1159526269701225340

`A096603(A148036(n))`
-/

namespace A148227.P1159526269701225340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (A148036 n).toNat

end

end A148227.P1159526269701225340

/-! ## A148227.P579057933157210508

`A096603(A148037(n))`
-/

namespace A148227.P579057933157210508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (A148037 n).toNat

end

end A148227.P579057933157210508

/-!
# A148228: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148228, there is no canonical definition to state claims against.
-/

/-! ## A148228.P16924112961740666729

`A191984(a(n-1)+3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A148228.P16924112961740666729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A191984 (a (n - 1) + 3).toNat

end

end A148228.P16924112961740666729

/-! ## A148228.P9416398279516681851

`A005041(A005650(n))`
-/

namespace A148228.P9416398279516681851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A005650 n).toNat

end

end A148228.P9416398279516681851

/-! ## A148228.P12696208336850797637

`A108839(A149345(n))`
-/

namespace A148228.P12696208336850797637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108839 (A149345 n).toNat

end

end A148228.P12696208336850797637

/-!
# A148229: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (1, -1, 1), (1, 0, 0)}.

The programs for A148229, there is no canonical definition to state claims against.
-/

/-! ## A148229.P6040956654589000620

`A248563(A216435(n))+A004198(2*n+3)`
-/

namespace A148229.P6040956654589000620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248563 (A216435 n).toNat + A004198 (2 * n + 3)

end

end A148229.P6040956654589000620

/-! ## A148229.P13055666937566762559

`A279199(n)+A003557(A151061(n))`
-/

namespace A148229.P13055666937566762559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279199 n + A003557 (A151061 n).toNat

end

end A148229.P13055666937566762559

/-! ## A148229.P1122233402427938633

`A170984(A148204(n))+A148228(n)`
-/

namespace A148229.P1122233402427938633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170984 (A148204 n).toNat + A148228 n

end

end A148229.P1122233402427938633

/-!
# A148230: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148230, there is no canonical definition to state claims against.
-/

/-! ## A148230.P17436539921877654180

`A259813(n+1)-A003056(A149403(n))`
-/

namespace A148230.P17436539921877654180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259813 (n + 1) - A003056 (A149403 n).toNat

end

end A148230.P17436539921877654180

/-! ## A148230.P8574875509242538246

`A213181(A336675(n))+A213172(A336675(n))`
-/

namespace A148230.P8574875509242538246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A336675 n).toNat + A213172 (A336675 n).toNat

end

end A148230.P8574875509242538246

/-! ## A148230.P9478022111920392602

`A225729(a(n-1)+3)+3` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A148230.P9478022111920392602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A225729 (a (n - 1) + 3).toNat + 3

end

end A148230.P9478022111920392602

/-!
# A148231: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148231, there is no canonical definition to state claims against.
-/

/-! ## A148231.P9595468548619285142

`A247911(A036374(n)*A288255(n+9))`
-/

namespace A148231.P9595468548619285142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A036374 n * A288255 (n + 9)).toNat

end

end A148231.P9595468548619285142

/-! ## A148231.P11939936022547653535

`∑[A309348(2-(4/2-a(n-1)-a(n-2)))]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A148231.P11939936022547653535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A309348 (SequenceMachineLib.roundAway (2 - ((4 : ℚ) / 2 - (f1 (n - 1) : ℚ) - (f1 (n - 2) : ℚ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148231.P11939936022547653535

/-! ## A148231.P5030289729506058572

`A238890(A026574(n))`
-/

namespace A148231.P5030289729506058572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238890 (A026574 n).toNat

end

end A148231.P5030289729506058572

/-!
# A148232: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148232, there is no canonical definition to state claims against.
-/

/-! ## A148232.P9969416178241215085

`A299106(n)+A259572(A137952(n))`
-/

namespace A148232.P9969416178241215085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299106 n + A259572 (A137952 n).toNat

end

end A148232.P9969416178241215085

/-! ## A148232.P3383038805720660208

`A008617(A154690(3*n)+A000108(n+2))`
-/

namespace A148232.P3383038805720660208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A154690 (3 * n) + A000108 (n + 2)).toNat

end

end A148232.P3383038805720660208

/-! ## A148232.P13291171129520001469

`A330943(A073192(n))`
-/

namespace A148232.P13291171129520001469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330943 (A073192 n).toNat

end

end A148232.P13291171129520001469

/-!
# A148233: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, -1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148233, there is no canonical definition to state claims against.
-/

/-! ## A148233.P6519074719598978927

`A148243(n)-A081153(A081172(n))`
-/

namespace A148233.P6519074719598978927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148243 n - A081153 (A081172 n).toNat

end

end A148233.P6519074719598978927

/-! ## A148233.P9268613535214143958

`A148244(n)-A081153(A081172(n))`
-/

namespace A148233.P9268613535214143958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148244 n - A081153 (A081172 n).toNat

end

end A148233.P9268613535214143958

/-! ## A148233.P4524957539071331437

`A289501(n)+A000120(A076281(n+1))`
-/

namespace A148233.P4524957539071331437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289501 n + A000120 (A076281 (n + 1)).toNat

end

end A148233.P4524957539071331437

/-!
# A148234: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148234, there is no canonical definition to state claims against.
-/

/-! ## A148234.P18156794733782498784

`A209638(or(1, 2^n)-n-∏{e}[n+1, #+1])`
-/

namespace A148234.P18156794733782498784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 ((Nat.lor 1 (2 ^ n) : ℤ) - (n : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A148234.P18156794733782498784

/-! ## A148234.P12622077125947031532

`A023193(A149518(n))`
-/

namespace A148234.P12622077125947031532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149518 n).toNat

end

end A148234.P12622077125947031532

/-! ## A148234.P15867929910696565075

`A361784(A148212(n))`
-/

namespace A148234.P15867929910696565075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361784 (A148212 n).toNat

end

end A148234.P15867929910696565075

/-!
# A148235: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148235, there is no canonical definition to state claims against.
-/

/-! ## A148235.P10896083119945081042

`A164923(a(n-1)+1)-1` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A148235.P10896083119945081042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A164923 (a (n - 1) + 1).toNat - 1

end

end A148235.P10896083119945081042

/-! ## A148235.P4274150874957699142

`A212652(A293962(n))`
-/

namespace A148235.P4274150874957699142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (A293962 n).toNat

end

end A148235.P4274150874957699142

/-! ## A148235.P716432502740961039

`A229618(A000719(n)+1)`
-/

namespace A148235.P716432502740961039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229618 (A000719 n + 1).toNat

end

end A148235.P716432502740961039

/-!
# A148236: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148236, there is no canonical definition to state claims against.
-/

/-! ## A148236.P1999652358093087760

`char[4]+floor(A066888(4^n-1)/2)+1`
-/

namespace A148236.P1999652358093087760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (⌊(A066888 (4 ^ n - 1) : ℚ) / 2⌋ + 1)

end

end A148236.P1999652358093087760

/-! ## A148236.P4488054125482034691

`A088458(A176074(n))`
-/

namespace A148236.P4488054125482034691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088458 (A176074 n).toNat

end

end A148236.P4488054125482034691

/-! ## A148236.P2520030831639827392

`A139555(A149212(n))`
-/

namespace A148236.P2520030831639827392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 (A149212 n).toNat

end

end A148236.P2520030831639827392

/-!
# A148237: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148237, there is no canonical definition to state claims against.
-/

/-! ## A148237.P15365165677921947502

`A157271(A148097(n+1))-floor(n/∏{p}[n+1, #])`
-/

namespace A148237.P15365165677921947502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148097 (n + 1)).toNat - ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋

end

end A148237.P15365165677921947502

/-! ## A148237.P11529296241645606629

`A100196(A059284(n))+A036638(n)`
-/

namespace A148237.P11529296241645606629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A059284 n).toNat + A036638 n

end

end A148237.P11529296241645606629

/-! ## A148237.P16788037004266239896

`A317137(A000142(n))+A308767(n)`
-/

namespace A148237.P16788037004266239896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A000142 n).toNat + A308767 n

end

end A148237.P16788037004266239896

/-!
# A148239: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148239, there is no canonical definition to state claims against.
-/

/-! ## A148239.P14948613728358612955

`A148293(n)+A056594(A005021(n))`
-/

namespace A148239.P14948613728358612955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148293 n + A056594 (A005021 n).toNat

end

end A148239.P14948613728358612955

/-! ## A148239.P11932869349464987021

`A000108(n)-A008651(A149365(n))`
-/

namespace A148239.P11932869349464987021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A008651 (A149365 n).toNat

end

end A148239.P11932869349464987021

/-! ## A148239.P6104623740602125858

`A123621(A273716(n+2)+A000013(n))`
-/

namespace A148239.P6104623740602125858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A273716 (n + 2) + A000013 n).toNat

end

end A148239.P6104623740602125858

/-!
# A148240: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148240, there is no canonical definition to state claims against.
-/

/-! ## A148240.P16090343196572447453

`A165924(A135339(n))+A135339(n)`
-/

namespace A148240.P16090343196572447453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165924 (A135339 n).toNat + A135339 n

end

end A148240.P16090343196572447453

/-! ## A148240.P13516815185330019012

`or(A061064(A148226(n)), A148239(n))`
-/

namespace A148240.P13516815185330019012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061064 (A148226 n).toNat) (A148239 n)

end

end A148240.P13516815185330019012

/-! ## A148240.P16044750426210785211

`or(A061064(A321344(n)), A148239(n))`
-/

namespace A148240.P16044750426210785211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061064 (A321344 n).toNat) (A148239 n)

end

end A148240.P16044750426210785211

/-! ## A148240.P8304718850270707494

`A081753(A318151(n+2)+A126322(n))`
-/

namespace A148240.P8304718850270707494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A318151 (n + 2) + A126322 n).toNat

end

end A148240.P8304718850270707494

/-!
# A148241: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (0, -1, 0), (1, 0, 0)}.

The programs for A148241, there is no canonical definition to state claims against.
-/

/-! ## A148241.P17547844920769570088

`∏{e}[7^n, A148242(#)]`
-/

namespace A148241.P17547844920769570088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A148242 (Nat.factorization (f1 n) p)

end

end A148241.P17547844920769570088

/-! ## A148241.P3558541151663500971

`A148242(A073789(n))`
-/

namespace A148241.P3558541151663500971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148242 (A073789 n).toNat

end

end A148241.P3558541151663500971

/-! ## A148241.P17378122353542038367

`A148242(A171644(n))`
-/

namespace A148241.P17378122353542038367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148242 (A171644 n).toNat

end

end A148241.P17378122353542038367

/-! ## A148241.P367507701515473492

`A148242(A004869(n+1))`
-/

namespace A148241.P367507701515473492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148242 (A004869 (n + 1)).toNat

end

end A148241.P367507701515473492

/-!
# A148243: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (0, -1, 1), (1, 0, 0)}.

The programs for A148243, there is no canonical definition to state claims against.
-/

/-! ## A148243.P7006531343432214258

`A148244(A073789(n))`
-/

namespace A148243.P7006531343432214258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148244 (A073789 n).toNat

end

end A148243.P7006531343432214258

/-! ## A148243.P6814273958057665872

`A148244(A171644(n))`
-/

namespace A148243.P6814273958057665872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148244 (A171644 n).toNat

end

end A148243.P6814273958057665872

/-! ## A148243.P13938506358024315015

`A148244(A004869(n+1))`
-/

namespace A148243.P13938506358024315015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148244 (A004869 (n + 1)).toNat

end

end A148243.P13938506358024315015

/-! ## A148243.P16204874673733051438

`A148244(A004880(n+1))`
-/

namespace A148243.P16204874673733051438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148244 (A004880 (n + 1)).toNat

end

end A148243.P16204874673733051438

/-!
# A148245: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148245, there is no canonical definition to state claims against.
-/

/-! ## A148245.P16790837099853098055

`A256502(A148602(n)+1)`
-/

namespace A148245.P16790837099853098055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A148602 n + 1).toNat

end

end A148245.P16790837099853098055

/-! ## A148245.P1723864988211563140

`A000108(n)-A088145(A000571(n))`
-/

namespace A148245.P1723864988211563140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A088145 (A000571 n).toNat

end

end A148245.P1723864988211563140

/-! ## A148245.P17420889734325629559

`A226190(A050535(n)-A173673(n))`
-/

namespace A148245.P17420889734325629559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A050535 n - A173673 n).toNat

end

end A148245.P17420889734325629559

/-!
# A148246: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 0), (1, -1, -1), (1, -1, 1)}.

The programs for A148246, there is no canonical definition to state claims against.
-/

/-! ## A148246.P6107376539800454875

`A148247(A073789(n))`
-/

namespace A148246.P6107376539800454875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148247 (A073789 n).toNat

end

end A148246.P6107376539800454875

/-! ## A148246.P9767539048248110109

`A148247(A171644(n))`
-/

namespace A148246.P9767539048248110109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148247 (A171644 n).toNat

end

end A148246.P9767539048248110109

/-! ## A148246.P13335309007280268393

`A148247(A004869(n+1))`
-/

namespace A148246.P13335309007280268393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148247 (A004869 (n + 1)).toNat

end

end A148246.P13335309007280268393

/-! ## A148246.P5775541341944450731

`A148247(A004880(n+1))`
-/

namespace A148246.P5775541341944450731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148247 (A004880 (n + 1)).toNat

end

end A148246.P5775541341944450731

/-!
# A148248: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, -1, -1), (1, -1, 1)}.

The programs for A148248, there is no canonical definition to state claims against.
-/

/-! ## A148248.P13736521930196992144

`A148249(A073789(n))`
-/

namespace A148248.P13736521930196992144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148249 (A073789 n).toNat

end

end A148248.P13736521930196992144

/-! ## A148248.P4537171296998643868

`A148249(A171644(n))`
-/

namespace A148248.P4537171296998643868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148249 (A171644 n).toNat

end

end A148248.P4537171296998643868

/-! ## A148248.P16872432913136909443

`A148249(A004869(n+1))`
-/

namespace A148248.P16872432913136909443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148249 (A004869 (n + 1)).toNat

end

end A148248.P16872432913136909443

/-! ## A148248.P1044449008498992672

`A148249(A004880(n+1))`
-/

namespace A148248.P1044449008498992672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148249 (A004880 (n + 1)).toNat

end

end A148248.P1044449008498992672

/-!
# A148250: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148250, there is no canonical definition to state claims against.
-/

/-! ## A148250.P4265873726353913876

`A260734(floor(round(A111567(n)/7)/2)+1)`
-/

namespace A148250.P4265873726353913876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (⌊(SequenceMachineLib.roundAway ((A111567 n : ℚ) / 7) : ℚ) / 2⌋ + 1).toNat

end

end A148250.P4265873726353913876

/-! ## A148250.P698851393537186565

`A157271(A212804(n)+A148700(n))`
-/

namespace A148250.P698851393537186565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A212804 n + A148700 n).toNat

end

end A148250.P698851393537186565

/-! ## A148250.P1071274536430671329

`A000108(n)-A056558(A088713(n))`
-/

namespace A148250.P1071274536430671329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A056558 (A088713 n).toNat

end

end A148250.P1071274536430671329

/-! ## A148250.P956028562437507347

`A195185(A000108(n))-A329747(n+1)`
-/

namespace A148250.P956028562437507347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195185 (A000108 n).toNat - A329747 (n + 1)

end

end A148250.P956028562437507347

/-!
# A148251: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, -1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148251, there is no canonical definition to state claims against.
-/

/-! ## A148251.P11079665556291707968

`A251761(n)+A248227(A148570(n))`
-/

namespace A148251.P11079665556291707968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251761 n + A248227 (A148570 n).toNat

end

end A148251.P11079665556291707968

/-! ## A148251.P2085727004742218557

`A308118(n+1)+A248227(A148570(n))`
-/

namespace A148251.P2085727004742218557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308118 (n + 1) + A248227 (A148570 n).toNat

end

end A148251.P2085727004742218557

/-! ## A148251.P2175423411030238694

`A148246(n)+2*A353504(A151827(n+2))`
-/

namespace A148251.P2175423411030238694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148246 n + 2 * A353504 (A151827 (n + 2)).toNat

end

end A148251.P2175423411030238694

/-!
# A148252: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148252, there is no canonical definition to state claims against.
-/

/-! ## A148252.P13798684718427524319

`A000108(n)-A075053(A058681(n))`
-/

namespace A148252.P13798684718427524319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A075053 (A058681 n).toNat

end

end A148252.P13798684718427524319

/-! ## A148252.P7480702255773114213

`A282518(or(A282463(n), A282475(n+1)))`
-/

namespace A148252.P7480702255773114213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282518 (Int.lor (A282463 n) (A282475 (n + 1))).toNat

end

end A148252.P7480702255773114213

/-! ## A148252.P6310159830758612123

`A282518(or(A001227(n+1), A282475(n+1)))`
-/

namespace A148252.P6310159830758612123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282518 (Int.lor (A001227 (n + 1)) (A282475 (n + 1))).toNat

end

end A148252.P6310159830758612123

/-!
# A148253: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148253, there is no canonical definition to state claims against.
-/

/-! ## A148253.P1444138602651706584

`A127757(A191786(n)+A149054(n))`
-/

namespace A148253.P1444138602651706584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A191786 n + A149054 n).toNat

end

end A148253.P1444138602651706584

/-! ## A148253.P1153641294084816790

`A008616(A000108(n)*A195770(n+2))`
-/

namespace A148253.P1153641294084816790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A000108 n * A195770 (n + 2)).toNat

end

end A148253.P1153641294084816790

/-! ## A148253.P10077984298006026786

`A318932(A152225(n))+A033183(A325575(n+1))`
-/

namespace A148253.P10077984298006026786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318932 (A152225 n).toNat + A033183 (A325575 (n + 1)).toNat

end

end A148253.P10077984298006026786

/-!
# A148254: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148254, there is no canonical definition to state claims against.
-/

/-! ## A148254.P13601454591033425087

`A023193(A149315(n))`
-/

namespace A148254.P13601454591033425087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149315 n).toNat

end

end A148254.P13601454591033425087

/-! ## A148254.P8857001832108363261

`A349462(A001006(n))`
-/

namespace A148254.P8857001832108363261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349462 (A001006 n).toNat

end

end A148254.P8857001832108363261

/-! ## A148254.P6825299031296230796

`A349462(A005207(n))`
-/

namespace A148254.P6825299031296230796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349462 (A005207 n).toNat

end

end A148254.P6825299031296230796

/-!
# A148255: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148255, there is no canonical definition to state claims against.
-/

/-! ## A148255.P3469551252917600174

`A000108(n)-A253830(A045633(n))`
-/

namespace A148255.P3469551252917600174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A253830 (A045633 n).toNat

end

end A148255.P3469551252917600174

/-! ## A148255.P17754305116715195013

`A332086(A095062(2*n+3)+A049862(n+1))`
-/

namespace A148255.P17754305116715195013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A095062 (2 * n + 3) + A049862 (n + 1)).toNat

end

end A148255.P17754305116715195013

/-! ## A148255.P12443734988690759807

`A289496(A070766(n+2)+A000005(3*n+2))`
-/

namespace A148255.P12443734988690759807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A070766 (n + 2) + A000005 (3 * n + 2)).toNat

end

end A148255.P12443734988690759807

/-! ## A148255.P1266685156314516850

`A089047(lt[A003963(n+1), A355739(3*n+4)])`
-/

namespace A148255.P1266685156314516850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355739 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089047 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A148255.P1266685156314516850

/-!
# A148257: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148257, there is no canonical definition to state claims against.
-/

/-! ## A148257.P8251600825655277680

`A148258(A055648(n))`
-/

namespace A148257.P8251600825655277680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148258 (A055648 n).toNat

end

end A148257.P8251600825655277680

/-! ## A148257.P15866758432284214413

`A148258(A004874(n+1))`
-/

namespace A148257.P15866758432284214413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148258 (A004874 (n + 1)).toNat

end

end A148257.P15866758432284214413

/-! ## A148257.P246091128821421934

`A148258(A004885(n+1))`
-/

namespace A148257.P246091128821421934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148258 (A004885 (n + 1)).toNat

end

end A148257.P246091128821421934

/-! ## A148257.P16110003716334963827

`A148258(A004896(n+1))`
-/

namespace A148257.P16110003716334963827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148258 (A004896 (n + 1)).toNat

end

end A148257.P16110003716334963827

/-! ## A148257.P8991164512401209147

`A148258(A004907(n+1))`
-/

namespace A148257.P8991164512401209147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148258 (A004907 (n + 1)).toNat

end

end A148257.P8991164512401209147

/-!
# A148260: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148260, there is no canonical definition to state claims against.
-/

/-! ## A148260.P4798131220077932459

`A148261(n)%p?[∑[2^n]]`
-/

namespace A148260.P4798131220077932459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148261 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A148260.P4798131220077932459

/-! ## A148260.P9096113710100485519

`A148262(n)%p?[2^n-5]`
-/

namespace A148260.P9096113710100485519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148262 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A148260.P9096113710100485519

/-! ## A148260.P3130538265399472985

`A033862(A148261(n))`
-/

namespace A148260.P3130538265399472985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148261 n).toNat

end

end A148260.P3130538265399472985

/-!
# A148261: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (0, 1, 1), (1, -1, -1)}.

The programs for A148261, there is no canonical definition to state claims against.
-/

/-! ## A148261.P12135761194225279937

`A148262(A002998(n))`
-/

namespace A148261.P12135761194225279937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148262 (A002998 n).toNat

end

end A148261.P12135761194225279937

/-! ## A148261.P228622601821811542

`A004181(A148262(n))`
-/

namespace A148261.P228622601821811542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A148262 n).toNat

end

end A148261.P228622601821811542

/-! ## A148261.P8654778062596463201

`A148262(A039723(n))`
-/

namespace A148261.P8654778062596463201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148262 (A039723 n).toNat

end

end A148261.P8654778062596463201

/-! ## A148261.P9464808329906115662

`A148262(A046469(n))`
-/

namespace A148261.P9464808329906115662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148262 (A046469 n).toNat

end

end A148261.P9464808329906115662

/-! ## A148261.P4731258240537054481

`A148262(A051022(n))`
-/

namespace A148261.P4731258240537054481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148262 (A051022 n).toNat

end

end A148261.P4731258240537054481

/-!
# A148264: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, -1, -1), (1, 0, 0)}.

The programs for A148264, there is no canonical definition to state claims against.
-/

/-! ## A148264.P8004653801198474517

`A148265(A073789(n))`
-/

namespace A148264.P8004653801198474517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148265 (A073789 n).toNat

end

end A148264.P8004653801198474517

/-! ## A148264.P13336522742418773847

`A148265(A171644(n))`
-/

namespace A148264.P13336522742418773847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148265 (A171644 n).toNat

end

end A148264.P13336522742418773847

/-! ## A148264.P6961620568769876133

`A148265(A004869(n+1))`
-/

namespace A148264.P6961620568769876133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148265 (A004869 (n + 1)).toNat

end

end A148264.P6961620568769876133

/-! ## A148264.P16265394336031317814

`A148265(A004880(n+1))`
-/

namespace A148264.P16265394336031317814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148265 (A004880 (n + 1)).toNat

end

end A148264.P16265394336031317814

/-!
# A148266: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (-1, 1, 1), (1, -1, -1), (1, 0, 0)}.

The programs for A148266, there is no canonical definition to state claims against.
-/

/-! ## A148266.P12077429079433501678

`A185255(∑[n]+2)+A148265(n)`
-/

namespace A148266.P12077429079433501678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A148265 n

end

end A148266.P12077429079433501678

/-!
# A148267: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148267, there is no canonical definition to state claims against.
-/

/-! ## A148267.P1698592965220200265

`A226190(A061070(n+1)*A339296(n+1))`
-/

namespace A148267.P1698592965220200265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A061070 (n + 1) * A339296 (n + 1)).toNat

end

end A148267.P1698592965220200265

/-! ## A148267.P7853378228104352875

`A226190(A157271(n+1)*A339296(n+1))`
-/

namespace A148267.P7853378228104352875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A157271 (n + 1) * A339296 (n + 1)).toNat

end

end A148267.P7853378228104352875

/-! ## A148267.P8065417864542908578

`A226190(A226190(n+1)*A339296(n+1))`
-/

namespace A148267.P8065417864542908578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A226190 (n + 1) * A339296 (n + 1)).toNat

end

end A148267.P8065417864542908578

/-!
# A148268: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148268, there is no canonical definition to state claims against.
-/

/-! ## A148268.P18086046742270519855

`A109680(A148269(n))`
-/

namespace A148268.P18086046742270519855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A148269 n).toNat

end

end A148268.P18086046742270519855

/-! ## A148268.P6927745584937730505

`A109680(A148270(n))`
-/

namespace A148268.P6927745584937730505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A148270 n).toNat

end

end A148268.P6927745584937730505

/-! ## A148268.P18198042176386126452

`A215088(A129130(n))`
-/

namespace A148268.P18198042176386126452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215088 (A129130 n).toNat

end

end A148268.P18198042176386126452

/-!
# A148269: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, -1, 0), (1, 0, 0)}.

The programs for A148269, there is no canonical definition to state claims against.
-/

/-! ## A148269.P5266986985189219466

`A148270(A073789(n))`
-/

namespace A148269.P5266986985189219466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148270 (A073789 n).toNat

end

end A148269.P5266986985189219466

/-! ## A148269.P17091872272285439626

`A148270(A171644(n))`
-/

namespace A148269.P17091872272285439626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148270 (A171644 n).toNat

end

end A148269.P17091872272285439626

/-! ## A148269.P12477295078944447710

`A148270(A345931(n!))`
-/

namespace A148269.P12477295078944447710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148270 (A345931 (Nat.factorial n)).toNat

end

end A148269.P12477295078944447710

/-! ## A148269.P5881514607942174149

`A148270(A004869(n+1))`
-/

namespace A148269.P5881514607942174149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148270 (A004869 (n + 1)).toNat

end

end A148269.P5881514607942174149

/-!
# A148271: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, -1, 1), (1, 0, 0)}.

The programs for A148271, there is no canonical definition to state claims against.
-/

/-! ## A148271.P14888827031681846733

`A148272(A073789(n))`
-/

namespace A148271.P14888827031681846733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148272 (A073789 n).toNat

end

end A148271.P14888827031681846733

/-! ## A148271.P523872657553128448

`A148272(A171644(n))`
-/

namespace A148271.P523872657553128448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148272 (A171644 n).toNat

end

end A148271.P523872657553128448

/-! ## A148271.P12593479491324198681

`A148272(A004869(n+1))`
-/

namespace A148271.P12593479491324198681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148272 (A004869 (n + 1)).toNat

end

end A148271.P12593479491324198681

/-! ## A148271.P9980542758036193921

`A148272(A004880(n+1))`
-/

namespace A148271.P9980542758036193921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148272 (A004880 (n + 1)).toNat

end

end A148271.P9980542758036193921

/-!
# A148273: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148273, there is no canonical definition to state claims against.
-/

/-! ## A148273.P3341650414889526110

`A229618(A089125(n))`
-/

namespace A148273.P3341650414889526110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229618 (A089125 n).toNat

end

end A148273.P3341650414889526110

/-! ## A148273.P1570492525108444779

`A139555(∑[A328441(n)])`
-/

namespace A148273.P1570492525108444779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148273.P1570492525108444779

/-! ## A148273.P3834205190101860633

`A268445(A106519(n+2))`
-/

namespace A148273.P3834205190101860633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268445 (A106519 (n + 2)).toNat

end

end A148273.P3834205190101860633

/-!
# A148274: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148274, there is no canonical definition to state claims against.
-/

/-! ## A148274.P15246685587184921718

`A347624(2^n-eq[0, floor(2*sqrt(n))%2])`
-/

namespace A148274.P15246685587184921718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (2 ^ n - SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A148274.P15246685587184921718

/-! ## A148274.P2775000598008022471

`A277025(A148136(n))`
-/

namespace A148274.P2775000598008022471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277025 (A148136 n).toNat

end

end A148274.P2775000598008022471

/-! ## A148274.P15628628145592535860

`A277025(A148137(n))`
-/

namespace A148274.P15628628145592535860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277025 (A148137 n).toNat

end

end A148274.P15628628145592535860

/-!
# A148275: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (1, -1, 0), (1, 0, 0)}.

The programs for A148275, there is no canonical definition to state claims against.
-/

/-! ## A148275.P10389270565268557492

`A148276(A073789(n))`
-/

namespace A148275.P10389270565268557492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148276 (A073789 n).toNat

end

end A148275.P10389270565268557492

/-! ## A148275.P8556642941623574610

`A148276(A171644(n))`
-/

namespace A148275.P8556642941623574610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148276 (A171644 n).toNat

end

end A148275.P8556642941623574610

/-! ## A148275.P9526663745356982317

`A148276(A004869(n+1))`
-/

namespace A148275.P9526663745356982317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148276 (A004869 (n + 1)).toNat

end

end A148275.P9526663745356982317

/-! ## A148275.P6730021179429103627

`A148276(A004880(n+1))`
-/

namespace A148275.P6730021179429103627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148276 (A004880 (n + 1)).toNat

end

end A148275.P6730021179429103627

/-!
# A148277: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (1, -1, 1), (1, 0, 0)}.

The programs for A148277, there is no canonical definition to state claims against.
-/

/-! ## A148277.P11315195297807923198

`A148278(A073789(n))`
-/

namespace A148277.P11315195297807923198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148278 (A073789 n).toNat

end

end A148277.P11315195297807923198

/-! ## A148277.P9651275455008724449

`A127287(A148278(n))`
-/

namespace A148277.P9651275455008724449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A148278 n).toNat

end

end A148277.P9651275455008724449

/-! ## A148277.P11705826210004541784

`A148278(A171644(n))`
-/

namespace A148277.P11705826210004541784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148278 (A171644 n).toNat

end

end A148277.P11705826210004541784

/-! ## A148277.P8450429783021679103

`A148278(A002034(n!))`
-/

namespace A148277.P8450429783021679103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148278 (A002034 (Nat.factorial n)).toNat

end

end A148277.P8450429783021679103

/-!
# A148279: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148279, there is no canonical definition to state claims against.
-/

/-! ## A148279.P18218885975697556950

`A134478(∑[A005130(n)]-1)`
-/

namespace A148279.P18218885975697556950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A148279.P18218885975697556950

/-! ## A148279.P15958376272667652781

`A339853(A120003(a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A148279.P15958376272667652781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A339853 (A120003 (a (n - 1)).toNat).toNat

end

end A148279.P15958376272667652781

/-! ## A148279.P12661801979598352587

`A343268((C(n, 2)+2)*A343304(n))`
-/

namespace A148279.P12661801979598352587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343268 ((Nat.choose n 2 + 2 : ℤ) * A343304 n).toNat

end

end A148279.P12661801979598352587

/-!
# A148280: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148280, there is no canonical definition to state claims against.
-/

/-! ## A148280.P18435071063651950391

`A306242(A150814(n))`
-/

namespace A148280.P18435071063651950391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306242 (A150814 n).toNat

end

end A148280.P18435071063651950391

/-! ## A148280.P14962779658645623381

`A302538(A147918(n+1))+1`
-/

namespace A148280.P14962779658645623381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302538 (A147918 (n + 1)).toNat + 1

end

end A148280.P14962779658645623381

/-! ## A148280.P5065549010288601721

`A100196(A182386(n)+A062569(n))`
-/

namespace A148280.P5065549010288601721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A182386 n + A062569 n).toNat

end

end A148280.P5065549010288601721

/-!
# A148281: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, 1, -1)}.

The programs for A148281, there is no canonical definition to state claims against.
-/

/-! ## A148281.P5957469058406201099

`or(char[2^n-1], A323647(ceil(2^(n-1))))`
-/

namespace A148281.P5957469058406201099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A323647 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A148281.P5957469058406201099

/-!
# A148282: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148282, there is no canonical definition to state claims against.
-/

/-! ## A148282.P16462820462518915901

`A261585(xor(A007689(n), A061579(n)))`
-/

namespace A148282.P16462820462518915901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (Int.xor (A007689 n) (A061579 n)).toNat

end

end A148282.P16462820462518915901

/-! ## A148282.P14990065922379807404

`A054404(ceil(3^(n-1)))+∑[char[3*n]]`
-/

namespace A148282.P14990065922379807404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A148282.P14990065922379807404

/-! ## A148282.P6710398539632235094

`A001068(A245898(n+1))`
-/

namespace A148282.P6710398539632235094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A245898 (n + 1)).toNat

end

end A148282.P6710398539632235094

/-! ## A148282.P4002632778837548700

`A000006(A191809(n)+n)`
-/

namespace A148282.P4002632778837548700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A191809 n + (n : ℤ)).toNat

end

end A148282.P4002632778837548700

/-!
# A148283: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A148283, there is no canonical definition to state claims against.
-/

/-! ## A148283.P9382524815127009321

`floor(sqrt(A301916(n!)))`
-/

namespace A148283.P9382524815127009321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A301916 (Nat.factorial n))

end

end A148283.P9382524815127009321

/-! ## A148283.P12643860476036060293

`A137442(A114464(n+1))`
-/

namespace A148283.P12643860476036060293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137442 (A114464 (n + 1)).toNat

end

end A148283.P12643860476036060293

/-! ## A148283.P17138397347094901664

`A226762(A125305(n+1))`
-/

namespace A148283.P17138397347094901664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A125305 (n + 1)).toNat

end

end A148283.P17138397347094901664

/-! ## A148283.P13817782483423748141

`A038567(A270662(n))-1`
-/

namespace A148283.P13817782483423748141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A270662 n).toNat - 1

end

end A148283.P13817782483423748141

/-!
# A148284: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148284, there is no canonical definition to state claims against.
-/

/-! ## A148284.P9766583813732673297

`A380751(A369626(n+1))`
-/

namespace A148284.P9766583813732673297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380751 (A369626 (n + 1)).toNat

end

end A148284.P9766583813732673297

/-! ## A148284.P470206030951613080

`A269800(n)+A001223(A269820(n))`
-/

namespace A148284.P470206030951613080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269800 n + A001223 (A269820 n).toNat

end

end A148284.P470206030951613080

/-! ## A148284.P1628905847827029777

`and(A148285(n), A178210(A148281(n)))`
-/

namespace A148284.P1628905847827029777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148285 n) (A178210 (A148281 n).toNat)

end

end A148284.P1628905847827029777

/-! ## A148284.P174154770394952978

`A023193(xor(A013989(n), A280186(n)))`
-/

namespace A148284.P174154770394952978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.xor (A013989 n) (A280186 n)).toNat

end

end A148284.P174154770394952978

/-!
# A148285: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148285, there is no canonical definition to state claims against.
-/

/-! ## A148285.P10464186119196625171

`A056173(A026034(2*n)+1)`
-/

namespace A148285.P10464186119196625171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056173 (A026034 (2 * n) + 1).toNat

end

end A148285.P10464186119196625171

/-! ## A148285.P3788260458055384181

`A023193(A047091(n)+A003116(n))`
-/

namespace A148285.P3788260458055384181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A047091 n + A003116 n).toNat

end

end A148285.P3788260458055384181

/-! ## A148285.P3391933848839467264

`A254011(A027649(n))+A029047(n)`
-/

namespace A148285.P3391933848839467264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (A027649 n).toNat + A029047 n

end

end A148285.P3391933848839467264

/-!
# A148286: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (0, 1, -1), (1, 0, 0)}.

The programs for A148286, there is no canonical definition to state claims against.
-/

/-! ## A148286.P16047851821121531819

`A023193(2^n*A002572(n+1))`
-/

namespace A148286.P16047851821121531819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 ((2 ^ n : ℤ) * A002572 (n + 1)).toNat

end

end A148286.P16047851821121531819

/-! ## A148286.P9690225875637973531

`floor(A327009(3*n+5)/A093069(2*(n+1)))`
-/

namespace A148286.P9690225875637973531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A327009 (3 * n + 5) : ℚ) / (A093069 (2 * (n + 1)) : ℚ)⌋

end

end A148286.P9690225875637973531

/-! ## A148286.P12906983490102097254

`A151259(n)-A052417(A001611(n))`
-/

namespace A148286.P12906983490102097254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151259 n - A052417 (A001611 n).toNat

end

end A148286.P12906983490102097254

/-!
# A148287: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 1, -1), (1, 0, 0)}.

The programs for A148287, there is no canonical definition to state claims against.
-/

/-! ## A148287.P4588761368749876422

`A187188(A290905(n+1))`
-/

namespace A148287.P4588761368749876422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A290905 (n + 1)).toNat

end

end A148287.P4588761368749876422

/-! ## A148287.P14164062694072839555

`A277192(A000108(n))-A277194(n)`
-/

namespace A148287.P14164062694072839555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A000108 n).toNat - A277194 n

end

end A148287.P14164062694072839555

/-! ## A148287.P9629525080857869235

`A001462(2*n!)-1`
-/

namespace A148287.P9629525080857869235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (2 * Nat.factorial n) - 1

end

end A148287.P9629525080857869235

/-!
# A148288: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148288, there is no canonical definition to state claims against.
-/

/-! ## A148288.P7540052808300022936

`A148290(n)-A277146(A007070(n))`
-/

namespace A148288.P7540052808300022936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148290 n - A277146 (A007070 n).toNat

end

end A148288.P7540052808300022936

/-! ## A148288.P10287327125014078431

`A036765(n)-A325799(A369444(n))`
-/

namespace A148288.P10287327125014078431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036765 n - A325799 (A369444 n).toNat

end

end A148288.P10287327125014078431

/-! ## A148288.P2967452873366514937

`A024417(A148989(n))+A004254(A002264(n))`
-/

namespace A148288.P2967452873366514937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148989 n).toNat + A004254 (A002264 n).toNat

end

end A148288.P2967452873366514937

/-!
# A148289: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, 0, -1)}.

The programs for A148289, there is no canonical definition to state claims against.
-/

/-! ## A148289.P796445833813159186

`A148290(A002998(n))`
-/

namespace A148289.P796445833813159186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148290 (A002998 n).toNat

end

end A148289.P796445833813159186

/-! ## A148289.P15219244350378254116

`A148290(A024664(n))`
-/

namespace A148289.P15219244350378254116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148290 (A024664 n).toNat

end

end A148289.P15219244350378254116

/-! ## A148289.P15593172123899834618

`A148290(A039723(n))`
-/

namespace A148289.P15593172123899834618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148290 (A039723 n).toNat

end

end A148289.P15593172123899834618

/-! ## A148289.P11741223852772203383

`A148290(A046469(n))`
-/

namespace A148289.P11741223852772203383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148290 (A046469 n).toNat

end

end A148289.P11741223852772203383

/-! ## A148289.P8755184817222766892

`A148290(A051022(n))`
-/

namespace A148289.P8755184817222766892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148290 (A051022 n).toNat

end

end A148289.P8755184817222766892

/-!
# A148291: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148291, there is no canonical definition to state claims against.
-/

/-! ## A148291.P18295803683831426416

`A340764(3*A148977(n))`
-/

namespace A148291.P18295803683831426416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (3 * A148977 n).toNat

end

end A148291.P18295803683831426416

/-! ## A148291.P12753582120919014544

`A340764(∑[A150076(n)]+1)`
-/

namespace A148291.P12753582120919014544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A148291.P12753582120919014544

/-! ## A148291.P1810015516127914481

`A241825(A002522(n))+A000085(n)`
-/

namespace A148291.P1810015516127914481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241825 (A002522 n).toNat + A000085 n

end

end A148291.P1810015516127914481

/-!
# A148292: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148292, there is no canonical definition to state claims against.
-/

/-! ## A148292.P5640248433080086495

`A004525(A316892(n)+A094587(n))`
-/

namespace A148292.P5640248433080086495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A316892 n + A094587 n).toNat

end

end A148292.P5640248433080086495

/-! ## A148292.P10210353010971542574

`A266170(A025065(n))+A148291(n)`
-/

namespace A148292.P10210353010971542574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266170 (A025065 n).toNat + A148291 n

end

end A148292.P10210353010971542574

/-! ## A148292.P10685300115786461675

`A148293(n)-A185246(A002378(n))`
-/

namespace A148292.P10685300115786461675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148293 n - A185246 (A002378 n).toNat

end

end A148292.P10685300115786461675

/-!
# A148293: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148293, there is no canonical definition to state claims against.
-/

/-! ## A148293.P4441889096687795514

`A265384(A298533(n+1))`
-/

namespace A148293.P4441889096687795514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (A298533 (n + 1)).toNat

end

end A148293.P4441889096687795514

/-! ## A148293.P6526862337452589475

`A008616(4*A321143(n))`
-/

namespace A148293.P6526862337452589475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (4 * A321143 n).toNat

end

end A148293.P6526862337452589475

/-! ## A148293.P10848769620356631608

`A185246(A002378(n))+A148292(n)`
-/

namespace A148293.P10848769620356631608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 (A002378 n).toNat + A148292 n

end

end A148293.P10848769620356631608

/-! ## A148293.P4635468436295779081

`A163351(A110132(n))+A076864(n)`
-/

namespace A148293.P4635468436295779081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 (A110132 n).toNat + A076864 n

end

end A148293.P4635468436295779081

/-!
# A148294: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148294, there is no canonical definition to state claims against.
-/

/-! ## A148294.P6559190919026872125

`or(A036593(A077957(n)), A272064(n))`
-/

namespace A148294.P6559190919026872125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036593 (A077957 n).toNat) (A272064 n)

end

end A148294.P6559190919026872125

/-! ## A148294.P15553203128040206882

`A148292(n)+A048881(A266170(n+1))`
-/

namespace A148294.P15553203128040206882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148292 n + A048881 (A266170 (n + 1)).toNat

end

end A148294.P15553203128040206882

/-! ## A148294.P9196440497107058479

`A051125(4*(4^n-(3*(3^n-2^n)+1))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A148294.P9196440497107058479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (SequenceMachineLib.roundAway ((4 * ((4 ^ n : ℤ) - (3 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)) + 1)) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A148294.P9196440497107058479

/-!
# A148295: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A148295, there is no canonical definition to state claims against.
-/

/-! ## A148295.P12367677354451784605

`A141204(A148107(n))`
-/

namespace A148295.P12367677354451784605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A148107 n).toNat

end

end A148295.P12367677354451784605

/-! ## A148295.P16361713104897255210

`or(A120705(A061993(n)), A148294(n))`
-/

namespace A148295.P16361713104897255210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120705 (A061993 n).toNat) (A148294 n)

end

end A148295.P16361713104897255210

/-! ## A148295.P3987031316483831975

`A148297(n)-A030315(∑[A149407(n)])`
-/

namespace A148295.P3987031316483831975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148297 n - A030315 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148295.P3987031316483831975

/-! ## A148295.P11454828091357906420

`A248227(A115254(n))-A002264(A129649(n+1))`
-/

namespace A148295.P11454828091357906420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A115254 n).toNat - A002264 (A129649 (n + 1)).toNat

end

end A148295.P11454828091357906420

/-!
# A148296: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148296, there is no canonical definition to state claims against.
-/

/-! ## A148296.P12965799844581792971

`A226190(∑[A061922(n)])`
-/

namespace A148296.P12965799844581792971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148296.P12965799844581792971

/-! ## A148296.P3142595287105469545

`A000108(n)-A089233(A003266(n))`
-/

namespace A148296.P3142595287105469545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A089233 (A003266 n).toNat

end

end A148296.P3142595287105469545

/-! ## A148296.P6980007774835758510

`A033862(A148297(n))`
-/

namespace A148296.P6980007774835758510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148297 n).toNat

end

end A148296.P6980007774835758510

/-!
# A148297: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148297, there is no canonical definition to state claims against.
-/

/-! ## A148297.P10032986723173525967

`A264749(4*A127497(n))`
-/

namespace A148297.P10032986723173525967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (4 * A127497 n).toNat

end

end A148297.P10032986723173525967

/-! ## A148297.P9168950492542553084

`∑[A245900(n+1)]-record[A245905(n+1)]`
-/

namespace A148297.P9168950492542553084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A148297.P9168950492542553084

/-! ## A148297.P3164611322666380484

`A028310(A059995(A209241(n))+n)`
-/

namespace A148297.P3164611322666380484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A059995 (A209241 n).toNat + (n : ℤ)).toNat

end

end A148297.P3164611322666380484

/-! ## A148297.P9409293338291081243

`A148298(n)-A030315(A217666(n))`
-/

namespace A148297.P9409293338291081243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148298 n - A030315 (A217666 n).toNat

end

end A148297.P9409293338291081243

/-!
# A148298: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148298, there is no canonical definition to state claims against.
-/

/-! ## A148298.P11172378418161786421

`A248227(A115254(n))`
-/

namespace A148298.P11172378418161786421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A115254 n).toNat

end

end A148298.P11172378418161786421

/-! ## A148298.P5141224129952380289

`A265110(A294818(n))`
-/

namespace A148298.P5141224129952380289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265110 (A294818 n).toNat

end

end A148298.P5141224129952380289

/-! ## A148298.P13424761529721982505

`A048621(A149407(n)+A005142(n))`
-/

namespace A148298.P13424761529721982505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A149407 n + A005142 n).toNat

end

end A148298.P13424761529721982505

/-! ## A148298.P9223539349793883014

`A148297(n)+A030315(A217666(n))`
-/

namespace A148298.P9223539349793883014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148297 n + A030315 (A217666 n).toNat

end

end A148298.P9223539349793883014

/-!
# A148299: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148299, there is no canonical definition to state claims against.
-/

/-! ## A148299.P287661496564127845

`A122203(A309297(n))+A108530(n)`
-/

namespace A148299.P287661496564127845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (A309297 n).toNat + A108530 n

end

end A148299.P287661496564127845

/-! ## A148299.P15224874398654529630

`A148312(n)-A160380(A199108(n))`
-/

namespace A148299.P15224874398654529630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148312 n - A160380 (A199108 n).toNat

end

end A148299.P15224874398654529630

/-! ## A148299.P17945004887689383362

`A089610(A150422(n)+A004087(n+1))`
-/

namespace A148299.P17945004887689383362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (A150422 n + A004087 (n + 1)).toNat

end

end A148299.P17945004887689383362

