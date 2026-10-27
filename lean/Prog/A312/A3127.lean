import SequenceMachineLib.Basic
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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A312700: Coordination sequence Gal.6.592.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312700, there is no canonical definition to state claims against.
-/

/-! ## A312700.P15062215715480439026

`A312701(A123262(∑[n])+n)`
-/

namespace A312700.P15062215715480439026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312701 (A123262 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A312700.P15062215715480439026

/-! ## A312700.P9392048429109586728

`A312701(n-A123262(∑[n]))`
-/

namespace A312700.P9392048429109586728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312701 ((n : ℤ) - A123262 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A312700.P9392048429109586728

/-! ## A312700.P311818497787874420

`A351870(A312701(n)+1)-1`
-/

namespace A312700.P311818497787874420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A312701 n + 1).toNat - 1

end

end A312700.P311818497787874420

/-! ## A312700.P8332371201199283162

`A312701(n)%A137390(n+1)`
-/

namespace A312700.P8332371201199283162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312701 n) (A137390 (n + 1))

end

end A312700.P8332371201199283162

/-! ## A312700.P11184213038345688794

`A312701(n)+A185254(A185254(n))`
-/

namespace A312700.P11184213038345688794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312701 n + A185254 (A185254 n).toNat

end

end A312700.P11184213038345688794

/-!
# A312702: Coordination sequence Gal.6.508.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312702, there is no canonical definition to state claims against.
-/

/-! ## A312702.P15405111584819564164

`A357434(n²)+A273670(n)`
-/

namespace A312702.P15405111584819564164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357434 (n ^ 2) + A273670 n

end

end A312702.P15405111584819564164

/-! ## A312702.P2706913418570365971

`∑[A010060(A308241(n))+A004092(n)]`
-/

namespace A312702.P2706913418570365971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A308241 n).toNat + A004092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312702.P2706913418570365971

/-! ## A312702.P17510860400198970795

`xor(A008706(n), A105700(A116662(n+1)))`
-/

namespace A312702.P17510860400198970795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008706 n) (A105700 (A116662 (n + 1)).toNat)

end

end A312702.P17510860400198970795

/-! ## A312702.P8113326898229649848

`xor(A315060(n)+A000007(A294493(n)), A001221(A047486(2*n+2)))`
-/

namespace A312702.P8113326898229649848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A315060 n + A000007 (A294493 n).toNat) (A001221 (A047486 (2 * n + 2)).toNat)

end

end A312702.P8113326898229649848

/-!
# A312703: Coordination sequence Gal.6.581.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312703, there is no canonical definition to state claims against.
-/

/-! ## A312703.P4494348307643174488

`A312225(lt[A312212(n), A312244(n+2)])`
-/

namespace A312703.P4494348307643174488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312244 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312225 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A312703.P4494348307643174488

/-!
# A312704: Coordination sequence Gal.6.580.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312704, there is no canonical definition to state claims against.
-/

/-! ## A312704.P13688557600657598068

`A312647(n)+A086134(A000110(n))`
-/

namespace A312704.P13688557600657598068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312647 n + A086134 (A000110 n).toNat

end

end A312704.P13688557600657598068

/-!
# A312705: Coordination sequence Gal.5.272.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312705, there is no canonical definition to state claims against.
-/

/-! ## A312705.P13545931013113781413

`A039956(n+1)-A002654(A027612(n+1))`
-/

namespace A312705.P13545931013113781413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) - A002654 (A027612 (n + 1)).toNat

end

end A312705.P13545931013113781413

/-! ## A312705.P12149262951563824463

`A039956(n+1)-A122071(A172225(n+3))`
-/

namespace A312705.P12149262951563824463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) - A122071 (A172225 (n + 3)).toNat

end

end A312705.P12149262951563824463

/-!
# A312706: Coordination sequence Gal.6.507.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312706, there is no canonical definition to state claims against.
-/

/-! ## A312706.P12409813232195105126

`or(A000122(A264872(3*n+1)), A312705(n))`
-/

namespace A312706.P12409813232195105126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A264872 (3 * n + 1)).toNat) (A312705 n)

end

end A312706.P12409813232195105126

/-! ## A312706.P8213581716024170515

`or(A080256(A090947(n)), A312705(n))`
-/

namespace A312706.P8213581716024170515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080256 (A090947 n).toNat) (A312705 n)

end

end A312706.P8213581716024170515

/-! ## A312706.P555819184437301448

`A312705(n)+A285936(A111576(n+1))`
-/

namespace A312706.P555819184437301448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312705 n + A285936 ((A111576 (n + 1)).toNat + 10)

end

end A312706.P555819184437301448

/-! ## A312706.P3628147429445434113

`or(A057918(A077458(n+1)), A312705(n))`
-/

namespace A312706.P3628147429445434113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057918 (A077458 (n + 1)).toNat) (A312705 n)

end

end A312706.P3628147429445434113

/-!
# A312707: Coordination sequence Gal.6.582.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312707, there is no canonical definition to state claims against.
-/

/-! ## A312707.P10154430590335403097

`eq[A342753(2*(n+1)), A343227(A343227(n+3))]`
-/

namespace A312707.P10154430590335403097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343227 (A343227 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312707.P10154430590335403097

/-! ## A312707.P12022285232238299801

`record[A322813(A315628(n)²)]`
-/

namespace A312707.P12022285232238299801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (A315628 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312707.P12022285232238299801

/-! ## A312707.P17802472757018107753

`∑[A000005(A200927(4*(n+1))+n!)]`
-/

namespace A312707.P17802472757018107753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A200927 (4 * (n + 1)) + (Nat.factorial n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312707.P17802472757018107753

/-! ## A312707.P4259283450438109768

`xor(A086134(A000110(n)), A312665(n))`
-/

namespace A312707.P4259283450438109768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086134 (A000110 n).toNat) (A312665 n)

end

end A312707.P4259283450438109768

/-! ## A312707.P5975136552849601379

`xor(A086134(A000110(n)), A312666(n))`
-/

namespace A312707.P5975136552849601379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086134 (A000110 n).toNat) (A312666 n)

end

end A312707.P5975136552849601379

/-!
# A312708: Coordination sequence Gal.6.515.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312708, there is no canonical definition to state claims against.
-/

/-! ## A312708.P1307758769849737399

`xor(A286665(A224664(n+1)), A313014(n))`
-/

namespace A312708.P1307758769849737399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A286665 (A224664 (n + 1)).toNat) (A313014 n)

end

end A312708.P1307758769849737399

/-!
# A312709: Coordination sequence Gal.6.512.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312709, there is no canonical definition to state claims against.
-/

/-! ## A312709.P10361786139181387363

`A311886(n)+A063725(A032144(n+1))`
-/

namespace A312709.P10361786139181387363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311886 n + A063725 (A032144 (n + 1)).toNat

end

end A312709.P10361786139181387363

/-! ## A312709.P290256768317082572

`xor(A092782(A306360(2*n+1)), A316324(n+1))`
-/

namespace A312709.P290256768317082572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A092782 (A306360 (2 * n + 1)).toNat) (A316324 (n + 1))

end

end A312709.P290256768317082572

/-!
# A312711: Coordination sequence Gal.6.532.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312711, there is no canonical definition to state claims against.
-/

/-! ## A312711.P14431383879358933186

`A250120(n)-A025426(A076288(n+1))`
-/

namespace A312711.P14431383879358933186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A025426 (A076288 (n + 1)).toNat

end

end A312711.P14431383879358933186

/-! ## A312711.P7966494849430372916

`A250120(n)-A308999(A253180(n+3))`
-/

namespace A312711.P7966494849430372916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A308999 (A253180 (n + 3)).toNat

end

end A312711.P7966494849430372916

/-! ## A312711.P6385948578457870217

`A333382(A312300(2*n))+A312355(n)`
-/

namespace A312711.P6385948578457870217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A312300 (2 * n)).toNat + A312355 n

end

end A312711.P6385948578457870217

/-!
# A312712: Coordination sequence Gal.6.550.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312712, there is no canonical definition to state claims against.
-/

/-! ## A312712.P11891050254268236832

`or(A005087(A243393(n+1)), A312278(n))`
-/

namespace A312712.P11891050254268236832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005087 (A243393 (n + 1)).toNat) (A312278 n)

end

end A312712.P11891050254268236832

/-! ## A312712.P10562180830368983046

`A313326(n)-A001222(A132373(n))`
-/

namespace A312712.P10562180830368983046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313326 n - A001222 (A132373 n).toNat

end

end A312712.P10562180830368983046

/-! ## A312712.P4746391650353274281

`A111660(A314871(n)+A312764(n))`
-/

namespace A312712.P4746391650353274281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A314871 n + A312764 n).toNat

end

end A312712.P4746391650353274281

/-! ## A312712.P11452411469085567164

`xor(A007814(A280589(n)), A008579(n))`
-/

namespace A312712.P11452411469085567164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A280589 n).toNat) (A008579 n)

end

end A312712.P11452411469085567164

/-! ## A312712.P16173890905892829107

`xor(A249442(A265112(n+1)), A311260(n))`
-/

namespace A312712.P16173890905892829107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A249442 (A265112 (n + 1)).toNat) (A311260 n)

end

end A312712.P16173890905892829107

/-!
# A312713: Coordination sequence Gal.6.531.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312713, there is no canonical definition to state claims against.
-/

/-! ## A312713.P16802900561560586091

`A315026(n)-A170958(A027379(n))`
-/

namespace A312713.P16802900561560586091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n - A170958 (A027379 n).toNat

end

end A312713.P16802900561560586091

/-! ## A312713.P8669439798975834582

`A314841(n)-A046978(A185544(n))`
-/

namespace A312713.P8669439798975834582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n - A046978 (A185544 n).toNat

end

end A312713.P8669439798975834582

/-! ## A312713.P5751719281133612312

`A311994(n)+A269243(A292432(2*n+3))`
-/

namespace A312713.P5751719281133612312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311994 n + A269243 (A292432 (2 * n + 3)).toNat

end

end A312713.P5751719281133612312

/-! ## A312713.P5116280584710104203

`A026478(2*(n+1))-A322418(A240192(2*n+1))`
-/

namespace A312713.P5116280584710104203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026478 (2 * (n + 1)) - A322418 (A240192 (2 * n + 1)).toNat

end

end A312713.P5116280584710104203

/-! ## A312713.P8704782097903214180

`A004526(n)+A310843(n)-A079365(A119745(2*n+5))`
-/

namespace A312713.P8704782097903214180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A310843 n - A079365 (A119745 (2 * n + 5)).toNat)

end

end A312713.P8704782097903214180

/-!
# A312714: Coordination sequence Gal.6.545.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312714, there is no canonical definition to state claims against.
-/

/-! ## A312714.P4089433293933772710

`A250120(n)-A368774(A161715(n))`
-/

namespace A312714.P4089433293933772710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A368774 (A161715 n).toNat

