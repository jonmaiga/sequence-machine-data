import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B005.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A222200: Number of Hamiltonian cycles on n X n+1 square grid of points.

The programs for A222200, there is no canonical definition to state claims against.
-/

/-! ## A222200.P780020011785329048

`A321172(C(n+3, 2))`
-/

namespace A222200.P780020011785329048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321172 (Nat.choose (n + 3) 2)

end

end A222200.P780020011785329048

/-! ## A222200.P18089262322254298414

`A321172(A025738(n+1))`
-/

namespace A222200.P18089262322254298414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321172 (A025738 (n + 1)).toNat

end

end A222200.P18089262322254298414

/-! ## A222200.P16231843976821987936

`A321172(A025747(n+1))`
-/

namespace A222200.P16231843976821987936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321172 (A025747 (n + 1)).toNat

end

end A222200.P16231843976821987936

/-! ## A222200.P15960515865946117613

`A321172(A253145(n+1))`
-/

namespace A222200.P15960515865946117613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321172 (A253145 (n + 1)).toNat

end

end A222200.P15960515865946117613

/-! ## A222200.P3086243692943043062

`A321172(A176659(n+2))`
-/

namespace A222200.P3086243692943043062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321172 (A176659 (n + 2)).toNat

end

end A222200.P3086243692943043062

/-!
# A222201: Write n=3i+j, 0<=j

The programs for A222201, there is no canonical definition to state claims against.
-/

/-! ## A222201.P11474730535212576446

`A289624(n!²+n)`
-/

namespace A222201.P11474730535212576446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289624 (Nat.factorial n ^ 2 + n)

end

end A222201.P11474730535212576446

/-! ## A222201.P18386075811974007320

`A283929((n+1)^n)+1`
-/

namespace A222201.P18386075811974007320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283929 ((n + 1) ^ n) + 1

end

end A222201.P18386075811974007320

/-!
# A222202: Number of ways to cover the 2n X 2n grid graph by vertex disjoint cycles.

The programs for A222202, there is no canonical definition to state claims against.
-/

/-! ## A222202.P7100585185196646900

`A222204(3*n)`
-/

namespace A222202.P7100585185196646900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222204 (3 * n)

end

end A222202.P7100585185196646900

/-!
# A222203: Number of ways to cover the n X n+1 grid graph by vertex disjoint cycles.

The programs for A222203, there is no canonical definition to state claims against.
-/

/-! ## A222203.P15869981519464599918

`record[A222204(A051176(n))]`
-/

namespace A222203.P15869981519464599918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222204 (A051176 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222203.P15869981519464599918

/-! ## A222203.P4105584050517265940

`A222204(A292665(n+1))`
-/

namespace A222203.P4105584050517265940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222204 (A292665 (n + 1)).toNat

end

end A222203.P4105584050517265940

/-! ## A222203.P5664196293031425296

`A222204(A008619(3*n))`
-/

namespace A222203.P5664196293031425296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222204 (A008619 (3 * n)).toNat

end

end A222203.P5664196293031425296

/-! ## A222203.P12764637528075767649

`A222204(A008619(n)+n)`
-/

namespace A222203.P12764637528075767649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222204 (A008619 n + (n : ℤ)).toNat

end

end A222203.P12764637528075767649

/-! ## A222203.P372108703816616303

`A222204(A006368(Δ[n²]))`
-/

namespace A222203.P372108703816616303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222204 (A006368 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A222203.P372108703816616303

/-!
# A222204: Write n=3i+j, 0<=j

The programs for A222204, there is no canonical definition to state claims against.
-/

/-! ## A222204.P14863272372194675749

`A098323(A324768(n+1))*A167489(n)`
-/

namespace A222204.P14863272372194675749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098323 (A324768 (n + 1)).toNat * A167489 n

end

end A222204.P14863272372194675749

/-! ## A222204.P16296900818465378220

`lcm(A000009(n), A098323(A324768(n+1)))`
-/

namespace A222204.P16296900818465378220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000009 n) (A098323 (A324768 (n + 1)).toNat)

end

end A222204.P16296900818465378220

/-!
# A222205: Number of multi-directed animals with n vertices.

The programs for A222205, there is no canonical definition to state claims against.
-/

/-! ## A222205.P14006671823153309478

`A127763(A028859(n)²)`
-/

namespace A222205.P14006671823153309478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A028859 n ^ 2).toNat

end

end A222205.P14006671823153309478

/-!
# A222210: In the number n, replace all (decimal) digits '0' with '1' and vice versa.

The programs for A222210, there is no canonical definition to state claims against.
-/

/-! ## A222210.P8603051844679900175

`A035043(A222211(A035043(n)))`
-/

namespace A222210.P8603051844679900175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222211 (A035043 n).toNat).toNat

end

end A222210.P8603051844679900175

/-! ## A222210.P9601070988460272079

`A222220(A222212(A222220(n)))`
-/

namespace A222210.P9601070988460272079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222212 (A222220 n).toNat).toNat

end

end A222210.P9601070988460272079

/-! ## A222210.P7795609193196055896

`A235049(n)+A136400(A306436(n))`
-/

namespace A222210.P7795609193196055896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n + A136400 (A306436 n).toNat

end

end A222210.P7795609193196055896

/-! ## A222210.P4363943425151568396

`A136400(A306436(n))+n-A136400(n)`
-/

namespace A222210.P4363943425151568396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A306436 n).toNat + ((n : ℤ) - A136400 n)

end

end A222210.P4363943425151568396

/-! ## A222210.P8561017154350047282

`A048379(A235049(n))-A102683(A270173(n))`
-/

namespace A222210.P8561017154350047282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A235049 n).toNat - A102683 (A270173 n).toNat

end

end A222210.P8561017154350047282

/-!
# A222211: In the number n, replace all (decimal) digits '0' with '2' and vice versa.

The programs for A222211, there is no canonical definition to state claims against.
-/

/-! ## A222211.P919746253737063079

`A035043(A222210(A035043(n)))`
-/

namespace A222211.P919746253737063079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222210 (A035043 n).toNat).toNat

end

end A222211.P919746253737063079

/-! ## A222211.P3317092728647307516

`A035044(A222212(A035044(n)))`
-/

namespace A222211.P3317092728647307516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222212 (A035044 n).toNat).toNat

end

end A222211.P3317092728647307516

/-! ## A222211.P3623380465271759827

`A222230(A222215(A222230(n)))`
-/

namespace A222211.P3623380465271759827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222215 (A222230 n).toNat).toNat

end

end A222211.P3623380465271759827

/-! ## A222211.P4831780587075676356

`A222232(A222217(A222232(n)))`
-/

namespace A222211.P4831780587075676356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222217 (A222232 n).toNat).toNat

end

end A222211.P4831780587075676356

/-!
# A222212: In the number n, replace all (decimal) digits '0' with '3' and vice versa.

The programs for A222212, there is no canonical definition to state claims against.
-/

/-! ## A222212.P14009576544504113824

`A035044(A222211(A035044(n)))`
-/

namespace A222212.P14009576544504113824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222211 (A035044 n).toNat).toNat

end

end A222212.P14009576544504113824

/-! ## A222212.P16643100494950552156

`A055120(A222216(A055120(n)))`
-/

namespace A222212.P16643100494950552156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222216 (A055120 n).toNat).toNat

end

end A222212.P16643100494950552156

/-! ## A222212.P13461807139869400650

`A222220(A222210(A222220(n)))`
-/

namespace A222212.P13461807139869400650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222210 (A222220 n).toNat).toNat

end

end A222212.P13461807139869400650

/-! ## A222212.P4634245358671855648

`A222236(A222215(A222236(n)))`
-/

namespace A222212.P4634245358671855648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A222215 (A222236 n).toNat).toNat

end

end A222212.P4634245358671855648

/-! ## A222212.P1372008294803863643

`A222237(A222216(A222237(n)))`
-/

namespace A222212.P1372008294803863643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222216 (A222237 n).toNat).toNat

end

end A222212.P1372008294803863643

/-! ## A222212.P13918221571253496663

`A222234(A222221(A222210(A222221(A222234(n)))))`
-/

namespace A222212.P13918221571253496663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222221 (A222210 (A222221 (A222234 n).toNat).toNat).toNat).toNat

end

end A222212.P13918221571253496663

/-!
# A222213: Replace all (decimal) digits '0' with '4' and vice versa.

The programs for A222213, there is no canonical definition to state claims against.
-/

/-! ## A222213.P16844308394375690317

`A222221(A222210(A222221(n)))`
-/

namespace A222213.P16844308394375690317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222210 (A222221 n).toNat).toNat

end

end A222213.P16844308394375690317

/-! ## A222213.P4278549628951955675

`A222228(A222211(A222228(n)))`
-/

namespace A222213.P4278549628951955675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222211 (A222228 n).toNat).toNat

end

end A222213.P4278549628951955675

/-! ## A222213.P5362129607743679585

`A222240(A222214(A222240(n)))`
-/

namespace A222213.P5362129607743679585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A222214 (A222240 n).toNat).toNat

end

end A222213.P5362129607743679585

/-! ## A222213.P1328808171111585579

`A222242(A222216(A222242(n)))`
-/

namespace A222213.P1328808171111585579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222216 (A222242 n).toNat).toNat

end

end A222213.P1328808171111585579

/-! ## A222213.P3092438291621590447

`A222230(n+2)-A000005(A222219(n+1))`
-/

namespace A222213.P3092438291621590447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (n + 2) - A000005 (A222219 (n + 1)).toNat

end

end A222213.P3092438291621590447

/-!
# A222214: In the number n, replace all (decimal) digits '0' with '5' and vice versa.

The programs for A222214, there is no canonical definition to state claims against.
-/

/-! ## A222214.P5097161552285401734

`A222222(A222210(A222222(n)))`
-/

namespace A222214.P5097161552285401734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A222210 (A222222 n).toNat).toNat

end

end A222214.P5097161552285401734

/-! ## A222214.P3946744567607828787

`A222235(A222212(A222235(n)))`
-/

namespace A222214.P3946744567607828787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222212 (A222235 n).toNat).toNat

end

end A222214.P3946744567607828787

/-! ## A222214.P17866330409194813371

`A222246(A222216(A222246(n)))`
-/

namespace A222214.P17866330409194813371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222216 (A222246 n).toNat).toNat

end

end A222214.P17866330409194813371

/-! ## A222214.P11441997609430656776

`A222247(A222217(A222247(n)))`
-/

namespace A222214.P11441997609430656776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A222217 (A222247 n).toNat).toNat

end

end A222214.P11441997609430656776

/-! ## A222214.P11475040992171872905

`A222238(n+3)-A330013(A000040(n+3))`
-/

namespace A222214.P11475040992171872905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (n + 3) - A330013 (A000040 (n + 3)).toNat

end

end A222214.P11475040992171872905

/-!
# A222215: In the number n, replace all (decimal) digits '0' with '6' and vice versa.

The programs for A222215, there is no canonical definition to state claims against.
-/

/-! ## A222215.P921244611426147962

`A222223(A222210(A222223(n)))`
-/

namespace A222215.P921244611426147962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222210 (A222223 n).toNat).toNat

end

end A222215.P921244611426147962

/-! ## A222215.P7910657836504644299

`A222230(A222211(A222230(n)))`
-/

namespace A222215.P7910657836504644299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222211 (A222230 n).toNat).toNat

end

end A222215.P7910657836504644299

/-! ## A222215.P1439546462013365324

`A222249(A222216(A222249(n)))`
-/

namespace A222215.P1439546462013365324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222216 (A222249 n).toNat).toNat

end

end A222215.P1439546462013365324

/-! ## A222215.P2431230614720321095

`A222250(A222217(A222250(n)))`
-/

namespace A222215.P2431230614720321095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222217 (A222250 n).toNat).toNat

end

end A222215.P2431230614720321095

/-! ## A222215.P6638693031793573213

`A222251(A222218(A222251(n)))`
-/

namespace A222215.P6638693031793573213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222218 (A222251 n).toNat).toNat

end

end A222215.P6638693031793573213

/-! ## A222215.P14839423870634783579

`A061601(n)+n-A222239(A061601(n))`
-/

namespace A222215.P14839423870634783579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n + ((n : ℤ) - A222239 (A061601 n).toNat)

end

end A222215.P14839423870634783579

/-!
# A222216: In the number n, replace all (decimal) digits 0 with 7 and vice versa.

The programs for A222216, there is no canonical definition to state claims against.
-/

/-! ## A222216.P6539287076905681708

`A222224(A222210(A222224(n)))`
-/

namespace A222216.P6539287076905681708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222210 (A222224 n).toNat).toNat

end

end A222216.P6539287076905681708

/-! ## A222216.P7411271319535856248

`A222231(A222211(A222231(n)))`
-/

namespace A222216.P7411271319535856248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A222211 (A222231 n).toNat).toNat

end

end A222216.P7411271319535856248

/-! ## A222216.P16706766659180779366

`A222246(A222214(A222246(n)))`
-/

namespace A222216.P16706766659180779366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222214 (A222246 n).toNat).toNat

end

end A222216.P16706766659180779366

/-! ## A222216.P9155777652317393108

`A222252(A222217(A222252(n)))`
-/

namespace A222216.P9155777652317393108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222217 (A222252 n).toNat).toNat

end

end A222216.P9155777652317393108

/-! ## A222216.P4113842346686451856

`A222253(A222218(A222253(n)))`
-/

namespace A222216.P4113842346686451856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222218 (A222253 n).toNat).toNat

end

end A222216.P4113842346686451856

/-! ## A222216.P16687153302298663666

`A222225(A048379(n))+n-A048379(n)`
-/

namespace A222216.P16687153302298663666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222216.P16687153302298663666

/-!
# A222217: In the number n, replace all (decimal) digits '0' with '8' and vice versa.

The programs for A222217, there is no canonical definition to state claims against.
-/

/-! ## A222217.P18000898025071500918

`A055120(A222211(A055120(n)))`
-/

namespace A222217.P18000898025071500918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222211 (A055120 n).toNat).toNat

end

end A222217.P18000898025071500918

/-! ## A222217.P181479227585270580

`A222225(A222210(A222225(n)))`
-/

namespace A222217.P181479227585270580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222210 (A222225 n).toNat).toNat

end

end A222217.P181479227585270580

/-! ## A222217.P12370239689845116369

`A222232(A222211(A222232(n)))`
-/

namespace A222217.P12370239689845116369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222211 (A222232 n).toNat).toNat

end

end A222217.P12370239689845116369

/-! ## A222217.P10753915603592748503

`A222238(A222212(A222238(n)))`
-/

namespace A222217.P10753915603592748503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222212 (A222238 n).toNat).toNat

end

end A222217.P10753915603592748503

/-! ## A222217.P11033991475918409904

`A222252(A222216(A222252(n)))`
-/

namespace A222217.P11033991475918409904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222216 (A222252 n).toNat).toNat

end

end A222217.P11033991475918409904

/-! ## A222217.P7666869000321343333

`A222254(A222218(A222254(n)))`
-/

namespace A222217.P7666869000321343333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222218 (A222254 n).toNat).toNat

end

end A222217.P7666869000321343333

/-!
# A222218: In the number n, replace all (decimal) digits '0' with '9' and vice versa.

The programs for A222218, there is no canonical definition to state claims against.
-/

/-! ## A222218.P13480328279938668552

`A222226(A222210(A222226(n)))`
-/

namespace A222218.P13480328279938668552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222210 (A222226 n).toNat).toNat

end

end A222218.P13480328279938668552

/-! ## A222218.P1042097248072587041

`A222233(A222211(A222233(n)))`
-/

namespace A222218.P1042097248072587041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A222211 (A222233 n).toNat).toNat

end

end A222218.P1042097248072587041

/-! ## A222218.P16138027374590789451

`A222244(A222213(A222244(n)))`
-/

namespace A222218.P16138027374590789451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A222213 (A222244 n).toNat).toNat

end

end A222218.P16138027374590789451

/-! ## A222218.P1824238774851598746

`A222251(A222215(A222251(n)))`
-/

namespace A222218.P1824238774851598746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222215 (A222251 n).toNat).toNat

end

end A222218.P1824238774851598746

/-! ## A222218.P5294284849686510766

`A222254(A222217(A222254(n)))`
-/

namespace A222218.P5294284849686510766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222217 (A222254 n).toNat).toNat

end

end A222218.P5294284849686510766

/-! ## A222218.P6136336902888392729

`A222248(A222235(A222212(A222235(A222248(n)))))`
-/

namespace A222218.P6136336902888392729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A222235 (A222212 (A222235 (A222248 n).toNat).toNat).toNat).toNat

end

end A222218.P6136336902888392729

/-!
# A222220: In the number n, replace all (decimal) digits '1' with '3' and vice versa.

The programs for A222220, there is no canonical definition to state claims against.
-/

/-! ## A222220.P2458952156644863612

`A035043(A035044(A035043(n)))`
-/

namespace A222220.P2458952156644863612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A035044 (A035043 n).toNat).toNat

end

end A222220.P2458952156644863612

/-! ## A222220.P8854167375368632297

`A222221(A222234(A222221(n)))`
-/

namespace A222220.P8854167375368632297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222234 (A222221 n).toNat).toNat

end

end A222220.P8854167375368632297

/-! ## A222220.P8108362039066962559

`A222223(A222236(A222223(n)))`
-/

namespace A222220.P8108362039066962559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222236 (A222223 n).toNat).toNat

end

end A222220.P8108362039066962559

/-! ## A222220.P9716037961309057529

`A222224(A222237(A222224(n)))`
-/

namespace A222220.P9716037961309057529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222237 (A222224 n).toNat).toNat

end

end A222220.P9716037961309057529

/-! ## A222220.P2936906096370542671

`A222225(A222238(A222225(n)))`
-/

namespace A222220.P2936906096370542671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222238 (A222225 n).toNat).toNat

end

end A222220.P2936906096370542671

/-! ## A222220.P10786905474589065927

`A222226(A222239(A222226(n)))`
-/

namespace A222220.P10786905474589065927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222239 (A222226 n).toNat).toNat

end

end A222220.P10786905474589065927

/-! ## A222220.P2270479674533616277

`A222225(A035044(A222232(A222225(A035044(n)))))`
-/

namespace A222220.P2270479674533616277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A035044 (A222232 (A222225 (A035044 n).toNat).toNat).toNat).toNat

end

end A222220.P2270479674533616277

/-!
# A222221: In the number n, replace all (decimal) digits '1' with '4' and vice versa.

The programs for A222221, there is no canonical definition to state claims against.
-/

