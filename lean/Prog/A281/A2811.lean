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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A281100: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A281100, there is no canonical definition to state claims against.
-/

/-! ## A281100.P17367011728009489180

`A000225(n+2)-A282909(n+1)`
-/

namespace A281100.P17367011728009489180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A282909 (n + 1)

end

end A281100.P17367011728009489180

/-! ## A281100.P13330136785562257563

`A000225(A057427(n)+1+n)%A282909(n+1)`
-/

namespace A281100.P13330136785562257563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A057427 n + 1 + (n : ℤ)).toNat) (A282909 (n + 1))

end

end A281100.P13330136785562257563

/-! ## A281100.P676921659046480319

`A000027(A000225(n+2)%A282909(n+1))`
-/

namespace A281100.P676921659046480319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A000225 (n + 2)) (A282909 (n + 1))).toNat

end

end A281100.P676921659046480319

/-! ## A281100.P10201559981734659488

`A000225(A187829(n+2))%A282909(n+1)`
-/

namespace A281100.P10201559981734659488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A187829 (n + 2)).toNat) (A282909 (n + 1))

end

end A281100.P10201559981734659488

/-! ## A281100.P6925422615443484255

`A035327(A282909(n+1))`
-/

namespace A281100.P6925422615443484255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A282909 (n + 1)).toNat

end

end A281100.P6925422615443484255

/-!
# A281101: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A281101, there is no canonical definition to state claims against.
-/

/-! ## A281101.P3922223275668315457

`A030101(A281100(n)/A254524(n+1)²)`
-/

namespace A281101.P3922223275668315457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A281100 n : ℚ) / (A254524 (n + 1) ^ 2 : ℚ))).toNat

end

end A281101.P3922223275668315457

/-! ## A281101.P1936850763372068908

`A325401(lcm(2, A281100(n)))`
-/

namespace A281101.P1936850763372068908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A281100 n))

end

end A281101.P1936850763372068908

/-! ## A281101.P2907871907391095345

`A325401(A177704(n)*A281100(n))`
-/

namespace A281101.P2907871907391095345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A177704 n * A281100 n).toNat

end

end A281101.P2907871907391095345

/-! ## A281101.P9531512498384486059

`A325401(A160467(n+1)*A281100(n))`
-/

namespace A281101.P9531512498384486059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A160467 (n + 1) * A281100 n).toNat

end

end A281101.P9531512498384486059

/-! ## A281101.P9790620375387430752

`A030101(A281100(n)/A074389(n+1))`
-/

namespace A281101.P9790620375387430752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A281100 n : ℚ) / (A074389 (n + 1) : ℚ))).toNat

end

end A281101.P9790620375387430752

/-!
# A281102: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 324", based on the 5-celled von Neumann neighborhood.

The programs for A281102, there is no canonical definition to state claims against.
-/

/-! ## A281102.P10820206743806001087

`A007088(A281104(n))`
-/

namespace A281102.P10820206743806001087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281104 n).toNat

end

end A281102.P10820206743806001087

/-! ## A281102.P13762270206502592331

`A007088(A126646(n+1)-A284139(n+1))`
-/

namespace A281102.P13762270206502592331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 (n + 1) - A284139 (n + 1)).toNat

end

end A281102.P13762270206502592331

/-! ## A281102.P14144493243271778998

`A007088(A000225(n+2)-A284139(n+1))`
-/

namespace A281102.P14144493243271778998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A284139 (n + 1)).toNat

end

end A281102.P14144493243271778998

/-! ## A281102.P3835362970619268196

`A256078(A284139(n+1))`
-/

namespace A281102.P3835362970619268196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A284139 (n + 1)).toNat

end

end A281102.P3835362970619268196

/-! ## A281102.P3920145395109801810

`A185544(2*A281104(n))`
-/

namespace A281102.P3920145395109801810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281104 n).toNat

end

end A281102.P3920145395109801810

/-!
# A281103: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 324", based on the 5-celled von Neumann neighborhood.

The programs for A281103, there is no canonical definition to state claims against.
-/

/-! ## A281103.P9226316245984273854

`A007088(A281105(n))`
-/

namespace A281103.P9226316245984273854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281105 n).toNat

end

end A281103.P9226316245984273854

/-! ## A281103.P14177408584023273365

`A305989(A281104(n))`
-/

namespace A281103.P14177408584023273365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A281104 n).toNat

end

end A281103.P14177408584023273365

/-! ## A281103.P18412538737979797042

`A305989(A126646(n+1)-A284139(n+1))`
-/

namespace A281103.P18412538737979797042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A126646 (n + 1) - A284139 (n + 1)).toNat

end

end A281103.P18412538737979797042

/-! ## A281103.P17996853735478938620

`A305989(A000225(n+2)-A284139(n+1))`
-/

namespace A281103.P17996853735478938620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A000225 (n + 2) - A284139 (n + 1)).toNat

end

end A281103.P17996853735478938620

/-! ## A281103.P3633675409386207158

`A039724(A281105(n)+A024164(3*n+5))`
-/

namespace A281103.P3633675409386207158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039724 (A281105 n + A024164 (3 * n + 5)).toNat

end

end A281103.P3633675409386207158

/-!
# A281104: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 324", based on the 5-celled von Neumann neighborhood.

The programs for A281104, there is no canonical definition to state claims against.
-/

/-! ## A281104.P8511464414769141587

`A126646(n+1)-A284139(n+1)`
-/

namespace A281104.P8511464414769141587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A284139 (n + 1)

end

end A281104.P8511464414769141587

/-! ## A281104.P11039855236013129972

`A000225(n+2)-A284139(n+1)`
-/

namespace A281104.P11039855236013129972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A284139 (n + 1)

end

end A281104.P11039855236013129972

/-! ## A281104.P7736260767493758240

`A000225(A028310(n)+2)%A284139(n+1)`
-/

namespace A281104.P7736260767493758240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A028310 n + 2).toNat) (A284139 (n + 1))

end

end A281104.P7736260767493758240

/-! ## A281104.P9671289949550742909

`A284139(n)-and(A284139(n+1), A284139(n))`
-/

namespace A281104.P9671289949550742909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284139 n - Int.land (A284139 (n + 1)) (A284139 n)

end

end A281104.P9671289949550742909

/-! ## A281104.P14236644463981982933

`A126646(n+1)%A284139(A008619(2*n+1))`
-/

namespace A281104.P14236644463981982933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 (n + 1)) (A284139 (A008619 (2 * n + 1)).toNat)

end

end A281104.P14236644463981982933

/-!
# A281105: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 324", based on the 5-celled von Neumann neighborhood.

The programs for A281105, there is no canonical definition to state claims against.
-/

/-! ## A281105.P2934074241769539668

`A030101(A281104(n))`
-/

namespace A281105.P2934074241769539668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A281104 n).toNat

end

end A281105.P2934074241769539668

/-! ## A281105.P10550441913730078952

`A325401(lcm(2, A281104(n)))`
-/

namespace A281105.P10550441913730078952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A281104 n))

end

end A281105.P10550441913730078952

/-! ## A281105.P10390088422490609547

`A325401(A219347(n)*A281104(n))`
-/

namespace A281105.P10390088422490609547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A219347 n * A281104 n).toNat

end

end A281105.P10390088422490609547

/-! ## A281105.P7366981593506274830

`A379015(A046951(n+1)*A281104(n))`
-/

namespace A281105.P7366981593506274830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379015 (A046951 (n + 1) * A281104 n).toNat

end

end A281105.P7366981593506274830

/-! ## A281105.P14905211687052952288

`A030101(A126646(n+1)-A284139(n+1))`
-/

namespace A281105.P14905211687052952288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A126646 (n + 1) - A284139 (n + 1)).toNat

end

end A281105.P14905211687052952288

/-!
# A281106: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A281106, there is no canonical definition to state claims against.
-/

/-! ## A281106.P3642212178174573726

`A007088(A281108(n))`
-/

namespace A281106.P3642212178174573726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281108 n).toNat

end

end A281106.P3642212178174573726

/-! ## A281106.P13175893816862086371

`A007088(∑[A198633(n)]-A283389(n+1))`
-/

namespace A281106.P13175893816862086371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j - A283389 (n + 1)).toNat

end

end A281106.P13175893816862086371

/-! ## A281106.P10989189166982866024

`A007088(A000225(n+2)-A283389(n+1))`
-/

namespace A281106.P10989189166982866024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A283389 (n + 1)).toNat

end

end A281106.P10989189166982866024

/-! ## A281106.P15411871021726650638

`A007088(A198633(n+1)-(A283389(n+1)+1))`
-/

namespace A281106.P15411871021726650638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 (n + 1) - (A283389 (n + 1) + 1)).toNat

end

end A281106.P15411871021726650638

/-! ## A281106.P8258708079122477328

`A185544(2*A281108(n))`
-/

namespace A281106.P8258708079122477328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281108 n).toNat

end

end A281106.P8258708079122477328

/-!
# A281107: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A281107, there is no canonical definition to state claims against.
-/

/-! ## A281107.P2242190173345696975

`A007088(A281109(n))`
-/

namespace A281107.P2242190173345696975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281109 n).toNat

end

end A281107.P2242190173345696975

/-! ## A281107.P3579388249612184558

`A305989(A281108(n))`
-/

namespace A281107.P3579388249612184558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A281108 n).toNat

end

end A281107.P3579388249612184558

/-! ## A281107.P15564068305313583183

`A185544(2*A281109(n))`
-/

namespace A281107.P15564068305313583183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281109 n).toNat

end

end A281107.P15564068305313583183

/-! ## A281107.P5397241274781436214

`A185544(lcm(2, A281109(n)))`
-/

namespace A281107.P5397241274781436214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A281109 n))

end

end A281107.P5397241274781436214

/-! ## A281107.P13342509049172578760

`A305989(∑[A198633(n)]-A283389(n+1))`
-/

namespace A281107.P13342509049172578760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (∑ j ∈ Finset.range (n + 1), f1 j - A283389 (n + 1)).toNat

end

end A281107.P13342509049172578760

/-!
# A281108: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A281108, there is no canonical definition to state claims against.
-/

/-! ## A281108.P2488125532684567437

`∑[A198633(n)]-A283389(n+1)`
-/

namespace A281108.P2488125532684567437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283389 (n + 1)

end

end A281108.P2488125532684567437

/-! ## A281108.P3522638543085690322

`A000225(n+2)-A283389(n+1)`
-/

namespace A281108.P3522638543085690322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A283389 (n + 1)

end

end A281108.P3522638543085690322

/-! ## A281108.P7253946634629374866

`A198633(n+1)-(A283389(n+1)+1)`
-/

namespace A281108.P7253946634629374866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 1) - (A283389 (n + 1) + 1)

end

end A281108.P7253946634629374866

/-! ## A281108.P13712695425901405124

`A000225(round(sqrt(n²+1))+2)%A283389(n+1)`
-/

namespace A281108.P13712695425901405124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 2).toNat) (A283389 (n + 1))

end

end A281108.P13712695425901405124

/-! ## A281108.P4357633105882275228

`A000203(A131577(n+2))-A283389(n+1)`
-/

namespace A281108.P4357633105882275228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A131577 (n + 2)).toNat - A283389 (n + 1)

end

end A281108.P4357633105882275228

/-!
# A281109: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 326", based on the 5-celled von Neumann neighborhood.

The programs for A281109, there is no canonical definition to state claims against.
-/

/-! ## A281109.P328323153361029534

`A030101(A281108(n))`
-/

namespace A281109.P328323153361029534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A281108 n).toNat

end

end A281109.P328323153361029534

/-! ## A281109.P10813994487760652533

`A325401(2*A281108(n))`
-/

namespace A281109.P10813994487760652533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A281108 n).toNat

end

end A281109.P10813994487760652533

/-! ## A281109.P16918127981865560640

`A325401(lcm(2, A281108(n)))`
-/

namespace A281109.P16918127981865560640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A281108 n))

end

end A281109.P16918127981865560640

/-! ## A281109.P11512491826989161915

`A030101(∑[A198633(n)]-A283389(n+1))`
-/

namespace A281109.P11512491826989161915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∑ j ∈ Finset.range (n + 1), f1 j - A283389 (n + 1)).toNat

end

end A281109.P11512491826989161915

/-! ## A281109.P3519909638007591002

`A030101(A000225(n+2)-A283389(n+1))`
-/

namespace A281109.P3519909638007591002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A000225 (n + 2) - A283389 (n + 1)).toNat

end

end A281109.P3519909638007591002

/-!
# A281111: Numbers k such that 97*10^k - 3 is prime.

The programs for A281111, there is no canonical definition to state claims against.
-/

/-! ## A281111.P16811353733153540650

`eq[A000007(n), A069584(A363336(n))]`
-/

namespace A281111.P16811353733153540650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069584 (A363336 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281111.P16811353733153540650

/-! ## A281111.P4079014182521649932

`lt[A353762(3*n+1)%A109352(3*(n+1)), A334428(3*n+1)]`
-/

namespace A281111.P4079014182521649932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353762 (3 * n + 1)) (A109352 (3 * (n + 1)))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334428 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281111.P4079014182521649932

/-!
# A281113: Number of twice-factorizations of n. Number of ways to choose a postpositive factorization of each part of a postpositive factorization of n.

The programs for A281113, there is no canonical definition to state claims against.
-/

/-! ## A281113.P9217843862116718646

`or(A022003(n), A317144(A061898(n+2)))`
-/

namespace A281113.P9217843862116718646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022003 n) (A317144 (A061898 (n + 2)).toNat)

end

end A281113.P9217843862116718646

/-! ## A281113.P10560192623633477490

`or(A010052(A280580(n)), A050336(n+2))`
-/

namespace A281113.P10560192623633477490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (A280580 n).toNat) (A050336 (n + 2))

end

end A281113.P10560192623633477490

/-! ## A281113.P14796349376438343972

`or(A270803(A000978(n+1)), A317144(n+2))`
-/

namespace A281113.P14796349376438343972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A270803 (A000978 (n + 1)).toNat) (A317144 (n + 2))

end

end A281113.P14796349376438343972

/-! ## A281113.P5011992706529678200

`or(A010054(A058013(2*(n+2))), A050336(n+2))`
-/

namespace A281113.P5011992706529678200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A058013 (2 * (n + 2))).toNat) (A050336 (n + 2))

end

end A281113.P5011992706529678200

/-! ## A281113.P17832288003501720481

`or(A010054(A283755(2*(n+1))), A317144(n+2))`
-/

namespace A281113.P17832288003501720481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A283755 (2 * (n + 1))).toNat) (A317144 (n + 2))

end

end A281113.P17832288003501720481

/-!
# A281114: Parity of the n-th squarefree triangular number.

The programs for A281114, the canonical program `A281114.P8895505097088031617` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281114 has offset 1).

The definition of A281114 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061304, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281114.P8895505097088031617

