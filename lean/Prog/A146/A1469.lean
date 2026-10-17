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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C026

/-!
# A146900: Symmetrical polynomial: t0(n,m)=If[Mod[2*Binomial[n, m], 2] - Mod[Binomial[n, m], 2] == 0, Binomial[n, m]/2, Binomial[n, m] + 1]; p(x,n)=If[n == 0, 1, (x + 1)^n + Sum[t0(n,m)*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]/2].

The programs for A146900, there is no canonical definition to state claims against.
-/

/-! ## A146900.P16763600349700977526

`A277886(A152236(n))`
-/

namespace A146900.P16763600349700977526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277886 (A152236 n).toNat

end

end A146900.P16763600349700977526

/-! ## A146900.P15205918927684253010

`(A146898(n)+A007318(n))/2`
-/

namespace A146900.P15205918927684253010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146898 n + A007318 n : ℚ) / 2

end

end A146900.P15205918927684253010

/-! ## A146900.P8730366866729915109

`A004525(A146898(n)+A007318(n))`
-/

namespace A146900.P8730366866729915109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A146898 n + A007318 n).toNat

end

end A146900.P8730366866729915109

/-! ## A146900.P16651955012093978936

`A004526(A146898(n)+A007318(n))`
-/

namespace A146900.P16651955012093978936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A146898 n + A007318 n).toNat

end

end A146900.P16651955012093978936

/-! ## A146900.P14060990293878439881

`A006370(A146898(n)+A007318(n))`
-/

namespace A146900.P14060990293878439881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A146898 n + A007318 n).toNat

end

end A146900.P14060990293878439881

/-! ## A146900.P4024456662391770368

`A014682(A146898(n)+A007318(n))`
-/

namespace A146900.P4024456662391770368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A146898 n + A007318 n).toNat

end

end A146900.P4024456662391770368

/-! ## A146900.P5626299869760874942

`A026741(A146898(n)+A007318(n))`
-/

namespace A146900.P5626299869760874942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A146898 n + A007318 n).toNat

end

end A146900.P5626299869760874942

/-! ## A146900.P15222197339555915079

`A065033(A146898(n)+A007318(n))`
-/

namespace A146900.P15222197339555915079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A146898 n + A007318 n).toNat

end

end A146900.P15222197339555915079

/-! ## A146900.P14975726234245656527

`A152237(n)-A029578(A007318(n))`
-/

namespace A146900.P14975726234245656527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152237 n - A029578 (A007318 n).toNat

end

end A146900.P14975726234245656527

/-! ## A146900.P7082965829816523439

`A001057(A007318(n)+A146898(n)-1)`
-/

namespace A146900.P7082965829816523439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A007318 n + (A146898 n - 1)).toNat

end

end A146900.P7082965829816523439

/-!
# A146901: Number of n X n binary arrays with all ones connected only in a 0010-1110-0111-0100 pattern in any orientation.

The programs for A146901, there is no canonical definition to state claims against.
-/

/-! ## A146901.P7498093964116766177

`A146903(2*(n+2))`
-/

namespace A146901.P7498093964116766177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146903 (2 * (n + 2))

end

end A146901.P7498093964116766177

/-! ## A146901.P8588236098214692410

`or(1, A146903(A144396(n+1)))`
-/

namespace A146901.P8588236098214692410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146903 (A144396 (n + 1)).toNat)

end

end A146901.P8588236098214692410

/-! ## A146901.P15939713738565290061

`A146903(A005408(n+1))%A146885(n)`
-/

namespace A146901.P15939713738565290061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146903 (A005408 (n + 1)).toNat) (A146885 n)

end

end A146901.P15939713738565290061

/-! ## A146901.P7606596604895684648

`A146903(A144396(n+1))%A141458(n)`
-/

namespace A146901.P7606596604895684648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146903 (A144396 (n + 1)).toNat) (A141458 n)

end

end A146901.P7606596604895684648

/-! ## A146901.P2403394148224778296

`A146903(A005408(n+1))/A007318(∑[n])`
-/

namespace A146901.P2403394148224778296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146903 (A005408 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A146901.P2403394148224778296

/-!
# A146902: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0010-1110-0111-0100 pattern in any orientation.

The programs for A146902, there is no canonical definition to state claims against.
-/

/-! ## A146902.P17709686611090905326

`∏{e}[A324088(n+1), A050711(#)]`
-/

namespace A146902.P17709686611090905326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A050711 (Nat.factorization (f1 n).natAbs p)

end

end A146902.P17709686611090905326

/-! ## A146902.P9565906309618508962

`A196416(3*floor(C(n+1, floor(n/2))/(n+1)))`
-/

namespace A146902.P9565906309618508962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 (3 * ⌊(Nat.choose (n + 1) ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (n + 1 : ℚ)⌋).toNat

end

end A146902.P9565906309618508962

/-! ## A146902.P3634867245100575849

`A196416(A048329(n))`
-/

namespace A146902.P3634867245100575849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 (A048329 n).toNat

end

end A146902.P3634867245100575849

/-! ## A146902.P17111960507030366019

`A167198(A126348(n))`
-/

namespace A146902.P17111960507030366019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167198 (A126348 n).toNat

end

end A146902.P17111960507030366019

/-! ## A146902.P8822302623685119320

`A309676(A037957(n))`
-/

namespace A146902.P8822302623685119320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309676 (A037957 n).toNat

end

end A146902.P8822302623685119320

/-!
# A146903: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0010-1110-0111-0100 pattern in any orientation.

The programs for A146903, there is no canonical definition to state claims against.
-/

/-! ## A146903.P9395525149456038396

`A171572(A147096(n+1))`
-/

namespace A146903.P9395525149456038396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171572 (A147096 (n + 1)).toNat

end

end A146903.P9395525149456038396

/-! ## A146903.P10292228434481899998

`A171572(A147104(n+1))`
-/

namespace A146903.P10292228434481899998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171572 (A147104 (n + 1)).toNat

end

end A146903.P10292228434481899998

/-! ## A146903.P13710447430461547185

`A171572(A147144(n+1))`
-/

namespace A146903.P13710447430461547185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171572 (A147144 (n + 1)).toNat

end

end A146903.P13710447430461547185

/-! ## A146903.P14798904380008169703

`A181819(A128232(floor(n/2))²)`
-/

namespace A146903.P14798904380008169703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A128232 ⌊(n : ℚ) / 2⌋.toNat ^ 2).toNat

end

end A146903.P14798904380008169703

/-! ## A146903.P2782562550434117339

`A146695(n+3)-A261079(A146668(n+1))`
-/

namespace A146903.P2782562550434117339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146695 (n + 3) - A261079 (A146668 (n + 1)).toNat

end

end A146903.P2782562550434117339

/-!
# A146904: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0010-1110-0111-0100 pattern in any orientation.

The programs for A146904, there is no canonical definition to state claims against.
-/

/-! ## A146904.P15135211658493277869

`A146906(2*(n+2))`
-/

namespace A146904.P15135211658493277869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146906 (2 * (n + 2))

end

end A146904.P15135211658493277869

/-! ## A146904.P3578852409189663024

`A146906(A005408(n+1))%A146885(n)`
-/

namespace A146904.P3578852409189663024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146906 (A005408 (n + 1)).toNat) (A146885 n)

end

end A146904.P3578852409189663024

/-! ## A146904.P14811117249642059471

`A146906(A247427(n+2))%A079007(n)`
-/

namespace A146904.P14811117249642059471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146906 (A247427 (n + 2)).toNat) (A079007 n)

end

end A146904.P14811117249642059471

/-! ## A146904.P1761071459022386406

`A146906(A005408(n+1))/A007318(∑[n])`
-/

namespace A146904.P1761071459022386406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146906 (A005408 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A146904.P1761071459022386406

/-! ## A146904.P8657969664212982975

`A146906(A005408(n+1))/A146906(n+1)`
-/

namespace A146904.P8657969664212982975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146906 (A005408 (n + 1)).toNat : ℚ) / (A146906 (n + 1) : ℚ)

end

end A146904.P8657969664212982975

/-!
# A146908: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0010-1110-0111-0100 pattern in any orientation.

The programs for A146908, there is no canonical definition to state claims against.
-/

/-! ## A146908.P4150494790042865487

`or(1, A237721(A000110(n)))`
-/

namespace A146908.P4150494790042865487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237721 (A000110 n).toNat)

end

end A146908.P4150494790042865487

/-! ## A146908.P12945268410426123861

`A053615(Δ[A242818(n)]+1)`
-/

namespace A146908.P12945268410426123861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (f1 (n + 1) - f1 n + 1).toNat

end

end A146908.P12945268410426123861

/-! ## A146908.P10370587783175715017

`A160812(A201647(n+1)+1)+1`
-/

namespace A146908.P10370587783175715017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160812 (A201647 (n + 1) + 1).toNat + 1

end

end A146908.P10370587783175715017

/-! ## A146908.P13780364934509721833

`A271237(A355229(n)+A000110(n))`
-/

namespace A146908.P13780364934509721833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271237 (A355229 n + A000110 n).toNat

end

end A146908.P13780364934509721833

/-! ## A146908.P14301650432872442350

`and(A006590(A047970(n)), A217615(n))`
-/

namespace A146908.P14301650432872442350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006590 (A047970 n).toNat) (A217615 n)

end

end A146908.P14301650432872442350

/-!
# A146909: Number of n X n binary arrays with all ones connected only in a 0100-1110-0111-0010 pattern in any orientation.

The programs for A146909, there is no canonical definition to state claims against.
-/

/-! ## A146909.P7594444871725193586

`A146911(2*(n+2))`
-/

namespace A146909.P7594444871725193586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146911 (2 * (n + 2))

end

end A146909.P7594444871725193586

/-! ## A146909.P1157198129098841691

`A146911(A005408(n+1))%A146885(n)`
-/

namespace A146909.P1157198129098841691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146911 (A005408 (n + 1)).toNat) (A146885 n)

end

end A146909.P1157198129098841691

/-! ## A146909.P14112451055212912311

`A146911(A005408(n+1))/A007318(∑[n])`
-/

namespace A146909.P14112451055212912311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146911 (A005408 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A146909.P14112451055212912311

/-! ## A146909.P3801470436996676033

`A146911(A005408(n+1))/A146906(n+1)`
-/

namespace A146909.P3801470436996676033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146911 (A005408 (n + 1)).toNat : ℚ) / (A146906 (n + 1) : ℚ)

end

end A146909.P3801470436996676033

/-! ## A146909.P10669710008686416419

`or(1, A146911(A030569(n+1)))`
-/

namespace A146909.P10669710008686416419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146911 (A030569 (n + 1)).toNat)

end

end A146909.P10669710008686416419

/-!
# A146910: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0100-1110-0111-0010 pattern in any orientation.

The programs for A146910, there is no canonical definition to state claims against.
-/

/-! ## A146910.P15093979932476151498

`or(A146902(n+1), A146906(A146931(n+1)))`
-/

namespace A146910.P15093979932476151498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146902 (n + 1)) (A146906 (A146931 (n + 1)).toNat)

end

end A146910.P15093979932476151498

/-! ## A146910.P17061455037154407776

`or(A146902(n+1), A146906(A146905(n+4)))`
-/

namespace A146910.P17061455037154407776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146902 (n + 1)) (A146906 (A146905 (n + 4)).toNat)

end

end A146910.P17061455037154407776

/-!
# A146911: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0100-1110-0111-0010 pattern in any orientation.

The programs for A146911, there is no canonical definition to state claims against.
-/

/-! ## A146911.P10805314170896046404

`A078705(A146471(n+1))`
-/

namespace A146911.P10805314170896046404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (A146471 (n + 1)).toNat

end

end A146911.P10805314170896046404

/-! ## A146911.P6859510891781770818

`A361377(A146903(n+1))`
-/

namespace A146911.P6859510891781770818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361377 (A146903 (n + 1)).toNat

end

end A146911.P6859510891781770818

/-!
# A146912: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-1110-0111-0010 pattern in any orientation.

The programs for A146912, there is no canonical definition to state claims against.
-/

/-! ## A146912.P16598070941445603373

`A146914(2*(n+2))`
-/

namespace A146912.P16598070941445603373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146914 (2 * (n + 2))

end

end A146912.P16598070941445603373

/-! ## A146912.P13480803177343667065

`A146914(A100832(n+1))%A100794(n+1)`
-/

namespace A146912.P13480803177343667065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146914 (A100832 (n + 1)).toNat) (A100794 (n + 1))

end

end A146912.P13480803177343667065

/-! ## A146912.P12543151759552485764

`or(A100810(n+1), A146914(A100832(n+1)))`
-/

namespace A146912.P12543151759552485764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100810 (n + 1)) (A146914 (A100832 (n + 1)).toNat)

end

end A146912.P12543151759552485764

/-! ## A146912.P7412649227468615235

`or(A100821(n+1), A146914(A100832(n+1)))`
-/

namespace A146912.P7412649227468615235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100821 (n + 1)) (A146914 (A100832 (n + 1)).toNat)

end

end A146912.P7412649227468615235

/-! ## A146912.P6838566438870256351

`A008618(A299903(n)+A192634(n))`
-/

namespace A146912.P6838566438870256351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A299903 n + A192634 n).toNat

end

end A146912.P6838566438870256351

/-!
# A146914: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0100-1110-0111-0010 pattern in any orientation.

The programs for A146914, there is no canonical definition to state claims against.
-/

/-! ## A146914.P851685706882858665

`A102450(A147472(n+1))`
-/

namespace A146914.P851685706882858665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (A147472 (n + 1)).toNat

end

end A146914.P851685706882858665

/-! ## A146914.P9175872124793583767

`A116939(A147399(n+1))`
-/

namespace A146914.P9175872124793583767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A147399 (n + 1)).toNat

end

end A146914.P9175872124793583767

/-! ## A146914.P3748920313252410821

`A234300(A146911(n+1))`
-/

namespace A146914.P3748920313252410821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A146911 (n + 1)).toNat

end

end A146914.P3748920313252410821

/-! ## A146914.P13305075684150486725

`A394302(A147141(n+1))`
-/

namespace A146914.P13305075684150486725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394302 (A147141 (n + 1)).toNat

end

end A146914.P13305075684150486725

/-!
# A146916: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0100-1110-0111-0010 pattern in any orientation.

The programs for A146916, there is no canonical definition to state claims against.
-/

/-! ## A146916.P11986835619521810008

`A179927(A005708(2*n)+2)`
-/

namespace A146916.P11986835619521810008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179927 (A005708 (2 * n) + 2).toNat

end

end A146916.P11986835619521810008

/-! ## A146916.P13343446438445727662

`or(A131575(n), A178334(A091352(n)))`
-/

