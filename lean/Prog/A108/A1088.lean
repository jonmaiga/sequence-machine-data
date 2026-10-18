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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A108800: Number of nonisomorphic systems enumerated by A102895.

The programs for A108800, there is no canonical definition to state claims against.
-/

/-! ## A108800.P1354543905078547422

`∑[A326883(n)]`
-/

namespace A108800.P1354543905078547422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108800.P1354543905078547422

/-! ## A108800.P9389644941232258222

`Δ[A326904(n)]`
-/

namespace A108800.P9389644941232258222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108800.P9389644941232258222

/-! ## A108800.P1406497243065135517

`∏{e}[2^n, A326907(#)]`
-/

namespace A108800.P1406497243065135517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A326907 (Nat.factorization (f1 n) p)

end

end A108800.P1406497243065135517

/-! ## A108800.P10339408961850406585

`A326907(n)-floor(acot(n))`
-/

namespace A108800.P10339408961850406585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326907 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A108800.P10339408961850406585

/-!
# A108802: Self-convolution of A040051 (parity of partition function).

The programs for A108802, there is no canonical definition to state claims against.
-/

/-! ## A108802.P2695121629242797512

`A095407(A282511(n+1)+A007532(2*(n+2)))`
-/

namespace A108802.P2695121629242797512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A282511 (n + 1) + A007532 (2 * (n + 2))).toNat

end

end A108802.P2695121629242797512

/-!
# A108803: A108802 read mod 4.

The programs for A108803, there is no canonical definition to state claims against.
-/

/-! ## A108803.P9032083143803466262

`A073252(n)%4`
-/

namespace A108803.P9032083143803466262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073252 n) 4

end

end A108803.P9032083143803466262

/-! ## A108803.P1188695374627966673

`A108802(n)%4`
-/

namespace A108803.P1188695374627966673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108802 n) 4

end

end A108803.P1188695374627966673

/-! ## A108803.P215209000150135121

`and(3, A022597(n))`
-/

namespace A108803.P215209000150135121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A022597 n)

end

end A108803.P215209000150135121

/-! ## A108803.P16099368694498554631

`A010873(A108802(n))`
-/

namespace A108803.P16099368694498554631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A108802 n).toNat

end

end A108803.P16099368694498554631

/-! ## A108803.P7584695399547208820

`and(A073252(n), A122553(n))`
-/

namespace A108803.P7584695399547208820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073252 n) (A122553 n)

end

end A108803.P7584695399547208820

/-! ## A108803.P15462868217959908975

`and(A108802(n), A122553(n))`
-/

namespace A108803.P15462868217959908975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108802 n) (A122553 n)

end

end A108803.P15462868217959908975

/-! ## A108803.P10614901301899119867

`and(A073252(n), A158799(n))`
-/

namespace A108803.P10614901301899119867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073252 n) (A158799 n)

end

end A108803.P10614901301899119867

/-! ## A108803.P13364706449962038527

`and(A073252(n), A176059(n))`
-/

namespace A108803.P13364706449962038527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073252 n) (A176059 n)

end

end A108803.P13364706449962038527

/-! ## A108803.P6503267568978381092

`and(A108802(n), A158799(n))`
-/

namespace A108803.P6503267568978381092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108802 n) (A158799 n)

end

end A108803.P6503267568978381092

/-! ## A108803.P11553260140787239678

`and(A108802(n), A176059(n))`
-/

namespace A108803.P11553260140787239678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108802 n) (A176059 n)

end

end A108803.P11553260140787239678

/-! ## A108803.P1442366868256503174

`A000712(n)%4`
-/

namespace A108803.P1442366868256503174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000712 n) 4

end

end A108803.P1442366868256503174

/-! ## A108803.P2013455218846527036

`∑[A000990(n)]%4`
-/

namespace A108803.P2013455218846527036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A108803.P2013455218846527036

/-! ## A108803.P6595612826819235406

`and(3, A000712((n+n)/2))`
-/

namespace A108803.P6595612826819235406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000712 (SequenceMachineLib.roundAway ((n + n : ℚ) / 2)).toNat)

end

end A108803.P6595612826819235406

/-! ## A108803.P7062777542987481749

`and(A000712(n), A122553(n))`
-/

namespace A108803.P7062777542987481749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000712 n) (A122553 n)

end

end A108803.P7062777542987481749

/-! ## A108803.P5776250541313873150

`and(A000712(n), A158799(n))`
-/

namespace A108803.P5776250541313873150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000712 n) (A158799 n)

end

end A108803.P5776250541313873150

/-! ## A108803.P4071923692320175559

`and(A000712(n), A176059(n))`
-/

namespace A108803.P4071923692320175559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000712 n) (A176059 n)

end

end A108803.P4071923692320175559

/-! ## A108803.P16119007275785105957

`(A122768(n)+A000041(n))%4`
-/

namespace A108803.P16119007275785105957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122768 n + A000041 n) 4

end

end A108803.P16119007275785105957

/-! ## A108803.P16681105072230623466

`and(A000712(n), A200811(A200811(n+1)))`
-/

namespace A108803.P16681105072230623466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000712 n) (A200811 (A200811 (n + 1)).toNat)

end

end A108803.P16681105072230623466

/-! ## A108803.P10602385407485646378

`record[A022599(n)]%4`
-/

namespace A108803.P10602385407485646378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 4

end

end A108803.P10602385407485646378

/-! ## A108803.P18035400403188831980

`A022599(2*n)%4`
-/

namespace A108803.P18035400403188831980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022599 (2 * n)) 4

end

end A108803.P18035400403188831980

/-!
# A108804: Self-convolution of A010060 (Thue-Morse sequence).

The programs for A108804, there is no canonical definition to state claims against.
-/

/-! ## A108804.P9756509251218211491

`xor(char[2*n], A247303(n))`
-/

namespace A108804.P9756509251218211491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A247303 n)

end

end A108804.P9756509251218211491

/-! ## A108804.P7821316812776214420

`A247303(n)+∑[A268676(n)-2]`
-/

namespace A108804.P7821316812776214420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247303 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108804.P7821316812776214420

/-! ## A108804.P365861547265611101

`(A029886(n)+1+n)%∑[A001285(n)]`
-/

namespace A108804.P365861547265611101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029886 n + 1 + (n : ℤ)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108804.P365861547265611101

/-! ## A108804.P389513233334989447

`A115384(n)+A247303(n)-A159481(n)`
-/

namespace A108804.P389513233334989447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 n + (A247303 n - A159481 n)

end

end A108804.P389513233334989447

/-! ## A108804.P5373209759698165174

`A247303(n)+A254379(n)-A228495(n+1)`
-/

namespace A108804.P5373209759698165174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247303 n + (A254379 n - A228495 (n + 1))

end

end A108804.P5373209759698165174

/-! ## A108804.P17528481290601853244

`A254377(n+1)+A247303(n)-A254651(n)`
-/

namespace A108804.P17528481290601853244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (n + 1) + (A247303 n - A254651 n)

end

end A108804.P17528481290601853244

/-! ## A108804.P1509259571178182153

`A247303(2*(n+1))-A247303(n+1)`
-/

namespace A108804.P1509259571178182153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247303 (2 * (n + 1)) - A247303 (n + 1)

end

end A108804.P1509259571178182153

/-! ## A108804.P9073189782659264428

`A247303(A004767(n))/2-A247303(n)`
-/

namespace A108804.P9073189782659264428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247303 (A004767 n).toNat : ℚ) / 2 - (A247303 n : ℚ)

end

end A108804.P9073189782659264428

/-!
# A108805: A108804 read mod 4.

The programs for A108805, there is no canonical definition to state claims against.
-/

/-! ## A108805.P18356100713041961652

`A108804(n)%4`
-/

namespace A108805.P18356100713041961652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108804 n) 4

end

end A108805.P18356100713041961652

/-! ## A108805.P1192704866530479512

`(A265223(n)/2)%4`
-/

namespace A108805.P1192704866530479512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A265223 n : ℚ) / 2)) 4

end

end A108805.P1192704866530479512

/-! ## A108805.P14458532743210405028

`∑[A071052(n)/2]%4`
-/

namespace A108805.P14458532743210405028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071052 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) 4

end

end A108805.P14458532743210405028

/-! ## A108805.P76737331629391043

`and(3, A108804(n-char[1]))`
-/

namespace A108805.P76737331629391043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A108804 (n - (if ∃ j, f1 j = n then 1 else 0)))

end

end A108805.P76737331629391043

/-! ## A108805.P3704501850998078327

`((n+1)²-A029886(n))%4`
-/

namespace A108805.P3704501850998078327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 2 : ℤ) - A029886 n) 4

end

end A108805.P3704501850998078327

/-! ## A108805.P4349229591722130764

`and(3, A268721((2*n)%(n+1)))`
-/

namespace A108805.P4349229591722130764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A268721 (2 * n % (n + 1)))

end

end A108805.P4349229591722130764

/-! ## A108805.P12250432484219216066

`A010873(A108804(n))`
-/

namespace A108805.P12250432484219216066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A108804 n).toNat

end

end A108805.P12250432484219216066

/-! ## A108805.P11243703403571572109

`and(A108804(n), A113923(n))`
-/

namespace A108805.P11243703403571572109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A113923 n)

end

end A108805.P11243703403571572109

/-! ## A108805.P9772941074621022993

`and(A108804(n), A122553(n))`
-/

namespace A108805.P9772941074621022993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A122553 n)

end

end A108805.P9772941074621022993

/-! ## A108805.P9593321630956590907

`and(A108804(n), A158799(n))`
-/

namespace A108805.P9593321630956590907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A158799 n)

end

end A108805.P9593321630956590907

/-! ## A108805.P6994262281238563706

`and(A108804(n), A176059(n))`
-/

namespace A108805.P6994262281238563706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A176059 n)

end

end A108805.P6994262281238563706

/-! ## A108805.P17063626260524457414

`and(A108804(n), A164285(n))`
-/

namespace A108805.P17063626260524457414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A164285 n)

end

end A108805.P17063626260524457414

/-! ## A108805.P11934226835759259238

`and(A108804(n), A318207(n))`
-/

namespace A108805.P11934226835759259238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A318207 n)

end

end A108805.P11934226835759259238

/-! ## A108805.P17716245156603794914

`and(A108804(n), A339771(n))`
-/

namespace A108805.P17716245156603794914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A339771 n)

end

end A108805.P17716245156603794914

/-! ## A108805.P835585481765491118

`and(A108804(n), A226315(n+1))`
-/

namespace A108805.P835585481765491118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A226315 (n + 1))

end

end A108805.P835585481765491118

/-! ## A108805.P11009941911570760612

`and(A108804(n), A305880(n+1))`
-/

namespace A108805.P11009941911570760612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A305880 (n + 1))

end

end A108805.P11009941911570760612

/-! ## A108805.P4218563596312112370

`and(A108804(n), A239679(n))`
-/

namespace A108805.P4218563596312112370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A239679 n)

end

end A108805.P4218563596312112370

/-! ## A108805.P10941594027587394156

`and(A108804(n), A253208(n))`
-/

namespace A108805.P10941594027587394156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A253208 n)

end

end A108805.P10941594027587394156

/-! ## A108805.P14484002223737454716

`and(A108804(n), A394960(n))`
-/

namespace A108805.P14484002223737454716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A394960 n)

end

end A108805.P14484002223737454716

/-! ## A108805.P16654264457847903209

`and(A108804(n), A188161(n))`
-/

namespace A108805.P16654264457847903209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108804 n) (A188161 n)

end

end A108805.P16654264457847903209

/-!
# A108807: A108806 read mod 4.

The programs for A108807, there is no canonical definition to state claims against.
-/

/-! ## A108807.P3869529172920383897

`A108806(n+1)%4`
-/

namespace A108807.P3869529172920383897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108806 (n + 1)) 4

end

end A108807.P3869529172920383897

/-! ## A108807.P876861686255684339

`and(3, A108806(char[1]+1+n))`
-/

namespace A108807.P876861686255684339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A108806 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n))

end

end A108807.P876861686255684339

/-! ## A108807.P4617140128751683615

`A010873(A108806(n+1))`
-/

namespace A108807.P4617140128751683615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A108806 (n + 1)).toNat

end

end A108807.P4617140128751683615

/-! ## A108807.P9740739244976749946

`A353490(2*A108806(n+1))`
-/

namespace A108807.P9740739244976749946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353490 (2 * A108806 (n + 1)).toNat

end

end A108807.P9740739244976749946

/-! ## A108807.P689522020716027048

`and(A108806(n+1), A122553(n))`
-/

namespace A108807.P689522020716027048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108806 (n + 1)) (A122553 n)

end

end A108807.P689522020716027048

/-! ## A108807.P16007200824429259719

`and(A108806(n+1), A156752(n))`
-/

namespace A108807.P16007200824429259719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108806 (n + 1)) (A156752 n)

end

end A108807.P16007200824429259719

/-! ## A108807.P8105508647489083425

`and(A108806(n+1), A158799(n))`
-/

namespace A108807.P8105508647489083425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108806 (n + 1)) (A158799 n)

end

end A108807.P8105508647489083425

/-! ## A108807.P12177402759780384200

`and(A108806(n+1), A176059(n))`
-/

namespace A108807.P12177402759780384200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108806 (n + 1)) (A176059 n)

end

end A108807.P12177402759780384200

/-! ## A108807.P1915443637908507879

`and(A108806(n+1), A188161(n))`
-/

namespace A108807.P1915443637908507879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108806 (n + 1)) (A188161 n)

end

end A108807.P1915443637908507879

/-! ## A108807.P3689584753566112116

`and(A108806(n+1), A191341(n+1))`
-/

namespace A108807.P3689584753566112116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108806 (n + 1)) (A191341 (n + 1))

end

end A108807.P3689584753566112116

/-! ## A108807.P17318858225551262951

`and(A108806(n+1), A127509(n+1))`
-/

namespace A108807.P17318858225551262951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108806 (n + 1)) (A127509 (n + 1))

end

end A108807.P17318858225551262951

/-!
# A108808: Number of compositions of grid graph G_{3,n} = P_3 X P_n.

The programs for A108808, there is no canonical definition to state claims against.
-/

/-! ## A108808.P12341612536175744639

`A110476(∑[n+2]+4)`
-/

namespace A108808.P12341612536175744639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110476 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A108808.P12341612536175744639

/-! ## A108808.P16205841441243510762

`lcm(2, A110476(A167614(n+1)))`
-/

namespace A108808.P16205841441243510762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A110476 (A167614 (n + 1)).toNat)

end

end A108808.P16205841441243510762

/-! ## A108808.P16361233057948163370

`A110476(A167614(n+1))+A059841(2*n+1)`
-/

namespace A108808.P16361233057948163370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110476 (A167614 (n + 1)).toNat + A059841 (2 * n + 1)

end

end A108808.P16361233057948163370

/-! ## A108808.P8824226658891192241

`A110476(A167614(n+1))+A000007(3*n+4)`
-/

namespace A108808.P8824226658891192241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110476 (A167614 (n + 1)).toNat + A000007 (3 * n + 4)

end

end A108808.P8824226658891192241

/-! ## A108808.P6053784100357697386

`A110476(A167614(n+1))*A178334(3*n+4)`
-/

namespace A108808.P6053784100357697386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110476 (A167614 (n + 1)).toNat * A178334 (3 * n + 4)

end

end A108808.P6053784100357697386

/-!
# A108809: Numbers n such that both n+(n-1)^2 and n+(n+1)^2 are primes.

The programs for A108809, there is no canonical definition to state claims against.
-/

/-! ## A108809.P3326220216586671711

`∩[A055494(n+1), A094210(n+1)]`
-/

namespace A108809.P3326220216586671711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108809.P3326220216586671711

/-! ## A108809.P4823991879522473157

`∩[A002384(n+1)+1, A094210(n+1)]`
-/

namespace A108809.P4823991879522473157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108809.P4823991879522473157

/-! ## A108809.P16630355769988886885

`∩[A045546(n+1)-1, A055494(n+1)]`
-/

namespace A108809.P16630355769988886885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108809.P16630355769988886885

/-! ## A108809.P12642129467139930296