end

end A312714.P4089433293933772710

/-! ## A312714.P17595980456564980759

`A312376(n)+A073490(A025567(n+1))`
-/

namespace A312714.P17595980456564980759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312376 n + A073490 (A025567 (n + 1)).toNat

end

end A312714.P17595980456564980759

/-! ## A312714.P16279454060414825623

`A250120(A227549(n+1))-A316716(2*n)`
-/

namespace A312714.P16279454060414825623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A227549 (n + 1)).toNat - A316716 (2 * n)

end

end A312714.P16279454060414825623

/-! ## A312714.P18129637939202723953

`A310796(n)+A001221(A000142(n))`
-/

namespace A312714.P18129637939202723953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310796 n + A001221 (A000142 n).toNat

end

end A312714.P18129637939202723953

/-! ## A312714.P17563606967986585733

`A312376(n)+A286059(A286075(n))`
-/

namespace A312714.P17563606967986585733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312376 n + A286059 (A286075 n).toNat

end

end A312714.P17563606967986585733

/-!
# A312715: Coordination sequence Gal.6.74.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312715, there is no canonical definition to state claims against.
-/

/-! ## A312715.P17790974820678996138

`A130824(n)+A038548(A001550(n))`
-/

namespace A312715.P17790974820678996138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A038548 (A001550 n).toNat

end

end A312715.P17790974820678996138

/-! ## A312715.P3644126548441573641

`A310903(n)+A101688(A000244(n))`
-/

namespace A312715.P3644126548441573641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310903 n + A101688 (A000244 n).toNat

end

end A312715.P3644126548441573641

/-! ## A312715.P12941806656902491106

`A310904(n)+A115955(A032487(n+1))`
-/

namespace A312715.P12941806656902491106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310904 n + A115955 (A032487 (n + 1)).toNat

end

end A312715.P12941806656902491106

/-! ## A312715.P18395517766529748545

`and(A250120(n), A346124(A081118(n+1)))`
-/

namespace A312715.P18395517766529748545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A250120 n) (A346124 (A081118 (n + 1)).toNat)

end

end A312715.P18395517766529748545

/-! ## A312715.P17870473224548681112

`A064911(A283877(n))+A312315(n)+A185237((3-n)²)`
-/

namespace A312715.P17870473224548681112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A283877 n).toNat + (A312315 n + A185237 ((3 - (n : ℤ)) ^ 2).toNat)

end

end A312715.P17870473224548681112

/-!
# A312716: Coordination sequence Gal.6.285.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312716, there is no canonical definition to state claims against.
-/

/-! ## A312716.P1362321071557126552

`A310922(n)+A000007(A088994(n))`
-/

namespace A312716.P1362321071557126552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310922 n + A000007 (A088994 n).toNat

end

end A312716.P1362321071557126552

/-! ## A312716.P16254801629095630610

`A331383(A000070(n))+A312284(n)`
-/

namespace A312716.P16254801629095630610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331383 (A000070 n).toNat + A312284 n

end

end A312716.P16254801629095630610

/-! ## A312716.P9717330570651332881

`A310922(n)+A268389(A139695(n+1))`
-/

namespace A312716.P9717330570651332881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310922 n + A268389 (A139695 (n + 1)).toNat

end

end A312716.P9717330570651332881

/-! ## A312716.P4020209389921830931

`A310922(n)+A064911(A360194(2*n+1))`
-/

namespace A312716.P4020209389921830931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310922 n + A064911 (A360194 (2 * n + 1)).toNat

end

end A312716.P4020209389921830931

/-!
# A312717: Coordination sequence Gal.6.400.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312717, there is no canonical definition to state claims against.
-/

/-! ## A312717.P17666087581585303443

`A311442(n)+A211396(A094033(n))`
-/

namespace A312717.P17666087581585303443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311442 n + A211396 (A094033 n).toNat

end

end A312717.P17666087581585303443

/-! ## A312717.P14934870327566645860

`A311443(n)+A211396(A094033(n))`
-/

namespace A312717.P14934870327566645860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311443 n + A211396 (A094033 n).toNat

end

end A312717.P14934870327566645860

/-! ## A312717.P2813243024071083052

`A311444(n)+A211396(A094033(n))`
-/

namespace A312717.P2813243024071083052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311444 n + A211396 (A094033 n).toNat

end

end A312717.P2813243024071083052

/-! ## A312717.P12928125494416321089

`A311445(n)+A211396(A094033(n))`
-/

namespace A312717.P12928125494416321089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311445 n + A211396 (A094033 n).toNat

end

end A312717.P12928125494416321089

/-! ## A312717.P17233329917829538749

`A310875(n)+A001221(A111063(n))`
-/

namespace A312717.P17233329917829538749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310875 n + A001221 (A111063 n).toNat

end

end A312717.P17233329917829538749

/-!
# A312718: Coordination sequence Gal.6.399.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312718, there is no canonical definition to state claims against.
-/

/-! ## A312718.P6802894322225413392

`A312717(n)-A178798(A262735(n))`
-/

namespace A312718.P6802894322225413392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312717 n - A178798 (A262735 n).toNat

end

end A312718.P6802894322225413392

/-! ## A312718.P11893803139028352071

`char[7]+A310875(n)+A001221(A111063(n))`
-/

namespace A312718.P11893803139028352071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A310875 n + A001221 (A111063 n).toNat)

end

end A312718.P11893803139028352071

/-! ## A312718.P15030448329347940876

`A312717(n)+A010051(A022122(2*(n+2)))`
-/

namespace A312718.P15030448329347940876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312717 n + A010051 (A022122 (2 * (n + 2))).toNat

end

end A312718.P15030448329347940876

/-! ## A312718.P16841394346810873502

`A021913(n)+A310924(n)-A021913(A046979(n))`
-/

namespace A312718.P16841394346810873502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n + (A310924 n - A021913 (A046979 n).toNat)

end

end A312718.P16841394346810873502

/-!
# A312719: Coordination sequence Gal.6.180.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312719, there is no canonical definition to state claims against.
-/

/-! ## A312719.P8687914268251079767

`A310227(n)+A213911(A111285(n+1))`
-/

namespace A312719.P8687914268251079767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310227 n + A213911 (A111285 (n + 1)).toNat

end

end A312719.P8687914268251079767

/-!
# A312720: Coordination sequence Gal.6.583.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312720, there is no canonical definition to state claims against.
-/

/-! ## A312720.P10473383486781485603

`(A312776(n)+A008579(n))/2`
-/

namespace A312720.P10473383486781485603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312776 n + A008579 n : ℚ) / 2

end

end A312720.P10473383486781485603

/-! ## A312720.P16992099143264834759

`A014682(A312776(n)+A008579(n))`
-/

namespace A312720.P16992099143264834759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312776 n + A008579 n).toNat

end

end A312720.P16992099143264834759

/-! ## A312720.P13676416810300121366

`A008579(n)+A001281(A312776(n)-A008579(n))`
-/

namespace A312720.P13676416810300121366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001281 (A312776 n - A008579 n).toNat

end

end A312720.P13676416810300121366

/-! ## A312720.P2530541953073185995

`A008579(n)+A004525(A312776(n)-A008579(n))`
-/

namespace A312720.P2530541953073185995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A312776 n - A008579 n).toNat

end

end A312720.P2530541953073185995

/-! ## A312720.P991410067689951892

`A008579(n)+A006370(A312776(n)-A008579(n))`
-/

namespace A312720.P991410067689951892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A006370 (A312776 n - A008579 n).toNat

end

end A312720.P991410067689951892

/-! ## A312720.P17434765619738647707

`A025480(A312776(n)-A008579(n))+A008579(n)`
-/

namespace A312720.P17434765619738647707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312776 n - A008579 n).toNat + A008579 n

end

end A312720.P17434765619738647707

/-! ## A312720.P7390423233866292816

`A026741(A312776(n)-A008579(n))+A008579(n)`
-/

namespace A312720.P7390423233866292816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312776 n - A008579 n).toNat + A008579 n

end

end A312720.P7390423233866292816

/-! ## A312720.P17488083724752360506

`A312776(n)-A004526(A312776(n)-A008579(n))`
-/

namespace A312720.P17488083724752360506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312776 n - A004526 (A312776 n - A008579 n).toNat

end

end A312720.P17488083724752360506

/-! ## A312720.P6269555915843771688

`A001281(A312776(n)+A008579(n))`
-/

namespace A312720.P6269555915843771688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312776 n + A008579 n).toNat

end

end A312720.P6269555915843771688

/-! ## A312720.P14028419820113099034

`A004525(A312776(n)+A008579(n))`
-/

namespace A312720.P14028419820113099034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312776 n + A008579 n).toNat

end

end A312720.P14028419820113099034

/-! ## A312720.P3735350773339721175

`A004526(A312776(n)+A008579(n))`
-/

namespace A312720.P3735350773339721175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312776 n + A008579 n).toNat

end

end A312720.P3735350773339721175

/-! ## A312720.P7338746299581646194

`A006370(A312776(n)+A008579(n))`
-/

namespace A312720.P7338746299581646194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A312776 n + A008579 n).toNat

end

end A312720.P7338746299581646194

/-! ## A312720.P14352370843625818318

`A025480(A312776(n)+A008579(n))`
-/

namespace A312720.P14352370843625818318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312776 n + A008579 n).toNat

end

end A312720.P14352370843625818318

/-! ## A312720.P14602999040573287126

`A026741(A312776(n)+A008579(n))`
-/

namespace A312720.P14602999040573287126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312776 n + A008579 n).toNat

end

end A312720.P14602999040573287126

/-! ## A312720.P14894878647059408642

`A032742(A312776(n)+A008579(n))`
-/

namespace A312720.P14894878647059408642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A312776 n + A008579 n).toNat

end

end A312720.P14894878647059408642

/-! ## A312720.P10948452615204812840

`A008619(A008579(n)+A312776(n)-1)`
-/

namespace A312720.P10948452615204812840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008579 n + (A312776 n - 1)).toNat

end

end A312720.P10948452615204812840

/-! ## A312720.P11672745026213932095

`A008619(A008579(n)-(1-A312776(n)))`
-/

namespace A312720.P11672745026213932095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008579 n - (1 - A312776 n)).toNat

end

end A312720.P11672745026213932095

/-!
# A312721: Coordination sequence Gal.6.164.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312721, there is no canonical definition to state claims against.
-/

/-! ## A312721.P3820039376613324109

`A312729(n)-A224782(A038765(n))`
-/

namespace A312721.P3820039376613324109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312729 n - A224782 (A038765 n).toNat

end

end A312721.P3820039376613324109

/-! ## A312721.P16862594847729208106

`A312728(n)-A345936(A090338(n))`
-/

namespace A312721.P16862594847729208106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312728 n - A345936 (A090338 n).toNat

end

end A312721.P16862594847729208106

/-!
# A312722: Coordination sequence Gal.5.146.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312722, there is no canonical definition to state claims against.
-/