namespace A146916.P13343446438445727662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131575 n) (A178334 (A091352 n).toNat)

end

end A146916.P13343446438445727662

/-! ## A146916.P13641021256185135972

`A046074(A317712(n+1)+A133614(n))`
-/

namespace A146916.P13641021256185135972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A317712 (n + 1) + A133614 n).toNat

end

end A146916.P13641021256185135972

/-!
# A146917: Number of n X n binary arrays with all ones connected only in a 0110-1111-0110 pattern in any orientation.

The programs for A146917, there is no canonical definition to state claims against.
-/

/-! ## A146917.P15527595240524364907

`A309064(A237716(n²))`
-/

namespace A146917.P15527595240524364907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309064 (A237716 (n ^ 2)).toNat

end

end A146917.P15527595240524364907

/-! ## A146917.P431215225185823

`A277696(A075834(n)+A056558(n))`
-/

namespace A146917.P431215225185823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277696 (A075834 n + A056558 n).toNat

end

end A146917.P431215225185823

/-! ## A146917.P1311251043744083632

`A138201(A285573(n+1)+A000292(n))`
-/

namespace A146917.P1311251043744083632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138201 (A285573 (n + 1) + A000292 n).toNat

end

end A146917.P1311251043744083632

/-!
# A146919: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0110-1111-0110 pattern in any orientation.

The programs for A146919, there is no canonical definition to state claims against.
-/

/-! ## A146919.P6552073009772457702

`A084618(A146385(n+1))`
-/

namespace A146919.P6552073009772457702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A146385 (n + 1)).toNat

end

end A146919.P6552073009772457702

/-! ## A146919.P764567869727822288

`A141745(A146449(n+1))`
-/

namespace A146919.P764567869727822288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141745 (A146449 (n + 1)).toNat

end

end A146919.P764567869727822288

/-! ## A146919.P8219522247808900868

`A353426(A131242(3*n+1)+1)`
-/

namespace A146919.P8219522247808900868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353426 (A131242 (3 * n + 1) + 1).toNat

end

end A146919.P8219522247808900868

/-! ## A146919.P16511673874052132552

`A011797(n)+A006843(A321405(n))`
-/

namespace A146919.P16511673874052132552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011797 n + A006843 (A321405 n).toNat

end

end A146919.P16511673874052132552

/-! ## A146919.P6235614472952343063

`A243712(A036611(n)-A036599(n))`
-/

namespace A146919.P6235614472952343063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243712 (A036611 n - A036599 n).toNat

end

end A146919.P6235614472952343063

/-!
# A146920: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0110-1111-0110 pattern in any orientation.

The programs for A146920, there is no canonical definition to state claims against.
-/

/-! ## A146920.P7508490907079872812

`or(A001878(2*n+3), A257639(A000939(n+1)))`
-/

namespace A146920.P7508490907079872812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001878 (2 * n + 3)) (A257639 (A000939 (n + 1)).toNat)

end

end A146920.P7508490907079872812

/-! ## A146920.P4442771871644815058

`A353362(∏[n*a(n-4)])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A146920.P4442771871644815058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 3] fun n f1 =>
  n * f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A146920.P4442771871644815058

/-! ## A146920.P204891235685768413

`A353362(∏[a(n-4)/n^(-1)])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A146920.P204891235685768413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 4) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A146920.P204891235685768413

/-! ## A146920.P957202266750807873

`A063892(A318621(n))`
-/

namespace A146920.P957202266750807873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063892 (A318621 n).toNat

end

end A146920.P957202266750807873

/-! ## A146920.P6170216009517858483

`A071854(A369330(n))`
-/

namespace A146920.P6170216009517858483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071854 (A369330 n).toNat

end

end A146920.P6170216009517858483

/-!
# A146921: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0110-1111-0110 pattern in any orientation.

The programs for A146921, there is no canonical definition to state claims against.
-/

/-! ## A146921.P533321249433030009

`ceil(A100320(n)/A269303(3*n+5))`
-/

namespace A146921.P533321249433030009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100320 n : ℚ) / (A269303 (3 * n + 5) : ℚ)⌉

end

end A146921.P533321249433030009

/-! ## A146921.P14694664569094905347

`ceil(A063886(2*n+1)/A269303(3*n+5))`
-/

namespace A146921.P14694664569094905347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063886 (2 * n + 1) : ℚ) / (A269303 (3 * n + 5) : ℚ)⌉

end

end A146921.P14694664569094905347

/-!
# A146924: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0110-1111-0110 pattern in any orientation.

The programs for A146924, there is no canonical definition to state claims against.
-/

/-! ## A146924.P7903081922528238896

`A358637(A095060(n+1)-1)`
-/

namespace A146924.P7903081922528238896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358637 (A095060 (n + 1) - 1).toNat

end

end A146924.P7903081922528238896

/-! ## A146924.P12095779974925642028

`A208251(A078495(n+2)^4)`
-/

namespace A146924.P12095779974925642028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 (A078495 (n + 2) ^ 4).toNat

end

end A146924.P12095779974925642028

/-! ## A146924.P2466942531827278694

`A208251(A078495(n+2)²²)`
-/

namespace A146924.P2466942531827278694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 ((A078495 (n + 2) ^ 2) ^ 2).toNat

end

end A146924.P2466942531827278694

/-! ## A146924.P4565680539169913568

`A038568(or(A001349(n), A057898(n+1)))`
-/

namespace A146924.P4565680539169913568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (Int.lor (A001349 n) (A057898 (n + 1))).toNat

end

end A146924.P4565680539169913568

/-! ## A146924.P3574161381466072902

`A038568(or(A001349(n), A206479(n+1)))`
-/

namespace A146924.P3574161381466072902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (Int.lor (A001349 n) (A206479 (n + 1))).toNat

end

end A146924.P3574161381466072902

/-!
# A146925: Number of n X n binary arrays with all ones connected only in a 1001-1111-1001 pattern in any orientation.

The programs for A146925, there is no canonical definition to state claims against.
-/

/-! ## A146925.P16967001730677965226

`A239963((floor(n-atan(n))+3)!)`
-/

namespace A146925.P16967001730677965226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239963 (Nat.factorial (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 3).toNat)

end

end A146925.P16967001730677965226

/-! ## A146925.P12484731182032882847

`A239963(∏[n+1]^floor(atan(n)))`
-/

namespace A146925.P12484731182032882847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239963 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A146925.P12484731182032882847

/-! ## A146925.P2957971378641408344

`A120841(A201169(n))`
-/

namespace A146925.P2957971378641408344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120841 (A201169 n).toNat

end

end A146925.P2957971378641408344

/-!
# A146926: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1001-1111-1001 pattern in any orientation.

The programs for A146926, there is no canonical definition to state claims against.
-/

/-! ## A146926.P16441007036554545803

`or(1, A131818(A003094(n)))`
-/

namespace A146926.P16441007036554545803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A131818 (A003094 n).toNat)

end

end A146926.P16441007036554545803

/-! ## A146926.P18418096198668772860

`or(1, A213675(A119336(n)))`
-/

namespace A146926.P18418096198668772860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A213675 (A119336 n).toNat)

end

end A146926.P18418096198668772860

/-! ## A146926.P8362049300933836385

`or(1, A003007(A130083(n+1)))`
-/

namespace A146926.P8362049300933836385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003007 (A130083 (n + 1)).toNat)

end

end A146926.P8362049300933836385

/-! ## A146926.P5649793225350932212

`A032568(A000043(n+1)+1+n)`
-/

namespace A146926.P5649793225350932212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A000043 (n + 1) + 1 + (n : ℤ)).toNat

end

end A146926.P5649793225350932212

/-! ## A146926.P15377815289252693397

`or(A002260(A003094(n)), A332902(2*n+3))`
-/

namespace A146926.P15377815289252693397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (A003094 n).toNat) (A332902 (2 * n + 3))

end

end A146926.P15377815289252693397

/-!
# A146931: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1001-1111-1001 pattern in any orientation.

The programs for A146931, there is no canonical definition to state claims against.
-/

/-! ## A146931.P3743371438800716405

`or(A162343(A146927(n+1)), A275934(n))`
-/

namespace A146931.P3743371438800716405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A162343 (A146927 (n + 1)).toNat) (A275934 n)

end

end A146931.P3743371438800716405

/-! ## A146931.P7616854090992615721

`A147009(n+1)+A033665(A147053(n+1))`
-/

namespace A146931.P7616854090992615721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147009 (n + 1) + A033665 (A147053 (n + 1)).toNat

end

end A146931.P7616854090992615721

/-! ## A146931.P14961824051293419439

`or(A162343(A146927(n+1)), A226621(n+1))`
-/

namespace A146931.P14961824051293419439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A162343 (A146927 (n + 1)).toNat) (A226621 (n + 1))

end

end A146931.P14961824051293419439

/-! ## A146931.P423467658258638231

`or(A162343(A146927(n+1)), A352361(n+4))`
-/

namespace A146931.P423467658258638231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A162343 (A146927 (n + 1)).toNat) (A352361 (n + 4))

end

end A146931.P423467658258638231

/-! ## A146931.P8721157855888369008

`A326683(3*n+1)+A163379(A354141(n+4))`
-/

namespace A146931.P8721157855888369008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 (3 * n + 1) + A163379 (A354141 (n + 4)).toNat

end

end A146931.P8721157855888369008

/-!
# A146932: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1001-1111-1001 pattern in any orientation.

The programs for A146932, there is no canonical definition to state claims against.
-/

/-! ## A146932.P9790778629823837464

`A178334(A020915(3^n))`
-/

namespace A146932.P9790778629823837464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A020915 (3 ^ n)).toNat

end

end A146932.P9790778629823837464

/-! ## A146932.P6413199339951690581

`A178334(A148871(n)+58)`
-/

namespace A146932.P6413199339951690581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A148871 n + 58).toNat

end

end A146932.P6413199339951690581

/-! ## A146932.P64299137938543359

`or(1, A333221(A000383(n+1)))`
-/

namespace A146932.P64299137938543359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A333221 (A000383 (n + 1)).toNat)

end

end A146932.P64299137938543359

/-! ## A146932.P14072964257437644868

`filter[A134719(n+1), A303340(#)]`
-/

namespace A146932.P14072964257437644868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A303340 (f1 j).toNat = 1) n)

end

end A146932.P14072964257437644868

/-! ## A146932.P10332465168370547774

`A295785(A124320(n))+A081157(n)`
-/

namespace A146932.P10332465168370547774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295785 (A124320 n).toNat + A081157 n

end

end A146932.P10332465168370547774

/-!
# A146933: Number of n X n binary arrays with all ones connected only in a 1111-1111 pattern in any orientation.

The programs for A146933, there is no canonical definition to state claims against.
-/

/-! ## A146933.P18259510635150388882

`A146935(2*n+3)`
-/

namespace A146933.P18259510635150388882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146935 (2 * n + 3)

end

end A146933.P18259510635150388882

/-!
# A146934: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1111-1111 pattern in any orientation.

The programs for A146934, there is no canonical definition to state claims against.
-/

/-! ## A146934.P11581475765964257230

`or(A078898(A018548(n+1)), A141020(n))`
-/

namespace A146934.P11581475765964257230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078898 (A018548 (n + 1)).toNat) (A141020 n)

end

end A146934.P11581475765964257230

/-!
# A146935: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1111-1111 pattern in any orientation.

The programs for A146935, there is no canonical definition to state claims against.
-/

/-! ## A146935.P15135937387204557252

`or(A000010(A147008(2*(n+1))), A147005(n+2))`
-/

namespace A146935.P15135937387204557252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (A147008 (2 * (n + 1))).toNat) (A147005 (n + 2))

end

end A146935.P15135937387204557252

/-!
# A146936: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1111-1111 pattern in any orientation.

The programs for A146936, there is no canonical definition to state claims against.
-/

/-! ## A146936.P4130008878002836802

`A146938(2*n+3)`
-/

namespace A146936.P4130008878002836802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146938 (2 * n + 3)

end

end A146936.P4130008878002836802

/-! ## A146936.P7464430499338755235

`or(A146938(A005408(n+1)), A333925(n))`
-/

namespace A146936.P7464430499338755235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146938 (A005408 (n + 1)).toNat) (A333925 n)

end

end A146936.P7464430499338755235

/-! ## A146936.P7822539298257480251

`A146938(A005408(n+1))%A266896(n+1)`
-/

namespace A146936.P7822539298257480251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146938 (A005408 (n + 1)).toNat) (A266896 (n + 1))

end

end A146936.P7822539298257480251

/-! ## A146936.P15639978046897565299

`A147006(n+2)+A048105(A147032(2*n+3))`
-/

namespace A146936.P15639978046897565299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147006 (n + 2) + A048105 (A147032 (2 * n + 3)).toNat

end

end A146936.P15639978046897565299

/-! ## A146936.P13686610828089237737

`A178754(A023425(n))`
-/

namespace A146936.P13686610828089237737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178754 (A023425 n).toNat

end

end A146936.P13686610828089237737

/-!
# A146939: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1111-1111 pattern in any orientation.

The programs for A146939, there is no canonical definition to state claims against.
-/

/-! ## A146939.P3865788736556597694

`A193592(and(A003724(n), A221905(n)))`
-/

namespace A146939.P3865788736556597694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (Int.land (A003724 n) (A221905 n)).toNat

end

end A146939.P3865788736556597694

/-!
# A146940: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1111-1111 pattern in any orientation.

The programs for A146940, there is no canonical definition to state claims against.
-/

/-! ## A146940.P17404620486556300369

`A147010(n+2)+A092486(n)*A098822(A321405(n))/2`
-/

namespace A146940.P17404620486556300369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147010 (n + 2) : ℚ) + (A092486 n * A098822 (A321405 n).toNat : ℚ) / 2

end

end A146940.P17404620486556300369

/-!
# A146941: Odd prime difference array. Let p(n) be the n-th odd prime; row n consists of all k such that p(k+1)-p(k)=2n.

The programs for A146941, there is no canonical definition to state claims against.
-/

/-! ## A146941.P14909968096533930652

`A174349(n+1)-1`
-/

namespace A146941.P14909968096533930652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (n + 1) - 1

end

end A146941.P14909968096533930652

/-! ## A146941.P18173380830612617586

`A023443(A174349(n+1))`
-/

namespace A146941.P18173380830612617586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A174349 (n + 1)).toNat

end

end A146941.P18173380830612617586

/-! ## A146941.P5458860058748224571

`A033270(A174350(n+1))`
-/

namespace A146941.P5458860058748224571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A174350 (n + 1)).toNat

end

end A146941.P5458860058748224571

/-! ## A146941.P4999946193276430093

`A048865(p?[A174350(n+1)])`
-/