`A061304(n+1)%2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A281114

/-- `A061304(n+1)%2` -/
def P8895505097088031617.Spec : Prop :=
  ∀ n, P8895505097088031617.a n = A281114 (n + 1)

theorem P8895505097088031617.correct : P8895505097088031617.Spec := by
  intro n
  simp only [A281114, Nat.add_sub_cancel]

end A281114

/-! ## A281114.P16438368915308680650

`A000217(A215726(n+1))%2`
-/

namespace A281114.P16438368915308680650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A215726 (n + 1)).toNat) 2

end

end A281114.P16438368915308680650

namespace A281114

/-- `A000217(A215726(n+1))%2` -/
def P16438368915308680650.Spec : Prop :=
  ∀ n, P16438368915308680650.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P11917075571721211084

`and(1, A061304(A000027(n+1)))`
-/

namespace A281114.P11917075571721211084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061304 (A000027 (n + 1)).toNat)

end

end A281114.P11917075571721211084

namespace A281114

/-- `and(1, A061304(A000027(n+1)))` -/
def P11917075571721211084.Spec : Prop :=
  ∀ n, P11917075571721211084.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P7274869277706613255

`and(A061304(n+1), A158388(n))`
-/

namespace A281114.P7274869277706613255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061304 (n + 1)) (A158388 n)

end

end A281114.P7274869277706613255

namespace A281114

/-- `and(A061304(n+1), A158388(n))` -/
def P7274869277706613255.Spec : Prop :=
  ∀ n, P7274869277706613255.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P12884277428619130115

`and(A061304(n+1), A267537(n))`
-/

namespace A281114.P12884277428619130115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061304 (n + 1)) (A267537 n)

end

end A281114.P12884277428619130115

namespace A281114

/-- `and(A061304(n+1), A267537(n))` -/
def P12884277428619130115.Spec : Prop :=
  ∀ n, P12884277428619130115.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P14707506819011513058

`and(A061304(n+1), A267871(n))`
-/

namespace A281114.P14707506819011513058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061304 (n + 1)) (A267871 n)

end

end A281114.P14707506819011513058

namespace A281114

/-- `and(A061304(n+1), A267871(n))` -/
def P14707506819011513058.Spec : Prop :=
  ∀ n, P14707506819011513058.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P6512245986863894012

`record[A139131(n+1)]%2`
-/

namespace A281114.P6512245986863894012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A281114.P6512245986863894012

namespace A281114

/-- `record[A139131(n+1)]%2` -/
def P6512245986863894012.Spec : Prop :=
  ∀ n, P6512245986863894012.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P2440795507800421677

`2-gcd(2, record[A085037(n+1)])`
-/

namespace A281114.P2440795507800421677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℤ)

end

end A281114.P2440795507800421677

namespace A281114

/-- `2-gcd(2, record[A085037(n+1)])` -/
def P2440795507800421677.Spec : Prop :=
  ∀ n, P2440795507800421677.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P14169136390925756319

`A330323(A215726(n+1))²`
-/

namespace A281114.P14169136390925756319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330323 (A215726 (n + 1)).toNat ^ 2

end

end A281114.P14169136390925756319

namespace A281114

/-- `A330323(A215726(n+1))²` -/
def P14169136390925756319.Spec : Prop :=
  ∀ n, P14169136390925756319.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P14077164192210002470

`A021913(A215726(n+1)+1)`
-/

namespace A281114.P14077164192210002470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A215726 (n + 1) + 1).toNat

end

end A281114.P14077164192210002470

namespace A281114

/-- `A021913(A215726(n+1)+1)` -/
def P14077164192210002470.Spec : Prop :=
  ∀ n, P14077164192210002470.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P6769899971215014287

`(3-record[∏{p}[∑[n], #]]^5)%2+1`
-/

namespace A281114.P6769899971215014287
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 5 : ℤ)) 2 + 1

end

end A281114.P6769899971215014287

namespace A281114

/-- `(3-record[∏{p}[∑[n], #]]^5)%2+1` -/
def P6769899971215014287.Spec : Prop :=
  ∀ n, P6769899971215014287.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P13711705229038755940

`and(A001222(A061324(n+1)), A061304(n+1))`
-/

namespace A281114.P13711705229038755940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A061324 (n + 1)).toNat) (A061304 (n + 1))

end

end A281114.P13711705229038755940

namespace A281114

/-- `and(A001222(A061324(n+1)), A061304(n+1))` -/
def P13711705229038755940.Spec : Prop :=
  ∀ n, P13711705229038755940.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P8594969000413894895

`and(A048578(n), A061304(n+1))`
-/

namespace A281114.P8594969000413894895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A061304 (n + 1))

end

end A281114.P8594969000413894895

namespace A281114

/-- `and(A048578(n), A061304(n+1))` -/
def P8594969000413894895.Spec : Prop :=
  ∀ n, P8594969000413894895.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P2415153691554704025

`and(A061304(n+1), A066827(n+1))`
-/

namespace A281114.P2415153691554704025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061304 (n + 1)) (A066827 (n + 1))

end

end A281114.P2415153691554704025

namespace A281114

/-- `and(A061304(n+1), A066827(n+1))` -/
def P2415153691554704025.Spec : Prop :=
  ∀ n, P2415153691554704025.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P12233595307810845509

`and(A020737(n), A061304(n+1))`
-/

namespace A281114.P12233595307810845509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A061304 (n + 1))

end

end A281114.P12233595307810845509

namespace A281114

/-- `and(A020737(n), A061304(n+1))` -/
def P12233595307810845509.Spec : Prop :=
  ∀ n, P12233595307810845509.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P1283387529397478287

`and(A061304(n+1), A195744(n))`
-/

namespace A281114.P1283387529397478287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061304 (n + 1)) (A195744 n)

end

end A281114.P1283387529397478287

namespace A281114

/-- `and(A061304(n+1), A195744(n))` -/
def P1283387529397478287.Spec : Prop :=
  ∀ n, P1283387529397478287.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P3956092091685465311

`and(A061304(n+1), A122041(n+1))`
-/

namespace A281114.P3956092091685465311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061304 (n + 1)) (A122041 (n + 1))

end

end A281114.P3956092091685465311

namespace A281114

/-- `and(A061304(n+1), A122041(n+1))` -/
def P3956092091685465311.Spec : Prop :=
  ∀ n, P3956092091685465311.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P11894916651661108166

`and(A061304(n+1), A196657(n))`
-/

namespace A281114.P11894916651661108166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061304 (n + 1)) (A196657 n)

end

end A281114.P11894916651661108166

namespace A281114

/-- `and(A061304(n+1), A196657(n))` -/
def P11894916651661108166.Spec : Prop :=
  ∀ n, P11894916651661108166.a n = A281114 (n + 1)

end A281114

/-! ## A281114.P16163130363787230456

`and(A048479(n), A061304(n+1))`
-/

namespace A281114.P16163130363787230456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A061304 (n + 1))

end

end A281114.P16163130363787230456

namespace A281114

/-- `and(A048479(n), A061304(n+1))` -/
def P16163130363787230456.Spec : Prop :=
  ∀ n, P16163130363787230456.a n = A281114 (n + 1)

end A281114

/-!
# A281116: Number of factorizations of n>=2 into factors greater than 1 with no common divisor other than 1 (a(1)=0 by convention).

The programs for A281116, there is no canonical definition to state claims against.
-/

/-! ## A281116.P336058346204581611

`Δ[A096276(n)]-A319786(n+1)`
-/

namespace A281116.P336058346204581611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A319786 (n + 1)

end

end A281116.P336058346204581611

/-! ## A281116.P250660583856628382

`A001055(n+1)-A319786(n+1)`
-/

namespace A281116.P250660583856628382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A319786 (n + 1)

end

end A281116.P250660583856628382

/-! ## A281116.P8367544253262523111

`A028422(n+1)+1-A319786(n+1)`
-/

namespace A281116.P8367544253262523111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + (1 - A319786 (n + 1))

end

end A281116.P8367544253262523111

/-! ## A281116.P12432727672276395377

`A050322(A101296(n+1))-A319786(n+1)`
-/

namespace A281116.P12432727672276395377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (A101296 (n + 1)).toNat - A319786 (n + 1)

end

end A281116.P12432727672276395377

/-! ## A281116.P7575285130515298205

`A318284(A181819(n+1))-A319786(n+1)`
-/

namespace A281116.P7575285130515298205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A181819 (n + 1)).toNat - A319786 (n + 1)

end

end A281116.P7575285130515298205

/-! ## A281116.P18355942426333955840

`A349907(A064988(n+1))-A319786(n+1)`
-/

namespace A281116.P18355942426333955840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (A064988 (n + 1)).toNat - A319786 (n + 1)

end

end A281116.P18355942426333955840

/-! ## A281116.P9729719171868822624

`A001055(n+1)-A327658(n+1)`
-/

namespace A281116.P9729719171868822624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A327658 (n + 1)

end

end A281116.P9729719171868822624

/-! ## A281116.P9387505961514642573

`A327400(n+1)-A089723(n+1)`
-/

namespace A281116.P9387505961514642573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - A089723 (n + 1)

end

end A281116.P9387505961514642573

/-! ## A281116.P8855571571743216648

`round(A327400(n+1)-sqrt(A295920(n+1)))`
-/

namespace A281116.P8855571571743216648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A327400 (n + 1) : ℝ) - Real.sqrt (A295920 (n + 1) : ℝ))

end

end A281116.P8855571571743216648

/-!
# A281118: a(1)=1, a(n>1) = number of tree-factorizations of n.

The programs for A281118, there is no canonical definition to state claims against.
-/

/-! ## A281118.P6234258191906372471

`A318847(A181819(n+1))`
-/

namespace A281118.P6234258191906372471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (A181819 (n + 1)).toNat

end

end A281118.P6234258191906372471

/-! ## A281118.P168928496530014925

`A318847(∏{e}[n+1, A028864(#)])`
-/

namespace A281118.P168928496530014925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (∏ p ∈ Nat.primeFactors (f1 n), A028864 (Nat.factorization (f1 n) p)).toNat

end

end A281118.P168928496530014925

/-! ## A281118.P9735645953731825204

`A318847(∏{e}[n+1, A030291(#)])`
-/

namespace A281118.P9735645953731825204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (∏ p ∈ Nat.primeFactors (f1 n), A030291 (Nat.factorization (f1 n) p)).toNat

end

end A281118.P9735645953731825204

/-! ## A281118.P7269516226949260620

`A318847(∏{e}[n+1, A061022(#)])`
-/

namespace A281118.P7269516226949260620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (∏ p ∈ Nat.primeFactors (f1 n), A061022 (Nat.factorization (f1 n) p)).toNat

end

end A281118.P7269516226949260620

/-! ## A281118.P10034796282165566151

`A318847(A295878((n+1)²/∏{p}[n+1, #]))`
-/

namespace A281118.P10034796282165566151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (A295878 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A281118.P10034796282165566151

/-!
# A281119: Number of complete tree-factorizations of n >= 2.

The programs for A281119, there is no canonical definition to state claims against.
-/

/-! ## A281119.P15840664094670903710

`A318848(A181819(n+2))`
-/

namespace A281119.P15840664094670903710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318848 (A181819 (n + 2)).toNat

end

end A281119.P15840664094670903710

/-! ## A281119.P1695868827469560320

`A292505(n+2)+A133010(A292505(n+2))`
-/

namespace A281119.P1695868827469560320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292505 (n + 2) + A133010 (A292505 (n + 2)).toNat

end

end A281119.P1695868827469560320

/-! ## A281119.P14132685157879923920

`A292505(n+2)+A121373(A239123(n+1))`
-/

namespace A281119.P14132685157879923920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292505 (n + 2) + A121373 (A239123 (n + 1)).toNat

end

end A281119.P14132685157879923920

/-! ## A281119.P16101299257181773119

`A247064(A292505(n+2)%A100933(n+1))`
-/

namespace A281119.P16101299257181773119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (Int.tmod (A292505 (n + 2)) (A100933 (n + 1))).toNat

end

end A281119.P16101299257181773119

/-! ## A281119.P15032652943876977895

`A247064(A292505(n+2))%A133277(n+1)`
-/

namespace A281119.P15032652943876977895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247064 (A292505 (n + 2)).toNat) (A133277 (n + 1))

end

end A281119.P15032652943876977895

/-!
# A281121: a(n) = gcd(A281120(n), A281120(2n)).

The programs for A281121, there is no canonical definition to state claims against.
-/

/-! ## A281121.P5298271268537219428

