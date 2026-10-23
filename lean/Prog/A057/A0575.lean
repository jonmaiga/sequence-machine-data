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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A057500: Number of connected labeled graphs with n edges and n nodes.

The programs for A057500, there is no canonical definition to state claims against.
-/

/-! ## A057500.P3953851271346531521

`A106239(∑[n]+1)`
-/

namespace A057500.P3953851271346531521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106239 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A057500.P3953851271346531521

/-! ## A057500.P16093721913654202443

`A129271(n+1)-A000272(n+1)`
-/

namespace A057500.P16093721913654202443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129271 (n + 1) - A000272 (n + 1)

end

end A057500.P16093721913654202443

/-! ## A057500.P5222503362726824917

`A368951(n+1)-A000169(n+1)`
-/

namespace A057500.P5222503362726824917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368951 (n + 1) - A000169 (n + 1)

end

end A057500.P5222503362726824917

/-! ## A057500.P10568950579269688275

`(A000435(n+1)-A053506(n+1))/2`
-/

namespace A057500.P10568950579269688275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000435 (n + 1) - A053506 (n + 1) : ℚ) / 2

end

end A057500.P10568950579269688275

/-! ## A057500.P6804744798664784037

`(A076728(n+1)-A185391(n))/2`
-/

namespace A057500.P6804744798664784037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076728 (n + 1) - A185391 n : ℚ) / 2

end

end A057500.P6804744798664784037

/-! ## A057500.P16993221929258045567

`A343088(∑[n+2]-1)`
-/

namespace A057500.P16993221929258045567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A057500.P16993221929258045567

/-!
# A057501: Signature-permutation of a Catalan Automorphism: Rotate non-crossing chords (handshake) arrangements; rotate the root position of general trees as encoded by A014486.

The programs for A057501, there is no canonical definition to state claims against.
-/

/-! ## A057501.P14279962010898411520

`A057509(A069770(n))`
-/

namespace A057501.P14279962010898411520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A069770 n).toNat

end

end A057501.P14279962010898411520

/-! ## A057501.P3892744438722668979

`A057163(A069773(A057163(n)))`
-/

namespace A057501.P3892744438722668979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069773 (A057163 n).toNat).toNat

end

end A057501.P3892744438722668979

/-! ## A057501.P14240239945000143064

`A057502(A082315(n))`
-/

namespace A057501.P14240239945000143064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A082315 n).toNat

end

end A057501.P14240239945000143064

/-! ## A057501.P7709453075185242558

`A069889(A082314(n))`
-/

namespace A057501.P7709453075185242558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A082314 n).toNat

end

end A057501.P7709453075185242558

/-! ## A057501.P9456752798565566590

`A069888(A057164(n))`
-/

namespace A057501.P9456752798565566590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A057164 n).toNat

end

end A057501.P9456752798565566590

/-! ## A057501.P6019627542507482306

`A082317(A082316(n))`
-/

namespace A057501.P6019627542507482306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A082316 n).toNat

end

end A057501.P6019627542507482306

/-! ## A057501.P8503570178029544922

`A082321(A082320(n))`
-/

namespace A057501.P8503570178029544922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A082320 n).toNat

end

end A057501.P8503570178029544922

/-! ## A057501.P11044875776919382170

`A069888(A069772(A069771(n)))`
-/

namespace A057501.P11044875776919382170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A069772 (A069771 n).toNat).toNat

end

end A057501.P11044875776919382170

/-! ## A057501.P10943923687549797345

`A057164(A069889(n))`
-/

namespace A057501.P10943923687549797345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A069889 n).toNat

end

end A057501.P10943923687549797345

/-! ## A057501.P6180785525370338214

`A082332(A057506(n))`
-/

namespace A057501.P6180785525370338214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082332 (A057506 n).toNat

end

end A057501.P6180785525370338214

/-! ## A057501.P10023147352318865382

`A082313(A069888(n))`
-/

namespace A057501.P10023147352318865382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A069888 n).toNat

end

end A057501.P10023147352318865382

/-! ## A057501.P3863511906141745061

`A085170(A074684(n))`
-/

namespace A057501.P3863511906141745061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A074684 n).toNat

end

end A057501.P3863511906141745061

/-! ## A057501.P2490302806898484885

`A082319(A082318(n))`
-/

namespace A057501.P2490302806898484885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082319 (A082318 n).toNat

end

end A057501.P2490302806898484885

/-! ## A057501.P3739764573768430765

`A082323(A082322(n))`
-/

namespace A057501.P3739764573768430765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082323 (A082322 n).toNat

end

end A057501.P3739764573768430765

/-! ## A057501.P994718635858672783

`A082334(A082331(n))`
-/

namespace A057501.P994718635858672783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082334 (A082331 n).toNat

end

end A057501.P994718635858672783

/-! ## A057501.P15242783971342045192

`A057509(A057502(A057509(n)))`
-/

namespace A057501.P15242783971342045192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A057502 (A057509 n).toNat).toNat

end

end A057501.P15242783971342045192

/-! ## A057501.P1207340273483240942

`A069772(A057502(A069772(n)))`
-/

namespace A057501.P1207340273483240942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A057502 (A069772 n).toNat).toNat

end

end A057501.P1207340273483240942

/-! ## A057501.P6159291239727362082

`A057509(A069776(A069773(n)))`
-/

namespace A057501.P6159291239727362082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A069776 (A069773 n).toNat).toNat

end

end A057501.P6159291239727362082

/-! ## A057501.P8539587636122466833

`A082317(A057502(A057502(n)))`
-/

namespace A057501.P8539587636122466833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A057502 (A057502 n).toNat).toNat

end

end A057501.P8539587636122466833

/-! ## A057501.P11919254621647077336

`A082313(A057502(A082313(n)))`
-/

namespace A057501.P11919254621647077336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A057502 (A082313 n).toNat).toNat

end

end A057501.P11919254621647077336

/-!
# A057502: Permutation of natural numbers: rotations of non-crossing handshakes encoded by A014486 (to opposite direction of A057501).

The programs for A057502, there is no canonical definition to state claims against.
-/

/-! ## A057502.P16996313325884838614

`A074683(A085169(n))`
-/

namespace A057502.P16996313325884838614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A085169 n).toNat

end

end A057502.P16996313325884838614

/-! ## A057502.P12992022829026066467

`A082318(A082315(n))`
-/

namespace A057502.P12992022829026066467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A082315 n).toNat

end

end A057502.P12992022829026066467

/-! ## A057502.P1078926999545157840

`A082322(A082319(n))`
-/

namespace A057502.P1078926999545157840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A082319 n).toNat

end

end A057502.P1078926999545157840

/-! ## A057502.P5426882860007656329

`A069889(A057164(n))`
-/

namespace A057502.P5426882860007656329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A057164 n).toNat

end

end A057502.P5426882860007656329

/-! ## A057502.P16177069365735292560

`A069770(A057510(n))`
-/

namespace A057502.P16177069365735292560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057510 n).toNat

end

end A057502.P16177069365735292560

/-! ## A057502.P10113592847791745482

`A057501(A082316(n))`
-/

namespace A057502.P10113592847791745482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A082316 n).toNat

end

end A057502.P10113592847791745482

/-! ## A057502.P11829747768601367272

`A069888(A082313(n))`
-/

namespace A057502.P11829747768601367272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A082313 n).toNat

end

end A057502.P11829747768601367272

/-! ## A057502.P2833870851704912125

`A069889(A069772(A069771(n)))`
-/

namespace A057502.P2833870851704912125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A069772 (A069771 n).toNat).toNat

end

end A057502.P2833870851704912125

/-! ## A057502.P9095934051623271321

`A057164(A069888(n))`
-/

namespace A057502.P9095934051623271321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A069888 n).toNat

end

end A057502.P9095934051623271321

/-! ## A057502.P7965469568992285770

`A057505(A082331(n))`
-/

namespace A057502.P7965469568992285770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A082331 n).toNat

end

end A057502.P7965469568992285770

/-! ## A057502.P1582634875373428283

`A082314(A069889(n))`
-/

namespace A057502.P1582634875373428283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A069889 n).toNat

end

end A057502.P1582634875373428283

/-! ## A057502.P11601299218211966634

`A082320(A082317(n))`
-/

namespace A057502.P11601299218211966634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082320 (A082317 n).toNat

end

end A057502.P11601299218211966634

/-! ## A057502.P450924194702294464

`A082324(A082321(n))`
-/

namespace A057502.P450924194702294464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A082321 n).toNat

end

end A057502.P450924194702294464

/-! ## A057502.P1836681331490799509

`A082332(A082333(n))`
-/

namespace A057502.P1836681331490799509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082332 (A082333 n).toNat

end

end A057502.P1836681331490799509

/-! ## A057502.P14545157885385876063

`A057163(A069774(A057163(n)))`
-/

namespace A057502.P14545157885385876063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069774 (A057163 n).toNat).toNat

end

end A057502.P14545157885385876063

/-! ## A057502.P8792708667657775948

`A069772(A057501(A069772(n)))`
-/

namespace A057502.P8792708667657775948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A057501 (A069772 n).toNat).toNat

end

end A057502.P8792708667657775948

/-! ## A057502.P19205661801233363

`A082318(A057501(A057501(n)))`
-/

namespace A057502.P19205661801233363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A057501 (A057501 n).toNat).toNat

end

end A057502.P19205661801233363

/-! ## A057502.P9079108190476233025

`A082314(A057501(A082314(n)))`
-/

namespace A057502.P9079108190476233025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A057501 (A082314 n).toNat).toNat

end

end A057502.P9079108190476233025

/-! ## A057502.P13568533741531139381

`A082315(A057501(A082320(n)))`
-/

namespace A057502.P13568533741531139381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A057501 (A082320 n).toNat).toNat

end

end A057502.P13568533741531139381

/-! ## A057502.P5023558306667794346

`A082317(A057501(A082322(n)))`
-/

namespace A057502.P5023558306667794346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A057501 (A082322 n).toNat).toNat

end

end A057502.P5023558306667794346

/-!
# A057503: Signature-permutation of a Catalan Automorphism: Deutsch's 1998 bijection on Dyck paths.

The programs for A057503, there is no canonical definition to state claims against.
-/

/-! ## A057503.P8454749397047167024

`A057164(A057162(A057164(n)))`
-/

namespace A057503.P8454749397047167024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057162 (A057164 n).toNat).toNat

end

end A057503.P8454749397047167024

/-! ## A057503.P7729276244000037934

`A057505(A057161(A057506(n)))`
-/

namespace A057503.P7729276244000037934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057161 (A057506 n).toNat).toNat

end

end A057503.P7729276244000037934

/-! ## A057503.P14730335291498840148

`A057164(A069768(A057164(A057508(n))))`
-/

namespace A057503.P14730335291498840148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A069768 (A057164 (A057508 n).toNat).toNat).toNat

end

end A057503.P14730335291498840148

/-! ## A057503.P13916301950848785433

`A057505(A057161(A071670(A071667(n))))`
-/

namespace A057503.P13916301950848785433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057161 (A071670 (A071667 n).toNat).toNat).toNat

end

end A057503.P13916301950848785433

/-! ## A057503.P7730738833874572736

`A057505(A057163(A057162(A057505(A057163(n)))))`
-/

namespace A057503.P7730738833874572736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057163 (A057162 (A057505 (A057163 n).toNat).toNat).toNat).toNat

end

end A057503.P7730738833874572736

/-! ## A057503.P11354549528639577443

`A057505(A069767(A057506(A069767(A057162(n)))))`
-/

namespace A057503.P11354549528639577443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A069767 (A057506 (A069767 (A057162 n).toNat).toNat).toNat).toNat

end

end A057503.P11354549528639577443

/-! ## A057503.P10831340997411695606

`A131163(A073289(n))`
-/

namespace A057503.P10831340997411695606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131163 (A073289 n).toNat

end

end A057503.P10831340997411695606

/-! ## A057503.P205120168104064540

`A057505(A057161(A125977(A057505(A125977(n)))))`
-/

namespace A057503.P205120168104064540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057161 (A125977 (A057505 (A125977 n).toNat).toNat).toNat).toNat

end

end A057503.P205120168104064540

/-! ## A057503.P17368035219147638461

`A074684(A089870(n))`
-/

namespace A057503.P17368035219147638461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A089870 n).toNat

end

end A057503.P17368035219147638461

/-! ## A057503.P89532410403748067

`A131163(A122349(n)%A157695(n+1))`
-/

namespace A057503.P89532410403748067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131163 (Int.tmod (A122349 n) (A157695 (n + 1))).toNat

end

end A057503.P89532410403748067

/-!
# A057504: Signature-permutation of the inverse of Deutsch's 1998 bijection on Dyck paths.

The programs for A057504, there is no canonical definition to state claims against.
-/

/-! ## A057504.P2524314647404261289

`A057164(A057161(A057164(n)))`
-/

namespace A057504.P2524314647404261289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057161 (A057164 n).toNat).toNat

end

end A057504.P2524314647404261289

/-! ## A057504.P7158687039645410738

`A057505(A057162(A057506(n)))`
-/

namespace A057504.P7158687039645410738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057162 (A057506 n).toNat).toNat

end

end A057504.P7158687039645410738

/-! ## A057504.P6951022501528704302

`A057505(A057162(A071670(A071667(n))))`
-/

namespace A057504.P6951022501528704302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057162 (A071670 (A071667 n).toNat).toNat).toNat

end

end A057504.P6951022501528704302

/-! ## A057504.P14509053731878031152

`A057505(A057163(A057161(A057505(A057163(n)))))`
-/

namespace A057504.P14509053731878031152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057163 (A057161 (A057505 (A057163 n).toNat).toNat).toNat).toNat

end

end A057504.P14509053731878031152

/-! ## A057504.P17983331246934291309

`A069888(A057501(A057161(A069888(A057501(n)))))`
-/

namespace A057504.P17983331246934291309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A057501 (A057161 (A069888 (A057501 n).toNat).toNat).toNat).toNat

end

end A057504.P17983331246934291309

/-! ## A057504.P6888023684266300540

`A057501(A069889(A057161(A057501(A069889(n)))))`
-/

namespace A057504.P6888023684266300540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A069889 (A057161 (A057501 (A069889 n).toNat).toNat).toNat).toNat

end

end A057504.P6888023684266300540

/-! ## A057504.P129731699251977268

`A069772(A069771(A057161(A069772(A069771(n)))))`
-/

namespace A057504.P129731699251977268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A069771 (A057161 (A069772 (A069771 n).toNat).toNat).toNat).toNat

end

end A057504.P129731699251977268

/-! ## A057504.P13440923621767923976

`A073288(A131164(n))`
-/

namespace A057504.P13440923621767923976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A131164 n).toNat

end

end A057504.P13440923621767923976

/-! ## A057504.P7343250051126641267

`A057505(A057162(A125977(A057505(A125977(n)))))`
-/

namespace A057504.P7343250051126641267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057162 (A125977 (A057505 (A125977 n).toNat).toNat).toNat).toNat

end

end A057504.P7343250051126641267

/-! ## A057504.P1489269275788004033

`A089869(A074683(n))`
-/

namespace A057504.P1489269275788004033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A074683 n).toNat

end

end A057504.P1489269275788004033

/-!
# A057505: Signature-permutation of a Catalan Automorphism: Donaghey's map M acting on the parenthesizations encoded by A014486.

The programs for A057505, there is no canonical definition to state claims against.
-/

/-! ## A057505.P11164773765739045544

`A057164(A057163(n))`
-/

namespace A057505.P11164773765739045544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057163 n).toNat

end

end A057505.P11164773765739045544

/-! ## A057505.P12448587090429287559

`A057506(A071661(n))`
-/

namespace A057505.P12448587090429287559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A071661 n).toNat

end

end A057505.P12448587090429287559

/-! ## A057505.P13457769244964636916

`A057506(A057506(A071663(n)))`
-/

namespace A057505.P13457769244964636916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 (A071663 n).toNat).toNat

end

end A057505.P13457769244964636916

/-! ## A057505.P18170957676529665327

`A057163(A069787(n))`
-/

namespace A057505.P18170957676529665327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069787 n).toNat

end

end A057505.P18170957676529665327

/-! ## A057505.P10755116152637834057

`A085174(A085171(n))`
-/

namespace A057505.P10755116152637834057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (A085171 n).toNat

end

end A057505.P10755116152637834057

/-! ## A057505.P933541514217602878

`A071668(A071669(n))`
-/

namespace A057505.P933541514217602878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A071669 n).toNat

end

end A057505.P933541514217602878

/-! ## A057505.P4867693908003399679

`A071663(A071662(n))`
-/

namespace A057505.P4867693908003399679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071663 (A071662 n).toNat

end

end A057505.P4867693908003399679

/-! ## A057505.P5092651472540594382

`A071664(A071665(n))`
-/

namespace A057505.P5092651472540594382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071664 (A071665 n).toNat

end

end A057505.P5092651472540594382

/-! ## A057505.P15014389808584491189

`A071667(A071666(n))`
-/

namespace A057505.P15014389808584491189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071666 n).toNat

end

end A057505.P15014389808584491189

/-! ## A057505.P1190667287523109890

`A071664(A057506(A071667(n)))`
-/

namespace A057505.P1190667287523109890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071664 (A057506 (A071667 n).toNat).toNat

end

end A057505.P1190667287523109890

/-! ## A057505.P14444676287288394521

`A071667(A071661(A071670(n)))`
-/

namespace A057505.P14444676287288394521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071661 (A071670 n).toNat).toNat

end

end A057505.P14444676287288394521

/-! ## A057505.P8103213501490893117

`A057502(A082332(n))`
-/

namespace A057505.P8103213501490893117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A082332 n).toNat

end

end A057505.P8103213501490893117

/-! ## A057505.P6598332295895659071

`A082332(A069773(n))`
-/

namespace A057505.P6598332295895659071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082332 (A069773 n).toNat

end

end A057505.P6598332295895659071

/-! ## A057505.P6811557663008910635

`A082316(A082334(n))`
-/

namespace A057505.P6811557663008910635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A082334 n).toNat

end

end A057505.P6811557663008910635

/-! ## A057505.P15329326265011873072

`A057164(A057506(A057164(n)))`
-/

namespace A057505.P15329326265011873072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057506 (A057164 n).toNat).toNat

end

end A057505.P15329326265011873072

/-! ## A057505.P16574529808984630923

`A057164(A072796(A073282(n)))`
-/

namespace A057505.P16574529808984630923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A072796 (A073282 n).toNat).toNat

end

end A057505.P16574529808984630923

/-! ## A057505.P12104337226913721879

`A057164(A082331(A069888(n)))`
-/

namespace A057505.P12104337226913721879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082331 (A069888 n).toNat).toNat

end

end A057505.P12104337226913721879

/-! ## A057505.P3037617423642576280

`A085169(A125981(n))`
-/

namespace A057505.P3037617423642576280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 (A125981 n).toNat

end

end A057505.P3037617423642576280

/-! ## A057505.P10235732497166387914

`A057164(A069767(A130981(n)))`
-/

namespace A057505.P10235732497166387914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A069767 (A130981 n).toNat).toNat

end

end A057505.P10235732497166387914

/-!
# A057506: Signature-permutation of a Catalan Automorphism: (inverse of) "Donaghey's map M", acting on the parenthesizations encoded by A014486.

The programs for A057506, there is no canonical definition to state claims against.
-/

/-! ## A057506.P10967889187529807048

`A057163(A057164(n))`
-/

namespace A057506.P10967889187529807048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057164 n).toNat

end

end A057506.P10967889187529807048

/-! ## A057506.P13419385424930402287

`A057163(A057505(A057163(n)))`
-/

namespace A057506.P13419385424930402287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057505 (A057163 n).toNat).toNat

end

end A057506.P13419385424930402287

/-! ## A057506.P5753123693431095072

`A082333(A082315(n))`
-/

namespace A057506.P5753123693431095072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A082315 n).toNat

end

end A057506.P5753123693431095072

/-! ## A057506.P15756532778685702028

`A071667(A071670(n))`
-/

namespace A057506.P15756532778685702028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071667 (A071670 n).toNat

end

end A057506.P15756532778685702028

/-! ## A057506.P9438030883987802304

`A057505(A071662(n))`
-/

namespace A057506.P9438030883987802304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A071662 n).toNat

end

end A057506.P9438030883987802304

/-! ## A057506.P5653048721912329091

`A071664(A071661(n))`
-/

namespace A057506.P5653048721912329091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071664 (A071661 n).toNat

end

end A057506.P5653048721912329091

/-! ## A057506.P6802252511022823058

`A071668(A071665(n))`
-/

namespace A057506.P6802252511022823058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A071665 n).toNat

end

end A057506.P6802252511022823058

/-! ## A057506.P14593578072620543477

`A071663(A071666(n))`
-/

namespace A057506.P14593578072620543477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071663 (A071666 n).toNat

end

end A057506.P14593578072620543477

/-! ## A057506.P7926653190770561628

`A071668(A071662(A071669(n)))`
-/

namespace A057506.P7926653190770561628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A071662 (A071669 n).toNat).toNat

end

end A057506.P7926653190770561628

/-! ## A057506.P6225841204346967593

`A069787(A057163(n))`
-/

namespace A057506.P6225841204346967593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A057163 n).toNat

end

end A057506.P6225841204346967593

/-! ## A057506.P17063007582327346443

`A082331(A057501(n))`
-/

namespace A057506.P17063007582327346443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A057501 n).toNat

end

end A057506.P17063007582327346443

/-! ## A057506.P14453280762652197742

`A069774(A082331(n))`
-/

namespace A057506.P14453280762652197742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069774 (A082331 n).toNat

end

end A057506.P14453280762652197742

/-! ## A057506.P12872770549099996965

`A085172(A085173(n))`
-/

namespace A057506.P12872770549099996965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 (A085173 n).toNat

end

end A057506.P12872770549099996965

/-! ## A057506.P8594153400867760764

`A071664(A057505(A057505(n)))`
-/

namespace A057506.P8594153400867760764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071664 (A057505 (A057505 n).toNat).toNat

end

end A057506.P8594153400867760764

/-! ## A057506.P4592140946510973884

`A082331(A057164(A069889(n)))`
-/

namespace A057506.P4592140946510973884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A057164 (A069889 n).toNat).toNat

end

end A057506.P4592140946510973884

/-! ## A057506.P3287633616895956712

`A071661(A071661(A071668(n)))`
-/

namespace A057506.P3287633616895956712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 (A071661 (A071668 n).toNat).toNat

end

end A057506.P3287633616895956712

/-! ## A057506.P8163989102091998015

`A082331(A082313(A069888(n)))`
-/

namespace A057506.P8163989102091998015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A082313 (A069888 n).toNat).toNat

end

end A057506.P8163989102091998015

/-! ## A057506.P991659546595318649

`A057164(A057505(A057164(n)%A017341(n)))`
-/

namespace A057506.P991659546595318649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057505 (Int.tmod (A057164 n) (A017341 n)).toNat).toNat

end

end A057506.P991659546595318649

/-! ## A057506.P2949628797528274655

`A072772(A080067(n))`
-/

namespace A057506.P2949628797528274655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072772 (A080067 n).toNat

end

end A057506.P2949628797528274655

/-! ## A057506.P3899453212822334145

`A125982(A085170(n))`
-/

namespace A057506.P3899453212822334145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A085170 n).toNat

end

end A057506.P3899453212822334145

/-!
# A057507: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A057505/A057506.

The programs for A057507, there is no canonical definition to state claims against.
-/

/-! ## A057507.P11953122002752116963

`A081150(n)+A081148(n)`
-/

namespace A057507.P11953122002752116963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 n + A081148 n

end

end A057507.P11953122002752116963

/-! ## A057507.P17037410642627125661

`A079437(n)-A081150(n)`
-/

namespace A057507.P17037410642627125661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079437 n - A081150 n

end

end A057507.P17037410642627125661

/-! ## A057507.P14109033905749915130

`(A081148(n)+A079437(n))/2`
-/

namespace A057507.P14109033905749915130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081148 n + A079437 n : ℚ) / 2

end

end A057507.P14109033905749915130

/-! ## A057507.P5971307952108914614

`A081150(n)+A081155(n)+A081153(n)`
-/

namespace A057507.P5971307952108914614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 n + (A081155 n + A081153 n)

end

end A057507.P5971307952108914614

/-! ## A057507.P16307493435698799782

`A081148(n)-A008683(A007918(n))*A081150(n)`
-/

namespace A057507.P16307493435698799782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081148 n - A008683 (A007918 n).toNat * A081150 n

end

end A057507.P16307493435698799782

/-!
# A057508: Self-inverse permutation of natural numbers induced by the function 'reverse' (present in programming languages like Lisp, Scheme, Prolog and Haskell) when it acts on symbolless S-expressions encoded by A014486/A063171.

The programs for A057508, there is no canonical definition to state claims against.
-/

/-! ## A057508.P9108952979882400976

`A085161(A085163(n))`
-/

namespace A057508.P9108952979882400976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085163 n).toNat

end

end A057508.P9108952979882400976

/-! ## A057508.P8669252533406821384

`A085164(A085161(n))`
-/

namespace A057508.P8669252533406821384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085164 (A085161 n).toNat

end

end A057508.P8669252533406821384

/-! ## A057508.P14596285584884482988

`A069767(A057162(n))`
-/

namespace A057508.P14596285584884482988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A057162 n).toNat

end

end A057508.P14596285584884482988

/-! ## A057508.P11321540232521564692

`A057161(A069768(n))`
-/

namespace A057508.P11321540232521564692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A069768 n).toNat

end

end A057508.P11321540232521564692

/-! ## A057508.P7193737395480261809

`A057163(A069769(A057163(n)))`
-/

namespace A057508.P7193737395480261809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069769 (A057163 n).toNat).toNat

end

end A057508.P7193737395480261809

/-! ## A057508.P17566095847815274029

`A069767(A057164(A057503(A057164(n))))`
-/

namespace A057508.P17566095847815274029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A057164 (A057503 (A057164 n).toNat).toNat).toNat

end

end A057508.P17566095847815274029

/-! ## A057508.P283970524810539799

`A057161(A069769(A057162(A057162(A057161(n)))))`
-/

namespace A057508.P283970524810539799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A069769 (A057162 (A057162 (A057161 n).toNat).toNat).toNat).toNat

end

end A057508.P283970524810539799

/-! ## A057508.P4294537384997521111

`A057161(A073295(A069767(A069767(A069767(n)))))`
-/

namespace A057508.P4294537384997521111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A073295 (A069767 (A069767 (A069767 n).toNat).toNat).toNat).toNat

end

end A057508.P4294537384997521111

/-! ## A057508.P15437502088821064245

`A057161(A069770(A130342(n)))`
-/

namespace A057508.P15437502088821064245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A069770 (A130342 n).toNat).toNat

end

end A057508.P15437502088821064245

/-! ## A057508.P11896028762471080700

`A057161(A130981(A069767(A130981(n))))`
-/

namespace A057508.P11896028762471080700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A130981 (A069767 (A130981 n).toNat).toNat).toNat

end

end A057508.P11896028762471080700

/-!
# A057509: Permutation of natural numbers: rotations of the bottom branches of the rooted plane trees encoded by A014486.

The programs for A057509, there is no canonical definition to state claims against.
-/

/-! ## A057509.P10176683569536793926

`A057164(A057510(A057164(n)))`
-/

namespace A057509.P10176683569536793926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057510 (A057164 n).toNat).toNat

end

end A057509.P10176683569536793926

/-! ## A057509.P2653727521677314561

`A057508(A057510(A057508(n)))`
-/

namespace A057509.P2653727521677314561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A057510 (A057508 n).toNat).toNat

end

end A057509.P2653727521677314561

/-! ## A057509.P1392350203864520387

`A057501(A069770(n))`
-/

namespace A057509.P1392350203864520387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A069770 n).toNat

end

end A057509.P1392350203864520387

/-! ## A057509.P3693433558083393388

`A057163(A069775(A057163(n)))`
-/

namespace A057509.P3693433558083393388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069775 (A057163 n).toNat).toNat

end

end A057509.P3693433558083393388

/-! ## A057509.P4051226378531261578

`A057501(A069774(A069775(n)))`
-/

namespace A057509.P4051226378531261578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A069774 (A069775 n).toNat).toNat

end

end A057509.P4051226378531261578

/-! ## A057509.P11493504263996160852

`A057501(A072796(A074680(A072797(n))))`
-/

namespace A057509.P11493504263996160852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A072796 (A074680 (A072797 n).toNat).toNat).toNat

end

end A057509.P11493504263996160852

/-! ## A057509.P8246300301999300354

`A085170(A074684(A085168(A085159(n))))`
-/

namespace A057509.P8246300301999300354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A074684 (A085168 (A085159 n).toNat).toNat).toNat

end

end A057509.P8246300301999300354

/-! ## A057509.P4213408662919989126

`A057163(A057162(A057510(A057163(A057162(n)))))`
-/

namespace A057509.P4213408662919989126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057162 (A057510 (A057163 (A057162 n).toNat).toNat).toNat).toNat

end

end A057509.P4213408662919989126

/-! ## A057509.P14343593978136692246

`A057163(A069773(A057163(A069776(A069773(n)))))`
-/

namespace A057509.P14343593978136692246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069773 (A057163 (A069776 (A069773 n).toNat).toNat).toNat).toNat

end

end A057509.P14343593978136692246

/-! ## A057509.P5649044323742116019

`A130363(A069768(n))`
-/

namespace A057509.P5649044323742116019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130363 (A069768 n).toNat

end

end A057509.P5649044323742116019

/-! ## A057509.P15985525643654098842

`A130347(A130342(n))`
-/

namespace A057509.P15985525643654098842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130347 (A130342 n).toNat

end

end A057509.P15985525643654098842

/-! ## A057509.P14669728741680596553

`A057501(A154126(A154125(n)))`
-/

namespace A057509.P14669728741680596553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A154126 (A154125 n).toNat).toNat

end

end A057509.P14669728741680596553

/-! ## A057509.P12434863423223507935

`A057501(A072764(A072767(n)))`
-/

namespace A057509.P12434863423223507935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A072764 (A072767 n).toNat).toNat

end

end A057509.P12434863423223507935

/-! ## A057509.P18116792981549392637

`A057501(A072766(A072765(n)))`
-/

namespace A057509.P18116792981549392637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A072766 (A072765 n).toNat).toNat

end

end A057509.P18116792981549392637

/-!
# A057510: Permutation of natural numbers: rotations of the bottom branches of the rooted plane trees encoded by A014486 (to opposite direction of A057509).

The programs for A057510, there is no canonical definition to state claims against.
-/

/-! ## A057510.P13155154992932466664

`A057164(A057509(A057164(n)))`
-/

namespace A057510.P13155154992932466664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057509 (A057164 n).toNat).toNat

end

end A057510.P13155154992932466664

/-! ## A057510.P1338187623305327803

`A057508(A057509(A057508(n)))`
-/

namespace A057510.P1338187623305327803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A057509 (A057508 n).toNat).toNat

end

end A057510.P1338187623305327803

/-! ## A057510.P14401340069518448808

`A069770(A057502(n))`
-/

namespace A057510.P14401340069518448808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057502 n).toNat

end

end A057510.P14401340069518448808

/-! ## A057510.P14374173819336843997

`A057163(A069776(A057163(n)))`
-/

namespace A057510.P14374173819336843997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069776 (A057163 n).toNat).toNat

end

end A057510.P14374173819336843997

/-! ## A057510.P2407927960041116012

`A057163(A057162(A057509(A057163(A057162(n)))))`
-/

namespace A057510.P2407927960041116012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057162 (A057509 (A057163 (A057162 n).toNat).toNat).toNat).toNat

end

end A057510.P2407927960041116012

/-! ## A057510.P9267925376397062891

`A057502(A057509(A057502(A057502(A057501(n)))))`
-/

namespace A057510.P9267925376397062891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057509 (A057502 (A057502 (A057501 n).toNat).toNat).toNat).toNat

end

end A057510.P9267925376397062891

/-! ## A057510.P10340140431564856909

`A069776(A069773(A057502(A069774(A069773(n)))))`
-/

