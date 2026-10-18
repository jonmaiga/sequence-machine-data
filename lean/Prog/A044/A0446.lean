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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A044600: Numbers n such that string 4,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044600, there is no canonical definition to state claims against.
-/

/-! ## A044600.P11652275271685246468

`A044220(n+1)-A051903(A195325(n+1))`
-/

namespace A044600.P11652275271685246468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044220 (n + 1) - A051903 (A195325 (n + 1)).toNat

end

end A044600.P11652275271685246468

/-! ## A044600.P16612259764285637697

`A044220(n+1)-A001511(A339880(n+1))`
-/

namespace A044600.P16612259764285637697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044220 (n + 1) - A001511 (A339880 (n + 1)).toNat

end

end A044600.P16612259764285637697

/-! ## A044600.P3213045394356805665

`A044220(n+1)-A054977(p?[64*n-31])`
-/

namespace A044600.P3213045394356805665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044220 (n + 1) - A054977 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A044600.P3213045394356805665

/-! ## A044600.P4534130857834666336

`A044220(n+1)-A059841(A035008(n))`
-/

namespace A044600.P4534130857834666336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044220 (n + 1) - A059841 (A035008 n).toNat

end

end A044600.P4534130857834666336

/-! ## A044600.P9706397687498071378

`A044220(n+1)-A278700(A167773(n+4))`
-/

namespace A044600.P9706397687498071378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044220 (n + 1) - A278700 (A167773 (n + 4)).toNat

end

end A044600.P9706397687498071378

/-!
# A044601: Numbers n such that string 4,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044601, there is no canonical definition to state claims against.
-/

/-! ## A044601.P10129665237581630043

`or(A044220(n+1)-1, A044220(n+1))`
-/

namespace A044601.P10129665237581630043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044220 (n + 1) - 1) (A044220 (n + 1))

end

end A044601.P10129665237581630043

/-! ## A044601.P1469341263725615925

`A086799(A044220(n+1))`
-/

namespace A044601.P1469341263725615925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044220 (n + 1)).toNat

end

end A044601.P1469341263725615925

/-! ## A044601.P769515233590614382

`A317741(A000124(n))+A044221(n+1)-1`
-/

namespace A044601.P769515233590614382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317741 (A000124 n).toNat + (A044221 (n + 1) - 1)

end

end A044601.P769515233590614382

/-! ## A044601.P16130534186663375185

`A124741(A044221(n+1))`
-/

namespace A044601.P16130534186663375185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044221 (n + 1)).toNat

end

end A044601.P16130534186663375185

/-!
# A044602: Numbers n such that string 4,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044602, there is no canonical definition to state claims against.
-/

/-! ## A044602.P2447808654320097513

`A057168(A044221(n+1)-1)`
-/

namespace A044602.P2447808654320097513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044221 (n + 1) - 1).toNat

end

end A044602.P2447808654320097513

/-! ## A044602.P7997112014242472348

`(A044222(n+1)-1)%A271580(n+1)`
-/

namespace A044602.P7997112014242472348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044222 (n + 1) - 1) (A271580 (n + 1))

end

end A044602.P7997112014242472348

/-! ## A044602.P14763347342724834192

`A044222(n+1)-A007318(A185284(n))`
-/

namespace A044602.P14763347342724834192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044222 (n + 1) - A007318 (A185284 n).toNat

end

end A044602.P14763347342724834192

/-! ## A044602.P1672323836052783068

`A044222(n+1)-A001222(A140708(n+1))`
-/

namespace A044602.P1672323836052783068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044222 (n + 1) - A001222 (A140708 (n + 1)).toNat

end

end A044602.P1672323836052783068

/-! ## A044602.P17178580860628109514

`A044222(n+1)-A001221(A346024(n+1))`
-/

namespace A044602.P17178580860628109514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044222 (n + 1) - A001221 (A346024 (n + 1)).toNat

end

end A044602.P17178580860628109514

/-!
# A044603: Numbers n such that string 4,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044603, there is no canonical definition to state claims against.
-/

/-! ## A044603.P2000246149536153102

`or(A044222(n+1)-1, A044222(n+1))`
-/

namespace A044603.P2000246149536153102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044222 (n + 1) - 1) (A044222 (n + 1))

end

end A044603.P2000246149536153102

/-! ## A044603.P9405299078977502169

`or(A044222(n+1), A140670(A044222(n+1)))`
-/

namespace A044603.P9405299078977502169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044222 (n + 1)) (A140670 (A044222 (n + 1)).toNat)

end

end A044603.P9405299078977502169

/-! ## A044603.P3385263245943078033

`A086799(and(A044222(n+1), A044602(n+1)))`
-/

namespace A044603.P3385263245943078033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (Int.land (A044222 (n + 1)) (A044602 (n + 1))).toNat

end

end A044603.P3385263245943078033

/-! ## A044603.P17811419344587023299

`A086799(A044222(n+1))`
-/

namespace A044603.P17811419344587023299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044222 (n + 1)).toNat

end

end A044603.P17811419344587023299

/-! ## A044603.P8932735403766206256

`or(A044222(n+1), A044602(n+1))%A346024(n+1)`
-/

namespace A044603.P8932735403766206256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A044222 (n + 1)) (A044602 (n + 1))) (A346024 (n + 1))

end

end A044603.P8932735403766206256

/-!
# A044604: Numbers n such that string 4,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044604, there is no canonical definition to state claims against.
-/

/-! ## A044604.P4641786973542814550

`A057168(A044223(n+1)-2)`
-/

namespace A044604.P4641786973542814550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044223 (n + 1) - 2).toNat

end

end A044604.P4641786973542814550

/-! ## A044604.P13490428564993887577

`A044223(n+1)+A022897(A208453(n))`
-/

namespace A044604.P13490428564993887577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044223 (n + 1) + A022897 (A208453 n).toNat

end

end A044604.P13490428564993887577

/-!
# A044605: Numbers n such that string 4,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044605, there is no canonical definition to state claims against.
-/

/-! ## A044605.P3578221894657546827

`or(A044224(n+1)-1, A044224(n+1))`
-/

namespace A044605.P3578221894657546827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044224 (n + 1) - 1) (A044224 (n + 1))

end

end A044605.P3578221894657546827

/-! ## A044605.P2241280803830132335

`A086799(A044224(n+1))`
-/

namespace A044605.P2241280803830132335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044224 (n + 1)).toNat

end

end A044605.P2241280803830132335

/-! ## A044605.P5642206031543473337

`A057168(A044224(C(n+1, n)))-1`
-/

namespace A044605.P5642206031543473337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044224 (Nat.choose (n + 1) n)).toNat - 1

end

end A044605.P5642206031543473337

/-! ## A044605.P8436939042601545690

`A057168(A044224(Δ[n²]-n))-1`
-/

namespace A044605.P8436939042601545690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044224 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A044605.P8436939042601545690

/-! ## A044605.P16537859482113711330

`A044225(n+1)-A001222(A125876(n+1))`
-/

namespace A044605.P16537859482113711330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044225 (n + 1) - A001222 (A125876 (n + 1)).toNat

end

end A044605.P16537859482113711330

/-!
# A044606: Numbers n such that string 4,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044606, there is no canonical definition to state claims against.
-/

/-! ## A044606.P11812899785815041447

`A057168(A044225(n+1)-1)`
-/

namespace A044606.P11812899785815041447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044225 (n + 1) - 1).toNat

end

end A044606.P11812899785815041447

/-! ## A044606.P11323130833844802817

`A044226(n+1)-A151622(n)!`
-/

namespace A044606.P11323130833844802817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044226 (n + 1) - (Nat.factorial (A151622 n).toNat : ℤ)

end

end A044606.P11323130833844802817

/-! ## A044606.P15935203622253784118

`A044226(n+1)-A047726(A333940(2*n))`
-/

namespace A044606.P15935203622253784118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044226 (n + 1) - A047726 (A333940 (2 * n)).toNat

end

end A044606.P15935203622253784118

/-! ## A044606.P17456538400987543802

`(A044226(n+1)-1)%A237182(2*(n+1))`
-/

namespace A044606.P17456538400987543802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044226 (n + 1) - 1) (A237182 (2 * (n + 1)))

end

end A044606.P17456538400987543802

/-! ## A044606.P16175196364395274022

`A044226(n+1)-A353835(A213996(n+1))`
-/

namespace A044606.P16175196364395274022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044226 (n + 1) - A353835 (A213996 (n + 1)).toNat

end

end A044606.P16175196364395274022

/-!
# A044607: Numbers n such that string 4,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044607, there is no canonical definition to state claims against.
-/

/-! ## A044607.P15954603211495061664

`or(A044226(n+1)-1, A044226(n+1))`
-/

namespace A044607.P15954603211495061664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044226 (n + 1) - 1) (A044226 (n + 1))

end

end A044607.P15954603211495061664

/-! ## A044607.P3900995325372949200

`A135534(A044226(n+1))+A044226(n+1)`
-/

namespace A044607.P3900995325372949200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (A044226 (n + 1)).toNat + A044226 (n + 1)

end

end A044607.P3900995325372949200

/-! ## A044607.P17617809192086112175

`A086799(A044226(n+1))`
-/

namespace A044607.P17617809192086112175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044226 (n + 1)).toNat

end

end A044607.P17617809192086112175

/-! ## A044607.P14877915260423759289

`∩[A043956(n+1), A124134(n+1)]`
-/

namespace A044607.P14877915260423759289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044607.P14877915260423759289

/-! ## A044607.P6173343505961805185

`∩[A043956(n+1), A337705(n+1)]`
-/

namespace A044607.P6173343505961805185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044607.P6173343505961805185

/-!
# A044608: Numbers n such that string 5,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044608, there is no canonical definition to state claims against.
-/

/-! ## A044608.P8523781843435206401

`A057168(A044227(n+1)-4)`
-/

namespace A044608.P8523781843435206401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044227 (n + 1) - 4).toNat

end

end A044608.P8523781843435206401

/-! ## A044608.P10228397970779870366

`A044228(n+1)-A001221(A100669(n))`
-/

namespace A044608.P10228397970779870366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044228 (n + 1) - A001221 (A100669 n).toNat

end

end A044608.P10228397970779870366

/-! ## A044608.P7750115885628196346

`A044228(n+1)-A051903(A239315(n))`
-/

namespace A044608.P7750115885628196346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044228 (n + 1) - A051903 (A239315 n).toNat

end

end A044608.P7750115885628196346

/-! ## A044608.P11933709402027475248

`A044228(n+1)-A001221(A046014(n+1))`
-/

namespace A044608.P11933709402027475248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044228 (n + 1) - A001221 (A046014 (n + 1)).toNat

end

end A044608.P11933709402027475248

/-! ## A044608.P7202631443935262583

`A044228(n+1)-A057521(A135985(n+1))`
-/

namespace A044608.P7202631443935262583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044228 (n + 1) - A057521 (A135985 (n + 1)).toNat

end

end A044608.P7202631443935262583

/-!
# A044609: Numbers n such that string 5,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044609, there is no canonical definition to state claims against.
-/

/-! ## A044609.P4336180944429504936

`or(A044228(n+1)-1, A044228(n+1))`
-/

namespace A044609.P4336180944429504936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044228 (n + 1) - 1) (A044228 (n + 1))

end

end A044609.P4336180944429504936

/-! ## A044609.P2685320908818352706

`or(1, A322018(A044228(n+1)))`
-/

namespace A044609.P2685320908818352706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A322018 (A044228 (n + 1)).toNat)

end

end A044609.P2685320908818352706

/-! ## A044609.P10005331034152970936

`A086799(A044228(n+1))`
-/

namespace A044609.P10005331034152970936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044228 (n + 1)).toNat

end

end A044609.P10005331034152970936

/-! ## A044609.P5296552027266144756

`A057168(A044228(n+1))-A020985(n)²`
-/

namespace A044609.P5296552027266144756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044228 (n + 1)).toNat - A020985 n ^ 2

end

end A044609.P5296552027266144756

/-! ## A044609.P13555107408488593677

`A057168(A044228(n+1))-A033999(n)²`
-/

namespace A044609.P13555107408488593677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044228 (n + 1)).toNat - A033999 n ^ 2

end

end A044609.P13555107408488593677

/-! ## A044609.P2040775276834638554

`A057168(A044228(n+1))-A152271(4*n)`
-/

namespace A044609.P2040775276834638554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044228 (n + 1)).toNat - A152271 (4 * n)

end

end A044609.P2040775276834638554

/-! ## A044609.P6589485025183635029

`A057168(A044228(n+1))-(A000041(n)%2)!`
-/

namespace A044609.P6589485025183635029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044228 (n + 1)).toNat - (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

end

end A044609.P6589485025183635029

/-! ## A044609.P16898655873040865801

`A057168(A044228(n+1))-A000041(C(2, n+2))`
-/

namespace A044609.P16898655873040865801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044228 (n + 1)).toNat - A000041 (Nat.choose 2 (n + 2))

end

end A044609.P16898655873040865801

/-! ## A044609.P14618670643806991739

`A057168(A044228(n+1))-A000108(C(2, n+2))`
-/

namespace A044609.P14618670643806991739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044228 (n + 1)).toNat - A000108 (Nat.choose 2 (n + 2))

end

end A044609.P14618670643806991739

/-! ## A044609.P504465444990648605

`A057168(A044228(n+1))-A053796(A016873(n))`
-/

namespace A044609.P504465444990648605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044228 (n + 1)).toNat - A053796 (A016873 n).toNat

end

end A044609.P504465444990648605

/-! ## A044609.P14609387329588394369

`A057168(A044228(n+1))-A014963(A044231(n+1))`
-/

namespace A044609.P14609387329588394369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044228 (n + 1)).toNat - A014963 (A044231 (n + 1)).toNat

end

end A044609.P14609387329588394369

/-! ## A044609.P5516519708461585076

`A057168(A044228(n+1))-A001222(A107006(n+1))`
-/

namespace A044609.P5516519708461585076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044228 (n + 1)).toNat - A001222 (A107006 (n + 1)).toNat

end

end A044609.P5516519708461585076

/-! ## A044609.P7690782141859242405

`A057168(A044228(n+1))-A001222(A135985(n+1))`
-/

namespace A044609.P7690782141859242405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044228 (n + 1)).toNat - A001222 (A135985 (n + 1)).toNat

end

end A044609.P7690782141859242405

/-!
# A044610: Numbers n such that string 5,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044610, there is no canonical definition to state claims against.
-/

/-! ## A044610.P1783816647017423707

`A057168(A044229(n+1)-1)`
-/

namespace A044610.P1783816647017423707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044229 (n + 1) - 1).toNat

end

end A044610.P1783816647017423707

/-! ## A044610.P5414304125856824145

`A057168(A057428(n+1)+A044229(n+1))`
-/

namespace A044610.P5414304125856824145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A057428 (n + 1) + A044229 (n + 1)).toNat

end

end A044610.P5414304125856824145

/-! ## A044610.P9280076062712487436

`A057168(A280193(2*n+1)+A044229(n+1))`
-/

namespace A044610.P9280076062712487436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A280193 (2 * n + 1) + A044229 (n + 1)).toNat

end

end A044610.P9280076062712487436

/-! ## A044610.P11962734734393663445

`A057428(A091351(n))+A044230(n+1)`
-/

namespace A044610.P11962734734393663445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A091351 n).toNat + A044230 (n + 1)

end

end A044610.P11962734734393663445

/-! ## A044610.P15593321484740238622

`A057428(A276076(n))+A044230(n+1)`
-/

namespace A044610.P15593321484740238622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A276076 n).toNat + A044230 (n + 1)

end

end A044610.P15593321484740238622

/-!
# A044611: Numbers n such that string 5,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044611, there is no canonical definition to state claims against.
-/

/-! ## A044611.P6648082873035961070

`or(A044230(n+1)-1, A044230(n+1))`
-/

namespace A044611.P6648082873035961070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044230 (n + 1) - 1) (A044230 (n + 1))

end

end A044611.P6648082873035961070

/-! ## A044611.P14732370292654498939

`A086799(A044230(n+1))`
-/

namespace A044611.P14732370292654498939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044230 (n + 1)).toNat

end

end A044611.P14732370292654498939

/-! ## A044611.P3180233681952633121

`A044231(n+1)-A138342(p?[A155769(n)])`
-/

namespace A044611.P3180233681952633121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044231 (n + 1) - A138342 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A044611.P3180233681952633121

/-! ## A044611.P1960603490716152109

`A044231(n+1)-A001222(A178942(n+1))`
-/

namespace A044611.P1960603490716152109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044231 (n + 1) - A001222 (A178942 (n + 1)).toNat

end

end A044611.P1960603490716152109

/-! ## A044611.P9868002990070906633

`A044231(n+1)-A001222(A089070(n+2))`
-/

namespace A044611.P9868002990070906633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044231 (n + 1) - A001222 (A089070 (n + 2)).toNat

end

end A044611.P9868002990070906633

/-!
# A044612: Numbers n such that string 5,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044612, there is no canonical definition to state claims against.
-/

/-! ## A044612.P16118721018814882585

`A057168(A044231(n+1)-2)`
-/

namespace A044612.P16118721018814882585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044231 (n + 1) - 2).toNat

end

end A044612.P16118721018814882585

/-! ## A044612.P7840401428422975376

`A059169(4*A044227(n+1))+A044231(n+1)-A044226(n+1)`
-/

namespace A044612.P7840401428422975376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A044227 (n + 1)).toNat + (A044231 (n + 1) - A044226 (n + 1))

end

end A044612.P7840401428422975376

/-! ## A044612.P69313935140045134

`or(A044227(n+1), A233583(A044224(n+1)))`
-/

namespace A044612.P69313935140045134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044227 (n + 1)) (A233583 (A044224 (n + 1)).toNat)

end

end A044612.P69313935140045134

/-! ## A044612.P1297777030151867759

`or(A044231(n+1), A233583(A044224(n+1)))`
-/

namespace A044612.P1297777030151867759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044231 (n + 1)) (A233583 (A044224 (n + 1)).toNat)

end

end A044612.P1297777030151867759

/-! ## A044612.P1565045263598590092

`A233583(A044227(n+1))+A044231(n+1)-A044226(n+1)`
-/

namespace A044612.P1565045263598590092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044227 (n + 1)).toNat + (A044231 (n + 1) - A044226 (n + 1))

end

end A044612.P1565045263598590092

/-!
# A044613: Numbers n such that string 5,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044613, there is no canonical definition to state claims against.
-/

/-! ## A044613.P5772226721821638383

`or(A044232(n+1)-1, A044232(n+1))`
-/

namespace A044613.P5772226721821638383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044232 (n + 1) - 1) (A044232 (n + 1))

end

end A044613.P5772226721821638383

/-! ## A044613.P5167049873161319021

`A086799(A044232(n+1))`
-/

namespace A044613.P5167049873161319021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044232 (n + 1)).toNat

end

end A044613.P5167049873161319021

/-! ## A044613.P3281435318457663659

`A057168(A044232(Δ[n²]-n))-1`
-/

namespace A044613.P3281435318457663659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044232 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A044613.P3281435318457663659

/-! ## A044613.P9788561893365404148

`A099837(3*n+1)+A057168(A044232(n+1))`
-/

namespace A044613.P9788561893365404148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 1) + A057168 (A044232 (n + 1)).toNat

end

end A044613.P9788561893365404148

/-! ## A044613.P10559460578643857164

`A057428(3*n+4)+A057168(A044232(n+1))`
-/

namespace A044613.P10559460578643857164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * n + 4) + A057168 (A044232 (n + 1)).toNat

end

end A044613.P10559460578643857164

/-! ## A044613.P5525554255167531375

`A317673(A065091(n+1))+A057168(A044232(n+1))`
-/

namespace A044613.P5525554255167531375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (A065091 (n + 1)).toNat + A057168 (A044232 (n + 1)).toNat

end

end A044613.P5525554255167531375

/-!
# A044614: Numbers n such that string 5,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044614, there is no canonical definition to state claims against.
-/

/-! ## A044614.P6566263306691929022

`A044234(n+1)-A114367(n)%2`
-/

namespace A044614.P6566263306691929022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044234 (n + 1) - Int.tmod (A114367 n) 2

end

end A044614.P6566263306691929022

/-! ## A044614.P4568487556589495379

`A044234(n+1)-and(1, A213970(n+1))`
-/