`gcd(A281120(n+1), A281120(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A281121.P5298271268537219428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281120 (n + 1)) (A281120 (2 * (n + 1)))

end

end A281121.P5298271268537219428

/-!
# A281122: Triangle T read by rows: n-th row (n>=0) gives the non-vanishing coefficients of the polynomial q(n,x) = ((x+1)^(2^n) - (x-1)^(2^n))/2.

The programs for A281122, the canonical program `A281122.P114872565162045204` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281122 has offset 0).

The definition of A281122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281122.P114872565162045204

`A345135(Δ[n²])`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A281122

/-- `A345135(Δ[n²])` -/
def P114872565162045204.Spec : Prop :=
  ∀ n, P114872565162045204.a n = A281122 n

theorem P114872565162045204.correct : P114872565162045204.Spec := by
  intro n
  simp only [A281122]

end A281122

/-! ## A281122.P12617691381342443950

`2*A345135(2*n+1)-A345135(2*n+1)`
-/

namespace A281122.P12617691381342443950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345135 (2 * n + 1) - A345135 (2 * n + 1)

end

end A281122.P12617691381342443950

namespace A281122

/-- `2*A345135(2*n+1)-A345135(2*n+1)` -/
def P12617691381342443950.Spec : Prop :=
  ∀ n, P12617691381342443950.a n = A281122 n

end A281122

/-! ## A281122.P1472637861333631469

`A345135(n+1+n)+A128975(A085194(n))`
-/

namespace A281122.P1472637861333631469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 (n + 1 + n) + A128975 (A085194 n).toNat

end

end A281122.P1472637861333631469

namespace A281122

/-- `A345135(n+1+n)+A128975(A085194(n))` -/
def P1472637861333631469.Spec : Prop :=
  ∀ n, P1472637861333631469.a n = A281122 n

end A281122

/-! ## A281122.P2311415076501106824

`A345135(n+1+n)+A063962(A007821(n+1))`
-/

namespace A281122.P2311415076501106824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 (n + 1 + n) + A063962 (A007821 (n + 1)).toNat

end

end A281122.P2311415076501106824

namespace A281122

/-- `A345135(n+1+n)+A063962(A007821(n+1))` -/
def P2311415076501106824.Spec : Prop :=
  ∀ n, P2311415076501106824.a n = A281122 n

end A281122

/-! ## A281122.P7542956153702140609

`C(A062383(n), A006257(n))`
-/

namespace A281122.P7542956153702140609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062383 n).toNat (A006257 n).toNat

end

end A281122.P7542956153702140609

namespace A281122

/-- `C(A062383(n), A006257(n))` -/
def P7542956153702140609.Spec : Prop :=
  ∀ n, (P7542956153702140609.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P5943134010477023641

`C(A003817(n)+1, A006257(n))`
-/

namespace A281122.P5943134010477023641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003817 n + 1).toNat (A006257 n).toNat

end

end A281122.P5943134010477023641

namespace A281122

/-- `C(A003817(n)+1, A006257(n))` -/
def P5943134010477023641.Spec : Prop :=
  ∀ n, (P5943134010477023641.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P4355366405276689842

`C(A053644(2*n), A006257(n))`
-/

namespace A281122.P4355366405276689842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053644 (2 * n)).toNat (A006257 n).toNat

end

end A281122.P4355366405276689842

namespace A281122

/-- `C(A053644(2*n), A006257(n))` -/
def P4355366405276689842.Spec : Prop :=
  ∀ n, (P4355366405276689842.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P10410311114642226067

`C(A062383(n), A035327(2*n))`
-/

namespace A281122.P10410311114642226067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062383 n).toNat (A035327 (2 * n)).toNat

end

end A281122.P10410311114642226067

namespace A281122

/-- `C(A062383(n), A035327(2*n))` -/
def P10410311114642226067.Spec : Prop :=
  ∀ n, (P10410311114642226067.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P7684988095419081577

`C(A062383(n), A053645(Δ[n²]))`
-/

namespace A281122.P7684988095419081577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062383 n).toNat (A053645 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A281122.P7684988095419081577

namespace A281122

/-- `C(A062383(n), A053645(Δ[n²]))` -/
def P7684988095419081577.Spec : Prop :=
  ∀ n, (P7684988095419081577.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P614092562514446402

`C(A062383(n), A266539(Δ[n²]))`
-/

namespace A281122.P614092562514446402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062383 n).toNat (A266539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A281122.P614092562514446402

namespace A281122

/-- `C(A062383(n), A266539(Δ[n²]))` -/
def P614092562514446402.Spec : Prop :=
  ∀ n, (P614092562514446402.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P16437424139245217675

`C(A053644(2*n), A053645(2*n+1))`
-/

namespace A281122.P16437424139245217675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053644 (2 * n)).toNat (A053645 (2 * n + 1)).toNat

end

end A281122.P16437424139245217675

namespace A281122

/-- `C(A053644(2*n), A053645(2*n+1))` -/
def P16437424139245217675.Spec : Prop :=
  ∀ n, (P16437424139245217675.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P12731259184452742950

`C(A099894(A003817(n)), A006257(n))`
-/

namespace A281122.P12731259184452742950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099894 (A003817 n).toNat).toNat (A006257 n).toNat

end

end A281122.P12731259184452742950

namespace A281122

/-- `C(A099894(A003817(n)), A006257(n))` -/
def P12731259184452742950.Spec : Prop :=
  ∀ n, (P12731259184452742950.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P7693525687849485946

`C(A099894(A086099(2*n)), A006257(n))`
-/

namespace A281122.P7693525687849485946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099894 (A086099 (2 * n)).toNat).toNat (A006257 n).toNat

end

end A281122.P7693525687849485946

namespace A281122

/-- `C(A099894(A086099(2*n)), A006257(n))` -/
def P7693525687849485946.Spec : Prop :=
  ∀ n, (P7693525687849485946.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P16589132116528438445

`C(A099894(2*n-A006257(n)), A006257(n))`
-/

namespace A281122.P16589132116528438445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099894 ((2 * n : ℤ) - A006257 n).toNat).toNat (A006257 n).toNat

end

end A281122.P16589132116528438445

namespace A281122

/-- `C(A099894(2*n-A006257(n)), A006257(n))` -/
def P16589132116528438445.Spec : Prop :=
  ∀ n, (P16589132116528438445.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P5225886564014748123

`C(A062383(n), A000027(n+1)-(A062383(n)-n))`
-/

namespace A281122.P5225886564014748123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062383 n).toNat (A000027 (n + 1) - (A062383 n - (n : ℤ))).toNat

end

end A281122.P5225886564014748123

namespace A281122

/-- `C(A062383(n), A000027(n+1)-(A062383(n)-n))` -/
def P5225886564014748123.Spec : Prop :=
  ∀ n, (P5225886564014748123.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P17540400886994758499

`C(A000010(A062383(2*n+1)), 2*n+1-A062383(n))`
-/

namespace A281122.P17540400886994758499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (A062383 (2 * n + 1)).toNat).toNat ((2 * n + 1 : ℤ) - A062383 n).toNat

end

end A281122.P17540400886994758499

namespace A281122

/-- `C(A000010(A062383(2*n+1)), 2*n+1-A062383(n))` -/
def P17540400886994758499.Spec : Prop :=
  ∀ n, (P17540400886994758499.a n : ℤ) = A281122 n

end A281122

/-! ## A281122.P18404044948678961739

`A345135(2*n+1)*A345135(A062383(2*n))`
-/

namespace A281122.P18404044948678961739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 (2 * n + 1) * A345135 (A062383 (2 * n)).toNat

end

end A281122.P18404044948678961739

namespace A281122

/-- `A345135(2*n+1)*A345135(A062383(2*n))` -/
def P18404044948678961739.Spec : Prop :=
  ∀ n, P18404044948678961739.a n = A281122 n

end A281122

/-! ## A281122.P14536317788983718751

`gcd(A345135(2*n+1)*A345135(n+1), A345135(2*n+1))`
-/

namespace A281122.P14536317788983718751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345135 (2 * n + 1) * A345135 (n + 1)) (A345135 (2 * n + 1))

end

end A281122.P14536317788983718751

namespace A281122

/-- `gcd(A345135(2*n+1)*A345135(n+1), A345135(2*n+1))` -/
def P14536317788983718751.Spec : Prop :=
  ∀ n, (P14536317788983718751.a n : ℤ) = A281122 n

end A281122

/-!
# A281123: Triangle T read by rows: n-th row (n>=0) gives the non-vanishing coefficients of the polynomial q(n,x) = 2^(-n)*((x+1)^(2^n) - (x-1)^(2^n))/2.

The programs for A281123, there is no canonical definition to state claims against.
-/

/-! ## A281123.P425651311852395225

`A054724(lt[A070918(n), A113350(n)])`
-/

namespace A281123.P425651311852395225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054724 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A281123.P425651311852395225

/-! ## A281123.P4996854813833836688

`ceil(∏{p}[A281122(n), #]/2)`
-/

namespace A281123.P4996854813833836688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) / 2⌉

end

end A281123.P4996854813833836688

/-! ## A281123.P14357165722795058077

`A000265(∏{p}[A281122(n), #])`
-/

namespace A281123.P14357165722795058077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A281123.P14357165722795058077

/-! ## A281123.P7242915810630480306

`∏{p}[A281122(n), A111618(#)]`
-/

namespace A281123.P7242915810630480306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A111618 p

end

end A281123.P7242915810630480306

/-! ## A281123.P6727773540773887236

`A000265(A281122(n))`
-/

namespace A281123.P6727773540773887236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A281122 n).toNat

end

end A281123.P6727773540773887236

/-!
# A281124: Number of n X 2 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281124, there is no canonical definition to state claims against.
-/

/-! ## A281124.P11224072786363408662

`A281129(∑[n+1]+2)`
-/

namespace A281124.P11224072786363408662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281124.P11224072786363408662

/-! ## A281124.P6608576056126147200

`lcm(2, A281129(A000096(n)+3))`
-/

namespace A281124.P6608576056126147200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281129 (A000096 n + 3).toNat)

end

end A281124.P6608576056126147200

/-! ## A281124.P5831372268551593335

`record[A010054(n)*A281129(n+2)]`
-/

namespace A281124.P5831372268551593335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A281129 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281124.P5831372268551593335

/-! ## A281124.P679620720853263036

`record[A281129(A133263(val(n+1, 2)+1))]`
-/

namespace A281124.P679620720853263036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281124.P679620720853263036

/-! ## A281124.P16639595884384164033

`record[A281129(∑[A152271(n)])]`
-/

namespace A281124.P16639595884384164033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281124.P16639595884384164033

/-!
# A281125: Number of nX3 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281125, there is no canonical definition to state claims against.
-/

/-! ## A281125.P3009398000907141543

`A281129(∑[n+2]+4)`
-/

namespace A281125.P3009398000907141543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281125.P3009398000907141543

/-! ## A281125.P2218345768423022970

`lcm((-1)^n, A281129(A167614(n+1)))`
-/

namespace A281125.P2218345768423022970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A281129 (A167614 (n + 1)).toNat)

end

end A281125.P2218345768423022970

/-! ## A281125.P10598814477285184132

`record[gcd(A092921(n+1), A281129(n+5))]`
-/

namespace A281125.P10598814477285184132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 (n + 1)) (A281129 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281125.P10598814477285184132

/-! ## A281125.P12197835762114093799

`A281129(A167614(n+1))+A006927(n)`
-/

namespace A281125.P12197835762114093799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A167614 (n + 1)).toNat + A006927 n

end

end A281125.P12197835762114093799

/-! ## A281125.P2576026891326555747

`A281129(A167614(n+1))+A011730(n)`
-/

namespace A281125.P2576026891326555747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A167614 (n + 1)).toNat + A011730 n

end

end A281125.P2576026891326555747

/-!
# A281126: Number of nX4 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281126, there is no canonical definition to state claims against.
-/

/-! ## A281126.P10186522295151541654

`A281129(A145018(n+4))`
-/

namespace A281126.P10186522295151541654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A145018 (n + 4)).toNat

end

end A281126.P10186522295151541654

/-! ## A281126.P9060246592245884115

`A281129(A141214(n)+7)`
-/

namespace A281126.P9060246592245884115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A141214 n + 7).toNat

end

end A281126.P9060246592245884115

/-! ## A281126.P15908921894712931066

`A281129(A052905(n)+9)`
-/

namespace A281126.P15908921894712931066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A052905 n + 9).toNat

end

end A281126.P15908921894712931066

/-! ## A281126.P14353694257127407288

`A281129(A055999(n)+10)`
-/

namespace A281126.P14353694257127407288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A055999 n + 10).toNat

end

end A281126.P14353694257127407288

/-! ## A281126.P1084933376963114218

`A281129(eq[5, A066657(n)])`
-/

namespace A281126.P1084933376963114218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281126.P1084933376963114218

/-!
# A281127: Number of nX5 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281127, there is no canonical definition to state claims against.
-/

/-! ## A281127.P7841908179038315981

`A281129(A167499(n+3))`
-/

namespace A281127.P7841908179038315981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A167499 (n + 3)).toNat

end

end A281127.P7841908179038315981

/-! ## A281127.P3456623666748636848

`A281129(A155212(n)+13)`
-/

namespace A281127.P3456623666748636848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A155212 n + 13).toNat

end

end A281127.P3456623666748636848

/-! ## A281127.P14858095883959494086

`A281129(A056000(n)+15)`
-/

namespace A281127.P14858095883959494086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A056000 n + 15).toNat

end

end A281127.P14858095883959494086

/-! ## A281127.P4784830180306990767

`A281129(eq[7, A066657(n)])`
-/

namespace A281127.P4784830180306990767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281127.P4784830180306990767

/-! ## A281127.P12637161376116385664

`A281129(A166136(n+3)-1)`
-/

namespace A281127.P12637161376116385664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A166136 (n + 3) - 1).toNat

end

end A281127.P12637161376116385664

/-!
# A281128: Number of nX6 0..2 arrays with no element equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281128, there is no canonical definition to state claims against.
-/

/-! ## A281128.P6869100702462450128

`A281129(A056115(n)+21)`
-/

namespace A281128.P6869100702462450128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A056115 n + 21).toNat

end

end A281128.P6869100702462450128

/-! ## A281128.P5920270741455458521

`A281129(A167499(n+4)+1)`
-/

namespace A281128.P5920270741455458521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A167499 (n + 4) + 1).toNat

end

end A281128.P5920270741455458521

/-! ## A281128.P11839815441826985553

`A281129(A000096(n+4)+7)`
-/

namespace A281128.P11839815441826985553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A000096 (n + 4) + 7).toNat

end

end A281128.P11839815441826985553

/-! ## A281128.P2954389031658885311

`A281129(A000217(n+5)+6)`
-/

namespace A281128.P2954389031658885311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A000217 (n + 5) + 6).toNat

end

end A281128.P2954389031658885311

/-! ## A281128.P88798492744930534

`A281129(A027379(n+3)+9)`
-/

namespace A281128.P88798492744930534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281129 (A027379 (n + 3) + 9).toNat

end

end A281128.P88798492744930534

/-!
# A281130: a(n+1) = a(n-a(n)) if a(n-1) < a(n), otherwise a(n+1) = 2*a(n); a(1) = a(2) = 1.

The programs for A281130, there is no canonical definition to state claims against.
-/

/-! ## A281130.P16645011283389487086

`2^A291598(n+1)`
-/

namespace A281130.P16645011283389487086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A291598 (n + 1) : ℤ)

end

end A281130.P16645011283389487086

/-! ## A281130.P14783638797572422966

`A000079(A291598(n+1))`
-/

namespace A281130.P14783638797572422966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A291598 (n + 1)).toNat

end

end A281130.P14783638797572422966

/-! ## A281130.P17747740123426587608

`A077957(2*A291598(n+1))`
-/

namespace A281130.P17747740123426587608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * A291598 (n + 1)).toNat

end

end A281130.P17747740123426587608

/-! ## A281130.P10479981654173783866

`A098293(2*A291598(n+1))`
-/

namespace A281130.P10479981654173783866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098293 (2 * A291598 (n + 1)).toNat

end

end A281130.P10479981654173783866

/-! ## A281130.P7150287055720419964

`A152166(2*A291598(n+1))`
-/

namespace A281130.P7150287055720419964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 (2 * A291598 (n + 1)).toNat

end

end A281130.P7150287055720419964

/-! ## A281130.P1012621530890584614

`A220051(A291598(n+1)%(n+1))`
-/

namespace A281130.P1012621530890584614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220051 (Int.tmod (A291598 (n + 1)) (n + 1 : ℤ)).toNat

end

end A281130.P1012621530890584614

/-!
# A281132: Number of n X n 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281132, there is no canonical definition to state claims against.
-/

/-! ## A281132.P17072497292301450108

`A281139(∑[4*n]+1)`
-/

namespace A281132.P17072497292301450108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281132.P17072497292301450108

/-! ## A281132.P6211266026576845276

`A281139(A001844(n))+char[18]`
-/

namespace A281132.P6211266026576845276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281132.P6211266026576845276

/-! ## A281132.P13323478894804865470

`A326683(n)+A281139(A001844(n))`
-/

namespace A281132.P13323478894804865470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A281139 (A001844 n).toNat

end

end A281132.P13323478894804865470

/-! ## A281132.P10907041583263443557

`A281139(A001844(n))%A028158(n)`
-/

namespace A281132.P10907041583263443557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281139 (A001844 n).toNat) (A028158 n)

end

end A281132.P10907041583263443557

/-! ## A281132.P1508277960393717278

`lcm(A033999(n), A281139(A001844(n)))`
-/

namespace A281132.P1508277960393717278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A281139 (A001844 n).toNat)

end

end A281132.P1508277960393717278

/-!
# A281133: Number of n X 2 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281133, there is no canonical definition to state claims against.
-/

/-! ## A281133.P3549427516826498345

`A281139(∑[n+1]+2)`
-/

namespace A281133.P3549427516826498345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281133.P3549427516826498345

/-! ## A281133.P11904119693792273906

`lcm(2, A281139(A133263(n+1)))`
-/

namespace A281133.P11904119693792273906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281139 (A133263 (n + 1)).toNat)

end

end A281133.P11904119693792273906

/-! ## A281133.P16299899870577173787

`char[A007318(n)]*A281139(A000096(n)+3)`
-/

namespace A281133.P16299899870577173787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A281139 (A000096 n + 3).toNat

end

end A281133.P16299899870577173787

/-! ## A281133.P11373529613337715508

`A007318(C(2, n))*A281139(A000096(n)+3)`
-/

namespace A281133.P11373529613337715508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281139 (A000096 n + 3).toNat

end

end A281133.P11373529613337715508

/-! ## A281133.P12204141470671434371

`and(-A000041(n+1), A281139(A000096(n)+3))`
-/

namespace A281133.P12204141470671434371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000041 (n + 1)) (A281139 (A000096 n + 3).toNat)

end

end A281133.P12204141470671434371

/-!
# A281134: Number of nX3 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281134, there is no canonical definition to state claims against.
-/

/-! ## A281134.P5230064216097897799

`A281139(∑[n+2]+4)`
-/

namespace A281134.P5230064216097897799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281134.P5230064216097897799

/-! ## A281134.P9833804270116832568

`or(char[2], A281139(A167614(n+1)))`
-/

namespace A281134.P9833804270116832568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281139 (A167614 (n + 1)).toNat)

end

end A281134.P9833804270116832568

/-! ## A281134.P5306060384368804482

`record[gcd(A281139(n+1), A334568(n))]`
-/

namespace A281134.P5306060384368804482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281139 (n + 1)) (A334568 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281134.P5306060384368804482

/-! ## A281134.P1535095814778319513

`gcd(A151933(n), A281139(A167614(n+1)))`
-/

namespace A281134.P1535095814778319513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A281139 (A167614 (n + 1)).toNat)

end

end A281134.P1535095814778319513

/-! ## A281134.P1698483429725370695

`A281139(A167614(n+1))+A000007(n+1)`
-/