namespace A146941.P4999946193276430093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146941.P4999946193276430093

/-! ## A146941.P9097662793898630669

`A079067(p?[A174350(n+1)])`
-/

namespace A146941.P9097662793898630669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146941.P9097662793898630669

/-! ## A146941.P17767419538625567309

`A082460(p?[A174350(n+1)])`
-/

namespace A146941.P17767419538625567309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146941.P17767419538625567309

/-! ## A146941.P14058569456939209659

`A247815(p?[A174350(n+1)])`
-/

namespace A146941.P14058569456939209659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247815 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146941.P14058569456939209659

/-! ## A146941.P8840281897889891951

`A277322(p?[A174350(n+1)])`
-/

namespace A146941.P8840281897889891951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146941.P8840281897889891951

/-! ## A146941.P15929626137302901288

`A297167(p?[A174350(n+1)])`
-/

namespace A146941.P15929626137302901288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146941.P15929626137302901288

/-! ## A146941.P18417721998720839455

`A000720(A174350(n+1)-1)`
-/

namespace A146941.P18417721998720839455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A174350 (n + 1) - 1).toNat

end

end A146941.P18417721998720839455

/-!
# A146942: Transpose of A146941. Let p(n) be the n-th odd prime; column n consists of all k such that p(k+1)-p(k)=2n.

The programs for A146942, there is no canonical definition to state claims against.
-/

/-! ## A146942.P4078243971655121447

`A174349(∑[char[∑[n]]]²-n)-1`
-/

namespace A146942.P4078243971655121447
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - 1

end

end A146942.P4078243971655121447

/-! ## A146942.P5179957178195141747

`A033270(A231609(n+1))`
-/

namespace A146942.P5179957178195141747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A231609 (n + 1)).toNat

end

end A146942.P5179957178195141747

/-! ## A146942.P9160719399515365651

`A048865(p?[A231609(n+1)])`
-/

namespace A146942.P9160719399515365651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146942.P9160719399515365651

/-! ## A146942.P2525885296353599565

`A079067(p?[A231609(n+1)])`
-/

namespace A146942.P2525885296353599565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146942.P2525885296353599565

/-! ## A146942.P3517198820343173323

`A082460(p?[A231609(n+1)])`
-/

namespace A146942.P3517198820343173323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146942.P3517198820343173323

/-! ## A146942.P8182767726297501147

`A247815(p?[A231609(n+1)])`
-/

namespace A146942.P8182767726297501147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247815 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146942.P8182767726297501147

/-! ## A146942.P12600483679643696573

`A277322(p?[A231609(n+1)])`
-/

namespace A146942.P12600483679643696573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146942.P12600483679643696573

/-! ## A146942.P2703641653870171544

`A277892(p?[A231609(n+1)])`
-/

namespace A146942.P2703641653870171544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A146942.P2703641653870171544

/-! ## A146942.P1065500813234151780

`A000720(A231609(n+1)-1)`
-/

namespace A146942.P1065500813234151780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231609 (n + 1) - 1).toNat

end

end A146942.P1065500813234151780

/-! ## A146942.P14845723038204822050

`A230980(A231609(n+1)-1)`
-/

namespace A146942.P14845723038204822050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A231609 (n + 1) - 1).toNat

end

end A146942.P14845723038204822050

/-!
# A146945: Hypotenuses of primitive Pythagorean triples which are not prime numbers and which are the hypotenuse of a unique triangle.

The programs for A146945, there is no canonical definition to state claims against.
-/

/-! ## A146945.P5137823943356724748

`∩[A073540(n+1), A369563(n+1)]`
-/

namespace A146945.P5137823943356724748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P5137823943356724748

/-! ## A146945.P13777522045336707559

`∩[A249125(n+1), A369563(n+1)]`
-/

namespace A146945.P13777522045336707559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P13777522045336707559

/-! ## A146945.P2244156741126431004

`∩[A306531(n+1), A369563(n+1)]`
-/

namespace A146945.P2244156741126431004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P2244156741126431004

/-! ## A146945.P16665445948026038960

`∩[A134612(n+1), A369563(n+1)]`
-/

namespace A146945.P16665445948026038960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P16665445948026038960

/-! ## A146945.P11683289714243667755

`∩[A325359(n+1), A369563(n+1)]`
-/

namespace A146945.P11683289714243667755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P11683289714243667755

/-! ## A146945.P7090464925091956363

`∩[A244623(n+1), A266927(n+1)]`
-/

namespace A146945.P7090464925091956363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P7090464925091956363

/-! ## A146945.P2753328406833879879

`∩[A227476(n+1), A369563(n+1)]`
-/

namespace A146945.P2753328406833879879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P2753328406833879879

/-! ## A146945.P403218735613934095

`∩[A255586(n+1), A369563(n+1)]`
-/

namespace A146945.P403218735613934095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P403218735613934095

/-! ## A146945.P13544212161076695993

`∩[A119492(n+1), A369563(n+1)]`
-/

namespace A146945.P13544212161076695993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P13544212161076695993

/-! ## A146945.P11398879039542869157

`∩[A025475(n+1), A034025(n)]`
-/

namespace A146945.P11398879039542869157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P11398879039542869157

/-! ## A146945.P13264748810660064756

`∩[A073540(n+1), A034025(n)]`
-/

namespace A146945.P13264748810660064756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P13264748810660064756

/-! ## A146945.P17423270325269294057

`∩[A244623(n+1), A034025(n)]`
-/

namespace A146945.P17423270325269294057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P17423270325269294057

/-! ## A146945.P13524105168111021040

`∩[A306531(n+1), A034025(n)]`
-/

namespace A146945.P13524105168111021040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P13524105168111021040

/-! ## A146945.P8520198793004005035

`∩[A134611(n+1), A034025(n)]`
-/

namespace A146945.P8520198793004005035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P8520198793004005035

/-! ## A146945.P2844429313380631237

`∩[A134612(n+1), A034025(n)]`
-/

namespace A146945.P2844429313380631237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146945.P2844429313380631237

/-!
# A146948: Semiprimes n such that n+1 and n+2 are squarefree.

The programs for A146948, the canonical program `A146948.P1635457345996938739` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146948 has offset 1).

The definition of A146948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146948.P713019496857374789

`eq[A075424(n+2), A374897(n)]`
-/

namespace A146948.P713019496857374789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075424 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146948.P713019496857374789

namespace A146948

/-- `eq[A075424(n+2), A374897(n)]` -/
def P713019496857374789.Spec : Prop :=
  ∀ n, (P713019496857374789.a n : ℤ) = A146948 (n + 1)

end A146948

/-! ## A146948.P1635457345996938739

`record[A075424(A001358(n+1)+2)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A146948

/-- `record[A075424(A001358(n+1)+2)]` -/
def P1635457345996938739.Spec : Prop :=
  ∀ n, P1635457345996938739.a n = A146948 (n + 1)

theorem P1635457345996938739.correct : P1635457345996938739.Spec := by
  intro n
  simp only [A146948, Nat.add_sub_cancel]

end A146948

/-! ## A146948.P3303359613191118334

`record[A075424(A004443(A001358(n+1)))]`
-/

namespace A146948.P3303359613191118334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075424 (A004443 (A001358 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146948.P3303359613191118334

namespace A146948

/-- `record[A075424(A004443(A001358(n+1)))]` -/
def P3303359613191118334.Spec : Prop :=
  ∀ n, P3303359613191118334.a n = A146948 (n + 1)

end A146948

/-! ## A146948.P16716215915424965564

`eq[A072909(n+1)+A000188(n+1), A105700(n)]`
-/

namespace A146948.P16716215915424965564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (n + 1) + A000188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146948.P16716215915424965564

namespace A146948

/-- `eq[A072909(n+1)+A000188(n+1), A105700(n)]` -/
def P16716215915424965564.Spec : Prop :=
  ∀ n, (P16716215915424965564.a n : ℤ) = A146948 (n + 1)

end A146948

/-! ## A146948.P4226507634470192907

`eq[A072909(n+1)+A000190(n+1), A105700(n)]`
-/

namespace A146948.P4226507634470192907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (n + 1) + A000190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146948.P4226507634470192907

namespace A146948

/-- `eq[A072909(n+1)+A000190(n+1), A105700(n)]` -/
def P4226507634470192907.Spec : Prop :=
  ∀ n, (P4226507634470192907.a n : ℤ) = A146948 (n + 1)

end A146948

/-! ## A146948.P15018296706009297176

`eq[A324912(n+1)+A072909(n+1), A105700(n)]`
-/

namespace A146948.P15018296706009297176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324912 (n + 1) + A072909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146948.P15018296706009297176

namespace A146948

/-- `eq[A324912(n+1)+A072909(n+1), A105700(n)]` -/
def P15018296706009297176.Spec : Prop :=
  ∀ n, (P15018296706009297176.a n : ℤ) = A146948 (n + 1)

end A146948

/-!
# A146949: Primes with a prime number of partitions into prime parts.

The programs for A146949, there is no canonical definition to state claims against.
-/

/-! ## A146949.P808503678919558011

`p?[A319266(n+1)]`
-/

namespace A146949.P808503678919558011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146949.P808503678919558011

/-! ## A146949.P6006562269865074134

`p?[record[A319266(A052938(n))]]`
-/

namespace A146949.P6006562269865074134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319266 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146949.P6006562269865074134

/-! ## A146949.P8554416112222038648

`p?[record[A319266(A154958(n))]]`
-/

namespace A146949.P8554416112222038648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319266 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A146949.P8554416112222038648

/-! ## A146949.P5014872610375633448

`filter[A319266(n+1), A010051(#)]`
-/

namespace A146949.P5014872610375633448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A146949.P5014872610375633448

/-! ## A146949.P1981678831591676273

`filter[A319266(n+1), A257531(#)]`
-/

namespace A146949.P1981678831591676273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A146949.P1981678831591676273

/-!
# A146950: Terms of A061047 ending in 0.

The programs for A146950, there is no canonical definition to state claims against.
-/

/-! ## A146950.P11306936786853663059

`40*A146952(n+1)`
-/

namespace A146950.P11306936786853663059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * A146952 (n + 1)

end

end A146950.P11306936786853663059

/-! ## A146950.P12718480006777036910

`A061047(and(1, n)+5*n+7)`
-/

namespace A146950.P12718480006777036910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061047 (Nat.land 1 n + 5 * n + 7)

end

end A146950.P12718480006777036910

/-! ## A146950.P7543363247629330868

`A061047(A063206(n+2))`
-/

namespace A146950.P7543363247629330868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061047 (A063206 (n + 2)).toNat

end

end A146950.P7543363247629330868

/-! ## A146950.P15709901061328513130

`A061047(A063226(n+2))`
-/

namespace A146950.P15709901061328513130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061047 (A063226 (n + 2)).toNat

end

end A146950.P15709901061328513130

/-! ## A146950.P8040174582796504552

`A061047(A146951(n)+7)`
-/

namespace A146950.P8040174582796504552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061047 (A146951 n + 7).toNat

end

end A146950.P8040174582796504552

/-! ## A146950.P15459805137854239943

`A317095(A146952(n+1))`
-/

namespace A146950.P15459805137854239943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317095 (A146952 (n + 1)).toNat

end

end A146950.P15459805137854239943

/-!
# A146951: Numbers that are congruent to 0 or 6 mod 10.

The programs for A146951, the canonical program `A146951.P9027656340190355346` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146951 has offset 0).

The definition of A146951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146951.P9027656340190355346

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=6, a(2)=10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A146951

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P9027656340190355346.Spec : Prop :=
  ∀ n, P9027656340190355346.a n = A146951 n

theorem P9027656340190355346.correct : P9027656340190355346.Spec := by
  intro n
  simp only [A146951]

end A146951

/-! ## A146951.P5751467338341472073

`5*n+n%2`
-/

namespace A146951.P5751467338341472073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + n % 2

end

end A146951.P5751467338341472073

namespace A146951

/-- `5*n+n%2` -/
def P5751467338341472073.Spec : Prop :=
  ∀ n, (P5751467338341472073.a n : ℤ) = A146951 n

end A146951

/-! ## A146951.P11944649777124225647

`and(1, n)+5*n`
-/

namespace A146951.P11944649777124225647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 5 * n

end

end A146951.P11944649777124225647

namespace A146951

/-- `and(1, n)+5*n` -/
def P11944649777124225647.Spec : Prop :=
  ∀ n, (P11944649777124225647.a n : ℤ) = A146951 n

end A146951

/-! ## A146951.P10001290137815997982

`a(n-2)+10` with `a(0)=0, a(1)=6`
-/

namespace A146951.P10001290137815997982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  a (n - 2) + 10

end

end A146951.P10001290137815997982

namespace A146951

/-- `a(n-2)+10` -/
def P10001290137815997982.Spec : Prop :=
  ∀ n, (P10001290137815997982.a n : ℤ) = A146951 n

end A146951

/-! ## A146951.P10210517020597301850

`1-or(1, -5*n)`
-/

namespace A146951.P10210517020597301850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (-(5 * n : ℤ))

end

end A146951.P10210517020597301850

namespace A146951

/-- `1-or(1, -5*n)` -/
def P10210517020597301850.Spec : Prop :=
  ∀ n, P10210517020597301850.a n = A146951 n

end A146951

/-! ## A146951.P7490687200448167737

`2*ceil(5*n/2)`
-/

namespace A146951.P7490687200448167737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈5 * ((n : ℚ) / 2)⌉

end

end A146951.P7490687200448167737

namespace A146951

/-- `2*ceil(5*n/2)` -/
def P7490687200448167737.Spec : Prop :=
  ∀ n, P7490687200448167737.a n = A146951 n

end A146951

/-! ## A146951.P14463101090590059993

`6*n-and(n, -2)`
-/

namespace A146951.P14463101090590059993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - Int.land (n : ℤ) (-2)

end

end A146951.P14463101090590059993

namespace A146951

/-- `6*n-and(n, -2)` -/
def P14463101090590059993.Spec : Prop :=
  ∀ n, P14463101090590059993.a n = A146951 n

end A146951

/-! ## A146951.P2483116491433719458

`or(1, 5*n+1)-1`
-/

namespace A146951.P2483116491433719458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (5 * n + 1) : ℤ) - 1

end

end A146951.P2483116491433719458

namespace A146951

/-- `or(1, 5*n+1)-1` -/
def P2483116491433719458.Spec : Prop :=
  ∀ n, P2483116491433719458.a n = A146951 n

end A146951