/-! ## A222221.P14868893235766685078

`A035043(A222228(A035043(n)))`
-/

namespace A222221.P14868893235766685078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222228 (A035043 n).toNat).toNat

end

end A222221.P14868893235766685078

/-! ## A222221.P1324780033454598190

`A055120(A222251(A055120(n)))`
-/

namespace A222221.P1324780033454598190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222251 (A055120 n).toNat).toNat

end

end A222221.P1324780033454598190

/-! ## A222221.P9912601164108804754

`A222223(A222241(A222223(n)))`
-/

namespace A222221.P9912601164108804754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222241 (A222223 n).toNat).toNat

end

end A222221.P9912601164108804754

/-! ## A222221.P5622095150715671133

`A222224(A222242(A222224(n)))`
-/

namespace A222221.P5622095150715671133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222242 (A222224 n).toNat).toNat

end

end A222221.P5622095150715671133

/-! ## A222221.P10477540769625475250

`A222225(A222243(A222225(n)))`
-/

namespace A222221.P10477540769625475250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222243 (A222225 n).toNat).toNat

end

end A222221.P10477540769625475250

/-! ## A222221.P4553723498292900161

`A222226(A222244(A222226(n)))`
-/

namespace A222221.P4553723498292900161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222244 (A222226 n).toNat).toNat

end

end A222221.P4553723498292900161

/-!
# A222222: In the number n, replace all (decimal) digits '1' with '5' and vice versa.

The programs for A222222, there is no canonical definition to state claims against.
-/

/-! ## A222222.P18095993039811718024

`A035043(A222229(A035043(n)))`
-/

namespace A222222.P18095993039811718024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222229 (A035043 n).toNat).toNat

end

end A222222.P18095993039811718024

/-! ## A222222.P12596009792607394532

`A222220(A222235(A222220(n)))`
-/

namespace A222222.P12596009792607394532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222235 (A222220 n).toNat).toNat

end

end A222222.P12596009792607394532

/-! ## A222222.P582718253416273907

`A222221(A222240(A222221(n)))`
-/

namespace A222222.P582718253416273907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222240 (A222221 n).toNat).toNat

end

end A222222.P582718253416273907

/-! ## A222222.P18332787172699854699

`A222223(A222245(A222223(n)))`
-/

namespace A222222.P18332787172699854699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222245 (A222223 n).toNat).toNat

end

end A222222.P18332787172699854699

/-! ## A222222.P14640025673695454619

`A222224(A222246(A222224(n)))`
-/

namespace A222222.P14640025673695454619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222246 (A222224 n).toNat).toNat

end

end A222222.P14640025673695454619

/-! ## A222222.P1060560839149618948

`A222225(A222247(A222225(n)))`
-/

namespace A222222.P1060560839149618948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222247 (A222225 n).toNat).toNat

end

end A222222.P1060560839149618948

/-! ## A222222.P10172655632736382415

`A222226(A222248(A222226(n)))`
-/

namespace A222222.P10172655632736382415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222248 (A222226 n).toNat).toNat

end

end A222222.P10172655632736382415

/-! ## A222222.P4389425938384064696

`A222248(A035043(A222233(A035043(A222248(n)))))`
-/

namespace A222222.P4389425938384064696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A035043 (A222233 (A035043 (A222248 n).toNat).toNat).toNat).toNat

end

end A222222.P4389425938384064696

/-!
# A222223: In the number n, replace all (decimal) digits '1' with '6' and vice versa.

The programs for A222223, there is no canonical definition to state claims against.
-/

/-! ## A222223.P7142919160254178396

`A035043(A222230(A035043(n)))`
-/

namespace A222223.P7142919160254178396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222230 (A035043 n).toNat).toNat

end

end A222223.P7142919160254178396

/-! ## A222223.P14740632887911408592

`A055120(A222244(A055120(n)))`
-/

namespace A222223.P14740632887911408592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222244 (A055120 n).toNat).toNat

end

end A222223.P14740632887911408592

/-! ## A222223.P12935526592436724035

`A222220(A222236(A222220(n)))`
-/

namespace A222223.P12935526592436724035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222236 (A222220 n).toNat).toNat

end

end A222223.P12935526592436724035

/-! ## A222223.P15939234657471342166

`A222221(A222241(A222221(n)))`
-/

namespace A222223.P15939234657471342166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222241 (A222221 n).toNat).toNat

end

end A222223.P15939234657471342166

/-! ## A222223.P16234422926992977735

`A222222(A222245(A222222(n)))`
-/

namespace A222223.P16234422926992977735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A222245 (A222222 n).toNat).toNat

end

end A222223.P16234422926992977735

/-! ## A222223.P14890844706579211717

`A222225(A222250(A222225(n)))`
-/

namespace A222223.P14890844706579211717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222250 (A222225 n).toNat).toNat

end

end A222223.P14890844706579211717

/-!
# A222224: In the number n, replace all (decimal) digits '1' with '7' and vice versa.

The programs for A222224, there is no canonical definition to state claims against.
-/

/-! ## A222224.P9471696761538415962

`A035043(A222231(A035043(n)))`
-/

namespace A222224.P9471696761538415962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222231 (A035043 n).toNat).toNat

end

end A222224.P9471696761538415962

/-! ## A222224.P18326110991274353324

`A222221(A222242(A222221(n)))`
-/

namespace A222224.P18326110991274353324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222242 (A222221 n).toNat).toNat

end

end A222224.P18326110991274353324

/-! ## A222224.P11504664651881512121

`A222223(A222249(A222223(n)))`
-/

namespace A222224.P11504664651881512121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222249 (A222223 n).toNat).toNat

end

end A222224.P11504664651881512121

/-! ## A222224.P10868878211031179883

`A222225(A222252(A222225(n)))`
-/

namespace A222224.P10868878211031179883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222252 (A222225 n).toNat).toNat

end

end A222224.P10868878211031179883

/-! ## A222224.P12676872185558135528

`A222226(A222253(A222226(n)))`
-/

namespace A222224.P12676872185558135528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222253 (A222226 n).toNat).toNat

end

end A222224.P12676872185558135528

/-! ## A222224.P11416365323791195187

`A222232(A048379(n))+n-A048379(n)`
-/

namespace A222224.P11416365323791195187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222224.P11416365323791195187

/-! ## A222224.P7988601620102916793

`A222253(A035043(A222233(A035043(A222253(n)))))`
-/

namespace A222224.P7988601620102916793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A035043 (A222233 (A035043 (A222253 n).toNat).toNat).toNat).toNat

end

end A222224.P7988601620102916793

/-!
# A222225: In the number n, replace all (decimal) digits '1' with '8' and vice versa.

The programs for A222225, there is no canonical definition to state claims against.
-/

/-! ## A222225.P8703008937534464310

`A035043(A222232(A035043(n)))`
-/

namespace A222225.P8703008937534464310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222232 (A035043 n).toNat).toNat

end

end A222225.P8703008937534464310

/-! ## A222225.P6645712597886225760

`A055120(A222233(A055120(n)))`
-/

namespace A222225.P6645712597886225760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222233 (A055120 n).toNat).toNat

end

end A222225.P6645712597886225760

/-! ## A222225.P9908491756855973195

`A222220(A222238(A222220(n)))`
-/

namespace A222225.P9908491756855973195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222238 (A222220 n).toNat).toNat

end

end A222225.P9908491756855973195

/-! ## A222225.P14134659513536096265

`A222221(A222243(A222221(n)))`
-/

namespace A222225.P14134659513536096265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222243 (A222221 n).toNat).toNat

end

end A222225.P14134659513536096265

/-! ## A222225.P16377860203882705545

`A222222(A222247(A222222(n)))`
-/

namespace A222225.P16377860203882705545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A222247 (A222222 n).toNat).toNat

end

end A222225.P16377860203882705545

/-! ## A222225.P15651084765431953620

`A222223(A222250(A222223(n)))`
-/

namespace A222225.P15651084765431953620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222250 (A222223 n).toNat).toNat

end

end A222225.P15651084765431953620

/-! ## A222225.P6396198167586209312

`A222224(A222252(A222224(n)))`
-/

namespace A222225.P6396198167586209312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222252 (A222224 n).toNat).toNat

end

end A222225.P6396198167586209312

/-! ## A222225.P16295908859174697741

`A222226(A222254(A222226(n)))`
-/

namespace A222225.P16295908859174697741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222254 (A222226 n).toNat).toNat

end

end A222225.P16295908859174697741

/-! ## A222225.P8095157946038902247

`A222233(A048379(n))+n-A048379(n)`
-/

namespace A222225.P8095157946038902247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222225.P8095157946038902247

/-! ## A222225.P18335786937740884720

`A222254(A035043(A222233(A035043(A222254(n)))))`
-/

namespace A222225.P18335786937740884720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A035043 (A222233 (A035043 (A222254 n).toNat).toNat).toNat).toNat

end

end A222225.P18335786937740884720

/-! ## A222225.P8508271769932613545

`A222232(A222223(A222230(A222223(A222232(n)))))`
-/

namespace A222225.P8508271769932613545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222223 (A222230 (A222223 (A222232 n).toNat).toNat).toNat).toNat

end

end A222225.P8508271769932613545

/-!
# A222226: In the number n, replace all (decimal) digits '1' with '9' and vice versa.

The programs for A222226, there is no canonical definition to state claims against.
-/

/-! ## A222226.P5934490156421676038

`A035043(A222233(A035043(n)))`
-/

namespace A222226.P5934490156421676038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222233 (A035043 n).toNat).toNat

end

end A222226.P5934490156421676038

/-! ## A222226.P12470784746683360191

`A222220(A222239(A222220(n)))`
-/

namespace A222226.P12470784746683360191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222239 (A222220 n).toNat).toNat

end

end A222226.P12470784746683360191

/-! ## A222226.P5213849536337100413

`A222221(A222244(A222221(n)))`
-/

namespace A222226.P5213849536337100413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222244 (A222221 n).toNat).toNat

end

end A222226.P5213849536337100413

/-! ## A222226.P3645226797456654302

`A222223(A222251(A222223(n)))`
-/

namespace A222226.P3645226797456654302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222251 (A222223 n).toNat).toNat

end

end A222226.P3645226797456654302

/-! ## A222226.P12382115968842174977

`A222225(A222254(A222225(n)))`
-/

namespace A222226.P12382115968842174977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222254 (A222225 n).toNat).toNat

end

end A222226.P12382115968842174977

/-! ## A222226.P7364079987561218439

`A222254(A222223(A222250(A222223(A222254(n)))))`
-/

namespace A222226.P7364079987561218439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222223 (A222250 (A222223 (A222254 n).toNat).toNat).toNat).toNat

end

end A222226.P7364079987561218439

/-!
# A222227: Numbers n such that n and n + 16 are prime and there is a power of two in the interval (n,n+16).

The programs for A222227, there is no canonical definition to state claims against.
-/

/-! ## A222227.P9086117788297825141

`p?[A082008(p?[A064896(n+1)])]`
-/

namespace A222227.P9086117788297825141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064896 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082008 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222227.P9086117788297825141

/-! ## A222227.P1229221338118317850

`p?[or(A089732(n), A195166(n+1))]`
-/

namespace A222227.P1229221338118317850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089732 n) (A195166 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222227.P1229221338118317850

/-!
# A222228: In the number n, replace all (decimal) digits '2' with '4' and vice versa.

The programs for A222228, there is no canonical definition to state claims against.
-/

/-! ## A222228.P4838004852931744300

`A035043(A222221(A035043(n)))`
-/

namespace A222228.P4838004852931744300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222221 (A035043 n).toNat).toNat

end

end A222228.P4838004852931744300

/-! ## A222228.P13795979693404789336

`A035044(A222234(A035044(n)))`
-/

namespace A222228.P13795979693404789336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222234 (A035044 n).toNat).toNat

end

end A222228.P13795979693404789336

/-! ## A222228.P10508384460903864285

`A222229(A222240(A222229(n)))`
-/

namespace A222228.P10508384460903864285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A222240 (A222229 n).toNat).toNat

end

end A222228.P10508384460903864285

/-! ## A222228.P11513890096346305443

`A222231(A222242(A222231(n)))`
-/

namespace A222228.P11513890096346305443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A222242 (A222231 n).toNat).toNat

end

end A222228.P11513890096346305443

/-! ## A222228.P6572573498699663275

`A222230(n)+n-A222241(A222230(n))`
-/

namespace A222228.P6572573498699663275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n + ((n : ℤ) - A222241 (A222230 n).toNat)

end

end A222228.P6572573498699663275

/-! ## A222228.P637098748764843495

`A222241(n-(A222241(n)-A222230(n)))`
-/

namespace A222228.P637098748764843495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 ((n : ℤ) - (A222241 n - A222230 n)).toNat

end

end A222228.P637098748764843495

/-!
# A222229: In the number n, replace all (decimal) digits '2' with '5' and vice versa.

The programs for A222229, there is no canonical definition to state claims against.
-/

/-! ## A222229.P8389057833051556851

`A035043(A222222(A035043(n)))`
-/

namespace A222229.P8389057833051556851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222222 (A035043 n).toNat).toNat

end

end A222229.P8389057833051556851

/-! ## A222229.P7681453160664705207

`A035044(A222235(A035044(n)))`
-/

namespace A222229.P7681453160664705207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222235 (A035044 n).toNat).toNat

end

end A222229.P7681453160664705207

/-! ## A222229.P3308596576877561786

`A055120(A222247(A055120(n)))`
-/

namespace A222229.P3308596576877561786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222247 (A055120 n).toNat).toNat

end

end A222229.P3308596576877561786

/-! ## A222229.P9480505694954937916

`A222230(A222245(A222230(n)))`
-/

namespace A222229.P9480505694954937916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222245 (A222230 n).toNat).toNat

end

end A222229.P9480505694954937916

/-! ## A222229.P8269917790352780307

`A222231(A222246(A222231(n)))`
-/

namespace A222229.P8269917790352780307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A222246 (A222231 n).toNat).toNat

end

end A222229.P8269917790352780307

/-! ## A222229.P5986362751194718091

`A222232(A222247(A222232(n)))`
-/

namespace A222229.P5986362751194718091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222247 (A222232 n).toNat).toNat

end

end A222229.P5986362751194718091

/-! ## A222229.P13807038636191135220

`A222233(A222248(A222233(n)))`
-/

namespace A222229.P13807038636191135220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A222248 (A222233 n).toNat).toNat

end

end A222229.P13807038636191135220

/-! ## A222229.P14931387138700407105

`A222248(A035043(A222226(A035043(A222248(n)))))`
-/

namespace A222229.P14931387138700407105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A035043 (A222226 (A035043 (A222248 n).toNat).toNat).toNat).toNat

end

end A222229.P14931387138700407105

/-! ## A222229.P9711438114361290733

`A222245(A222232(A222250(A222232(A222245(n)))))`
-/

namespace A222229.P9711438114361290733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222232 (A222250 (A222232 (A222245 n).toNat).toNat).toNat).toNat

end

end A222229.P9711438114361290733

/-!
# A222230: In the number n, replace all (decimal) digits '2' with '6' and vice versa.

The programs for A222230, there is no canonical definition to state claims against.
-/

/-! ## A222230.P10570806292979696657

`A222229(A222245(A222229(n)))`
-/

namespace A222230.P10570806292979696657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A222245 (A222229 n).toNat).toNat

end

end A222230.P10570806292979696657

/-! ## A222230.P6590915550862076440

`A222232(A222250(A222232(n)))`
-/

namespace A222230.P6590915550862076440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222250 (A222232 n).toNat).toNat

end

end A222230.P6590915550862076440

/-! ## A222230.P10061647634992911411

`A222233(A222251(A222233(n)))`
-/

namespace A222230.P10061647634992911411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A222251 (A222233 n).toNat).toNat

end

end A222230.P10061647634992911411

/-! ## A222230.P3196478908214662411

`A222222(A235049(n))+A136400(n)`
-/

namespace A222230.P3196478908214662411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A235049 n).toNat + A136400 n

end

end A222230.P3196478908214662411

/-! ## A222230.P14073749375576101525

`A222222(n-A136400(n))+A136400(n)`
-/

namespace A222230.P14073749375576101525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 ((n : ℤ) - A136400 n).toNat + A136400 n

end

end A222230.P14073749375576101525

/-! ## A222230.P4310873928552267989

`A222228(n)+A222228(A222241(n))-n`
-/

namespace A222230.P4310873928552267989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n + (A222228 (A222241 n).toNat - (n : ℤ))

end

end A222230.P4310873928552267989

/-! ## A222230.P18115022020594640299

`A222237(A306436(n))+n-A306436(n)`
-/

namespace A222230.P18115022020594640299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A306436 n).toNat + ((n : ℤ) - A306436 n)

end

end A222230.P18115022020594640299

/-!
# A222231: In the number n, replace all (decimal) digits '2' with '7' and vice versa.

The programs for A222231, there is no canonical definition to state claims against.
-/

/-! ## A222231.P13261484525389875690

`A035043(A222224(A035043(n)))`
-/

namespace A222231.P13261484525389875690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222224 (A035043 n).toNat).toNat

end

end A222231.P13261484525389875690

/-! ## A222231.P6786008560256937145

`A035044(A222237(A035044(n)))`
-/

namespace A222231.P6786008560256937145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222237 (A035044 n).toNat).toNat

end

end A222231.P6786008560256937145

/-! ## A222231.P1461548889378075228

`A222228(A222242(A222228(n)))`
-/

namespace A222231.P1461548889378075228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222242 (A222228 n).toNat).toNat

end

end A222231.P1461548889378075228

/-! ## A222231.P14503733854227693332

`A222229(A222246(A222229(n)))`
-/

namespace A222231.P14503733854227693332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A222246 (A222229 n).toNat).toNat

end

end A222231.P14503733854227693332

/-! ## A222231.P3540674568698418803

`A222230(A222249(A222230(n)))`
-/

namespace A222231.P3540674568698418803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222249 (A222230 n).toNat).toNat

end

end A222231.P3540674568698418803

/-! ## A222231.P11978479644360440110

`A222232(A222252(A222232(n)))`
-/

namespace A222231.P11978479644360440110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222252 (A222232 n).toNat).toNat

end

end A222231.P11978479644360440110

/-! ## A222231.P16813872768978799386

`A222233(A222253(A222233(n)))`
-/

namespace A222231.P16813872768978799386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A222253 (A222233 n).toNat).toNat

end

end A222231.P16813872768978799386

/-! ## A222231.P1524089889206286797

`A222238(A048379(n))+n-A048379(n)`
-/