namespace A057510.P10340140431564856909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069776 (A069773 (A057502 (A069774 (A069773 n).toNat).toNat).toNat).toNat

end

end A057510.P10340140431564856909

/-! ## A057510.P12543214144295662778

`A085168(A085159(A085170(A085160(A074684(n)))))`
-/

namespace A057510.P12543214144295662778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085168 (A085159 (A085170 (A085160 (A074684 n).toNat).toNat).toNat).toNat

end

end A057510.P12543214144295662778

/-! ## A057510.P15506244423261726763

`A069767(A130364(n))`
-/

namespace A057510.P15506244423261726763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A130364 n).toNat

end

end A057510.P15506244423261726763

/-! ## A057510.P4494495475266729740

`A130341(A130348(n))`
-/

namespace A057510.P4494495475266729740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A130348 n).toNat

end

end A057510.P4494495475266729740

/-! ## A057510.P16485873614213256381

`A131006(A130365(A131005(A069768(n))))`
-/

namespace A057510.P16485873614213256381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131006 (A130365 (A131005 (A069768 n).toNat).toNat).toNat

end

end A057510.P16485873614213256381

/-!
# A057511: Permutation of natural numbers: rotations of all branches of the rooted plane trees encoded by A014486.

The programs for A057511, there is no canonical definition to state claims against.
-/

/-! ## A057511.P2555812107772058656

`A057164(A057512(A057164(n)))`
-/

namespace A057511.P2555812107772058656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057512 (A057164 n).toNat).toNat

end

end A057511.P2555812107772058656

/-! ## A057511.P1404737831035740643

`A057163(A082325(A057163(n)))`
-/

namespace A057511.P1404737831035740643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082325 (A057163 n).toNat).toNat

end

end A057511.P1404737831035740643

/-! ## A057511.P8148696041164250223

`A057163(A122297(n))`
-/

namespace A057511.P8148696041164250223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122297 n).toNat

end

end A057511.P8148696041164250223

/-! ## A057511.P6682609364533389454

`A074684(A122302(n))`
-/

namespace A057511.P6682609364533389454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A122302 n).toNat

end

end A057511.P6682609364533389454

/-! ## A057511.P7881948715860194531

`A122357(A057163(n))`
-/

namespace A057511.P7881948715860194531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122357 (A057163 n).toNat

end

end A057511.P7881948715860194531

/-! ## A057511.P15711483901534060076

`A122347(A122342(n))`
-/

namespace A057511.P15711483901534060076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122347 (A122342 n).toNat

end

end A057511.P15711483901534060076

/-!
# A057512: Permutation of natural numbers: rotations of all branches of the rooted plane trees encoded by A014486. (to opposite direction of A057511).

The programs for A057512, there is no canonical definition to state claims against.
-/

/-! ## A057512.P14428936116979630361

`A057164(A057511(A057164(n)))`
-/

namespace A057512.P14428936116979630361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057511 (A057164 n).toNat).toNat

end

end A057512.P14428936116979630361

/-! ## A057512.P12005619069259073225

`A057163(A082326(A057163(n)))`
-/

namespace A057512.P12005619069259073225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082326 (A057163 n).toNat).toNat

end

end A057512.P12005619069259073225

/-! ## A057512.P15658362012649775756

`A057163(A057506(A057511(A057163(A057506(n)))))`
-/

namespace A057512.P15658362012649775756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057506 (A057511 (A057163 (A057506 n).toNat).toNat).toNat).toNat

end

end A057512.P15658362012649775756

/-! ## A057512.P3102511881040401387

`A057163(A122358(n))`
-/

namespace A057512.P3102511881040401387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122358 n).toNat

end

end A057512.P3102511881040401387

/-! ## A057512.P566297387518785237

`A122364(A057511(A122364(n)))`
-/

namespace A057512.P566297387518785237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122364 (A057511 (A122364 n).toNat).toNat

end

end A057512.P566297387518785237

/-! ## A057512.P8151150147907037887

`A122298(A057163(n))`
-/

namespace A057512.P8151150147907037887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122298 (A057163 n).toNat

end

end A057512.P8151150147907037887

/-! ## A057512.P260435263540985855

`A122301(A074683(n))`
-/

namespace A057512.P260435263540985855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (A074683 n).toNat

end

end A057512.P260435263540985855

/-! ## A057512.P16443522617177271504

`A122341(A122348(n))`
-/

namespace A057512.P16443522617177271504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122341 (A122348 n).toNat

end

end A057512.P16443522617177271504

/-! ## A057512.P4011189143140412294

`A122298(A122350(A122350(A122350(A122302(n)))))`
-/

namespace A057512.P4011189143140412294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122298 (A122350 (A122350 (A122350 (A122302 n).toNat).toNat).toNat).toNat

end

end A057512.P4011189143140412294

/-!
# A057513: Number of separate orbits to which permutations given in A057511/A057512 (induced by deep rotation of general parenthesizations/plane trees) partition each A000108(n) objects encoded by A014486 between (A014138(n-1)+1)-th and (A014138(n))-th terms.

The programs for A057513, there is no canonical definition to state claims against.
-/

/-! ## A057513.P6073134012649590696

`A200512(A148073(n))+A148073(n)`
-/

namespace A057513.P6073134012649590696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 (A148073 n).toNat + A148073 n

end

end A057513.P6073134012649590696

/-! ## A057513.P1310620412388375113

`floor(root(A078676(n+1), sqrt(7)))`
-/

namespace A057513.P1310620412388375113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078676 (n + 1) : ℝ) ^ (1 / Real.sqrt (7 : ℝ))⌋

end

end A057513.P1310620412388375113

/-! ## A057513.P6723481392738340157

`round(sqrt(A039006(n!+1)+1))`
-/

namespace A057513.P6723481392738340157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A039006 (Nat.factorial n + 1) + 1 : ℝ))

end

end A057513.P6723481392738340157

/-! ## A057513.P1589969196251328279

`A148073(A073789(n))`
-/

namespace A057513.P1589969196251328279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148073 (A073789 n).toNat

end

end A057513.P1589969196251328279

/-!
# A057514: Number of peaks in mountain ranges encoded by A014486, number of leaves in the corresponding rooted plane trees (the root node is never counted as a leaf).

The programs for A057514, there is no canonical definition to state claims against.
-/

/-! ## A057514.P16969773471732508021

`A005811(A014486(n))/2`
-/

namespace A057514.P16969773471732508021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005811 (A014486 n).toNat : ℚ) / 2

end

end A057514.P16969773471732508021

/-! ## A057514.P12891402617401561516

`A127284(n)+A057427(n)`
-/

namespace A057514.P12891402617401561516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 n + A057427 n

end

end A057514.P12891402617401561516

/-! ## A057514.P17919160420384182138

`A127284(n)-A057428(n)`
-/

namespace A057514.P17919160420384182138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 n - A057428 n

end

end A057514.P17919160420384182138

/-! ## A057514.P8824246044637959060

`A072643(n)-A126306(n)`
-/

namespace A057514.P8824246044637959060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 n - A126306 n

end

end A057514.P8824246044637959060

/-! ## A057514.P14712883592007890103

`A057515(n)+A127284(n)-A057516(n)`
-/

namespace A057514.P14712883592007890103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n + (A127284 n - A057516 n)

end

end A057514.P14712883592007890103

/-! ## A057514.P2324753761563977525

`A126306(A057506(n))+A057427(n)`
-/

namespace A057514.P2324753761563977525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A057506 n).toNat + A057427 n

end

end A057514.P2324753761563977525

/-! ## A057514.P9954809504949406621

`A127284(A072795(n))`
-/

namespace A057514.P9954809504949406621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A072795 n).toNat

end

end A057514.P9954809504949406621

/-! ## A057514.P13551552151993167051

`A126306(A057506(n))+A023532(A151800(3*(n+1)))`
-/

namespace A057514.P13551552151993167051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A057506 n).toNat + A023532 (A151800 (3 * (n + 1))).toNat

end

end A057514.P13551552151993167051

/-! ## A057514.P335582807048158769

`A127284(A085223(n))`
-/

namespace A057514.P335582807048158769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A085223 n).toNat

end

end A057514.P335582807048158769

/-! ## A057514.P16655615821783359577

`A109129(A127301(n))`
-/

namespace A057514.P16655615821783359577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A127301 n).toNat

end

end A057514.P16655615821783359577

/-! ## A057514.P13213805022430055072

`A109129(A243491(n))`
-/

namespace A057514.P13213805022430055072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A243491 n).toNat

end

end A057514.P13213805022430055072

/-! ## A057514.P9083442693153071030

`A342507(A395051(n))`
-/

namespace A057514.P9083442693153071030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (A395051 n).toNat

end

end A057514.P9083442693153071030

/-! ## A057514.P6987031098590766696

`A342507(A127301(A057163(n)))`
-/

namespace A057514.P6987031098590766696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (A127301 (A057163 n).toNat).toNat

end

end A057514.P6987031098590766696

/-! ## A057514.P5874931737870049629

`A069010(A014486(n))`
-/

namespace A057514.P5874931737870049629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A014486 n).toNat

end

end A057514.P5874931737870049629

/-! ## A057514.P1399114298042854647

`A060130(A059985(n))`
-/

namespace A057514.P1399114298042854647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A059985 n).toNat

end

end A057514.P1399114298042854647

/-! ## A057514.P8083541987847308608

`A069010(A057520(n))`
-/

namespace A057514.P8083541987847308608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A057520 n).toNat

end

end A057514.P8083541987847308608

/-! ## A057514.P3381630395520855058

`A060502(A071155(n))`
-/

namespace A057514.P3381630395520855058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A071155 n).toNat

end

end A057514.P3381630395520855058

/-! ## A057514.P8707987880257090657

`A060502(A071156(n))`
-/

namespace A057514.P8707987880257090657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A071156 n).toNat

end

end A057514.P8707987880257090657

/-! ## A057514.P6256167062365034156

`A069010(A072800(n))`
-/

namespace A057514.P6256167062365034156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A072800 n).toNat

end

end A057514.P6256167062365034156

/-! ## A057514.P16791958532078994990

`A069010(A194045(n)/2)`
-/

namespace A057514.P16791958532078994990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat

end

end A057514.P16791958532078994990

/-!
# A057515: Number of separate "mountains" in mountain ranges encoded by A014486, number of bottom branches (trunks) in the corresponding rooted plane trees, i.e., the degree of the root node.

The programs for A057515, there is no canonical definition to state claims against.
-/

/-! ## A057515.P12401906288098621516

`∑{e}[A127301(n), #]`
-/

namespace A057515.P12401906288098621516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A057515.P12401906288098621516

/-! ## A057515.P15562655617006113208

`ceil(A057516(n)+sin(n)²)`
-/

namespace A057515.P15562655617006113208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057516 n : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A057515.P15562655617006113208

/-! ## A057515.P10829213833580514155

`A057516(n)+A057427(n)`
-/

namespace A057515.P10829213833580514155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n + A057427 n

end

end A057515.P10829213833580514155

/-! ## A057515.P1053077948743372453

`A057516(n)-A057428(n)`
-/

namespace A057515.P1053077948743372453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n - A057428 n

end

end A057515.P1053077948743372453

/-! ## A057515.P11196058063192395765

`A057516(n)+1-A000007(n)`
-/

namespace A057515.P11196058063192395765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n + (1 - A000007 n)

end

end A057515.P11196058063192395765

/-! ## A057515.P5239666671237681574

`(A057516(n)+1)%A181402(n+1)`
-/

namespace A057515.P5239666671237681574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057516 n + 1) (A181402 (n + 1))

end

end A057515.P5239666671237681574

/-! ## A057515.P12709701456061251682

`A057516(n)+A000040(n+1)%2`
-/

namespace A057515.P12709701456061251682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n + Int.tmod (A000040 (n + 1)) 2

end

end A057515.P12709701456061251682

/-! ## A057515.P1410950591425229908

`A057516(n)+A001221(A000015(n+1))`
-/

namespace A057515.P1410950591425229908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n + A001221 (A000015 (n + 1)).toNat

end

end A057515.P1410950591425229908

/-! ## A057515.P6901238765171650038

`A057516(n)+A001222(A002233(n+1))`
-/

namespace A057515.P6901238765171650038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n + A001222 (A002233 (n + 1)).toNat

end

end A057515.P6901238765171650038

/-! ## A057515.P6019259490472110259

`A057516(n)+A001221(A034444(n+1))`
-/

namespace A057515.P6019259490472110259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n + A001221 (A034444 (n + 1)).toNat

end

end A057515.P6019259490472110259

/-! ## A057515.P13977285950159227369

`A057516(n)+A001221(A034699(n+1))`
-/

namespace A057515.P13977285950159227369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n + A001221 (A034699 (n + 1)).toNat

end

end A057515.P13977285950159227369

/-! ## A057515.P11485654443948067128

`A057514(n)+A057516(n)-A127284(n)`
-/

namespace A057515.P11485654443948067128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057514 n + (A057516 n - A127284 n)

end

end A057515.P11485654443948067128

/-! ## A057515.P1460054629234264616

`A057516(n)+A001221(A000961(n+1))`
-/

namespace A057515.P1460054629234264616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n + A001221 (A000961 (n + 1)).toNat

end

end A057515.P1460054629234264616

/-! ## A057515.P8544835094668426640

`A001222(A127301(n))`
-/

namespace A057515.P8544835094668426640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A127301 n).toNat

end

end A057515.P8544835094668426640

/-! ## A057515.P11371504088232724452

`A001222(A243491(n)-A243492(n))`
-/

namespace A057515.P11371504088232724452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A243491 n - A243492 n).toNat

end

end A057515.P11371504088232724452

/-! ## A057515.P13852962333443585799

`A057516(A072795(n))`
-/

namespace A057515.P13852962333443585799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 (A072795 n).toNat

end

end A057515.P13852962333443585799

/-! ## A057515.P457111939076079560

`A057516(n)+A008683(2*A000040(n+1))`
-/

namespace A057515.P457111939076079560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n + A008683 (2 * A000040 (n + 1)).toNat

end

end A057515.P457111939076079560

/-! ## A057515.P8995573667332424042

`A057516(A085223(n))`
-/

namespace A057515.P8995573667332424042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 (A085223 n).toNat

end

end A057515.P8995573667332424042

/-! ## A057515.P17310866284972987281

`A252736(2*A127301(n))`
-/

namespace A057515.P17310866284972987281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A127301 n).toNat

end

end A057515.P17310866284972987281

/-! ## A057515.P13124758717828447780

`A057516(n)+A002828(n²)`
-/

namespace A057515.P13124758717828447780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n + A002828 (n ^ 2)

end

end A057515.P13124758717828447780

/-!
# A057516: Number of sea-level valleys in Catalan mountain ranges encoded by A014486.

The programs for A057516, there is no canonical definition to state claims against.
-/

/-! ## A057516.P3730130864402427578

`floor(log(cosh(A057515(n))))`
-/

namespace A057516.P3730130864402427578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A057515 n : ℝ))⌋

end

end A057516.P3730130864402427578

/-! ## A057516.P852994167211185520

`A057515(C(2, n+2)+n)-1`
-/

namespace A057516.P852994167211185520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (Nat.choose 2 (n + 2) + n) - 1

end

end A057516.P852994167211185520

/-! ## A057516.P12864093746294626629

`A289207(A057515(n)+1)`
-/

namespace A057516.P12864093746294626629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A057515 n + 1).toNat

end

end A057516.P12864093746294626629

/-! ## A057516.P8970689179524763432

`A057515(A028310(n))-1`
-/

namespace A057516.P8970689179524763432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A028310 n).toNat - 1

end

end A057516.P8970689179524763432

/-! ## A057516.P16555197362698135906

`A046660(2^A057515(n))`
-/

namespace A057516.P16555197362698135906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A057515 n : ℤ))).toNat

end

end A057516.P16555197362698135906

/-! ## A057516.P16651082710525977605

`A085201(C(A057515(n), 2))`
-/

namespace A057516.P16651082710525977605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085201 (Nat.choose (A057515 n).toNat 2)

end

end A057516.P16651082710525977605

/-! ## A057516.P10858965582589372602

`A089840(C(A057515(n), 2))`
-/

namespace A057516.P10858965582589372602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (Nat.choose (A057515 n).toNat 2)

end

end A057516.P10858965582589372602

/-! ## A057516.P5518512471604203053

`A122200(C(A057515(n), 2))`
-/

namespace A057516.P5518512471604203053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 (Nat.choose (A057515 n).toNat 2)

end

end A057516.P5518512471604203053

/-! ## A057516.P15388171787249519522

`A122203(C(A057515(n), 2))`
-/

namespace A057516.P15388171787249519522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (Nat.choose (A057515 n).toNat 2)

end

end A057516.P15388171787249519522

/-! ## A057516.P2611214865143318490

`A122204(C(A057515(n), 2))`
-/

namespace A057516.P2611214865143318490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (Nat.choose (A057515 n).toNat 2)

end

end A057516.P2611214865143318490

/-! ## A057516.P2029059633665458173

`A122285(C(A057515(n), 2))`
-/

namespace A057516.P2029059633665458173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 (Nat.choose (A057515 n).toNat 2)

end

end A057516.P2029059633665458173

/-! ## A057516.P13013386385539329613

`A057515(n)+A057428(n)`
-/

namespace A057516.P13013386385539329613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n + A057428 n

end

end A057516.P13013386385539329613

/-! ## A057516.P17530152400154528541

`A057515(n)-A057427(n)`
-/

namespace A057516.P17530152400154528541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n - A057427 n

end

end A057516.P17530152400154528541

/-! ## A057516.P15600866601171693666

`A057515(A000007(n)+n)-1`
-/

namespace A057516.P15600866601171693666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A000007 n + (n : ℤ)).toNat - 1

end

end A057516.P15600866601171693666

/-! ## A057516.P14379592755112052436

`A000007(n)-(1-A057515(n))`
-/

namespace A057516.P14379592755112052436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (1 - A057515 n)

end

end A057516.P14379592755112052436

/-! ## A057516.P1153164860051387519

`A057515(A004277(n)-n)-1`
-/

namespace A057516.P1153164860051387519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A004277 n - (n : ℤ)).toNat - 1

end

end A057516.P1153164860051387519

/-! ## A057516.P17020916489529031638

`A057515(n)-A000040(n+1)%2`
-/

namespace A057516.P17020916489529031638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n - Int.tmod (A000040 (n + 1)) 2

end

end A057516.P17020916489529031638

/-! ## A057516.P1642755905043368864

`A057515(n)+-1%A020639(n+1)`
-/

namespace A057516.P1642755905043368864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n + Int.tmod (-1) (A020639 (n + 1))

end

end A057516.P1642755905043368864

/-! ## A057516.P16471456686236832341

`A057515(n)-A001221(A001316(n))`
-/

namespace A057516.P16471456686236832341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n - A001221 (A001316 n).toNat

end

end A057516.P16471456686236832341

/-! ## A057516.P15179438087452181164

`A057515(n)+A127284(n)-A057514(n)`
-/

namespace A057516.P15179438087452181164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n + (A127284 n - A057514 n)

end

end A057516.P15179438087452181164

/-!
# A057517: Binary encodings of the Catalan mountain ranges with exactly one sea-level valley, i.e., the rooted plane trees with root degree = 2.

The programs for A057517, there is no canonical definition to state claims against.
-/

/-! ## A057517.P16822675992955750002

`A014486(A057518(n+1))`
-/

namespace A057517.P16822675992955750002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057518 (n + 1)).toNat

end

end A057517.P16822675992955750002

/-! ## A057517.P6769371438034605835

`A014486(A153242(A057549(n+1)))`
-/

namespace A057517.P6769371438034605835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A153242 (A057549 (n + 1)).toNat).toNat

end

end A057517.P6769371438034605835

/-! ## A057517.P18057234349037899484

`A014486(eq[1, A057516(n)])`
-/

namespace A057517.P18057234349037899484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057517.P18057234349037899484

/-! ## A057517.P15826171234660924046

`A014486(eq[2, A057515(n)])`
-/

namespace A057517.P15826171234660924046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057517.P15826171234660924046

/-! ## A057517.P18083720412133999260

`A020639(2*(n+1))*A057520(A057518(n+1))`
-/

namespace A057517.P18083720412133999260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) * A057520 (A057518 (n + 1)).toNat

end

end A057517.P18083720412133999260

/-! ## A057517.P4846207724839744745

`(A007318(C(2, n+1))+1)*A057520(A057518(n+1))`
-/

namespace A057517.P4846207724839744745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 (Nat.choose 2 (n + 1)) + 1) * A057520 (A057518 (n + 1)).toNat

end

end A057517.P4846207724839744745

/-! ## A057517.P2109213184805560277

`A000005(A001359(n+1))*A057520(A057518(n+1))`
-/

namespace A057517.P2109213184805560277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001359 (n + 1)).toNat * A057520 (A057518 (n + 1)).toNat

end

end A057517.P2109213184805560277

/-! ## A057517.P3391047546365186037

`A000005(A005384(n+1))*A057520(A057518(n+1))`
-/

namespace A057517.P3391047546365186037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005384 (n + 1)).toNat * A057520 (A057518 (n + 1)).toNat

end

end A057517.P3391047546365186037

/-!
# A057518: The global ranks of each term of A057517, i.e., tells that A057515(A057518(n)) = 2 for all n.

The programs for A057518, there is no canonical definition to state claims against.
-/

/-! ## A057518.P4512572623411603528

`A057519(n+1)+A057548(n+1)-A057549(n+1)`
-/

namespace A057518.P4512572623411603528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057519 (n + 1) + (A057548 (n + 1) - A057549 (n + 1))

end

end A057518.P4512572623411603528

/-! ## A057518.P14662970884109502299

`A082353(A072795(n+1))`
-/

namespace A057518.P14662970884109502299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082353 (A072795 (n + 1)).toNat

end

end A057518.P14662970884109502299

/-! ## A057518.P4943804287967410819

`A153242(∑[A057550(n)])`
-/

namespace A057518.P4943804287967410819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057518.P4943804287967410819

/-! ## A057518.P3746515891340815445

`A153242(A057549(n+1))`
-/

namespace A057518.P3746515891340815445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153242 (A057549 (n + 1)).toNat

end

end A057518.P3746515891340815445

/-! ## A057518.P8340834861571052349

`eq[1, A057516(n)]`
-/

namespace A057518.P8340834861571052349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057518.P8340834861571052349

/-! ## A057518.P4846758099744370840

`eq[2, A057515(n)]`
-/

namespace A057518.P4846758099744370840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057518.P4846758099744370840

/-! ## A057518.P9285352380686786884

`eq[4, A057122(n)%8]`
-/

namespace A057518.P9285352380686786884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057122 n) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057518.P9285352380686786884

/-! ## A057518.P4694528374778603498

`lt[A169995(A057515(n)), A257993(2*n+1)]`
-/

namespace A057518.P4694528374778603498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169995 (A057515 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057518.P4694528374778603498

/-! ## A057518.P6012527392922170877

`A074680(A057548(n+1))`
-/

namespace A057518.P6012527392922170877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A057548 (n + 1)).toNat

end

end A057518.P6012527392922170877

/-! ## A057518.P5775248287408312298

`A074680(record[A057161(n+2)])`
-/

namespace A057518.P5775248287408312298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057518.P5775248287408312298

/-! ## A057518.P4604109289610061902

`A074680(record[A057501(n+2)])`
-/

namespace A057518.P4604109289610061902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057518.P4604109289610061902

/-! ## A057518.P3158405898017510241

`A074680(record[A069767(n+2)])`
-/

namespace A057518.P3158405898017510241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057518.P3158405898017510241

/-! ## A057518.P8372038696747346626

`A074680(record[A069770(n+2)])`
-/

namespace A057518.P8372038696747346626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057518.P8372038696747346626

/-! ## A057518.P278321041993072347

`A074680(record[A074680(n+2)])`
-/

namespace A057518.P278321041993072347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057518.P278321041993072347

/-! ## A057518.P17540242539926251386

`lt[A074679(A074679(n)), A074679(n)]`
-/

namespace A057518.P17540242539926251386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A074679 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057518.P17540242539926251386

/-! ## A057518.P8387026114368531810

`eq[2, A001222(A127301(n))]`
-/

namespace A057518.P8387026114368531810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A127301 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057518.P8387026114368531810

/-! ## A057518.P5045819502326689203

`eq[2, A001222(A243491(n)-A243492(n))]`
-/

namespace A057518.P5045819502326689203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A243491 n - A243492 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057518.P5045819502326689203

/-! ## A057518.P7642989852379787066

`A131165(lt[A131157(n), n])`
-/

namespace A057518.P7642989852379787066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131157 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131165 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A057518.P7642989852379787066

/-! ## A057518.P11520192994734349241

`A130365(record[A130365(n+2)])`
-/

namespace A057518.P11520192994734349241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130365 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130365 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057518.P11520192994734349241

/-! ## A057518.P8151467981991896571

`A130370(record[A130370(n+2)])`
-/

namespace A057518.P8151467981991896571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057518.P8151467981991896571

/-!
# A057519: The local ranks of each term of A057517.

The programs for A057519, there is no canonical definition to state claims against.
-/

/-! ## A057519.P16484211395923955227

`A082853(A057518(n+1))`
-/

namespace A057519.P16484211395923955227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A057518 (n + 1)).toNat

end

end A057519.P16484211395923955227

/-! ## A057519.P3299094587334432099

`A082853(eq[1, A057516(n)])`
-/

namespace A057519.P3299094587334432099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057519.P3299094587334432099

/-! ## A057519.P18356359353146344837

`A082853(eq[2, A057515(n)])`
-/

namespace A057519.P18356359353146344837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057519.P18356359353146344837

/-! ## A057519.P14006683432942703568

`A082853(eq[4, A057122(n)%8])`
-/

namespace A057519.P14006683432942703568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057122 n) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057519.P14006683432942703568

/-! ## A057519.P17665290299654531289

`A080301(A057517(n+1))`
-/

namespace A057519.P17665290299654531289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080301 (A057517 (n + 1)).toNat

end

end A057519.P17665290299654531289

/-!
# A057520: a(n) = A014486(n)/2. In binary expansion there is one more 1 than 0 and reading from the left (the most significant bit) to right, the number of 0's never exceed the number of 1's.

The programs for A057520, there is no canonical definition to state claims against.
-/

/-! ## A057520.P11836529499971880964

`A014486(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057520.P11836529499971880964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014486 n : ℚ) / 2

end

end A057520.P11836529499971880964

/-! ## A057520.P16483240796338886357

`A194045(n)/4`
-/

namespace A057520.P16483240796338886357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194045 n : ℚ) / 4

end

end A057520.P16483240796338886357

/-! ## A057520.P4918199839403897557

`(∑[A085192(n)]-A085192(n))/2`
-/

namespace A057520.P4918199839403897557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A085192 n : ℤ) : ℚ) / 2

end

end A057520.P4918199839403897557

/-! ## A057520.P15073549120907690544

`∑[A226478(n+1)]-A226478(n+1)`
-/

namespace A057520.P15073549120907690544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A226478 (n + 1)

end

end A057520.P15073549120907690544

/-! ## A057520.P1474696499765548987

`2^A008683(A051698(n))*A014486(n)`
-/

namespace A057520.P1474696499765548987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A051698 n).toNat : ℤ) * (A014486 n : ℚ)

end

end A057520.P1474696499765548987

/-! ## A057520.P9192167198501119183

`A085183(A072795(n))`
-/

namespace A057520.P9192167198501119183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085183 (A072795 n).toNat

end

end A057520.P9192167198501119183

/-! ## A057520.P5611572684110015399

`lt[0, A080116(2*n)]`
-/

namespace A057520.P5611572684110015399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A057520.P5611572684110015399

/-! ## A057520.P6695323432496861833

`A014682(A014486(n))`
-/

namespace A057520.P6695323432496861833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014486 n).toNat

end

end A057520.P6695323432496861833

/-! ## A057520.P10182443632328003168

`A085183(A057548(n))/2`
-/

namespace A057520.P10182443632328003168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085183 (A057548 n).toNat : ℚ) / 2

end

end A057520.P10182443632328003168

/-! ## A057520.P17828072069518728562

`A273943(record[n*A080116(n)])`
-/

namespace A057520.P17828072069518728562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057520.P17828072069518728562

/-! ## A057520.P9283061381738153324

`A014682(∑[A085192(n)]-A085192(n))`
-/

namespace A057520.P9283061381738153324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j - A085192 n).toNat

end

end A057520.P9283061381738153324

/-! ## A057520.P5938138747582026218

`A110962(A085224(n))`
-/

namespace A057520.P5938138747582026218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A085224 n).toNat

end

end A057520.P5938138747582026218

/-! ## A057520.P2546806088031462187

`A110962(2*A014486(n))`
-/

namespace A057520.P2546806088031462187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (2 * A014486 n).toNat

end

end A057520.P2546806088031462187

/-! ## A057520.P17912729230086123372

`A038572(lcm(2, A014486(n)))`
-/

namespace A057520.P17912729230086123372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A014486 n))

end

end A057520.P17912729230086123372

/-! ## A057520.P13827110677589227144

`record[n*A080116(A005843(n))]`
-/

namespace A057520.P13827110677589227144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080116 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057520.P13827110677589227144

/-! ## A057520.P18135078510261736373

`A038572(A014486(n)+2)-1`
-/

namespace A057520.P18135078510261736373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A014486 n + 2).toNat - 1

end

end A057520.P18135078510261736373

/-! ## A057520.P5639043486602906605

`A038572(A014486(n)%A002146(n))`
-/

namespace A057520.P5639043486602906605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.tmod (A014486 n) (A002146 n)).toNat

end

end A057520.P5639043486602906605

/-! ## A057520.P12489444477497681220

`A002265(A194045(n))`
-/

namespace A057520.P12489444477497681220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A194045 n).toNat

end

end A057520.P12489444477497681220

/-! ## A057520.P7563951088099955024

`A277012(A059985(n))`
-/

namespace A057520.P7563951088099955024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277012 (A059985 n).toNat

end

end A057520.P7563951088099955024

/-! ## A057520.P13100401510134085242

`A004524(A014486(n)+1)`
-/

namespace A057520.P13100401510134085242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A014486 n + 1).toNat

end

end A057520.P13100401510134085242

/-!
# A057521: Powerful part of n: if n = Product_i (pi^ei) then a(n) = Product_{i : ei > 1} (pi^ei); if n = b*c^2*d^3 then a(n) = c^2*d^3 when b is minimized.

The programs for A057521, the canonical program `A057521.P7284310941140114823` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057521 has offset 1).

The definition of A057521 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057521.P10522796459808370021

`(n+1)/A055231(n+1)`
-/

namespace A057521.P10522796459808370021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055231 (n + 1) : ℚ)

end

end A057521.P10522796459808370021

namespace A057521

/-- `(n+1)/A055231(n+1)` -/
def P10522796459808370021.Spec : Prop :=
  ∀ n, P10522796459808370021.a n = (A057521 (n + 1) : ℚ)

end A057521

/-! ## A057521.P7284310941140114823

`A064549(A003557(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057521

/-- `A064549(A003557(n+1))` -/
def P7284310941140114823.Spec : Prop :=
  ∀ n, P7284310941140114823.a n = A057521 (n + 1)

theorem P7284310941140114823.correct : P7284310941140114823.Spec := by
  intro n
  simp only [A057521, Nat.add_sub_cancel]

end A057521

/-! ## A057521.P10498070165051986677

`gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])`
-/

namespace A057521.P10498070165051986677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2))

end

end A057521.P10498070165051986677

namespace A057521

/-- `gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])` -/
def P10498070165051986677.Spec : Prop :=
  ∀ n, (P10498070165051986677.a n : ℤ) = A057521 (n + 1)

end A057521

/-! ## A057521.P5697029889031113489

`gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])`
-/

namespace A057521.P5697029889031113489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A057521.P5697029889031113489

namespace A057521

/-- `gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])` -/
def P5697029889031113489.Spec : Prop :=
  ∀ n, (P5697029889031113489.a n : ℤ) = A057521 (n + 1)

end A057521