namespace A281134.P1698483429725370695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A281134.P1698483429725370695

/-!
# A281135: Number of nX4 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281135, there is no canonical definition to state claims against.
-/

/-! ## A281135.P2672985624296425634

`A281139(∑[n+3]+7)`
-/

namespace A281135.P2672985624296425634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281135.P2672985624296425634

/-! ## A281135.P18147653763932706906

`lcm(2, A281139(A167614(n+2)+1))`
-/

namespace A281135.P18147653763932706906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281139 (A167614 (n + 2) + 1).toNat)

end

end A281135.P18147653763932706906

/-! ## A281135.P9010791347851615485

`A007318(C(n, 30))*A281139(A167614(n+2)+1)`
-/

namespace A281135.P9010791347851615485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 30) * A281139 (A167614 (n + 2) + 1).toNat

end

end A281135.P9010791347851615485

/-! ## A281135.P14197974556722175593

`A000041(C(2, n+2))*A281139(A167614(n+2)+1)`
-/

namespace A281135.P14197974556722175593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A281139 (A167614 (n + 2) + 1).toNat

end

end A281135.P14197974556722175593

/-! ## A281135.P1640740332983713976

`A281139(A167614(n+2)+1)/A007318(C(n+2, 2))`
-/

namespace A281135.P1640740332983713976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281139 (A167614 (n + 2) + 1).toNat : ℚ) / (A007318 (Nat.choose (n + 2) 2) : ℚ)

end

end A281135.P1640740332983713976

/-!
# A281136: Number of nX5 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281136, there is no canonical definition to state claims against.
-/

/-! ## A281136.P16111182236975197344

`A281139(∑[n+4]+11)`
-/

namespace A281136.P16111182236975197344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A281136.P16111182236975197344

/-! ## A281136.P8419927760301362313

`A281139(A055998(n+2)+8)+char[28]`
-/

namespace A281136.P8419927760301362313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A055998 (n + 2) + 8).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281136.P8419927760301362313

/-! ## A281136.P7900203139039521624

`A007318(and(2, -n))*A281139(A055998(n+2)+8)`
-/

namespace A281136.P7900203139039521624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat * A281139 (A055998 (n + 2) + 8).toNat

end

end A281136.P7900203139039521624

/-! ## A281136.P2650967572864666656

`ceil(1/A000041(n))*A281139(A055998(n+2)+8)`
-/

namespace A281136.P2650967572864666656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A281139 (A055998 (n + 2) + 8).toNat

end

end A281136.P2650967572864666656

/-! ## A281136.P2404457972117825791

`A007318(C(n, n²))*A281139(A055998(n+2)+8)`
-/

namespace A281136.P2404457972117825791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n ^ 2)) * A281139 (A055998 (n + 2) + 8).toNat

end

end A281136.P2404457972117825791

/-!
# A281137: Number of nX6 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281137, there is no canonical definition to state claims against.
-/

/-! ## A281137.P3299905017374204277

`A281139(A374007(n+1))`
-/

namespace A281137.P3299905017374204277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A374007 (n + 1)).toNat

end

end A281137.P3299905017374204277

/-! ## A281137.P14645772937675327458

`A281139(A166136(n+4))`
-/

namespace A281137.P14645772937675327458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A166136 (n + 4)).toNat

end

end A281137.P14645772937675327458

/-! ## A281137.P6984872572568618953

`A281139(A056115(n)+21)`
-/

namespace A281137.P6984872572568618953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A056115 n + 21).toNat

end

end A281137.P6984872572568618953

/-! ## A281137.P17644581696691728229

`A281139(A167499(n+4)+1)`
-/

namespace A281137.P17644581696691728229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A167499 (n + 4) + 1).toNat

end

end A281137.P17644581696691728229

/-! ## A281137.P16675893286311967660

`A281139(A167614(n+4)+3)`
-/

namespace A281137.P16675893286311967660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A167614 (n + 4) + 3).toNat

end

end A281137.P16675893286311967660

/-!
# A281138: Number of n X 7 0..2 arrays with no element equal to more than one of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281138, there is no canonical definition to state claims against.
-/

/-! ## A281138.P17183871305118228493

`A281139(A374008(n+1))`
-/

namespace A281138.P17183871305118228493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A374008 (n + 1)).toNat

end

end A281138.P17183871305118228493

/-! ## A281138.P2879885195650734287

`A281139(A056119(n)+28)`
-/

namespace A281138.P2879885195650734287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A056119 n + 28).toNat

end

end A281138.P2879885195650734287

/-! ## A281138.P14482929871362231146

`A281139(A167499(n+5)+2)`
-/

namespace A281138.P14482929871362231146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A167499 (n + 5) + 2).toNat

end

end A281138.P14482929871362231146

/-! ## A281138.P12846605005658927984

`A281139(A167614(n+5)+4)`
-/

namespace A281138.P12846605005658927984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A167614 (n + 5) + 4).toNat

end

end A281138.P12846605005658927984

/-! ## A281138.P9739347500505861024

`A281139(A000124(n+6)+6)`
-/

namespace A281138.P9739347500505861024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (A000124 (n + 6) + 6).toNat

end

end A281138.P9739347500505861024

/-!
# A281145: Number of same-trees of weight n.

The programs for A281145, there is no canonical definition to state claims against.
-/

/-! ## A281145.P3024689560258829946

`A316789(2^(n+1))`
-/

namespace A281145.P3024689560258829946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (2 ^ (n + 1))

end

end A281145.P3024689560258829946

/-! ## A281145.P1909547796873626219

`abs(A316789(A011782(n+2))-1)+1`
-/

namespace A281145.P1909547796873626219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316789 (A011782 (n + 2)).toNat - 1| + 1

end

end A281145.P1909547796873626219

/-! ## A281145.P12640494189848970566

`A316789(A151821(n+1))+(2*n)%2`
-/

namespace A281145.P12640494189848970566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (A151821 (n + 1)).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A281145.P12640494189848970566

/-! ## A281145.P15557267546745010446

`A316789(A198633(n))+A011731(n)`
-/

namespace A281145.P15557267546745010446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (A198633 n).toNat + A011731 n

end

end A281145.P15557267546745010446

/-! ## A281145.P10694105093992984021

`A316789(A198633(n))+A061858(n)`
-/

namespace A281145.P10694105093992984021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (A198633 n).toNat + A061858 n

end

end A281145.P10694105093992984021

/-!
# A281146: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

The programs for A281146, the canonical program `A281146.P821833077912013293` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281146 has offset 0).

The definition of A281146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281146.P821833077912013293

`A267051(n)-11%A011557(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281146

/-- `A267051(n)-11%A011557(n)` -/
def P821833077912013293.Spec : Prop :=
  ∀ n, P821833077912013293.a n = A281146 n

theorem P821833077912013293.correct : P821833077912013293.Spec := by
  intro n
  simp only [A281146]

end A281146

/-! ## A281146.P1909837874563545003

`A007088(record[abs(A153772(n))])`
-/

namespace A281146.P1909837874563545003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153772 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A281146.P1909837874563545003

namespace A281146

/-- `A007088(record[abs(A153772(n))])` -/
def P1909837874563545003.Spec : Prop :=
  ∀ n, P1909837874563545003.a n = A281146 n

end A281146

/-! ## A281146.P15164402166859872071

`A007088(record[abs(2-A078008(n))])`
-/

namespace A281146.P15164402166859872071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A078008 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A281146.P15164402166859872071

namespace A281146

/-- `A007088(record[abs(2-A078008(n))])` -/
def P15164402166859872071.Spec : Prop :=
  ∀ n, P15164402166859872071.a n = A281146 n

end A281146

/-! ## A281146.P10444431893585927087

`A007088(record[abs(A230096(2*n)-2)])`
-/

namespace A281146.P10444431893585927087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A230096 (2 * n) - 2|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A281146.P10444431893585927087

namespace A281146

/-- `A007088(record[abs(A230096(2*n)-2)])` -/
def P10444431893585927087.Spec : Prop :=
  ∀ n, P10444431893585927087.a n = A281146 n

end A281146

/-! ## A281146.P7004463739465266679

`A007088(and(A026644(n), A290073(n)))`
-/

namespace A281146.P7004463739465266679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A026644 n) (A290073 n)).toNat

end

end A281146.P7004463739465266679

namespace A281146

/-- `A007088(and(A026644(n), A290073(n)))` -/
def P7004463739465266679.Spec : Prop :=
  ∀ n, P7004463739465266679.a n = A281146 n

end A281146

/-!
# A281147: a(n) is the maximum number of moves available to one side from a legal chess position with n pieces with promoted pieces allowed.

The programs for A281147, there is no canonical definition to state claims against.
-/

/-! ## A281147.P12432524380116955295

`A397483(n+1)+A001741(n)`
-/

namespace A281147.P12432524380116955295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397483 (n + 1) + A001741 n

end

end A281147.P12432524380116955295

/-!
# A281149: Elias gamma code (EGC) for n.

The programs for A281149, the canonical program `A281149.P12904850799090773250` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281149 has offset 1).

The definition of A281149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281149.P12904850799090773250

`A007088(A171885(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A281149

/-- `A007088(A171885(n+1))` -/
def P12904850799090773250.Spec : Prop :=
  ∀ n, P12904850799090773250.a n = A281149 (n + 1)

theorem P12904850799090773250.correct : P12904850799090773250.Spec := by
  intro n
  simp only [A281149, Nat.add_sub_cancel]

end A281149

/-! ## A281149.P2397108435930962737

`A185544(2*A171885(n+1))`
-/

namespace A281149.P2397108435930962737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A171885 (n + 1)).toNat

end

end A281149.P2397108435930962737

namespace A281149

/-- `A185544(2*A171885(n+1))` -/
def P2397108435930962737.Spec : Prop :=
  ∀ n, P2397108435930962737.a n = A281149 (n + 1)

end A281149

/-! ## A281149.P3944048833219588227

`record[A281150(n+1)/A007088(n+1)]`
-/

namespace A281149.P3944048833219588227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281150 (n + 1) : ℚ) / (A007088 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281149.P3944048833219588227

namespace A281149

/-- `record[A281150(n+1)/A007088(n+1)]` -/
def P3944048833219588227.Spec : Prop :=
  ∀ n, P3944048833219588227.a n = (A281149 (n + 1) : ℚ)

end A281149

/-! ## A281149.P2092726540675516589

`A281150(A000079(n))/A011557(n)`
-/

namespace A281149.P2092726540675516589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281150 (A000079 n).toNat : ℚ) / (A011557 n : ℚ)

end

end A281149.P2092726540675516589

namespace A281149

/-- `A281150(A000079(n))/A011557(n)` -/
def P2092726540675516589.Spec : Prop :=
  ∀ n, P2092726540675516589.a n = (A281149 (n + 1) : ℚ)

end A281149

/-! ## A281149.P1689614456800476203

`record[A281150(n+1)/A185544(2*(n+1))]`
-/

namespace A281149.P1689614456800476203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281150 (n + 1) : ℚ) / (A185544 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281149.P1689614456800476203

namespace A281149

/-- `record[A281150(n+1)/A185544(2*(n+1))]` -/
def P1689614456800476203.Spec : Prop :=
  ∀ n, P1689614456800476203.a n = (A281149 (n + 1) : ℚ)

end A281149

/-!
# A281150: Elias delta code for n.

The programs for A281150, there is no canonical definition to state claims against.
-/

/-! ## A281150.P9245497655530833425

`A007088(A281225(n+1))`
-/

namespace A281150.P9245497655530833425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281225 (n + 1)).toNat

end

end A281150.P9245497655530833425

/-! ## A281150.P3411444066262055879

`A185544(2*A281225(n+1))`
-/

namespace A281150.P3411444066262055879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281225 (n + 1)).toNat

end

end A281150.P3411444066262055879

/-! ## A281150.P289922408382718824

`A185544(A281225(n+1)+A281225(n+1))`
-/

namespace A281150.P289922408382718824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A281225 (n + 1) + A281225 (n + 1)).toNat

end

end A281150.P289922408382718824

/-!
# A281151: a(n) = floor(4*n*(n+1)/5).

The programs for A281151, the canonical program `A281151.P6868807474568268614` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281151 has offset 0).

The definition of A281151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*n*(n+1)/5)` (program `A281151.P6868807474568268614`, by `A281151.P6868807474568268614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281151.P6868807474568268614

`floor(4*n*(n+1)/5)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281151

/-- `floor(4*n*(n+1)/5)` -/
def P6868807474568268614.Spec : Prop :=
  ∀ n, P6868807474568268614.a n = A281151 n

theorem P6868807474568268614.correct : P6868807474568268614.Spec := by
  intro n
  simp only [A281151]

end A281151

/-! ## A281151.P17467770774148162118

`a(n-5)+8*(n-2)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9, a(4)=16`
-/

namespace A281151.P17467770774148162118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 9, 16] fun n a =>
  a (n - 5) + 8 * ((n : ℤ) - 2)

end

end A281151.P17467770774148162118

namespace A281151

/-- `a(n-5)+8*(n-2)` -/
def P17467770774148162118.Spec : Prop :=
  ∀ n, P17467770774148162118.a n = A281151 n

end A281151

/-! ## A281151.P12229227630971657649

`∑[comp[or(2, n)+n]]`
-/

namespace A281151.P12229227630971657649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P12229227630971657649

namespace A281151

/-- `∑[comp[or(2, n)+n]]` -/
def P12229227630971657649.Spec : Prop :=
  ∀ n, (P12229227630971657649.a n : ℤ) = A281151 n

end A281151

/-! ## A281151.P11119059960624611426

`∑[∪[2*n+1, 8*n]]`
-/

namespace A281151.P11119059960624611426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P11119059960624611426

namespace A281151

/-- `∑[∪[2*n+1, 8*n]]` -/
def P11119059960624611426.Spec : Prop :=
  ∀ n, (P11119059960624611426.a n : ℤ) = A281151 n

end A281151

/-! ## A281151.P9303967603459674284

`∑[comp[2*(n+1)-and(2, n)]]`
-/

namespace A281151.P9303967603459674284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (Nat.land 2 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P9303967603459674284

namespace A281151

/-- `∑[comp[2*(n+1)-and(2, n)]]` -/
def P9303967603459674284.Spec : Prop :=
  ∀ n, (P9303967603459674284.a n : ℤ) = A281151 n

end A281151

/-! ## A281151.P17667204163028594502

`∑[a(n-5)+8]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=7`
-/

namespace A281151.P17667204163028594502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5, 7] fun n f1 =>
  f1 (n - 5) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P17667204163028594502

namespace A281151

/-- `∑[a(n-5)+8]` -/
def P17667204163028594502.Spec : Prop :=
  ∀ n, (P17667204163028594502.a n : ℤ) = A281151 n

end A281151

/-! ## A281151.P13626930856337598322

`∑[∑[gcd(2, ∑[(n+1)%5])]-1]`
-/

namespace A281151.P13626930856337598322
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P13626930856337598322

namespace A281151

/-- `∑[∑[gcd(2, ∑[(n+1)%5])]-1]` -/
def P13626930856337598322.Spec : Prop :=
  ∀ n, P13626930856337598322.a n = A281151 n

end A281151

/-! ## A281151.P7757517693185379080

`∑[∑[floor(a(n-5))]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=2, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A281151.P7757517693185379080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 2, 1] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P7757517693185379080

namespace A281151

/-- `∑[∑[floor(a(n-5))]]` -/
def P7757517693185379080.Spec : Prop :=
  ∀ n, (P7757517693185379080.a n : ℤ) = A281151 n

end A281151

/-! ## A281151.P13541016703750430275