namespace A222231.P1524089889206286797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222231.P1524089889206286797

/-! ## A222231.P3842533552333263265

`A222253(A035043(A222226(A035043(A222253(n)))))`
-/

namespace A222231.P3842533552333263265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A035043 (A222226 (A035043 (A222253 n).toNat).toNat).toNat).toNat

end

end A222231.P3842533552333263265

/-!
# A222232: In the number n, replace all (decimal) digits '2' with '8' and vice versa.

The programs for A222232, there is no canonical definition to state claims against.
-/

/-! ## A222232.P7424271949969037423

`A035044(A222238(A035044(n)))`
-/

namespace A222232.P7424271949969037423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222238 (A035044 n).toNat).toNat

end

end A222232.P7424271949969037423

/-! ## A222232.P5610298900822874158

`A222230(A222250(A222230(n)))`
-/

namespace A222232.P5610298900822874158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222250 (A222230 n).toNat).toNat

end

end A222232.P5610298900822874158

/-! ## A222232.P560936442846909721

`A222231(A222252(A222231(n)))`
-/

namespace A222232.P560936442846909721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A222252 (A222231 n).toNat).toNat

end

end A222232.P560936442846909721

/-! ## A222232.P2238369499195076786

`A222233(A222254(A222233(n)))`
-/

namespace A222232.P2238369499195076786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A222254 (A222233 n).toNat).toNat

end

end A222232.P2238369499195076786

/-! ## A222232.P16845645246680434472

`A222224(A235049(n))+A136400(n)`
-/

namespace A222232.P16845645246680434472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A235049 n).toNat + A136400 n

end

end A222232.P16845645246680434472

/-! ## A222232.P913608607872637855

`A222239(A048379(n))+n-A048379(n)`
-/

namespace A222232.P913608607872637855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222232.P913608607872637855

/-! ## A222232.P12933132323212756501

`A222224(n-A136400(n))+A136400(n)`
-/

namespace A222232.P12933132323212756501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 ((n : ℤ) - A136400 n).toNat + A136400 n

end

end A222232.P12933132323212756501

/-! ## A222232.P9791733824428394980

`A035043(A222226(A222254(A222226(A035043(n)))))`
-/

namespace A222232.P9791733824428394980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222226 (A222254 (A222226 (A035043 n).toNat).toNat).toNat).toNat

end

end A222232.P9791733824428394980

/-! ## A222232.P13033248165866800206

`A222238(A222230(A222236(A222230(A222238(n)))))`
-/

namespace A222232.P13033248165866800206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222230 (A222236 (A222230 (A222238 n).toNat).toNat).toNat).toNat

end

end A222232.P13033248165866800206

/-!
# A222233: In the number n, replace all (decimal) digits '2' with '9' and vice versa.

The programs for A222233, there is no canonical definition to state claims against.
-/

/-! ## A222233.P15321629178037932328

`A035043(A222226(A035043(n)))`
-/

namespace A222233.P15321629178037932328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222226 (A035043 n).toNat).toNat

end

end A222233.P15321629178037932328

/-! ## A222233.P18356229920104776977

`A055120(A222225(A055120(n)))`
-/

namespace A222233.P18356229920104776977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222225 (A055120 n).toNat).toNat

end

end A222233.P18356229920104776977

/-! ## A222233.P13881082582939804976

`A222228(A222244(A222228(n)))`
-/

namespace A222233.P13881082582939804976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222244 (A222228 n).toNat).toNat

end

end A222233.P13881082582939804976

/-! ## A222233.P10527448018580829324

`A222229(A222248(A222229(n)))`
-/

namespace A222233.P10527448018580829324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A222248 (A222229 n).toNat).toNat

end

end A222233.P10527448018580829324

/-! ## A222233.P1590088195539308562

`A222230(A222251(A222230(n)))`
-/

namespace A222233.P1590088195539308562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222251 (A222230 n).toNat).toNat

end

end A222233.P1590088195539308562

/-! ## A222233.P1604407990833781721

`A222231(A222253(A222231(n)))`
-/

namespace A222233.P1604407990833781721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (A222253 (A222231 n).toNat).toNat

end

end A222233.P1604407990833781721

/-! ## A222233.P17065607541618640947

`A222232(A222254(A222232(n)))`
-/

namespace A222233.P17065607541618640947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222254 (A222232 n).toNat).toNat

end

end A222233.P17065607541618640947

/-! ## A222233.P17579130919192739644

`A222254(A222230(A222250(A222230(A222254(n)))))`
-/

namespace A222233.P17579130919192739644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222230 (A222250 (A222230 (A222254 n).toNat).toNat).toNat).toNat

end

end A222233.P17579130919192739644

/-!
# A222234: In the number n, replace all (decimal) digits '3' with '4' and vice versa.

The programs for A222234, there is no canonical definition to state claims against.
-/

/-! ## A222234.P370536816309292778

`A035044(A222228(A035044(n)))`
-/

namespace A222234.P370536816309292778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222228 (A035044 n).toNat).toNat

end

end A222234.P370536816309292778

/-! ## A222234.P14193733332782430579

`A222235(A222240(A222235(n)))`
-/

namespace A222234.P14193733332782430579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222240 (A222235 n).toNat).toNat

end

end A222234.P14193733332782430579

/-! ## A222234.P11620600377455197875

`A222236(A222241(A222236(n)))`
-/

namespace A222234.P11620600377455197875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A222241 (A222236 n).toNat).toNat

end

end A222234.P11620600377455197875

/-! ## A222234.P3422640790825697451

`A222238(A222243(A222238(n)))`
-/

namespace A222234.P3422640790825697451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222243 (A222238 n).toNat).toNat

end

end A222234.P3422640790825697451

/-! ## A222234.P1609465467445204002

`A222239(A222244(A222239(n)))`
-/

namespace A222234.P1609465467445204002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A222244 (A222239 n).toNat).toNat

end

end A222234.P1609465467445204002

/-! ## A222234.P17796138904413392657

`A222228(A222230(A222236(A222230(A222228(n)))))`
-/

namespace A222234.P17796138904413392657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222230 (A222236 (A222230 (A222228 n).toNat).toNat).toNat).toNat

end

end A222234.P17796138904413392657

/-!
# A222235: In the number n, replace all (decimal) digits '3' with '5' and vice versa.

The programs for A222235, there is no canonical definition to state claims against.
-/

/-! ## A222235.P4971904978976980969

`A055120(A222246(A055120(n)))`
-/

namespace A222235.P4971904978976980969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222246 (A055120 n).toNat).toNat

end

end A222235.P4971904978976980969

/-! ## A222235.P15011589407584625812

`A222220(A222222(A222220(n)))`
-/

namespace A222235.P15011589407584625812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222222 (A222220 n).toNat).toNat

end

end A222235.P15011589407584625812

/-! ## A222235.P13946952170997686599

`A222234(A222240(A222234(n)))`
-/

namespace A222235.P13946952170997686599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222240 (A222234 n).toNat).toNat

end

end A222235.P13946952170997686599

/-! ## A222235.P4590394139188222069

`A222238(A222247(A222238(n)))`
-/

namespace A222235.P4590394139188222069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222247 (A222238 n).toNat).toNat

end

end A222235.P4590394139188222069

/-! ## A222235.P4479994193094059282

`A222228(A235049(n))+A136400(n)`
-/

namespace A222235.P4479994193094059282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A235049 n).toNat + A136400 n

end

end A222235.P4479994193094059282

/-! ## A222235.P7889426962141632390

`A222228(n-A136400(n))+A136400(n)`
-/

namespace A222235.P7889426962141632390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 ((n : ℤ) - A136400 n).toNat + A136400 n

end

end A222235.P7889426962141632390

/-! ## A222235.P15698281394374239299

`A035044(A222232(A222247(A222232(A035044(n)))))`
-/

namespace A222235.P15698281394374239299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222232 (A222247 (A222232 (A035044 n).toNat).toNat).toNat).toNat

end

end A222235.P15698281394374239299

/-! ## A222235.P9252466977463935452

`A222245(A222239(A222251(A222245(A222239(n)))))`
-/

namespace A222235.P9252466977463935452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222239 (A222251 (A222245 (A222239 n).toNat).toNat).toNat).toNat

end

end A222235.P9252466977463935452

/-!
# A222236: In the number n, replace all (decimal) digits '3' with '6' and vice versa.

The programs for A222236, there is no canonical definition to state claims against.
-/

/-! ## A222236.P13230822028175307709

`A035044(A222230(A035044(n)))`
-/

namespace A222236.P13230822028175307709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222230 (A035044 n).toNat).toNat

end

end A222236.P13230822028175307709

/-! ## A222236.P3773642340255638591

`A222234(A222241(A222234(n)))`
-/

namespace A222236.P3773642340255638591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222241 (A222234 n).toNat).toNat

end

end A222236.P3773642340255638591

/-! ## A222236.P10652493079807836190

`A222237(A222249(A222237(n)))`
-/

namespace A222236.P10652493079807836190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222249 (A222237 n).toNat).toNat

end

end A222236.P10652493079807836190

/-! ## A222236.P760291695924012296

`A222239(A222251(A222239(n)))`
-/

namespace A222236.P760291695924012296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A222251 (A222239 n).toNat).toNat

end

end A222236.P760291695924012296

/-! ## A222236.P1506796460679697015

`A222229(A235049(n))+A136400(n)`
-/

namespace A222236.P1506796460679697015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A235049 n).toNat + A136400 n

end

end A222236.P1506796460679697015

/-! ## A222236.P13785283003982944619

`A222229(n-A136400(n))+A136400(n)`
-/

namespace A222236.P13785283003982944619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 ((n : ℤ) - A136400 n).toNat + A136400 n

end

end A222236.P13785283003982944619

/-! ## A222236.P4277038937119418382

`A222230(A222232(A222238(A222232(A222230(n)))))`
-/

namespace A222236.P4277038937119418382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222232 (A222238 (A222232 (A222230 n).toNat).toNat).toNat).toNat

end

end A222236.P4277038937119418382

/-!
# A222237: In the number n, replace all (decimal) digits '3' with '7' and vice versa.

The programs for A222237, there is no canonical definition to state claims against.
-/

/-! ## A222237.P7796062374930406110

`A222234(A222242(A222234(n)))`
-/

namespace A222237.P7796062374930406110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222242 (A222234 n).toNat).toNat

end

end A222237.P7796062374930406110

/-! ## A222237.P9044681091710716537

`A222235(A222246(A222235(n)))`
-/

namespace A222237.P9044681091710716537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222246 (A222235 n).toNat).toNat

end

end A222237.P9044681091710716537

/-! ## A222237.P736626626699828003

`A222236(A222249(A222236(n)))`
-/

namespace A222237.P736626626699828003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A222249 (A222236 n).toNat).toNat

end

end A222237.P736626626699828003

/-! ## A222237.P16189319602143043064

`A222238(A222252(A222238(n)))`
-/

namespace A222237.P16189319602143043064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222252 (A222238 n).toNat).toNat

end

end A222237.P16189319602143043064

/-! ## A222237.P15195690818883509457

`A222239(A222253(A222239(n)))`
-/

namespace A222237.P15195690818883509457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A222253 (A222239 n).toNat).toNat

end

end A222237.P15195690818883509457

/-! ## A222237.P17737709836581421722

`A222243(A048379(n))+n-A048379(n)`
-/

namespace A222237.P17737709836581421722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222237.P17737709836581421722

/-! ## A222237.P4742603757597743016

`A222230(A222230(n)-A103181(n))+A103181(n)`
-/

namespace A222237.P4742603757597743016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222230 n - A103181 n).toNat + A103181 n

end

end A222237.P4742603757597743016

/-! ## A222237.P14698226243307441749

`A035044(A222232(A222252(A222232(A035044(n)))))`
-/

namespace A222237.P14698226243307441749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222232 (A222252 (A222232 (A035044 n).toNat).toNat).toNat).toNat

end

end A222237.P14698226243307441749

/-! ## A222237.P17928814322301251192

`A222224(A222221(A222234(A222221(A222224(n)))))`
-/

namespace A222237.P17928814322301251192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222221 (A222234 (A222221 (A222224 n).toNat).toNat).toNat).toNat

end

end A222237.P17928814322301251192

/-!
# A222238: In the number n, replace all (decimal) digits '3' with '8' and vice versa.

The programs for A222238, there is no canonical definition to state claims against.
-/

/-! ## A222238.P15937130783433378500

`A035044(A222232(A035044(n)))`
-/

namespace A222238.P15937130783433378500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222232 (A035044 n).toNat).toNat

end

end A222238.P15937130783433378500

/-! ## A222238.P28522010375456096

`A222220(A222225(A222220(n)))`
-/

namespace A222238.P28522010375456096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222225 (A222220 n).toNat).toNat

end

end A222238.P28522010375456096

/-! ## A222238.P18407291187862023724

`A222235(A222247(A222235(n)))`
-/

namespace A222238.P18407291187862023724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222247 (A222235 n).toNat).toNat

end

end A222238.P18407291187862023724

/-! ## A222238.P16335312601792727808

`A222237(A222252(A222237(n)))`
-/

namespace A222238.P16335312601792727808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222252 (A222237 n).toNat).toNat

end

end A222238.P16335312601792727808

/-! ## A222238.P4374558685370729188

`A222239(A222254(A222239(n)))`
-/

namespace A222238.P4374558685370729188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A222254 (A222239 n).toNat).toNat

end

end A222238.P4374558685370729188

/-! ## A222238.P14778731135327701769

`A222244(A048379(n))+n-A048379(n)`
-/

namespace A222238.P14778731135327701769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222238.P14778731135327701769

/-!
# A222239: In the number n, replace all (decimal) digits '3' with '9' and vice versa.

The programs for A222239, there is no canonical definition to state claims against.
-/

/-! ## A222239.P3462806758509736147

`A035044(A222233(A035044(n)))`
-/

namespace A222239.P3462806758509736147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A222233 (A035044 n).toNat).toNat

end

end A222239.P3462806758509736147

/-! ## A222239.P1924064499781025408

`A222220(A222226(A222220(n)))`
-/

namespace A222239.P1924064499781025408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A222226 (A222220 n).toNat).toNat

end

end A222239.P1924064499781025408

/-! ## A222239.P5107093759197001346

`A222234(A222244(A222234(n)))`
-/

namespace A222239.P5107093759197001346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222244 (A222234 n).toNat).toNat

end

end A222239.P5107093759197001346

/-! ## A222239.P2626165743488549611

`A222235(A222248(A222235(n)))`
-/

namespace A222239.P2626165743488549611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222248 (A222235 n).toNat).toNat

end

end A222239.P2626165743488549611

/-! ## A222239.P6551669597410720519

`A222236(A222251(A222236(n)))`
-/

namespace A222239.P6551669597410720519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A222251 (A222236 n).toNat).toNat

end

end A222239.P6551669597410720519

/-! ## A222239.P15759203200969324175

`A222238(A222254(A222238(n)))`
-/

namespace A222239.P15759203200969324175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222254 (A222238 n).toNat).toNat

end

end A222239.P15759203200969324175

/-! ## A222239.P15835372505414966314

`A222232(A306436(n))+n-A306436(n)`
-/

namespace A222239.P15835372505414966314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A306436 n).toNat + ((n : ℤ) - A306436 n)

end

end A222239.P15835372505414966314

/-! ## A222239.P11143423672266840734

`A222226(A222223(A222236(A222223(A222226(n)))))`
-/

namespace A222239.P11143423672266840734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222223 (A222236 (A222223 (A222226 n).toNat).toNat).toNat).toNat

end

end A222239.P11143423672266840734

/-!
# A222240: In the number n, replace all (decimal) digits '4' with '5' and vice versa.

The programs for A222240, there is no canonical definition to state claims against.
-/

/-! ## A222240.P17998589814988788241

`A222221(A222222(A222221(n)))`
-/

namespace A222240.P17998589814988788241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222222 (A222221 n).toNat).toNat

end

end A222240.P17998589814988788241

/-! ## A222240.P1956859589329721260

`A222234(A222235(A222234(n)))`
-/

namespace A222240.P1956859589329721260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222235 (A222234 n).toNat).toNat

end

end A222240.P1956859589329721260

/-! ## A222240.P16346061541643219025

`A222241(A222245(A222241(n)))`
-/

namespace A222240.P16346061541643219025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A222245 (A222241 n).toNat).toNat

end

end A222240.P16346061541643219025

/-! ## A222240.P4350521173404263413

`A222242(A222246(A222242(n)))`
-/

namespace A222240.P4350521173404263413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222246 (A222242 n).toNat).toNat

end

end A222240.P4350521173404263413

/-! ## A222240.P12241461841401110018

`A222244(A222248(A222244(n)))`
-/

namespace A222240.P12241461841401110018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A222248 (A222244 n).toNat).toNat

end

end A222240.P12241461841401110018

/-! ## A222240.P13471456578167329382

`A222245(A048379(n))+n-A048379(n)`
-/

namespace A222240.P13471456578167329382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222240.P13471456578167329382

/-! ## A222240.P16651900875919671318

`A222234(A235049(n))+n-A235049(n)`
-/

namespace A222240.P16651900875919671318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A235049 n).toNat + ((n : ℤ) - A235049 n)

end

end A222240.P16651900875919671318

/-!
# A222241: In the number n, replace all (decimal) digits '4' with '6' and vice versa.

The programs for A222241, there is no canonical definition to state claims against.
-/

/-! ## A222241.P16309363489443094866

`A222221(A222223(A222221(n)))`
-/

namespace A222241.P16309363489443094866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222223 (A222221 n).toNat).toNat

end

end A222241.P16309363489443094866

/-! ## A222241.P11106875350751120375

`A222228(A222230(A222228(n)))`
-/

namespace A222241.P11106875350751120375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222230 (A222228 n).toNat).toNat

end

end A222241.P11106875350751120375

/-! ## A222241.P8634932280156299690

`A222234(A222236(A222234(n)))`
-/

namespace A222241.P8634932280156299690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222236 (A222234 n).toNat).toNat

end

end A222241.P8634932280156299690

/-! ## A222241.P4086970559372018932

`A222240(A222245(A222240(n)))`
-/

namespace A222241.P4086970559372018932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A222245 (A222240 n).toNat).toNat

end

end A222241.P4086970559372018932

/-! ## A222241.P17210920433638883618

`A222242(A222249(A222242(n)))`
-/

namespace A222241.P17210920433638883618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222249 (A222242 n).toNat).toNat

end

end A222241.P17210920433638883618