namespace A044614.P4568487556589495379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044234 (n + 1) - Int.land 1 (A213970 (n + 1))

end

end A044614.P4568487556589495379

/-! ## A044614.P12665378593158148880

`A044234(n+1)-A001221(A114367(n))`
-/

namespace A044614.P12665378593158148880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044234 (n + 1) - A001221 (A114367 n).toNat

end

end A044614.P12665378593158148880

/-! ## A044614.P10216297339137664510

`A044234(n+1)-A001222(A168171(n+1))`
-/

namespace A044614.P10216297339137664510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044234 (n + 1) - A001222 (A168171 (n + 1)).toNat

end

end A044614.P10216297339137664510

/-! ## A044614.P16942941120580763250

`A044234(n+1)-A057427(A281615(n+2))`
-/

namespace A044614.P16942941120580763250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044234 (n + 1) - A057427 (A281615 (n + 2)).toNat

end

end A044614.P16942941120580763250

/-! ## A044614.P13367937173638825491

`A044234(n+1)+A020639(A114367(n)+3)-3`
-/

namespace A044614.P13367937173638825491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044234 (n + 1) + (A020639 (A114367 n + 3).toNat - 3)

end

end A044614.P13367937173638825491

/-! ## A044614.P3737688840432860362

`A044234(n+1)+A008683(A336790(n+1))`
-/

namespace A044614.P3737688840432860362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044234 (n + 1) + A008683 (A336790 (n + 1)).toNat

end

end A044614.P3737688840432860362

/-!
# A044615: Numbers n such that string 5,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044615, there is no canonical definition to state claims against.
-/

/-! ## A044615.P7702398237216491962

`or(A044234(n+1)-1, A044234(n+1))`
-/

namespace A044615.P7702398237216491962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044234 (n + 1) - 1) (A044234 (n + 1))

end

end A044615.P7702398237216491962

/-! ## A044615.P16942674164287379208

`A086799(A044234(n+1))`
-/

namespace A044615.P16942674164287379208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044234 (n + 1)).toNat

end

end A044615.P16942674164287379208

/-! ## A044615.P18024454129987752774

`A044235(n+1)-A057427(A036561(n))`
-/

namespace A044615.P18024454129987752774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044235 (n + 1) - A057427 (A036561 n).toNat

end

end A044615.P18024454129987752774

/-! ## A044615.P15121115338653966590

`A044235(n+1)-A000035(A216055(n+1))`
-/

namespace A044615.P15121115338653966590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044235 (n + 1) - A000035 (A216055 (n + 1)).toNat

end

end A044615.P15121115338653966590

/-! ## A044615.P3696734688180671157

`A044235(n+1)-A035263((n-A016969(n))²)`
-/

namespace A044615.P3696734688180671157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044235 (n + 1) - A035263 (((n : ℤ) - A016969 n) ^ 2).toNat

end

end A044615.P3696734688180671157

/-!
# A044616: Numbers n such that string 6,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044616, there is no canonical definition to state claims against.
-/

/-! ## A044616.P5189538048693924389

`A044236(n+1)-A001221(A137189(n))`
-/

namespace A044616.P5189538048693924389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044236 (n + 1) - A001221 (A137189 n).toNat

end

end A044616.P5189538048693924389

/-! ## A044616.P1358044020245492091

`A044236(n+1)-A057427(A100752(n))`
-/

namespace A044616.P1358044020245492091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044236 (n + 1) - A057427 (A100752 n).toNat

end

end A044616.P1358044020245492091

/-! ## A044616.P5616291641362273172

`A044236(n+1)-A165591(A233543(n))²`
-/

namespace A044616.P5616291641362273172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044236 (n + 1) - A165591 (A233543 n).toNat ^ 2

end

end A044616.P5616291641362273172

/-! ## A044616.P10684621248285058189

`A044236(n+1)-A001222(A127956(n+1))`
-/

namespace A044616.P10684621248285058189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044236 (n + 1) - A001222 (A127956 (n + 1)).toNat

end

end A044616.P10684621248285058189

/-! ## A044616.P14992764175047583190

`A044236(n+1)-A001222(A275516(n+1))`
-/

namespace A044616.P14992764175047583190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044236 (n + 1) - A001222 (A275516 (n + 1)).toNat

end

end A044616.P14992764175047583190

/-! ## A044616.P5867285981425238777

`A044236(n+1)-A001222(A293008(n+1))`
-/

namespace A044616.P5867285981425238777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044236 (n + 1) - A001222 (A293008 (n + 1)).toNat

end

end A044616.P5867285981425238777

/-!
# A044617: Numbers n such that string 6,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044617, there is no canonical definition to state claims against.
-/

/-! ## A044617.P3123243236354129768

`or(A044236(n+1)-1, A044236(n+1))`
-/

namespace A044617.P3123243236354129768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044236 (n + 1) - 1) (A044236 (n + 1))

end

end A044617.P3123243236354129768

/-! ## A044617.P14708124939346735198

`A086799(A044236(n+1))`
-/

namespace A044617.P14708124939346735198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044236 (n + 1)).toNat

end

end A044617.P14708124939346735198

/-! ## A044617.P1942233615116957488

`A044237(n+1)%A141281(n+1)-1`
-/

namespace A044617.P1942233615116957488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044237 (n + 1)) (A141281 (n + 1)) - 1

end

end A044617.P1942233615116957488

/-! ## A044617.P14687127200089664830

`A057428(A059888(n+1))+A044237(n+1)`
-/

namespace A044617.P14687127200089664830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A059888 (n + 1)).toNat + A044237 (n + 1)

end

end A044617.P14687127200089664830

/-! ## A044617.P12241245297492345028

`A057428(A234852(n+1))+A044237(n+1)`
-/

namespace A044617.P12241245297492345028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A234852 (n + 1)).toNat + A044237 (n + 1)

end

end A044617.P12241245297492345028

/-! ## A044617.P17361361008084280198

`A057428(A250611(n+1))+A044237(n+1)`
-/

namespace A044617.P17361361008084280198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A250611 (n + 1)).toNat + A044237 (n + 1)

end

end A044617.P17361361008084280198

/-! ## A044617.P17757332674355068669

`A044237(n+1)-A001222(A145993(n+1))`
-/

namespace A044617.P17757332674355068669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044237 (n + 1) - A001222 (A145993 (n + 1)).toNat

end

end A044617.P17757332674355068669

/-! ## A044617.P5299468205320839483

`A044237(n+1)-A054977(A094307(n+1))`
-/

namespace A044617.P5299468205320839483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044237 (n + 1) - A054977 (A094307 (n + 1)).toNat

end

end A044617.P5299468205320839483

/-! ## A044617.P17234003606393874236

`A044237(n+1)-A001222(A244269(n+1))`
-/

namespace A044617.P17234003606393874236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044237 (n + 1) - A001222 (A244269 (n + 1)).toNat

end

end A044617.P17234003606393874236

/-! ## A044617.P1101406890277216381

`A044237(n+1)-A014973(A259172(n+1))`
-/

namespace A044617.P1101406890277216381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044237 (n + 1) - A014973 (A259172 (n + 1)).toNat

end

end A044617.P1101406890277216381

/-!
# A044618: Numbers n such that string 6,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044618, there is no canonical definition to state claims against.
-/

/-! ## A044618.P8507927153511838646

`A057168(A044237(n+1)-1)`
-/

namespace A044618.P8507927153511838646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044237 (n + 1) - 1).toNat

end

end A044618.P8507927153511838646

/-! ## A044618.P1185192771891647621

`A057168(A057428(n+1)+A044237(n+1))`
-/

namespace A044618.P1185192771891647621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A057428 (n + 1) + A044237 (n + 1)).toNat

end

end A044618.P1185192771891647621

/-! ## A044618.P1980528153649755089

`A044238(n+1)-A151935(n+7)!`
-/

namespace A044618.P1980528153649755089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044238 (n + 1) - (Nat.factorial (A151935 (n + 7)).toNat : ℤ)

end

end A044618.P1980528153649755089

/-! ## A044618.P9409088019003091984

`A057428(A191377(n+1))+A044238(n+1)`
-/

namespace A044618.P9409088019003091984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A191377 (n + 1)).toNat + A044238 (n + 1)

end

end A044618.P9409088019003091984

/-! ## A044618.P648950797906050990

`A057428(A208135(n+1))+A044238(n+1)`
-/

namespace A044618.P648950797906050990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A208135 (n + 1)).toNat + A044238 (n + 1)

end

end A044618.P648950797906050990

/-! ## A044618.P11227182327771304212

`A057428(A249077(n+1))+A044238(n+1)`
-/

namespace A044618.P11227182327771304212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A249077 (n + 1)).toNat + A044238 (n + 1)

end

end A044618.P11227182327771304212

/-! ## A044618.P9657479771390624415

`A044238(n+1)-A001222(A088048(n+1))`
-/

namespace A044618.P9657479771390624415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044238 (n + 1) - A001222 (A088048 (n + 1)).toNat

end

end A044618.P9657479771390624415

/-! ## A044618.P9012924583888959808

`A044238(n+1)-A001222(A192175(n+1))`
-/

namespace A044618.P9012924583888959808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044238 (n + 1) - A001222 (A192175 (n + 1)).toNat

end

end A044618.P9012924583888959808

/-! ## A044618.P13735529463289194855

`A044238(n+1)-A001222(A301918(n+1))`
-/

namespace A044618.P13735529463289194855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044238 (n + 1) - A001222 (A301918 (n + 1)).toNat

end

end A044618.P13735529463289194855

/-!
# A044619: Numbers n such that string 6,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044619, there is no canonical definition to state claims against.
-/

/-! ## A044619.P5527031302369483262

`or(A044238(n+1)-1, A044238(n+1))`
-/

namespace A044619.P5527031302369483262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044238 (n + 1) - 1) (A044238 (n + 1))

end

end A044619.P5527031302369483262

/-! ## A044619.P3331472812930743671

`or(A044238(n+1), A088837(A044238(n+1)))`
-/

namespace A044619.P3331472812930743671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044238 (n + 1)) (A088837 (A044238 (n + 1)).toNat)

end

end A044619.P3331472812930743671

/-! ## A044619.P1249096376332285077

`A086799(A044238(n+1))`
-/

namespace A044619.P1249096376332285077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044238 (n + 1)).toNat

end

end A044619.P1249096376332285077

/-! ## A044619.P10136923576953887788

`A044239(n+1)-A057427(A038207(n))`
-/

namespace A044619.P10136923576953887788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044239 (n + 1) - A057427 (A038207 n).toNat

end

end A044619.P10136923576953887788

/-! ## A044619.P4530708928893020005

`A044239(n+1)-A001222(A090417(n+1))`
-/

namespace A044619.P4530708928893020005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044239 (n + 1) - A001222 (A090417 (n + 1)).toNat

end

end A044619.P4530708928893020005

/-! ## A044619.P15655914080830526227

`A044239(n+1)-A001222(A138889(n+1))`
-/

namespace A044619.P15655914080830526227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044239 (n + 1) - A001222 (A138889 (n + 1)).toNat

end

end A044619.P15655914080830526227

/-! ## A044619.P249178447294959767

`A044239(n+1)-A001222(A249077(n+1))`
-/

namespace A044619.P249178447294959767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044239 (n + 1) - A001222 (A249077 (n + 1)).toNat

end

end A044619.P249178447294959767

/-!
# A044620: Numbers n such that string 6,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044620, there is no canonical definition to state claims against.
-/

/-! ## A044620.P11655667653981505862

`A057168(A044239(n+1)-2)`
-/

namespace A044620.P11655667653981505862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044239 (n + 1) - 2).toNat

end

end A044620.P11655667653981505862

/-! ## A044620.P17591239937801026913

`A267183(3*A044240(n+1))`
-/

namespace A044620.P17591239937801026913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267183 (3 * A044240 (n + 1)).toNat

end

end A044620.P17591239937801026913

/-! ## A044620.P5402685806555740219

`A057428(A003215(n))+A044240(n+1)`
-/

namespace A044620.P5402685806555740219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A003215 n).toNat + A044240 (n + 1)

end

end A044620.P5402685806555740219

/-! ## A044620.P5631012887476739134

`A044240(n+1)+A033999(A302997(n))`
-/

namespace A044620.P5631012887476739134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044240 (n + 1) + A033999 (A302997 n).toNat

end

end A044620.P5631012887476739134

/-! ## A044620.P13796223663114443321

`A044240(n+1)-A330749(A052480(n))`
-/

namespace A044620.P13796223663114443321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044240 (n + 1) - A330749 (A052480 n).toNat

end

end A044620.P13796223663114443321

/-! ## A044620.P831844947012226920

`A044240(n+1)-A001222(A086472(n+1))`
-/

namespace A044620.P831844947012226920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044240 (n + 1) - A001222 (A086472 (n + 1)).toNat

end

end A044620.P831844947012226920

/-! ## A044620.P6699688391234470685

`A044240(n+1)-A001222(A347864(n+1))`
-/

namespace A044620.P6699688391234470685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044240 (n + 1) - A001222 (A347864 (n + 1)).toNat

end

end A044620.P6699688391234470685

/-! ## A044620.P15733469566941204099

`A044240(n+1)-A001222(A144105(n+1))`
-/

namespace A044620.P15733469566941204099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044240 (n + 1) - A001222 (A144105 (n + 1)).toNat

end

end A044620.P15733469566941204099

/-!
# A044621: Numbers n such that string 6,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044621, there is no canonical definition to state claims against.
-/

/-! ## A044621.P11387558041299452738

`or(A044240(n+1)-1, A044240(n+1))`
-/

namespace A044621.P11387558041299452738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044240 (n + 1) - 1) (A044240 (n + 1))

end

end A044621.P11387558041299452738

/-! ## A044621.P16491798706733903264

`or(A044240(n+1), A322017(A044240(n+1)))`
-/

namespace A044621.P16491798706733903264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044240 (n + 1)) (A322017 (A044240 (n + 1)).toNat)

end

end A044621.P16491798706733903264

/-! ## A044621.P5193517808429312298

`A086799(A044240(n+1))`
-/

namespace A044621.P5193517808429312298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044240 (n + 1)).toNat

end

end A044621.P5193517808429312298

/-! ## A044621.P18239267713816723543

`or(A008611(3*A044620(n+1)), A044620(n+1))`
-/

namespace A044621.P18239267713816723543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008611 (3 * A044620 (n + 1)).toNat) (A044620 (n + 1))

end

end A044621.P18239267713816723543

/-! ## A044621.P4209380822448263281

`or(A008620(3*A044620(n+1)), A044620(n+1))`
-/

namespace A044621.P4209380822448263281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008620 (3 * A044620 (n + 1)).toNat) (A044620 (n + 1))

end

end A044621.P4209380822448263281

/-! ## A044621.P1949728881564575768

`or(A044240(n+1), A267183(3*A044240(n+1)))`
-/

namespace A044621.P1949728881564575768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044240 (n + 1)) (A267183 (3 * A044240 (n + 1)).toNat)

end

end A044621.P1949728881564575768

/-!
# A044622: Numbers n such that string 6,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044622, there is no canonical definition to state claims against.
-/

/-! ## A044622.P6630678462724309109

`A057168(A044241(n+1)-1)`
-/

namespace A044622.P6630678462724309109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044241 (n + 1) - 1).toNat

end

end A044622.P6630678462724309109

/-! ## A044622.P2866542231443921261

`A233583(A043948(2*n+1))+33`
-/

namespace A044622.P2866542231443921261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A043948 (2 * n + 1)).toNat + 33

end

end A044622.P2866542231443921261

/-! ## A044622.P14781772406987778469

`record[A140977(A044621(n+1))]`
-/

namespace A044622.P14781772406987778469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044621 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044622.P14781772406987778469

/-! ## A044622.P14912595630822249225

`A140977(A044241(n+1)-1)`
-/

namespace A044622.P14912595630822249225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044241 (n + 1) - 1).toNat

end

end A044622.P14912595630822249225

/-! ## A044622.P17606912863642424345

`A239124(n+1)+A064731(A236679(n+2))`
-/

namespace A044622.P17606912863642424345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) + A064731 (A236679 (n + 2)).toNat

end

end A044622.P17606912863642424345

/-!
# A044623: Numbers n such that string 6,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044623, there is no canonical definition to state claims against.
-/

/-! ## A044623.P8132103672850306343

`∩[A043959(n+1), A214214(n)]`
-/

namespace A044623.P8132103672850306343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P8132103672850306343

/-! ## A044623.P3103459311626033311

`∩[A043959(n+1), A055052(n+1)]`
-/

namespace A044623.P3103459311626033311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P3103459311626033311

/-! ## A044623.P16019220851953175516

`∩[A043959(n+1), A276283(n)]`
-/

namespace A044623.P16019220851953175516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P16019220851953175516

/-! ## A044623.P2650066665467769068

`∩[A043959(n+1), A055050(n+1)]`
-/

namespace A044623.P2650066665467769068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P2650066665467769068

/-! ## A044623.P6448398782271883385

`∩[A043959(n+1), A072939(n+1)]`
-/

namespace A044623.P6448398782271883385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P6448398782271883385

/-! ## A044623.P1864885490491686218

`∩[A043959(n+1), A171947(n+1)]`
-/

namespace A044623.P1864885490491686218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P1864885490491686218

/-! ## A044623.P16978450885787667780

`∩[A014659(n+1), A043959(n+1)]`
-/

namespace A044623.P16978450885787667780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P16978450885787667780

/-! ## A044623.P5474994386217951050

`∩[A043959(n+1), A047477(n+1)]`
-/

namespace A044623.P5474994386217951050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P5474994386217951050

/-! ## A044623.P11159034611478282502

`∩[A043959(n+1), A047478(n+1)]`
-/

namespace A044623.P11159034611478282502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P11159034611478282502

/-! ## A044623.P15883085049922819060

`∩[A043959(n+1), A047480(n+1)]`
-/

namespace A044623.P15883085049922819060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P15883085049922819060

/-! ## A044623.P3766158563445546716

`∩[A043959(n+1), A047484(n+1)]`
-/

namespace A044623.P3766158563445546716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P3766158563445546716

/-! ## A044623.P44039520064299065

`∩[A043959(n+1), A047491(n+1)]`
-/

namespace A044623.P44039520064299065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P44039520064299065

/-! ## A044623.P3570815776227001992

`∩[A043959(n+1), A047523(n+1)]`
-/

namespace A044623.P3570815776227001992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P3570815776227001992

/-! ## A044623.P7526519173806994528

`∩[A043959(n+1), A047525(n+1)]`
-/

namespace A044623.P7526519173806994528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P7526519173806994528

/-! ## A044623.P14925542848444565838

`∩[A043959(n+1), A047526(n+1)]`
-/

namespace A044623.P14925542848444565838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P14925542848444565838

/-! ## A044623.P6310631353609461542

`∩[A043959(n+1), A047528(n+1)]`
-/

namespace A044623.P6310631353609461542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P6310631353609461542

/-! ## A044623.P12803490362102394321

`∩[A043959(n+1), A047529(n+1)]`
-/

namespace A044623.P12803490362102394321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P12803490362102394321

/-! ## A044623.P12732989710614392844

`∩[A043959(n+1), A047531(n+1)]`
-/

namespace A044623.P12732989710614392844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P12732989710614392844

/-! ## A044623.P12231149069648766440

`∩[A043959(n+1), A047536(n+1)]`
-/

namespace A044623.P12231149069648766440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P12231149069648766440

/-! ## A044623.P15096406385864543336

`∩[A043959(n+1), A047537(n+1)]`
-/

namespace A044623.P15096406385864543336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P15096406385864543336

/-!
# A044624: Numbers n such that string 7,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044624, there is no canonical definition to state claims against.
-/

/-! ## A044624.P7424879989733947589

`A044244(n+1)-A151934(n)!`
-/

namespace A044624.P7424879989733947589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044244 (n + 1) - (Nat.factorial (A151934 n).toNat : ℤ)

end

end A044624.P7424879989733947589

/-! ## A044624.P3362129822214143085

`A044244(n+1)-A151935(n)!`
-/

namespace A044624.P3362129822214143085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044244 (n + 1) - (Nat.factorial (A151935 n).toNat : ℤ)

end

end A044624.P3362129822214143085

/-! ## A044624.P12161876635917894380

`A044244(n+1)-A319101(6^∑{e}[n+1, #])`
-/