`∑[∑[3-gcd(a(n-2), a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A281151.P13541016703750430275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  3 - (Int.gcd (f2 (n - 2)) (f2 (n - 3)) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P13541016703750430275

namespace A281151

/-- `∑[∑[3-gcd(a(n-2), a(n-3))]]` -/
def P13541016703750430275.Spec : Prop :=
  ∀ n, P13541016703750430275.a n = A281151 n

end A281151

/-! ## A281151.P8036195115077591597

`∑[A047486(n+1)]`
-/

namespace A281151.P8036195115077591597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P8036195115077591597

namespace A281151

/-- `∑[A047486(n+1)]` -/
def P8036195115077591597.Spec : Prop :=
  ∀ n, P8036195115077591597.a n = A281151 n

end A281151

/-! ## A281151.P4592208978210295436

`∑[lt[A114567(n+1), 4]]`
-/

namespace A281151.P4592208978210295436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P4592208978210295436

namespace A281151

/-- `∑[lt[A114567(n+1), 4]]` -/
def P4592208978210295436.Spec : Prop :=
  ∀ n, (P4592208978210295436.a n : ℤ) = A281151 n

end A281151

/-! ## A281151.P1507675215314188749

`∑[comp[A004277(comp[4*n])]]`
-/

namespace A281151.P1507675215314188749
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P1507675215314188749

namespace A281151

/-- `∑[comp[A004277(comp[4*n])]]` -/
def P1507675215314188749.Spec : Prop :=
  ∀ n, (P1507675215314188749.a n : ℤ) = A281151 n

end A281151

/-! ## A281151.P3560219173209413577

`A001844(n)-A265078(n)`
-/

namespace A281151.P3560219173209413577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A265078 n

end

end A281151.P3560219173209413577

namespace A281151

/-- `A001844(n)-A265078(n)` -/
def P3560219173209413577.Spec : Prop :=
  ∀ n, P3560219173209413577.a n = A281151 n

end A281151

/-! ## A281151.P2136319956049712949

`A301719(n)-A001844(n)`
-/

namespace A281151.P2136319956049712949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301719 n - A001844 n

end

end A281151.P2136319956049712949

namespace A281151

/-- `A301719(n)-A001844(n)` -/
def P2136319956049712949.Spec : Prop :=
  ∀ n, P2136319956049712949.a n = A281151 n

end A281151

/-! ## A281151.P1140868865806872447

`A398052(n)-A130520(n)`
-/

namespace A281151.P1140868865806872447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n - A130520 n

end

end A281151.P1140868865806872447

namespace A281151

/-- `A398052(n)-A130520(n)` -/
def P1140868865806872447.Spec : Prop :=
  ∀ n, P1140868865806872447.a n = A281151 n

end A281151

/-! ## A281151.P4591519735558459136

`A033437(n+1)+A033437(n)`
-/

namespace A281151.P4591519735558459136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 (n + 1) + A033437 n

end

end A281151.P4591519735558459136

namespace A281151

/-- `A033437(n+1)+A033437(n)` -/
def P4591519735558459136.Spec : Prop :=
  ∀ n, P4591519735558459136.a n = A281151 n

end A281151

/-! ## A281151.P13361681490339613350

`∑[comp[1-Δ[xor(3, n)²]]]`
-/

namespace A281151.P13361681490339613350
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P13361681490339613350

namespace A281151

/-- `∑[comp[1-Δ[xor(3, n)²]]]` -/
def P13361681490339613350.Spec : Prop :=
  ∀ n, (P13361681490339613350.a n : ℤ) = A281151 n

end A281151

/-! ## A281151.P13356759792988498102

`∑[comp[2*n*A177704(n)+2]]`
-/

namespace A281151.P13356759792988498102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A177704 n) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P13356759792988498102

namespace A281151

/-- `∑[comp[2*n*A177704(n)+2]]` -/
def P13356759792988498102.Spec : Prop :=
  ∀ n, (P13356759792988498102.a n : ℤ) = A281151 n

end A281151

/-! ## A281151.P4941200803023060302

`∑[comp[2*(A059029(n)-1)]]`
-/

namespace A281151.P4941200803023060302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059029 n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281151.P4941200803023060302

namespace A281151

/-- `∑[comp[2*(A059029(n)-1)]]` -/
def P4941200803023060302.Spec : Prop :=
  ∀ n, (P4941200803023060302.a n : ℤ) = A281151 n

end A281151

/-! ## A281151.P7807997944339214498

`A036404(Δ[n²])-1`
-/

namespace A281151.P7807997944339214498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A281151.P7807997944339214498

namespace A281151

/-- `A036404(Δ[n²])-1` -/
def P7807997944339214498.Spec : Prop :=
  ∀ n, P7807997944339214498.a n = A281151 n

end A281151

/-!
# A281153: Least number k such that Sum_{j=k..k+n-1}{j^2} = Sum_{j=k+n..t}{j^2}, for some t >= k+n.

The programs for A281153, there is no canonical definition to state claims against.
-/

/-! ## A281153.P17745360788806426459

`A000217(2*(n+1))%A039932(A342386(2*n+3))`
-/

namespace A281153.P17745360788806426459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (2 * (n + 1))) (A039932 (A342386 (2 * n + 3)).toNat)

end

end A281153.P17745360788806426459

/-! ## A281153.P9700702516264290744

`∑[A004767(n)]%A339816(A019565(2*n+3))`
-/

namespace A281153.P9700702516264290744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A339816 (A019565 (2 * n + 3)).toNat)

end

end A281153.P9700702516264290744

/-! ## A281153.P7785957890674523739

`A000217(2*(n+1))%Δ[A155180(n+1)]`
-/

namespace A281153.P7785957890674523739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (2 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A281153.P7785957890674523739

/-! ## A281153.P12993907292604000337

`∑[A004767(n)]%A158010(A213916(n+1))`
-/

namespace A281153.P12993907292604000337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A158010 (A213916 (n + 1)).toNat)

end

end A281153.P12993907292604000337

/-! ## A281153.P1371687545217126711

`A014105(n+1)%A158010(A213916(n+1))`
-/

namespace A281153.P1371687545217126711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014105 (n + 1)) (A158010 (A213916 (n + 1)).toNat)

end

end A281153.P1371687545217126711

/-!
# A281154: Expansion of (Sum_{k>=2} x^(k^2))^2.

The programs for A281154, there is no canonical definition to state claims against.
-/

/-! ## A281154.P13043011085681760037

`A063725(n%A135329(n))`
-/

namespace A281154.P13043011085681760037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (Int.tmod (n : ℤ) (A135329 n)).toNat

end

end A281154.P13043011085681760037

/-! ## A281154.P10534900356027708743

`and(A063725(n), A151949(A000700(3*n+4)))`
-/

namespace A281154.P10534900356027708743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063725 n) (A151949 (A000700 (3 * n + 4)).toNat)

end

end A281154.P10534900356027708743

/-! ## A281154.P13418656825440365600

`and(A038722(A269690(n+1)), A063725(n))`
-/

namespace A281154.P13418656825440365600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038722 (A269690 (n + 1)).toNat) (A063725 n)

end

end A281154.P13418656825440365600

/-! ## A281154.P3998846223789678313

`A063725(n*A027052(n)²)`
-/

namespace A281154.P3998846223789678313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 ((n : ℤ) * A027052 n ^ 2).toNat

end

end A281154.P3998846223789678313

/-! ## A281154.P9012189012460042650

`and(A063725(n), A121037(A352268(n+1)))`
-/

namespace A281154.P9012189012460042650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063725 n) (A121037 (A352268 (n + 1)).toNat)

end

end A281154.P9012189012460042650

/-!
# A281155: Expansion of (Sum_{k>=2} x^(k^2))^3.

The programs for A281155, there is no canonical definition to state claims against.
-/

/-! ## A281155.P7075639399425503714

`A279948(n)+A279948(A293808(n))`
-/

namespace A281155.P7075639399425503714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279948 n + A279948 (A293808 n).toNat

end

end A281155.P7075639399425503714

/-! ## A281155.P9295318285504344024

`A279948(A297943(n+1))+A279948(n)`
-/

namespace A281155.P9295318285504344024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279948 (A297943 (n + 1)).toNat + A279948 n

end

end A281155.P9295318285504344024

/-! ## A281155.P14800738558809581209

`A279948(A205017(n+1))+A279948(n)`
-/

namespace A281155.P14800738558809581209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279948 (A205017 (n + 1)).toNat + A279948 n

end

end A281155.P14800738558809581209

/-! ## A281155.P2039900227037815847

`A279948(A318343(n+1))+A279948(n)`
-/

namespace A281155.P2039900227037815847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279948 (A318343 (n + 1)).toNat + A279948 n

end

end A281155.P2039900227037815847

/-!
# A281156: Expansion of Product_{k>=1} (1 + x^k)^(k*(k+1)*(2*k+1)/6).

The programs for A281156, there is no canonical definition to state claims against.
-/

/-! ## A281156.P16334834874456800262

`A193259(ceil(3^(n-1)))`
-/

namespace A281156.P16334834874456800262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193259 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A281156.P16334834874456800262

/-! ## A281156.P16252244672430271687

`A104737(2^n+1)-(n+1)`
-/

namespace A281156.P16252244672430271687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104737 (2 ^ n + 1) - (n + 1 : ℤ)

end

end A281156.P16252244672430271687

/-!
# A281157: Expansion of Product_{k>=1} (1 + x^k)^(k*(2*k^2+1)/3).

The programs for A281157, there is no canonical definition to state claims against.
-/

/-! ## A281157.P8938282644319484831

`A002330(A213336(n))-floor(n/2)`
-/

namespace A281157.P8938282644319484831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A213336 n).toNat - ⌊(n : ℚ) / 2⌋

end

end A281157.P8938282644319484831

/-! ## A281157.P17235378434248319587

`A065744(A288219(3*n+2)-4)+1`
-/

namespace A281157.P17235378434248319587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (A288219 (3 * n + 2) - 4).toNat + 1

end

end A281157.P17235378434248319587

/-!
# A281158: Least prime p such that n^2 + (n - p)^2 is prime.

The programs for A281158, there is no canonical definition to state claims against.
-/

/-! ## A281158.P12957405359395781906

`A006530(A054584(A077169(n)²))`
-/

namespace A281158.P12957405359395781906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A054584 (A077169 n ^ 2).toNat).toNat

end

end A281158.P12957405359395781906

/-! ## A281158.P14911140109725192673

`A120426(a(A262988(A011782(n))))` with `a(0)=2`
-/

namespace A281158.P14911140109725192673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A120426 (a (A262988 (A011782 n).toNat).toNat).toNat

end

end A281158.P14911140109725192673

/-! ## A281158.P16419163365769297

`A222601(floor(exp(A113973(n))))`
-/

namespace A281158.P16419163365769297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222601 ⌊Real.exp (A113973 n : ℝ)⌋.toNat

end

end A281158.P16419163365769297

/-! ## A281158.P14074819842254888985

`A215776(or(n, A306413(n+1)))`
-/

namespace A281158.P14074819842254888985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215776 (Int.lor (n : ℤ) (A306413 (n + 1))).toNat

end

end A281158.P14074819842254888985

/-! ## A281158.P11265525857907693817

`A034444(∑[A208648(n+2)])+1`
-/

namespace A281158.P11265525857907693817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208648 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A281158.P11265525857907693817

/-!
# A281159: Number of nX2 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281159, there is no canonical definition to state claims against.
-/

/-! ## A281159.P11861199293269029478

`A281165(∑[n+1]+2)`
-/

namespace A281159.P11861199293269029478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281159.P11861199293269029478

/-! ## A281159.P12358597635505605055

`or(char[2], A281165(A133263(n+1)))`
-/

namespace A281159.P12358597635505605055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281165 (A133263 (n + 1)).toNat)

end

end A281159.P12358597635505605055

/-! ## A281159.P17405538082465191687

`ceil(1/A007318(n))*A281165(A133263(n+1))`
-/

namespace A281159.P17405538082465191687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A281165 (A133263 (n + 1)).toNat

end

end A281159.P17405538082465191687

/-! ## A281159.P6083583781347541545

`A281165(A133263(n+1))+char[A000045(n+13)]`
-/

namespace A281159.P6083583781347541545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 13)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281159.P6083583781347541545

/-! ## A281159.P9124413596186587949

`A281165(A133263(n+1))^A000041(C(n, n²))`
-/

namespace A281159.P9124413596186587949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281165 (A133263 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.choose n (n ^ 2)) : ℤ)

end

end A281159.P9124413596186587949

/-!
# A281160: Number of nX3 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281160, there is no canonical definition to state claims against.
-/

/-! ## A281160.P16567015449319545188

`A281165(∑[n+2]+4)`
-/

namespace A281160.P16567015449319545188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281160.P16567015449319545188

/-! ## A281160.P6608549505921802795

`A281165(A167614(n+1))+char[19]`
-/

namespace A281160.P6608549505921802795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281160.P6608549505921802795

/-! ## A281160.P13389504379445527898

`A281165(A046691(n)+7)+char[19]`
-/

namespace A281160.P13389504379445527898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281160.P13389504379445527898

/-! ## A281160.P12694566324619888024

`record[A010054(n)*A281165(n+3)]`
-/

namespace A281160.P12694566324619888024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A281165 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281160.P12694566324619888024

/-! ## A281160.P8308670486407859820

`A326685(n)+A281165(A167614(n+1))`
-/

namespace A281160.P8308670486407859820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A281165 (A167614 (n + 1)).toNat

end

end A281160.P8308670486407859820

/-!
# A281161: Number of nX4 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281161, there is no canonical definition to state claims against.
-/

/-! ## A281161.P11971653027886785428

`A281165(∑[n+3]+7)`
-/

namespace A281161.P11971653027886785428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281161.P11971653027886785428

/-! ## A281161.P12040743962465257163

`A281165(A141214(n)+7)+char[24]`
-/

namespace A281161.P12040743962465257163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281161.P12040743962465257163

/-! ## A281161.P7178236336020066243

`((-1)^n)²*A281165(A052905(n)+9)`
-/

namespace A281161.P7178236336020066243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A281165 (A052905 n + 9).toNat

end

end A281161.P7178236336020066243

/-! ## A281161.P5223529146896840916

`A007318(C(n, 64))*A281165(A141214(n)+7)`
-/

namespace A281161.P5223529146896840916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 64) * A281165 (A141214 n + 7).toNat

end

end A281161.P5223529146896840916

/-! ## A281161.P4172803695756951179

`A000041(floor(n/12))*A281165(A141214(n)+7)`
-/

namespace A281161.P4172803695756951179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 12⌋.toNat * A281165 (A141214 n + 7).toNat

end

end A281161.P4172803695756951179

/-!
# A281162: Number of n X 5 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281162, there is no canonical definition to state claims against.
-/

/-! ## A281162.P12155310426250782019

`A281165(C(n+5, 2)+5)`
-/

namespace A281162.P12155310426250782019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (Nat.choose (n + 5) 2 + 5)

end

end A281162.P12155310426250782019

/-! ## A281162.P13135071525456558243

`A281165(A374005(n+1))`
-/

namespace A281162.P13135071525456558243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A374005 (n + 1)).toNat

end

end A281162.P13135071525456558243

/-! ## A281162.P2797813043467673037

`A281165(A167499(n+3))`
-/

namespace A281162.P2797813043467673037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A167499 (n + 3)).toNat

end

end A281162.P2797813043467673037

/-! ## A281162.P14444420083744804248

`A281165(A155212(n)+13)`
-/

namespace A281162.P14444420083744804248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A155212 n + 13).toNat

end

end A281162.P14444420083744804248

/-! ## A281162.P4638551913069637108

`A281165(A056000(n)+15)`
-/

namespace A281162.P4638551913069637108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A056000 n + 15).toNat

end

end A281162.P4638551913069637108

/-!
# A281163: Number of nX6 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281163, there is no canonical definition to state claims against.
-/

/-! ## A281163.P8953483348112167129

`A281165(A374007(n+1))`
-/

namespace A281163.P8953483348112167129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A374007 (n + 1)).toNat

end

end A281163.P8953483348112167129

/-! ## A281163.P5187009098355792938

`A281165(eq[6, A256910(n)])`
-/

namespace A281163.P5187009098355792938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281163.P5187009098355792938

/-! ## A281163.P13827778697839062277

`A281165(A167499(n+4)+1)`
-/

namespace A281163.P13827778697839062277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A167499 (n + 4) + 1).toNat

end

end A281163.P13827778697839062277

/-! ## A281163.P10827786044144880905

`A281165(A167487(n+4)-1)`
-/

namespace A281163.P10827786044144880905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A167487 (n + 4) - 1).toNat

end

end A281163.P10827786044144880905

/-! ## A281163.P12699773087899476383

`A281165(A167614(n+4)+3)`
-/

namespace A281163.P12699773087899476383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A167614 (n + 4) + 3).toNat

end

end A281163.P12699773087899476383

/-!
# A281164: Number of nX7 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281164, there is no canonical definition to state claims against.
-/

/-! ## A281164.P3746428651502454358

`A281165(A374008(n+1))`
-/

namespace A281164.P3746428651502454358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A374008 (n + 1)).toNat

end

end A281164.P3746428651502454358

/-! ## A281164.P6554680845362326930

`A281165(A167487(n+5))`
-/

namespace A281164.P6554680845362326930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A167487 (n + 5)).toNat

end

end A281164.P6554680845362326930

/-! ## A281164.P11319751424830862078

`A281165(A056119(n)+28)`
-/

namespace A281164.P11319751424830862078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A056119 n + 28).toNat

end

end A281164.P11319751424830862078

/-! ## A281164.P18234753124762748747

`A281165(eq[11, A066657(n)])`
-/

namespace A281164.P18234753124762748747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281164.P18234753124762748747

/-! ## A281164.P7745499737404014019

`A281165(A166136(n+5)+1)`
-/

namespace A281164.P7745499737404014019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (A166136 (n + 5) + 1).toNat

end

end A281164.P7745499737404014019

/-!
# A281165: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281165, there is no canonical definition to state claims against.
-/

/-! ## A281165.P5078111161936928242

`A282481(n+1)-A004019(A230398(n+1))`
-/

namespace A281165.P5078111161936928242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (n + 1) - A004019 (A230398 (n + 1)).toNat

end

end A281165.P5078111161936928242

/-! ## A281165.P12114923098866567457

`A282481(A043318(n+1))`
-/

namespace A281165.P12114923098866567457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A043318 (n + 1)).toNat

end

end A281165.P12114923098866567457

/-! ## A281165.P2432804256608388242

`A282481(A044915(n+1))`
-/

namespace A281165.P2432804256608388242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A044915 (n + 1)).toNat

end

end A281165.P2432804256608388242

/-! ## A281165.P13135866981207781632

`A282481(A161951(n+1))`
-/

namespace A281165.P13135866981207781632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A161951 (n + 1)).toNat

end

end A281165.P13135866981207781632

/-! ## A281165.P4738175775576991918

`A282481(A364280(n+2))`
-/

namespace A281165.P4738175775576991918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A364280 (n + 2)).toNat

end

end A281165.P4738175775576991918

/-!
# A281166: a(n) = 3*a(n-1) - 3*a(n-2) + 2*a(n-3) for n>2, a(0)=a(1)=1, a(2)=3.

The programs for A281166, the canonical program `A281166.P13695940685420128674` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281166 has offset 0).

The definition of A281166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+2*a(n-3)` (program `A281166.P13695940685420128674`, by `A281166.P13695940685420128674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281166.P16473167900362967648

`2^n-2*sin(π*n/3)/sqrt(3)`
-/

namespace A281166.P16473167900362967648
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) - 2 * Real.sin (Real.pi * (n : ℝ) / 3) / Real.sqrt (3 : ℝ)

end

end A281166.P16473167900362967648

namespace A281166

/-- `2^n-2*sin(π*n/3)/sqrt(3)` -/
def P16473167900362967648.Spec : Prop :=
  ∀ n, P16473167900362967648.a n = (A281166 n : ℝ)

end A281166

/-! ## A281166.P13695940685420128674

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281166

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P13695940685420128674.Spec : Prop :=
  ∀ n, P13695940685420128674.a n = A281166 n

theorem P13695940685420128674.correct : P13695940685420128674.Spec := by
  intro n
  simp only [A281166]

end A281166

/-! ## A281166.P10873804027913589489

`ogf((1-2x+3x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A281166.P10873804027913589489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -3, 3, -2] n

end

end A281166.P10873804027913589489

namespace A281166

/-- `ogf((1-2x+3x^2)/(1-3x+3x^2-2x^3))` -/
def P10873804027913589489.Spec : Prop :=
  ∀ n, P10873804027913589489.a n = A281166 n

end A281166

/-! ## A281166.P11844942011259160009

`2^n-A128834(n)`
-/

namespace A281166.P11844942011259160009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A128834 n

end

end A281166.P11844942011259160009

namespace A281166

/-- `2^n-A128834(n)` -/
def P11844942011259160009.Spec : Prop :=
  ∀ n, P11844942011259160009.a n = A281166 n

end A281166

/-! ## A281166.P1636281714076924034

`A010892(n+2)+2^n`
-/

namespace A281166.P1636281714076924034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 2) + (2 ^ n : ℤ)

end

end A281166.P1636281714076924034

namespace A281166

/-- `A010892(n+2)+2^n` -/
def P1636281714076924034.Spec : Prop :=
  ∀ n, P1636281714076924034.a n = A281166 n

end A281166

/-! ## A281166.P6902285936264735672

`A128834(n+3)+2^n`
-/

namespace A281166.P6902285936264735672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (n + 3) + (2 ^ n : ℤ)

end

end A281166.P6902285936264735672

namespace A281166

/-- `A128834(n+3)+2^n` -/
def P6902285936264735672.Spec : Prop :=
  ∀ n, P6902285936264735672.a n = A281166 n

end A281166

/-! ## A281166.P4916509958282246604

`A163806(n+3)+2^n`
-/

namespace A281166.P4916509958282246604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (n + 3) + (2 ^ n : ℤ)

end

end A281166.P4916509958282246604

namespace A281166

/-- `A163806(n+3)+2^n` -/
def P4916509958282246604.Spec : Prop :=
  ∀ n, P4916509958282246604.a n = A281166 n

end A281166

/-! ## A281166.P1544047595396751953

`2^n-A163810(n+3)`
-/

namespace A281166.P1544047595396751953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A163810 (n + 3)

end

end A281166.P1544047595396751953

namespace A281166

/-- `2^n-A163810(n+3)` -/
def P1544047595396751953.Spec : Prop :=
  ∀ n, P1544047595396751953.a n = A281166 n

end A281166

/-! ## A281166.P16397030579190142917

`A130750((n-1)%(n+1))`
-/

namespace A281166.P16397030579190142917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A281166.P16397030579190142917

namespace A281166

/-- `A130750((n-1)%(n+1))` -/
def P16397030579190142917.Spec : Prop :=
  ∀ n, P16397030579190142917.a n = A281166 n

end A281166

/-! ## A281166.P2552154416127643029

`2*a(n-1)-A087204(n)` with `a(0)=1`
-/

namespace A281166.P2552154416127643029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A087204 n

end

end A281166.P2552154416127643029

namespace A281166

/-- `2*a(n-1)-A087204(n)` -/
def P2552154416127643029.Spec : Prop :=
  ∀ n, P2552154416127643029.a n = A281166 n

end A281166

/-! ## A281166.P17745774488214684434

`A130752(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A281166.P17745774488214684434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A130752 (n - 2) + a (n - 1)

end

end A281166.P17745774488214684434

namespace A281166

/-- `A130752(n-2)+a(n-1)` -/
def P17745774488214684434.Spec : Prop :=
  ∀ n, P17745774488214684434.a n = A281166 n

end A281166

/-! ## A281166.P4332822568329306555

`a(n-1)+a(n-1)-A100051(n)` with `a(0)=1`
-/

namespace A281166.P4332822568329306555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A100051 n)

end

end A281166.P4332822568329306555

namespace A281166

/-- `a(n-1)+a(n-1)-A100051(n)` -/
def P4332822568329306555.Spec : Prop :=
  ∀ n, P4332822568329306555.a n = A281166 n

end A281166

/-! ## A281166.P13582691410303056316

`A130750(A289207(n+1))`
-/

namespace A281166.P13582691410303056316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 (A289207 (n + 1)).toNat

end

end A281166.P13582691410303056316

namespace A281166

/-- `A130750(A289207(n+1))` -/
def P13582691410303056316.Spec : Prop :=
  ∀ n, P13582691410303056316.a n = A281166 n

end A281166

/-! ## A281166.P9501708700277625256

`A030118(n)+A000295(n)`
-/

namespace A281166.P9501708700277625256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 n + A000295 n

end

end A281166.P9501708700277625256

namespace A281166

/-- `A030118(n)+A000295(n)` -/
def P9501708700277625256.Spec : Prop :=
  ∀ n, P9501708700277625256.a n = A281166 n

end A281166

/-! ## A281166.P1590824194571428925

`A130781(n)+A024495(n)`
-/

namespace A281166.P1590824194571428925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n + A024495 n

end

end A281166.P1590824194571428925

namespace A281166

/-- `A130781(n)+A024495(n)` -/
def P1590824194571428925.Spec : Prop :=
  ∀ n, P1590824194571428925.a n = A281166 n

end A281166

/-! ## A281166.P8922937555895056077

`A135446(n)+A130772(n)`
-/

namespace A281166.P8922937555895056077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135446 n + A130772 n

end

end A281166.P8922937555895056077

namespace A281166

/-- `A135446(n)+A130772(n)` -/
def P8922937555895056077.Spec : Prop :=
  ∀ n, P8922937555895056077.a n = A281166 n

end A281166

/-! ## A281166.P18354357637216795783

`A163810(n)+A155559(n)`
-/

namespace A281166.P18354357637216795783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 n + A155559 n

end

end A281166.P18354357637216795783

namespace A281166

/-- `A163810(n)+A155559(n)` -/
def P18354357637216795783.Spec : Prop :=
  ∀ n, P18354357637216795783.a n = A281166 n

end A281166

/-! ## A281166.P7926358692428960560

`A000051(n)-A164965(n)`
-/

namespace A281166.P7926358692428960560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A164965 n

end

end A281166.P7926358692428960560

namespace A281166

/-- `A000051(n)-A164965(n)` -/
def P7926358692428960560.Spec : Prop :=
  ∀ n, P7926358692428960560.a n = A281166 n

end A281166

/-! ## A281166.P14109844097477947182

`A130750(A289207(2*n)/2)`
-/

namespace A281166.P14109844097477947182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A281166.P14109844097477947182

namespace A281166

/-- `A130750(A289207(2*n)/2)` -/
def P14109844097477947182.Spec : Prop :=
  ∀ n, P14109844097477947182.a n = A281166 n

end A281166

/-! ## A281166.P13388287201809492283

`A024495(n)+A024493(n+1)`
-/

namespace A281166.P13388287201809492283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n + A024493 (n + 1)

end

end A281166.P13388287201809492283

namespace A281166

/-- `A024495(n)+A024493(n+1)` -/
def P13388287201809492283.Spec : Prop :=
  ∀ n, P13388287201809492283.a n = A281166 n

end A281166

/-!
# A281168: Numbers k such that (25*10^k + 71)/3 is prime.

The programs for A281168, there is no canonical definition to state claims against.
-/

/-! ## A281168.P4826226299411943139

`A278997(n+1)+A270172(A279199(n))`
-/

namespace A281168.P4826226299411943139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278997 (n + 1) + A270172 (A279199 n).toNat

end

end A281168.P4826226299411943139

/-! ## A281168.P1120584621494283752

`A317177(A246101(2*(n+1))-A317189(2*(n+1)))`
-/

namespace A281168.P1120584621494283752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317177 (A246101 (2 * (n + 1)) - A317189 (2 * (n + 1))).toNat

end

end A281168.P1120584621494283752

/-!
# A281169: Numbers k such that (58*10^k - 1)/3 is prime.

The programs for A281169, there is no canonical definition to state claims against.
-/

/-! ## A281169.P11068207185955191878

`A085862(∑[A343134(n+1)+1]+n+3)`
-/

namespace A281169.P11068207185955191878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343134 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)).toNat

end

end A281169.P11068207185955191878

/-! ## A281169.P13607329296890151654

`A303303(n)%A102187(A275555(n+1))`
-/

namespace A281169.P13607329296890151654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303303 n) (A102187 (A275555 (n + 1)).toNat)

end

end A281169.P13607329296890151654

/-!
# A281170: Primes p whose decimal representation satisfy: abs(digsum(p)-2*L(p)) = 8, being L(p) the largest decimal digit in p.

The programs for A281170, there is no canonical definition to state claims against.
-/

/-! ## A281170.P17560049630476608253

`A045319(eq[8, A041000(n+1)])`
-/

namespace A281170.P17560049630476608253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281170.P17560049630476608253

/-!
# A281171: Numbers k such that (5*10^k + 37)/3 is prime.

The programs for A281171, there is no canonical definition to state claims against.
-/

/-! ## A281171.P7919969320556374604

`∑[A068108(∑[A068208(n+1)])]`
-/

namespace A281171.P7919969320556374604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068208 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068108 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281171.P7919969320556374604

/-! ## A281171.P3749745033542279674

`record[and(A322400(n+5), A339894(3*n+2))]`
-/

namespace A281171.P3749745033542279674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322400 (n + 5)) (A339894 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281171.P3749745033542279674

/-! ## A281171.P7238281013174527768

`eq[A133233(A171644(n)), A169611(n+1)]`
-/

namespace A281171.P7238281013174527768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 (A171644 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281171.P7238281013174527768

/-! ## A281171.P1741357820950386821

`eq[A333867(A196222(3*n+2)), A349620(n+1)]`
-/

namespace A281171.P1741357820950386821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333867 (A196222 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281171.P1741357820950386821

/-!
# A281172: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 329", based on the 5-celled von Neumann neighborhood.

The programs for A281172, there is no canonical definition to state claims against.
-/

/-! ## A281172.P8839611423190740866

`A007088(A281174(n))`
-/

namespace A281172.P8839611423190740866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281174 n).toNat

end

end A281172.P8839611423190740866

/-! ## A281172.P13154548145447362880

`A185544(2*A281174(n))`
-/

namespace A281172.P13154548145447362880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281174 n).toNat

end

end A281172.P13154548145447362880

/-! ## A281172.P18314911369261001184

`A281218(n)-A165878(A000045(n+1))`
-/

namespace A281172.P18314911369261001184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281218 n - A165878 (A000045 (n + 1)).toNat

end

end A281172.P18314911369261001184

/-!
# A281173: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 329", based on the 5-celled von Neumann neighborhood.

The programs for A281173, there is no canonical definition to state claims against.
-/

/-! ## A281173.P12312909003291286183

`A007088(A281175(n))`
-/

namespace A281173.P12312909003291286183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281175 n).toNat

end

end A281173.P12312909003291286183

/-! ## A281173.P15304785842658128038

`A185544(2*A281175(n))`
-/

namespace A281173.P15304785842658128038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281175 n).toNat

end

end A281173.P15304785842658128038

/-! ## A281173.P16886616714513356982

`A281219(A073788(n))`
-/

namespace A281173.P16886616714513356982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281219 (A073788 n).toNat

end

end A281173.P16886616714513356982

/-!
# A281174: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 329", based on the 5-celled von Neumann neighborhood.

The programs for A281174, there is no canonical definition to state claims against.
-/

/-! ## A281174.P4058235784879013408

`A281220(n)-A184946(A015898(n+1))`
-/

namespace A281174.P4058235784879013408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281220 n - A184946 (A015898 (n + 1)).toNat

end

end A281174.P4058235784879013408

/-! ## A281174.P9393068131276512836

`A281220(n)-A184946(A239851(n+1))`
-/

namespace A281174.P9393068131276512836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281220 n - A184946 (A239851 (n + 1)).toNat

end

end A281174.P9393068131276512836

/-! ## A281174.P3899334615454302501

`A281220(n)-A138270(A114322(2*n+1))`
-/

namespace A281174.P3899334615454302501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281220 n - A138270 (A114322 (2 * n + 1)).toNat

end

end A281174.P3899334615454302501

/-!
# A281176: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 331", based on the 5-celled von Neumann neighborhood.

The programs for A281176, there is no canonical definition to state claims against.
-/

/-! ## A281176.P16104517764741498333

`A007088(A281178(n))`
-/

namespace A281176.P16104517764741498333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281178 n).toNat

end

end A281176.P16104517764741498333

/-! ## A281176.P16324389427477606316

`A185544(2*A281178(n))`
-/

namespace A281176.P16324389427477606316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281178 n).toNat

end

end A281176.P16324389427477606316

/-!
# A281177: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 331", based on the 5-celled von Neumann neighborhood.

The programs for A281177, there is no canonical definition to state claims against.
-/

/-! ## A281177.P17453070045605682802

`A007088(A281179(n))`
-/

namespace A281177.P17453070045605682802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281179 n).toNat

end

end A281177.P17453070045605682802

/-! ## A281177.P4874458652558260000

`A185544(2*A281179(n))`
-/

namespace A281177.P4874458652558260000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281179 n).toNat

end

end A281177.P4874458652558260000

/-!
# A281178: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 331", based on the 5-celled von Neumann neighborhood.

The programs for A281178, there is no canonical definition to state claims against.
-/

/-! ## A281178.P7826603419635497018

`A030109(A281179(n)+A000079(n+1))`
-/

namespace A281178.P7826603419635497018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A281179 n + A000079 (n + 1)).toNat

end

end A281178.P7826603419635497018

/-!
# A281179: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 331", based on the 5-celled von Neumann neighborhood.

The programs for A281179, there is no canonical definition to state claims against.
-/

/-! ## A281179.P2668785234159458189

`A030109(A281178(n)+A000079(n+1))`
-/

namespace A281179.P2668785234159458189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A281178 n + A000079 (n + 1)).toNat

end

end A281179.P2668785234159458189

/-!
# A281180: a(n) = (2*n-1)! * [x^(2*n-1)] S(x), where S(x) = Integral (1 + S(x)^2)^2 dx.

The programs for A281180, there is no canonical definition to state claims against.
-/

/-! ## A281180.P16736307736663105668

`A281182(Δ[n²])`
-/

namespace A281180.P16736307736663105668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A281180.P16736307736663105668

/-! ## A281180.P1146540208883403039

`2^n*A120419(n)`
-/

namespace A281180.P1146540208883403039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A120419 n

end

end A281180.P1146540208883403039

/-! ## A281180.P13066378609049996300

`record[A281182(A026741(n))]`
-/

namespace A281180.P13066378609049996300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281182 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281180.P13066378609049996300

/-! ## A281180.P557188891465151255

`record[A281182(abs(A010816(n)))]`
-/

namespace A281180.P557188891465151255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281182 |A010816 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281180.P557188891465151255

/-! ## A281180.P14495167017695856924

`record[A281182(A000265(n+1))]`
-/

namespace A281180.P14495167017695856924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281182 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281180.P14495167017695856924

/-!
# A281181: E.g.f. C(x) satisfies C(x) = cosh( Integral C(x)^3 dx ).

The programs for A281181, there is no canonical definition to state claims against.
-/

/-! ## A281181.P17158736224647369598

`A281182(2*n)`
-/

namespace A281181.P17158736224647369598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281182 (2 * n)

end

end A281181.P17158736224647369598

/-! ## A281181.P2702251656678581633

`A395141(∑[n+1]+n)`
-/

namespace A281181.P2702251656678581633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395141 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A281181.P2702251656678581633

/-! ## A281181.P1204867821684720049

`or(1, A281182(A004277(n)))`
-/

namespace A281181.P1204867821684720049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A281182 (A004277 n).toNat)

end

end A281181.P1204867821684720049

/-! ## A281181.P16547843502208683768

`or(1, A281182(A005843(n)))`
-/

namespace A281181.P16547843502208683768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A281182 (A005843 n).toNat)

end

end A281181.P16547843502208683768

/-! ## A281181.P10069268807048281488

`gcd(A000038(n), A281182(A005843(n)))`
-/

namespace A281181.P10069268807048281488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A281182 (A005843 n).toNat)

end

end A281181.P10069268807048281488

/-!
# A281182: E.g.f. C(x) + S(x) = exp( Integral C(x)^3 dx ) where C(x) and S(x) are described by A281181 and A281180, respectively.

The programs for A281182, there is no canonical definition to state claims against.
-/

/-! ## A281182.P17579782918480823212

`ceil(A159078(2*(n+2))/A031925(3*n+2))`
-/

namespace A281182.P17579782918480823212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A159078 (2 * (n + 2)) : ℚ) / (A031925 (3 * n + 2) : ℚ)⌉

end

end A281182.P17579782918480823212

/-! ## A281182.P5247896776314148393

`A008621(A190733(n)*A248517(n))`
-/

namespace A281182.P5247896776314148393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A190733 n * A248517 n).toNat

end

end A281182.P5247896776314148393

/-! ## A281182.P6570010825477046890

`A126257(A012231(n)+2*A012258(n))`
-/

namespace A281182.P6570010825477046890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A012231 n + 2 * A012258 n).toNat

end

end A281182.P6570010825477046890

/-!
# A281183: E.g.f. C(x)^2 = cosh( Integral C(x)^3 dx )^2 where C(x) is described by A281181.

The programs for A281183, there is no canonical definition to state claims against.
-/

/-! ## A281183.P8253635599261128600

`A395141(∑[n+3])`
-/

namespace A281183.P8253635599261128600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395141 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281183.P8253635599261128600

/-!
# A281185: a(0)=0, a(1)=1, a(2)=0; thereafter, a(2n) = a(n) + a(n+1) for n >= 2, a(2n+1) = a(n) for n >= 1.

The programs for A281185, there is no canonical definition to state claims against.
-/

/-! ## A281185.P5206640042014890086

`A106345(2*A004762(n+1)+1)`
-/

namespace A281185.P5206640042014890086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (2 * A004762 (n + 1) + 1).toNat

end

end A281185.P5206640042014890086

/-! ## A281185.P6889972970844743350

`A106345(A004762(n+1)+A004762(n+1)+1)`
-/

namespace A281185.P6889972970844743350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A004762 (n + 1) + (A004762 (n + 1) + 1)).toNat

end

end A281185.P6889972970844743350

/-! ## A281185.P8053506416143695102

`A106345(A004762(n+1)+Δ[A010078(n+1)])`
-/

namespace A281185.P8053506416143695102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A004762 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A281185.P8053506416143695102

/-! ## A281185.P3504619347693105450

`A106345(∩[A004762(n+1), A005408(n)])`
-/

namespace A281185.P3504619347693105450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A281185.P3504619347693105450

/-! ## A281185.P7921270731156766950

`A012265(A351461(n+1)%A081287(2*n+3))`
-/

namespace A281185.P7921270731156766950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (Int.tmod (A351461 (n + 1)) (A081287 (2 * n + 3))).toNat

end

end A281185.P7921270731156766950

/-!
# A281186: E.g.f. satisfies: A(x) = exp( 1/A(x) * Integral A(x)^(8/3) dx ).

The programs for A281186, there is no canonical definition to state claims against.
-/

/-! ## A281186.P4599623566564624682

`A014498((2*n+1)*a(n-1))` with `a(0)=1`
-/

namespace A281186.P4599623566564624682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014498 ((2 * n + 1 : ℤ) * a (n - 1)).toNat

end

end A281186.P4599623566564624682

/-!
# A281187: Totient numbers whose squares are not totient numbers.

The programs for A281187, there is no canonical definition to state claims against.
-/

/-! ## A281187.P17602040961574444156

`filter[A306882(n+1), A323514(#)]`
-/

namespace A281187.P17602040961574444156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A281187.P17602040961574444156

/-! ## A281187.P15176023321564681701

`∩[A302299(n+1), A306882(n+1)]`
-/

namespace A281187.P15176023321564681701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281187.P15176023321564681701

/-! ## A281187.P8897850301343170544

`∩[A303745(n+1), A306882(n+1)]`
-/

namespace A281187.P8897850301343170544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281187.P8897850301343170544

/-! ## A281187.P467290746485088020

`∩[A002202(n+1), A306882(n+1)]`
-/

namespace A281187.P467290746485088020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281187.P467290746485088020

/-! ## A281187.P4995835514689786336

`∩[A000010(A002181(n+1)), A306882(n+1)]`
-/

namespace A281187.P4995835514689786336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002181 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281187.P4995835514689786336

/-! ## A281187.P7641981407540330341

`∩[A000010(A143423(n+1)), A306882(n+1)]`
-/

namespace A281187.P7641981407540330341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A143423 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281187.P7641981407540330341

/-! ## A281187.P4432809083321022209

`∩[A000010(A006511(n+1)), A306882(n+1)]`
-/

namespace A281187.P4432809083321022209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006511 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281187.P4432809083321022209

/-! ## A281187.P2764185910180355500

`filter[A306882(n+1), A264739(#)]`
-/

namespace A281187.P2764185910180355500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A264739 (f1 j).toNat = 1) n)

end

end A281187.P2764185910180355500

/-!
# A281188: Number of refactorable numbers m such that tau(m) = n, or 0 if there are infinitely many such numbers.

The programs for A281188, the canonical program `A281188.P10717326089924619800` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281188 has offset 1).