/-! ## A222241.P10542813566119701177

`A222244(A222251(A222244(n)))`
-/

namespace A222241.P10542813566119701177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A222251 (A222244 n).toNat).toNat

end

end A222241.P10542813566119701177

/-! ## A222241.P8529326535873784486

`A222246(A048379(n))+n-A048379(n)`
-/

namespace A222241.P8529326535873784486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222241.P8529326535873784486

/-!
# A222242: In the number n, replace all (decimal) digits '4' with '7' and vice versa.

The programs for A222242, there is no canonical definition to state claims against.
-/

/-! ## A222242.P2734082975108939419

`A222221(A222224(A222221(n)))`
-/

namespace A222242.P2734082975108939419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A222224 (A222221 n).toNat).toNat

end

end A222242.P2734082975108939419

/-! ## A222242.P15498434918604690381

`A222234(A222237(A222234(n)))`
-/

namespace A222242.P15498434918604690381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222237 (A222234 n).toNat).toNat

end

end A222242.P15498434918604690381

/-! ## A222242.P15660089681732291529

`A222240(A222246(A222240(n)))`
-/

namespace A222242.P15660089681732291529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A222246 (A222240 n).toNat).toNat

end

end A222242.P15660089681732291529

/-! ## A222242.P18415843216172469691

`A222241(A222249(A222241(n)))`
-/

namespace A222242.P18415843216172469691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A222249 (A222241 n).toNat).toNat

end

end A222242.P18415843216172469691

/-! ## A222242.P7701852131256162668

`A222243(A222252(A222243(n)))`
-/

namespace A222242.P7701852131256162668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A222252 (A222243 n).toNat).toNat

end

end A222242.P7701852131256162668

/-! ## A222242.P3232282514035211259

`A222247(A048379(n))+n-A048379(n)`
-/

namespace A222242.P3232282514035211259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222242.P3232282514035211259

/-!
# A222243: In the number n, replace all (decimal) digits '4' with '8' and vice versa.

The programs for A222243, there is no canonical definition to state claims against.
-/

/-! ## A222243.P10095993583076235483

`A055120(A222230(A055120(n)))`
-/

namespace A222243.P10095993583076235483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222230 (A055120 n).toNat).toNat

end

end A222243.P10095993583076235483

/-! ## A222243.P12589239309585200006

`A222228(A222232(A222228(n)))`
-/

namespace A222243.P12589239309585200006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222232 (A222228 n).toNat).toNat

end

end A222243.P12589239309585200006

/-! ## A222243.P4860859815375719305

`A222234(A222238(A222234(n)))`
-/

namespace A222243.P4860859815375719305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222238 (A222234 n).toNat).toNat

end

end A222243.P4860859815375719305

/-! ## A222243.P17388402306515572605

`A222242(A222252(A222242(n)))`
-/

namespace A222243.P17388402306515572605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222252 (A222242 n).toNat).toNat

end

end A222243.P17388402306515572605

/-! ## A222243.P4610378719637641322

`A222244(A222254(A222244(n)))`
-/

namespace A222243.P4610378719637641322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A222254 (A222244 n).toNat).toNat

end

end A222243.P4610378719637641322

/-! ## A222243.P12549734459234725761

`A222248(A048379(n))+n-A048379(n)`
-/

namespace A222243.P12549734459234725761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222243.P12549734459234725761

/-! ## A222243.P4862299001232876020

`A222232(A035044(A222234(A035044(A222232(n)))))`
-/

namespace A222243.P4862299001232876020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A035044 (A222234 (A035044 (A222232 n).toNat).toNat).toNat).toNat

end

end A222243.P4862299001232876020

/-!
# A222244: In the number n, replace all (decimal) digits '4' with '9' and vice versa.

The programs for A222244, there is no canonical definition to state claims against.
-/

/-! ## A222244.P5843324059642516815

`A222228(A222233(A222228(n)))`
-/

namespace A222244.P5843324059642516815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222233 (A222228 n).toNat).toNat

end

end A222244.P5843324059642516815

/-! ## A222244.P7258018387990932497

`A222241(A222251(A222241(n)))`
-/

namespace A222244.P7258018387990932497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A222251 (A222241 n).toNat).toNat

end

end A222244.P7258018387990932497

/-! ## A222244.P7553032726282639307

`A222242(A222253(A222242(n)))`
-/

namespace A222244.P7553032726282639307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222253 (A222242 n).toNat).toNat

end

end A222244.P7553032726282639307

/-! ## A222244.P17471565131948485043

`A222243(A222254(A222243(n)))`
-/

namespace A222244.P17471565131948485043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A222254 (A222243 n).toNat).toNat

end

end A222244.P17471565131948485043

/-! ## A222244.P6436816087289786976

`A222238(A235049(n))+A136400(n)`
-/

namespace A222244.P6436816087289786976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A235049 n).toNat + A136400 n

end

end A222244.P6436816087289786976

/-! ## A222244.P6666477518511861019

`A222238(n-A136400(n))+A136400(n)`
-/

namespace A222244.P6666477518511861019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 ((n : ℤ) - A136400 n).toNat + A136400 n

end

end A222244.P6666477518511861019

/-!
# A222245: In the number n, replace all (decimal) digits '5' with '6' and vice versa.

The programs for A222245, there is no canonical definition to state claims against.
-/

/-! ## A222245.P10171043932289643030

`A222235(A222236(A222235(n)))`
-/

namespace A222245.P10171043932289643030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222236 (A222235 n).toNat).toNat

end

end A222245.P10171043932289643030

/-! ## A222245.P16757663657849838633

`A222246(A222249(A222246(n)))`
-/

namespace A222245.P16757663657849838633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222249 (A222246 n).toNat).toNat

end

end A222245.P16757663657849838633

/-! ## A222245.P6928859483854884884

`A222247(A222250(A222247(n)))`
-/

namespace A222245.P6928859483854884884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A222250 (A222247 n).toNat).toNat

end

end A222245.P6928859483854884884

/-! ## A222245.P4327143311957722078

`A222240(A235049(n))+A136400(n)`
-/

namespace A222245.P4327143311957722078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A235049 n).toNat + A136400 n

end

end A222245.P4327143311957722078

/-! ## A222245.P7694902369376630668

`A222249(A048379(n))+n-A048379(n)`
-/

namespace A222245.P7694902369376630668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222245.P7694902369376630668

/-! ## A222245.P18253640845937998316

`A222240(n-A136400(n))+A136400(n)`
-/

namespace A222245.P18253640845937998316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 ((n : ℤ) - A136400 n).toNat + A136400 n

end

end A222245.P18253640845937998316

/-! ## A222245.P15695364554131077906

`A222240(A235049(n))+A064770(A064770(n))`
-/

namespace A222245.P15695364554131077906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A235049 n).toNat + A064770 (A064770 n).toNat

end

end A222245.P15695364554131077906

/-!
# A222246: In the number n, replace all (decimal) digits '5' with '7' and vice versa.

The programs for A222246, there is no canonical definition to state claims against.
-/

/-! ## A222246.P15495981625367348111

`A055120(A222235(A055120(n)))`
-/

namespace A222246.P15495981625367348111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222235 (A055120 n).toNat).toNat

end

end A222246.P15495981625367348111

/-! ## A222246.P17805590973547032013

`A222245(A222249(A222245(n)))`
-/

namespace A222246.P17805590973547032013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222249 (A222245 n).toNat).toNat

end

end A222246.P17805590973547032013

/-! ## A222246.P7159180905452147200

`A222247(A222252(A222247(n)))`
-/

namespace A222246.P7159180905452147200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A222252 (A222247 n).toNat).toNat

end

end A222246.P7159180905452147200

/-! ## A222246.P16393347244586907988

`A222248(A222253(A222248(n)))`
-/

namespace A222246.P16393347244586907988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A222253 (A222248 n).toNat).toNat

end

end A222246.P16393347244586907988

/-! ## A222246.P94025669991191522

`A222241(A235049(n))+A136400(n)`
-/

namespace A222246.P94025669991191522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A235049 n).toNat + A136400 n

end

end A222246.P94025669991191522

/-! ## A222246.P15722642304023093178

`A222250(A048379(n))+n-A048379(n)`
-/

namespace A222246.P15722642304023093178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222246.P15722642304023093178

/-! ## A222246.P2319649034792121318

`A222241(n-A136400(n))+A136400(n)`
-/

namespace A222246.P2319649034792121318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 ((n : ℤ) - A136400 n).toNat + A136400 n

end

end A222246.P2319649034792121318

/-! ## A222246.P15512884194958303264

`A222241(A306436(n))+n-A306436(n)`
-/

namespace A222246.P15512884194958303264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A306436 n).toNat + ((n : ℤ) - A306436 n)

end

end A222246.P15512884194958303264

/-! ## A222246.P18394007421800769625

`A222241(A235049(n))+A064770(A064770(n))`
-/

namespace A222246.P18394007421800769625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A235049 n).toNat + A064770 (A064770 n).toNat

end

end A222246.P18394007421800769625

/-! ## A222246.P12559680213857718656

`∑[Δ[A222250(n)]%A132327(n)]`
-/

namespace A222246.P12559680213857718656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A132327 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222246.P12559680213857718656

/-!
# A222247: In the number n, replace all (decimal) digits '5' with '8' and vice versa.

The programs for A222247, there is no canonical definition to state claims against.
-/

/-! ## A222247.P1024755788751491905

`A055120(A222229(A055120(n)))`
-/

namespace A222247.P1024755788751491905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222229 (A055120 n).toNat).toNat

end

end A222247.P1024755788751491905

/-! ## A222247.P5818798116038707128

`A222235(A222238(A222235(n)))`
-/

namespace A222247.P5818798116038707128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222238 (A222235 n).toNat).toNat

end

end A222247.P5818798116038707128

/-! ## A222247.P13921080235714169182

`A222245(A222250(A222245(n)))`
-/

namespace A222247.P13921080235714169182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222250 (A222245 n).toNat).toNat

end

end A222247.P13921080235714169182

/-! ## A222247.P17541402432444975575

`A222246(A222252(A222246(n)))`
-/

namespace A222247.P17541402432444975575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222252 (A222246 n).toNat).toNat

end

end A222247.P17541402432444975575

/-! ## A222247.P4438687090142323674

`A222248(A222254(A222248(n)))`
-/

namespace A222247.P4438687090142323674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A222254 (A222248 n).toNat).toNat

end

end A222247.P4438687090142323674

/-! ## A222247.P14925448301407757008

`A222251(A048379(n))+n-A048379(n)`
-/

namespace A222247.P14925448301407757008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222247.P14925448301407757008

/-! ## A222247.P5253445537164634271

`A222232(A222230(A222245(A222230(A222232(n)))))`
-/

namespace A222247.P5253445537164634271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222230 (A222245 (A222230 (A222232 n).toNat).toNat).toNat).toNat

end

end A222247.P5253445537164634271

/-! ## A222247.P6210000585544922827

`A222254(A222245(A222251(A222245(A222254(n)))))`
-/

namespace A222247.P6210000585544922827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222245 (A222251 (A222245 (A222254 n).toNat).toNat).toNat).toNat

end

end A222247.P6210000585544922827

/-!
# A222248: In the number n, replace all (decimal) digits '5' with '9' and vice versa.

The programs for A222248, there is no canonical definition to state claims against.
-/

/-! ## A222248.P18178742624884206127

`A222229(A222233(A222229(n)))`
-/

namespace A222248.P18178742624884206127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A222233 (A222229 n).toNat).toNat

end

end A222248.P18178742624884206127

/-! ## A222248.P6527924227633979558

`A222235(A222239(A222235(n)))`
-/

namespace A222248.P6527924227633979558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222239 (A222235 n).toNat).toNat

end

end A222248.P6527924227633979558

/-! ## A222248.P13951763296759065663

`A222245(A222251(A222245(n)))`
-/

namespace A222248.P13951763296759065663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222251 (A222245 n).toNat).toNat

end

end A222248.P13951763296759065663

/-! ## A222248.P7494002898613735524

`A222246(A222253(A222246(n)))`
-/

namespace A222248.P7494002898613735524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222253 (A222246 n).toNat).toNat

end

end A222248.P7494002898613735524

/-! ## A222248.P12227537067439060746

`A222247(A222254(A222247(n)))`
-/

namespace A222248.P12227537067439060746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A222254 (A222247 n).toNat).toNat

end

end A222248.P12227537067439060746

/-! ## A222248.P11667691737547694858

`A222254(A222245(A222250(A222245(A222254(n)))))`
-/

namespace A222248.P11667691737547694858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222245 (A222250 (A222245 (A222254 n).toNat).toNat).toNat).toNat

end

end A222248.P11667691737547694858

/-!
# A222249: In the number n, replace all (decimal) digits '6' with '7' and vice versa.

The programs for A222249, there is no canonical definition to state claims against.
-/

/-! ## A222249.P15615264527167641022

`A222245(A222246(A222245(n)))`
-/

namespace A222249.P15615264527167641022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222246 (A222245 n).toNat).toNat

end

end A222249.P15615264527167641022

/-! ## A222249.P1020171870144830245

`A222245(A235049(n))+A136400(n)`
-/

namespace A222249.P1020171870144830245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A235049 n).toNat + A136400 n

end

end A222249.P1020171870144830245

/-! ## A222249.P6240538129046274109

`A222223(A222226(A222253(A222226(A222223(n)))))`
-/

namespace A222249.P6240538129046274109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222226 (A222253 (A222226 (A222223 n).toNat).toNat).toNat).toNat

end

end A222249.P6240538129046274109

/-! ## A222249.P18232642535372851741

`A222252(A222251(A222254(A222252(A222251(n)))))`
-/

namespace A222249.P18232642535372851741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222251 (A222254 (A222252 (A222251 n).toNat).toNat).toNat).toNat

end

end A222249.P18232642535372851741

/-! ## A222249.P2667231984825377570

`A222254(n+2)-A000005(A154553(n+1))`
-/

namespace A222249.P2667231984825377570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (n + 2) - A000005 (A154553 (n + 1)).toNat

end

end A222249.P2667231984825377570

/-! ## A222249.P3045161545486932946

`A222254(n+2)-A067824(A007641(n+1))`
-/

namespace A222249.P3045161545486932946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (n + 2) - A067824 (A007641 (n + 1)).toNat

end

end A222249.P3045161545486932946

/-!
# A222250: In the number n, replace all (decimal) digits '6' with '8' and vice versa.

The programs for A222250, there is no canonical definition to state claims against.
-/

/-! ## A222250.P6485435167506605410

`A222230(A222232(A222230(n)))`
-/

namespace A222250.P6485435167506605410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222232 (A222230 n).toNat).toNat

end

end A222250.P6485435167506605410

/-! ## A222250.P13211110290143677865

`A222236(A222238(A222236(n)))`
-/

namespace A222250.P13211110290143677865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A222238 (A222236 n).toNat).toNat

end

end A222250.P13211110290143677865

/-! ## A222250.P12933573423334138835

`A222245(A222247(A222245(n)))`
-/

namespace A222250.P12933573423334138835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222247 (A222245 n).toNat).toNat

end

end A222250.P12933573423334138835

/-! ## A222250.P107817949442086702

`A222251(A222254(A222251(n)))`
-/

namespace A222250.P107817949442086702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222254 (A222251 n).toNat).toNat

end

end A222250.P107817949442086702

/-! ## A222250.P6888014330378953741

`A222246(A235049(n))+A136400(n)`
-/

namespace A222250.P6888014330378953741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A235049 n).toNat + A136400 n

end

end A222250.P6888014330378953741

/-! ## A222250.P17409121404759596940

`A222253(A048379(n))+n-A048379(n)`
-/

namespace A222250.P17409121404759596940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222250.P17409121404759596940

/-! ## A222250.P7657618023626115968

`A222246(n-A136400(n))+A136400(n)`
-/

namespace A222250.P7657618023626115968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 ((n : ℤ) - A136400 n).toNat + A136400 n

end

end A222250.P7657618023626115968

/-! ## A222250.P7959267565774680043

`A222249(n)+A222249(A222252(n))-n`
-/

namespace A222250.P7959267565774680043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n + (A222249 (A222252 n).toNat - (n : ℤ))

end

end A222250.P7959267565774680043

/-! ## A222250.P5782679315265618552

`A222246(A235049(n))+A064770(A064770(n))`
-/

namespace A222250.P5782679315265618552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A235049 n).toNat + A064770 (A064770 n).toNat

end

end A222250.P5782679315265618552

/-! ## A222250.P7057512743176934836

`A222249(A222253(A222254(A222253(A222249(n)))))`
-/

namespace A222250.P7057512743176934836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222253 (A222254 (A222253 (A222249 n).toNat).toNat).toNat).toNat

end

end A222250.P7057512743176934836

/-!
# A222251: In the number n, replace all (decimal) digits '6' with '9' and vice versa.

The programs for A222251, there is no canonical definition to state claims against.
-/

/-! ## A222251.P4174436619845405628

`A222223(A222226(A222223(n)))`
-/

namespace A222251.P4174436619845405628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222226 (A222223 n).toNat).toNat

end

end A222251.P4174436619845405628

/-! ## A222251.P10030198632980826922

`A222230(A222233(A222230(n)))`
-/

namespace A222251.P10030198632980826922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222233 (A222230 n).toNat).toNat

end

end A222251.P10030198632980826922

/-! ## A222251.P8204956075113306531

`A222236(A222239(A222236(n)))`
-/

namespace A222251.P8204956075113306531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A222239 (A222236 n).toNat).toNat

end

end A222251.P8204956075113306531

/-! ## A222251.P11365368450048616049

`A222245(A222248(A222245(n)))`
-/

namespace A222251.P11365368450048616049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222248 (A222245 n).toNat).toNat

end

end A222251.P11365368450048616049

/-! ## A222251.P9911416116008377270

`A222249(A222253(A222249(n)))`
-/

namespace A222251.P9911416116008377270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222253 (A222249 n).toNat).toNat

end

end A222251.P9911416116008377270

/-! ## A222251.P18416327730299670899

`A222250(A222254(A222250(n)))`
-/

namespace A222251.P18416327730299670899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222254 (A222250 n).toNat).toNat

end

end A222251.P18416327730299670899

/-! ## A222251.P3343720965010859666

`A222247(A235049(n))+A136400(n)`
-/

namespace A222251.P3343720965010859666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A235049 n).toNat + A136400 n

end

end A222251.P3343720965010859666

/-! ## A222251.P12705411943497045360

`A055120(n)+n-A222221(A055120(n))`
-/