/-! ## A312722.P12242365996710563249

`A265227(n+1)+A315559(n)-A008585(n)`
-/

namespace A312722.P12242365996710563249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + (A315559 n - A008585 n)

end

end A312722.P12242365996710563249

/-! ## A312722.P7633344506394492124

`A312466(n)+A242830(A340257(n))`
-/

namespace A312722.P7633344506394492124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n + A242830 (A340257 n).toNat

end

end A312722.P7633344506394492124

/-! ## A312722.P3028624400518781411

`A250120(n)-A226460(A333160(n))`
-/

namespace A312722.P3028624400518781411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A226460 (A333160 n).toNat

end

end A312722.P3028624400518781411

/-! ## A312722.P10219878861548019959

`A313237(n)-A109973(A008308(n+1))`
-/

namespace A312722.P10219878861548019959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n - A109973 (A008308 (n + 1)).toNat

end

end A312722.P10219878861548019959

/-! ## A312722.P11145235548342963732

`A250120(n)-A033761(A221483(3*n+5))`
-/

namespace A312722.P11145235548342963732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A033761 (A221483 (3 * n + 5)).toNat

end

end A312722.P11145235548342963732

/-!
# A312723: Coordination sequence Gal.6.271.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312723, there is no canonical definition to state claims against.
-/

/-! ## A312723.P7634723934596212057

`A312074(n)+A160382(A176558(n+1))`
-/

namespace A312723.P7634723934596212057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312074 n + A160382 (A176558 (n + 1)).toNat

end

end A312723.P7634723934596212057

/-! ## A312723.P17142205920807387425

`A250120(n)-A099174(A032559(n+1))`
-/

namespace A312723.P17142205920807387425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A099174 (A032559 (n + 1)).toNat

end

end A312723.P17142205920807387425

/-! ## A312723.P3565145267077341126

`A250120(n)-A179898(A032563(n+1))`
-/

namespace A312723.P3565145267077341126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A179898 (A032563 (n + 1)).toNat

end

end A312723.P3565145267077341126

/-! ## A312723.P5358652497802941241

`A250120(n)-A179898(A219324(n+1))`
-/

namespace A312723.P5358652497802941241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A179898 (A219324 (n + 1)).toNat

end

end A312723.P5358652497802941241

/-! ## A312723.P817822454693122706

`A250120(n)-A214407(A288946(n+1))`
-/

namespace A312723.P817822454693122706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A214407 (A288946 (n + 1)).toNat

end

end A312723.P817822454693122706

/-!
# A312724: Coordination sequence Gal.6.592.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312724, there is no canonical definition to state claims against.
-/

/-! ## A312724.P1737068225620614026

`A313090(A087051(n))+A238468(n)`
-/

namespace A312724.P1737068225620614026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313090 (A087051 n).toNat + A238468 n

end

end A312724.P1737068225620614026

/-! ## A312724.P6170070507310759235

`xor(A102679(A000111(n)), A312725(n))`
-/

namespace A312724.P6170070507310759235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102679 (A000111 n).toNat) (A312725 n)

end

end A312724.P6170070507310759235

/-! ## A312724.P12785945455481087887

`A312258(n)+A180094(A000109(n+3))`
-/

namespace A312724.P12785945455481087887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312258 n + A180094 (A000109 (n + 3)).toNat

end

end A312724.P12785945455481087887

/-! ## A312724.P15005810400868475666

`A250120(n)-A196563(A289584(n+3))`
-/

namespace A312724.P15005810400868475666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A196563 (A289584 (n + 3)).toNat

end

end A312724.P15005810400868475666

/-! ## A312724.P8902973185647116724

`A313090(n)-Δ[A014707(A200974(n+1))]`
-/

namespace A312724.P8902973185647116724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A200974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313090 n - (f1 (n + 1) - f1 n)

end

end A312724.P8902973185647116724

/-!
# A312725: Coordination sequence Gal.6.591.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312725, there is no canonical definition to state claims against.
-/

/-! ## A312725.P17309276172596568664

`xor(A102679(A000111(n)), A312724(n))`
-/

namespace A312725.P17309276172596568664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102679 (A000111 n).toNat) (A312724 n)

end

end A312725.P17309276172596568664

/-! ## A312725.P3609730630962386098

`A313212(n)-A257000(A257026(3*n+1))`
-/

namespace A312725.P3609730630962386098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313212 n - A257000 (A257026 (3 * n + 1)).toNat

end

end A312725.P3609730630962386098

/-! ## A312725.P10958359848657347335

`A312475(n)+A309332(A004153(n))`
-/

namespace A312725.P10958359848657347335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A309332 (A004153 n).toNat

end

end A312725.P10958359848657347335

/-! ## A312725.P6949675873904762373

`A312526(n)+A307597(A035011(n))`
-/

namespace A312725.P6949675873904762373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312526 n + A307597 (A035011 n).toNat

end

end A312725.P6949675873904762373

/-! ## A312725.P7074651775747124684

`A001069(A074497(n))*A366160(n+1)`
-/

namespace A312725.P7074651775747124684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001069 (A074497 n).toNat * A366160 (n + 1)

end

end A312725.P7074651775747124684

/-!
# A312726: Coordination sequence Gal.6.591.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312726, there is no canonical definition to state claims against.
-/

/-! ## A312726.P13905188857612443060

`A312536(n)+A161123(A352944(n))`
-/

namespace A312726.P13905188857612443060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312536 n + A161123 (A352944 n).toNat

end

end A312726.P13905188857612443060

/-! ## A312726.P6071450575096215708

`A312537(n)+A161123(A352944(n))`
-/

namespace A312726.P6071450575096215708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312537 n + A161123 (A352944 n).toNat

end

end A312726.P6071450575096215708

/-! ## A312726.P14235424522736837672

`A310882(n)+A073490(A291005(n))`
-/

namespace A312726.P14235424522736837672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A073490 (A291005 n).toNat

end

end A312726.P14235424522736837672

/-! ## A312726.P17949905087144818033

`A312750(n)-A001878(A341711(n))`
-/

namespace A312726.P17949905087144818033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312750 n - A001878 (A341711 n).toNat

end

end A312726.P17949905087144818033

/-! ## A312726.P9970481773665593807

`or(A031286(A058809(n)), A312322(n))`
-/

namespace A312726.P9970481773665593807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031286 (A058809 n).toNat) (A312322 n)

end

end A312726.P9970481773665593807

/-!
# A312727: Coordination sequence Gal.6.592.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312727, there is no canonical definition to state claims against.
-/

/-! ## A312727.P3582559919857101286

`A310907(n)+A267635(A299523(n+2))`
-/

namespace A312727.P3582559919857101286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310907 n + A267635 (A299523 (n + 2)).toNat

end

end A312727.P3582559919857101286

/-! ## A312727.P2667368072879394144

`A310907(n)+∑[A010054(A251582(n+3))]`
-/

namespace A312727.P2667368072879394144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A251582 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310907 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312727.P2667368072879394144

/-! ## A312727.P10519616365976823157

`A136110(2*n+1)+A069283(A290929(n))`
-/

namespace A312727.P10519616365976823157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136110 (2 * n + 1) + A069283 (A290929 n).toNat

end

end A312727.P10519616365976823157

/-!
# A312729: Coordination sequence Gal.6.401.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312729, there is no canonical definition to state claims against.
-/

/-! ## A312729.P12842489154791210366

`(A312801(n)+A301674(n))/2`
-/

namespace A312729.P12842489154791210366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312801 n + A301674 n : ℚ) / 2

end

end A312729.P12842489154791210366

/-! ## A312729.P659942305472982461

`A004526(A312801(n)+A301674(n))`
-/

namespace A312729.P659942305472982461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312801 n + A301674 n).toNat

end

end A312729.P659942305472982461

/-! ## A312729.P4652772201150756939

`A065033(A312801(n)+A301674(n))`
-/

namespace A312729.P4652772201150756939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312801 n + A301674 n).toNat

end

end A312729.P4652772201150756939

/-! ## A312729.P12770858960995914382

`A123108(A312801(n)+A301674(n))`
-/

namespace A312729.P12770858960995914382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A312801 n + A301674 n).toNat

end

end A312729.P12770858960995914382

/-! ## A312729.P10210507653199938357

`A289439(A312801(n)+A301674(n))`
-/

namespace A312729.P10210507653199938357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A312801 n + A301674 n).toNat

end

end A312729.P10210507653199938357

/-!
# A312730: Coordination sequence Gal.6.360.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312730, there is no canonical definition to state claims against.
-/

/-! ## A312730.P16956949790314873671

`A310926(n)-A056594(A029579(n))`
-/

namespace A312730.P16956949790314873671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310926 n - A056594 (A029579 n).toNat

end

end A312730.P16956949790314873671

/-! ## A312730.P10478705351978447674

`A310926(n)+A056594(A029579(n)+2)`
-/

namespace A312730.P10478705351978447674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310926 n + A056594 (A029579 n + 2).toNat

end

end A312730.P10478705351978447674

/-! ## A312730.P7185495756943621327

`A310926(n)-A056594(A004525(n+2))`
-/

namespace A312730.P7185495756943621327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310926 n - A056594 (A004525 (n + 2)).toNat

end

end A312730.P7185495756943621327

/-! ## A312730.P10056738669038488285

`A310926(n)+A056594(A056594(n)+A004525(n))`
-/

namespace A312730.P10056738669038488285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310926 n + A056594 (A056594 n + A004525 n).toNat

end

end A312730.P10056738669038488285

/-!
# A312731: Coordination sequence Gal.6.421.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312731, there is no canonical definition to state claims against.
-/

/-! ## A312731.P10476180879517488447

`A261662(n)+A119026(A002378(n))`
-/

namespace A312731.P10476180879517488447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261662 n + A119026 (A002378 n).toNat

end

end A312731.P10476180879517488447

/-! ## A312731.P3059471121084866616

`A312745(n)-A262684(A001349(n))`
-/

namespace A312731.P3059471121084866616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312745 n - A262684 (A001349 n).toNat

end

end A312731.P3059471121084866616

/-!
# A312732: Coordination sequence Gal.6.424.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312732, there is no canonical definition to state claims against.
-/

/-! ## A312732.P10002368919945120266

`A312349(n)+A001822(A001790(n))`
-/

namespace A312732.P10002368919945120266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312349 n + A001822 (A001790 n).toNat

end

end A312732.P10002368919945120266

/-! ## A312732.P10097654728275545795

`A312744(n)+A015854(A081125(n))`
-/

namespace A312732.P10097654728275545795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312744 n + A015854 (A081125 n).toNat

end

end A312732.P10097654728275545795

/-! ## A312732.P15058988253900249066

`A312744(n)-A010051(A172025(n))`
-/

namespace A312732.P15058988253900249066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312744 n - A010051 (A172025 n).toNat

end