/-! ## A057521.P13610435609157294969

`(n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A057521.P13610435609157294969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ)

end

end A057521.P13610435609157294969

namespace A057521

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P13610435609157294969.Spec : Prop :=
  ∀ n, P13610435609157294969.a n = (A057521 (n + 1) : ℚ)

end A057521

/-! ## A057521.P15609473405802923018

`(n+1)/floor(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A057521.P15609473405802923018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌊((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ)⌋ : ℚ)

end

end A057521.P15609473405802923018

namespace A057521

/-- `(n+1)/floor(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P15609473405802923018.Spec : Prop :=
  ∀ n, P15609473405802923018.a n = (A057521 (n + 1) : ℚ)

end A057521

/-! ## A057521.P4846770186642690945

`(n+1)/ceil(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A057521.P4846770186642690945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ)⌉ : ℚ)

end

end A057521.P4846770186642690945

namespace A057521

/-- `(n+1)/ceil(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P4846770186642690945.Spec : Prop :=
  ∀ n, P4846770186642690945.a n = (A057521 (n + 1) : ℚ)

end A057521

/-! ## A057521.P16170186141917853509

`∑{d}[n+1, A349379(#)]`
-/

namespace A057521.P16170186141917853509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349379 d

end

end A057521.P16170186141917853509

namespace A057521

/-- `∑{d}[n+1, A349379(#)]` -/
def P16170186141917853509.Spec : Prop :=
  ∀ n, P16170186141917853509.a n = A057521 (n + 1)

end A057521

/-! ## A057521.P109344800041126800

`1-A326186(n+1)+n`
-/

namespace A057521.P109344800041126800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326186 (n + 1) + (n : ℤ)

end

end A057521.P109344800041126800

namespace A057521

/-- `1-A326186(n+1)+n` -/
def P109344800041126800.Spec : Prop :=
  ∀ n, P109344800041126800.a n = A057521 (n + 1)

end A057521

/-! ## A057521.P13377002859883163053

`gcd(n+1, A065969(n+1))`
-/

namespace A057521.P13377002859883163053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A065969 (n + 1))

end

end A057521.P13377002859883163053

namespace A057521

/-- `gcd(n+1, A065969(n+1))` -/
def P13377002859883163053.Spec : Prop :=
  ∀ n, (P13377002859883163053.a n : ℤ) = A057521 (n + 1)

end A057521

/-! ## A057521.P5673042087819205362

`A389244(n)/a(n-1)` with `a(0)=1`
-/

namespace A057521.P5673042087819205362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A389244 n : ℚ) / a (n - 1)

end

end A057521.P5673042087819205362

namespace A057521

/-- `A389244(n)/a(n-1)` -/
def P5673042087819205362.Spec : Prop :=
  ∀ n, P5673042087819205362.a n = (A057521 (n + 1) : ℚ)

end A057521

/-! ## A057521.P14122011237713715376

`(n+1)²/A197863(n+1)`
-/

namespace A057521.P14122011237713715376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A197863 (n + 1) : ℚ)

end

end A057521.P14122011237713715376

namespace A057521

/-- `(n+1)²/A197863(n+1)` -/
def P14122011237713715376.Spec : Prop :=
  ∀ n, P14122011237713715376.a n = (A057521 (n + 1) : ℚ)

end A057521

/-! ## A057521.P716414173521185110

`gcd((n+1)², A389244(n+1))`
-/

namespace A057521.P716414173521185110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A389244 (n + 1))

end

end A057521.P716414173521185110

namespace A057521

/-- `gcd((n+1)², A389244(n+1))` -/
def P716414173521185110.Spec : Prop :=
  ∀ n, (P716414173521185110.a n : ℤ) = A057521 (n + 1)

end A057521

/-! ## A057521.P4915757647937983670

`gcd(n²+n, A183104(n+1))`
-/

namespace A057521.P4915757647937983670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + n : ℤ) (A183104 (n + 1))

end

end A057521.P4915757647937983670

namespace A057521

/-- `gcd(n²+n, A183104(n+1))` -/
def P4915757647937983670.Spec : Prop :=
  ∀ n, (P4915757647937983670.a n : ℤ) = A057521 (n + 1)

end A057521

/-! ## A057521.P11568711622409390182

`A078310((n+1)/∏{p}[n+1, #])-1`
-/

namespace A057521.P11568711622409390182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat - 1

end

end A057521.P11568711622409390182

namespace A057521

/-- `A078310((n+1)/∏{p}[n+1, #])-1` -/
def P11568711622409390182.Spec : Prop :=
  ∀ n, P11568711622409390182.a n = A057521 (n + 1)

end A057521

/-! ## A057521.P11758649814601439757

`∑{d}[n+1, #*A349441((n+1)/#)]`
-/

namespace A057521.P11758649814601439757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057521.P11758649814601439757

namespace A057521

/-- `∑{d}[n+1, #*A349441((n+1)/#)]` -/
def P11758649814601439757.Spec : Prop :=
  ∀ n, P11758649814601439757.a n = A057521 (n + 1)

end A057521

/-! ## A057521.P10510720357881640150

`gcd((n+1)*(∑[n]+1), A000290((n+1)/∏{p}[n+1, #]))`
-/

namespace A057521.P10510720357881640150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ) (A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat)

end

end A057521.P10510720357881640150

namespace A057521

/-- `gcd((n+1)*(∑[n]+1), A000290((n+1)/∏{p}[n+1, #]))` -/
def P10510720357881640150.Spec : Prop :=
  ∀ n, (P10510720357881640150.a n : ℤ) = A057521 (n + 1)

end A057521

/-! ## A057521.P1434838501640450960

`A064549(A336551(n+1)+1)`
-/

namespace A057521.P1434838501640450960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A336551 (n + 1) + 1).toNat

end

end A057521.P1434838501640450960

namespace A057521

/-- `A064549(A336551(n+1)+1)` -/
def P1434838501640450960.Spec : Prop :=
  ∀ n, P1434838501640450960.a n = A057521 (n + 1)

end A057521

/-! ## A057521.P8308418518266297712

`gcd(A002378(n), A183102(n+1))`
-/

namespace A057521.P8308418518266297712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 n) (A183102 (n + 1))

end

end A057521.P8308418518266297712

namespace A057521

/-- `gcd(A002378(n), A183102(n+1))` -/
def P8308418518266297712.Spec : Prop :=
  ∀ n, (P8308418518266297712.a n : ℤ) = A057521 (n + 1)

end A057521

/-! ## A057521.P2420667073425505304

`A000203(n+1)-A326184(n+1)`
-/

namespace A057521.P2420667073425505304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A326184 (n + 1)

end

end A057521.P2420667073425505304

namespace A057521

/-- `A000203(n+1)-A326184(n+1)` -/
def P2420667073425505304.Spec : Prop :=
  ∀ n, P2420667073425505304.a n = A057521 (n + 1)

end A057521

/-!
# A057523: Number of ways n-th powerful (1) number can be expressed as b^2*c^3.

The programs for A057523, there is no canonical definition to state claims against.
-/

/-! ## A057523.P5272670040730838056

`A370256(A001694(n+1))`
-/

namespace A057523.P5272670040730838056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370256 (A001694 (n + 1)).toNat

end

end A057523.P5272670040730838056

/-! ## A057523.P11136673620870534417

`A323022(A334185(n+5)-A189367(n+1))`
-/

namespace A057523.P11136673620870534417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A334185 (n + 5) - A189367 (n + 1)).toNat

end

end A057523.P11136673620870534417

/-! ## A057523.P1090805234808533149

`gcd(A241614(n+1), A241665(A241642(n)))`
-/

namespace A057523.P1090805234808533149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241614 (n + 1)) (A241665 (A241642 n).toNat)

end

end A057523.P1090805234808533149

/-! ## A057523.P12141591141355127442

`∏{e}[∑{e}[A373953(2*(n+1))+A063619(3*(n+1)), #], #]`
-/

namespace A057523.P12141591141355127442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (2 * (n + 1)) + A063619 (3 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A057523.P12141591141355127442

/-! ## A057523.P10998958905564987637

`A353756(A318923(n+5)+A285332(n+1))`
-/

namespace A057523.P10998958905564987637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353756 (A318923 (n + 5) + A285332 (n + 1)).toNat

end

end A057523.P10998958905564987637

/-!
# A057524: Number of 3 x n binary matrices without unit columns up to row and column permutations.

The programs for A057524, the canonical program `A057524.P12991513994145830363` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057524 has offset 0).

The definition of A057524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057524.P12991513994145830363

`floor(((n+2)*(n+6)/12)²)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057524

/-- `floor(((n+2)*(n+6)/12)²)` -/
def P12991513994145830363.Spec : Prop :=
  ∀ n, P12991513994145830363.a n = A057524 n

theorem P12991513994145830363.correct : P12991513994145830363.Spec := by
  intro n
  simp only [A057524]

end A057524

/-! ## A057524.P16742585345283120109

`∑[A000601(n)]`
-/

namespace A057524.P16742585345283120109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057524.P16742585345283120109

namespace A057524

/-- `∑[A000601(n)]` -/
def P16742585345283120109.Spec : Prop :=
  ∀ n, P16742585345283120109.a n = A057524 n

end A057524

/-! ## A057524.P9255923993070660817

`∑[∑[A001399(n)]]`
-/

namespace A057524.P9255923993070660817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057524.P9255923993070660817

namespace A057524

/-- `∑[∑[A001399(n)]]` -/
def P9255923993070660817.Spec : Prop :=
  ∀ n, P9255923993070660817.a n = A057524 n

end A057524

/-! ## A057524.P1263427040044050455

`A014125(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A057524.P1263427040044050455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A014125 n + a (n - 2)

end

end A057524.P1263427040044050455

namespace A057524

/-- `A014125(n)+a(n-2)` -/
def P1263427040044050455.Spec : Prop :=
  ∀ n, P1263427040044050455.a n = A057524 n

end A057524

/-! ## A057524.P6454496318344836370

`A002623(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A057524.P6454496318344836370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  A002623 n + a (n - 3)

end

end A057524.P6454496318344836370

namespace A057524

/-- `A002623(n)+a(n-3)` -/
def P6454496318344836370.Spec : Prop :=
  ∀ n, P6454496318344836370.a n = A057524 n

end A057524

/-! ## A057524.P2141335727026044897

`A001752(n)-∑[∑[A001840(n)]]`
-/

namespace A057524.P2141335727026044897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057524.P2141335727026044897

namespace A057524

/-- `A001752(n)-∑[∑[A001840(n)]]` -/
def P2141335727026044897.Spec : Prop :=
  ∀ n, P2141335727026044897.a n = A057524 n

end A057524

/-! ## A057524.P3551716998437367089

`∑[2*A266769(n)]-A266769(n)`
-/

namespace A057524.P3551716998437367089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A266769 n

end

end A057524.P3551716998437367089

namespace A057524

/-- `∑[2*A266769(n)]-A266769(n)` -/
def P3551716998437367089.Spec : Prop :=
  ∀ n, P3551716998437367089.a n = A057524 n

end A057524

/-! ## A057524.P7482556140145515044

`A055278(n+4)-A216172(n+1)`
-/

namespace A057524.P7482556140145515044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055278 (n + 4) - A216172 (n + 1)

end

end A057524.P7482556140145515044

namespace A057524

/-- `A055278(n+4)-A216172(n+1)` -/
def P7482556140145515044.Spec : Prop :=
  ∀ n, P7482556140145515044.a n = A057524 n

end A057524

/-! ## A057524.P13176549138956263560

`A001752(n)-A216172(n+2)`
-/

namespace A057524.P13176549138956263560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n - A216172 (n + 2)

end

end A057524.P13176549138956263560

namespace A057524

/-- `A001752(n)-A216172(n+2)` -/
def P13176549138956263560.Spec : Prop :=
  ∀ n, P13176549138956263560.a n = A057524 n

end A057524

/-! ## A057524.P4238439307329283851

`A014125(n)+∑[A181120(n+1)]`
-/

namespace A057524.P4238439307329283851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057524.P4238439307329283851

namespace A057524

/-- `A014125(n)+∑[A181120(n+1)]` -/
def P4238439307329283851.Spec : Prop :=
  ∀ n, P4238439307329283851.a n = A057524 n

end A057524

/-! ## A057524.P16739620551921870878

`A070893(n+2)-A216173(n+2)`
-/

namespace A057524.P16739620551921870878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070893 (n + 2) - A216173 (n + 2)

end

end A057524.P16739620551921870878

namespace A057524

/-- `A070893(n+2)-A216173(n+2)` -/
def P16739620551921870878.Spec : Prop :=
  ∀ n, P16739620551921870878.a n = A057524 n

end A057524

/-! ## A057524.P7354607241062538606

`A002624(n+1)+A002625(n)-A002625(n+1)`
-/

namespace A057524.P7354607241062538606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 (n + 1) + (A002625 n - A002625 (n + 1))

end

end A057524.P7354607241062538606

namespace A057524

/-- `A002624(n+1)+A002625(n)-A002625(n+1)` -/
def P7354607241062538606.Spec : Prop :=
  ∀ n, P7354607241062538606.a n = A057524 n

end A057524

/-! ## A057524.P3637737198705881021

`A097701(n+1)+A097701(n)-A000601(n+1)`
-/

namespace A057524.P3637737198705881021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097701 (n + 1) + (A097701 n - A000601 (n + 1))

end

end A057524.P3637737198705881021

namespace A057524

/-- `A097701(n+1)+A097701(n)-A000601(n+1)` -/
def P3637737198705881021.Spec : Prop :=
  ∀ n, P3637737198705881021.a n = A057524 n

end A057524

/-! ## A057524.P4872754148397078272

`A216175(n+2)-(A216173(n+2)+A216172(n+2))`
-/

namespace A057524.P4872754148397078272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216175 (n + 2) - (A216173 (n + 2) + A216172 (n + 2))

end

end A057524.P4872754148397078272

namespace A057524

/-- `A216175(n+2)-(A216173(n+2)+A216172(n+2))` -/
def P4872754148397078272.Spec : Prop :=
  ∀ n, P4872754148397078272.a n = A057524 n

end A057524

/-! ## A057524.P13837034789989896079

`∑[∑[A069905(n+3)]]`
-/

namespace A057524.P13837034789989896079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057524.P13837034789989896079

namespace A057524

/-- `∑[∑[A069905(n+3)]]` -/
def P13837034789989896079.Spec : Prop :=
  ∀ n, P13837034789989896079.a n = A057524 n

end A057524

/-! ## A057524.P8601191749367763834

`A216172(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A057524.P8601191749367763834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A216172 (n + 3) - a (n - 1)

end

end A057524.P8601191749367763834

namespace A057524

/-- `A216172(n+3)-a(n-1)` -/
def P8601191749367763834.Spec : Prop :=
  ∀ n, P8601191749367763834.a n = A057524 n

end A057524

/-! ## A057524.P10026346389460919218

`∑[A181120(n+3)]`
-/

namespace A057524.P10026346389460919218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057524.P10026346389460919218

namespace A057524

/-- `∑[A181120(n+3)]` -/
def P10026346389460919218.Spec : Prop :=
  ∀ n, P10026346389460919218.a n = A057524 n

end A057524

/-! ## A057524.P16539914466045539881

`abs(∑[∑[A211540(n+5)]]-n)+n`
-/

namespace A057524.P16539914466045539881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)| + (n : ℤ)

end

end A057524.P16539914466045539881

namespace A057524

/-- `abs(∑[∑[A211540(n+5)]]-n)+n` -/
def P16539914466045539881.Spec : Prop :=
  ∀ n, P16539914466045539881.a n = A057524 n

end A057524

/-! ## A057524.P5900027753861676120

`∑[record[A254594(n)]]`
-/

namespace A057524.P5900027753861676120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057524.P5900027753861676120

namespace A057524

/-- `∑[record[A254594(n)]]` -/
def P5900027753861676120.Spec : Prop :=
  ∀ n, P5900027753861676120.a n = A057524 n

end A057524

/-! ## A057524.P12742483910740728086

`∑[A029002(2*n)]`
-/

namespace A057524.P12742483910740728086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029002 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057524.P12742483910740728086

namespace A057524

/-- `∑[A029002(2*n)]` -/
def P12742483910740728086.Spec : Prop :=
  ∀ n, P12742483910740728086.a n = A057524 n

end A057524

/-!
# A057525: Number of applications of f to reduce n to 1, where f(k) is the integer among k/2,(k+1)/4, (k+3)/4.

The programs for A057525, the canonical program `A057525.P7715182706857150833` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057525 has offset 2).

The definition of A057525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057525.P7715182706857150833

`A277327(A180200(Δ[A002378(n)]))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A057525

/-- `A277327(A180200(Δ[A002378(n)]))` -/
def P7715182706857150833.Spec : Prop :=
  ∀ n, P7715182706857150833.a n = A057525 (n + 2)

theorem P7715182706857150833.correct : P7715182706857150833.Spec := by
  intro n
  simp only [A057525, Nat.add_sub_cancel]

end A057525

/-! ## A057525.P3635214622627810570

`A277327(A180200(2*n)+Δ[A180200(2*n)])`
-/

namespace A057525.P3635214622627810570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (A180200 (2 * n) + (f1 (n + 1) - f1 n)).toNat

end

end A057525.P3635214622627810570

namespace A057525

/-- `A277327(A180200(2*n)+Δ[A180200(2*n)])` -/
def P3635214622627810570.Spec : Prop :=
  ∀ n, P3635214622627810570.a n = A057525 (n + 2)

end A057525

/-! ## A057525.P3180346808948203717

`∑{digits}[A275536(n+1), A026233(#)]`
-/

namespace A057525.P3180346808948203717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A026233 x).sum

end

end A057525.P3180346808948203717

namespace A057525

/-- `∑{digits}[A275536(n+1), A026233(#)]` -/
def P3180346808948203717.Spec : Prop :=
  ∀ n, P3180346808948203717.a n = A057525 (n + 2)

end A057525

/-! ## A057525.P10895393027628897718

`∑{digits}[A275536(n+1), A034888(#)]`
-/

namespace A057525.P10895393027628897718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A034888 x).sum

end

end A057525.P10895393027628897718

namespace A057525

/-- `∑{digits}[A275536(n+1), A034888(#)]` -/
def P10895393027628897718.Spec : Prop :=
  ∀ n, P10895393027628897718.a n = A057525 (n + 2)

end A057525

/-! ## A057525.P5905412394036083400

`∑{digits}[A275536(n+1), A065033(#)]`
-/

namespace A057525.P5905412394036083400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A065033 x).sum

end

end A057525.P5905412394036083400

namespace A057525

/-- `∑{digits}[A275536(n+1), A065033(#)]` -/
def P5905412394036083400.Spec : Prop :=
  ∀ n, P5905412394036083400.a n = A057525 (n + 2)

end A057525

/-! ## A057525.P5097162322728746403

`∑{digits}[A275536(n+1), A100679(#)]`
-/

namespace A057525.P5097162322728746403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A100679 x).sum

end

end A057525.P5097162322728746403

namespace A057525

/-- `∑{digits}[A275536(n+1), A100679(#)]` -/
def P5097162322728746403.Spec : Prop :=
  ∀ n, P5097162322728746403.a n = A057525 (n + 2)

end A057525

/-! ## A057525.P16285910501047708645

`∑{digits}[A275536(n+1), A110654(#)]`
-/

namespace A057525.P16285910501047708645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A110654 x).sum

end

end A057525.P16285910501047708645

namespace A057525

/-- `∑{digits}[A275536(n+1), A110654(#)]` -/
def P16285910501047708645.Spec : Prop :=
  ∀ n, P16285910501047708645.a n = A057525 (n + 2)

end A057525

/-! ## A057525.P2426965749206205348

`A329320(A370762(n))`
-/

namespace A057525.P2426965749206205348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A370762 n).toNat

end

end A057525.P2426965749206205348

namespace A057525

/-- `A329320(A370762(n))` -/
def P2426965749206205348.Spec : Prop :=
  ∀ n, P2426965749206205348.a n = A057525 (n + 2)

end A057525

/-! ## A057525.P12723563165923252864

`∑{e}[A057335(n+1), A061070(#)]`
-/

namespace A057525.P12723563165923252864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061070 (Nat.factorization (f1 n).natAbs p)

end

end A057525.P12723563165923252864

namespace A057525

/-- `∑{e}[A057335(n+1), A061070(#)]` -/
def P12723563165923252864.Spec : Prop :=
  ∀ n, P12723563165923252864.a n = A057525 (n + 2)

end A057525

/-! ## A057525.P14090228681605981664

`∑{e}[A057335(n+1), A065033(#)]`
-/

namespace A057525.P14090228681605981664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A065033 (Nat.factorization (f1 n).natAbs p)

end

end A057525.P14090228681605981664

namespace A057525

/-- `∑{e}[A057335(n+1), A065033(#)]` -/
def P14090228681605981664.Spec : Prop :=
  ∀ n, P14090228681605981664.a n = A057525 (n + 2)

end A057525

/-!
# A057526: Number of applications of f to reduce n to 1, where f(k) is the integer among k/2,(k-1)/4, (k+1)/4.

The programs for A057526, the canonical program `A057526.P5100206515935661971` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057526 has offset 1).

The definition of A057526 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277329, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057526.P5100206515935661971

`A277329(n+1)-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A057526

/-- `A277329(n+1)-1` -/
def P5100206515935661971.Spec : Prop :=
  ∀ n, P5100206515935661971.a n = A057526 (n + 1)

theorem P5100206515935661971.correct : P5100206515935661971.Spec := by
  intro n
  simp only [A057526, Nat.add_sub_cancel]

end A057526

/-! ## A057526.P15973071348166415069

`a(round(lcm(2, n)/4)-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A057526.P15973071348166415069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 4) - 1).toNat + 1

end

end A057526.P15973071348166415069

namespace A057526

/-- `a(round(lcm(2, n)/4)-1)+1` -/
def P15973071348166415069.Spec : Prop :=
  ∀ n, (P15973071348166415069.a n : ℤ) = A057526 (n + 1)

end A057526

/-! ## A057526.P15662320371579806498

`A290251(A184617(n+1))-1`
-/

namespace A057526.P15662320371579806498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A184617 (n + 1)).toNat - 1

end

end A057526.P15662320371579806498

namespace A057526

/-- `A290251(A184617(n+1))-1` -/
def P15662320371579806498.Spec : Prop :=
  ∀ n, P15662320371579806498.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P8147584648755075803

`A085423(n+1)-A007302(n+1)`
-/

namespace A057526.P8147584648755075803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (n + 1) - A007302 (n + 1)

end

end A057526.P8147584648755075803

namespace A057526

/-- `A085423(n+1)-A007302(n+1)` -/
def P8147584648755075803.Spec : Prop :=
  ∀ n, P8147584648755075803.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P4347811594448702498

`A000120(n-and(A053738(n+1), A053754(n+2)))`
-/

namespace A057526.P4347811594448702498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - Int.land (A053738 (n + 1)) (A053754 (n + 2))).toNat

end

end A057526.P4347811594448702498

namespace A057526

/-- `A000120(n-and(A053738(n+1), A053754(n+2)))` -/
def P4347811594448702498.Spec : Prop :=
  ∀ n, P4347811594448702498.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P15909473903171408808

`A085423(n+1)-(A085425(n+1)+A085424(n+1))`
-/

namespace A057526.P15909473903171408808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (n + 1) - (A085425 (n + 1) + A085424 (n + 1))

end

end A057526.P15909473903171408808

namespace A057526

/-- `A085423(n+1)-(A085425(n+1)+A085424(n+1))` -/
def P15909473903171408808.Spec : Prop :=
  ∀ n, P15909473903171408808.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P14521077106663404151

`Δ[∑[A277329(n)]-n]`
-/

namespace A057526.P14521077106663404151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277329 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057526.P14521077106663404151

namespace A057526

/-- `Δ[∑[A277329(n)]-n]` -/
def P14521077106663404151.Spec : Prop :=
  ∀ n, P14521077106663404151.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P13203362651281482171

`A277314(n+1)+A000120(n)-A000120(n+1)`
-/

namespace A057526.P13203362651281482171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (n + 1) + (A000120 n - A000120 (n + 1))

end

end A057526.P13203362651281482171

namespace A057526

/-- `A277314(n+1)+A000120(n)-A000120(n+1)` -/
def P13203362651281482171.Spec : Prop :=
  ∀ n, P13203362651281482171.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P14240787794842278411

`A023416(A184617(n+1))`
-/

namespace A057526.P14240787794842278411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A184617 (n + 1)).toNat

end

end A057526.P14240787794842278411

namespace A057526

/-- `A023416(A184617(n+1))` -/
def P14240787794842278411.Spec : Prop :=
  ∀ n, P14240787794842278411.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P17474302072065889941

`A023416(A178729(n+1)/2)`
-/

namespace A057526.P17474302072065889941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((A178729 (n + 1) : ℚ) / 2)).toNat

end

end A057526.P17474302072065889941

namespace A057526

/-- `A023416(A178729(n+1)/2)` -/
def P17474302072065889941.Spec : Prop :=
  ∀ n, P17474302072065889941.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P17034816097493296786

`A080791(A178729(n+1)/2)`
-/

namespace A057526.P17034816097493296786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.roundAway ((A178729 (n + 1) : ℚ) / 2)).toNat

end

end A057526.P17034816097493296786

namespace A057526

/-- `A080791(A178729(n+1)/2)` -/
def P17034816097493296786.Spec : Prop :=
  ∀ n, P17034816097493296786.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P11564885356494534444

`A007814(2*(n+1))+A277314(n+1)-2`
-/

namespace A057526.P11564885356494534444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * (n + 1)) + (A277314 (n + 1) - 2)

end

end A057526.P11564885356494534444

namespace A057526

/-- `A007814(2*(n+1))+A277314(n+1)-2` -/
def P11564885356494534444.Spec : Prop :=
  ∀ n, P11564885356494534444.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P230591467660723994

`A023416(xor(3*(n+1), n+1)+1)`
-/

namespace A057526.P230591467660723994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Nat.xor (3 * (n + 1)) (n + 1) + 1)

end

end A057526.P230591467660723994

namespace A057526

/-- `A023416(xor(3*(n+1), n+1)+1)` -/
def P230591467660723994.Spec : Prop :=
  ∀ n, P230591467660723994.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P13350431396359138703

`A080791(xor(n+1, 3*(n+1))+1)`
-/

namespace A057526.P13350431396359138703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Nat.xor (n + 1) (3 * (n + 1)) + 1)

end

end A057526.P13350431396359138703

namespace A057526

/-- `A080791(xor(n+1, 3*(n+1))+1)` -/
def P13350431396359138703.Spec : Prop :=
  ∀ n, P13350431396359138703.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P16636765875392972814

`A037809(A178729(n+1))`
-/

namespace A057526.P16636765875392972814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037809 (A178729 (n + 1)).toNat

end

end A057526.P16636765875392972814

namespace A057526

/-- `A037809(A178729(n+1))` -/
def P16636765875392972814.Spec : Prop :=
  ∀ n, P16636765875392972814.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P16271459336230756926

`A023416(A178729(n+1)+1)`
-/

namespace A057526.P16271459336230756926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A178729 (n + 1) + 1).toNat

end

end A057526.P16271459336230756926

namespace A057526

/-- `A023416(A178729(n+1)+1)` -/
def P16271459336230756926.Spec : Prop :=
  ∀ n, P16271459336230756926.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P4972706927171750934

`A080791(A178729(n+1)+1)`
-/

namespace A057526.P4972706927171750934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A178729 (n + 1) + 1).toNat

end

end A057526.P4972706927171750934

namespace A057526

/-- `A080791(A178729(n+1)+1)` -/
def P4972706927171750934.Spec : Prop :=
  ∀ n, P4972706927171750934.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P9218805051042599551

`A277327(A130824(n+1))-1`
-/

namespace A057526.P9218805051042599551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (A130824 (n + 1)).toNat - 1

end

end A057526.P9218805051042599551

namespace A057526

/-- `A277327(A130824(n+1))-1` -/
def P9218805051042599551.Spec : Prop :=
  ∀ n, P9218805051042599551.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P5360130333252089639

`A277327(A111284(n+2))-1`
-/

namespace A057526.P5360130333252089639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (A111284 (n + 2)).toNat - 1

end

end A057526.P5360130333252089639

namespace A057526

/-- `A277327(A111284(n+2))-1` -/
def P5360130333252089639.Spec : Prop :=
  ∀ n, P5360130333252089639.a n = A057526 (n + 1)

end A057526

/-! ## A057526.P6827162581798557728

`A277327(A008574(n)+2)-A057427(n)`
-/

namespace A057526.P6827162581798557728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (A008574 n + 2).toNat - A057427 n

end

end A057526.P6827162581798557728

namespace A057526

/-- `A277327(A008574(n)+2)-A057427(n)` -/
def P6827162581798557728.Spec : Prop :=
  ∀ n, P6827162581798557728.a n = A057526 (n + 1)

end A057526

/-!
# A057527: 4th level factorials: product of first n superduperfactorials.

The programs for A057527, the canonical program `A057527.P524985246487583325` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057527 has offset 0).

The definition of A057527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057527.P524985246487583325

`a(n-1)*A055462(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057527

/-- `a(n-1)*A055462(n)` -/
def P524985246487583325.Spec : Prop :=
  ∀ n, P524985246487583325.a n = A057527 n

theorem P524985246487583325.correct : P524985246487583325.Spec := by
  intro n
  simp only [A057527]

end A057527

/-! ## A057527.P826827059104543518

`∏[∏[∏[n!]]]`
-/

namespace A057527.P826827059104543518
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057527.P826827059104543518

namespace A057527

/-- `∏[∏[∏[n!]]]` -/
def P826827059104543518.Spec : Prop :=
  ∀ n, (P826827059104543518.a n : ℤ) = A057527 n

end A057527

/-! ## A057527.P16868475948427235263

`2^∑[∑[∑[log2(n!)]]]`
-/

namespace A057527.P16868475948427235263
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057527.P16868475948427235263

namespace A057527

/-- `2^∑[∑[∑[log2(n!)]]]` -/
def P16868475948427235263.Spec : Prop :=
  ∀ n, P16868475948427235263.a n = (A057527 n : ℝ)

end A057527

/-! ## A057527.P9998147783961501060

`∏[∏[∏[n*a(n-1)]]]` with `a(0)=1`
-/

namespace A057527.P9998147783961501060
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  n * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057527.P9998147783961501060

namespace A057527

/-- `∏[∏[∏[n*a(n-1)]]]` -/
def P9998147783961501060.Spec : Prop :=
  ∀ n, (P9998147783961501060.a n : ℤ) = A057527 n

end A057527

/-! ## A057527.P14975581895242870321

`∏[∏[∏[∏[n+1]/(n+1)]]]`
-/

namespace A057527.P14975581895242870321
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057527.P14975581895242870321

namespace A057527

/-- `∏[∏[∏[∏[n+1]/(n+1)]]]` -/
def P14975581895242870321.Spec : Prop :=
  ∀ n, P14975581895242870321.a n = (A057527 n : ℚ)

end A057527

/-!
# A057528: 5th level factorials: product of first n 4th level factorials.

The programs for A057528, the canonical program `A057528.P16000590645068387962` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057528 has offset 0).

The definition of A057528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057528.P16000590645068387962

`a(n-1)*A057527(n)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057528

/-- `a(n-1)*A057527(n)` -/
def P16000590645068387962.Spec : Prop :=
  ∀ n, P16000590645068387962.a n = A057528 n

theorem P16000590645068387962.correct : P16000590645068387962.Spec := by
  intro n
  simp only [A057528]

end A057528

/-! ## A057528.P8193978403741437651

`∏[∏[∏[∏[n!]]]]`
-/

namespace A057528.P8193978403741437651
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057528.P8193978403741437651

namespace A057528

/-- `∏[∏[∏[∏[n!]]]]` -/
def P8193978403741437651.Spec : Prop :=
  ∀ n, (P8193978403741437651.a n : ℤ) = A057528 n

end A057528

/-! ## A057528.P16180063789533969807

`∏[∏[∏[∏[n*a(n-1)]]]]` with `a(0)=1`
-/