/-! ## A146951.P13951153190698260774

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=6, a(2)=4`
-/

namespace A146951.P13951153190698260774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146951.P13951153190698260774

namespace A146951

/-- `∑[abs(a(n-2))]` -/
def P13951153190698260774.Spec : Prop :=
  ∀ n, (P13951153190698260774.a n : ℤ) = A146951 n

end A146951

/-! ## A146951.P10001948064135406936

`∑[10-a(n-1)]` with `a(0)=0, a(1)=6`
-/

namespace A146951.P10001948064135406936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146951.P10001948064135406936

namespace A146951

/-- `∑[10-a(n-1)]` -/
def P10001948064135406936.Spec : Prop :=
  ∀ n, P10001948064135406936.a n = A146951 n

end A146951

/-! ## A146951.P7050951228388810465

`2-gcd(2, n)+5*n`
-/

namespace A146951.P7050951228388810465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 n : ℤ) + (5 * n : ℤ)

end

end A146951.P7050951228388810465

namespace A146951

/-- `2-gcd(2, n)+5*n` -/
def P7050951228388810465.Spec : Prop :=
  ∀ n, P7050951228388810465.a n = A146951 n

end A146951

/-! ## A146951.P15328199715092698624

`10-floor(-a(n-2))` with `a(0)=0, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A146951.P15328199715092698624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  10 - (-a (n - 2))

end

end A146951.P15328199715092698624

namespace A146951

/-- `10-floor(-a(n-2))` -/
def P15328199715092698624.Spec : Prop :=
  ∀ n, P15328199715092698624.a n = A146951 n

end A146951

/-! ## A146951.P5769120382814079381

`10-ceil(-a(n-2))` with `a(0)=0, a(1)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A146951.P5769120382814079381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  10 - (-a (n - 2))

end

end A146951.P5769120382814079381

namespace A146951

/-- `10-ceil(-a(n-2))` -/
def P5769120382814079381.Spec : Prop :=
  ∀ n, P5769120382814079381.a n = A146951 n

end A146951

/-! ## A146951.P15738784677073028517

`10-round(-a(n-2))` with `a(0)=0, a(1)=6`

`round` is left out, it is the identity on integers.
-/

namespace A146951.P15738784677073028517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  10 - (-a (n - 2))

end

end A146951.P15738784677073028517

namespace A146951

/-- `10-round(-a(n-2))` -/
def P15738784677073028517.Spec : Prop :=
  ∀ n, P15738784677073028517.a n = A146951 n

end A146951

/-! ## A146951.P10073891602101925651

`val(n²+1, 2)+5*n`
-/

namespace A146951.P10073891602101925651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 1) 2 + 5 * n

end

end A146951.P10073891602101925651

namespace A146951

/-- `val(n²+1, 2)+5*n` -/
def P10073891602101925651.Spec : Prop :=
  ∀ n, (P10073891602101925651.a n : ℤ) = A146951 n

end A146951

/-! ## A146951.P7051513183844396348

`10*n-4-a(n-1)` with `a(0)=0`
-/

namespace A146951.P7051513183844396348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (10 * n : ℤ) - 4 - a (n - 1)

end

end A146951.P7051513183844396348

namespace A146951

/-- `10*n-4-a(n-1)` -/
def P7051513183844396348.Spec : Prop :=
  ∀ n, P7051513183844396348.a n = A146951 n

end A146951

/-! ## A146951.P2276472137949428760

`∑[gcd(3, (n+1)%2)+3]-4`
-/

namespace A146951.P2276472137949428760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 ((n + 1) % 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A146951.P2276472137949428760

namespace A146951

/-- `∑[gcd(3, (n+1)%2)+3]-4` -/
def P2276472137949428760.Spec : Prop :=
  ∀ n, P2276472137949428760.a n = A146951 n

end A146951

/-! ## A146951.P4439016693745406086

`record[xor(2, n+1)]+3*(n-1)`
-/

namespace A146951.P4439016693745406086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + 3 * ((n : ℤ) - 1)

end

end A146951.P4439016693745406086

namespace A146951

/-- `record[xor(2, n+1)]+3*(n-1)` -/
def P4439016693745406086.Spec : Prop :=
  ∀ n, P4439016693745406086.a n = A146951 n

end A146951

/-!
# A146952: a(n) = A146950(n)/40.

The programs for A146952, there is no canonical definition to state claims against.
-/

/-! ## A146952.P15903412304730970849

`A146950(n+1)/40`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A146952.P15903412304730970849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146950 (n + 1) : ℚ) / 40

end

end A146952.P15903412304730970849

/-! ## A146952.P366615747163526399

`gcd(1-A111710(n+1), A146950(n+1))`
-/

namespace A146952.P366615747163526399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A111710 (n + 1)) (A146950 (n + 1))

end

end A146952.P366615747163526399

/-! ## A146952.P525606937052261233

`A061047(and(1, n)+5*n+7)/40`
-/

namespace A146952.P525606937052261233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061047 (Nat.land 1 n + 5 * n + 7) : ℚ) / 40

end

end A146952.P525606937052261233

/-! ## A146952.P11421411700627598724

`A061047(A063206(n+2))/40`
-/

namespace A146952.P11421411700627598724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061047 (A063206 (n + 2)).toNat : ℚ) / 40

end

end A146952.P11421411700627598724

/-! ## A146952.P14487687598913192121

`A061047(A063226(n+2))/40`
-/

namespace A146952.P14487687598913192121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061047 (A063226 (n + 2)).toNat : ℚ) / 40

end

end A146952.P14487687598913192121

/-! ## A146952.P17538152851548726843

`A061047(A146951(n)+7)/40`
-/

namespace A146952.P17538152851548726843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061047 (A146951 n + 7).toNat : ℚ) / 40

end

end A146952.P17538152851548726843

/-!
# A146953: Weight distribution of [256,93,32] Reed-Muller (or RM) code.

The programs for A146953, there is no canonical definition to state claims against.
-/

/-! ## A146953.P9309823249758625569

`A036561(n)*A151660(n*ceil(n/2))`
-/

namespace A146953.P9309823249758625569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A151660 ((n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat

end

end A146953.P9309823249758625569

/-! ## A146953.P13878480884982309383

`(A342854(n)+1)*A151660(n*ceil(n/2))`
-/

namespace A146953.P13878480884982309383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A342854 n + 1) * A151660 ((n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat

end

end A146953.P13878480884982309383

/-! ## A146953.P14541019881665132811

`A141085(n)*A262816(A141081(n))`
-/

namespace A146953.P14541019881665132811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141085 n * A262816 (A141081 n).toNat

end

end A146953.P14541019881665132811

/-! ## A146953.P14589084475939649364

`A141085(n)*A181819(A241891(n))`
-/

namespace A146953.P14589084475939649364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141085 n * A181819 (A241891 n).toNat

end

end A146953.P14589084475939649364

/-! ## A146953.P12987100431284520100

`lcm(A016009(A053617(n)), A141085(n))`
-/

namespace A146953.P12987100431284520100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016009 (A053617 n).toNat) (A141085 n)

end

end A146953.P12987100431284520100

/-!
# A146954: A functionally symmetric Polynomial as a triangle of coefficients: p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n - 4)*Sum[(2^m + 2*m + 2)*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146954, there is no canonical definition to state claims against.
-/

/-! ## A146954.P16909410485807078405

`A146955(n)+A034008(A318274(n))`
-/

namespace A146954.P16909410485807078405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146955 n + A034008 (A318274 n).toNat

end

end A146954.P16909410485807078405

/-!
# A146955: A functionally symmetric Polynomial as a triangle of coefficients: p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n - 4)*Sum[(2^m + 2*m )*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146955, there is no canonical definition to state claims against.
-/

/-! ## A146955.P14823807329963314603

`A146954(n)-A034008(A318274(n))`
-/

namespace A146955.P14823807329963314603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146954 n - A034008 (A318274 n).toNat

end

end A146955.P14823807329963314603

/-!
# A146956: A functionally symmetric Polynomial as a triangle of coefficients: p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n - 2)*Sum[(2^(m-1) + 2*m-2 )*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146956, there is no canonical definition to state claims against.
-/

/-! ## A146956.P11311357544252635336

`A157153(n)%(A002267(n+2)+1)`
-/

namespace A146956.P11311357544252635336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157153 n) (A002267 (n + 2) + 1)

end

end A146956.P11311357544252635336

/-! ## A146956.P15342668650355821264

`A212801(n+1)%A078457(3*(n+1))`
-/

namespace A146956.P15342668650355821264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212801 (n + 1)) (A078457 (3 * (n + 1)))

end

end A146956.P15342668650355821264

/-! ## A146956.P11580930176409188642

`A022167(n)%A003057(A000051(n))`
-/

namespace A146956.P11580930176409188642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022167 n) (A003057 (A000051 n).toNat)

end

end A146956.P11580930176409188642

/-! ## A146956.P15228497888082483333

`A157153(n)%A152089(A019565(n))`
-/

namespace A146956.P15228497888082483333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157153 n) (A152089 (A019565 n).toNat)

end

end A146956.P15228497888082483333

/-! ## A146956.P1313416175485721824

`and(A147565(n), A281380(A047732(n)))`
-/

namespace A146956.P1313416175485721824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147565 n) (A281380 (A047732 n).toNat)

end

end A146956.P1313416175485721824

/-!
# A146957: A functionally symmetric Polynomial as a triangle of coefficients: p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n - 2)*Sum[(3^(m-1) + 2*m-1 )*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146957, there is no canonical definition to state claims against.
-/

/-! ## A146957.P3314214061586899985

`A146988(n)%A094727(A279191(n+1))`
-/

namespace A146957.P3314214061586899985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146988 n) (A094727 (A279191 (n + 1)).toNat)

end

end A146957.P3314214061586899985

/-! ## A146957.P4248578779839257114

`A100795(A022177(n))`
-/

namespace A146957.P4248578779839257114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A022177 n).toNat

end

end A146957.P4248578779839257114

/-! ## A146957.P8325785632380841527

`A162988(A022185(n))`
-/

namespace A146957.P8325785632380841527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162988 (A022185 n).toNat

end

end A146957.P8325785632380841527

/-! ## A146957.P15815262674546364690

`A089867(A146988(n))`
-/

namespace A146957.P15815262674546364690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A146988 n).toNat

end

end A146957.P15815262674546364690

/-! ## A146957.P3649774671644446948

`A274829(A022167(n))`
-/

namespace A146957.P3649774671644446948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274829 (A022167 n).toNat

end

end A146957.P3649774671644446948

/-!
# A146958: A functionally symmetric Polynomial as a triangle of coefficients: p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n - 3)*Sum[(3^(m-1) + 2*m+1 )*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146958, there is no canonical definition to state claims against.
-/

/-! ## A146958.P12688890128736292985

`A018937(A022167(n))`
-/

namespace A146958.P12688890128736292985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018937 (A022167 n).toNat

end

end A146958.P12688890128736292985

/-! ## A146958.P11352541439258396227

`A101224(A056940(n))`
-/

namespace A146958.P11352541439258396227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101224 (A056940 n).toNat

end

end A146958.P11352541439258396227

/-! ## A146958.P16665623922831881304

`A018937(A147565(n))`
-/

namespace A146958.P16665623922831881304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018937 (A147565 n).toNat

end

end A146958.P16665623922831881304

/-! ## A146958.P6759941078892863343

`A018937(A157153(n))`
-/

namespace A146958.P6759941078892863343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018937 (A157153 n).toNat

end

end A146958.P6759941078892863343

/-! ## A146958.P4483905820164852691

`A103412(A080248(n))`
-/

namespace A146958.P4483905820164852691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103412 (A080248 n).toNat

end

end A146958.P4483905820164852691

/-!
# A146959: A functionally symmetric Polynomial as a triangle of coefficients: p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n - 3)*Sum[(3^(m-1) + 2*m+(n-1) )*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146959, there is no canonical definition to state claims against.
-/

/-! ## A146959.P2168797457475007036

`A176539(A045912(n))`
-/

namespace A146959.P2168797457475007036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176539 (A045912 n).toNat

end

end A146959.P2168797457475007036

/-! ## A146959.P3292098646650700796

`A110911(A143007(n))`
-/

namespace A146959.P3292098646650700796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110911 (A143007 n).toNat

end

end A146959.P3292098646650700796

/-! ## A146959.P2944266332407865172

`A088185(A176560(n))`
-/

namespace A146959.P2944266332407865172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088185 (A176560 n).toNat

end

end A146959.P2944266332407865172

/-! ## A146959.P16237227752032888832

`A167905(A154334(n))`
-/

namespace A146959.P16237227752032888832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167905 (A154334 n).toNat

end

end A146959.P16237227752032888832

/-! ## A146959.P16313347591832148826

`A194061(A168290(n))`
-/

namespace A146959.P16313347591832148826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194061 (A168290 n).toNat

end

end A146959.P16313347591832148826

/-!
# A146962: a(n) = 10*a(n-1) - 19*a(n-2) with a(0)=1, a(1)=5.

The programs for A146962, the canonical program `A146962.P10950222281534772444` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146962 has offset 0).

The definition of A146962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-19*a(n-2)` (program `A146962.P10950222281534772444`, by `A146962.P10950222281534772444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146962.P10950222281534772444

`10*a(n-1)-19*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A146962

/-- `10*a(n-1)-19*a(n-2)` -/
def P10950222281534772444.Spec : Prop :=
  ∀ n, P10950222281534772444.a n = A146962 n

theorem P10950222281534772444.correct : P10950222281534772444.Spec := by
  intro n
  simp only [A146962]

end A146962

/-! ## A146962.P18249386301249810756

`((5+sqrt(6))^n+(5-sqrt(6))^n)/2`
-/

namespace A146962.P18249386301249810756
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (6 : ℝ)) ^ n + (5 - Real.sqrt (6 : ℝ)) ^ n) / 2

end

end A146962.P18249386301249810756

namespace A146962

/-- `((5+sqrt(6))^n+(5-sqrt(6))^n)/2` -/
def P18249386301249810756.Spec : Prop :=
  ∀ n, P18249386301249810756.a n = (A146962 n : ℝ)

end A146962

/-!
# A146963: a(n) = ((3 + sqrt(7))^n + (3 - sqrt(7))^n)/2.

The programs for A146963, the canonical program `A146963.P6985968280277072595` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146963 has offset 0).

The definition of A146963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146963.P6985968280277072595

