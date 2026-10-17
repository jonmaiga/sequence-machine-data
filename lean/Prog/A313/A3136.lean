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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A313600: Coordination sequence Gal.6.472.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313600, there is no canonical definition to state claims against.
-/

/-! ## A313600.P3010665031833150089

`or(A073093(A001519(n)), A310398(n))`
-/

namespace A313600.P3010665031833150089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073093 (A001519 n).toNat) (A310398 n)

end

end A313600.P3010665031833150089

/-! ## A313600.P5733992537593146036

`or(A001221(A296582(n+1)), A310398(n))`
-/

namespace A313600.P5733992537593146036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A296582 (n + 1)).toNat) (A310398 n)

end

end A313600.P5733992537593146036

/-! ## A313600.P18340006203360594034

`or(A001221(A047849(n)), A310398(n))`
-/

namespace A313600.P18340006203360594034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A047849 n).toNat) (A310398 n)

end

end A313600.P18340006203360594034

/-! ## A313600.P12284300108885708229

`or(A196564(A119915(n)), A310398(n))`
-/

namespace A313600.P12284300108885708229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196564 (A119915 n).toNat) (A310398 n)

end

end A313600.P12284300108885708229

/-! ## A313600.P16302203933283178690

`or(A001221(A280786(n+2)), A310398(n))`
-/

namespace A313600.P16302203933283178690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A280786 (n + 2)).toNat) (A310398 n)

end

end A313600.P16302203933283178690

/-!
# A313601: Coordination sequence Gal.5.225.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313601, there is no canonical definition to state claims against.
-/

/-! ## A313601.P1225350699940435321

`or(A244317(A062399(n)), A312626(n))`
-/

namespace A313601.P1225350699940435321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A244317 (A062399 n).toNat) (A312626 n)

end

end A313601.P1225350699940435321

/-! ## A313601.P15416255953773669009

`or(A244317(A062399(n)), A313561(n))`
-/

namespace A313601.P15416255953773669009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A244317 (A062399 n).toNat) (A313561 n)

end

end A313601.P15416255953773669009

/-! ## A313601.P14420586063900559127

`or(A001221(A003032(n+2)), A312626(n))`
-/

namespace A313601.P14420586063900559127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A003032 (n + 2)).toNat) (A312626 n)

end

end A313601.P14420586063900559127

/-! ## A313601.P11891421099036226676

`or(A001221(A003032(n+2)), A313561(n))`
-/

namespace A313601.P11891421099036226676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A003032 (n + 2)).toNat) (A313561 n)

end

end A313601.P11891421099036226676

/-! ## A313601.P2762285287671531239

`or(A001221(A003032(n+2)), A313568(n))`
-/

namespace A313601.P2762285287671531239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A003032 (n + 2)).toNat) (A313568 n)

end

end A313601.P2762285287671531239

/-!
# A313602: Coordination sequence Gal.5.323.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313602, there is no canonical definition to state claims against.
-/

/-! ## A313602.P6489298070484787716

`or(A001221(A007854(n)), A312561(n))`
-/

namespace A313602.P6489298070484787716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A007854 n).toNat) (A312561 n)

end

end A313602.P6489298070484787716

/-! ## A313602.P7729831138540454443

`or(A001221(A007854(n)), A313572(n))`
-/

namespace A313602.P7729831138540454443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A007854 n).toNat) (A313572 n)

end

end A313602.P7729831138540454443

/-! ## A313602.P15848726095185717243

`or(A001221(A007854(n)), A313583(n))`
-/

namespace A313602.P15848726095185717243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A007854 n).toNat) (A313583 n)

end

end A313602.P15848726095185717243

/-! ## A313602.P17174410534638470294

`or(A001222(A087649(n)), A313583(n))`
-/

namespace A313602.P17174410534638470294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A087649 n).toNat) (A313583 n)

end

end A313602.P17174410534638470294

/-! ## A313602.P2001176295922289205

`or(A163351(A352589(n)), A313587(n))`
-/

namespace A313602.P2001176295922289205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A163351 (A352589 n).toNat) (A313587 n)

end

end A313602.P2001176295922289205

/-!
# A313603: Coordination sequence Gal.5.176.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313603, there is no canonical definition to state claims against.
-/

/-! ## A313603.P8778198862901718622

`A262290(n)+A234092(A096035(n+1))`
-/

namespace A313603.P8778198862901718622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262290 n + A234092 (A096035 (n + 1)).toNat

end

end A313603.P8778198862901718622

/-! ## A313603.P15404746584595240497

`A314825(n)+A177338(A221467(n+1))`
-/

namespace A313603.P15404746584595240497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + A177338 (A221467 (n + 1)).toNat

end

end A313603.P15404746584595240497

/-! ## A313603.P17147685977614221407

`A314066(n)-A253559(A007097(n)+1)`
-/

namespace A313603.P17147685977614221407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314066 n - A253559 (A007097 n + 1).toNat

end

end A313603.P17147685977614221407

/-! ## A313603.P17777551909617492071

`A047363(A256141(n))+A020639(A324138(n))+4*n`
-/

namespace A313603.P17777551909617492071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (A256141 n).toNat + (A020639 (A324138 n).toNat + (4 * n : ℤ))

end

end A313603.P17777551909617492071

/-!
# A313604: Coordination sequence Gal.5.167.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313604, there is no canonical definition to state claims against.
-/

/-! ## A313604.P5473374255255285094

`eq[A103491(A004736(n+1)), A113072(2*n+1)]`
-/

namespace A313604.P5473374255255285094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103491 (A004736 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113072 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313604.P5473374255255285094

/-! ## A313604.P15381828404525287258

`A312170(n)+A001221(A005493(n))`
-/

namespace A313604.P15381828404525287258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312170 n + A001221 (A005493 n).toNat

end

end A313604.P15381828404525287258

/-! ## A313604.P2631650768998615083

`A291154(A291154(n+1))+A174956(n+2)`
-/

namespace A313604.P2631650768998615083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (A291154 (n + 1)).toNat + A174956 (n + 2)

end

end A313604.P2631650768998615083

/-!
# A313605: Coordination sequence Gal.5.200.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313605, there is no canonical definition to state claims against.
-/

/-! ## A313605.P7133939632722081266

`A172367(n+1)+A029837(A215512(n))`
-/

namespace A313605.P7133939632722081266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) + A029837 (A215512 n).toNat

end

end A313605.P7133939632722081266

/-! ## A313605.P5804682168087872525

`A315733(n)-A001222(A147942(n+1))`
-/

namespace A313605.P5804682168087872525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315733 n - A001222 (A147942 (n + 1)).toNat

end

end A313605.P5804682168087872525

/-! ## A313605.P2490086898967986213

`A313833(n)-A244415(A179147(n+1))`
-/

namespace A313605.P2490086898967986213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313833 n - A244415 (A179147 (n + 1)).toNat

end

end A313605.P2490086898967986213

/-! ## A313605.P5496628513018107667

`A266082(A052816(3*n))+A070881(n+1)`
-/

namespace A313605.P5496628513018107667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266082 (A052816 (3 * n)).toNat + A070881 (n + 1)

end

end A313605.P5496628513018107667

/-!
# A313606: Coordination sequence Gal.6.294.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313606, there is no canonical definition to state claims against.
-/

/-! ## A313606.P1378127902917298457

`A293435(A000110(n))+A016813(n)`
-/

namespace A313606.P1378127902917298457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (A000110 n).toNat + A016813 n

end

end A313606.P1378127902917298457

/-! ## A313606.P8338155675806216479

`A311570(n)+A001221(A026850(n+1))`
-/

namespace A313606.P8338155675806216479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311570 n + A001221 (A026850 (n + 1)).toNat

end

end A313606.P8338155675806216479

/-! ## A313606.P8530418985331149064

`A341693(n+1)-A341612(A246854(n+1))`
-/

namespace A313606.P8530418985331149064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341693 (n + 1) - A341612 (A246854 (n + 1)).toNat

end

end A313606.P8530418985331149064

/-! ## A313606.P17933061181777507913

`A341693(n+1)-A284388(A026327(n+2))`
-/

namespace A313606.P17933061181777507913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341693 (n + 1) - A284388 (A026327 (n + 2)).toNat

end

end A313606.P17933061181777507913

/-! ## A313606.P16732556242573522983

`A302242(A027891(n+1))+A005187(2*n+1)`
-/

namespace A313606.P16732556242573522983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A027891 (n + 1)).toNat + A005187 (2 * n + 1)

end

end A313606.P16732556242573522983

/-!
# A313607: Coordination sequence Gal.6.280.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313607, there is no canonical definition to state claims against.
-/

/-! ## A313607.P3208389593842420818

`A301299(n)+A051903(A256142(n))`
-/

namespace A313607.P3208389593842420818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A051903 (A256142 n).toNat

end

end A313607.P3208389593842420818

/-! ## A313607.P5442233266949970462

`A314751(n)+A284939(A053617(n))`
-/

namespace A313607.P5442233266949970462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314751 n + A284939 (A053617 n).toNat

end

end A313607.P5442233266949970462

/-! ## A313607.P2509652657063283156

`A314088(n)-A191261(A124303(n))`
-/

namespace A313607.P2509652657063283156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314088 n - A191261 (A124303 n).toNat

end

end A313607.P2509652657063283156

/-! ## A313607.P4890772368447346191

`A163352(A014486(n))+A156037(n+2)`
-/

namespace A313607.P4890772368447346191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A014486 n).toNat + A156037 (n + 2)

end

end A313607.P4890772368447346191

/-! ## A313607.P11216636815027329576

`A008574(n)+n-A346705(A002530(n))`
-/

namespace A313607.P11216636815027329576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A346705 (A002530 n).toNat)

end

end A313607.P11216636815027329576

/-!
# A313608: Coordination sequence Gal.6.189.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313608, there is no canonical definition to state claims against.
-/

/-! ## A313608.P20118684607315638

`A246600(A002182(2*n+1))+A008586(n)`
-/

namespace A313608.P20118684607315638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (A002182 (2 * n + 1)).toNat + A008586 n

end

end A313608.P20118684607315638

/-! ## A313608.P13613279896549498150

`A001511(A072856(n))+4*n`
-/

namespace A313608.P13613279896549498150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A072856 n).toNat + (4 * n : ℤ)

end

end A313608.P13613279896549498150

/-! ## A313608.P5856977831826879215

`A100007(A100025(n))+4*n`
-/

namespace A313608.P5856977831826879215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100007 (A100025 n).toNat + (4 * n : ℤ)

end

end A313608.P5856977831826879215

/-! ## A313608.P7380802887563001089

`A190448(n+1)-A190445(3^n)`
-/

namespace A313608.P7380802887563001089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190448 (n + 1) - A190445 (3 ^ n)

end

end A313608.P7380802887563001089

/-! ## A313608.P8210568960079637476

`A008586(n)+A001511(A072856(n))`
-/

namespace A313608.P8210568960079637476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A001511 (A072856 n).toNat

end

end A313608.P8210568960079637476

/-!
# A313609: Coordination sequence Gal.6.173.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313609, there is no canonical definition to state claims against.
-/

/-! ## A313609.P13821790399569792447

`A313610(n)-A144569(A157148(n))`
-/

namespace A313609.P13821790399569792447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313610 n - A144569 (A157148 n).toNat

end

end A313609.P13821790399569792447

/-! ## A313609.P2659450647139481235

`A102442(n+1)+A313550(n)+A007814(A020230(n+1))`
-/

namespace A313609.P2659450647139481235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102442 (n + 1) + (A313550 n + A007814 (A020230 (n + 1)).toNat)

end

end A313609.P2659450647139481235

/-! ## A313609.P10524751549561940149

`eq[comp[∑[2*n]]%2, A245795(n)]+2*n+1`
-/

namespace A313609.P10524751549561940149
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f4 j) n + (2 * n + 1)

end

end A313609.P10524751549561940149

/-! ## A313609.P1104047563781595288

`A312039(n)+A001221(A271260(n))`
-/

namespace A313609.P1104047563781595288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312039 n + A001221 (A271260 n).toNat

end

end A313609.P1104047563781595288

/-! ## A313609.P14383983602748740384

`A005117(3*n+2)-A000120(A012231(n))`
-/

namespace A313609.P14383983602748740384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A000120 (A012231 n).toNat

end

end A313609.P14383983602748740384

/-!
# A313610: Coordination sequence Gal.5.136.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313610, the canonical program `A313610.P10900153276771282228` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313610 has offset 0).

The definition of A313610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2426 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313610.P10900153276771282228

`A314708(n)+Δ[A011858(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313610

/-- `A314708(n)+Δ[A011858(n)]` -/
def P10900153276771282228.Spec : Prop :=
  ∀ n, P10900153276771282228.a n = A313610 n

theorem P10900153276771282228.correct : P10900153276771282228.Spec := by
  intro n
  simp only [A313610]

end A313610

/-! ## A313610.P11185553106400058018

`A314708(n)+A134119(2*n)`
-/

namespace A313610.P11185553106400058018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n + A134119 (2 * n)

end

end A313610.P11185553106400058018

namespace A313610

/-- `A314708(n)+A134119(2*n)` -/
def P11185553106400058018.Spec : Prop :=
  ∀ n, P11185553106400058018.a n = A313610 n

end A313610

/-! ## A313610.P10256018562589529218

`A040001(n)*A313568(A026741(n))`
-/

namespace A313610.P10256018562589529218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A313568 (A026741 n).toNat

end

end A313610.P10256018562589529218

namespace A313610

/-- `A040001(n)*A313568(A026741(n))` -/
def P10256018562589529218.Spec : Prop :=
  ∀ n, P10256018562589529218.a n = A313610 n

end A313610

/-! ## A313610.P5766840924595709071

`A040001(n)*A313568(n/A040001(n))`
-/

namespace A313610.P5766840924595709071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A313568 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

end

end A313610.P5766840924595709071

namespace A313610

/-- `A040001(n)*A313568(n/A040001(n))` -/
def P5766840924595709071.Spec : Prop :=
  ∀ n, P5766840924595709071.a n = A313610 n

end A313610

/-! ## A313610.P3277700667375735527

`A330025(n)+A312979(n)`
-/

namespace A313610.P3277700667375735527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A312979 n

end

end A313610.P3277700667375735527

namespace A313610

/-- `A330025(n)+A312979(n)` -/
def P3277700667375735527.Spec : Prop :=
  ∀ n, P3277700667375735527.a n = A313610 n

end A313610

/-! ## A313610.P6795717854061372238

`A314020(n)+A014019(n+3)`
-/

namespace A313610.P6795717854061372238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314020 n + A014019 (n + 3)

end

end A313610.P6795717854061372238

namespace A313610

/-- `A314020(n)+A014019(n+3)` -/
def P6795717854061372238.Spec : Prop :=
  ∀ n, P6795717854061372238.a n = A313610 n

end A313610

/-! ## A313610.P11838538636469132074

`abs(A008592(n)-A313842(n))`
-/

namespace A313610.P11838538636469132074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313842 n|

end

end A313610.P11838538636469132074

namespace A313610

/-- `abs(A008592(n)-A313842(n))` -/
def P11838538636469132074.Spec : Prop :=
  ∀ n, P11838538636469132074.a n = A313610 n

end A313610

/-! ## A313610.P4644354106042241796

`2*A008706(n)-A313842(n)`
-/

namespace A313610.P4644354106042241796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313842 n

end

end A313610.P4644354106042241796

namespace A313610

/-- `2*A008706(n)-A313842(n)` -/
def P4644354106042241796.Spec : Prop :=
  ∀ n, P4644354106042241796.a n = A313610 n

end A313610

/-! ## A313610.P5968103047759317551

`A008458(n)+A008574(n)-A313842(n)`
-/

namespace A313610.P5968103047759317551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313842 n)

end

end A313610.P5968103047759317551

namespace A313610

/-- `A008458(n)+A008574(n)-A313842(n)` -/
def P5968103047759317551.Spec : Prop :=
  ∀ n, P5968103047759317551.a n = A313610 n

end A313610

/-! ## A313610.P7585253651382970782

`A313842(n)-A005843(A313842(n)-A008706(n))`
-/

namespace A313610.P7585253651382970782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313842 n - A005843 (A313842 n - A008706 n).toNat

end

end A313610.P7585253651382970782

namespace A313610

/-- `A313842(n)-A005843(A313842(n)-A008706(n))` -/
def P7585253651382970782.Spec : Prop :=
  ∀ n, P7585253651382970782.a n = A313610 n

end A313610

/-! ## A313610.P11233208306432184206

`A008574(n)+A315536(n)-A250120(n)`
-/

namespace A313610.P11233208306432184206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315536 n - A250120 n)

end

end A313610.P11233208306432184206

namespace A313610

/-- `A008574(n)+A315536(n)-A250120(n)` -/
def P11233208306432184206.Spec : Prop :=
  ∀ n, P11233208306432184206.a n = A313610 n

end A313610

/-! ## A313610.P456892064615565443

`A005843(A008706(n))-A313842(n)`
-/

namespace A313610.P456892064615565443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313842 n

end

end A313610.P456892064615565443

namespace A313610

/-- `A005843(A008706(n))-A313842(n)` -/
def P456892064615565443.Spec : Prop :=
  ∀ n, P456892064615565443.a n = A313610 n

end A313610

/-! ## A313610.P12685621770632385271

`A313719(n*A000034(n))/A000034(n)`
-/

namespace A313610.P12685621770632385271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313719 ((n : ℤ) * A000034 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A313610.P12685621770632385271

namespace A313610

/-- `A313719(n*A000034(n))/A000034(n)` -/
def P12685621770632385271.Spec : Prop :=
  ∀ n, P12685621770632385271.a n = (A313610 n : ℚ)

end A313610

/-! ## A313610.P15638705322697722978

`A313506(A008585(n))-9*n`
-/

namespace A313610.P15638705322697722978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 (A008585 n).toNat - (9 * n : ℤ)

end

end A313610.P15638705322697722978

namespace A313610

/-- `A313506(A008585(n))-9*n` -/
def P15638705322697722978.Spec : Prop :=
  ∀ n, P15638705322697722978.a n = A313610 n

end A313610

/-!
# A313611: Coordination sequence Gal.6.337.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313611, the canonical program `A313611.P14084562864274338654` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313611 has offset 0).

The definition of A313611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313611.P15938144262264710781

`A008706(n)-Δ[A011865(n)]`
-/

namespace A313611.P15938144262264710781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (f1 (n + 1) - f1 n)

end

end A313611.P15938144262264710781

namespace A313611

/-- `A008706(n)-Δ[A011865(n)]` -/
def P15938144262264710781.Spec : Prop :=
  ∀ n, P15938144262264710781.a n = A313611 n

end A313611

/-! ## A313611.P1227464268761491018

`A312969(n)+A004525(A004396(n))`
-/

namespace A313611.P1227464268761491018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n + A004525 (A004396 n).toNat

end

end A313611.P1227464268761491018

namespace A313611

/-- `A312969(n)+A004525(A004396(n))` -/
def P1227464268761491018.Spec : Prop :=
  ∀ n, P1227464268761491018.a n = A313611 n

end A313611

/-! ## A313611.P14084562864274338654

`A004525(n)+A313540(n)-A004396(A004525(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313611

/-- `A004525(n)+A313540(n)-A004396(A004525(n))` -/
def P14084562864274338654.Spec : Prop :=
  ∀ n, P14084562864274338654.a n = A313611 n

theorem P14084562864274338654.correct : P14084562864274338654.Spec := by
  intro n
  simp only [A313611]

end A313611

/-! ## A313611.P16468605114271148768

`A315425(n)-A004396(A004525(n))`
-/

namespace A313611.P16468605114271148768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315425 n - A004396 (A004525 n).toNat

end

end A313611.P16468605114271148768

namespace A313611

/-- `A315425(n)-A004396(A004525(n))` -/
def P16468605114271148768.Spec : Prop :=
  ∀ n, P16468605114271148768.a n = A313611 n

end A313611

/-! ## A313611.P13293469580532727916

`abs(A008592(n)-A313837(n))`
-/

namespace A313611.P13293469580532727916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313837 n|

end

end A313611.P13293469580532727916

namespace A313611

/-- `abs(A008592(n)-A313837(n))` -/
def P13293469580532727916.Spec : Prop :=
  ∀ n, P13293469580532727916.a n = A313611 n

end A313611

/-! ## A313611.P12055219602567769056

`A008458(n)+A008574(n)-A313837(n)`
-/

namespace A313611.P12055219602567769056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313837 n)

end

end A313611.P12055219602567769056

namespace A313611

/-- `A008458(n)+A008574(n)-A313837(n)` -/
def P12055219602567769056.Spec : Prop :=
  ∀ n, P12055219602567769056.a n = A313611 n

end A313611

/-! ## A313611.P4469804951576686274

`A314043(n)-A004396(n-A004525(n))`
-/

namespace A313611.P4469804951576686274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314043 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A313611.P4469804951576686274

namespace A313611

/-- `A314043(n)-A004396(n-A004525(n))` -/
def P4469804951576686274.Spec : Prop :=
  ∀ n, P4469804951576686274.a n = A313611 n

end A313611

/-! ## A313611.P16917247293351500992

`A314048(n)-∑[A022003(n)]`
-/

namespace A313611.P16917247293351500992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314048 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313611.P16917247293351500992

namespace A313611

/-- `A314048(n)-∑[A022003(n)]` -/
def P16917247293351500992.Spec : Prop :=
  ∀ n, P16917247293351500992.a n = A313611 n

end A313611

/-! ## A313611.P6765354054346442482

`A314048(n)-A002264(n+1)`
-/

namespace A313611.P6765354054346442482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314048 n - A002264 (n + 1)

end

end A313611.P6765354054346442482

namespace A313611

/-- `A314048(n)-A002264(n+1)` -/
def P6765354054346442482.Spec : Prop :=
  ∀ n, P6765354054346442482.a n = A313611 n

end A313611

/-! ## A313611.P5592218210030216948

`A004396(n)+A314048(n)-n`
-/

namespace A313611.P5592218210030216948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314048 n - (n : ℤ))

end

end A313611.P5592218210030216948

namespace A313611

/-- `A004396(n)+A314048(n)-n` -/
def P5592218210030216948.Spec : Prop :=
  ∀ n, P5592218210030216948.a n = A313611 n

end A313611

/-! ## A313611.P66300279884563925

`A008576(n)+A314048(n)-A008486(n)`
-/

namespace A313611.P66300279884563925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314048 n - A008486 n)

end

end A313611.P66300279884563925

namespace A313611

/-- `A008576(n)+A314048(n)-A008486(n)` -/
def P66300279884563925.Spec : Prop :=
  ∀ n, P66300279884563925.a n = A313611 n

end A313611

/-! ## A313611.P9786138940060940018

`A314142(n)-∑[A021913(n)]`
-/

namespace A313611.P9786138940060940018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314142 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313611.P9786138940060940018

namespace A313611

/-- `A314142(n)-∑[A021913(n)]` -/
def P9786138940060940018.Spec : Prop :=
  ∀ n, P9786138940060940018.a n = A313611 n

end A313611

/-! ## A313611.P15291749676213138295

`A314142(n)-Δ[A011848(n)]`
-/

namespace A313611.P15291749676213138295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314142 n - (f1 (n + 1) - f1 n)

end

end A313611.P15291749676213138295

namespace A313611

/-- `A314142(n)-Δ[A011848(n)]` -/
def P15291749676213138295.Spec : Prop :=
  ∀ n, P15291749676213138295.a n = A313611 n

end A313611

/-! ## A313611.P12270059954729210081

`A004525(n)+A314142(n)-n`
-/

namespace A313611.P12270059954729210081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314142 n - (n : ℤ))

end

end A313611.P12270059954729210081

namespace A313611

/-- `A004525(n)+A314142(n)-n` -/
def P12270059954729210081.Spec : Prop :=
  ∀ n, P12270059954729210081.a n = A313611 n

end A313611

/-!
# A313612: Coordination sequence Gal.6.268.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313612, there is no canonical definition to state claims against.
-/

/-! ## A313612.P11332781862514906592

`A313613(n)-A010054(A321456(n+1))`
-/

namespace A313612.P11332781862514906592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n - A010054 (A321456 (n + 1)).toNat

end

end A313612.P11332781862514906592

/-! ## A313612.P11188759016136020828

`A313611(n)+A101637(A071810(n+1))`
-/

namespace A313612.P11188759016136020828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n + A101637 (A071810 (n + 1)).toNat

end

end A313612.P11188759016136020828

/-! ## A313612.P5194100900451731612

`A313613(n)-A324824(A329070(n))`
-/

namespace A313612.P5194100900451731612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n - A324824 (A329070 n).toNat

end

end A313612.P5194100900451731612

/-! ## A313612.P10300003084209992727

`A313613(n)+A016229(A000204(n+1))`
-/

namespace A313612.P10300003084209992727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n + A016229 (A000204 (n + 1)).toNat

end

end A313612.P10300003084209992727

/-! ## A313612.P4921467388559679246

`A310410(n)+A060175(A344608(3*(n+1)))`
-/

namespace A313612.P4921467388559679246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310410 n + A060175 (A344608 (3 * (n + 1))).toNat

end

end A313612.P4921467388559679246

/-!
# A313613: Coordination sequence Gal.4.72.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313613, the canonical program `A313613.P7914765852516180846` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313613 has offset 0).

The definition of A313613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313613.P11382877514273143501

`A315032(n)-A238468(n)`
-/

namespace A313613.P11382877514273143501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315032 n - A238468 n

end

end A313613.P11382877514273143501

namespace A313613

/-- `A315032(n)-A238468(n)` -/
def P11382877514273143501.Spec : Prop :=
  ∀ n, P11382877514273143501.a n = A313613 n

end A313613

/-! ## A313613.P7914765852516180846

`A074232(A008574(n)-n)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313613

/-- `A074232(A008574(n)-n)+n` -/
def P7914765852516180846.Spec : Prop :=
  ∀ n, P7914765852516180846.a n = A313613 n

theorem P7914765852516180846.correct : P7914765852516180846.Spec := by
  intro n
  simp only [A313613]

end A313613

/-! ## A313613.P6677258309937628182

`A310411(n)+A238469(n)`
-/

namespace A313613.P6677258309937628182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310411 n + A238469 n

end

end A313613.P6677258309937628182

namespace A313613

/-- `A310411(n)+A238469(n)` -/
def P6677258309937628182.Spec : Prop :=
  ∀ n, P6677258309937628182.a n = A313613 n

end A313613

/-! ## A313613.P6474156127828621667

`A310411(n)+A238470(2*n)`
-/

namespace A313613.P6474156127828621667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310411 n + A238470 (2 * n)

end

end A313613.P6474156127828621667

namespace A313613

/-- `A310411(n)+A238470(2*n)` -/
def P6474156127828621667.Spec : Prop :=
  ∀ n, P6474156127828621667.a n = A313613 n

end A313613

/-! ## A313613.P2407790230540829164

`A315204(n)-A238469(n)`
-/

namespace A313613.P2407790230540829164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315204 n - A238469 n

end

end A313613.P2407790230540829164

namespace A313613

/-- `A315204(n)-A238469(n)` -/
def P2407790230540829164.Spec : Prop :=
  ∀ n, P2407790230540829164.a n = A313613 n

end A313613

/-! ## A313613.P5994797577623620987

`A314954(n)+A238470(n)`
-/

namespace A313613.P5994797577623620987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314954 n + A238470 n

end

end A313613.P5994797577623620987

namespace A313613

/-- `A314954(n)+A238470(n)` -/
def P5994797577623620987.Spec : Prop :=
  ∀ n, P5994797577623620987.a n = A313613 n

end A313613

/-! ## A313613.P4458403847044006839

`A313694(n)+A238469(2*n)`
-/

namespace A313613.P4458403847044006839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313694 n + A238469 (2 * n)

end

end A313613.P4458403847044006839

namespace A313613

/-- `A313694(n)+A238469(2*n)` -/
def P4458403847044006839.Spec : Prop :=
  ∀ n, P4458403847044006839.a n = A313613 n

end A313613

/-! ## A313613.P14759531610466416159

`A314065(n)-Δ[A011858(n)]`
-/

namespace A313613.P14759531610466416159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314065 n - (f1 (n + 1) - f1 n)

end

end A313613.P14759531610466416159

namespace A313613

/-- `A314065(n)-Δ[A011858(n)]` -/
def P14759531610466416159.Spec : Prop :=
  ∀ n, P14759531610466416159.a n = A313613 n

end A313613

/-! ## A313613.P11016145704660613767

`A145569(A008458(n)-n)+A057358(n)`
-/

namespace A313613.P11016145704660613767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A008458 n - (n : ℤ)).toNat + A057358 n

end

end A313613.P11016145704660613767

namespace A313613

/-- `A145569(A008458(n)-n)+A057358(n)` -/
def P11016145704660613767.Spec : Prop :=
  ∀ n, P11016145704660613767.a n = A313613 n

end A313613

/-! ## A313613.P16700626673540180415

`abs(A008592(n)-A313836(n))`
-/

namespace A313613.P16700626673540180415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313836 n|

end

end A313613.P16700626673540180415

namespace A313613

/-- `abs(A008592(n)-A313836(n))` -/
def P16700626673540180415.Spec : Prop :=
  ∀ n, P16700626673540180415.a n = A313613 n

end A313613

/-! ## A313613.P13032947113284116605

`2*A008706(n)-A313836(n)`
-/

namespace A313613.P13032947113284116605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313836 n

end

end A313613.P13032947113284116605

namespace A313613

/-- `2*A008706(n)-A313836(n)` -/
def P13032947113284116605.Spec : Prop :=
  ∀ n, P13032947113284116605.a n = A313613 n

end A313613

/-! ## A313613.P7069417131910309291

`A008458(n)+A008574(n)-A313836(n)`
-/

namespace A313613.P7069417131910309291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313836 n)

end

end A313613.P7069417131910309291

namespace A313613

/-- `A008458(n)+A008574(n)-A313836(n)` -/
def P7069417131910309291.Spec : Prop :=
  ∀ n, P7069417131910309291.a n = A313613 n

end A313613

/-! ## A313613.P14901189425813250016

`A005843(A008458(n)-n)-A313836(n)`
-/

namespace A313613.P14901189425813250016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313836 n

end

end A313613.P14901189425813250016

namespace A313613

/-- `A005843(A008458(n)-n)-A313836(n)` -/
def P14901189425813250016.Spec : Prop :=
  ∀ n, P14901189425813250016.a n = A313613 n

end A313613

/-! ## A313613.P3390047154832280330

`∑{d}[A008592(n)-A313836(n), A000010(#)]`
-/

namespace A313613.P3390047154832280330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313613.P3390047154832280330

namespace A313613

/-- `∑{d}[A008592(n)-A313836(n), A000010(#)]` -/
def P3390047154832280330.Spec : Prop :=
  ∀ n, P3390047154832280330.a n = A313613 n

end A313613

/-! ## A313613.P11239726853481357959

`∏{d}[A008592(n)-A313836(n), A014963(#)]`
-/

namespace A313613.P11239726853481357959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A313613.P11239726853481357959

namespace A313613

/-- `∏{d}[A008592(n)-A313836(n), A014963(#)]` -/
def P11239726853481357959.Spec : Prop :=
  ∀ n, P11239726853481357959.a n = A313613 n

end A313613

/-! ## A313613.P6314320264200645656

`A315204(2*n)/A020639(A315204(n))`
-/

namespace A313613.P6314320264200645656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315204 (2 * n) : ℚ) / (A020639 (A315204 n).toNat : ℚ)

end

end A313613.P6314320264200645656

namespace A313613

/-- `A315204(2*n)/A020639(A315204(n))` -/
def P6314320264200645656.Spec : Prop :=
  ∀ n, P6314320264200645656.a n = (A313613 n : ℚ)

end A313613

/-! ## A313613.P7317766281416367467

`A315490(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313613.P7317766281416367467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315490 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313613.P7317766281416367467

namespace A313613

/-- `A315490(2*n)+A008458(n+1)-(12*n+6)` -/
def P7317766281416367467.Spec : Prop :=
  ∀ n, P7317766281416367467.a n = A313613 n

end A313613

/-!
# A313614: Coordination sequence Gal.5.129.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313614, the canonical program `A313614.P17499972432936715973` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313614 has offset 0).

The definition of A313614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2384 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313614.P17499972432936715973

`A312932(n)+A004396(A004396(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313614

/-- `A312932(n)+A004396(A004396(n))` -/
def P17499972432936715973.Spec : Prop :=
  ∀ n, P17499972432936715973.a n = A313614 n

theorem P17499972432936715973.correct : P17499972432936715973.Spec := by
  intro n
  simp only [A313614]

end A313614

/-! ## A313614.P5446878096641888766

`A314051(n)-∑[A022003(n)]`
-/

namespace A313614.P5446878096641888766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314051 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313614.P5446878096641888766

namespace A313614

/-- `A314051(n)-∑[A022003(n)]` -/
def P5446878096641888766.Spec : Prop :=
  ∀ n, P5446878096641888766.a n = A313614 n

end A313614

/-! ## A313614.P10778388821361058696

`A314051(n)-A008615(2*n+1)`
-/

namespace A313614.P10778388821361058696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314051 n - A008615 (2 * n + 1)

end

end A313614.P10778388821361058696

namespace A313614

/-- `A314051(n)-A008615(2*n+1)` -/
def P10778388821361058696.Spec : Prop :=
  ∀ n, P10778388821361058696.a n = A313614 n

end A313614

/-! ## A313614.P10839040229853418044

`A008576(n)+A314051(n)-A008486(n)`
-/

namespace A313614.P10839040229853418044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314051 n - A008486 n)

end

end A313614.P10839040229853418044

namespace A313614

/-- `A008576(n)+A314051(n)-A008486(n)` -/
def P10839040229853418044.Spec : Prop :=
  ∀ n, P10839040229853418044.a n = A313614 n

end A313614

/-! ## A313614.P16464376602109085885

`abs(A008592(n)-A313835(n))`
-/

namespace A313614.P16464376602109085885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313835 n|

end

end A313614.P16464376602109085885

namespace A313614

/-- `abs(A008592(n)-A313835(n))` -/
def P16464376602109085885.Spec : Prop :=
  ∀ n, P16464376602109085885.a n = A313614 n

end A313614

/-! ## A313614.P1449042274913945994

`A008458(n)+A008574(n)-A313835(n)`
-/

namespace A313614.P1449042274913945994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313835 n)

end

end A313614.P1449042274913945994

namespace A313614

/-- `A008458(n)+A008574(n)-A313835(n)` -/
def P1449042274913945994.Spec : Prop :=
  ∀ n, P1449042274913945994.a n = A313614 n

end A313614

/-! ## A313614.P486202302972790763

`A313773(n)-Δ[A011862(n)]`
-/

namespace A313614.P486202302972790763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313773 n - (f1 (n + 1) - f1 n)

end

end A313614.P486202302972790763

namespace A313614

/-- `A313773(n)-Δ[A011862(n)]` -/
def P486202302972790763.Spec : Prop :=
  ∀ n, P486202302972790763.a n = A313614 n

end A313614

/-! ## A313614.P4782411016780126489

`A004396(A004396(n))+A313773(n)-A004396(n)`
-/

namespace A313614.P4782411016780126489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A313773 n - A004396 n)