The definition of A281188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281188.P9047893195937040840

`floor(A329617(n+1)/A285328(n+1))`
-/

namespace A281188.P9047893195937040840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A329617 (n + 1) : ℚ) / (A285328 (n + 1) : ℚ)⌋

end

end A281188.P9047893195937040840

namespace A281188

/-- `floor(A329617(n+1)/A285328(n+1))` -/
def P9047893195937040840.Spec : Prop :=
  ∀ n, P9047893195937040840.a n = A281188 (n + 1)

end A281188

/-! ## A281188.P2766794970181769092

`round(A001221(n+1)!/A285328(n+1))`
-/

namespace A281188.P2766794970181769092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (A001221 (n + 1)).toNat : ℚ) / (A285328 (n + 1) : ℚ))

end

end A281188.P2766794970181769092

namespace A281188

/-- `round(A001221(n+1)!/A285328(n+1))` -/
def P2766794970181769092.Spec : Prop :=
  ∀ n, P2766794970181769092.a n = A281188 (n + 1)

end A281188

/-! ## A281188.P2063266037943350658

`char[3]+A008480(n+1)*A008966(n+1)`
-/

namespace A281188.P2063266037943350658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A008480 (n + 1) * A008966 (n + 1)

end

end A281188.P2063266037943350658