`∩[A002328(n+1)-2, A055494(n+1)]`
-/

namespace A108809.P12642129467139930296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108809.P12642129467139930296

/-! ## A108809.P16990553615088140924

`eq[A278247(n)+2, A278251(n)²]`
-/

namespace A108809.P16990553615088140924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108809.P16990553615088140924

/-! ## A108809.P16877292519101305236

`eq[2, A278251(n)*A289357(n+1)]`
-/

namespace A108809.P16877292519101305236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n * A289357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108809.P16877292519101305236

/-! ## A108809.P3257715997040714519

`eq[A006644(A278247(n)), A278251(n)]`
-/

namespace A108809.P3257715997040714519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006644 (A278247 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108809.P3257715997040714519

/-! ## A108809.P12479882906970294645

`eq[A038558(A289357(n+1)), A278251(n)]`
-/

namespace A108809.P12479882906970294645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 (A289357 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108809.P12479882906970294645

/-! ## A108809.P17381970997470727367

`record[A055494(n+1)/A289357(A089358(n+1))]`
-/

namespace A108809.P17381970997470727367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055494 (n + 1) : ℚ) / (A289357 (A089358 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108809.P17381970997470727367

/-! ## A108809.P14688716493443483029

`∩[A020725(A002384(n+1)), A045546(n+1)-1]`
-/

namespace A108809.P14688716493443483029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A002384 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108809.P14688716493443483029

/-!
# A108810: Self-describing primes.

The programs for A108810, there is no canonical definition to state claims against.
-/

/-! ## A108810.P17102182318919931521

`∩[A109775(n+1), A109776(n+1)]`
-/

namespace A108810.P17102182318919931521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108810.P17102182318919931521

/-!
# A108811: Increasing consecutive prime pairs alternating between form 4k+3 and 4k+1.

The programs for A108811, there is no canonical definition to state claims against.
-/

/-! ## A108811.P8505998850209681289

`p?[∑[A070425(A010894(n))]]`
-/

namespace A108811.P8505998850209681289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070425 (A010894 (n + 21)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108811.P8505998850209681289

/-! ## A108811.P9741582222055875907

`record[A006530(A000009(n)*A118678(n+1))]`
-/

namespace A108811.P9741582222055875907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000009 n * A118678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108811.P9741582222055875907

/-! ## A108811.P7653383017861308756

`A111980(A062399(n+1))`
-/

namespace A108811.P7653383017861308756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (A062399 (n + 1)).toNat

end

end A108811.P7653383017861308756

/-!
# A108812: 11^n mod 50.

The programs for A108812, the canonical program `A108812.P6925882635839477949` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108812 has offset 0).

The definition of A108812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108812.P6925882635839477949

`10*n%5+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108812

/-- `10*n%5+1` -/
def P6925882635839477949.Spec : Prop :=
  ∀ n, (P6925882635839477949.a n : ℤ) = A108812 n

theorem P6925882635839477949.correct : P6925882635839477949.Spec := by
  intro n
  simp only [A108812]

end A108812

/-!
# A108814: Numbers k such that k^4 + 4 is semiprime.

The programs for A108814, there is no canonical definition to state claims against.
-/

/-! ## A108814.P10100175394879835967

`A096012(n+1)+1`
-/

namespace A108814.P10100175394879835967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096012 (n + 1) + 1

end

end A108814.P10100175394879835967

/-! ## A108814.P7927037840970634022

`2*A293621(n+1)+1`
-/

namespace A108814.P7927037840970634022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293621 (n + 1) + 1

end

end A108814.P7927037840970634022

/-! ## A108814.P10586174537507999689

`A293621(n+1)+A293621(n+1)+A106400(n)²`
-/

namespace A108814.P10586174537507999689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293621 (n + 1) + (A293621 (n + 1) + A106400 n ^ 2)

end

end A108814.P10586174537507999689

/-! ## A108814.P5016152128975070097

`floor(sqrt(A217583(n+1)))`
-/

namespace A108814.P5016152128975070097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A217583 (n + 1))

end

end A108814.P5016152128975070097

/-! ## A108814.P2314419894017570421

`ceil(sqrt(A206328(n+1)))`
-/

namespace A108814.P2314419894017570421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A206328 (n + 1) : ℝ)⌉

end

end A108814.P2314419894017570421

/-! ## A108814.P246452910156926660

`∩[A089593(n+1), A090693(n+1)]`
-/

namespace A108814.P246452910156926660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108814.P246452910156926660

/-! ## A108814.P12794635587458661719

`∩[A005574(n+1)+1, A089593(n+1)]`
-/

namespace A108814.P12794635587458661719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108814.P12794635587458661719

/-! ## A108814.P11742347484661875674

`∩[A090693(n+2)-2, A090693(n+2)]`
-/

namespace A108814.P11742347484661875674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108814.P11742347484661875674

/-! ## A108814.P3288074707794666159

`∩[A005574(n+1)+1, ∑[A214516(n+1)]]`
-/

namespace A108814.P3288074707794666159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108814.P3288074707794666159

/-! ## A108814.P17177322547839807972

`or(1, A059009(A293621(n+1)))`
-/

namespace A108814.P17177322547839807972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A059009 (A293621 (n + 1)).toNat)

end

end A108814.P17177322547839807972

/-! ## A108814.P7265784283711004785

`A293621(A341839(∑[n+1]))+A293621(n+1)+1`
-/

namespace A108814.P7265784283711004785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293621 (A341839 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (A293621 (n + 1) + 1)

end

end A108814.P7265784283711004785

/-! ## A108814.P14754604870583816711

`A005408(A293621(n+1))`
-/

namespace A108814.P14754604870583816711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A293621 (n + 1)).toNat

end

end A108814.P14754604870583816711

/-! ## A108814.P16229985173082556423

`A144396(A293621(n+1)+1)-2`
-/

namespace A108814.P16229985173082556423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A293621 (n + 1) + 1).toNat - 2

end

end A108814.P16229985173082556423

/-! ## A108814.P16792621357602217122

`A141310(2*A293621(n+1))`
-/

namespace A108814.P16792621357602217122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A293621 (n + 1)).toNat

end

end A108814.P16792621357602217122

/-!
# A108815: Indices of triangular numbers which are products of 3 primes.

The programs for A108815, the canonical program `A108815.P2471550598880521513` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108815 has offset 1).

The definition of A108815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108815.P2471550598880521513

`floor(sqrt(2*A075875(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A108815

/-- `floor(sqrt(2*A075875(n+1)))` -/
def P2471550598880521513.Spec : Prop :=
  ∀ n, P2471550598880521513.a n = A108815 (n + 1)

theorem P2471550598880521513.correct : P2471550598880521513.Spec := by
  intro n
  simp only [A108815, Nat.add_sub_cancel]

end A108815

/-! ## A108815.P1060433553001449347

`eq[3, A069904(n+1)]+1`
-/

namespace A108815.P1060433553001449347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A108815.P1060433553001449347

namespace A108815

/-- `eq[3, A069904(n+1)]+1` -/
def P1060433553001449347.Spec : Prop :=
  ∀ n, (P1060433553001449347.a n : ℤ) = A108815 (n + 1)

end A108815

/-! ## A108815.P1861837537812409052

`eq[n, n-a(A069904(n))]` with `a(0)=2`
-/

namespace A108815.P1861837537812409052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) - f2 (A069904 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108815.P1861837537812409052

namespace A108815

/-- `eq[n, n-a(A069904(n))]` -/
def P1861837537812409052.Spec : Prop :=
  ∀ n, (P1861837537812409052.a n : ℤ) = A108815 (n + 1)

end A108815

/-! ## A108815.P5308928384475944728

`eq[4-∑{e}[n, #], A001222(n+1)]`
-/

namespace A108815.P5308928384475944728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A108815.P5308928384475944728

namespace A108815

/-- `eq[4-∑{e}[n, #], A001222(n+1)]` -/
def P5308928384475944728.Spec : Prop :=
  ∀ n, (P5308928384475944728.a n : ℤ) = A108815 (n + 1)

end A108815

/-! ## A108815.P8646225761969805746

`eq[1, A069904(A028310(n))-2]`
-/

namespace A108815.P8646225761969805746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108815.P8646225761969805746

namespace A108815

/-- `eq[1, A069904(A028310(n))-2]` -/
def P8646225761969805746.Spec : Prop :=
  ∀ n, (P8646225761969805746.a n : ℤ) = A108815 (n + 1)

end A108815

/-! ## A108815.P690493462345193634

`eq[5, A001222(n+1)+A001222(A008486(n))]`
-/

namespace A108815.P690493462345193634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108815.P690493462345193634

namespace A108815

/-- `eq[5, A001222(n+1)+A001222(A008486(n))]` -/
def P690493462345193634.Spec : Prop :=
  ∀ n, (P690493462345193634.a n : ℤ) = A108815 (n + 1)

end A108815

/-! ## A108815.P3917272806324693640

`eq[3, ∑{e}[∑[n], #]]`
-/

namespace A108815.P3917272806324693640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108815.P3917272806324693640

namespace A108815

/-- `eq[3, ∑{e}[∑[n], #]]` -/
def P3917272806324693640.Spec : Prop :=
  ∀ n, (P3917272806324693640.a n : ℤ) = A108815 (n + 1)

end A108815

/-! ## A108815.P10828501147306597849

`lt[xor(3, ∑{e}[∑[n], #])+1, 2]`
-/

namespace A108815.P10828501147306597849
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A108815.P10828501147306597849

namespace A108815

/-- `lt[xor(3, ∑{e}[∑[n], #])+1, 2]` -/
def P10828501147306597849.Spec : Prop :=
  ∀ n, (P10828501147306597849.a n : ℤ) = A108815 (n + 1)

end A108815

/-! ## A108815.P16318268015715389028

`lt[A188134(∑{e}[∑[n], #]+1), 2]`
-/

namespace A108815.P16318268015715389028
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A108815.P16318268015715389028

namespace A108815

/-- `lt[A188134(∑{e}[∑[n], #]+1), 2]` -/
def P16318268015715389028.Spec : Prop :=
  ∀ n, (P16318268015715389028.a n : ℤ) = A108815 (n + 1)

end A108815

/-! ## A108815.P42485085309407347

`eq[8, A138750(∑{e}[n²+n, #])]`
-/

namespace A108815.P42485085309407347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138750 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108815.P42485085309407347

namespace A108815

/-- `eq[8, A138750(∑{e}[n²+n, #])]` -/
def P42485085309407347.Spec : Prop :=
  ∀ n, (P42485085309407347.a n : ℤ) = A108815 (n + 1)

end A108815

/-!
# A108816: Primes of the form k*10^x + k + 1, where 0 < k < 9, x=0,1,2..

The programs for A108816, there is no canonical definition to state claims against.
-/

/-! ## A108816.P11592470035782648357

`p?[A160927(A076643(n+1))]`
-/

namespace A108816.P11592470035782648357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160927 (A076643 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108816.P11592470035782648357

/-! ## A108816.P14315012793105511110

`p?[A160927(record[A004086(n+1)])]`
-/

namespace A108816.P14315012793105511110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160927 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108816.P14315012793105511110

/-! ## A108816.P13793787057151562165

`p?[A264600(record[A228915(n+1)])]`
-/

namespace A108816.P13793787057151562165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108816.P13793787057151562165

/-! ## A108816.P6271307677296128546

`p?[A037124(n+1)+A007953(n+2)]`
-/

namespace A108816.P6271307677296128546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1) + A007953 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108816.P6271307677296128546

/-! ## A108816.P8691738775910758024

`p?[A331472(n+2)+A037124(n+1)]`
-/

namespace A108816.P8691738775910758024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (n + 2) + A037124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108816.P8691738775910758024

/-!
# A108817: Primes of the form k*10^x + k - 1, where 0 < k < 9, x = 0,1,2,3...

The programs for A108817, there is no canonical definition to state claims against.
-/

/-! ## A108817.P254104327856439709

`p?[∑[A260894(A316939(n))]]`
-/

namespace A108817.P254104327856439709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260894 (A316939 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108817.P254104327856439709

/-! ## A108817.P17523634462298024417

`p?[A277547(n+1)+A051885(n)]`
-/

namespace A108817.P17523634462298024417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277547 (n + 1) + A051885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108817.P17523634462298024417

/-!
# A108825: Numbers j such that j divides the sum of the digits of j!.

The programs for A108825, there is no canonical definition to state claims against.
-/

/-! ## A108825.P4196869384367457227

`eq[n, gcd(n, A004152(n))]`
-/

namespace A108825.P4196869384367457227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004152 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108825.P4196869384367457227

/-!
# A108827: Numbers k that divide the sum of the digits of k^k.

The programs for A108827, there is no canonical definition to state claims against.
-/

/-! ## A108827.P1230515035882532205

`record[gcd(n, A066588(n))]`
-/

namespace A108827.P1230515035882532205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A066588 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108827.P1230515035882532205

/-! ## A108827.P16820643787596290887

`eq[1, A065190(A066588(n+1)%(n+1)+1)]+1`
-/

namespace A108827.P16820643787596290887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (Int.tmod (A066588 (n + 1)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A108827.P16820643787596290887

/-! ## A108827.P7660184563545506991

`A236363(A262983(n+1)^A264441(n+1))`
-/

namespace A108827.P7660184563545506991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236363 (SequenceMachineLib.roundAway ((A262983 (n + 1) : ℚ) ^ (A264441 (n + 1) : ℤ))).toNat

end

end A108827.P7660184563545506991

/-! ## A108827.P12308029791968374285

`A236363(A262983(n+1))%A262962(n+1)`
-/

namespace A108827.P12308029791968374285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236363 (A262983 (n + 1)).toNat) (A262962 (n + 1))

end

end A108827.P12308029791968374285

/-! ## A108827.P1599422893084121163

`A236363(C(A262983(n+1), A264441(n+1)))`
-/

namespace A108827.P1599422893084121163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236363 (Nat.choose (A262983 (n + 1)).toNat (A264441 (n + 1)).toNat)

end

end A108827.P1599422893084121163

/-!
# A108837: Primes of the form 5*10^k-7.

The programs for A108837, there is no canonical definition to state claims against.
-/

/-! ## A108837.P7745074774167565008

`5*10^A103002(n+1)-7`
-/

namespace A108837.P7745074774167565008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (10 : ℚ) ^ (A103002 (n + 1) : ℤ) - 7

end

end A108837.P7745074774167565008

/-!
# A108838: Triangle of Dyck paths counted by number of long interior inclines.

The programs for A108838, there is no canonical definition to state claims against.
-/

/-! ## A108838.P3510360132965334598

`A281260(A038722(n+1)+A003057(n+2))`
-/

namespace A108838.P3510360132965334598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281260 (A038722 (n + 1) + A003057 (n + 2)).toNat

end

end A108838.P3510360132965334598

/-! ## A108838.P6130809443336232885

`A119308(n)+A001263(n+1)`
-/

namespace A108838.P6130809443336232885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119308 n + A001263 (n + 1)

end

end A108838.P6130809443336232885

/-! ## A108838.P9888615881866165520

`A119308(n)+A090181(A014132(n+1))`
-/

namespace A108838.P9888615881866165520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119308 n + A090181 (A014132 (n + 1)).toNat

end

end A108838.P9888615881866165520

/-! ## A108838.P11740862954829375652

`A132789(n+1)+A119308(n)-A014473(n)`
-/

namespace A108838.P11740862954829375652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132789 (n + 1) + (A119308 n - A014473 n)

end

end A108838.P11740862954829375652

/-! ## A108838.P1630499406583988710

`A119308(n)+A103371(n)/A004736(n+1)`
-/

namespace A108838.P1630499406583988710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119308 n : ℚ) + (A103371 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A108838.P1630499406583988710

/-! ## A108838.P755788570549941605

`A119308(n)+A132813(n)/A002260(n+1)`
-/

namespace A108838.P755788570549941605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119308 n : ℚ) + (A132813 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A108838.P755788570549941605

/-! ## A108838.P10375475578741541815

`A119308(n)+A114656(n+1)/A130321(n)`
-/

namespace A108838.P10375475578741541815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119308 n : ℚ) + (A114656 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A108838.P10375475578741541815

/-! ## A108838.P11523730694489935148

`A119308(n)+gcd(A155537(n+1), A174124(n))`
-/

namespace A108838.P11523730694489935148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119308 n + (Int.gcd (A155537 (n + 1)) (A174124 n) : ℤ)

end

end A108838.P11523730694489935148

/-! ## A108838.P15045155146336023028

`A119308(n)+A132812(n+1)/A002024(n+1)`
-/

namespace A108838.P15045155146336023028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119308 n : ℚ) + (A132812 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A108838.P15045155146336023028

/-! ## A108838.P17584312270375652549

`A119308(n)+sqrt(A174158(n+1))`
-/

namespace A108838.P17584312270375652549
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A119308 n : ℝ) + Real.sqrt (A174158 (n + 1) : ℝ)

end

end A108838.P17584312270375652549

/-! ## A108838.P13940147652956968809

`A119308(n)+A155497(n)/A086645(n)`
-/

namespace A108838.P13940147652956968809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119308 n : ℚ) + (A155497 n : ℚ) / (A086645 n : ℚ)

end

end A108838.P13940147652956968809

/-! ## A108838.P16517789637384500389

`A119308(n)+gcd(A114656(n+1), A174346(n+1))`
-/

namespace A108838.P16517789637384500389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119308 n + (Int.gcd (A114656 (n + 1)) (A174346 (n + 1)) : ℤ)

end

end A108838.P16517789637384500389

/-!
# A108839: a(1) = 1; a(n) = number of previous terms a(k) such that a(k) + n is prime.

The programs for A108839, there is no canonical definition to state claims against.
-/

/-! ## A108839.P13037449223735092818

`xor(A114898(n+1), A154272(n+1))`
-/

namespace A108839.P13037449223735092818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A114898 (n + 1)) (A154272 (n + 1))

end

end A108839.P13037449223735092818

/-! ## A108839.P2837197354502460938

`A114898(n+1)+A056594(A163985(n))`
-/

namespace A108839.P2837197354502460938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114898 (n + 1) + A056594 (A163985 n).toNat

end

end A108839.P2837197354502460938

/-! ## A108839.P1422621457093252260

`xor(A114898(n+1), A183919(A071054(n)))`
-/

namespace A108839.P1422621457093252260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A114898 (n + 1)) (A183919 (A071054 n).toNat)

end

end A108839.P1422621457093252260

/-! ## A108839.P10938275797734523531

`A114898(n+1)+A123541(n)-A114897(n+1)`
-/

namespace A108839.P10938275797734523531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114898 (n + 1) + (A123541 n - A114897 (n + 1))

end

end A108839.P10938275797734523531

/-! ## A108839.P16122875283258244708

`A114898(A230980(p?[A165754(n)]))`
-/

namespace A108839.P16122875283258244708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114898 (A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A108839.P16122875283258244708

/-! ## A108839.P13659164246157433674

`xor(A010054(A008864(n+1)), A114898(n+1))`
-/

namespace A108839.P13659164246157433674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 (A008864 (n + 1)).toNat) (A114898 (n + 1))

end

end A108839.P13659164246157433674

/-! ## A108839.P17516744829311759537

`A114898(n+1)-A010815(A053184(n+1))`
-/

namespace A108839.P17516744829311759537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114898 (n + 1) - A010815 (A053184 (n + 1)).toNat

end

end A108839.P17516744829311759537

/-! ## A108839.P14994453235893164816

`xor(A114898(n+1), A183919(A210419(n+1)))`
-/

namespace A108839.P14994453235893164816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A114898 (n + 1)) (A183919 (A210419 (n + 1)).toNat)

end

end A108839.P14994453235893164816

/-! ## A108839.P5211963113948016902

`xor(A000007(A067693(n)), A114898(n+1))`
-/

namespace A108839.P5211963113948016902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A067693 n).toNat) (A114898 (n + 1))

end

end A108839.P5211963113948016902

/-! ## A108839.P1570530166737103547

`A114898(n+1)+A091069(A036561(n))`
-/

namespace A108839.P1570530166737103547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114898 (n + 1) + A091069 (A036561 n).toNat

end

end A108839.P1570530166737103547

/-!
# A108840: First step in Recamán's sequence A005132 at which there are n consecutive subtraction steps in a row.

The programs for A108840, there is no canonical definition to state claims against.
-/

/-! ## A108840.P15611236312226457105

`A392407(n+1)-n`
-/

namespace A108840.P15611236312226457105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392407 (n + 1) - (n : ℤ)

end

end A108840.P15611236312226457105

/-!
# A108842: Palindromic primes in which all internal digits are 5.

The programs for A108842, there is no canonical definition to state claims against.
-/

/-! ## A108842.P10624201203239488883

`∩[A056730(n+1), A069680(n+1)]`
-/

namespace A108842.P10624201203239488883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108842.P10624201203239488883

/-!
# A108846: Palindromic primes in which all internal digits are 2.

The programs for A108846, there is no canonical definition to state claims against.
-/

/-! ## A108846.P12285935617343685280

`∩[A056730(n+1), A069677(n+1)]`
-/

namespace A108846.P12285935617343685280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108846.P12285935617343685280

/-! ## A108846.P14358803078172799292

`∩[A069677(n+1), A056730(A256450(n))]`
-/

namespace A108846.P14358803078172799292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (A256450 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108846.P14358803078172799292

/-!
# A108847: Palindromic primes in which all internal digits are 8.

The programs for A108847, there is no canonical definition to state claims against.
-/

/-! ## A108847.P1754729870878939420

`∩[A056730(n+1), A069683(n+1)]`
-/

namespace A108847.P1754729870878939420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108847.P1754729870878939420

/-!
# A108848: Palindromic primes in which all internal digits are 9.

The programs for A108848, there is no canonical definition to state claims against.
-/

/-! ## A108848.P10274709286166257014

`∩[A056730(n+1), A069684(n+1)]`
-/

namespace A108848.P10274709286166257014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108848.P10274709286166257014

/-!
# A108849: Semiprimes whose digit reversal is a nontrivial power.

The programs for A108849, there is no canonical definition to state claims against.
-/

/-! ## A108849.P1301939120742245811

`A115688(A187829(n+1)+A062153(n+1))`
-/

namespace A108849.P1301939120742245811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115688 (A187829 (n + 1) + A062153 (n + 1)).toNat

end

end A108849.P1301939120742245811

/-! ## A108849.P2142047389874753368

`∩[A115688(n+1), A045774(n)]`
-/

namespace A108849.P2142047389874753368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108849.P2142047389874753368

/-! ## A108849.P11529961347909344017

`∩[A056167(n+1), A115688(n+1)]`
-/

namespace A108849.P11529961347909344017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108849.P11529961347909344017

/-! ## A108849.P10322239300754044746

`∩[A115688(A083792(n+1)), A118715(n+1)]`
-/

namespace A108849.P10322239300754044746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115688 (A083792 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108849.P10322239300754044746

/-!
# A108850: Number of 1's in the binary expansion of the repunits.

The programs for A108850, there is no canonical definition to state claims against.
-/

/-! ## A108850.P7872799644988513818

`∑{digits}[A353147(n), A000120(#)]`
-/

namespace A108850.P7872799644988513818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 x).sum

end

end A108850.P7872799644988513818

/-! ## A108850.P11341886757710124957

`∑{digits}[A291962(n), #]`
-/

namespace A108850.P11341886757710124957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291962 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A108850.P11341886757710124957

/-!
# A108851: a(n) = 4*a(n-1) + 3*a(n-2), a(0) = 1, a(1) = 2.

The programs for A108851, the canonical program `A108851.P7866226238778174926` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108851 has offset 0).

The definition of A108851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+3*a(n-2)` (program `A108851.P7866226238778174926`, by `A108851.P7866226238778174926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108851.P7866226238778174926

`4*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108851

/-- `4*a(n-1)+3*a(n-2)` -/
def P7866226238778174926.Spec : Prop :=
  ∀ n, (P7866226238778174926.a n : ℤ) = A108851 n

theorem P7866226238778174926.correct : P7866226238778174926.Spec := by
  intro n
  simp only [A108851]

end A108851

/-! ## A108851.P9895722717100209614

`((2+sqrt(7))^n+(2-sqrt(7))^n)/2`
-/

namespace A108851.P9895722717100209614
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (7 : ℝ)) ^ n + (2 - Real.sqrt (7 : ℝ)) ^ n) / 2

end

end A108851.P9895722717100209614

namespace A108851

/-- `((2+sqrt(7))^n+(2-sqrt(7))^n)/2` -/
def P9895722717100209614.Spec : Prop :=
  ∀ n, P9895722717100209614.a n = (A108851 n : ℝ)

end A108851

/-! ## A108851.P629039406596856620

`ogf((-1+2x)/(-1+4x+3x^2))`
-/

namespace A108851.P629039406596856620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, -3] n

end

end A108851.P629039406596856620

namespace A108851

/-- `ogf((-1+2x)/(-1+4x+3x^2))` -/
def P629039406596856620.Spec : Prop :=
  ∀ n, P629039406596856620.a n = A108851 n

end A108851

/-! ## A108851.P10589713879494261597

`4*a(n-1)-(a(n-2)-4*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A108851.P10589713879494261597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - (a (n - 2) - 4 * a (n - 2))

end

end A108851.P10589713879494261597

namespace A108851

/-- `4*a(n-1)-(a(n-2)-4*a(n-2))` -/
def P10589713879494261597.Spec : Prop :=
  ∀ n, P10589713879494261597.a n = A108851 n

end A108851

/-! ## A108851.P6763198526375880709

`A122558(n)-A015530(n)`
-/

namespace A108851.P6763198526375880709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122558 n - A015530 n

end

end A108851.P6763198526375880709

namespace A108851

/-- `A122558(n)-A015530(n)` -/
def P6763198526375880709.Spec : Prop :=
  ∀ n, P6763198526375880709.a n = A108851 n

end A108851

/-! ## A108851.P11707123767136151277

`A086901(n+1)+A015530(n)`
-/

namespace A108851.P11707123767136151277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086901 (n + 1) + A015530 n

end

end A108851.P11707123767136151277

namespace A108851

/-- `A086901(n+1)+A015530(n)` -/
def P11707123767136151277.Spec : Prop :=
  ∀ n, P11707123767136151277.a n = A108851 n

end A108851

/-! ## A108851.P1382148086286866306

`A015530(n+1)-2*A015530(n)`
-/

namespace A108851.P1382148086286866306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (n + 1) - 2 * A015530 n

end

end A108851.P1382148086286866306

namespace A108851

/-- `A015530(n+1)-2*A015530(n)` -/
def P1382148086286866306.Spec : Prop :=
  ∀ n, P1382148086286866306.a n = A108851 n

end A108851

/-! ## A108851.P4958959486308999829

`A015530(n+1)+A015530(n)-A106570(n)`
-/

namespace A108851.P4958959486308999829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (n + 1) + A015530 n - A106570 n

end

end A108851.P4958959486308999829

namespace A108851

/-- `A015530(n+1)+A015530(n)-A106570(n)` -/
def P4958959486308999829.Spec : Prop :=
  ∀ n, P4958959486308999829.a n = A108851 n

end A108851

/-!
# A108852: Number of Fibonacci numbers <= n.

The programs for A108852, the canonical program `A108852.P14747039251510576692` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108852 has offset 0).

The definition of A108852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108852.P11067381595092029497

`∑[A104162(n)]`
-/

namespace A108852.P11067381595092029497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108852.P11067381595092029497

namespace A108852

/-- `∑[A104162(n)]` -/
def P11067381595092029497.Spec : Prop :=
  ∀ n, P11067381595092029497.a n = A108852 n

end A108852

/-! ## A108852.P2351250425098224909

`1+A130233(n)`
-/

namespace A108852.P2351250425098224909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A130233 n

end

end A108852.P2351250425098224909

namespace A108852

/-- `1+A130233(n)` -/
def P2351250425098224909.Spec : Prop :=
  ∀ n, P2351250425098224909.a n = A108852 n

end A108852

/-! ## A108852.P10211085789048504850

`∑[C(2, A104324(n))]`
-/

namespace A108852.P10211085789048504850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A104324 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108852.P10211085789048504850

namespace A108852

/-- `∑[C(2, A104324(n))]` -/
def P10211085789048504850.Spec : Prop :=
  ∀ n, (P10211085789048504850.a n : ℤ) = A108852 n

end A108852

/-! ## A108852.P16107961053110641860

`comp[A002062(n)]-n`
-/

namespace A108852.P16107961053110641860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A108852.P16107961053110641860

namespace A108852

/-- `comp[A002062(n)]-n` -/
def P16107961053110641860.Spec : Prop :=
  ∀ n, P16107961053110641860.a n = A108852 n

end A108852

/-! ## A108852.P14747039251510576692

`floor(log2(A022341(n)))+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A108852

/-- `floor(log2(A022341(n)))+1` -/
def P14747039251510576692.Spec : Prop :=
  ∀ n, (P14747039251510576692.a n : ℤ) = A108852 n

theorem P14747039251510576692.correct : P14747039251510576692.Spec := by
  intro n
  simp only [A108852]

end A108852

/-! ## A108852.P13012196955408867012

`floor(log2(A213540(n+1)))`
-/

namespace A108852.P13012196955408867012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A213540 (n + 1)).toNat

end

end A108852.P13012196955408867012

namespace A108852

/-- `floor(log2(A213540(n+1)))` -/
def P13012196955408867012.Spec : Prop :=
  ∀ n, (P13012196955408867012.a n : ℤ) = A108852 n

end A108852

/-! ## A108852.P14032655258745075771

`ceil(log2(A048297(n)))+1`
-/

namespace A108852.P14032655258745075771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A048297 n : ℝ)⌉ + 1

end

end A108852.P14032655258745075771

namespace A108852

/-- `ceil(log2(A048297(n)))+1` -/
def P14032655258745075771.Spec : Prop :=
  ∀ n, P14032655258745075771.a n = A108852 n

end A108852

/-! ## A108852.P5791177206274252673

`∑[A010056(n)+char[1]]`
-/

namespace A108852.P5791177206274252673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108852.P5791177206274252673

namespace A108852

/-- `∑[A010056(n)+char[1]]` -/
def P5791177206274252673.Spec : Prop :=
  ∀ n, P5791177206274252673.a n = A108852 n

end A108852

/-! ## A108852.P1752096930140834618

`∑[char[1]+char[A000045(n)]]`
-/

namespace A108852.P1752096930140834618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108852.P1752096930140834618

namespace A108852

/-- `∑[char[1]+char[A000045(n)]]` -/
def P1752096930140834618.Spec : Prop :=
  ∀ n, (P1752096930140834618.a n : ℤ) = A108852 n

end A108852

/-! ## A108852.P5894361911588233940

`A192687(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A108852.P5894361911588233940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A192687 (n - 1) + a (n - 1)

end

end A108852.P5894361911588233940

namespace A108852

/-- `A192687(n-1)+a(n-1)` -/
def P5894361911588233940.Spec : Prop :=
  ∀ n, P5894361911588233940.a n = A108852 n

end A108852

/-! ## A108852.P5786242293964508168

`A348553(A130233(n))`
-/

namespace A108852.P5786242293964508168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A130233 n).toNat

end

end A108852.P5786242293964508168

namespace A108852

/-- `A348553(A130233(n))` -/
def P5786242293964508168.Spec : Prop :=
  ∀ n, P5786242293964508168.a n = A108852 n

end A108852

/-! ## A108852.P1298643913883258863

`A130245(A184584(n+1))`
-/

namespace A108852.P1298643913883258863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A184584 (n + 1)).toNat