end A312732.P15058988253900249066

/-! ## A312732.P16811728217171538760

`A312744(n)+A015854(A064611(n+1))`
-/

namespace A312732.P16811728217171538760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312744 n + A015854 (A064611 (n + 1)).toNat

end

end A312732.P16811728217171538760

/-! ## A312732.P14253012652909474137

`A312578(n)+A025457(A143832(n+1))`
-/

namespace A312732.P14253012652909474137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312578 n + A025457 (A143832 (n + 1)).toNat

end

end A312732.P14253012652909474137

/-!
# A312734: Coordination sequence Gal.6.384.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312734, there is no canonical definition to state claims against.
-/

/-! ## A312734.P8353160889988862960

`A313944(n)-(A014707(n)+A001222(A033887(n)))`
-/

namespace A312734.P8353160889988862960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313944 n - (A014707 n + A001222 (A033887 n).toNat)

end

end A312734.P8353160889988862960

/-! ## A312734.P15777493029474211766

`A310498(n)-(A014707(n)+A014707(A149512(n)))`
-/

namespace A312734.P15777493029474211766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310498 n - (A014707 n + A014707 (A149512 n).toNat)

end

end A312734.P15777493029474211766

/-! ## A312734.P11299396751047568269

`A248639(A058731(n))+A313203(n)-A014707(n)`
-/

namespace A312734.P11299396751047568269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 (A058731 n).toNat + (A313203 n - A014707 n)

end

end A312734.P11299396751047568269

/-! ## A312734.P10818358867266015567

`A281116(A126373(n))+A312507(n)-A014707(n)`
-/

namespace A312734.P10818358867266015567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A126373 n).toNat + (A312507 n - A014707 n)

end

end A312734.P10818358867266015567

/-! ## A312734.P17984747882461699508

`A351956(A246230(n))+A312613(n)-A014707(n)`
-/

namespace A312734.P17984747882461699508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351956 (A246230 (n + 10)).toNat + (A312613 n - A014707 n)

end

end A312734.P17984747882461699508

/-!
# A312735: Coordination sequence Gal.6.458.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312735, there is no canonical definition to state claims against.
-/

/-! ## A312735.P14659304150366278967

`A086251(A078721(2*n))+A083031(n+1)`
-/

namespace A312735.P14659304150366278967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (A078721 (2 * n)).toNat + A083031 (n + 1)

end

end A312735.P14659304150366278967

/-! ## A312735.P15131846585532551118

`A312461(n)+A124760(A024023(n))`
-/

namespace A312735.P15131846585532551118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312461 n + A124760 (A024023 n).toNat

end

end A312735.P15131846585532551118

/-! ## A312735.P940706939072477075

`A312466(n)+A124760(A024023(n))`
-/

namespace A312735.P940706939072477075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n + A124760 (A024023 n).toNat

end

end A312735.P940706939072477075

/-! ## A312735.P12527460088549492824

`A314829(n)-A279907(A017934(n))`
-/

namespace A312735.P12527460088549492824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n - A279907 (A017934 n).toNat

end

end A312735.P12527460088549492824

/-!
# A312736: Coordination sequence Gal.5.268.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312736, the canonical program `A312736.P842124473673064007` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312736 has offset 0).

The definition of A312736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312736.P842124473673064007