namespace A222251.P12705411943497045360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 n + ((n : ℤ) - A222221 (A055120 n).toNat)

end

end A222251.P12705411943497045360

/-! ## A222251.P4026768498444603658

`A222247(n-A136400(n))+A136400(n)`
-/

namespace A222251.P4026768498444603658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 ((n : ℤ) - A136400 n).toNat + A136400 n

end

end A222251.P4026768498444603658

/-! ## A222251.P14800659696751535518

`A061601(A222212(A061601(n)))%A223885(n+1)`
-/

namespace A222251.P14800659696751535518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061601 (A222212 (A061601 n).toNat).toNat) (A223885 (n + 1))

end

end A222251.P14800659696751535518

/-!
# A222252: In the number n, replace all (decimal) digits '7' with '8' and vice versa.

The programs for A222252, there is no canonical definition to state claims against.
-/

/-! ## A222252.P351600143466166848

`A222253(A222254(A222253(n)))`
-/

namespace A222252.P351600143466166848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222254 (A222253 n).toNat).toNat

end

end A222252.P351600143466166848

/-! ## A222252.P5007530338083755033

`A222249(A235049(n))+A136400(n)`
-/

namespace A222252.P5007530338083755033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A235049 n).toNat + A136400 n

end

end A222252.P5007530338083755033

/-! ## A222252.P17908761253203310839

`A061601(n)+n-A035043(A061601(n))`
-/

namespace A222252.P17908761253203310839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n + ((n : ℤ) - A035043 (A061601 n).toNat)

end

end A222252.P17908761253203310839

/-! ## A222252.P10372715288696948827

`A222254(A048379(n))+n-A048379(n)`
-/

namespace A222252.P10372715288696948827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A048379 n).toNat + ((n : ℤ) - A048379 n)

end

end A222252.P10372715288696948827

/-! ## A222252.P5189946719595331738

`A222249(n-A136400(n))+A136400(n)`
-/

namespace A222252.P5189946719595331738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 ((n : ℤ) - A136400 n).toNat + A136400 n

end

end A222252.P5189946719595331738

/-! ## A222252.P12087503849728743130

`A222249(A222250(n)+n-A222249(n))`
-/

namespace A222252.P12087503849728743130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222250 n + ((n : ℤ) - A222249 n)).toNat

end

end A222252.P12087503849728743130

/-! ## A222252.P7211463441033338876

`A222249(n-(A222249(n)-A222250(n)))`
-/

namespace A222252.P7211463441033338876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 ((n : ℤ) - (A222249 n - A222250 n)).toNat

end

end A222252.P7211463441033338876

/-! ## A222252.P7475179127979279873

`A222249(A235049(n))+A064770(A064770(n))`
-/

namespace A222252.P7475179127979279873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A235049 n).toNat + A064770 (A064770 n).toNat

end

end A222252.P7475179127979279873

/-!
# A222253: In the number n, replace all (decimal) digits '7' with '9' and vice versa.

The programs for A222253, there is no canonical definition to state claims against.
-/

/-! ## A222253.P16168067649197438420

`A222246(A222248(A222246(n)))`
-/

namespace A222253.P16168067649197438420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222248 (A222246 n).toNat).toNat

end

end A222253.P16168067649197438420

/-! ## A222253.P12929685305170825309

`A222252(A222254(A222252(n)))`
-/

namespace A222253.P12929685305170825309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222254 (A222252 n).toNat).toNat

end

end A222253.P12929685305170825309

/-! ## A222253.P13511061759454839261

`A222250(A235049(n))+A136400(n)`
-/

namespace A222253.P13511061759454839261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A235049 n).toNat + A136400 n

end

end A222253.P13511061759454839261

/-! ## A222253.P5999576437162044618

`A222250(n-A136400(n))+A136400(n)`
-/

namespace A222253.P5999576437162044618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 ((n : ℤ) - A136400 n).toNat + A136400 n

end

end A222253.P5999576437162044618

/-! ## A222253.P944863944203750148

`A222250(A235049(n))+A064770(A064770(n))`
-/

namespace A222253.P944863944203750148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A235049 n).toNat + A064770 (A064770 n).toNat

end

end A222253.P944863944203750148

/-! ## A222253.P8868418116338213628

`A222250(A222250(n)-A103181(n))+A103181(n)`
-/

namespace A222253.P8868418116338213628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222250 n - A103181 n).toNat + A103181 n

end

end A222253.P8868418116338213628

/-! ## A222253.P5650582811137067988

`A222250(-(A136400(n)+A001489(n)))+A136400(n)`
-/

namespace A222253.P5650582811137067988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (-(A136400 n + A001489 n)).toNat + A136400 n

end

end A222253.P5650582811137067988

/-!
# A222254: In the number n, replace all (decimal) digits '8' with '9' and vice versa.

The programs for A222254, there is no canonical definition to state claims against.
-/

/-! ## A222254.P16330467799398334236

`A222225(A222226(A222225(n)))`
-/

namespace A222254.P16330467799398334236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222226 (A222225 n).toNat).toNat

end

end A222254.P16330467799398334236

/-! ## A222254.P13843051345595958529

`A222252(A235049(n))+A136400(n)`
-/

namespace A222254.P13843051345595958529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A235049 n).toNat + A136400 n

end

end A222254.P13843051345595958529

/-! ## A222254.P16829348799851852784

`A222226(A222220(A222238(A222220(A222226(n)))))`
-/

namespace A222254.P16829348799851852784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222220 (A222238 (A222220 (A222226 n).toNat).toNat).toNat).toNat

end

end A222254.P16829348799851852784

/-! ## A222254.P2477327517454629062

`A222238(A222236(A222251(A222236(A222238(n)))))`
-/

namespace A222254.P2477327517454629062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222236 (A222251 (A222236 (A222238 n).toNat).toNat).toNat).toNat

end

end A222254.P2477327517454629062

/-! ## A222254.P5035309670672309782

`A092202(A057587(n+3))+n`
-/

namespace A222254.P5035309670672309782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092202 (A057587 (n + 3)).toNat + (n : ℤ)

end

end A222254.P5035309670672309782

/-!
# A222255: Primes of the form k!/k# + 1, where k# = A034386(k) (primorial), listed with repetition.

The programs for A222255, there is no canonical definition to state claims against.
-/

/-! ## A222255.P2806326647058841588

`A049614(A140294(n+1))+1`
-/

namespace A222255.P2806326647058841588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (A140294 (n + 1)).toNat + 1

end

end A222255.P2806326647058841588

/-! ## A222255.P9267594189623925012

`A049614(eq[A214131(n), A341978(n)])+1`
-/

namespace A222255.P9267594189623925012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341978 (n + 42)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A222255.P9267594189623925012

/-!
# A222256: Lexicographically earliest injective sequence of nonnegative integers such that the sum of 6 consecutive terms is always divisible by 6.

The programs for A222256, the canonical program `A222256.P15888438300221709581` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222256 has offset 0).

The definition of A222256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222256.P15888438300221709581

`(n-2)*(n%3)!+2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222256

/-- `(n-2)*(n%3)!+2` -/
def P15888438300221709581.Spec : Prop :=
  ∀ n, P15888438300221709581.a n = A222256 n

theorem P15888438300221709581.correct : P15888438300221709581.Spec := by
  intro n
  simp only [A222256]

end A222256

/-! ## A222256.P17518433566824946795

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=8`
-/

namespace A222256.P17518433566824946795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 8] fun n a =>
  2 * a (n - 3) - a (n - 6)

end

end A222256.P17518433566824946795

namespace A222256

/-- `2*a(n-3)-a(n-6)` -/
def P17518433566824946795.Spec : Prop :=
  ∀ n, P17518433566824946795.a n = A222256 n

end A222256

/-! ## A222256.P4842509745804290264

`A222257(n)-1`
-/

namespace A222256.P4842509745804290264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 n - 1

end

end A222256.P4842509745804290264

namespace A222256

/-- `A222257(n)-1` -/
def P4842509745804290264.Spec : Prop :=
  ∀ n, P4842509745804290264.a n = A222256 n

end A222256

/-! ## A222256.P1404385374973764367

`(n-2)*C(n, 2)%3+n`
-/

namespace A222256.P1404385374973764367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((Nat.choose n 2 % 3 : ℕ) : ℤ) + (n : ℤ)

end

end A222256.P1404385374973764367

namespace A222256

/-- `(n-2)*C(n, 2)%3+n` -/
def P1404385374973764367.Spec : Prop :=
  ∀ n, P1404385374973764367.a n = A222256 n

end A222256

/-! ## A222256.P6514962899928482590

`(n-2)*Δ[floor(n/3)]+n`
-/

namespace A222256.P6514962899928482590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A222256.P6514962899928482590

namespace A222256

/-- `(n-2)*Δ[floor(n/3)]+n` -/
def P6514962899928482590.Spec : Prop :=
  ∀ n, P6514962899928482590.a n = A222256 n

end A222256

/-! ## A222256.P16675303214130329175

`∑{d}[gcd(n+1, 2-n), n+1-#]`
-/

namespace A222256.P16675303214130329175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - (d : ℤ))

end

end A222256.P16675303214130329175

namespace A222256

/-- `∑{d}[gcd(n+1, 2-n), n+1-#]` -/
def P16675303214130329175.Spec : Prop :=
  ∀ n, P16675303214130329175.a n = A222256 n

end A222256

/-! ## A222256.P542639275126745346

`A144129(n)%A222257(n)`
-/

namespace A222256.P542639275126745346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144129 n) (A222257 n)

end

end A222256.P542639275126745346

namespace A222256

/-- `A144129(n)%A222257(n)` -/
def P542639275126745346.Spec : Prop :=
  ∀ n, P542639275126745346.a n = A222256 n

end A222256

/-! ## A222256.P9479027380838889319

`A243135(n)%A222257(n)`
-/

namespace A222256.P9479027380838889319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243135 n) (A222257 n)

end

end A222256.P9479027380838889319

namespace A222256

/-- `A243135(n)%A222257(n)` -/
def P9479027380838889319.Spec : Prop :=
  ∀ n, P9479027380838889319.a n = A222256 n

end A222256

/-! ## A222256.P12693034895562331289

`A051866(n)%A144429(n+1)`
-/

namespace A222256.P12693034895562331289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051866 n) (A144429 (n + 1))

end

end A222256.P12693034895562331289

namespace A222256

/-- `A051866(n)%A144429(n+1)` -/
def P12693034895562331289.Spec : Prop :=
  ∀ n, P12693034895562331289.a n = A222256 n

end A222256

/-! ## A222256.P6651416468767052158

`A272379(n)%A144429(n+1)`
-/

namespace A222256.P6651416468767052158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272379 n) (A144429 (n + 1))

end

end A222256.P6651416468767052158

namespace A222256

/-- `A272379(n)%A144429(n+1)` -/
def P6651416468767052158.Spec : Prop :=
  ∀ n, P6651416468767052158.a n = A222256 n

end A222256

/-! ## A222256.P4388083703398858376

`A163433(n+1)%A029739(n+1)`
-/

namespace A222256.P4388083703398858376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163433 (n + 1)) (A029739 (n + 1))

end

end A222256.P4388083703398858376

namespace A222256

/-- `A163433(n+1)%A029739(n+1)` -/
def P4388083703398858376.Spec : Prop :=
  ∀ n, P4388083703398858376.a n = A222256 n

end A222256

/-! ## A222256.P11486524484372854027

`∑{d}[n+1, A065608(#)*A085097((n+1)/#)]`
-/

namespace A222256.P11486524484372854027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065608 d * A085097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A222256.P11486524484372854027

namespace A222256

/-- `∑{d}[n+1, A065608(#)*A085097((n+1)/#)]` -/
def P11486524484372854027.Spec : Prop :=
  ∀ n, P11486524484372854027.a n = A222256 n

end A222256

/-! ## A222256.P3112037847311486888

`(n-A022003(n))*A131534(n+2)`
-/

namespace A222256.P3112037847311486888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A022003 n) * A131534 (n + 2)

end

end A222256.P3112037847311486888

namespace A222256

/-- `(n-A022003(n))*A131534(n+2)` -/
def P3112037847311486888.Spec : Prop :=
  ∀ n, P3112037847311486888.a n = A222256 n

end A222256

/-! ## A222256.P8267742864152687755

`A342131(A131452(n))`
-/

namespace A222256.P8267742864152687755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342131 (A131452 n).toNat

end

end A222256.P8267742864152687755

namespace A222256

/-- `A342131(A131452(n))` -/
def P8267742864152687755.Spec : Prop :=
  ∀ n, P8267742864152687755.a n = A222256 n

end A222256

/-! ## A222256.P10695453324758314348

`A023443(A222257(n))`
-/

namespace A222256.P10695453324758314348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A222257 n).toNat

end

end A222256.P10695453324758314348

namespace A222256

/-- `A023443(A222257(n))` -/
def P10695453324758314348.Spec : Prop :=
  ∀ n, P10695453324758314348.a n = A222256 n

end A222256

/-! ## A222256.P455921986769738776

`A001281(A342369(n))`
-/

namespace A222256.P455921986769738776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A342369 n).toNat

end

end A222256.P455921986769738776

namespace A222256

/-- `A001281(A342369(n))` -/
def P455921986769738776.Spec : Prop :=
  ∀ n, P455921986769738776.a n = A222256 n

end A222256

/-! ## A222256.P10276421701009981950

`A029578(A047244(n+1))`
-/

namespace A222256.P10276421701009981950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A047244 (n + 1)).toNat

end

end A222256.P10276421701009981950

namespace A222256

/-- `A029578(A047244(n+1))` -/
def P10276421701009981950.Spec : Prop :=
  ∀ n, P10276421701009981950.a n = A222256 n

end A222256

/-! ## A222256.P12043849760564239212

`A064680(A047244(n+1))%A004277(n)`
-/

namespace A222256.P12043849760564239212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064680 (A047244 (n + 1)).toNat) (A004277 n)

end

end A222256.P12043849760564239212

namespace A222256

/-- `A064680(A047244(n+1))%A004277(n)` -/
def P12043849760564239212.Spec : Prop :=
  ∀ n, P12043849760564239212.a n = A222256 n

end A222256

/-! ## A222256.P16499641514713609038

`A029578(A004396(n)+A004523(n)+A004396(n))`
-/

namespace A222256.P16499641514713609038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A004396 n + (A004523 n + A004396 n)).toNat

end

end A222256.P16499641514713609038

namespace A222256

/-- `A029578(A004396(n)+A004523(n)+A004396(n))` -/
def P16499641514713609038.Spec : Prop :=
  ∀ n, P16499641514713609038.a n = A222256 n

end A222256

/-! ## A222256.P2175506193321608675

`(A131531(2*(n+1))+n)*A131556(2*n)`
-/

namespace A222256.P2175506193321608675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131531 (2 * (n + 1)) + (n : ℤ)) * A131556 (2 * n)

end

end A222256.P2175506193321608675

namespace A222256

/-- `(A131531(2*(n+1))+n)*A131556(2*n)` -/
def P2175506193321608675.Spec : Prop :=
  ∀ n, P2175506193321608675.a n = A222256 n

end A222256

/-!
# A222257: Lexicographically earliest injective sequence of positive integers such that the sum of 6 consecutive terms is always divisible by 6.

The programs for A222257, the canonical program `A222257.P837831485803070787` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222257 has offset 0).

The definition of A222257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222257.P837831485803070787

`(n-2)*(n%3)!+3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222257

/-- `(n-2)*(n%3)!+3` -/
def P837831485803070787.Spec : Prop :=
  ∀ n, P837831485803070787.a n = A222257 n

theorem P837831485803070787.correct : P837831485803070787.Spec := by
  intro n
  simp only [A222257]

end A222257

/-! ## A222257.P11838020218891050320

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=9`
-/

namespace A222257.P11838020218891050320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 9] fun n a =>
  2 * a (n - 3) - a (n - 6)

end

end A222257.P11838020218891050320

namespace A222257

/-- `2*a(n-3)-a(n-6)` -/
def P11838020218891050320.Spec : Prop :=
  ∀ n, P11838020218891050320.a n = A222257 n

end A222257

/-! ## A222257.P4176168072330872993

`A222256(n)+1`
-/

namespace A222257.P4176168072330872993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222256 n + 1

end

end A222257.P4176168072330872993

namespace A222257

/-- `A222256(n)+1` -/
def P4176168072330872993.Spec : Prop :=
  ∀ n, P4176168072330872993.a n = A222257 n

end A222257

/-! ## A222257.P600268049197549382

`(n-1)^(C(n, 2)%3)+n`
-/

namespace A222257.P600268049197549382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (Nat.choose n 2 % 3) + (n : ℤ)

end

end A222257.P600268049197549382

namespace A222257

/-- `(n-1)^(C(n, 2)%3)+n` -/
def P600268049197549382.Spec : Prop :=
  ∀ n, P600268049197549382.a n = A222257 n

end A222257

/-! ## A222257.P2170333627733634982

`(n-1)^Δ[floor(n/3)]+n`
-/

namespace A222257.P2170333627733634982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) + (n : ℚ)

end

end A222257.P2170333627733634982

namespace A222257

/-- `(n-1)^Δ[floor(n/3)]+n` -/
def P2170333627733634982.Spec : Prop :=
  ∀ n, P2170333627733634982.a n = (A222257 n : ℚ)

end A222257

/-! ## A222257.P6915397778307028280

`abs(n*A061347(n+1)+1)`
-/

namespace A222257.P6915397778307028280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A061347 (n + 1) + 1|

end

end A222257.P6915397778307028280

namespace A222257

/-- `abs(n*A061347(n+1)+1)` -/
def P6915397778307028280.Spec : Prop :=
  ∀ n, P6915397778307028280.a n = A222257 n

end A222257

/-! ## A222257.P10321355917545227714

`A351412(A319371(n+1))`
-/

namespace A222257.P10321355917545227714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351412 (A319371 (n + 1)).toNat

end

end A222257.P10321355917545227714

namespace A222257

/-- `A351412(A319371(n+1))` -/
def P10321355917545227714.Spec : Prop :=
  ∀ n, P10321355917545227714.a n = A222257 n

end A222257

/-! ## A222257.P7308395177190221147

`filter[A351412(n+1), A097325(#)]`
-/

namespace A222257.P7308395177190221147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A222257.P7308395177190221147

namespace A222257

/-- `filter[A351412(n+1), A097325(#)]` -/
def P7308395177190221147.Spec : Prop :=
  ∀ n, P7308395177190221147.a n = A222257 n

end A222257

/-! ## A222257.P3039833849404012025