namespace A044624.P12161876635917894380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044244 (n + 1) - A319101 (6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A044624.P12161876635917894380

/-! ## A044624.P13576226370110884596

`A057428(A005891(n))+A044244(n+1)`
-/

namespace A044624.P13576226370110884596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A005891 n).toNat + A044244 (n + 1)

end

end A044624.P13576226370110884596

/-! ## A044624.P4187040162250378256

`A057428(A009766(n))+A044244(n+1)`
-/

namespace A044624.P4187040162250378256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A009766 n).toNat + A044244 (n + 1)

end

end A044624.P4187040162250378256

/-! ## A044624.P8428387156489620901

`A044244(n+1)-A001222(A105436(n))`
-/

namespace A044624.P8428387156489620901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044244 (n + 1) - A001222 (A105436 n).toNat

end

end A044624.P8428387156489620901

/-! ## A044624.P15386862579031164080

`A057428(A151934(n)!)+A044244(n+1)`
-/

namespace A044624.P15386862579031164080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (Nat.factorial (A151934 n).toNat) + A044244 (n + 1)

end

end A044624.P15386862579031164080

/-! ## A044624.P1034012371362749227

`A044244(n+1)-A001222(A002586(n+1))`
-/

namespace A044624.P1034012371362749227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044244 (n + 1) - A001222 (A002586 (n + 1)).toNat

end

end A044624.P1034012371362749227

/-! ## A044624.P4060701702204632640

`A044244(n+1)-A000045(A151934(n)+1)`
-/

namespace A044624.P4060701702204632640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044244 (n + 1) - A000045 (A151934 n + 1).toNat

end

end A044624.P4060701702204632640

/-!
# A044625: Numbers n such that string 7,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044625, there is no canonical definition to state claims against.
-/

/-! ## A044625.P17717069145187501653

`or(A044244(n+1)-1, A044244(n+1))`
-/

namespace A044625.P17717069145187501653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044244 (n + 1) - 1) (A044244 (n + 1))

end

end A044625.P17717069145187501653

/-! ## A044625.P6990833693408136392

`or(A057428(n)+A044244(n+1), A044244(n+1))`
-/

namespace A044625.P6990833693408136392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044244 (n + 1)) (A044244 (n + 1))

end

end A044625.P6990833693408136392

/-! ## A044625.P2801126853879088195

`A086799(A044244(n+1))`
-/

namespace A044625.P2801126853879088195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044244 (n + 1)).toNat

end

end A044625.P2801126853879088195

/-! ## A044625.P1482523977862609846

`A044245(n+1)-A001222(A122118(n))`
-/

namespace A044625.P1482523977862609846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044245 (n + 1) - A001222 (A122118 n).toNat

end

end A044625.P1482523977862609846

/-! ## A044625.P16860394768380866298

`A044245(n+1)-A001222(A123252(n+1))`
-/

namespace A044625.P16860394768380866298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044245 (n + 1) - A001222 (A123252 (n + 1)).toNat

end

end A044625.P16860394768380866298

/-! ## A044625.P7564544975103696998

`A044245(n+1)-A001222(A344482(n+1))`
-/

namespace A044625.P7564544975103696998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044245 (n + 1) - A001222 (A344482 (n + 1)).toNat

end

end A044625.P7564544975103696998

/-!
# A044626: Numbers n such that string 7,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044626, there is no canonical definition to state claims against.
-/

/-! ## A044626.P168736007407770920

`A057168(A044245(n+1)-1)`
-/

namespace A044626.P168736007407770920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044245 (n + 1) - 1).toNat

end

end A044626.P168736007407770920

/-! ## A044626.P6382263284053379694

`(A044246(n+1)-1)*A124776(C(n, 64))`
-/

namespace A044626.P6382263284053379694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044246 (n + 1) - 1) * A124776 (Nat.choose n 64)

end

end A044626.P6382263284053379694

/-! ## A044626.P13165702429611794246

`(A044246(n+1)-1)^A000142(C(n, 64))`
-/

namespace A044626.P13165702429611794246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044246 (n + 1) - 1 : ℚ) ^ (A000142 (Nat.choose n 64) : ℤ)

end

end A044626.P13165702429611794246

/-! ## A044626.P17164914252436305909

`(A044246(n+1)-1)^A036717(C(n, 64))`
-/

namespace A044626.P17164914252436305909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044246 (n + 1) - 1 : ℚ) ^ (A036717 (Nat.choose n 64) : ℤ)

end

end A044626.P17164914252436305909

/-! ## A044626.P13280242974832209096

`(A044246(n+1)-1)^A327670(C(n, 64)+1)`
-/

namespace A044626.P13280242974832209096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044246 (n + 1) - 1 : ℚ) ^ (A327670 (Nat.choose n 64 + 1) : ℤ)

end

end A044626.P13280242974832209096

/-! ## A044626.P17208427753465453605

`(A044246(n+1)-1)*A007318(3^C(n, 64)²)`
-/

namespace A044626.P17208427753465453605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044246 (n + 1) - 1) * A007318 (3 ^ Nat.choose n 64 ^ 2)

end

end A044626.P17208427753465453605

/-! ## A044626.P9354878500538268813

`A044246(n+1)-A093148(A023929(n))`
-/

namespace A044626.P9354878500538268813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044246 (n + 1) - A093148 (A023929 n).toNat

end

end A044626.P9354878500538268813

/-! ## A044626.P5048448241782069921

`A044246(n+1)-A032742(A006562(n+1))`
-/

namespace A044626.P5048448241782069921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044246 (n + 1) - A032742 (A006562 (n + 1)).toNat

end

end A044626.P5048448241782069921

/-! ## A044626.P3472796492091848550

`A044246(n+1)-A057427(∑[A296875(n+1)])`
-/

namespace A044626.P3472796492091848550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044246 (n + 1) - A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044626.P3472796492091848550

/-!
# A044627: Numbers n such that string 7,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044627, there is no canonical definition to state claims against.
-/

/-! ## A044627.P5372511345895997009

`or(A044246(n+1)-1, A044246(n+1))`
-/

namespace A044627.P5372511345895997009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044246 (n + 1) - 1) (A044246 (n + 1))

end

end A044627.P5372511345895997009

/-! ## A044627.P4366535055887464890

`A086799(A044246(n+1))`
-/

namespace A044627.P4366535055887464890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044246 (n + 1)).toNat

end

end A044627.P4366535055887464890

/-! ## A044627.P8180211789418417233

`A044247(n+1)-A054977(A000879(n+1))`
-/

namespace A044627.P8180211789418417233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044247 (n + 1) - A054977 (A000879 (n + 1)).toNat

end

end A044627.P8180211789418417233

/-! ## A044627.P4640334363530900188

`A044247(n+1)-A001222(A173230(n+1))`
-/

namespace A044627.P4640334363530900188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044247 (n + 1) - A001222 (A173230 (n + 1)).toNat

end

end A044627.P4640334363530900188

/-! ## A044627.P2320707797816153947

`A044247(n+1)-A054977(A121537(n+1))`
-/

namespace A044627.P2320707797816153947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044247 (n + 1) - A054977 (A121537 (n + 1)).toNat

end

end A044627.P2320707797816153947

/-! ## A044627.P7745138847676843485

`A044247(n+1)-A001222(A302720(n+1))`
-/

namespace A044627.P7745138847676843485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044247 (n + 1) - A001222 (A302720 (n + 1)).toNat

end

end A044627.P7745138847676843485

/-!
# A044628: Numbers n such that string 7,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044628, there is no canonical definition to state claims against.
-/

/-! ## A044628.P3531778874619800211

`A057428(A091491(n))+A044248(n+1)`
-/

namespace A044628.P3531778874619800211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A091491 n).toNat + A044248 (n + 1)

end

end A044628.P3531778874619800211

/-! ## A044628.P17420431006397079771

`A057428(A125653(n))+A044248(n+1)`
-/

namespace A044628.P17420431006397079771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A125653 n).toNat + A044248 (n + 1)

end

end A044628.P17420431006397079771

/-! ## A044628.P16297103950183967522

`A057428(A100440(n+1))+A044248(n+1)`
-/

namespace A044628.P16297103950183967522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A100440 (n + 1)).toNat + A044248 (n + 1)

end

end A044628.P16297103950183967522

/-! ## A044628.P7730709257194351497

`A057428(A106577(n+1))+A044248(n+1)`
-/

namespace A044628.P7730709257194351497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A106577 (n + 1)).toNat + A044248 (n + 1)

end

end A044628.P7730709257194351497

/-! ## A044628.P1255206087767214148

`A057428(A163963(n+1))+A044248(n+1)`
-/

namespace A044628.P1255206087767214148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A163963 (n + 1)).toNat + A044248 (n + 1)

end

end A044628.P1255206087767214148

/-! ## A044628.P18355739314510867693

`A057428(A327349(n+1))+A044248(n+1)`
-/

namespace A044628.P18355739314510867693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A327349 (n + 1)).toNat + A044248 (n + 1)

end

end A044628.P18355739314510867693

/-! ## A044628.P2113370416746436510

`A057428(A008000(n+2))+A044248(n+1)`
-/

namespace A044628.P2113370416746436510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008000 (n + 2)).toNat + A044248 (n + 1)

end

end A044628.P2113370416746436510

/-! ## A044628.P559470678237531705

`A044248(n+1)-A001222(A302607(n+4))`
-/

namespace A044628.P559470678237531705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044248 (n + 1) - A001222 (A302607 (n + 4)).toNat

end

end A044628.P559470678237531705

/-! ## A044628.P16343429612244231473

`A057428(∑[A000040(n+1)])+A044248(n+1)`
-/

namespace A044628.P16343429612244231473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044248 (n + 1)

end

end A044628.P16343429612244231473

/-! ## A044628.P8452073396987019228

`A044248(n+1)-A057427(A057168(n+1)²)`
-/

namespace A044628.P8452073396987019228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044248 (n + 1) - A057427 (A057168 (n + 1) ^ 2).toNat

end

end A044628.P8452073396987019228

/-!
# A044629: Numbers n such that string 7,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044629, there is no canonical definition to state claims against.
-/

/-! ## A044629.P2784810268783436004

`or(A044248(n+1)-1, A044248(n+1))`
-/

namespace A044629.P2784810268783436004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044248 (n + 1) - 1) (A044248 (n + 1))

end

end A044629.P2784810268783436004

/-! ## A044629.P14633140545157655310

`or(A057428(n)+A044248(n+1), A044248(n+1))`
-/

namespace A044629.P14633140545157655310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044248 (n + 1)) (A044248 (n + 1))

end

end A044629.P14633140545157655310

/-! ## A044629.P11458661251550080540

`A086799(A044248(n+1))`
-/

namespace A044629.P11458661251550080540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044248 (n + 1)).toNat

end

end A044629.P11458661251550080540

/-! ## A044629.P3796881020302298171

`A057428(n+1)+A057168(A044248(n+1))`
-/

namespace A044629.P3796881020302298171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A057168 (A044248 (n + 1)).toNat

end

end A044629.P3796881020302298171

/-! ## A044629.P10086720613310546366

`A057168(A044248(n+1))-A057427(n+2)`
-/

namespace A044629.P10086720613310546366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044248 (n + 1)).toNat - A057427 (n + 2)

end

end A044629.P10086720613310546366

/-! ## A044629.P1907117389973027958

`A057428(A262392(n))+A044249(n+1)`
-/

namespace A044629.P1907117389973027958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A262392 n).toNat + A044249 (n + 1)

end

end A044629.P1907117389973027958

/-! ## A044629.P223819788922344213

`A044249(n+1)-A057427(A064189(n))`
-/

namespace A044629.P223819788922344213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044249 (n + 1) - A057427 (A064189 n).toNat

end

end A044629.P223819788922344213

/-! ## A044629.P2206015914096795097

`A044249(n+1)-A033273(A027862(n+1))`
-/

namespace A044629.P2206015914096795097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044249 (n + 1) - A033273 (A027862 (n + 1)).toNat

end

end A044629.P2206015914096795097

/-! ## A044629.P1882339388636107804

`A044249(n+1)-A057427(A014284(n+1))`
-/

namespace A044629.P1882339388636107804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044249 (n + 1) - A057427 (A014284 (n + 1)).toNat

end

end A044629.P1882339388636107804

/-! ## A044629.P5260649391748723472

`A044249(n+1)-A066247(A023551(n+1))`
-/

namespace A044629.P5260649391748723472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044249 (n + 1) - A066247 (A023551 (n + 1)).toNat

end

end A044629.P5260649391748723472

/-!
# A044630: Numbers n such that string 7,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044630, there is no canonical definition to state claims against.
-/

/-! ## A044630.P4007526482626481724

`A057168(A044249(n+1)-1)`
-/

namespace A044630.P4007526482626481724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044249 (n + 1) - 1).toNat

end

end A044630.P4007526482626481724

/-! ## A044630.P2688941614833085793

`A057168(A057428(n+1)+A044249(n+1))`
-/

namespace A044630.P2688941614833085793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A057428 (n + 1) + A044249 (n + 1)).toNat

end

end A044630.P2688941614833085793

/-! ## A044630.P6031642562294774320

`A092535(A044249(n+1))-(A044248(n+1)-A057427(A091491(n)))`
-/

namespace A044630.P6031642562294774320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (A044249 (n + 1)).toNat - (A044248 (n + 1) - A057427 (A091491 n).toNat)

end

end A044630.P6031642562294774320

/-! ## A044630.P273206934839773778

`A092535(A044249(n+1))-(A044248(n+1)-A001222(A327349(n+1)))`
-/

namespace A044630.P273206934839773778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (A044249 (n + 1)).toNat - (A044248 (n + 1) - A001222 (A327349 (n + 1)).toNat)

end

end A044630.P273206934839773778

/-! ## A044630.P7665020404925190291

`A092535(A044249(n+1))-(A044248(n+1)-A001222(A302607(n+4)))`
-/

namespace A044630.P7665020404925190291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (A044249 (n + 1)).toNat - (A044248 (n + 1) - A001222 (A302607 (n + 4)).toNat)

end

end A044630.P7665020404925190291

/-! ## A044630.P14029832970170602157

`or(A040650(A112622(n+1)), A044626(n+1))`
-/

namespace A044630.P14029832970170602157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040650 (A112622 (n + 1)).toNat) (A044626 (n + 1))

end

end A044630.P14029832970170602157

/-! ## A044630.P12529735773113780026

`or(A040650(A286880(n)), A044626(n+1))`
-/

namespace A044630.P12529735773113780026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040650 (A286880 n).toNat) (A044626 (n + 1))

end

end A044630.P12529735773113780026

/-!
# A044631: Numbers k such that string 7,7 occurs in the base 8 representation of k but not of k+1.

The programs for A044631, there is no canonical definition to state claims against.
-/

/-! ## A044631.P2334786076671126803

`∩[2*(n+1), A044630(n+1)]+1`
-/

namespace A044631.P2334786076671126803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A044631.P2334786076671126803

/-! ## A044631.P11858368466773316469

`∩[A044630(n+1), A005843(n)]+1`
-/

namespace A044631.P11858368466773316469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A044631.P11858368466773316469

/-! ## A044631.P9349284156406132158

`record[A141310(A044630(n+1))]`
-/

namespace A044631.P9349284156406132158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A044630 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044631.P9349284156406132158

/-! ## A044631.P14316878330673911826

`record[-A038608(A044630(n+1)+1)]`
-/

namespace A044631.P14316878330673911826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038608 (A044630 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044631.P14316878330673911826

/-! ## A044631.P4090572840396491284

`record[A000007(n+1)-A038608(A044630(n+1)+1)]`
-/

namespace A044631.P4090572840396491284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A038608 (A044630 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044631.P4090572840396491284

/-! ## A044631.P16996723380919463486

`record[A000038(n+1)-A038608(A044630(n+1)+1)]`
-/

namespace A044631.P16996723380919463486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A038608 (A044630 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044631.P16996723380919463486

/-! ## A044631.P16328590201107515553

`or(a(n-1)+64, A261906(A261891(n+1)))` with `a(0)=63`
-/

namespace A044631.P16328590201107515553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [63] fun n a =>
  Int.lor (a (n - 1) + 64) (A261906 (A261891 (n + 1)).toNat)

end

end A044631.P16328590201107515553

/-!
# A044632: Numbers n such that string 0,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044632, there is no canonical definition to state claims against.
-/

/-! ## A044632.P13605539213225472669

`A264981(A044712(n+1)*A264981(n+1))+A044712(n+1)`
-/

namespace A044632.P13605539213225472669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264981 (A044712 (n + 1) * A264981 (n + 1)).toNat + A044712 (n + 1)

end

end A044632.P13605539213225472669

/-! ## A044632.P4558234426942654413

`A348037(A002426(n))+A044712(n+1)`
-/

namespace A044632.P4558234426942654413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (A002426 n).toNat + A044712 (n + 1)

end

end A044632.P4558234426942654413

/-! ## A044632.P2936219695600737347

`A044251(n+1)+A348037(A002426(n))-1`
-/

namespace A044632.P2936219695600737347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044251 (n + 1) + (A348037 (A002426 n).toNat - 1)

end

end A044632.P2936219695600737347

/-! ## A044632.P10658533501829907938

`A343103(A295181(3*n+1))+A305548(3*(n+1))`
-/

namespace A044632.P10658533501829907938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343103 (A295181 (3 * n + 1)).toNat + A305548 (3 * (n + 1))

end

end A044632.P10658533501829907938

/-! ## A044632.P8480994479669353688

`A322020(A148432(n))+A044712(n+1)`
-/

namespace A044632.P8480994479669353688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322020 (A148432 n).toNat + A044712 (n + 1)

end

end A044632.P8480994479669353688

/-!
# A044633: Numbers n such that string 0,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044633, there is no canonical definition to state claims against.
-/

/-! ## A044633.P11689042202432986137

`A002517(A044252(n+1))-1`
-/

namespace A044633.P11689042202432986137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044252 (n + 1)).toNat - 1

end

end A044633.P11689042202432986137

/-! ## A044633.P18075451680493428355

`A057428(n+1)+A002517(A044252(n+1))`
-/

namespace A044633.P18075451680493428355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044252 (n + 1)).toNat

end

end A044633.P18075451680493428355

/-! ## A044633.P12120777333402469683

`A134824(n+2)+A002517(A044252(n+1))`
-/

namespace A044633.P12120777333402469683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A002517 (A044252 (n + 1)).toNat

end

end A044633.P12120777333402469683

/-! ## A044633.P14427298995394114988

`A153881(n+2)+A002517(A044252(n+1))`
-/

namespace A044633.P14427298995394114988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A002517 (A044252 (n + 1)).toNat

end

end A044633.P14427298995394114988

/-! ## A044633.P14618584630305171921

`A323191(Δ[n²])+A002517(A044252(n+1))`
-/

namespace A044633.P14618584630305171921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323191 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A002517 (A044252 (n + 1)).toNat

end

end A044633.P14618584630305171921

/-! ## A044633.P16823278375608864860

`A323202(Δ[n²])+A002517(A044252(n+1))`
-/

namespace A044633.P16823278375608864860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A002517 (A044252 (n + 1)).toNat

end

end A044633.P16823278375608864860

/-! ## A044633.P2708468841122970723

`A198242((-1)^n+4)+A002517(A044252(n+1))`
-/

namespace A044633.P2708468841122970723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198242 ((-1) ^ n + 4).toNat + A002517 (A044252 (n + 1)).toNat

end

end A044633.P2708468841122970723

/-! ## A044633.P783953965517943256

`A176740(A025458(n))+A002517(A044252(n+1))`
-/

namespace A044633.P783953965517943256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176740 (A025458 n).toNat + A002517 (A044252 (n + 1)).toNat

end

end A044633.P783953965517943256

/-! ## A044633.P6712395977751153613

`A208769(A031368(n+1))+A002517(A044252(n+1))`
-/

namespace A044633.P6712395977751153613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208769 (A031368 (n + 1)).toNat + A002517 (A044252 (n + 1)).toNat

end

end A044633.P6712395977751153613

/-! ## A044633.P15470805885081478069

`A321804(A001222(n+1))+A002517(A044252(n+1))`
-/

namespace A044633.P15470805885081478069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A001222 (n + 1)).toNat + A002517 (A044252 (n + 1)).toNat

end

end A044633.P15470805885081478069

/-! ## A044633.P15552392191828203481

`A316441(A073751(n+1))+A002517(A044252(n+1))`
-/