`A077814(A004396(n))+A008579(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A312736

/-- `A077814(A004396(n))+A008579(n)` -/
def P842124473673064007.Spec : Prop :=
  ∀ n, P842124473673064007.a n = A312736 n

theorem P842124473673064007.correct : P842124473673064007.Spec := by
  intro n
  simp only [A312736]

end A312736

/-! ## A312736.P7606929757764890389

`(A312790(n)+A008579(n))/2`
-/

namespace A312736.P7606929757764890389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312790 n + A008579 n : ℚ) / 2

end

end A312736.P7606929757764890389

namespace A312736

/-- `(A312790(n)+A008579(n))/2` -/
def P7606929757764890389.Spec : Prop :=
  ∀ n, P7606929757764890389.a n = (A312736 n : ℚ)

theorem P7606929757764890389.correct : P7606929757764890389.Spec := by
  intro n
  simp only [A312736, Nat.add_sub_cancel, A312736.P7606929757764890389.a, A312736.P842124473673064007.a, A004396, A004396.P17032557045289780609.a, A008579, A008579.P9321507706539872754.a, A077814, A077814.P1153780925982348255.a, A312790, A312790.P14315813496595789785.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312736

/-! ## A312736.P1258631159719019109

`A312790(n)-A077814(A004396(n))`
-/

namespace A312736.P1258631159719019109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312790 n - A077814 (A004396 n).toNat

end

end A312736.P1258631159719019109

namespace A312736

/-- `A312790(n)-A077814(A004396(n))` -/
def P1258631159719019109.Spec : Prop :=
  ∀ n, P1258631159719019109.a n = A312736 n

theorem P1258631159719019109.correct : P1258631159719019109.Spec := by
  intro n
  simp only [A312736, Nat.add_sub_cancel, A312736.P1258631159719019109.a, A312736.P842124473673064007.a, A004396, A004396.P17032557045289780609.a, A008579, A008579.P9321507706539872754.a, A077814, A077814.P1153780925982348255.a, A312790, A312790.P14315813496595789785.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312736

/-! ## A312736.P8439679791188315757

`A008579(n)+A001281(A312790(n)-A008579(n))`
-/

namespace A312736.P8439679791188315757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001281 (A312790 n - A008579 n).toNat

end

end A312736.P8439679791188315757

namespace A312736

/-- `A008579(n)+A001281(A312790(n)-A008579(n))` -/
def P8439679791188315757.Spec : Prop :=
  ∀ n, P8439679791188315757.a n = A312736 n

end A312736

/-! ## A312736.P12944920325493798439

`A008579(n)+A004525(A312790(n)-A008579(n))`
-/

namespace A312736.P12944920325493798439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A312790 n - A008579 n).toNat

end

end A312736.P12944920325493798439

namespace A312736

/-- `A008579(n)+A004525(A312790(n)-A008579(n))` -/
def P12944920325493798439.Spec : Prop :=
  ∀ n, P12944920325493798439.a n = A312736 n

end A312736

/-! ## A312736.P12689393830434117578

`A008579(n)+A006370(A312790(n)-A008579(n))`
-/

namespace A312736.P12689393830434117578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A006370 (A312790 n - A008579 n).toNat

end

end A312736.P12689393830434117578

namespace A312736

/-- `A008579(n)+A006370(A312790(n)-A008579(n))` -/
def P12689393830434117578.Spec : Prop :=
  ∀ n, P12689393830434117578.a n = A312736 n

end A312736

/-! ## A312736.P9080025562679979521

`A025480(A312790(n)-A008579(n))+A008579(n)`
-/

namespace A312736.P9080025562679979521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312790 n - A008579 n).toNat + A008579 n

end

end A312736.P9080025562679979521

namespace A312736

/-- `A025480(A312790(n)-A008579(n))+A008579(n)` -/
def P9080025562679979521.Spec : Prop :=
  ∀ n, P9080025562679979521.a n = A312736 n

end A312736

/-! ## A312736.P8205868313952418718

`A312790(n)-A004526(A312790(n)-A008579(n))`
-/

namespace A312736.P8205868313952418718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312790 n - A004526 (A312790 n - A008579 n).toNat

end

end A312736.P8205868313952418718

namespace A312736

/-- `A312790(n)-A004526(A312790(n)-A008579(n))` -/
def P8205868313952418718.Spec : Prop :=
  ∀ n, P8205868313952418718.a n = A312736 n

end A312736

/-! ## A312736.P8166098492879692592

`A008458(n)+A008579(n)-A315711(n)`
-/

namespace A312736.P8166098492879692592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A315711 n)

end

end A312736.P8166098492879692592

namespace A312736

/-- `A008458(n)+A008579(n)-A315711(n)` -/
def P8166098492879692592.Spec : Prop :=
  ∀ n, P8166098492879692592.a n = A312736 n

end A312736

/-! ## A312736.P17449530310479262252

`A001281(A312790(n)+A008579(n))`
-/

namespace A312736.P17449530310479262252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312790 n + A008579 n).toNat

end

end A312736.P17449530310479262252

namespace A312736

/-- `A001281(A312790(n)+A008579(n))` -/
def P17449530310479262252.Spec : Prop :=
  ∀ n, P17449530310479262252.a n = A312736 n

end A312736

/-! ## A312736.P9805292405415708238

`A004525(A312790(n)+A008579(n))`
-/

namespace A312736.P9805292405415708238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312790 n + A008579 n).toNat

end

end A312736.P9805292405415708238

namespace A312736

/-- `A004525(A312790(n)+A008579(n))` -/
def P9805292405415708238.Spec : Prop :=
  ∀ n, P9805292405415708238.a n = A312736 n

end A312736

/-! ## A312736.P4707177648307840698

`A004526(A312790(n)+A008579(n))`
-/

namespace A312736.P4707177648307840698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312790 n + A008579 n).toNat

end

end A312736.P4707177648307840698

namespace A312736

/-- `A004526(A312790(n)+A008579(n))` -/
def P4707177648307840698.Spec : Prop :=
  ∀ n, P4707177648307840698.a n = A312736 n

end A312736

/-! ## A312736.P2057916531934941679

`A006370(A312790(n)+A008579(n))`
-/

namespace A312736.P2057916531934941679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A312790 n + A008579 n).toNat

end

end A312736.P2057916531934941679

namespace A312736

/-- `A006370(A312790(n)+A008579(n))` -/
def P2057916531934941679.Spec : Prop :=
  ∀ n, P2057916531934941679.a n = A312736 n

end A312736

/-! ## A312736.P13808649269096444719

`A025480(A312790(n)+A008579(n))`
-/

namespace A312736.P13808649269096444719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312790 n + A008579 n).toNat

end

end A312736.P13808649269096444719

namespace A312736

/-- `A025480(A312790(n)+A008579(n))` -/
def P13808649269096444719.Spec : Prop :=
  ∀ n, P13808649269096444719.a n = A312736 n

end A312736

/-! ## A312736.P11443047380886432234

`A065033(A312790(n)+A008579(n))`
-/

namespace A312736.P11443047380886432234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312790 n + A008579 n).toNat

end

end A312736.P11443047380886432234

namespace A312736

/-- `A065033(A312790(n)+A008579(n))` -/
def P11443047380886432234.Spec : Prop :=
  ∀ n, P11443047380886432234.a n = A312736 n

end A312736

/-! ## A312736.P7186611441130175021

`A000463(A008579(n)+A312790(n)-1)`
-/

namespace A312736.P7186611441130175021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A008579 n + (A312790 n - 1)).toNat

end

end A312736.P7186611441130175021

namespace A312736

/-- `A000463(A008579(n)+A312790(n)-1)` -/
def P7186611441130175021.Spec : Prop :=
  ∀ n, P7186611441130175021.a n = A312736 n

end A312736

/-! ## A312736.P9355163079673013821

`A000463(A008579(n)-(1-A312790(n)))`
-/

namespace A312736.P9355163079673013821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A008579 n - (1 - A312790 n)).toNat

end

end A312736.P9355163079673013821

namespace A312736

/-- `A000463(A008579(n)-(1-A312790(n)))` -/
def P9355163079673013821.Spec : Prop :=
  ∀ n, P9355163079673013821.a n = A312736 n

end A312736

/-! ## A312736.P13218713819064166815

`A065033(A008579(n)-(1-A312790(n)))`
-/

namespace A312736.P13218713819064166815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008579 n - (1 - A312790 n)).toNat

end

end A312736.P13218713819064166815

namespace A312736

/-- `A065033(A008579(n)-(1-A312790(n)))` -/
def P13218713819064166815.Spec : Prop :=
  ∀ n, P13218713819064166815.a n = A312736 n

end A312736

/-!
# A312737: Coordination sequence Gal.6.449.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312737, there is no canonical definition to state claims against.
-/

/-! ## A312737.P4327710026796961211

`A312479(A227549(n+1))+floor(2*n/5)`
-/

namespace A312737.P4327710026796961211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312479 (A227549 (n + 1)).toNat + ⌊2 * ((n : ℚ) / 5)⌋

end

end A312737.P4327710026796961211

/-! ## A312737.P15847501510728356109

`A312479(A087051(n))+A057354(n)`
-/

namespace A312737.P15847501510728356109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312479 (A087051 n).toNat + A057354 n

end

end A312737.P15847501510728356109

/-! ## A312737.P13570225218859799265

`A312480(n)+A057354(A087051(n))`
-/

namespace A312737.P13570225218859799265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312480 n + A057354 (A087051 n).toNat

end

end A312737.P13570225218859799265

/-! ## A312737.P7294132011228299627

`A250120(n)-A109017(A065647(n))`
-/

namespace A312737.P7294132011228299627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A109017 (A065647 n).toNat

end

end A312737.P7294132011228299627

/-! ## A312737.P1862657216815122375

`or(A103309(A188495(n)), A312185(n))`
-/

namespace A312737.P1862657216815122375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103309 (A188495 n).toNat) (A312185 n)

end

end A312737.P1862657216815122375

/-!
# A312738: Coordination sequence Gal.5.241.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312738, there is no canonical definition to state claims against.
-/

/-! ## A312738.P5380450830377842742

`A312461(n)+A025442(A130810(n+4))`
-/

namespace A312738.P5380450830377842742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312461 n + A025442 (A130810 (n + 4)).toNat

end

end A312738.P5380450830377842742

/-! ## A312738.P7406181848848769313

`A190695(n+1)-A190676(A190787(n+4))`
-/

namespace A312738.P7406181848848769313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190695 (n + 1) - A190676 (A190787 (n + 4)).toNat

end

end A312738.P7406181848848769313

/-! ## A312738.P11831262838685953991

`lt[A015521(A014843(n+3)), A151694(2*n+3)]`
-/

namespace A312738.P11831262838685953991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (A014843 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151694 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A312738.P11831262838685953991

/-!
# A312739: Coordination sequence Gal.6.448.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312739, there is no canonical definition to state claims against.
-/

/-! ## A312739.P5181429533147753892

`xor(char[A178618(n)], A250120(n))`
-/

namespace A312739.P5181429533147753892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178618 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A250120 n)

end

end A312739.P5181429533147753892

/-! ## A312739.P2203158353848073822

`A305611(∏[A104807(n+1)])+n`
-/

namespace A312739.P2203158353848073822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A312739.P2203158353848073822

/-! ## A312739.P13914971582496127566

`A312621(n)+A080846(A204089(n))`
-/

namespace A312739.P13914971582496127566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312621 n + A080846 (A204089 n).toNat

end

end A312739.P13914971582496127566

/-! ## A312739.P9109359534803896927

`A250120(n)-A234046(A067771(n))`
-/

namespace A312739.P9109359534803896927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A234046 (A067771 n).toNat

end

end A312739.P9109359534803896927

/-! ## A312739.P6899193545575166624

`xor(A116178(A007758(n)), A250120(n))`
-/

namespace A312739.P6899193545575166624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116178 (A007758 n).toNat) (A250120 n)

end

end A312739.P6899193545575166624

/-!
# A312740: Coordination sequence Gal.6.447.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312740, there is no canonical definition to state claims against.
-/

/-! ## A312740.P5595705751048436049

`A312549(n)+A001221(A009240(n))`
-/

namespace A312740.P5595705751048436049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312549 n + A001221 (A009240 n).toNat

end

end A312740.P5595705751048436049

/-! ## A312740.P1577791226440958201

`A312525(n)+A001222(A012174(n))`
-/

namespace A312740.P1577791226440958201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312525 n + A001222 (A012174 n).toNat

end

end A312740.P1577791226440958201

/-! ## A312740.P7277049603443608849

`A250120(n)+A073445(A025192(n))`
-/

namespace A312740.P7277049603443608849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A073445 (A025192 n).toNat

end

end A312740.P7277049603443608849

/-! ## A312740.P15506247730860112

`A327406(A000142(n))+A312526(n)`
-/

namespace A312740.P15506247730860112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327406 (A000142 n).toNat + A312526 n

end

end A312740.P15506247730860112

/-!
# A312741: Coordination sequence Gal.6.581.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312741, there is no canonical definition to state claims against.
-/

/-! ## A312741.P7833815883594733815

`xor(A001842(A049311(n+1)), A250120(n))`
-/

namespace A312741.P7833815883594733815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001842 (A049311 (n + 1)).toNat) (A250120 n)

end

end A312741.P7833815883594733815

/-! ## A312741.P14043289967495287476

`A312565(n)+A079998(A104429(n))`
-/

namespace A312741.P14043289967495287476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312565 n + A079998 (A104429 n).toNat

end

end A312741.P14043289967495287476

/-! ## A312741.P8678570633080152446

`A312742(n)-A085979(A048772(n))`
-/

namespace A312741.P8678570633080152446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312742 n - A085979 (A048772 n).toNat

end

end A312741.P8678570633080152446

/-! ## A312741.P17755372487373736384

`A312742(n)-A102683(A047006(n))`
-/

namespace A312741.P17755372487373736384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312742 n - A102683 (A047006 n).toNat

end

end A312741.P17755372487373736384

/-!
# A312742: Coordination sequence Gal.5.240.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312742, there is no canonical definition to state claims against.
-/

/-! ## A312742.P17354001590639674879

`A312799(n)+A010815(A000041(3*(n+1)))`
-/

namespace A312742.P17354001590639674879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312799 n + A010815 (A000041 (3 * (n + 1))).toNat

end

end A312742.P17354001590639674879

/-! ## A312742.P1503862817159571300

`A312539(A087051(n))+A131572(A057354(n))`
-/

namespace A312742.P1503862817159571300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312539 (A087051 n).toNat + A131572 (A057354 n).toNat

end

end A312742.P1503862817159571300

/-! ## A312742.P7263048982896340361

`A312539(A227549(n+1))+A131572(A057354(n))`
-/

namespace A312742.P7263048982896340361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312539 (A227549 (n + 1)).toNat + A131572 (A057354 n).toNat

end

end A312742.P7263048982896340361

/-! ## A312742.P12872819643560196906

`A312539(n)+A071625(A074859(n))`
-/

namespace A312742.P12872819643560196906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312539 n + A071625 (A074859 n).toNat

end

end A312742.P12872819643560196906

/-! ## A312742.P1932050547529553219

`A312741(n)+A102683(A047006(n))`
-/

namespace A312742.P1932050547529553219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312741 n + A102683 (A047006 n).toNat

end

end A312742.P1932050547529553219

/-!
# A312743: Coordination sequence Gal.6.580.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312743, there is no canonical definition to state claims against.
-/

/-! ## A312743.P5922322571440925760

`A312742(n)+A165877(A260147(n))`
-/

namespace A312743.P5922322571440925760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312742 n + A165877 (A260147 n).toNat

end

end A312743.P5922322571440925760

/-! ## A312743.P11582278513551646280

`A312742(n)+A086074(A317038(n+1))`
-/

namespace A312743.P11582278513551646280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312742 n + A086074 (A317038 (n + 1)).toNat

end

end A312743.P11582278513551646280

/-!
# A312744: Coordination sequence Gal.6.535.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312744, there is no canonical definition to state claims against.
-/

/-! ## A312744.P10855590475873261037

`A312578(n)+A130543(A189898(n+1))`
-/

namespace A312744.P10855590475873261037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312578 n + A130543 (A189898 (n + 1)).toNat

end

end A312744.P10855590475873261037

/-! ## A312744.P14192165668349247154

`A323510(A000142(n))+A312732(n)`
-/

namespace A312744.P14192165668349247154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323510 (A000142 n).toNat + A312732 n

end

end A312744.P14192165668349247154

/-! ## A312744.P18372989349766320139

`A312578(n)+A269723(A075834(n))`
-/

namespace A312744.P18372989349766320139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312578 n + A269723 (A075834 n).toNat

end

end A312744.P18372989349766320139

/-! ## A312744.P12579983508515135826

`A312580(n)+A269723(A075834(n))`
-/

namespace A312744.P12579983508515135826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312580 n + A269723 (A075834 n).toNat

end

end A312744.P12579983508515135826

/-! ## A312744.P6632634369074737476

`A312732(n)-A015854(A081125(n))`
-/

namespace A312744.P6632634369074737476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312732 n - A015854 (A081125 n).toNat

end

end A312744.P6632634369074737476

/-!
# A312745: Coordination sequence Gal.6.404.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312745, there is no canonical definition to state claims against.
-/

/-! ## A312745.P4486912372845363226

`A312471(n)+A163540(A002443(n))`
-/

namespace A312745.P4486912372845363226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312471 n + A163540 (A002443 n).toNat

end

end A312745.P4486912372845363226

/-! ## A312745.P2710969399408501147

`A312731(n)+A262684(A001349(n))`
-/

namespace A312745.P2710969399408501147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312731 n + A262684 (A001349 n).toNat

end

end A312745.P2710969399408501147

/-! ## A312745.P17296652980075382857

`A312475(n)+A030202(A187023(n+2))`
-/

namespace A312745.P17296652980075382857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A030202 (A187023 (n + 2)).toNat

end

end A312745.P17296652980075382857

/-!
# A312746: Coordination sequence Gal.6.407.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312746, there is no canonical definition to state claims against.
-/

/-! ## A312746.P11914527582982569009

`A310495(n)-A198066(A310458(2*(n+1)))`
-/

namespace A312746.P11914527582982569009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310495 n - A198066 (A310458 (2 * (n + 1))).toNat

end

end A312746.P11914527582982569009

/-! ## A312746.P18291377202209825705

`∏{e}[5^n, A312580(#)]+A000045(A057354(n))`
-/

namespace A312746.P18291377202209825705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A312580 (Nat.factorization (f1 n) p) + A000045 (A057354 n).toNat

end

end A312746.P18291377202209825705

/-! ## A312746.P7538598528716214339

`A288025(A288006(n))+∏{e}[5^n, A312580(#)]`
-/

namespace A312746.P7538598528716214339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288025 (A288006 n).toNat + ∏ p ∈ Nat.primeFactors (f1 n), A312580 (Nat.factorization (f1 n) p)

end

end A312746.P7538598528716214339

/-!
# A312747: Coordination sequence Gal.6.574.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312747, there is no canonical definition to state claims against.
-/

/-! ## A312747.P5049464402065263342

`A312596(n)+A309168(A000126(n+4))`
-/

namespace A312747.P5049464402065263342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312596 n + A309168 (A000126 (n + 4)).toNat

end

end A312747.P5049464402065263342

/-! ## A312747.P1608669370263593900

`A312788(n)-A055641(A047032(n))`
-/

namespace A312747.P1608669370263593900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312788 n - A055641 (A047032 n).toNat

end

end A312747.P1608669370263593900

/-! ## A312747.P2600313800197835936

`A313233(n)-A007814(A141081(n))`
-/

namespace A312747.P2600313800197835936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313233 n - A007814 (A141081 n).toNat

end

end A312747.P2600313800197835936

/-! ## A312747.P1266660985618382553

`A033156(n+1)+val(A003512(A078012(3*n+4)), 2)`
-/

namespace A312747.P1266660985618382553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033156 (n + 1) + (SequenceMachineLib.valuation (A003512 (A078012 (3 * n + 4)).toNat).toNat 2 : ℤ)

end

end A312747.P1266660985618382553

/-!
# A312748: Coordination sequence Gal.5.273.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312748, there is no canonical definition to state claims against.
-/

/-! ## A312748.P16159162160870923407

`A086967(A015128(n))+A008579(n)`
-/

namespace A312748.P16159162160870923407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086967 (A015128 n).toNat + A008579 n

end

end A312748.P16159162160870923407

/-! ## A312748.P10892851546974989963

`A078175(3*n+1)-A038498(A320797(n+2))`
-/

namespace A312748.P10892851546974989963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (3 * n + 1) - A038498 (A320797 (n + 2)).toNat

end

end A312748.P10892851546974989963

/-!
# A312749: Coordination sequence Gal.5.272.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312749, there is no canonical definition to state claims against.
-/

/-! ## A312749.P15198655678165962099

`A284749(A098641(n))+A008579(n)`
-/

namespace A312749.P15198655678165962099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (A098641 n).toNat + A008579 n

end

end A312749.P15198655678165962099

/-! ## A312749.P5584405155129617824

`A008579(n)+A001221(A001349(n))`
-/

namespace A312749.P5584405155129617824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001221 (A001349 n).toNat

end

end A312749.P5584405155129617824

/-! ## A312749.P11185627729258506097

`A317748(A312591(2*(n+2)))+A312617(n)`
-/

namespace A312749.P11185627729258506097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317748 (A312591 (2 * (n + 2))).toNat + A312617 n

end

end A312749.P11185627729258506097

/-! ## A312749.P4326814138465236498

`A312752(n)-A346778(A227072(n+1))%A000009(n)`
-/

namespace A312749.P4326814138465236498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312752 n - Int.tmod (A346778 (A227072 (n + 1)).toNat) (A000009 n)

end

end A312749.P4326814138465236498

/-!
# A312750: Coordination sequence Gal.5.188.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312750, there is no canonical definition to state claims against.
-/

/-! ## A312750.P16588213379772804401

`A312726(n)+A001878(A341711(n))`
-/

namespace A312750.P16588213379772804401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312726 n + A001878 (A341711 n).toNat

end

end A312750.P16588213379772804401

/-! ## A312750.P15759086804092266968

`A312798(n)-A051023(A028243(n+3))`
-/

namespace A312750.P15759086804092266968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312798 n - A051023 (A028243 (n + 3)).toNat

end

end A312750.P15759086804092266968

/-!
# A312751: Coordination sequence Gal.6.450.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312751, there is no canonical definition to state claims against.
-/

/-! ## A312751.P17706380545725964119

`A312661(A087051(n))+A220699(∑{e}[n+1, #])`
-/

namespace A312751.P17706380545725964119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312661 (A087051 n).toNat + A220699 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A312751.P17706380545725964119

/-! ## A312751.P11993654377061556097

`A312661(A087051(n))+A220700(∑{e}[n+1, #])`
-/

namespace A312751.P11993654377061556097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312661 (A087051 n).toNat + A220700 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A312751.P11993654377061556097

/-! ## A312751.P9779336782169155361

`A312456(n)+A001221(A202336(n))`
-/

namespace A312751.P9779336782169155361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 n + A001221 (A202336 n).toNat

end

end A312751.P9779336782169155361

/-! ## A312751.P4280252281878933641

`xor(A262693(A231934(n)), A312689(n))`
-/

namespace A312751.P4280252281878933641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A262693 (A231934 n).toNat) (A312689 n)

end

end A312751.P4280252281878933641

/-!
# A312752: Coordination sequence Gal.6.582.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312752, there is no canonical definition to state claims against.
-/

/-! ## A312752.P8104990479100304615

`(A312822(n)+A008579(n))/2`
-/

namespace A312752.P8104990479100304615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312822 n + A008579 n : ℚ) / 2