`6*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A146963

/-- `6*a(n-1)-2*a(n-2)` -/
def P6985968280277072595.Spec : Prop :=
  ∀ n, P6985968280277072595.a n = A146963 n

theorem P6985968280277072595.correct : P6985968280277072595.Spec := by
  intro n
  simp only [A146963]

end A146963

/-! ## A146963.P5099376058556478589

`((3+sqrt(7))^n+(3-sqrt(7))^n)/2`
-/

namespace A146963.P5099376058556478589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (7 : ℝ)) ^ n + (3 - Real.sqrt (7 : ℝ)) ^ n) / 2

end

end A146963.P5099376058556478589

namespace A146963

/-- `((3+sqrt(7))^n+(3-sqrt(7))^n)/2` -/
def P5099376058556478589.Spec : Prop :=
  ∀ n, P5099376058556478589.a n = (A146963 n : ℝ)

end A146963

/-! ## A146963.P2820801470684900208

`record[Δ[A249221(n+2)%A249221(n+1)]]`
-/

namespace A146963.P2820801470684900208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249221 (n + 2)) (A249221 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146963.P2820801470684900208

namespace A146963

/-- `record[Δ[A249221(n+2)%A249221(n+1)]]` -/
def P2820801470684900208.Spec : Prop :=
  ∀ n, P2820801470684900208.a n = A146963 n

end A146963

/-! ## A146963.P11923265271976481011

`(4*A154244(n+3))%A010913(n)`
-/

namespace A146963.P11923265271976481011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A154244 (n + 3)) (A010913 n)

end

end A146963.P11923265271976481011

namespace A146963

/-- `(4*A154244(n+3))%A010913(n)` -/
def P11923265271976481011.Spec : Prop :=
  ∀ n, P11923265271976481011.a n = A146963 n

end A146963

/-! ## A146963.P3328069596233336557

`(A154244(n+3)+A010913(n+2))%A010913(n)`
-/

namespace A146963.P3328069596233336557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154244 (n + 3) + A010913 (n + 2)) (A010913 n)

end

end A146963.P3328069596233336557

namespace A146963

/-- `(A154244(n+3)+A010913(n+2))%A010913(n)` -/
def P3328069596233336557.Spec : Prop :=
  ∀ n, P3328069596233336557.a n = A146963 n

end A146963

/-! ## A146963.P6180586747909576364

`Δ[Δ[A154244(n+2)]]%A010913(n)`
-/

namespace A146963.P6180586747909576364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154244 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A010913 n)

end

end A146963.P6180586747909576364

namespace A146963

/-- `Δ[Δ[A154244(n+2)]]%A010913(n)` -/
def P6180586747909576364.Spec : Prop :=
  ∀ n, P6180586747909576364.a n = A146963 n

end A146963

/-!
# A146964: a(n) = ((4 + sqrt(7))^n + (4 - sqrt(7))^n)/2.

The programs for A146964, the canonical program `A146964.P6448683109135012973` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146964 has offset 0).

The definition of A146964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146964.P6448683109135012973

`8*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A146964

/-- `8*a(n-1)-9*a(n-2)` -/
def P6448683109135012973.Spec : Prop :=
  ∀ n, P6448683109135012973.a n = A146964 n

theorem P6448683109135012973.correct : P6448683109135012973.Spec := by
  intro n
  simp only [A146964]

end A146964

/-! ## A146964.P15054336350236906180

`((4+sqrt(7))^n+(4-sqrt(7))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A146964.P15054336350236906180
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (7 : ℝ)) ^ n + (4 - Real.sqrt (7 : ℝ)) ^ n) / 2

end

end A146964.P15054336350236906180

namespace A146964

/-- `((4+sqrt(7))^n+(4-sqrt(7))^n)/2` -/
def P15054336350236906180.Spec : Prop :=
  ∀ n, P15054336350236906180.a n = (A146964 n : ℝ)

end A146964

/-! ## A146964.P8734257437853689831

`A002537(2*n)`
-/

namespace A146964.P8734257437853689831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002537 (2 * n)

end

end A146964.P8734257437853689831

namespace A146964

/-- `A002537(2*n)` -/
def P8734257437853689831.Spec : Prop :=
  ∀ n, P8734257437853689831.a n = A146964 n

end A146964

/-! ## A146964.P1834356965420063645

`A002536(2*n+1)-A002536(2*n)`
-/

namespace A146964.P1834356965420063645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 (2 * n + 1) - A002536 (2 * n)

end

end A146964.P1834356965420063645

namespace A146964

/-- `A002536(2*n+1)-A002536(2*n)` -/
def P1834356965420063645.Spec : Prop :=
  ∀ n, P1834356965420063645.a n = A146964 n

end A146964

/-! ## A146964.P5252848958064066687

`A174988(2*n+1)-A174988(2*n)/2`
-/

namespace A146964.P5252848958064066687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174988 (2 * n + 1) : ℚ) - (A174988 (2 * n) : ℚ) / 2

end

end A146964.P5252848958064066687

namespace A146964

/-- `A174988(2*n+1)-A174988(2*n)/2` -/
def P5252848958064066687.Spec : Prop :=
  ∀ n, P5252848958064066687.a n = (A146964 n : ℚ)

end A146964

/-! ## A146964.P3351087768080325839

`record[A083098(n)/A163864(n+1)]`
-/

namespace A146964.P3351087768080325839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083098 n : ℚ) / (A163864 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146964.P3351087768080325839

namespace A146964

/-- `record[A083098(n)/A163864(n+1)]` -/
def P3351087768080325839.Spec : Prop :=
  ∀ n, P3351087768080325839.a n = (A146964 n : ℚ)

end A146964

/-!
# A146965: a(n) = 10*a(n-1) - 18*a(n-2) with a(0)=1, a(1)=5.

The programs for A146965, the canonical program `A146965.P5851619906753678047` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146965 has offset 0).

The definition of A146965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-18*a(n-2)` (program `A146965.P5851619906753678047`, by `A146965.P5851619906753678047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146965.P5851619906753678047

`10*a(n-1)-18*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A146965

/-- `10*a(n-1)-18*a(n-2)` -/
def P5851619906753678047.Spec : Prop :=
  ∀ n, P5851619906753678047.a n = A146965 n

theorem P5851619906753678047.correct : P5851619906753678047.Spec := by
  intro n
  simp only [A146965]

end A146965

/-! ## A146965.P7988095297388313760

`((5+sqrt(7))^n+(5-sqrt(7))^n)/2`
-/

namespace A146965.P7988095297388313760
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (7 : ℝ)) ^ n + (5 - Real.sqrt (7 : ℝ)) ^ n) / 2

end

end A146965.P7988095297388313760

namespace A146965

/-- `((5+sqrt(7))^n+(5-sqrt(7))^n)/2` -/
def P7988095297388313760.Spec : Prop :=
  ∀ n, P7988095297388313760.a n = (A146965 n : ℝ)

end A146965

/-!
# A146966: a(n) = ((6 + sqrt(7))^n + (6 - sqrt(7))^n) / 2.

The programs for A146966, the canonical program `A146966.P8382199658064977412` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146966 has offset 0).

The definition of A146966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146966.P8382199658064977412

`12*a(n-1)-29*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A146966

/-- `12*a(n-1)-29*a(n-2)` -/
def P8382199658064977412.Spec : Prop :=
  ∀ n, P8382199658064977412.a n = A146966 n

theorem P8382199658064977412.correct : P8382199658064977412.Spec := by
  intro n
  simp only [A146966]

end A146966

/-! ## A146966.P14305458930432469428

`((6+sqrt(7))^n+(6-sqrt(7))^n)/2`
-/

namespace A146966.P14305458930432469428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (7 : ℝ)) ^ n + (6 - Real.sqrt (7 : ℝ)) ^ n) / 2

end

end A146966.P14305458930432469428

namespace A146966

/-- `((6+sqrt(7))^n+(6-sqrt(7))^n)/2` -/
def P14305458930432469428.Spec : Prop :=
  ∀ n, P14305458930432469428.a n = (A146966 n : ℝ)

end A146966

/-!
# A146967: Triangle read by rows: row n is the expansion of p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n - 3)*Sum[(2^(m - 1) +n*m - n + 1)*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}].

The programs for A146967, there is no canonical definition to state claims against.
-/

/-! ## A146967.P10901975481284534375

`A241091((A050186(n)+1)²)`
-/

namespace A146967.P10901975481284534375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 ((A050186 n + 1) ^ 2).toNat

end

end A146967.P10901975481284534375

/-! ## A146967.P10886167445270992356

`A149236(A050186(n)%A023639(n))`
-/

namespace A146967.P10886167445270992356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149236 (Int.tmod (A050186 n) (A023639 (n + 13))).toNat

end

end A146967.P10886167445270992356

/-! ## A146967.P11647884561796782527

`A113730(A013928(n+1)^∑{p}[A140997(n), #])`
-/

namespace A146967.P11647884561796782527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113730 (A013928 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat

end

end A146967.P11647884561796782527

/-! ## A146967.P15566372283968036530

`A113730(A321695(n+1)^∑{p}[A140997(n), #])`
-/

namespace A146967.P15566372283968036530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113730 (A321695 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat

end

end A146967.P15566372283968036530

/-! ## A146967.P17805188358556521407

`A003059(A022174(n))`
-/

namespace A146967.P17805188358556521407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A022174 n).toNat

end

end A146967.P17805188358556521407

/-!
# A146969: a(1)=3, a(2)=1, a(n) = (n+1)/2 if n is an odd prime, and a(n) = a(floor(n/2)) otherwise.

The programs for A146969, there is no canonical definition to state claims against.
-/

/-! ## A146969.P3948079830900242686

`floor(A065033(A039634(n+1))+acot(n)²)`
-/

namespace A146969.P3948079830900242686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065033 (A039634 (n + 1)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A146969.P3948079830900242686

/-! ## A146969.P259206880826924078

`A000463(A039634(n+1))+A000038(n)`
-/

namespace A146969.P259206880826924078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A039634 (n + 1)).toNat + A000038 n

end

end A146969.P259206880826924078

/-! ## A146969.P2363156909017732113

`A065033(A039634(n+1)+A000038(n)²)`
-/

namespace A146969.P2363156909017732113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A039634 (n + 1) + A000038 n ^ 2).toNat

end

end A146969.P2363156909017732113

/-! ## A146969.P6428181518447415914

`A000463(A039634(n+1))+2*A000007(n)`
-/

namespace A146969.P6428181518447415914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A039634 (n + 1)).toNat + 2 * A000007 n

end

end A146969.P6428181518447415914

/-! ## A146969.P8700167385174667922

`A065033(A039634(n+1)+2*A000038(n))`
-/

namespace A146969.P8700167385174667922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A039634 (n + 1) + 2 * A000038 n).toNat

end

end A146969.P8700167385174667922

/-! ## A146969.P1865312675263822527

`A000463(A039634(n+1))+log2(A054977(n)²)`
-/

namespace A146969.P1865312675263822527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000463 (A039634 (n + 1)).toNat : ℝ) + Real.logb 2 (A054977 n ^ 2 : ℝ)

end

end A146969.P1865312675263822527

/-! ## A146969.P16126065508564991200

`A065033(A039634(n+1))+C(2, A005117(n+1)²)`
-/

namespace A146969.P16126065508564991200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A039634 (n + 1)).toNat + (Nat.choose 2 (A005117 (n + 1) ^ 2).toNat : ℤ)

end

end A146969.P16126065508564991200

/-! ## A146969.P8937252288094751724

`A028920(4*a(n-1))*A065033(A039634(n+1))` with `a(0)=3`
-/

namespace A146969.P8937252288094751724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A028920 (4 * a (n - 1)).toNat * A065033 (A039634 (n + 1)).toNat

end

end A146969.P8937252288094751724

/-! ## A146969.P3406324215359612563

`A000463(A039634(n+1))+2*A008683((n+1)²)`
-/

namespace A146969.P3406324215359612563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A039634 (n + 1)).toNat + 2 * A008683 ((n + 1) ^ 2)

end

end A146969.P3406324215359612563

/-! ## A146969.P14549641069782130903

`A003602(A039634(n+1))+A000038(∑[n])`
-/

namespace A146969.P14549641069782130903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A039634 (n + 1)).toNat + A000038 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146969.P14549641069782130903

/-!
# A146970: Created from A135506 by adding successive terms as: a(n) = a(n - 1) + lcm(n, a(n - 1)); f(n) = (a(n)/a(n - 1) - 1) + (a(n + 1)/a(n) - 1).

The programs for A146970, there is no canonical definition to state claims against.
-/

/-! ## A146970.P3168204499231222706

`A135506(n+1)+A135506(n+2)`
-/

namespace A146970.P3168204499231222706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (n + 1) + A135506 (n + 2)

end

end A146970.P3168204499231222706

/-!
# A146971: Number of weight-n binary n X n matrices that yield the all-ones matrix after repeatedly changing a 0 having at least two 1-neighbors to a 1.

The programs for A146971, there is no canonical definition to state claims against.
-/

/-! ## A146971.P17264525938335421328

`A007457(10^n-(n-2))/2`
-/

namespace A146971.P17264525938335421328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007457 ((10 ^ n : ℤ) - ((n : ℤ) - 2)).toNat : ℚ) / 2

end

end A146971.P17264525938335421328

/-!
# A146972: Twin primes in A046704.

The programs for A146972, there is no canonical definition to state claims against.
-/

/-! ## A146972.P5739304817444095596

`∪[A158328(n+1)+2, A158328(n+1)]`
-/

namespace A146972.P5739304817444095596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158328 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A146972.P5739304817444095596

/-! ## A146972.P2340786807166443244

`record[gcd(A158331(n+1), A326683(n))]`
-/