end

end A108852.P1298643913883258863

namespace A108852

/-- `A130245(A184584(n+1))` -/
def P1298643913883258863.Spec : Prop :=
  ∀ n, P1298643913883258863.a n = A108852 n

end A108852

/-! ## A108852.P18065248968606480944

`A130245(A184586(n+1))`
-/

namespace A108852.P18065248968606480944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A184586 (n + 1)).toNat

end

end A108852.P18065248968606480944

namespace A108852

/-- `A130245(A184586(n+1))` -/
def P18065248968606480944.Spec : Prop :=
  ∀ n, P18065248968606480944.a n = A108852 n

end A108852

/-! ## A108852.P11786723098006620778

`A130245(A190511(n+1))`
-/

namespace A108852.P11786723098006620778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A190511 (n + 1)).toNat

end

end A108852.P11786723098006620778

namespace A108852

/-- `A130245(A190511(n+1))` -/
def P11786723098006620778.Spec : Prop :=
  ∀ n, P11786723098006620778.a n = A108852 n

end A108852

/-! ## A108852.P6613748057195869199

`A130245(A195121(n))+1`
-/

namespace A108852.P6613748057195869199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A195121 n).toNat + 1

end

end A108852.P6613748057195869199

namespace A108852

/-- `A130245(A195121(n))+1` -/
def P6613748057195869199.Spec : Prop :=
  ∀ n, P6613748057195869199.a n = A108852 n