namespace A057528.P16180063789533969807
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  n * f4 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057528.P16180063789533969807

namespace A057528

/-- `∏[∏[∏[∏[n*a(n-1)]]]]` -/
def P16180063789533969807.Spec : Prop :=
  ∀ n, (P16180063789533969807.a n : ℤ) = A057528 n

end A057528

/-!
# A057529: Numbers n with property that n is divisible by the number of divisors of n and by the sum of the digits of n.

The programs for A057529, there is no canonical definition to state claims against.
-/

/-! ## A057529.P17880418150440821602

`∩[A005349(n+1), A033950(n+1)]`
-/

namespace A057529.P17880418150440821602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057529.P17880418150440821602

/-! ## A057529.P16953125190342408554

`filter[A005349(n+1), A336040(#)]`
-/

namespace A057529.P16953125190342408554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A057529.P16953125190342408554

/-! ## A057529.P1859912892487935884

`record[A122377(A005349(n+1))]`
-/

namespace A057529.P1859912892487935884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A005349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057529.P1859912892487935884

/-! ## A057529.P7124132228809767783

`filter[A033950(n+1), A188641(#)]`
-/

namespace A057529.P7124132228809767783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A057529.P7124132228809767783

/-! ## A057529.P17447652784244193592

`record[A122377(n+1)*A188641(n+1)]`
-/

namespace A057529.P17447652784244193592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (n + 1) * A188641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057529.P17447652784244193592

/-! ## A057529.P3827669197102635164

`record[A122377(n+1)/A144261(n+1)]`
-/

namespace A057529.P3827669197102635164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122377 (n + 1) : ℚ) / (A144261 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057529.P3827669197102635164

/-! ## A057529.P7259707587524715550

`record[gcd(A070635(n+1), A122377(n+1))]`
-/

namespace A057529.P7259707587524715550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070635 (n + 1)) (A122377 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057529.P7259707587524715550

/-!
# A057530: n is odd and divisible by number of divisors of n and sum of digits of n.

The programs for A057530, there is no canonical definition to state claims against.
-/

/-! ## A057530.P5031509839614308146

`∩[A036896(n+1), A118547(n+1)]`
-/

namespace A057530.P5031509839614308146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057530.P5031509839614308146

/-! ## A057530.P3889777603229342981

`∩[A036896(n+1), A098121(n+1)]`
-/

namespace A057530.P3889777603229342981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057530.P3889777603229342981

/-! ## A057530.P15334549385194369598

`∩[A057529(n+1), A016754(n)]`
-/

namespace A057530.P15334549385194369598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057530.P15334549385194369598

/-! ## A057530.P5987928089162366249

`∩[A057529(n+1), A080335(n)]`
-/

namespace A057530.P5987928089162366249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057530.P5987928089162366249

/-! ## A057530.P510996481700479299

`∩[A036896(n+1), A057529(n+1)]`
-/

namespace A057530.P510996481700479299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057530.P510996481700479299

/-!
# A057531: Numbers whose sum of digits and number of divisors are equal.

The programs for A057531, the canonical program `A057531.P15483397355566411150` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057531 has offset 1).

The definition of A057531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057531.P15483397355566411150

`eq[A032741(n)+1, A007953(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057531

/-- `eq[A032741(n)+1, A007953(n)]` -/
def P15483397355566411150.Spec : Prop :=
  ∀ n, (P15483397355566411150.a n : ℤ) = A057531 (n + 1)

theorem P15483397355566411150.correct : P15483397355566411150.Spec := by
  intro n
  simp only [A057531, Nat.add_sub_cancel]

end A057531

/-! ## A057531.P2490237050607164927

`eq[A032741(n)+1+n, A062028(n)]`
-/

namespace A057531.P2490237050607164927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057531.P2490237050607164927

namespace A057531

/-- `eq[A032741(n)+1+n, A062028(n)]` -/
def P2490237050607164927.Spec : Prop :=
  ∀ n, (P2490237050607164927.a n : ℤ) = A057531 (n + 1)

end A057531

/-! ## A057531.P16876277830944956819

`eq[A000005(abs(1-n)+1), A007953(n)]`
-/

namespace A057531.P16876277830944956819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057531.P16876277830944956819

namespace A057531

/-- `eq[A000005(abs(1-n)+1), A007953(n)]` -/
def P16876277830944956819.Spec : Prop :=
  ∀ n, (P16876277830944956819.a n : ℤ) = A057531 (n + 1)

end A057531

/-! ## A057531.P15001826988222979589

`eq[A007953(n+1), A320111(2*(n+1))]+1`
-/

namespace A057531.P15001826988222979589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057531.P15001826988222979589

namespace A057531

/-- `eq[A007953(n+1), A320111(2*(n+1))]+1` -/
def P15001826988222979589.Spec : Prop :=
  ∀ n, (P15001826988222979589.a n : ℤ) = A057531 (n + 1)

end A057531

/-! ## A057531.P2886008623427053871

`eq[(n+1)*(A032741(n)+1), A160942(n+1)]`
-/

namespace A057531.P2886008623427053871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A032741 n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057531.P2886008623427053871

namespace A057531

/-- `eq[(n+1)*(A032741(n)+1), A160942(n+1)]` -/
def P2886008623427053871.Spec : Prop :=
  ∀ n, (P2886008623427053871.a n : ℤ) = A057531 (n + 1)

end A057531

/-! ## A057531.P8813239405174730982

`eq[A023443(A007953(n)), A032741(n)]`
-/

namespace A057531.P8813239405174730982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057531.P8813239405174730982

namespace A057531

/-- `eq[A023443(A007953(n)), A032741(n)]` -/
def P8813239405174730982.Spec : Prop :=
  ∀ n, (P8813239405174730982.a n : ℤ) = A057531 (n + 1)

end A057531

/-! ## A057531.P11902195947521195082

`eq[A007953(n), A320111(A004277(n))]`
-/

namespace A057531.P11902195947521195082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057531.P11902195947521195082

namespace A057531

/-- `eq[A007953(n), A320111(A004277(n))]` -/
def P11902195947521195082.Spec : Prop :=
  ∀ n, (P11902195947521195082.a n : ℤ) = A057531 (n + 1)

end A057531

/-! ## A057531.P14224591096806841231

`eq[A007953(n), A008619(A319410(n))]`
-/

namespace A057531.P14224591096806841231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A319410 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057531.P14224591096806841231

namespace A057531

/-- `eq[A007953(n), A008619(A319410(n))]` -/
def P14224591096806841231.Spec : Prop :=
  ∀ n, (P14224591096806841231.a n : ℤ) = A057531 (n + 1)

end A057531

/-! ## A057531.P16596993337184650378

`eq[A004277(A032741(n)+1), A169805(n)]`
-/

namespace A057531.P16596993337184650378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032741 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057531.P16596993337184650378

namespace A057531

/-- `eq[A004277(A032741(n)+1), A169805(n)]` -/
def P16596993337184650378.Spec : Prop :=
  ∀ n, (P16596993337184650378.a n : ℤ) = A057531 (n + 1)

end A057531

/-!
# A057532: n is odd and sum of digits of n equals the numbers of divisors of n.

The programs for A057532, the canonical program `A057532.P4710718478601077176` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057532 has offset 1).

The definition of A057532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057532.P4710718478601077176

`A057531(eq[1, A057531(n+1)%2]+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057532

/-- `A057531(eq[1, A057531(n+1)%2]+1)` -/
def P4710718478601077176.Spec : Prop :=
  ∀ n, P4710718478601077176.a n = A057532 (n + 1)

theorem P4710718478601077176.correct : P4710718478601077176.Spec := by
  intro n
  simp only [A057532, Nat.add_sub_cancel]

end A057532

/-! ## A057532.P874272620216343382

`∩[2*n+1, A057531(n+1)]`
-/

namespace A057532.P874272620216343382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057532.P874272620216343382

namespace A057532

/-- `∩[2*n+1, A057531(n+1)]` -/
def P874272620216343382.Spec : Prop :=
  ∀ n, (P874272620216343382.a n : ℤ) = A057532 (n + 1)

end A057532

/-! ## A057532.P3918254349695648149

`record[A093411(A057531(n+1))]`
-/

namespace A057532.P3918254349695648149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A057531 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057532.P3918254349695648149

namespace A057532

/-- `record[A093411(A057531(n+1))]` -/
def P3918254349695648149.Spec : Prop :=
  ∀ n, P3918254349695648149.a n = A057532 (n + 1)

end A057532

/-! ## A057532.P16328738592738329852

`∩[A057531(n+1), A004273(n)]`
-/

namespace A057532.P16328738592738329852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057532.P16328738592738329852

namespace A057532

/-- `∩[A057531(n+1), A004273(n)]` -/
def P16328738592738329852.Spec : Prop :=
  ∀ n, (P16328738592738329852.a n : ℤ) = A057532 (n + 1)

end A057532

/-! ## A057532.P7224799871770096778

`filter[A057531(n+1), A000035(#)]`
-/

namespace A057532.P7224799871770096778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A057532.P7224799871770096778

namespace A057532

/-- `filter[A057531(n+1), A000035(#)]` -/
def P7224799871770096778.Spec : Prop :=
  ∀ n, P7224799871770096778.a n = A057532 (n + 1)

end A057532

/-!
# A057533: Values of n for which iteration of Chowla's function loops.

The programs for A057533, there is no canonical definition to state claims against.
-/

/-! ## A057533.P3901065787999137839

`lt[A153023(n+1), 0]+1`
-/

namespace A057533.P3901065787999137839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153023 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057533.P3901065787999137839

/-! ## A057533.P12883681936158489348

`eq[1, A153023(A028310(n))+2]`
-/

namespace A057533.P12883681936158489348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153023 (A028310 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057533.P12883681936158489348

/-! ## A057533.P2237963691840639305

`A065475(eq[1, A153023(n+1)+2])`
-/

namespace A057533.P2237963691840639305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153023 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057533.P2237963691840639305

/-! ## A057533.P2839284946598603200

`A065475(eq[1, A153024(n+1)+2])`
-/

namespace A057533.P2839284946598603200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153024 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057533.P2839284946598603200

/-! ## A057533.P9432817266841506176

`eq[A057428(n), A153023(n+1)]+1`
-/

namespace A057533.P9432817266841506176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057533.P9432817266841506176

/-! ## A057533.P16165628497272471241

`eq[A057428(n), A153024(n+1)]+1`
-/

namespace A057533.P16165628497272471241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057533.P16165628497272471241

/-! ## A057533.P17844061616989259376

`eq[A153023(n+1)², A057427(n)]+1`
-/

namespace A057533.P17844061616989259376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153023 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057533.P17844061616989259376

/-! ## A057533.P10114307491387951535

`eq[A057428(n), A153023(A028310(n))]`
-/

namespace A057533.P10114307491387951535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153023 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057533.P10114307491387951535

/-! ## A057533.P11450619949840040619

`A065475(eq[A057428(n), A153023(n+1)])`
-/

namespace A057533.P11450619949840040619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A057533.P11450619949840040619

/-! ## A057533.P1856779943211841193

`A065475(eq[A057428(n), A153024(n+1)])`
-/

namespace A057533.P1856779943211841193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A057533.P1856779943211841193

/-!
# A057536: Minimal number of coins needed to pay n Euro-cents using the Euro currency.

The programs for A057536, the canonical program `A057536.P3712307123288283069` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057536 has offset 0).

The definition of A057536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057536.P6134850500400665178

`∑{digits}[2*n, round(sqrt(#/gcd(2, #)))]`
-/

namespace A057536.P6134850500400665178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.sqrt ((x : ℚ) / (Nat.gcd 2 x : ℚ) : ℝ))).sum

end

end A057536.P6134850500400665178

namespace A057536

/-- `∑{digits}[2*n, round(sqrt(#/gcd(2, #)))]` -/
def P6134850500400665178.Spec : Prop :=
  ∀ n, P6134850500400665178.a n = A057536 n

end A057536

/-! ## A057536.P1798108411354350891

`∑{digits}[n, A014420(#)]`
-/

namespace A057536.P1798108411354350891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014420 x).sum

end

end A057536.P1798108411354350891

namespace A057536

/-- `∑{digits}[n, A014420(#)]` -/
def P1798108411354350891.Spec : Prop :=
  ∀ n, P1798108411354350891.a n = A057536 n

end A057536

/-! ## A057536.P4250892344320407229

`∑{digits}[n, A245573(#)]`
-/

namespace A057536.P4250892344320407229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A245573 x).sum

end

end A057536.P4250892344320407229

namespace A057536

/-- `∑{digits}[n, A245573(#)]` -/
def P4250892344320407229.Spec : Prop :=
  ∀ n, P4250892344320407229.a n = A057536 n

end A057536

/-! ## A057536.P16497972816744016877

`∑{digits}[n, A245574(#)]`
-/

namespace A057536.P16497972816744016877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A245574 x).sum

end

end A057536.P16497972816744016877

namespace A057536

/-- `∑{digits}[n, A245574(#)]` -/
def P16497972816744016877.Spec : Prop :=
  ∀ n, P16497972816744016877.a n = A057536 n

end A057536

/-! ## A057536.P854555763609103111

`∑{digits}[n, A245588(#)]`
-/

namespace A057536.P854555763609103111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A245588 x).sum

end

end A057536.P854555763609103111

namespace A057536

/-- `∑{digits}[n, A245588(#)]` -/
def P854555763609103111.Spec : Prop :=
  ∀ n, P854555763609103111.a n = A057536 n

end A057536

/-! ## A057536.P15340768206363425964

`∑{digits}[n, A265744(#)]`
-/

namespace A057536.P15340768206363425964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A265744 x).sum

end

end A057536.P15340768206363425964

namespace A057536

/-- `∑{digits}[n, A265744(#)]` -/
def P15340768206363425964.Spec : Prop :=
  ∀ n, P15340768206363425964.a n = A057536 n

end A057536

/-! ## A057536.P6927007069644265369

`∑{digits}[n, dr(A014418(#))]`
-/

namespace A057536.P6927007069644265369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (A014418 x)).sum

end

end A057536.P6927007069644265369

namespace A057536

/-- `∑{digits}[n, dr(A014418(#))]` -/
def P6927007069644265369.Spec : Prop :=
  ∀ n, (P6927007069644265369.a n : ℤ) = A057536 n

end A057536

/-! ## A057536.P11858727711016875163

`∑{digits}[2*n, A319688(#)]`
-/

namespace A057536.P11858727711016875163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A319688 x).sum

end

end A057536.P11858727711016875163

namespace A057536

/-- `∑{digits}[2*n, A319688(#)]` -/
def P11858727711016875163.Spec : Prop :=
  ∀ n, P11858727711016875163.a n = A057536 n

end A057536

/-! ## A057536.P7588094545337707600

`∑{digits}[∑{digits}[n, A215022(#)], #]`
-/

namespace A057536.P7588094545337707600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A215022 x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A057536.P7588094545337707600

namespace A057536

/-- `∑{digits}[∑{digits}[n, A215022(#)], #]` -/
def P7588094545337707600.Spec : Prop :=
  ∀ n, (P7588094545337707600.a n : ℤ) = A057536 n

end A057536

/-! ## A057536.P10567906752615853774

`∑{digits}[∑{digits}[n, A317204(#)], #]`
-/

namespace A057536.P10567906752615853774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A317204 x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A057536.P10567906752615853774

namespace A057536

/-- `∑{digits}[∑{digits}[n, A317204(#)], #]` -/
def P10567906752615853774.Spec : Prop :=
  ∀ n, (P10567906752615853774.a n : ℤ) = A057536 n

end A057536

/-! ## A057536.P3712307123288283069

`∑{digits}[2*n, A008624(#+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057536

/-- `∑{digits}[2*n, A008624(#+1)]` -/
def P3712307123288283069.Spec : Prop :=
  ∀ n, P3712307123288283069.a n = A057536 n

theorem P3712307123288283069.correct : P3712307123288283069.Spec := by
  intro n
  simp only [A057536]

end A057536

/-! ## A057536.P6136309392925184048

`∑{digits}[A322131(n), A053266(#)]`
-/

namespace A057536.P6136309392925184048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A053266 x).sum

end

end A057536.P6136309392925184048

namespace A057536

/-- `∑{digits}[A322131(n), A053266(#)]` -/
def P6136309392925184048.Spec : Prop :=
  ∀ n, P6136309392925184048.a n = A057536 n

end A057536

/-! ## A057536.P14930507146454008182

`∑{digits}[A322131(n), A110655(#)]`
-/

namespace A057536.P14930507146454008182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A110655 x).sum

end

end A057536.P14930507146454008182

namespace A057536

/-- `∑{digits}[A322131(n), A110655(#)]` -/
def P14930507146454008182.Spec : Prop :=
  ∀ n, P14930507146454008182.a n = A057536 n

end A057536

/-! ## A057536.P10920393827130998413

`A245574(A004185(n))`
-/

namespace A057536.P10920393827130998413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245574 (A004185 n).toNat

end

end A057536.P10920393827130998413

namespace A057536

/-- `A245574(A004185(n))` -/
def P10920393827130998413.Spec : Prop :=
  ∀ n, P10920393827130998413.a n = A057536 n

end A057536

/-! ## A057536.P10624069706700555114

`and(A151142(n), A245574(n))`
-/

namespace A057536.P10624069706700555114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151142 n) (A245574 n)

end

end A057536.P10624069706700555114

namespace A057536

/-- `and(A151142(n), A245574(n))` -/
def P10624069706700555114.Spec : Prop :=
  ∀ n, P10624069706700555114.a n = A057536 n

end A057536

/-! ## A057536.P4264010317426035361

`A245574(n+1)-Δ[A245574(n)]`
-/

namespace A057536.P4264010317426035361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245574 (n + 1) - (f1 (n + 1) - f1 n)

end

end A057536.P4264010317426035361

namespace A057536

/-- `A245574(n+1)-Δ[A245574(n)]` -/
def P4264010317426035361.Spec : Prop :=
  ∀ n, P4264010317426035361.a n = A057536 n

end A057536

/-! ## A057536.P15200267504775782234

`A245574(n)+A245552(A245577(n+1))`
-/

namespace A057536.P15200267504775782234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245574 n + A245552 (A245577 (n + 1)).toNat

end

end A057536.P15200267504775782234

namespace A057536

/-- `A245574(n)+A245552(A245577(n+1))` -/
def P15200267504775782234.Spec : Prop :=
  ∀ n, P15200267504775782234.a n = A057536 n

end A057536

/-!
# A057538: Birthday set of order 5: numbers congruent to +-1 modulo 2, 3, 4 and 5.

The programs for A057538, the canonical program `A057538.P10684586462702977522` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057538 has offset 1).

The definition of A057538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057538.P10684586462702977522

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=10, a(2)=8, a(3)=10, a(4)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057538

/-- `∑[floor(a(n-4))]` -/
def P10684586462702977522.Spec : Prop :=
  ∀ n, (P10684586462702977522.a n : ℤ) = A057538 (n + 1)

theorem P10684586462702977522.correct : P10684586462702977522.Spec := by
  intro n
  simp only [A057538, Nat.add_sub_cancel]

end A057538

/-! ## A057538.P4968897085158154246

`2*A151972(n+2)-1`
-/

namespace A057538.P4968897085158154246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151972 (n + 2) - 1

end

end A057538.P4968897085158154246

namespace A057538

/-- `2*A151972(n+2)-1` -/
def P4968897085158154246.Spec : Prop :=
  ∀ n, P4968897085158154246.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P3645771222412552860

`A090771(ceil(3*n/2)+1)`
-/

namespace A057538.P3645771222412552860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (⌈3 * ((n : ℚ) / 2)⌉ + 1).toNat

end

end A057538.P3645771222412552860

namespace A057538

/-- `A090771(ceil(3*n/2)+1)` -/
def P3645771222412552860.Spec : Prop :=
  ∀ n, P3645771222412552860.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P15112225371314382219

`filter[A090771(n+1), A162289(#)]`
-/

namespace A057538.P15112225371314382219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A057538.P15112225371314382219

namespace A057538

/-- `filter[A090771(n+1), A162289(#)]` -/
def P15112225371314382219.Spec : Prop :=
  ∀ n, P15112225371314382219.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P13107069123361222702

`filter[A090771(n+1), A187074(#)]`
-/

namespace A057538.P13107069123361222702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A057538.P13107069123361222702

namespace A057538

/-- `filter[A090771(n+1), A187074(#)]` -/
def P13107069123361222702.Spec : Prop :=
  ∀ n, P13107069123361222702.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P2118112054457192902

`filter[A090771(n+1), A320106(#)]`
-/

namespace A057538.P2118112054457192902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A057538.P2118112054457192902

namespace A057538

/-- `filter[A090771(n+1), A320106(#)]` -/
def P2118112054457192902.Spec : Prop :=
  ∀ n, P2118112054457192902.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P8613081359343151927

`filter[A090771(n+1), A354354(#)]`
-/

namespace A057538.P8613081359343151927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A057538.P8613081359343151927

namespace A057538

/-- `filter[A090771(n+1), A354354(#)]` -/
def P8613081359343151927.Spec : Prop :=
  ∀ n, P8613081359343151927.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P17501778037971297352

`filter[A090771(n+1), A359374(#)]`
-/

namespace A057538.P17501778037971297352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A057538.P17501778037971297352

namespace A057538

/-- `filter[A090771(n+1), A359374(#)]` -/
def P17501778037971297352.Spec : Prop :=
  ∀ n, P17501778037971297352.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P7058409712343151480

`filter[A090771(n+1), A373155(#)]`
-/

namespace A057538.P7058409712343151480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A057538.P7058409712343151480

namespace A057538

/-- `filter[A090771(n+1), A373155(#)]` -/
def P7058409712343151480.Spec : Prop :=
  ∀ n, P7058409712343151480.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P18432810114927493936

`filter[A090771(n+1), A373156(#)]`
-/

namespace A057538.P18432810114927493936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A057538.P18432810114927493936

namespace A057538

/-- `filter[A090771(n+1), A373156(#)]` -/
def P18432810114927493936.Spec : Prop :=
  ∀ n, P18432810114927493936.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P13359128206555453393

`filter[A090771(n+1), A374043(#)]`
-/

namespace A057538.P13359128206555453393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A057538.P13359128206555453393

namespace A057538

/-- `filter[A090771(n+1), A374043(#)]` -/
def P13359128206555453393.Spec : Prop :=
  ∀ n, P13359128206555453393.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P2528130837384572237

`A230462(A047269(n+2))`
-/

namespace A057538.P2528130837384572237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (A047269 (n + 2)).toNat

end

end A057538.P2528130837384572237

namespace A057538

/-- `A230462(A047269(n+2))` -/
def P2528130837384572237.Spec : Prop :=
  ∀ n, P2528130837384572237.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P9466756595564746454

`A230462(A047260(n+1)+1)`
-/

namespace A057538.P9466756595564746454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (A047260 (n + 1) + 1).toNat

end

end A057538.P9466756595564746454

namespace A057538

/-- `A230462(A047260(n+1)+1)` -/
def P9466756595564746454.Spec : Prop :=
  ∀ n, P9466756595564746454.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P512944255944636271

`∩[2*n+1, A204542(n+1)]`
-/

namespace A057538.P512944255944636271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057538.P512944255944636271

namespace A057538

/-- `∩[2*n+1, A204542(n+1)]` -/
def P512944255944636271.Spec : Prop :=
  ∀ n, (P512944255944636271.a n : ℤ) = A057538 (n + 1)

end A057538

/-! ## A057538.P8949556831824695648

`A007775(A047401(n+2))`
-/

namespace A057538.P8949556831824695648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (A047401 (n + 2)).toNat

end

end A057538.P8949556831824695648

namespace A057538

/-- `A007775(A047401(n+2))` -/
def P8949556831824695648.Spec : Prop :=
  ∀ n, P8949556831824695648.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P11629691262368727273

`filter[A204542(n+1), A093719(#)]`
-/

namespace A057538.P11629691262368727273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A057538.P11629691262368727273

namespace A057538

/-- `filter[A204542(n+1), A093719(#)]` -/
def P11629691262368727273.Spec : Prop :=
  ∀ n, P11629691262368727273.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P13089085468532595231

`filter[A204542(n+1), A162289(#)]`
-/

namespace A057538.P13089085468532595231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A057538.P13089085468532595231

namespace A057538

/-- `filter[A204542(n+1), A162289(#)]` -/
def P13089085468532595231.Spec : Prop :=
  ∀ n, P13089085468532595231.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P11733975089156698489

`filter[A204542(n+1), A320106(#)]`
-/

namespace A057538.P11733975089156698489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A057538.P11733975089156698489

namespace A057538

/-- `filter[A204542(n+1), A320106(#)]` -/
def P11733975089156698489.Spec : Prop :=
  ∀ n, P11733975089156698489.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P6115778990694988442

`filter[A204542(n+1), A354354(#)]`
-/

namespace A057538.P6115778990694988442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A057538.P6115778990694988442

namespace A057538

/-- `filter[A204542(n+1), A354354(#)]` -/
def P6115778990694988442.Spec : Prop :=
  ∀ n, P6115778990694988442.a n = A057538 (n + 1)

end A057538

/-! ## A057538.P60841568340712411

`filter[A204542(n+1), A373156(#)]`
-/

namespace A057538.P60841568340712411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A057538.P60841568340712411

namespace A057538

/-- `filter[A204542(n+1), A373156(#)]` -/
def P60841568340712411.Spec : Prop :=
  ∀ n, P60841568340712411.a n = A057538 (n + 1)

end A057538

/-!
# A057539: Birthday set of order 7, i.e., numbers congruent to +- 1 modulo 2, 3, 4, 5, 6 and 7.

The programs for A057539, the canonical program `A057539.P4975038789975801891` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057539 has offset 1).

The definition of A057539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057539.P4975038789975801891

`a(n-8)+210` with `a(0)=1, a(1)=29, a(2)=41, a(3)=71, a(4)=139, a(5)=169, a(6)=181, a(7)=209`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057539

/-- `a(n-8)+210` -/
def P4975038789975801891.Spec : Prop :=
  ∀ n, (P4975038789975801891.a n : ℤ) = A057539 (n + 1)

theorem P4975038789975801891.correct : P4975038789975801891.Spec := by
  intro n
  simp only [A057539, Nat.add_sub_cancel]

end A057539

/-! ## A057539.P17815616250301698024

`∩[A057538(n+1), A113801(n+1)]`
-/

namespace A057539.P17815616250301698024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057539.P17815616250301698024

namespace A057539

/-- `∩[A057538(n+1), A113801(n+1)]` -/
def P17815616250301698024.Spec : Prop :=
  ∀ n, (P17815616250301698024.a n : ℤ) = A057539 (n + 1)

end A057539

/-! ## A057539.P15664589124056700333

`∩[A057538(n+1), A219721(n)]`
-/

namespace A057539.P15664589124056700333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057539.P15664589124056700333

namespace A057539

/-- `∩[A057538(n+1), A219721(n)]` -/
def P15664589124056700333.Spec : Prop :=
  ∀ n, (P15664589124056700333.a n : ℤ) = A057539 (n + 1)

end A057539

/-! ## A057539.P2569605077838660023

`∩[A090771(n+1), A219721(n)]`
-/

namespace A057539.P2569605077838660023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057539.P2569605077838660023

namespace A057539

/-- `∩[A090771(n+1), A219721(n)]` -/
def P2569605077838660023.Spec : Prop :=
  ∀ n, (P2569605077838660023.a n : ℤ) = A057539 (n + 1)

end A057539

/-! ## A057539.P1063585649813637054

`∩[A113801(n+1), A204542(n+1)]`
-/

namespace A057539.P1063585649813637054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057539.P1063585649813637054

namespace A057539

/-- `∩[A113801(n+1), A204542(n+1)]` -/
def P1063585649813637054.Spec : Prop :=
  ∀ n, (P1063585649813637054.a n : ℤ) = A057539 (n + 1)

end A057539

/-! ## A057539.P4142735055203060334

`∩[A047336(n+1), A057538(n+1)]`
-/

namespace A057539.P4142735055203060334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057539.P4142735055203060334

namespace A057539

/-- `∩[A047336(n+1), A057538(n+1)]` -/
def P4142735055203060334.Spec : Prop :=
  ∀ n, (P4142735055203060334.a n : ℤ) = A057539 (n + 1)

end A057539

/-! ## A057539.P13315585272948525382

`eq[A070457(n), A195697(n+1)]`
-/

namespace A057539.P13315585272948525382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057539.P13315585272948525382

namespace A057539

/-- `eq[A070457(n), A195697(n+1)]` -/
def P13315585272948525382.Spec : Prop :=
  ∀ n, (P13315585272948525382.a n : ℤ) = A057539 (n + 1)

end A057539

/-!
# A057540: Birthday set of order 8: i.e., numbers congruent to +- 1 modulo 2, 3, 4, 5, 6, 7 and 8.

The programs for A057540, the canonical program `A057540.P4839102166846045494` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057540 has offset 1).

The definition of A057540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 915 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057540.P4839102166846045494