namespace A146972.P2340786807166443244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158331 (n + 1)) (A326683 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146972.P2340786807166443244

/-! ## A146972.P16854840778778053913

`record[A158331(A007953(A023190(n+1)))]`
-/

namespace A146972.P16854840778778053913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158331 (A007953 (A023190 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146972.P16854840778778053913

/-! ## A146972.P18152136214811731325

`record[A014902(n)*A158331(n+1)]`
-/

namespace A146972.P18152136214811731325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 n * A158331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146972.P18152136214811731325

/-! ## A146972.P10976098122999997976

`A158331(A006530(A011782(n))+n)`
-/

namespace A146972.P10976098122999997976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158331 (A006530 (A011782 n).toNat + (n : ℤ)).toNat

end

end A146972.P10976098122999997976

/-!
# A146975: First quintisection of A061043: A061043(5n).

The programs for A146975, the canonical program `A146975.P6518762066543505355` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146975 has offset 0).

The definition of A146975 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061043, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A146975.P6518762066543505355

`A061043(5*(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A146975

/-- `A061043(5*(n+1))` -/
def P6518762066543505355.Spec : Prop :=
  ∀ n, P6518762066543505355.a n = A146975 n

theorem P6518762066543505355.correct : P6518762066543505355.Spec := by
  intro n
  simp only [A146975]

end A146975

/-! ## A146975.P15188552458061264191

`n*(n+2)/gcd(25, n*(n+2))`
-/

namespace A146975.P15188552458061264191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℚ) / (Nat.gcd 25 (n * (n + 2)) : ℚ)

end

end A146975.P15188552458061264191

namespace A146975

/-- `n*(n+2)/gcd(25, n*(n+2))` -/
def P15188552458061264191.Spec : Prop :=
  ∀ n, P15188552458061264191.a n = (A146975 n : ℚ)

end A146975

/-! ## A146975.P14061377512787237850

`lcm(25, A005563(n))/25`
-/

namespace A146975.P14061377512787237850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 25 (A005563 n) : ℚ) / 25

end

end A146975.P14061377512787237850

namespace A146975

/-- `lcm(25, A005563(n))/25` -/
def P14061377512787237850.Spec : Prop :=
  ∀ n, P14061377512787237850.a n = (A146975 n : ℚ)

end A146975

/-! ## A146975.P11821069079814395978

`A264995(A030104(n*(n+2)))`
-/

namespace A146975.P11821069079814395978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264995 (A030104 (n * (n + 2))).toNat

end

end A146975.P11821069079814395978

namespace A146975

/-- `A264995(A030104(n*(n+2)))` -/
def P11821069079814395978.Spec : Prop :=
  ∀ n, P11821069079814395978.a n = A146975 n

end A146975

/-! ## A146975.P150684422314932939

`gcd(A005563(n), A059593(n+2))`
-/

namespace A146975.P150684422314932939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005563 n) (A059593 (n + 2))

end

end A146975.P150684422314932939

namespace A146975

/-- `gcd(A005563(n), A059593(n+2))` -/
def P150684422314932939.Spec : Prop :=
  ∀ n, (P150684422314932939.a n : ℤ) = A146975 n

end A146975

/-! ## A146975.P6610642455748485497

`A030104(A030104((n+1)²-1))`
-/

namespace A146975.P6610642455748485497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (A030104 ((n + 1) ^ 2 - 1)).toNat

end

end A146975.P6610642455748485497

namespace A146975

/-- `A030104(A030104((n+1)²-1))` -/
def P6610642455748485497.Spec : Prop :=
  ∀ n, P6610642455748485497.a n = A146975 n

end A146975

/-!
# A146976: Weight distribution of [256,163,16] Reed-Muller (or RM) code.

The programs for A146976, there is no canonical definition to state claims against.
-/

/-! ## A146976.P8791109154590734689

`A086017(3*(n+1))*A289537(A289535(n+1))`
-/

namespace A146976.P8791109154590734689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 (3 * (n + 1)) * A289537 (A289535 (n + 1)).toNat

end

end A146976.P8791109154590734689

/-!
# A146977: a(n) = Sum_{k=1..prime(n)} binomial(2k,k).

The programs for A146977, there is no canonical definition to state claims against.
-/

/-! ## A146977.P12781158627980626034

`A066796(p?[comp[n²]])`
-/

namespace A146977.P12781158627980626034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066796 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A146977.P12781158627980626034

/-! ## A146977.P6092011397938436974

`A054114(A006093(n+1))`
-/

namespace A146977.P6092011397938436974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054114 (A006093 (n + 1)).toNat

end

end A146977.P6092011397938436974

/-! ## A146977.P8725660222102524093

`A066796(A000040(n+1))`
-/

namespace A146977.P8725660222102524093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066796 (A000040 (n + 1)).toNat

end

end A146977.P8725660222102524093

/-! ## A146977.P5394130915954347492

`A054114(record[A000010(n+1)])`
-/

namespace A146977.P5394130915954347492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A146977.P5394130915954347492

/-! ## A146977.P3917886463656212943

`A066796(record[A006530(n+2)])`
-/

namespace A146977.P3917886463656212943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A146977.P3917886463656212943

/-!
# A146980: Nonsquarefree numbers such that n-1 is prime and n+1 is square.

The programs for A146980, there is no canonical definition to state claims against.
-/

/-! ## A146980.P14260899135363720386

`A028871(n+2)+1`
-/

namespace A146980.P14260899135363720386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 2) + 1

end

end A146980.P14260899135363720386

/-! ## A146980.P9334380154759739989

`A028870(n+2)²-1`
-/

namespace A146980.P9334380154759739989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 2) ^ 2 - 1

end

end A146980.P9334380154759739989

/-! ## A146980.P15642848929176472377

`(A089623(n+2)+1)²-1`
-/

namespace A146980.P15642848929176472377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089623 (n + 2) + 1) ^ 2 - 1

end

end A146980.P15642848929176472377

/-! ## A146980.P5981857822797094983

`A057428(n+1)+A028870(n+2)²`
-/

namespace A146980.P5981857822797094983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A028870 (n + 2) ^ 2

end

end A146980.P5981857822797094983

/-! ## A146980.P6155593533540149570

`(A028870(n+2)+1)*A089623(n+2)`
-/

namespace A146980.P6155593533540149570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028870 (n + 2) + 1) * A089623 (n + 2)

end

end A146980.P6155593533540149570

/-! ## A146980.P18008695434318021427

`A033999(2*n+1)+A028870(n+2)²`
-/

namespace A146980.P18008695434318021427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A028870 (n + 2) ^ 2

end

end A146980.P18008695434318021427

/-! ## A146980.P3742958233221558322

`A073577(A088572(n+1))+1`
-/

namespace A146980.P3742958233221558322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (A088572 (n + 1)).toNat + 1

end

end A146980.P3742958233221558322

/-! ## A146980.P4176516005528181803

`A033996(A088572(n+1))`
-/

namespace A146980.P4176516005528181803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 (A088572 (n + 1)).toNat

end

end A146980.P4176516005528181803

/-! ## A146980.P16924709083739943019

`∩[A163492(n+1), A033996(n)]`
-/

namespace A146980.P16924709083739943019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146980.P16924709083739943019

/-! ## A146980.P196179714755558958

`A005408(record[A308085(n+1)])²-1`
-/

namespace A146980.P196179714755558958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2 - 1

end

end A146980.P196179714755558958

/-! ## A146980.P10953427997320009822

`A144396(record[A308085(n+1)])²-1`
-/

namespace A146980.P10953427997320009822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2 - 1

end

end A146980.P10953427997320009822

/-! ## A146980.P6836629235992138966

`∩[A163492(n+1), A389764(n+1)]`
-/

namespace A146980.P6836629235992138966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146980.P6836629235992138966

/-! ## A146980.P4683394765528380773

`record[A059772(n+3)+1]`
-/

namespace A146980.P4683394765528380773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146980.P4683394765528380773

/-! ## A146980.P1618882858137851778

`record[A164314(n+3)+1]`
-/

namespace A146980.P1618882858137851778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146980.P1618882858137851778

/-! ## A146980.P4638638805720403994

`A039720(A028870(n+2))`
-/

namespace A146980.P4638638805720403994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039720 (A028870 (n + 2)).toNat

end

end A146980.P4638638805720403994

/-! ## A146980.P2444025906309437788

`A005563(A089623(n+2))`
-/

namespace A146980.P2444025906309437788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A089623 (n + 2)).toNat

end

end A146980.P2444025906309437788

/-! ## A146980.P6895619578116305149

`∩[A163492(n+1), A159469(n+3)]`
-/

namespace A146980.P6895619578116305149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159469 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146980.P6895619578116305149

/-! ## A146980.P11086969823716689222

`∩[A163492(n+1), A248427(n+3)]`
-/

namespace A146980.P11086969823716689222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248427 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146980.P11086969823716689222

/-! ## A146980.P2452529910514796093

`∩[A008865(n+2), A113425(n+2)]+1`
-/

namespace A146980.P2452529910514796093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A146980.P2452529910514796093

/-! ## A146980.P7083553476559847573

`∩[A008865(n+2), A179273(n+2)]+1`
-/

namespace A146980.P7083553476559847573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A146980.P7083553476559847573

/-!
# A146981: Numbers k of the form q^2, q = prime, such that k-2 is a prime.

The programs for A146981, there is no canonical definition to state claims against.
-/

/-! ## A146981.P774142540791508595

`A062326(n+1)²`
-/

namespace A146981.P774142540791508595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1) ^ 2

end

end A146981.P774142540791508595

/-! ## A146981.P10554794257948254782

`A049002(n+1)+2`
-/

namespace A146981.P10554794257948254782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049002 (n + 1) + 2

end

end A146981.P10554794257948254782

/-! ## A146981.P18417004402283647779

`A062326(A000027(n+1))^2`
-/

namespace A146981.P18417004402283647779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (A000027 (n + 1)).toNat ^ 2

end

end A146981.P18417004402283647779

/-! ## A146981.P5851137454735332401

`A240436(n+1)/A062326(n+1)+2`
-/

namespace A146981.P5851137454735332401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240436 (n + 1) : ℚ) / (A062326 (n + 1) : ℚ) + 2

end

end A146981.P5851137454735332401

/-! ## A146981.P15093180803319554792

`A062326(n+1)^A020639(2*(n+1))`
-/

namespace A146981.P15093180803319554792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062326 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A146981.P15093180803319554792

/-! ## A146981.P2916406695725006031

`A062326(n+1)^(3-A007318(C(3, n)))`
-/

namespace A146981.P2916406695725006031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062326 (n + 1) : ℚ) ^ (3 - A007318 (Nat.choose 3 n) : ℤ)

end

end A146981.P2916406695725006031

/-! ## A146981.P1306792444862847514

`A062326(A000027(n+1))*A062326(n+1)`
-/

namespace A146981.P1306792444862847514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (A000027 (n + 1)).toNat * A062326 (n + 1)

end

end A146981.P1306792444862847514

/-! ## A146981.P15819234873772573270

`A010051(A000040(n+1))*A062326(n+1)*A062326(n+1)`
-/

namespace A146981.P15819234873772573270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000040 (n + 1)).toNat * A062326 (n + 1) * A062326 (n + 1)

end

end A146981.P15819234873772573270

/-! ## A146981.P9264494761126423958

`p?[A028870(n+1)]²`
-/

namespace A146981.P9264494761126423958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A146981.P9264494761126423958

/-! ## A146981.P17712696439478796955

`p?[A089623(n+1)+1]²`
-/

namespace A146981.P17712696439478796955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089623 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A146981.P17712696439478796955

/-! ## A146981.P13644359170531072782

`p?[ceil(sqrt(A028871(n+1)))]²`
-/

namespace A146981.P13644359170531072782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028871 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A146981.P13644359170531072782

/-! ## A146981.P10434435564685408199

`∩[A028870(n+1), A042990(n)]²`
-/

namespace A146981.P10434435564685408199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A146981.P10434435564685408199

/-! ## A146981.P18043428216241572815

`p?[A028870(n+1)]*A062326(n+1)`
-/

namespace A146981.P18043428216241572815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A062326 (n + 1)

end

end A146981.P18043428216241572815

/-! ## A146981.P12812485050027461920

`A001248(A137291(n+1))`
-/

namespace A146981.P12812485050027461920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A137291 (n + 1)).toNat

end

end A146981.P12812485050027461920

/-! ## A146981.P11236986871669566302

`∩[A001248(n+1), A053704(n+1)]`
-/

namespace A146981.P11236986871669566302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146981.P11236986871669566302

/-! ## A146981.P6767414614173032036

`∩[A053704(n+1), A064599(n+1)]`
-/

namespace A146981.P6767414614173032036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146981.P6767414614173032036

/-! ## A146981.P2558594451873821475

`∩[A053704(n+1), A190300(n+1)]`
-/

namespace A146981.P2558594451873821475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146981.P2558594451873821475

/-! ## A146981.P6458613873654892531

`∩[A053704(n+1), A280076(n+1)]`
-/

namespace A146981.P6458613873654892531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146981.P6458613873654892531

/-! ## A146981.P14538794622697927917

`∩[A053704(n+1), A326708(n+1)]`
-/

namespace A146981.P14538794622697927917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146981.P14538794622697927917

/-! ## A146981.P8510381917010133703

`∩[A000040(n+1), A028870(n+1)]²`
-/

namespace A146981.P8510381917010133703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A146981.P8510381917010133703

/-!
# A146982: Numbers k such that Product{i=1..k}[sigma_0(i)] / k is an integer.

The programs for A146982, there is no canonical definition to state claims against.
-/

/-! ## A146982.P12299006970955181593

`record[gcd(n+1, A066843(n+1))]`
-/

namespace A146982.P12299006970955181593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A066843 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146982.P12299006970955181593

/-! ## A146982.P9311993785704212946

`∩[A337674(n+1), A356451(n+1)]`
-/

namespace A146982.P9311993785704212946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146982.P9311993785704212946

/-! ## A146982.P5156565090216961472

`filter[A010432(n+2), A331281(#)]`
-/

namespace A146982.P5156565090216961472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010432 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A146982.P5156565090216961472

/-! ## A146982.P11675589638723850658

`∩[A010432(n+1), A337674(n+1)]`
-/

namespace A146982.P11675589638723850658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146982.P11675589638723850658

/-! ## A146982.P4972918977184892267

`∩[A023807(n+1), A337674(n+1)]`
-/

namespace A146982.P4972918977184892267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146982.P4972918977184892267

/-!
# A146983: a(n) = A002531(n)*A002531(n+1).

The programs for A146983, the canonical program `A146983.P12807230258099002896` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146983 has offset 0).

The definition of A146983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146983.P16559575587763888115

`4*a(n-1)-a(n-2)+3*(-1)^n` with `a(0)=1, a(1)=2`
-/

namespace A146983.P16559575587763888115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - a (n - 2) + 3 * (-1) ^ n

end

end A146983.P16559575587763888115

namespace A146983

/-- `4*a(n-1)-a(n-2)+3*(-1)^n` -/
def P16559575587763888115.Spec : Prop :=
  ∀ n, P16559575587763888115.a n = A146983 n

end A146983

/-! ## A146983.P6401832447704552521

`3*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A146983.P6401832447704552521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - a (n - 3)

end

end A146983.P6401832447704552521

namespace A146983

/-- `3*a(n-1)+3*a(n-2)-a(n-3)` -/
def P6401832447704552521.Spec : Prop :=
  ∀ n, P6401832447704552521.a n = A146983 n

end A146983

/-! ## A146983.P12807230258099002896

`A002531(n)*A002531(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A146983

/-- `A002531(n)*A002531(n+1)` -/
def P12807230258099002896.Spec : Prop :=
  ∀ n, P12807230258099002896.a n = A146983 n

theorem P12807230258099002896.correct : P12807230258099002896.Spec := by
  intro n
  simp only [A146983]

end A146983

/-! ## A146983.P4634489848637744865

`3*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A146983.P4634489848637744865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10] fun n a =>
  3 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A146983.P4634489848637744865

namespace A146983

/-- `3*(a(n-1)+a(n-2))-a(n-3)` -/
def P4634489848637744865.Spec : Prop :=
  ∀ n, P4634489848637744865.a n = A146983 n

end A146983

/-! ## A146983.P6334520001079343744

`A082840(n)+gcd(2, n)`
-/

namespace A146983.P6334520001079343744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n + (Nat.gcd 2 n : ℤ)

end

end A146983.P6334520001079343744

namespace A146983

/-- `A082840(n)+gcd(2, n)` -/
def P6334520001079343744.Spec : Prop :=
  ∀ n, P6334520001079343744.a n = A146983 n

end A146983

/-! ## A146983.P2907376100673312664

`A102871(n)-n%2`
-/

namespace A146983.P2907376100673312664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n - ((n % 2 : ℕ) : ℤ)

end

end A146983.P2907376100673312664

namespace A146983

/-- `A102871(n)-n%2` -/
def P2907376100673312664.Spec : Prop :=
  ∀ n, P2907376100673312664.a n = A146983 n

end A146983

/-! ## A146983.P14660500110878538271

`∑[A001075(n)]-and(1, n)`
-/

namespace A146983.P14660500110878538271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 1 n : ℤ)

end

end A146983.P14660500110878538271

namespace A146983

/-- `∑[A001075(n)]-and(1, n)` -/
def P14660500110878538271.Spec : Prop :=
  ∀ n, P14660500110878538271.a n = A146983 n

end A146983

/-! ## A146983.P2796196750466014792

`A001571(n)+∑[(-1)^n]`
-/

namespace A146983.P2796196750466014792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146983.P2796196750466014792

namespace A146983

/-- `A001571(n)+∑[(-1)^n]` -/
def P2796196750466014792.Spec : Prop :=
  ∀ n, P2796196750466014792.a n = A146983 n

end A146983

/-! ## A146983.P15497008252157672831

`A059841(n)+A001571(n)`
-/

namespace A146983.P15497008252157672831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A001571 n

end

end A146983.P15497008252157672831

namespace A146983

/-- `A059841(n)+A001571(n)` -/
def P15497008252157672831.Spec : Prop :=
  ∀ n, P15497008252157672831.a n = A146983 n

end A146983

/-! ## A146983.P9591917710165612677

`A217233(n)+A109437(n)`
-/

namespace A146983.P9591917710165612677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 n + A109437 n

end

end A146983.P9591917710165612677

namespace A146983

/-- `A217233(n)+A109437(n)` -/
def P9591917710165612677.Spec : Prop :=
  ∀ n, P9591917710165612677.a n = A146983 n

end A146983

/-! ## A146983.P9974996492142469727

`A102871(n)-A000035(n)`
-/

namespace A146983.P9974996492142469727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n - A000035 n

end

end A146983.P9974996492142469727

namespace A146983

/-- `A102871(n)-A000035(n)` -/
def P9974996492142469727.Spec : Prop :=
  ∀ n, P9974996492142469727.a n = A146983 n

end A146983

/-! ## A146983.P12231930033245879558

`∑[A001075(n)]-A000035(n)`
-/

namespace A146983.P12231930033245879558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000035 n

end

end A146983.P12231930033245879558

namespace A146983

/-- `∑[A001075(n)]-A000035(n)` -/
def P12231930033245879558.Spec : Prop :=
  ∀ n, P12231930033245879558.a n = A146983 n

end A146983

/-! ## A146983.P2271528763678095160

`A102871(n)+1-A000034(n)`
-/

namespace A146983.P2271528763678095160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n + (1 - A000034 n)

end

end A146983.P2271528763678095160

namespace A146983

/-- `A102871(n)+1-A000034(n)` -/
def P2271528763678095160.Spec : Prop :=
  ∀ n, P2271528763678095160.a n = A146983 n

end A146983

/-! ## A146983.P6538129461200493294

`A059841(n)+A102871(n)-1`
-/

namespace A146983.P6538129461200493294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (A102871 n - 1)

end

end A146983.P6538129461200493294

namespace A146983

/-- `A059841(n)+A102871(n)-1` -/
def P6538129461200493294.Spec : Prop :=
  ∀ n, P6538129461200493294.a n = A146983 n

end A146983

/-! ## A146983.P309492263700703729

`∑[A001075(n)]+1-A000034(n)`
-/

namespace A146983.P309492263700703729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000034 n)

end

end A146983.P309492263700703729

namespace A146983

/-- `∑[A001075(n)]+1-A000034(n)` -/
def P309492263700703729.Spec : Prop :=
  ∀ n, P309492263700703729.a n = A146983 n

end A146983

/-! ## A146983.P6866353677187537359

`∑[A092184(n)+1-A062157(n)]`
-/

namespace A146983.P6866353677187537359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 n + (1 - A062157 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146983.P6866353677187537359

namespace A146983

/-- `∑[A092184(n)+1-A062157(n)]` -/
def P6866353677187537359.Spec : Prop :=
  ∀ n, P6866353677187537359.a n = A146983 n

end A146983

/-! ## A146983.P880228138104417161

`∑[A120893(n)+A120892(n)]-1`
-/

namespace A146983.P880228138104417161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n + A120892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A146983.P880228138104417161

namespace A146983

/-- `∑[A120893(n)+A120892(n)]-1` -/
def P880228138104417161.Spec : Prop :=
  ∀ n, P880228138104417161.a n = A146983 n

end A146983

/-! ## A146983.P5086097266493465039

`∑[A001353(n)]+or(1, A001353(n))`
-/

namespace A146983.P5086097266493465039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.lor 1 (A001353 n)

end

end A146983.P5086097266493465039

namespace A146983

/-- `∑[A001353(n)]+or(1, A001353(n))` -/
def P5086097266493465039.Spec : Prop :=
  ∀ n, P5086097266493465039.a n = A146983 n

end A146983

/-! ## A146983.P1289703527357558869

`record[A002531(A008611(n))]*A002531(n)`
-/

namespace A146983.P1289703527357558869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002531 n

end

end A146983.P1289703527357558869

namespace A146983

/-- `record[A002531(A008611(n))]*A002531(n)` -/
def P1289703527357558869.Spec : Prop :=
  ∀ n, P1289703527357558869.a n = A146983 n

end A146983

/-!
# A146985: Triangle T(n,m) = f(n-m)*f(n), where f(n) = A008578(n+1).

The programs for A146985, there is no canonical definition to state claims against.
-/

/-! ## A146985.P17911393254940482117

`A246029(eq[0, and(n, or(n, n+1)+1)])`
-/

namespace A146985.P17911393254940482117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.lor n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A146985.P17911393254940482117

/-! ## A146985.P2708478288713107011

`A246029(eq[0, and(n+2, xor(n, n+1)+n)])`
-/

namespace A146985.P2708478288713107011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 2) (Nat.xor n (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A146985.P2708478288713107011

/-! ## A146985.P16370772865211458885

`A064989(A073060(n))`
-/

namespace A146985.P16370772865211458885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A073060 n).toNat

end

end A146985.P16370772865211458885

/-! ## A146985.P15990286273873940496

`A246029(A089633(n))`
-/

namespace A146985.P15990286273873940496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A089633 n).toNat

end

end A146985.P15990286273873940496

/-! ## A146985.P13582834958756666188

`A064989(A098350(n+1))`
-/

namespace A146985.P13582834958756666188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A098350 (n + 1)).toNat

end

end A146985.P13582834958756666188

/-! ## A146985.P2218178119374212173

`A141617(n)/A007318(n)`
-/

namespace A146985.P2218178119374212173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141617 n : ℚ) / (A007318 n : ℚ)

end

end A146985.P2218178119374212173

/-! ## A146985.P10952180041457815746

`∏{e}[A036561(n), A000040(#)]`
-/

namespace A146985.P10952180041457815746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A146985.P10952180041457815746

/-! ## A146985.P17452905385732224742

`∏{e}[A036561(n), A030475(#)]`
-/

namespace A146985.P17452905385732224742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030475 (Nat.factorization (f1 n).natAbs p)

end

end A146985.P17452905385732224742

/-! ## A146985.P5815820332751719140

`∏{e}[A175840(n), A000040(#)]`
-/

namespace A146985.P5815820332751719140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A146985.P5815820332751719140

/-! ## A146985.P12797692143957949073

`A246029(eq[1, A069010(n+1)])`
-/

namespace A146985.P12797692143957949073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146985.P12797692143957949073

/-!
# A146986: Triangle, read by rows, T(n, k) = binomial(n, k) for n < 2 and binomial(n, k) + 2^(n-1) * binomial(n-2, k-1) otherwise.

The programs for A146986, there is no canonical definition to state claims against.
-/

/-! ## A146986.P4282344221676035886

`(A173046(n)+A132735(n))/2`
-/

namespace A146986.P4282344221676035886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173046 n + A132735 n : ℚ) / 2

end

end A146986.P4282344221676035886

/-! ## A146986.P11884528010696715771

`ceil((A173046(n)+A007318(n))/2)`
-/

namespace A146986.P11884528010696715771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173046 n + A007318 n : ℚ) / 2⌉

end

end A146986.P11884528010696715771

/-! ## A146986.P432382190825605330

`round((A173046(n)+A007318(n))/2)%A055237(n)`
-/

namespace A146986.P432382190825605330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A173046 n + A007318 n : ℚ) / 2)) (A055237 n)

end

end A146986.P432382190825605330

/-! ## A146986.P7755205896135787179

`round((A173046(A000027(n+1)-1)+A007318(n))/2)`
-/

namespace A146986.P7755205896135787179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A173046 (A000027 (n + 1) - 1).toNat + A007318 n : ℚ) / 2)