namespace A281188

/-- `char[3]+A008480(n+1)*A008966(n+1)` -/
def P2063266037943350658.Spec : Prop :=
  ∀ n, P2063266037943350658.a n = A281188 (n + 1)

end A281188

/-! ## A281188.P11922818286011463600

`round(A130675(n+1)/A178649(n+1))`
-/

namespace A281188.P11922818286011463600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130675 (n + 1) : ℚ) / (A178649 (n + 1) : ℚ))

end

end A281188.P11922818286011463600

namespace A281188

/-- `round(A130675(n+1)/A178649(n+1))` -/
def P11922818286011463600.Spec : Prop :=
  ∀ n, P11922818286011463600.a n = A281188 (n + 1)

end A281188

/-! ## A281188.P10717326089924619800

`char[3]+∑{e}[n+1, #]!*char[∏{p}[n, #]-1]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281188

/-- `char[3]+∑{e}[n+1, #]!*char[∏{p}[n, #]-1]` -/
def P10717326089924619800.Spec : Prop :=
  ∀ n, (P10717326089924619800.a n : ℤ) = A281188 (n + 1)

theorem P10717326089924619800.correct : P10717326089924619800.Spec := by
  intro n
  simp only [A281188, Nat.add_sub_cancel]

end A281188

/-! ## A281188.P5022919809492949283

`round(A329617(n+1)/A303278(n+1))`
-/

namespace A281188.P5022919809492949283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A329617 (n + 1) : ℚ) / (A303278 (n + 1) : ℚ))

end

end A281188.P5022919809492949283

namespace A281188

/-- `round(A329617(n+1)/A303278(n+1))` -/
def P5022919809492949283.Spec : Prop :=
  ∀ n, P5022919809492949283.a n = A281188 (n + 1)

end A281188

/-! ## A281188.P15788654745243871432

`floor(A008480(n+1)/A208355(A285328(n+1)))`
-/

namespace A281188.P15788654745243871432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008480 (n + 1) : ℚ) / (A208355 (A285328 (n + 1)).toNat : ℚ)⌋

end

end A281188.P15788654745243871432

namespace A281188

/-- `floor(A008480(n+1)/A208355(A285328(n+1)))` -/
def P15788654745243871432.Spec : Prop :=
  ∀ n, P15788654745243871432.a n = A281188 (n + 1)

end A281188

/-! ## A281188.P10800141247666703664

`A335489(A046523(n+1)+A000007(A027868(n)))`
-/

namespace A281188.P10800141247666703664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335489 (A046523 (n + 1) + A000007 (A027868 n).toNat).toNat

end

end A281188.P10800141247666703664

namespace A281188

/-- `A335489(A046523(n+1)+A000007(A027868(n)))` -/
def P10800141247666703664.Spec : Prop :=
  ∀ n, P10800141247666703664.a n = A281188 (n + 1)

end A281188

/-! ## A281188.P614202015412469794

`A335489(A267883(n)+A097272(n+1))`
-/

namespace A281188.P614202015412469794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335489 (A267883 n + A097272 (n + 1)).toNat

end

end A281188.P614202015412469794

namespace A281188

/-- `A335489(A267883(n)+A097272(n+1))` -/
def P614202015412469794.Spec : Prop :=
  ∀ n, P614202015412469794.a n = A281188 (n + 1)

end A281188

/-! ## A281188.P17825124410728777145

`A335489(A267883(n)+A007948(n+1))`
-/

namespace A281188.P17825124410728777145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335489 (A267883 n + A007948 (n + 1)).toNat

end

end A281188.P17825124410728777145

namespace A281188

/-- `A335489(A267883(n)+A007948(n+1))` -/
def P17825124410728777145.Spec : Prop :=
  ∀ n, P17825124410728777145.a n = A281188 (n + 1)

end A281188

/-!
# A281189: a(n) is the first composite number having the same base-(2n) digits as its prime factors (with multiplicity), excluding zero digits (or 0 if no such composite number exists).

The programs for A281189, there is no canonical definition to state claims against.
-/

/-! ## A281189.P10947523297331972054

`A278981(2*(n+1))`
-/

namespace A281189.P10947523297331972054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278981 (2 * (n + 1))

end

end A281189.P10947523297331972054

/-! ## A281189.P11510014504588646125

`or(1, A278981(A004277(n+1)))`
-/

namespace A281189.P11510014504588646125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A278981 (A004277 (n + 1)).toNat)

end

end A281189.P11510014504588646125

/-! ## A281189.P17080413026249305763

`or(1, A278981(A005843(n+1)))`
-/

namespace A281189.P17080413026249305763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A278981 (A005843 (n + 1)).toNat)

end

end A281189.P17080413026249305763

/-! ## A281189.P9324077494013548699