end

end A313614.P4782411016780126489

namespace A313614

/-- `A004396(A004396(n))+A313773(n)-A004396(n)` -/
def P4782411016780126489.Spec : Prop :=
  ∀ n, P4782411016780126489.a n = A313614 n

end A313614

/-! ## A313614.P16768725017901227675

`A315706(n)-A004396(A004396(2*n))`
-/

namespace A313614.P16768725017901227675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 n - A004396 (A004396 (2 * n)).toNat

end

end A313614.P16768725017901227675

namespace A313614

/-- `A315706(n)-A004396(A004396(2*n))` -/
def P16768725017901227675.Spec : Prop :=
  ∀ n, P16768725017901227675.a n = A313614 n

end A313614

/-! ## A313614.P4212837687945115998

`A004396(n)+A004396(A314067(n)+n)`
-/

namespace A313614.P4212837687945115998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A314067 n + (n : ℤ)).toNat

end

end A313614.P4212837687945115998

namespace A313614

/-- `A004396(n)+A004396(A314067(n)+n)` -/
def P4212837687945115998.Spec : Prop :=
  ∀ n, P4212837687945115998.a n = A313614 n

end A313614

/-! ## A313614.P11941352621644629920

`A004396(A314067(n)+2*n)`
-/

namespace A313614.P11941352621644629920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314067 n + (2 * n : ℤ)).toNat

end

end A313614.P11941352621644629920

namespace A313614

/-- `A004396(A314067(n)+2*n)` -/
def P11941352621644629920.Spec : Prop :=
  ∀ n, P11941352621644629920.a n = A313614 n

end A313614

/-! ## A313614.P7632653116654105241

`A004396(A314067(n)+n+n)`
-/

namespace A313614.P7632653116654105241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314067 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313614.P7632653116654105241

namespace A313614

/-- `A004396(A314067(n)+n+n)` -/
def P7632653116654105241.Spec : Prop :=
  ∀ n, P7632653116654105241.a n = A313614 n

end A313614

/-! ## A313614.P17681409869024134786

`A313026(2*n)-4*n`
-/

namespace A313614.P17681409869024134786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 (2 * n) - (4 * n : ℤ)

end

end A313614.P17681409869024134786

namespace A313614

/-- `A313026(2*n)-4*n` -/
def P17681409869024134786.Spec : Prop :=
  ∀ n, P17681409869024134786.a n = A313614 n

end A313614

/-! ## A313614.P7364985321636228856

`A310493(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A313614.P7364985321636228856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310493 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A313614.P7364985321636228856

namespace A313614

/-- `A310493(2*n)/(4*n+2-A004277(2*n))` -/
def P7364985321636228856.Spec : Prop :=
  ∀ n, P7364985321636228856.a n = (A313614 n : ℚ)

end A313614

/-! ## A313614.P9242638037913970146

`A313721(2*n)+A313703(n+1)-A313703(2*n+1)`
-/

namespace A313614.P9242638037913970146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 (2 * n) + (A313703 (n + 1) - A313703 (2 * n + 1))

end

end A313614.P9242638037913970146

namespace A313614

/-- `A313721(2*n)+A313703(n+1)-A313703(2*n+1)` -/
def P9242638037913970146.Spec : Prop :=
  ∀ n, P9242638037913970146.a n = A313614 n

end A313614

/-! ## A313614.P5584439070337852912

`2*A008574(2*n)-A315495(2*n)`
-/

namespace A313614.P5584439070337852912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315495 (2 * n)

end

end A313614.P5584439070337852912

namespace A313614

/-- `2*A008574(2*n)-A315495(2*n)` -/
def P5584439070337852912.Spec : Prop :=
  ∀ n, P5584439070337852912.a n = A313614 n

end A313614

/-! ## A313614.P3681778424871815962

`A004396(A313201(2*n))-A004396(2*n)`
-/

namespace A313614.P3681778424871815962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313201 (2 * n)).toNat - A004396 (2 * n)

end

end A313614.P3681778424871815962

namespace A313614

/-- `A004396(A313201(2*n))-A004396(2*n)` -/
def P3681778424871815962.Spec : Prop :=
  ∀ n, P3681778424871815962.a n = A313614 n

end A313614

/-! ## A313614.P4233422334173834080

`A004525(A310493(2*n))`
-/

namespace A313614.P4233422334173834080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310493 (2 * n)).toNat

end

end A313614.P4233422334173834080

namespace A313614

/-- `A004525(A310493(2*n))` -/
def P4233422334173834080.Spec : Prop :=
  ∀ n, P4233422334173834080.a n = A313614 n

end A313614

/-! ## A313614.P12476178829556386575

`A004526(A310493(2*n)+1)`
-/

namespace A313614.P12476178829556386575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310493 (2 * n) + 1).toNat

end

end A313614.P12476178829556386575

namespace A313614

/-- `A004526(A310493(2*n)+1)` -/
def P12476178829556386575.Spec : Prop :=
  ∀ n, P12476178829556386575.a n = A313614 n

end A313614

/-!
# A313615: Coordination sequence Gal.6.323.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313615, the canonical program `A313615.P7259322333454390986` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313615 has offset 0).

The definition of A313615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313615.P4504243743341713010

`A315492(2*n)-6*n`
-/

namespace A313615.P4504243743341713010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315492 (2 * n) - (6 * n : ℤ)

end

end A313615.P4504243743341713010

namespace A313615

/-- `A315492(2*n)-6*n` -/
def P4504243743341713010.Spec : Prop :=
  ∀ n, P4504243743341713010.a n = A313615 n

end A313615

/-! ## A313615.P7259322333454390986

`(A315208(n)+A310413(n))/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313615

/-- `(A315208(n)+A310413(n))/2` -/
def P7259322333454390986.Spec : Prop :=
  ∀ n, P7259322333454390986.a n = (A313615 n : ℚ)

end A313615

/-! ## A313615.P14413903296914850682

`abs(10*n-A313834(n))`
-/

namespace A313615.P14413903296914850682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313834 n|

end

end A313615.P14413903296914850682

namespace A313615

/-- `abs(10*n-A313834(n))` -/
def P14413903296914850682.Spec : Prop :=
  ∀ n, P14413903296914850682.a n = A313615 n

end A313615

/-! ## A313615.P16072948954369397027

`2*A008706(n)-A313834(n)`
-/

namespace A313615.P16072948954369397027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313834 n

end

end A313615.P16072948954369397027

namespace A313615

/-- `2*A008706(n)-A313834(n)` -/
def P16072948954369397027.Spec : Prop :=
  ∀ n, P16072948954369397027.a n = A313615 n

end A313615

/-! ## A313615.P6475240489498217964

`A008458(n)+A008574(n)-A313834(n)`
-/

namespace A313615.P6475240489498217964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313834 n)

end

end A313615.P6475240489498217964

namespace A313615

/-- `A008458(n)+A008574(n)-A313834(n)` -/
def P6475240489498217964.Spec : Prop :=
  ∀ n, P6475240489498217964.a n = A313615 n

end A313615

/-! ## A313615.P5016939156961044588

`A313834(n)-A005843(A313834(n)-A008706(n))`
-/

namespace A313615.P5016939156961044588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313834 n - A005843 (A313834 n - A008706 n).toNat

end

end A313615.P5016939156961044588

namespace A313615

/-- `A313834(n)-A005843(A313834(n)-A008706(n))` -/
def P5016939156961044588.Spec : Prop :=
  ∀ n, P5016939156961044588.a n = A313615 n

end A313615

/-! ## A313615.P2269019668283927624

`A313738(n)-Δ[A011864(n)]`
-/

namespace A313615.P2269019668283927624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313738 n - (f1 (n + 1) - f1 n)

end

end A313615.P2269019668283927624

namespace A313615

/-- `A313738(n)-Δ[A011864(n)]` -/
def P2269019668283927624.Spec : Prop :=
  ∀ n, P2269019668283927624.a n = A313615 n

end A313615

/-! ## A313615.P3160675755536457640

`A315709(n)-A004525(A315709(n)-A008574(n))`
-/

namespace A313615.P3160675755536457640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315709 n - A004525 (A315709 n - A008574 n).toNat

end

end A313615.P3160675755536457640

namespace A313615

/-- `A315709(n)-A004525(A315709(n)-A008574(n))` -/
def P3160675755536457640.Spec : Prop :=
  ∀ n, P3160675755536457640.a n = A313615 n

end A313615

/-! ## A313615.P15951393506649484632

`A005843(A008706(n))-A313834(n)`
-/

namespace A313615.P15951393506649484632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313834 n

end

end A313615.P15951393506649484632

namespace A313615

/-- `A005843(A008706(n))-A313834(n)` -/
def P15951393506649484632.Spec : Prop :=
  ∀ n, P15951393506649484632.a n = A313615 n

end A313615

/-! ## A313615.P12523685236905349099

`A008458(n)-A134119(A315730(n))`
-/

namespace A313615.P12523685236905349099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A134119 (A315730 n).toNat

end

end A313615.P12523685236905349099

namespace A313615

/-- `A008458(n)-A134119(A315730(n))` -/
def P12523685236905349099.Spec : Prop :=
  ∀ n, P12523685236905349099.a n = A313615 n

end A313615

/-! ## A313615.P14323503760655755698

`A065502(A008458(n))-A313834(n)`
-/

namespace A313615.P14323503760655755698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313834 n

end

end A313615.P14323503760655755698

namespace A313615

/-- `A065502(A008458(n))-A313834(n)` -/
def P14323503760655755698.Spec : Prop :=
  ∀ n, P14323503760655755698.a n = A313615 n

end A313615

/-! ## A313615.P8038162804407132753

`A065033(A315208(n)+A310413(n))`
-/

namespace A313615.P8038162804407132753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315208 n + A310413 n).toNat

end

end A313615.P8038162804407132753

namespace A313615

/-- `A065033(A315208(n)+A310413(n))` -/
def P8038162804407132753.Spec : Prop :=
  ∀ n, P8038162804407132753.a n = A313615 n

end A313615

/-! ## A313615.P12461346387525757513

`A065033(A310413(n)-(1-A315208(n)))`
-/

namespace A313615.P12461346387525757513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A310413 n - (1 - A315208 n)).toNat

end

end A313615.P12461346387525757513

namespace A313615

/-- `A065033(A310413(n)-(1-A315208(n)))` -/
def P12461346387525757513.Spec : Prop :=
  ∀ n, P12461346387525757513.a n = A313615 n

end A313615

/-! ## A313615.P16639137805041918761

`A233583(A017281(n))-A313834(n)`
-/

namespace A313615.P16639137805041918761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313834 n

end

end A313615.P16639137805041918761

namespace A313615

/-- `A233583(A017281(n))-A313834(n)` -/
def P16639137805041918761.Spec : Prop :=
  ∀ n, P16639137805041918761.a n = A313615 n

end A313615

/-!
# A313616: Coordination sequence Gal.4.57.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313616, there is no canonical definition to state claims against.
-/

/-! ## A313616.P396328115226458739

`A310413(n)+A277149(A017066(n))`
-/

namespace A313616.P396328115226458739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310413 n + A277149 (A017066 n).toNat

end

end A313616.P396328115226458739

/-! ## A313616.P2597092983276037126

`or(A003849(A079705(n+1)), A310413(n))`
-/

namespace A313616.P2597092983276037126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A079705 (n + 1)).toNat) (A310413 n)

end

end A313616.P2597092983276037126

/-! ## A313616.P13985081755545454362

`A310413(n)+A003849(A079705(n+1))*A003849(n)`
-/

namespace A313616.P13985081755545454362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310413 n + A003849 (A079705 (n + 1)).toNat * A003849 n

end

end A313616.P13985081755545454362

/-! ## A313616.P13095695333192350491

`A313615(n)+A267272(A229888(n))`
-/

namespace A313616.P13095695333192350491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313615 n + A267272 (A229888 n).toNat

end

end A313616.P13095695333192350491

/-! ## A313616.P10171722449804914459

`A008706(n)-A014306(A283043(n))`
-/

namespace A313616.P10171722449804914459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A014306 (A283043 n).toNat

end

end A313616.P10171722449804914459

/-!
# A313617: Coordination sequence Gal.6.573.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313617, there is no canonical definition to state claims against.
-/

/-! ## A313617.P33293883345632471

`A313519(n)+A275962(A192738(n))`
-/

namespace A313617.P33293883345632471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313519 n + A275962 (A192738 n).toNat

end

end A313617.P33293883345632471

/-! ## A313617.P13300501348728042496

`A000120(A321572(2*n+1))+4*n`
-/

namespace A313617.P13300501348728042496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A321572 (2 * n + 1)).toNat + (4 * n : ℤ)

end

end A313617.P13300501348728042496

/-! ## A313617.P16436871394350351686

`A301684(n)+A001221(A002001(n))`
-/

namespace A313617.P16436871394350351686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301684 n + A001221 (A002001 n).toNat

end

end A313617.P16436871394350351686

/-! ## A313617.P6434616422773955142

`A314946(n)+A010051(A000142(n))`
-/

namespace A313617.P6434616422773955142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314946 n + A010051 (A000142 n).toNat

end

end A313617.P6434616422773955142

/-! ## A313617.P868234661064124527

`A301684(n)+A001221(A167106(n))`
-/

namespace A313617.P868234661064124527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301684 n + A001221 (A167106 n).toNat

end

end A313617.P868234661064124527

/-!
# A313618: Coordination sequence Gal.5.152.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313618, there is no canonical definition to state claims against.
-/

/-! ## A313618.P1286184543032921279

`A005117(3*n+2)-A274105(A000055(n))`
-/

namespace A313618.P1286184543032921279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A274105 (A000055 n).toNat

end

end A313618.P1286184543032921279

/-! ## A313618.P12076620522575661675

`A016813(n)+A001222(A348597(n))`
-/

namespace A313618.P12076620522575661675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001222 (A348597 n).toNat

end

end A313618.P12076620522575661675

/-!
# A313619: Coordination sequence Gal.6.260.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313619, the canonical program `A313619.P4479225662466088296` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313619 has offset 0).

The definition of A313619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313619.P11782874826249666389

`A312926(n)+A004525(n)`
-/

namespace A313619.P11782874826249666389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + A004525 n

end

end A313619.P11782874826249666389

namespace A313619

/-- `A312926(n)+A004525(n)` -/
def P11782874826249666389.Spec : Prop :=
  ∀ n, P11782874826249666389.a n = A313619 n

end A313619

/-! ## A313619.P2350992635228475340

`A310452(n)+A101455(n)`
-/

namespace A313619.P2350992635228475340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310452 n + A101455 n

end

end A313619.P2350992635228475340

namespace A313619

/-- `A310452(n)+A101455(n)` -/
def P2350992635228475340.Spec : Prop :=
  ∀ n, P2350992635228475340.a n = A313619 n

end A313619

/-! ## A313619.P17781358563607518447

`A312926(n)+n-∑[A021913(n)]`
-/

namespace A313619.P17781358563607518447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313619.P17781358563607518447

namespace A313619

/-- `A312926(n)+n-∑[A021913(n)]` -/
def P17781358563607518447.Spec : Prop :=
  ∀ n, P17781358563607518447.a n = A313619 n

end A313619

/-! ## A313619.P5706504300880778769

`A312926(n)+n-Δ[A011848(n)]`
-/

namespace A313619.P5706504300880778769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313619.P5706504300880778769

namespace A313619

/-- `A312926(n)+n-Δ[A011848(n)]` -/
def P5706504300880778769.Spec : Prop :=
  ∀ n, P5706504300880778769.a n = A313619 n

end A313619

/-! ## A313619.P7239559724629102199

`A312969(n)+A004396(A004525(n))`
-/

namespace A313619.P7239559724629102199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n + A004396 (A004525 n).toNat

end

end A313619.P7239559724629102199

namespace A313619

/-- `A312969(n)+A004396(A004525(n))` -/
def P7239559724629102199.Spec : Prop :=
  ∀ n, P7239559724629102199.a n = A313619 n

end A313619

/-! ## A313619.P4479225662466088296

`A004525(n)+A313540(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313619

/-- `A004525(n)+A313540(n)-A004525(A004396(n))` -/
def P4479225662466088296.Spec : Prop :=
  ∀ n, P4479225662466088296.a n = A313619 n

theorem P4479225662466088296.correct : P4479225662466088296.Spec := by
  intro n
  simp only [A313619]

end A313619

/-! ## A313619.P942596150359605016

`A004525(n)+A313769(n)-A004396(n)`
-/

namespace A313619.P942596150359605016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313769 n - A004396 n)

end

end A313619.P942596150359605016

namespace A313619

/-- `A004525(n)+A313769(n)-A004396(n)` -/
def P942596150359605016.Spec : Prop :=
  ∀ n, P942596150359605016.a n = A313619 n

end A313619

/-! ## A313619.P3310041944186559078

`A313744(n)-Δ[A011865(n)]`
-/

namespace A313619.P3310041944186559078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313744 n - (f1 (n + 1) - f1 n)

end

end A313619.P3310041944186559078

namespace A313619

/-- `A313744(n)-Δ[A011865(n)]` -/
def P3310041944186559078.Spec : Prop :=
  ∀ n, P3310041944186559078.a n = A313619 n

end A313619

/-! ## A313619.P2441675699107027460

`A315425(n)-A004525(A004396(n))`
-/

namespace A313619.P2441675699107027460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315425 n - A004525 (A004396 n).toNat

end

end A313619.P2441675699107027460

namespace A313619

/-- `A315425(n)-A004525(A004396(n))` -/
def P2441675699107027460.Spec : Prop :=
  ∀ n, P2441675699107027460.a n = A313619 n

end A313619

/-! ## A313619.P2152850875687667984

`abs(A008592(n)-A313833(n))`
-/

namespace A313619.P2152850875687667984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313833 n|

end

end A313619.P2152850875687667984

namespace A313619

/-- `abs(A008592(n)-A313833(n))` -/
def P2152850875687667984.Spec : Prop :=
  ∀ n, P2152850875687667984.a n = A313619 n

end A313619

/-! ## A313619.P12354352974206404891

`A008458(n)+A008574(n)-A313833(n)`
-/

namespace A313619.P12354352974206404891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313833 n)

end

end A313619.P12354352974206404891

namespace A313619

/-- `A008458(n)+A008574(n)-A313833(n)` -/
def P12354352974206404891.Spec : Prop :=
  ∀ n, P12354352974206404891.a n = A313619 n

end A313619

/-! ## A313619.P14775524183697898945

`∑{d}[A008592(n)-A313833(n), A000010(#)]`
-/

namespace A313619.P14775524183697898945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313619.P14775524183697898945

namespace A313619

/-- `∑{d}[A008592(n)-A313833(n), A000010(#)]` -/
def P14775524183697898945.Spec : Prop :=
  ∀ n, P14775524183697898945.a n = A313619 n

end A313619

/-! ## A313619.P13717168421680883011

`A314048(n)-A004396(n-A004525(n))`
-/

namespace A313619.P13717168421680883011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314048 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A313619.P13717168421680883011

namespace A313619

/-- `A314048(n)-A004396(n-A004525(n))` -/
def P13717168421680883011.Spec : Prop :=
  ∀ n, P13717168421680883011.a n = A313619 n

end A313619

/-! ## A313619.P8569041712059831812

`A314144(n)-∑[A021913(n)]`
-/

namespace A313619.P8569041712059831812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313619.P8569041712059831812

namespace A313619

/-- `A314144(n)-∑[A021913(n)]` -/
def P8569041712059831812.Spec : Prop :=
  ∀ n, P8569041712059831812.a n = A313619 n

end A313619

/-! ## A313619.P1905290458274808220

`A314144(n)-Δ[A011848(n)]`
-/

namespace A313619.P1905290458274808220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n - (f1 (n + 1) - f1 n)

end

end A313619.P1905290458274808220

namespace A313619

/-- `A314144(n)-Δ[A011848(n)]` -/
def P1905290458274808220.Spec : Prop :=
  ∀ n, P1905290458274808220.a n = A313619 n

end A313619

/-! ## A313619.P17722470155285332515

`A004525(n)+A314144(n)-n`
-/

namespace A313619.P17722470155285332515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314144 n - (n : ℤ))

end

end A313619.P17722470155285332515

namespace A313619

/-- `A004525(n)+A314144(n)-n` -/
def P17722470155285332515.Spec : Prop :=
  ∀ n, P17722470155285332515.a n = A313619 n

end A313619

/-! ## A313619.P16194529834318193046

`A315540(n)-A004525(A004396(n)+n)`
-/

namespace A313619.P16194529834318193046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - A004525 (A004396 n + (n : ℤ)).toNat

end

end A313619.P16194529834318193046

namespace A313619

/-- `A315540(n)-A004525(A004396(n)+n)` -/
def P16194529834318193046.Spec : Prop :=
  ∀ n, P16194529834318193046.a n = A313619 n

end A313619

/-! ## A313619.P13147374298355747643

`A004525(n)+A004396(A310470(n))+n`
-/

namespace A313619.P13147374298355747643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A310470 n).toNat + (n : ℤ))

end

end A313619.P13147374298355747643

namespace A313619

/-- `A004525(n)+A004396(A310470(n))+n` -/
def P13147374298355747643.Spec : Prop :=
  ∀ n, P13147374298355747643.a n = A313619 n

end A313619

/-! ## A313619.P359197956590866839

`A004525(n)+A004396(A313778(n))+n`
-/

namespace A313619.P359197956590866839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A313778 n).toNat + (n : ℤ))

end

end A313619.P359197956590866839

namespace A313619

/-- `A004525(n)+A004396(A313778(n))+n` -/
def P359197956590866839.Spec : Prop :=
  ∀ n, P359197956590866839.a n = A313619 n

end A313619

/-!
# A313620: Coordination sequence Gal.6.348.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313620, the canonical program `A313620.P513798064610013280` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313620 has offset 0).

The definition of A313620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313620.P513798064610013280

`abs(A008592(n)-A313831(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313620

/-- `abs(A008592(n)-A313831(n))` -/
def P513798064610013280.Spec : Prop :=
  ∀ n, P513798064610013280.a n = A313620 n

theorem P513798064610013280.correct : P513798064610013280.Spec := by
  intro n
  simp only [A313620]

end A313620

/-! ## A313620.P2866479392540794257

`2*A008706(n)-A313831(n)`
-/

namespace A313620.P2866479392540794257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313831 n

end

end A313620.P2866479392540794257

namespace A313620

/-- `2*A008706(n)-A313831(n)` -/
def P2866479392540794257.Spec : Prop :=
  ∀ n, P2866479392540794257.a n = A313620 n

end A313620

/-! ## A313620.P9544802227604515605

`A017281(n)%(A313831(n)+1)`
-/

namespace A313620.P9544802227604515605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017281 n) (A313831 n + 1)

end

end A313620.P9544802227604515605

namespace A313620

/-- `A017281(n)%(A313831(n)+1)` -/
def P9544802227604515605.Spec : Prop :=
  ∀ n, P9544802227604515605.a n = A313620 n

end A313620

/-! ## A313620.P5994574192231655106

`A184418(A008574(n))-A313831(n)`
-/

namespace A313620.P5994574192231655106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313831 n

end

end A313620.P5994574192231655106

namespace A313620

/-- `A184418(A008574(n))-A313831(n)` -/
def P5994574192231655106.Spec : Prop :=
  ∀ n, P5994574192231655106.a n = A313620 n

end A313620

/-! ## A313620.P1415441418326436570

`A008458(n)+A008574(n)-A313831(n)`
-/

namespace A313620.P1415441418326436570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313831 n)

end

end A313620.P1415441418326436570

namespace A313620

/-- `A008458(n)+A008574(n)-A313831(n)` -/
def P1415441418326436570.Spec : Prop :=
  ∀ n, P1415441418326436570.a n = A313620 n

end A313620

/-! ## A313620.P13035910531195124961

`∑{d}[A008592(n)-A313831(n), A000010(#)]`
-/

namespace A313620.P13035910531195124961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313620.P13035910531195124961

namespace A313620

/-- `∑{d}[A008592(n)-A313831(n), A000010(#)]` -/
def P13035910531195124961.Spec : Prop :=
  ∀ n, P13035910531195124961.a n = A313620 n

end A313620

/-! ## A313620.P2956399321162332032

`A313831(n)-A005843(A313831(n)-A008706(n))`
-/

namespace A313620.P2956399321162332032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - A005843 (A313831 n - A008706 n).toNat

end

end A313620.P2956399321162332032

namespace A313620

/-- `A313831(n)-A005843(A313831(n)-A008706(n))` -/
def P2956399321162332032.Spec : Prop :=
  ∀ n, P2956399321162332032.a n = A313620 n

end A313620

/-! ## A313620.P3542048744327956527

`A313745(n)-Δ[A011864(n)]`
-/

namespace A313620.P3542048744327956527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313745 n - (f1 (n + 1) - f1 n)

end

end A313620.P3542048744327956527

namespace A313620

/-- `A313745(n)-Δ[A011864(n)]` -/
def P3542048744327956527.Spec : Prop :=
  ∀ n, P3542048744327956527.a n = A313620 n

end A313620

/-! ## A313620.P4451049408176135174

`A005843(A008706(n))-A313831(n)`
-/

namespace A313620.P4451049408176135174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313831 n

end

end A313620.P4451049408176135174

namespace A313620

/-- `A005843(A008706(n))-A313831(n)` -/
def P4451049408176135174.Spec : Prop :=
  ∀ n, P4451049408176135174.a n = A313620 n

end A313620

/-! ## A313620.P6005905156786714322

`A004277(A008458(n)-n)-A313831(n)`
-/

namespace A313620.P6005905156786714322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008458 n - (n : ℤ)).toNat - A313831 n

end

end A313620.P6005905156786714322

namespace A313620

/-- `A004277(A008458(n)-n)-A313831(n)` -/
def P6005905156786714322.Spec : Prop :=
  ∀ n, P6005905156786714322.a n = A313620 n

end A313620

/-! ## A313620.P8251423955698416524

`A314157(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313620.P8251423955698416524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314157 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313620.P8251423955698416524

namespace A313620

/-- `A314157(2*n)+A008458(n+1)-(12*n+6)` -/
def P8251423955698416524.Spec : Prop :=
  ∀ n, P8251423955698416524.a n = A313620 n

end A313620

/-!
# A313621: Coordination sequence Gal.6.482.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313621, there is no canonical definition to state claims against.
-/

/-! ## A313621.P12195091914177742765

`A118168(A315704(n)+A306904(n+1))`
-/

namespace A313621.P12195091914177742765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A315704 n + A306904 (n + 1)).toNat

end

end A313621.P12195091914177742765

/-! ## A313621.P883443652471449991

`A314065(n)-A051903(A352701(n))`
-/

namespace A313621.P883443652471449991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314065 n - A051903 (A352701 n).toNat

end

end A313621.P883443652471449991

/-! ## A313621.P15687396268941489154

`A313779(n)-A170977(A311356(n))`
-/

namespace A313621.P15687396268941489154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313779 n - A170977 (A311356 n).toNat

end

end A313621.P15687396268941489154

/-! ## A313621.P7848751913142751783

`A014045(A036289(n))+5*n`
-/

namespace A313621.P7848751913142751783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014045 (A036289 n).toNat + (5 * n : ℤ)

end

end A313621.P7848751913142751783

/-! ## A313621.P9046631812628017925

`4*n-A008683(A153873(n+1))+n`
-/

namespace A313621.P9046631812628017925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A008683 (A153873 (n + 1)).toNat + (n : ℤ)

end

end A313621.P9046631812628017925

/-!
# A313622: Coordination sequence Gal.6.203.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313622, the canonical program `A313622.P2728153341211532052` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313622 has offset 0).

The definition of A313622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313622.P2728153341211532052

`A047263(A311426(n)+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313622

/-- `A047263(A311426(n)+1)` -/
def P2728153341211532052.Spec : Prop :=
  ∀ n, P2728153341211532052.a n = A313622 n

theorem P2728153341211532052.correct : P2728153341211532052.Spec := by
  intro n
  simp only [A313622]

end A313622

/-! ## A313622.P2523194422408940044

`A312933(n)+A004525(n)`
-/

namespace A313622.P2523194422408940044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + A004525 n

end

end A313622.P2523194422408940044

namespace A313622

/-- `A312933(n)+A004525(n)` -/
def P2523194422408940044.Spec : Prop :=
  ∀ n, P2523194422408940044.a n = A313622 n

end A313622

/-! ## A313622.P12257191029712802146

`abs(A008592(n)-A313829(n))`
-/

namespace A313622.P12257191029712802146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313829 n|

end

end A313622.P12257191029712802146

namespace A313622

/-- `abs(A008592(n)-A313829(n))` -/
def P12257191029712802146.Spec : Prop :=
  ∀ n, P12257191029712802146.a n = A313622 n

end A313622

/-! ## A313622.P2195138527306482743

`floor(A010015(n)/A313829(n))`
-/

namespace A313622.P2195138527306482743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313829 n : ℚ)⌋

end

end A313622.P2195138527306482743

namespace A313622

/-- `floor(A010015(n)/A313829(n))` -/
def P2195138527306482743.Spec : Prop :=
  ∀ n, P2195138527306482743.a n = A313622 n

end A313622

/-! ## A313622.P9954518970792020975

`A312933(n)+Δ[A054925(n)]`
-/

namespace A313622.P9954518970792020975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + (f1 (n + 1) - f1 n)

end

end A313622.P9954518970792020975

namespace A313622

/-- `A312933(n)+Δ[A054925(n)]` -/
def P9954518970792020975.Spec : Prop :=
  ∀ n, P9954518970792020975.a n = A313622 n

end A313622

/-! ## A313622.P16035519961931182402

`A314758(n)+A002264(n+1)`
-/

namespace A313622.P16035519961931182402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314758 n + A002264 (n + 1)

end

end A313622.P16035519961931182402

namespace A313622

/-- `A314758(n)+A002264(n+1)` -/
def P16035519961931182402.Spec : Prop :=
  ∀ n, P16035519961931182402.a n = A313622 n

end A313622

/-! ## A313622.P5699380285695901742

`A312896(n)+A004396(2*A004525(n))`
-/

namespace A313622.P5699380285695901742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + A004396 (2 * A004525 n).toNat

end

end A313622.P5699380285695901742

namespace A313622

/-- `A312896(n)+A004396(2*A004525(n))` -/
def P5699380285695901742.Spec : Prop :=
  ∀ n, P5699380285695901742.a n = A313622 n

end A313622

/-! ## A313622.P2290073033179070681

`A008458(n)+A008574(n)-A313829(n)`
-/

namespace A313622.P2290073033179070681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313829 n)