end

end A146986.P7755205896135787179

/-! ## A146986.P16379128008277198861

`round((A173046(n)+A007318(n))/2)/A014963(6*(n+2))`
-/

namespace A146986.P16379128008277198861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A173046 n + A007318 n : ℚ) / 2) : ℚ) / (A014963 (6 * (n + 2)) : ℚ)

end

end A146986.P16379128008277198861

/-! ## A146986.P427533044740814312

`A000027(round((A173046(n)+A007318(n))/2))`
-/

namespace A146986.P427533044740814312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A173046 n + A007318 n : ℚ) / 2)).toNat

end

end A146986.P427533044740814312

/-! ## A146986.P9190400905320619753

`A014682(A173046(n)+A132735(n))`
-/

namespace A146986.P9190400905320619753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A173046 n + A132735 n).toNat

end

end A146986.P9190400905320619753

/-! ## A146986.P2774948097089027223

`A249122(A173046(n)+A007318(n))+1`
-/

namespace A146986.P2774948097089027223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A173046 n + A007318 n).toNat + 1

end

end A146986.P2774948097089027223

/-!
# A146987: Triangle, read by rows, T(n, k) = binomial(n, k) for n < 2 and binomial(n, k) + 3^(n-1)*binomial(n-2, k -1) otherwise.

The programs for A146987, there is no canonical definition to state claims against.
-/

/-! ## A146987.P4261053162429071493

`A008611(A173047(n)+A132731(n))`
-/

namespace A146987.P4261053162429071493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A173047 n + A132731 n).toNat

end

end A146987.P4261053162429071493

/-! ## A146987.P2539205224388027199

`A107315(A059328(n))`
-/

namespace A146987.P2539205224388027199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107315 (A059328 n).toNat

end

end A146987.P2539205224388027199

/-! ## A146987.P11043919310605246577

`A105363(A099759(n))`
-/

namespace A146987.P11043919310605246577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105363 (A099759 n).toNat

end

end A146987.P11043919310605246577

/-! ## A146987.P7662758286718062364

`A038606(A167040(n))`
-/

namespace A146987.P7662758286718062364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038606 (A167040 n).toNat

end

end A146987.P7662758286718062364

/-! ## A146987.P9063399762177665849

`A083398(A142470(n))`
-/

namespace A146987.P9063399762177665849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083398 (A142470 n).toNat

end

end A146987.P9063399762177665849

/-!
# A146988: Triangle, read by rows, T(n, k) = binomial(n, k) for n < 2 and binomial(n, k) + 4^(n-1) * binomial(n-2, k-1) otherwise.

The programs for A146988, there is no canonical definition to state claims against.
-/

/-! ## A146988.P1641280927618484170

`2*A173152(n)-A007318(n)`
-/

namespace A146988.P1641280927618484170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173152 n - A007318 n

end

end A146988.P1641280927618484170

/-! ## A146988.P9929682919056428625

`2*A173152(n)-sqrt(A008459(n))`
-/

namespace A146988.P9929682919056428625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A173152 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A146988.P9929682919056428625

/-! ## A146988.P7309967656342577647

`2*A173152(n)-ceil(A109128(n)/2)`
-/

namespace A146988.P7309967656342577647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173152 n - ⌈(A109128 n : ℚ) / 2⌉

end

end A146988.P7309967656342577647

/-! ## A146988.P5348262880138761743

`2*A173152(n)-A008619(A109128(n))`
-/

namespace A146988.P5348262880138761743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173152 n - A008619 (A109128 n).toNat

end

end A146988.P5348262880138761743

/-! ## A146988.P12430900123502476639

`A005843(A173152(n))-A007318(n)`
-/

namespace A146988.P12430900123502476639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A173152 n).toNat - A007318 n

end

end A146988.P12430900123502476639

/-!
# A146989: Periodic sequence with period {15,2,1,13,1}.

The programs for A146989, the canonical program `A146989.P16907770665643248522` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146989 has offset 0).

The definition of A146989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146989.P16907770665643248522

`a(n-5)` with `a(0)=15, a(1)=2, a(2)=1, a(3)=13, a(4)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A146989

/-- `a(n-5)` -/
def P16907770665643248522.Spec : Prop :=
  ∀ n, (P16907770665643248522.a n : ℤ) = A146989 n

theorem P16907770665643248522.correct : P16907770665643248522.Spec := by
  intro n
  simp only [A146989]

end A146989

/-!
# A146990: Triangle, read by rows, T(n, k) = binomial(n, k) for n < 2 and binomial(n, k) + n^(n-1) * binomial(n-2, k-1) otherwise.

The programs for A146990, there is no canonical definition to state claims against.
-/

/-! ## A146990.P1282052960650598296

`A006075(A034801(n))`
-/

namespace A146990.P1282052960650598296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006075 (A034801 n).toNat

end

end A146990.P1282052960650598296

/-! ## A146990.P13915066838663815712

`A123229(A022177(n))`
-/

namespace A146990.P13915066838663815712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (A022177 n).toNat

end

end A146990.P13915066838663815712

/-! ## A146990.P12933440017910210967

`A151836(A008300(n))`
-/

namespace A146990.P12933440017910210967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151836 (A008300 n).toNat

end

end A146990.P12933440017910210967

/-! ## A146990.P15418511243418943294

`A151836(A009963(n))`
-/

namespace A146990.P15418511243418943294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151836 (A009963 n).toNat

end

end A146990.P15418511243418943294

/-! ## A146990.P10298499832688256181

`A126004(A091378(n))`
-/

namespace A146990.P10298499832688256181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126004 (A091378 n).toNat

end

end A146990.P10298499832688256181

/-!
# A146991: a(n)=sqrt(A145848(n)).

The programs for A146991, there is no canonical definition to state claims against.
-/

/-! ## A146991.P8626988120643099396

`sqrt(A145848(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A146991.P8626988120643099396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145848 (n + 1) : ℝ)

end

end A146991.P8626988120643099396

/-! ## A146991.P9817745243916476924

`ceil(sqrt(A145848(Δ[n²]-n)))`
-/

namespace A146991.P9817745243916476924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A145848 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ)⌉