end

end A312752.P8104990479100304615

/-! ## A312752.P10788915932343721568

`A014682(A312822(n)+A008579(n))`
-/

namespace A312752.P10788915932343721568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312822 n + A008579 n).toNat

end

end A312752.P10788915932343721568

/-! ## A312752.P14938304968665942607

`A008579(n)+A004525(A312822(n)-A008579(n))`
-/

namespace A312752.P14938304968665942607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A312822 n - A008579 n).toNat

end

end A312752.P14938304968665942607

/-! ## A312752.P16190222833605604916

`A025480(A312822(n)-A008579(n))+A008579(n)`
-/

namespace A312752.P16190222833605604916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312822 n - A008579 n).toNat + A008579 n

end

end A312752.P16190222833605604916

/-! ## A312752.P9528529752717529761

`A026741(A312822(n)-A008579(n))+A008579(n)`
-/

namespace A312752.P9528529752717529761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312822 n - A008579 n).toNat + A008579 n

end

end A312752.P9528529752717529761

/-! ## A312752.P4034383524567441868

`A078898(A312822(n)-A008579(n))+A008579(n)`
-/

namespace A312752.P4034383524567441868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A312822 n - A008579 n).toNat + A008579 n

end

end A312752.P4034383524567441868

/-! ## A312752.P6316906680485432074

`A312822(n)-A004526(A312822(n)-A008579(n))`
-/

namespace A312752.P6316906680485432074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312822 n - A004526 (A312822 n - A008579 n).toNat

end

end A312752.P6316906680485432074

/-! ## A312752.P7730670230496501516

`A004525(A312822(n)+A008579(n))`
-/

namespace A312752.P7730670230496501516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312822 n + A008579 n).toNat

end

end A312752.P7730670230496501516

/-! ## A312752.P12050955804442245144

`A004526(A312822(n)+A008579(n))`
-/

namespace A312752.P12050955804442245144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312822 n + A008579 n).toNat

end

end A312752.P12050955804442245144

/-! ## A312752.P3728383045334177578

`A025480(A312822(n)+A008579(n))`
-/

namespace A312752.P3728383045334177578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312822 n + A008579 n).toNat

end

end A312752.P3728383045334177578

/-! ## A312752.P8702781389521037719

`A026741(A312822(n)+A008579(n))`
-/

namespace A312752.P8702781389521037719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312822 n + A008579 n).toNat

end

end A312752.P8702781389521037719

/-! ## A312752.P14247463173294217430

`A078898(A312822(n)+A008579(n))`
-/

namespace A312752.P14247463173294217430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A312822 n + A008579 n).toNat

end

end A312752.P14247463173294217430

/-! ## A312752.P2238794396250944277

`A123108(A312822(n)+A008579(n))`
-/

namespace A312752.P2238794396250944277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A312822 n + A008579 n).toNat

end

end A312752.P2238794396250944277

/-! ## A312752.P9535741925123739221

`abs(A001057(A312822(n)+A008579(n)))`
-/

namespace A312752.P9535741925123739221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A312822 n + A008579 n).toNat|

end

end A312752.P9535741925123739221

/-! ## A312752.P4247908144297902185

`A001057(A008579(n)+A312822(n)-1)`
-/

namespace A312752.P4247908144297902185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008579 n + (A312822 n - 1)).toNat

end

end A312752.P4247908144297902185

/-! ## A312752.P17983798276819615002

`A001057(A008579(n)-(1-A312822(n)))`
-/

namespace A312752.P17983798276819615002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008579 n - (1 - A312822 n)).toNat

end

end A312752.P17983798276819615002

/-!
# A312759: Coordination sequence Gal.5.248.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312759, there is no canonical definition to state claims against.
-/

/-! ## A312759.P15123589052646704302

`A312289(n)+A275962(A054878(n+1))`
-/

namespace A312759.P15123589052646704302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n + A275962 (A054878 (n + 1)).toNat

end

end A312759.P15123589052646704302

/-!
# A312761: Coordination sequence Gal.5.252.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312761, there is no canonical definition to state claims against.
-/

/-! ## A312761.P13052090920095702261

`A312328(∑{e}[A004981(n), #])`
-/

namespace A312761.P13052090920095702261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312328 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A312761.P13052090920095702261

/-!
# A312763: Coordination sequence Gal.6.535.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312763, there is no canonical definition to state claims against.
-/

/-! ## A312763.P8014648758121719392

`A026169(A350338(n+1)+A082217(n+1))`
-/

namespace A312763.P8014648758121719392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026169 (A350338 (n + 1) + A082217 (n + 1)).toNat

end

end A312763.P8014648758121719392

/-!
# A312764: Coordination sequence Gal.6.404.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312764, there is no canonical definition to state claims against.
-/

/-! ## A312764.P13374800842488715199

`and(A061579(A239463(n+1)), A315309(n))`
-/

namespace A312764.P13374800842488715199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061579 (A239463 (n + 1)).toNat) (A315309 n)

end

end A312764.P13374800842488715199

/-!
# A312766: Coordination sequence Gal.5.255.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312766, there is no canonical definition to state claims against.
-/

/-! ## A312766.P9828268124468883206

`A312462(n)+A014082(A149946(n))`
-/

namespace A312766.P9828268124468883206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312462 n + A014082 (A149946 n).toNat

end

end A312766.P9828268124468883206

/-! ## A312766.P9969810275805627359

`A312464(n)+A014082(A149946(n))`
-/

namespace A312766.P9969810275805627359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n + A014082 (A149946 n).toNat