namespace A044633.P15552392191828203481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A073751 (n + 1)).toNat + A002517 (A044252 (n + 1)).toNat

end

end A044633.P15552392191828203481

/-! ## A044633.P4251672370853076001

`A062157(2*A020655(n+1))+A002517(A044252(n+1))`
-/

namespace A044633.P4251672370853076001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * A020655 (n + 1)).toNat + A002517 (A044252 (n + 1)).toNat

end

end A044633.P4251672370853076001

/-!
# A044634: Numbers n such that string 0,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044634, there is no canonical definition to state claims against.
-/

/-! ## A044634.P1310570862225048780

`A319021(A044253(n+1))-2`
-/

namespace A044634.P1310570862225048780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044253 (n + 1)).toNat - 2

end

end A044634.P1310570862225048780

/-! ## A044634.P1336522187019002919

`A044254(n+1)-A151878(n)!`
-/

namespace A044634.P1336522187019002919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044254 (n + 1) - (Nat.factorial (A151878 n).toNat : ℤ)

end

end A044634.P1336522187019002919

/-! ## A044634.P17377724290387987513

`A044254(n+1)-A057427(A073204(n))`
-/

namespace A044634.P17377724290387987513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044254 (n + 1) - A057427 (A073204 n).toNat

end

end A044634.P17377724290387987513

/-! ## A044634.P5648180740822136135

`A044254(n+1)-A000034(A140513(n))`
-/

namespace A044634.P5648180740822136135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044254 (n + 1) - A000034 (A140513 n).toNat

end

end A044634.P5648180740822136135

/-! ## A044634.P10111726141218077969

`A044254(n+1)-A057427(A167269(n))`
-/

namespace A044634.P10111726141218077969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044254 (n + 1) - A057427 (A167269 n).toNat

end

end A044634.P10111726141218077969

/-! ## A044634.P16402150304407039144

`A044254(n+1)-A167269(A057944(n))`
-/

namespace A044634.P16402150304407039144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044254 (n + 1) - A167269 (A057944 n).toNat

end

end A044634.P16402150304407039144

/-! ## A044634.P7039209942790821019

`A044254(n+1)-A000034(A090988(n+1))`
-/

namespace A044634.P7039209942790821019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044254 (n + 1) - A000034 (A090988 (n + 1)).toNat

end

end A044634.P7039209942790821019

/-! ## A044634.P15506952093141725037

`A044254(n+1)-A000010(A151878(n)+1)`
-/

namespace A044634.P15506952093141725037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044254 (n + 1) - A000010 (A151878 n + 1).toNat

end

end A044634.P15506952093141725037

/-! ## A044634.P10430289327337135476

`A044254(n+1)-A000045(A151878(n)+1)`
-/

namespace A044634.P10430289327337135476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044254 (n + 1) - A000045 (A151878 n + 1).toNat

end

end A044634.P10430289327337135476

/-! ## A044634.P14217568425296538404

`A044254(n+1)+A008683(A151878(n)+2)`
-/

namespace A044634.P14217568425296538404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044254 (n + 1) + A008683 (A151878 n + 2).toNat

end

end A044634.P14217568425296538404

/-!
# A044635: Numbers n such that string 0,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044635, there is no canonical definition to state claims against.
-/

/-! ## A044635.P2159470003141384402

`A319021(A044254(n+1)-2)`
-/

namespace A044635.P2159470003141384402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044254 (n + 1) - 2).toNat

end

end A044635.P2159470003141384402

/-! ## A044635.P1605697647181466363

`A044255(n+1)-A088347(A088347(n))`
-/

namespace A044635.P1605697647181466363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044255 (n + 1) - A088347 (A088347 n).toNat

end

end A044635.P1605697647181466363

/-! ## A044635.P13070911628566764831

`A057428(A242732(n+1))+A044255(n+1)`
-/

namespace A044635.P13070911628566764831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A242732 (n + 1)).toNat + A044255 (n + 1)

end

end A044635.P13070911628566764831

/-! ## A044635.P10307654544204381813

`A044255(n+1)-A057427(A334742(n+1))`
-/

namespace A044635.P10307654544204381813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044255 (n + 1) - A057427 (A334742 (n + 1)).toNat

end

end A044635.P10307654544204381813

/-! ## A044635.P12828139742520417406

`A044255(n+1)-A168185(A338348(n+1))`
-/

namespace A044635.P12828139742520417406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044255 (n + 1) - A168185 (A338348 (n + 1)).toNat

end

end A044635.P12828139742520417406

/-! ## A044635.P5649754123404283486

`A044255(n+1)+A008683(A122462(n+3))`
-/

namespace A044635.P5649754123404283486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044255 (n + 1) + A008683 (A122462 (n + 3)).toNat

end

end A044635.P5649754123404283486

/-! ## A044635.P7896219040921503266

`A044255(n+1)-A151878(n)!`
-/

namespace A044635.P7896219040921503266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044255 (n + 1) - (Nat.factorial (A151878 n).toNat : ℤ)

end

end A044635.P7896219040921503266

/-! ## A044635.P4541408094072021519

`A260196(A140513(n))+A044255(n+1)`
-/

namespace A044635.P4541408094072021519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A140513 n).toNat + A044255 (n + 1)

end

end A044635.P4541408094072021519

/-! ## A044635.P9495333715425278751

`A044255(n+1)-A057427(A073204(n))`
-/

namespace A044635.P9495333715425278751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044255 (n + 1) - A057427 (A073204 n).toNat

end

end A044635.P9495333715425278751

/-! ## A044635.P18048638106647383995

`A044255(n+1)-A001222(A292775(n+1))`
-/

namespace A044635.P18048638106647383995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044255 (n + 1) - A001222 (A292775 (n + 1)).toNat

end

end A044635.P18048638106647383995

/-!
# A044636: Numbers n such that string 0,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044636, there is no canonical definition to state claims against.
-/

/-! ## A044636.P15085080846385739447

`A002517(A044255(n+1))-1`
-/

namespace A044636.P15085080846385739447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044255 (n + 1)).toNat - 1

end

end A044636.P15085080846385739447

/-! ## A044636.P12977098937012796

`abs(A002517(A044255(n-log2(1/2)))-1)`
-/

namespace A044636.P12977098937012796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002517 (A044255 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat - 1|

end

end A044636.P12977098937012796

/-! ## A044636.P14291565574201177018

`A057428(n+1)+A002517(A044255(n+1))`
-/

namespace A044636.P14291565574201177018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044255 (n + 1)).toNat

end

end A044636.P14291565574201177018

/-! ## A044636.P18399620656588085125

`A134824(n+2)+A002517(A044255(n+1))`
-/

namespace A044636.P18399620656588085125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A002517 (A044255 (n + 1)).toNat

end

end A044636.P18399620656588085125

/-! ## A044636.P8953961160675920760

`A033999(Δ[n²])+A002517(A044255(n+1))`
-/

namespace A044636.P8953961160675920760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A002517 (A044255 (n + 1)).toNat

end

end A044636.P8953961160675920760

/-! ## A044636.P1198276184765488880

`A158052(A000040(n+1))+A002517(A044255(n+1))`
-/

namespace A044636.P1198276184765488880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A000040 (n + 1)).toNat + A002517 (A044255 (n + 1)).toNat

end

end A044636.P1198276184765488880

/-! ## A044636.P17851527160023007244

`A157128(A165824(n+1))+A002517(A044255(n+1))`
-/

namespace A044636.P17851527160023007244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (A165824 (n + 1)).toNat + A002517 (A044255 (n + 1)).toNat

end

end A044636.P17851527160023007244

/-! ## A044636.P1510334150229707471

`A307445(A020639(n+2))+A002517(A044255(n+1))`
-/

namespace A044636.P1510334150229707471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A020639 (n + 2)).toNat + A002517 (A044255 (n + 1)).toNat

end

end A044636.P1510334150229707471

/-! ## A044636.P10178287901117706855

`A106400(A001511(2*n+3))+A002517(A044255(n+1))`
-/

namespace A044636.P10178287901117706855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A001511 (2 * n + 3)).toNat + A002517 (A044255 (n + 1)).toNat

end

end A044636.P10178287901117706855

/-! ## A044636.P7387488383873711821

`A044256(n+1)-A054977(A102253(n))`
-/

namespace A044636.P7387488383873711821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044256 (n + 1) - A054977 (A102253 n).toNat

end

end A044636.P7387488383873711821

/-!
# A044637: Numbers n such that string 0,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044637, there is no canonical definition to state claims against.
-/

/-! ## A044637.P6517008224979098173

`A044257(n+1)-A158388(A088347(n))`
-/

namespace A044637.P6517008224979098173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044257 (n + 1) - A158388 (A088347 n).toNat

end

end A044637.P6517008224979098173

/-! ## A044637.P13625053070266611592

`A044257(n+1)-A158388(A106293(n+1))`
-/

namespace A044637.P13625053070266611592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044257 (n + 1) - A158388 (A106293 (n + 1)).toNat

end

end A044637.P13625053070266611592

/-! ## A044637.P10289374475726011659

`A044257(n+1)-A342241(A342253(n+1))`
-/

namespace A044637.P10289374475726011659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044257 (n + 1) - A342241 (A342253 (n + 1)).toNat

end

end A044637.P10289374475726011659

/-! ## A044637.P18281894321903246683

`A044257(n+1)-A003415(A005384(2*n+3))`
-/

namespace A044637.P18281894321903246683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044257 (n + 1) - A003415 (A005384 (2 * n + 3)).toNat

end

end A044637.P18281894321903246683

/-! ## A044637.P14834632203004230958

`A044257(n+1)+A033999(A086337(n+1))`
-/

namespace A044637.P14834632203004230958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044257 (n + 1) + A033999 (A086337 (n + 1)).toNat

end

end A044637.P14834632203004230958

/-! ## A044637.P6188188074870997791

`A044257(n+1)-A007913(A085986(n+1))`
-/

namespace A044637.P6188188074870997791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044257 (n + 1) - A007913 (A085986 (n + 1)).toNat

end

end A044637.P6188188074870997791

/-!
# A044638: Numbers n such that string 0,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044638, there is no canonical definition to state claims against.
-/

/-! ## A044638.P3166837384800506715

`A057428(A034078(n+2))+A044258(n+1)`
-/

namespace A044638.P3166837384800506715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A034078 (n + 2)).toNat + A044258 (n + 1)

end

end A044638.P3166837384800506715

/-! ## A044638.P5482426478737940109

`A044258(n+1)-A057427(A299483(n+1))`
-/

namespace A044638.P5482426478737940109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044258 (n + 1) - A057427 (A299483 (n + 1)).toNat

end

end A044638.P5482426478737940109

/-! ## A044638.P4435739422562828294

`A057428(A050336(n+1)²)+A044258(n+1)`
-/

namespace A044638.P4435739422562828294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A050336 (n + 1) ^ 2).toNat + A044258 (n + 1)

end

end A044638.P4435739422562828294

/-! ## A044638.P13282356000914351995

`A057428(A370496(n+1)²)+A044258(n+1)`
-/

namespace A044638.P13282356000914351995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A370496 (n + 1) ^ 2).toNat + A044258 (n + 1)

end

end A044638.P13282356000914351995

/-! ## A044638.P7553467664878627435

`A057428(A037013(n+1)+1)+A044258(n+1)`
-/

namespace A044638.P7553467664878627435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A037013 (n + 1) + 1).toNat + A044258 (n + 1)

end

end A044638.P7553467664878627435

/-! ## A044638.P4997848267148913294

`A057428(A122542(n+2)+n)+A044258(n+1)`
-/

namespace A044638.P4997848267148913294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A122542 (n + 2) + (n : ℤ)).toNat + A044258 (n + 1)

end

end A044638.P4997848267148913294

/-! ## A044638.P12814614740826670768

`A057428(A318991(∑[n]+2)-1)+A044258(n+1)`
-/

namespace A044638.P12814614740826670768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A318991 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 1).toNat + A044258 (n + 1)

end

end A044638.P12814614740826670768

/-! ## A044638.P1743644127537966096

`A057428((n+1)*A046816(n)+n)+A044258(n+1)`
-/

namespace A044638.P1743644127537966096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((n + 1 : ℤ) * A046816 n + (n : ℤ)).toNat + A044258 (n + 1)

end

end A044638.P1743644127537966096

/-! ## A044638.P15014932332011551100

`A057428(A167487(n+5)+∑[n+3]+1)+A044258(n+1)`
-/

namespace A044638.P15014932332011551100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A167487 (n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat + A044258 (n + 1)

end

end A044638.P15014932332011551100

/-!
# A044639: Numbers n such that string 0,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044639, there is no canonical definition to state claims against.
-/

/-! ## A044639.P15711869890623467145

`A002517(A044258(n+1))-1`
-/

namespace A044639.P15711869890623467145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044258 (n + 1)).toNat - 1

end

end A044639.P15711869890623467145

/-! ## A044639.P17660680149720950149

`A057428(n+1)+A002517(A044258(n+1))`
-/

namespace A044639.P17660680149720950149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044258 (n + 1)).toNat

end

end A044639.P17660680149720950149

/-! ## A044639.P1309318722637206214

`A165326(4*n+10)+A002517(A044258(n+1))`
-/

namespace A044639.P1309318722637206214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (4 * n + 10) + A002517 (A044258 (n + 1)).toNat

end

end A044639.P1309318722637206214

/-! ## A044639.P16932321644571116984

`A302050(A103579(n+1))+A002517(A044258(n+1))`
-/

namespace A044639.P16932321644571116984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A103579 (n + 1)).toNat + A002517 (A044258 (n + 1)).toNat

end

end A044639.P16932321644571116984

/-! ## A044639.P10538864860855969150

`A302050(A204903(n+1))+A002517(A044258(n+1))`
-/

namespace A044639.P10538864860855969150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A204903 (n + 1)).toNat + A002517 (A044258 (n + 1)).toNat

end

end A044639.P10538864860855969150

/-! ## A044639.P18337995290720204101

`A302050(A002327(n+1))+A002517(A044258(n+1))`
-/

namespace A044639.P18337995290720204101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A002327 (n + 1)).toNat + A002517 (A044258 (n + 1)).toNat

end

end A044639.P18337995290720204101

/-!
# A044640: Numbers k such that string 0,8 occurs in the base 9 representation of k but not of k+1.

The programs for A044640, there is no canonical definition to state claims against.
-/

/-! ## A044640.P16447021123568535052

`A319021(A044259(n+1))-6`
-/

namespace A044640.P16447021123568535052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044259 (n + 1)).toNat - 6

end

end A044640.P16447021123568535052

/-! ## A044640.P4833943780798706625

`A073531(A078214(n+1))+A044712(n+1)`
-/

namespace A044640.P4833943780798706625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073531 (A078214 (n + 1)).toNat + A044712 (n + 1)

end

end A044640.P4833943780798706625

/-! ## A044640.P13384629019029072666

`A317142(A324093(n+1))+A044639(n+1)`
-/

namespace A044640.P13384629019029072666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317142 (A324093 (n + 1)).toNat + A044639 (n + 1)

end

end A044640.P13384629019029072666

/-!
# A044643: Numbers k such that string 1,2 occurs in the base 9 representation of k but not of k+1.

The programs for A044643, there is no canonical definition to state claims against.
-/

/-! ## A044643.P12651298348357884199

`A319021(A044262(n+1))-2`
-/

namespace A044643.P12651298348357884199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044262 (n + 1)).toNat - 2

end

end A044643.P12651298348357884199

/-! ## A044643.P10969539871032598387

`A044263(A287384(n)+n)-1`
-/

namespace A044643.P10969539871032598387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044263 (A287384 n + (n : ℤ)).toNat - 1

end

end A044643.P10969539871032598387

/-! ## A044643.P13052749264777782469

`A115359(A287384(n))+A044263(n+1)`
-/

namespace A044643.P13052749264777782469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (A287384 n).toNat + A044263 (n + 1)

end

end A044643.P13052749264777782469

/-! ## A044643.P13120977471021037060

`A044263(n+1)-A008683(Δ[A077168(n)])`
-/

namespace A044643.P13120977471021037060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044263 (n + 1) - A008683 (f1 (n + 1) - f1 n).toNat

end

end A044643.P13120977471021037060

/-!
# A044644: Numbers k such that string 1,3 occurs in the base 9 representation of k but not of k+1.

The programs for A044644, there is no canonical definition to state claims against.
-/

/-! ## A044644.P17167685938211972985

`A319021(A044263(n+1)-2)`
-/

namespace A044644.P17167685938211972985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044263 (n + 1) - 2).toNat

end

end A044644.P17167685938211972985

/-! ## A044644.P16091749333213021622

`A044264(A077168(n))-1`
-/

namespace A044644.P16091749333213021622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044264 (A077168 n).toNat - 1

end

end A044644.P16091749333213021622

/-! ## A044644.P5509133196080557551

`A044264(n+1)-A218955(n)%5`
-/

namespace A044644.P5509133196080557551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044264 (n + 1) - Int.tmod (A218955 n) 5

end

end A044644.P5509133196080557551

/-! ## A044644.P4465326117927070855

`A044264(n+1)-A267869(∑[n]²)`
-/

namespace A044644.P4465326117927070855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044264 (n + 1) - A267869 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A044644.P4465326117927070855

/-! ## A044644.P13974466720731991182

`A044264(n+1)-A030101(A000079(n))`
-/

namespace A044644.P13974466720731991182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044264 (n + 1) - A030101 (A000079 n).toNat

end

end A044644.P13974466720731991182

/-!
# A044645: Numbers k such that string 1,4 occurs in the base 9 representation of k but not of k+1.

The programs for A044645, there is no canonical definition to state claims against.
-/

/-! ## A044645.P775744702867114408

`A233583(A044265(n+1))`
-/

namespace A044645.P775744702867114408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044265 (n + 1)).toNat

end

end A044645.P775744702867114408

/-! ## A044645.P15870105518524565654

`A044265(A187829(n+1))-1`
-/

namespace A044645.P15870105518524565654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044265 (A187829 (n + 1)).toNat - 1

end

end A044645.P15870105518524565654

/-! ## A044645.P16543339386705718458

`A044265(n+1)-A106433(n)!`
-/

namespace A044645.P16543339386705718458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044265 (n + 1) - (Nat.factorial (A106433 n).toNat : ℤ)

end

end A044645.P16543339386705718458

/-! ## A044645.P9463480386091204231

`A044265(n+1)-A000265(A020707(n))`
-/

namespace A044645.P9463480386091204231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044265 (n + 1) - A000265 (A020707 n).toNat

end

end A044645.P9463480386091204231

/-! ## A044645.P1051688414487195899

`A057428(A114538(n+1))+A044265(n+1)`
-/

namespace A044645.P1051688414487195899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A114538 (n + 1)).toNat + A044265 (n + 1)

end

end A044645.P1051688414487195899

/-!
# A044646: Numbers k such that string 1,5 occurs in the base 9 representation of k but not of k+1.

The programs for A044646, there is no canonical definition to state claims against.
-/

/-! ## A044646.P16979572993362522430

`A319021(A044265(n+1))-2`
-/

namespace A044646.P16979572993362522430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044265 (n + 1)).toNat - 2

end

end A044646.P16979572993362522430

/-! ## A044646.P3447473771315631116

`A044266(n+1)-A327450(n+1)!`
-/

namespace A044646.P3447473771315631116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044266 (n + 1) - (Nat.factorial (A327450 (n + 1)).toNat : ℤ)

end

end A044646.P3447473771315631116

/-! ## A044646.P5799344113618591153

`A044266(n+1)-A040649(A001644(n))`
-/

namespace A044646.P5799344113618591153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044266 (n + 1) - A040649 (A001644 n).toNat

end

end A044646.P5799344113618591153

/-! ## A044646.P1778207378619182473

`A044266(n+1)-A027642(A128164(n+2))`
-/

namespace A044646.P1778207378619182473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044266 (n + 1) - A027642 (A128164 (n + 2)).toNat

end

end A044646.P1778207378619182473

/-! ## A044646.P1959802696891478020

`A233583(A044266(n+1))`
-/

namespace A044646.P1959802696891478020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044266 (n + 1)).toNat

end

end A044646.P1959802696891478020

/-!
# A044647: Numbers k such that string 1,6 occurs in the base 9 representation of k but not of k+1.

The programs for A044647, there is no canonical definition to state claims against.
-/

/-! ## A044647.P8276227239809985210

`A319021(A044266(n+1)-2)`
-/