end A108852

/-! ## A108852.P47460929642364510

`A130234(A010056(n)+n)`
-/

namespace A108852.P47460929642364510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 (A010056 n + (n : ℤ)).toNat

end

end A108852.P47460929642364510

namespace A108852

/-- `A130234(A010056(n)+n)` -/
def P47460929642364510.Spec : Prop :=
  ∀ n, P47460929642364510.a n = A108852 n

end A108852

/-! ## A108852.P8646612352067318503

`A130234(n)+A104162(n)`
-/

namespace A108852.P8646612352067318503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 n + A104162 n

end

end A108852.P8646612352067318503

namespace A108852

/-- `A130234(n)+A104162(n)` -/
def P8646612352067318503.Spec : Prop :=
  ∀ n, P8646612352067318503.a n = A108852 n

end A108852

/-! ## A108852.P6732549767231469684

`∑[A003842(n)*A010056(n)]`
-/

namespace A108852.P6732549767231469684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n * A010056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108852.P6732549767231469684

namespace A108852

/-- `∑[A003842(n)*A010056(n)]` -/
def P6732549767231469684.Spec : Prop :=
  ∀ n, P6732549767231469684.a n = A108852 n

end A108852

/-! ## A108852.P10601252540857305094

`A131234(n+1)+A057427(n)`
-/

namespace A108852.P10601252540857305094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 1) + A057427 n

end

end A108852.P10601252540857305094

namespace A108852

/-- `A131234(n+1)+A057427(n)` -/
def P10601252540857305094.Spec : Prop :=
  ∀ n, P10601252540857305094.a n = A108852 n

end A108852

/-! ## A108852.P10102348350789819562

`A131234(n+1)-A057428(n)`
-/

namespace A108852.P10102348350789819562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 1) - A057428 n

end

end A108852.P10102348350789819562

namespace A108852

/-- `A131234(n+1)-A057428(n)` -/
def P10102348350789819562.Spec : Prop :=
  ∀ n, P10102348350789819562.a n = A108852 n

end A108852

/-!
# A108853: Indices of prime Knuth numbers; that is, integers n such that the n-th Knuth number is prime. Indices of primes in A007448.

The programs for A108853, there is no canonical definition to state claims against.
-/

/-! ## A108853.P5490182894748010106

`eq[0, A005171(A007448(n))]`
-/

namespace A108853.P5490182894748010106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A007448 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108853.P5490182894748010106

/-! ## A108853.P16946230345859811886

`eq[2, A051709(2*A007448(n))]`
-/