end

end A312766.P9969810275805627359

/-! ## A312766.P2964684319645122746

`A312465(n)+A014082(A149946(n))`
-/

namespace A312766.P2964684319645122746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312465 n + A014082 (A149946 n).toNat

end

end A312766.P2964684319645122746

/-! ## A312766.P16154722997634420231

`A359288(A001835(n))+A312292(n)`
-/

namespace A312766.P16154722997634420231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (A001835 n).toNat + A312292 n

end

end A312766.P16154722997634420231

/-! ## A312766.P3132252093083530001

`A312790(n)-A028953(A047691(n))`
-/

namespace A312766.P3132252093083530001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312790 n - A028953 (A047691 n).toNat

end

end A312766.P3132252093083530001

/-!
# A312767: Coordination sequence Gal.5.195.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312767, there is no canonical definition to state claims against.
-/

/-! ## A312767.P1901409089815771621

`A312768(n)-A340998(A052905(n))`
-/

namespace A312767.P1901409089815771621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312768 n - A340998 ((A052905 n).toNat + 140)

end

end A312767.P1901409089815771621

/-! ## A312767.P5471488353504615922

`A312768(A062399(n))`
-/

namespace A312767.P5471488353504615922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312768 (A062399 n).toNat

end

end A312767.P5471488353504615922

/-! ## A312767.P16015849649747926042

`A092524(A312768(n))`
-/

namespace A312767.P16015849649747926042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A312768 n).toNat

end

end A312767.P16015849649747926042

/-! ## A312767.P9071487929943624233

`A312768(A120126(n))`
-/

namespace A312767.P9071487929943624233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312768 (A120126 n).toNat

end

end A312767.P9071487929943624233

/-! ## A312767.P3166156094385114602

`A312768(A351870(n))`
-/

namespace A312767.P3166156094385114602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312768 (A351870 n).toNat

end

end A312767.P3166156094385114602

/-!
# A312768: Coordination sequence Gal.5.194.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312768, there is no canonical definition to state claims against.
-/

/-! ## A312768.P11378625645208684618

`A340998(A052905(n))+A312767(n)`
-/

namespace A312768.P11378625645208684618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A052905 n).toNat + 140) + A312767 n

end

end A312768.P11378625645208684618

/-!
# A312769: Coordination sequence Gal.5.276.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312769, there is no canonical definition to state claims against.
-/

/-! ## A312769.P9817618362143951030

`lt[A005811(A214798(n+1)), A002652(n)]`
-/

namespace A312769.P9817618362143951030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A214798 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A312769.P9817618362143951030

/-!
# A312772: Coordination sequence Gal.5.255.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312772, there is no canonical definition to state claims against.
-/

/-! ## A312772.P2393260750847566869

`A315303(n)-A028930(A188464(n))`
-/

namespace A312772.P2393260750847566869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315303 n - A028930 (A188464 n).toNat

end

end A312772.P2393260750847566869

/-!
# A312773: Coordination sequence Gal.5.276.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312773, there is no canonical definition to state claims against.
-/

/-! ## A312773.P325569624098688817

`record[A309196(A194049(3*n+1)+A000463(n+1))]`
-/

namespace A312773.P325569624098688817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309196 (A194049 (3 * n + 1) + A000463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312773.P325569624098688817

/-! ## A312773.P11808244217523647560

`record[and(A016777(n), A217385(n+1))]`
-/

namespace A312773.P11808244217523647560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016777 n) (A217385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312773.P11808244217523647560

/-! ## A312773.P7579096064136908412

`A312362(n)+A037844(A055891(n))`
-/

namespace A312773.P7579096064136908412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312362 n + A037844 (A055891 n).toNat

end

end A312773.P7579096064136908412

/-!
# A312775: Coordination sequence Gal.6.357.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312775, there is no canonical definition to state claims against.
-/

/-! ## A312775.P12286421597686007771

`A312804(n)-A000120(A061138(n))`
-/

namespace A312775.P12286421597686007771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312804 n - A000120 (A061138 n).toNat

end

end A312775.P12286421597686007771

/-!
# A312776: Coordination sequence Gal.6.569.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312776, there is no canonical definition to state claims against.
-/

/-! ## A312776.P17963518695701623137

`2*A312720(n)-A008579(n)`
-/

namespace A312776.P17963518695701623137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312720 n - A008579 n

end

end A312776.P17963518695701623137

/-! ## A312776.P11349095954531019544

`2*A315055(n)-A315232(n)`
-/

namespace A312776.P11349095954531019544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315055 n - A315232 n

end

end A312776.P11349095954531019544

/-! ## A312776.P17088532363836356737

`A005843(A312720(n))-A008579(n)`
-/

namespace A312776.P17088532363836356737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312720 n).toNat - A008579 n

end

end A312776.P17088532363836356737

/-! ## A312776.P10875374286757343753

`A005843(A312720(n))+A008579(n)*A057428(n+1)`
-/

namespace A312776.P10875374286757343753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312720 n).toNat + A008579 n * A057428 (n + 1)

end

end A312776.P10875374286757343753

/-! ## A312776.P10928613242620440751

`A005843(A315055(n))-A315232(n)`
-/

namespace A312776.P10928613242620440751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315055 n).toNat - A315232 n

end

end A312776.P10928613242620440751

/-!
# A312779: Coordination sequence Gal.5.185.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312779, there is no canonical definition to state claims against.
-/

/-! ## A312779.P12742549028885993622

`record[xor(A165586(n), A261697(n+1))]`
-/

namespace A312779.P12742549028885993622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165586 n) (A261697 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312779.P12742549028885993622

/-! ## A312779.P3388232215552048072

`record[xor(A165586(n), A261698(n+1))]`
-/

namespace A312779.P3388232215552048072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165586 n) (A261698 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312779.P3388232215552048072

/-!
# A312780: Coordination sequence Gal.5.184.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312780, there is no canonical definition to state claims against.
-/

/-! ## A312780.P12946056287830595648

`∑[A000005(∑[A146142(n+5)])]`
-/

namespace A312780.P12946056287830595648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146142 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312780.P12946056287830595648

/-! ## A312780.P10967635217168901072

`∑[A000005(A229542(n+1)-10)]`
-/

namespace A312780.P10967635217168901072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A229542 (n + 1) - 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312780.P10967635217168901072

/-! ## A312780.P10713555564848167568

`record[and(A064542(n+1), A122890(n))]`
-/

namespace A312780.P10713555564848167568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064542 (n + 1)) (A122890 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312780.P10713555564848167568

/-! ## A312780.P11825005750460309013

`record[and(A122890(n), A194979(n+1))]`
-/

namespace A312780.P11825005750460309013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122890 n) (A194979 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312780.P11825005750460309013

/-!
# A312782: Coordination sequence Gal.6.539.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312782, there is no canonical definition to state claims against.
-/

/-! ## A312782.P8511100458602010508

`A312783(n)-A122840(A252079(n+1))`
-/

namespace A312782.P8511100458602010508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312783 n - A122840 (A252079 (n + 1)).toNat

end

end A312782.P8511100458602010508

/-! ## A312782.P9806858809735272051

`A312783(n)-A000122(A003370(n+1))`
-/

namespace A312782.P9806858809735272051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312783 n - A000122 (A003370 (n + 1)).toNat

end

end A312782.P9806858809735272051

/-! ## A312782.P4042846246009933000

`A312783(n)-A174903(A077446(n+1))`
-/

namespace A312782.P4042846246009933000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312783 n - A174903 (A077446 (n + 1)).toNat

end

end A312782.P4042846246009933000

/-! ## A312782.P3599066976276056036

`A312783(A032559(n+1)-1)`
-/

namespace A312782.P3599066976276056036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312783 (A032559 (n + 1) - 1).toNat

end

end A312782.P3599066976276056036

/-! ## A312782.P10722801764958529202

`A312783(n)%A031215(A063727(n))`
-/

namespace A312782.P10722801764958529202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312783 n) (A031215 (A063727 n).toNat)

end

end A312782.P10722801764958529202

/-!
# A312783: Coordination sequence Gal.6.543.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312783, there is no canonical definition to state claims against.
-/

/-! ## A312783.P7297426786710650787

`A312782(n)+A122840(A252079(n+1))`
-/

namespace A312783.P7297426786710650787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312782 n + A122840 (A252079 (n + 1)).toNat

end

end A312783.P7297426786710650787

/-! ## A312783.P6478489993955924051

`A312782(n)+A174903(A077446(n+1))`
-/

namespace A312783.P6478489993955924051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312782 n + A174903 (A077446 (n + 1)).toNat

end

end A312783.P6478489993955924051

/-!
# A312784: Coordination sequence Gal.5.242.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312784, there is no canonical definition to state claims against.
-/

/-! ## A312784.P4016526913230254883

`A312783(n)+A088722(A004117(n))`
-/

namespace A312784.P4016526913230254883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312783 n + A088722 (A004117 n).toNat

end

end A312784.P4016526913230254883

/-! ## A312784.P4740378032970036245

`A312333(n)+A122461(A032559(n+1))`
-/

namespace A312784.P4740378032970036245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312333 n + A122461 (A032559 (n + 1)).toNat

end

end A312784.P4740378032970036245

/-! ## A312784.P1467380568396878728

`A312782(n)+A000122(A181822(n+5))`
-/

namespace A312784.P1467380568396878728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312782 n + A000122 (A181822 (n + 5)).toNat

end

end A312784.P1467380568396878728

/-! ## A312784.P5164100377698362623

`A312783(n)+A000122(A181822(n+5))`
-/

namespace A312784.P5164100377698362623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312783 n + A000122 (A181822 (n + 5)).toNat

end

end A312784.P5164100377698362623

/-! ## A312784.P2361790579863117566

`A341775(A312681(2*(n+1)))+A312728(n)`
-/

namespace A312784.P2361790579863117566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341775 (A312681 (2 * (n + 1))).toNat + A312728 n

end

end A312784.P2361790579863117566

/-!
# A312785: Coordination sequence Gal.5.267.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312785, there is no canonical definition to state claims against.
-/

/-! ## A312785.P279877910043816212

`A310821(n)+A132468(A279567(n))`
-/

namespace A312785.P279877910043816212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310821 n + A132468 (A279567 n).toNat

end

end A312785.P279877910043816212

/-!
# A312786: Coordination sequence Gal.6.523.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312786, there is no canonical definition to state claims against.
-/

/-! ## A312786.P11426822460243142212

`A312787(n)-A221150(A071154(2*n+5))`
-/

namespace A312786.P11426822460243142212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312787 n - A221150 (A071154 (2 * n + 5)).toNat

end

end A312786.P11426822460243142212

/-! ## A312786.P13286018562284249089

`A312717(n)+A001222(A000266(n))-A024155(comp[∑[n]])`
-/

namespace A312786.P13286018562284249089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312717 n + A001222 (A000266 n).toNat - A024155 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A312786.P13286018562284249089