namespace A044647.P8276227239809985210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044266 (n + 1) - 2).toNat

end

end A044647.P8276227239809985210

/-! ## A044647.P2012011275519796934

`A113520(A044267(n+1))`
-/

namespace A044647.P2012011275519796934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044267 (n + 1)).toNat

end

end A044647.P2012011275519796934

/-! ## A044647.P4411011361864533902

`(A044267(n+1)-1)%A178558(n+1)`
-/

namespace A044647.P4411011361864533902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044267 (n + 1) - 1) (A178558 (n + 1))

end

end A044647.P4411011361864533902

/-! ## A044647.P14957740488012436542

`A044267(n+1)-A014963(∑[A044266(n+1)])`
-/

namespace A044647.P14957740488012436542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044267 (n + 1) - A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044647.P14957740488012436542

/-! ## A044647.P15167549742711800603

`A044267(n+1)-A057979(A366602(3*(n+1)))`
-/

namespace A044647.P15167549742711800603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044267 (n + 1) - A057979 (A366602 (3 * (n + 1))).toNat

end

end A044647.P15167549742711800603

/-!
# A044648: Numbers k such that string 1,7 occurs in the base 9 representation of k but not of k+1.

The programs for A044648, there is no canonical definition to state claims against.
-/

/-! ## A044648.P2422159777660481961

`A044268(n+1)-A128404(n+1)%2`
-/

namespace A044648.P2422159777660481961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044268 (n + 1) - Int.tmod (A128404 (n + 1)) 2

end

end A044648.P2422159777660481961

/-! ## A044648.P17707170773440080362

`A044268(n+1)-A000034(A033431(n))`
-/

namespace A044648.P17707170773440080362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044268 (n + 1) - A000034 (A033431 n).toNat

end

end A044648.P17707170773440080362

/-! ## A044648.P12344068685581569820

`A114592(A078856(n+1))+A044268(n+1)`
-/

namespace A044648.P12344068685581569820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A078856 (n + 1)).toNat + A044268 (n + 1)

end

end A044648.P12344068685581569820

/-! ## A044648.P17311379106938876741

`A114592(A128312(n+1))+A044268(n+1)`
-/

namespace A044648.P17311379106938876741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A128312 (n + 1)).toNat + A044268 (n + 1)

end

end A044648.P17311379106938876741

/-! ## A044648.P18337252108347996355

`A044268(n+1)-A007318(A069695(n+1))`
-/

namespace A044648.P18337252108347996355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044268 (n + 1) - A007318 (A069695 (n + 1)).toNat

end

end A044648.P18337252108347996355

/-!
# A044649: Numbers k such that string 1,8 occurs in the base 9 representation of k but not of k+1.

The programs for A044649, there is no canonical definition to state claims against.
-/

/-! ## A044649.P12183241418500973545

`A044269(n+1)-A054977(A006171(n))`
-/

namespace A044649.P12183241418500973545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044269 (n + 1) - A054977 (A006171 n).toNat

end

end A044649.P12183241418500973545

/-! ## A044649.P4762592198127769504

`A044269(n+1)-A008683(A026742(n))²`
-/

namespace A044649.P4762592198127769504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044269 (n + 1) - A008683 (A026742 n).toNat ^ 2

end

end A044649.P4762592198127769504

/-! ## A044649.P4808143498026197681

`A044269(n+1)-A054977(A000569(n+1))`
-/

namespace A044649.P4808143498026197681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044269 (n + 1) - A054977 (A000569 (n + 1)).toNat

end

end A044649.P4808143498026197681

/-! ## A044649.P13157521540743521170

`A044269(n+1)-A074695(A057468(n+1))`
-/

namespace A044649.P13157521540743521170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044269 (n + 1) - A074695 (A057468 (n + 1)).toNat

end

end A044649.P13157521540743521170

/-! ## A044649.P4575587311712360328

`A044269(n+1)-A054977(A096235(n+2))`
-/

namespace A044649.P4575587311712360328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044269 (n + 1) - A054977 (A096235 (n + 2)).toNat

end

end A044649.P4575587311712360328

/-!
# A044650: Numbers n such that string 2,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044650, there is no canonical definition to state claims against.
-/

/-! ## A044650.P4224241667227194256

`A319021(A044269(n+1)-6)`
-/

namespace A044650.P4224241667227194256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044269 (n + 1) - 6).toNat

end

end A044650.P4224241667227194256

/-! ## A044650.P1226666909666063111

`A044270(n+1)-A057427(∑[4^floor(n*γ²)])`
-/

namespace A044650.P1226666909666063111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌊(n : ℝ) * Real.eulerMascheroniConstant ^ 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044270 (n + 1) - A057427 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A044650.P1226666909666063111

/-! ## A044650.P5646469334374373734

`A057428(A000032(n))+A044270(n+1)`
-/

namespace A044650.P5646469334374373734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000032 n).toNat + A044270 (n + 1)

end

end A044650.P5646469334374373734

/-! ## A044650.P12860560637628367488

`A044270(n+1)-A280495(A082251(2*n+5))`
-/

namespace A044650.P12860560637628367488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044270 (n + 1) - A280495 (A082251 (2 * n + 5)).toNat

end

end A044650.P12860560637628367488

/-! ## A044650.P16672020336578492388

`A113520(A044270(n+1))`
-/

namespace A044650.P16672020336578492388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044270 (n + 1)).toNat

end

end A044650.P16672020336578492388

/-!
# A044652: Numbers n such that string 2,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044652, there is no canonical definition to state claims against.
-/

/-! ## A044652.P12664213874606631926

`A319021(A044271(n+1))-2`
-/

namespace A044652.P12664213874606631926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044271 (n + 1)).toNat - 2

end

end A044652.P12664213874606631926

/-!
# A044653: Numbers n such that string 2,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044653, there is no canonical definition to state claims against.
-/

/-! ## A044653.P11494554920860471848

`A319021(A044272(n+1)-2)`
-/

namespace A044653.P11494554920860471848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044272 (n + 1) - 2).toNat

end

end A044653.P11494554920860471848

/-! ## A044653.P8066789151222107041

`A044273(n+1)-A001222(A125637(n+1))`
-/

namespace A044653.P8066789151222107041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044273 (n + 1) - A001222 (A125637 (n + 1)).toNat

end

end A044653.P8066789151222107041

/-! ## A044653.P9935963012980626300

`A044273(n+1)-A138243(A044273(3*n+2))`
-/

namespace A044653.P9935963012980626300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044273 (n + 1) - A138243 (A044273 (3 * n + 2)).toNat

end

end A044653.P9935963012980626300

/-! ## A044653.P18037980223941874735

`A044273(n+1)-A000110(A157391(3*n+1))`
-/

namespace A044653.P18037980223941874735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044273 (n + 1) - A000110 (A157391 (3 * n + 1)).toNat

end

end A044653.P18037980223941874735

/-! ## A044653.P3155501929967336044

`A044273(n+1)-A274391(A067924(3*n+1))`
-/

namespace A044653.P3155501929967336044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044273 (n + 1) - A274391 (A067924 (3 * n + 1)).toNat

end

end A044653.P3155501929967336044

/-!
# A044654: Numbers n such that string 2,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044654, there is no canonical definition to state claims against.
-/

/-! ## A044654.P16494033859837792598

`A044274(n+1)-A001222(A002231(n+1))`
-/

namespace A044654.P16494033859837792598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044274 (n + 1) - A001222 (A002231 (n + 1)).toNat

end

end A044654.P16494033859837792598

/-! ## A044654.P3779715641685649593

`A044274(n+1)-A057427(A020602(n+1))`
-/

namespace A044654.P3779715641685649593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044274 (n + 1) - A057427 (A020602 (n + 1)).toNat

end

end A044654.P3779715641685649593

/-! ## A044654.P6136962000876354437

`A044274(n+1)-A014963(2*A172333(n+1))`
-/

namespace A044654.P6136962000876354437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044274 (n + 1) - A014963 (2 * A172333 (n + 1)).toNat

end

end A044654.P6136962000876354437

/-! ## A044654.P2266620044121474826

`A044274(n+1)-A035263(A118185(n))`
-/

namespace A044654.P2266620044121474826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044274 (n + 1) - A035263 (A118185 n).toNat

end

end A044654.P2266620044121474826

/-!
# A044655: Numbers n such that string 2,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044655, there is no canonical definition to state claims against.
-/

/-! ## A044655.P2240848600807571729

`A319021(A044274(n+1))-2`
-/

namespace A044655.P2240848600807571729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044274 (n + 1)).toNat - 2

end

end A044655.P2240848600807571729

/-! ## A044655.P3715050343482311828

`A044275(n+1)-A097479(n+1)!`
-/

namespace A044655.P3715050343482311828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044275 (n + 1) - (Nat.factorial (A097479 (n + 1)).toNat : ℤ)

end

end A044655.P3715050343482311828

/-! ## A044655.P13099254483110708375

`A044275(n+1)-A054977(A000070(n))`
-/

namespace A044655.P13099254483110708375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044275 (n + 1) - A054977 (A000070 n).toNat

end

end A044655.P13099254483110708375

/-! ## A044655.P13122716539101529617

`A044275(n+1)-A001222(A020602(n+1))`
-/

namespace A044655.P13122716539101529617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044275 (n + 1) - A001222 (A020602 (n + 1)).toNat

end

end A044655.P13122716539101529617

/-! ## A044655.P18220368456841217959

`A044275(n+1)-A054977(A001605(n+1))`
-/

namespace A044655.P18220368456841217959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044275 (n + 1) - A054977 (A001605 (n + 1)).toNat

end

end A044655.P18220368456841217959

/-!
# A044656: Numbers n such that string 2,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044656, there is no canonical definition to state claims against.
-/

/-! ## A044656.P13083345389138032142

`A319021(A044275(n+1)-2)`
-/

namespace A044656.P13083345389138032142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044275 (n + 1) - 2).toNat

end

end A044656.P13083345389138032142

/-! ## A044656.P7872811834189688311

`A044276(n+1)-A097479(n)!`
-/

namespace A044656.P7872811834189688311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044276 (n + 1) - (Nat.factorial (A097479 n).toNat : ℤ)

end

end A044656.P7872811834189688311

/-! ## A044656.P8320762490418710471

`A044276(n+1)-A054977(A270613(n+1))`
-/

namespace A044656.P8320762490418710471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044276 (n + 1) - A054977 (A270613 (n + 1)).toNat

end

end A044656.P8320762490418710471

/-! ## A044656.P11515837011988098664

`A063660(or(A044276(n+1), A097479(n))-2)`
-/

namespace A044656.P11515837011988098664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (Int.lor (A044276 (n + 1)) (A097479 n) - 2).toNat

end

end A044656.P11515837011988098664

/-! ## A044656.P7103951489199902425

`A233583(A044276(n+1))`
-/

namespace A044656.P7103951489199902425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044276 (n + 1)).toNat

end

end A044656.P7103951489199902425

/-!
# A044657: Numbers n such that string 2,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044657, there is no canonical definition to state claims against.
-/

/-! ## A044657.P2794112892110567779

`A044277(n+1)-A165633(A190718(n))`
-/

namespace A044657.P2794112892110567779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044277 (n + 1) - A165633 (A190718 n).toNat

end

end A044657.P2794112892110567779

/-! ## A044657.P5995401613640986249

`A044277(n+1)-A333765(A130321(n))`
-/

namespace A044657.P5995401613640986249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044277 (n + 1) - A333765 (A130321 n).toNat

end

end A044657.P5995401613640986249

/-! ## A044657.P6129403024448725574

`A044277(n+1)-A003415(A235265(n+1))`
-/

namespace A044657.P6129403024448725574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044277 (n + 1) - A003415 (A235265 (n + 1)).toNat

end

end A044657.P6129403024448725574

/-! ## A044657.P13102566013181168755

`A233583(A044277(n+1))`
-/

namespace A044657.P13102566013181168755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044277 (n + 1)).toNat

end

end A044657.P13102566013181168755

/-!
# A044658: Numbers n such that string 2,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044658, there is no canonical definition to state claims against.
-/

/-! ## A044658.P15221713225682535418

`∩[A043980(n+1), A002265(A043980(n+1))]`
-/

namespace A044658.P15221713225682535418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A043980 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044658.P15221713225682535418

/-! ## A044658.P8557836328380919002

`A044278(n+1)-A177704(A060723(n))`
-/

namespace A044658.P8557836328380919002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044278 (n + 1) - A177704 (A060723 n).toNat

end

end A044658.P8557836328380919002

/-! ## A044658.P16560356902885715730

`A044278(n+1)-A298635(A000124(n))`
-/

namespace A044658.P16560356902885715730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044278 (n + 1) - A298635 (A000124 n).toNat

end

end A044658.P16560356902885715730

/-! ## A044658.P3432000648026753313

`A044278(n+1)-A035187(A283989(n))`
-/

namespace A044658.P3432000648026753313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044278 (n + 1) - A035187 (A283989 n).toNat

end

end A044658.P3432000648026753313

/-! ## A044658.P14146133368838966163

`A233583(A044278(n+1))`
-/

namespace A044658.P14146133368838966163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044278 (n + 1)).toNat

end

end A044658.P14146133368838966163

/-!
# A044659: Numbers n such that string 3,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044659, there is no canonical definition to state claims against.
-/

/-! ## A044659.P1444024229139196411

`A044279(n+1)-A202084((n+2)²)`
-/

namespace A044659.P1444024229139196411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044279 (n + 1) - A202084 ((n + 2) ^ 2)

end

end A044659.P1444024229139196411

/-! ## A044659.P4151677638645248859

`A044279(n+1)-A151815(n+1)!`
-/

namespace A044659.P4151677638645248859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044279 (n + 1) - (Nat.factorial (A151815 (n + 1)).toNat : ℤ)

end

end A044659.P4151677638645248859

/-! ## A044659.P3250415070576899524

`A044279(n+1)+A008683(A051962(n+1))`
-/

namespace A044659.P3250415070576899524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044279 (n + 1) + A008683 (A051962 (n + 1)).toNat

end

end A044659.P3250415070576899524

/-! ## A044659.P11549797546329843990

`A044279(n+1)+A008683(A064545(n+1))`
-/

namespace A044659.P11549797546329843990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044279 (n + 1) + A008683 (A064545 (n + 1)).toNat

end

end A044659.P11549797546329843990

/-! ## A044659.P14309718709611801083

`A044279(n+1)-A040649(A083998(2*n+3))`
-/

namespace A044659.P14309718709611801083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044279 (n + 1) - A040649 (A083998 (2 * n + 3)).toNat

end

end A044659.P14309718709611801083

/-!
# A044660: Numbers n such that string 3,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044660, there is no canonical definition to state claims against.
-/

/-! ## A044660.P4270877650956202794

`A044279(n+1)+A038500(A044279(n+1))-1`
-/

namespace A044660.P4270877650956202794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044279 (n + 1) + (A038500 (A044279 (n + 1)).toNat - 1)

end

end A044660.P4270877650956202794

/-! ## A044660.P3768910062168490829

`A044280(n+1)-A151815(n)!`
-/

namespace A044660.P3768910062168490829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044280 (n + 1) - (Nat.factorial (A151815 n).toNat : ℤ)

end

end A044660.P3768910062168490829

/-! ## A044660.P5244225735631331970

`A044280(n+1)-A254651(68*(n+1)²-1)`
-/

namespace A044660.P5244225735631331970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044280 (n + 1) - A254651 (68 * (n + 1) ^ 2 - 1)

end

end A044660.P5244225735631331970

/-! ## A044660.P444276981819832304

`A044280(n+1)-A003963(A151815(n)+1)`
-/

namespace A044660.P444276981819832304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044280 (n + 1) - A003963 (A151815 n + 1).toNat

end

end A044660.P444276981819832304

/-! ## A044660.P7842903200501534340

`A044280(n+1)-A040649(A083998(2*n+3))`
-/

namespace A044660.P7842903200501534340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044280 (n + 1) - A040649 (A083998 (2 * n + 3)).toNat

end

end A044660.P7842903200501534340

/-!
# A044661: Numbers n such that string 3,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044661, there is no canonical definition to state claims against.
-/

/-! ## A044661.P613512863411519188

`A044280(n+1)+A038500(A044280(n+1))-1`
-/

namespace A044661.P613512863411519188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044280 (n + 1) + (A038500 (A044280 (n + 1)).toNat - 1)

end

end A044661.P613512863411519188

/-! ## A044661.P16082767886738271786

`or(record[A034444(n+1)], A044280(n+1))`
-/

namespace A044661.P16082767886738271786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A044280 (n + 1))

end

end A044661.P16082767886738271786

/-!
# A044662: Numbers n such that string 3,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044662, there is no canonical definition to state claims against.
-/

/-! ## A044662.P13025441225777006018

`A240235(A240234(2*(n+1)))+A043962(2*n+1)`
-/

namespace A044662.P13025441225777006018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240235 (A240234 (2 * (n + 1))).toNat + A043962 (2 * n + 1)

end

end A044662.P13025441225777006018

/-!
# A044663: Numbers n such that string 3,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044663, there is no canonical definition to state claims against.
-/

/-! ## A044663.P8450227583822765707

`A044283(n+1)-A175432((n+1-C(∑[char[∑[n]]], 2))!)`
-/

namespace A044663.P8450227583822765707
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044283 (n + 1) - A175432 (Nat.factorial ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat)

end

end A044663.P8450227583822765707

/-! ## A044663.P9080401791680360719

`A044283(n+1)-A057427(A332280(n))`
-/

namespace A044663.P9080401791680360719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044283 (n + 1) - A057427 (A332280 n).toNat

end

end A044663.P9080401791680360719

/-! ## A044663.P10145432626979484917

`A118830(A062334(n+1))+A044283(n+1)`
-/

namespace A044663.P10145432626979484917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A062334 (n + 1)).toNat + A044283 (n + 1)

end

end A044663.P10145432626979484917

/-! ## A044663.P12908703221519209627

`A118830(A126657(n+1))+A044283(n+1)`
-/

namespace A044663.P12908703221519209627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A126657 (n + 1)).toNat + A044283 (n + 1)

end

end A044663.P12908703221519209627

/-! ## A044663.P16123746810745312223

`A044283(n+1)-A001055(A046008(n+1))`
-/

namespace A044663.P16123746810745312223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044283 (n + 1) - A001055 (A046008 (n + 1)).toNat

end

end A044663.P16123746810745312223

/-!
# A044664: Numbers n such that string 3,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044664, there is no canonical definition to state claims against.
-/

/-! ## A044664.P10750061566743868593

`A044284(n+1)-A009001((4*n)²)`
-/

namespace A044664.P10750061566743868593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044284 (n + 1) - A009001 ((4 * n) ^ 2)

end

end A044664.P10750061566743868593

/-! ## A044664.P17479375729339667618

`A044284(n+1)-A201249(n+1)%2`
-/

namespace A044664.P17479375729339667618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044284 (n + 1) - Int.tmod (A201249 (n + 1)) 2

end

end A044664.P17479375729339667618

/-! ## A044664.P8998965888975344706

`A033999(8*n²)+A044284(n+1)-2`
-/

namespace A044664.P8998965888975344706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (8 * n ^ 2) + (A044284 (n + 1) - 2)

end

end A044664.P8998965888975344706

/-! ## A044664.P12727255074512672843

`A044284(n+1)-A008966(A027642(n))`
-/

namespace A044664.P12727255074512672843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044284 (n + 1) - A008966 (A027642 n).toNat

end

end A044664.P12727255074512672843

/-! ## A044664.P12834296056653231150

`A044284(n+1)-A001221(A100964(n+1))`
-/

namespace A044664.P12834296056653231150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044284 (n + 1) - A001221 (A100964 (n + 1)).toNat

end

end A044664.P12834296056653231150

/-!
# A044665: Numbers n such that string 3,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044665, there is no canonical definition to state claims against.
-/

/-! ## A044665.P7318125744584960483

`A319021(A044284(n+1)-2)`
-/

namespace A044665.P7318125744584960483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044284 (n + 1) - 2).toNat

end

end A044665.P7318125744584960483

/-! ## A044665.P1239263075244248528

`A044285(n+1)-A008833(A096702(n+1))`
-/

namespace A044665.P1239263075244248528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044285 (n + 1) - A008833 (A096702 (n + 1)).toNat

end

end A044665.P1239263075244248528

/-! ## A044665.P10043201480380070507