`∩[A057539(n+1), A227144(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A057540

/-- `∩[A057539(n+1), A227144(n+1)]` -/
def P4839102166846045494.Spec : Prop :=
  ∀ n, (P4839102166846045494.a n : ℤ) = A057540 (n + 1)

theorem P4839102166846045494.correct : P4839102166846045494.Spec := by
  intro n
  simp only [A057540, Nat.add_sub_cancel]

end A057540

/-! ## A057540.P16241757274073464824

`∩[A047522(n+1), A057539(n+1)]`
-/

namespace A057540.P16241757274073464824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P16241757274073464824

namespace A057540

/-- `∩[A047522(n+1), A057539(n+1)]` -/
def P16241757274073464824.Spec : Prop :=
  ∀ n, (P16241757274073464824.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P14255437146234312503

`∩[A047523(n+1), A057539(n+1)]`
-/

namespace A057540.P14255437146234312503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P14255437146234312503

namespace A057540

/-- `∩[A047523(n+1), A057539(n+1)]` -/
def P14255437146234312503.Spec : Prop :=
  ∀ n, (P14255437146234312503.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P14447524344510344495

`∩[A047526(n+1), A057539(n+1)]`
-/

namespace A057540.P14447524344510344495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P14447524344510344495

namespace A057540

/-- `∩[A047526(n+1), A057539(n+1)]` -/
def P14447524344510344495.Spec : Prop :=
  ∀ n, (P14447524344510344495.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P8333519252270168980

`∩[A047537(n+1), A057539(n+1)]`
-/

namespace A057540.P8333519252270168980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P8333519252270168980

namespace A057540

/-- `∩[A047537(n+1), A057539(n+1)]` -/
def P8333519252270168980.Spec : Prop :=
  ∀ n, (P8333519252270168980.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P9165958738499778345

`∩[A047591(n+1), A057539(n+1)]`
-/

namespace A057540.P9165958738499778345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P9165958738499778345

namespace A057540

/-- `∩[A047591(n+1), A057539(n+1)]` -/
def P9165958738499778345.Spec : Prop :=
  ∀ n, (P9165958738499778345.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P12187156186360207918

`∩[A057539(n+1), A260395(n+1)]`
-/

namespace A057540.P12187156186360207918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P12187156186360207918

namespace A057540

/-- `∩[A057539(n+1), A260395(n+1)]` -/
def P12187156186360207918.Spec : Prop :=
  ∀ n, (P12187156186360207918.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P606865517699619609

`∩[A057539(n+1), A069909(n)]`
-/

namespace A057540.P606865517699619609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069909 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P606865517699619609

namespace A057540

/-- `∩[A057539(n+1), A069909(n)]` -/
def P606865517699619609.Spec : Prop :=
  ∀ n, (P606865517699619609.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P12694593214505935206

`∩[A047508(n+1), A057539(n+1)]`
-/

namespace A057540.P12694593214505935206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P12694593214505935206

namespace A057540

/-- `∩[A047508(n+1), A057539(n+1)]` -/
def P12694593214505935206.Spec : Prop :=
  ∀ n, (P12694593214505935206.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P11931768964515052352

`∩[A047527(n+1), A057539(n+1)]`
-/

namespace A057540.P11931768964515052352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P11931768964515052352

namespace A057540

/-- `∩[A047527(n+1), A057539(n+1)]` -/
def P11931768964515052352.Spec : Prop :=
  ∀ n, (P11931768964515052352.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P5336892737834249979

`∩[A047538(n+1), A057539(n+1)]`
-/

namespace A057540.P5336892737834249979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P5336892737834249979

namespace A057540

/-- `∩[A047538(n+1), A057539(n+1)]` -/
def P5336892737834249979.Spec : Prop :=
  ∀ n, (P5336892737834249979.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P13583782578720675811

`∩[A047541(n+1), A057539(n+1)]`
-/

namespace A057540.P13583782578720675811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P13583782578720675811

namespace A057540

/-- `∩[A047541(n+1), A057539(n+1)]` -/
def P13583782578720675811.Spec : Prop :=
  ∀ n, (P13583782578720675811.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P3003431671375668491

`∩[A047551(n+1), A057539(n+1)]`
-/

namespace A057540.P3003431671375668491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P3003431671375668491

namespace A057540

/-- `∩[A047551(n+1), A057539(n+1)]` -/
def P3003431671375668491.Spec : Prop :=
  ∀ n, (P3003431671375668491.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P4043542546738954181

`∩[A047554(n+1), A057539(n+1)]`
-/

namespace A057540.P4043542546738954181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P4043542546738954181

namespace A057540

/-- `∩[A047554(n+1), A057539(n+1)]` -/
def P4043542546738954181.Spec : Prop :=
  ∀ n, (P4043542546738954181.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P11750740049264344075

`∩[A057539(n+1), A074231(n+1)]`
-/

namespace A057540.P11750740049264344075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P11750740049264344075

namespace A057540

/-- `∩[A057539(n+1), A074231(n+1)]` -/
def P11750740049264344075.Spec : Prop :=
  ∀ n, (P11750740049264344075.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P6609658530717869413

`∩[A047509(n+1), A057539(n+1)]`
-/

namespace A057540.P6609658530717869413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P6609658530717869413

namespace A057540

/-- `∩[A047509(n+1), A057539(n+1)]` -/
def P6609658530717869413.Spec : Prop :=
  ∀ n, (P6609658530717869413.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P9735510296729334204

`∩[A047512(n+1), A057539(n+1)]`
-/

namespace A057540.P9735510296729334204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P9735510296729334204

namespace A057540

/-- `∩[A047512(n+1), A057539(n+1)]` -/
def P9735510296729334204.Spec : Prop :=
  ∀ n, (P9735510296729334204.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P14657692058547344828

`∩[A047542(n+1), A057539(n+1)]`
-/

namespace A057540.P14657692058547344828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P14657692058547344828

namespace A057540

/-- `∩[A047542(n+1), A057539(n+1)]` -/
def P14657692058547344828.Spec : Prop :=
  ∀ n, (P14657692058547344828.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P14061546048220435155

`∩[A047555(n+1), A057539(n+1)]`
-/

namespace A057540.P14061546048220435155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P14061546048220435155

namespace A057540

/-- `∩[A047555(n+1), A057539(n+1)]` -/
def P14061546048220435155.Spec : Prop :=
  ∀ n, (P14061546048220435155.a n : ℤ) = A057540 (n + 1)

end A057540

/-! ## A057540.P2377727270056118337

`∩[A057539(n+1), A260399(n+1)]`
-/

namespace A057540.P2377727270056118337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P2377727270056118337

namespace A057540

/-- `∩[A057539(n+1), A260399(n+1)]` -/
def P2377727270056118337.Spec : Prop :=
  ∀ n, (P2377727270056118337.a n : ℤ) = A057540 (n + 1)

end A057540

/-!
# A057541: Birthday set of order 9: i.e., numbers congruent to +- 1 modulo 2, 3, 4, 5, 6, 7, 8 and 9.

The programs for A057541, the canonical program `A057541.P12411612141850877214` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057541 has offset 1).

The definition of A057541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057541.P12411612141850877214

`∩[A056020(n+1), A057540(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057541

/-- `∩[A056020(n+1), A057540(n+1)]` -/
def P12411612141850877214.Spec : Prop :=
  ∀ n, (P12411612141850877214.a n : ℤ) = A057541 (n + 1)

theorem P12411612141850877214.correct : P12411612141850877214.Spec := by
  intro n
  simp only [A057541, Nat.add_sub_cancel]

end A057541

/-! ## A057541.P1540236870766693091

`∩[A057540(n+1), A319293(n+1)]`
-/

namespace A057541.P1540236870766693091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057541.P1540236870766693091

namespace A057541

/-- `∩[A057540(n+1), A319293(n+1)]` -/
def P1540236870766693091.Spec : Prop :=
  ∀ n, (P1540236870766693091.a n : ℤ) = A057541 (n + 1)

end A057541

/-! ## A057541.P8403396220387185001

`∩[A057540(n+1), A350667(n)]`
-/

namespace A057541.P8403396220387185001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057541.P8403396220387185001

namespace A057541

/-- `∩[A057540(n+1), A350667(n)]` -/
def P8403396220387185001.Spec : Prop :=
  ∀ n, (P8403396220387185001.a n : ℤ) = A057541 (n + 1)

end A057541

/-! ## A057541.P4037129242889121585

`∩[A003663(n+1), A057540(n+1)]`
-/

namespace A057541.P4037129242889121585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057541.P4037129242889121585

namespace A057541

/-- `∩[A003663(n+1), A057540(n+1)]` -/
def P4037129242889121585.Spec : Prop :=
  ∀ n, (P4037129242889121585.a n : ℤ) = A057541 (n + 1)

end A057541

/-!
# A057542: Maximum cycle length in each permutation between A038776(1) and A038776(A000108(n)).

The programs for A057542, there is no canonical definition to state claims against.
-/

/-! ## A057542.P17567728265671234884

`A080311(A148668(n))`
-/

namespace A057542.P17567728265671234884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080311 (A148668 n).toNat

end

end A057542.P17567728265671234884

/-! ## A057542.P4764437285684398223

`A080311(A152098(n))`
-/

namespace A057542.P4764437285684398223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080311 (A152098 n).toNat

end

end A057542.P4764437285684398223

/-! ## A057542.P3322172730502382023

`A080311(A186239(n))`
-/

namespace A057542.P3322172730502382023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080311 (A186239 n).toNat

end

end A057542.P3322172730502382023

/-! ## A057542.P15357991477867790333

`A080311(A025566(n+1))`
-/

namespace A057542.P15357991477867790333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080311 (A025566 (n + 1)).toNat

end

end A057542.P15357991477867790333

/-! ## A057542.P4548897723056184408

`A080311(A086880(n+1))`
-/

namespace A057542.P4548897723056184408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080311 (A086880 (n + 1)).toNat

end

end A057542.P4548897723056184408

/-!
# A057543: Maximum cycle length (orbit size) in the rotation permutation of 2n non-crossing handshakes.

The programs for A057543, the canonical program `A057543.P4366308436392367922` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057543 has offset 0).

The definition of A057543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057543.P4366308436392367922

`n*a(2%n)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057543

/-- `n*a(2%n)` -/
def P4366308436392367922.Spec : Prop :=
  ∀ n, (P4366308436392367922.a n : ℤ) = A057543 n

theorem P4366308436392367922.correct : P4366308436392367922.Spec := by
  intro n
  simp only [A057543]

end A057543

/-!
# A057544: Maximum cycle length (orbit size) in the rotation permutation of n+2 side polygon triangularizations.

The programs for A057544, the canonical program `A057544.P13645954914696233480` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057544 has offset 0).

The definition of A057544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057544.P13645954914696233480

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057544

/-- `2*a(n-1)-a(n-2)` -/
def P13645954914696233480.Spec : Prop :=
  ∀ n, P13645954914696233480.a n = A057544 n

theorem P13645954914696233480.correct : P13645954914696233480.Spec := by
  intro n
  simp only [A057544]

end A057544

/-!
# A057545: Maximum cycle size in range [A014137(n-1)..A014138(n-1)] of permutation A057505/A057506.

The programs for A057545, there is no canonical definition to state claims against.
-/

/-! ## A057545.P10467303973151604193

`A089878(A089840(∑[n]))`
-/

namespace A057545.P10467303973151604193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089878 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A057545.P10467303973151604193

/-! ## A057545.P13026028883320198064

`A089878(A122204(∑[n]))`
-/

namespace A057545.P13026028883320198064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089878 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A057545.P13026028883320198064

/-! ## A057545.P11312935171575625244

`A089878(A122287(∑[n]))`
-/

namespace A057545.P11312935171575625244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089878 (A122287 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A057545.P11312935171575625244

/-! ## A057545.P15485078680330423566

`A089878(A122289(∑[n]))`
-/

namespace A057545.P15485078680330423566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089878 (A122289 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A057545.P15485078680330423566

/-! ## A057545.P1529138642469096094

`A089878(A032741(2^n))`
-/

namespace A057545.P1529138642469096094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089878 (A032741 (2 ^ n)).toNat

end

end A057545.P1529138642469096094

/-!
# A057546: Number of Catalan objects of size n fixed by Catalan Automorphism A057511/A057512 (deep rotation of general parenthesizations/plane trees).

The programs for A057546, there is no canonical definition to state claims against.
-/

/-! ## A057546.P2918455036169841616

`A079217(∑[n])`
-/

namespace A057546.P2918455036169841616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057546.P2918455036169841616

/-! ## A057546.P2248069000403238502

`and(-1, A079217(n*(n+1)/2))`
-/

namespace A057546.P2248069000403238502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A079217 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A057546.P2248069000403238502

/-! ## A057546.P9437057066833032256

`gcd(floor(1/(n+1)), A079217(A000217(n)))`
-/

namespace A057546.P9437057066833032256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A079217 (A000217 n).toNat)

end

end A057546.P9437057066833032256

/-! ## A057546.P12807155318519015713

`A079217(n*(n+1)/2)%A003946(n+1)`
-/

namespace A057546.P12807155318519015713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079217 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat) (A003946 (n + 1))

end

end A057546.P12807155318519015713

/-! ## A057546.P8818873555530881360

`A079217(A000217(n))%A020714(n)`
-/

namespace A057546.P8818873555530881360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079217 (A000217 n).toNat) (A020714 n)

end

end A057546.P8818873555530881360

/-!
# A057547: A014486-encodings of Catalan mountain ranges with no sea-level valleys, i.e., the rooted plane general trees with root degree = 1.

The programs for A057547, there is no canonical definition to state claims against.
-/

/-! ## A057547.P5996140822107081780

`A014486(A057548(n))`
-/

namespace A057547.P5996140822107081780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057548 n).toNat

end

end A057547.P5996140822107081780

/-! ## A057547.P9398522697713345095

`A083937(n)+A014486(n)`
-/

namespace A057547.P9398522697713345095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083937 n + A014486 n

end

end A057547.P9398522697713345095

/-! ## A057547.P311470548941744349

`A014486(n)+A014486(A072795(n))`
-/

namespace A057547.P311470548941744349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n + A014486 (A072795 n).toNat

end

end A057547.P311470548941744349

/-! ## A057547.P8784250496081612017

`A014486(record[A057161(n+1)])`
-/

namespace A057547.P8784250496081612017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057547.P8784250496081612017

/-! ## A057547.P7342362027991107250

`A014486(record[A057501(n+1)])`
-/

namespace A057547.P7342362027991107250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057547.P7342362027991107250

/-! ## A057547.P2388764857811128333

`A014486(record[A069770(n+1)])`
-/

namespace A057547.P2388764857811128333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057547.P2388764857811128333

/-! ## A057547.P5720946188210405248

`A014486(record[A074680(n+1)])`
-/

namespace A057547.P5720946188210405248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057547.P5720946188210405248

/-! ## A057547.P17329012198073636725

`A014486(A069770(A072795(n)))`
-/

namespace A057547.P17329012198073636725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A069770 (A072795 n).toNat).toNat

end

end A057547.P17329012198073636725

/-! ## A057547.P3638801482383021735

`A014486(record[A057502(n+1)])`
-/

namespace A057547.P3638801482383021735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057547.P3638801482383021735

/-! ## A057547.P7820511182332926001

`A014486(eq[1, A057515(n)])`
-/

namespace A057547.P7820511182332926001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057547.P7820511182332926001

/-! ## A057547.P8012388525426925704

`A014486(eq[1, A083923(n)])`
-/

namespace A057547.P8012388525426925704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057547.P8012388525426925704

/-! ## A057547.P3652592044637901448

`A014486(record[A130929(n+1)])`
-/

namespace A057547.P3652592044637901448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057547.P3652592044637901448

/-! ## A057547.P12036367437657147929

`A014486(record[A130931(n+1)])`
-/

namespace A057547.P12036367437657147929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057547.P12036367437657147929

/-! ## A057547.P17962501698770325939

`A206332(A194045(n)+1)`
-/

namespace A057547.P17962501698770325939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (A194045 n + 1).toNat

end

end A057547.P17962501698770325939

/-! ## A057547.P14240972435085789452

`eq[A075180(n), A370885(n)]`
-/

namespace A057547.P14240972435085789452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057547.P14240972435085789452

/-! ## A057547.P11912374976316643443

`2*A004760(A014486(n)+2)`
-/

namespace A057547.P11912374976316643443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004760 (A014486 n + 2).toNat

end

end A057547.P11912374976316643443

/-! ## A057547.P212533274817993426

`eq[A118827(n+1), A370885(n)]`
-/

namespace A057547.P212533274817993426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057547.P212533274817993426

/-! ## A057547.P7187049047129339315

`A014486(n)+∩[A004754(n+1), A014486(n)]`
-/

namespace A057547.P7187049047129339315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A057547.P7187049047129339315

/-! ## A057547.P3182524338086256261

`A014486(n)+∩[A159615(n+1), A014486(n)]`
-/

namespace A057547.P3182524338086256261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A057547.P3182524338086256261

/-! ## A057547.P15988002867550513916

`A014486(n)+∩[A171757(n+1), A014486(n)]`
-/

namespace A057547.P15988002867550513916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A057547.P15988002867550513916

/-!
# A057548: A014486-indices of Catalan mountain ranges with no sea-level valleys, i.e., the rooted plane general trees with root degree = 1.

The programs for A057548, there is no canonical definition to state claims against.
-/

/-! ## A057548.P15830449747687612697

`A069770(A072795(n))`
-/

namespace A057548.P15830449747687612697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A072795 n).toNat

end

end A057548.P15830449747687612697

/-! ## A057548.P8090986700580850819

`A080300(A057547(n))`
-/

namespace A057548.P8090986700580850819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A057547 n).toNat

end

end A057548.P8090986700580850819

/-! ## A057548.P9079850234008780834

`A057551(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A057548.P9079850234008780834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057551 (n - 1) + a (n - 1)

end

end A057548.P9079850234008780834

/-! ## A057548.P361894815150531421

`∑[A057550(A057503(n))]`
-/

namespace A057548.P361894815150531421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 (A057503 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057548.P361894815150531421

/-! ## A057548.P14417492010497964570

`record[A057161(n+1)]`
-/

namespace A057548.P14417492010497964570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P14417492010497964570

/-! ## A057548.P17101371512962636738

`record[A057501(n+1)]`
-/

namespace A057548.P17101371512962636738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P17101371512962636738

/-! ## A057548.P1551727468883199916

`record[A069767(n+1)]`
-/

namespace A057548.P1551727468883199916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P1551727468883199916

/-! ## A057548.P2895168321411733985

`record[A069770(n+1)]`
-/

namespace A057548.P2895168321411733985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P2895168321411733985

/-! ## A057548.P13517240126912555650

`record[A069774(n+1)]`
-/

namespace A057548.P13517240126912555650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P13517240126912555650

/-! ## A057548.P9515013391570050171

`record[A071655(n+1)]`
-/

namespace A057548.P9515013391570050171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P9515013391570050171

/-! ## A057548.P6279447259902588324

`record[A071657(n+1)]`
-/

namespace A057548.P6279447259902588324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P6279447259902588324

/-! ## A057548.P12486036046902146208

`record[A071659(n+1)]`
-/

namespace A057548.P12486036046902146208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P12486036046902146208

/-! ## A057548.P7524818695549291703

`record[A072090(n+1)]`
-/

namespace A057548.P7524818695549291703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P7524818695549291703

/-! ## A057548.P966965267363276600

`record[A072092(n+1)]`
-/

namespace A057548.P966965267363276600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P966965267363276600

/-! ## A057548.P14895175163509339817

`record[A072094(n+1)]`
-/

namespace A057548.P14895175163509339817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P14895175163509339817

/-! ## A057548.P12297434888247112265

`record[A073270(n+1)]`
-/

namespace A057548.P12297434888247112265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P12297434888247112265

/-! ## A057548.P3783105666415527904

`record[A074680(n+1)]`
-/

namespace A057548.P3783105666415527904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P3783105666415527904

/-! ## A057548.P7102469438719995566

`record[A082345(n+1)]`
-/

namespace A057548.P7102469438719995566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P7102469438719995566

/-! ## A057548.P156267991544712267

`A057501(A072795(2*n-n))`
-/

namespace A057548.P156267991544712267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A072795 (2 * n - n)).toNat

end

end A057548.P156267991544712267

/-! ## A057548.P14752754023533583712

`record[A073269(n+1)]`
-/

namespace A057548.P14752754023533583712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057548.P14752754023533583712

/-!
# A057549: The local ranks of each term of A057547.

The programs for A057549, there is no canonical definition to state claims against.
-/

/-! ## A057549.P13496107621488679247

`∑[A057550(abs(1-n))]-2`
-/

namespace A057549.P13496107621488679247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A057549.P13496107621488679247

/-! ## A057549.P11659114117522802928

`abs(A057550(n)-∑[A057550(n)])`
-/

namespace A057549.P11659114117522802928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057550 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A057549.P11659114117522802928

/-! ## A057549.P16748574909797657882

`record[A082362(n)]`
-/

namespace A057549.P16748574909797657882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P16748574909797657882

/-! ## A057549.P12570932613294411246

`A057519(A072795(n))`
-/

namespace A057549.P12570932613294411246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057519 (A072795 n).toNat

end

end A057549.P12570932613294411246

/-! ## A057549.P1653951046735278606

`record[A057161(n)-(n-A082853(n))]`
-/

namespace A057549.P1653951046735278606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 n - ((n : ℤ) - A082853 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P1653951046735278606

/-! ## A057549.P2478588215015133797

`record[A057501(n)-(n-A082853(n))]`
-/

namespace A057549.P2478588215015133797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 n - ((n : ℤ) - A082853 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P2478588215015133797

/-! ## A057549.P1284480689420565068

`record[A069767(n)-(n-A082853(n))]`
-/

namespace A057549.P1284480689420565068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 n - ((n : ℤ) - A082853 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P1284480689420565068

/-! ## A057549.P8753552938983832899

`record[A069770(n)-(n-A082853(n))]`
-/

namespace A057549.P8753552938983832899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 n - ((n : ℤ) - A082853 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P8753552938983832899

/-! ## A057549.P9408577604952539584

`lt[A289026(A070041(n+1)), A188301(n+2)]`
-/

namespace A057549.P9408577604952539584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 (A070041 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057549.P9408577604952539584

/-! ## A057549.P15640408777226278904

`A082853(A057548(n))`
-/

namespace A057549.P15640408777226278904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A057548 n).toNat

end

end A057549.P15640408777226278904

/-! ## A057549.P18088627520536193605

`record[A082853(A057161(n))]`
-/

namespace A057549.P18088627520536193605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A057161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P18088627520536193605

/-! ## A057549.P14070436166557111043

`record[A082853(A057501(n))]`
-/

namespace A057549.P14070436166557111043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A057501 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P14070436166557111043

/-! ## A057549.P17696552177066585224

`record[A082853(A069767(n))]`
-/

namespace A057549.P17696552177066585224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A069767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P17696552177066585224

/-! ## A057549.P3971933024188375310

`record[A082853(A069770(n))]`
-/

namespace A057549.P3971933024188375310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A069770 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P3971933024188375310

/-! ## A057549.P12651571969392593239

`record[A082853(A074680(n))]`
-/

namespace A057549.P12651571969392593239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A074680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P12651571969392593239

/-! ## A057549.P14546725626102923301

`record[A082853(A123713(n))]`
-/

namespace A057549.P14546725626102923301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A123713 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P14546725626102923301

/-! ## A057549.P12232607355898439198

`A082853(eq[1, A057515(n)])`
-/

namespace A057549.P12232607355898439198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057549.P12232607355898439198

/-! ## A057549.P8099287851804166407

`lt[A057117(A070041(n+1)), n+2]`
-/

namespace A057549.P8099287851804166407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 (A070041 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057549.P8099287851804166407

/-! ## A057549.P6180613398972652048

`A082853(A085227(n))`
-/

namespace A057549.P6180613398972652048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A085227 n).toNat

end

end A057549.P6180613398972652048

/-! ## A057549.P16971096395021414171

`record[A082853(A130923(n))]`
-/

namespace A057549.P16971096395021414171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A130923 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057549.P16971096395021414171

/-!
# A057550: First differences of A057549.

The programs for A057550, there is no canonical definition to state claims against.
-/

/-! ## A057550.P10751143193616840420

`Δ[A057549(n)]`
-/

namespace A057550.P10751143193616840420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057550.P10751143193616840420

/-! ## A057550.P2486826258752173664

`A057549(n+1)-A057549(n)`
-/

namespace A057550.P2486826258752173664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057549 (n + 1) - A057549 n

end

end A057550.P2486826258752173664

/-! ## A057550.P1663665927811310279

`record[A057549(abs(1-n))]-A057549(n)`
-/

namespace A057550.P1663665927811310279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057549 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A057549 n

end

end A057550.P1663665927811310279

/-! ## A057550.P15067597872274618955

`Δ[record[A082362(n)]]`
-/

namespace A057550.P15067597872274618955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082362 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057550.P15067597872274618955

/-! ## A057550.P15454411783347409507

`A057551(A085227(n))`
-/

namespace A057550.P15454411783347409507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057551 (A085227 n).toNat

end

end A057550.P15454411783347409507

/-! ## A057550.P11980541601051790281

`A057551(A072795(A057548(n)))`
-/

namespace A057550.P11980541601051790281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057551 (A072795 (A057548 n).toNat).toNat

end

end A057550.P11980541601051790281

/-! ## A057550.P7301495713597847203

`A057551(A072795(A057161(A072795(n))))`
-/

namespace A057550.P7301495713597847203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057551 (A072795 (A057161 (A072795 n).toNat).toNat).toNat

end

end A057550.P7301495713597847203

/-! ## A057550.P3239877080587241446

`Δ[record[A082853(A131171(n))]]`
-/

namespace A057550.P3239877080587241446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A131171 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057550.P3239877080587241446

/-!
# A057551: First differences of A057548.

The programs for A057551, there is no canonical definition to state claims against.
-/

/-! ## A057551.P11702831503220172557

`Δ[A057548(n)]`
-/

namespace A057551.P11702831503220172557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P11702831503220172557

/-! ## A057551.P922432469206235327

`A057548(n+1)-A057548(n)`
-/

namespace A057551.P922432469206235327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 (n + 1) - A057548 n

end

end A057551.P922432469206235327

/-! ## A057551.P413975504439380449

`A057550(A057503(n+1))`
-/

namespace A057551.P413975504439380449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 (A057503 (n + 1)).toNat

end

end A057551.P413975504439380449

/-! ## A057551.P8668864084075651365

`A057550(A057505(n+1))`
-/

namespace A057551.P8668864084075651365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 (A057505 (n + 1)).toNat

end

end A057551.P8668864084075651365

/-! ## A057551.P15926672996475720588

`A057550(A074684(n+1))`
-/

namespace A057551.P15926672996475720588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 (A074684 (n + 1)).toNat

end

end A057551.P15926672996475720588

/-! ## A057551.P11182269880828908252

`A057550(A085173(n+1))`
-/

namespace A057551.P11182269880828908252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 (A085173 (n + 1)).toNat

end

end A057551.P11182269880828908252

/-! ## A057551.P14430657535737156039

`A057550(A072795(n+1)-1)`
-/

namespace A057551.P14430657535737156039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 (A072795 (n + 1) - 1).toNat

end

end A057551.P14430657535737156039

/-! ## A057551.P2589990833390572991

`Δ[record[A057161(n+1)]]`
-/

namespace A057551.P2589990833390572991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P2589990833390572991

/-! ## A057551.P6774034441031475661

`Δ[record[A057501(n+1)]]`
-/

namespace A057551.P6774034441031475661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P6774034441031475661

/-! ## A057551.P9108255781994194872

`Δ[record[A069767(n+1)]]`
-/

namespace A057551.P9108255781994194872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P9108255781994194872

/-! ## A057551.P18186704438268586182

`Δ[record[A069770(n+1)]]`
-/

namespace A057551.P18186704438268586182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P18186704438268586182

/-! ## A057551.P1719711941317252976

`Δ[record[A069774(n+1)]]`
-/

namespace A057551.P1719711941317252976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069774 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P1719711941317252976

/-! ## A057551.P7975348851230378666

`Δ[record[A071655(n+1)]]`
-/

namespace A057551.P7975348851230378666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071655 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P7975348851230378666

/-! ## A057551.P16627804663360804102

`Δ[record[A071657(n+1)]]`
-/

namespace A057551.P16627804663360804102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071657 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P16627804663360804102

/-! ## A057551.P5515757366490865189

`Δ[record[A071659(n+1)]]`
-/

namespace A057551.P5515757366490865189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071659 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P5515757366490865189

/-! ## A057551.P15395391786423822199

`Δ[record[A072090(n+1)]]`
-/

namespace A057551.P15395391786423822199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072090 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P15395391786423822199

/-! ## A057551.P8265520835999309741

`Δ[record[A072092(n+1)]]`
-/

namespace A057551.P8265520835999309741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072092 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P8265520835999309741

/-! ## A057551.P9748468333411684983

`Δ[record[A072094(n+1)]]`
-/

namespace A057551.P9748468333411684983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072094 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P9748468333411684983

/-! ## A057551.P18187989221856378613

`Δ[record[A073270(n+1)]]`
-/

namespace A057551.P18187989221856378613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P18187989221856378613

/-! ## A057551.P15795681076643983100

`Δ[record[A074680(n+1)]]`
-/

namespace A057551.P15795681076643983100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057551.P15795681076643983100

/-!
# A057552: a(n) = Sum_{k=0..n} C(2k+2,k).

The programs for A057552, the canonical program `A057552.P15801216228860048418` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057552 has offset 0).

The definition of A057552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057552.P15801216228860048418

`∑[A001791(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057552

/-- `∑[A001791(n+1)]` -/
def P15801216228860048418.Spec : Prop :=
  ∀ n, P15801216228860048418.a n = A057552 n

theorem P15801216228860048418.correct : P15801216228860048418.Spec := by
  intro n
  simp only [A057552]

end A057552

/-! ## A057552.P13869257328545831721

`∑[A322938(n)+1]`
-/

namespace A057552.P13869257328545831721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322938 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P13869257328545831721

namespace A057552

/-- `∑[A322938(n)+1]` -/
def P13869257328545831721.Spec : Prop :=
  ∀ n, P13869257328545831721.a n = A057552 n

end A057552

/-! ## A057552.P13059250425591005519

`∑[A026023(2*n)]`
-/

namespace A057552.P13059250425591005519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P13059250425591005519

namespace A057552

/-- `∑[A026023(2*n)]` -/
def P13059250425591005519.Spec : Prop :=
  ∀ n, P13059250425591005519.a n = A057552 n

end A057552

/-! ## A057552.P13896636059788432919

`∑[A117187(2*n)]`
-/

namespace A057552.P13896636059788432919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117187 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P13896636059788432919

namespace A057552

/-- `∑[A117187(2*n)]` -/
def P13896636059788432919.Spec : Prop :=
  ∀ n, P13896636059788432919.a n = A057552 n

end A057552

/-! ## A057552.P14702815489211223849

`∑[∑[∑[A073663(n)]]]`
-/

namespace A057552.P14702815489211223849
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P14702815489211223849

namespace A057552

/-- `∑[∑[∑[A073663(n)]]]` -/
def P14702815489211223849.Spec : Prop :=
  ∀ n, P14702815489211223849.a n = A057552 n

end A057552

/-! ## A057552.P6276384656992631193

`A279561(n+2)-1`
-/

namespace A057552.P6276384656992631193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 (n + 2) - 1

end

end A057552.P6276384656992631193

namespace A057552

/-- `A279561(n+2)-1` -/
def P6276384656992631193.Spec : Prop :=
  ∀ n, P6276384656992631193.a n = A057552 n

end A057552

/-! ## A057552.P8673682422370005009

`A086905(2*n+3)`
-/

namespace A057552.P8673682422370005009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086905 (2 * n + 3)

end

end A057552.P8673682422370005009

namespace A057552

/-- `A086905(2*n+3)` -/
def P8673682422370005009.Spec : Prop :=
  ∀ n, P8673682422370005009.a n = A057552 n

end A057552

/-! ## A057552.P13790640588574194294

`A191790(2*n+3)`
-/

namespace A057552.P13790640588574194294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (2 * n + 3)

end

end A057552.P13790640588574194294

namespace A057552

/-- `A191790(2*n+3)` -/
def P13790640588574194294.Spec : Prop :=
  ∀ n, P13790640588574194294.a n = A057552 n

end A057552

/-! ## A057552.P928903331127391230

`∑[abs(A158500(n+2))]`
-/

namespace A057552.P928903331127391230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158500 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P928903331127391230

namespace A057552

/-- `∑[abs(A158500(n+2))]` -/
def P928903331127391230.Spec : Prop :=
  ∀ n, P928903331127391230.a n = A057552 n

end A057552

/-! ## A057552.P13189504769122534460

`∑[∑[A076540(n+1)]]`
-/

namespace A057552.P13189504769122534460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P13189504769122534460

namespace A057552

/-- `∑[∑[A076540(n+1)]]` -/
def P13189504769122534460.Spec : Prop :=
  ∀ n, P13189504769122534460.a n = A057552 n

end A057552

/-! ## A057552.P15686217208845214557

`∑[A323229(n+1)-1]`
-/

namespace A057552.P15686217208845214557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323229 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P15686217208845214557

namespace A057552

/-- `∑[A323229(n+1)-1]` -/
def P15686217208845214557.Spec : Prop :=
  ∀ n, P15686217208845214557.a n = A057552 n

end A057552

/-! ## A057552.P3127213170381335182

`∑[A007007(2*(n+1))]`
-/

namespace A057552.P3127213170381335182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007007 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P3127213170381335182

namespace A057552

/-- `∑[A007007(2*(n+1))]` -/
def P3127213170381335182.Spec : Prop :=
  ∀ n, P3127213170381335182.a n = A057552 n

end A057552

/-! ## A057552.P14164374336519538247

`∑[A037952(2*(n+1))]`
-/

namespace A057552.P14164374336519538247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P14164374336519538247

namespace A057552

/-- `∑[A037952(2*(n+1))]` -/
def P14164374336519538247.Spec : Prop :=
  ∀ n, P14164374336519538247.a n = A057552 n

end A057552

/-! ## A057552.P5757194175442936344

`∑[A037955(2*(n+1))]`
-/

namespace A057552.P5757194175442936344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P5757194175442936344

namespace A057552

/-- `∑[A037955(2*(n+1))]` -/
def P5757194175442936344.Spec : Prop :=
  ∀ n, P5757194175442936344.a n = A057552 n

end A057552

/-! ## A057552.P4541222068346877362

`A332754(2*(n+2))-1`
-/

namespace A057552.P4541222068346877362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (2 * (n + 2)) - 1

end

end A057552.P4541222068346877362

namespace A057552

/-- `A332754(2*(n+2))-1` -/
def P4541222068346877362.Spec : Prop :=
  ∀ n, P4541222068346877362.a n = A057552 n

end A057552

/-! ## A057552.P2329153590908815581

`∑[(n+1)*A000108(n+1)]`
-/

namespace A057552.P2329153590908815581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P2329153590908815581

namespace A057552

/-- `∑[(n+1)*A000108(n+1)]` -/
def P2329153590908815581.Spec : Prop :=
  ∀ n, P2329153590908815581.a n = A057552 n

end A057552

/-! ## A057552.P5401727843743724420

`∑[(n+1)*A120588(n+2)]`
-/

namespace A057552.P5401727843743724420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A120588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P5401727843743724420

namespace A057552

/-- `∑[(n+1)*A120588(n+2)]` -/
def P5401727843743724420.Spec : Prop :=
  ∀ n, P5401727843743724420.a n = A057552 n

end A057552

/-! ## A057552.P17150831013069086812

`∑[(n+1)*A026008(2*n)]`
-/

namespace A057552.P17150831013069086812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026008 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P17150831013069086812

namespace A057552

/-- `∑[(n+1)*A026008(2*n)]` -/
def P17150831013069086812.Spec : Prop :=
  ∀ n, P17150831013069086812.a n = A057552 n

end A057552

/-! ## A057552.P16486866147435574212

`∑[(n+1)*A099364(2*n)]`
-/

namespace A057552.P16486866147435574212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099364 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P16486866147435574212

namespace A057552

/-- `∑[(n+1)*A099364(2*n)]` -/
def P16486866147435574212.Spec : Prop :=
  ∀ n, P16486866147435574212.a n = A057552 n

end A057552

/-! ## A057552.P5479206751713256342

`record[A086905(A004273(n))]`
-/

namespace A057552.P5479206751713256342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086905 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057552.P5479206751713256342

namespace A057552

/-- `record[A086905(A004273(n))]` -/
def P5479206751713256342.Spec : Prop :=
  ∀ n, P5479206751713256342.a n = A057552 n

end A057552

/-!
# A057553: Rank of (1,1,...,1) (n 1's) when {0,1,2,...}^n is lexicographically ordered.

The programs for A057553, the canonical program `A057553.P1941252198653360221` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057553 has offset 1).

The definition of A057553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057553.P1941252198653360221

`A112849(n+1)+∑[A001791(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057553

/-- `A112849(n+1)+∑[A001791(n)]` -/
def P1941252198653360221.Spec : Prop :=
  ∀ n, P1941252198653360221.a n = A057553 (n + 1)

theorem P1941252198653360221.correct : P1941252198653360221.Spec := by
  intro n
  simp only [A057553, Nat.add_sub_cancel]

end A057553

/-! ## A057553.P2731341490976030604

`A112849(n+1)+∑[A323229(n)-1]`
-/

namespace A057553.P2731341490976030604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323229 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112849 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057553.P2731341490976030604

namespace A057553

/-- `A112849(n+1)+∑[A323229(n)-1]` -/
def P2731341490976030604.Spec : Prop :=
  ∀ n, P2731341490976030604.a n = A057553 (n + 1)

end A057553

/-! ## A057553.P8439316018071206319

`A112849(n+1)+∑[A037952(2*n)]`
-/

namespace A057553.P8439316018071206319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112849 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057553.P8439316018071206319

namespace A057553

/-- `A112849(n+1)+∑[A037952(2*n)]` -/
def P8439316018071206319.Spec : Prop :=
  ∀ n, P8439316018071206319.a n = A057553 (n + 1)

end A057553

/-! ## A057553.P6911226081257900

`A112849(n+1)+∑[A037955(2*n)]`
-/

namespace A057553.P6911226081257900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112849 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057553.P6911226081257900

namespace A057553

/-- `A112849(n+1)+∑[A037955(2*n)]` -/
def P6911226081257900.Spec : Prop :=
  ∀ n, P6911226081257900.a n = A057553 (n + 1)

end A057553

/-! ## A057553.P10097327817312719523

`A112849(n+1)+∑[n*A000108(n)]`
-/

namespace A057553.P10097327817312719523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112849 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057553.P10097327817312719523

namespace A057553

/-- `A112849(n+1)+∑[n*A000108(n)]` -/
def P10097327817312719523.Spec : Prop :=
  ∀ n, P10097327817312719523.a n = A057553 (n + 1)

end A057553

/-!
# A057554: Lexicographic ordering of MxM, where M={0,1,2,...}.

The programs for A057554, the canonical program `A057554.P2016188426634242539` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057554 has offset 1).

The definition of A057554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057554.P16624205290696184200

`A057555(n+1)-1`
-/

namespace A057554.P16624205290696184200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (n + 1) - 1

end

end A057554.P16624205290696184200

namespace A057554

/-- `A057555(n+1)-1` -/
def P16624205290696184200.Spec : Prop :=
  ∀ n, P16624205290696184200.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P2016188426634242539

`val(A036561(floor(n/2)), gcd(2, n)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057554

/-- `val(A036561(floor(n/2)), gcd(2, n)+1)` -/
def P2016188426634242539.Spec : Prop :=
  ∀ n, (P2016188426634242539.a n : ℤ) = A057554 (n + 1)

theorem P2016188426634242539.correct : P2016188426634242539.Spec := by
  intro n
  simp only [A057554, Nat.add_sub_cancel]

end A057554

/-! ## A057554.P13161603444625643873

`(A057555(char[1]+1+n)+n)%(n+1)`
-/

namespace A057554.P13161603444625643873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057555 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + (n : ℤ)) (n + 1 : ℤ)

end

end A057554.P13161603444625643873

namespace A057554

/-- `(A057555(char[1]+1+n)+n)%(n+1)` -/
def P13161603444625643873.Spec : Prop :=
  ∀ n, P13161603444625643873.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P10715838225628327230

`A057918(A057555(n+1)²)`
-/

namespace A057554.P10715838225628327230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A057555 (n + 1) ^ 2).toNat

end

end A057554.P10715838225628327230

namespace A057554

/-- `A057918(A057555(n+1)²)` -/
def P10715838225628327230.Spec : Prop :=
  ∀ n, P10715838225628327230.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P12753084921152085598

`A259361(A057555(n+1)²)`
-/

namespace A057554.P12753084921152085598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A057555 (n + 1) ^ 2).toNat

end

end A057554.P12753084921152085598

namespace A057554

/-- `A259361(A057555(n+1)²)` -/
def P12753084921152085598.Spec : Prop :=
  ∀ n, P12753084921152085598.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P16726497567259565175

`A023444(A057555(n+1)+1)`
-/

namespace A057554.P16726497567259565175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A057555 (n + 1) + 1).toNat

end

end A057554.P16726497567259565175

namespace A057554

/-- `A023444(A057555(n+1)+1)` -/
def P16726497567259565175.Spec : Prop :=
  ∀ n, P16726497567259565175.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P812369746500772406

`A023447(A057555(n+1)+4)`
-/

namespace A057554.P812369746500772406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A057555 (n + 1) + 4).toNat

end

end A057554.P812369746500772406

namespace A057554

/-- `A023447(A057555(n+1)+4)` -/
def P812369746500772406.Spec : Prop :=
  ∀ n, P812369746500772406.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P15662347396558927646

`A003056(C(A057555(n+1), 2))`
-/

namespace A057554.P15662347396558927646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A057555 (n + 1)).toNat 2)

end

end A057554.P15662347396558927646

namespace A057554

/-- `A003056(C(A057555(n+1), 2))` -/
def P15662347396558927646.Spec : Prop :=
  ∀ n, P15662347396558927646.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P12433258838495627625

`A025581(C(A057555(n+1), 2))`
-/

namespace A057554.P12433258838495627625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A057555 (n + 1)).toNat 2)

end

end A057554.P12433258838495627625

namespace A057554

/-- `A025581(C(A057555(n+1), 2))` -/
def P12433258838495627625.Spec : Prop :=
  ∀ n, P12433258838495627625.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P12631184501211594611

`A103823(C(A057555(n+1), 2))`
-/

namespace A057554.P12631184501211594611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103823 (Nat.choose (A057555 (n + 1)).toNat 2)

end

end A057554.P12631184501211594611

namespace A057554

/-- `A103823(C(A057555(n+1), 2))` -/
def P12631184501211594611.Spec : Prop :=
  ∀ n, P12631184501211594611.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P5099344901461527402

`A343836(C(A057555(n+1), 2))`
-/

namespace A057554.P5099344901461527402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343836 (Nat.choose (A057555 (n + 1)).toNat 2)

end

end A057554.P5099344901461527402

namespace A057554

/-- `A343836(C(A057555(n+1), 2))` -/
def P5099344901461527402.Spec : Prop :=
  ∀ n, P5099344901461527402.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P7151294263986476053

`val(A036561(A004526(n)), and(1, n+1)+2)`
-/

namespace A057554.P7151294263986476053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 (A004526 n).toNat).toNat (Nat.land 1 (n + 1) + 2)

end

end A057554.P7151294263986476053

namespace A057554

/-- `val(A036561(A004526(n)), and(1, n+1)+2)` -/
def P7151294263986476053.Spec : Prop :=
  ∀ n, (P7151294263986476053.a n : ℤ) = A057554 (n + 1)

end A057554

/-! ## A057554.P8474178309850730757

`floor(A057555(n+1)/ratio[A018252(n+1)])`
-/

namespace A057554.P8474178309850730757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057555 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A057554.P8474178309850730757

namespace A057554

/-- `floor(A057555(n+1)/ratio[A018252(n+1)])` -/
def P8474178309850730757.Spec : Prop :=
  ∀ n, P8474178309850730757.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P6338089070237376449

`A349520(n+1)-A349520(A093178(n))`
-/

namespace A057554.P6338089070237376449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1) - A349520 (A093178 n).toNat

end

end A057554.P6338089070237376449

namespace A057554

/-- `A349520(n+1)-A349520(A093178(n))` -/
def P6338089070237376449.Spec : Prop :=
  ∀ n, P6338089070237376449.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P6836550531429187410

`A088226(comp[n²])-n%2`
-/

namespace A057554.P6836550531429187410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - ((n % 2 : ℕ) : ℤ)

end

end A057554.P6836550531429187410

namespace A057554

/-- `A088226(comp[n²])-n%2` -/
def P6836550531429187410.Spec : Prop :=
  ∀ n, P6836550531429187410.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P11570602890759130446

`A280193(2*n+1)+A057555(n+1)`
-/

namespace A057554.P11570602890759130446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A057555 (n + 1)

end

end A057554.P11570602890759130446

namespace A057554

/-- `A280193(2*n+1)+A057555(n+1)` -/
def P11570602890759130446.Spec : Prop :=
  ∀ n, P11570602890759130446.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P11922116815598783622

`A004197(2*A057555(n+1)²)`
-/

namespace A057554.P11922116815598783622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (2 * A057555 (n + 1) ^ 2).toNat

end

end A057554.P11922116815598783622

namespace A057554

/-- `A004197(2*A057555(n+1)²)` -/
def P11922116815598783622.Spec : Prop :=
  ∀ n, P11922116815598783622.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P15053846781778870927

`A025581(2*A057555(n+1)²)`
-/

namespace A057554.P15053846781778870927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A057555 (n + 1) ^ 2).toNat

end

end A057554.P15053846781778870927

namespace A057554

/-- `A025581(2*A057555(n+1)²)` -/
def P15053846781778870927.Spec : Prop :=
  ∀ n, P15053846781778870927.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P18284096904552868918

`A200748(n)%A057555(n+1)`
-/

namespace A057554.P18284096904552868918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A057555 (n + 1))

end

end A057554.P18284096904552868918

namespace A057554

/-- `A200748(n)%A057555(n+1)` -/
def P18284096904552868918.Spec : Prop :=
  ∀ n, P18284096904552868918.a n = A057554 (n + 1)

end A057554

/-! ## A057554.P7605866371471852965

`A117010(n+1)%A057555(n+1)`
-/

namespace A057554.P7605866371471852965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A057555 (n + 1))

end

end A057554.P7605866371471852965

namespace A057554

/-- `A117010(n+1)%A057555(n+1)` -/
def P7605866371471852965.Spec : Prop :=
  ∀ n, P7605866371471852965.a n = A057554 (n + 1)

end A057554

/-!
# A057555: Lexicographic ordering of N x N, where N = {1,2,3...}.

The programs for A057555, the canonical program `A057555.P13935349940139878963` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057555 has offset 1).

The definition of A057555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057555.P13935349940139878963

`A057554(n+1)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A057555

/-- `A057554(n+1)+1` -/
def P13935349940139878963.Spec : Prop :=
  ∀ n, P13935349940139878963.a n = A057555 (n + 1)

theorem P13935349940139878963.correct : P13935349940139878963.Spec := by
  intro n
  simp only [A057555, Nat.add_sub_cancel]

end A057555

/-! ## A057555.P59885756528462688

`val(A036561(floor(n/2)), gcd(2, n)+1)+1`
-/

namespace A057555.P59885756528462688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 ⌊(n : ℚ) / 2⌋.toNat).toNat (Nat.gcd 2 n + 1) + 1

end

end A057555.P59885756528462688

namespace A057555

/-- `val(A036561(floor(n/2)), gcd(2, n)+1)+1` -/
def P59885756528462688.Spec : Prop :=
  ∀ n, (P59885756528462688.a n : ℤ) = A057555 (n + 1)

end A057555

/-! ## A057555.P14587272230805257262

`A349520(n+1)-A002262(A057979(n))`
-/

namespace A057555.P14587272230805257262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1) - A002262 (A057979 n).toNat

end

end A057555.P14587272230805257262

namespace A057555

/-- `A349520(n+1)-A002262(A057979(n))` -/
def P14587272230805257262.Spec : Prop :=
  ∀ n, P14587272230805257262.a n = A057555 (n + 1)

end A057555

/-! ## A057555.P16611097497782973653

`A088226(comp[n²])+char[2*n]`
-/

namespace A057555.P16611097497782973653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A057555.P16611097497782973653

namespace A057555

/-- `A088226(comp[n²])+char[2*n]` -/
def P16611097497782973653.Spec : Prop :=
  ∀ n, P16611097497782973653.a n = A057555 (n + 1)

end A057555

/-! ## A057555.P6994883405492936603

`A088226(lt[2, n-floor(sqrt(n))²])`
-/

namespace A057555.P6994883405492936603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A057555.P6994883405492936603

namespace A057555

/-- `A088226(lt[2, n-floor(sqrt(n))²])` -/
def P6994883405492936603.Spec : Prop :=
  ∀ n, P6994883405492936603.a n = A057555 (n + 1)

end A057555

/-! ## A057555.P5927993577545222962

`A088226(eq[0, C(2, A053186(n))])`
-/

namespace A057555.P5927993577545222962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A053186 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A057555.P5927993577545222962

namespace A057555

/-- `A088226(eq[0, C(2, A053186(n))])` -/
def P5927993577545222962.Spec : Prop :=
  ∀ n, P5927993577545222962.a n = A057555 (n + 1)

end A057555

/-! ## A057555.P4471490329961903141

`A349520(n+1)-A330709(A093178(n))`
-/

namespace A057555.P4471490329961903141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1) - A330709 (A093178 n).toNat

end

end A057555.P4471490329961903141

namespace A057555

/-- `A349520(n+1)-A330709(A093178(n))` -/
def P4471490329961903141.Spec : Prop :=
  ∀ n, P4471490329961903141.a n = A057555 (n + 1)

end A057555

/-! ## A057555.P1577471362345058000

`A181118(xor(1, n)+1)`
-/

namespace A057555.P1577471362345058000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (Nat.xor 1 n + 1)

end

end A057555.P1577471362345058000

namespace A057555

/-- `A181118(xor(1, n)+1)` -/
def P1577471362345058000.Spec : Prop :=
  ∀ n, P1577471362345058000.a n = A057555 (n + 1)

end A057555

/-! ## A057555.P1320838009703380381

`A181118(A014681(n+1))`
-/

namespace A057555.P1320838009703380381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (A014681 (n + 1)).toNat

end

end A057555.P1320838009703380381

namespace A057555

/-- `A181118(A014681(n+1))` -/
def P1320838009703380381.Spec : Prop :=
  ∀ n, P1320838009703380381.a n = A057555 (n + 1)

end A057555

/-! ## A057555.P376007466017331539

`A181118(A103889(n+1))`
-/

namespace A057555.P376007466017331539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (A103889 (n + 1)).toNat

end

end A057555.P376007466017331539

namespace A057555

/-- `A181118(A103889(n+1))` -/
def P376007466017331539.Spec : Prop :=
  ∀ n, P376007466017331539.a n = A057555 (n + 1)

end A057555

/-! ## A057555.P7317038001472560269

`A181118(A114112(n+1))`
-/

namespace A057555.P7317038001472560269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (A114112 (n + 1)).toNat

end

end A057555.P7317038001472560269

namespace A057555

/-- `A181118(A114112(n+1))` -/
def P7317038001472560269.Spec : Prop :=
  ∀ n, P7317038001472560269.a n = A057555 (n + 1)

end A057555

/-! ## A057555.P3105388723234174106

`A181118(A057077(2*n)+n+1)`
-/

namespace A057555.P3105388723234174106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (A057077 (2 * n) + (n : ℤ) + 1).toNat

end

end A057555.P3105388723234174106

namespace A057555

/-- `A181118(A057077(2*n)+n+1)` -/
def P3105388723234174106.Spec : Prop :=
  ∀ n, P3105388723234174106.a n = A057555 (n + 1)

end A057555

/-!
# A057556: Lexicographic ordering of M x M x M, where M={0,1,2,...}.

The programs for A057556, there is no canonical definition to state claims against.
-/

/-! ## A057556.P728333730117349189

`A057557(n+1)-1`
-/

namespace A057556.P728333730117349189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057557 (n + 1) - 1

end

end A057556.P728333730117349189

/-! ## A057556.P12906613509286953123

`abs(A057557(n+1)+or(-1, A002251(n)))`
-/

namespace A057556.P12906613509286953123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057557 (n + 1) + Int.lor (-1) (A002251 n)|

end

end A057556.P12906613509286953123

/-! ## A057556.P17997815744409299414

`(A057557(n+1)+2*n+1)%A019554(n+1)`
-/

namespace A057556.P17997815744409299414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057557 (n + 1) + (2 * n + 1 : ℤ)) (A019554 (n + 1))

end

end A057556.P17997815744409299414

/-! ## A057556.P7575448132937910710

`A062157(2*A057557(n+1))+A057557(n+1)`
-/

namespace A057556.P7575448132937910710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * A057557 (n + 1)).toNat + A057557 (n + 1)

end

end A057556.P7575448132937910710

/-! ## A057556.P4193703356243697616

`A102587(A240226(2*n+1))+A057557(n+1)`
-/

namespace A057556.P4193703356243697616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102587 (A240226 (2 * n + 1)).toNat + A057557 (n + 1)

end

end A057556.P4193703356243697616

/-! ## A057556.P7916426295183328493

`A062157(2*(n+1))+A057557(n+1)`
-/

namespace A057556.P7916426295183328493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * (n + 1)) + A057557 (n + 1)