end

end A313622.P2290073033179070681

namespace A313622

/-- `A008458(n)+A008574(n)-A313829(n)` -/
def P2290073033179070681.Spec : Prop :=
  ∀ n, P2290073033179070681.a n = A313622 n

end A313622

/-! ## A313622.P13722834483044913933

`A008486(n)+A314758(n)-A008576(n)`
-/

namespace A313622.P13722834483044913933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314758 n - A008576 n)

end

end A313622.P13722834483044913933

namespace A313622

/-- `A008486(n)+A314758(n)-A008576(n)` -/
def P13722834483044913933.Spec : Prop :=
  ∀ n, P13722834483044913933.a n = A313622 n

end A313622

/-! ## A313622.P8534653184479587579

`A004525(n)+A313546(n)-A004525(A004396(n))`
-/

namespace A313622.P8534653184479587579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313546 n - A004525 (A004396 n).toNat)

end

end A313622.P8534653184479587579

namespace A313622

/-- `A004525(n)+A313546(n)-A004525(A004396(n))` -/
def P8534653184479587579.Spec : Prop :=
  ∀ n, P8534653184479587579.a n = A313622 n

end A313622

/-! ## A313622.P2343155155371107113

`A004525(n)+A313569(n)-A004396(A004525(n))`
-/

namespace A313622.P2343155155371107113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313569 n - A004396 (A004525 n).toNat)

end

end A313622.P2343155155371107113

namespace A313622

/-- `A004525(n)+A313569(n)-A004396(A004525(n))` -/
def P2343155155371107113.Spec : Prop :=
  ∀ n, P2343155155371107113.a n = A313622 n

end A313622

/-! ## A313622.P11277647162740947792

`A314048(n)-A004525(n-A004396(n))`
-/

namespace A313622.P11277647162740947792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314048 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A313622.P11277647162740947792

namespace A313622

/-- `A314048(n)-A004525(n-A004396(n))` -/
def P11277647162740947792.Spec : Prop :=
  ∀ n, P11277647162740947792.a n = A313622 n

end A313622

/-! ## A313622.P7835408453509839228

`A313747(n)-Δ[A011865(n)]`
-/

namespace A313622.P7835408453509839228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313747 n - (f1 (n + 1) - f1 n)

end

end A313622.P7835408453509839228

namespace A313622

/-- `A313747(n)-Δ[A011865(n)]` -/
def P7835408453509839228.Spec : Prop :=
  ∀ n, P7835408453509839228.a n = A313622 n

end A313622

/-! ## A313622.P3704654208808893314

`A314060(n)-∑[A022003(n)]`
-/

namespace A313622.P3704654208808893314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314060 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313622.P3704654208808893314

namespace A313622

/-- `A314060(n)-∑[A022003(n)]` -/
def P3704654208808893314.Spec : Prop :=
  ∀ n, P3704654208808893314.a n = A313622 n

end A313622

/-! ## A313622.P3888563259797216378

`A314060(n)-A002264(n+1)`
-/

namespace A313622.P3888563259797216378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314060 n - A002264 (n + 1)

end

end A313622.P3888563259797216378

namespace A313622

/-- `A314060(n)-A002264(n+1)` -/
def P3888563259797216378.Spec : Prop :=
  ∀ n, P3888563259797216378.a n = A313622 n

end A313622

/-! ## A313622.P13593797067578550916

`A008576(n)+A314060(n)-A008486(n)`
-/

namespace A313622.P13593797067578550916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314060 n - A008486 n)

end

end A313622.P13593797067578550916

namespace A313622

/-- `A008576(n)+A314060(n)-A008486(n)` -/
def P13593797067578550916.Spec : Prop :=
  ∀ n, P13593797067578550916.a n = A313622 n

end A313622

/-! ## A313622.P18079385181371702106

`A314151(n)-∑[A021913(n)]`
-/

namespace A313622.P18079385181371702106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313622.P18079385181371702106

namespace A313622

/-- `A314151(n)-∑[A021913(n)]` -/
def P18079385181371702106.Spec : Prop :=
  ∀ n, P18079385181371702106.a n = A313622 n

end A313622

/-! ## A313622.P17263225356263104515

`A314151(n)-Δ[A011848(n)]`
-/

namespace A313622.P17263225356263104515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - (f1 (n + 1) - f1 n)

end

end A313622.P17263225356263104515

namespace A313622

/-- `A314151(n)-Δ[A011848(n)]` -/
def P17263225356263104515.Spec : Prop :=
  ∀ n, P17263225356263104515.a n = A313622 n

end A313622

/-! ## A313622.P12453139459050975330

`A004525(n)+A314151(n)-n`
-/

namespace A313622.P12453139459050975330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314151 n - (n : ℤ))

end

end A313622.P12453139459050975330

namespace A313622

/-- `A004525(n)+A314151(n)-n` -/
def P12453139459050975330.Spec : Prop :=
  ∀ n, P12453139459050975330.a n = A313622 n

end A313622

/-! ## A313622.P17536187123526623383

`A074067(A313829(n))`
-/

namespace A313622.P17536187123526623383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313829 n).toNat

end

end A313622.P17536187123526623383

namespace A313622

/-- `A074067(A313829(n))` -/
def P17536187123526623383.Spec : Prop :=
  ∀ n, P17536187123526623383.a n = A313622 n

end A313622

/-!
# A313623: Coordination sequence Gal.5.87.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313623, the canonical program `A313623.P10903003669249707041` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313623 has offset 0).

The definition of A313623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313623.P10903003669249707041

`abs(A008592(n)-A313827(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313623

/-- `abs(A008592(n)-A313827(n))` -/
def P10903003669249707041.Spec : Prop :=
  ∀ n, P10903003669249707041.a n = A313623 n

theorem P10903003669249707041.correct : P10903003669249707041.Spec := by
  intro n
  simp only [A313623]

end A313623

/-! ## A313623.P12876228945589876394

`A314725(n)+Δ[A011858(n)]`
-/

namespace A313623.P12876228945589876394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314725 n + (f1 (n + 1) - f1 n)

end

end A313623.P12876228945589876394

namespace A313623

/-- `A314725(n)+Δ[A011858(n)]` -/
def P12876228945589876394.Spec : Prop :=
  ∀ n, P12876228945589876394.a n = A313623 n

end A313623

/-! ## A313623.P2603042345466532966

`A314725(n)+A134119(2*n)`
-/

namespace A313623.P2603042345466532966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314725 n + A134119 (2 * n)

end

end A313623.P2603042345466532966

namespace A313623

/-- `A314725(n)+A134119(2*n)` -/
def P2603042345466532966.Spec : Prop :=
  ∀ n, P2603042345466532966.a n = A313623 n

end A313623

/-! ## A313623.P12631096496782372488

`2*A008706(n)-A313827(n)`
-/

namespace A313623.P12631096496782372488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313827 n

end

end A313623.P12631096496782372488

namespace A313623

/-- `2*A008706(n)-A313827(n)` -/
def P12631096496782372488.Spec : Prop :=
  ∀ n, P12631096496782372488.a n = A313623 n

end A313623

/-! ## A313623.P5493553163635134052

`A311440(n)+A134119(4*n)`
-/

namespace A313623.P5493553163635134052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A134119 (4 * n)

end

end A313623.P5493553163635134052

namespace A313623

/-- `A311440(n)+A134119(4*n)` -/
def P5493553163635134052.Spec : Prop :=
  ∀ n, P5493553163635134052.a n = A313623 n

end A313623

/-! ## A313623.P15070326347937635452

`A311440(n)+A057354(2*n+1)`
-/

namespace A313623.P15070326347937635452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A057354 (2 * n + 1)

end

end A313623.P15070326347937635452

namespace A313623

/-- `A311440(n)+A057354(2*n+1)` -/
def P15070326347937635452.Spec : Prop :=
  ∀ n, P15070326347937635452.a n = A313623 n

end A313623

/-! ## A313623.P8065823898545876968

`A008458(n)+A008574(n)-A313827(n)`
-/

namespace A313623.P8065823898545876968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313827 n)

end

end A313623.P8065823898545876968

namespace A313623

/-- `A008458(n)+A008574(n)-A313827(n)` -/
def P8065823898545876968.Spec : Prop :=
  ∀ n, P8065823898545876968.a n = A313623 n

end A313623

/-! ## A313623.P15606530705624021212

`A315412(n)-A330025(A330025(n)+n)`
-/

namespace A313623.P15606530705624021212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315412 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A313623.P15606530705624021212

namespace A313623

/-- `A315412(n)-A330025(A330025(n)+n)` -/
def P15606530705624021212.Spec : Prop :=
  ∀ n, P15606530705624021212.a n = A313623 n

end A313623

/-! ## A313623.P16882113791791231786

`round(A313782(n)-n/5)`
-/

namespace A313623.P16882113791791231786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A313782 n : ℚ) - (n : ℚ) / 5)

end

end A313623.P16882113791791231786

namespace A313623

/-- `round(A313782(n)-n/5)` -/
def P16882113791791231786.Spec : Prop :=
  ∀ n, P16882113791791231786.a n = A313623 n

end A313623

/-! ## A313623.P5011871570453441702

`A008574(n)+A315547(n)-A250120(n)`
-/

namespace A313623.P5011871570453441702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315547 n - A250120 n)

end

end A313623.P5011871570453441702

namespace A313623

/-- `A008574(n)+A315547(n)-A250120(n)` -/
def P5011871570453441702.Spec : Prop :=
  ∀ n, P5011871570453441702.a n = A313623 n

end A313623

/-! ## A313623.P9953001816532349923

`A132380(A312658(n))+A008706(n)`
-/

namespace A313623.P9953001816532349923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (A312658 n).toNat + A008706 n

end

end A313623.P9953001816532349923

namespace A313623

/-- `A132380(A312658(n))+A008706(n)` -/
def P9953001816532349923.Spec : Prop :=
  ∀ n, P9953001816532349923.a n = A313623 n

end A313623

/-! ## A313623.P14133007892483697112

`A074067(A313827(n))`
-/

namespace A313623.P14133007892483697112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313827 n).toNat

end

end A313623.P14133007892483697112

namespace A313623

/-- `A074067(A313827(n))` -/
def P14133007892483697112.Spec : Prop :=
  ∀ n, P14133007892483697112.a n = A313623 n

end A313623

/-! ## A313623.P3195370233305149527

`A005843(A008706(n))-A313827(n)`
-/

namespace A313623.P3195370233305149527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313827 n

end

end A313623.P3195370233305149527

namespace A313623

/-- `A005843(A008706(n))-A313827(n)` -/
def P3195370233305149527.Spec : Prop :=
  ∀ n, P3195370233305149527.a n = A313623 n

end A313623

/-! ## A313623.P12458201992603081570

`A065502(A008458(n))-A313827(n)`
-/

namespace A313623.P12458201992603081570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313827 n

end

end A313623.P12458201992603081570

namespace A313623

/-- `A065502(A008458(n))-A313827(n)` -/
def P12458201992603081570.Spec : Prop :=
  ∀ n, P12458201992603081570.a n = A313623 n

end A313623

/-!
# A313624: Coordination sequence Gal.6.382.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313624, there is no canonical definition to state claims against.
-/

/-! ## A313624.P8537057158172163536

`A037809(A038237(n))+A008574(n)`
-/

namespace A313624.P8537057158172163536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037809 (A038237 n).toNat + A008574 n

end

end A313624.P8537057158172163536

/-! ## A313624.P13121301586735870452

`A311458(n)+A000120(A000245(n))`
-/

namespace A313624.P13121301586735870452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A000120 (A000245 n).toNat

end

end A313624.P13121301586735870452

/-! ## A313624.P15946694474225303867

`A028310(n)+A001414(A366608(n))`
-/

namespace A313624.P15946694474225303867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A001414 (A366608 n).toNat

end

end A313624.P15946694474225303867

/-! ## A313624.P17225334166788813639

`A313783(n)+A057428(A282818(n))`
-/

namespace A313624.P17225334166788813639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313783 n + A057428 (A282818 n).toNat

end

end A313624.P17225334166788813639

/-! ## A313624.P13242687404623751844

`A313537(n)+A282290(A080014(n))`
-/

namespace A313624.P13242687404623751844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313537 n + A282290 (A080014 n).toNat

end

end A313624.P13242687404623751844

/-!
# A313625: Coordination sequence Gal.6.373.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313625, there is no canonical definition to state claims against.
-/

/-! ## A313625.P15439753121974881548

`A311612(n)+A001222(∑[n!])`
-/

namespace A313625.P15439753121974881548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311612 n + A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313625.P15439753121974881548

/-! ## A313625.P484674060891553840

`record[A313645(n)-A184944(n+3)]`
-/

namespace A313625.P484674060891553840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313645 n - A184944 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313625.P484674060891553840

/-! ## A313625.P5784226993284619701

`or(and(n, A003008(n+1)), A310410(n))`
-/

namespace A313625.P5784226993284619701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land (n : ℤ) (A003008 (n + 1))) (A310410 n)

end

end A313625.P5784226993284619701

/-! ## A313625.P4175826390203285895

`A313611(n)+A014083(A002057(n))`
-/

namespace A313625.P4175826390203285895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n + A014083 (A002057 n).toNat

end

end A313625.P4175826390203285895

/-! ## A313625.P9248623101942411530

`A180613(A182885(n)+A052905(n))`
-/

namespace A313625.P9248623101942411530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180613 (A182885 n + A052905 n).toNat

end

end A313625.P9248623101942411530

/-!
# A313626: Coordination sequence Gal.6.486.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313626, there is no canonical definition to state claims against.
-/

/-! ## A313626.P15223175289054801823

`A106744(A314168(n)+1)`
-/

namespace A313626.P15223175289054801823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A314168 n + 1).toNat

end

end A313626.P15223175289054801823

/-! ## A313626.P4995482229516436077

`A130233(A024023(n))+A005942(n)`
-/

namespace A313626.P4995482229516436077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A024023 n).toNat + A005942 n

end

end A313626.P4995482229516436077

/-! ## A313626.P10856417151111382602

`A311252(n)+A005811(A003422(n))`
-/

namespace A313626.P10856417151111382602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311252 n + A005811 (A003422 n).toNat

end

end A313626.P10856417151111382602

/-! ## A313626.P3663141237614525949

`A311196(n)+A001222(A121007(n))`
-/

namespace A313626.P3663141237614525949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A001222 (A121007 n).toNat

end

end A313626.P3663141237614525949

/-! ## A313626.P6813078233584993809

`A314120(n)-A334091(A077365(n))`
-/

namespace A313626.P6813078233584993809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314120 n - A334091 (A077365 n).toNat

end

end A313626.P6813078233584993809

/-!
# A313627: Coordination sequence Gal.6.336.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313627, there is no canonical definition to state claims against.
-/

/-! ## A313627.P5928717156347880119

`A313628(n)-A055641(A082582(n))`
-/

namespace A313627.P5928717156347880119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313628 n - A055641 (A082582 n).toNat

end

end A313627.P5928717156347880119

/-! ## A313627.P4332442851877278306

`xor(A185037(A006307(n)), A313628(n))`
-/

namespace A313627.P4332442851877278306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185037 (A006307 n).toNat) (A313628 n)

end

end A313627.P4332442851877278306

/-! ## A313627.P1896938282802474284

`A313628(n)+A178798(A269075(n+1))`
-/

namespace A313627.P1896938282802474284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313628 n + A178798 (A269075 (n + 1)).toNat

end

end A313627.P1896938282802474284

/-! ## A313627.P8301708948862309777

`xor(A025437(A269214(n+1)), A313628(n))`
-/

namespace A313627.P8301708948862309777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025437 (A269214 (n + 1)).toNat) (A313628 n)

end

end A313627.P8301708948862309777

/-! ## A313627.P6504166284377375563

`A313628(A062399(n))`
-/

namespace A313627.P6504166284377375563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313628 (A062399 n).toNat

end

end A313627.P6504166284377375563

/-!
# A313628: Coordination sequence Gal.6.335.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313628, there is no canonical definition to state claims against.
-/

/-! ## A313628.P656052326388640557

`A313627(n)+A025469(n²²)`
-/

namespace A313628.P656052326388640557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313627 n + A025469 ((n ^ 2) ^ 2)

end

end A313628.P656052326388640557

/-! ## A313628.P10577913471276786178

`A313627(n)+A055641(A082582(n))`
-/

namespace A313628.P10577913471276786178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313627 n + A055641 (A082582 n).toNat

end

end A313628.P10577913471276786178

/-! ## A313628.P12750520098352097740

`xor(A185037(A006307(n)), A313627(n))`
-/

namespace A313628.P12750520098352097740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185037 (A006307 n).toNat) (A313627 n)

end

end A313628.P12750520098352097740

/-! ## A313628.P5739067238504096737

`A313627(n)+A185035(A342500(n+1))`
-/

namespace A313628.P5739067238504096737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313627 n + A185035 (A342500 (n + 1)).toNat

end

end A313628.P5739067238504096737

/-! ## A313628.P12468721742359884005

`A313627(n)-A178798(A269075(n+1))`
-/

namespace A313628.P12468721742359884005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313627 n - A178798 (A269075 (n + 1)).toNat

end

end A313628.P12468721742359884005

/-!
# A313629: Coordination sequence Gal.6.75.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313629, there is no canonical definition to state claims against.
-/

/-! ## A313629.P11220226187324057595

`A315427(n)-A001221(A349190(n+1))`
-/

namespace A313629.P11220226187324057595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315427 n - A001221 (A349190 (n + 1)).toNat

end

end A313629.P11220226187324057595

/-! ## A313629.P8938637972150258233

`∑[A090529(A066048(n+1)²)]`
-/

namespace A313629.P8938637972150258233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (A066048 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313629.P8938637972150258233

/-! ## A313629.P4100480463211938907

`A259029(A073914(n))+A008587(n)`
-/

namespace A313629.P4100480463211938907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (A073914 n).toNat + A008587 n

end

end A313629.P4100480463211938907

/-! ## A313629.P963165956445998334

`A313589(n)+A227835(A000108(n))`
-/

namespace A313629.P963165956445998334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313589 n + A227835 (A000108 n).toNat

end

end A313629.P963165956445998334

/-! ## A313629.P16046951823949331308

`A314049(n)-A330025(A007660(n))`
-/

namespace A313629.P16046951823949331308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n - A330025 (A007660 n).toNat

end

end A313629.P16046951823949331308

/-!
# A313630: Coordination sequence Gal.5.201.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313630, there is no canonical definition to state claims against.
-/

/-! ## A313630.P2044631573946129127

`A313561(A087051(n))+A051659(A311449(n))`
-/

namespace A313630.P2044631573946129127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 (A087051 n).toNat + A051659 (A311449 n).toNat

end

end A313630.P2044631573946129127

/-! ## A313630.P16491335856591377559

`A314954(n)-A056594(A036784(n))`
-/

namespace A313630.P16491335856591377559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314954 n - A056594 (A036784 n).toNat

end

end A313630.P16491335856591377559

/-! ## A313630.P18150526637873632056

`A315495(n)-A000120(A225015(n))`
-/

namespace A313630.P18150526637873632056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - A000120 (A225015 n).toNat

end

end A313630.P18150526637873632056

/-! ## A313630.P15919479714401140314

`A016813(n)+A001222(A179322(n+1))`
-/

namespace A313630.P15919479714401140314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001222 (A179322 (n + 1)).toNat

end

end A313630.P15919479714401140314

/-!
# A313631: Coordination sequence Gal.5.221.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313631, there is no canonical definition to state claims against.
-/

/-! ## A313631.P5168028762599075338

`A313575(n)+A059841(A027305(n))`
-/

namespace A313631.P5168028762599075338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313575 n + A059841 (A027305 n).toNat

end

end A313631.P5168028762599075338

/-! ## A313631.P11060453434817231563

`A314031(n)-A096268(A250632(n+1))`
-/

namespace A313631.P11060453434817231563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314031 n - A096268 (A250632 (n + 1)).toNat

end

end A313631.P11060453434817231563

/-! ## A313631.P294854363356103114

`A313635(n)+A178780(A141214(n))`
-/

namespace A313631.P294854363356103114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n + A178780 (A141214 n).toNat

end

end A313631.P294854363356103114

/-! ## A313631.P17261383547923874411

`A323170(A005807(n))+A313575(n)`
-/

namespace A313631.P17261383547923874411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323170 (A005807 n).toNat + A313575 n

end

end A313631.P17261383547923874411

/-! ## A313631.P9247361096818926792

`A313778(n)-A269941(A269950(n))`
-/

namespace A313631.P9247361096818926792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n - A269941 (A269950 n).toNat

end

end A313631.P9247361096818926792

/-!
# A313632: Coordination sequence Gal.5.212.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313632, there is no canonical definition to state claims against.
-/

/-! ## A313632.P12898920428717368352

`xor(A313633(n), A321991(A322283(n)))`
-/

namespace A313632.P12898920428717368352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A313633 n) (A321991 (A322283 n).toNat)

end

end A313632.P12898920428717368352

/-! ## A313632.P1828444602332971856

`record[A313633(n)-A324233(n+1)]`
-/

namespace A313632.P1828444602332971856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313633 n - A324233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313632.P1828444602332971856

/-! ## A313632.P6285090623241042648

`A313633(n)-A025466(A114464(n))`
-/

namespace A313632.P6285090623241042648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313633 n - A025466 (A114464 n).toNat

end

end A313632.P6285090623241042648

/-! ## A313632.P17838053933829904536

`A313633(n)-A120648(A120651(n))`
-/

namespace A313632.P17838053933829904536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313633 n - A120648 (A120651 n).toNat

end

end A313632.P17838053933829904536

/-! ## A313632.P8590904572903286327

`A313633(n)-A025466(A059191(n+1))`
-/

namespace A313632.P8590904572903286327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313633 n - A025466 (A059191 (n + 1)).toNat

end

end A313632.P8590904572903286327

/-!
# A313633: Coordination sequence Gal.6.488.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313633, there is no canonical definition to state claims against.
-/

/-! ## A313633.P11551686026566186884

`xor(A313632(n), A321991(A322283(n)))`
-/

namespace A313633.P11551686026566186884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A313632 n) (A321991 (A322283 n).toNat)

end

end A313633.P11551686026566186884

/-! ## A313633.P12991175976852502336

`A313632(n)+A120648(A120651(n))`
-/

namespace A313633.P12991175976852502336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313632 n + A120648 (A120651 n).toNat

end

end A313633.P12991175976852502336

/-! ## A313633.P1633922794487037882

`or(A064532(A263986(n)), A313632(n))`
-/

namespace A313633.P1633922794487037882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064532 (A263986 n).toNat) (A313632 n)

end

end A313633.P1633922794487037882

/-! ## A313633.P8360802190411345766

`A313632(n)+A185284(A140475(n+1))`
-/

namespace A313633.P8360802190411345766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313632 n + A185284 (A140475 (n + 1)).toNat

end

end A313633.P8360802190411345766

/-!
# A313634: Coordination sequence Gal.6.587.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313634, there is no canonical definition to state claims against.
-/

/-! ## A313634.P10404941782487992373

`A313576(n)+A023969(A006724(n+1))`
-/

namespace A313634.P10404941782487992373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313576 n + A023969 (A006724 (n + 1)).toNat

end

end A313634.P10404941782487992373

/-! ## A313634.P8703910071672350087

`A313640(n)-A122200(A324240(n+1))`
-/

namespace A313634.P8703910071672350087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313640 n - A122200 (A324240 (n + 1)).toNat

end

end A313634.P8703910071672350087

/-!
# A313635: Coordination sequence Gal.4.54.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313635, the canonical program `A313635.P6006493494866348002` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313635 has offset 0).

The definition of A313635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313635.P6006493494866348002

`A312943(n)+A004525(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313635

/-- `A312943(n)+A004525(n)` -/
def P6006493494866348002.Spec : Prop :=
  ∀ n, P6006493494866348002.a n = A313635 n

theorem P6006493494866348002.correct : P6006493494866348002.Spec := by
  intro n
  simp only [A313635]

end A313635

/-! ## A313635.P17438536503216897052

`A315411(n)-A046978(n)`
-/

namespace A313635.P17438536503216897052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n - A046978 n

end

end A313635.P17438536503216897052

namespace A313635

/-- `A315411(n)-A046978(n)` -/
def P17438536503216897052.Spec : Prop :=
  ∀ n, P17438536503216897052.a n = A313635 n

end A313635

/-! ## A313635.P6448820310900281422

`A315259(n)-A188510(n)`
-/

namespace A313635.P6448820310900281422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - A188510 n

end

end A313635.P6448820310900281422

namespace A313635

/-- `A315259(n)-A188510(n)` -/
def P6448820310900281422.Spec : Prop :=
  ∀ n, P6448820310900281422.a n = A313635 n

end A313635

/-! ## A313635.P4814619107063850089

`A312943(n)+n-∑[A021913(n)]`
-/

namespace A313635.P4814619107063850089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313635.P4814619107063850089

namespace A313635

/-- `A312943(n)+n-∑[A021913(n)]` -/
def P4814619107063850089.Spec : Prop :=
  ∀ n, P4814619107063850089.a n = A313635 n

end A313635

/-! ## A313635.P17571549383227174842

`A312943(n)+n-Δ[A011848(n)]`
-/

namespace A313635.P17571549383227174842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313635.P17571549383227174842

namespace A313635

/-- `A312943(n)+n-Δ[A011848(n)]` -/
def P17571549383227174842.Spec : Prop :=
  ∀ n, P17571549383227174842.a n = A313635 n

end A313635

/-! ## A313635.P5911567410867066856

`A314026(n)-A046978(n-A046978(n))`
-/

namespace A313635.P5911567410867066856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n - A046978 ((n : ℤ) - A046978 n).toNat

end

end A313635.P5911567410867066856

namespace A313635

/-- `A314026(n)-A046978(n-A046978(n))` -/
def P5911567410867066856.Spec : Prop :=
  ∀ n, P5911567410867066856.a n = A313635 n

end A313635

/-! ## A313635.P17109834522101778967

`A004525(n)+A313561(n)-A004525(A004525(n))`
-/

namespace A313635.P17109834522101778967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313561 n - A004525 (A004525 n).toNat)

end

end A313635.P17109834522101778967

namespace A313635

/-- `A004525(n)+A313561(n)-A004525(A004525(n))` -/
def P17109834522101778967.Spec : Prop :=
  ∀ n, P17109834522101778967.a n = A313635 n

end A313635

/-! ## A313635.P3576552484427144130

`abs(A008592(n)-A313826(n))`
-/

namespace A313635.P3576552484427144130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313826 n|

end

end A313635.P3576552484427144130

namespace A313635

/-- `abs(A008592(n)-A313826(n))` -/
def P3576552484427144130.Spec : Prop :=
  ∀ n, P3576552484427144130.a n = A313635 n

end A313635

/-! ## A313635.P17792662157177753221

`floor(A010015(n)/A313826(n))`
-/

namespace A313635.P17792662157177753221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313826 n : ℚ)⌋

end

end A313635.P17792662157177753221

namespace A313635

/-- `floor(A010015(n)/A313826(n))` -/
def P17792662157177753221.Spec : Prop :=
  ∀ n, P17792662157177753221.a n = A313635 n

end A313635

/-! ## A313635.P2868133487751736595

`A008458(n)+A008574(n)-A313826(n)`
-/

namespace A313635.P2868133487751736595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313826 n)

end

end A313635.P2868133487751736595

namespace A313635

/-- `A008458(n)+A008574(n)-A313826(n)` -/
def P2868133487751736595.Spec : Prop :=
  ∀ n, P2868133487751736595.a n = A313635 n

end A313635

/-! ## A313635.P18243666589494902918

`A310458(n)+A101455(n)`
-/

namespace A313635.P18243666589494902918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n + A101455 n

end

end A313635.P18243666589494902918

namespace A313635

/-- `A310458(n)+A101455(n)` -/
def P18243666589494902918.Spec : Prop :=
  ∀ n, P18243666589494902918.a n = A313635 n

end A313635

/-! ## A313635.P14934345975805934728

`A310458(n)+A046978(2*n)`
-/

namespace A313635.P14934345975805934728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n + A046978 (2 * n)

end

end A313635.P14934345975805934728

namespace A313635

/-- `A310458(n)+A046978(2*n)` -/
def P14934345975805934728.Spec : Prop :=
  ∀ n, P14934345975805934728.a n = A313635 n

end A313635

/-! ## A313635.P10503667193764151716

`A313793(n)-Δ[A011861(n)]`
-/

namespace A313635.P10503667193764151716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n - (f1 (n + 1) - f1 n)

end

end A313635.P10503667193764151716

namespace A313635

/-- `A313793(n)-Δ[A011861(n)]` -/
def P10503667193764151716.Spec : Prop :=
  ∀ n, P10503667193764151716.a n = A313635 n

end A313635

/-! ## A313635.P9644169832395974813

`A314056(n)-A004525(n-A004525(n))`
-/

namespace A313635.P9644169832395974813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A313635.P9644169832395974813

namespace A313635

/-- `A314056(n)-A004525(n-A004525(n))` -/
def P9644169832395974813.Spec : Prop :=
  ∀ n, P9644169832395974813.a n = A313635 n

end A313635

/-! ## A313635.P13791504150389102359

`A314161(n)-∑[and(2, n)/2]`
-/

namespace A313635.P13791504150389102359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314161 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313635.P13791504150389102359

namespace A313635

/-- `A314161(n)-∑[and(2, n)/2]` -/
def P13791504150389102359.Spec : Prop :=
  ∀ n, P13791504150389102359.a n = (A313635 n : ℚ)

end A313635

/-! ## A313635.P14931336080234704401

`A314161(n)-∑[A021913(n)]`
-/

namespace A313635.P14931336080234704401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313635.P14931336080234704401

namespace A313635

/-- `A314161(n)-∑[A021913(n)]` -/
def P14931336080234704401.Spec : Prop :=
  ∀ n, P14931336080234704401.a n = A313635 n

end A313635

/-! ## A313635.P16733032101359801430

`A314161(n)-Δ[A011848(n)]`
-/

namespace A313635.P16733032101359801430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - (f1 (n + 1) - f1 n)

end

end A313635.P16733032101359801430

namespace A313635

/-- `A314161(n)-Δ[A011848(n)]` -/
def P16733032101359801430.Spec : Prop :=
  ∀ n, P16733032101359801430.a n = A313635 n

end A313635

/-! ## A313635.P17322062341213879640

`A004525(n)+A314161(n)-n`
-/

namespace A313635.P17322062341213879640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314161 n - (n : ℤ))

end

end A313635.P17322062341213879640

namespace A313635

/-- `A004525(n)+A314161(n)-n` -/
def P17322062341213879640.Spec : Prop :=
  ∀ n, P17322062341213879640.a n = A313635 n

end A313635

/-! ## A313635.P17255758614061602677

`Δ[A054925(n)]+A314161(n)-n`
-/

namespace A313635.P17255758614061602677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314161 n - (n : ℤ))

end

end A313635.P17255758614061602677

namespace A313635

/-- `Δ[A054925(n)]+A314161(n)-n` -/
def P17255758614061602677.Spec : Prop :=
  ∀ n, P17255758614061602677.a n = A313635 n

end A313635

/-! ## A313635.P7879125915957706658

`A004525(n)-(A004525(A005843(n))-A314161(n))`
-/

namespace A313635.P7879125915957706658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n - (A004525 (A005843 n).toNat - A314161 n)

end

end A313635.P7879125915957706658

namespace A313635

/-- `A004525(n)-(A004525(A005843(n))-A314161(n))` -/
def P7879125915957706658.Spec : Prop :=
  ∀ n, P7879125915957706658.a n = A313635 n

end A313635

/-!
# A313636: Coordination sequence Gal.6.382.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313636, there is no canonical definition to state claims against.
-/

/-! ## A313636.P10243722225961243525

`A313637(n)-A077655(A007837(n))`
-/

namespace A313636.P10243722225961243525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313637 n - A077655 (A007837 n).toNat

end

end A313636.P10243722225961243525

/-! ## A313636.P3823556576466128626

`A313637(n)-A124761(A288872(n))`
-/

namespace A313636.P3823556576466128626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313637 n - A124761 (A288872 n).toNat

end

end A313636.P3823556576466128626

/-! ## A313636.P2344838203008090469

`A313759(n)-A059841(A003724(n))`
-/

namespace A313636.P2344838203008090469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313759 n - A059841 (A003724 n).toNat

end

end A313636.P2344838203008090469

/-! ## A313636.P7434390601154751267

`A313637(n)-A010051(A149101(n))`
-/

namespace A313636.P7434390601154751267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313637 n - A010051 (A149101 n).toNat

end

end A313636.P7434390601154751267

/-! ## A313636.P16703076619471723245

`A313637(A087051(n))`
-/

namespace A313636.P16703076619471723245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313637 (A087051 n).toNat