`A029579(A047244(n+1))`
-/

namespace A222257.P3039833849404012025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A047244 (n + 1)).toNat

end

end A222257.P3039833849404012025

namespace A222257

/-- `A029579(A047244(n+1))` -/
def P3039833849404012025.Spec : Prop :=
  ∀ n, P3039833849404012025.a n = A222257 n

end A222257

/-! ## A222257.P3790692190266217628

`A026741(2*n+1-A099837(n+1))`
-/

namespace A222257.P3790692190266217628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((2 * n + 1 : ℤ) - A099837 (n + 1)).toNat

end

end A222257.P3790692190266217628

namespace A222257

/-- `A026741(2*n+1-A099837(n+1))` -/
def P3790692190266217628.Spec : Prop :=
  ∀ n, P3790692190266217628.a n = A222257 n

end A222257

/-! ## A222257.P9361033275846536819

`lcm(2, A004482(2*n+1))/2`
-/

namespace A222257.P9361033275846536819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A004482 (2 * n + 1)) : ℚ) / 2

end

end A222257.P9361033275846536819

namespace A222257

/-- `lcm(2, A004482(2*n+1))/2` -/
def P9361033275846536819.Spec : Prop :=
  ∀ n, P9361033275846536819.a n = (A222257 n : ℚ)

end A222257

/-! ## A222257.P5579428202032681732

`A026741(A057079(2*n)+2*n+1)`
-/

namespace A222257.P5579428202032681732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A057079 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A222257.P5579428202032681732

namespace A222257

/-- `A026741(A057079(2*n)+2*n+1)` -/
def P5579428202032681732.Spec : Prop :=
  ∀ n, P5579428202032681732.a n = A222257 n

end A222257

/-! ## A222257.P2285880246210489537

`A004482(2*n+1)/gcd(A004442(2*n+1), A004482(2*n+1))`
-/

namespace A222257.P2285880246210489537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004482 (2 * n + 1) : ℚ) / (Int.gcd (A004442 (2 * n + 1)) (A004482 (2 * n + 1)) : ℚ)

end

end A222257.P2285880246210489537

namespace A222257

/-- `A004482(2*n+1)/gcd(A004442(2*n+1), A004482(2*n+1))` -/
def P2285880246210489537.Spec : Prop :=
  ∀ n, P2285880246210489537.a n = (A222257 n : ℚ)

end A222257

/-! ## A222257.P11079198136385668025

`A291290(A047259(n+1))`
-/

namespace A222257.P11079198136385668025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291290 (A047259 (n + 1)).toNat

end

end A222257.P11079198136385668025

namespace A222257

/-- `A291290(A047259(n+1))` -/
def P11079198136385668025.Spec : Prop :=
  ∀ n, P11079198136385668025.a n = A222257 n

end A222257

/-! ## A222257.P1570290782796113480

`A291290(A144430(n+2))`
-/

namespace A222257.P1570290782796113480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291290 (A144430 (n + 2)).toNat

end

end A222257.P1570290782796113480

namespace A222257

/-- `A291290(A144430(n+2))` -/
def P1570290782796113480.Spec : Prop :=
  ∀ n, P1570290782796113480.a n = A222257 n

end A222257

/-! ## A222257.P922549009074743934

`A267807(A047474(n+1))`
-/

namespace A222257.P922549009074743934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267807 (A047474 (n + 1)).toNat

end

end A222257.P922549009074743934

namespace A222257

/-- `A267807(A047474(n+1))` -/
def P922549009074743934.Spec : Prop :=
  ∀ n, P922549009074743934.a n = A222257 n

end A222257

/-!
# A222258: Lexicographically earliest injective sequence of nonnegative integers such that the sum of 8 consecutive terms is always divisible by 8.

The programs for A222258, the canonical program `A222258.P17652540115013236761` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222258 has offset 0).

The definition of A222258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222258.P17652540115013236761

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222258

/-- `2*a(n-4)-a(n-8)` -/
def P17652540115013236761.Spec : Prop :=
  ∀ n, P17652540115013236761.a n = A222258 n

theorem P17652540115013236761.correct : P17652540115013236761.Spec := by
  intro n
  simp only [A222258]

end A222258

/-! ## A222258.P14357277364936562747

`A222259(n+1)-1`
-/

namespace A222258.P14357277364936562747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222259 (n + 1) - 1

end

end A222258.P14357277364936562747

namespace A222258

/-- `A222259(n+1)-1` -/
def P14357277364936562747.Spec : Prop :=
  ∀ n, P14357277364936562747.a n = A222258 n

end A222258

/-! ## A222258.P4659361688456439609

`and(n, Δ[and(3, n)-n])+n`
-/

namespace A222258.P4659361688456439609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 3 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A222258.P4659361688456439609

namespace A222258

/-- `and(n, Δ[and(3, n)-n])+n` -/
def P4659361688456439609.Spec : Prop :=
  ∀ n, P4659361688456439609.a n = A222258 n

end A222258

/-! ## A222258.P13654526886947776702

`and(n, Δ[-and(n, -4)])+n`
-/

namespace A222258.P13654526886947776702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.land (n : ℤ) (-4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A222258.P13654526886947776702

namespace A222258

/-- `and(n, Δ[-and(n, -4)])+n` -/
def P13654526886947776702.Spec : Prop :=
  ∀ n, P13654526886947776702.a n = A222258 n

end A222258

/-! ## A222258.P14361739468575907959

`(n-3)*C(n, 3)%2+n`
-/

namespace A222258.P14361739468575907959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * ((Nat.choose n 3 % 2 : ℕ) : ℤ) + (n : ℤ)

end

end A222258.P14361739468575907959

namespace A222258

/-- `(n-3)*C(n, 3)%2+n` -/
def P14361739468575907959.Spec : Prop :=
  ∀ n, P14361739468575907959.a n = A222258 n

end A222258

/-! ## A222258.P13993464282475217952

`(n-3)*Δ[floor(n/4)]+n`
-/

namespace A222258.P13993464282475217952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A222258.P13993464282475217952

namespace A222258

/-- `(n-3)*Δ[floor(n/4)]+n` -/
def P13993464282475217952.Spec : Prop :=
  ∀ n, P13993464282475217952.a n = A222258 n

end A222258

/-! ## A222258.P2903388235993611745

`xor(-(gcd(n-2, or(3, -n))+n), -1)`
-/

namespace A222258.P2903388235993611745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(Int.gcd ((n : ℤ) - 2) (Int.lor 3 (-(n : ℤ))) + n : ℤ)) (-1)

end

end A222258.P2903388235993611745

namespace A222258

/-- `xor(-(gcd(n-2, or(3, -n))+n), -1)` -/
def P2903388235993611745.Spec : Prop :=
  ∀ n, P2903388235993611745.a n = A222258 n

end A222258

/-! ## A222258.P4472052191719437948

`xor(A112132(n+1), A222259(n+1))`
-/

namespace A222258.P4472052191719437948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A112132 (n + 1)) (A222259 (n + 1))

end

end A222258.P4472052191719437948

namespace A222258

/-- `xor(A112132(n+1), A222259(n+1))` -/
def P4472052191719437948.Spec : Prop :=
  ∀ n, P4472052191719437948.a n = A222258 n

end A222258

/-! ## A222258.P1824861865116693000

`A023443(A222259(n+1))`
-/

namespace A222258.P1824861865116693000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A222259 (n + 1)).toNat

end

end A222258.P1824861865116693000

namespace A222258

/-- `A023443(A222259(n+1))` -/
def P1824861865116693000.Spec : Prop :=
  ∀ n, P1824861865116693000.a n = A222258 n

end A222258

/-! ## A222258.P14680244838962060350

`A026741(2*n+1-A010121(n+1))`
-/

namespace A222258.P14680244838962060350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((2 * n + 1 : ℤ) - A010121 (n + 1)).toNat

end

end A222258.P14680244838962060350

namespace A222258

/-- `A026741(2*n+1-A010121(n+1))` -/
def P14680244838962060350.Spec : Prop :=
  ∀ n, P14680244838962060350.a n = A222258 n

end A222258

/-! ## A222258.P6060800172113391883

`A140106(2*A222259(n+1))`
-/

namespace A222258.P6060800172113391883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A222259 (n + 1)).toNat

end

end A222258.P6060800172113391883

namespace A222258

/-- `A140106(2*A222259(n+1))` -/
def P6060800172113391883.Spec : Prop :=
  ∀ n, P6060800172113391883.a n = A222258 n

end A222258

/-! ## A222258.P14942366060940366308

`A140106(A222259(n+1)+A222259(n+1)+1)`
-/

namespace A222258.P14942366060940366308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A222259 (n + 1) + (A222259 (n + 1) + 1)).toNat

end

end A222258.P14942366060940366308

namespace A222258

/-- `A140106(A222259(n+1)+A222259(n+1)+1)` -/
def P14942366060940366308.Spec : Prop :=
  ∀ n, P14942366060940366308.a n = A222258 n

end A222258

/-! ## A222258.P1138696553673183965

`A070198(n)%A222259(n+1)`
-/

namespace A222258.P1138696553673183965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A222259 (n + 1))

end

end A222258.P1138696553673183965

namespace A222258

/-- `A070198(n)%A222259(n+1)` -/
def P1138696553673183965.Spec : Prop :=
  ∀ n, P1138696553673183965.a n = A222258 n

end A222258

/-! ## A222258.P2502832626901808907

`A079782(n+1)%A222259(n+1)`
-/

namespace A222258.P2502832626901808907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A222259 (n + 1))

end

end A222258.P2502832626901808907

namespace A222258

/-- `A079782(n+1)%A222259(n+1)` -/
def P2502832626901808907.Spec : Prop :=
  ∀ n, P2502832626901808907.a n = A222258 n

end A222258

/-! ## A222258.P17112403885714596691

`A083685(n+1)%A222259(n+1)`
-/

namespace A222258.P17112403885714596691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A222259 (n + 1))

end

end A222258.P17112403885714596691

namespace A222258

/-- `A083685(n+1)%A222259(n+1)` -/
def P17112403885714596691.Spec : Prop :=
  ∀ n, P17112403885714596691.a n = A222258 n

end A222258

/-! ## A222258.P9383229254382232669

`A121934(n+1)%A222259(n+1)`
-/

namespace A222258.P9383229254382232669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A222259 (n + 1))

end

end A222258.P9383229254382232669

namespace A222258

/-- `A121934(n+1)%A222259(n+1)` -/
def P9383229254382232669.Spec : Prop :=
  ∀ n, P9383229254382232669.a n = A222258 n

end A222258

/-!
# A222259: Lexicographically earliest injective sequence of positive integers such that the sum of 8 consecutive terms is always divisible by 8.

The programs for A222259, the canonical program `A222259.P13271339923932653629` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222259 has offset 1).

The definition of A222259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222259.P13271339923932653629

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=12`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222259

/-- `2*a(n-4)-a(n-8)` -/
def P13271339923932653629.Spec : Prop :=
  ∀ n, P13271339923932653629.a n = A222259 (n + 1)

theorem P13271339923932653629.correct : P13271339923932653629.Spec := by
  intro n
  simp only [A222259, Nat.add_sub_cancel]

end A222259

/-! ## A222259.P3981441047178591458

`A222258(n)+1`
-/

namespace A222259.P3981441047178591458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222258 n + 1

end

end A222259.P3981441047178591458

namespace A222259

/-- `A222258(n)+1` -/
def P3981441047178591458.Spec : Prop :=
  ∀ n, P3981441047178591458.a n = A222259 (n + 1)

end A222259

/-! ## A222259.P9655813787679004917

`gcd(n-2, or(3, -n))+n`
-/

namespace A222259.P9655813787679004917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2) (Int.lor 3 (-(n : ℤ))) + n

end

end A222259.P9655813787679004917

namespace A222259

/-- `gcd(n-2, or(3, -n))+n` -/
def P9655813787679004917.Spec : Prop :=
  ∀ n, (P9655813787679004917.a n : ℤ) = A222259 (n + 1)

end A222259

/-! ## A222259.P16871907166945631714

`n-or(2-n, and(3, n)-3)`
-/

namespace A222259.P16871907166945631714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor (2 - (n : ℤ)) ((Nat.land 3 n : ℤ) - 3)

end

end A222259.P16871907166945631714

namespace A222259

/-- `n-or(2-n, and(3, n)-3)` -/
def P16871907166945631714.Spec : Prop :=
  ∀ n, P16871907166945631714.a n = A222259 (n + 1)

end A222259

/-! ## A222259.P16648968792471183032

`n-or(2-n, n-or(3, n))`
-/

namespace A222259.P16648968792471183032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor (2 - (n : ℤ)) ((n : ℤ) - (Nat.lor 3 n : ℤ))

end

end A222259.P16648968792471183032

namespace A222259

/-- `n-or(2-n, n-or(3, n))` -/
def P16648968792471183032.Spec : Prop :=
  ∀ n, P16648968792471183032.a n = A222259 (n + 1)

end A222259

/-! ## A222259.P2793670775709743437

`(n-3)*gcd(1-n, ∑[n])+4`
-/

namespace A222259.P2793670775709743437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (Int.gcd (1 - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) + 4

end

end A222259.P2793670775709743437

namespace A222259

/-- `(n-3)*gcd(1-n, ∑[n])+4` -/
def P2793670775709743437.Spec : Prop :=
  ∀ n, P2793670775709743437.a n = A222259 (n + 1)

end A222259

/-! ## A222259.P10575353326973782837

`and(n, Δ[and(3, n)-n])+n+1`
-/

namespace A222259.P10575353326973782837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 3 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (f1 (n + 1) - f1 n) + (n + 1 : ℤ)

end

end A222259.P10575353326973782837

namespace A222259

/-- `and(n, Δ[and(3, n)-n])+n+1` -/
def P10575353326973782837.Spec : Prop :=
  ∀ n, P10575353326973782837.a n = A222259 (n + 1)

end A222259

/-! ## A222259.P13153043262813068792

`and(n, Δ[-and(n, -4)])+n+1`
-/

namespace A222259.P13153043262813068792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.land (n : ℤ) (-4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (f1 (n + 1) - f1 n) + (n + 1 : ℤ)

end

end A222259.P13153043262813068792

namespace A222259

/-- `and(n, Δ[-and(n, -4)])+n+1` -/
def P13153043262813068792.Spec : Prop :=
  ∀ n, P13153043262813068792.a n = A222259 (n + 1)

end A222259

/-! ## A222259.P17804623030314311027

`(n-3)*Δ[floor(n/4)]+1+n`
-/

namespace A222259.P17804623030314311027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (f1 (n + 1) - f1 n) + 1 + (n : ℤ)

end

end A222259.P17804623030314311027

namespace A222259

/-- `(n-3)*Δ[floor(n/4)]+1+n` -/
def P17804623030314311027.Spec : Prop :=
  ∀ n, P17804623030314311027.a n = A222259 (n + 1)

end A222259

/-! ## A222259.P192002265719309545

`A000034(n)*A043547(A026741(n+1))`
-/

namespace A222259.P192002265719309545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A043547 (A026741 (n + 1)).toNat

end

end A222259.P192002265719309545

namespace A222259

/-- `A000034(n)*A043547(A026741(n+1))` -/
def P192002265719309545.Spec : Prop :=
  ∀ n, P192002265719309545.a n = A222259 (n + 1)

end A222259

/-! ## A222259.P667066882254489717

`A225055(A004526(A212831(2*n+n+3)))`
-/

namespace A222259.P667066882254489717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (A004526 (A212831 (2 * n + (n + 3))).toNat).toNat

end

end A222259.P667066882254489717

namespace A222259

/-- `A225055(A004526(A212831(2*n+n+3)))` -/
def P667066882254489717.Spec : Prop :=
  ∀ n, P667066882254489717.a n = A222259 (n + 1)

end A222259

/-!
# A222260: Lexicographically earliest injective sequence of nonnegative integers such that the sum of 10 consecutive terms is always divisible by 10.

The programs for A222260, the canonical program `A222260.P8224998973582597758` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222260 has offset 0).

The definition of A222260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222260.P8224998973582597758

`2*a(n-5)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8, a(9)=14`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222260

/-- `2*a(n-5)-a(n-10)` -/
def P8224998973582597758.Spec : Prop :=
  ∀ n, P8224998973582597758.a n = A222260 n

theorem P8224998973582597758.correct : P8224998973582597758.Spec := by
  intro n
  simp only [A222260]

end A222260

/-! ## A222260.P15204699878020551110

`A222261(n+1)-1`
-/

namespace A222260.P15204699878020551110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222261 (n + 1) - 1

end

end A222260.P15204699878020551110

namespace A222260

/-- `A222261(n+1)-1` -/
def P15204699878020551110.Spec : Prop :=
  ∀ n, P15204699878020551110.a n = A222260 n

end A222260

/-! ## A222260.P12939907776932076590

`∑{d}[gcd(n+1, 4-n), n+1-#]`
-/

namespace A222260.P12939907776932076590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (4 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - (d : ℤ))

end

end A222260.P12939907776932076590

namespace A222260

/-- `∑{d}[gcd(n+1, 4-n), n+1-#]` -/
def P12939907776932076590.Spec : Prop :=
  ∀ n, P12939907776932076590.a n = A222260 n

end A222260

/-! ## A222260.P13447559169173978524

`floor(6*n/5)-Δ[n%5*floor(n/5)]`
-/

namespace A222260.P13447559169173978524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 5 : ℕ) : ℤ) * ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * ((n : ℚ) / 5)⌋ - (f1 (n + 1) - f1 n)

end

end A222260.P13447559169173978524

namespace A222260

/-- `floor(6*n/5)-Δ[n%5*floor(n/5)]` -/
def P13447559169173978524.Spec : Prop :=
  ∀ n, P13447559169173978524.a n = A222260 n

end A222260

/-! ## A222260.P11621442192293267686

`(n-4)*A079998(n+1)+n`
-/

namespace A222260.P11621442192293267686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) * A079998 (n + 1) + (n : ℤ)

end

end A222260.P11621442192293267686

namespace A222260

/-- `(n-4)*A079998(n+1)+n` -/
def P11621442192293267686.Spec : Prop :=
  ∀ n, P11621442192293267686.a n = A222260 n

end A222260

/-! ## A222260.P16520456058551755354

`(n*A010122(n+1))%(2*(n+1))`
-/

namespace A222260.P16520456058551755354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A010122 (n + 1)) (2 * (n + 1) : ℤ)

end

end A222260.P16520456058551755354

namespace A222260