end

end A057556.P7916426295183328493

/-! ## A057556.P2738256456776514940

`A280193(A016969(n))+A057557(n+1)`
-/

namespace A057556.P2738256456776514940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A016969 n).toNat + A057557 (n + 1)

end

end A057556.P2738256456776514940

/-! ## A057556.P13859546847177271283

`A280193(A057538(n+1))+A057557(n+1)`
-/

namespace A057556.P13859546847177271283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A057538 (n + 1)).toNat + A057557 (n + 1)

end

end A057556.P13859546847177271283

/-! ## A057556.P7485357142722709330

`A280193(A057539(n+1))+A057557(n+1)`
-/

namespace A057556.P7485357142722709330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A057539 (n + 1)).toNat + A057557 (n + 1)

end

end A057556.P7485357142722709330

/-! ## A057556.P1244723088520994518

`A083800(n+1)%A057557(n+1)`
-/

namespace A057556.P1244723088520994518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A057557 (n + 1))

end

end A057556.P1244723088520994518

/-! ## A057556.P15667107150523565154

`A070198(n)%A057557(n+1)`
-/

namespace A057556.P15667107150523565154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A057557 (n + 1))

end

end A057556.P15667107150523565154

/-! ## A057556.P12367456174123776723

`A079782(n+1)%A057557(n+1)`
-/

namespace A057556.P12367456174123776723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A057557 (n + 1))

end

end A057556.P12367456174123776723

/-! ## A057556.P8872644076657742102

`A083685(n+1)%A057557(n+1)`
-/

namespace A057556.P8872644076657742102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A057557 (n + 1))

end

end A057556.P8872644076657742102

/-! ## A057556.P4783217964833230323

`A121934(n+1)%A057557(n+1)`
-/

namespace A057556.P4783217964833230323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A057557 (n + 1))

end

end A057556.P4783217964833230323

/-! ## A057556.P8530044802278898396

`A030494(n+1)%A057557(n+1)`
-/

namespace A057556.P8530044802278898396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A057557 (n + 1))

end

end A057556.P8530044802278898396

/-! ## A057556.P4243418377089031031

`A072828(n+1)%A057557(n+1)`
-/

namespace A057556.P4243418377089031031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A057557 (n + 1))

end

end A057556.P4243418377089031031

/-!
# A057557: Lexicographic ordering of NxNxN, where N={1,2,3,...}.

The programs for A057557, there is no canonical definition to state claims against.
-/

/-! ## A057557.P4398734107181820108

`A057556(n+1)+1`
-/

namespace A057557.P4398734107181820108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057556 (n + 1) + 1

end

end A057557.P4398734107181820108

/-! ## A057557.P4800321893516487549

`A144625(A330396(n))+1`
-/

namespace A057557.P4800321893516487549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144625 (A330396 n).toNat + 1

end

end A057557.P4800321893516487549

/-! ## A057557.P6701569122129995578

`gcd(A008612(A089408(n)), A272947(n+1))`
-/

namespace A057557.P6701569122129995578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008612 (A089408 n).toNat) (A272947 (n + 1))

end

end A057557.P6701569122129995578

/-! ## A057557.P6421867241404660272

`A303825(A003107(3*n+2)-A067535(n+1))`
-/

namespace A057557.P6421867241404660272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (A003107 (3 * n + 2) - A067535 (n + 1)).toNat

end

end A057557.P6421867241404660272

/-! ## A057557.P5414421857874544679

`A235757(A313593(n+1))`
-/

namespace A057557.P5414421857874544679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235757 (A313593 (n + 1)).toNat

end

end A057557.P5414421857874544679

/-!
# A057558: Lexicographic ordering of MxMxMxM, where M={0,1,2,...}.

The programs for A057558, there is no canonical definition to state claims against.
-/

/-! ## A057558.P2479732740186494638

`A057559(n+1)-1`
-/

namespace A057558.P2479732740186494638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057559 (n + 1) - 1

end

end A057558.P2479732740186494638

/-! ## A057558.P13764076465217391858

`A023443(A057559(n+1))`
-/

namespace A057558.P13764076465217391858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A057559 (n + 1)).toNat

end

end A057558.P13764076465217391858

/-! ## A057558.P13656820923644404967

`A057918(A057559(n+1)²)`
-/

namespace A057558.P13656820923644404967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A057559 (n + 1) ^ 2).toNat

end

end A057558.P13656820923644404967

/-! ## A057558.P5656547663021728902

`A023444(A057559(n+1)+1)`
-/

namespace A057558.P5656547663021728902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A057559 (n + 1) + 1).toNat

end

end A057558.P5656547663021728902

/-! ## A057558.P17670264122703275733

`A046079(2^A057559(n+1))`
-/

namespace A057558.P17670264122703275733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A057559 (n + 1) : ℤ))).toNat

end

end A057558.P17670264122703275733

/-! ## A057558.P5798357313614747248

`A057918(2*A057559(n+1)*A057559(n+1))`
-/

namespace A057558.P5798357313614747248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (2 * A057559 (n + 1) * A057559 (n + 1)).toNat

end

end A057558.P5798357313614747248

/-! ## A057558.P16690429040498429574

`xor(-A057559(n+1), -A000040(n+2)%2)`
-/

namespace A057558.P16690429040498429574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A057559 (n + 1)) (Int.tmod (-A000040 (n + 2)) 2)

end

end A057558.P16690429040498429574

/-! ## A057558.P642118881562814874

`A057722(A030430(n+1))%A057559(n+1)`
-/

namespace A057558.P642118881562814874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057722 (A030430 (n + 1)).toNat) (A057559 (n + 1))

end

end A057558.P642118881562814874

/-! ## A057558.P3591603716391411449

`A083800(n+1)%A057559(n+1)`
-/

namespace A057558.P3591603716391411449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A057559 (n + 1))

end

end A057558.P3591603716391411449

/-! ## A057558.P6758308038941818085

`A070198(n)%A057559(n+1)`
-/

namespace A057558.P6758308038941818085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A057559 (n + 1))

end

end A057558.P6758308038941818085

/-! ## A057558.P13701807363894980678

`A079782(n+1)%A057559(n+1)`
-/

namespace A057558.P13701807363894980678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A057559 (n + 1))

end

end A057558.P13701807363894980678

/-! ## A057558.P11209520379894048320

`A083685(n+1)%A057559(n+1)`
-/

namespace A057558.P11209520379894048320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A057559 (n + 1))

end

end A057558.P11209520379894048320

/-! ## A057558.P13404317645047901735

`A121934(n+1)%A057559(n+1)`
-/

namespace A057558.P13404317645047901735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A057559 (n + 1))

end

end A057558.P13404317645047901735

/-! ## A057558.P12817561309881922275

`A030494(n+1)%A057559(n+1)`
-/

namespace A057558.P12817561309881922275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A057559 (n + 1))

end

end A057558.P12817561309881922275

/-! ## A057558.P16746235562766673343

`A072828(n+1)%A057559(n+1)`
-/

namespace A057558.P16746235562766673343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A057559 (n + 1))

end

end A057558.P16746235562766673343

/-!
# A057559: Lexicographic ordering of NxNxNxN, where N={1,2,3,...}.

The programs for A057559, there is no canonical definition to state claims against.
-/

/-! ## A057559.P1417732408564841316

`A057558(n+1)+1`
-/

namespace A057559.P1417732408564841316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057558 (n + 1) + 1

end

end A057559.P1417732408564841316

/-! ## A057559.P658449612146616537

`A348553(A057558(n+1))`
-/

namespace A057559.P658449612146616537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A057558 (n + 1)).toNat

end

end A057559.P658449612146616537

/-! ## A057559.P329746355351012465

`gcd(A115583(n+5), A294648(A121426(n)))`
-/

namespace A057559.P329746355351012465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115583 (n + 5)) (A294648 (A121426 n).toNat)

end

end A057559.P329746355351012465

/-! ## A057559.P16332241334390295027

`A156755(A094782(n+1)^A091840(n+1))`
-/

namespace A057559.P16332241334390295027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156755 (SequenceMachineLib.roundAway ((A094782 (n + 1) : ℚ) ^ (A091840 (n + 1) : ℤ))).toNat

end

end A057559.P16332241334390295027

/-! ## A057559.P10950074509378365132

`gcd(A001918(3*n+2), A115579(A217689(n+1)))`
-/

namespace A057559.P10950074509378365132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001918 (3 * n + 2)) (A115579 (A217689 (n + 1)).toNat)

end

end A057559.P10950074509378365132

/-!
# A057561: Size of the largest set encompassing no {x, 2x, 3x} contained in D(n) = the first n 3-smooth numbers {1, 2, 3, 4, 6, 8, 9, 12, 16, 18, 24, 27, ...} (A003586).

The programs for A057561, there is no canonical definition to state claims against.
-/

/-! ## A057561.P12114632117025658275

`1-A094708(n+1)+n`
-/

namespace A057561.P12114632117025658275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A094708 (n + 1) + (n : ℤ)

end

end A057561.P12114632117025658275

/-! ## A057561.P5070037904584069873

`1-(n-2*n)-A094708(1-(n-2*n))`
-/

namespace A057561.P5070037904584069873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ)) - A094708 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A057561.P5070037904584069873

/-! ## A057561.P2874853870377037770

`A024000(A094708(n+1))+n`
-/

namespace A057561.P2874853870377037770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A094708 (n + 1)).toNat + (n : ℤ)

end

end A057561.P2874853870377037770

/-! ## A057561.P18404898133648523649

`abs(A094708(n+1)+A001478(n+1))`
-/

namespace A057561.P18404898133648523649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094708 (n + 1) + A001478 (n + 1)|

end

end A057561.P18404898133648523649

/-! ## A057561.P1807467201588630759

`abs(A094708(n+1)+A001489(n+1))`
-/

namespace A057561.P1807467201588630759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094708 (n + 1) + A001489 (n + 1)|

end

end A057561.P1807467201588630759

/-! ## A057561.P4175104217946710409

`A004736(A094708(n+1)+∑[n+1]+2)`
-/

namespace A057561.P4175104217946710409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A094708 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)).toNat

end

end A057561.P4175104217946710409

/-! ## A057561.P10955974974887615220

`A008683(or(1, A000040(n+1)))*A094708(n+1)+n+1`
-/

namespace A057561.P10955974974887615220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor 1 (A000040 (n + 1))).toNat * A094708 (n + 1) + (n + 1 : ℤ)

end

end A057561.P10955974974887615220

/-!
# A057562: Number of partitions of n into parts all relatively prime to n.

The programs for A057562, there is no canonical definition to state claims against.
-/

/-! ## A057562.P4092394864781444311

`A124094(2*(n+1)²)`
-/

namespace A057562.P4092394864781444311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (2 * (n + 1) ^ 2)

end

end A057562.P4092394864781444311

/-! ## A057562.P5263733855761130212

`or(char[1], A124094(A001105(n+1)))`
-/

namespace A057562.P5263733855761130212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A124094 (A001105 (n + 1)).toNat)

end

end A057562.P5263733855761130212

/-! ## A057562.P16974194163037245426

`or(char[1], A124094(A184636(n+1)))`
-/

namespace A057562.P16974194163037245426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A124094 (A184636 (n + 1)).toNat)

end

end A057562.P16974194163037245426

/-! ## A057562.P920535250494608248

`or(char[1], A124094(A005843((n+1)²)))`
-/

namespace A057562.P920535250494608248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A124094 (A005843 ((n + 1) ^ 2)).toNat)

end

end A057562.P920535250494608248

/-! ## A057562.P14656278878231907335

`A124094(A184636(n+1))%A070876(n)`
-/

namespace A057562.P14656278878231907335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124094 (A184636 (n + 1)).toNat) (A070876 n)

end

end A057562.P14656278878231907335

/-! ## A057562.P823055303958602825

`A124094(A001105(n+1))%∑[A000032(n)]`
-/