namespace A108853.P16946230345859811886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (2 * A007448 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108853.P16946230345859811886

/-! ## A108853.P5564289008174162438

`eq[A000007(n), A051709(A007448(n))]`
-/

namespace A108853.P5564289008174162438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (A007448 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108853.P5564289008174162438

/-! ## A108853.P9077078581288814472

`eq[A032742(A007448(n)), A057427(n)]`
-/

namespace A108853.P9077078581288814472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A007448 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108853.P9077078581288814472

/-! ## A108853.P3549971958974027172

`lt[A048050(A007448(n)), A316314(n+1)]`
-/

namespace A108853.P3549971958974027172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A007448 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108853.P3549971958974027172

/-! ## A108853.P7092636749255592273

`eq[2, A179926(2*A007448(n))]`
-/

namespace A108853.P7092636749255592273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (2 * A007448 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108853.P7092636749255592273

/-! ## A108853.P6187311053303397887

`eq[1, A051709(A007448(n)²)]`
-/

namespace A108853.P6187311053303397887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (A007448 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108853.P6187311053303397887

/-!
# A108854: Numbers k such that 10*k - 127 is prime.

The programs for A108854, the canonical program `A108854.P15242187199517262810` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108854 has offset 1).

The definition of A108854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108854.P15242187199517262810

`A108584(n+1)+3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108854

/-- `A108584(n+1)+3` -/
def P15242187199517262810.Spec : Prop :=
  ∀ n, P15242187199517262810.a n = A108854 (n + 1)

theorem P15242187199517262810.correct : P15242187199517262810.Spec := by
  intro n
  simp only [A108854, Nat.add_sub_cancel]

end A108854

/-! ## A108854.P11035705967019815511

`A024913(n+1)+12`
-/

namespace A108854.P11035705967019815511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1) + 12

end

end A108854.P11035705967019815511

namespace A108854

/-- `A024913(n+1)+12` -/
def P11035705967019815511.Spec : Prop :=
  ∀ n, P11035705967019815511.a n = A108854 (n + 1)

end A108854

/-! ## A108854.P687230824862694150

`A102338(n+1)+13`
-/

namespace A108854.P687230824862694150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1) + 13

end

end A108854.P687230824862694150

namespace A108854

/-- `A102338(n+1)+13` -/
def P687230824862694150.Spec : Prop :=
  ∀ n, P687230824862694150.a n = A108854 (n + 1)

end A108854

/-! ## A108854.P10403262869537701057

`A087505(n+1)/2+13`
-/

namespace A108854.P10403262869537701057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087505 (n + 1) : ℚ) / 2 + 13

end

end A108854.P10403262869537701057

namespace A108854

/-- `A087505(n+1)/2+13` -/
def P10403262869537701057.Spec : Prop :=
  ∀ n, P10403262869537701057.a n = (A108854 (n + 1) : ℚ)

end A108854

/-! ## A108854.P12979927230529661945

`A009005(A108584(n+1))`
-/

namespace A108854.P12979927230529661945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A108584 (n + 1)).toNat

end

end A108854.P12979927230529661945

namespace A108854

/-- `A009005(A108584(n+1))` -/
def P12979927230529661945.Spec : Prop :=
  ∀ n, P12979927230529661945.a n = A108854 (n + 1)

end A108854

/-! ## A108854.P9665412350265642738

`A000463(A024896(n+1))+12`
-/

namespace A108854.P9665412350265642738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A024896 (n + 1)).toNat + 12

end

end A108854.P9665412350265642738

namespace A108854

/-- `A000463(A024896(n+1))+12` -/
def P9665412350265642738.Spec : Prop :=
  ∀ n, P9665412350265642738.a n = A108854 (n + 1)

end A108854

/-! ## A108854.P944358035009812806

`A004525(A087505(n+1))+13`
-/

namespace A108854.P944358035009812806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A087505 (n + 1)).toNat + 13

end

end A108854.P944358035009812806

namespace A108854

/-- `A004525(A087505(n+1))+13` -/
def P944358035009812806.Spec : Prop :=
  ∀ n, P944358035009812806.a n = A108854 (n + 1)

end A108854

/-! ## A108854.P11465922233606473292

`A196081(A087505(n+1)+2)+2`
-/

namespace A108854.P11465922233606473292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196081 (A087505 (n + 1) + 2).toNat + 2

end

end A108854.P11465922233606473292

namespace A108854

/-- `A196081(A087505(n+1)+2)+2` -/
def P11465922233606473292.Spec : Prop :=
  ∀ n, P11465922233606473292.a n = A108854 (n + 1)

end A108854

/-! ## A108854.P17027450131441958921

`A008619(A024896(n+1)+24)`
-/

namespace A108854.P17027450131441958921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A024896 (n + 1) + 24).toNat

end

end A108854.P17027450131441958921

namespace A108854

/-- `A008619(A024896(n+1)+24)` -/
def P17027450131441958921.Spec : Prop :=
  ∀ n, P17027450131441958921.a n = A108854 (n + 1)

end A108854

/-! ## A108854.P18023445426245679365

`A004526(A024896(n+1)+25)`
-/

namespace A108854.P18023445426245679365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A024896 (n + 1) + 25).toNat

end

end A108854.P18023445426245679365

namespace A108854

/-- `A004526(A024896(n+1)+25)` -/
def P18023445426245679365.Spec : Prop :=
  ∀ n, P18023445426245679365.a n = A108854 (n + 1)

end A108854

/-! ## A108854.P8868163579014331443

`A004526(A087505(n+1)+27)`
-/

namespace A108854.P8868163579014331443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A087505 (n + 1) + 27).toNat

end

end A108854.P8868163579014331443

namespace A108854

/-- `A004526(A087505(n+1)+27)` -/
def P8868163579014331443.Spec : Prop :=
  ∀ n, P8868163579014331443.a n = A108854 (n + 1)

end A108854

/-! ## A108854.P9463455330291973222

`A076314(p?[A016885(n)])+10`
-/

namespace A108854.P9463455330291973222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 10

end

end A108854.P9463455330291973222

namespace A108854

/-- `A076314(p?[A016885(n)])+10` -/
def P9463455330291973222.Spec : Prop :=
  ∀ n, P9463455330291973222.a n = A108854 (n + 1)

end A108854

/-!
# A108855: Numbers n such that 10*n + 127 is prime.

The programs for A108855, the canonical program `A108855.P10922145306609028773` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108855 has offset 1).

The definition of A108855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108855.P10922145306609028773

`A108588(n+3)-3`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108855

/-- `A108588(n+3)-3` -/
def P10922145306609028773.Spec : Prop :=
  ∀ n, P10922145306609028773.a n = A108855 (n + 1)

theorem P10922145306609028773.correct : P10922145306609028773.Spec := by
  intro n
  simp only [A108855, Nat.add_sub_cancel]

end A108855

/-! ## A108855.P801909065548243725

`∑[A108588(n+3)%A108588(n+2)]`
-/

namespace A108855.P801909065548243725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108588 (n + 3)) (A108588 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108855.P801909065548243725

namespace A108855

/-- `∑[A108588(n+3)%A108588(n+2)]` -/
def P801909065548243725.Spec : Prop :=
  ∀ n, P801909065548243725.a n = A108855 (n + 1)

end A108855

/-! ## A108855.P14140230582552824447

`A102342(n+8)-12`
-/

namespace A108855.P14140230582552824447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 8) - 12

end

end A108855.P14140230582552824447

namespace A108855

/-- `A102342(n+8)-12` -/
def P14140230582552824447.Spec : Prop :=
  ∀ n, P14140230582552824447.a n = A108855 (n + 1)

end A108855

/-! ## A108855.P11697667650723190090

`eq[1, A001222(A017353(n+12))]`
-/

namespace A108855.P11697667650723190090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017353 (n + 12)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108855.P11697667650723190090

namespace A108855

/-- `eq[1, A001222(A017353(n+12))]` -/
def P11697667650723190090.Spec : Prop :=
  ∀ n, (P11697667650723190090.a n : ℤ) = A108855 (n + 1)

end A108855

/-! ## A108855.P4906457345993637620

`record[A005843(n)/A181819(A017353(n+12))]`
-/

namespace A108855.P4906457345993637620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A181819 (A017353 (n + 12)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108855.P4906457345993637620

namespace A108855

/-- `record[A005843(n)/A181819(A017353(n+12))]` -/
def P4906457345993637620.Spec : Prop :=
  ∀ n, P4906457345993637620.a n = (A108855 (n + 1) : ℚ)

end A108855

/-!
# A108856: Numbers k such that 10*k - 131 is prime.

The programs for A108856, the canonical program `A108856.P2268540047810434247` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108856 has offset 1).

The definition of A108856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108856.P2268540047810434247

`A105042(n+1)+13`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108856

/-- `A105042(n+1)+13` -/
def P2268540047810434247.Spec : Prop :=
  ∀ n, P2268540047810434247.a n = A108856 (n + 1)

theorem P2268540047810434247.correct : P2268540047810434247.Spec := by
  intro n
  simp only [A108856, Nat.add_sub_cancel]

end A108856

/-! ## A108856.P3164219696813339806

`A102700(n+1)+14`
-/

namespace A108856.P3164219696813339806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) + 14

end

end A108856.P3164219696813339806

namespace A108856

/-- `A102700(n+1)+14` -/
def P3164219696813339806.Spec : Prop :=
  ∀ n, P3164219696813339806.a n = A108856 (n + 1)

end A108856

/-! ## A108856.P15157375690379500390

`(A024897(n+1)+27)/2`
-/

namespace A108856.P15157375690379500390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024897 (n + 1) + 27 : ℚ) / 2

end

end A108856.P15157375690379500390

namespace A108856

/-- `(A024897(n+1)+27)/2` -/
def P15157375690379500390.Spec : Prop :=
  ∀ n, P15157375690379500390.a n = (A108856 (n + 1) : ℚ)

end A108856

/-! ## A108856.P10417188412595141842

`A000463(A024897(n+1))+13`
-/

namespace A108856.P10417188412595141842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A024897 (n + 1)).toNat + 13

end

end A108856.P10417188412595141842

namespace A108856

/-- `A000463(A024897(n+1))+13` -/
def P10417188412595141842.Spec : Prop :=
  ∀ n, P10417188412595141842.a n = A108856 (n + 1)

end A108856

/-! ## A108856.P8447422402804771769

`A026741(A153355(n+1))+13`
-/

namespace A108856.P8447422402804771769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A153355 (n + 1)).toNat + 13

end

end A108856.P8447422402804771769

namespace A108856

/-- `A026741(A153355(n+1))+13` -/
def P8447422402804771769.Spec : Prop :=
  ∀ n, P8447422402804771769.a n = A108856 (n + 1)

end A108856

/-! ## A108856.P12895453005364962321

`A008619(A024897(n+1)+25)`
-/

namespace A108856.P12895453005364962321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A024897 (n + 1) + 25).toNat

end

end A108856.P12895453005364962321

namespace A108856

/-- `A008619(A024897(n+1)+25)` -/
def P12895453005364962321.Spec : Prop :=
  ∀ n, P12895453005364962321.a n = A108856 (n + 1)

end A108856

/-! ## A108856.P13479657840219335352

`A001057(A024897(n+1)+26)`
-/

namespace A108856.P13479657840219335352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A024897 (n + 1) + 26).toNat

end

end A108856.P13479657840219335352

namespace A108856

/-- `A001057(A024897(n+1)+26)` -/
def P13479657840219335352.Spec : Prop :=
  ∀ n, P13479657840219335352.a n = A108856 (n + 1)

end A108856

/-! ## A108856.P9352047461994262785

`A003602(A024897(n+1)+26)`
-/

namespace A108856.P9352047461994262785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A024897 (n + 1) + 26).toNat

end

end A108856.P9352047461994262785

namespace A108856

/-- `A003602(A024897(n+1)+26)` -/
def P9352047461994262785.Spec : Prop :=
  ∀ n, P9352047461994262785.a n = A108856 (n + 1)

end A108856

/-! ## A108856.P11573926724616611696

`A001281(A024897(n+1)+27)`
-/

namespace A108856.P11573926724616611696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A024897 (n + 1) + 27).toNat

end

end A108856.P11573926724616611696

namespace A108856

/-- `A001281(A024897(n+1)+27)` -/
def P11573926724616611696.Spec : Prop :=
  ∀ n, P11573926724616611696.a n = A108856 (n + 1)

end A108856

/-! ## A108856.P13747703256853562509

`A004526(A024897(n+1)+27)`
-/

namespace A108856.P13747703256853562509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A024897 (n + 1) + 27).toNat

end

end A108856.P13747703256853562509

namespace A108856

/-- `A004526(A024897(n+1)+27)` -/
def P13747703256853562509.Spec : Prop :=
  ∀ n, P13747703256853562509.a n = A108856 (n + 1)

end A108856

/-! ## A108856.P11730207750202685271

`A004524(A024897(n+1)+28)`
-/

namespace A108856.P11730207750202685271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A024897 (n + 1) + 28).toNat

end

end A108856.P11730207750202685271

namespace A108856

/-- `A004524(A024897(n+1)+28)` -/
def P11730207750202685271.Spec : Prop :=
  ∀ n, P11730207750202685271.a n = A108856 (n + 1)

end A108856

/-! ## A108856.P18045749027233692873

`A076312(p?[A016897(n)]-2)`
-/

namespace A108856.P18045749027233692873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2).toNat

end

end A108856.P18045749027233692873

namespace A108856

/-- `A076312(p?[A016897(n)]-2)` -/
def P18045749027233692873.Spec : Prop :=
  ∀ n, P18045749027233692873.a n = A108856 (n + 1)

end A108856

/-! ## A108856.P8198262219786145312

`A076312(A049820(p?[A016897(n)]))`
-/

namespace A108856.P8198262219786145312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (A049820 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A108856.P8198262219786145312

namespace A108856

/-- `A076312(A049820(p?[A016897(n)]))` -/
def P8198262219786145312.Spec : Prop :=
  ∀ n, P8198262219786145312.a n = A108856 (n + 1)

end A108856

/-!
# A108857: Numbers n such that 10*n + 131 is prime.

The programs for A108857, the canonical program `A108857.P2974898687329617496` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108857 has offset 1).

The definition of A108857 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108857.P2974898687329617496

`A024912(n+7)-13`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108857

/-- `A024912(n+7)-13` -/
def P2974898687329617496.Spec : Prop :=
  ∀ n, P2974898687329617496.a n = A108857 (n + 1)

theorem P2974898687329617496.correct : P2974898687329617496.Spec := by
  intro n
  simp only [A108857, Nat.add_sub_cancel]

end A108857

/-! ## A108857.P5685810673047511547

`A108594(n+2)-3`
-/

namespace A108857.P5685810673047511547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108594 (n + 2) - 3

end

end A108857.P5685810673047511547

namespace A108857

/-- `A108594(n+2)-3` -/
def P5685810673047511547.Spec : Prop :=
  ∀ n, P5685810673047511547.a n = A108857 (n + 1)

end A108857

/-! ## A108857.P12584680748072955187

`∑[Δ[A108594(n+1)]%A038040(n+1)]`
-/

namespace A108857.P12584680748072955187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108594 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A038040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108857.P12584680748072955187

namespace A108857

/-- `∑[Δ[A108594(n+1)]%A038040(n+1)]` -/
def P12584680748072955187.Spec : Prop :=
  ∀ n, P12584680748072955187.a n = A108857 (n + 1)

end A108857

/-! ## A108857.P14549895290196638188

`eq[1, A068695(n+13)]`
-/

namespace A108857.P14549895290196638188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108857.P14549895290196638188

namespace A108857

/-- `eq[1, A068695(n+13)]` -/
def P14549895290196638188.Spec : Prop :=
  ∀ n, (P14549895290196638188.a n : ℤ) = A108857 (n + 1)

end A108857

/-! ## A108857.P5125401021200407333

`eq[1, A091088(n+11)]-2`
-/

namespace A108857.P5125401021200407333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A108857.P5125401021200407333

namespace A108857

/-- `eq[1, A091088(n+11)]-2` -/
def P5125401021200407333.Spec : Prop :=
  ∀ n, P5125401021200407333.a n = A108857 (n + 1)

end A108857

/-! ## A108857.P8204675397737918555

`record[floor((n+1)/A091088(n+14))]`
-/

namespace A108857.P8204675397737918555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A091088 (n + 14) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108857.P8204675397737918555

namespace A108857

/-- `record[floor((n+1)/A091088(n+14))]` -/
def P8204675397737918555.Spec : Prop :=
  ∀ n, P8204675397737918555.a n = A108857 (n + 1)

end A108857

/-! ## A108857.P4776209341577092383

`A023445(A108594(n+2))`
-/

namespace A108857.P4776209341577092383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A108594 (n + 2)).toNat

end

end A108857.P4776209341577092383

namespace A108857

/-- `A023445(A108594(n+2))` -/
def P4776209341577092383.Spec : Prop :=
  ∀ n, P4776209341577092383.a n = A108857 (n + 1)

end A108857

/-! ## A108857.P16043322739830269393

`lt[A000005(A016897(n+23)+A016873(n)), 3]-1`
-/

namespace A108857.P16043322739830269393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016897 (n + 23) + A016873 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A108857.P16043322739830269393

namespace A108857

/-- `lt[A000005(A016897(n+23)+A016873(n)), 3]-1` -/
def P16043322739830269393.Spec : Prop :=
  ∀ n, P16043322739830269393.a n = A108857 (n + 1)

end A108857

/-! ## A108857.P18216939347786015963

`record[n+1-A165835(A017281(n))]`
-/

namespace A108857.P18216939347786015963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A165835 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108857.P18216939347786015963

namespace A108857

/-- `record[n+1-A165835(A017281(n))]` -/
def P18216939347786015963.Spec : Prop :=
  ∀ n, P18216939347786015963.a n = A108857 (n + 1)

end A108857

/-!
# A108860: Numbers k that divide the sum of the digits of (2k)^k.

The programs for A108860, there is no canonical definition to state claims against.
-/

/-! ## A108860.P8978664238234807657

`A297830(n)+A284954(A007633(n+3))`
-/

namespace A108860.P8978664238234807657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + A284954 (A007633 (n + 3)).toNat

end

end A108860.P8978664238234807657

/-! ## A108860.P10822294935024715717

`A297830(n)+A118268(A000079(n+4))`
-/

namespace A108860.P10822294935024715717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + A118268 (A000079 (n + 4)).toNat

end

end A108860.P10822294935024715717

/-!
# A108863: Number of Dyck paths containing exactly one UUUD.

The programs for A108863, the canonical program `A108863.P15641938226968541285` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108863 has offset 0).

The definition of A108863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108863.P15641938226968541285

`A027914(n)-A005717(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108863

/-- `A027914(n)-A005717(n+1)` -/
def P15641938226968541285.Spec : Prop :=
  ∀ n, P15641938226968541285.a n = A108863 n

theorem P15641938226968541285.correct : P15641938226968541285.Spec := by
  intro n
  simp only [A108863]

end A108863

/-! ## A108863.P192077575425792988

`A027914(n)-Δ[A097861(n+1)]`
-/

namespace A108863.P192077575425792988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - (f1 (n + 1) - f1 n)

end

end A108863.P192077575425792988

namespace A108863

/-- `A027914(n)-Δ[A097861(n+1)]` -/
def P192077575425792988.Spec : Prop :=
  ∀ n, P192077575425792988.a n = A108863 n

end A108863

/-! ## A108863.P8440111838194157762

`A027914(n)-Δ[A257520(n+1)]`
-/

namespace A108863.P8440111838194157762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - (f1 (n + 1) - f1 n)

end

end A108863.P8440111838194157762

namespace A108863

/-- `A027914(n)-Δ[A257520(n+1)]` -/
def P8440111838194157762.Spec : Prop :=
  ∀ n, P8440111838194157762.a n = A108863 n

end A108863

/-! ## A108863.P10004911463033222113

`A027914(n)-(n+1)*A001006(n)`
-/

namespace A108863.P10004911463033222113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - (n + 1 : ℤ) * A001006 n

end

end A108863.P10004911463033222113

namespace A108863

/-- `A027914(n)-(n+1)*A001006(n)` -/
def P10004911463033222113.Spec : Prop :=
  ∀ n, P10004911463033222113.a n = A108863 n

end A108863

/-! ## A108863.P9872327434447654052

`A027914(n)-∑[∑[A024998(n+1)]]`
-/

namespace A108863.P9872327434447654052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108863.P9872327434447654052

namespace A108863

/-- `A027914(n)-∑[∑[A024998(n+1)]]` -/
def P9872327434447654052.Spec : Prop :=
  ∀ n, P9872327434447654052.a n = A108863 n

end A108863

/-! ## A108863.P2886625642164693945

`A027914(n)-A005213(A005408(n+1))`
-/

namespace A108863.P2886625642164693945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - A005213 (A005408 (n + 1)).toNat

end

end A108863.P2886625642164693945

namespace A108863

/-- `A027914(n)-A005213(A005408(n+1))` -/
def P2886625642164693945.Spec : Prop :=
  ∀ n, P2886625642164693945.a n = A108863 n

end A108863

/-! ## A108863.P5780436461506271883

`A005043(n+1)+A027914(n)-A002426(n+1)`
-/

namespace A108863.P5780436461506271883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (A027914 n - A002426 (n + 1))

end

end A108863.P5780436461506271883

namespace A108863

/-- `A005043(n+1)+A027914(n)-A002426(n+1)` -/
def P5780436461506271883.Spec : Prop :=
  ∀ n, P5780436461506271883.a n = A108863 n

end A108863

/-! ## A108863.P9676652328997932642

`A134377(n+1)-A055217(n)`
-/

namespace A108863.P9676652328997932642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134377 (n + 1) - A055217 n

end

end A108863.P9676652328997932642

namespace A108863

/-- `A134377(n+1)-A055217(n)` -/
def P9676652328997932642.Spec : Prop :=
  ∀ n, P9676652328997932642.a n = A108863 n

end A108863

/-! ## A108863.P13168798334047749951

`A243827(A000217(n+9)-9)`
-/

namespace A108863.P13168798334047749951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (A000217 (n + 9) - 9).toNat

end

end A108863.P13168798334047749951

namespace A108863

/-- `A243827(A000217(n+9)-9)` -/
def P13168798334047749951.Spec : Prop :=
  ∀ n, P13168798334047749951.a n = A108863 n

end A108863

/-!
# A108864: Numbers n such that the perfect deficiency of n (A109883) is <= 10.

The programs for A108864, there is no canonical definition to state claims against.
-/

/-! ## A108864.P3436932588570030748

`lt[A109883(n+1), 11]+1`
-/

namespace A108864.P3436932588570030748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109883 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A108864.P3436932588570030748

/-! ## A108864.P5336103837505965965

`lt[A357457(n), A160135(n+1)+2]+1`
-/

namespace A108864.P5336103837505965965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A108864.P5336103837505965965

/-! ## A108864.P7802681750914940283

`lt[A247497(A026741(n)), A007092(2*n)]`
-/

namespace A108864.P7802681750914940283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247497 (A026741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108864.P7802681750914940283

/-! ## A108864.P2811095650501341599

`lt[A033999(n)*A081362(n), A160135(n+1)+2]+1`
-/

namespace A108864.P2811095650501341599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A108864.P2811095650501341599

/-! ## A108864.P16379642616829074834

`lt[2*A046682(n)-A000041(n), A160135(n+1)+2]+1`
-/

namespace A108864.P16379642616829074834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046682 n - A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A108864.P16379642616829074834

/-!
# A108866: Numerator of Sum_{k=1..n} 2^k/k.

The programs for A108866, there is no canonical definition to state claims against.
-/

/-! ## A108866.P635745617226456274

`record[A333220(A336130(n))]`
-/

namespace A108866.P635745617226456274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (A336130 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108866.P635745617226456274

/-! ## A108866.P9471415848246120327

`A326752(A120355(n+1))`
-/

namespace A108866.P9471415848246120327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326752 (A120355 (n + 1)).toNat

end

end A108866.P9471415848246120327

/-!
# A108868: Numbers n such that n^5 + 3 is semiprime.

The programs for A108868, there is no canonical definition to state claims against.
-/

/-! ## A108868.P3152337275843570557

`A040976(n+1)+A001221(A000011(2*n+3))`
-/

namespace A108868.P3152337275843570557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + A001221 (A000011 (2 * n + 3)).toNat

end

end A108868.P3152337275843570557

/-! ## A108868.P8873014562543388909

`A033265(A000984(n))+A014689(n+1)`
-/

namespace A108868.P8873014562543388909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A000984 n).toNat + A014689 (n + 1)

end

end A108868.P8873014562543388909

/-! ## A108868.P10526925325862541599

`A196563(A148672(n))+A006093(n+1)`
-/

namespace A108868.P10526925325862541599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A148672 n).toNat + A006093 (n + 1)

end

end A108868.P10526925325862541599

/-! ## A108868.P2708228727700652251

`A106799(A294807(n))+A006093(n+1)`
-/

namespace A108868.P2708228727700652251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A294807 n).toNat + A006093 (n + 1)

end

end A108868.P2708228727700652251

/-!
# A108869: E.g.f. : exp(6x)/(1-x).

The programs for A108869, there is no canonical definition to state claims against.
-/

/-! ## A108869.P7998457661499677540

`6^n+n*a(n-1)` with `a(0)=1`
-/

namespace A108869.P7998457661499677540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 ^ n + n * a (n - 1)

end

end A108869.P7998457661499677540

/-! ## A108869.P6799855154845856572

`6^n+a(n-1)/n^-1` with `a(0)=1`
-/

namespace A108869.P6799855154845856572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A108869.P6799855154845856572

/-! ## A108869.P12870632041627511439

`n*a(A023443(n))+6^n` with `a(0)=1`
-/

namespace A108869.P12870632041627511439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a (A023443 n).toNat + 6 ^ n

end

end A108869.P12870632041627511439

/-! ## A108869.P16097860073461664443

`n*a(n-1)-(1-A062394(n))` with `a(0)=1`
-/

namespace A108869.P16097860073461664443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - (1 - A062394 n)

end

end A108869.P16097860073461664443

/-! ## A108869.P429150937055223711

`n*a(n-1)+A000400(n)+A000007(n)` with `a(0)=1`
-/

namespace A108869.P429150937055223711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (A000400 n + A000007 n)

end

end A108869.P429150937055223711

/-! ## A108869.P5338161037983906784

`n*a(n-1)+A000079(n)*A000244(n)` with `a(0)=1`
-/

namespace A108869.P5338161037983906784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + A000079 n * A000244 n

end

end A108869.P5338161037983906784

/-!
# A108870: a(n) = ceiling((9*(9/4)^n - 4) / 5).

The programs for A108870, the canonical program `A108870.P3013101807824558600` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108870 has offset 0).

The definition of A108870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((9*(9/4)^n-4)/5)` (program `A108870.P3013101807824558600`, by `A108870.P3013101807824558600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108870.P3013101807824558600

`ceil((9*(9/4)^n-4)/5)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108870

/-- `ceil((9*(9/4)^n-4)/5)` -/
def P3013101807824558600.Spec : Prop :=
  ∀ n, P3013101807824558600.a n = A108870 n

theorem P3013101807824558600.correct : P3013101807824558600.Spec := by
  intro n
  simp only [A108870]

end A108870

/-! ## A108870.P13487356626605385684

`A361506(n)+A057427(n)`
-/

namespace A108870.P13487356626605385684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361506 n + A057427 n

end

end A108870.P13487356626605385684

namespace A108870

/-- `A361506(n)+A057427(n)` -/
def P13487356626605385684.Spec : Prop :=
  ∀ n, P13487356626605385684.a n = A108870 n

end A108870

/-! ## A108870.P3206314323545952621

`A361506(n)-A057428(n)`
-/

namespace A108870.P3206314323545952621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361506 n - A057428 n

end

end A108870.P3206314323545952621

namespace A108870

/-- `A361506(n)-A057428(n)` -/
def P3206314323545952621.Spec : Prop :=
  ∀ n, P3206314323545952621.a n = A108870 n

end A108870

/-! ## A108870.P15598488098937629098

`A361506(n)+char[A060791(n+1)]`
-/

namespace A108870.P15598488098937629098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361506 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A108870.P15598488098937629098

namespace A108870

/-- `A361506(n)+char[A060791(n+1)]` -/
def P15598488098937629098.Spec : Prop :=
  ∀ n, P15598488098937629098.a n = A108870 n

end A108870

/-! ## A108870.P1464670962472203928

`A361506(n)+char[A108591(n+1)]`
-/

namespace A108870.P1464670962472203928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361506 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A108870.P1464670962472203928

namespace A108870

/-- `A361506(n)+char[A108591(n+1)]` -/
def P1464670962472203928.Spec : Prop :=
  ∀ n, P1464670962472203928.a n = A108870 n

end A108870

/-! ## A108870.P4514885601621521495

`A361506(n)+char[A112798(n+2)]`
-/

namespace A108870.P4514885601621521495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361506 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A108870.P4514885601621521495

namespace A108870

/-- `A361506(n)+char[A112798(n+2)]` -/
def P4514885601621521495.Spec : Prop :=
  ∀ n, P4514885601621521495.a n = A108870 n

end A108870

/-! ## A108870.P17053046252218556262

`A361506(n)+A035531(A062383(n))`
-/

namespace A108870.P17053046252218556262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361506 n + A035531 (A062383 n).toNat

end

end A108870.P17053046252218556262

namespace A108870

/-- `A361506(n)+A035531(A062383(n))` -/
def P17053046252218556262.Spec : Prop :=
  ∀ n, P17053046252218556262.a n = A108870 n

end A108870

/-!
# A108871: Numbers n such that the number of digits required to write the prime factors of n is equal to the number of divisors of n.

The programs for A108871, there is no canonical definition to state claims against.
-/

/-! ## A108871.P16211181860715856542

`eq[A000005(n+1), A076649(n+1)]+1`
-/

namespace A108871.P16211181860715856542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108871.P16211181860715856542

/-! ## A108871.P7810572196999961208

`eq[A061142(n+1), A095407(n+1)]+1`
-/

namespace A108871.P7810572196999961208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108871.P7810572196999961208

/-! ## A108871.P1591992566536858097

`eq[A076649(n+1), A124316(n+1)]+1`
-/

namespace A108871.P1591992566536858097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108871.P1591992566536858097

/-! ## A108871.P12277530621844140620

`eq[A095407(n+1), A124316(n+1)]+1`
-/

namespace A108871.P12277530621844140620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108871.P12277530621844140620

/-! ## A108871.P7409355644981880760

`eq[A076649(n+1), A181819(n+1)]+1`
-/

namespace A108871.P7409355644981880760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108871.P7409355644981880760

/-! ## A108871.P612100943469491066

`eq[A076649(n+1), A253139(n+1)]+1`
-/

namespace A108871.P612100943469491066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A108871.P612100943469491066

/-!
# A108872: Sums of ordinal references for a triangular table read by columns, top to bottom.

The programs for A108872, the canonical program `A108872.P7491610889121363756` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108872 has offset 1).

The definition of A108872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108872.P7491610889121363756

`A002024(n+1)+A002260(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A108872

/-- `A002024(n+1)+A002260(n+1)` -/
def P7491610889121363756.Spec : Prop :=
  ∀ n, P7491610889121363756.a n = A108872 (n + 1)

theorem P7491610889121363756.correct : P7491610889121363756.Spec := by
  intro n
  simp only [A108872, Nat.add_sub_cancel]

end A108872

/-! ## A108872.P765336878259292757

`2-C(∑[char[∑[n+1]]], 2)+n`
-/

namespace A108872.P765336878259292757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)

end

end A108872.P765336878259292757

namespace A108872

/-- `2-C(∑[char[∑[n+1]]], 2)+n` -/
def P765336878259292757.Spec : Prop :=
  ∀ n, P765336878259292757.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P2116480195514746677

`2*(n+1)-eq[0, floor(2*sqrt(n))%2]`
-/

namespace A108872.P2116480195514746677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A108872.P2116480195514746677

namespace A108872

/-- `2*(n+1)-eq[0, floor(2*sqrt(n))%2]` -/
def P2116480195514746677.Spec : Prop :=
  ∀ n, P2116480195514746677.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P3746204880586353883

`abs(2-(C(comp[∑[n]]-n-2, 2)-n-n))-n`
-/

namespace A108872.P3746204880586353883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - 2).toNat 2 : ℤ) - (n : ℤ) - (n : ℤ))| - (n : ℤ)