end

end A313636.P16703076619471723245

/-!
# A313637: Coordination sequence Gal.6.495.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313637, there is no canonical definition to state claims against.
-/

/-! ## A313637.P12234016299640474333

`A313636(n)+A077655(A007837(n))`
-/

namespace A313637.P12234016299640474333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313636 n + A077655 (A007837 n).toNat

end

end A313637.P12234016299640474333

/-! ## A313637.P13994061141956949319

`A313635(n)+A107846(A131352(n))`
-/

namespace A313637.P13994061141956949319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n + A107846 (A131352 n).toNat

end

end A313637.P13994061141956949319

/-! ## A313637.P710148862143493120

`A313636(n)+A124761(A288872(n))`
-/

namespace A313637.P710148862143493120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313636 n + A124761 (A288872 n).toNat

end

end A313637.P710148862143493120

/-! ## A313637.P16324737673198328657

`A313635(n)+A185246(A314172(n))`
-/

namespace A313637.P16324737673198328657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n + A185246 (A314172 n).toNat

end

end A313637.P16324737673198328657

/-! ## A313637.P9212899442640812497

`A313635(n)+A124761(A235999(n+1))`
-/

namespace A313637.P9212899442640812497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n + A124761 (A235999 (n + 1)).toNat

end

end A313637.P9212899442640812497

/-!
# A313638: Coordination sequence Gal.4.79.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313638, there is no canonical definition to state claims against.
-/

/-! ## A313638.P13011194674483948429

`A322308(A278222(n))+A315272(n)-A329677(n)`
-/

namespace A313638.P13011194674483948429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322308 (A278222 n).toNat + (A315272 n - A329677 n)

end

end A313638.P13011194674483948429

/-! ## A313638.P3265982728359256483

`A322308(A322319(n+1))+A315272(n)-A329677(n)`
-/

namespace A313638.P3265982728359256483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322308 (A322319 (n + 1)).toNat + (A315272 n - A329677 n)

end

end A313638.P3265982728359256483

/-! ## A313638.P896679454810144673

`A315272(n)-A021913(A290596(n))`
-/

namespace A313638.P896679454810144673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315272 n - A021913 (A290596 n).toNat

end

end A313638.P896679454810144673

/-! ## A313638.P11315484550805959471

`∑[A057560(A213224(n+1))+4]-3`
-/

namespace A313638.P11315484550805959471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057560 (A213224 (n + 1)).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A313638.P11315484550805959471

/-!
# A313639: Coordination sequence Gal.6.204.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313639, the canonical program `A313639.P9445063185818086660` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313639 has offset 0).

The definition of A313639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313639.P9445063185818086660

`abs(A008592(n)-A313825(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313639

/-- `abs(A008592(n)-A313825(n))` -/
def P9445063185818086660.Spec : Prop :=
  ∀ n, P9445063185818086660.a n = A313639 n

theorem P9445063185818086660.correct : P9445063185818086660.Spec := by
  intro n
  simp only [A313639]

end A313639

/-! ## A313639.P13168351463097080458

`2*A008706(n)-A313825(n)`
-/

namespace A313639.P13168351463097080458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313825 n

end

end A313639.P13168351463097080458

namespace A313639

/-- `2*A008706(n)-A313825(n)` -/
def P13168351463097080458.Spec : Prop :=
  ∀ n, P13168351463097080458.a n = A313639 n

end A313639

/-! ## A313639.P2147741512127392095

`A008458(n)+A008574(n)-A313825(n)`
-/

namespace A313639.P2147741512127392095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313825 n)

end

end A313639.P2147741512127392095

namespace A313639

/-- `A008458(n)+A008574(n)-A313825(n)` -/
def P2147741512127392095.Spec : Prop :=
  ∀ n, P2147741512127392095.a n = A313639 n

end A313639

/-! ## A313639.P511807780310834768

`(A315212(n)+A310420(n))/2`
-/

namespace A313639.P511807780310834768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315212 n + A310420 n : ℚ) / 2

end

end A313639.P511807780310834768

namespace A313639

/-- `(A315212(n)+A310420(n))/2` -/
def P511807780310834768.Spec : Prop :=
  ∀ n, P511807780310834768.a n = (A313639 n : ℚ)

end A313639

/-! ## A313639.P6124279911134387993

`A005843(A008706(n))-A313825(n)`
-/

namespace A313639.P6124279911134387993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313825 n

end

end A313639.P6124279911134387993

namespace A313639

/-- `A005843(A008706(n))-A313825(n)` -/
def P6124279911134387993.Spec : Prop :=
  ∀ n, P6124279911134387993.a n = A313639 n

end A313639

/-! ## A313639.P10191214433583783339

`A004396(A314078(n)+2*n)`
-/

namespace A313639.P10191214433583783339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314078 n + (2 * n : ℤ)).toNat

end

end A313639.P10191214433583783339

namespace A313639

/-- `A004396(A314078(n)+2*n)` -/
def P10191214433583783339.Spec : Prop :=
  ∀ n, P10191214433583783339.a n = A313639 n

end A313639

/-! ## A313639.P12399449872966409124

`A274616(A314078(n)+2*n)`
-/

namespace A313639.P12399449872966409124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A314078 n + (2 * n : ℤ)).toNat

end

end A313639.P12399449872966409124

namespace A313639

/-- `A274616(A314078(n)+2*n)` -/
def P12399449872966409124.Spec : Prop :=
  ∀ n, P12399449872966409124.a n = A313639 n

end A313639

/-! ## A313639.P13288625369512500916

`A004396(A314078(n)+n+n)`
-/

namespace A313639.P13288625369512500916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314078 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313639.P13288625369512500916

namespace A313639

/-- `A004396(A314078(n)+n+n)` -/
def P13288625369512500916.Spec : Prop :=
  ∀ n, P13288625369512500916.a n = A313639 n

end A313639

/-! ## A313639.P9422242411464069367

`A274616(A314078(n)+n+n)`
-/

namespace A313639.P9422242411464069367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A314078 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313639.P9422242411464069367

namespace A313639

/-- `A274616(A314078(n)+n+n)` -/
def P9422242411464069367.Spec : Prop :=
  ∀ n, P9422242411464069367.a n = A313639 n

end A313639

/-! ## A313639.P11131728895215970084

`A004525(A315212(n)+A310420(n))`
-/

namespace A313639.P11131728895215970084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315212 n + A310420 n).toNat

end

end A313639.P11131728895215970084

namespace A313639

/-- `A004525(A315212(n)+A310420(n))` -/
def P11131728895215970084.Spec : Prop :=
  ∀ n, P11131728895215970084.a n = A313639 n

end A313639

/-!
# A313640: Coordination sequence Gal.6.496.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313640, there is no canonical definition to state claims against.
-/

/-! ## A313640.P5566806342218124465

`A313639(n)+A086971(A113282(n))`
-/

namespace A313640.P5566806342218124465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313639 n + A086971 (A113282 n).toNat

end

end A313640.P5566806342218124465

/-! ## A313640.P6481423852308614781

`A313633(n)+A267181(A100001(n+1))`
-/

namespace A313640.P6481423852308614781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313633 n + A267181 (A100001 (n + 1)).toNat

end

end A313640.P6481423852308614781

/-! ## A313640.P5499660002959065982

`A313639(n)+A057427(A324231(n+1))`
-/

namespace A313640.P5499660002959065982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313639 n + A057427 (A324231 (n + 1)).toNat

end

end A313640.P5499660002959065982

/-! ## A313640.P3209043596030487643

`A313633(n)+A033665(A000332(n))`
-/

namespace A313640.P3209043596030487643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313633 n + A033665 (A000332 n).toNat

end

end A313640.P3209043596030487643

/-! ## A313640.P5622200896928557361

`A313633(n)+A025469(A103978(n))`
-/

namespace A313640.P5622200896928557361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313633 n + A025469 (A103978 n).toNat

end

end A313640.P5622200896928557361

/-!
# A313641: Coordination sequence Gal.3.56.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313641, there is no canonical definition to state claims against.
-/

/-! ## A313641.P2132883209796957505

`A334028(A095011(n+1))+A003136(2*(n+1))`
-/

namespace A313641.P2132883209796957505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A095011 (n + 1)).toNat + A003136 (2 * (n + 1))

end

end A313641.P2132883209796957505

/-! ## A313641.P2991916994094241907

`A262945(∑[A003101(n)])+4*n-n%2`
-/

namespace A313641.P2991916994094241907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262945 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((4 * n : ℤ) - ((n % 2 : ℕ) : ℤ))

end

end A313641.P2991916994094241907

/-! ## A313641.P18386738354778624279

`∑[A240088(2*(n+1))%A240113(n+1)+1]`
-/

namespace A313641.P18386738354778624279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240088 (2 * (n + 1))) (A240113 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313641.P18386738354778624279

/-! ## A313641.P1149245518161598370

`A312144(n)+A001222(A150904(n))`
-/

namespace A313641.P1149245518161598370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + A001222 (A150904 n).toNat

end

end A313641.P1149245518161598370

/-! ## A313641.P15013090099325659060

`A313623(n)+A184159(A184176(n))`
-/

namespace A313641.P15013090099325659060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313623 n + A184159 (A184176 n).toNat

end

end A313641.P15013090099325659060

/-!
# A313642: Coordination sequence Gal.6.440.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313642, there is no canonical definition to state claims against.
-/

/-! ## A313642.P8578725121874955646

`A313643(n)-A055641(A011782(n))`
-/

namespace A313642.P8578725121874955646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313643 n - A055641 (A011782 n).toNat

end

end A313642.P8578725121874955646

/-! ## A313642.P18233009011272906606

`A313643(n)-A185284(A028310(3*n+1))`
-/

namespace A313642.P18233009011272906606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313643 n - A185284 (A028310 (3 * n + 1)).toNat

end

end A313642.P18233009011272906606

/-! ## A313642.P5017346099743343493

`A313643(n)-A316863(A157221(n))`
-/

namespace A313642.P5017346099743343493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313643 n - A316863 (A157221 n).toNat

end

end A313642.P5017346099743343493

/-! ## A313642.P9532647138140847039

`A313643(n)-A185284(A110923(n+1))`
-/

namespace A313642.P9532647138140847039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313643 n - A185284 (A110923 (n + 1)).toNat

end

end A313642.P9532647138140847039

/-! ## A313642.P11479451465068877155

`A313643(n)+A244895(A185284((5-n)²))`
-/

namespace A313642.P11479451465068877155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313643 n + A244895 (A185284 ((5 - (n : ℤ)) ^ 2).toNat).toNat

end

end A313642.P11479451465068877155

/-!
# A313643: Coordination sequence Gal.6.439.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313643, there is no canonical definition to state claims against.
-/

/-! ## A313643.P10595369269265814386

`A313642(n)+A185284(A028310(3*n+1))`
-/

namespace A313643.P10595369269265814386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313642 n + A185284 (A028310 (3 * n + 1)).toNat

end

end A313643.P10595369269265814386

/-! ## A313643.P11228174923211818734

`A316863(A157221(n))+A313642(n)`
-/

namespace A313643.P11228174923211818734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A157221 n).toNat + A313642 n

end

end A313643.P11228174923211818734

/-! ## A313643.P15548145659258039353

`A313642(n)+A185284(p?[A259153(n)])`
-/

namespace A313643.P15548145659258039353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313642 n + A185284 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A313643.P15548145659258039353

/-! ## A313643.P17189477460780735877

`A313642(n)+A185284(A110923(n+1))`
-/

namespace A313643.P17189477460780735877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313642 n + A185284 (A110923 (n + 1)).toNat

end

end A313643.P17189477460780735877

/-! ## A313643.P9211290877339722285

`A313642(n)+A185284(A047486(2*(n+1)))`
-/

namespace A313643.P9211290877339722285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313642 n + A185284 (A047486 (2 * (n + 1))).toNat

end

end A313643.P9211290877339722285

/-!
# A313644: Coordination sequence Gal.6.451.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313644, there is no canonical definition to state claims against.
-/

/-! ## A313644.P625376559122319633

`A005117(3*n+2)-A076213(A001787(n))`
-/

namespace A313644.P625376559122319633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A076213 (A001787 n).toNat

end

end A313644.P625376559122319633

/-! ## A313644.P9633755184327250601

`A005117(3*n+2)-A011655(A321410(n))`
-/

namespace A313644.P9633755184327250601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A011655 (A321410 n).toNat

end

end A313644.P9633755184327250601

/-! ## A313644.P5236936057961509834

`A005117(3*n+2)-A358846(A050535(n))`
-/

namespace A313644.P5236936057961509834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A358846 (A050535 n).toNat

end

end A313644.P5236936057961509834

/-! ## A313644.P361633978985472231

`A005117(3*n+2)-A266300(A007328(n+1))`
-/

namespace A313644.P361633978985472231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A266300 (A007328 (n + 1)).toNat

end

end A313644.P361633978985472231

/-! ## A313644.P15013085550905603779

`A005117(3*n+2)-A382525(A228835(n+1))`
-/

namespace A313644.P15013085550905603779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A382525 (A228835 (n + 1)).toNat

end

end A313644.P15013085550905603779

/-!
# A313645: Coordination sequence Gal.6.482.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313645, there is no canonical definition to state claims against.
-/

/-! ## A313645.P14421252033935458522

`A341996(A148745(n))+A313589(n)`
-/

namespace A313645.P14421252033935458522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A148745 n).toNat + A313589 n

end

end A313645.P14421252033935458522

/-! ## A313645.P1003510844217985288

`A313506(n)+A303370(A325923(n))`
-/

namespace A313645.P1003510844217985288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 n + A303370 (A325923 n).toNat

end

end A313645.P1003510844217985288

/-! ## A313645.P16920073421323328013

`A313738(n)-A014029(A001792(n))`
-/

namespace A313645.P16920073421323328013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313738 n - A014029 (A001792 n).toNat

end

end A313645.P16920073421323328013

/-! ## A313645.P881942956676766453

`A301678(n)-A055641(A005773(n))`
-/

namespace A313645.P881942956676766453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A055641 (A005773 n).toNat

end

end A313645.P881942956676766453

/-! ## A313645.P4180668838094083235

`A301678(n)-A064911(A000111(n))`
-/

namespace A313645.P4180668838094083235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A064911 (A000111 n).toNat

end

end A313645.P4180668838094083235

/-!
# A313646: Coordination sequence Gal.6.205.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313646, the canonical program `A313646.P5789065148866305681` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313646 has offset 0).

The definition of A313646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313646.P6197944405258394093

`round(A314770(n)+n/3)`
-/

namespace A313646.P6197944405258394093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A314770 n : ℚ) + (n : ℚ) / 3)

end

end A313646.P6197944405258394093

namespace A313646

/-- `round(A314770(n)+n/3)` -/
def P6197944405258394093.Spec : Prop :=
  ∀ n, P6197944405258394093.a n = A313646 n

end A313646

/-! ## A313646.P5789065148866305681

`A312950(n)+A004525(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313646

/-- `A312950(n)+A004525(n)` -/
def P5789065148866305681.Spec : Prop :=
  ∀ n, P5789065148866305681.a n = A313646 n

theorem P5789065148866305681.correct : P5789065148866305681.Spec := by
  intro n
  simp only [A313646]

end A313646

/-! ## A313646.P13228521270161210586

`A310459(n)+A101455(n)`
-/

namespace A313646.P13228521270161210586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310459 n + A101455 n

end

end A313646.P13228521270161210586

namespace A313646

/-- `A310459(n)+A101455(n)` -/
def P13228521270161210586.Spec : Prop :=
  ∀ n, P13228521270161210586.a n = A313646 n

end A313646

/-! ## A313646.P8668774266031872854

`abs(A008592(n)-A313824(n))`
-/

namespace A313646.P8668774266031872854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313824 n|

end

end A313646.P8668774266031872854

namespace A313646

/-- `abs(A008592(n)-A313824(n))` -/
def P8668774266031872854.Spec : Prop :=
  ∀ n, P8668774266031872854.a n = A313646 n

end A313646

/-! ## A313646.P15500480945803589482

`A312950(n)+Δ[A054925(n)]`
-/

namespace A313646.P15500480945803589482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + (f1 (n + 1) - f1 n)

end

end A313646.P15500480945803589482

namespace A313646

/-- `A312950(n)+Δ[A054925(n)]` -/
def P15500480945803589482.Spec : Prop :=
  ∀ n, P15500480945803589482.a n = A313646 n

end A313646

/-! ## A313646.P14608802685944185129

`A314770(n)+A002264(n+1)`
-/

namespace A313646.P14608802685944185129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314770 n + A002264 (n + 1)

end

end A313646.P14608802685944185129

namespace A313646

/-- `A314770(n)+A002264(n+1)` -/
def P14608802685944185129.Spec : Prop :=
  ∀ n, P14608802685944185129.a n = A313646 n

end A313646

/-! ## A313646.P11982650138288626892

`A312950(n)+n-∑[A021913(n)]`
-/

namespace A313646.P11982650138288626892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313646.P11982650138288626892

namespace A313646

/-- `A312950(n)+n-∑[A021913(n)]` -/
def P11982650138288626892.Spec : Prop :=
  ∀ n, P11982650138288626892.a n = A313646 n

end A313646

/-! ## A313646.P8759007129904510495

`A312950(n)+n-Δ[A011848(n)]`
-/

namespace A313646.P8759007129904510495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313646.P8759007129904510495

namespace A313646

/-- `A312950(n)+n-Δ[A011848(n)]` -/
def P8759007129904510495.Spec : Prop :=
  ∀ n, P8759007129904510495.a n = A313646 n

end A313646

/-! ## A313646.P13837723225572473469

`A008458(n)+A008574(n)-A313824(n)`
-/

namespace A313646.P13837723225572473469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313824 n)

end

end A313646.P13837723225572473469

namespace A313646

/-- `A008458(n)+A008574(n)-A313824(n)` -/
def P13837723225572473469.Spec : Prop :=
  ∀ n, P13837723225572473469.a n = A313646 n

end A313646

/-! ## A313646.P7850263697433965487

`A008486(n)+A314770(n)-A008576(n)`
-/

namespace A313646.P7850263697433965487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314770 n - A008576 n)

end

end A313646.P7850263697433965487

namespace A313646

/-- `A008486(n)+A314770(n)-A008576(n)` -/
def P7850263697433965487.Spec : Prop :=
  ∀ n, P7850263697433965487.a n = A313646 n

end A313646

/-! ## A313646.P15763037062434651762

`A004525(n)+A313583(n)-A004396(A004525(n))`
-/

namespace A313646.P15763037062434651762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313583 n - A004396 (A004525 n).toNat)

end

end A313646.P15763037062434651762

namespace A313646

/-- `A004525(n)+A313583(n)-A004396(A004525(n))` -/
def P15763037062434651762.Spec : Prop :=
  ∀ n, P15763037062434651762.a n = A313646 n

end A313646

/-! ## A313646.P9393185561125425919

`A314167(n)-∑[A021913(n)]`
-/

namespace A313646.P9393185561125425919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313646.P9393185561125425919

namespace A313646

/-- `A314167(n)-∑[A021913(n)]` -/
def P9393185561125425919.Spec : Prop :=
  ∀ n, P9393185561125425919.a n = A313646 n

end A313646

/-! ## A313646.P3111983980821680773

`A314167(n)-Δ[A011848(n)]`
-/

namespace A313646.P3111983980821680773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n - (f1 (n + 1) - f1 n)

end

end A313646.P3111983980821680773

namespace A313646

/-- `A314167(n)-Δ[A011848(n)]` -/
def P3111983980821680773.Spec : Prop :=
  ∀ n, P3111983980821680773.a n = A313646 n

end A313646

/-! ## A313646.P8693221650928830530

`A004525(n)+A314167(n)-n`
-/

namespace A313646.P8693221650928830530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314167 n - (n : ℤ))

end

end A313646.P8693221650928830530

namespace A313646

/-- `A004525(n)+A314167(n)-n` -/
def P8693221650928830530.Spec : Prop :=
  ∀ n, P8693221650928830530.a n = A313646 n

end A313646

/-!
# A313647: Coordination sequence Gal.5.222.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313647, there is no canonical definition to state claims against.
-/

/-! ## A313647.P13141463603442506506

`A315277(n)-A283966(A190034(n+1))`
-/

namespace A313647.P13141463603442506506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315277 n - A283966 (A190034 (n + 1)).toNat

end

end A313647.P13141463603442506506

/-! ## A313647.P3383526807295059476

`A313752(n)-A180433(A032194(n+9))`
-/

namespace A313647.P3383526807295059476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n - A180433 (A032194 (n + 9)).toNat

end

end A313647.P3383526807295059476

/-! ## A313647.P9827748555966884736

`A314735(n)+A001221(A346661(n))`
-/

namespace A313647.P9827748555966884736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314735 n + A001221 (A346661 n).toNat

end

end A313647.P9827748555966884736

/-! ## A313647.P3078765528313228944

`A214449(A118168(8*n))`
-/

namespace A313647.P3078765528313228944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214449 (A118168 (8 * n)).toNat

end

end A313647.P3078765528313228944

/-! ## A313647.P12752973118392186864

`A118168(A118168(8*n)+1)`
-/

namespace A313647.P12752973118392186864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A118168 (8 * n) + 1).toNat

end

end A313647.P12752973118392186864

/-!
# A313648: Coordination sequence Gal.6.496.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313648, there is no canonical definition to state claims against.
-/

/-! ## A313648.P8745298197894096327

`A259934(n+1)-A000005(A318376(n))`
-/

namespace A313648.P8745298197894096327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (n + 1) - A000005 (A318376 n).toNat

end

end A313648.P8745298197894096327

/-! ## A313648.P4083857172129625290

`A314052(n)-A213727(A291484(n))`
-/

namespace A313648.P4083857172129625290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314052 n - A213727 (A291484 n).toNat

end

end A313648.P4083857172129625290

/-! ## A313648.P863739978681748588

`A098745(A314090(2*n)-n)+char[A047263(3*(n+1))]`
-/

namespace A313648.P863739978681748588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098745 (A314090 (2 * n) - (n : ℤ)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A313648.P863739978681748588

/-!
# A313649: Coordination sequence Gal.5.222.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313649, there is no canonical definition to state claims against.
-/

/-! ## A313649.P10176840398369802121

`A313615(n)+A086134(A000105(n))`
-/

namespace A313649.P10176840398369802121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313615 n + A086134 (A000105 n).toNat

end

end A313649.P10176840398369802121

/-! ## A313649.P18194499703808556649

`A120738(n)+A000523(A198443(n+1))`
-/

namespace A313649.P18194499703808556649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n + A000523 (A198443 (n + 1)).toNat

end

end A313649.P18194499703808556649

/-! ## A313649.P9560576104506147867

`A301678(n)+A056974(A148949(n))`
-/

namespace A313649.P9560576104506147867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n + A056974 (A148949 n).toNat

end

end A313649.P9560576104506147867

/-! ## A313649.P11005597765401885118

`A314163(n)-A001221(A225294(n))`
-/

namespace A313649.P11005597765401885118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n - A001221 (A225294 n).toNat

end

end A313649.P11005597765401885118

/-! ## A313649.P8639978990271307630

`A301678(n)+A001878(Δ[A128243(n+3)])`
-/

namespace A313649.P8639978990271307630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128243 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n + A001878 (f1 (n + 1) - f1 n).toNat

end

end A313649.P8639978990271307630

/-!
# A313650: Coordination sequence Gal.4.107.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313650, there is no canonical definition to state claims against.
-/

/-! ## A313650.P5815715139724024685

`xor(A008706(A227549(n+1)), A070824(n+1))`
-/

namespace A313650.P5815715139724024685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008706 (A227549 (n + 1)).toNat) (A070824 (n + 1))

end

end A313650.P5815715139724024685

/-! ## A313650.P11688270048217944773

`A313631(n)+A217096(A217093(n))`
-/

namespace A313650.P11688270048217944773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313631 n + A217096 (A217093 n).toNat

end

end A313650.P11688270048217944773

/-! ## A313650.P5761161232931852195

`A313924(n)-A224965(A224958(n))`
-/

namespace A313650.P5761161232931852195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - A224965 (A224958 n).toNat

end

end A313650.P5761161232931852195

/-! ## A313650.P320360284485721069

`xor(A008706(n), A052344(A004110(n)))`
-/

namespace A313650.P320360284485721069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008706 n) (A052344 (A004110 n).toNat)

end

end A313650.P320360284485721069

/-! ## A313650.P1311249689728257590

`A313416(n)+A262257(A262248(n+1))`
-/

namespace A313650.P1311249689728257590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313416 n + A262257 (A262248 (n + 1)).toNat

end

end A313650.P1311249689728257590

/-!
# A313651: Coordination sequence Gal.6.486.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313651, there is no canonical definition to state claims against.
-/

/-! ## A313651.P497514232870595168

`A083875(3*n+2)-A332289(8*n)`
-/

namespace A313651.P497514232870595168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083875 (3 * n + 2) - A332289 (8 * n)

end

end A313651.P497514232870595168

/-! ## A313651.P3109883127186246483

`A313508(n)+A232243(A293360(n))`
-/

namespace A313651.P3109883127186246483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313508 n + A232243 (A293360 n).toNat

end

end A313651.P3109883127186246483

/-! ## A313651.P16136140327676837186

`A313509(n)+A232243(A293360(n))`
-/

namespace A313651.P16136140327676837186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313509 n + A232243 (A293360 n).toNat

end

end A313651.P16136140327676837186

/-! ## A313651.P17619306696545552890

`A232243(A293360(n))+A195932(∑[n+1])+2*n`
-/

namespace A313651.P17619306696545552890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 (A293360 n).toNat + (A195932 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n : ℤ))

end

end A313651.P17619306696545552890

/-! ## A313651.P7032189056137714945

`A083875(3*n+2)-A285572(A035244(n))`
-/

namespace A313651.P7032189056137714945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083875 (3 * n + 2) - A285572 (A035244 n).toNat

end

end A313651.P7032189056137714945

/-!
# A313652: Coordination sequence Gal.6.374.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313652, there is no canonical definition to state claims against.
-/

/-! ## A313652.P13603598851178650230

`A347697(A010000(n)*A206944(n+1))`
-/

namespace A313652.P13603598851178650230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A010000 n * A206944 (n + 1)).toNat

end

end A313652.P13603598851178650230

/-! ## A313652.P13061159516927412424

`A083875(3*n+2)-A365661(A241470(n+1))`
-/

namespace A313652.P13061159516927412424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083875 (3 * n + 2) - A365661 (A241470 (n + 1)).toNat

end

end A313652.P13061159516927412424

/-! ## A313652.P7038760141835882951

`∑[A280053(A255071(n+1)²)]`
-/

namespace A313652.P7038760141835882951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280053 (A255071 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313652.P7038760141835882951

/-! ## A313652.P14412926380266901124

`∑[A280053(A280019(n+1)²)]`
-/

namespace A313652.P14412926380266901124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280053 (A280019 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313652.P14412926380266901124

/-! ## A313652.P2847770801147889154

`A312207(n)+A001221(record[A325579(n)])`
-/

namespace A313652.P2847770801147889154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312207 n + A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A313652.P2847770801147889154

/-!
# A313653: Coordination sequence Gal.6.601.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313653, there is no canonical definition to state claims against.
-/

/-! ## A313653.P1256483885937752543

`A313440(n)+A154782(A049864(n))`
-/

namespace A313653.P1256483885937752543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313440 n + A154782 (A049864 n).toNat

end

end A313653.P1256483885937752543

/-! ## A313653.P14030078400118895206

`A274933(A313792(n)+(n²%3)^n)+A154782(A049864(n))`
-/

namespace A313653.P14030078400118895206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274933 (A313792 n + (((n ^ 2 % 3) ^ n : ℕ) : ℤ)).toNat + A154782 (A049864 n).toNat

end

end A313653.P14030078400118895206

/-!
# A313656: Coordination sequence Gal.6.503.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313656, there is no canonical definition to state claims against.
-/

/-! ## A313656.P10286837189252286535

`A160755(or(A008587(n), A314742(n)))`
-/

namespace A313656.P10286837189252286535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.lor (A008587 n) (A314742 n)).toNat

end

end A313656.P10286837189252286535

/-! ## A313656.P9587487747043873152

`A160755(or(A008706(n), A314742(n)))`
-/

namespace A313656.P9587487747043873152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.lor (A008706 n) (A314742 n)).toNat

end

end A313656.P9587487747043873152

/-! ## A313656.P17135443804835164877

`xor(A001222(A200755(n)), A314031(n))`
-/

namespace A313656.P17135443804835164877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A200755 n).toNat) (A314031 n)

end

end A313656.P17135443804835164877

/-! ## A313656.P6347469501493206571

`A363761(3*n+1)-A350959(A308910(2*n))`
-/

namespace A313656.P6347469501493206571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 (3 * n + 1) - A350959 (A308910 (2 * n)).toNat

end

end A313656.P6347469501493206571

/-!
# A313657: Coordination sequence Gal.6.601.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313657, there is no canonical definition to state claims against.
-/

/-! ## A313657.P8475835258041128364

`A314958(n)+A174875(A081741(n+1))`
-/

namespace A313657.P8475835258041128364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314958 n + A174875 (A081741 (n + 1)).toNat

end

end A313657.P8475835258041128364

/-! ## A313657.P13322107824562629316

`A313924(n)-A182850(A213093(n))`
-/

namespace A313657.P13322107824562629316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - A182850 (A213093 n).toNat

end

end A313657.P13322107824562629316

/-! ## A313657.P10223639156213528007

`A313561(n)+A134022(A259877(n+2))`
-/

namespace A313657.P10223639156213528007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n + A134022 (A259877 (n + 2)).toNat

end

end A313657.P10223639156213528007

/-! ## A313657.P5558851780717037100

`A314070(n)-A001221(A319778(n+2))`
-/

namespace A313657.P5558851780717037100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314070 n - A001221 (A319778 (n + 2)).toNat

end

end A313657.P5558851780717037100

/-!
# A313658: Coordination sequence Gal.6.363.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313658, the canonical program `A313658.P17289676240428697378` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313658 has offset 0).

The definition of A313658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313658.P17289676240428697378

`A314754(n)+A002264(A002264(n+1)+n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313658

/-- `A314754(n)+A002264(A002264(n+1)+n+1)` -/
def P17289676240428697378.Spec : Prop :=
  ∀ n, P17289676240428697378.a n = A313658 n

theorem P17289676240428697378.correct : P17289676240428697378.Spec := by
  intro n
  simp only [A313658]

end A313658

/-! ## A313658.P6283675213309717548

`A314754(n)+A111972(A036250(n))`
-/

namespace A313658.P6283675213309717548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314754 n + A111972 (A036250 n).toNat

end

end A313658.P6283675213309717548

namespace A313658

/-- `A314754(n)+A111972(A036250(n))` -/
def P6283675213309717548.Spec : Prop :=
  ∀ n, P6283675213309717548.a n = A313658 n

end A313658

/-! ## A313658.P7948841070093596761

`A314961(n)+A253786(A006882(n))`
-/

namespace A313658.P7948841070093596761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314961 n + A253786 (A006882 n).toNat

end

end A313658.P7948841070093596761

namespace A313658

/-- `A314961(n)+A253786(A006882(n))` -/
def P7948841070093596761.Spec : Prop :=
  ∀ n, P7948841070093596761.a n = A313658 n

end A313658

/-! ## A313658.P12886909288460683651

`A311601(n)+A111972(A196488(n+1))`
-/

namespace A313658.P12886909288460683651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311601 n + A111972 (A196488 (n + 1)).toNat

end

end A313658.P12886909288460683651

namespace A313658

/-- `A311601(n)+A111972(A196488(n+1))` -/
def P12886909288460683651.Spec : Prop :=
  ∀ n, P12886909288460683651.a n = A313658 n

end A313658

/-! ## A313658.P17917614154934623350

`or(A128174(A185064(n+4)), A313623(n))`
-/

namespace A313658.P17917614154934623350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128174 (A185064 (n + 4)).toNat) (A313623 n)

end

end A313658.P17917614154934623350

namespace A313658

/-- `or(A128174(A185064(n+4)), A313623(n))` -/
def P17917614154934623350.Spec : Prop :=
  ∀ n, P17917614154934623350.a n = A313658 n

end A313658

/-!
# A313659: Coordination sequence Gal.6.493.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313659, there is no canonical definition to state claims against.
-/

/-! ## A313659.P17609505569851484414

`A313777(n)-A185014(A206289(n))`
-/

namespace A313659.P17609505569851484414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313777 n - A185014 (A206289 n).toNat

end

end A313659.P17609505569851484414

/-! ## A313659.P75670731798427679

`A313777(n)-A055672(A062415(n+1))`
-/

namespace A313659.P75670731798427679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313777 n - A055672 (A062415 (n + 1)).toNat

end

end A313659.P75670731798427679

/-! ## A313659.P7601474269368275582

`A313777(n)-A121373(A272436(n+1))`
-/

namespace A313659.P7601474269368275582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313777 n - A121373 (A272436 (n + 1)).toNat

end

end A313659.P7601474269368275582

/-! ## A313659.P8144281903851314875

`A313777(n)+A015962(floor(∑[7/4^(n+1)]^n))`
-/

namespace A313659.P8144281903851314875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 / (4 ^ (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313777 n + A015962 ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ n⌋.toNat

end

end A313659.P8144281903851314875

/-!
# A313660: Coordination sequence Gal.4.126.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313660, the canonical program `A313660.P5112024612694540974` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313660 has offset 0).

The definition of A313660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1743 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313660.P2636597241070217426

`A315373(n)-A244895(n)`
-/

namespace A313660.P2636597241070217426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315373 n - A244895 n

end

end A313660.P2636597241070217426

namespace A313660

/-- `A315373(n)-A244895(n)` -/
def P2636597241070217426.Spec : Prop :=
  ∀ n, P2636597241070217426.a n = A313660 n

end A313660

/-! ## A313660.P16356990373184060723

`A315213(n)-A105384(A004273(n))`
-/

namespace A313660.P16356990373184060723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n - A105384 (A004273 n).toNat

end

end A313660.P16356990373184060723

namespace A313660

/-- `A315213(n)-A105384(A004273(n))` -/
def P16356990373184060723.Spec : Prop :=
  ∀ n, P16356990373184060723.a n = A313660 n

end A313660

/-! ## A313660.P5112024612694540974

`A313568(n)+A237420(Δ[A011858(n)])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313660