`A044285(n+1)-A001222(A158089(n+1))`
-/

namespace A044665.P10043201480380070507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044285 (n + 1) - A001222 (A158089 (n + 1)).toNat

end

end A044665.P10043201480380070507

/-! ## A044665.P8893350858876503029

`A044285(n+1)-A130196(A044260(3*n+5))`
-/

namespace A044665.P8893350858876503029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044285 (n + 1) - A130196 (A044260 (3 * n + 5)).toNat

end

end A044665.P8893350858876503029

/-! ## A044665.P3867657581722458386

`A044285(n+1)-A006519(A080054(n+2)+1)`
-/

namespace A044665.P3867657581722458386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044285 (n + 1) - A006519 (A080054 (n + 2) + 1).toNat

end

end A044665.P3867657581722458386

/-!
# A044666: Numbers n such that string 3,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044666, there is no canonical definition to state claims against.
-/

/-! ## A044666.P1701791578695605926

`A044286(n+1)-A042974(A094816(n))`
-/

namespace A044666.P1701791578695605926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044286 (n + 1) - A042974 (A094816 n).toNat

end

end A044666.P1701791578695605926

/-! ## A044666.P2362844673167394717

`A044286(n+1)-A007318(A185284(n))`
-/

namespace A044666.P2362844673167394717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044286 (n + 1) - A007318 (A185284 n).toNat

end

end A044666.P2362844673167394717

/-! ## A044666.P4115560475074509336

`A057428(A212360(n+1))+A044286(n+1)`
-/

namespace A044666.P4115560475074509336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A212360 (n + 1)).toNat + A044286 (n + 1)

end

end A044666.P4115560475074509336

/-! ## A044666.P6187576097097983006

`A044286(n+1)-A373361(A122510(2*(n+1)))`
-/

namespace A044666.P6187576097097983006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044286 (n + 1) - A373361 (A122510 (2 * (n + 1))).toNat

end

end A044666.P6187576097097983006

/-! ## A044666.P13340495733481175476

`A233583(A044286(n+1))`
-/

namespace A044666.P13340495733481175476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044286 (n + 1)).toNat

end

end A044666.P13340495733481175476

/-!
# A044667: Numbers n such that string 3,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044667, there is no canonical definition to state claims against.
-/

/-! ## A044667.P6664473692219659351

`A044287(n+1)-A001222(A093902(n+1))`
-/

namespace A044667.P6664473692219659351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044287 (n + 1) - A001222 (A093902 (n + 1)).toNat

end

end A044667.P6664473692219659351

/-! ## A044667.P6536563843984464623

`A044287(n+1)-A001222(A104043(n+1))`
-/

namespace A044667.P6536563843984464623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044287 (n + 1) - A001222 (A104043 (n + 1)).toNat

end

end A044667.P6536563843984464623

/-! ## A044667.P17383576844319008291

`A044287(n+1)-A014963(A189119(n+1))`
-/

namespace A044667.P17383576844319008291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044287 (n + 1) - A014963 (A189119 (n + 1)).toNat

end

end A044667.P17383576844319008291

/-! ## A044667.P9235328549170751234

`(A044287(n+1)-1)%A330810(n+1)`
-/

namespace A044667.P9235328549170751234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044287 (n + 1) - 1) (A330810 (n + 1))

end

end A044667.P9235328549170751234

/-! ## A044667.P7593436361981114101

`A044287(n+1)-A219866(A185284(n))`
-/

namespace A044667.P7593436361981114101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044287 (n + 1) - A219866 (A185284 n).toNat

end

end A044667.P7593436361981114101

/-!
# A044668: Numbers n such that string 4,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044668, there is no canonical definition to state claims against.
-/

/-! ## A044668.P4075225954428966933

`A044288(n+1)-A020639(A010894(n)!)`
-/

namespace A044668.P4075225954428966933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044288 (n + 1) - A020639 (Nat.factorial (A010894 (n + 21)).toNat)

end

end A044668.P4075225954428966933

/-! ## A044668.P11024213795144393174

`A044288(n+1)-A001222(A117528(n+1))`
-/

namespace A044668.P11024213795144393174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044288 (n + 1) - A001222 (A117528 (n + 1)).toNat

end

end A044668.P11024213795144393174

/-! ## A044668.P2554839510993294495

`A044288(n+1)-A001222(A346023(n+1))`
-/

namespace A044668.P2554839510993294495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044288 (n + 1) - A001222 (A346023 (n + 1)).toNat

end

end A044668.P2554839510993294495

/-! ## A044668.P3283014405640532545

`A044288(n+1)-A010894(n*A010894(n))`
-/

namespace A044668.P3283014405640532545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044288 (n + 1) - A010894 (((n : ℤ) * A010894 (n + 21)).toNat + 21)

end

end A044668.P3283014405640532545

/-! ## A044668.P18125072256066770385

`A044288(n+1)-A001222(A297846(n+1))`
-/

namespace A044668.P18125072256066770385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044288 (n + 1) - A001222 (A297846 (n + 1)).toNat

end

end A044668.P18125072256066770385

/-!
# A044669: Numbers n such that string 4,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044669, there is no canonical definition to state claims against.
-/

/-! ## A044669.P37563750245233279

`A044289(n+1)-A010684(A033579(n))`
-/

namespace A044669.P37563750245233279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044289 (n + 1) - A010684 (A033579 n).toNat

end

end A044669.P37563750245233279

/-! ## A044669.P573690809349558752

`A044289(n+1)-A054977(A107702(n))`
-/

namespace A044669.P573690809349558752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044289 (n + 1) - A054977 (A107702 n).toNat

end

end A044669.P573690809349558752

/-! ## A044669.P9749783182330367931

`A044289(n+1)-A054977(A169808(n))`
-/

namespace A044669.P9749783182330367931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044289 (n + 1) - A054977 (A169808 n).toNat

end

end A044669.P9749783182330367931

/-! ## A044669.P14281969123843036651

`A044289(n+1)+A033999(A003154(n+1))`
-/

namespace A044669.P14281969123843036651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044289 (n + 1) + A033999 (A003154 (n + 1)).toNat

end

end A044669.P14281969123843036651

/-! ## A044669.P14380301891042284885

`A044289(n+1)+A033999(A046078(n+1))`
-/

namespace A044669.P14380301891042284885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044289 (n + 1) + A033999 (A046078 (n + 1)).toNat

end

end A044669.P14380301891042284885

/-!
# A044670: Numbers n such that string 4,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044670, there is no canonical definition to state claims against.
-/

/-! ## A044670.P4991692456613810167

`A319021(A044289(n+1))-2`
-/

namespace A044670.P4991692456613810167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044289 (n + 1)).toNat - 2

end

end A044670.P4991692456613810167

/-! ## A044670.P17966518807675568208

`A044290(n+1)-A001222(A162353(n+1))`
-/

namespace A044670.P17966518807675568208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044290 (n + 1) - A001222 (A162353 (n + 1)).toNat

end

end A044670.P17966518807675568208

/-! ## A044670.P4705823829888057445

`A044290(n+1)-A010684(A033579(n))`
-/

namespace A044670.P4705823829888057445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044290 (n + 1) - A010684 (A033579 n).toNat

end

end A044670.P4705823829888057445

/-! ## A044670.P3459964745069539741

`A044290(n+1)-A130196(A044260(3*n+5))`
-/

namespace A044670.P3459964745069539741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044290 (n + 1) - A130196 (A044260 (3 * n + 5)).toNat

end

end A044670.P3459964745069539741

/-! ## A044670.P5635087034071141857

`A044290(n+1)-A005361(A001605(n+5))`
-/

namespace A044670.P5635087034071141857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044290 (n + 1) - A005361 (A001605 (n + 5)).toNat

end

end A044670.P5635087034071141857

/-!
# A044671: Numbers n such that string 4,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044671, there is no canonical definition to state claims against.
-/

/-! ## A044671.P18118016073703919008

`A319021(A044290(n+1)-2)`
-/

namespace A044671.P18118016073703919008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044290 (n + 1) - 2).toNat

end

end A044671.P18118016073703919008

/-! ## A044671.P7009248582294416617

`A258579(A038255(n))+A044289(n+1)`
-/

namespace A044671.P7009248582294416617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258579 (A038255 n).toNat + A044289 (n + 1)

end

end A044671.P7009248582294416617

/-!
# A044672: Numbers n such that string 4,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044672, there is no canonical definition to state claims against.
-/

/-! ## A044672.P14372623969365851169

`A002517(A044291(n+1))-1`
-/

namespace A044672.P14372623969365851169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044291 (n + 1)).toNat - 1

end

end A044672.P14372623969365851169

/-! ## A044672.P6804232261469193835

`A057428(n+1)+A002517(A044291(n+1))`
-/

namespace A044672.P6804232261469193835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044291 (n + 1)).toNat

end

end A044672.P6804232261469193835

/-! ## A044672.P3342751084990976948

`A153881(n+2)+A002517(A044291(n+1))`
-/

namespace A044672.P3342751084990976948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A002517 (A044291 (n + 1)).toNat

end

end A044672.P3342751084990976948

/-! ## A044672.P13328169073059633560

`A008683(A020484(n))+A002517(A044291(n+1))`
-/

namespace A044672.P13328169073059633560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat + A002517 (A044291 (n + 1)).toNat

end

end A044672.P13328169073059633560

/-! ## A044672.P16578529919975826157

`A004526(C(A044632(2*n+1), A328672(n+1)))`
-/

namespace A044672.P16578529919975826157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.choose (A044632 (2 * n + 1)).toNat (A328672 (n + 1)).toNat)

end

end A044672.P16578529919975826157

/-!
# A044673: Numbers n such that string 4,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044673, there is no canonical definition to state claims against.
-/

/-! ## A044673.P11363638467915369054

`record[A057979(A044634(n+1))]`
-/

namespace A044673.P11363638467915369054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044634 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044673.P11363638467915369054

/-! ## A044673.P16776981094443232001

`record[A166514(A044634(n+1)-1)]`
-/

namespace A044673.P16776981094443232001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A044634 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044673.P16776981094443232001

/-! ## A044673.P17858813287666864818

`A044293(n+1)-A057427(A124644(n))`
-/

namespace A044673.P17858813287666864818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044293 (n + 1) - A057427 (A124644 n).toNat

end

end A044673.P17858813287666864818

/-! ## A044673.P17188291770932981472

`A044293(n+1)-A001222(A227613(n+1))`
-/

namespace A044673.P17188291770932981472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044293 (n + 1) - A001222 (A227613 (n + 1)).toNat

end

end A044673.P17188291770932981472

/-! ## A044673.P1133743152020406136

`A233583(A044293(n+1))`
-/

namespace A044673.P1133743152020406136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044293 (n + 1)).toNat

end

end A044673.P1133743152020406136

/-!
# A044674: Numbers n such that string 4,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044674, there is no canonical definition to state claims against.
-/

/-! ## A044674.P6017357496403177587

`record[A057979(A044636(n+1))]`
-/

namespace A044674.P6017357496403177587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044674.P6017357496403177587

/-! ## A044674.P9152740889512826885

`record[A166514(A044636(n+1)-1)]`
-/

namespace A044674.P9152740889512826885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A044636 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044674.P9152740889512826885

/-! ## A044674.P2040443786034633782

`A044294(n+1)-A000035(A185005(n+1))`
-/

namespace A044674.P2040443786034633782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044294 (n + 1) - A000035 (A185005 (n + 1)).toNat

end

end A044674.P2040443786034633782

/-! ## A044674.P7106799055896800958

`A044294(n+1)-A000035(A185006(n+1))`
-/

namespace A044674.P7106799055896800958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044294 (n + 1) - A000035 (A185006 (n + 1)).toNat

end

end A044674.P7106799055896800958

/-! ## A044674.P3260084957337000130

`A044294(n+1)-A000035(A185007(n+1))`
-/

namespace A044674.P3260084957337000130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044294 (n + 1) - A000035 (A185007 (n + 1)).toNat

end

end A044674.P3260084957337000130

/-!
# A044675: Numbers n such that string 4,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044675, there is no canonical definition to state claims against.
-/

/-! ## A044675.P14094742933597286675

`record[A249122(A044638(n+1))]`
-/

namespace A044675.P14094742933597286675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A044638 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044675.P14094742933597286675

/-! ## A044675.P9411941571527564587

`record[A166514(A044638(n+1)-1)]`
-/

namespace A044675.P9411941571527564587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A044638 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044675.P9411941571527564587

/-! ## A044675.P617717643682075624

`A044295(n+1)-A373253(A362250(2*n+5))`
-/

namespace A044675.P617717643682075624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044295 (n + 1) - A373253 (A362250 (2 * n + 5)).toNat

end

end A044675.P617717643682075624

/-! ## A044675.P13210634710978306269

`A044295(n+1)-A326028(A334093(n+1))`
-/

namespace A044675.P13210634710978306269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044295 (n + 1) - A326028 (A334093 (n + 1)).toNat

end

end A044675.P13210634710978306269

/-! ## A044675.P15733836347722107689

`A044295(n+1)-A130196(A044272(3*n+2))`
-/

namespace A044675.P15733836347722107689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044295 (n + 1) - A130196 (A044272 (3 * n + 2)).toNat

end

end A044675.P15733836347722107689

/-!
# A044676: Numbers n such that string 4,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044676, there is no canonical definition to state claims against.
-/

/-! ## A044676.P703133276399636910

`record[A057979(A044640(n+1))]`
-/

namespace A044676.P703133276399636910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044640 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044676.P703133276399636910

/-! ## A044676.P14638859174624161068

`record[A166514(A044640(n+1)-1)]`
-/

namespace A044676.P14638859174624161068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A044640 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044676.P14638859174624161068

/-! ## A044676.P2346634414186736848

`A044296(n+1)-A008836(A109861(n+1))`
-/

namespace A044676.P2346634414186736848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044296 (n + 1) - A008836 (A109861 (n + 1)).toNat

end

end A044676.P2346634414186736848

/-! ## A044676.P17559100861683776157

`A044296(n+1)-A130196(A044272(3*n+2))`
-/

namespace A044676.P17559100861683776157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044296 (n + 1) - A130196 (A044272 (3 * n + 2)).toNat

end

end A044676.P17559100861683776157

/-! ## A044676.P18357708658223543326

`A233583(A044296(n+1))`
-/

namespace A044676.P18357708658223543326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044296 (n + 1)).toNat

end

end A044676.P18357708658223543326

/-!
# A044678: Numbers n such that string 5,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044678, there is no canonical definition to state claims against.
-/

/-! ## A044678.P14072927934894297134

`A002517(A044297(n+1))-1`
-/

namespace A044678.P14072927934894297134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044297 (n + 1)).toNat - 1

end

end A044678.P14072927934894297134

/-! ## A044678.P8082449529321202518

`A057428(n+1)+A002517(A044297(n+1))`
-/

namespace A044678.P8082449529321202518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044297 (n + 1)).toNat

end

end A044678.P8082449529321202518

/-! ## A044678.P15644891360462969074

`A134824(n+2)+A002517(A044297(n+1))`
-/

namespace A044678.P15644891360462969074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A002517 (A044297 (n + 1)).toNat

end

end A044678.P15644891360462969074

/-! ## A044678.P8921627664529982346

`A260196(n+2)+A002517(A044297(n+1))`
-/

namespace A044678.P8921627664529982346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A002517 (A044297 (n + 1)).toNat

end

end A044678.P8921627664529982346

/-! ## A044678.P9090407659660260130

`A033999(2*n+1)+A002517(A044297(n+1))`
-/

namespace A044678.P9090407659660260130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A002517 (A044297 (n + 1)).toNat

end

end A044678.P9090407659660260130

/-! ## A044678.P3578732205122546908

`abs(A002517(A044297(n+1))+A001489(n+1)+n)`
-/

namespace A044678.P3578732205122546908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002517 (A044297 (n + 1)).toNat + (A001489 (n + 1) + (n : ℤ))|

end

end A044678.P3578732205122546908

/-! ## A044678.P10075947179315493690

`A153881(A007318(n)+1)+A002517(A044297(n+1))`
-/

namespace A044678.P10075947179315493690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A007318 n + 1).toNat + A002517 (A044297 (n + 1)).toNat

end

end A044678.P10075947179315493690

/-! ## A044678.P18076482858217039279

`A178141(A107162(n+1))+A002517(A044297(n+1))`
-/

namespace A044678.P18076482858217039279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178141 (A107162 (n + 1)).toNat + A002517 (A044297 (n + 1)).toNat

end

end A044678.P18076482858217039279

/-! ## A044678.P14911909754632094119

`A178141(A106983(n+1))+A002517(A044297(n+1))`
-/

namespace A044678.P14911909754632094119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178141 (A106983 (n + 1)).toNat + A002517 (A044297 (n + 1)).toNat

end

end A044678.P14911909754632094119

/-! ## A044678.P6829750599183280756

`A178141(A033242(n+1))+A002517(A044297(n+1))`
-/

namespace A044678.P6829750599183280756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178141 (A033242 (n + 1)).toNat + A002517 (A044297 (n + 1)).toNat

end

end A044678.P6829750599183280756

/-!
# A044679: Numbers n such that string 5,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044679, there is no canonical definition to state claims against.
-/

/-! ## A044679.P6062578385119509216

`A044299(n+1)-A086519(n)%2`
-/

namespace A044679.P6062578385119509216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044299 (n + 1) - Int.tmod (A086519 n) 2

end

end A044679.P6062578385119509216

/-! ## A044679.P4463413967179984968

`A044299(n+1)-A000001(A086519(n))`
-/

namespace A044679.P4463413967179984968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044299 (n + 1) - A000001 (A086519 n).toNat

end

end A044679.P4463413967179984968

/-! ## A044679.P3331498324296215622

`A044299(n+1)-A060576(A036561(n+1))`
-/

namespace A044679.P3331498324296215622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044299 (n + 1) - A060576 (A036561 (n + 1)).toNat

end

end A044679.P3331498324296215622

/-! ## A044679.P11868464243086698061

`A044299(n+1)-A201560(A086519(n)+1)`
-/

namespace A044679.P11868464243086698061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044299 (n + 1) - A201560 (A086519 n + 1).toNat

end

end A044679.P11868464243086698061

/-! ## A044679.P13514814366860403771

`A044299(n+1)-A057427(A249819(n+1))`
-/

namespace A044679.P13514814366860403771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044299 (n + 1) - A057427 (A249819 (n + 1)).toNat

end

end A044679.P13514814366860403771

/-! ## A044679.P15378817632763541035

`A044299(n+1)-A014963(A345285(n+1))`
-/

namespace A044679.P15378817632763541035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044299 (n + 1) - A014963 (A345285 (n + 1)).toNat

end

end A044679.P15378817632763541035

/-! ## A044679.P6622600366108655716

`A044299(n-log2(1/2))-A001222(A086519(n))%3`
-/

namespace A044679.P6622600366108655716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044299 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - Int.tmod (A001222 (A086519 n).toNat) 3

end

end A044679.P6622600366108655716

/-!
# A044680: Numbers n such that string 5,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044680, there is no canonical definition to state claims against.
-/

/-! ## A044680.P1479947420803306893

`A319021(A044299(n+1)-2)`
-/

namespace A044680.P1479947420803306893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044299 (n + 1) - 2).toNat

end

end A044680.P1479947420803306893

/-! ## A044680.P7569735724451625147

`record[A057979(A044648(n+2))]`
-/

namespace A044680.P7569735724451625147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044648 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044680.P7569735724451625147

/-! ## A044680.P16406518418184525552

`record[A025480(A044648(n+2)-1)]`
-/

namespace A044680.P16406518418184525552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044648 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044680.P16406518418184525552

/-! ## A044680.P5008942016896504329

`A044300(n+1)-A167964(2*n+1)`
-/

namespace A044680.P5008942016896504329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044300 (n + 1) - A167964 (2 * n + 1)

end

end A044680.P5008942016896504329

/-! ## A044680.P3925648613671139270

`A044300(n+1)-A040858(A333147(n))`
-/

namespace A044680.P3925648613671139270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044300 (n + 1) - A040858 (A333147 n).toNat

end

end A044680.P3925648613671139270

/-! ## A044680.P9960433953231997206

`A044300(n+1)-A054977(A112529(n+1))`
-/

namespace A044680.P9960433953231997206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044300 (n + 1) - A054977 (A112529 (n + 1)).toNat

end