/-!
# A312787: Coordination sequence Gal.6.522.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312787, there is no canonical definition to state claims against.
-/

/-! ## A312787.P6268414261920985301

`A312717(n)+A001222(A000266(n))`
-/

namespace A312787.P6268414261920985301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312717 n + A001222 (A000266 n).toNat

end

end A312787.P6268414261920985301

/-! ## A312787.P13509379270161585241

`or(A024155(A088218(n)), A312786(n))`
-/

namespace A312787.P13509379270161585241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024155 (A088218 n).toNat) (A312786 n)

end

end A312787.P13509379270161585241

/-! ## A312787.P17083441142743313049

`A312786(n)+A129251(A018896(2*n+3))`
-/

namespace A312787.P17083441142743313049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312786 n + A129251 (A018896 (2 * n + 3)).toNat

end

end A312787.P17083441142743313049

/-!
# A312788: Coordination sequence Gal.6.542.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312788, there is no canonical definition to state claims against.
-/

/-! ## A312788.P17124201082175075119

`∑[A265124(2*n+1)%8]-Δ[A057354(n)]`
-/

namespace A312788.P17124201082175075119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265124 (2 * n + 1)) 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A312788.P17124201082175075119

/-!
# A312790: Coordination sequence Gal.5.266.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312790, the canonical program `A312790.P14315813496595789785` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312790 has offset 0).

The definition of A312790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312790.P14315813496595789785

`2*A312736(n)-A008579(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A312790

/-- `2*A312736(n)-A008579(n)` -/
def P14315813496595789785.Spec : Prop :=
  ∀ n, P14315813496595789785.a n = A312790 n

theorem P14315813496595789785.correct : P14315813496595789785.Spec := by
  intro n
  simp only [A312790]

end A312790

/-! ## A312790.P18440561735929639934

`A312736(n)+A077814(A004396(n))`
-/

namespace A312790.P18440561735929639934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312736 n + A077814 (A004396 n).toNat

end

end A312790.P18440561735929639934

namespace A312790

/-- `A312736(n)+A077814(A004396(n))` -/
def P18440561735929639934.Spec : Prop :=
  ∀ n, P18440561735929639934.a n = A312790 n

theorem P18440561735929639934.correct : P18440561735929639934.Spec := by
  intro n
  simp only [A312790, Nat.add_sub_cancel, A312790.P18440561735929639934.a, A312790.P14315813496595789785.a, A004396, A004396.P17032557045289780609.a, A008579, A008579.P9321507706539872754.a, A077814, A077814.P1153780925982348255.a, A312736, A312736.P842124473673064007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312790

/-! ## A312790.P17788873514724943973

`A008579(n)+2*A077814(A004396(n))`
-/

namespace A312790.P17788873514724943973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + 2 * A077814 (A004396 n).toNat

end

end A312790.P17788873514724943973

namespace A312790

/-- `A008579(n)+2*A077814(A004396(n))` -/
def P17788873514724943973.Spec : Prop :=
  ∀ n, P17788873514724943973.a n = A312790 n

theorem P17788873514724943973.correct : P17788873514724943973.Spec := by
  intro n
  simp only [A312790, Nat.add_sub_cancel, A312790.P17788873514724943973.a, A312790.P14315813496595789785.a, A004396, A004396.P17032557045289780609.a, A008579, A008579.P9321507706539872754.a, A077814, A077814.P1153780925982348255.a, A312736, A312736.P842124473673064007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312790

/-! ## A312790.P7376168034832466048

`2*A312736(n)-A250122(A005843(n))`
-/

namespace A312790.P7376168034832466048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312736 n - A250122 (A005843 n).toNat

end

end A312790.P7376168034832466048

namespace A312790

/-- `2*A312736(n)-A250122(A005843(n))` -/
def P7376168034832466048.Spec : Prop :=
  ∀ n, P7376168034832466048.a n = A312790 n

end A312790

/-! ## A312790.P5793152288845407841

`A008458(n)+A008579(n)-A315656(n)`
-/

namespace A312790.P5793152288845407841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A315656 n)

end

end A312790.P5793152288845407841

namespace A312790

/-- `A008458(n)+A008579(n)-A315656(n)` -/
def P5793152288845407841.Spec : Prop :=
  ∀ n, P5793152288845407841.a n = A312790 n

theorem P5793152288845407841.correct : P5793152288845407841.Spec := by
  intro n
  simp only [A312790, Nat.add_sub_cancel, A312790.P5793152288845407841.a, A312790.P14315813496595789785.a, A008458, A008458.P10936398443463225625.a, A008579, A008579.P9321507706539872754.a, A312736, A312736.P842124473673064007.a, A315656, A315656.P845046901227409408.a, A004396, A004396.P17032557045289780609.a, A077814, A077814.P1153780925982348255.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312790

/-! ## A312790.P5735861218433805823

`A008579(n)+A008588(n)%A315656(n)`
-/

namespace A312790.P5735861218433805823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + Int.tmod (A008588 n) (A315656 n)

end

end A312790.P5735861218433805823

namespace A312790

/-- `A008579(n)+A008588(n)%A315656(n)` -/
def P5735861218433805823.Spec : Prop :=
  ∀ n, P5735861218433805823.a n = A312790 n

end A312790

/-! ## A312790.P12091360750116529444

`A008486(2*n)+A008579(n)-A315656(n)`
-/

namespace A312790.P12091360750116529444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A008579 n - A315656 n)

end

end A312790.P12091360750116529444

namespace A312790

/-- `A008486(2*n)+A008579(n)-A315656(n)` -/
def P12091360750116529444.Spec : Prop :=
  ∀ n, P12091360750116529444.a n = A312790 n

end A312790

/-! ## A312790.P12610109630554931344

`A008458(n)+A312736(n)-A315711(n)`
-/

namespace A312790.P12610109630554931344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A312736 n - A315711 n)

end

end A312790.P12610109630554931344

namespace A312790

/-- `A008458(n)+A312736(n)-A315711(n)` -/
def P12610109630554931344.Spec : Prop :=
  ∀ n, P12610109630554931344.a n = A312790 n

end A312790

/-! ## A312790.P10200825830860036676

`A005843(A312736(n))-A008579(n)`
-/

namespace A312790.P10200825830860036676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312736 n).toNat - A008579 n

end

end A312790.P10200825830860036676

namespace A312790

/-- `A005843(A312736(n))-A008579(n)` -/
def P10200825830860036676.Spec : Prop :=
  ∀ n, P10200825830860036676.a n = A312790 n

end A312790

/-! ## A312790.P8814341058564353909

`A005843(A312736(n))-A250122(A005843(n))`
-/

namespace A312790.P8814341058564353909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312736 n).toNat - A250122 (A005843 n).toNat

end

end A312790.P8814341058564353909

namespace A312790

/-- `A005843(A312736(n))-A250122(A005843(n))` -/
def P8814341058564353909.Spec : Prop :=
  ∀ n, P8814341058564353909.a n = A312790 n

end A312790

/-!
# A312791: Coordination sequence Gal.6.360.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312791, there is no canonical definition to state claims against.
-/

/-! ## A312791.P333942994898344302

`A312792(n)+A312819(n)-A312820(n)`
-/

namespace A312791.P333942994898344302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312792 n + (A312819 n - A312820 n)

end

end A312791.P333942994898344302

/-! ## A312791.P226146882896153283

`xor(A185284(A063008(n)), A312792(n))`
-/

namespace A312791.P226146882896153283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A063008 n).toNat) (A312792 n)

end

end A312791.P226146882896153283

/-! ## A312791.P10006145807225796046

`A312792(n*A287383(n))`
-/

namespace A312791.P10006145807225796046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312792 ((n : ℤ) * A287383 n).toNat

end

end A312791.P10006145807225796046

/-! ## A312791.P16100881041235357921

`A312792(n^A287383(n))`
-/

namespace A312791.P16100881041235357921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312792 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287383 n : ℤ))).toNat

end

end A312791.P16100881041235357921

/-! ## A312791.P2812847519225557792

`A312792(n)%A103661(n+6)`
-/

namespace A312791.P2812847519225557792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312792 n) (A103661 (n + 6))

end

end A312791.P2812847519225557792

/-!
# A312792: Coordination sequence Gal.6.361.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312792, there is no canonical definition to state claims against.
-/

/-! ## A312792.P1987412363617952142

`A312791(n)+A312820(n)-A312819(n)`
-/

namespace A312792.P1987412363617952142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312791 n + (A312820 n - A312819 n)

end

end A312792.P1987412363617952142

/-! ## A312792.P18243367339358760719

`A174973(A309093(2*n+1)+A056239(n+1))`
-/

namespace A312792.P18243367339358760719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (A309093 (2 * n + 1) + A056239 (n + 1)).toNat

end

end A312792.P18243367339358760719

/-!
# A312793: Coordination sequence Gal.6.570.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312793, there is no canonical definition to state claims against.
-/

/-! ## A312793.P3373262504334660735

`eq[A053737(n), A195107(A318360(n+1))]`
-/

namespace A312793.P3373262504334660735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195107 (A318360 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312793.P3373262504334660735

/-!
# A312794: Coordination sequence Gal.4.92.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312794, there is no canonical definition to state claims against.
-/

/-! ## A312794.P15935297487401108253

`2*A070824(n+1)+A312004(n)+A238532(A303160(n))`
-/

namespace A312794.P15935297487401108253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070824 (n + 1) + (A312004 n + A238532 (A303160 n).toNat)

end

end A312794.P15935297487401108253

/-!
# A312798: Coordination sequence Gal.5.240.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312798, there is no canonical definition to state claims against.
-/

/-! ## A312798.P17610304174636449020

`A316863(A153866(n+1))+A312750(n)`
-/

namespace A312798.P17610304174636449020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A153866 (n + 1)).toNat + A312750 n

end

end A312798.P17610304174636449020

/-!
# A312799: Coordination sequence Gal.5.269.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312799, there is no canonical definition to state claims against.
-/

/-! ## A312799.P14005632499035847015

`A325273(A001470(n))+A312538(n)`
-/

namespace A312799.P14005632499035847015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325273 (A001470 n).toNat + A312538 n

end

end A312799.P14005632499035847015

/-! ## A312799.P8955833612820174519

`A312655(n)+2*A323514(A104934(n))`
-/

namespace A312799.P8955833612820174519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312655 n + 2 * A323514 (A104934 n).toNat

end

end A312799.P8955833612820174519

/-! ## A312799.P14257321112845121559

`record[and(A215292(n+1), A341585(n))]`
-/

namespace A312799.P14257321112845121559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A215292 (n + 1)) (A341585 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312799.P14257321112845121559

/-! ## A312799.P1612876718804364797

`record[and(A215292(n+1), A343866(n))]`
-/

namespace A312799.P1612876718804364797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A215292 (n + 1)) (A343866 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312799.P1612876718804364797