/-- `A313568(n)+A237420(Δ[A011858(n)])` -/
def P5112024612694540974.Spec : Prop :=
  ∀ n, P5112024612694540974.a n = A313660 n

theorem P5112024612694540974.correct : P5112024612694540974.Spec := by
  intro n
  simp only [A313660]

end A313660

/-! ## A313660.P1583508030617574232

`A313568(n)+A237420(A057354(n+1))`
-/

namespace A313660.P1583508030617574232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + A237420 (A057354 (n + 1)).toNat

end

end A313660.P1583508030617574232

namespace A313660

/-- `A313568(n)+A237420(A057354(n+1))` -/
def P1583508030617574232.Spec : Prop :=
  ∀ n, P1583508030617574232.a n = A313660 n

end A313660

/-! ## A313660.P4879090605267070886

`A315373(n)-A128834(A047263(n+1))`
-/

namespace A313660.P4879090605267070886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315373 n - A128834 (A047263 (n + 1)).toNat

end

end A313660.P4879090605267070886

namespace A313660

/-- `A315373(n)-A128834(A047263(n+1))` -/
def P4879090605267070886.Spec : Prop :=
  ∀ n, P4879090605267070886.a n = A313660 n

end A313660

/-! ## A313660.P13795351723096632506

`A315213(n)-A134667(A047263(n+1))`
-/

namespace A313660.P13795351723096632506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n - A134667 (A047263 (n + 1)).toNat

end

end A313660.P13795351723096632506

namespace A313660

/-- `A315213(n)-A134667(A047263(n+1))` -/
def P13795351723096632506.Spec : Prop :=
  ∀ n, P13795351723096632506.a n = A313660 n

end A313660

/-! ## A313660.P11294698794946734558

`A315213(n)-A102283(A265227(n+1))`
-/

namespace A313660.P11294698794946734558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n - A102283 (A265227 (n + 1)).toNat

end

end A313660.P11294698794946734558

namespace A313660

/-- `A315213(n)-A102283(A265227(n+1))` -/
def P11294698794946734558.Spec : Prop :=
  ∀ n, P11294698794946734558.a n = A313660 n

end A313660

/-! ## A313660.P11133354285202193516

`A315213(n)+A105384(A004273(n)+n)`
-/

namespace A313660.P11133354285202193516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n + A105384 (A004273 n + (n : ℤ)).toNat

end

end A313660.P11133354285202193516

namespace A313660

/-- `A315213(n)+A105384(A004273(n)+n)` -/
def P11133354285202193516.Spec : Prop :=
  ∀ n, P11133354285202193516.a n = A313660 n

end A313660

/-! ## A313660.P10269269237468703570

`A315213(n)+A102283(2*A265227(n+1))`
-/

namespace A313660.P10269269237468703570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n + A102283 (2 * A265227 (n + 1)).toNat

end

end A313660.P10269269237468703570

namespace A313660

/-- `A315213(n)+A102283(2*A265227(n+1))` -/
def P10269269237468703570.Spec : Prop :=
  ∀ n, P10269269237468703570.a n = A313660 n

end A313660

/-! ## A313660.P4066652813884222019

`A047486(n+1)+A315213(n)-A047448(n+1)`
-/

namespace A313660.P4066652813884222019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A315213 n - A047448 (n + 1))

end

end A313660.P4066652813884222019

namespace A313660

/-- `A047486(n+1)+A315213(n)-A047448(n+1)` -/
def P4066652813884222019.Spec : Prop :=
  ∀ n, P4066652813884222019.a n = A313660 n

end A313660

/-! ## A313660.P12188476520381316779

`A004525(A315218(2*n))`
-/

namespace A313660.P12188476520381316779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315218 (2 * n)).toNat

end

end A313660.P12188476520381316779

namespace A313660

/-- `A004525(A315218(2*n))` -/
def P12188476520381316779.Spec : Prop :=
  ∀ n, P12188476520381316779.a n = A313660 n

end A313660

/-!
# A313661: Coordination sequence Gal.6.602.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313661, there is no canonical definition to state claims against.
-/

/-! ## A313661.P6913300305239041342

`A360679(A332578(n))+A016813(n)`
-/

namespace A313661.P6913300305239041342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (A332578 n).toNat + A016813 n

end

end A313661.P6913300305239041342

/-!
# A313662: Coordination sequence Gal.5.202.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313662, there is no canonical definition to state claims against.
-/

/-! ## A313662.P17301889760812431889

`A004525(A315218(n)+A313660(n))`
-/

namespace A313662.P17301889760812431889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315218 n + A313660 n).toNat

end

end A313662.P17301889760812431889

/-! ## A313662.P6150635986048935204

`A004525(A315218(n)+A315373(n)-A244895(n))`
-/

namespace A313662.P6150635986048935204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315218 n + (A315373 n - A244895 n)).toNat

end

end A313662.P6150635986048935204

/-! ## A313662.P18394545869166216168

`A004525(A315218(n)-(A244895(n)-A315373(n)))`
-/

namespace A313662.P18394545869166216168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315218 n - (A244895 n - A315373 n)).toNat

end

end A313662.P18394545869166216168

/-! ## A313662.P14150693759537394576

`xor(A160086(A148925(n)), A313615(n))`
-/

namespace A313662.P14150693759537394576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A160086 (A148925 n).toNat) (A313615 n)

end

end A313662.P14150693759537394576

/-!
# A313663: Coordination sequence Gal.5.296.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313663, there is no canonical definition to state claims against.
-/

/-! ## A313663.P1999240620253569344

`2*floor(n*ϕ²)+1-A283318(A038296(n))`
-/

namespace A313663.P1999240620253569344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 1 - A283318 (A038296 n).toNat

end

end A313663.P1999240620253569344

/-! ## A313663.P7080475665407955314

`or(A011655(A319752(n)), A301678(n))`
-/

namespace A313663.P7080475665407955314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011655 (A319752 n).toNat) (A301678 n)

end

end A313663.P7080475665407955314

/-! ## A313663.P9722888998470378404

`or(A279278(A062399(n)), A301678(n))`
-/

namespace A313663.P9722888998470378404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279278 (A062399 n).toNat) (A301678 n)

end

end A313663.P9722888998470378404

/-! ## A313663.P2844020700757826744

`or(A279278(n), A301678(A120126(n)))`
-/

namespace A313663.P2844020700757826744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279278 n) (A301678 (A120126 n).toNat)

end

end A313663.P2844020700757826744

/-! ## A313663.P1900180016533742503

`or(A011746(A338197(n+1)), A301678(n))`
-/

namespace A313663.P1900180016533742503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011746 (A338197 (n + 1)).toNat) (A301678 n)

end

end A313663.P1900180016533742503

/-!
# A313669: Coordination sequence Gal.5.285.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313669, there is no canonical definition to state claims against.
-/

/-! ## A313669.P3329475980964644391

`or(A000122(A254716(n)), A095274(3*n+1))`
-/

namespace A313669.P3329475980964644391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A254716 n).toNat) (A095274 (3 * n + 1))

end

end A313669.P3329475980964644391

/-! ## A313669.P14835783132055914091

`A209615(A269303(3*n+4))+A126421(2*n+1)`
-/

namespace A313669.P14835783132055914091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A269303 (3 * n + 4)).toNat + A126421 (2 * n + 1)

end

end A313669.P14835783132055914091

/-!
# A313670: Coordination sequence Gal.6.611.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313670, there is no canonical definition to state claims against.
-/

/-! ## A313670.P4722753960822465076

`A313455(n)+A349797(A313496(2*(n+1))+1)/2`
-/

namespace A313670.P4722753960822465076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313455 n : ℚ) + (A349797 (A313496 (2 * (n + 1)) + 1).toNat : ℚ) / 2

end

end A313670.P4722753960822465076

/-!
# A313671: Coordination sequence Gal.6.615.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313671, there is no canonical definition to state claims against.
-/

/-! ## A313671.P11995576745447181956

`∑[A001222(A337777(2*n+1)+1)]`
-/

namespace A313671.P11995576745447181956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A337777 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313671.P11995576745447181956

/-! ## A313671.P6273434599778088145

`A344646(A311464(n)+A311446(n))`
-/

namespace A313671.P6273434599778088145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (A311464 n + A311446 n).toNat

end

end A313671.P6273434599778088145

/-! ## A313671.P12125481084975258352

`A344646(A311464(n)+A311447(n))`
-/

namespace A313671.P12125481084975258352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (A311464 n + A311447 n).toNat

end

end A313671.P12125481084975258352

/-! ## A313671.P17305575284319795651

`A344646(A311468(n)+A311441(n))`
-/

namespace A313671.P17305575284319795651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (A311468 n + A311441 n).toNat

end

end A313671.P17305575284319795651

/-! ## A313671.P15338691484420988466

`A344646(A311468(n)+A311443(n))`
-/

namespace A313671.P15338691484420988466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (A311468 n + A311443 n).toNat

end

end A313671.P15338691484420988466

/-!
# A313672: Coordination sequence Gal.6.499.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313672, there is no canonical definition to state claims against.
-/

/-! ## A313672.P2250561748084037418

`or(A071797(n+1), A123731(A022443(n+1)))`
-/

namespace A313672.P2250561748084037418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071797 (n + 1)) (A123731 (A022443 (n + 1)).toNat)

end

end A313672.P2250561748084037418

/-!
# A313673: Coordination sequence Gal.6.526.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313673, there is no canonical definition to state claims against.
-/

/-! ## A313673.P3342686910555247320

`A319695(A150938(n))+A311738(n)`
-/

namespace A313673.P3342686910555247320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (A150938 n).toNat + A311738 n

end

end A313673.P3342686910555247320

/-! ## A313673.P17749514198637747961

`A068949(A084092(n+1))+A053602(n)`
-/

namespace A313673.P17749514198637747961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068949 (A084092 (n + 1)).toNat + A053602 n

end

end A313673.P17749514198637747961

/-! ## A313673.P14804135355160593083

`A063097(n+1)-A293431(A001870(n))`
-/

namespace A313673.P14804135355160593083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (n + 1) - A293431 (A001870 n).toNat

end

end A313673.P14804135355160593083

/-! ## A313673.P1337683429712962138

`lt[A125181(A125179(n+1)), A125208(2*(n+2))]`
-/

namespace A313673.P1337683429712962138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125181 (A125179 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125208 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A313673.P1337683429712962138

/-! ## A313673.P17346505541870960014

`∑[A244895(n)]+A312567(n)-A162782((n+1)²)`
-/

namespace A313673.P17346505541870960014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A312567 n - A162782 ((n + 1) ^ 2))

end

end A313673.P17346505541870960014

/-!
# A313675: Coordination sequence Gal.6.526.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313675, there is no canonical definition to state claims against.
-/

/-! ## A313675.P11146780030963811532

`A029926(A029899(n+4))+A029903(2*(n+5))`
-/

namespace A313675.P11146780030963811532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029926 (A029899 (n + 4)).toNat + A029903 (2 * (n + 5))

end

end A313675.P11146780030963811532

/-! ## A313675.P8006096639769734436

`A314688(n)+A227944(A320736(n))`
-/

namespace A313675.P8006096639769734436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n + A227944 (A320736 n).toNat

end

end A313675.P8006096639769734436

/-! ## A313675.P4661284837475056221

`A313709(n)-A003982(A000142(n))`
-/

namespace A313675.P4661284837475056221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313709 n - A003982 (A000142 n).toNat

end

end A313675.P4661284837475056221

/-! ## A313675.P6834768786342665119

`A313738(n)-A067898(A002906(n))`
-/

namespace A313675.P6834768786342665119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313738 n - A067898 (A002906 n).toNat

end

end A313675.P6834768786342665119

/-! ## A313675.P2408789659631356874

`A326702(A014486(n))+A115392(2*n+1)`
-/

namespace A313675.P2408789659631356874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A014486 n).toNat + A115392 (2 * n + 1)

end

end A313675.P2408789659631356874

/-!
# A313678: Coordination sequence Gal.6.610.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313678, there is no canonical definition to state claims against.
-/

/-! ## A313678.P8743388698303332220

`or(A179868(A071721(n)), A312023(n))`
-/

namespace A313678.P8743388698303332220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A179868 (A071721 n).toNat) (A312023 n)

end

end A313678.P8743388698303332220

/-! ## A313678.P7878760315752862561

`or(A034444(A328430(n)), A311807(n))`
-/

namespace A313678.P7878760315752862561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034444 (A328430 n).toNat) (A311807 n)

end

end A313678.P7878760315752862561

/-! ## A313678.P4219106453863093312

`or(A040001(A253620(n+1)), A311780(n))`
-/

namespace A313678.P4219106453863093312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040001 (A253620 (n + 1)).toNat) (A311780 n)

end

end A313678.P4219106453863093312

/-! ## A313678.P1650777460538869057

`or(A165011(A126138(n+1)), A219639(n+1))`
-/

namespace A313678.P1650777460538869057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165011 (A126138 (n + 1)).toNat) (A219639 (n + 1))

end

end A313678.P1650777460538869057

/-! ## A313678.P4719745455360106518

`A345915(n+1)+A070939(A124506(3*n+1))`
-/

namespace A313678.P4719745455360106518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345915 (n + 1) + A070939 (A124506 (3 * n + 1)).toNat

end

end A313678.P4719745455360106518

/-!
# A313679: Coordination sequence Gal.5.210.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313679, there is no canonical definition to state claims against.
-/

/-! ## A313679.P1904362981046111614

`∑[A162341(∑[A064437(n+1)])]`
-/

namespace A313679.P1904362981046111614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162341 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313679.P1904362981046111614

/-! ## A313679.P16700088366123440719

`A311031(n)+comp[A119714(A147802(n+1))]`
-/

namespace A313679.P16700088366123440719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119714 (A147802 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311031 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313679.P16700088366123440719

/-!
# A313680: Coordination sequence Gal.6.120.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313680, the canonical program `A313680.P17138657541205040173` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313680 has offset 0).

The definition of A313680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313680.P17138657541205040173

`A314091(n)-A002264(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313680

/-- `A314091(n)-A002264(n+1)` -/
def P17138657541205040173.Spec : Prop :=
  ∀ n, P17138657541205040173.a n = A313680 n

theorem P17138657541205040173.correct : P17138657541205040173.Spec := by
  intro n
  simp only [A313680]

end A313680

/-! ## A313680.P10612009894400709941

`A004396(n)+A314091(n)-n`
-/

namespace A313680.P10612009894400709941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314091 n - (n : ℤ))

end

end A313680.P10612009894400709941

namespace A313680

/-- `A004396(n)+A314091(n)-n` -/
def P10612009894400709941.Spec : Prop :=
  ∀ n, P10612009894400709941.a n = A313680 n

end A313680

/-! ## A313680.P17269256209145160798

`A008576(n)+A314091(n)-A008486(n)`
-/

namespace A313680.P17269256209145160798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314091 n - A008486 n)

end

end A313680.P17269256209145160798

namespace A313680

/-- `A008576(n)+A314091(n)-A008486(n)` -/
def P17269256209145160798.Spec : Prop :=
  ∀ n, P17269256209145160798.a n = A313680 n

end A313680

/-! ## A313680.P7527808352102740437

`A315465(n)-A004525(n)`
-/

namespace A313680.P7527808352102740437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n - A004525 n

end

end A313680.P7527808352102740437

namespace A313680

/-- `A315465(n)-A004525(n)` -/
def P7527808352102740437.Spec : Prop :=
  ∀ n, P7527808352102740437.a n = A313680 n

end A313680

/-! ## A313680.P14166026183701584422

`A315465(n)-Δ[A054925(n)]`
-/

namespace A313680.P14166026183701584422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n - (f1 (n + 1) - f1 n)

end

end A313680.P14166026183701584422

namespace A313680

/-- `A315465(n)-Δ[A054925(n)]` -/
def P14166026183701584422.Spec : Prop :=
  ∀ n, P14166026183701584422.a n = A313680 n

end A313680

/-! ## A313680.P18056590317711550815

`Δ[A011848(n)]+A315465(n)-n`
-/

namespace A313680.P18056590317711550815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315465 n - (n : ℤ))

end

end A313680.P18056590317711550815

namespace A313680

/-- `Δ[A011848(n)]+A315465(n)-n` -/
def P18056590317711550815.Spec : Prop :=
  ∀ n, P18056590317711550815.a n = A313680 n

end A313680

/-! ## A313680.P15914326313579596353

`A315515(n)-A004396(n)`
-/

namespace A313680.P15914326313579596353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n - A004396 n

end

end A313680.P15914326313579596353

namespace A313680

/-- `A315515(n)-A004396(n)` -/
def P15914326313579596353.Spec : Prop :=
  ∀ n, P15914326313579596353.a n = A313680 n

end A313680

/-! ## A313680.P4512291021225634282

`A315515(n)-A002264(2*n+1)`
-/

namespace A313680.P4512291021225634282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n - A002264 (2 * n + 1)

end

end A313680.P4512291021225634282

namespace A313680

/-- `A315515(n)-A002264(2*n+1)` -/
def P4512291021225634282.Spec : Prop :=
  ∀ n, P4512291021225634282.a n = A313680 n

end A313680

/-! ## A313680.P1913544480337784831

`A180004(A313474(n))`
-/

namespace A313680.P1913544480337784831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A313474 n).toNat

end

end A313680.P1913544480337784831

namespace A313680

/-- `A180004(A313474(n))` -/
def P1913544480337784831.Spec : Prop :=
  ∀ n, P1913544480337784831.a n = A313680 n

end A313680

/-! ## A313680.P10111644517023095017

`abs(A008591(n)-A311536(n))`
-/

namespace A313680.P10111644517023095017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A311536 n|

end

end A313680.P10111644517023095017

namespace A313680

/-- `abs(A008591(n)-A311536(n))` -/
def P10111644517023095017.Spec : Prop :=
  ∀ n, P10111644517023095017.a n = A313680 n

end A313680

/-! ## A313680.P10548346324189781352

`A008458(n)+A008486(n)-A311536(n)`
-/

namespace A313680.P10548346324189781352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311536 n)

end

end A313680.P10548346324189781352

namespace A313680

/-- `A008458(n)+A008486(n)-A311536(n)` -/
def P10548346324189781352.Spec : Prop :=
  ∀ n, P10548346324189781352.a n = A313680 n

end A313680

/-! ## A313680.P13268632460464485473

`abs(A008592(n)-A313803(n))`
-/

namespace A313680.P13268632460464485473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313803 n|

end

end A313680.P13268632460464485473

namespace A313680

/-- `abs(A008592(n)-A313803(n))` -/
def P13268632460464485473.Spec : Prop :=
  ∀ n, P13268632460464485473.a n = A313680 n

end A313680

/-! ## A313680.P11401455344814099106

`2*A008706(n)-A313803(n)`
-/

namespace A313680.P11401455344814099106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313803 n

end

end A313680.P11401455344814099106

namespace A313680

/-- `2*A008706(n)-A313803(n)` -/
def P11401455344814099106.Spec : Prop :=
  ∀ n, P11401455344814099106.a n = A313680 n

end A313680

/-! ## A313680.P10937330099032106488

`abs(A008593(n)-(A313803(n)+n))`
-/

namespace A313680.P10937330099032106488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A313803 n + (n : ℤ))|

end

end A313680.P10937330099032106488

namespace A313680

/-- `abs(A008593(n)-(A313803(n)+n))` -/
def P10937330099032106488.Spec : Prop :=
  ∀ n, P10937330099032106488.a n = A313680 n

end A313680

/-! ## A313680.P18412881717156478596

`A008458(n)+A008574(n)-A313803(n)`
-/

namespace A313680.P18412881717156478596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313803 n)

end

end A313680.P18412881717156478596

namespace A313680

/-- `A008458(n)+A008574(n)-A313803(n)` -/
def P18412881717156478596.Spec : Prop :=
  ∀ n, P18412881717156478596.a n = A313680 n

end A313680

/-! ## A313680.P17778426522959833273

`A315741(n)-n`
-/

namespace A313680.P17778426522959833273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315741 n - (n : ℤ)

end

end A313680.P17778426522959833273

namespace A313680

/-- `A315741(n)-n` -/
def P17778426522959833273.Spec : Prop :=
  ∀ n, P17778426522959833273.a n = A313680 n

end A313680

/-! ## A313680.P770879343108141117

`A004525(A315670(n))+2*n`
-/

namespace A313680.P770879343108141117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315670 n).toNat + (2 * n : ℤ)

end

end A313680.P770879343108141117

namespace A313680

/-- `A004525(A315670(n))+2*n` -/
def P770879343108141117.Spec : Prop :=
  ∀ n, P770879343108141117.a n = A313680 n

end A313680

/-! ## A313680.P2044664285526910170

`A004525(2*A314108(n)-n)`
-/

namespace A313680.P2044664285526910170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A314108 n - (n : ℤ)).toNat

end

end A313680.P2044664285526910170

namespace A313680

/-- `A004525(2*A314108(n)-n)` -/
def P2044664285526910170.Spec : Prop :=
  ∀ n, P2044664285526910170.a n = A313680 n

end A313680

/-! ## A313680.P14699802535296432120

`A004525(2*A315462(n)-n)`
-/

namespace A313680.P14699802535296432120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A315462 n - (n : ℤ)).toNat

end

end A313680.P14699802535296432120

namespace A313680

/-- `A004525(2*A315462(n)-n)` -/
def P14699802535296432120.Spec : Prop :=
  ∀ n, P14699802535296432120.a n = A313680 n

end A313680

/-! ## A313680.P17097034504777344376

`A004525(A314108(n)+A314108(n)-n)`
-/

namespace A313680.P17097034504777344376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314108 n + (A314108 n - (n : ℤ))).toNat

end

end A313680.P17097034504777344376

namespace A313680

/-- `A004525(A314108(n)+A314108(n)-n)` -/
def P17097034504777344376.Spec : Prop :=
  ∀ n, P17097034504777344376.a n = A313680 n

end A313680

/-!
# A313681: Coordination sequence Gal.6.221.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313681, the canonical program `A313681.P14873432728710291836` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313681 has offset 0).

The definition of A313681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313681.P7737402768932458295

`(A315725(n)+A008574(n))/2`
-/

namespace A313681.P7737402768932458295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315725 n + A008574 n : ℚ) / 2

end

end A313681.P7737402768932458295

namespace A313681

/-- `(A315725(n)+A008574(n))/2` -/
def P7737402768932458295.Spec : Prop :=
  ∀ n, P7737402768932458295.a n = (A313681 n : ℚ)

end A313681

/-! ## A313681.P14873432728710291836

`A008574(n)+A001281(A315725(n)-A008574(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A313681

/-- `A008574(n)+A001281(A315725(n)-A008574(n))` -/
def P14873432728710291836.Spec : Prop :=
  ∀ n, P14873432728710291836.a n = A313681 n

theorem P14873432728710291836.correct : P14873432728710291836.Spec := by
  intro n
  simp only [A313681]

end A313681

/-! ## A313681.P533388144750735293

`abs(A008592(n)-A313802(n))`
-/

namespace A313681.P533388144750735293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313802 n|

end

end A313681.P533388144750735293

namespace A313681

/-- `abs(A008592(n)-A313802(n))` -/
def P533388144750735293.Spec : Prop :=
  ∀ n, P533388144750735293.a n = A313681 n

end A313681

/-! ## A313681.P6406474361716700076

`2*A008706(n)-A313802(n)`
-/

namespace A313681.P6406474361716700076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313802 n

end

end A313681.P6406474361716700076

namespace A313681

/-- `2*A008706(n)-A313802(n)` -/
def P6406474361716700076.Spec : Prop :=
  ∀ n, P6406474361716700076.a n = A313681 n

end A313681

/-! ## A313681.P12819793601485307093

`A008458(n)+A008574(n)-A313802(n)`
-/

namespace A313681.P12819793601485307093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313802 n)

end

end A313681.P12819793601485307093

namespace A313681

/-- `A008458(n)+A008574(n)-A313802(n)` -/
def P12819793601485307093.Spec : Prop :=
  ∀ n, P12819793601485307093.a n = A313681 n

end A313681

/-! ## A313681.P10078680607918023278

`∑{d}[A008592(n)-A313802(n), A000010(#)]`
-/

namespace A313681.P10078680607918023278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313681.P10078680607918023278

namespace A313681

/-- `∑{d}[A008592(n)-A313802(n), A000010(#)]` -/
def P10078680607918023278.Spec : Prop :=
  ∀ n, P10078680607918023278.a n = A313681 n

end A313681

/-! ## A313681.P13232319057144982767

`A313802(n)-A005843(A313802(n)-A008706(n))`
-/

namespace A313681.P13232319057144982767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313802 n - A005843 (A313802 n - A008706 n).toNat

end

end A313681.P13232319057144982767

namespace A313681

/-- `A313802(n)-A005843(A313802(n)-A008706(n))` -/
def P13232319057144982767.Spec : Prop :=
  ∀ n, P13232319057144982767.a n = A313681 n

end A313681

/-! ## A313681.P7902231120667813161

`A008458(n)+n-A004526(A311635(n))`
-/

namespace A313681.P7902231120667813161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A311635 n).toNat)

end

end A313681.P7902231120667813161

namespace A313681

/-- `A008458(n)+n-A004526(A311635(n))` -/
def P7902231120667813161.Spec : Prop :=
  ∀ n, P7902231120667813161.a n = A313681 n

end A313681

/-! ## A313681.P9036882385255798987

`A005843(A008706(n))-A313802(n)`
-/

namespace A313681.P9036882385255798987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313802 n

end

end A313681.P9036882385255798987

namespace A313681

/-- `A005843(A008706(n))-A313802(n)` -/
def P9036882385255798987.Spec : Prop :=
  ∀ n, P9036882385255798987.a n = A313681 n

end A313681

/-! ## A313681.P10326298928335154498

`A005843(A008458(n)-n)-A313802(n)`
-/

namespace A313681.P10326298928335154498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313802 n

end

end A313681.P10326298928335154498

namespace A313681

/-- `A005843(A008458(n)-n)-A313802(n)` -/
def P10326298928335154498.Spec : Prop :=
  ∀ n, P10326298928335154498.a n = A313681 n

end A313681

/-! ## A313681.P2986459042091304892

`A005843(A008486(n)+A005843(n))-A313802(n)`
-/

namespace A313681.P2986459042091304892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008486 n + A005843 n).toNat - A313802 n

end

end A313681.P2986459042091304892

namespace A313681

/-- `A005843(A008486(n)+A005843(n))-A313802(n)` -/
def P2986459042091304892.Spec : Prop :=
  ∀ n, P2986459042091304892.a n = A313681 n

end A313681

/-! ## A313681.P17437891359019341735

`A004525(A315678(n))+2*n`
-/

namespace A313681.P17437891359019341735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315678 n).toNat + (2 * n : ℤ)

end

end A313681.P17437891359019341735

namespace A313681

/-- `A004525(A315678(n))+2*n` -/
def P17437891359019341735.Spec : Prop :=
  ∀ n, P17437891359019341735.a n = A313681 n

end A313681

/-! ## A313681.P8577135374479660615

`A004526(A315725(n))+A004277(n)`
-/

namespace A313681.P8577135374479660615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315725 n).toNat + A004277 n

end

end A313681.P8577135374479660615

namespace A313681

/-- `A004526(A315725(n))+A004277(n)` -/
def P8577135374479660615.Spec : Prop :=
  ∀ n, P8577135374479660615.a n = A313681 n

end A313681

/-! ## A313681.P12654727500694999200

`A005843(n)+A004525(A315678(n))`
-/

namespace A313681.P12654727500694999200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315678 n).toNat

end

end A313681.P12654727500694999200

namespace A313681

/-- `A005843(n)+A004525(A315678(n))` -/
def P12654727500694999200.Spec : Prop :=
  ∀ n, P12654727500694999200.a n = A313681 n

end A313681

/-! ## A313681.P12258225739358770140

`A005843(n)+A004525(A315725(n))`
-/

namespace A313681.P12258225739358770140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315725 n).toNat

end

end A313681.P12258225739358770140

namespace A313681

/-- `A005843(n)+A004525(A315725(n))` -/
def P12258225739358770140.Spec : Prop :=
  ∀ n, P12258225739358770140.a n = A313681 n

end A313681

/-! ## A313681.P6710185175091625218

`A065502(A315740(n))/2`
-/

namespace A313681.P6710185175091625218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065502 (A315740 n).toNat : ℚ) / 2

end

end A313681.P6710185175091625218

namespace A313681

/-- `A065502(A315740(n))/2` -/
def P6710185175091625218.Spec : Prop :=
  ∀ n, P6710185175091625218.a n = (A313681 n : ℚ)

end A313681

/-! ## A313681.P2674895844775697744

`A004526(A315725(n)+4*n+1)`
-/

namespace A313681.P2674895844775697744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315725 n + (4 * n + 1 : ℤ)).toNat

end

end A313681.P2674895844775697744

namespace A313681

/-- `A004526(A315725(n)+4*n+1)` -/
def P2674895844775697744.Spec : Prop :=
  ∀ n, P2674895844775697744.a n = A313681 n

end A313681

/-! ## A313681.P5278134351155170673

`A001281(A315725(n)+A008574(n))`
-/

namespace A313681.P5278134351155170673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315725 n + A008574 n).toNat

end

end A313681.P5278134351155170673

namespace A313681

/-- `A001281(A315725(n)+A008574(n))` -/
def P5278134351155170673.Spec : Prop :=
  ∀ n, P5278134351155170673.a n = A313681 n

end A313681

/-!
# A313682: Coordination sequence Gal.5.55.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313682, the canonical program `A313682.P7898542429883627702` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313682 has offset 0).

The definition of A313682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313682.P10835202749287852987

`abs(A008591(n)-A311535(n))`
-/

namespace A313682.P10835202749287852987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A311535 n|

end

end A313682.P10835202749287852987

namespace A313682

/-- `abs(A008591(n)-A311535(n))` -/
def P10835202749287852987.Spec : Prop :=
  ∀ n, P10835202749287852987.a n = A313682 n

end A313682

/-! ## A313682.P7898542429883627702

`A047263(n+1)+A313476(n)-n`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313682

/-- `A047263(n+1)+A313476(n)-n` -/
def P7898542429883627702.Spec : Prop :=
  ∀ n, P7898542429883627702.a n = A313682 n

theorem P7898542429883627702.correct : P7898542429883627702.Spec := by
  intro n
  simp only [A313682]

end A313682

/-! ## A313682.P6742639643486536836

`A005843(A008574(n))+n-A311535(n)`
-/

namespace A313682.P6742639643486536836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A311535 n)

end

end A313682.P6742639643486536836

namespace A313682

/-- `A005843(A008574(n))+n-A311535(n)` -/
def P6742639643486536836.Spec : Prop :=
  ∀ n, P6742639643486536836.a n = A313682 n

end A313682

/-! ## A313682.P6367841938355017349

`A008458(n)+A008486(n)-A311535(n)`
-/

namespace A313682.P6367841938355017349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311535 n)

end

end A313682.P6367841938355017349

namespace A313682

/-- `A008458(n)+A008486(n)-A311535(n)` -/
def P6367841938355017349.Spec : Prop :=
  ∀ n, P6367841938355017349.a n = A313682 n

end A313682

/-! ## A313682.P10126620640232633419

`A314670(n)+n-A004525(A151988(n))`
-/

namespace A313682.P10126620640232633419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + ((n : ℤ) - A004525 (A151988 n).toNat)