/-- `(n*A010122(n+1))%(2*(n+1))` -/
def P16520456058551755354.Spec : Prop :=
  ∀ n, P16520456058551755354.a n = A222260 n

end A222260

/-! ## A222260.P5404895807259093630

`A005843(n)-n%A304568(n+1)`
-/

namespace A222260.P5404895807259093630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - Int.tmod (n : ℤ) (A304568 (n + 1))

end

end A222260.P5404895807259093630

namespace A222260

/-- `A005843(n)-n%A304568(n+1)` -/
def P5404895807259093630.Spec : Prop :=
  ∀ n, P5404895807259093630.a n = A222260 n

end A222260

/-! ## A222260.P15237115983140218828

`∑{d}[n+1, A065608(#)*A085639((n+1)/#)]`
-/

namespace A222260.P15237115983140218828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065608 d * A085639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A222260.P15237115983140218828

namespace A222260

/-- `∑{d}[n+1, A065608(#)*A085639((n+1)/#)]` -/
def P15237115983140218828.Spec : Prop :=
  ∀ n, P15237115983140218828.a n = A222260 n

end A222260

/-! ## A222260.P4494305315085617099

`A047226(n+1)-Δ[A257845(n)]`
-/

namespace A222260.P4494305315085617099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 1) - (f1 (n + 1) - f1 n)

end

end A222260.P4494305315085617099

namespace A222260

/-- `A047226(n+1)-Δ[A257845(n)]` -/
def P4494305315085617099.Spec : Prop :=
  ∀ n, P4494305315085617099.a n = A222260 n

end A222260

/-! ## A222260.P16955120127058891636

`∑{d}[A057505(Δ[A293292(n+1)]), n+1-#]`
-/

namespace A222260.P16955120127058891636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℤ) - (d : ℤ))

end

end A222260.P16955120127058891636

namespace A222260

/-- `∑{d}[A057505(Δ[A293292(n+1)]), n+1-#]` -/
def P16955120127058891636.Spec : Prop :=
  ∀ n, P16955120127058891636.a n = A222260 n

end A222260

/-! ## A222260.P1837047140940952851

`A023443(A222261(n+1))`
-/

namespace A222260.P1837047140940952851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A222261 (n + 1)).toNat

end

end A222260.P1837047140940952851

namespace A222260

/-- `A023443(A222261(n+1))` -/
def P1837047140940952851.Spec : Prop :=
  ∀ n, P1837047140940952851.a n = A222260 n

end A222260

/-!
# A222261: Lexicographically earliest injective sequence of positive integers such that the sum of 10 consecutive terms is always divisible by 10.

The programs for A222261, the canonical program `A222261.P5777319055320810028` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222261 has offset 1).

The definition of A222261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222261.P5777319055320810028

`2*a(n-5)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9, a(9)=15`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222261

/-- `2*a(n-5)-a(n-10)` -/
def P5777319055320810028.Spec : Prop :=
  ∀ n, P5777319055320810028.a n = A222261 (n + 1)

theorem P5777319055320810028.correct : P5777319055320810028.Spec := by
  intro n
  simp only [A222261, Nat.add_sub_cancel]

end A222261

/-! ## A222261.P3444649085254987780

`A222260(n)+1`
-/

namespace A222261.P3444649085254987780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222260 n + 1

end

end A222261.P3444649085254987780

namespace A222261

/-- `A222260(n)+1` -/
def P3444649085254987780.Spec : Prop :=
  ∀ n, P3444649085254987780.a n = A222261 (n + 1)

end A222261

/-! ## A222261.P8522764667230374745

`2*n+1-n%A304568(n+1)`
-/

namespace A222261.P8522764667230374745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.tmod (n : ℤ) (A304568 (n + 1))

end

end A222261.P8522764667230374745

namespace A222261

/-- `2*n+1-n%A304568(n+1)` -/
def P8522764667230374745.Spec : Prop :=
  ∀ n, P8522764667230374745.a n = A222261 (n + 1)

end A222261

/-! ## A222261.P7293656616425129680

`A047226(n+1)+1-Δ[A257845(n)]`
-/

namespace A222261.P7293656616425129680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A222261.P7293656616425129680

namespace A222261

/-- `A047226(n+1)+1-Δ[A257845(n)]` -/
def P7293656616425129680.Spec : Prop :=
  ∀ n, P7293656616425129680.a n = A222261 (n + 1)

end A222261

/-! ## A222261.P1320577489307038051

`A199343(A222260(n))`
-/

namespace A222261.P1320577489307038051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A222260 n).toNat

end

end A222261.P1320577489307038051

namespace A222261

/-- `A199343(A222260(n))` -/
def P1320577489307038051.Spec : Prop :=
  ∀ n, P1320577489307038051.a n = A222261 (n + 1)

end A222261

/-! ## A222261.P16006775462742027171

`A008619(2*A222260(n))`
-/

namespace A222261.P16006775462742027171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A222260 n).toNat

end

end A222261.P16006775462742027171

namespace A222261

/-- `A008619(2*A222260(n))` -/
def P16006775462742027171.Spec : Prop :=
  ∀ n, P16006775462742027171.a n = A222261 (n + 1)

end A222261

/-! ## A222261.P7087483776719381679

`A028242(2*A222260(n))`
-/

namespace A222261.P7087483776719381679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A222260 n).toNat

end

end A222261.P7087483776719381679

namespace A222261

/-- `A028242(2*A222260(n))` -/
def P7087483776719381679.Spec : Prop :=
  ∀ n, P7087483776719381679.a n = A222261 (n + 1)

end A222261

/-! ## A222261.P16774320109864219862

`A029579(2*A222260(n))`
-/

namespace A222261.P16774320109864219862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A222260 n).toNat

end

end A222261.P16774320109864219862

namespace A222261

/-- `A029579(2*A222260(n))` -/
def P16774320109864219862.Spec : Prop :=
  ∀ n, P16774320109864219862.a n = A222261 (n + 1)

end A222261

/-! ## A222261.P17699307470031499274

`A008611(3*A222260(n))`
-/

namespace A222261.P17699307470031499274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A222260 n).toNat

end

end A222261.P17699307470031499274

namespace A222261

/-- `A008611(3*A222260(n))` -/
def P17699307470031499274.Spec : Prop :=
  ∀ n, P17699307470031499274.a n = A222261 (n + 1)

end A222261

/-! ## A222261.P1637355617054892796

`A008620(3*A222260(n))`
-/

namespace A222261.P1637355617054892796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A222260 n).toNat

end

end A222261.P1637355617054892796

namespace A222261

/-- `A008620(3*A222260(n))` -/
def P1637355617054892796.Spec : Prop :=
  ∀ n, P1637355617054892796.a n = A222261 (n + 1)

end A222261

/-! ## A222261.P3766351914857536

`A008621(4*A222260(n))`
-/

namespace A222261.P3766351914857536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A222260 n).toNat

end

end A222261.P3766351914857536

namespace A222261

/-- `A008621(4*A222260(n))` -/
def P3766351914857536.Spec : Prop :=
  ∀ n, P3766351914857536.a n = A222261 (n + 1)

end A222261

/-! ## A222261.P12793570281924025268

`A008612(6*A222260(n))`
-/

namespace A222261.P12793570281924025268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A222260 n).toNat

end

end A222261.P12793570281924025268

namespace A222261

/-- `A008612(6*A222260(n))` -/
def P12793570281924025268.Spec : Prop :=
  ∀ n, P12793570281924025268.a n = A222261 (n + 1)

end A222261

/-!
# A222262: Divisors of Descarte's 198585576189.

The programs for A222262, there is no canonical definition to state claims against.
-/

/-! ## A222262.P13953056808076239216

`∪[A033870(n+1), A033871(n+1)]`
-/

namespace A222262.P13953056808076239216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222262.P13953056808076239216

/-! ## A222262.P1353851913450446657

`record[gcd(A008611(2*n), A033870(n+4))]`
-/

namespace A222262.P1353851913450446657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008611 (2 * n)) (A033870 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222262.P1353851913450446657

/-! ## A222262.P17211646207479258963

`record[A033676(A033870(n+1))]`
-/

namespace A222262.P17211646207479258963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A033870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222262.P17211646207479258963

/-! ## A222262.P1459657544333456360

`record[gcd(A018838(n), A033870(n+1))]`
-/

namespace A222262.P1459657544333456360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018838 n) (A033870 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222262.P1459657544333456360

/-! ## A222262.P13297470124038604363

`record[gcd(A033871(n+1), A061375(n+1))]`
-/

namespace A222262.P13297470124038604363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033871 (n + 1)) (A061375 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222262.P13297470124038604363

/-!
# A222263: Odd numbers n such that 2n/sigma(n) - 1 = 1/x for some positive integer x.

The programs for A222263, there is no canonical definition to state claims against.
-/

/-! ## A222263.P11170448038043861381

`A222264(eq[1, A222264(n+1)%2]+1)`
-/

namespace A222263.P11170448038043861381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222264 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A222263.P11170448038043861381

/-! ## A222263.P7333352589382072356

`∩[2*n+1, A222264(n+1)]`
-/

namespace A222263.P7333352589382072356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222263.P7333352589382072356

/-! ## A222263.P14315514656342376728

`filter[A222264(n+1), A093719(#)]`
-/

namespace A222263.P14315514656342376728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A222263.P14315514656342376728

/-! ## A222263.P14475441623717449693

`record[A093178(A222264(n+1))]`
-/

namespace A222263.P14475441623717449693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A222264 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222263.P14475441623717449693

/-! ## A222263.P16196568383052680094

`filter[A222264(n+1), A000035(#)]`
-/

namespace A222263.P16196568383052680094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A222263.P16196568383052680094

/-!
# A222264: Numbers n such that 2n/sigma(n) - 1 = 1/x for some integer x.

The programs for A222264, there is no canonical definition to state claims against.
-/

/-! ## A222264.P13359735651656668602

`eq[A033879(n+1), A325636(n+1)]+1`
-/

namespace A222264.P13359735651656668602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A222264.P13359735651656668602

/-! ## A222264.P3374921095663236763

`lt[A294899(n+1), A333382(n)+2]+1`
-/

namespace A222264.P3374921095663236763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A222264.P3374921095663236763

/-! ## A222264.P14635628144232710803

`lt[A294899(n+1), A344937(n+5)+2]+1`
-/

namespace A222264.P14635628144232710803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344937 (n + 5) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A222264.P14635628144232710803

/-! ## A222264.P17267118351514907637

`A185284(3*(n+1))+A135772(A299702(n+1))`
-/

namespace A222264.P17267118351514907637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * (n + 1)) + A135772 (A299702 (n + 1)).toNat

end

end A222264.P17267118351514907637

/-!
# A222265: Numbers n such that (13^n + 2^n)/15 is prime.

The programs for A222265, there is no canonical definition to state claims against.
-/

/-! ## A222265.P18178946881353341068

`or(A005109(3*n+4), A324455(A341039(n+1)))`
-/

namespace A222265.P18178946881353341068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005109 (3 * n + 4)) (A324455 (A341039 (n + 1)).toNat)

end

end A222265.P18178946881353341068

/-!
# A222266: Irregular triangle which lists the bi-unitary divisors of n in row n.

The programs for A222266, there is no canonical definition to state claims against.
-/

/-! ## A222266.P4033901726037428945

`gcd(A077609(n+1), A326292(A326292(n)))`
-/

namespace A222266.P4033901726037428945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077609 (n + 1)) (A326292 (A326292 n).toNat)

end

end A222266.P4033901726037428945

/-! ## A222266.P16487100283036801902

`A077609(n+1)%A007947(A340017(n+4))`
-/

namespace A222266.P16487100283036801902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077609 (n + 1)) (A007947 (A340017 (n + 4)).toNat)

end

end A222266.P16487100283036801902

/-!
# A222269: Number of nX1 0..3 arrays with exactly floor(nX1/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222269, there is no canonical definition to state claims against.
-/

/-! ## A222269.P18024704485497434302

`A222522(∑[n]+1)`
-/

namespace A222269.P18024704485497434302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222269.P18024704485497434302

/-! ## A222269.P10600356476894148764

`A222522(A000124(n))+2-4/2`
-/

namespace A222269.P10600356476894148764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222522 (A000124 n).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A222269.P10600356476894148764

/-! ## A222269.P639800229372676007

`A222522(A000124(n))%A007283(n)`
-/

namespace A222269.P639800229372676007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222522 (A000124 n).toNat) (A007283 n)

end

end A222269.P639800229372676007

/-! ## A222269.P13721489653581797854

`A222666(∑[n]+1)`
-/

namespace A222269.P13721489653581797854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222269.P13721489653581797854

/-! ## A222269.P2393401042534465267

`A222794(∑[n]+1)`
-/

namespace A222269.P2393401042534465267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222269.P2393401042534465267

/-!
# A222270: Number of nX2 0..3 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222270, there is no canonical definition to state claims against.
-/

/-! ## A222270.P2952588144415345483

`A222275(∑[n+1]+2)`
-/

namespace A222270.P2952588144415345483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222270.P2952588144415345483

/-! ## A222270.P5106943536389226922

`A222500(∑[n+2])`
-/

namespace A222270.P5106943536389226922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222270.P5106943536389226922

/-! ## A222270.P12278690915039263742

`A222275(A000096(n+1))+A025438(n)`
-/

namespace A222270.P12278690915039263742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A000096 (n + 1)).toNat + A025438 n

end

end A222270.P12278690915039263742

/-! ## A222270.P4843289982354235943

`A222275(A000096(n+1))+A025442(n)`
-/

namespace A222270.P4843289982354235943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A000096 (n + 1)).toNat + A025442 n

end

end A222270.P4843289982354235943

/-! ## A222270.P13133052168890203083

`A256974(n)+A222275(A000096(n+1))`
-/

namespace A222270.P13133052168890203083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A222275 (A000096 (n + 1)).toNat

end

end A222270.P13133052168890203083

/-!
# A222271: Number of nX3 0..3 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222271, there is no canonical definition to state claims against.
-/

/-! ## A222271.P15068494092145066991

`A222275(∑[n+2]+4)`
-/

namespace A222271.P15068494092145066991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222271.P15068494092145066991

/-! ## A222271.P11374167389335911388

`A222275(A167614(n+1))%(9^n)`
-/

namespace A222271.P11374167389335911388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222275 (A167614 (n + 1)).toNat) (9 ^ n : ℤ)

end

end A222271.P11374167389335911388

/-! ## A222271.P7771441420033570077

`A222275(A167614(n+1))+A011741(n)`
-/

namespace A222271.P7771441420033570077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A167614 (n + 1)).toNat + A011741 n

end

end A222271.P7771441420033570077

/-! ## A222271.P5150743758148124214

`A222275(A167614(n+1))+A011742(n)`
-/

namespace A222271.P5150743758148124214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A167614 (n + 1)).toNat + A011742 n

end

end A222271.P5150743758148124214

/-! ## A222271.P4829213123049535016

`A222275(A167614(n+1))+A025437(n)`
-/

namespace A222271.P4829213123049535016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A167614 (n + 1)).toNat + A025437 n

end

end A222271.P4829213123049535016

/-!
# A222272: Number of nX4 0..3 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222272, there is no canonical definition to state claims against.
-/

/-! ## A222272.P13538474784421247400

`A222275(A374004(n+1))`
-/

namespace A222272.P13538474784421247400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A374004 (n + 1)).toNat

end

end A222272.P13538474784421247400

/-! ## A222272.P2394020148923019547

`A222275(A141214(n)+7)`
-/

namespace A222272.P2394020148923019547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A141214 n + 7).toNat

end

end A222272.P2394020148923019547

/-! ## A222272.P12097841231611307583

`A222275(A052905(n)+9)`
-/

namespace A222272.P12097841231611307583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A052905 n + 9).toNat

end

end A222272.P12097841231611307583

/-! ## A222272.P1863556924538682508

`A222275(A055999(n)+10)`
-/

namespace A222272.P1863556924538682508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A055999 n + 10).toNat

end

end A222272.P1863556924538682508

/-! ## A222272.P15277689242183537294

`A222275(eq[5, A066657(n)])`
-/

namespace A222272.P15277689242183537294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222272.P15277689242183537294

/-!
# A222273: Number of nX5 0..3 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222273, there is no canonical definition to state claims against.
-/

/-! ## A222273.P14878236078653186356

`A222275(∑[n+4]+11)`
-/

namespace A222273.P14878236078653186356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A222273.P14878236078653186356

/-!
# A222274: Number of nX6 0..3 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222274, there is no canonical definition to state claims against.
-/

/-! ## A222274.P1898965150682928557

`A222275(C(n+7, 2)-n)`
-/

namespace A222274.P1898965150682928557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (Nat.choose (n + 7) 2 - n)

end

end A222274.P1898965150682928557

/-! ## A222274.P8019513956767810191

`A222275(A374007(n+1))`
-/

namespace A222274.P8019513956767810191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A374007 (n + 1)).toNat

end

end A222274.P8019513956767810191

/-! ## A222274.P9363986955552079373

`A222275(A056115(n)+21)`
-/

namespace A222274.P9363986955552079373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A056115 n + 21).toNat

end

end A222274.P9363986955552079373

/-! ## A222274.P9979021660105121070

`A222275(A167499(n+4)+1)`
-/

namespace A222274.P9979021660105121070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (A167499 (n + 4) + 1).toNat

end

end A222274.P9979021660105121070

/-!
# A222275: T(n,k) = Number of n X k 0..3 arrays with exactly floor(n X k/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222275, there is no canonical definition to state claims against.
-/

/-! ## A222275.P1105488074910512367

`A175427(A222430(n+1)+1)`
-/

namespace A222275.P1105488074910512367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A222430 (n + 1) + 1).toNat

end

end A222275.P1105488074910512367

/-! ## A222275.P4120971066081451218

`A335522(A222430(n+1)+1)`
-/

namespace A222275.P4120971066081451218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335522 (A222430 (n + 1) + 1).toNat

end

end A222275.P4120971066081451218

/-! ## A222275.P16363772562759527858

`A222430(n+1)+A025437(A184955(n))`
-/

namespace A222275.P16363772562759527858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (n + 1) + A025437 (A184955 n).toNat

end

end A222275.P16363772562759527858

/-! ## A222275.P16215809308047322754

`A222430(n+1)+A178976(A185274(n))`
-/

namespace A222275.P16215809308047322754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (n + 1) + A178976 (A185274 n).toNat

end

end A222275.P16215809308047322754

/-! ## A222275.P17165883675771926480

`A222430(n+1)%record[A123142(n)]`
-/