end

end A146991.P9817745243916476924

/-! ## A146991.P6981525792638026191

`root(A145848(n+1), ratio[A000079(n)])`
-/

namespace A146991.P6981525792638026191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A145848 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A146991.P6981525792638026191

/-! ## A146991.P7878228126512330648

`root(A145848(n+1), gcd(2, A000038(n)))`
-/

namespace A146991.P7878228126512330648
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A145848 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A000038 n) : ℝ))

end

end A146991.P7878228126512330648

/-! ## A146991.P16059300772620510173

`root(A145848(n+1), A016789(n)%3)`
-/

namespace A146991.P16059300772620510173
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A145848 (n + 1) : ℝ) ^ (1 / (Int.tmod (A016789 n) 3 : ℝ))

end

end A146991.P16059300772620510173

/-!
# A146994: a(n) = (n+1)^2/4 + (floor((n+5)/6) - 1/4) * ((n+1) mod 2).

The programs for A146994, the canonical program `A146994.P10140568411804354397` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146994 has offset 1).

The definition of A146994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146994.P10140568411804354397

`∑[ceil((n+1)*(n%2+1)/3)]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A146994

/-- `∑[ceil((n+1)*(n%2+1)/3)]` -/
def P10140568411804354397.Spec : Prop :=
  ∀ n, P10140568411804354397.a n = A146994 (n + 1)

theorem P10140568411804354397.correct : P10140568411804354397.Spec := by
  intro n
  simp only [A146994, Nat.add_sub_cancel]

end A146994

/-! ## A146994.P7087696785856935990

`∑[ceil((and(1, n)+1)*(n+1)/3)]`
-/

namespace A146994.P7087696785856935990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 1 n + 1 : ℚ) * ((n + 1 : ℚ) / 3)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146994.P7087696785856935990

namespace A146994

/-- `∑[ceil((and(1, n)+1)*(n+1)/3)]` -/
def P7087696785856935990.Spec : Prop :=
  ∀ n, P7087696785856935990.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P1475827665470228438

`∑[round((gcd(2, n+1)*(n+1)+1)/3)]`
-/

namespace A146994.P1475827665470228438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd 2 (n + 1) * (n + 1) + 1 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146994.P1475827665470228438

namespace A146994

/-- `∑[round((gcd(2, n+1)*(n+1)+1)/3)]` -/
def P1475827665470228438.Spec : Prop :=
  ∀ n, P1475827665470228438.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P15914485077949770485

`∑[round((A022998(n+1)+1)/3)]`
-/

namespace A146994.P15914485077949770485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022998 (n + 1) + 1 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146994.P15914485077949770485

namespace A146994

/-- `∑[round((A022998(n+1)+1)/3)]` -/
def P15914485077949770485.Spec : Prop :=
  ∀ n, P15914485077949770485.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P9167683426496960547

`n+1-(A004523(A026741(n+1))-a(n-1))` with `a(0)=1`
-/

namespace A146994.P9167683426496960547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - (A004523 (A026741 (n + 1)).toNat - a (n - 1))

end

end A146994.P9167683426496960547

namespace A146994

/-- `n+1-(A004523(A026741(n+1))-a(n-1))` -/
def P9167683426496960547.Spec : Prop :=
  ∀ n, P9167683426496960547.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P3039055242117982642

`A087483(n+1)-A087483(A004526(n))`
-/

namespace A146994.P3039055242117982642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (n + 1) - A087483 (A004526 n).toNat

end

end A146994.P3039055242117982642

namespace A146994

/-- `A087483(n+1)-A087483(A004526(n))` -/
def P3039055242117982642.Spec : Prop :=
  ∀ n, P3039055242117982642.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P16224499975128760865

`round(A014255(n+1)/3)`
-/

namespace A146994.P16224499975128760865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014255 (n + 1) : ℚ) / 3)

end

end A146994.P16224499975128760865

namespace A146994

/-- `round(A014255(n+1)/3)` -/
def P16224499975128760865.Spec : Prop :=
  ∀ n, P16224499975128760865.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P5257274858595063489

`A393682(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A146994.P5257274858595063489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A393682 (n + 1) - a (n - 1)

end

end A146994.P5257274858595063489

namespace A146994

/-- `A393682(n+1)-a(n-1)` -/
def P5257274858595063489.Spec : Prop :=
  ∀ n, P5257274858595063489.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P2138595563805612414

`ceil((A001082(n+2)+n+1)/3)`
-/

namespace A146994.P2138595563805612414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001082 (n + 2) + (n + 1 : ℤ) : ℚ) / 3⌉

end

end A146994.P2138595563805612414

namespace A146994

/-- `ceil((A001082(n+2)+n+1)/3)` -/
def P2138595563805612414.Spec : Prop :=
  ∀ n, P2138595563805612414.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P12563903892258021869

`A000212(n+2)-A000212(∑[char[2*n]])`
-/

namespace A146994.P12563903892258021869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 2) - A000212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146994.P12563903892258021869

namespace A146994

/-- `A000212(n+2)-A000212(∑[char[2*n]])` -/
def P12563903892258021869.Spec : Prop :=
  ∀ n, P12563903892258021869.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P14420512541938540228

`A008740(A007494(n))`
-/

namespace A146994.P14420512541938540228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A007494 n).toNat

end

end A146994.P14420512541938540228

namespace A146994

/-- `A008740(A007494(n))` -/
def P14420512541938540228.Spec : Prop :=
  ∀ n, P14420512541938540228.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P1769439766613884238

`ceil((A032765(A032766(n+1))+1+n)/3)`
-/

namespace A146994.P1769439766613884238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032765 (A032766 (n + 1)).toNat + 1 + (n : ℤ) : ℚ) / 3⌉

end

end A146994.P1769439766613884238

namespace A146994

/-- `ceil((A032765(A032766(n+1))+1+n)/3)` -/
def P1769439766613884238.Spec : Prop :=
  ∀ n, P1769439766613884238.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P9639754560279288625

`∑[A008620(3*n-lcm(2, n+1)+2)]`
-/

namespace A146994.P9639754560279288625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((3 * n : ℤ) - (Nat.lcm 2 (n + 1) : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146994.P9639754560279288625

namespace A146994

/-- `∑[A008620(3*n-lcm(2, n+1)+2)]` -/
def P9639754560279288625.Spec : Prop :=
  ∀ n, P9639754560279288625.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P7215393443559880267

`∑[ceil((n+1)*A176895(2*n)/3)]`
-/

namespace A146994.P7215393443559880267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) * A176895 (2 * n) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146994.P7215393443559880267

namespace A146994

/-- `∑[ceil((n+1)*A176895(2*n)/3)]` -/
def P7215393443559880267.Spec : Prop :=
  ∀ n, P7215393443559880267.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P11406536219286611484

`A008740(A057353(2*n+1))`
-/

namespace A146994.P11406536219286611484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A057353 (2 * n + 1)).toNat

end

end A146994.P11406536219286611484

namespace A146994

/-- `A008740(A057353(2*n+1))` -/
def P11406536219286611484.Spec : Prop :=
  ∀ n, P11406536219286611484.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P1318609511152376390

`A008740(2*n-A002265(2*n))`
-/

namespace A146994.P1318609511152376390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 ((2 * n : ℤ) - A002265 (2 * n)).toNat

end

end A146994.P1318609511152376390

namespace A146994

/-- `A008740(2*n-A002265(2*n))` -/
def P1318609511152376390.Spec : Prop :=
  ∀ n, P1318609511152376390.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P14529905163186282976

`A008802(A047233(n+1))`
-/

namespace A146994.P14529905163186282976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008802 (A047233 (n + 1)).toNat

end

end A146994.P14529905163186282976

namespace A146994

/-- `A008802(A047233(n+1))` -/
def P14529905163186282976.Spec : Prop :=
  ∀ n, P14529905163186282976.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P13198798351454535284

`A008802(A168210(n+1))`
-/

namespace A146994.P13198798351454535284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008802 (A168210 (n + 1)).toNat

end

end A146994.P13198798351454535284

namespace A146994

/-- `A008802(A168210(n+1))` -/
def P13198798351454535284.Spec : Prop :=
  ∀ n, P13198798351454535284.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P4027125790590866353

`∑[A103221(2*A059029(n))]`
-/

namespace A146994.P4027125790590866353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * A059029 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146994.P4027125790590866353

namespace A146994

/-- `∑[A103221(2*A059029(n))]` -/
def P4027125790590866353.Spec : Prop :=
  ∀ n, P4027125790590866353.a n = A146994 (n + 1)

end A146994

/-! ## A146994.P16381347944176849747

`∩[A004201(n+1), A008740(n)]`
-/

namespace A146994.P16381347944176849747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146994.P16381347944176849747

namespace A146994

/-- `∩[A004201(n+1), A008740(n)]` -/
def P16381347944176849747.Spec : Prop :=
  ∀ n, (P16381347944176849747.a n : ℤ) = A146994 (n + 1)

end A146994

/-!
# A146995: Number of n X n binary arrays with all ones connected only in a 00100-00100-11111 pattern in any orientation.

The programs for A146995, there is no canonical definition to state claims against.
-/

/-! ## A146995.P2789013850114331939

`A146997(2*(n+2))`
-/

namespace A146995.P2789013850114331939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146997 (2 * (n + 2))

end

end A146995.P2789013850114331939

/-! ## A146995.P2906000405461512712

`A146997(A120351(n+1))^ceil(acot(n))`
-/

namespace A146995.P2906000405461512712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146997 (A120351 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A146995.P2906000405461512712

/-! ## A146995.P11120201138989107427

`or(A000007(n), A146997(A120351(n+1)))`
-/

namespace A146995.P11120201138989107427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A146997 (A120351 (n + 1)).toNat)

end

end A146995.P11120201138989107427

/-! ## A146995.P17533720063921214905

`or(A008651(n+3), A146997(A120351(n+1)))`
-/

namespace A146995.P17533720063921214905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008651 (n + 3)) (A146997 (A120351 (n + 1)).toNat)

end

end A146995.P17533720063921214905

/-!
# A146997: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 00100-00100-11111 pattern in any orientation.

The programs for A146997, there is no canonical definition to state claims against.
-/

/-! ## A146997.P11711557959144206483

`A147483(n+1)-A184955(A089633(n))`
-/

namespace A146997.P11711557959144206483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147483 (n + 1) - A184955 (A089633 n).toNat

end

end A146997.P11711557959144206483

/-! ## A146997.P10641437936397724597

`A327499(xor(A327505(n), A327551(n+1)))`
-/

namespace A146997.P10641437936397724597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (Int.xor (A327505 n) (A327551 (n + 1))).toNat

end

end A146997.P10641437936397724597

/-! ## A146997.P14733890406227614465

`A147483(n+1)-A280164(A147498(n+1))`
-/

namespace A146997.P14733890406227614465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147483 (n + 1) - A280164 (A147498 (n + 1)).toNat

end

end A146997.P14733890406227614465

/-! ## A146997.P6200624748842582274

`A147483(n+1)-A184955(A261355(n+3))`
-/

namespace A146997.P6200624748842582274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147483 (n + 1) - A184955 (A261355 (n + 3)).toNat

end

end A146997.P6200624748842582274

/-!
# A146998: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 00100-00100-11111 pattern in any orientation.

The programs for A146998, there is no canonical definition to state claims against.
-/

/-! ## A146998.P11442917884041747504

`A147000(2*(n+2))`
-/

namespace A146998.P11442917884041747504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147000 (2 * (n + 2))

end

end A146998.P11442917884041747504

/-! ## A146998.P15861639812627955042

`or(A054404(A035053(n)), A353682(n+1))`
-/

namespace A146998.P15861639812627955042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054404 (A035053 n).toNat) (A353682 (n + 1))

end

end A146998.P15861639812627955042

/-! ## A146998.P9935123191912104912

`A093003(or(abs(1-n%3)+3*a(n-1), n%4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A146998.P9935123191912104912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  A093003 (Int.lor (|1 - ((n % 3 : ℕ) : ℤ)| + 3 * a (n - 1)) ((n % 4 : ℕ) : ℤ)).toNat

end

end A146998.P9935123191912104912

/-! ## A146998.P11392352300188956459

`A182220(A088022(n))`
-/

namespace A146998.P11392352300188956459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A088022 n).toNat

end

end A146998.P11392352300188956459

/-! ## A146998.P1565844816953922783

`A226066(A350249(n))`
-/

namespace A146998.P1565844816953922783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226066 (A350249 n).toNat

end

end A146998.P1565844816953922783

/-!
# A146999: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 00100-00100-11111 pattern in any orientation.

The programs for A146999, there is no canonical definition to state claims against.
-/

/-! ## A146999.P10608313657976948910

`A094802(A147485(n+1))`
-/

namespace A146999.P10608313657976948910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A147485 (n + 1)).toNat

end

end A146999.P10608313657976948910

/-! ## A146999.P13815362013795415551

`A006530(C(A147485(n+1), A002265(n)))`
-/

namespace A146999.P13815362013795415551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A147485 (n + 1)).toNat (A002265 n).toNat)

end

end A146999.P13815362013795415551

/-! ## A146999.P16925841480512628400

`A006530(C(A147485(n+1), A225631(n)))`
-/

namespace A146999.P16925841480512628400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A147485 (n + 1)).toNat (A225631 n).toNat)

end

end A146999.P16925841480512628400

/-! ## A146999.P12885464083439704551

`A332284(n)+A000351(A185245(3*(n+1)))`
-/

namespace A146999.P12885464083439704551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332284 n + A000351 (A185245 (3 * (n + 1))).toNat

end

end A146999.P12885464083439704551

/-! ## A146999.P15549448389853137972

`A006530(C(A147485(n+1), A147502(n+1)))`
-/

namespace A146999.P15549448389853137972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A147485 (n + 1)).toNat (A147502 (n + 1)).toNat)

end

end A146999.P15549448389853137972