end

end A108872.P3746204880586353883

namespace A108872

/-- `abs(2-(C(comp[∑[n]]-n-2, 2)-n-n))-n` -/
def P3746204880586353883.Spec : Prop :=
  ∀ n, P3746204880586353883.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P8325715113349358310

`A051162(n)+2`
-/

namespace A108872.P8325715113349358310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + 2

end

end A108872.P8325715113349358310

namespace A108872

/-- `A051162(n)+2` -/
def P8325715113349358310.Spec : Prop :=
  ∀ n, P8325715113349358310.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P3979800723443108820

`A094727(comp[∑[n]])`
-/

namespace A108872.P3979800723443108820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A108872.P3979800723443108820

namespace A108872

/-- `A094727(comp[∑[n]])` -/
def P3979800723443108820.Spec : Prop :=
  ∀ n, P3979800723443108820.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P7298448393904954228

`A094727(n+1)+1`
-/

namespace A108872.P7298448393904954228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + 1

end

end A108872.P7298448393904954228

namespace A108872

/-- `A094727(n+1)+1` -/
def P7298448393904954228.Spec : Prop :=
  ∀ n, P7298448393904954228.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P393138885025887208

`(A131432(n)+5)/3`
-/

namespace A108872.P393138885025887208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131432 n + 5 : ℚ) / 3

end

end A108872.P393138885025887208

namespace A108872

/-- `(A131432(n)+5)/3` -/
def P393138885025887208.Spec : Prop :=
  ∀ n, P393138885025887208.a n = (A108872 (n + 1) : ℚ)

end A108872

/-! ## A108872.P7390485019114315197

`floor(log2(A130324(n)))+2`
-/

namespace A108872.P7390485019114315197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A130324 n).toNat + 2

end

end A108872.P7390485019114315197

namespace A108872

/-- `floor(log2(A130324(n)))+2` -/
def P7390485019114315197.Spec : Prop :=
  ∀ n, (P7390485019114315197.a n : ℤ) = A108872 (n + 1)

end A108872

/-! ## A108872.P943290276006458452

`∑[2-abs(A167407(n))]`
-/

namespace A108872.P943290276006458452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - |A167407 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108872.P943290276006458452

namespace A108872

/-- `∑[2-abs(A167407(n))]` -/
def P943290276006458452.Spec : Prop :=
  ∀ n, P943290276006458452.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P13760119301883577497

`comp[∑[n]]-A057944(n)`
-/

namespace A108872.P13760119301883577497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A057944 n

end

end A108872.P13760119301883577497

namespace A108872

/-- `comp[∑[n]]-A057944(n)` -/
def P13760119301883577497.Spec : Prop :=
  ∀ n, P13760119301883577497.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P12495049668292036892

`(A131421(n+1)+3)/2`
-/

namespace A108872.P12495049668292036892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131421 (n + 1) + 3 : ℚ) / 2

end

end A108872.P12495049668292036892

namespace A108872

/-- `(A131421(n+1)+3)/2` -/
def P12495049668292036892.Spec : Prop :=
  ∀ n, P12495049668292036892.a n = (A108872 (n + 1) : ℚ)

end A108872

/-! ## A108872.P3391379705253000553

`2*(n+1)-A063656(n)`
-/

namespace A108872.P3391379705253000553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A063656 n

end

end A108872.P3391379705253000553

namespace A108872

/-- `2*(n+1)-A063656(n)` -/
def P3391379705253000553.Spec : Prop :=
  ∀ n, P3391379705253000553.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P11098682371478107996

`floor(sqrt(A214604(n+1)))+1`
-/

namespace A108872.P11098682371478107996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A214604 (n + 1)) + 1

end

end A108872.P11098682371478107996

namespace A108872

/-- `floor(sqrt(A214604(n+1)))+1` -/
def P11098682371478107996.Spec : Prop :=
  ∀ n, P11098682371478107996.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P1402380590692869373

`ceil(sqrt(A214661(n+1)))+1`
-/

namespace A108872.P1402380590692869373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A214661 (n + 1) : ℝ)⌉ + 1

end

end A108872.P1402380590692869373

namespace A108872

/-- `ceil(sqrt(A214661(n+1)))+1` -/
def P1402380590692869373.Spec : Prop :=
  ∀ n, P1402380590692869373.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P12424155693227578003

`floor(log2(A233757(n+1)))+2`
-/

namespace A108872.P12424155693227578003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A233757 (n + 1)).toNat + 2

end

end A108872.P12424155693227578003

namespace A108872

/-- `floor(log2(A233757(n+1)))+2` -/
def P12424155693227578003.Spec : Prop :=
  ∀ n, (P12424155693227578003.a n : ℤ) = A108872 (n + 1)

end A108872

/-! ## A108872.P7535573852381692436

`A020725(A094727(n+1))`
-/

namespace A108872.P7535573852381692436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A094727 (n + 1)).toNat

end

end A108872.P7535573852381692436

namespace A108872

/-- `A020725(A094727(n+1))` -/
def P7535573852381692436.Spec : Prop :=
  ∀ n, P7535573852381692436.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P15069352999649077394

`A008620(A131432(n))+1`
-/

namespace A108872.P15069352999649077394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A131432 n).toNat + 1

end

end A108872.P15069352999649077394

namespace A108872

/-- `A008620(A131432(n))+1` -/
def P15069352999649077394.Spec : Prop :=
  ∀ n, P15069352999649077394.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P8520203266273005856

`A030451(A131421(n+1))`
-/

namespace A108872.P8520203266273005856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A131421 (n + 1)).toNat

end

end A108872.P8520203266273005856

namespace A108872

/-- `A030451(A131421(n+1))` -/
def P8520203266273005856.Spec : Prop :=
  ∀ n, P8520203266273005856.a n = A108872 (n + 1)

end A108872

/-! ## A108872.P13401636945359802841

`A294317(A061579(n))+2`
-/

namespace A108872.P13401636945359802841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A061579 n).toNat + 2

end

end A108872.P13401636945359802841

namespace A108872

/-- `A294317(A061579(n))+2` -/
def P13401636945359802841.Spec : Prop :=
  ∀ n, P13401636945359802841.a n = A108872 (n + 1)

end A108872

/-!
# A108873: Numbers n whose base 3 representations, interpreted as base 10 integers, are semiprimes.

The programs for A108873, there is no canonical definition to state claims against.
-/

/-! ## A108873.P17431524350724309295

`eq[2, A001222(A007089(n+1))]+1`
-/

namespace A108873.P17431524350724309295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007089 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A108873.P17431524350724309295

/-! ## A108873.P16704917915201369399

`eq[2, A008619(A074206(A007089(n)))]`
-/

namespace A108873.P16704917915201369399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A074206 (A007089 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108873.P16704917915201369399

/-! ## A108873.P5116915898977245359

`eq[2, A223135(A007089(n))]`
-/

namespace A108873.P5116915898977245359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (A007089 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108873.P5116915898977245359

/-! ## A108873.P7792940971416764451

`eq[2, A220400(A343810(n))]`
-/

namespace A108873.P7792940971416764451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A343810 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108873.P7792940971416764451

/-! ## A108873.P12697428608938310717

`eq[4, A001222(A007089(A008486(n)))]`
-/

namespace A108873.P12697428608938310717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007089 (A008486 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108873.P12697428608938310717

/-!
# A108874: Numbers k such that 41*k + 43 is prime.

The programs for A108874, the canonical program `A108874.P4436473570880356935` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108874 has offset 1).

The definition of A108874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108874.P4436473570880356935

`eq[1, A001222(41*(n+1)+2)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A108874

/-- `eq[1, A001222(41*(n+1)+2)]` -/
def P4436473570880356935.Spec : Prop :=
  ∀ n, (P4436473570880356935.a n : ℤ) = A108874 (n + 1)

theorem P4436473570880356935.correct : P4436473570880356935.Spec := by
  intro n
  simp only [A108874, Nat.add_sub_cancel]

end A108874

/-! ## A108874.P1601391541610939983

`eq[2, A000005(41*(n+1)+2)]`
-/

namespace A108874.P1601391541610939983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (41 * (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108874.P1601391541610939983

namespace A108874

/-- `eq[2, A000005(41*(n+1)+2)]` -/
def P1601391541610939983.Spec : Prop :=
  ∀ n, (P1601391541610939983.a n : ℤ) = A108874 (n + 1)

end A108874

/-! ## A108874.P121272942122405142

`eq[41*(n+1)+2, A020639(41*(n+1)+2)]`
-/

namespace A108874.P121272942122405142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (41 * (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108874.P121272942122405142

namespace A108874

/-- `eq[41*(n+1)+2, A020639(41*(n+1)+2)]` -/
def P121272942122405142.Spec : Prop :=
  ∀ n, (P121272942122405142.a n : ℤ) = A108874 (n + 1)

end A108874

/-! ## A108874.P16147917298265304427

`eq[2, A294903(41*(n+1)+2)]`
-/

namespace A108874.P16147917298265304427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (41 * (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108874.P16147917298265304427

namespace A108874

/-- `eq[2, A294903(41*(n+1)+2)]` -/
def P16147917298265304427.Spec : Prop :=
  ∀ n, (P16147917298265304427.a n : ℤ) = A108874 (n + 1)

end A108874

/-! ## A108874.P1859470865357314891

`eq[2, A086489(40*(n+1)+n+1)]`
-/

namespace A108874.P1859470865357314891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086489 (40 * (n + 1) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108874.P1859470865357314891

namespace A108874

/-- `eq[2, A086489(40*(n+1)+n+1)]` -/
def P1859470865357314891.Spec : Prop :=
  ∀ n, (P1859470865357314891.a n : ℤ) = A108874 (n + 1)

end A108874

/-!
# A108882: Period doubling sequence starting with '1 0 1'.

The programs for A108882, the canonical program `A108882.P12441020106488939654` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108882 has offset 1).

The definition of A108882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108882.P12441020106488939654

`(val(∑[(n%3)!], 2)+1)%2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108882

/-- `(val(∑[(n%3)!], 2)+1)%2` -/
def P12441020106488939654.Spec : Prop :=
  ∀ n, (P12441020106488939654.a n : ℤ) = A108882 (n + 1)

theorem P12441020106488939654.correct : P12441020106488939654.Spec := by
  intro n
  simp only [A108882, Nat.add_sub_cancel]

end A108882

/-! ## A108882.P15535022475416320739

`C(xor(n, n+1)%3, (2*n)%3)`
-/

namespace A108882.P15535022475416320739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor n (n + 1) % 3) (2 * n % 3)

end

end A108882.P15535022475416320739

namespace A108882

/-- `C(xor(n, n+1)%3, (2*n)%3)` -/
def P15535022475416320739.Spec : Prop :=
  ∀ n, (P15535022475416320739.a n : ℤ) = A108882 (n + 1)

end A108882

/-! ## A108882.P5551624675237607602

`char[(-1)^val(n+1, 2)*floor(lcm(2, 3*n+1)/4)]`
-/

namespace A108882.P5551624675237607602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2 * ⌊(Nat.lcm 2 (3 * n + 1) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A108882.P5551624675237607602

namespace A108882

/-- `char[(-1)^val(n+1, 2)*floor(lcm(2, 3*n+1)/4)]` -/
def P5551624675237607602.Spec : Prop :=
  ∀ n, (P5551624675237607602.a n : ℤ) = A108882 (n + 1)

end A108882

/-! ## A108882.P5382291976212024809

`val(val(record[2*n+gcd(4, n+2)-1]+1, 2)²+1, 2)`
-/

namespace A108882.P5382291976212024809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((Nat.gcd 4 (n + 2) : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat 2 ^ 2 + 1) 2

end

end A108882.P5382291976212024809

namespace A108882

/-- `val(val(record[2*n+gcd(4, n+2)-1]+1, 2)²+1, 2)` -/
def P5382291976212024809.Spec : Prop :=
  ∀ n, (P5382291976212024809.a n : ℤ) = A108882 (n + 1)

end A108882

/-! ## A108882.P8047829241236976630

`val(val(∑[((2*(n+1)-1)%3)²%5]+n+1, 2)²+1, 2)`
-/

namespace A108882.P8047829241236976630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((2 * (n + 1) : ℤ) - 1) 3 ^ 2) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1).toNat 2 ^ 2 + 1) 2

end

end A108882.P8047829241236976630

namespace A108882