namespace A057562.P823055303958602825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124094 (A001105 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057562.P823055303958602825

/-! ## A057562.P15407630959510779179

`A124094(A001105(n+1))^A014963(∑[n+1])`
-/

namespace A057562.P15407630959510779179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124094 (A001105 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A057562.P15407630959510779179

/-! ## A057562.P16992200123456691464

`A014963(42*(n+1))*A124094(A001105(n+1))`
-/

namespace A057562.P16992200123456691464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (42 * (n + 1)) * A124094 (A001105 (n + 1)).toNat

end

end A057562.P16992200123456691464

/-! ## A057562.P4648784539435751417

`A000041(gcd(n, n+1))*A124094(A001105(n+1))`
-/

namespace A057562.P4648784539435751417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A124094 (A001105 (n + 1)).toNat

end

end A057562.P4648784539435751417

/-! ## A057562.P15129924639806211534

`A000045(A020639(2*(n+1)))*A124094(A001105(n+1))`
-/

namespace A057562.P15129924639806211534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A124094 (A001105 (n + 1)).toNat

end

end A057562.P15129924639806211534

/-!
# A057563: Numbers k such that the k initial decimal digits of e - 2 form a prime number.

The programs for A057563, there is no canonical definition to state claims against.
-/

/-! ## A057563.P3923423409764837370

`A360681(A215366(∑[n²]))`
-/

namespace A057563.P3923423409764837370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360681 (A215366 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A057563.P3923423409764837370

/-!
# A057565: Number of regions of linearity for Lusztig's piecewise-linear function in type A_n.

The programs for A057565, there is no canonical definition to state claims against.
-/

/-! ## A057565.P14085889243919987982

`A007843(Δ[∏[A148355(n)]])`
-/

namespace A057565.P14085889243919987982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (f1 (n + 1) - f1 n).toNat

end

end A057565.P14085889243919987982

/-!
# A057566: Number of collinear triples in a 3 X n rectangular grid.

The programs for A057566, the canonical program `A057566.P16526461134686006734` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057566 has offset 0).

The definition of A057566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057566.P16526461134686006734

`n^3/2-n²+n+(1-(-1)^n)/4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057566

/-- `n^3/2-n²+n+(1-(-1)^n)/4` -/
def P16526461134686006734.Spec : Prop :=
  ∀ n, P16526461134686006734.a n = (A057566 n : ℚ)

end A057566

/-! ## A057566.P7686691434061480756

`∑[∑[a(n-2)+6]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=5`
-/

namespace A057566.P7686691434061480756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 5] fun n f2 =>
  f2 (n - 2) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057566.P7686691434061480756

namespace A057566

/-- `∑[∑[a(n-2)+6]]` -/
def P7686691434061480756.Spec : Prop :=
  ∀ n, (P7686691434061480756.a n : ℤ) = A057566 n

end A057566

/-! ## A057566.P17799093217736750410

`round(n/2+(n-1)*C(n, 2))`
-/

namespace A057566.P17799093217736750410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2 + (((n : ℤ) - 1) * (Nat.choose n 2 : ℤ) : ℚ))

end

end A057566.P17799093217736750410

namespace A057566

/-- `round(n/2+(n-1)*C(n, 2))` -/
def P17799093217736750410.Spec : Prop :=
  ∀ n, P17799093217736750410.a n = A057566 n

end A057566

/-! ## A057566.P5517283285065584862

`round((n*(n-floor(atan(n)))²+n)/2)`
-/

namespace A057566.P5517283285065584862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) * ((n : ℤ) - ⌊Real.arctan (n : ℝ)⌋) ^ 2 + (n : ℤ) : ℚ) / 2)

end

end A057566.P5517283285065584862

namespace A057566

/-- `round((n*(n-floor(atan(n)))²+n)/2)` -/
def P5517283285065584862.Spec : Prop :=
  ∀ n, P5517283285065584862.a n = A057566 n

end A057566

/-! ## A057566.P17625084351802858122

`A004526(n*(1-n)²+1+n)`
-/

namespace A057566.P17625084351802858122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) * (1 - (n : ℤ)) ^ 2 + 1 + (n : ℤ)).toNat

end

end A057566.P17625084351802858122

namespace A057566

/-- `A004526(n*(1-n)²+1+n)` -/
def P17625084351802858122.Spec : Prop :=
  ∀ n, P17625084351802858122.a n = A057566 n

end A057566

/-!
# A057567: Number of partitions of n where the product of parts divides n.

The programs for A057567, there is no canonical definition to state claims against.
-/

/-! ## A057567.P15012561559320062545

`∑{d}[n+1, A001055(#)]`
-/

namespace A057567.P15012561559320062545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d

end

end A057567.P15012561559320062545

/-! ## A057567.P5475937039165816467

`A108464(A101296(n+1))`
-/

namespace A057567.P5475937039165816467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108464 (A101296 (n + 1)).toNat

end

end A057567.P5475937039165816467

/-! ## A057567.P3423013621489837149

`A318284(2*A181819(n+1))`
-/

namespace A057567.P3423013621489837149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (2 * A181819 (n + 1)).toNat

end

end A057567.P3423013621489837149

/-! ## A057567.P13996304834120164373

`A339564(n+1)+Δ[A096276(n)]`
-/

namespace A057567.P13996304834120164373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339564 (n + 1) + (f1 (n + 1) - f1 n)

end

end A057567.P13996304834120164373

/-! ## A057567.P1357936039408241528

`A339564(n+1)+A001055(n+1)`
-/

namespace A057567.P1357936039408241528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339564 (n + 1) + A001055 (n + 1)

end

end A057567.P1357936039408241528

/-! ## A057567.P928153744325856279

`A363756(n+1)+A000005(n+1)`
-/

namespace A057567.P928153744325856279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363756 (n + 1) + A000005 (n + 1)

end

end A057567.P928153744325856279

/-! ## A057567.P3021008718746923476

`A028422(n+1)+A339564(n+1)+1`
-/

namespace A057567.P3021008718746923476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + (A339564 (n + 1) + 1)

end

end A057567.P3021008718746923476

/-! ## A057567.P14826812148828032770

`∑{d}[n+1, A000005(#)*A050370((n+1)/#)]`
-/

namespace A057567.P14826812148828032770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A050370 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057567.P14826812148828032770

/-! ## A057567.P3227112717707075644

`∑{d}[n+1, A001511(#)*A371243((n+1)/#)]`
-/

namespace A057567.P3227112717707075644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A371243 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057567.P3227112717707075644

/-! ## A057567.P4891099215505845957

`∑{d}[n+1, A114591(#)*A301830((n+1)/#)]`
-/

namespace A057567.P4891099215505845957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114591 d * A301830 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057567.P4891099215505845957

/-! ## A057567.P16679943604525784591

`∑{d}[n+1, A072078(#)*A371244((n+1)/#)]`
-/

namespace A057567.P16679943604525784591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072078 d * A371244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057567.P16679943604525784591

/-! ## A057567.P17587102678644597316

`∑{d}[n+1, A188581(#)*A322452((n+1)/#)]`
-/

namespace A057567.P17587102678644597316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A188581 d * A322452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057567.P17587102678644597316

/-! ## A057567.P16668403002679638248

`∑{d}[n+1, A342086(#)*A347438((n+1)/#)]`
-/

namespace A057567.P16668403002679638248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342086 d * A347438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057567.P16668403002679638248

/-! ## A057567.P724681271532541038

`A001055(A087560(n+1))`
-/

namespace A057567.P724681271532541038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A087560 (n + 1)).toNat

end

end A057567.P724681271532541038

/-! ## A057567.P5554889591264572089

`∑{d}[A087560(n+1), A050370(#)]`
-/

namespace A057567.P5554889591264572089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050370 d

end

end A057567.P5554889591264572089

/-! ## A057567.P14717802829102694370

`A057568(n+1)+A339564(n+1)-A380219(n+1)`
-/

namespace A057567.P14717802829102694370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057568 (n + 1) + (A339564 (n + 1) - A380219 (n + 1))

end

end A057567.P14717802829102694370

/-! ## A057567.P5025940789049908669

`A001055(2*A003961(n+1))`
-/

namespace A057567.P5025940789049908669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (2 * A003961 (n + 1)).toNat

end

end A057567.P5025940789049908669

/-! ## A057567.P4271017768592254908

`A001055(2*A064988(n+1))`
-/

namespace A057567.P4271017768592254908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (2 * A064988 (n + 1)).toNat

end

end A057567.P4271017768592254908

/-! ## A057567.P5287688786869870893

`A028422(2*A064988(n+1))+1`
-/

namespace A057567.P5287688786869870893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (2 * A064988 (n + 1)).toNat + 1

end

end A057567.P5287688786869870893

/-! ## A057567.P2357152345120903879

`A001055(A003961(n+1)+A003961(n+1))`
-/

namespace A057567.P2357152345120903879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A003961 (n + 1) + A003961 (n + 1)).toNat

end

end A057567.P2357152345120903879

/-!
# A057568: Number of partitions of n where n divides the product of the parts.

The programs for A057568, there is no canonical definition to state claims against.
-/

/-! ## A057568.P11727028168990109511

`A380219(n+1)+A001055(n+1)`
-/

namespace A057568.P11727028168990109511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380219 (n + 1) + A001055 (n + 1)

end

end A057568.P11727028168990109511

/-! ## A057568.P12162289029243240792

`A028422(n+1)+A380219(n+1)+1`
-/

namespace A057568.P12162289029243240792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + (A380219 (n + 1) + 1)

end

end A057568.P12162289029243240792

/-! ## A057568.P16263166461997708372

`A057567(n+1)+A380219(n+1)-A339564(n+1)`
-/

namespace A057568.P16263166461997708372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) + (A380219 (n + 1) - A339564 (n + 1))

end

end A057568.P16263166461997708372

/-! ## A057568.P6559491516267485279

`A379734(n+1)+A379320(n)`
-/

namespace A057568.P6559491516267485279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379734 (n + 1) + A379320 n

end

end A057568.P6559491516267485279

/-! ## A057568.P5143435037918007518

`A262095(A032742(n+1)^A009766(n))`
-/

namespace A057568.P5143435037918007518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262095 (SequenceMachineLib.roundAway ((A032742 (n + 1) : ℚ) ^ (A009766 n : ℤ))).toNat

end

end A057568.P5143435037918007518

/-!
# A057569: Numbers of the form k*(5*k+1)/2 or k*(5*k-1)/2.

The programs for A057569, the canonical program `A057569.P1025385079202376543` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057569 has offset 1).

The definition of A057569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057569.P1025385079202376543

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=9, a(4)=11`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057569

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1025385079202376543.Spec : Prop :=
  ∀ n, P1025385079202376543.a n = A057569 (n + 1)

theorem P1025385079202376543.correct : P1025385079202376543.Spec := by
  intro n
  simp only [A057569, Nat.add_sub_cancel]

end A057569

/-! ## A057569.P13032605032193639565

`(A090771(n+1)²-1)/40`
-/

namespace A057569.P13032605032193639565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090771 (n + 1) ^ 2 - 1 : ℚ) / 40

end

end A057569.P13032605032193639565

namespace A057569

/-- `(A090771(n+1)²-1)/40` -/
def P13032605032193639565.Spec : Prop :=
  ∀ n, P13032605032193639565.a n = (A057569 (n + 1) : ℚ)

end A057569

/-! ## A057569.P17974599142569962226

`∑[n*ratio[gcd(2, n)]]`
-/

namespace A057569.P17974599142569962226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057569.P17974599142569962226

namespace A057569

/-- `∑[n*ratio[gcd(2, n)]]` -/
def P17974599142569962226.Spec : Prop :=
  ∀ n, P17974599142569962226.a n = (A057569 (n + 1) : ℚ)

end A057569

/-! ## A057569.P2636828551027667367

`∑[n/2^(-1)^n]`
-/

namespace A057569.P2636828551027667367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057569.P2636828551027667367

namespace A057569

/-- `∑[n/2^(-1)^n]` -/
def P2636828551027667367.Spec : Prop :=
  ∀ n, P2636828551027667367.a n = (A057569 (n + 1) : ℚ)

end A057569

/-! ## A057569.P15372221795722778265

`ceil(∑[2*n/gcd(4, n²)])`
-/

namespace A057569.P15372221795722778265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (Nat.gcd 4 (n ^ 2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A057569.P15372221795722778265

namespace A057569

/-- `ceil(∑[2*n/gcd(4, n²)])` -/
def P15372221795722778265.Spec : Prop :=
  ∀ n, P15372221795722778265.a n = A057569 (n + 1)

end A057569

/-! ## A057569.P4234693413366543385

`ceil(∑[n*ratio[2-n%2]])`
-/

namespace A057569.P4234693413366543385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A057569.P4234693413366543385

namespace A057569

/-- `ceil(∑[n*ratio[2-n%2]])` -/
def P4234693413366543385.Spec : Prop :=
  ∀ n, P4234693413366543385.a n = A057569 (n + 1)

end A057569

/-! ## A057569.P6293855418937474781

`ceil(∑[lcm(2, 3*n)/2-n])`
-/

namespace A057569.P6293855418937474781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n) : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A057569.P6293855418937474781

namespace A057569

/-- `ceil(∑[lcm(2, 3*n)/2-n])` -/
def P6293855418937474781.Spec : Prop :=
  ∀ n, P6293855418937474781.a n = A057569 (n + 1)

end A057569

/-! ## A057569.P17354655201559145042

`ceil(∑[n*ratio[2^and(1, n+1)]])`
-/

namespace A057569.P17354655201559145042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A057569.P17354655201559145042

namespace A057569

/-- `ceil(∑[n*ratio[2^and(1, n+1)]])` -/
def P17354655201559145042.Spec : Prop :=
  ∀ n, P17354655201559145042.a n = A057569 (n + 1)

end A057569

/-! ## A057569.P498143732157619406

`floor(∑[(n²-n)/a(n-1)])` with `a(0)=0, a(1)=2`
-/

namespace A057569.P498143732157619406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A057569.P498143732157619406

namespace A057569

/-- `floor(∑[(n²-n)/a(n-1)])` -/
def P498143732157619406.Spec : Prop :=
  ∀ n, P498143732157619406.a n = A057569 (n + 1)

end A057569

/-! ## A057569.P9010754034067283594

`a(n-1)+n/2^(-1)^n` with `a(0)=0`
-/

namespace A057569.P9010754034067283594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℚ) / (2 : ℚ) ^ ((-1) ^ n : ℤ)

end

end A057569.P9010754034067283594

namespace A057569

/-- `a(n-1)+n/2^(-1)^n` -/
def P9010754034067283594.Spec : Prop :=
  ∀ n, P9010754034067283594.a n = (A057569 (n + 1) : ℚ)

end A057569

/-! ## A057569.P6388020491367128999

`∑[a(n-2)+5]-a(n-1)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A057569.P6388020491367128999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A057569.P6388020491367128999

namespace A057569

/-- `∑[a(n-2)+5]-a(n-1)` -/
def P6388020491367128999.Spec : Prop :=
  ∀ n, P6388020491367128999.a n = A057569 (n + 1)

end A057569

/-! ## A057569.P13838737870059576425

`∑[∑[(3-a(n-1))²]]-a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A057569.P13838737870059576425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  (3 - f2 (n - 1)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A057569.P13838737870059576425

namespace A057569

/-- `∑[∑[(3-a(n-1))²]]-a(n-1)` -/
def P13838737870059576425.Spec : Prop :=
  ∀ n, P13838737870059576425.a n = A057569 (n + 1)

end A057569

/-! ## A057569.P10014390856027033843

`A132356(n)/4`
-/

namespace A057569.P10014390856027033843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132356 n : ℚ) / 4

end

end A057569.P10014390856027033843

namespace A057569

/-- `A132356(n)/4` -/
def P10014390856027033843.Spec : Prop :=
  ∀ n, P10014390856027033843.a n = (A057569 (n + 1) : ℚ)

end A057569

/-! ## A057569.P11486474307793912889

`A219190(n+1)/2`
-/

namespace A057569.P11486474307793912889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219190 (n + 1) : ℚ) / 2

end

end A057569.P11486474307793912889

namespace A057569

/-- `A219190(n+1)/2` -/
def P11486474307793912889.Spec : Prop :=
  ∀ n, P11486474307793912889.a n = (A057569 (n + 1) : ℚ)

end A057569

/-! ## A057569.P15085576008094356199

`A117748(n+1)-∑[n]`
-/

namespace A057569.P15085576008094356199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057569.P15085576008094356199

namespace A057569

/-- `A117748(n+1)-∑[n]` -/
def P15085576008094356199.Spec : Prop :=
  ∀ n, P15085576008094356199.a n = A057569 (n + 1)

end A057569

/-! ## A057569.P5356312476914330490

`(A132354(n)-∑[n])/2`
-/

namespace A057569.P5356312476914330490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132354 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A057569.P5356312476914330490

namespace A057569

/-- `(A132354(n)-∑[n])/2` -/
def P5356312476914330490.Spec : Prop :=
  ∀ n, P5356312476914330490.a n = (A057569 (n + 1) : ℚ)

end A057569

/-! ## A057569.P7801207411996933561

`∑[n]+C(A030451(n), 2)`
-/

namespace A057569.P7801207411996933561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (A030451 n).toNat 2

end

end A057569.P7801207411996933561

namespace A057569

/-- `∑[n]+C(A030451(n), 2)` -/
def P7801207411996933561.Spec : Prop :=
  ∀ n, (P7801207411996933561.a n : ℤ) = A057569 (n + 1)

end A057569

/-! ## A057569.P6133979591698671050

`A064680(n)+a(n-1)` with `a(0)=0`
-/

namespace A057569.P6133979591698671050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A064680 n + a (n - 1)

end

end A057569.P6133979591698671050

namespace A057569

/-- `A064680(n)+a(n-1)` -/
def P6133979591698671050.Spec : Prop :=
  ∀ n, P6133979591698671050.a n = A057569 (n + 1)

end A057569

/-! ## A057569.P7393681241053223826

`A085787(n)+A001057(n)`
-/

namespace A057569.P7393681241053223826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n + A001057 n

end

end A057569.P7393681241053223826

namespace A057569

/-- `A085787(n)+A001057(n)` -/
def P7393681241053223826.Spec : Prop :=
  ∀ n, P7393681241053223826.a n = A057569 (n + 1)

end A057569

/-! ## A057569.P3647643016547547025

`A338544(n)+A007494(n)`
-/

namespace A057569.P3647643016547547025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338544 n + A007494 n

end

end A057569.P3647643016547547025

namespace A057569

/-- `A338544(n)+A007494(n)` -/
def P3647643016547547025.Spec : Prop :=
  ∀ n, P3647643016547547025.a n = A057569 (n + 1)

end A057569

/-!
# A057570: Numbers of the form n*(7n+-1)/2.

The programs for A057570, the canonical program `A057570.P2153473334326307260` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057570 has offset 1).

The definition of A057570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057570.P2153473334326307260

`(14*(n+1)*n+5*(2*(n+1)-1)*(-1)^(n+1)+5)/16`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057570

/-- `(14*(n+1)*n+5*(2*(n+1)-1)*(-1)^(n+1)+5)/16` -/
def P2153473334326307260.Spec : Prop :=
  ∀ n, P2153473334326307260.a n = (A057570 (n + 1) : ℚ)

end A057570

/-! ## A057570.P8295220639509349470

`∑[n*(5/gcd(2, n)-2)]`
-/

namespace A057570.P8295220639509349470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (5 / (Nat.gcd 2 n : ℚ) - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057570.P8295220639509349470

namespace A057570

/-- `∑[n*(5/gcd(2, n)-2)]` -/
def P8295220639509349470.Spec : Prop :=
  ∀ n, P8295220639509349470.a n = (A057570 (n + 1) : ℚ)

end A057570

/-! ## A057570.P3180340407013388107

`∑[gcd(lcm(2, n)+n, ∑[3*n])]`
-/

namespace A057570.P3180340407013388107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.lcm 2 n + n) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057570.P3180340407013388107

namespace A057570

/-- `∑[gcd(lcm(2, n)+n, ∑[3*n])]` -/
def P3180340407013388107.Spec : Prop :=
  ∀ n, (P3180340407013388107.a n : ℤ) = A057570 (n + 1)

end A057570

/-! ## A057570.P10878343868022122212

`∑[3/a(n-1)*C(n, 2)]` with `a(0)=0, a(1)=3`
-/

namespace A057570.P10878343868022122212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  3 / f1 (n - 1) * (Nat.choose n 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057570.P10878343868022122212

namespace A057570

/-- `∑[3/a(n-1)*C(n, 2)]` -/
def P10878343868022122212.Spec : Prop :=
  ∀ n, P10878343868022122212.a n = (A057570 (n + 1) : ℚ)

end A057570

/-! ## A057570.P490017908908425248

`∑[a(n-2)+6^(n%2)]` with `a(0)=0, a(1)=3`
-/

namespace A057570.P490017908908425248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + 6 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057570.P490017908908425248

namespace A057570

/-- `∑[a(n-2)+6^(n%2)]` -/
def P490017908908425248.Spec : Prop :=
  ∀ n, (P490017908908425248.a n : ℤ) = A057570 (n + 1)

end A057570

/-! ## A057570.P15994030570873167902

`∑[a(n-2)+7]-a(n-1)` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A057570.P15994030570873167902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A057570.P15994030570873167902

namespace A057570

/-- `∑[a(n-2)+7]-a(n-1)` -/
def P15994030570873167902.Spec : Prop :=
  ∀ n, P15994030570873167902.a n = A057570 (n + 1)

end A057570

/-! ## A057570.P5574717473728989623

`∑[lcm(2, A347365(n))/2]`
-/

namespace A057570.P5574717473728989623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A347365 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057570.P5574717473728989623

namespace A057570

/-- `∑[lcm(2, A347365(n))/2]` -/
def P5574717473728989623.Spec : Prop :=
  ∀ n, P5574717473728989623.a n = (A057570 (n + 1) : ℚ)

end A057570

/-! ## A057570.P3012556237931106609

`A317301(n)+∑[2*n]`
-/

namespace A057570.P3012556237931106609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317301 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057570.P3012556237931106609

namespace A057570

/-- `A317301(n)+∑[2*n]` -/
def P3012556237931106609.Spec : Prop :=
  ∀ n, P3012556237931106609.a n = A057570 (n + 1)

end A057570

/-! ## A057570.P2864194076515861339

`∑[n/2*A010687(n)]`
-/

namespace A057570.P2864194076515861339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A010687 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057570.P2864194076515861339

namespace A057570

/-- `∑[n/2*A010687(n)]` -/
def P2864194076515861339.Spec : Prop :=
  ∀ n, P2864194076515861339.a n = (A057570 (n + 1) : ℚ)

end A057570

/-! ## A057570.P919957489386201807

`∑[A001281(n)+and(1, n)]`
-/

namespace A057570.P919957489386201807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057570.P919957489386201807

namespace A057570

/-- `∑[A001281(n)+and(1, n)]` -/
def P919957489386201807.Spec : Prop :=
  ∀ n, P919957489386201807.a n = A057570 (n + 1)

end A057570

/-! ## A057570.P14430335584327015256

`∑[abs(n*1/2*A010689(n)-n)]`
-/

namespace A057570.P14430335584327015256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) * ((1 : ℚ) / 2 * (A010689 n : ℚ)) - (n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057570.P14430335584327015256

namespace A057570

/-- `∑[abs(n*1/2*A010689(n)-n)]` -/
def P14430335584327015256.Spec : Prop :=
  ∀ n, P14430335584327015256.a n = (A057570 (n + 1) : ℚ)

end A057570

/-! ## A057570.P8499586287506976201

`A046092(n)-A195160(n)`
-/

namespace A057570.P8499586287506976201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n - A195160 n

end

end A057570.P8499586287506976201

namespace A057570

/-- `A046092(n)-A195160(n)` -/
def P8499586287506976201.Spec : Prop :=
  ∀ n, P8499586287506976201.a n = A057570 (n + 1)

end A057570

/-! ## A057570.P5110539807507759364

`A273368(n)-A277082(n)`
-/

namespace A057570.P5110539807507759364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273368 n - A277082 n

end

end A057570.P5110539807507759364

namespace A057570

/-- `A273368(n)-A277082(n)` -/
def P5110539807507759364.Spec : Prop :=
  ∀ n, P5110539807507759364.a n = A057570 (n + 1)

end A057570

/-! ## A057570.P5139060035362293513

`∪[A022264(n), A022265(n)]`
-/

namespace A057570.P5139060035362293513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057570.P5139060035362293513

namespace A057570

/-- `∪[A022264(n), A022265(n)]` -/
def P5139060035362293513.Spec : Prop :=
  ∀ n, (P5139060035362293513.a n : ℤ) = A057570 (n + 1)

end A057570

/-! ## A057570.P5047706823758337587

`A110654(n)+∑[A001281(n)]`
-/

namespace A057570.P5047706823758337587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057570.P5047706823758337587

namespace A057570

/-- `A110654(n)+∑[A001281(n)]` -/
def P5047706823758337587.Spec : Prop :=
  ∀ n, P5047706823758337587.a n = A057570 (n + 1)

end A057570

/-! ## A057570.P15697875755794814386

`∑[A006370(n)-A000035(n)]`
-/

namespace A057570.P15697875755794814386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057570.P15697875755794814386

namespace A057570

/-- `∑[A006370(n)-A000035(n)]` -/
def P15697875755794814386.Spec : Prop :=
  ∀ n, P15697875755794814386.a n = A057570 (n + 1)

end A057570

/-! ## A057570.P12908112327251916632

`A274830(n+1)+A001057(n)`
-/

namespace A057570.P12908112327251916632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) + A001057 n

end

end A057570.P12908112327251916632

namespace A057570

/-- `A274830(n+1)+A001057(n)` -/
def P12908112327251916632.Spec : Prop :=
  ∀ n, P12908112327251916632.a n = A057570 (n + 1)

end A057570

/-! ## A057570.P10047661146517172594

`A014494(n)-A117748(n+1)`
-/

namespace A057570.P10047661146517172594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n - A117748 (n + 1)

end

end A057570.P10047661146517172594

namespace A057570

/-- `A014494(n)-A117748(n+1)` -/
def P10047661146517172594.Spec : Prop :=
  ∀ n, P10047661146517172594.a n = A057570 (n + 1)

end A057570

/-! ## A057570.P174462142601869798

`A062717(n+1)-A085787(n)`
-/

namespace A057570.P174462142601869798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (n + 1) - A085787 n

end

end A057570.P174462142601869798

namespace A057570

/-- `A062717(n+1)-A085787(n)` -/
def P174462142601869798.Spec : Prop :=
  ∀ n, P174462142601869798.a n = A057570 (n + 1)

end A057570

/-! ## A057570.P15887436958798737791

`A219190(n+1)-A001318(n)`
-/

namespace A057570.P15887436958798737791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219190 (n + 1) - A001318 n

end

end A057570.P15887436958798737791

namespace A057570

/-- `A219190(n+1)-A001318(n)` -/
def P15887436958798737791.Spec : Prop :=
  ∀ n, P15887436958798737791.a n = A057570 (n + 1)

end A057570

/-!
# A057571: Area under Dyck paths.

The programs for A057571, there is no canonical definition to state claims against.
-/

/-! ## A057571.P7395538345816207724

`A253200(A110152(n))`
-/

namespace A057571.P7395538345816207724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253200 (A110152 n).toNat

end

end A057571.P7395538345816207724

/-! ## A057571.P6039846463037300946

`A001462(A374632(3*n))-A138785(n+1)`
-/

namespace A057571.P6039846463037300946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A374632 (3 * n)).toNat - A138785 (n + 1)

end

end A057571.P6039846463037300946

/-!
# A057572: Number of unlabeled Hugenholtz diagrams with n nodes.

The programs for A057572, there is no canonical definition to state claims against.
-/

/-! ## A057572.P460073220460471842

`A050368(A002110(n))-val(n+1, 2)`
-/

namespace A057572.P460073220460471842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050368 (A002110 n).toNat - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A057572.P460073220460471842

/-!
# A057573: Number of primes in A051351 which have index <= 10^n.

The programs for A057573, there is no canonical definition to state claims against.
-/

/-! ## A057573.P2832922305455573165

`A154435(A006681(n+2)+n)`
-/

namespace A057573.P2832922305455573165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 (A006681 (n + 2) + (n : ℤ)).toNat

end

end A057573.P2832922305455573165

/-!
# A057574: Maximal numbers of codewords in mixed code with n binary coordinates and 1 ternary coordinate with Hamming distance 3.

The programs for A057574, there is no canonical definition to state claims against.
-/

/-! ## A057574.P14153074953498345545

`ceil(A291857(n+4)/4)`
-/

namespace A057574.P14153074953498345545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A291857 (n + 4) : ℚ) / 4⌉

end

end A057574.P14153074953498345545

/-! ## A057574.P17811227446700226070

`floor(root(A038048(n+2), 4))`
-/

namespace A057574.P17811227446700226070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038048 (n + 2) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A057574.P17811227446700226070

/-! ## A057574.P15395642752117058649

`floor(A095357(n+1)/7)+1`
-/

namespace A057574.P15395642752117058649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095357 (n + 1) : ℚ) / 7⌋ + 1

end

end A057574.P15395642752117058649

/-! ## A057574.P17234863502247647778

`ceil((A065348(2^n)-7)/8)`
-/

namespace A057574.P17234863502247647778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065348 (2 ^ n) - 7 : ℚ) / 8⌉

end

end A057574.P17234863502247647778

/-! ## A057574.P10226535669879670937

`Δ[A035955(n+1)+ceil(2^(n+1-log2(n+1)))]`
-/

namespace A057574.P10226535669879670937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035955 (n + 1) + ⌈(2 : ℝ) ^ ((n + 1 : ℝ) - Real.logb 2 (n + 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057574.P10226535669879670937

/-!
# A057575: Maximal numbers of codewords in mixed code with n binary coordinates and 2 ternary coordinates with Hamming distance 3.

The programs for A057575, there is no canonical definition to state claims against.
-/

/-! ## A057575.P6751417028753153060

`ogf((-1+2x^3+2x^5+6x^6+4x^7)/(-1+2x))`
-/

namespace A057575.P6751417028753153060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -2, 0, -2, -6, -4] [1, -2] n

end

end A057575.P6751417028753153060

/-! ## A057575.P10896238128845662141

`A000010(6*a(n-1))-A028928(n)` with `a(0)=1`
-/

namespace A057575.P10896238128845662141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (6 * a (n - 1)).toNat - A028928 n

end

end A057575.P10896238128845662141

/-! ## A057575.P290234228868208422

`A063199(A005578(n)+∑{p}[n+1, gcd(n, #)])`
-/

namespace A057575.P290234228868208422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063199 (A005578 n + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A057575.P290234228868208422

/-! ## A057575.P16956773489347146720

`A000051(n)-A324769(A298338(n))`
-/

namespace A057575.P16956773489347146720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A324769 (A298338 n).toNat

end

end A057575.P16956773489347146720

/-! ## A057575.P6830943170792405873

`A138554(or(A000984(n), A147748(n)))`
-/

namespace A057575.P6830943170792405873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (Int.lor (A000984 n) (A147748 n)).toNat

end

end A057575.P6830943170792405873

/-!
# A057576: Maximal numbers of codewords in mixed code with n binary coordinates and 3 ternary coordinates with Hamming distance 3.

The programs for A057576, there is no canonical definition to state claims against.
-/

/-! ## A057576.P13841365755757737429

`ogf((-3+3x^2+8x^4+2x^5)/(-1+2x))`
-/

namespace A057576.P13841365755757737429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -3, 0, -8, -2] [1, -2] n

end

end A057576.P13841365755757737429

/-! ## A057576.P5679909490354558219

`A018338(2*n+3)+char[4]`
-/

namespace A057576.P5679909490354558219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018338 (2 * n + 3) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A057576.P5679909490354558219

/-! ## A057576.P3235692478760695878

`A018830(eq[0, val(n+1, 2)%2]+3)`
-/

namespace A057576.P3235692478760695878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018830 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3)

end

end A057576.P3235692478760695878

/-!
# A057577: Maximal numbers of codewords in mixed code with n binary coordinates and 4 ternary coordinates with Hamming distance 3.

The programs for A057577, there is no canonical definition to state claims against.
-/

/-! ## A057577.P11109791878303826131

`ogf((-9+6x+2x^2+2x^3+12x^4)/(-1+2x))`
-/

namespace A057577.P11109791878303826131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -6, -2, -2, -12] [1, -2] n

end

end A057577.P11109791878303826131

/-! ## A057577.P4013984373739199243

`A372850(A062692(n+2))`
-/

namespace A057577.P4013984373739199243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372850 (A062692 (n + 2)).toNat

end

end A057577.P4013984373739199243

/-!
# A057583: Maximal numbers of codewords in mixed code with 5 binary coordinates and n ternary coordinates with Hamming distance 3.

The programs for A057583, there is no canonical definition to state claims against.
-/

/-! ## A057583.P8216568485637607138

`ogf((-4+4x+6x^2)/(-1+3x+x^2-5x^3))`
-/

namespace A057583.P8216568485637607138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4, -6] [1, -3, -1, 5] n

end

end A057583.P8216568485637607138

/-!
# A057584: Maximal numbers of codewords in mixed code with 6 binary coordinates and n ternary coordinates with Hamming distance 3.

The programs for A057584, there is no canonical definition to state claims against.
-/

/-! ## A057584.P2932684254067901773

`Δ[ogf((-6+4x)/(-1+3x-2x^2+x^3+3x^4))]`
-/

namespace A057584.P2932684254067901773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -4] [1, -3, 2, -1, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057584.P2932684254067901773

/-!
# A057585: Area under Motzkin excursions.

The programs for A057585, the canonical program `A057585.P18440918043362759352` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057585 has offset 1).