end A044680.P9960433953231997206

/-! ## A044680.P2612096806280748171

`A044300(n+1)-A054977(A137691(n+1))`
-/

namespace A044680.P2612096806280748171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044300 (n + 1) - A054977 (A137691 (n + 1)).toNat

end

end A044680.P2612096806280748171

/-! ## A044680.P17266062637615305439

`A044300(n+1)-A054977(A141556(n+1))`
-/

namespace A044680.P17266062637615305439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044300 (n + 1) - A054977 (A141556 (n + 1)).toNat

end

end A044680.P17266062637615305439

/-!
# A044681: Numbers n such that string 5,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044681, there is no canonical definition to state claims against.
-/

/-! ## A044681.P14971378286150913350

`A002517(A044300(n+1))-1`
-/

namespace A044681.P14971378286150913350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044300 (n + 1)).toNat - 1

end

end A044681.P14971378286150913350

/-! ## A044681.P10267056140182137310

`abs(A002517(A044300(n-log2(1/2)))-1)`
-/

namespace A044681.P10267056140182137310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002517 (A044300 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat - 1|

end

end A044681.P10267056140182137310

/-! ## A044681.P4563882448981172408

`A033999(Δ[n²])+A002517(A044300(n+1))`
-/

namespace A044681.P4563882448981172408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A002517 (A044300 (n + 1)).toNat

end

end A044681.P4563882448981172408

/-! ## A044681.P8902707192830890683

`A164117(Δ[n²])+A002517(A044300(n+1))`
-/

namespace A044681.P8902707192830890683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A002517 (A044300 (n + 1)).toNat

end

end A044681.P8902707192830890683

/-! ## A044681.P10148747367432762046

`abs(A033999(2*n+1)+A002517(A044300(n+1)))`
-/

namespace A044681.P10148747367432762046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 (2 * n + 1) + A002517 (A044300 (n + 1)).toNat|

end

end A044681.P10148747367432762046

/-! ## A044681.P13105312917883484064

`record[A057979(A044650(n+2))]`
-/

namespace A044681.P13105312917883484064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044650 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044681.P13105312917883484064

/-!
# A044682: Numbers n such that string 5,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044682, there is no canonical definition to state claims against.
-/

/-! ## A044682.P14603278942230887071

`record[A057979(A044652(n+2))]`
-/

namespace A044682.P14603278942230887071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044652 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044682.P14603278942230887071

/-! ## A044682.P17421647198305414794

`A057979(A044652(2*(n+1)))`
-/

namespace A044682.P17421647198305414794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044652 (2 * (n + 1))).toNat

end

end A044682.P17421647198305414794

/-! ## A044682.P11841334452403909325

`record[Δ[A152271(A044652(n+1))]]`
-/

namespace A044682.P11841334452403909325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A044652 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044682.P11841334452403909325

/-! ## A044682.P15462844230814799578

`A140106(A044652(2*(n+1))+1)`
-/

namespace A044682.P15462844230814799578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A044652 (2 * (n + 1)) + 1).toNat

end

end A044682.P15462844230814799578

/-! ## A044682.P1975105508750954523

`A004525(A044652(2*(n+1))-1)`
-/

namespace A044682.P1975105508750954523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A044652 (2 * (n + 1)) - 1).toNat

end

end A044682.P1975105508750954523

/-! ## A044682.P12881870366669451873

`A060681(A044652(2*(n+1))-1)`
-/

namespace A044682.P12881870366669451873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A044652 (2 * (n + 1)) - 1).toNat

end

end A044682.P12881870366669451873

/-! ## A044682.P24988819939274098

`A152271(A044652(2*n+2))-1`
-/

namespace A044682.P24988819939274098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A044652 (2 * n + 2)).toNat - 1

end

end A044682.P24988819939274098

/-!
# A044683: Numbers n such that string 5,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044683, there is no canonical definition to state claims against.
-/

/-! ## A044683.P6914860070924033808

`record[A057979(A044654(n+2))]`
-/

namespace A044683.P6914860070924033808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044654 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044683.P6914860070924033808

/-! ## A044683.P3486655849786613531

`A044303(n+1)+A008683(A237055(n+1))`
-/

namespace A044683.P3486655849786613531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044303 (n + 1) + A008683 (A237055 (n + 1)).toNat

end

end A044683.P3486655849786613531

/-! ## A044683.P17652380529783232182

`A044303(n+1)+A033999(A240724(n+1))`
-/

namespace A044683.P17652380529783232182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044303 (n + 1) + A033999 (A240724 (n + 1)).toNat

end

end A044683.P17652380529783232182

/-! ## A044683.P8328175634046607173

`A044303(n+1)-A001222(A128926(n+1))`
-/

namespace A044683.P8328175634046607173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044303 (n + 1) - A001222 (A128926 (n + 1)).toNat

end

end A044683.P8328175634046607173

/-! ## A044683.P12097198917918565264

`A044303(n+1)-A014963(A334015(n+1))`
-/

namespace A044683.P12097198917918565264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044303 (n + 1) - A014963 (A334015 (n + 1)).toNat

end

end A044683.P12097198917918565264

/-!
# A044684: Numbers n such that string 5,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044684, there is no canonical definition to state claims against.
-/

/-! ## A044684.P12877321904568966582

`A002517(A044303(n+1))-1`
-/

namespace A044684.P12877321904568966582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044303 (n + 1)).toNat - 1

end

end A044684.P12877321904568966582

/-! ## A044684.P2673498803464489401

`A057428(n+1)+A002517(A044303(n+1))`
-/

namespace A044684.P2673498803464489401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044303 (n + 1)).toNat

end

end A044684.P2673498803464489401

/-! ## A044684.P14029040290164603634

`A134824(n+2)+A002517(A044303(n+1))`
-/

namespace A044684.P14029040290164603634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A002517 (A044303 (n + 1)).toNat

end

end A044684.P14029040290164603634

/-! ## A044684.P1280404254857896553

`A260196(n+2)+A002517(A044303(n+1))`
-/

namespace A044684.P1280404254857896553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A002517 (A044303 (n + 1)).toNat

end

end A044684.P1280404254857896553

/-! ## A044684.P4507751320959721058

`A033999(2*n+1)+A002517(A044303(n+1))`
-/

namespace A044684.P4507751320959721058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A002517 (A044303 (n + 1)).toNat

end

end A044684.P4507751320959721058

/-! ## A044684.P14528612616985864980

`A062157(A017341(n))+A002517(A044303(n+1))`
-/

namespace A044684.P14528612616985864980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A017341 n).toNat + A002517 (A044303 (n + 1)).toNat

end

end A044684.P14528612616985864980

/-! ## A044684.P1607508862426791559

`record[A057979(A044656(n+2))]`
-/

namespace A044684.P1607508862426791559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044656 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044684.P1607508862426791559

/-! ## A044684.P11972475017536175013

`A044304(n+1)-A218320(A285688(n+1))`
-/

namespace A044684.P11972475017536175013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044304 (n + 1) - A218320 (A285688 (n + 1)).toNat

end

end A044684.P11972475017536175013

/-!
# A044685: Numbers n such that string 5,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044685, there is no canonical definition to state claims against.
-/

/-! ## A044685.P10539747827232007859

`record[A057979(A044658(n+2))]`
-/

namespace A044685.P10539747827232007859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044658 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044685.P10539747827232007859

/-! ## A044685.P17405944268561882780

`A044305(n+1)-A014676(A186729(n))`
-/

namespace A044685.P17405944268561882780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044305 (n + 1) - A014676 (A186729 n).toNat

end

end A044685.P17405944268561882780

/-! ## A044685.P16275298165696678342

`A057428(A001263(n+1))+A044305(n+1)`
-/

namespace A044685.P16275298165696678342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A001263 (n + 1)).toNat + A044305 (n + 1)

end

end A044685.P16275298165696678342

/-! ## A044685.P11579837245249776086

`A057428(A161136(n+1))+A044305(n+1)`
-/

namespace A044685.P11579837245249776086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A161136 (n + 1)).toNat + A044305 (n + 1)

end

end A044685.P11579837245249776086

/-! ## A044685.P5461282947975722241

`A044305(n+1)-A000035(A273077(n+1))`
-/

namespace A044685.P5461282947975722241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044305 (n + 1) - A000035 (A273077 (n + 1)).toNat

end

end A044685.P5461282947975722241

/-! ## A044685.P7705965028111360301

`A044305(n+1)-A185700(A186729(n)+1)`
-/

namespace A044685.P7705965028111360301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044305 (n + 1) - A185700 (A186729 n + 1).toNat

end

end A044685.P7705965028111360301

/-! ## A044685.P10573895704673309058

`A044305(n+1)-A194543(A186729(n)+1)`
-/

namespace A044685.P10573895704673309058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044305 (n + 1) - A194543 (A186729 n + 1).toNat

end

end A044685.P10573895704673309058

/-!
# A044686: Numbers n such that string 6,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044686, there is no canonical definition to state claims against.
-/

/-! ## A044686.P12293699178401949822

`record[A057979(A044660(n+2))]`
-/

namespace A044686.P12293699178401949822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044660 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044686.P12293699178401949822

/-! ## A044686.P16668768588087509759

`A044306(n+1)-A057427(A000009(n))`
-/

namespace A044686.P16668768588087509759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044306 (n + 1) - A057427 (A000009 n).toNat

end

end A044686.P16668768588087509759

/-! ## A044686.P6855639236933907128

`A044306(n+1)-A010156(A333147(n))`
-/

namespace A044686.P6855639236933907128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044306 (n + 1) - A010156 (A333147 n).toNat

end

end A044686.P6855639236933907128

/-! ## A044686.P6147307659668468337

`A057428(∑[A079025(n)])+A044306(n+1)`
-/

namespace A044686.P6147307659668468337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044306 (n + 1)

end

end A044686.P6147307659668468337

/-! ## A044686.P338645977984345680

`A044306(n+1)-A001222(A176371(n+1))`
-/

namespace A044686.P338645977984345680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044306 (n + 1) - A001222 (A176371 (n + 1)).toNat

end

end A044686.P338645977984345680

/-! ## A044686.P4298209643859587689

`A044306(n+1)-A001222(A195602(n+1))`
-/

namespace A044686.P4298209643859587689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044306 (n + 1) - A001222 (A195602 (n + 1)).toNat

end

end A044686.P4298209643859587689

/-! ## A044686.P6113455036369334830

`A044306(n+1)-A001222(A226218(n+1))`
-/

namespace A044686.P6113455036369334830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044306 (n + 1) - A001222 (A226218 (n + 1)).toNat

end

end A044686.P6113455036369334830

/-! ## A044686.P9441642186785967862

`A044306(n+1)-A264483(A262079(n+1))`
-/

namespace A044686.P9441642186785967862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044306 (n + 1) - A264483 (A262079 (n + 1)).toNat

end

end A044686.P9441642186785967862

/-!
# A044687: Numbers n such that string 6,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044687, there is no canonical definition to state claims against.
-/

/-! ## A044687.P2239012874165352292

`A002517(A044306(n+1))-1`
-/

namespace A044687.P2239012874165352292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044306 (n + 1)).toNat - 1

end

end A044687.P2239012874165352292

/-! ## A044687.P12322003811075158108

`A057428(n+1)+A002517(A044306(n+1))`
-/

namespace A044687.P12322003811075158108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044306 (n + 1)).toNat

end

end A044687.P12322003811075158108

/-! ## A044687.P16889125134831031960

`A153881(n+2)+A002517(A044306(n+1))`
-/

namespace A044687.P16889125134831031960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A002517 (A044306 (n + 1)).toNat

end

end A044687.P16889125134831031960

/-! ## A044687.P10845434016137618048

`A049347(3*n+1)+A002517(A044306(n+1))`
-/

namespace A044687.P10845434016137618048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * n + 1) + A002517 (A044306 (n + 1)).toNat

end

end A044687.P10845434016137618048

/-! ## A044687.P7261001051626430986

`A094648(gcd(n, n+1))+A002517(A044306(n+1))`
-/

namespace A044687.P7261001051626430986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094648 (Nat.gcd n (n + 1)) + A002517 (A044306 (n + 1)).toNat

end

end A044687.P7261001051626430986

/-! ## A044687.P7048240775131870431

`A325142(A112316(n))+A002517(A044306(n+1))`
-/

namespace A044687.P7048240775131870431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A112316 n).toNat + A002517 (A044306 (n + 1)).toNat

end

end A044687.P7048240775131870431

/-! ## A044687.P11969176068415941032

`A008683(A006450(n+1))+A002517(A044306(n+1))`
-/

namespace A044687.P11969176068415941032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006450 (n + 1)).toNat + A002517 (A044306 (n + 1)).toNat

end

end A044687.P11969176068415941032

/-! ## A044687.P3654635733061797537

`A033999(A002733(n+1))+A002517(A044306(n+1))`
-/

namespace A044687.P3654635733061797537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002733 (n + 1)).toNat + A002517 (A044306 (n + 1)).toNat

end

end A044687.P3654635733061797537

/-! ## A044687.P8214763567388866843

`A033999(A045473(n+1))+A002517(A044306(n+1))`
-/

namespace A044687.P8214763567388866843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A045473 (n + 1)).toNat + A002517 (A044306 (n + 1)).toNat

end

end A044687.P8214763567388866843

/-! ## A044687.P498688006902451730

`A316441(A000040(n+1))+A002517(A044306(n+1))`
-/

namespace A044687.P498688006902451730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A002517 (A044306 (n + 1)).toNat

end

end A044687.P498688006902451730

/-! ## A044687.P2108685294416461932

`A316441(A006530(n+2))+A002517(A044306(n+1))`
-/

namespace A044687.P2108685294416461932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A006530 (n + 2)).toNat + A002517 (A044306 (n + 1)).toNat

end

end A044687.P2108685294416461932

/-!
# A044688: Numbers n such that string 6,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044688, there is no canonical definition to state claims against.
-/

/-! ## A044688.P13415932951442866494

`record[A057979(A044664(n+2))]`
-/

namespace A044688.P13415932951442866494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044664 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044688.P13415932951442866494

/-! ## A044688.P4545674883349018198

`A044308(n+1)-gcd(3, A173138(n+1))`
-/

namespace A044688.P4545674883349018198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044308 (n + 1) - (Int.gcd 3 (A173138 (n + 1)) : ℤ)

end

end A044688.P4545674883349018198

/-! ## A044688.P1490752057661274811

`A057428(A124460(n))+A044308(n+1)`
-/

namespace A044688.P1490752057661274811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A124460 n).toNat + A044308 (n + 1)

end

end A044688.P1490752057661274811

/-! ## A044688.P4650878008997550857

`A044308(n+1)-A054977(A305148(n))`
-/

namespace A044688.P4650878008997550857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044308 (n + 1) - A054977 (A305148 n).toNat

end

end A044688.P4650878008997550857

/-! ## A044688.P931805904656061367

`A057428(A075090(n+1))+A044308(n+1)`
-/

namespace A044688.P931805904656061367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A075090 (n + 1)).toNat + A044308 (n + 1)

end

end A044688.P931805904656061367

/-! ## A044688.P15169620607745065783

`A044308(n+1)+A008836(A142050(n+1))`
-/

namespace A044688.P15169620607745065783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044308 (n + 1) + A008836 (A142050 (n + 1)).toNat

end

end A044688.P15169620607745065783

/-! ## A044688.P906000560728604254

`A057428(A164782(n+1))+A044308(n+1)`
-/

namespace A044688.P906000560728604254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A164782 (n + 1)).toNat + A044308 (n + 1)

end

end A044688.P906000560728604254

/-! ## A044688.P15707884653631149982

`A044308(n+1)-A062557(2*A088207(n))`
-/

namespace A044688.P15707884653631149982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044308 (n + 1) - A062557 (2 * A088207 n).toNat

end

end A044688.P15707884653631149982

/-! ## A044688.P4725289495495954703

`A057428(A107975(n+1))+A044308(n+1)`
-/

namespace A044688.P4725289495495954703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A107975 (n + 1)).toNat + A044308 (n + 1)

end

end A044688.P4725289495495954703

/-!
# A044689: Numbers n such that string 6,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044689, there is no canonical definition to state claims against.
-/

/-! ## A044689.P1598986259460121024

`record[A057979(A044666(n+2))]`
-/

namespace A044689.P1598986259460121024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044666 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044689.P1598986259460121024

/-! ## A044689.P14606429194643521489

`A044309(n+1)-A151934(n)!`
-/

namespace A044689.P14606429194643521489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044309 (n + 1) - (Nat.factorial (A151934 n).toNat : ℤ)

end

end A044689.P14606429194643521489

/-! ## A044689.P9281521397261203632

`A044309(n+1)-A151935(n)!`
-/

namespace A044689.P9281521397261203632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044309 (n + 1) - (Nat.factorial (A151935 n).toNat : ℤ)

end

end A044689.P9281521397261203632

/-! ## A044689.P16686394447679859301

`A057428(A003107(n))+A044309(n+1)`
-/

namespace A044689.P16686394447679859301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A003107 n).toNat + A044309 (n + 1)

end

end A044689.P16686394447679859301

/-! ## A044689.P15761908582613950015

`A044309(n+1)-A000041(A151935(n)²)`
-/

namespace A044689.P15761908582613950015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044309 (n + 1) - A000041 (A151935 n ^ 2).toNat

end

end A044689.P15761908582613950015

/-! ## A044689.P396152096279555493

`A044309(n+1)-A000108(A151934(n)²)`
-/

namespace A044689.P396152096279555493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044309 (n + 1) - A000108 (A151934 n ^ 2).toNat

end

end A044689.P396152096279555493

/-! ## A044689.P6041175967976308408

`A044309(n+1)-A007318(A151934(n)²)`
-/

namespace A044689.P6041175967976308408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044309 (n + 1) - A007318 (A151934 n ^ 2).toNat

end

end A044689.P6041175967976308408

/-! ## A044689.P2560123394348041991

`A044309(n+1)-A001222(A002586(n+1))`
-/

namespace A044689.P2560123394348041991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044309 (n + 1) - A001222 (A002586 (n + 1)).toNat

end

end A044689.P2560123394348041991

/-! ## A044689.P13361323193553266220

`A044309(n+1)-A001222(A141862(n+1))`
-/

namespace A044689.P13361323193553266220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044309 (n + 1) - A001222 (A141862 (n + 1)).toNat

end

end A044689.P13361323193553266220

/-! ## A044689.P11452109300328477506

`A044309(n+1)-A007318(A151934(n)+1)`
-/

namespace A044689.P11452109300328477506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044309 (n + 1) - A007318 (A151934 n + 1).toNat

end

end A044689.P11452109300328477506

/-!
# A044690: Numbers n such that string 6,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044690, there is no canonical definition to state claims against.
-/

/-! ## A044690.P3689730664038814990

`A002517(A044309(n+1))-1`
-/

namespace A044690.P3689730664038814990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044309 (n + 1)).toNat - 1

end

end A044690.P3689730664038814990

/-! ## A044690.P14180449849248463540

`A057428(n+1)+A002517(A044309(n+1))`
-/

namespace A044690.P14180449849248463540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044309 (n + 1)).toNat

end

end A044690.P14180449849248463540

/-! ## A044690.P12556786062548294244

`A070313(ceil(2/(n+1)))+A002517(A044309(n+1))`
-/

namespace A044690.P12556786062548294244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070313 ⌈2 / (n + 1 : ℚ)⌉.toNat + A002517 (A044309 (n + 1)).toNat

end

end A044690.P12556786062548294244

/-! ## A044690.P16018837979391087160

`A054527(∑[n+1]+2)+A002517(A044309(n+1))`
-/

namespace A044690.P16018837979391087160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A002517 (A044309 (n + 1)).toNat

end

end A044690.P16018837979391087160

/-! ## A044690.P7746375541920457574

`A033880(A006519(n+1))+A002517(A044309(n+1))`
-/

namespace A044690.P7746375541920457574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A006519 (n + 1)).toNat + A002517 (A044309 (n + 1)).toNat

end

end A044690.P7746375541920457574

/-! ## A044690.P10466433177570156507

`A165326(A005843(n+1))+A002517(A044309(n+1))`
-/

namespace A044690.P10466433177570156507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A005843 (n + 1)).toNat + A002517 (A044309 (n + 1)).toNat

end

end A044690.P10466433177570156507

/-! ## A044690.P7139973595988330749

`A165326(A120344(n+1))+A002517(A044309(n+1))`
-/