/-- `val(val(∑[((2*(n+1)-1)%3)²%5]+n+1, 2)²+1, 2)` -/
def P8047829241236976630.Spec : Prop :=
  ∀ n, (P8047829241236976630.a n : ℤ) = A108882 (n + 1)

end A108882

/-! ## A108882.P7056815995232188812

`A100833(n+1)%2`
-/

namespace A108882.P7056815995232188812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100833 (n + 1)) 2

end

end A108882.P7056815995232188812

namespace A108882

/-- `A100833(n+1)%2` -/
def P7056815995232188812.Spec : Prop :=
  ∀ n, P7056815995232188812.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P5442674763110566983

`A035263(∑[(n%3)!])`
-/

namespace A108882.P5442674763110566983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108882.P5442674763110566983

namespace A108882

/-- `A035263(∑[(n%3)!])` -/
def P5442674763110566983.Spec : Prop :=
  ∀ n, P5442674763110566983.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P13313373535109756498

`round(cos(A333363(n+1)²)²)`
-/

namespace A108882.P13313373535109756498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (A333363 (n + 1) ^ 2 : ℝ) ^ 2)

end

end A108882.P13313373535109756498

namespace A108882

/-- `round(cos(A333363(n+1)²)²)` -/
def P13313373535109756498.Spec : Prop :=
  ∀ n, P13313373535109756498.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P5576100418094309442

`char[A168233(n+1)-(val(n+1, 2)%2+1)]`
-/

namespace A108882.P5576100418094309442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (n + 1) - ((SequenceMachineLib.valuation (n + 1) 2 % 2 + 1 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A108882.P5576100418094309442

namespace A108882

/-- `char[A168233(n+1)-(val(n+1, 2)%2+1)]` -/
def P5576100418094309442.Spec : Prop :=
  ∀ n, (P5576100418094309442.a n : ℤ) = A108882 (n + 1)

end A108882

/-! ## A108882.P1481329658143000595

`A035263(A117899(n))`
-/

namespace A108882.P1481329658143000595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A117899 n).toNat

end

end A108882.P1481329658143000595

namespace A108882

/-- `A035263(A117899(n))` -/
def P1481329658143000595.Spec : Prop :=
  ∀ n, P1481329658143000595.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P8091805751054489290

`A035263(A004773(n+1))`
-/

namespace A108882.P8091805751054489290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A004773 (n + 1)).toNat

end

end A108882.P8091805751054489290

namespace A108882

/-- `A035263(A004773(n+1))` -/
def P8091805751054489290.Spec : Prop :=
  ∀ n, P8091805751054489290.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P2822691561541381347

`A035263(A007479(n+1))`
-/

namespace A108882.P2822691561541381347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A007479 (n + 1)).toNat

end

end A108882.P2822691561541381347

namespace A108882

/-- `A035263(A007479(n+1))` -/
def P2822691561541381347.Spec : Prop :=
  ∀ n, P2822691561541381347.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P3230062160064943216

`A039963(A047395(n+1))`
-/

namespace A108882.P3230062160064943216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A047395 (n + 1)).toNat

end

end A108882.P3230062160064943216

namespace A108882

/-- `A039963(A047395(n+1))` -/
def P3230062160064943216.Spec : Prop :=
  ∀ n, P3230062160064943216.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P18262695273296733892

`A039963(A047396(n+1))`
-/

namespace A108882.P18262695273296733892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A047396 (n + 1)).toNat

end

end A108882.P18262695273296733892

namespace A108882

/-- `A039963(A047396(n+1))` -/
def P18262695273296733892.Spec : Prop :=
  ∀ n, P18262695273296733892.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P9094538374564279043

`A039963(A047399(n+1))`
-/

namespace A108882.P9094538374564279043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A047399 (n + 1)).toNat

end

end A108882.P9094538374564279043

namespace A108882

/-- `A039963(A047399(n+1))` -/
def P9094538374564279043.Spec : Prop :=
  ∀ n, P9094538374564279043.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P16296506286339475082

`A039963(A047400(n+1))`
-/

namespace A108882.P16296506286339475082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A047400 (n + 1)).toNat

end

end A108882.P16296506286339475082

namespace A108882

/-- `A039963(A047400(n+1))` -/
def P16296506286339475082.Spec : Prop :=
  ∀ n, P16296506286339475082.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P3144005204277415180

`A039963(A047525(n+1))`
-/

namespace A108882.P3144005204277415180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A047525 (n + 1)).toNat

end

end A108882.P3144005204277415180

namespace A108882

/-- `A039963(A047525(n+1))` -/
def P3144005204277415180.Spec : Prop :=
  ∀ n, P3144005204277415180.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P9820171394602509756

`A039963(A047526(n+1))`
-/

namespace A108882.P9820171394602509756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A047526 (n + 1)).toNat

end

end A108882.P9820171394602509756

namespace A108882

/-- `A039963(A047526(n+1))` -/
def P9820171394602509756.Spec : Prop :=
  ∀ n, P9820171394602509756.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P9021654316302467972

`A039963(A047528(n+1))`
-/

namespace A108882.P9021654316302467972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A047528 (n + 1)).toNat

end

end A108882.P9021654316302467972

namespace A108882

/-- `A039963(A047528(n+1))` -/
def P9021654316302467972.Spec : Prop :=
  ∀ n, P9021654316302467972.a n = A108882 (n + 1)

end A108882

/-! ## A108882.P10419814201548515157

`A039963(A047529(n+1))`
-/

namespace A108882.P10419814201548515157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A047529 (n + 1)).toNat

end

end A108882.P10419814201548515157

namespace A108882

/-- `A039963(A047529(n+1))` -/
def P10419814201548515157.Spec : Prop :=
  ∀ n, P10419814201548515157.a n = A108882 (n + 1)

end A108882

/-!
# A108883: Numerators of values T(m,m) of urn game described in A108885 and A108886.

The programs for A108883, there is no canonical definition to state claims against.
-/

/-! ## A108883.P17872138741227986927

`A108885(∑[4*n])`
-/

namespace A108883.P17872138741227986927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108885 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108883.P17872138741227986927

/-! ## A108883.P5283662879408376999

`and(-1, A108885(A046092(n)))`
-/

namespace A108883.P5283662879408376999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A108885 (A046092 n).toNat)

end

end A108883.P5283662879408376999

/-! ## A108883.P15444321073422385555

`A332641(n)+A108885(A046092(n))`
-/

namespace A108883.P15444321073422385555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332641 n + A108885 (A046092 n).toNat

end

end A108883.P15444321073422385555

/-!
# A108884: Denominators of values T(m,m) of urn game described in A108885 and A108886.

The programs for A108884, there is no canonical definition to state claims against.
-/

/-! ## A108884.P10820189323070810217

`A108886(∑[4*n])`
-/

namespace A108884.P10820189323070810217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108884.P10820189323070810217

/-! ## A108884.P16786161847737010104

`A108888(∑[4*n])`
-/

namespace A108884.P16786161847737010104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108888 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108884.P16786161847737010104

/-! ## A108884.P10503741794469175748

`and(-1, A108888(A046092(n)))`
-/

namespace A108884.P10503741794469175748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A108888 (A046092 n).toNat)

end

end A108884.P10503741794469175748

/-!
# A108885: Let T(m,p) be the value of the following game: there are m "minus" balls and p "plus" balls in an urn, for a total of n=m+p balls. You may draw balls from the urn one at a time at random and without replacement until you decide to stop drawing. Each minus ball drawn costs you $1 and each plus ball drawn gets you $1. Sequence gives triangle of numerators of T(n-p,p), 0 <= p <= n, read by rows.

The programs for A108885, there is no canonical definition to state claims against.
-/

/-! ## A108885.P3396578939202579193

`A108887(∑[2*n]%A080036(n))`
-/

namespace A108885.P3396578939202579193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108887 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A108885.P3396578939202579193

/-! ## A108885.P235708242445367000

`A108887(A061579(n)%A063007(n))`
-/

namespace A108885.P235708242445367000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108887 (Int.tmod (A061579 n) (A063007 n)).toNat

end

end A108885.P235708242445367000

/-! ## A108885.P5956856360333035596

`A108887(∑[char[∑[n]]]²-n-1)`
-/

namespace A108885.P5956856360333035596
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108887 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A108885.P5956856360333035596

/-! ## A108885.P3022435375632298979

`A057427(n)*A108887(A061579(n))`
-/

namespace A108885.P3022435375632298979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A108887 (A061579 n).toNat

end

end A108885.P3022435375632298979

/-! ## A108885.P1360435007386811055

`A060576(n)*A108887(A061579(n))`
-/

namespace A108885.P1360435007386811055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A108887 (A061579 n).toNat

end

end A108885.P1360435007386811055

/-! ## A108885.P1282508539081355703

`A108887(A061579(n))%A004009(n)`
-/

namespace A108885.P1282508539081355703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108887 (A061579 n).toNat) (A004009 n)

end

end A108885.P1282508539081355703

/-!
# A108886: Let T(m,p) be the value of the following game: there are m "minus" balls and p "plus" balls in an urn, for a total of n=m+p balls. You may draw balls from the urn one at a time at random and without replacement until you decide to stop drawing. Each minus ball drawn costs you $1 and each plus ball drawn gets you $1. Sequence gives triangle of denominators of T(n-p,p), 0 <= p <= n, read by rows.

The programs for A108886, there is no canonical definition to state claims against.
-/

/-! ## A108886.P5908788225322525196

`A108888(A061579(n)%A001690(n+1))`
-/

namespace A108886.P5908788225322525196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108888 (Int.tmod (A061579 n) (A001690 (n + 1))).toNat

end

end A108886.P5908788225322525196

/-! ## A108886.P4648164009493720840

`A108888(A038722(n+2)%A038722(n+10))`
-/

namespace A108886.P4648164009493720840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108888 (Int.tmod (A038722 (n + 2)) (A038722 (n + 10))).toNat

end

end A108886.P4648164009493720840

/-! ## A108886.P4398859510646785847

`A108888(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A108886.P4398859510646785847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108888 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A108886.P4398859510646785847

/-! ## A108886.P18119664223260340922

`A108888(gcd(A010816(n), A061579(n)))`
-/

namespace A108886.P18119664223260340922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108888 (Int.gcd (A010816 n) (A061579 n))

end

end A108886.P18119664223260340922

/-! ## A108886.P13278162137212085466

`A108888(∑[char[∑[n]]]²-n-1)`
-/

namespace A108886.P13278162137212085466
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108888 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A108886.P13278162137212085466

/-!
# A108887: Mirror image of triangle A108885.

The programs for A108887, there is no canonical definition to state claims against.
-/

/-! ## A108887.P3315877999797519772

`A108885(∑[2*n]%comp[∑[n]])`
-/

namespace A108887.P3315877999797519772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108885 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A108887.P3315877999797519772

/-! ## A108887.P9476221594064062597

`A108885(∑[char[∑[n]]]²-(n+1))`
-/

namespace A108887.P9476221594064062597
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108885 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A108887.P9476221594064062597

/-! ## A108887.P17308257410069828158

`A108885(A061579(n))+n%-1`
-/

namespace A108887.P17308257410069828158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108885 (A061579 n).toNat + Int.tmod (n : ℤ) (-1)

end

end A108887.P17308257410069828158

/-! ## A108887.P13718324430881706625

`A057427(n)*A108885(A061579(n))`
-/

namespace A108887.P13718324430881706625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A108885 (A061579 n).toNat

end

end A108887.P13718324430881706625

/-! ## A108887.P12465063473749813073

`A108885(A061579(n))%A004009(n)`
-/

namespace A108887.P12465063473749813073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108885 (A061579 n).toNat) (A004009 n)

end

end A108887.P12465063473749813073

/-! ## A108887.P4148909214611993539

`A060576(n+1)*A108885(A061579(n))`
-/

namespace A108887.P4148909214611993539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1) * A108885 (A061579 n).toNat

end

end A108887.P4148909214611993539

/-! ## A108887.P13467240676607101800

`A020639(2*(n+1))+A108885(A061579(n))-2`
-/

namespace A108887.P13467240676607101800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A108885 (A061579 n).toNat - 2)

end

end A108887.P13467240676607101800

/-!
# A108888: Mirror image of triangle A108886.

The programs for A108888, there is no canonical definition to state claims against.
-/

/-! ## A108888.P2434452650151094638

`A108886(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A108888.P2434452650151094638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108886 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A108888.P2434452650151094638

/-! ## A108888.P2897649526670895729

`A108886(gcd(A010816(n), A061579(n)))`
-/

namespace A108888.P2897649526670895729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108886 (Int.gcd (A010816 n) (A061579 n))

end

end A108888.P2897649526670895729

/-! ## A108888.P5614168870389235838

`A108886(∑[char[∑[n]]]²-n-1)`
-/

namespace A108888.P5614168870389235838
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108886 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A108888.P5614168870389235838

/-! ## A108888.P3986088292810197024

`A108886(A061579(n))%A004771(n)`
-/

namespace A108888.P3986088292810197024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108886 (A061579 n).toNat) (A004771 n)

end

end A108888.P3986088292810197024

/-! ## A108888.P3480000638612210611

`gcd(A000038(n), A108886(A061579(n)))`
-/

namespace A108888.P3480000638612210611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108886 (A061579 n).toNat)

end

end A108888.P3480000638612210611

/-!
# A108889: a(n) is n! divided by LCM of all composite numbers k such that n < k < prime(r) where prime(r-1)< n.

The programs for A108889, there is no canonical definition to state claims against.
-/

/-! ## A108889.P14731029132368381861

`lcm(A068819(n+1), A068819(A028310(n)))`
-/

namespace A108889.P14731029132368381861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068819 (n + 1)) (A068819 (A028310 n).toNat)

end

end A108889.P14731029132368381861

/-! ## A108889.P4898947946145895859

`A043313(n+1)!%A224577(n+1)`
-/

namespace A108889.P4898947946145895859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A043313 (n + 1)).toNat : ℤ) (A224577 (n + 1))

end

end A108889.P4898947946145895859

/-! ## A108889.P5264092790095062001

`A000010(A055487(n+1))%A224577(n+1)`
-/

namespace A108889.P5264092790095062001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A055487 (n + 1)).toNat) (A224577 (n + 1))

end

end A108889.P5264092790095062001

/-!
# A108890: a(n) = floor(Product_{k=1..n} (Sum_{j=1..k} 1/j)).

The programs for A108890, the canonical program `A108890.P7012726143474297119` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108890 has offset 1).

The definition of A108890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108890.P7012726143474297119

`floor(∏[∑[1/(n+1)]])`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108890

/-- `floor(∏[∑[1/(n+1)]])` -/
def P7012726143474297119.Spec : Prop :=
  ∀ n, P7012726143474297119.a n = A108890 (n + 1)

theorem P7012726143474297119.correct : P7012726143474297119.Spec := by
  intro n
  simp only [A108890, Nat.add_sub_cancel]

end A108890

/-! ## A108890.P13298682743682216077

`ceil(∏[∑[1/(n+1)]]-(1-A000007(n)))`
-/

namespace A108890.P13298682743682216077
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j - (1 - A000007 n : ℚ)⌉

end

end A108890.P13298682743682216077

namespace A108890

/-- `ceil(∏[∑[1/(n+1)]]-(1-A000007(n)))` -/
def P13298682743682216077.Spec : Prop :=
  ∀ n, P13298682743682216077.a n = A108890 (n + 1)

end A108890

/-! ## A108890.P7586833545783120365

`A188222(A073188(n!))`
-/

namespace A108890.P7586833545783120365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (A073188 (Nat.factorial n)).toNat

end

end A108890.P7586833545783120365

namespace A108890

/-- `A188222(A073188(n!))` -/
def P7586833545783120365.Spec : Prop :=
  ∀ n, P7586833545783120365.a n = A108890 (n + 1)

end A108890

/-! ## A108890.P4247222367668877383

`A324965(A246657(n+1))`
-/

namespace A108890.P4247222367668877383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A246657 (n + 1)).toNat

end

end A108890.P4247222367668877383

namespace A108890

/-- `A324965(A246657(n+1))` -/
def P4247222367668877383.Spec : Prop :=
  ∀ n, P4247222367668877383.a n = A108890 (n + 1)