`A278981(A005843(n+1))/A007318(∑[n])`
-/

namespace A281189.P9324077494013548699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278981 (A005843 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A281189.P9324077494013548699

/-!
# A281190: Concatenation of the reversed digits of numbers from 1 to n, mod n.

The programs for A281190, there is no canonical definition to state claims against.
-/

/-! ## A281190.P13576544963765812668

`A138957(n+1)%(n+1)`
-/

namespace A281190.P13576544963765812668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138957 (n + 1)) (n + 1 : ℤ)

end

end A281190.P13576544963765812668

/-! ## A281190.P16803143447566628354

`A067513(A213832(n+1))*A358479(3*n+2)`
-/

namespace A281190.P16803143447566628354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A213832 (n + 1)).toNat * A358479 (3 * n + 2)

end

end A281190.P16803143447566628354

/-!
# A281192: Numbers with no squarefree neighbors.

The programs for A281192, the canonical program `A281192.P15044802621846119533` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281192 has offset 1).

The definition of A281192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281192.P7243377901652457959

`∪[A073247(n+1), A235578(n+1)]`
-/

namespace A281192.P7243377901652457959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A281192.P7243377901652457959

namespace A281192

/-- `∪[A073247(n+1), A235578(n+1)]` -/
def P7243377901652457959.Spec : Prop :=
  ∀ n, (P7243377901652457959.a n : ℤ) = A281192 (n + 1)

end A281192

/-! ## A281192.P15044802621846119533

`eq[2*A008683(n+1), A008683(n+3)]+2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281192

/-- `eq[2*A008683(n+1), A008683(n+3)]+2` -/
def P15044802621846119533.Spec : Prop :=
  ∀ n, (P15044802621846119533.a n : ℤ) = A281192 (n + 1)

theorem P15044802621846119533.correct : P15044802621846119533.Spec := by
  intro n
  simp only [A281192, Nat.add_sub_cancel]

end A281192

/-! ## A281192.P2162531833527655022

`eq[2, and(A007424(n+1), A007424(n+3))]+2`
-/

namespace A281192.P2162531833527655022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007424 (n + 1)) (A007424 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A281192.P2162531833527655022

namespace A281192

/-- `eq[2, and(A007424(n+1), A007424(n+3))]+2` -/
def P2162531833527655022.Spec : Prop :=
  ∀ n, (P2162531833527655022.a n : ℤ) = A281192 (n + 1)

end A281192

/-! ## A281192.P4513773628797103098

`eq[A055615(n+1), A055615(n+3)]+2`
-/

namespace A281192.P4513773628797103098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A281192.P4513773628797103098

namespace A281192

/-- `eq[A055615(n+1), A055615(n+3)]+2` -/
def P4513773628797103098.Spec : Prop :=
  ∀ n, (P4513773628797103098.a n : ℤ) = A281192 (n + 1)

end A281192

/-! ## A281192.P18284802705253244541

`eq[n, A085051(A028310(n))]`
-/

namespace A281192.P18284802705253244541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085051 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281192.P18284802705253244541

namespace A281192

/-- `eq[n, A085051(A028310(n))]` -/
def P18284802705253244541.Spec : Prop :=
  ∀ n, (P18284802705253244541.a n : ℤ) = A281192 (n + 1)

end A281192

/-! ## A281192.P8808920434633815569

`A085051(eq[n+1, A085051(n+1)]+1)`
-/

namespace A281192.P8808920434633815569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A281192.P8808920434633815569

namespace A281192

/-- `A085051(eq[n+1, A085051(n+1)]+1)` -/
def P8808920434633815569.Spec : Prop :=
  ∀ n, P8808920434633815569.a n = A281192 (n + 1)

end A281192

/-! ## A281192.P15710757459721939391

`eq[A008966(n+1), A100112(n+3)]+2`
-/

namespace A281192.P15710757459721939391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A281192.P15710757459721939391

namespace A281192

/-- `eq[A008966(n+1), A100112(n+3)]+2` -/
def P15710757459721939391.Spec : Prop :=
  ∀ n, (P15710757459721939391.a n : ℤ) = A281192 (n + 1)

end A281192

/-! ## A281192.P8853494335180225747

`eq[A100112(n+1), A100112(n+3)]+2`
-/

namespace A281192.P8853494335180225747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A281192.P8853494335180225747

namespace A281192

/-- `eq[A100112(n+1), A100112(n+3)]+2` -/
def P8853494335180225747.Spec : Prop :=
  ∀ n, (P8853494335180225747.a n : ℤ) = A281192 (n + 1)

end A281192

/-! ## A281192.P11718937476270844610

`eq[n, A085051(A233583(n+1))]`
-/

namespace A281192.P11718937476270844610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085051 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281192.P11718937476270844610

namespace A281192

/-- `eq[n, A085051(A233583(n+1))]` -/
def P11718937476270844610.Spec : Prop :=
  ∀ n, (P11718937476270844610.a n : ℤ) = A281192 (n + 1)

end A281192

/-!
# A281193: Elias's omega code for n.

The programs for A281193, there is no canonical definition to state claims against.
-/

/-! ## A281193.P12692966033719457785

`A007088(A281223(n+1))`
-/

namespace A281193.P12692966033719457785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281223 (n + 1)).toNat

end

end A281193.P12692966033719457785

/-! ## A281193.P13267518880367668054

`A099820(A281223(n+1)/2)`
-/

namespace A281193.P13267518880367668054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (SequenceMachineLib.roundAway ((A281223 (n + 1) : ℚ) / 2)).toNat

end

end A281193.P13267518880367668054

/-! ## A281193.P13568557902197559019

`A185544(2*A281223(n+1))`
-/

namespace A281193.P13568557902197559019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281223 (n + 1)).toNat

end

end A281193.P13568557902197559019

/-! ## A281193.P424683582760129074

`A185544(A281223(n+1)+A281223(n+1))`
-/

namespace A281193.P424683582760129074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A281223 (n + 1) + A281223 (n + 1)).toNat

end

end A281193.P424683582760129074

/-!
# A281194: Number of 2 X 2 matrices with all terms in {-n,..,0,..,n} and (sum of terms) = determinant.

The programs for A281194, there is no canonical definition to state claims against.
-/

/-! ## A281194.P3094923445236808090

`A233764(A065825(n+1)+∑[n+6]-6)`
-/

namespace A281194.P3094923445236808090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (A065825 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6)).toNat

end

end A281194.P3094923445236808090

/-!
# A281196: Number of n such that A247600(n) = 5.

The programs for A281196, there is no canonical definition to state claims against.
-/

/-! ## A281196.P3149649212393140391

`eq[5*n, A181642(6*(n+1))]`
-/

namespace A281196.P3149649212393140391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181642 (6 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281196.P3149649212393140391

/-! ## A281196.P7604095386313908443

`eq[5, gcd(10, A056172(10*n+1)-n)]`
-/

namespace A281196.P7604095386313908443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A056172 (10 * n + 1) - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281196.P7604095386313908443

/-! ## A281196.P14184987791419453103

`lt[(abs(A000720(5*(n+1))-n)+1)%7, 1]+1`
-/

namespace A281196.P14184987791419453103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (|A000720 (5 * (n + 1)) - (n : ℤ)| + 1) 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A281196.P14184987791419453103

/-! ## A281196.P16534251483800970677

`eq[n+5, A063084(A008706(n))]`
-/

namespace A281196.P16534251483800970677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281196.P16534251483800970677

/-! ## A281196.P8647316948149260197

`eq[5*n, A165634(A016969(n))]`
-/

namespace A281196.P8647316948149260197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (A016969 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281196.P8647316948149260197

/-!
# A281198: Number of n X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281198, there is no canonical definition to state claims against.
-/

/-! ## A281198.P17832481726979170601

`A281205(∑[4*n]+1)`
-/

namespace A281198.P17832481726979170601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281198.P17832481726979170601

/-! ## A281198.P3361981830498865866

`lcm((-1)^n, A281205((n+1)²+n²))`
-/

namespace A281198.P3361981830498865866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A281205 ((n + 1) ^ 2 + n ^ 2))

end

end A281198.P3361981830498865866

/-! ## A281198.P11354492634709946268

`record[A281205(Δ[A235355(n)])]`
-/

namespace A281198.P11354492634709946268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281198.P11354492634709946268

/-! ## A281198.P760189915043017277

`record[A281205(A003602((n+1)²))]`
-/

namespace A281198.P760189915043017277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281205 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281198.P760189915043017277

/-! ## A281198.P3025221836121771773

`record[A003982(n)*A281205(n+1)]`
-/

namespace A281198.P3025221836121771773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A281205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281198.P3025221836121771773

/-!
# A281199: Number of n X 2 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281199, the canonical program `A281199.P10272472224117840655` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281199 has offset 1).

The definition of A281199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281199.P10272472224117840655

`A166336(n)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281199

/-- `A166336(n)-1` -/
def P10272472224117840655.Spec : Prop :=
  ∀ n, P10272472224117840655.a n = A281199 (n + 1)

theorem P10272472224117840655.correct : P10272472224117840655.Spec := by
  intro n
  simp only [A281199, Nat.add_sub_cancel]

end A281199

/-! ## A281199.P5498727068196670645

`A001629(Δ[n²])`
-/

namespace A281199.P5498727068196670645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A281199.P5498727068196670645

namespace A281199

/-- `A001629(Δ[n²])` -/
def P5498727068196670645.Spec : Prop :=
  ∀ n, P5498727068196670645.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P4608326161224094761

`∑[A029907(2*n)]`
-/

namespace A281199.P4608326161224094761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281199.P4608326161224094761

namespace A281199

/-- `∑[A029907(2*n)]` -/
def P4608326161224094761.Spec : Prop :=
  ∀ n, P4608326161224094761.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P14299299477929510003

`2*A129720(2*n)`
-/

namespace A281199.P14299299477929510003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129720 (2 * n)

end

end A281199.P14299299477929510003

namespace A281199

/-- `2*A129720(2*n)` -/
def P14299299477929510003.Spec : Prop :=
  ∀ n, P14299299477929510003.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P6820465656593156904

`2*A129722(2*n)`
-/

namespace A281199.P6820465656593156904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129722 (2 * n)

end

end A281199.P6820465656593156904

namespace A281199

/-- `2*A129722(2*n)` -/
def P6820465656593156904.Spec : Prop :=
  ∀ n, P6820465656593156904.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P8960886836095018788

`∑[∑[A239342(2*n)]]`
-/

namespace A281199.P8960886836095018788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239342 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281199.P8960886836095018788

namespace A281199

/-- `∑[∑[A239342(2*n)]]` -/
def P8960886836095018788.Spec : Prop :=
  ∀ n, P8960886836095018788.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P15836439522217143331

`lcm(2, A001629(2*n+1))`
-/

namespace A281199.P15836439522217143331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001629 (2 * n + 1))

end

end A281199.P15836439522217143331

namespace A281199

/-- `lcm(2, A001629(2*n+1))` -/
def P15836439522217143331.Spec : Prop :=
  ∀ n, (P15836439522217143331.a n : ℤ) = A281199 (n + 1)

end A281199

/-! ## A281199.P11080392259903849967

`record[A001629(A006257(n))]`
-/

namespace A281199.P11080392259903849967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281199.P11080392259903849967

namespace A281199

/-- `record[A001629(A006257(n))]` -/
def P11080392259903849967.Spec : Prop :=
  ∀ n, P11080392259903849967.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P4686823927815659637

`∑[A029907(A004277(n))]-1`
-/

namespace A281199.P4686823927815659637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A281199.P4686823927815659637

namespace A281199

/-- `∑[A029907(A004277(n))]-1` -/
def P4686823927815659637.Spec : Prop :=
  ∀ n, P4686823927815659637.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P18312672522737950049

`record[A001629(A000265(n+1))]`
-/

namespace A281199.P18312672522737950049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281199.P18312672522737950049

namespace A281199

/-- `record[A001629(A000265(n+1))]` -/
def P18312672522737950049.Spec : Prop :=
  ∀ n, P18312672522737950049.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P15135232372433227159

`A055244(2*n)-A001519(n)`
-/

namespace A281199.P15135232372433227159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (2 * n) - A001519 n

end

end A281199.P15135232372433227159

namespace A281199

/-- `A055244(2*n)-A001519(n)` -/
def P15135232372433227159.Spec : Prop :=
  ∀ n, P15135232372433227159.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P3061913586608233885

`record[A175722(n)-(A000045(n)+1)]`
-/

namespace A281199.P3061913586608233885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175722 n - (A000045 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281199.P3061913586608233885

namespace A281199

/-- `record[A175722(n)-(A000045(n)+1)]` -/
def P3061913586608233885.Spec : Prop :=
  ∀ n, P3061913586608233885.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P14199386573932699516

`A010049(2*n)+A001629(2*n)`
-/

namespace A281199.P14199386573932699516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n) + A001629 (2 * n)

end

end A281199.P14199386573932699516

namespace A281199

/-- `A010049(2*n)+A001629(2*n)` -/
def P14199386573932699516.Spec : Prop :=
  ∀ n, P14199386573932699516.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P301001202899608121

`A175722(2*n)-A008346(2*n)`
-/

namespace A281199.P301001202899608121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175722 (2 * n) - A008346 (2 * n)

end

end A281199.P301001202899608121

namespace A281199

/-- `A175722(2*n)-A008346(2*n)` -/
def P301001202899608121.Spec : Prop :=
  ∀ n, P301001202899608121.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P12911164084937489494

`∑[A001629(2*n)+A000045(2*n)]`
-/

namespace A281199.P12911164084937489494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * n) + A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281199.P12911164084937489494

namespace A281199

/-- `∑[A001629(2*n)+A000045(2*n)]` -/
def P12911164084937489494.Spec : Prop :=
  ∀ n, P12911164084937489494.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P132732917611670696

`A001629(2*n+1)+A000007(n+1)`
-/

namespace A281199.P132732917611670696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * n + 1) + A000007 (n + 1)

end

end A281199.P132732917611670696

namespace A281199

/-- `A001629(2*n+1)+A000007(n+1)` -/
def P132732917611670696.Spec : Prop :=
  ∀ n, P132732917611670696.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P15935263146906986763

`A029907(2*n+1)-A001519(n+1)`
-/

namespace A281199.P15935263146906986763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n + 1) - A001519 (n + 1)

end

end A281199.P15935263146906986763

namespace A281199

/-- `A029907(2*n+1)-A001519(n+1)` -/
def P15935263146906986763.Spec : Prop :=
  ∀ n, P15935263146906986763.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P727790468466890195

`A006478(2*n)+A000071(2*(n+1))`
-/

namespace A281199.P727790468466890195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 (2 * n) + A000071 (2 * (n + 1))

end

end A281199.P727790468466890195

namespace A281199

/-- `A006478(2*n)+A000071(2*(n+1))` -/
def P727790468466890195.Spec : Prop :=
  ∀ n, P727790468466890195.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P13785509465288566547

`A029907(2*n+1)-A127968(2*n)`
-/

namespace A281199.P13785509465288566547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n + 1) - A127968 (2 * n)

end

end A281199.P13785509465288566547

namespace A281199

/-- `A029907(2*n+1)-A127968(2*n)` -/
def P13785509465288566547.Spec : Prop :=
  ∀ n, P13785509465288566547.a n = A281199 (n + 1)

end A281199

/-! ## A281199.P8738464282109378150

`A175722(2*n)-(A000045(2*n)+1)`
-/

namespace A281199.P8738464282109378150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175722 (2 * n) - (A000045 (2 * n) + 1)

end

end A281199.P8738464282109378150

namespace A281199

/-- `A175722(2*n)-(A000045(2*n)+1)` -/
def P8738464282109378150.Spec : Prop :=
  ∀ n, P8738464282109378150.a n = A281199 (n + 1)

end A281199