end

end A313682.P10126620640232633419

namespace A313682

/-- `A314670(n)+n-A004525(A151988(n))` -/
def P10126620640232633419.Spec : Prop :=
  ∀ n, P10126620640232633419.a n = A313682 n

end A313682

/-! ## A313682.P17474240310199413228

`A314827(n)+n-A004396(A151988(n))`
-/

namespace A313682.P17474240310199413228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314827 n + ((n : ℤ) - A004396 (A151988 n).toNat)

end

end A313682.P17474240310199413228

namespace A313682

/-- `A314827(n)+n-A004396(A151988(n))` -/
def P17474240310199413228.Spec : Prop :=
  ∀ n, P17474240310199413228.a n = A313682 n

end A313682

/-! ## A313682.P1262351528394015064

`A312143(n)+A253262(n)`
-/

namespace A313682.P1262351528394015064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312143 n + A253262 n

end

end A313682.P1262351528394015064

namespace A313682

/-- `A312143(n)+A253262(n)` -/
def P1262351528394015064.Spec : Prop :=
  ∀ n, P1262351528394015064.a n = A313682 n

end A313682

/-! ## A313682.P17959062776018878242

`A330025(n)+A313053(n)`
-/

namespace A313682.P17959062776018878242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313053 n

end

end A313682.P17959062776018878242

namespace A313682

/-- `A330025(n)+A313053(n)` -/
def P17959062776018878242.Spec : Prop :=
  ∀ n, P17959062776018878242.a n = A313682 n

end A313682

/-! ## A313682.P13486448598518946047

`(A315726(n)+A008574(n))/2`
-/

namespace A313682.P13486448598518946047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315726 n + A008574 n : ℚ) / 2

end

end A313682.P13486448598518946047

namespace A313682

/-- `(A315726(n)+A008574(n))/2` -/
def P13486448598518946047.Spec : Prop :=
  ∀ n, P13486448598518946047.a n = (A313682 n : ℚ)

end A313682

/-! ## A313682.P7164254452983326142

`Δ[A011858(n)]+A315508(n)-n`
-/

namespace A313682.P7164254452983326142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315508 n - (n : ℤ))

end

end A313682.P7164254452983326142

namespace A313682

/-- `Δ[A011858(n)]+A315508(n)-n` -/
def P7164254452983326142.Spec : Prop :=
  ∀ n, P7164254452983326142.a n = A313682 n

end A313682

/-! ## A313682.P8244614780493152006

`2*A008706(n)-A313801(n)`
-/

namespace A313682.P8244614780493152006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313801 n

end

end A313682.P8244614780493152006

namespace A313682

/-- `2*A008706(n)-A313801(n)` -/
def P8244614780493152006.Spec : Prop :=
  ∀ n, P8244614780493152006.a n = A313682 n

end A313682

/-! ## A313682.P11125972875372904396

`A008458(n)+A008574(n)-A313801(n)`
-/

namespace A313682.P11125972875372904396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313801 n)

end

end A313682.P11125972875372904396

namespace A313682

/-- `A008458(n)+A008574(n)-A313801(n)` -/
def P11125972875372904396.Spec : Prop :=
  ∀ n, P11125972875372904396.a n = A313682 n

end A313682

/-! ## A313682.P14292176940822321306

`A314220(n)+A330025(n)-n`
-/

namespace A313682.P14292176940822321306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n + (A330025 n - (n : ℤ))

end

end A313682.P14292176940822321306

namespace A313682

/-- `A314220(n)+A330025(n)-n` -/
def P14292176940822321306.Spec : Prop :=
  ∀ n, P14292176940822321306.a n = A313682 n

end A313682

/-! ## A313682.P12573503783481156836

`A315742(n)-n`
-/

namespace A313682.P12573503783481156836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315742 n - (n : ℤ)

end

end A313682.P12573503783481156836

namespace A313682

/-- `A315742(n)-n` -/
def P12573503783481156836.Spec : Prop :=
  ∀ n, P12573503783481156836.a n = A313682 n

end A313682

/-! ## A313682.P6270305430284683337

`A315749(n)-A151988(n)`
-/

namespace A313682.P6270305430284683337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315749 n - A151988 n

end

end A313682.P6270305430284683337

namespace A313682

/-- `A315749(n)-A151988(n)` -/
def P6270305430284683337.Spec : Prop :=
  ∀ n, P6270305430284683337.a n = A313682 n

end A313682

/-! ## A313682.P11628791414721404671

`A253262(n)+A313928(n)-n`
-/

namespace A313682.P11628791414721404671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A313928 n - (n : ℤ))

end

end A313682.P11628791414721404671

namespace A313682

/-- `A253262(n)+A313928(n)-n` -/
def P11628791414721404671.Spec : Prop :=
  ∀ n, P11628791414721404671.a n = A313682 n

end A313682

/-! ## A313682.P11890984992664374397

`A005843(A008706(n))-(A311535(n)+n)`
-/

namespace A313682.P11890984992664374397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - (A311535 n + (n : ℤ))

end

end A313682.P11890984992664374397

namespace A313682

/-- `A005843(A008706(n))-(A311535(n)+n)` -/
def P11890984992664374397.Spec : Prop :=
  ∀ n, P11890984992664374397.a n = A313682 n

end A313682

/-! ## A313682.P13659390835887311025

`A005843(A008458(n)-n)-A313801(n)`
-/

namespace A313682.P13659390835887311025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313801 n

end

end A313682.P13659390835887311025

namespace A313682

/-- `A005843(A008458(n)-n)-A313801(n)` -/
def P13659390835887311025.Spec : Prop :=
  ∀ n, P13659390835887311025.a n = A313682 n

end A313682

/-! ## A313682.P3572476646393322071

`A004525(A315679(n))+2*n`
-/

namespace A313682.P3572476646393322071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315679 n).toNat + (2 * n : ℤ)

end

end A313682.P3572476646393322071

namespace A313682

/-- `A004525(A315679(n))+2*n` -/
def P3572476646393322071.Spec : Prop :=
  ∀ n, P3572476646393322071.a n = A313682 n

end A313682

/-! ## A313682.P16762702741692188242

`A004396(A315737(n))+n`
-/

namespace A313682.P16762702741692188242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315737 n).toNat + (n : ℤ)

end

end A313682.P16762702741692188242

namespace A313682

/-- `A004396(A315737(n))+n` -/
def P16762702741692188242.Spec : Prop :=
  ∀ n, P16762702741692188242.a n = A313682 n

end A313682

/-!
# A313683: Coordination sequence Gal.5.100.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313683, the canonical program `A313683.P3336220210830735973` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313683 has offset 0).

The definition of A313683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313683.P12572720406017592268

`A313477(n)+Δ[A011862(n)]`
-/

namespace A313683.P12572720406017592268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313477 n + (f1 (n + 1) - f1 n)

end

end A313683.P12572720406017592268

namespace A313683

/-- `A313477(n)+Δ[A011862(n)]` -/
def P12572720406017592268.Spec : Prop :=
  ∀ n, P12572720406017592268.a n = A313683 n

end A313683

/-! ## A313683.P14694955177075116618

`A008706(n)-A093390(n+3)`
-/

namespace A313683.P14694955177075116618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A093390 (n + 3)

end

end A313683.P14694955177075116618

namespace A313683

/-- `A008706(n)-A093390(n+3)` -/
def P14694955177075116618.Spec : Prop :=
  ∀ n, P14694955177075116618.a n = A313683 n

end A313683

/-! ## A313683.P3336220210830735973

`A314828(n)+A004396(n-A004396(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313683

/-- `A314828(n)+A004396(n-A004396(n))` -/
def P3336220210830735973.Spec : Prop :=
  ∀ n, P3336220210830735973.a n = A313683 n

theorem P3336220210830735973.correct : P3336220210830735973.Spec := by
  intro n
  simp only [A313683]

end A313683

/-! ## A313683.P2798848044173507365

`A004396(n)+A313477(n)-A004396(A004396(n))`
-/

namespace A313683.P2798848044173507365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313477 n - A004396 (A004396 n).toNat)

end

end A313683.P2798848044173507365

namespace A313683

/-- `A004396(n)+A313477(n)-A004396(A004396(n))` -/
def P2798848044173507365.Spec : Prop :=
  ∀ n, P2798848044173507365.a n = A313683 n

end A313683

/-! ## A313683.P16666599106112369336

`A314848(n)-A128834(A006369(2*n))`
-/

namespace A313683.P16666599106112369336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n - A128834 (A006369 (2 * n)).toNat

end

end A313683.P16666599106112369336

namespace A313683

/-- `A314848(n)-A128834(A006369(2*n))` -/
def P16666599106112369336.Spec : Prop :=
  ∀ n, P16666599106112369336.a n = A313683 n

end A313683

/-! ## A313683.P1444752101149239808

`A314088(n)-A004396(n-A004396(n))`
-/

namespace A313683.P1444752101149239808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314088 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313683.P1444752101149239808

namespace A313683

/-- `A314088(n)-A004396(n-A004396(n))` -/
def P1444752101149239808.Spec : Prop :=
  ∀ n, P1444752101149239808.a n = A313683 n

end A313683

/-! ## A313683.P12465214060331724595

`A315463(n)-A004396(A004396(n))`
-/

namespace A313683.P12465214060331724595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315463 n - A004396 (A004396 n).toNat

end

end A313683.P12465214060331724595

namespace A313683

/-- `A315463(n)-A004396(A004396(n))` -/
def P12465214060331724595.Spec : Prop :=
  ∀ n, P12465214060331724595.a n = A313683 n

end A313683

/-! ## A313683.P1282469547166503469

`(A315727(n)+A008574(n))/2`
-/

namespace A313683.P1282469547166503469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315727 n + A008574 n : ℚ) / 2

end

end A313683.P1282469547166503469

namespace A313683

/-- `(A315727(n)+A008574(n))/2` -/
def P1282469547166503469.Spec : Prop :=
  ∀ n, P1282469547166503469.a n = (A313683 n : ℚ)

end A313683

/-! ## A313683.P17801385033812571853

`abs(A008592(n)-A313799(n))`
-/

namespace A313683.P17801385033812571853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313799 n|

end

end A313683.P17801385033812571853

namespace A313683

/-- `abs(A008592(n)-A313799(n))` -/
def P17801385033812571853.Spec : Prop :=
  ∀ n, P17801385033812571853.a n = A313683 n

end A313683

/-! ## A313683.P12281378388816335238

`2*A008706(n)-A313799(n)`
-/

namespace A313683.P12281378388816335238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313799 n

end

end A313683.P12281378388816335238

namespace A313683

/-- `2*A008706(n)-A313799(n)` -/
def P12281378388816335238.Spec : Prop :=
  ∀ n, P12281378388816335238.a n = A313683 n

end A313683

/-! ## A313683.P16026036182877656406

`A008458(n)+A008574(n)-A313799(n)`
-/

namespace A313683.P16026036182877656406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313799 n)

end

end A313683.P16026036182877656406

namespace A313683

/-- `A008458(n)+A008574(n)-A313799(n)` -/
def P16026036182877656406.Spec : Prop :=
  ∀ n, P16026036182877656406.a n = A313683 n

end A313683

/-! ## A313683.P9239969264881819954

`∑{d}[A008592(n)-A313799(n), A000010(#)]`
-/

namespace A313683.P9239969264881819954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313683.P9239969264881819954

namespace A313683

/-- `∑{d}[A008592(n)-A313799(n), A000010(#)]` -/
def P9239969264881819954.Spec : Prop :=
  ∀ n, P9239969264881819954.a n = A313683 n

end A313683

/-! ## A313683.P1932533866761216551

`A315757(n)-A004396(A004396(n)+n)`
-/

namespace A313683.P1932533866761216551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315757 n - A004396 (A004396 n + (n : ℤ)).toNat

end

end A313683.P1932533866761216551

namespace A313683

/-- `A315757(n)-A004396(A004396(n)+n)` -/
def P1932533866761216551.Spec : Prop :=
  ∀ n, P1932533866761216551.a n = A313683 n

end A313683

/-! ## A313683.P8916663851032812622

`A008589(n)+A001057(A311633(n))`
-/

namespace A313683.P8916663851032812622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n + A001057 (A311633 n).toNat

end

end A313683.P8916663851032812622

namespace A313683

/-- `A008589(n)+A001057(A311633(n))` -/
def P8916663851032812622.Spec : Prop :=
  ∀ n, P8916663851032812622.a n = A313683 n

end A313683

/-! ## A313683.P3456305493013934220

`A005843(A008458(n)-n)-A313799(n)`
-/

namespace A313683.P3456305493013934220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313799 n

end

end A313683.P3456305493013934220

namespace A313683

/-- `A005843(A008458(n)-n)-A313799(n)` -/
def P3456305493013934220.Spec : Prop :=
  ∀ n, P3456305493013934220.a n = A313683 n

end A313683

/-! ## A313683.P7363395999324836770

`A004525(A315680(n))+2*n`
-/

namespace A313683.P7363395999324836770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315680 n).toNat + (2 * n : ℤ)

end

end A313683.P7363395999324836770

namespace A313683

/-- `A004525(A315680(n))+2*n` -/
def P7363395999324836770.Spec : Prop :=
  ∀ n, P7363395999324836770.a n = A313683 n

end A313683

/-! ## A313683.P11296614406772265864

`A004525(A315727(n))+Δ[A002061(n)]`
-/

namespace A313683.P11296614406772265864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315727 n).toNat + (f1 (n + 1) - f1 n)

end

end A313683.P11296614406772265864

namespace A313683

/-- `A004525(A315727(n))+Δ[A002061(n)]` -/
def P11296614406772265864.Spec : Prop :=
  ∀ n, P11296614406772265864.a n = A313683 n

end A313683

/-! ## A313683.P2564997053588537312

`A004396(A004396(n)+A315680(n)+n)`
-/

namespace A313683.P2564997053588537312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n + (A315680 n + (n : ℤ))).toNat

end

end A313683.P2564997053588537312

namespace A313683

/-- `A004396(A004396(n)+A315680(n)+n)` -/
def P2564997053588537312.Spec : Prop :=
  ∀ n, P2564997053588537312.a n = A313683 n

end A313683

/-! ## A313683.P8268887833497156619

`A004396(A004396(n)+A315727(n)+n)`
-/

namespace A313683.P8268887833497156619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n + (A315727 n + (n : ℤ))).toNat

end

end A313683.P8268887833497156619

namespace A313683

/-- `A004396(A004396(n)+A315727(n)+n)` -/
def P8268887833497156619.Spec : Prop :=
  ∀ n, P8268887833497156619.a n = A313683 n

end A313683

/-! ## A313683.P15427292331408357000

`A022144(n)-A093390(A017305(n))`
-/

namespace A313683.P15427292331408357000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A093390 (A017305 n).toNat

end

end A313683.P15427292331408357000

namespace A313683

/-- `A022144(n)-A093390(A017305(n))` -/
def P15427292331408357000.Spec : Prop :=
  ∀ n, P15427292331408357000.a n = A313683 n

end A313683

/-!
# A313684: Coordination sequence Gal.6.259.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313684, the canonical program `A313684.P7430096167787627216` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313684 has offset 0).

The definition of A313684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313684.P7846903060451741798

`A313228(n)+A128834(n)`
-/

namespace A313684.P7846903060451741798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313228 n + A128834 n

end

end A313684.P7846903060451741798

namespace A313684

/-- `A313228(n)+A128834(n)` -/
def P7846903060451741798.Spec : Prop :=
  ∀ n, P7846903060451741798.a n = A313684 n

end A313684

/-! ## A313684.P7430096167787627216

`A314094(n)-A002264(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313684

/-- `A314094(n)-A002264(n+1)` -/
def P7430096167787627216.Spec : Prop :=
  ∀ n, P7430096167787627216.a n = A313684 n

theorem P7430096167787627216.correct : P7430096167787627216.Spec := by
  intro n
  simp only [A313684]

end A313684

/-! ## A313684.P179370784170735071

`A004396(n)+A314094(n)-n`
-/

namespace A313684.P179370784170735071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314094 n - (n : ℤ))

end

end A313684.P179370784170735071

namespace A313684

/-- `A004396(n)+A314094(n)-n` -/
def P179370784170735071.Spec : Prop :=
  ∀ n, P179370784170735071.a n = A313684 n

end A313684

/-! ## A313684.P10334625095894386336

`A314668(n)+n-A004525(n)`
-/

namespace A313684.P10334625095894386336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n + ((n : ℤ) - A004525 n)

end

end A313684.P10334625095894386336

namespace A313684

/-- `A314668(n)+n-A004525(n)` -/
def P10334625095894386336.Spec : Prop :=
  ∀ n, P10334625095894386336.a n = A313684 n

end A313684

/-! ## A313684.P6911247178782128002

`abs(A008592(n)-(A311512(n)+n))`
-/

namespace A313684.P6911247178782128002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A311512 n + (n : ℤ))|

end

end A313684.P6911247178782128002

namespace A313684

/-- `abs(A008592(n)-(A311512(n)+n))` -/
def P6911247178782128002.Spec : Prop :=
  ∀ n, P6911247178782128002.a n = A313684 n

end A313684

/-! ## A313684.P15467616452860821272

`A047424(n+1)+A313023(n)-n`
-/

namespace A313684.P15467616452860821272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A313023 n - (n : ℤ))

end

end A313684.P15467616452860821272

namespace A313684

/-- `A047424(n+1)+A313023(n)-n` -/
def P15467616452860821272.Spec : Prop :=
  ∀ n, P15467616452860821272.a n = A313684 n

end A313684

/-! ## A313684.P15055062729859878116

`A047273(n+1)+A314668(n)-n`
-/

namespace A313684.P15055062729859878116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (A314668 n - (n : ℤ))

end

end A313684.P15055062729859878116

namespace A313684

/-- `A047273(n+1)+A314668(n)-n` -/
def P15055062729859878116.Spec : Prop :=
  ∀ n, P15055062729859878116.a n = A313684 n

end A313684

/-! ## A313684.P3613019690831239532

`A008458(n)+A008486(n)-A311512(n)`
-/

namespace A313684.P3613019690831239532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311512 n)

end

end A313684.P3613019690831239532

namespace A313684

/-- `A008458(n)+A008486(n)-A311512(n)` -/
def P3613019690831239532.Spec : Prop :=
  ∀ n, P3613019690831239532.a n = A313684 n

end A313684

/-! ## A313684.P5487957203506427813

`A008576(n)+A314094(n)-A008486(n)`
-/

namespace A313684.P5487957203506427813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314094 n - A008486 n)

end

end A313684.P5487957203506427813

namespace A313684

/-- `A008576(n)+A314094(n)-A008486(n)` -/
def P5487957203506427813.Spec : Prop :=
  ∀ n, P5487957203506427813.a n = A313684 n

end A313684

/-! ## A313684.P3321457737146123037

`A315467(n)-A004525(n)`
-/

namespace A313684.P3321457737146123037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315467 n - A004525 n

end

end A313684.P3321457737146123037

namespace A313684

/-- `A315467(n)-A004525(n)` -/
def P3321457737146123037.Spec : Prop :=
  ∀ n, P3321457737146123037.a n = A313684 n

end A313684

/-! ## A313684.P12079198110504862913

`∑[A021913(n)]+A315467(n)-n`
-/

namespace A313684.P12079198110504862913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315467 n - (n : ℤ))

end

end A313684.P12079198110504862913

namespace A313684

/-- `∑[A021913(n)]+A315467(n)-n` -/
def P12079198110504862913.Spec : Prop :=
  ∀ n, P12079198110504862913.a n = A313684 n

end A313684

/-! ## A313684.P14019143416095326308

`Δ[A011848(n)]+A315467(n)-n`
-/

namespace A313684.P14019143416095326308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315467 n - (n : ℤ))

end

end A313684.P14019143416095326308

namespace A313684

/-- `Δ[A011848(n)]+A315467(n)-n` -/
def P14019143416095326308.Spec : Prop :=
  ∀ n, P14019143416095326308.a n = A313684 n

end A313684

/-! ## A313684.P5565620238775584829

`A315488(n)-A004396(2*A004525(n))`
-/

namespace A313684.P5565620238775584829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315488 n - A004396 (2 * A004525 n).toNat

end

end A313684.P5565620238775584829

namespace A313684

/-- `A315488(n)-A004396(2*A004525(n))` -/
def P5565620238775584829.Spec : Prop :=
  ∀ n, P5565620238775584829.a n = A313684 n

end A313684

/-! ## A313684.P2297799467430599451

`abs(A008593(n)-(A313794(n)+n))`
-/

namespace A313684.P2297799467430599451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A313794 n + (n : ℤ))|

end

end A313684.P2297799467430599451

namespace A313684

/-- `abs(A008593(n)-(A313794(n)+n))` -/
def P2297799467430599451.Spec : Prop :=
  ∀ n, P2297799467430599451.a n = A313684 n

end A313684

/-! ## A313684.P5273786495720077725

`A008458(n)+A008574(n)-A313794(n)`
-/

namespace A313684.P5273786495720077725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313794 n)

end

end A313684.P5273786495720077725

namespace A313684

/-- `A008458(n)+A008574(n)-A313794(n)` -/
def P5273786495720077725.Spec : Prop :=
  ∀ n, P5273786495720077725.a n = A313684 n

end A313684

/-! ## A313684.P5058708510092427453

`A315744(n)-n`
-/

namespace A313684.P5058708510092427453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315744 n - (n : ℤ)

end

end A313684.P5058708510092427453

namespace A313684

/-- `A315744(n)-n` -/
def P5058708510092427453.Spec : Prop :=
  ∀ n, P5058708510092427453.a n = A313684 n

end A313684

/-! ## A313684.P11686986606345885155

`A004525(A315675(n))+2*n`
-/

namespace A313684.P11686986606345885155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315675 n).toNat + (2 * n : ℤ)

end

end A313684.P11686986606345885155

namespace A313684

/-- `A004525(A315675(n))+2*n` -/
def P11686986606345885155.Spec : Prop :=
  ∀ n, P11686986606345885155.a n = A313684 n

end A313684

/-! ## A313684.P7482510989448180848

`A004525(A315683(n))+2*n`
-/

namespace A313684.P7482510989448180848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315683 n).toNat + (2 * n : ℤ)

end

end A313684.P7482510989448180848

namespace A313684

/-- `A004525(A315683(n))+2*n` -/
def P7482510989448180848.Spec : Prop :=
  ∀ n, P7482510989448180848.a n = A313684 n

end A313684

/-! ## A313684.P14619837132008070135

`A004525(A315738(n))+2*n`
-/

namespace A313684.P14619837132008070135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315738 n).toNat + (2 * n : ℤ)

end

end A313684.P14619837132008070135

namespace A313684

/-- `A004525(A315738(n))+2*n` -/
def P14619837132008070135.Spec : Prop :=
  ∀ n, P14619837132008070135.a n = A313684 n

end A313684

/-! ## A313684.P17455679950786603041

`A004396(A314089(n)+A004396(n))+n`
-/

namespace A313684.P17455679950786603041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314089 n + A004396 n).toNat + (n : ℤ)

end

end A313684.P17455679950786603041

namespace A313684

/-- `A004396(A314089(n)+A004396(n))+n` -/
def P17455679950786603041.Spec : Prop :=
  ∀ n, P17455679950786603041.a n = A313684 n

end A313684

/-!
# A313685: Coordination sequence Gal.4.43.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313685, the canonical program `A313685.P6300280032503356636` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313685 has offset 0).

The definition of A313685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313685.P969063068839082231

`A310397(n)+A188510(n)`
-/

namespace A313685.P969063068839082231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 n + A188510 n

end

end A313685.P969063068839082231

namespace A313685

/-- `A310397(n)+A188510(n)` -/
def P969063068839082231.Spec : Prop :=
  ∀ n, P969063068839082231.a n = A313685 n

end A313685

/-! ## A313685.P12338902996738246637

`A314672(n)+A004524(n+1)`
-/

namespace A313685.P12338902996738246637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + A004524 (n + 1)

end

end A313685.P12338902996738246637

namespace A313685

/-- `A314672(n)+A004524(n+1)` -/
def P12338902996738246637.Spec : Prop :=
  ∀ n, P12338902996738246637.a n = A313685 n

end A313685

/-! ## A313685.P1132349987723796374

`A314672(n)+n-A004525(n)`
-/

namespace A313685.P1132349987723796374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + ((n : ℤ) - A004525 n)

end

end A313685.P1132349987723796374

namespace A313685

/-- `A314672(n)+n-A004525(n)` -/
def P1132349987723796374.Spec : Prop :=
  ∀ n, P1132349987723796374.a n = A313685 n

end A313685

/-! ## A313685.P6300280032503356636

`abs(A008592(n)-(A311501(n)+n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313685

/-- `abs(A008592(n)-(A311501(n)+n))` -/
def P6300280032503356636.Spec : Prop :=
  ∀ n, P6300280032503356636.a n = A313685 n

theorem P6300280032503356636.correct : P6300280032503356636.Spec := by
  intro n
  simp only [A313685]

end A313685

/-! ## A313685.P11115456924236151191

`Δ[A011861(n)]+A315685(n)-n`
-/

namespace A313685.P11115456924236151191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315685 n - (n : ℤ))

end

end A313685.P11115456924236151191

namespace A313685

/-- `Δ[A011861(n)]+A315685(n)-n` -/
def P11115456924236151191.Spec : Prop :=
  ∀ n, P11115456924236151191.a n = A313685 n

end A313685

/-! ## A313685.P17788355259979349294

`A047273(n+1)+A314672(n)-n`
-/

namespace A313685.P17788355259979349294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (A314672 n - (n : ℤ))

end

end A313685.P17788355259979349294

namespace A313685

/-- `A047273(n+1)+A314672(n)-n` -/
def P17788355259979349294.Spec : Prop :=
  ∀ n, P17788355259979349294.a n = A313685 n

end A313685

/-! ## A313685.P11556923075335637768

`A301293(n)+A004525(A004525(n))`
-/

namespace A313685.P11556923075335637768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A004525 (A004525 n).toNat

end

end A313685.P11556923075335637768

namespace A313685

/-- `A301293(n)+A004525(A004525(n))` -/
def P11556923075335637768.Spec : Prop :=
  ∀ n, P11556923075335637768.a n = A313685 n

end A313685

/-! ## A313685.P11586252366144011606

`A314829(n)+A004525(A201629(n)/2)`
-/

namespace A313685.P11586252366144011606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + A004525 (SequenceMachineLib.roundAway ((A201629 n : ℚ) / 2)).toNat

end

end A313685.P11586252366144011606

namespace A313685

/-- `A314829(n)+A004525(A201629(n)/2)` -/
def P11586252366144011606.Spec : Prop :=
  ∀ n, P11586252366144011606.a n = A313685 n

end A313685

/-! ## A313685.P2697143435074964331

`A314829(n)+A004525(n-A004525(n))`
-/

namespace A313685.P2697143435074964331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A313685.P2697143435074964331

namespace A313685

/-- `A314829(n)+A004525(n-A004525(n))` -/
def P2697143435074964331.Spec : Prop :=
  ∀ n, P2697143435074964331.a n = A313685 n

end A313685

/-! ## A313685.P9601127221287820893

`A008458(n)+A008486(n)-A311501(n)`
-/

namespace A313685.P9601127221287820893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311501 n)

end

end A313685.P9601127221287820893

namespace A313685

/-- `A008458(n)+A008486(n)-A311501(n)` -/
def P9601127221287820893.Spec : Prop :=
  ∀ n, P9601127221287820893.a n = A313685 n

end A313685

/-! ## A313685.P8633468136657380224

`A314896(n)+A046978(n-A046978(n))`
-/

namespace A313685.P8633468136657380224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n + A046978 ((n : ℤ) - A046978 n).toNat

end

end A313685.P8633468136657380224

namespace A313685

/-- `A314896(n)+A046978(n-A046978(n))` -/
def P8633468136657380224.Spec : Prop :=
  ∀ n, P8633468136657380224.a n = A313685 n

end A313685

/-! ## A313685.P10763561352446554869

`A313115(n)+A046978(n)`
-/

namespace A313685.P10763561352446554869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A046978 n

end

end A313685.P10763561352446554869

namespace A313685

/-- `A313115(n)+A046978(n)` -/
def P10763561352446554869.Spec : Prop :=
  ∀ n, P10763561352446554869.a n = A313685 n

end A313685

/-! ## A313685.P16095825303502820455

`A315469(n)-A004525(n)`
-/

namespace A313685.P16095825303502820455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n - A004525 n

end

end A313685.P16095825303502820455

namespace A313685

/-- `A315469(n)-A004525(n)` -/
def P16095825303502820455.Spec : Prop :=
  ∀ n, P16095825303502820455.a n = A313685 n

end A313685

/-! ## A313685.P8248407555539894834

`∑[A021913(n)]+A315469(n)-n`
-/

namespace A313685.P8248407555539894834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315469 n - (n : ℤ))

end

end A313685.P8248407555539894834

namespace A313685

/-- `∑[A021913(n)]+A315469(n)-n` -/
def P8248407555539894834.Spec : Prop :=
  ∀ n, P8248407555539894834.a n = A313685 n

end A313685

/-! ## A313685.P13366032573896786141

`Δ[A011848(n)]+A315469(n)-n`
-/

namespace A313685.P13366032573896786141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315469 n - (n : ℤ))

end

end A313685.P13366032573896786141

namespace A313685

/-- `Δ[A011848(n)]+A315469(n)-n` -/
def P13366032573896786141.Spec : Prop :=
  ∀ n, P13366032573896786141.a n = A313685 n

end A313685

/-! ## A313685.P3388968367011806120

`A008458(n)+A008574(n)-A313793(n)`
-/

namespace A313685.P3388968367011806120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313793 n)

end

end A313685.P3388968367011806120

namespace A313685

/-- `A008458(n)+A008574(n)-A313793(n)` -/
def P3388968367011806120.Spec : Prop :=
  ∀ n, P3388968367011806120.a n = A313685 n

end A313685

/-! ## A313685.P7622277438489802849

`A004525(A004525(n))+A301710(n)-n`
-/

namespace A313685.P7622277438489802849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A301710 n - (n : ℤ))

end

end A313685.P7622277438489802849

namespace A313685

/-- `A004525(A004525(n))+A301710(n)-n` -/
def P7622277438489802849.Spec : Prop :=
  ∀ n, P7622277438489802849.a n = A313685 n

end A313685

/-! ## A313685.P510391217688105199

`A315520(n)-A004525(A004525(n)+n)`
-/

namespace A313685.P510391217688105199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - A004525 (A004525 n + (n : ℤ)).toNat

end

end A313685.P510391217688105199

namespace A313685

/-- `A315520(n)-A004525(A004525(n)+n)` -/
def P510391217688105199.Spec : Prop :=
  ∀ n, P510391217688105199.a n = A313685 n

end A313685

/-! ## A313685.P953904405707750259

`A315745(n)-n`
-/

namespace A313685.P953904405707750259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315745 n - (n : ℤ)

end

end A313685.P953904405707750259

namespace A313685

/-- `A315745(n)-n` -/
def P953904405707750259.Spec : Prop :=
  ∀ n, P953904405707750259.a n = A313685 n

end A313685

/-!
# A313686: Coordination sequence Gal.6.314.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313686, there is no canonical definition to state claims against.
-/

/-! ## A313686.P7365923987949509766

`A250120(n)-A008683(A224050(2*n+3))`
-/

namespace A313686.P7365923987949509766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A008683 (A224050 (2 * n + 3)).toNat

end

end A313686.P7365923987949509766

/-! ## A313686.P10507631190812050536

`or(char[A013610(n)], A274384(3*n+1))`
-/

namespace A313686.P10507631190812050536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A274384 (3 * n + 1))

end

end A313686.P10507631190812050536

/-! ## A313686.P11983804667886513182

`A274384(3*n+1)+A064911(2*n+3)`
-/

namespace A313686.P11983804667886513182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (3 * n + 1) + A064911 (2 * n + 3)

end

end A313686.P11983804667886513182

/-! ## A313686.P12369713376025878127

`A274384(3*n+1)+log2(A092523(2*n+5))`
-/

namespace A313686.P12369713376025878127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A274384 (3 * n + 1) : ℝ) + Real.logb 2 (A092523 (2 * n + 5) : ℝ)

end

end A313686.P12369713376025878127

/-! ## A313686.P330176952138714817

`A274384(3*n+1)+log2(A120891(2*n+5))`
-/

namespace A313686.P330176952138714817
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A274384 (3 * n + 1) : ℝ) + Real.logb 2 (A120891 (2 * n + 5) : ℝ)

end

end A313686.P330176952138714817

/-!
# A313687: Coordination sequence Gal.6.202.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313687, the canonical program `A313687.P12936372802294180480` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313687 has offset 0).

The definition of A313687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313687.P12936372802294180480