end A108890

/-!
# A108891: Triangle read by rows: T(n,k) = number of Schroeder (or royal) n-paths (A006318) containing k returns to the diagonal y=x. (A northeast step lying on y=x contributes a return.)

The programs for A108891, there is no canonical definition to state claims against.
-/

/-! ## A108891.P16180794621397955689

`A172040(comp[∑[n]])`
-/

namespace A108891.P16180794621397955689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A108891.P16180794621397955689

/-! ## A108891.P13145982626220212631

`2*A059268(n)*A104219(n)`
-/

namespace A108891.P13145982626220212631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059268 n * A104219 n)

end

end A108891.P13145982626220212631

/-! ## A108891.P10543079728568727545

`A000079(A002260(n+1))*A104219(n)`
-/

namespace A108891.P10543079728568727545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1)).toNat * A104219 n

end

end A108891.P10543079728568727545

/-! ## A108891.P9560220119597133324

`filter[A172040(n), A178226(#)]`
-/

namespace A108891.P9560220119597133324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A108891.P9560220119597133324

/-! ## A108891.P14904739172106467432

`filter[A172040(n), A381735(#)]`
-/

namespace A108891.P14904739172106467432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381735 (f1 j).toNat = 1) n)

end

end A108891.P14904739172106467432

/-!
# A108893: Difference of primes pairs alternating between form 4k+3 and 4k+1.

The programs for A108893, there is no canonical definition to state claims against.
-/

/-! ## A108893.P6441559762919409756

`A108811(2*(n+1))-A108811(2*(n+1)-1)`
-/

namespace A108893.P6441559762919409756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108811 (2 * (n + 1)) - A108811 (2 * (n + 1) - 1)

end

end A108893.P6441559762919409756

/-! ## A108893.P6146350677135983930

`A013632(A108811(comp[2*n]))`
-/

namespace A108893.P6146350677135983930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A108811 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A108893.P6146350677135983930

/-! ## A108893.P13876070303088595011

`A072918(A108811(2*n+1))+1`
-/

namespace A108893.P13876070303088595011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072918 (A108811 (2 * n + 1)).toNat + 1

end

end A108893.P13876070303088595011

/-! ## A108893.P9121333758593738442

`char[A002262(n)]*A013632(A108811(2*n+1))`
-/

namespace A108893.P9121333758593738442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A013632 (A108811 (2 * n + 1)).toNat

end

end A108893.P9121333758593738442

/-! ## A108893.P12938684355456272604

`A014963(A014634(n))*A013632(A108811(2*n+1))`
-/

namespace A108893.P12938684355456272604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014634 n).toNat * A013632 (A108811 (2 * n + 1)).toNat

end

end A108893.P12938684355456272604

/-!
# A108895: Partial sums of quadruple factorial numbers n!!!! (A007662).

The programs for A108895, the canonical program `A108895.P1627643985345521894` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108895 has offset 0).

The definition of A108895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108895.P1627643985345521894

`∑[n*a(n-4)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108895

/-- `∑[n*a(n-4)]` -/
def P1627643985345521894.Spec : Prop :=
  ∀ n, (P1627643985345521894.a n : ℤ) = A108895 n

theorem P1627643985345521894.correct : P1627643985345521894.Spec := by
  intro n
  simp only [A108895]

end A108895

/-! ## A108895.P16760214636039797713

`∑[a(n-4)/n^(-1)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A108895.P16760214636039797713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  f1 (n - 4) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108895.P16760214636039797713

namespace A108895

/-- `∑[a(n-4)/n^(-1)]` -/
def P16760214636039797713.Spec : Prop :=
  ∀ n, P16760214636039797713.a n = (A108895 n : ℚ)

end A108895

/-! ## A108895.P13092785471902826022

`∑[A007662(n)]`
-/

namespace A108895.P13092785471902826022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108895.P13092785471902826022

namespace A108895

/-- `∑[A007662(n)]` -/
def P13092785471902826022.Spec : Prop :=
  ∀ n, P13092785471902826022.a n = A108895 n

end A108895

/-! ## A108895.P1122468028567720373

`A007662(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A108895.P1122468028567720373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007662 n + a (A023443 n).toNat

end

end A108895.P1122468028567720373

namespace A108895

/-- `A007662(n)+a(A023443(n))` -/
def P1122468028567720373.Spec : Prop :=
  ∀ n, P1122468028567720373.a n = A108895 n

end A108895

/-! ## A108895.P13527564043799894719

`a(n-1)+A007662(n)+A000038(n)` with `a(0)=1`
-/

namespace A108895.P13527564043799894719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A007662 n + A000038 n)

end

end A108895.P13527564043799894719

namespace A108895

/-- `a(n-1)+A007662(n)+A000038(n)` -/
def P13527564043799894719.Spec : Prop :=
  ∀ n, P13527564043799894719.a n = A108895 n

end A108895

/-! ## A108895.P14253767902670907827

`a(n-1)+A001221(A246655(n+1))*A007662(n)` with `a(0)=1`
-/

namespace A108895.P14253767902670907827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001221 (A246655 (n + 1)).toNat * A007662 n

end

end A108895.P14253767902670907827

namespace A108895

/-- `a(n-1)+A001221(A246655(n+1))*A007662(n)` -/
def P14253767902670907827.Spec : Prop :=
  ∀ n, P14253767902670907827.a n = A108895 n

end A108895

/-! ## A108895.P9146461902559218962

`∑[A129116(∑[n+3])]-1`
-/

namespace A108895.P9146461902559218962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A108895.P9146461902559218962

namespace A108895

/-- `∑[A129116(∑[n+3])]-1` -/
def P9146461902559218962.Spec : Prop :=
  ∀ n, P9146461902559218962.a n = A108895 n

end A108895

/-!
# A108896: Numbers whose outer two digits are 9's and inner digits are 4's.

The programs for A108896, the canonical program `A108896.P6791128818038965646` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108896 has offset 1).

The definition of A108896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108896.P6791128818038965646

`9*10^(n+2)+9+40*(10^(n+1)-1)/9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108896

/-- `9*10^(n+2)+9+40*(10^(n+1)-1)/9` -/
def P6791128818038965646.Spec : Prop :=
  ∀ n, P6791128818038965646.a n = (A108896 (n + 1) : ℚ)

end A108896

/-!
# A108897: Numbers k such that 60*k^2 + 30*k - 30 +- 1 is a twin prime pair.

The programs for A108897, there is no canonical definition to state claims against.
-/

/-! ## A108897.P11338297755434682272

`∑[A242746(∏[A065648(n)])]`
-/

namespace A108897.P11338297755434682272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242746 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108897.P11338297755434682272

/-! ## A108897.P2848713603373777545

`∑[A265019(A051767(n+1))]`
-/

namespace A108897.P2848713603373777545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265019 (A051767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108897.P2848713603373777545

/-! ## A108897.P16792672103789785150

`∑[A325640(A325373(3*n+2))]`
-/

namespace A108897.P16792672103789785150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325640 (A325373 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108897.P16792672103789785150

/-! ## A108897.P14902443023589438193

`lt[A244414(A000607(2*n)), A250120(n)]`
-/

namespace A108897.P14902443023589438193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244414 (A000607 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108897.P14902443023589438193

/-! ## A108897.P10464181704061318494

`∑[A290103(A051351(n)^A297242(n+1))]`
-/

namespace A108897.P10464181704061318494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (SequenceMachineLib.roundAway ((A051351 n : ℚ) ^ (A297242 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108897.P10464181704061318494

/-!
# A108898: a(n+3) = 3*a(n+2) - 2*a(n), a(0) = -1, a(1) = 1, a(2) = 3.

The programs for A108898, the canonical program `A108898.P15159264365950637402` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108898 has offset 0).

The definition of A108898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108898.P15159264365950637402

`3*a(n-1)-2*a(n-3)` with `a(0)=-1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108898

/-- `3*a(n-1)-2*a(n-3)` -/
def P15159264365950637402.Spec : Prop :=
  ∀ n, P15159264365950637402.a n = A108898 n

theorem P15159264365950637402.correct : P15159264365950637402.Spec := by
  intro n
  simp only [A108898]

end A108898

/-! ## A108898.P17266516716127434548

`A028860(n+2)-1`
-/

namespace A108898.P17266516716127434548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 2) - 1

end

end A108898.P17266516716127434548

namespace A108898

/-- `A028860(n+2)-1` -/
def P17266516716127434548.Spec : Prop :=
  ∀ n, P17266516716127434548.a n = A108898 n

end A108898

/-! ## A108898.P12807623111298703877

`ogf((-1+4x)/(1-3x+2x^3))`
-/

namespace A108898.P12807623111298703877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4] [1, -3, 0, 2] n

end

end A108898.P12807623111298703877

namespace A108898

/-- `ogf((-1+4x)/(1-3x+2x^3))` -/
def P12807623111298703877.Spec : Prop :=
  ∀ n, P12807623111298703877.a n = A108898 n

end A108898

/-! ## A108898.P8348939752672672064

`∑[2*(a(n-1)+a(n-2))]` with `a(0)=-1, a(1)=2`
-/

namespace A108898.P8348939752672672064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108898.P8348939752672672064

namespace A108898

/-- `∑[2*(a(n-1)+a(n-2))]` -/
def P8348939752672672064.Spec : Prop :=
  ∀ n, P8348939752672672064.a n = A108898 n

end A108898

/-! ## A108898.P3119156987697311926

`2*(a(n-1)+a(n-2))+3` with `a(0)=-1, a(1)=1`
-/

namespace A108898.P3119156987697311926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  2 * (a (n - 1) + a (n - 2)) + 3

end

end A108898.P3119156987697311926

namespace A108898

/-- `2*(a(n-1)+a(n-2))+3` -/
def P3119156987697311926.Spec : Prop :=
  ∀ n, P3119156987697311926.a n = A108898 n

end A108898

/-! ## A108898.P947331290155687629

`∑[a(n-1)+a(n-2)+a(n-1)+a(n-2)]` with `a(0)=-1, a(1)=2`
-/

namespace A108898.P947331290155687629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + (f1 (n - 1) + f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108898.P947331290155687629

namespace A108898

/-- `∑[a(n-1)+a(n-2)+a(n-1)+a(n-2)]` -/
def P947331290155687629.Spec : Prop :=
  ∀ n, P947331290155687629.a n = A108898 n

end A108898

/-! ## A108898.P13858084994725719525

`Δ[A052948(n)]-1`
-/

namespace A108898.P13858084994725719525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A108898.P13858084994725719525

namespace A108898

/-- `Δ[A052948(n)]-1` -/
def P13858084994725719525.Spec : Prop :=
  ∀ n, P13858084994725719525.a n = A108898 n

end A108898

/-! ## A108898.P10037408642589776124

`A293007(n+1)-1`
-/

namespace A108898.P10037408642589776124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293007 (n + 1) - 1

end

end A108898.P10037408642589776124

namespace A108898

/-- `A293007(n+1)-1` -/
def P10037408642589776124.Spec : Prop :=
  ∀ n, P10037408642589776124.a n = A108898 n

end A108898

/-! ## A108898.P11700728057894506105

`2*A002605(n)-1`
-/

namespace A108898.P11700728057894506105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002605 n - 1

end

end A108898.P11700728057894506105

namespace A108898

/-- `2*A002605(n)-1` -/
def P11700728057894506105.Spec : Prop :=
  ∀ n, P11700728057894506105.a n = A108898 n

end A108898

/-! ## A108898.P8608962629484115779

`abs(1-A077917(n))-1`
-/

namespace A108898.P8608962629484115779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A077917 n| - 1

end

end A108898.P8608962629484115779

namespace A108898

/-- `abs(1-A077917(n))-1` -/
def P8608962629484115779.Spec : Prop :=
  ∀ n, P8608962629484115779.a n = A108898 n

end A108898

/-! ## A108898.P11633249488480939783

`2*A160444(2*n+1)-1`
-/

namespace A108898.P11633249488480939783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160444 (2 * n + 1) - 1

end

end A108898.P11633249488480939783

namespace A108898

/-- `2*A160444(2*n+1)-1` -/
def P11633249488480939783.Spec : Prop :=
  ∀ n, P11633249488480939783.a n = A108898 n

end A108898

/-! ## A108898.P10231536993829308403

`2*A160572(2*(n+1))-1`
-/

namespace A108898.P10231536993829308403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160572 (2 * (n + 1)) - 1

end

end A108898.P10231536993829308403

namespace A108898

/-- `2*A160572(2*(n+1))-1` -/
def P10231536993829308403.Spec : Prop :=
  ∀ n, P10231536993829308403.a n = A108898 n

end A108898

/-! ## A108898.P5287265314277068239

`A005666(n)-A026150(n)`
-/

namespace A108898.P5287265314277068239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005666 n - A026150 n

end

end A108898.P5287265314277068239

namespace A108898

/-- `A005666(n)-A026150(n)` -/
def P5287265314277068239.Spec : Prop :=
  ∀ n, P5287265314277068239.a n = A108898 n

end A108898

/-! ## A108898.P17599459784430792125

`A152035(n)-A054977(n)`
-/

namespace A108898.P17599459784430792125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152035 n - A054977 n

end

end A108898.P17599459784430792125

namespace A108898

/-- `A152035(n)-A054977(n)` -/
def P17599459784430792125.Spec : Prop :=
  ∀ n, P17599459784430792125.a n = A108898 n

end A108898

/-! ## A108898.P17832420721433363903

`∑[A028860(n)+A002605(n)]`
-/

namespace A108898.P17832420721433363903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 n + A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108898.P17832420721433363903

namespace A108898

/-- `∑[A028860(n)+A002605(n)]` -/
def P17832420721433363903.Spec : Prop :=
  ∀ n, P17832420721433363903.a n = A108898 n

end A108898

/-! ## A108898.P18382494131525619924

`∑[A083337(n)-A026150(n)]`
-/

namespace A108898.P18382494131525619924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 n - A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108898.P18382494131525619924

namespace A108898

/-- `∑[A083337(n)-A026150(n)]` -/
def P18382494131525619924.Spec : Prop :=
  ∀ n, P18382494131525619924.a n = A108898 n

end A108898

/-! ## A108898.P13192570448779950922

`A028859(n)-(A026150(n)+1)`
-/

namespace A108898.P13192570448779950922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - (A026150 n + 1)

end

end A108898.P13192570448779950922

namespace A108898

/-- `A028859(n)-(A026150(n)+1)` -/
def P13192570448779950922.Spec : Prop :=
  ∀ n, P13192570448779950922.a n = A108898 n

end A108898

/-! ## A108898.P9042128278756832971

`A083337(n)-(A002605(n)+1)`
-/

namespace A108898.P9042128278756832971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 n - (A002605 n + 1)

end

end A108898.P9042128278756832971

namespace A108898

/-- `A083337(n)-(A002605(n)+1)` -/
def P9042128278756832971.Spec : Prop :=
  ∀ n, P9042128278756832971.a n = A108898 n

end A108898

/-! ## A108898.P8052054205819231811

`A152035(n)-(A000007(n)+1)`
-/

namespace A108898.P8052054205819231811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152035 n - (A000007 n + 1)

end

end A108898.P8052054205819231811

namespace A108898

/-- `A152035(n)-(A000007(n)+1)` -/
def P8052054205819231811.Spec : Prop :=
  ∀ n, P8052054205819231811.a n = A108898 n

end A108898

/-! ## A108898.P9476367033585257239

`A127864(n)-(A033999(n)+1)`
-/

namespace A108898.P9476367033585257239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127864 n - (A033999 n + 1)

end

end A108898.P9476367033585257239

namespace A108898

/-- `A127864(n)-(A033999(n)+1)` -/
def P9476367033585257239.Spec : Prop :=
  ∀ n, P9476367033585257239.a n = A108898 n

end A108898

/-!
# A108899: Numbers k such that 11*k + 2357 is prime.

The programs for A108899, there is no canonical definition to state claims against.
-/

/-! ## A108899.P6507973572858155817

`eq[A237649(n+1), A262045(A002618(n+1))]`
-/

namespace A108899.P6507973572858155817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262045 (A002618 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108899.P6507973572858155817