The definition of A057585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057585.P4835612145041671783

`A055218(n)-A109196(n+2)`
-/

namespace A057585.P4835612145041671783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055218 n - A109196 (n + 2)

end

end A057585.P4835612145041671783

namespace A057585

/-- `A055218(n)-A109196(n+2)` -/
def P4835612145041671783.Spec : Prop :=
  ∀ n, P4835612145041671783.a n = A057585 (n + 1)

end A057585

/-! ## A057585.P10803437085470869001

`A109196(n+2)-A275289(n+3)`
-/

namespace A057585.P10803437085470869001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109196 (n + 2) - A275289 (n + 3)

end

end A057585.P10803437085470869001

namespace A057585

/-- `A109196(n+2)-A275289(n+3)` -/
def P10803437085470869001.Spec : Prop :=
  ∀ n, P10803437085470869001.a n = A057585 (n + 1)

end A057585

/-! ## A057585.P12072647860213128769

`A055218(n)-A109194(n+2)/2`
-/

namespace A057585.P12072647860213128769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055218 n : ℚ) - (A109194 (n + 2) : ℚ) / 2

end

end A057585.P12072647860213128769

namespace A057585

/-- `A055218(n)-A109194(n+2)/2` -/
def P12072647860213128769.Spec : Prop :=
  ∀ n, P12072647860213128769.a n = (A057585 (n + 1) : ℚ)

end A057585

/-! ## A057585.P18440918043362759352

`(A055218(n)-A275289(n+3))/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A057585

/-- `(A055218(n)-A275289(n+3))/2` -/
def P18440918043362759352.Spec : Prop :=
  ∀ n, P18440918043362759352.a n = (A057585 (n + 1) : ℚ)

end A057585

/-! ## A057585.P11200084780768783841

`A109194(n+2)/2-A275289(n+3)`
-/

namespace A057585.P11200084780768783841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109194 (n + 2) : ℚ) / 2 - (A275289 (n + 3) : ℚ)

end

end A057585.P11200084780768783841

namespace A057585

/-- `A109194(n+2)/2-A275289(n+3)` -/
def P11200084780768783841.Spec : Prop :=
  ∀ n, P11200084780768783841.a n = (A057585 (n + 1) : ℚ)

end A057585

/-!
# A057586: Area under Motzkin paths.

The programs for A057586, there is no canonical definition to state claims against.
-/

/-! ## A057586.P1897590255486404887

`A061017(∑[A033484(n)]²)`
-/

namespace A057586.P1897590255486404887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A057586.P1897590255486404887

/-!
# A057587: Nonnegative numbers of form n*(n^2+-1)/2.

The programs for A057587, the canonical program `A057587.P17352191481263402521` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057587 has offset 0).

The definition of A057587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057587.P17352191481263402521

`(2*n^3+9*n²+15*n+5+(3*n²+n-5)*(-1)^n)/32`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057587

/-- `(2*n^3+9*n²+15*n+5+(3*n²+n-5)*(-1)^n)/32` -/
def P17352191481263402521.Spec : Prop :=
  ∀ n, P17352191481263402521.a n = (A057587 n : ℚ)

end A057587

/-! ## A057587.P5832219677051393048

`∪[A006003(n), A027480(n)]`
-/

namespace A057587.P5832219677051393048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057587.P5832219677051393048

namespace A057587

/-- `∪[A006003(n), A027480(n)]` -/
def P5832219677051393048.Spec : Prop :=
  ∀ n, (P5832219677051393048.a n : ℤ) = A057587 n

end A057587

/-! ## A057587.P870683140431343479

`A006003(A008619(n))-A027656(n)`
-/

namespace A057587.P870683140431343479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (A008619 n).toNat - A027656 n

end

end A057587.P870683140431343479

namespace A057587

/-- `A006003(A008619(n))-A027656(n)` -/
def P870683140431343479.Spec : Prop :=
  ∀ n, P870683140431343479.a n = A057587 n

end A057587

/-! ## A057587.P15933347902654420667

`A006003(A004526(n)+1)-A027656(n)`
-/

namespace A057587.P15933347902654420667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (A004526 n + 1).toNat - A027656 n

end

end A057587.P15933347902654420667

namespace A057587

/-- `A006003(A004526(n)+1)-A027656(n)` -/
def P15933347902654420667.Spec : Prop :=
  ∀ n, P15933347902654420667.a n = A057587 n

end A057587

/-! ## A057587.P4146012765371862077

`A004652(n)+A000124(A004526(n))*A004526(n)`
-/

namespace A057587.P4146012765371862077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n + A000124 (A004526 n).toNat * A004526 n

end

end A057587.P4146012765371862077

namespace A057587

/-- `A004652(n)+A000124(A004526(n))*A004526(n)` -/
def P4146012765371862077.Spec : Prop :=
  ∀ n, P4146012765371862077.a n = A057587 n

end A057587

/-! ## A057587.P14860352138213130855

`A030451(n+1)/2*A097066(n+1)`
-/

namespace A057587.P14860352138213130855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030451 (n + 1) : ℚ) / 2 * (A097066 (n + 1) : ℚ)

end

end A057587.P14860352138213130855

namespace A057587

/-- `A030451(n+1)/2*A097066(n+1)` -/
def P14860352138213130855.Spec : Prop :=
  ∀ n, P14860352138213130855.a n = (A057587 n : ℚ)

end A057587

/-! ## A057587.P7989110858264468458

`A002411(A004526(n))+∑[A004526(n+1)]`
-/

namespace A057587.P7989110858264468458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A004526 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057587.P7989110858264468458

namespace A057587

/-- `A002411(A004526(n))+∑[A004526(n+1)]` -/
def P7989110858264468458.Spec : Prop :=
  ∀ n, P7989110858264468458.a n = A057587 n

end A057587

/-! ## A057587.P4020473170452478670

`record[∑[A145919(n)]]`
-/

namespace A057587.P4020473170452478670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145919 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057587.P4020473170452478670

namespace A057587

/-- `record[∑[A145919(n)]]` -/
def P4020473170452478670.Spec : Prop :=
  ∀ n, P4020473170452478670.a n = A057587 n

end A057587

/-! ## A057587.P3123073133638951161

`A004526(n+1)+eq[1, A007318(n)]*A004526(n)`
-/

namespace A057587.P3123073133638951161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A004526 n

end

end A057587.P3123073133638951161

namespace A057587

/-- `A004526(n+1)+eq[1, A007318(n)]*A004526(n)` -/
def P3123073133638951161.Spec : Prop :=
  ∀ n, P3123073133638951161.a n = A057587 n

end A057587

/-!
# A057588: Kummer numbers: -1 + product of first n consecutive primes.

The programs for A057588, there is no canonical definition to state claims against.
-/

/-! ## A057588.P10863952034039063574

`A002110(n+1)-1`
-/

namespace A057588.P10863952034039063574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - 1

end

end A057588.P10863952034039063574

/-! ## A057588.P9427881561337375882

`A006862(n+1)-2`
-/

namespace A057588.P9427881561337375882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 (n + 1) - 2

end

end A057588.P9427881561337375882

/-! ## A057588.P18391577420098591649

`∑[A061720(n)]`
-/

namespace A057588.P18391577420098591649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057588.P18391577420098591649

/-! ## A057588.P4298772617689387824

`record[Δ[A096334(n)]]`
-/

namespace A057588.P4298772617689387824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057588.P4298772617689387824

/-! ## A057588.P16512911802920701671

`Δ[A143293(n)]-1`
-/

namespace A057588.P16512911802920701671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A057588.P16512911802920701671

/-! ## A057588.P10654766030640867594

`record[A347379(n+1)]`
-/

namespace A057588.P10654766030640867594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057588.P10654766030640867594

/-! ## A057588.P15528180644462125804

`record[A373146(n+3)]`
-/

namespace A057588.P15528180644462125804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373146 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057588.P15528180644462125804

/-! ## A057588.P7558538936089835858

`∑[abs(Δ[A002110(n)])]`
-/

namespace A057588.P7558538936089835858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057588.P7558538936089835858

/-! ## A057588.P9137114169941138371

`(A228698(n)-3)/4`
-/

namespace A057588.P9137114169941138371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228698 n - 3 : ℚ) / 4

end

end A057588.P9137114169941138371

/-! ## A057588.P11971451110208209118

`lcm(2, A231209(n))-1`
-/

namespace A057588.P11971451110208209118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A231209 n) : ℤ) - 1

end

end A057588.P11971451110208209118

/-!
# A057589: Numbers k which are both lucky (A000959) and Fibonacci (A000045).

The programs for A057589, there is no canonical definition to state claims against.
-/

/-! ## A057589.P13670238015020083178

`filter[A096748(n), A145649(#)]`
-/

namespace A057589.P13670238015020083178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A057589.P13670238015020083178

/-! ## A057589.P1443462248624917284

`filter[A014437(n+1), A145649(#)]`
-/

namespace A057589.P1443462248624917284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A057589.P1443462248624917284

/-! ## A057589.P9406119780022539609

`filter[A036415(n+1), A145649(#)]`
-/

namespace A057589.P9406119780022539609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A057589.P9406119780022539609

/-!
# A057590: Numbers of the form k*(k^3 +- 1)/2.

The programs for A057590, the canonical program `A057590.P4961889276649306474` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057590 has offset 1).

The definition of A057590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057590.P4961889276649306474

`∪[A027482(n+2), A027441(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A057590

/-- `∪[A027482(n+2), A027441(n)]` -/
def P4961889276649306474.Spec : Prop :=
  ∀ n, (P4961889276649306474.a n : ℤ) = A057590 (n + 1)

theorem P4961889276649306474.correct : P4961889276649306474.Spec := by
  intro n
  simp only [A057590, Nat.add_sub_cancel]

end A057590

/-! ## A057590.P13133822097464199064

`∑[(n+1)*A000463(n+2)-∑[n+1]]`
-/

namespace A057590.P13133822097464199064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000463 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057590.P13133822097464199064

namespace A057590

/-- `∑[(n+1)*A000463(n+2)-∑[n+1]]` -/
def P13133822097464199064.Spec : Prop :=
  ∀ n, P13133822097464199064.a n = A057590 (n + 1)

end A057590

/-! ## A057590.P743846655731119423

`∑[A093178(n+1)*A129889(n+1)]`
-/

namespace A057590.P743846655731119423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 1) * A129889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057590.P743846655731119423

namespace A057590

/-- `∑[A093178(n+1)*A129889(n+1)]` -/
def P743846655731119423.Spec : Prop :=
  ∀ n, P743846655731119423.a n = A057590 (n + 1)

end A057590

/-! ## A057590.P6821827740239317163

`∑[A142150(n+1)+∑[n+1]*A142150(n)]`
-/

namespace A057590.P6821827740239317163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057590.P6821827740239317163

namespace A057590

/-- `∑[A142150(n+1)+∑[n+1]*A142150(n)]` -/
def P6821827740239317163.Spec : Prop :=
  ∀ n, P6821827740239317163.a n = A057590 (n + 1)

end A057590

/-! ## A057590.P13242796966375259188

`A000217(A008794(n+2))-A008795(n)`
-/

namespace A057590.P13242796966375259188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008794 (n + 2)).toNat - A008795 n

end

end A057590.P13242796966375259188

namespace A057590

/-- `A000217(A008794(n+2))-A008795(n)` -/
def P13242796966375259188.Spec : Prop :=
  ∀ n, P13242796966375259188.a n = A057590 (n + 1)

end A057590

/-! ## A057590.P9675099515250762616

`A000217(A008619(n)²)-A000217(A028242(n))`
-/

namespace A057590.P9675099515250762616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n ^ 2).toNat - A000217 (A028242 n).toNat

end

end A057590.P9675099515250762616

namespace A057590

/-- `A000217(A008619(n)²)-A000217(A028242(n))` -/
def P9675099515250762616.Spec : Prop :=
  ∀ n, P9675099515250762616.a n = A057590 (n + 1)

end A057590

/-! ## A057590.P14839809331737949430

`A161680(A008619(n+1))+A161680(A008619(n)²)`
-/

namespace A057590.P14839809331737949430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A008619 (n + 1)).toNat + A161680 (A008619 n ^ 2).toNat

end

end A057590.P14839809331737949430

namespace A057590

/-- `A161680(A008619(n+1))+A161680(A008619(n)²)` -/
def P14839809331737949430.Spec : Prop :=
  ∀ n, P14839809331737949430.a n = A057590 (n + 1)

end A057590

/-! ## A057590.P6616082642903816663

`A161680(A000463(n+2))+A161680(A000463(n+1))`
-/

namespace A057590.P6616082642903816663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A000463 (n + 2)).toNat + A161680 (A000463 (n + 1)).toNat

end

end A057590.P6616082642903816663

namespace A057590

/-- `A161680(A000463(n+2))+A161680(A000463(n+1))` -/
def P6616082642903816663.Spec : Prop :=
  ∀ n, P6616082642903816663.a n = A057590 (n + 1)

end A057590

/-!
# A057592: a(n) = Fibonacci(n+1)^2 + 4*Fibonacci(n).

The programs for A057592, the canonical program `A057592.P11540212676059738396` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057592 has offset 0).

The definition of A057592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057592.P11540212676059738396

`A022087(n)+Δ[A001654(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A057592

/-- `A022087(n)+Δ[A001654(n)]` -/
def P11540212676059738396.Spec : Prop :=
  ∀ n, P11540212676059738396.a n = A057592 n

theorem P11540212676059738396.correct : P11540212676059738396.Spec := by
  intro n
  simp only [A057592]

end A057592

/-! ## A057592.P15933604320728057043

`Δ[A022403(n)+A001654(n)]`
-/

namespace A057592.P15933604320728057043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 n + A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057592.P15933604320728057043

namespace A057592

/-- `Δ[A022403(n)+A001654(n)]` -/
def P15933604320728057043.Spec : Prop :=
  ∀ n, P15933604320728057043.a n = A057592 n

end A057592

/-! ## A057592.P16682712222699246799

`A022087(n)+A007598(n+1)`
-/

namespace A057592.P16682712222699246799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A007598 (n + 1)

end

end A057592.P16682712222699246799

namespace A057592

/-- `A022087(n)+A007598(n+1)` -/
def P16682712222699246799.Spec : Prop :=
  ∀ n, P16682712222699246799.a n = A057592 n

end A057592

/-! ## A057592.P2996695143618552281

`A022087(n)+∑[A212804(n)]²`
-/

namespace A057592.P2996695143618552281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A057592.P2996695143618552281

namespace A057592

/-- `A022087(n)+∑[A212804(n)]²` -/
def P2996695143618552281.Spec : Prop :=
  ∀ n, P2996695143618552281.a n = A057592 n

end A057592

/-! ## A057592.P14345504958449860660

`A022087(n)+A000045(n+1)²`
-/

namespace A057592.P14345504958449860660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A000045 (n + 1) ^ 2

end

end A057592.P14345504958449860660

namespace A057592

/-- `A022087(n)+A000045(n+1)²` -/
def P14345504958449860660.Spec : Prop :=
  ∀ n, P14345504958449860660.a n = A057592 n

end A057592

/-! ## A057592.P529543046779146452

`A022319(n)+A000071(n+1)²`
-/

namespace A057592.P529543046779146452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A000071 (n + 1) ^ 2

end

end A057592.P529543046779146452

namespace A057592

/-- `A022319(n)+A000071(n+1)²` -/
def P529543046779146452.Spec : Prop :=
  ∀ n, P529543046779146452.a n = A057592 n

end A057592

/-! ## A057592.P7660985923100322259

`Δ[A001654(n)+2*A001595(n)]`
-/

namespace A057592.P7660985923100322259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + 2 * A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057592.P7660985923100322259

namespace A057592

/-- `Δ[A001654(n)+2*A001595(n)]` -/
def P7660985923100322259.Spec : Prop :=
  ∀ n, P7660985923100322259.a n = A057592 n

end A057592

/-! ## A057592.P7906231745310685713

`A074677(2*n+1)+A022087(n)`
-/

namespace A057592.P7906231745310685713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n + 1) + A022087 n

end

end A057592.P7906231745310685713

namespace A057592

/-- `A074677(2*n+1)+A022087(n)` -/
def P7906231745310685713.Spec : Prop :=
  ∀ n, P7906231745310685713.a n = A057592 n

end A057592

/-! ## A057592.P16278263260128700813

`A007598(n+1)+4*A000045(n)`
-/

namespace A057592.P16278263260128700813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) + 4 * A000045 n

end

end A057592.P16278263260128700813

namespace A057592

/-- `A007598(n+1)+4*A000045(n)` -/
def P16278263260128700813.Spec : Prop :=
  ∀ n, P16278263260128700813.a n = A057592 n

end A057592

/-! ## A057592.P17596926692964229384

`A022087(n)+(A000071(n+1)+1)²`
-/

namespace A057592.P17596926692964229384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + (A000071 (n + 1) + 1) ^ 2

end

end A057592.P17596926692964229384

namespace A057592

/-- `A022087(n)+(A000071(n+1)+1)²` -/
def P17596926692964229384.Spec : Prop :=
  ∀ n, P17596926692964229384.a n = A057592 n

end A057592

/-! ## A057592.P358260530708176096

`A000045(n+1)²+4*A000045(n)`
-/

namespace A057592.P358260530708176096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 + 4 * A000045 n

end

end A057592.P358260530708176096

namespace A057592

/-- `A000045(n+1)²+4*A000045(n)` -/
def P358260530708176096.Spec : Prop :=
  ∀ n, P358260530708176096.a n = A057592 n

end A057592

/-! ## A057592.P10146999177096058176

`A006498(2*n)+2*A006355(n+1)`
-/

namespace A057592.P10146999177096058176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n) + 2 * A006355 (n + 1)

end

end A057592.P10146999177096058176

namespace A057592

/-- `A006498(2*n)+2*A006355(n+1)` -/
def P10146999177096058176.Spec : Prop :=
  ∀ n, P10146999177096058176.a n = A057592 n

end A057592

/-! ## A057592.P7282265650830884599

`A022087(n)+(A022087(n)-A022095(n))²`
-/

namespace A057592.P7282265650830884599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + (A022087 n - A022095 n) ^ 2

end

end A057592.P7282265650830884599

namespace A057592

/-- `A022087(n)+(A022087(n)-A022095(n))²` -/
def P7282265650830884599.Spec : Prop :=
  ∀ n, P7282265650830884599.a n = A057592 n

end A057592

/-! ## A057592.P6337075233049678102

`A000071(n+1)+A022095(n)+A000071(n+1)²`
-/

namespace A057592.P6337075233049678102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A022095 n + A000071 (n + 1) ^ 2)

end

end A057592.P6337075233049678102

namespace A057592

/-- `A000071(n+1)+A022095(n)+A000071(n+1)²` -/
def P6337075233049678102.Spec : Prop :=
  ∀ n, P6337075233049678102.a n = A057592 n

end A057592

/-! ## A057592.P8827947170563673792

`Δ[A000071(n+1)*A001611(n)]+A000032(n+1)`
-/

namespace A057592.P8827947170563673792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) * A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000032 (n + 1)

end

end A057592.P8827947170563673792

namespace A057592

/-- `Δ[A000071(n+1)*A001611(n)]+A000032(n+1)` -/
def P8827947170563673792.Spec : Prop :=
  ∀ n, P8827947170563673792.a n = A057592 n

end A057592

/-!
# A057593: Triangle T(n, k) giving period length of the periodic sequence k^i (i >= imin) mod n (n >= 2, 1 <= k <= n-1).

The programs for A057593, there is no canonical definition to state claims against.
-/

/-! ## A057593.P3122614553486295543

`A275117(xor(1, A320253(n)))`
-/

namespace A057593.P3122614553486295543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275117 (Int.xor 1 (A320253 n)).toNat

end

end A057593.P3122614553486295543

/-! ## A057593.P11836586827286876055

`A330086(round(ϕ^A306024(n)))`
-/

namespace A057593.P11836586827286876055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330086 (SequenceMachineLib.roundAway (Real.goldenRatio ^ (A306024 n : ℤ))).toNat

end

end A057593.P11836586827286876055

/-! ## A057593.P8043505393907076506

`A087230(A005238(n+1)*A144645(n))`
-/

namespace A057593.P8043505393907076506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 (A005238 (n + 1) * A144645 n).toNat

end

end A057593.P8043505393907076506

/-! ## A057593.P7032780024145242870

`gcd(A001935(n), A116687(A103881(n+1)))`
-/

namespace A057593.P7032780024145242870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001935 n) (A116687 (A103881 (n + 1)).toNat)

end

end A057593.P7032780024145242870

/-! ## A057593.P7930254590846760902

`A072411(xor(A036659(n+1), A270509(n+2)))`
-/

namespace A057593.P7930254590846760902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (Int.xor (A036659 (n + 1)) (A270509 (n + 2))).toNat

end

end A057593.P7930254590846760902

/-!
# A057594: Triangle T(n,k) giving floor( (2*p mod n-1)/2), where p = period of sequence k^i (i=0,1,2,...) mod n (n >= 2, 2<=k<=n).

The programs for A057594, there is no canonical definition to state claims against.
-/

/-! ## A057594.P8336051088589382418

`floor(A057595(n+2)/2)`
-/

namespace A057594.P8336051088589382418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057595 (n + 2) : ℚ) / 2⌋

end

end A057594.P8336051088589382418

/-! ## A057594.P12098864649934648168

`A004526(A057595(n+2))`
-/

namespace A057594.P12098864649934648168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057595 (n + 2)).toNat

end

end A057594.P12098864649934648168

/-! ## A057594.P7505861001778265481

`A057979(or(1, A057595(n+2)))`
-/

namespace A057594.P7505861001778265481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.lor 1 (A057595 (n + 2))).toNat

end

end A057594.P7505861001778265481

/-! ## A057594.P17920523423293657796

`A004525(A057595(n+2)+2)-1`
-/

namespace A057594.P17920523423293657796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A057595 (n + 2) + 2).toNat - 1

end

end A057594.P17920523423293657796

/-! ## A057594.P5104338167964958603

`A057593(n+3)%A004526(comp[∑[n]]-n)`
-/

namespace A057594.P5104338167964958603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057593 (n + 3)) (A004526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n))

end

end A057594.P5104338167964958603

/-! ## A057594.P15479641618120479964

`A057595(n+2)-A057979(A057595(n+2)+1)`
-/

namespace A057594.P15479641618120479964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057595 (n + 2) - A057979 (A057595 (n + 2) + 1).toNat

end

end A057594.P15479641618120479964

/-! ## A057594.P10678380465624187098

`A004525(and(A057595(n+2)+1, A057595(n+2)))`
-/

namespace A057594.P10678380465624187098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.land (A057595 (n + 2) + 1) (A057595 (n + 2))).toNat

end

end A057594.P10678380465624187098

/-! ## A057594.P4018416399939536434

`and(A057595(n+2), A140253(n))/2`
-/

namespace A057594.P4018416399939536434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A057595 (n + 2)) (A140253 n) : ℚ) / 2

end

end A057594.P4018416399939536434

/-! ## A057594.P15002023735869819600

`A004525(and(A057595(n+2), A140253(n)))`
-/

namespace A057594.P15002023735869819600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.land (A057595 (n + 2)) (A140253 n)).toNat

end

end A057594.P15002023735869819600

/-! ## A057594.P16580451643117022779

`A001221(A057595(n+2)!)`
-/

namespace A057594.P16580451643117022779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A057595 (n + 2)).toNat)

end

end A057594.P16580451643117022779

/-!
# A057595: Triangle T(n,k) giving 2*p mod n-1, where p = period of sequence k^i (i=0,1,2,...) mod n (n >= 2, 2<=k<=n).

The programs for A057595, there is no canonical definition to state claims against.
-/

/-! ## A057595.P9163806768130506758

`A290213(A085588(n+3))%A002024(n+1)`
-/

namespace A057595.P9163806768130506758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290213 (A085588 (n + 3)).toNat) (A002024 (n + 1))

end

end A057595.P9163806768130506758

/-! ## A057595.P4837339845988105856

`and(A001969(A063895(n+2)), A301957(2*n+1))`
-/

namespace A057595.P4837339845988105856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001969 (A063895 (n + 2)).toNat) (A301957 (2 * n + 1))

end

end A057595.P4837339845988105856

/-! ## A057595.P7310601887084273636

`A005496(A130330(n))%A225634(n)`
-/

namespace A057595.P7310601887084273636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005496 (A130330 n).toNat) (A225634 n)

end

end A057595.P7310601887084273636

/-! ## A057595.P17431983339457053304

`A007971(n)%∑[A037213(A187829(n+1))]`
-/

namespace A057595.P17431983339457053304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007971 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057595.P17431983339457053304

/-! ## A057595.P11432287492103896407

`A046312(A225894(n+1))%A002024(n+1)`
-/

namespace A057595.P11432287492103896407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046312 (A225894 (n + 1)).toNat) (A002024 (n + 1))

end

end A057595.P11432287492103896407

/-!
# A057597: a(n) = -a(n-1) - a(n-2) + a(n-3), a(0)=0, a(1)=0, a(2)=1.

The programs for A057597, the canonical program `A057597.P13175389649018177714` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057597 has offset 0).

The definition of A057597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)-a(n-2)+a(n-3)` (program `A057597.P13175389649018177714`, by `A057597.P13175389649018177714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057597.P13175389649018177714

`-a(n-1)-a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057597

/-- `-a(n-1)-a(n-2)+a(n-3)` -/
def P13175389649018177714.Spec : Prop :=
  ∀ n, P13175389649018177714.a n = A057597 n

theorem P13175389649018177714.correct : P13175389649018177714.Spec := by
  intro n
  simp only [A057597]

end A057597

/-! ## A057597.P14610978857912802889

`ogf(x^2/(1+x+x^2-x^3))`
-/

namespace A057597.P14610978857912802889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, 1, 1, -1] n

end

end A057597.P14610978857912802889

namespace A057597

/-- `ogf(x^2/(1+x+x^2-x^3))` -/
def P14610978857912802889.Spec : Prop :=
  ∀ n, P14610978857912802889.a n = A057597 n

end A057597

/-! ## A057597.P2563900507029237205

`2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=-1`
-/

namespace A057597.P2563900507029237205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, -1] fun n a =>
  2 * a (n - 3) - a (n - 4)

end

end A057597.P2563900507029237205

namespace A057597

/-- `2*a(n-3)-a(n-4)` -/
def P2563900507029237205.Spec : Prop :=
  ∀ n, P2563900507029237205.a n = A057597 n

end A057597

/-! ## A057597.P14771690564700138367

`a(n-3)-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A057597.P14771690564700138367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) - (a (n - 1) + a (n - 2))

end

end A057597.P14771690564700138367

namespace A057597

/-- `a(n-3)-(a(n-1)+a(n-2))` -/
def P14771690564700138367.Spec : Prop :=
  ∀ n, P14771690564700138367.a n = A057597 n

end A057597

/-! ## A057597.P11357025961432868882

`a(n-3)-a(n-1)-a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A057597.P11357025961432868882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 2)

end

end A057597.P11357025961432868882

namespace A057597

/-- `a(n-3)-a(n-1)-a(n-2)` -/
def P11357025961432868882.Spec : Prop :=
  ∀ n, P11357025961432868882.a n = A057597 n

end A057597

/-! ## A057597.P9051138198804231991

`∑[A062157(n)*A078016(n)]`
-/

namespace A057597.P9051138198804231991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A078016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057597.P9051138198804231991

namespace A057597

/-- `∑[A062157(n)*A078016(n)]` -/
def P9051138198804231991.Spec : Prop :=
  ∀ n, P9051138198804231991.a n = A057597 n

end A057597

/-! ## A057597.P9077692415346252602

`A077908(n+1)-A077908(abs(2-n))`
-/

namespace A057597.P9077692415346252602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077908 (n + 1) - A077908 |2 - (n : ℤ)|.toNat

end

end A057597.P9077692415346252602

namespace A057597

/-- `A077908(n+1)-A077908(abs(2-n))` -/
def P9077692415346252602.Spec : Prop :=
  ∀ n, P9077692415346252602.a n = A057597 n

end A057597

/-! ## A057597.P4038014832480290011

`A319200(n)-∑[A319200(n)]`
-/

namespace A057597.P4038014832480290011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319200 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057597.P4038014832480290011

namespace A057597

/-- `A319200(n)-∑[A319200(n)]` -/
def P4038014832480290011.Spec : Prop :=
  ∀ n, P4038014832480290011.a n = A057597 n

end A057597

/-! ## A057597.P9238689834265687670

`A073717(n)-A075536(n)*A075676(n)`
-/

namespace A057597.P9238689834265687670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073717 n - A075536 n * A075676 n

end

end A057597.P9238689834265687670

namespace A057597

/-- `A073717(n)-A075536(n)*A075676(n)` -/
def P9238689834265687670.Spec : Prop :=
  ∀ n, P9238689834265687670.a n = A057597 n

end A057597

/-! ## A057597.P708721260187405584

`A073717(n)-A000073(n+1)*A001644(n)`
-/

namespace A057597.P708721260187405584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073717 n - A000073 (n + 1) * A001644 n

end

end A057597.P708721260187405584

namespace A057597

/-- `A073717(n)-A000073(n+1)*A001644(n)` -/
def P708721260187405584.Spec : Prop :=
  ∀ n, P708721260187405584.a n = A057597 n

end A057597

/-! ## A057597.P9752883213852144303

`A326329(n+1)-A075536(n)*A075676(n)`
-/

namespace A057597.P9752883213852144303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326329 (n + 1) - A075536 n * A075676 n

end

end A057597.P9752883213852144303

namespace A057597

/-- `A326329(n+1)-A075536(n)*A075676(n)` -/
def P9752883213852144303.Spec : Prop :=
  ∀ n, P9752883213852144303.a n = A057597 n

end A057597

/-!
# A057599: a(n) = (n^2)!/(n!)^(n+1); number of ways of dividing n^2 labeled items into n unlabeled boxes of n items each.

The programs for A057599, the canonical program `A057599.P2314703557819511826` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057599 has offset 0).

The definition of A057599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057599.P2314703557819511826

`A034841(n)/A000142(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057599

/-- `A034841(n)/A000142(n)` -/
def P2314703557819511826.Spec : Prop :=
  ∀ n, P2314703557819511826.a n = (A057599 n : ℚ)

end A057599

/-! ## A057599.P9647708951377040417

`n²!/n!^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057599.P9647708951377040417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n ^ 2) : ℚ) / (Nat.factorial n ^ (n + 1) : ℚ)

end

end A057599.P9647708951377040417

namespace A057599

/-- `n²!/n!^(n+1)` -/
def P9647708951377040417.Spec : Prop :=
  ∀ n, P9647708951377040417.a n = (A057599 n : ℚ)

end A057599

/-! ## A057599.P2446997473675522598

`A060540(4*C(n, 2)+1)`
-/

namespace A057599.P2446997473675522598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (4 * Nat.choose n 2 + 1)

end

end A057599.P2446997473675522598

namespace A057599

/-- `A060540(4*C(n, 2)+1)` -/
def P2446997473675522598.Spec : Prop :=
  ∀ n, P2446997473675522598.a n = A057599 n

end A057599

/-! ## A057599.P13894181180085188354

`A060540((1-n)²+n²)`
-/

namespace A057599.P13894181180085188354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A057599.P13894181180085188354

namespace A057599

/-- `A060540((1-n)²+n²)` -/
def P13894181180085188354.Spec : Prop :=
  ∀ n, P13894181180085188354.a n = A057599 n

end A057599

/-! ## A057599.P4180600704811599927

`A370367(n)+A370364(n)`
-/

namespace A057599.P4180600704811599927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370367 n + A370364 n

end

end A057599.P4180600704811599927

namespace A057599

/-- `A370367(n)+A370364(n)` -/
def P4180600704811599927.Spec : Prop :=
  ∀ n, P4180600704811599927.a n = A057599 n

end A057599