namespace A222275.P17165883675771926480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123142 (n + 64)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222430 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A222275.P17165883675771926480

/-!
# A222276: Number of n X 3 0..5 arrays with no entry increasing mod 6 by 5 rightwards or downwards, starting with upper left zero.

The programs for A222276, there is no canonical definition to state claims against.
-/

/-! ## A222276.P6684327970597560000

`A222281(∑[n+2]+4)`
-/

namespace A222276.P6684327970597560000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222276.P6684327970597560000

/-! ## A222276.P7366314256667694351

`lcm(5, A222281(A167614(n+1)))`
-/

namespace A222276.P7366314256667694351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A222281 (A167614 (n + 1)).toNat)

end

end A222276.P7366314256667694351

/-! ## A222276.P1663641442538261132

`A222281(A167614(n+1))+A025439(n)`
-/

namespace A222276.P1663641442538261132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A167614 (n + 1)).toNat + A025439 n

end

end A222276.P1663641442538261132

/-! ## A222276.P1825858430537027973

`A222281(A167614(n+1))+A178798(n)`
-/

namespace A222276.P1825858430537027973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A167614 (n + 1)).toNat + A178798 n

end

end A222276.P1825858430537027973

/-! ## A222276.P9339571033998346058

`or(A057427(n), A222281(A167614(n+1)))`
-/

namespace A222276.P9339571033998346058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n) (A222281 (A167614 (n + 1)).toNat)

end

end A222276.P9339571033998346058

/-!
# A222277: Number of n X 4 0..5 arrays with no entry increasing mod 6 by 5 rightwards or downwards, starting with upper left zero.

The programs for A222277, there is no canonical definition to state claims against.
-/

/-! ## A222277.P13239856310699411915

`A222281(A052905(n)+9)`
-/

namespace A222277.P13239856310699411915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A052905 n + 9).toNat

end

end A222277.P13239856310699411915

/-! ## A222277.P16346389637023399626

`A222281(A167614(n+2)+1)`
-/

namespace A222277.P16346389637023399626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A167614 (n + 2) + 1).toNat

end

end A222277.P16346389637023399626

/-! ## A222277.P5143411410408357042

`A222281(A167499(n)+2*(n+2))`
-/

namespace A222277.P5143411410408357042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A167499 n + (2 * (n + 2) : ℤ)).toNat

end

end A222277.P5143411410408357042

/-! ## A222277.P2496962641510358648

`A222281(A027379(n+2))`
-/

namespace A222277.P2496962641510358648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A027379 (n + 2)).toNat

end

end A222277.P2496962641510358648

/-! ## A222277.P17014029312132333793

`A222281(A055998(n+2))`
-/

namespace A222277.P17014029312132333793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A055998 (n + 2)).toNat

end

end A222277.P17014029312132333793

/-!
# A222278: Number of nX5 0..5 arrays with no entry increasing mod 6 by 5 rightwards or downwards, starting with upper left zero.

The programs for A222278, there is no canonical definition to state claims against.
-/

/-! ## A222278.P13986302975180812760

`A222281(A374005(n+1))`
-/

namespace A222278.P13986302975180812760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A374005 (n + 1)).toNat

end

end A222278.P13986302975180812760

/-! ## A222278.P18284575942158740089

`A222281(A167499(n+3))`
-/

namespace A222278.P18284575942158740089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A167499 (n + 3)).toNat

end

end A222278.P18284575942158740089

/-! ## A222278.P5090844102022375015

`A222281(A167614(n+3)+2)`
-/

namespace A222278.P5090844102022375015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A167614 (n + 3) + 2).toNat

end

end A222278.P5090844102022375015

/-! ## A222278.P5157909407488079494

`A222281(A141214(n+1)+8)`
-/

namespace A222278.P5157909407488079494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A141214 (n + 1) + 8).toNat

end

end A222278.P5157909407488079494

/-! ## A222278.P3642736497852371534

`A222281(A046691(n+3))`
-/

namespace A222278.P3642736497852371534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A046691 (n + 3)).toNat

end

end A222278.P3642736497852371534

/-!
# A222279: 

The programs for A222279, there is no canonical definition to state claims against.
-/

/-! ## A222279.P13904221610601586101

`A222281(A000217(n+6)+n-2*n)`
-/

namespace A222279.P13904221610601586101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A000217 (n + 6) + (n : ℤ) - (2 * n : ℤ)).toNat

end

end A222279.P13904221610601586101

/-!
# A222280: 

The programs for A222280, there is no canonical definition to state claims against.
-/

/-! ## A222280.P13100004592829401477

`A222281(A056000(n+2)+17)`
-/

namespace A222280.P13100004592829401477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A056000 (n + 2) + 17).toNat

end

end A222280.P13100004592829401477

/-!
# A222281: T(n,k) = number of n X k 0..5 arrays with no entry increasing mod 6 by 5 rightwards or downwards, starting with upper left zero.

The programs for A222281, there is no canonical definition to state claims against.
-/

/-! ## A222281.P13560701605089901592

`A003965(A223263(n+1))`
-/

namespace A222281.P13560701605089901592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003965 (A223263 (n + 1)).toNat

end

end A222281.P13560701605089901592

/-! ## A222281.P1522840597991898579

`∑{d}[A223263(n+1), A003980(#)]`
-/

namespace A222281.P1522840597991898579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003980 d

end

end A222281.P1522840597991898579

/-! ## A222281.P8812496011833964250

`A151907(A209100(n+1))`
-/

namespace A222281.P8812496011833964250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151907 (A209100 (n + 1)).toNat

end

end A222281.P8812496011833964250

/-!
# A222282: Number of n X n 0..1 arrays with exactly floor(n X n/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222282, there is no canonical definition to state claims against.
-/

/-! ## A222282.P8305316975679469771

`A222290(∑[4*n]+1)`
-/

namespace A222282.P8305316975679469771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222282.P8305316975679469771

/-! ## A222282.P16088719456943524668

`A222290(A001844(n))+char[9]`
-/

namespace A222282.P16088719456943524668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222282.P16088719456943524668

/-! ## A222282.P6870742143967812381

`A326627(n)+A222290(A001844(n))`
-/

namespace A222282.P6870742143967812381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n + A222290 (A001844 n).toNat

end

end A222282.P6870742143967812381

/-! ## A222282.P3521936342993681285

`gcd(A025437(n), A222290(A001844(n)))`
-/

namespace A222282.P3521936342993681285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025437 n) (A222290 (A001844 n).toNat)

end

end A222282.P3521936342993681285

/-! ## A222282.P5313243367523212966

`lcm(A033999(n), A222290(A001844(n)))`
-/

namespace A222282.P5313243367523212966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A222290 (A001844 n).toNat)

end

end A222282.P5313243367523212966

/-!
# A222283: Number of nX1 0..1 arrays with exactly floor(nX1/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222283, there is no canonical definition to state claims against.
-/

/-! ## A222283.P5441497307895474527

`A105422(∑[or(1, n)+1])`
-/

namespace A222283.P5441497307895474527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222283.P5441497307895474527

/-! ## A222283.P5297455016896534897

`A105422(∑[gcd(2, n)+n])`
-/

namespace A222283.P5297455016896534897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222283.P5297455016896534897

/-! ## A222283.P14291479170023219282

`A105422(∑[∑[2*(n+1)%2]])`
-/

namespace A222283.P14291479170023219282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222283.P14291479170023219282

/-! ## A222283.P6310950563834169779

`A105422(∑[∑[2-a(n-1)]])` with `a(0)=2`
-/

namespace A222283.P6310950563834169779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A222283.P6310950563834169779

/-! ## A222283.P15471050579101251954

`A105422(∑[char[2*n]+n+1])`
-/

namespace A222283.P15471050579101251954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222283.P15471050579101251954

/-!
# A222284: Number of nX2 0..1 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222284, there is no canonical definition to state claims against.
-/

/-! ## A222284.P8045168558567013190

`A222290(∑[n+1]+2)`
-/

namespace A222284.P8045168558567013190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222284.P8045168558567013190

/-! ## A222284.P5526434689534265303

`A222290(A000217(n+1)+2)+char[19]`
-/

namespace A222284.P5526434689534265303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A000217 (n + 1) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222284.P5526434689534265303

/-! ## A222284.P10778473641011721121

`A020985(n)²*A222290(A133263(n+1))`
-/

namespace A222284.P10778473641011721121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A222290 (A133263 (n + 1)).toNat

end

end A222284.P10778473641011721121

/-! ## A222284.P4458857651471527041

`A222290(A000217(n+1)+2)%A000108(n+1)`
-/

namespace A222284.P4458857651471527041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222290 (A000217 (n + 1) + 2).toNat) (A000108 (n + 1))

end

end A222284.P4458857651471527041

/-! ## A222284.P11321834140375792488

`A007318(C(2, n))*A222290(A000217(n+1)+2)`
-/

namespace A222284.P11321834140375792488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A222290 (A000217 (n + 1) + 2).toNat

end

end A222284.P11321834140375792488

/-!
# A222285: Number of nX3 0..1 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222285, there is no canonical definition to state claims against.
-/

/-! ## A222285.P2632361618637333325

`A222290(∑[n+2]+4)`
-/

namespace A222285.P2632361618637333325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222285.P2632361618637333325

/-! ## A222285.P10379098151359415427

`A222290(A167614(n+1))+char[16]`
-/

namespace A222285.P10379098151359415427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222285.P10379098151359415427

/-! ## A222285.P11860205635292414565

`A326685(n)+A222290(A167614(n+1))`
-/

namespace A222285.P11860205635292414565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A222290 (A167614 (n + 1)).toNat

end

end A222285.P11860205635292414565

/-! ## A222285.P8703108586155973671

`A222290(A167614(n+1))%A075963(n)`
-/

namespace A222285.P8703108586155973671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222290 (A167614 (n + 1)).toNat) (A075963 n)

end

end A222285.P8703108586155973671

/-! ## A222285.P15578973514246675275

`lcm(A033999(n), A222290(A167614(n+1)))`
-/

namespace A222285.P15578973514246675275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A222290 (A167614 (n + 1)).toNat)

end

end A222285.P15578973514246675275

/-!
# A222286: Number of nX4 0..1 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222286, there is no canonical definition to state claims against.
-/

/-! ## A222286.P4471998335522411719

`A222290(∑[n+3]+7)`
-/

namespace A222286.P4471998335522411719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222286.P4471998335522411719

/-! ## A222286.P14659535794850606556

`A222290(A055999(n)+10)+char[36]`
-/

namespace A222286.P14659535794850606556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222286.P14659535794850606556

/-! ## A222286.P3267806340422604565

`A222290(A167614(n+2)+1)+char[15]`
-/

namespace A222286.P3267806340422604565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222286.P3267806340422604565

/-! ## A222286.P16933267411081808490

`A007318(C(3, n))*A222290(A167614(n+2)+1)`
-/

namespace A222286.P16933267411081808490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A222290 (A167614 (n + 2) + 1).toNat

end

end A222286.P16933267411081808490

/-! ## A222286.P18036393878519756595

`A222290(A167614(n+2)+1)%A000108(n+12)`
-/

namespace A222286.P18036393878519756595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222290 (A167614 (n + 2) + 1).toNat) (A000108 (n + 12))

end

end A222286.P18036393878519756595

/-!
# A222287: Number of nX5 0..1 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222287, there is no canonical definition to state claims against.
-/

/-! ## A222287.P18139015312006421212

`A222290(A167499(n+3))`
-/

namespace A222287.P18139015312006421212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A167499 (n + 3)).toNat

end

end A222287.P18139015312006421212

/-! ## A222287.P12633210708035281562

`A222290(A155212(n)+13)`
-/

namespace A222287.P12633210708035281562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A155212 n + 13).toNat

end

end A222287.P12633210708035281562

/-! ## A222287.P4309381241488450673

`A222290(A056000(n)+15)`
-/

namespace A222287.P4309381241488450673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A056000 n + 15).toNat

end

end A222287.P4309381241488450673

/-! ## A222287.P5485415607073354012

`A222290(eq[7, A066657(n)])`
-/

namespace A222287.P5485415607073354012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222287.P5485415607073354012

/-! ## A222287.P7249411628057813974

`A222290(A025747(n+3)+5)`
-/

namespace A222287.P7249411628057813974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A025747 (n + 3) + 5).toNat

end

end A222287.P7249411628057813974

/-!
# A222288: Number of nX6 0..1 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222288, there is no canonical definition to state claims against.
-/

/-! ## A222288.P2439928373195523796

`A222290(A056115(n)+21)`
-/

namespace A222288.P2439928373195523796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A056115 n + 21).toNat

end

end A222288.P2439928373195523796

/-! ## A222288.P18428862707219984345

`A222290(A167487(n+4)-1)`
-/

namespace A222288.P18428862707219984345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A167487 (n + 4) - 1).toNat

end

end A222288.P18428862707219984345

/-! ## A222288.P15469167716053014745

`A222290(A167614(n+4)+3)`
-/

namespace A222288.P15469167716053014745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A167614 (n + 4) + 3).toNat

end

end A222288.P15469167716053014745

/-! ## A222288.P6671373553809915807

`A222290(A000217(n+5)+6)`
-/

namespace A222288.P6671373553809915807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A000217 (n + 5) + 6).toNat

end

end A222288.P6671373553809915807

/-! ## A222288.P13741449424937714349

`A222290(A056000(n+1)+16)`
-/

namespace A222288.P13741449424937714349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A056000 (n + 1) + 16).toNat

end

end A222288.P13741449424937714349

/-!
# A222289: Number of nX7 0..1 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222289, there is no canonical definition to state claims against.
-/

/-! ## A222289.P12162136378757418736

`A222290(A056119(n)+28)`
-/

namespace A222289.P12162136378757418736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A056119 n + 28).toNat

end

end A222289.P12162136378757418736

/-! ## A222289.P294513309444786975

`A222290(eq[11, A066657(n)])`
-/

namespace A222289.P294513309444786975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222289.P294513309444786975

/-! ## A222289.P18234942696116596602

`A222290(A000124(n+6)+6)`
-/

namespace A222289.P18234942696116596602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A000124 (n + 6) + 6).toNat

end

end A222289.P18234942696116596602

/-! ## A222289.P5540290235473288305

`A222290(A253145(n+5)+7)`
-/

namespace A222289.P5540290235473288305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A253145 (n + 5) + 7).toNat

end

end A222289.P5540290235473288305

/-! ## A222289.P9914645767406788328

`A222290(A027379(n+4)+10)`
-/

namespace A222289.P9914645767406788328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (A027379 (n + 4) + 10).toNat

end

end A222289.P9914645767406788328

/-!
# A222290: T(n,k)=Number of nXk 0..1 arrays with exactly floor(nXk/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222290, there is no canonical definition to state claims against.
-/

/-! ## A222290.P10950922002397594680

`A123731(A222275(n+1)%A020610(n+1))`
-/

namespace A222290.P10950922002397594680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (Int.tmod (A222275 (n + 1)) (A020610 (n + 1))).toNat

end

end A222290.P10950922002397594680

/-! ## A222290.P11051102060117171831

`A235027(A222275(n+1))%A094206(n+6)`
-/

namespace A222290.P11051102060117171831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235027 (A222275 (n + 1)).toNat) (A094206 (n + 6))

end

end A222290.P11051102060117171831

/-! ## A222290.P13469351793526330540

`or(A222402(A187829(n+1)), A222509(n+1))`
-/

namespace A222290.P13469351793526330540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A222402 (A187829 (n + 1)).toNat) (A222509 (n + 1))

end

end A222290.P13469351793526330540

/-! ## A222290.P17081070522062368487

`or(A222509(A187829(n+1)), A222522(n+1))`
-/

namespace A222290.P17081070522062368487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A222509 (A187829 (n + 1)).toNat) (A222522 (n + 1))

end

end A222290.P17081070522062368487

/-! ## A222290.P5390744325620549241

`A331166(A222275(n+1))%A090748(3*n+4)`
-/

namespace A222290.P5390744325620549241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331166 (A222275 (n + 1)).toNat) (A090748 (3 * n + 4))

end

end A222290.P5390744325620549241

/-!
# A222291: Least number whose Collatz (3x+1) trajectory has a number greater than 10^n.

The programs for A222291, there is no canonical definition to state claims against.
-/

/-! ## A222291.P17901398083953156688

`or(A071053(A006880(n)), A080097(n))`
-/

namespace A222291.P17901398083953156688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071053 (A006880 n).toNat) (A080097 n)

end

end A222291.P17901398083953156688

/-! ## A222291.P10840891505403292853

`or(A077247(n), A175930(A175936(n)))`
-/

namespace A222291.P10840891505403292853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077247 n) (A175930 (A175936 n).toNat)

end

end A222291.P10840891505403292853

/-!
# A222294: Least k such that a term of the Collatz (3x+1) iteration of k is divisible by prime(n).

The programs for A222294, there is no canonical definition to state claims against.
-/

/-! ## A222294.P14420182779815339430

`A070167(eq[2, A326641(n)])`
-/

namespace A222294.P14420182779815339430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222294.P14420182779815339430

/-! ## A222294.P17680543087896855387

`A070167(p?[A338331(n+1)])`
-/

namespace A222294.P17680543087896855387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A222294.P17680543087896855387

/-! ## A222294.P11034673974069676236

`A070167(p?[record[A327076(n+1)]])`
-/

namespace A222294.P11034673974069676236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A222294.P11034673974069676236

/-! ## A222294.P13680824225706240298

`A070167(A069683(n+1)%A298431(n+1))`
-/

namespace A222294.P13680824225706240298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (Int.tmod (A069683 (n + 1)) (A298431 (n + 1))).toNat

end

end A222294.P13680824225706240298

/-!
# A222298: Length of the Gaussian prime spiral beginning at the n-th positive real Gaussian prime (A002145).

The programs for A222298, there is no canonical definition to state claims against.
-/

/-! ## A222298.P14787532199681991977

`A137311(2*A063431(n+1))`
-/

namespace A222298.P14787532199681991977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137311 (2 * A063431 (n + 1)).toNat

end

end A222298.P14787532199681991977

/-!
# A222299: Number of different Gaussian primes in the Gaussian prime spiral beginning at the n-th positive real Gaussian prime (A002145).

The programs for A222299, there is no canonical definition to state claims against.
-/

/-! ## A222299.P7472344634069176762

`A222595(A222629(n+3)+A041090(n))`
-/

namespace A222299.P7472344634069176762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222595 (A222629 (n + 3) + A041090 n).toNat

end

end A222299.P7472344634069176762