`A313237(n)+A128834(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313687

/-- `A313237(n)+A128834(n)` -/
def P12936372802294180480.Spec : Prop :=
  ∀ n, P12936372802294180480.a n = A313687 n

theorem P12936372802294180480.correct : P12936372802294180480.Spec := by
  intro n
  simp only [A313687]

end A313687

/-! ## A313687.P16424521947116874663

`A310440(n)+A134667(n)`
-/

namespace A313687.P16424521947116874663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310440 n + A134667 n

end

end A313687.P16424521947116874663

namespace A313687

/-- `A310440(n)+A134667(n)` -/
def P16424521947116874663.Spec : Prop :=
  ∀ n, P16424521947116874663.a n = A313687 n

end A313687

/-! ## A313687.P5241000261645549447

`A315196(n)-A101455(n)`
-/

namespace A313687.P5241000261645549447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315196 n - A101455 n

end

end A313687.P5241000261645549447

namespace A313687

/-- `A315196(n)-A101455(n)` -/
def P5241000261645549447.Spec : Prop :=
  ∀ n, P5241000261645549447.a n = A313687 n

end A313687

/-! ## A313687.P1060487258661148324

`A314677(n)+A004524(n+1)`
-/

namespace A313687.P1060487258661148324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + A004524 (n + 1)

end

end A313687.P1060487258661148324

namespace A313687

/-- `A314677(n)+A004524(n+1)` -/
def P1060487258661148324.Spec : Prop :=
  ∀ n, P1060487258661148324.a n = A313687 n

end A313687

/-! ## A313687.P7965111876397089079

`A313237(n)-A010892(n+2)`
-/

namespace A313687.P7965111876397089079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n - A010892 (n + 2)

end

end A313687.P7965111876397089079

namespace A313687

/-- `A313237(n)-A010892(n+2)` -/
def P7965111876397089079.Spec : Prop :=
  ∀ n, P7965111876397089079.a n = A313687 n

end A313687

/-! ## A313687.P18144767197403763924

`A314677(n)+n-A004525(n)`
-/

namespace A313687.P18144767197403763924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + ((n : ℤ) - A004525 n)

end

end A313687.P18144767197403763924

namespace A313687

/-- `A314677(n)+n-A004525(n)` -/
def P18144767197403763924.Spec : Prop :=
  ∀ n, P18144767197403763924.a n = A313687 n

end A313687

/-! ## A313687.P10222769347913800306

`A313237(n)+A046978(A004396(2*n))`
-/

namespace A313687.P10222769347913800306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n + A046978 (A004396 (2 * n)).toNat

end

end A313687.P10222769347913800306

namespace A313687

/-- `A313237(n)+A046978(A004396(2*n))` -/
def P10222769347913800306.Spec : Prop :=
  ∀ n, P10222769347913800306.a n = A313687 n

end A313687

/-! ## A313687.P5169379907563836737

`A314830(n)+A004396(n-A004525(n))`
-/

namespace A313687.P5169379907563836737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313687.P5169379907563836737

namespace A313687

/-- `A314830(n)+A004396(n-A004525(n))` -/
def P5169379907563836737.Spec : Prop :=
  ∀ n, P5169379907563836737.a n = A313687 n

end A313687

/-! ## A313687.P2638121360780220760

`abs(A008592(n)-A313791(n))`
-/

namespace A313687.P2638121360780220760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313791 n|

end

end A313687.P2638121360780220760

namespace A313687

/-- `abs(A008592(n)-A313791(n))` -/
def P2638121360780220760.Spec : Prop :=
  ∀ n, P2638121360780220760.a n = A313687 n

end A313687

/-! ## A313687.P6206498563123484239

`A008458(n)+A008574(n)-A313791(n)`
-/

namespace A313687.P6206498563123484239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313791 n)

end

end A313687.P6206498563123484239

namespace A313687

/-- `A008458(n)+A008574(n)-A313791(n)` -/
def P6206498563123484239.Spec : Prop :=
  ∀ n, P6206498563123484239.a n = A313687 n

end A313687

/-! ## A313687.P17054306147070500874

`A008576(n)+A314097(n)-A008486(n)`
-/

namespace A313687.P17054306147070500874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314097 n - A008486 n)

end

end A313687.P17054306147070500874

namespace A313687

/-- `A008576(n)+A314097(n)-A008486(n)` -/
def P17054306147070500874.Spec : Prop :=
  ∀ n, P17054306147070500874.a n = A313687 n

end A313687

/-! ## A313687.P7299410752146749004

`A128834(n)+A301697(n)-A004525(n)`
-/

namespace A313687.P7299410752146749004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A301697 n - A004525 n)

end

end A313687.P7299410752146749004

namespace A313687

/-- `A128834(n)+A301697(n)-A004525(n)` -/
def P7299410752146749004.Spec : Prop :=
  ∀ n, P7299410752146749004.a n = A313687 n

end A313687

/-! ## A313687.P15535355935283928227

`A315471(n)-A004525(n)`
-/

namespace A313687.P15535355935283928227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n - A004525 n

end

end A313687.P15535355935283928227

namespace A313687

/-- `A315471(n)-A004525(n)` -/
def P15535355935283928227.Spec : Prop :=
  ∀ n, P15535355935283928227.a n = A313687 n

end A313687

/-! ## A313687.P5643248525564089348

`A004525(A314089(2*n))`
-/

namespace A313687.P5643248525564089348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314089 (2 * n)).toNat

end

end A313687.P5643248525564089348

namespace A313687

/-- `A004525(A314089(2*n))` -/
def P5643248525564089348.Spec : Prop :=
  ∀ n, P5643248525564089348.a n = A313687 n

end A313687

/-! ## A313687.P15877153584290372913

`A004525(A314091(2*n))`
-/

namespace A313687.P15877153584290372913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314091 (2 * n)).toNat

end

end A313687.P15877153584290372913

namespace A313687

/-- `A004525(A314091(2*n))` -/
def P15877153584290372913.Spec : Prop :=
  ∀ n, P15877153584290372913.a n = A313687 n

end A313687

/-! ## A313687.P2312711570767012802

`A004525(2*A312896(n)+n)`
-/

namespace A313687.P2312711570767012802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A312896 n + (n : ℤ)).toNat

end

end A313687.P2312711570767012802

namespace A313687

/-- `A004525(2*A312896(n)+n)` -/
def P2312711570767012802.Spec : Prop :=
  ∀ n, P2312711570767012802.a n = A313687 n

end A313687

/-! ## A313687.P12582988686466572709

`A004525(A313474(2*n)+n)`
-/

namespace A313687.P12582988686466572709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313474 (2 * n) + (n : ℤ)).toNat

end

end A313687.P12582988686466572709

namespace A313687

/-- `A004525(A313474(2*n)+n)` -/
def P12582988686466572709.Spec : Prop :=
  ∀ n, P12582988686466572709.a n = A313687 n

end A313687

/-! ## A313687.P1179103639060334098

`A004525(2*A314677(n)+n)`
-/

namespace A313687.P1179103639060334098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A314677 n + (n : ℤ)).toNat

end

end A313687.P1179103639060334098

namespace A313687

/-- `A004525(2*A314677(n)+n)` -/
def P1179103639060334098.Spec : Prop :=
  ∀ n, P1179103639060334098.a n = A313687 n

end A313687

/-! ## A313687.P15951457273584466628

`A004525(2*A314124(n)-n)`
-/

namespace A313687.P15951457273584466628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A314124 n - (n : ℤ)).toNat

end

end A313687.P15951457273584466628

namespace A313687

/-- `A004525(2*A314124(n)-n)` -/
def P15951457273584466628.Spec : Prop :=
  ∀ n, P15951457273584466628.a n = A313687 n

end A313687

/-! ## A313687.P2859176818446552368

`A004525(A315409(2*n))`
-/

namespace A313687.P2859176818446552368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315409 (2 * n)).toNat

end

end A313687.P2859176818446552368

namespace A313687

/-- `A004525(A315409(2*n))` -/
def P2859176818446552368.Spec : Prop :=
  ∀ n, P2859176818446552368.a n = A313687 n

end A313687

/-!
# A313688: Coordination sequence Gal.6.151.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313688, the canonical program `A313688.P17375100154566226301` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313688 has offset 0).

The definition of A313688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313688.P17375100154566226301

`abs(9*n-A311475(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313688

/-- `abs(9*n-A311475(n))` -/
def P17375100154566226301.Spec : Prop :=
  ∀ n, P17375100154566226301.a n = A313688 n

theorem P17375100154566226301.correct : P17375100154566226301.Spec := by
  intro n
  simp only [A313688]

end A313688

/-! ## A313688.P9002149144227739615

`A008458(n)+A008486(n)-A311475(n)`
-/

namespace A313688.P9002149144227739615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311475 n)

end

end A313688.P9002149144227739615

namespace A313688

/-- `A008458(n)+A008486(n)-A311475(n)` -/
def P9002149144227739615.Spec : Prop :=
  ∀ n, P9002149144227739615.a n = A313688 n

end A313688

/-! ## A313688.P8728533135108619567

`A004525(n)+A314185(n)-n`
-/

namespace A313688.P8728533135108619567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314185 n - (n : ℤ))

end

end A313688.P8728533135108619567

namespace A313688

/-- `A004525(n)+A314185(n)-n` -/
def P8728533135108619567.Spec : Prop :=
  ∀ n, P8728533135108619567.a n = A313688 n

end A313688

/-! ## A313688.P8359893611715350449

`A315474(n)-A004525(n)`
-/

namespace A313688.P8359893611715350449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315474 n - A004525 n

end

end A313688.P8359893611715350449

namespace A313688

/-- `A315474(n)-A004525(n)` -/
def P8359893611715350449.Spec : Prop :=
  ∀ n, P8359893611715350449.a n = A313688 n

end A313688

/-! ## A313688.P10048358478031784458

`A314098(n)-A002264(n+1)`
-/

namespace A313688.P10048358478031784458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314098 n - A002264 (n + 1)

end

end A313688.P10048358478031784458

namespace A313688

/-- `A314098(n)-A002264(n+1)` -/
def P10048358478031784458.Spec : Prop :=
  ∀ n, P10048358478031784458.a n = A313688 n

end A313688

/-! ## A313688.P1030025043162154691

`A004396(n)+A314098(n)-n`
-/

namespace A313688.P1030025043162154691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314098 n - (n : ℤ))

end

end A313688.P1030025043162154691

namespace A313688

/-- `A004396(n)+A314098(n)-n` -/
def P1030025043162154691.Spec : Prop :=
  ∀ n, P1030025043162154691.a n = A313688 n

end A313688

/-! ## A313688.P13831172203781267083

`A008576(n)+A314098(n)-A008486(n)`
-/

namespace A313688.P13831172203781267083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314098 n - A008486 n)

end

end A313688.P13831172203781267083

namespace A313688

/-- `A008576(n)+A314098(n)-A008486(n)` -/
def P13831172203781267083.Spec : Prop :=
  ∀ n, P13831172203781267083.a n = A313688 n

end A313688

/-! ## A313688.P13335293788800586741

`A315517(n)-A004396(n)`
-/

namespace A313688.P13335293788800586741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n - A004396 n

end

end A313688.P13335293788800586741

namespace A313688

/-- `A315517(n)-A004396(n)` -/
def P13335293788800586741.Spec : Prop :=
  ∀ n, P13335293788800586741.a n = A313688 n

end A313688

/-! ## A313688.P14887273584316629597

`∑[A022003(n)]+A315517(n)-n`
-/

namespace A313688.P14887273584316629597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315517 n - (n : ℤ))

end

end A313688.P14887273584316629597

namespace A313688

/-- `∑[A022003(n)]+A315517(n)-n` -/
def P14887273584316629597.Spec : Prop :=
  ∀ n, P14887273584316629597.a n = A313688 n

end A313688

/-! ## A313688.P326024609965314162

`A315517(n)-A002264(2*n+1)`
-/

namespace A313688.P326024609965314162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n - A002264 (2 * n + 1)

end

end A313688.P326024609965314162

namespace A313688

/-- `A315517(n)-A002264(2*n+1)` -/
def P326024609965314162.Spec : Prop :=
  ∀ n, P326024609965314162.a n = A313688 n

end A313688

/-! ## A313688.P10093326201166953319

`A008458(n)+A008574(n)-A313789(n)`
-/

namespace A313688.P10093326201166953319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313789 n)

end

end A313688.P10093326201166953319

namespace A313688

/-- `A008458(n)+A008574(n)-A313789(n)` -/
def P10093326201166953319.Spec : Prop :=
  ∀ n, P10093326201166953319.a n = A313688 n

end A313688

/-! ## A313688.P9282176686261380302

`A315747(n)-n`
-/

namespace A313688.P9282176686261380302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - (n : ℤ)

end

end A313688.P9282176686261380302

namespace A313688

/-- `A315747(n)-n` -/
def P9282176686261380302.Spec : Prop :=
  ∀ n, P9282176686261380302.a n = A313688 n

end A313688

/-! ## A313688.P3726112250043360478

`A004396(2*n)+A004396(A315315(n))`
-/

namespace A313688.P3726112250043360478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315315 n).toNat

end

end A313688.P3726112250043360478

namespace A313688

/-- `A004396(2*n)+A004396(A315315(n))` -/
def P3726112250043360478.Spec : Prop :=
  ∀ n, P3726112250043360478.a n = A313688 n

end A313688

/-! ## A313688.P3559750251242631319

`A004396(2*n)+A004396(A315462(n))`
-/

namespace A313688.P3559750251242631319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315462 n).toNat

end

end A313688.P3559750251242631319

namespace A313688

/-- `A004396(2*n)+A004396(A315462(n))` -/
def P3559750251242631319.Spec : Prop :=
  ∀ n, P3559750251242631319.a n = A313688 n

end A313688

/-! ## A313688.P14290361668267957603

`A004525(A315688(n))+2*n`
-/

namespace A313688.P14290361668267957603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315688 n).toNat + (2 * n : ℤ)

end

end A313688.P14290361668267957603

namespace A313688

/-- `A004525(A315688(n))+2*n` -/
def P14290361668267957603.Spec : Prop :=
  ∀ n, P14290361668267957603.a n = A313688 n

end A313688

/-! ## A313688.P8182165989644131161

`A314825(n)+A002264(n+1)`
-/

namespace A313688.P8182165989644131161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + A002264 (n + 1)

end

end A313688.P8182165989644131161

namespace A313688

/-- `A314825(n)+A002264(n+1)` -/
def P8182165989644131161.Spec : Prop :=
  ∀ n, P8182165989644131161.a n = A313688 n

end A313688

/-! ## A313688.P1452860499406874381

`A314825(n)+n-A004396(n)`
-/

namespace A313688.P1452860499406874381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + ((n : ℤ) - A004396 n)

end

end A313688.P1452860499406874381

namespace A313688

/-- `A314825(n)+n-A004396(n)` -/
def P1452860499406874381.Spec : Prop :=
  ∀ n, P1452860499406874381.a n = A313688 n

end A313688

/-! ## A313688.P3451029850951446749

`A042965(n+1)+A314825(n)-n`
-/

namespace A313688.P3451029850951446749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A314825 n - (n : ℤ))

end

end A313688.P3451029850951446749

namespace A313688

/-- `A042965(n+1)+A314825(n)-n` -/
def P3451029850951446749.Spec : Prop :=
  ∀ n, P3451029850951446749.a n = A313688 n

end A313688

/-! ## A313688.P214853186951327204

`A008486(n)+A314825(n)-A008576(n)`
-/

namespace A313688.P214853186951327204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314825 n - A008576 n)

end

end A313688.P214853186951327204

namespace A313688

/-- `A008486(n)+A314825(n)-A008576(n)` -/
def P214853186951327204.Spec : Prop :=
  ∀ n, P214853186951327204.a n = A313688 n

end A313688

/-!
# A313689: Coordination sequence Gal.6.152.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313689, the canonical program `A313689.P15104224753068913997` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313689 has offset 0).

The definition of A313689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313689.P15104224753068913997

`A313534(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A313689

/-- `A313534(n)+Δ[A011864(n)]` -/
def P15104224753068913997.Spec : Prop :=
  ∀ n, P15104224753068913997.a n = A313689 n

theorem P15104224753068913997.correct : P15104224753068913997.Spec := by
  intro n
  simp only [A313689]

end A313689

/-! ## A313689.P16691043470408098377

`abs(A008592(n)-A313788(n))`
-/

namespace A313689.P16691043470408098377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313788 n|

end

end A313689.P16691043470408098377

namespace A313689

/-- `abs(A008592(n)-A313788(n))` -/
def P16691043470408098377.Spec : Prop :=
  ∀ n, P16691043470408098377.a n = A313689 n

end A313689

/-! ## A313689.P11504989377057547123

`A008458(n)+A008574(n)-A313788(n)`
-/

namespace A313689.P11504989377057547123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313788 n)

end

end A313689.P11504989377057547123

namespace A313689

/-- `A008458(n)+A008574(n)-A313788(n)` -/
def P11504989377057547123.Spec : Prop :=
  ∀ n, P11504989377057547123.a n = A313689 n

end A313689

/-! ## A313689.P8696795123208759869

`∑{d}[A008592(n)-A313788(n), A000010(#)]`
-/

namespace A313689.P8696795123208759869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313689.P8696795123208759869

namespace A313689

/-- `∑{d}[A008592(n)-A313788(n), A000010(#)]` -/
def P8696795123208759869.Spec : Prop :=
  ∀ n, P8696795123208759869.a n = A313689 n

end A313689

/-! ## A313689.P16647269188893217212

`(A315730(n)+A008574(n))/2`
-/

namespace A313689.P16647269188893217212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315730 n + A008574 n : ℚ) / 2

end

end A313689.P16647269188893217212

namespace A313689

/-- `(A315730(n)+A008574(n))/2` -/
def P16647269188893217212.Spec : Prop :=
  ∀ n, P16647269188893217212.a n = (A313689 n : ℚ)

end A313689

/-! ## A313689.P3297587051946859429

`A005843(A008458(n)-n)-A313788(n)`
-/

namespace A313689.P3297587051946859429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313788 n

end

end A313689.P3297587051946859429

namespace A313689

/-- `A005843(A008458(n)-n)-A313788(n)` -/
def P3297587051946859429.Spec : Prop :=
  ∀ n, P3297587051946859429.a n = A313689 n

end A313689

/-! ## A313689.P17478766263520842686

`A004525(A315740(n))+2*n`
-/

namespace A313689.P17478766263520842686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315740 n).toNat + (2 * n : ℤ)

end

end A313689.P17478766263520842686

namespace A313689

/-- `A004525(A315740(n))+2*n` -/
def P17478766263520842686.Spec : Prop :=
  ∀ n, P17478766263520842686.a n = A313689 n

end A313689

/-! ## A313689.P8761844021211529219

`A004396(A314109(n)+2*n)`
-/

namespace A313689.P8761844021211529219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314109 n + (2 * n : ℤ)).toNat

end

end A313689.P8761844021211529219

namespace A313689

/-- `A004396(A314109(n)+2*n)` -/
def P8761844021211529219.Spec : Prop :=
  ∀ n, P8761844021211529219.a n = A313689 n

end A313689

/-! ## A313689.P8753124322448745998

`A004396(A315466(n)+2*n)`
-/

namespace A313689.P8753124322448745998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315466 n + (2 * n : ℤ)).toNat

end

end A313689.P8753124322448745998

namespace A313689

/-- `A004396(A315466(n)+2*n)` -/
def P8753124322448745998.Spec : Prop :=
  ∀ n, P8753124322448745998.a n = A313689 n

end A313689

/-! ## A313689.P17948533957716835931

`A004396(A315507(n)+2*n)`
-/

namespace A313689.P17948533957716835931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315507 n + (2 * n : ℤ)).toNat

end

end A313689.P17948533957716835931

namespace A313689

/-- `A004396(A315507(n)+2*n)` -/
def P17948533957716835931.Spec : Prop :=
  ∀ n, P17948533957716835931.a n = A313689 n

end A313689

/-! ## A313689.P3372107049864034395

`A004396(A314109(n)+n+n)`
-/

namespace A313689.P3372107049864034395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314109 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313689.P3372107049864034395

namespace A313689

/-- `A004396(A314109(n)+n+n)` -/
def P3372107049864034395.Spec : Prop :=
  ∀ n, P3372107049864034395.a n = A313689 n

end A313689

/-! ## A313689.P165949432518384481

`A004396(A315466(n)+n+n)`
-/

namespace A313689.P165949432518384481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315466 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313689.P165949432518384481

namespace A313689

/-- `A004396(A315466(n)+n+n)` -/
def P165949432518384481.Spec : Prop :=
  ∀ n, P165949432518384481.a n = A313689 n

end A313689

/-! ## A313689.P5702148058491533617

`A004396(A315507(n)+n+n)`
-/

namespace A313689.P5702148058491533617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315507 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313689.P5702148058491533617

namespace A313689

/-- `A004396(A315507(n)+n+n)` -/
def P5702148058491533617.Spec : Prop :=
  ∀ n, P5702148058491533617.a n = A313689 n

end A313689

/-! ## A313689.P3119128427622197259

`A248227(A315750(n)+n)`
-/

namespace A313689.P3119128427622197259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A315750 n + (n : ℤ)).toNat

end

end A313689.P3119128427622197259

namespace A313689

/-- `A248227(A315750(n)+n)` -/
def P3119128427622197259.Spec : Prop :=
  ∀ n, P3119128427622197259.a n = A313689 n

end A313689

/-!
# A313690: Coordination sequence Gal.6.426.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313690, there is no canonical definition to state claims against.
-/

/-! ## A313690.P12174825144545693843

`A313691(n)-A125005(A295040(n+1))`
-/

namespace A313690.P12174825144545693843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313691 n - A125005 (A295040 (n + 1)).toNat

end

end A313690.P12174825144545693843

/-! ## A313690.P12580678118473419841

`A313691(A062399(n))`
-/

namespace A313690.P12580678118473419841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313691 (A062399 n).toNat

end

end A313690.P12580678118473419841

/-! ## A313690.P11352665690268306509

`A313691(A120126(n))`
-/

namespace A313690.P11352665690268306509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313691 (A120126 n).toNat

end

end A313690.P11352665690268306509

/-! ## A313690.P16276634633942474645

`A313691(A351870(n))`
-/

namespace A313690.P16276634633942474645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313691 (A351870 n).toNat

end

end A313690.P16276634633942474645

/-! ## A313690.P9515289835958788914

`A313691(A087051(n))`
-/

namespace A313690.P9515289835958788914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313691 (A087051 n).toNat

end

end A313690.P9515289835958788914

/-!
# A313691: Coordination sequence Gal.6.425.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313691, there is no canonical definition to state claims against.
-/

/-! ## A313691.P10247846578698015696

`A313690(n)+A125005(A295040(n+1))`
-/

namespace A313691.P10247846578698015696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313690 n + A125005 (A295040 (n + 1)).toNat

end

end A313691.P10247846578698015696

/-!
# A313692: Coordination sequence Gal.5.136.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313692, the canonical program `A313692.P7381687034045997065` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313692 has offset 0).

The definition of A313692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313692.P9119740077857670473

`A315445(n)-A330025(n)`
-/

namespace A313692.P9119740077857670473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n - A330025 n

end

end A313692.P9119740077857670473

namespace A313692

/-- `A315445(n)-A330025(n)` -/
def P9119740077857670473.Spec : Prop :=
  ∀ n, P9119740077857670473.a n = A313692 n

end A313692

/-! ## A313692.P5043492385646893510

`A151988(n)+A313682(n)-n`
-/

namespace A313692.P5043492385646893510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A313682 n - (n : ℤ))

end

end A313692.P5043492385646893510

namespace A313692

/-- `A151988(n)+A313682(n)-n` -/
def P5043492385646893510.Spec : Prop :=
  ∀ n, P5043492385646893510.a n = A313692 n

end A313692

/-! ## A313692.P7381687034045997065

`A047448(n+1)+A312892(n)-n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313692

/-- `A047448(n+1)+A312892(n)-n` -/
def P7381687034045997065.Spec : Prop :=
  ∀ n, P7381687034045997065.a n = A313692 n

theorem P7381687034045997065.correct : P7381687034045997065.Spec := by
  intro n
  simp only [A313692]

end A313692

/-! ## A313692.P8767118726422459700

`A047363(n+1)+A313025(n)-n`
-/

namespace A313692.P8767118726422459700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (A313025 n - (n : ℤ))

end

end A313692.P8767118726422459700

namespace A313692

/-- `A047363(n+1)+A313025(n)-n` -/
def P8767118726422459700.Spec : Prop :=
  ∀ n, P8767118726422459700.a n = A313692 n

end A313692

/-! ## A313692.P716437366427722233

`A047263(n+1)+A313506(n)-n`
-/

namespace A313692.P716437366427722233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A313506 n - (n : ℤ))

end

end A313692.P716437366427722233

namespace A313692

/-- `A047263(n+1)+A313506(n)-n` -/
def P716437366427722233.Spec : Prop :=
  ∀ n, P716437366427722233.a n = A313692 n

end A313692

/-! ## A313692.P10070982994797335682

`A005843(A008574(n))+n-A311440(n)`
-/

namespace A313692.P10070982994797335682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A311440 n)

end

end A313692.P10070982994797335682

namespace A313692

/-- `A005843(A008574(n))+n-A311440(n)` -/
def P10070982994797335682.Spec : Prop :=
  ∀ n, P10070982994797335682.a n = A313692 n

end A313692

/-! ## A313692.P1439787813365588006

`A008458(n)+A008486(n)-A311440(n)`
-/

namespace A313692.P1439787813365588006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311440 n)

end

end A313692.P1439787813365588006

namespace A313692

/-- `A008458(n)+A008486(n)-A311440(n)` -/
def P1439787813365588006.Spec : Prop :=
  ∀ n, P1439787813365588006.a n = A313692 n

end A313692

/-! ## A313692.P11374005157406508976

`A151988(n)+A314827(n)-A004396(A151988(n))`
-/

namespace A313692.P11374005157406508976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A314827 n - A004396 (A151988 n).toNat)

end

end A313692.P11374005157406508976

namespace A313692

/-- `A151988(n)+A314827(n)-A004396(A151988(n))` -/
def P11374005157406508976.Spec : Prop :=
  ∀ n, P11374005157406508976.a n = A313692 n

end A313692

/-! ## A313692.P8290695977141874080

`A312162(n)+A253262(n)`
-/

namespace A313692.P8290695977141874080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n + A253262 n

end

end A313692.P8290695977141874080

namespace A313692

/-- `A312162(n)+A253262(n)` -/
def P8290695977141874080.Spec : Prop :=
  ∀ n, P8290695977141874080.a n = A313692 n

end A313692

/-! ## A313692.P7470637041991099964

`A330025(n)+A313078(n)`
-/

namespace A313692.P7470637041991099964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313078 n

end

end A313692.P7470637041991099964

namespace A313692

/-- `A330025(n)+A313078(n)` -/
def P7470637041991099964.Spec : Prop :=
  ∀ n, P7470637041991099964.a n = A313692 n

end A313692

/-! ## A313692.P11772541127757085981

`A314087(n)-A330025(n-A330025(n))`
-/

namespace A313692.P11772541127757085981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314087 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A313692.P11772541127757085981

namespace A313692

/-- `A314087(n)-A330025(n-A330025(n))` -/
def P11772541127757085981.Spec : Prop :=
  ∀ n, P11772541127757085981.a n = A313692 n

end A313692

/-! ## A313692.P3157697943914633552

`A330025(A330025(n)+n)+A313116(n)`
-/

namespace A313692.P3157697943914633552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A313116 n

end

end A313692.P3157697943914633552

namespace A313692

/-- `A330025(A330025(n)+n)+A313116(n)` -/
def P3157697943914633552.Spec : Prop :=
  ∀ n, P3157697943914633552.a n = A313692 n

end A313692

/-! ## A313692.P1274388891222240489

`A004396(A312892(n))+2*n`
-/

namespace A313692.P1274388891222240489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312892 n).toNat + (2 * n : ℤ)

end

end A313692.P1274388891222240489

namespace A313692

/-- `A004396(A312892(n))+2*n` -/
def P1274388891222240489.Spec : Prop :=
  ∀ n, P1274388891222240489.a n = A313692 n

end A313692

/-! ## A313692.P15340630656012037677

`A008458(n)+A008574(n)-A313782(n)`
-/

namespace A313692.P15340630656012037677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313782 n)

end

end A313692.P15340630656012037677

namespace A313692

/-- `A008458(n)+A008574(n)-A313782(n)` -/
def P15340630656012037677.Spec : Prop :=
  ∀ n, P15340630656012037677.a n = A313692 n

end A313692

/-! ## A313692.P2051614294076890555

`(A315732(n)+A008574(n))/2`
-/

namespace A313692.P2051614294076890555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315732 n + A008574 n : ℚ) / 2

end

end A313692.P2051614294076890555

namespace A313692

/-- `(A315732(n)+A008574(n))/2` -/
def P2051614294076890555.Spec : Prop :=
  ∀ n, P2051614294076890555.a n = (A313692 n : ℚ)

end A313692

/-! ## A313692.P12169333607633646276

`A315749(n)-n`
-/

namespace A313692.P12169333607633646276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315749 n - (n : ℤ)

end

end A313692.P12169333607633646276

namespace A313692

/-- `A315749(n)-n` -/
def P12169333607633646276.Spec : Prop :=
  ∀ n, P12169333607633646276.a n = A313692 n

end A313692

/-! ## A313692.P5700958272690171623

`A005843(A008458(n)-n)-A313782(n)`
-/

namespace A313692.P5700958272690171623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313782 n

end

end A313692.P5700958272690171623

namespace A313692

/-- `A005843(A008458(n)-n)-A313782(n)` -/
def P5700958272690171623.Spec : Prop :=
  ∀ n, P5700958272690171623.a n = A313692 n

end A313692

/-! ## A313692.P1545861260239186816

`A004525(A315698(n))+2*n`
-/

namespace A313692.P1545861260239186816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315698 n).toNat + (2 * n : ℤ)

end

end A313692.P1545861260239186816

namespace A313692

/-- `A004525(A315698(n))+2*n` -/
def P1545861260239186816.Spec : Prop :=
  ∀ n, P1545861260239186816.a n = A313692 n

end A313692

/-! ## A313692.P8524007856094514826

`A004525(A315742(n))+2*n`
-/

namespace A313692.P8524007856094514826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315742 n).toNat + (2 * n : ℤ)

end

end A313692.P8524007856094514826

namespace A313692

/-- `A004525(A315742(n))+2*n` -/
def P8524007856094514826.Spec : Prop :=
  ∀ n, P8524007856094514826.a n = A313692 n

end A313692

/-! ## A313692.P10436604896337154862

`A314111(n)-A008676(A016777(2*n))`
-/

namespace A313692.P10436604896337154862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314111 n - A008676 (A016777 (2 * n)).toNat

end

end A313692.P10436604896337154862

namespace A313692

/-- `A314111(n)-A008676(A016777(2*n))` -/
def P10436604896337154862.Spec : Prop :=
  ∀ n, P10436604896337154862.a n = A313692 n

end A313692

/-!
# A313693: Coordination sequence Gal.6.197.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313693, the canonical program `A313693.P2459513417228491263` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313693 has offset 0).

The definition of A313693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2393 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313693.P2459513417228491263

`abs(9*n-A311426(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313693

/-- `abs(9*n-A311426(n))` -/
def P2459513417228491263.Spec : Prop :=
  ∀ n, P2459513417228491263.a n = A313693 n

theorem P2459513417228491263.correct : P2459513417228491263.Spec := by
  intro n
  simp only [A313693]

end A313693

/-! ## A313693.P486936459669062119

`A313246(n)+A128834(n)`
-/

namespace A313693.P486936459669062119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A128834 n

end

end A313693.P486936459669062119

namespace A313693

/-- `A313246(n)+A128834(n)` -/
def P486936459669062119.Spec : Prop :=
  ∀ n, P486936459669062119.a n = A313693 n

end A313693

/-! ## A313693.P15368902714007762694

`A314830(n)+A002264(n+1)`
-/

namespace A313693.P15368902714007762694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n + A002264 (n + 1)

end

end A313693.P15368902714007762694

namespace A313693

/-- `A314830(n)+A002264(n+1)` -/
def P15368902714007762694.Spec : Prop :=
  ∀ n, P15368902714007762694.a n = A313693 n

end A313693

/-! ## A313693.P3192182121196255501

`A314830(n)+n-A004396(n)`
-/

namespace A313693.P3192182121196255501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n + ((n : ℤ) - A004396 n)

end

end A313693.P3192182121196255501

namespace A313693

/-- `A314830(n)+n-A004396(n)` -/
def P3192182121196255501.Spec : Prop :=
  ∀ n, P3192182121196255501.a n = A313693 n

end A313693

/-! ## A313693.P1747182994412342049

`A042965(n+1)+A314830(n)-n`
-/

namespace A313693.P1747182994412342049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A314830 n - (n : ℤ))

end

end A313693.P1747182994412342049

namespace A313693

/-- `A042965(n+1)+A314830(n)-n` -/
def P1747182994412342049.Spec : Prop :=
  ∀ n, P1747182994412342049.a n = A313693 n

end A313693

/-! ## A313693.P17711191087979962081

`A008458(n)+A008486(n)-A311426(n)`
-/

namespace A313693.P17711191087979962081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A311426 n)