namespace A044690.P7139973595988330749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A120344 (n + 1)).toNat + A002517 (A044309 (n + 1)).toNat

end

end A044690.P7139973595988330749

/-! ## A044690.P12549389565958388968

`A081229(A243355(n+1))+A002517(A044309(n+1))`
-/

namespace A044690.P12549389565958388968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081229 (A243355 (n + 1)).toNat + A002517 (A044309 (n + 1)).toNat

end

end A044690.P12549389565958388968

/-! ## A044690.P9515900175748042326

`A165326(A247897(n+1))+A002517(A044309(n+1))`
-/

namespace A044690.P9515900175748042326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A247897 (n + 1)).toNat + A002517 (A044309 (n + 1)).toNat

end

end A044690.P9515900175748042326

/-! ## A044690.P16382356081416449871

`A165326(A247898(n+1))+A002517(A044309(n+1))`
-/

namespace A044690.P16382356081416449871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A247898 (n + 1)).toNat + A002517 (A044309 (n + 1)).toNat

end

end A044690.P16382356081416449871

/-! ## A044690.P12104444112049520117

`A165326(A247899(n+1))+A002517(A044309(n+1))`
-/

namespace A044690.P12104444112049520117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A247899 (n + 1)).toNat + A002517 (A044309 (n + 1)).toNat

end

end A044690.P12104444112049520117

/-! ## A044690.P9826141689094593175

`A165326(A247900(n+1))+A002517(A044309(n+1))`
-/

namespace A044690.P9826141689094593175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A247900 (n + 1)).toNat + A002517 (A044309 (n + 1)).toNat

end

end A044690.P9826141689094593175

/-! ## A044690.P6877323524628177655

`A165326(A247901(n+1))+A002517(A044309(n+1))`
-/

namespace A044690.P6877323524628177655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A247901 (n + 1)).toNat + A002517 (A044309 (n + 1)).toNat

end

end A044690.P6877323524628177655

/-! ## A044690.P2111982874677262738

`A265643(A020639(2*(n+1)))+A002517(A044309(n+1))`
-/

namespace A044690.P2111982874677262738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265643 (A020639 (2 * (n + 1))).toNat + A002517 (A044309 (n + 1)).toNat

end

end A044690.P2111982874677262738

/-! ## A044690.P10018955218668222364

`A001057(2*n)+A023443(n)+A002517(A044309(n+1))`
-/

namespace A044690.P10018955218668222364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + (A023443 n + A002517 (A044309 (n + 1)).toNat)

end

end A044690.P10018955218668222364

/-!
# A044691: Numbers n such that string 6,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044691, there is no canonical definition to state claims against.
-/

/-! ## A044691.P12965583914784796113

`A319021(A044310(n+1))-2`
-/

namespace A044691.P12965583914784796113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044310 (n + 1)).toNat - 2

end

end A044691.P12965583914784796113

/-! ## A044691.P14046026196516117576

`record[A057979(A044670(n+2))]`
-/

namespace A044691.P14046026196516117576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044670 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044691.P14046026196516117576

/-! ## A044691.P17700270495491719032

`A184974(A182700(n))+A044310(n+1)`
-/

namespace A044691.P17700270495491719032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A182700 n).toNat + A044310 (n + 1)

end

end A044691.P17700270495491719032

/-!
# A044692: Numbers n such that string 6,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044692, there is no canonical definition to state claims against.
-/

/-! ## A044692.P16172090471144746713

`A319021(A044311(n+1)-2)`
-/

namespace A044692.P16172090471144746713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044311 (n + 1) - 2).toNat

end

end A044692.P16172090471144746713

/-! ## A044692.P554232337424001597

`A278539(A044672(2*(n+1))-3)`
-/

namespace A044692.P554232337424001597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (A044672 (2 * (n + 1)) - 3).toNat

end

end A044692.P554232337424001597

/-! ## A044692.P10659917364497291585

`A008619(A044672(2*(n+1))-3)`
-/

namespace A044692.P10659917364497291585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A044672 (2 * (n + 1)) - 3).toNat

end

end A044692.P10659917364497291585

/-! ## A044692.P14280078059921061180

`A052938(A044672(2*(n+1))-3)`
-/

namespace A044692.P14280078059921061180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A044672 (2 * (n + 1)) - 3).toNat

end

end A044692.P14280078059921061180

/-! ## A044692.P808420041087560022

`A004524(A044672(2*(n+1))-2*n)+n`
-/

namespace A044692.P808420041087560022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A044672 (2 * (n + 1)) - (2 * n : ℤ)).toNat + (n : ℤ)

end

end A044692.P808420041087560022

/-! ## A044692.P687312481290490978

`record[A057979(A044672(n+2))]`
-/

namespace A044692.P687312481290490978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044672 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044692.P687312481290490978

/-! ## A044692.P15256112390061864830

`A004524(A044672(2*(n+1)))`
-/

namespace A044692.P15256112390061864830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A044672 (2 * (n + 1))).toNat

end

end A044692.P15256112390061864830

/-! ## A044692.P10980920352124555733

`A123108(A044672(n+2+n))`
-/

namespace A044692.P10980920352124555733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A044672 (n + 2 + n)).toNat

end

end A044692.P10980920352124555733

/-! ## A044692.P9570393043402418376

`A026741(A044672(2*(n+1))-1)`
-/

namespace A044692.P9570393043402418376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A044672 (2 * (n + 1)) - 1).toNat

end

end A044692.P9570393043402418376

/-! ## A044692.P13818737119537435740

`A057979(A044672(2*n+2)*A057979(2*n))`
-/

namespace A044692.P13818737119537435740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044672 (2 * n + 2) * A057979 (2 * n)).toNat

end

end A044692.P13818737119537435740

/-!
# A044693: Numbers n such that string 6,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044693, there is no canonical definition to state claims against.
-/

/-! ## A044693.P4182732388349144377

`A002517(A044312(n+1))-1`
-/

namespace A044693.P4182732388349144377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044312 (n + 1)).toNat - 1

end

end A044693.P4182732388349144377

/-! ## A044693.P15103764571455541071

`A057428(n+1)+A002517(A044312(n+1))`
-/

namespace A044693.P15103764571455541071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044312 (n + 1)).toNat

end

end A044693.P15103764571455541071

/-! ## A044693.P7383116955820359099

`A260196(n+2)+A002517(A044312(n+1))`
-/

namespace A044693.P7383116955820359099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A002517 (A044312 (n + 1)).toNat

end

end A044693.P7383116955820359099

/-! ## A044693.P6962890827645944101

`A033999(2*n+3)+A002517(A044312(n+1))`
-/

namespace A044693.P6962890827645944101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 3) + A002517 (A044312 (n + 1)).toNat

end

end A044693.P6962890827645944101

/-! ## A044693.P14325119208962265776

`A349920(p?[2*n+5])+A002517(A044312(n+1))`
-/

namespace A044693.P14325119208962265776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A002517 (A044312 (n + 1)).toNat

end

end A044693.P14325119208962265776

/-! ## A044693.P15859911218528223656

`A349920(A000040(n+1))+A002517(A044312(n+1))`
-/

namespace A044693.P15859911218528223656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A000040 (n + 1)).toNat + A002517 (A044312 (n + 1)).toNat

end

end A044693.P15859911218528223656

/-! ## A044693.P10612275793847571956

`record[A057979(A044674(n+2))]`
-/

namespace A044693.P10612275793847571956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044674 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044693.P10612275793847571956

/-! ## A044693.P8701192583830989491

`A065423(2*A044313(n+1))`
-/

namespace A044693.P8701192583830989491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A044313 (n + 1)).toNat

end

end A044693.P8701192583830989491

/-! ## A044693.P16817796629605312504

`A140106(2*A044313(n+1))`
-/

namespace A044693.P16817796629605312504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A044313 (n + 1)).toNat

end

end A044693.P16817796629605312504

/-! ## A044693.P18094729854654419855

`A044313(n+1)-A001221(A053998(n))`
-/

namespace A044693.P18094729854654419855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044313 (n + 1) - A001221 (A053998 n).toNat

end

end A044693.P18094729854654419855

/-!
# A044694: Numbers n such that string 6,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044694, there is no canonical definition to state claims against.
-/

/-! ## A044694.P5332549957596966596

`A044314(n+1)-A000035(A112857(n))`
-/

namespace A044694.P5332549957596966596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044314 (n + 1) - A000035 (A112857 n).toNat

end

end A044694.P5332549957596966596

/-! ## A044694.P14503653305678131594

`A044314(n+1)-A057427(A151689(n))`
-/

namespace A044694.P14503653305678131594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044314 (n + 1) - A057427 (A151689 n).toNat

end

end A044694.P14503653305678131594

/-! ## A044694.P8913548868416996206

`A044314(n+1)-A134568(A134568(n+1))`
-/

namespace A044694.P8913548868416996206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044314 (n + 1) - A134568 (A134568 (n + 1)).toNat

end

end A044694.P8913548868416996206

/-! ## A044694.P17413696518889842702

`A044314(n+1)-A001222(A348744(n+1))`
-/

namespace A044694.P17413696518889842702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044314 (n + 1) - A001222 (A348744 (n + 1)).toNat

end

end A044694.P17413696518889842702

/-! ## A044694.P6272735821452735496

`A044314(n+1)-A328771(A030480(n+1))`
-/

namespace A044694.P6272735821452735496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044314 (n + 1) - A328771 (A030480 (n + 1)).toNat

end

end A044694.P6272735821452735496

/-! ## A044694.P3403337964554963362

`A044314(n+1)-A057427(A307716(n+1))`
-/

namespace A044694.P3403337964554963362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044314 (n + 1) - A057427 (A307716 (n + 1)).toNat

end

end A044694.P3403337964554963362

/-! ## A044694.P16097943087602600977

`A044314(n+1)-A000035(A001844(n+2))`
-/

namespace A044694.P16097943087602600977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044314 (n + 1) - A000035 (A001844 (n + 2)).toNat

end

end A044694.P16097943087602600977

/-!
# A044695: Numbers n such that string 7,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044695, there is no canonical definition to state claims against.
-/

/-! ## A044695.P14438376166245831648

`A057428(C(2*n+3, 2))+A044315(n+1)`
-/

namespace A044695.P14438376166245831648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (Nat.choose (2 * n + 3) 2) + A044315 (n + 1)

end

end A044695.P14438376166245831648

/-! ## A044695.P14386242733774498822

`A057428(A000132(n))+A044315(n+1)`
-/

namespace A044695.P14386242733774498822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000132 n).toNat + A044315 (n + 1)

end

end A044695.P14386242733774498822

/-! ## A044695.P9803896790782852395

`A057428(A009883(n))+A044315(n+1)`
-/

namespace A044695.P9803896790782852395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A009883 n).toNat + A044315 (n + 1)

end

end A044695.P9803896790782852395

/-! ## A044695.P10926497653166825992

`A057428(A019453(n))+A044315(n+1)`
-/

namespace A044695.P10926497653166825992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A019453 n).toNat + A044315 (n + 1)

end

end A044695.P10926497653166825992

/-! ## A044695.P178067779426296059

`A057428(A078812(n))+A044315(n+1)`
-/

namespace A044695.P178067779426296059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A078812 n).toNat + A044315 (n + 1)

end

end A044695.P178067779426296059

/-! ## A044695.P9678816006448903524

`A044315(n+1)-A057427(A261770(n))`
-/

namespace A044695.P9678816006448903524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044315 (n + 1) - A057427 (A261770 n).toNat

end

end A044695.P9678816006448903524

/-! ## A044695.P2301154357813148977

`A044315(n+1)-A045497(A301120(n))`
-/

namespace A044695.P2301154357813148977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044315 (n + 1) - A045497 (A301120 n).toNat

end

end A044695.P2301154357813148977

/-! ## A044695.P629569496006441544

`A032742(2*(A044315(n+1)-1))`
-/

namespace A044695.P629569496006441544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * (A044315 (n + 1) - 1)).toNat

end

end A044695.P629569496006441544

/-!
# A044696: Numbers n such that string 7,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044696, there is no canonical definition to state claims against.
-/

/-! ## A044696.P15285851586497011517

`A002517(A044315(n+1))-1`
-/

namespace A044696.P15285851586497011517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044315 (n + 1)).toNat - 1

end

end A044696.P15285851586497011517

/-! ## A044696.P5282544264596147749

`A057428(n+1)+A002517(A044315(n+1))`
-/

namespace A044696.P5282544264596147749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044315 (n + 1)).toNat

end

end A044696.P5282544264596147749

/-! ## A044696.P8356549264076672827

`A044316(n+1)+A033999(A001844(n))`
-/

namespace A044696.P8356549264076672827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044316 (n + 1) + A033999 (A001844 n).toNat

end

end A044696.P8356549264076672827

/-! ## A044696.P11488050281473764312

`A057428(A005893(n))+A044316(n+1)`
-/

namespace A044696.P11488050281473764312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A005893 n).toNat + A044316 (n + 1)

end

end A044696.P11488050281473764312

/-! ## A044696.P10542037558701227154

`A044316(n+1)+A033999(A058331(n))`
-/

namespace A044696.P10542037558701227154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044316 (n + 1) + A033999 (A058331 n).toNat

end

end A044696.P10542037558701227154

/-! ## A044696.P4041737540199086729

`A057428(A157170(n))+A044316(n+1)`
-/

namespace A044696.P4041737540199086729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A157170 n).toNat + A044316 (n + 1)

end

end A044696.P4041737540199086729

/-! ## A044696.P8842607517609424123

`A044316(n+1)-A033999(A001105(n))`
-/

namespace A044696.P8842607517609424123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044316 (n + 1) - A033999 (A001105 n).toNat

end

end A044696.P8842607517609424123

/-! ## A044696.P10419557361235198825

`A044316(n+1)-A033999(A046092(n))`
-/

namespace A044696.P10419557361235198825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044316 (n + 1) - A033999 (A046092 n).toNat

end

end A044696.P10419557361235198825

/-! ## A044696.P4720667549123202018

`A057428(A099864(n+2))+A044316(n+1)`
-/

namespace A044696.P4720667549123202018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A099864 (n + 2)).toNat + A044316 (n + 1)

end

end A044696.P4720667549123202018

/-! ## A044696.P1874425901647741264

`A044316(n+1)-A001222(A260553(n+1))`
-/

namespace A044696.P1874425901647741264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044316 (n + 1) - A001222 (A260553 (n + 1)).toNat

end

end A044696.P1874425901647741264

/-!
# A044697: Numbers n such that string 7,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044697, there is no canonical definition to state claims against.
-/

/-! ## A044697.P16360681654464830273

`A044317(n+1)-A021913(A051890(n))`
-/

namespace A044697.P16360681654464830273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044317 (n + 1) - A021913 (A051890 n).toNat

end

end A044697.P16360681654464830273

/-! ## A044697.P8858329047806344278

`A044317(n+1)-A093178(A013609(n))`
-/

namespace A044697.P8858329047806344278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044317 (n + 1) - A093178 (A013609 n).toNat

end

end A044697.P8858329047806344278

/-! ## A044697.P16740390516145595753

`A057428(A110261(n+1))+A044317(n+1)`
-/

namespace A044697.P16740390516145595753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A110261 (n + 1)).toNat + A044317 (n + 1)

end

end A044697.P16740390516145595753

/-! ## A044697.P14862259977017904145

`A057428(A262044(n+1))+A044317(n+1)`
-/

namespace A044697.P14862259977017904145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A262044 (n + 1)).toNat + A044317 (n + 1)

end

end A044697.P14862259977017904145

/-! ## A044697.P5383110114832184783

`A057428(A007504(n)+1)+A044317(n+1)`
-/

namespace A044697.P5383110114832184783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A007504 n + 1).toNat + A044317 (n + 1)

end

end A044697.P5383110114832184783

/-! ## A044697.P8203771988410113793

`A057428(A000009(n))+A044317(n+1)`
-/

namespace A044697.P8203771988410113793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000009 n).toNat + A044317 (n + 1)

end

end A044697.P8203771988410113793

/-!
# A044698: Numbers n such that string 7,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044698, there is no canonical definition to state claims against.
-/

/-! ## A044698.P4308713860124417107

`A044318(n+1)-and(1, A132197(n+1))`
-/

namespace A044698.P4308713860124417107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044318 (n + 1) - Int.land 1 (A132197 (n + 1))

end

end A044698.P4308713860124417107

/-! ## A044698.P17407707409873026217

`A044318(n+1)+A033999(A059743(n))`
-/

namespace A044698.P17407707409873026217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044318 (n + 1) + A033999 (A059743 n).toNat

end

end A044698.P17407707409873026217

/-! ## A044698.P6856794639677717658

`A044318(n+1)-A000034(A138300(n))`
-/

namespace A044698.P6856794639677717658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044318 (n + 1) - A000034 (A138300 n).toNat

end

end A044698.P6856794639677717658

/-! ## A044698.P17452777460953707410

`A044318(n+1)-A000035(A372443(n))`
-/

namespace A044698.P17452777460953707410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044318 (n + 1) - A000035 (A372443 n).toNat

end

end A044698.P17452777460953707410

/-! ## A044698.P14645611148390912451

`A044318(n+1)-A309026(A225634(n))`
-/

namespace A044698.P14645611148390912451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044318 (n + 1) - A309026 (A225634 n).toNat

end

end A044698.P14645611148390912451

/-! ## A044698.P15999337733438798256

`A057428(A020492(n+1))+A044318(n+1)`
-/

namespace A044698.P15999337733438798256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A020492 (n + 1)).toNat + A044318 (n + 1)

end

end A044698.P15999337733438798256

/-! ## A044698.P1696684197579128456

`A044318(n+1)+A033999(A132197(n+1))`
-/

namespace A044698.P1696684197579128456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044318 (n + 1) + A033999 (A132197 (n + 1)).toNat

end

end A044698.P1696684197579128456

/-! ## A044698.P7159871080364295565

`A057428(A245943(n+1))+A044318(n+1)`
-/

namespace A044698.P7159871080364295565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A245943 (n + 1)).toNat + A044318 (n + 1)

end

end A044698.P7159871080364295565

/-!
# A044699: Numbers n such that string 7,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044699, there is no canonical definition to state claims against.
-/

/-! ## A044699.P11828031135641250828

`record[A249122(A044686(n+2))]`
-/

namespace A044699.P11828031135641250828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A044686 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044699.P11828031135641250828

/-! ## A044699.P9954711266611775285

`A002517(A044318(n+1))-1`
-/

namespace A044699.P9954711266611775285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044318 (n + 1)).toNat - 1

end

end A044699.P9954711266611775285

/-! ## A044699.P9691289412422058962

`A033999(or(1, n))+A002517(A044318(n+1))`
-/

namespace A044699.P9691289412422058962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.lor 1 n) + A002517 (A044318 (n + 1)).toNat

end

end A044699.P9691289412422058962

/-! ## A044699.P9111662784479243928

`A033999(Δ[n²])+A002517(A044318(n+1))`
-/

namespace A044699.P9111662784479243928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A002517 (A044318 (n + 1)).toNat

end

end A044699.P9111662784479243928

/-! ## A044699.P1223775368857308741

`A057428(2*(n+2))+A002517(A044318(n+1))`
-/

namespace A044699.P1223775368857308741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * (n + 2)) + A002517 (A044318 (n + 1)).toNat

end

end A044699.P1223775368857308741

/-! ## A044699.P5014589326710519578

`A044319(n+1)-and(1, A132197(n+1))`
-/

namespace A044699.P5014589326710519578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044319 (n + 1) - Int.land 1 (A132197 (n + 1))

end

end A044699.P5014589326710519578

/-! ## A044699.P6241376623680605381

`A044319(n+1)-A057427(A020492(n+1))`
-/

namespace A044699.P6241376623680605381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044319 (n + 1) - A057427 (A020492 (n + 1)).toNat

end

end A044699.P6241376623680605381

/-! ## A044699.P6345498949703961514

`A044319(n+1)-A000035(A132197(n+1))`
-/

namespace A044699.P6345498949703961514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044319 (n + 1) - A000035 (A132197 (n + 1)).toNat

end

end A044699.P6345498949703961514

/-! ## A044699.P14145124631276091432

`A032742(2*(A044319(n+1)-1))`
-/

namespace A044699.P14145124631276091432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * (A044319 (n + 1) - 1)).toNat

end

end A044699.P14145124631276091432