end

end A313693.P17711191087979962081

namespace A313693

/-- `A008458(n)+A008486(n)-A311426(n)` -/
def P17711191087979962081.Spec : Prop :=
  ∀ n, P17711191087979962081.a n = A313693 n

end A313693

/-! ## A313693.P1223536596675101198

`A008486(n)+A314830(n)-A008576(n)`
-/

namespace A313693.P1223536596675101198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314830 n - A008576 n)

end

end A313693.P1223536596675101198

namespace A313693

/-- `A008486(n)+A314830(n)-A008576(n)` -/
def P1223536596675101198.Spec : Prop :=
  ∀ n, P1223536596675101198.a n = A313693 n

end A313693

/-! ## A313693.P16590222604964301926

`A314683(n)+n-A004525(n)`
-/

namespace A313693.P16590222604964301926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314683 n + ((n : ℤ) - A004525 n)

end

end A313693.P16590222604964301926

namespace A313693

/-- `A314683(n)+n-A004525(n)` -/
def P16590222604964301926.Spec : Prop :=
  ∀ n, P16590222604964301926.a n = A313693 n

end A313693

/-! ## A313693.P18097305215690886163

`A047273(n+1)+A314683(n)-n`
-/

namespace A313693.P18097305215690886163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (A314683 n - (n : ℤ))

end

end A313693.P18097305215690886163

namespace A313693

/-- `A047273(n+1)+A314683(n)-n` -/
def P18097305215690886163.Spec : Prop :=
  ∀ n, P18097305215690886163.a n = A313693 n

end A313693

/-! ## A313693.P16777422276188364816

`abs(A008592(n)-A313781(n))`
-/

namespace A313693.P16777422276188364816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313781 n|

end

end A313693.P16777422276188364816

namespace A313693

/-- `abs(A008592(n)-A313781(n))` -/
def P16777422276188364816.Spec : Prop :=
  ∀ n, P16777422276188364816.a n = A313693 n

end A313693

/-! ## A313693.P15141924435636259363

`A008458(n)+A008574(n)-A313781(n)`
-/

namespace A313693.P15141924435636259363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313781 n)

end

end A313693.P15141924435636259363

namespace A313693

/-- `A008458(n)+A008574(n)-A313781(n)` -/
def P15141924435636259363.Spec : Prop :=
  ∀ n, P15141924435636259363.a n = A313693 n

end A313693

/-! ## A313693.P12266442688337999066

`A315476(n)-A004525(n)`
-/

namespace A313693.P12266442688337999066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315476 n - A004525 n

end

end A313693.P12266442688337999066

namespace A313693

/-- `A315476(n)-A004525(n)` -/
def P12266442688337999066.Spec : Prop :=
  ∀ n, P12266442688337999066.a n = A313693 n

end A313693

/-! ## A313693.P11934735977728022544

`A315751(n)-n`
-/

namespace A313693.P11934735977728022544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315751 n - (n : ℤ)

end

end A313693.P11934735977728022544

namespace A313693

/-- `A315751(n)-n` -/
def P11934735977728022544.Spec : Prop :=
  ∀ n, P11934735977728022544.a n = A313693 n

end A313693

/-! ## A313693.P15146526303468293466

`A004525(A315693(n))+2*n`
-/

namespace A313693.P15146526303468293466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315693 n).toNat + (2 * n : ℤ)

end

end A313693.P15146526303468293466

namespace A313693

/-- `A004525(A315693(n))+2*n` -/
def P15146526303468293466.Spec : Prop :=
  ∀ n, P15146526303468293466.a n = A313693 n

end A313693

/-! ## A313693.P6730327282269416934

`A004525(A315700(n))+2*n`
-/

namespace A313693.P6730327282269416934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315700 n).toNat + (2 * n : ℤ)

end

end A313693.P6730327282269416934

namespace A313693

/-- `A004525(A315700(n))+2*n` -/
def P6730327282269416934.Spec : Prop :=
  ∀ n, P6730327282269416934.a n = A313693 n

end A313693

/-! ## A313693.P7983828355698366739

`A004525(A315744(n))+2*n`
-/

namespace A313693.P7983828355698366739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315744 n).toNat + (2 * n : ℤ)

end

end A313693.P7983828355698366739

namespace A313693

/-- `A004525(A315744(n))+2*n` -/
def P7983828355698366739.Spec : Prop :=
  ∀ n, P7983828355698366739.a n = A313693 n

end A313693

/-! ## A313693.P10048194005748495740

`A004525(A310410(2*n))`
-/

namespace A313693.P10048194005748495740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310410 (2 * n)).toNat

end

end A313693.P10048194005748495740

namespace A313693

/-- `A004525(A310410(2*n))` -/
def P10048194005748495740.Spec : Prop :=
  ∀ n, P10048194005748495740.a n = A313693 n

end A313693

/-! ## A313693.P5949981349622763494

`A004525(A310452(2*n))`
-/

namespace A313693.P5949981349622763494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310452 (2 * n)).toNat

end

end A313693.P5949981349622763494

namespace A313693

/-- `A004525(A310452(2*n))` -/
def P5949981349622763494.Spec : Prop :=
  ∀ n, P5949981349622763494.a n = A313693 n

end A313693

/-! ## A313693.P16013954113345057714

`A004525(A313611(2*n))`
-/

namespace A313693.P16013954113345057714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313611 (2 * n)).toNat

end

end A313693.P16013954113345057714

namespace A313693

/-- `A004525(A313611(2*n))` -/
def P16013954113345057714.Spec : Prop :=
  ∀ n, P16013954113345057714.a n = A313693 n

end A313693

/-! ## A313693.P7143200210313953284

`A004525(A313619(2*n))`
-/

namespace A313693.P7143200210313953284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313619 (2 * n)).toNat

end

end A313693.P7143200210313953284

namespace A313693

/-- `A004525(A313619(2*n))` -/
def P7143200210313953284.Spec : Prop :=
  ∀ n, P7143200210313953284.a n = A313693 n

end A313693

/-!
# A313694: Coordination sequence Gal.4.63.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313694, the canonical program `A313694.P9430166558427385737` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313694 has offset 0).

The definition of A313694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A313694.P9430166558427385737

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=5, a(2)=10, a(3)=15, a(4)=19, a(5)=24, a(6)=29, a(7)=34, a(8)=39`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A313694

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P9430166558427385737.Spec : Prop :=
  ∀ n, P9430166558427385737.a n = A313694 n

theorem P9430166558427385737.correct : P9430166558427385737.Spec := by
  intro n
  simp only [A313694]

end A313694

/-! ## A313694.P9978372835459100211

`round(sqrt(A158731(n))/7)`
-/

namespace A313694.P9978372835459100211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A158731 n : ℝ) / 7)

end

end A313694.P9978372835459100211

namespace A313694

/-- `round(sqrt(A158731(n))/7)` -/
def P9978372835459100211.Spec : Prop :=
  ∀ n, P9978372835459100211.a n = A313694 n

end A313694

/-! ## A313694.P17130626614345813063

`round(A008706(n)-n/7)`
-/

namespace A313694.P17130626614345813063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008706 n : ℚ) - (n : ℚ) / 7)

end

end A313694.P17130626614345813063

namespace A313694

/-- `round(A008706(n)-n/7)` -/
def P17130626614345813063.Spec : Prop :=
  ∀ n, P17130626614345813063.a n = A313694 n

end A313694

/-! ## A313694.P4954030237503499900

`round(A008574(n)+6*n/7)`
-/

namespace A313694.P4954030237503499900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 n : ℚ) + 6 * ((n : ℚ) / 7))

end

end A313694.P4954030237503499900

namespace A313694

/-- `round(A008574(n)+6*n/7)` -/
def P4954030237503499900.Spec : Prop :=
  ∀ n, P4954030237503499900.a n = A313694 n

end A313694

/-! ## A313694.P4490278593652476330

`round(A008458(n)-8*n/7)`
-/

namespace A313694.P4490278593652476330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008458 n : ℚ) - 8 * ((n : ℚ) / 7))

end

end A313694.P4490278593652476330

namespace A313694

/-- `round(A008458(n)-8*n/7)` -/
def P4490278593652476330.Spec : Prop :=
  ∀ n, P4490278593652476330.a n = A313694 n

end A313694

/-! ## A313694.P14291281589217003103

`A008486(2*n)-round(8*n/7)`
-/

namespace A313694.P14291281589217003103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

end

end A313694.P14291281589217003103

namespace A313694

/-- `A008486(2*n)-round(8*n/7)` -/
def P14291281589217003103.Spec : Prop :=
  ∀ n, P14291281589217003103.a n = A313694 n

end A313694

/-! ## A313694.P5365882620778584873

`A310441(n)+A238469(n)`
-/

namespace A313694.P5365882620778584873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310441 n + A238469 n

end

end A313694.P5365882620778584873

namespace A313694

/-- `A310441(n)+A238469(n)` -/
def P5365882620778584873.Spec : Prop :=
  ∀ n, P5365882620778584873.a n = A313694 n

end A313694

/-! ## A313694.P14286152102662361544

`A315032(n)+A238470(n)`
-/

namespace A313694.P14286152102662361544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315032 n + A238470 n

end

end A313694.P14286152102662361544

namespace A313694

/-- `A315032(n)+A238470(n)` -/
def P14286152102662361544.Spec : Prop :=
  ∀ n, P14286152102662361544.a n = A313694 n

end A313694

/-! ## A313694.P16077535371110653754

`A008706(n)-Δ[A011867(n)]`
-/

namespace A313694.P16077535371110653754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (f1 (n + 1) - f1 n)

end

end A313694.P16077535371110653754

namespace A313694

/-- `A008706(n)-Δ[A011867(n)]` -/
def P16077535371110653754.Spec : Prop :=
  ∀ n, P16077535371110653754.a n = A313694 n

end A313694

/-! ## A313694.P3621434484014333149

`A080734(n+1)+A004273(n)`
-/

namespace A313694.P3621434484014333149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080734 (n + 1) + A004273 n

end

end A313694.P3621434484014333149

namespace A313694

/-- `A080734(n+1)+A004273(n)` -/
def P3621434484014333149.Spec : Prop :=
  ∀ n, P3621434484014333149.a n = A313694 n

end A313694

/-! ## A313694.P6384634798138272759

`A008458(n)-A047588(n+1)`
-/

namespace A313694.P6384634798138272759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047588 (n + 1)

end

end A313694.P6384634798138272759

namespace A313694

/-- `A008458(n)-A047588(n+1)` -/
def P6384634798138272759.Spec : Prop :=
  ∀ n, P6384634798138272759.a n = A313694 n

end A313694

/-! ## A313694.P4163454656118852761

`A313613(n)-A238469(2*n)`
-/

namespace A313694.P4163454656118852761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n - A238469 (2 * n)

end

end A313694.P4163454656118852761

namespace A313694

/-- `A313613(n)-A238469(2*n)` -/
def P4163454656118852761.Spec : Prop :=
  ∀ n, P4163454656118852761.a n = A313694 n

end A313694

/-! ## A313694.P14959625586150243384

`A057357(Δ[n²])+A008574(n)`
-/

namespace A313694.P14959625586150243384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A008574 n

end

end A313694.P14959625586150243384

namespace A313694

/-- `A057357(Δ[n²])+A008574(n)` -/
def P14959625586150243384.Spec : Prop :=
  ∀ n, P14959625586150243384.a n = A313694 n

end A313694

/-! ## A313694.P6785580018220138057

`A271114(n)-A225875(2*n+1)`
-/

namespace A313694.P6785580018220138057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A225875 (2 * n + 1)

end

end A313694.P6785580018220138057

namespace A313694

/-- `A271114(n)-A225875(2*n+1)` -/
def P6785580018220138057.Spec : Prop :=
  ∀ n, P6785580018220138057.a n = A313694 n

end A313694

/-! ## A313694.P10020470090226862975

`record[2*(n+1)-(A008617(n)-A001057(n))]`
-/

namespace A313694.P10020470090226862975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (A008617 n - A001057 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313694.P10020470090226862975

namespace A313694

/-- `record[2*(n+1)-(A008617(n)-A001057(n))]` -/
def P10020470090226862975.Spec : Prop :=
  ∀ n, P10020470090226862975.a n = A313694 n

end A313694

/-! ## A313694.P13612479383222549027

`A057357(2*n+1)+A004275(2*n+1)`
-/

namespace A313694.P13612479383222549027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (2 * n + 1) + A004275 (2 * n + 1)

end

end A313694.P13612479383222549027

namespace A313694

/-- `A057357(2*n+1)+A004275(2*n+1)` -/
def P13612479383222549027.Spec : Prop :=
  ∀ n, P13612479383222549027.a n = A313694 n

end A313694

/-! ## A313694.P4241355212144961686

`A313613(n)-A238468(A238468(n)+n)`
-/

namespace A313694.P4241355212144961686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n - A238468 (A238468 n + (n : ℤ)).toNat

end

end A313694.P4241355212144961686

namespace A313694

/-- `A313613(n)-A238468(A238468(n)+n)` -/
def P4241355212144961686.Spec : Prop :=
  ∀ n, P4241355212144961686.a n = A313694 n

end A313694

/-! ## A313694.P7372988831548080004

`A005843(n)+A008574(n)-A047588(n+1)`
-/

namespace A313694.P7372988831548080004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A008574 n - A047588 (n + 1))

end

end A313694.P7372988831548080004

namespace A313694

/-- `A005843(n)+A008574(n)-A047588(n+1)` -/
def P7372988831548080004.Spec : Prop :=
  ∀ n, P7372988831548080004.a n = A313694 n

end A313694

/-! ## A313694.P10222682108330101665

`A008458(n)-A004525(A060464(n+1)+n)`
-/

namespace A313694.P10222682108330101665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A060464 (n + 1) + (n : ℤ)).toNat

end

end A313694.P10222682108330101665

namespace A313694

/-- `A008458(n)-A004525(A060464(n+1)+n)` -/
def P10222682108330101665.Spec : Prop :=
  ∀ n, P10222682108330101665.a n = A313694 n

end A313694

/-! ## A313694.P16062704661806277315

`A022144(n)-(A047588(n+1)+A005843(n))`
-/

namespace A313694.P16062704661806277315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (A047588 (n + 1) + A005843 n)

end

end A313694.P16062704661806277315

namespace A313694

/-- `A022144(n)-(A047588(n+1)+A005843(n))` -/
def P16062704661806277315.Spec : Prop :=
  ∀ n, P16062704661806277315.a n = A313694 n

end A313694

/-!
# A313695: Coordination sequence Gal.5.198.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313695, there is no canonical definition to state claims against.
-/

/-! ## A313695.P17359393409753169617

`A250120(n)+A086074(A220143(n+1))`
-/

namespace A313695.P17359393409753169617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A086074 (A220143 (n + 1)).toNat

end

end A313695.P17359393409753169617

/-! ## A313695.P6028241974486968757

`A087066(3*n)+A007306(A000079(n))`
-/

namespace A313695.P6028241974486968757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087066 (3 * n) + A007306 (A000079 n).toNat

end

end A313695.P6028241974486968757

/-! ## A313695.P16317408333565055876

`A250120(n)+A056170(A125691(n))`
-/

namespace A313695.P16317408333565055876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A056170 (A125691 n).toNat

end

end A313695.P16317408333565055876

/-! ## A313695.P10531805320887625335

`A001221(A089976(n))+A313510(n)-A028999(n)`
-/

namespace A313695.P10531805320887625335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A089976 n).toNat + (A313510 n - A028999 n)

end

end A313695.P10531805320887625335

/-! ## A313695.P68595063306219874

`A250120(n)+A071986(A001006(n))`
-/

namespace A313695.P68595063306219874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A071986 (A001006 n).toNat

end

end A313695.P68595063306219874

/-!
# A313696: Coordination sequence Gal.6.327.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313696, the canonical program `A313696.P9738400648610204729` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313696 has offset 0).

The definition of A313696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313696.P9738400648610204729

`A313543(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313696

/-- `A313543(n)+Δ[A011864(n)]` -/
def P9738400648610204729.Spec : Prop :=
  ∀ n, P9738400648610204729.a n = A313696 n

theorem P9738400648610204729.correct : P9738400648610204729.Spec := by
  intro n
  simp only [A313696]

end A313696

/-! ## A313696.P6393356000807705199

`abs(A008592(n)-A313779(n))`
-/

namespace A313696.P6393356000807705199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313779 n|

end

end A313696.P6393356000807705199

namespace A313696

/-- `abs(A008592(n)-A313779(n))` -/
def P6393356000807705199.Spec : Prop :=
  ∀ n, P6393356000807705199.a n = A313696 n

end A313696

/-! ## A313696.P2200446391045789134

`2*A008706(n)-A313779(n)`
-/

namespace A313696.P2200446391045789134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313779 n

end

end A313696.P2200446391045789134

namespace A313696

/-- `2*A008706(n)-A313779(n)` -/
def P2200446391045789134.Spec : Prop :=
  ∀ n, P2200446391045789134.a n = A313696 n

end A313696

/-! ## A313696.P9285984629248029202

`A008458(n)+A008574(n)-A313779(n)`
-/

namespace A313696.P9285984629248029202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313779 n)

end

end A313696.P9285984629248029202

namespace A313696

/-- `A008458(n)+A008574(n)-A313779(n)` -/
def P9285984629248029202.Spec : Prop :=
  ∀ n, P9285984629248029202.a n = A313696 n

end A313696

/-! ## A313696.P4718202124055399264

`A313779(n)-A005843(A313779(n)-A008706(n))`
-/

namespace A313696.P4718202124055399264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313779 n - A005843 (A313779 n - A008706 n).toNat

end

end A313696.P4718202124055399264

namespace A313696

/-- `A313779(n)-A005843(A313779(n)-A008706(n))` -/
def P4718202124055399264.Spec : Prop :=
  ∀ n, P4718202124055399264.a n = A313696 n

end A313696

/-! ## A313696.P4597144987565499884

`2*A313738(n)-A313788(n)`
-/

namespace A313696.P4597144987565499884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313738 n - A313788 n

end

end A313696.P4597144987565499884

namespace A313696

/-- `2*A313738(n)-A313788(n)` -/
def P4597144987565499884.Spec : Prop :=
  ∀ n, P4597144987565499884.a n = A313696 n

end A313696

/-! ## A313696.P9088556707057150124

`A313788(n)-A005843(A313788(n)-A313738(n))`
-/

namespace A313696.P9088556707057150124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313788 n - A005843 (A313788 n - A313738 n).toNat

end

end A313696.P9088556707057150124

namespace A313696

/-- `A313788(n)-A005843(A313788(n)-A313738(n))` -/
def P9088556707057150124.Spec : Prop :=
  ∀ n, P9088556707057150124.a n = A313696 n

end A313696

/-! ## A313696.P7379895681768826482

`2*n+A004396(A312897(n))`
-/

namespace A313696.P7379895681768826482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A312897 n).toNat

end

end A313696.P7379895681768826482

namespace A313696

/-- `2*n+A004396(A312897(n))` -/
def P7379895681768826482.Spec : Prop :=
  ∀ n, P7379895681768826482.a n = A313696 n

end A313696

/-! ## A313696.P15669103966303135821

`A004396(A314680(n))+2*n`
-/

namespace A313696.P15669103966303135821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314680 n).toNat + (2 * n : ℤ)

end

end A313696.P15669103966303135821

namespace A313696

/-- `A004396(A314680(n))+2*n` -/
def P15669103966303135821.Spec : Prop :=
  ∀ n, P15669103966303135821.a n = A313696 n

end A313696

/-! ## A313696.P2556494210811348084

`A005843(n)+A004396(A314680(n))`
-/

namespace A313696.P2556494210811348084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A314680 n).toNat

end

end A313696.P2556494210811348084

namespace A313696

/-- `A005843(n)+A004396(A314680(n))` -/
def P2556494210811348084.Spec : Prop :=
  ∀ n, P2556494210811348084.a n = A313696 n

end A313696

/-! ## A313696.P5293055474389130453

`A008585(n)-(n-A004396(A312897(n)))`
-/

namespace A313696.P5293055474389130453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A312897 n).toNat)

end

end A313696.P5293055474389130453

namespace A313696

/-- `A008585(n)-(n-A004396(A312897(n)))` -/
def P5293055474389130453.Spec : Prop :=
  ∀ n, P5293055474389130453.a n = A313696 n

end A313696

/-! ## A313696.P1160143519681827835

`A180004(A313514(n))`
-/

namespace A313696.P1160143519681827835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A313514 n).toNat

end

end A313696.P1160143519681827835

namespace A313696

/-- `A180004(A313514(n))` -/
def P1160143519681827835.Spec : Prop :=
  ∀ n, P1160143519681827835.a n = A313696 n

end A313696

/-! ## A313696.P14176788132421402817

`A005843(A008706(n))-A313779(n)`
-/

namespace A313696.P14176788132421402817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313779 n

end

end A313696.P14176788132421402817

namespace A313696

/-- `A005843(A008706(n))-A313779(n)` -/
def P14176788132421402817.Spec : Prop :=
  ∀ n, P14176788132421402817.a n = A313696 n

end A313696

/-! ## A313696.P6108653030851377144

`A005843(A313738(n))-A313788(n)`
-/

namespace A313696.P6108653030851377144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313738 n).toNat - A313788 n

end

end A313696.P6108653030851377144

namespace A313696

/-- `A005843(A313738(n))-A313788(n)` -/
def P6108653030851377144.Spec : Prop :=
  ∀ n, P6108653030851377144.a n = A313696 n

end A313696

/-! ## A313696.P7800705137363899432

`A004396(A312897(n)+A008486(n))`
-/

namespace A313696.P7800705137363899432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312897 n + A008486 n).toNat

end

end A313696.P7800705137363899432

namespace A313696

/-- `A004396(A312897(n)+A008486(n))` -/
def P7800705137363899432.Spec : Prop :=
  ∀ n, P7800705137363899432.a n = A313696 n

end A313696

/-! ## A313696.P8181507920752664067

`A004396(A312897(n)+A008585(n))`
-/

namespace A313696.P8181507920752664067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312897 n + A008585 n).toNat

end

end A313696.P8181507920752664067

namespace A313696

/-- `A004396(A312897(n)+A008585(n))` -/
def P8181507920752664067.Spec : Prop :=
  ∀ n, P8181507920752664067.a n = A313696 n

end A313696

/-! ## A313696.P648536904057623264

`A004396(A314669(2*n)-n)`
-/

namespace A313696.P648536904057623264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314669 (2 * n) - (n : ℤ)).toNat

end

end A313696.P648536904057623264

namespace A313696

/-- `A004396(A314669(2*n)-n)` -/
def P648536904057623264.Spec : Prop :=
  ∀ n, P648536904057623264.a n = A313696 n

end A313696

/-! ## A313696.P10282192329106471592

`A315519(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313696.P10282192329106471592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315519 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313696.P10282192329106471592

namespace A313696

/-- `A315519(2*n)+A008458(n+1)-(12*n+6)` -/
def P10282192329106471592.Spec : Prop :=
  ∀ n, P10282192329106471592.a n = A313696 n

end A313696

/-! ## A313696.P18265318481755146421

`A004525(A315305(2*n))`
-/

namespace A313696.P18265318481755146421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315305 (2 * n)).toNat

end

end A313696.P18265318481755146421

namespace A313696

/-- `A004525(A315305(2*n))` -/
def P18265318481755146421.Spec : Prop :=
  ∀ n, P18265318481755146421.a n = A313696 n

end A313696

/-! ## A313696.P17474916720739065942

`A004526(A315305(2*n)+1)`
-/

namespace A313696.P17474916720739065942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315305 (2 * n) + 1).toNat

end

end A313696.P17474916720739065942

namespace A313696

/-- `A004526(A315305(2*n)+1)` -/
def P17474916720739065942.Spec : Prop :=
  ∀ n, P17474916720739065942.a n = A313696 n

end A313696

/-!
# A313697: Coordination sequence Gal.5.202.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313697, there is no canonical definition to state claims against.
-/

/-! ## A313697.P6011028280777365673

`A313696(n)+A011738(A079512(n))`
-/

namespace A313697.P6011028280777365673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313696 n + A011738 (A079512 n).toNat

end

end A313697.P6011028280777365673

/-! ## A313697.P15836728382959946093

`A315257(n)-A024360(A032398(n+1))`
-/

namespace A313697.P15836728382959946093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315257 n - A024360 (A032398 (n + 1)).toNat

end

end A313697.P15836728382959946093

/-! ## A313697.P2281432003073647700

`A011738(A079512(n))-(A011738(n)-A313696(n))`
-/

namespace A313697.P2281432003073647700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011738 (A079512 n).toNat - (A011738 n - A313696 n)

end

end A313697.P2281432003073647700

/-! ## A313697.P4514357682715006244

`A313726(n)-A277017(n*(n+5)*(C(n, 2)+1))`
-/

namespace A313697.P4514357682715006244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 n - A277017 (n * ((n + 5) * (Nat.choose n 2 + 1)))

end

end A313697.P4514357682715006244

/-! ## A313697.P13811645051385582088

`A363795(A058699(n))+A250120(n)`
-/

namespace A313697.P13811645051385582088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A058699 n).toNat + A250120 n

end

end A313697.P13811645051385582088

/-!
# A313698: Coordination sequence Gal.6.157.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313698, the canonical program `A313698.P13755199689401812010` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313698 has offset 0).

The definition of A313698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313698.P13755199689401812010

`A313251(n)+A128834(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313698

/-- `A313251(n)+A128834(n)` -/
def P13755199689401812010.Spec : Prop :=
  ∀ n, P13755199689401812010.a n = A313698 n

theorem P13755199689401812010.correct : P13755199689401812010.Spec := by
  intro n
  simp only [A313698]

end A313698

/-! ## A313698.P14238599694292862177

`A314688(n)+A004524(n+1)`
-/

namespace A313698.P14238599694292862177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n + A004524 (n + 1)

end

end A313698.P14238599694292862177

namespace A313698

/-- `A314688(n)+A004524(n+1)` -/
def P14238599694292862177.Spec : Prop :=
  ∀ n, P14238599694292862177.a n = A313698 n

end A313698

/-! ## A313698.P10657520000387806850

`A313251(n)-A010892(n+2)`
-/

namespace A313698.P10657520000387806850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n - A010892 (n + 2)

end

end A313698.P10657520000387806850

namespace A313698

/-- `A313251(n)-A010892(n+2)` -/
def P10657520000387806850.Spec : Prop :=
  ∀ n, P10657520000387806850.a n = A313698 n

end A313698

/-! ## A313698.P4662091921719941708

`A314688(n)+n-A004525(n)`
-/

namespace A313698.P4662091921719941708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n + ((n : ℤ) - A004525 n)

end

end A313698.P4662091921719941708

namespace A313698

/-- `A314688(n)+n-A004525(n)` -/
def P4662091921719941708.Spec : Prop :=
  ∀ n, P4662091921719941708.a n = A313698 n

end A313698

/-! ## A313698.P18344748108717876724

`A313057(n)+A004525(A004396(n))`
-/

namespace A313698.P18344748108717876724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + A004525 (A004396 n).toNat

end

end A313698.P18344748108717876724

namespace A313698

/-- `A313057(n)+A004525(A004396(n))` -/
def P18344748108717876724.Spec : Prop :=
  ∀ n, P18344748108717876724.a n = A313698 n

end A313698

/-! ## A313698.P18323044606655388088

`A314841(n)+A004396(n-A004525(n))`
-/

namespace A313698.P18323044606655388088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313698.P18323044606655388088

namespace A313698

/-- `A314841(n)+A004396(n-A004525(n))` -/
def P18323044606655388088.Spec : Prop :=
  ∀ n, P18323044606655388088.a n = A313698 n

end A313698

/-! ## A313698.P11843538664985472315

`abs(A008592(n)-A313778(n))`
-/

namespace A313698.P11843538664985472315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313778 n|

end

end A313698.P11843538664985472315

namespace A313698

/-- `abs(A008592(n)-A313778(n))` -/
def P11843538664985472315.Spec : Prop :=
  ∀ n, P11843538664985472315.a n = A313698 n

end A313698

/-! ## A313698.P3334444275082537778

`floor(A010015(n)/A313778(n))`
-/

namespace A313698.P3334444275082537778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313778 n : ℚ)⌋

end

end A313698.P3334444275082537778

namespace A313698

/-- `floor(A010015(n)/A313778(n))` -/
def P3334444275082537778.Spec : Prop :=
  ∀ n, P3334444275082537778.a n = A313698 n

end A313698

/-! ## A313698.P7268515205647496219

`2*A008706(n)-A313778(n)`
-/

namespace A313698.P7268515205647496219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313778 n

end

end A313698.P7268515205647496219

namespace A313698

/-- `2*A008706(n)-A313778(n)` -/
def P7268515205647496219.Spec : Prop :=
  ∀ n, P7268515205647496219.a n = A313698 n

end A313698

/-! ## A313698.P10830707088024084192

`A008458(n)+A008574(n)-A313778(n)`
-/

namespace A313698.P10830707088024084192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313778 n)

end

end A313698.P10830707088024084192

namespace A313698

/-- `A008458(n)+A008574(n)-A313778(n)` -/
def P10830707088024084192.Spec : Prop :=
  ∀ n, P10830707088024084192.a n = A313698 n

end A313698

/-! ## A313698.P7662561564008119073

`A310444(n)+A134667(n)`
-/

namespace A313698.P7662561564008119073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n + A134667 n

end

end A313698.P7662561564008119073

namespace A313698

/-- `A310444(n)+A134667(n)` -/
def P7662561564008119073.Spec : Prop :=
  ∀ n, P7662561564008119073.a n = A313698 n

end A313698

/-! ## A313698.P11717182171930987775

`A004396(A004525(n))+A313739(n)-A004525(n)`
-/

namespace A313698.P11717182171930987775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313739 n - A004525 n)

end

end A313698.P11717182171930987775

namespace A313698

/-- `A004396(A004525(n))+A313739(n)-A004525(n)` -/
def P11717182171930987775.Spec : Prop :=
  ∀ n, P11717182171930987775.a n = A313698 n

end A313698

/-! ## A313698.P4098013529895436168

`A004525(A004396(n))+A313879(n)-A004396(n)`
-/

namespace A313698.P4098013529895436168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313879 n - A004396 n)

end

end A313698.P4098013529895436168

namespace A313698

/-- `A004525(A004396(n))+A313879(n)-A004396(n)` -/
def P4098013529895436168.Spec : Prop :=
  ∀ n, P4098013529895436168.a n = A313698 n

end A313698

/-! ## A313698.P14699189748194793631

`A315479(n)-A004525(n)`
-/

namespace A313698.P14699189748194793631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315479 n - A004525 n

end

end A313698.P14699189748194793631

namespace A313698

/-- `A315479(n)-A004525(n)` -/
def P14699189748194793631.Spec : Prop :=
  ∀ n, P14699189748194793631.a n = A313698 n

end A313698

/-! ## A313698.P5413677524459563534

`A074067(A313778(n))`
-/

namespace A313698.P5413677524459563534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313778 n).toNat

end

end A313698.P5413677524459563534

namespace A313698

/-- `A074067(A313778(n))` -/
def P5413677524459563534.Spec : Prop :=
  ∀ n, P5413677524459563534.a n = A313698 n

end A313698

/-!
# A313699: Coordination sequence Gal.5.212.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313699, there is no canonical definition to state claims against.
-/

/-! ## A313699.P17864293091045836501

`A008579(n)+A001222(A150990(n))`
-/

namespace A313699.P17864293091045836501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001222 (A150990 n).toNat

end

end A313699.P17864293091045836501

/-! ## A313699.P14709303246694818906

`A250120(n)+A086010(A029889(n))`
-/

namespace A313699.P14709303246694818906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A086010 (A029889 n).toNat

end

end A313699.P14709303246694818906

/-! ## A313699.P17882740942895693480

`A250120(n)+A124763(A006128(n))`
-/

namespace A313699.P17882740942895693480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A124763 (A006128 n).toNat

end

end A313699.P17882740942895693480

/-! ## A313699.P14702508869479968056

`A250120(n)+A127326(A076739(n))`
-/

namespace A313699.P14702508869479968056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A127326 (A076739 n).toNat

end

end A313699.P14702508869479968056

/-! ## A313699.P2344399565031042852

`A302110(A001287(n))+A250120(n)`
-/

namespace A313699.P2344399565031042852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (A001287 (n + 10)).toNat + A250120 n

end

end A313699.P2344399565031042852

