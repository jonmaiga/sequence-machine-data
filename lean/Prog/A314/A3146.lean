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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
# A314600: Coordination sequence Gal.6.25.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314600, there is no canonical definition to state claims against.
-/

/-! ## A314600.P17573324816325071935

`A314599(n)+A011731(A113300(n))`
-/

namespace A314600.P17573324816325071935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314599 n + A011731 (A113300 n).toNat

end

end A314600.P17573324816325071935

/-! ## A314600.P8294148904928214296

`A314599(n)+A107846(A215512(n))`
-/

namespace A314600.P8294148904928214296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314599 n + A107846 (A215512 n).toNat

end

end A314600.P8294148904928214296

/-! ## A314600.P12694058096690044228

`A052905(n)-A118538(n+1)%A330471(n)`
-/

namespace A314600.P12694058096690044228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n - Int.tmod (A118538 (n + 1)) (A330471 n)

end

end A314600.P12694058096690044228

/-! ## A314600.P15423606231323076377

`A313391(n)+A126792(A006925(n))-A126792(A057354(2*n))`
-/

namespace A314600.P15423606231323076377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313391 n + A126792 (A006925 n).toNat - A126792 (A057354 (2 * n)).toNat

end

end A314600.P15423606231323076377

/-!
# A314601: Coordination sequence Gal.6.63.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314601, there is no canonical definition to state claims against.
-/

/-! ## A314601.P18325898385651946527

`4*n-A123737(A080635(n))`
-/

namespace A314601.P18325898385651946527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A123737 (A080635 n).toNat

end

end A314601.P18325898385651946527

/-! ## A314601.P18214789165643015226

`or(A002635(A048855(n)), A312839(n))`
-/

namespace A314601.P18214789165643015226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002635 (A048855 n).toNat) (A312839 n)

end

end A314601.P18214789165643015226

/-! ## A314601.P6868953805236591151

`or(A000120(A337053(n)), A312839(n))`
-/

namespace A314601.P6868953805236591151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A337053 n).toNat) (A312839 n)

end

end A314601.P6868953805236591151

/-! ## A314601.P10705909294246171194

`or(A312839(n), A334029(A026008(n)))`
-/

namespace A314601.P10705909294246171194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312839 n) (A334029 (A026008 n).toNat)

end

end A314601.P10705909294246171194

/-! ## A314601.P12269880442099925623

`or(A312839(n), A334029(A257345(n)))`
-/

namespace A314601.P12269880442099925623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312839 n) (A334029 (A257345 n).toNat)

end

end A314601.P12269880442099925623

/-!
# A314603: Coordination sequence Gal.4.20.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314603, there is no canonical definition to state claims against.
-/

/-! ## A314603.P14608951783610974314

`record[A117358(A330949(n+1)+A279612(2*n+3))]`
-/

namespace A314603.P14608951783610974314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A330949 (n + 1) + A279612 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314603.P14608951783610974314

/-!
# A314610: Coordination sequence Gal.6.480.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314610, there is no canonical definition to state claims against.
-/

/-! ## A314610.P10346839148753758990

`∑[A105852(A240219(3*n+1)²)]`
-/

namespace A314610.P10346839148753758990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105852 (A240219 (3 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314610.P10346839148753758990

/-! ## A314610.P8064985606425916618

`∑[A053737(A195978(3*n+4)²)]`
-/

namespace A314610.P8064985606425916618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A195978 (3 * n + 4) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314610.P8064985606425916618

/-! ## A314610.P15768093623931593479

`eq[A028310(A275784(n)), A245225(n)]`
-/

namespace A314610.P15768093623931593479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A275784 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314610.P15768093623931593479

/-! ## A314610.P10698953664373867559

`A268448(n+1)+A072643(A030098(n+1))`
-/

namespace A314610.P10698953664373867559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (n + 1) + A072643 (A030098 (n + 1)).toNat

end

end A314610.P10698953664373867559

/-! ## A314610.P1949179986531655642

`lt[A122507(A035106(n+1)), A122530(2*n+3)]`
-/

namespace A314610.P1949179986531655642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122507 (A035106 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122530 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A314610.P1949179986531655642

/-!
# A314612: Coordination sequence Gal.5.217.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314612, there is no canonical definition to state claims against.
-/

/-! ## A314612.P10031878489738794307

`A312849(n)+A276004(A347167(n+1))`
-/

namespace A314612.P10031878489738794307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312849 n + A276004 (A347167 (n + 1)).toNat

end

end A314612.P10031878489738794307

/-! ## A314612.P5781479813590418057

`A276004(A347167(n+1))+2*A310970(n)-A310937(n)`
-/

namespace A314612.P5781479813590418057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276004 (A347167 (n + 1)).toNat + (2 * A310970 n - A310937 n)

end

end A314612.P5781479813590418057

/-!
# A314613: Coordination sequence Gal.6.88.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314613, there is no canonical definition to state claims against.
-/

/-! ## A314613.P4932439762196638844

`A198265(n)+A198260(A287276(n))`
-/

namespace A314613.P4932439762196638844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 n + A198260 (A287276 n).toNat

end

end A314613.P4932439762196638844

/-! ## A314613.P7998950986718304001

`A267037(A024430(n))+A028845(n+1)`
-/

namespace A314613.P7998950986718304001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267037 (A024430 n).toNat + A028845 (n + 1)

end

end A314613.P7998950986718304001

/-! ## A314613.P1881217878201578935

`A028845(n+1)+A025426(A171522(n+2))`
-/

namespace A314613.P1881217878201578935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028845 (n + 1) + A025426 (A171522 (n + 2)).toNat

end

end A314613.P1881217878201578935

/-! ## A314613.P6221281948402407062

`lt[A259153(A233393(n+2)), A298746(2*(n+1))]`
-/

namespace A314613.P6221281948402407062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (A233393 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298746 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A314613.P6221281948402407062

/-!
# A314614: Coordination sequence Gal.5.35.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314614, there is no canonical definition to state claims against.
-/

/-! ## A314614.P4520564342304379369

`A111660(A314641(n)+A314607(n))`
-/

namespace A314614.P4520564342304379369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A314641 n + A314607 n).toNat

end

end A314614.P4520564342304379369

/-! ## A314614.P8188613772469078798

`eq[A014963(A119502(n)), A193307(n)]`
-/

namespace A314614.P8188613772469078798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A119502 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314614.P8188613772469078798

/-! ## A314614.P11165226557117196077

`A072152(n)+record[A001222(A299281(n))]`
-/

namespace A314614.P11165226557117196077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A299281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072152 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314614.P11165226557117196077

/-! ## A314614.P15858669643569534738

`xor(A000122(A004098(n)), A325417(2*(n+1)))`
-/

namespace A314614.P15858669643569534738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000122 (A004098 n).toNat) (A325417 (2 * (n + 1)))

end

end A314614.P15858669643569534738

/-! ## A314614.P5686894400019410722

`A325417(2*(n+1))-A000122(A002854(n+1))`
-/

namespace A314614.P5686894400019410722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325417 (2 * (n + 1)) - A000122 (A002854 (n + 1)).toNat

end

end A314614.P5686894400019410722

/-!
# A314615: Coordination sequence Gal.6.12.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314615, there is no canonical definition to state claims against.
-/

/-! ## A314615.P810558869994104992

`A001221(6*n+1)+∑[A175064(n²+1)]+n`
-/

namespace A314615.P810558869994104992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175064 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (6 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A314615.P810558869994104992

/-! ## A314615.P4978190130001330373

`A225654(n)+∑[A249061(A014210(n))]`
-/

namespace A314615.P4978190130001330373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (A014210 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314615.P4978190130001330373

/-! ## A314615.P4520074265630854111

`A246102(3*n+1)+A071625(A173380(n))`
-/

namespace A314615.P4520074265630854111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246102 (3 * n + 1) + A071625 (A173380 n).toNat

end

end A314615.P4520074265630854111

/-!
# A314616: Coordination sequence Gal.5.21.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314616, there is no canonical definition to state claims against.
-/

/-! ## A314616.P7148871114419437013

`eq[0, A058176(n)]+2*n`
-/

namespace A314616.P7148871114419437013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 * n

end

end A314616.P7148871114419437013

/-! ## A314616.P11826394140126899520

`A056962(n)+eq[0, A058176(n)]+n`
-/

namespace A314616.P11826394140126899520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n : ℤ)

end

end A314616.P11826394140126899520

/-! ## A314616.P11501207354227011667

`A302026(n+1)+eq[0, A058176(n)]+n-1`
-/

namespace A314616.P11501207354227011667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1) + ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + ((n : ℤ) - 1))

end

end A314616.P11501207354227011667

/-!
# A314617: Coordination sequence Gal.4.13.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314617, there is no canonical definition to state claims against.
-/

/-! ## A314617.P17736828574015557353

`A315954(n)-A134667(n)`
-/

namespace A314617.P17736828574015557353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315954 n - A134667 n

end

end A314617.P17736828574015557353

/-! ## A314617.P7181764497835191465

`2*A313524(n)-A219529(n)`
-/

namespace A314617.P7181764497835191465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313524 n - A219529 n

end

end A314617.P7181764497835191465

/-! ## A314617.P8887800028092277765

`A219529(n)-A005843(A219529(n)-A313524(n))`
-/

namespace A314617.P8887800028092277765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A005843 (A219529 n - A313524 n).toNat

end

end A314617.P8887800028092277765

/-! ## A314617.P7253535296922133762

`A005843(A313524(n))-A219529(n)`
-/

namespace A314617.P7253535296922133762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313524 n).toNat - A219529 n

end

end A314617.P7253535296922133762

/-! ## A314617.P6834814147489237271

`A314389(n)+A037817(A001731(n))`
-/

namespace A314617.P6834814147489237271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314389 n + A037817 (A001731 n).toNat

end

end A314617.P6834814147489237271

/-!
# A314618: Coordination sequence Gal.6.80.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314618, there is no canonical definition to state claims against.
-/

/-! ## A314618.P6667616227830428494

`A250120(n)-A036459(A000707(n+1))`
-/

namespace A314618.P6667616227830428494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A036459 (A000707 (n + 1)).toNat

end

end A314618.P6667616227830428494

/-!
# A314619: Coordination sequence Gal.6.65.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314619, there is no canonical definition to state claims against.
-/

/-! ## A314619.P12859812122980920777

`eq[A079688(A107876(n)), A196020(n+5)]`
-/

namespace A314619.P12859812122980920777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079688 (A107876 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314619.P12859812122980920777

/-!
# A314620: Coordination sequence Gal.6.62.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314620, there is no canonical definition to state claims against.
-/

/-! ## A314620.P11842916337760470833

`xor(A060128(A002450(n)), A311893(n))`
-/

namespace A314620.P11842916337760470833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060128 (A002450 n).toNat) (A311893 n)

end

end A314620.P11842916337760470833

/-!
# A314621: Coordination sequence Gal.6.457.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314621, there is no canonical definition to state claims against.
-/

/-! ## A314621.P7433803092568450156

`or(A035193(A007716(n)), A311410(n))`
-/

namespace A314621.P7433803092568450156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035193 (A007716 n).toNat) (A311410 n)

end

end A314621.P7433803092568450156

/-! ## A314621.P6546975340219644767

`A339164(n)+A005229(A346123(3*n+1))`
-/

namespace A314621.P6546975340219644767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339164 n + A005229 (A346123 (3 * n + 1)).toNat

end

end A314621.P6546975340219644767

/-! ## A314621.P2320267985185016975

`A154315(A032559(n+1))+A002264(∑[n])`
-/

namespace A314621.P2320267985185016975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154315 (A032559 (n + 1)).toNat + A002264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A314621.P2320267985185016975

/-! ## A314621.P7331421016070750431

`A242771(n+1)+A070939(A033431(2*n))`
-/

namespace A314621.P7331421016070750431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242771 (n + 1) + A070939 (A033431 (2 * n)).toNat

end

end A314621.P7331421016070750431

/-! ## A314621.P13731174060229321565

`A049093(3*n+1)+A049085(A049083(n))`
-/

namespace A314621.P13731174060229321565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (3 * n + 1) + A049085 (A049083 n).toNat

end

end A314621.P13731174060229321565

/-!
# A314622: Coordination sequence Gal.5.12.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314622, there is no canonical definition to state claims against.
-/

/-! ## A314622.P3282519284701662759

`or(A010060(A214843(n+1)), A311230(n))`
-/

namespace A314622.P3282519284701662759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A214843 (n + 1)).toNat) (A311230 n)

end

end A314622.P3282519284701662759

/-! ## A314622.P5483608783085328886

`xor(A188260(A085396(n+1)), A311312(n))`
-/

namespace A314622.P5483608783085328886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A188260 (A085396 (n + 1)).toNat) (A311312 n)

end

end A314622.P5483608783085328886

/-! ## A314622.P5977463157668114208

`xor(A123506(A227549(n+1)+2), A311312(n))`
-/

namespace A314622.P5977463157668114208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123506 (A227549 (n + 1) + 2).toNat) (A311312 n)

end

end A314622.P5977463157668114208

/-! ## A314622.P16817301165674220719

`A312861(n)+A008683(A010904(n))`
-/

namespace A314622.P16817301165674220719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312861 n + A008683 (A010904 n).toNat

end

end A314622.P16817301165674220719

/-! ## A314622.P17231579553805128710

`A265640(3*n+1)+A232990(A029967(2*(n+1)))`
-/

namespace A314622.P17231579553805128710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (3 * n + 1) + A232990 (A029967 (2 * (n + 1))).toNat

end

end A314622.P17231579553805128710

/-!
# A314623: Coordination sequence Gal.6.497.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314623, there is no canonical definition to state claims against.
-/

/-! ## A314623.P17133914188616134219

`A072154(A050731(n))`
-/

namespace A314623.P17133914188616134219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A050731 n).toNat

end

end A314623.P17133914188616134219

/-! ## A314623.P16763448360160059312

`A349294(A008574(n))+n²%3`
-/

namespace A314623.P16763448360160059312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A008574 n).toNat + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A314623.P16763448360160059312

/-! ## A314623.P17008429279309080490

`A349294(A008574(n))+A128834(n)²`
-/

namespace A314623.P17008429279309080490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A008574 n).toNat + A128834 n ^ 2

end

end A314623.P17008429279309080490

/-! ## A314623.P16428788330469553051

`A349294(A008574(n))+Δ[A004523(n)]`
-/

namespace A314623.P16428788330469553051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A008574 n).toNat + (f1 (n + 1) - f1 n)

end

end A314623.P16428788330469553051

/-! ## A314623.P15560896791479081464

`A160755(or(A008574(n), A208757(n+1)))`
-/

namespace A314623.P15560896791479081464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.lor (A008574 n) (A208757 (n + 1))).toNat

end

end A314623.P15560896791479081464

/-!
# A314624: Coordination sequence Gal.5.211.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314624, there is no canonical definition to state claims against.
-/

/-! ## A314624.P2293914354122076275

`xor(A209229(A036289(n)), A311265(n))`
-/

namespace A314624.P2293914354122076275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A209229 (A036289 n).toNat) (A311265 n)

end

end A314624.P2293914354122076275

/-! ## A314624.P11301712627573612110

`A311405(n)+A168181(A177755(n+1))`
-/

namespace A314624.P11301712627573612110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311405 n + A168181 (A177755 (n + 1)).toNat

end

end A314624.P11301712627573612110

/-! ## A314624.P8210252213807530201

`A313561(n)-A001221(A163087(n))`
-/

namespace A314624.P8210252213807530201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n - A001221 (A163087 n).toNat

end

end A314624.P8210252213807530201

/-! ## A314624.P2194739547237445152

`A204437(n+1)+A160755(A311475(n))`
-/

namespace A314624.P2194739547237445152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204437 (n + 1) + A160755 (A311475 n).toNat

end

end A314624.P2194739547237445152

/-! ## A314624.P14118092929911974247

`A073571(3*n+1)-A000007(A036464(n+2))`
-/

namespace A314624.P14118092929911974247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (3 * n + 1) - A000007 (A036464 (n + 2)).toNat

end

end A314624.P14118092929911974247

/-!
# A314625: Coordination sequence Gal.5.285.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314625, there is no canonical definition to state claims against.
-/

/-! ## A314625.P9818336741086966731

`∑[A065373(eq[3, A219175(n+1)]²)+2]-2`
-/

namespace A314625.P9818336741086966731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219175 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065373 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n ^ 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A314625.P9818336741086966731

/-! ## A314625.P12232088123113497097

`xor(A007814(floor(18^(n/3))), A311882(n))`
-/

namespace A314625.P12232088123113497097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 ⌊(18 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋.toNat) (A311882 n)

end

end A314625.P12232088123113497097

/-! ## A314625.P12524494745357283254

`A311176(n)+A023532(A054841(n+1))`
-/

namespace A314625.P12524494745357283254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311176 n + A023532 (A054841 (n + 1)).toNat

end

end A314625.P12524494745357283254

/-! ## A314625.P11628554649310968825

`A311176(A087051(n))+A049240(n+1)`
-/

namespace A314625.P11628554649310968825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311176 (A087051 n).toNat + A049240 (n + 1)

end

end A314625.P11628554649310968825

/-! ## A314625.P11617360450994341402

`A322389(A311408(2*(n+1)))+A311417(n)`
-/

namespace A314625.P11617360450994341402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (A311408 (2 * (n + 1))).toNat + A311417 n

end

end A314625.P11617360450994341402

/-!
# A314626: Coordination sequence Gal.6.80.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314626, there is no canonical definition to state claims against.
-/

/-! ## A314626.P4895378435223114454

`xor(A284905(A038329(n)), A311717(n))`
-/

namespace A314626.P4895378435223114454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284905 (A038329 n).toNat) (A311717 n)

end

end A314626.P4895378435223114454

/-! ## A314626.P8444310397174923113

`xor(A285249(A271896(n)), A311717(n))`
-/

namespace A314626.P8444310397174923113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A285249 (A271896 n).toNat) (A311717 n)

end

end A314626.P8444310397174923113

/-! ## A314626.P17222142513789757680

`A342515(8*n+1)-char[3]`
-/

namespace A314626.P17222142513789757680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (8 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A314626.P17222142513789757680

/-! ## A314626.P17916879432298167511

`floor(log2(∑{digits}[n, 10^#]*A334601(2*(n+1))))`
-/

namespace A314626.P17916879432298167511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) * A334601 (2 * (n + 1))).toNat

end

end A314626.P17916879432298167511

/-! ## A314626.P4447246104350814510

`record[xor(3, n)]-A187038(A000988(n))`
-/

namespace A314626.P4447246104350814510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A187038 (A000988 n).toNat

end

end A314626.P4447246104350814510

/-!
# A314627: Coordination sequence Gal.5.11.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314627, there is no canonical definition to state claims against.
-/

/-! ## A314627.P6612840845729489544

`∑[A057514(A003946(n))]+n`
-/

namespace A314627.P6612840845729489544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057514 (A003946 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A314627.P6612840845729489544

/-! ## A314627.P15606533891365542424

`A000720(A319242(∑[n+2]-1))`
-/

namespace A314627.P15606533891365542424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A319242 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A314627.P15606533891365542424

/-! ## A314627.P15699252148033254521

`∑[A005811(∑[A071817(3*n+2)])]`
-/

namespace A314627.P15699252148033254521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071817 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314627.P15699252148033254521

/-!
# A314628: Coordination sequence Gal.6.62.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314628, there is no canonical definition to state claims against.
-/

/-! ## A314628.P9762688398819314451

`A314626(n)+A275962(A196265(n+1))`
-/

namespace A314628.P9762688398819314451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314626 n + A275962 (A196265 (n + 1)).toNat

end

end A314628.P9762688398819314451

/-! ## A314628.P8786679264291562614

`or(A022167(A276142(n+1)), A311453(n))`
-/

namespace A314628.P8786679264291562614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022167 (A276142 (n + 1)).toNat) (A311453 n)

end

end A314628.P8786679264291562614

/-! ## A314628.P16672217534654455457

`A285872(A005117(n+1))+A055570(3*n)`
-/

namespace A314628.P16672217534654455457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285872 (A005117 (n + 1)).toNat + A055570 (3 * n)

end

end A314628.P16672217534654455457

/-! ## A314628.P5646251406227966345

`A250120(n)-A037882(A355065(3*n+1))`
-/

namespace A314628.P5646251406227966345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A037882 (A355065 (3 * n + 1)).toNat

end

end A314628.P5646251406227966345

/-! ## A314628.P14280048555253998271

`A325366(3*n+2)-A163109(A125655(n))`
-/

namespace A314628.P14280048555253998271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325366 (3 * n + 2) - A163109 (A125655 n).toNat

end

end A314628.P14280048555253998271

/-!
# A314629: Coordination sequence Gal.6.468.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314629, there is no canonical definition to state claims against.
-/

/-! ## A314629.P17706976863361071060

`A311528(n)+A059841(A005207(n+1))`
-/

namespace A314629.P17706976863361071060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311528 n + A059841 (A005207 (n + 1)).toNat

end

end A314629.P17706976863361071060

/-! ## A314629.P7636873751158031864

`or(4*n, A348481(A348483(n+1)))`
-/

namespace A314629.P7636873751158031864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * n : ℤ) (A348481 (A348483 (n + 1)).toNat)

end

end A314629.P7636873751158031864

/-! ## A314629.P11862713503478435185

`or(4*n, A220451(A048601(n+2)))`
-/

namespace A314629.P11862713503478435185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * n : ℤ) (A220451 (A048601 (n + 2)).toNat)

end

end A314629.P11862713503478435185

/-! ## A314629.P17570073098354959361

`A374633(3*(n+1))-A131879(A374686(n))`
-/

namespace A314629.P17570073098354959361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (3 * (n + 1)) - A131879 (A374686 n).toNat

end

end A314629.P17570073098354959361

/-!
# A314630: Coordination sequence Gal.5.29.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314630, there is no canonical definition to state claims against.
-/

/-! ## A314630.P1235658769319210690

`A324701(A348385(∑[n+3]-2))`
-/

namespace A314630.P1235658769319210690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A348385 (∑ j ∈ Finset.range (n + 1), f1 j - 2)).toNat

end

end A314630.P1235658769319210690

/-! ## A314630.P5876217961388605263

`A195017(A052539(n))+A008586(n)`
-/

namespace A314630.P5876217961388605263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A052539 n).toNat + A008586 n

end

end A314630.P5876217961388605263

/-! ## A314630.P3610167015875789945

`A195017(A083318(2*n))+A008574(n)`
-/

namespace A314630.P3610167015875789945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A083318 (2 * n)).toNat + A008574 n

end

end A314630.P3610167015875789945

/-! ## A314630.P1335642444257411230

`A005117(3*n+2)-A200651(A240978(n))`
-/

namespace A314630.P1335642444257411230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A200651 (A240978 n).toNat

end

end A314630.P1335642444257411230

/-!
# A314631: Coordination sequence Gal.6.63.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314631, there is no canonical definition to state claims against.
-/

/-! ## A314631.P14810924479491424806

`A313594(n)-A001221(A130275(n))`
-/

namespace A314631.P14810924479491424806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313594 n - A001221 (A130275 n).toNat

end

end A314631.P14810924479491424806

/-! ## A314631.P5781674372301199906

`or(A008574(n), A265332(A148860(n)))`
-/

namespace A314631.P5781674372301199906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A265332 (A148860 n).toNat)

end

end A314631.P5781674372301199906

/-! ## A314631.P2710085228006757811

`A301730(n)-A211159(A002426(n+2))`
-/

namespace A314631.P2710085228006757811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - A211159 (A002426 (n + 2)).toNat

end

end A314631.P2710085228006757811

/-! ## A314631.P11104190683185718670

`A158614(3*(n+1))-A060130(A133577(n))`
-/

namespace A314631.P11104190683185718670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158614 (3 * (n + 1)) - A060130 (A133577 n).toNat

end

end A314631.P11104190683185718670

/-! ## A314631.P15016066219449334392

`A020900(3*n+1)-A138011(A213427(n+1))`
-/

namespace A314631.P15016066219449334392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (3 * n + 1) - A138011 (A213427 (n + 1)).toNat

end

end A314631.P15016066219449334392

/-!
# A314632: Coordination sequence Gal.5.146.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314632, there is no canonical definition to state claims against.
-/

/-! ## A314632.P3523504911809730502

`A314964(n)-A080791(A088218(n))`
-/

namespace A314632.P3523504911809730502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314964 n - A080791 (A088218 n).toNat

end

end A314632.P3523504911809730502

/-! ## A314632.P8660014543911710454

`A190707(n+1)-A010054(A291257(n))`
-/

namespace A314632.P8660014543911710454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190707 (n + 1) - A010054 (A291257 n).toNat

end

end A314632.P8660014543911710454

/-! ## A314632.P4695777278854732418

`A190707(n+1)-A341540(A002817(n))`
-/

namespace A314632.P4695777278854732418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190707 (n + 1) - A341540 (A002817 n).toNat

end

end A314632.P4695777278854732418

/-! ## A314632.P3928398081863576507

`A314736(n)-A005091(A026070(n+3))`
-/

namespace A314632.P3928398081863576507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n - A005091 (A026070 (n + 3)).toNat

end

end A314632.P3928398081863576507

/-! ## A314632.P15686343290880317836

`A301688(n)+A007814(A077482(n+7))`
-/

namespace A314632.P15686343290880317836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n + A007814 (A077482 (n + 7)).toNat

end

end A314632.P15686343290880317836

/-!
# A314634: Coordination sequence Gal.4.6.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314634, there is no canonical definition to state claims against.
-/

/-! ## A314634.P17100210652179345647

`record[and(xor(2, n)+1, A032555(n+1))]`
-/

namespace A314634.P17100210652179345647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.xor 2 n + 1 : ℤ) (A032555 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314634.P17100210652179345647

/-! ## A314634.P1885007155556123297

`record[A313434(n)-A382078(n)]`
-/

namespace A314634.P1885007155556123297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313434 n - A382078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314634.P1885007155556123297

/-! ## A314634.P12269318710333690668

`record[and(A032555(n+1), A256008(n+1))]`
-/

namespace A314634.P12269318710333690668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032555 (n + 1)) (A256008 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314634.P12269318710333690668

/-! ## A314634.P5305530103510719240

`A313604(n)-A001221(A177526(n))`
-/

namespace A314634.P5305530103510719240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313604 n - A001221 (A177526 n).toNat

end

end A314634.P5305530103510719240

/-! ## A314634.P1813867041906759881

`xor(A001221(A000302(n)), A312170(n))`
-/

namespace A314634.P1813867041906759881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A000302 n).toNat) (A312170 n)

end

end A314634.P1813867041906759881

/-!
# A314636: Coordination sequence Gal.6.24.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314636, there is no canonical definition to state claims against.
-/

/-! ## A314636.P15054034577049164279

`A351870(A281746(2*n+1)^A055640(n))`
-/

namespace A314636.P15054034577049164279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (SequenceMachineLib.roundAway ((A281746 (2 * n + 1) : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A314636.P15054034577049164279

/-! ## A314636.P949342380612390928

`A311414(n)+A057427(A107876(3*n+4)-1)`
-/

namespace A314636.P949342380612390928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311414 n + A057427 (A107876 (3 * n + 4) - 1).toNat

end

end A314636.P949342380612390928

/-! ## A314636.P586772232905819547

`or(A145649(A089474(3*n)), A281746(2*n+1))`
-/

namespace A314636.P586772232905819547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A145649 (A089474 (3 * n)).toNat) (A281746 (2 * n + 1))

end

end A314636.P586772232905819547

/-! ## A314636.P11054167895484165475

`A288480(A288474(n+1))-A288478(A288476(n))`
-/

namespace A314636.P11054167895484165475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288480 (A288474 (n + 1)).toNat - A288478 (A288476 n).toNat

end

end A314636.P11054167895484165475

/-! ## A314636.P5971638176540544638

`A311415(n^A109014(n))+A124761(A250120(n))`
-/

namespace A314636.P5971638176540544638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311415 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A109014 n : ℤ))).toNat + A124761 (A250120 n).toNat

end

end A314636.P5971638176540544638

/-!
# A314637: Coordination sequence Gal.6.518.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314637, there is no canonical definition to state claims against.
-/

/-! ## A314637.P6760335073074326466

`A004957(n)+record[A330894(n+1)]`
-/

namespace A314637.P6760335073074326466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314637.P6760335073074326466

/-! ## A314637.P5304934412664256884

`A000120(A007016(n))+or(1, 3*n)+n`
-/

namespace A314637.P5304934412664256884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A007016 n).toNat + (Nat.lor 1 (3 * n) + n : ℤ)

end

end A314637.P5304934412664256884

/-! ## A314637.P8274725972125092355

`A315272(n)-A001222(A026887(n))`
-/

namespace A314637.P8274725972125092355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315272 n - A001222 (A026887 n).toNat

end

end A314637.P8274725972125092355

/-! ## A314637.P14663145102516708377

`A316569(A030098(n+1))+A106633(n)`
-/

namespace A314637.P14663145102516708377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 (A030098 (n + 1)).toNat + A106633 n

end

end A314637.P14663145102516708377

/-! ## A314637.P16011132682641718482

`A287243(n+1)+A138270(A056325(n))`
-/

namespace A314637.P16011132682641718482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287243 (n + 1) + A138270 (A056325 n).toNat

end

end A314637.P16011132682641718482

/-!
# A314638: Coordination sequence Gal.6.458.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314638, there is no canonical definition to state claims against.
-/

/-! ## A314638.P7440404404590562780

`A331935(2*n+1)+A325660(A114538(n+2))`
-/

namespace A314638.P7440404404590562780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (2 * n + 1) + A325660 (A114538 (n + 2)).toNat

end

end A314638.P7440404404590562780

/-! ## A314638.P770216146721129808

`A253620(n+1)+A000005(A252755(n))`
-/

namespace A314638.P770216146721129808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253620 (n + 1) + A000005 (A252755 n).toNat

end

end A314638.P770216146721129808

/-! ## A314638.P5440576930031543434

`A030300(A200748(3*n+2))+A002202(2*n+1)`
-/

namespace A314638.P5440576930031543434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (A200748 (3 * n + 2)).toNat + A002202 (2 * n + 1)

end

end A314638.P5440576930031543434

/-! ## A314638.P15217851586637814990

`A116178(A173729(2*(n+3)))+A002174(2*n+1)`
-/

namespace A314638.P15217851586637814990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 (A173729 (2 * (n + 3))).toNat + A002174 (2 * n + 1)

end

end A314638.P15217851586637814990

/-! ## A314638.P15224257405497932834

`A030302(A279375(3*n+4))+A002202(2*n+1)`
-/

namespace A314638.P15224257405497932834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A279375 (3 * n + 4)).toNat + A002202 (2 * n + 1)

end

end A314638.P15224257405497932834

/-!
# A314639: Coordination sequence Gal.5.194.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314639, there is no canonical definition to state claims against.
-/

/-! ## A314639.P16697906911672199245

`record[A314640(n)-A331575(n)]`
-/

namespace A314639.P16697906911672199245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314640 n - A331575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314639.P16697906911672199245

/-! ## A314639.P9974562513834520924

`A315213(n)-A001221(A001077(n))`
-/

namespace A314639.P9974562513834520924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n - A001221 (A001077 n).toNat

end

end A314639.P9974562513834520924

/-! ## A314639.P15206863233971561067

`A314640(n)-A185284(A000124(n))`
-/

namespace A314639.P15206863233971561067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314640 n - A185284 (A000124 n).toNat

end

end A314639.P15206863233971561067

/-! ## A314639.P8766863505010123930

`A314640(n)-A185284(A016825(n))`
-/

namespace A314639.P8766863505010123930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314640 n - A185284 (A016825 n).toNat

end

end A314639.P8766863505010123930

/-! ## A314639.P13322318541731310067

`A376652(n+1)-A157305(A309466(n))`
-/

namespace A314639.P13322318541731310067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376652 (n + 1) - A157305 (A309466 n).toNat

end

end A314639.P13322318541731310067

/-!
# A314640: Coordination sequence Gal.5.195.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314640, there is no canonical definition to state claims against.
-/

/-! ## A314640.P9984330808778789819

`A314639(n)+A178798(A055999(n))`
-/

namespace A314640.P9984330808778789819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314639 n + A178798 (A055999 n).toNat

end

end A314640.P9984330808778789819

/-! ## A314640.P2622516110323251333

`A314639(n)+A185284(A000124(n))`
-/

namespace A314640.P2622516110323251333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314639 n + A185284 (A000124 n).toNat

end

end A314640.P2622516110323251333

/-! ## A314640.P8024185498771040473

`A314639(n)+A194801(A000389(n))`
-/

namespace A314640.P8024185498771040473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314639 n + A194801 (A000389 n).toNat

end

end A314640.P8024185498771040473

/-! ## A314640.P6858168857769902529

`A314639(n)-A178798(A133476(n))`
-/

namespace A314640.P6858168857769902529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314639 n - A178798 (A133476 n).toNat

end

end A314640.P6858168857769902529

/-!
# A314642: Coordination sequence Gal.6.460.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314642, there is no canonical definition to state claims against.
-/

/-! ## A314642.P9381698765868064810

`xor(A297155(A155069(n)), A314720(n))`
-/

namespace A314642.P9381698765868064810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297155 (A155069 n).toNat) (A314720 n)

end

end A314642.P9381698765868064810

/-! ## A314642.P6425640461865454017

`xor(A001222(A074048(2*n+1)), A312100(n))`
-/

namespace A314642.P6425640461865454017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A074048 (2 * n + 1)).toNat) (A312100 n)

end

end A314642.P6425640461865454017

/-! ## A314642.P9867737190877081607

`A309981(A006450(n+1))+A295235(3*n+1)`
-/

namespace A314642.P9867737190877081607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309981 (A006450 (n + 1)).toNat + A295235 (3 * n + 1)

end

end A314642.P9867737190877081607

/-!
# A314643: Coordination sequence Gal.6.77.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314643, there is no canonical definition to state claims against.
-/

/-! ## A314643.P13538595147575198349

`A314762(n)-A102683(A160747(n))`
-/

namespace A314643.P13538595147575198349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314762 n - A102683 (A160747 n).toNat

end

end A314643.P13538595147575198349

/-! ## A314643.P35403222137293449

`A314758(n)+A016340(A081848(n+1))`
-/

namespace A314643.P35403222137293449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314758 n + A016340 (A081848 (n + 1)).toNat

end

end A314643.P35403222137293449

/-! ## A314643.P2693877579212076376

`A039956(n+1)-A082477(A149287(n))`
-/

namespace A314643.P2693877579212076376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) - A082477 (A149287 n).toNat

end

end A314643.P2693877579212076376

/-! ## A314643.P10260259130591629934

`A250120(n)-A249901(A000045(2*n+3))`
-/

namespace A314643.P10260259130591629934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A249901 (A000045 (2 * n + 3)).toNat

end

end A314643.P10260259130591629934

/-! ## A314643.P17569998662870009819

`A250120(n)-A288969(A008784(2*n+3))`
-/

namespace A314643.P17569998662870009819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A288969 (A008784 (2 * n + 3)).toNat

end

end A314643.P17569998662870009819

/-!
# A314645: Coordination sequence Gal.5.251.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314645, there is no canonical definition to state claims against.
-/

/-! ## A314645.P18152550113005751497

`A301678(n)-A037834(A000110(n))`
-/

namespace A314645.P18152550113005751497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A037834 (A000110 n).toNat

end

end A314645.P18152550113005751497

/-! ## A314645.P15995932872331506944

`A330709(A006093(n+1)*A307579(n+1))`
-/

namespace A314645.P15995932872331506944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A006093 (n + 1) * A307579 (n + 1)).toNat

end

end A314645.P15995932872331506944

/-! ## A314645.P7344457826303860384

`eq[A033537(A221275(n+1)), A240669(n+1)]`
-/

namespace A314645.P7344457826303860384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033537 (A221275 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314645.P7344457826303860384

/-! ## A314645.P13681030712707766724

`A221474(A038889(n+1))+A074286(3*n+2)`
-/

namespace A314645.P13681030712707766724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221474 (A038889 (n + 1)).toNat + A074286 (3 * n + 2)

end

end A314645.P13681030712707766724

/-!
# A314646: Coordination sequence Gal.6.388.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314646, there is no canonical definition to state claims against.
-/

/-! ## A314646.P15834135605497316370

`3*A023416(A271216(n))+n+1-A185012(A109129(n+1))`
-/

namespace A314646.P15834135605497316370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023416 (A271216 n).toNat + (n + 1 : ℤ) - A185012 (A109129 (n + 1)).toNat

end

end A314646.P15834135605497316370

/-!
# A314653: Coordination sequence Gal.6.45.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314653, there is no canonical definition to state claims against.
-/

/-! ## A314653.P3009577532542867762

`A314800(n)-A288226(A000108(n))`
-/

namespace A314653.P3009577532542867762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314800 n - A288226 (A000108 n).toNat

end

end A314653.P3009577532542867762

/-! ## A314653.P1863167257080743255

`A315160(n)-A151909(A145457(n))`
-/

namespace A314653.P1863167257080743255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315160 n - A151909 (A145457 n).toNat

end

end A314653.P1863167257080743255

/-! ## A314653.P3287348002657961851

`∑[A034444(A048697(n))]`
-/

namespace A314653.P3287348002657961851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A048697 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314653.P3287348002657961851

/-! ## A314653.P9065675015515101732

`∑[A193432(∑[A174002(n)])]`
-/

namespace A314653.P9065675015515101732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314653.P9065675015515101732

/-! ## A314653.P9408186343141790526

`∑[A319696(A124804(n)+1)]`
-/

namespace A314653.P9408186343141790526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319696 (A124804 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314653.P9408186343141790526

/-!
# A314654: Coordination sequence Gal.4.131.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314654, there is no canonical definition to state claims against.
-/

/-! ## A314654.P13426622327186381926

`A267263(A221420(n+1))+A090955(n+1)`
-/

namespace A314654.P13426622327186381926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A221420 (n + 1)).toNat + A090955 (n + 1)

end

end A314654.P13426622327186381926

/-!
# A314655: Coordination sequence Gal.6.15.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314655, there is no canonical definition to state claims against.
-/

/-! ## A314655.P12572760928582332415

`A313461(n)-A004218(A215070(n+1))`
-/

namespace A314655.P12572760928582332415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313461 n - A004218 (A215070 (n + 1)).toNat

end

end A314655.P12572760928582332415

/-! ## A314655.P1438244817568558359

`eq[A035516(n), A141323(A141333(n+1))]`
-/

namespace A314655.P1438244817568558359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141323 (A141333 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314655.P1438244817568558359

/-! ## A314655.P4985243537131645471

`A014690(n+1)-A342932(A026905(n+1))`
-/

namespace A314655.P4985243537131645471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) - A342932 (A026905 (n + 1)).toNat

end

end A314655.P4985243537131645471

/-!
# A314656: Coordination sequence Gal.6.54.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314656, there is no canonical definition to state claims against.
-/

/-! ## A314656.P6116094779105248845

`A313384(n)-A010059(A002523(n))`
-/

namespace A314656.P6116094779105248845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313384 n - A010059 (A002523 n).toNat

end

end A314656.P6116094779105248845

/-! ## A314656.P17820258662462426102

`A072088(or(A312891(n), A348755(n+1)))`
-/

namespace A314656.P17820258662462426102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (Int.lor (A312891 n) (A348755 (n + 1))).toNat

end

end A314656.P17820258662462426102

/-! ## A314656.P15459647481844948168

`A314742(n)-A001222(A147374(2*n+1))`
-/

namespace A314656.P15459647481844948168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314742 n - A001222 (A147374 (2 * n + 1)).toNat

end

end A314656.P15459647481844948168

/-!
# A314657: Coordination sequence Gal.5.12.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314657, there is no canonical definition to state claims against.
-/

/-! ## A314657.P18279908217288968093

`A346132(A302696(2*(n+1))-1)`
-/

namespace A314657.P18279908217288968093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A302696 (2 * (n + 1)) - 1).toNat

end

end A314657.P18279908217288968093

/-! ## A314657.P17074205191289519538

`A314658(n)-A186734(A314622(2*n))`
-/

namespace A314657.P17074205191289519538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314658 n - A186734 (A314622 (2 * n)).toNat

end

end A314657.P17074205191289519538

/-! ## A314657.P13898857330920465789

`A022764(n+2)-A000034(A348632(2*n+1))-char[7]`
-/

namespace A314657.P13898857330920465789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022764 (n + 2) - A000034 (A348632 (2 * n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A314657.P13898857330920465789

/-! ## A314657.P14891905097577283671

`A301730(n)-A001221(A027137(n))`
-/

namespace A314657.P14891905097577283671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - A001221 (A027137 n).toNat

end

end A314657.P14891905097577283671

/-!
# A314658: Coordination sequence Gal.5.14.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314658, there is no canonical definition to state claims against.
-/

/-! ## A314658.P17297035738831103305

`A314657(n)+A186734(A314622(2*n))`
-/

namespace A314658.P17297035738831103305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314657 n + A186734 (A314622 (2 * n)).toNat

end

end A314658.P17297035738831103305

/-! ## A314658.P16643184373490036760

`A022764(n+2)-A000034(A348632(2*n+1))`
-/

namespace A314658.P16643184373490036760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022764 (n + 2) - A000034 (A348632 (2 * n + 1)).toNat

end

end A314658.P16643184373490036760

/-! ## A314658.P4150139403162491206

`A314657(n)+A185284(A312099(n))`
-/

namespace A314658.P4150139403162491206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314657 n + A185284 (A312099 n).toNat

end

end A314658.P4150139403162491206

/-!
# A314659: Coordination sequence Gal.6.89.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314659, there is no canonical definition to state claims against.
-/

/-! ## A314659.P1738443361192824728

`∑[A187141(or(2, A121718(n)))]`
-/

namespace A314659.P1738443361192824728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187141 (Int.lor 2 (A121718 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314659.P1738443361192824728

/-! ## A314659.P5603986614120506043

`∑[A324825(A104390(∑[2^n]))]`
-/

namespace A314659.P5603986614120506043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324825 (A104390 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314659.P5603986614120506043

/-! ## A314659.P17985419075194657894

`eq[p?[A165190(n)], A317954(n+1)]`
-/

namespace A314659.P17985419075194657894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A314659.P17985419075194657894

/-! ## A314659.P14734141892571555569

`eq[A073642(A029419(n))+1, A254990(n)]`
-/

namespace A314659.P14734141892571555569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A029419 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314659.P14734141892571555569

/-!
# A314660: Coordination sequence Gal.5.35.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314660, there is no canonical definition to state claims against.
-/

/-! ## A314660.P4694222254764655730

`A312873(n)+A179829(A007097(n))`
-/

namespace A314660.P4694222254764655730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312873 n + A179829 (A007097 n).toNat

end

end A314660.P4694222254764655730

/-! ## A314660.P17051477812819484036

`A312873(n)+A188398(A127389(n+4))`
-/

namespace A314660.P17051477812819484036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312873 n + A188398 (A127389 (n + 4)).toNat

end

end A314660.P17051477812819484036

/-! ## A314660.P12467249939095020185

`A016813(n)-A069283(A173940(n))`
-/

namespace A314660.P12467249939095020185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A069283 (A173940 n).toNat

end

end A314660.P12467249939095020185

/-! ## A314660.P4654921427383222250

`A179751(A005207(n+1))+A008585(n)`
-/

namespace A314660.P4654921427383222250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 (A005207 (n + 1)).toNat + A008585 n

end

end A314660.P4654921427383222250

/-! ## A314660.P2147861886584577084

`eq[A001511(n+1), A345225(A107876(n))]`
-/

namespace A314660.P2147861886584577084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345225 (A107876 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314660.P2147861886584577084

/-!
# A314661: Coordination sequence Gal.5.33.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314661, there is no canonical definition to state claims against.
-/

/-! ## A314661.P8158194593827974500

`record[A344646(8*n)+1-n]`
-/

namespace A314661.P8158194593827974500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (8 * n) + 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314661.P8158194593827974500

/-! ## A314661.P8749924801111586892

`A315295(n)-A000120(A094729(n))`
-/

namespace A314661.P8749924801111586892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315295 n - A000120 (A094729 n).toNat

end

end A314661.P8749924801111586892

/-! ## A314661.P16125587978995392753

`A016825(n)-A228100(A339771(n))`
-/

namespace A314661.P16125587978995392753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A228100 (A339771 n).toNat

end

end A314661.P16125587978995392753

/-! ## A314661.P1832430576108534301

`A111051(n+1)-A008683(A118589(n))`
-/

namespace A314661.P1832430576108534301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111051 (n + 1) - A008683 (A118589 n).toNat

end

end A314661.P1832430576108534301

/-!
# A314662: Coordination sequence Gal.6.74.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314662, there is no canonical definition to state claims against.
-/

/-! ## A314662.P13978406161480449705

`A250120(n)-A344788(A343398(n))`
-/

namespace A314662.P13978406161480449705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A344788 (A343398 n).toNat

end

end A314662.P13978406161480449705

/-! ## A314662.P15026391621309354215

`A312883(n)+A287773(A002774(n))`
-/

namespace A314662.P15026391621309354215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312883 n + A287773 (A002774 n).toNat

end

end A314662.P15026391621309354215

/-! ## A314662.P11302065833850761903

`A315187(n)-A230415(A005964(n+1))`
-/

namespace A314662.P11302065833850761903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - A230415 (A005964 (n + 1)).toNat

end

end A314662.P11302065833850761903

/-! ## A314662.P13474879024546001365

`A177152(n+1)-A325195(A260443(n))`
-/

namespace A314662.P13474879024546001365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177152 (n + 1) - A325195 (A260443 n).toNat

end

end A314662.P13474879024546001365

/-! ## A314662.P4094681650362832429

`or(A144384(A144378(n+1)), A311738(n))`
-/

namespace A314662.P4094681650362832429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144384 (A144378 (n + 1)).toNat) (A311738 n)

end

end A314662.P4094681650362832429

/-!
# A314663: Coordination sequence Gal.4.105.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314663, there is no canonical definition to state claims against.
-/

/-! ## A314663.P17571133660192773743

`A314423(n)+A118135(A314423(2*n+3))`
-/

namespace A314663.P17571133660192773743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314423 n + A118135 (A314423 (2 * n + 3)).toNat

end

end A314663.P17571133660192773743

/-! ## A314663.P9761634009775092670

`n-1+A297964(A128348(n+1))+A008586(n)`
-/

namespace A314663.P9761634009775092670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A297964 (A128348 (n + 1)).toNat + A008586 n)

end

end A314663.P9761634009775092670

/-! ## A314663.P4074709027789105752

`A313831(n)-A001222(A155866(n)-A001222(n+1))`
-/

namespace A314663.P4074709027789105752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - A001222 (A155866 n - A001222 (n + 1)).toNat

end

end A314663.P4074709027789105752

/-!
# A314664: Coordination sequence Gal.5.154.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314664, there is no canonical definition to state claims against.
-/

/-! ## A314664.P7069237684606621165

`A123731(A175595(n)+A055999(n))`
-/

namespace A314664.P7069237684606621165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A175595 n + A055999 n).toNat

end

end A314664.P7069237684606621165

/-! ## A314664.P7417404302618620363

`A153249(A052905(n)-A052509(n))`
-/

namespace A314664.P7417404302618620363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153249 (A052905 n - A052509 n).toNat

end

end A314664.P7417404302618620363

/-! ## A314664.P5783492120783669139

`A153249(A052905(n)-A193592(n))`
-/

namespace A314664.P5783492120783669139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153249 (A052905 n - A193592 n).toNat

end

end A314664.P5783492120783669139

/-! ## A314664.P3743569109137783147

`A278114(n+1)+A001222(A151059(n))`
-/

namespace A314664.P3743569109137783147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (n + 1) + A001222 (A151059 n).toNat

end

end A314664.P3743569109137783147

/-! ## A314664.P3601081916380764367

`eq[A001222(A314837(n)), A260897(n+1)]`
-/

namespace A314664.P3601081916380764367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A314837 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314664.P3601081916380764367

/-!
# A314665: Coordination sequence Gal.6.82.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314665, there is no canonical definition to state claims against.
-/

/-! ## A314665.P14731116133635537330

`record[A315475(n)-A024632(n)]`
-/

namespace A314665.P14731116133635537330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A024632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314665.P14731116133635537330

/-! ## A314665.P6574069179372168947

`A195098(A077168(3*n)+n)`
-/

namespace A314665.P6574069179372168947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A077168 (3 * n) + (n : ℤ)).toNat

end

end A314665.P6574069179372168947

/-! ## A314665.P6772897837156359818

`A104275(n+1)+A001222(n!)`
-/

namespace A314665.P6772897837156359818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) + A001222 (Nat.factorial n)

end

end A314665.P6772897837156359818

/-! ## A314665.P6702052643748280003

`A001222(n!)+A047845(n+1)+1`
-/

namespace A314665.P6702052643748280003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial n) + (A047845 (n + 1) + 1)

end

end A314665.P6702052643748280003

/-! ## A314665.P17854633905369805811

`A001222(n!)+A153043(n+1)-1`
-/

namespace A314665.P17854633905369805811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial n) + (A153043 (n + 1) - 1)

end

end A314665.P17854633905369805811

/-!
# A314666: Coordination sequence Gal.6.27.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314666, there is no canonical definition to state claims against.
-/

/-! ## A314666.P7532803966333919065

`xor(A052409(A033193(n)), A311272(n))`
-/

namespace A314666.P7532803966333919065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052409 (A033193 n).toNat) (A311272 n)

end

end A314666.P7532803966333919065

/-! ## A314666.P4087238853583233296

`A314689(n)-A025458(A004909(n+1))`
-/

namespace A314666.P4087238853583233296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314689 n - A025458 (A004909 (n + 1)).toNat

end

end A314666.P4087238853583233296

/-! ## A314666.P12892053834602455818

`xor(A178226(A168385(n+1)), A311272(n))`
-/

namespace A314666.P12892053834602455818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178226 (A168385 (n + 1)).toNat) (A311272 n)

end

end A314666.P12892053834602455818

/-! ## A314666.P6296033089906044554

`A122286(A065953(n))+4*n`
-/

namespace A314666.P6296033089906044554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122286 (A065953 n).toNat + (4 * n : ℤ)

end

end A314666.P6296033089906044554

/-! ## A314666.P16761666352976116369

`or(4*n, A124768(A001523(n)))`
-/

namespace A314666.P16761666352976116369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * n : ℤ) (A124768 (A001523 n).toNat)

end

end A314666.P16761666352976116369

/-!
# A314667: Coordination sequence Gal.6.29.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314667, there is no canonical definition to state claims against.
-/

/-! ## A314667.P5945084483496668734

`and(p?[A136252(n)], A314691(n))`
-/

namespace A314667.P5945084483496668734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A314691 n)

end

end A314667.P5945084483496668734

/-! ## A314667.P11695958689972539

`A055570(3*n)+A051125(A288341(n))`
-/

namespace A314667.P11695958689972539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (3 * n) + A051125 (A288341 n).toNat

end

end A314667.P11695958689972539

/-! ## A314667.P1682063810455102703

`and(A016813(A166118(n+1)), A314691(n))`
-/

namespace A314667.P1682063810455102703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016813 (A166118 (n + 1)).toNat) (A314691 n)

end

end A314667.P1682063810455102703

/-!
# A314668: Coordination sequence Gal.6.115.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314668, the canonical program `A314668.P7034939924142127577` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314668 has offset 0).

The definition of A314668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314668.P7034939924142127577

`A008458(n)+A008576(n)-A312101(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314668

/-- `A008458(n)+A008576(n)-A312101(n)` -/
def P7034939924142127577.Spec : Prop :=
  ∀ n, P7034939924142127577.a n = A314668 n

theorem P7034939924142127577.correct : P7034939924142127577.Spec := by
  intro n
  simp only [A314668]

end A314668

/-! ## A314668.P3975747021035739462

`abs(A008592(n)-(A313117(n)+n))`
-/

namespace A314668.P3975747021035739462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313117 n + (n : ℤ))|

end

end A314668.P3975747021035739462

namespace A314668

/-- `abs(A008592(n)-(A313117(n)+n))` -/
def P3975747021035739462.Spec : Prop :=
  ∀ n, P3975747021035739462.a n = A314668 n

end A314668

/-! ## A314668.P12135106061540872600

`A008458(n)+A008486(n)-A313117(n)`
-/

namespace A314668.P12135106061540872600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313117 n)

end

end A314668.P12135106061540872600

namespace A314668

/-- `A008458(n)+A008486(n)-A313117(n)` -/
def P12135106061540872600.Spec : Prop :=
  ∀ n, P12135106061540872600.a n = A314668 n

end A314668

/-! ## A314668.P13335030533197207078

`A004525(n)+A313684(n)-n`
-/

namespace A314668.P13335030533197207078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313684 n - (n : ℤ))

end

end A314668.P13335030533197207078

namespace A314668

/-- `A004525(n)+A313684(n)-n` -/
def P13335030533197207078.Spec : Prop :=
  ∀ n, P13335030533197207078.a n = A314668 n

end A314668

/-! ## A314668.P15449649304999493482

`A128834(n)+A313912(n)-n`
-/

namespace A314668.P15449649304999493482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313912 n - (n : ℤ))

end

end A314668.P15449649304999493482

namespace A314668

/-- `A128834(n)+A313912(n)-n` -/
def P15449649304999493482.Spec : Prop :=
  ∀ n, P15449649304999493482.a n = A314668 n

end A314668

/-! ## A314668.P17091191911415620300

`A315467(n)-n`
-/

namespace A314668.P17091191911415620300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315467 n - (n : ℤ)

end

end A314668.P17091191911415620300

namespace A314668

/-- `A315467(n)-n` -/
def P17091191911415620300.Spec : Prop :=
  ∀ n, P17091191911415620300.a n = A314668 n

end A314668

/-! ## A314668.P5972511621745401276

`A004525(A313474(n))+2*n`
-/

namespace A314668.P5972511621745401276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313474 n).toNat + (2 * n : ℤ)

end

end A314668.P5972511621745401276

namespace A314668

/-- `A004525(A313474(n))+2*n` -/
def P5972511621745401276.Spec : Prop :=
  ∀ n, P5972511621745401276.a n = A314668 n

end A314668

/-! ## A314668.P6773068933894773378

`A004525(A314677(n))+2*n`
-/

namespace A314668.P6773068933894773378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314677 n).toNat + (2 * n : ℤ)

end

end A314668.P6773068933894773378

namespace A314668

/-- `A004525(A314677(n))+2*n` -/
def P6773068933894773378.Spec : Prop :=
  ∀ n, P6773068933894773378.a n = A314668 n

end A314668

/-! ## A314668.P11453624821169648573

`A004525(A314683(n))+2*n`
-/

namespace A314668.P11453624821169648573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314683 n).toNat + (2 * n : ℤ)

end

end A314668.P11453624821169648573

namespace A314668

/-- `A004525(A314683(n))+2*n` -/
def P11453624821169648573.Spec : Prop :=
  ∀ n, P11453624821169648573.a n = A314668 n

end A314668

/-! ## A314668.P1194407570721544954

`A004525(A314706(n))+2*n`
-/

namespace A314668.P1194407570721544954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314706 n).toNat + (2 * n : ℤ)

end

end A314668.P1194407570721544954

namespace A314668

/-- `A004525(A314706(n))+2*n` -/
def P1194407570721544954.Spec : Prop :=
  ∀ n, P1194407570721544954.a n = A314668 n

end A314668

/-! ## A314668.P3022909790624890560

`A315689(n)-A042965(n+1)`
-/

namespace A314668.P3022909790624890560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315689 n - A042965 (n + 1)

end

end A314668.P3022909790624890560

namespace A314668

/-- `A315689(n)-A042965(n+1)` -/
def P3022909790624890560.Spec : Prop :=
  ∀ n, P3022909790624890560.a n = A314668 n

end A314668

/-! ## A314668.P5027585988076989700

`A008576(n)+A315689(n)-A008574(n)`
-/

namespace A314668.P5027585988076989700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315689 n - A008574 n)

end

end A314668.P5027585988076989700

namespace A314668

/-- `A008576(n)+A315689(n)-A008574(n)` -/
def P5027585988076989700.Spec : Prop :=
  ∀ n, P5027585988076989700.a n = A314668 n

end A314668

/-! ## A314668.P1889087903998897780

`A315744(n)-A047273(n+1)`
-/

namespace A314668.P1889087903998897780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315744 n - A047273 (n + 1)

end

end A314668.P1889087903998897780

namespace A314668

/-- `A315744(n)-A047273(n+1)` -/
def P1889087903998897780.Spec : Prop :=
  ∀ n, P1889087903998897780.a n = A314668 n

end A314668

/-! ## A314668.P17733585270169187855

`abs(A008593(n)-(A314254(n)+n))`
-/

namespace A314668.P17733585270169187855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A314254 n + (n : ℤ))|

end

end A314668.P17733585270169187855

namespace A314668

/-- `abs(A008593(n)-(A314254(n)+n))` -/
def P17733585270169187855.Spec : Prop :=
  ∀ n, P17733585270169187855.a n = A314668 n

end A314668

/-! ## A314668.P13565568684106655974

`A008458(n)+A008574(n)-A314254(n)`
-/

namespace A314668.P13565568684106655974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314254 n)

end

end A314668.P13565568684106655974

namespace A314668

/-- `A008458(n)+A008574(n)-A314254(n)` -/
def P13565568684106655974.Spec : Prop :=
  ∀ n, P13565568684106655974.a n = A314668 n

end A314668

/-! ## A314668.P3473616305986868512

`A004525(n)+A004525(A315683(n))+n`
-/

namespace A314668.P3473616305986868512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004525 (A315683 n).toNat + (n : ℤ))

end

end A314668.P3473616305986868512

namespace A314668

/-- `A004525(n)+A004525(A315683(n))+n` -/
def P3473616305986868512.Spec : Prop :=
  ∀ n, P3473616305986868512.a n = A314668 n

end A314668

/-! ## A314668.P1267443014902324989

`A004525(A312890(2*n))`
-/

namespace A314668.P1267443014902324989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312890 (2 * n)).toNat

end

end A314668.P1267443014902324989

namespace A314668

/-- `A004525(A312890(2*n))` -/
def P1267443014902324989.Spec : Prop :=
  ∀ n, P1267443014902324989.a n = A314668 n

end A314668

/-! ## A314668.P16636399234702405076

`A004525(A310393(2*n)-n)`
-/

namespace A314668.P16636399234702405076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310393 (2 * n) - (n : ℤ)).toNat

end

end A314668.P16636399234702405076

namespace A314668

/-- `A004525(A310393(2*n)-n)` -/
def P16636399234702405076.Spec : Prop :=
  ∀ n, P16636399234702405076.a n = A314668 n

end A314668

/-! ## A314668.P9089141709876267647

`A004525(A313540(2*n)-n)`
-/

namespace A314668.P9089141709876267647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313540 (2 * n) - (n : ℤ)).toNat

end

end A314668.P9089141709876267647

namespace A314668

/-- `A004525(A313540(2*n)-n)` -/
def P9089141709876267647.Spec : Prop :=
  ∀ n, P9089141709876267647.a n = A314668 n

end A314668

/-! ## A314668.P2973427496861682126

`A004525(A314825(n))+2*n`
-/

namespace A314668.P2973427496861682126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314825 n).toNat + (2 * n : ℤ)

end

end A314668.P2973427496861682126

namespace A314668

/-- `A004525(A314825(n))+2*n` -/
def P2973427496861682126.Spec : Prop :=
  ∀ n, P2973427496861682126.a n = A314668 n

end A314668

/-!
# A314669: Coordination sequence Gal.6.216.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314669, the canonical program `A314669.P15172117768028029009` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314669 has offset 0).

The definition of A314669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314669.P4062066180522508124

`A004525(A313475(n))+2*n`
-/

namespace A314669.P4062066180522508124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313475 n).toNat + (2 * n : ℤ)

end

end A314669.P4062066180522508124

namespace A314669

/-- `A004525(A313475(n))+2*n` -/
def P4062066180522508124.Spec : Prop :=
  ∀ n, P4062066180522508124.a n = A314669 n

end A314669

/-! ## A314669.P9248811572030287739

`A004525(A314680(n))+2*n`
-/

namespace A314669.P9248811572030287739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314680 n).toNat + (2 * n : ℤ)

end

end A314669.P9248811572030287739

namespace A314669

/-- `A004525(A314680(n))+2*n` -/
def P9248811572030287739.Spec : Prop :=
  ∀ n, P9248811572030287739.a n = A314669 n

end A314669

/-! ## A314669.P14332118633087071167

`A004525(A314684(n))+2*n`
-/

namespace A314669.P14332118633087071167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314684 n).toNat + (2 * n : ℤ)

end

end A314669.P14332118633087071167

namespace A314669

/-- `A004525(A314684(n))+2*n` -/
def P14332118633087071167.Spec : Prop :=
  ∀ n, P14332118633087071167.a n = A314669 n

end A314669

/-! ## A314669.P15172117768028029009

`A004525(A314707(n))+2*n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314669

/-- `A004525(A314707(n))+2*n` -/
def P15172117768028029009.Spec : Prop :=
  ∀ n, P15172117768028029009.a n = A314669 n

theorem P15172117768028029009.correct : P15172117768028029009.Spec := by
  intro n
  simp only [A314669]

end A314669

/-! ## A314669.P11377909337771696037

`A004525(A314826(n))+2*n`
-/

namespace A314669.P11377909337771696037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314826 n).toNat + (2 * n : ℤ)

end

end A314669.P11377909337771696037

namespace A314669

/-- `A004525(A314826(n))+2*n` -/
def P11377909337771696037.Spec : Prop :=
  ∀ n, P11377909337771696037.a n = A314669 n

end A314669

/-! ## A314669.P5914681193755698099

`A008458(n)+A008574(n)-A314253(n)`
-/

namespace A314669.P5914681193755698099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314253 n)

end

end A314669.P5914681193755698099

namespace A314669

/-- `A008458(n)+A008574(n)-A314253(n)` -/
def P5914681193755698099.Spec : Prop :=
  ∀ n, P5914681193755698099.a n = A314669 n

end A314669

/-! ## A314669.P11362949157733600857

`A005843(A008458(n)-n)-A314253(n)`
-/

namespace A314669.P11362949157733600857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314253 n

end

end A314669.P11362949157733600857

namespace A314669

/-- `A005843(A008458(n)-n)-A314253(n)` -/
def P11362949157733600857.Spec : Prop :=
  ∀ n, P11362949157733600857.a n = A314669 n

end A314669

/-! ## A314669.P6768863372692935754

`A068962(A315642(n))+2*n`
-/

namespace A314669.P6768863372692935754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A315642 n).toNat + (2 * n : ℤ)

end

end A314669.P6768863372692935754

namespace A314669

/-- `A068962(A315642(n))+2*n` -/
def P6768863372692935754.Spec : Prop :=
  ∀ n, P6768863372692935754.a n = A314669 n

end A314669

/-! ## A314669.P13536691237743702843

`A008458(n)+n-A004526(A310533(n))`
-/

namespace A314669.P13536691237743702843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A310533 n).toNat)

end

end A314669.P13536691237743702843

namespace A314669

/-- `A008458(n)+n-A004526(A310533(n))` -/
def P13536691237743702843.Spec : Prop :=
  ∀ n, P13536691237743702843.a n = A314669 n

end A314669

/-! ## A314669.P14846124692164811589

`A004396(A315470(n)+n)`
-/

namespace A314669.P14846124692164811589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315470 n + (n : ℤ)).toNat

end

end A314669.P14846124692164811589

namespace A314669

/-- `A004396(A315470(n)+n)` -/
def P14846124692164811589.Spec : Prop :=
  ∀ n, P14846124692164811589.a n = A314669 n

end A314669

/-! ## A314669.P14462916067041373494

`A004396(A315486(n)+n)`
-/

namespace A314669.P14462916067041373494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315486 n + (n : ℤ)).toNat

end

end A314669.P14462916067041373494

namespace A314669

/-- `A004396(A315486(n)+n)` -/
def P14462916067041373494.Spec : Prop :=
  ∀ n, P14462916067041373494.a n = A314669 n

end A314669

/-! ## A314669.P14104349156196630449

`A004396(A315509(n)+n)`
-/

namespace A314669.P14104349156196630449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315509 n + (n : ℤ)).toNat

end

end A314669.P14104349156196630449

namespace A314669

/-- `A004396(A315509(n)+n)` -/
def P14104349156196630449.Spec : Prop :=
  ∀ n, P14104349156196630449.a n = A314669 n

end A314669

/-! ## A314669.P16233886741661830883

`A004396(A315516(n)+n)`
-/

namespace A314669.P16233886741661830883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315516 n + (n : ℤ)).toNat

end

end A314669.P16233886741661830883

namespace A314669

/-- `A004396(A315516(n)+n)` -/
def P16233886741661830883.Spec : Prop :=
  ∀ n, P16233886741661830883.a n = A314669 n

end A314669

/-! ## A314669.P8177572558758642760

`A004396(A315645(n)+n)`
-/

namespace A314669.P8177572558758642760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315645 n + (n : ℤ)).toNat

end

end A314669.P8177572558758642760

namespace A314669

/-- `A004396(A315645(n)+n)` -/
def P8177572558758642760.Spec : Prop :=
  ∀ n, P8177572558758642760.a n = A314669 n

end A314669

/-! ## A314669.P4003330158745555343

`A004525(A312891(2*n))`
-/

namespace A314669.P4003330158745555343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312891 (2 * n)).toNat

end

end A314669.P4003330158745555343

namespace A314669

/-- `A004525(A312891(2*n))` -/
def P4003330158745555343.Spec : Prop :=
  ∀ n, P4003330158745555343.a n = A314669 n

end A314669

/-! ## A314669.P15463305124532476158

`A314038(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A314669.P15463305124532476158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314038 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A314669.P15463305124532476158

namespace A314669

/-- `A314038(2*n)+A008458(n+1)-(12*n+6)` -/
def P15463305124532476158.Spec : Prop :=
  ∀ n, P15463305124532476158.a n = A314669 n

end A314669

/-! ## A314669.P17942123418837084741

`(A315170(n)+A008574(n))/2`
-/

namespace A314669.P17942123418837084741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315170 n + A008574 n : ℚ) / 2

end

end A314669.P17942123418837084741

namespace A314669

/-- `(A315170(n)+A008574(n))/2` -/
def P17942123418837084741.Spec : Prop :=
  ∀ n, P17942123418837084741.a n = (A314669 n : ℚ)

end A314669

/-!
# A314670: Coordination sequence Gal.5.50.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314670, the canonical program `A314670.P10679546871853624637` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314670 has offset 0).

The definition of A314670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314670.P10679546871853624637

`A330025(A330025(n)+n)+A311440(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A314670

/-- `A330025(A330025(n)+n)+A311440(n)` -/
def P10679546871853624637.Spec : Prop :=
  ∀ n, P10679546871853624637.a n = A314670 n

theorem P10679546871853624637.correct : P10679546871853624637.Spec := by
  intro n
  simp only [A314670]

end A314670

/-! ## A314670.P8026129056681861789

`A330025(n)+A311289(n)`
-/

namespace A314670.P8026129056681861789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A311289 n

end

end A314670.P8026129056681861789

namespace A314670

/-- `A330025(n)+A311289(n)` -/
def P8026129056681861789.Spec : Prop :=
  ∀ n, P8026129056681861789.a n = A314670 n

end A314670

/-! ## A314670.P912667381660218989

`round(A314827(n)-n/5)`
-/

namespace A314670.P912667381660218989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A314827 n : ℚ) - (n : ℚ) / 5)

end

end A314670.P912667381660218989

namespace A314670

/-- `round(A314827(n)-n/5)` -/
def P912667381660218989.Spec : Prop :=
  ∀ n, P912667381660218989.a n = A314670 n

end A314670

/-! ## A314670.P15070507630631629668

`A314827(n)-A002266(n+2)`
-/

namespace A314670.P15070507630631629668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314827 n - A002266 (n + 2)

end

end A314670.P15070507630631629668

namespace A314670

/-- `A314827(n)-A002266(n+2)` -/
def P15070507630631629668.Spec : Prop :=
  ∀ n, P15070507630631629668.a n = A314670 n

end A314670

/-! ## A314670.P9579692119125101560

`(A315171(n)+A008574(n))/2`
-/

namespace A314670.P9579692119125101560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315171 n + A008574 n : ℚ) / 2

end

end A314670.P9579692119125101560

namespace A314670

/-- `(A315171(n)+A008574(n))/2` -/
def P9579692119125101560.Spec : Prop :=
  ∀ n, P9579692119125101560.a n = (A314670 n : ℚ)

end A314670

/-! ## A314670.P11070840907738173493

`A314685(n)+n-A151988(n)`
-/

namespace A314670.P11070840907738173493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n + ((n : ℤ) - A151988 n)

end

end A314670.P11070840907738173493

namespace A314670

/-- `A314685(n)+n-A151988(n)` -/
def P11070840907738173493.Spec : Prop :=
  ∀ n, P11070840907738173493.a n = A314670 n

end A314670

/-! ## A314670.P2337899729528571038

`A005843(A008574(n))+n-A313116(n)`
-/

namespace A314670.P2337899729528571038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A313116 n)

end

end A314670.P2337899729528571038

namespace A314670

/-- `A005843(A008574(n))+n-A313116(n)` -/
def P2337899729528571038.Spec : Prop :=
  ∀ n, P2337899729528571038.a n = A314670 n

end A314670

/-! ## A314670.P13521968663353739860

`A008458(n)+A008486(n)-A313116(n)`
-/

namespace A314670.P13521968663353739860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313116 n)

end

end A314670.P13521968663353739860

namespace A314670

/-- `A008458(n)+A008486(n)-A313116(n)` -/
def P13521968663353739860.Spec : Prop :=
  ∀ n, P13521968663353739860.a n = A314670 n

end A314670

/-! ## A314670.P11268737303731072656

`A313752(n)+A330025(n)-n`
-/

namespace A314670.P11268737303731072656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n + (A330025 n - (n : ℤ))

end

end A314670.P11268737303731072656

namespace A314670

/-- `A313752(n)+A330025(n)-n` -/
def P11268737303731072656.Spec : Prop :=
  ∀ n, P11268737303731072656.a n = A314670 n

end A314670

/-! ## A314670.P9136626433999716139

`A253262(n)+A314972(n)-n`
-/

namespace A314670.P9136626433999716139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A314972 n - (n : ℤ))

end

end A314670.P9136626433999716139

namespace A314670

/-- `A253262(n)+A314972(n)-n` -/
def P9136626433999716139.Spec : Prop :=
  ∀ n, P9136626433999716139.a n = A314670 n

end A314670

/-! ## A314670.P6609638342942138506

`A315468(n)-n`
-/

namespace A314670.P6609638342942138506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n - (n : ℤ)

end

end A314670.P6609638342942138506

namespace A314670

/-- `A315468(n)-n` -/
def P6609638342942138506.Spec : Prop :=
  ∀ n, P6609638342942138506.a n = A314670 n

end A314670

/-! ## A314670.P14656570329068490085

`A004525(A313476(n))+2*n`
-/

namespace A314670.P14656570329068490085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313476 n).toNat + (2 * n : ℤ)

end

end A314670.P14656570329068490085

namespace A314670

/-- `A004525(A313476(n))+2*n` -/
def P14656570329068490085.Spec : Prop :=
  ∀ n, P14656570329068490085.a n = A314670 n

end A314670

/-! ## A314670.P4212625933223335226

`A315518(n)-A047263(n+1)`
-/

namespace A314670.P4212625933223335226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315518 n - A047263 (n + 1)

end

end A314670.P4212625933223335226

namespace A314670

/-- `A315518(n)-A047263(n+1)` -/
def P4212625933223335226.Spec : Prop :=
  ∀ n, P4212625933223335226.a n = A314670 n

end A314670

/-! ## A314670.P14368377449207776813

`A315477(n)-A151988(n)`
-/

namespace A314670.P14368377449207776813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315477 n - A151988 n

end

end A314670.P14368377449207776813

namespace A314670

/-- `A315477(n)-A151988(n)` -/
def P14368377449207776813.Spec : Prop :=
  ∀ n, P14368377449207776813.a n = A314670 n

end A314670

/-! ## A314670.P2315861320394852224

`A315698(n)-A047299(n+1)`
-/

namespace A314670.P2315861320394852224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315698 n - A047299 (n + 1)

end

end A314670.P2315861320394852224

namespace A314670

/-- `A315698(n)-A047299(n+1)` -/
def P2315861320394852224.Spec : Prop :=
  ∀ n, P2315861320394852224.a n = A314670 n

end A314670

/-! ## A314670.P16618753162063717838

`A008458(n)+A008574(n)-A314252(n)`
-/

namespace A314670.P16618753162063717838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314252 n)

end

end A314670.P16618753162063717838

namespace A314670

/-- `A008458(n)+A008574(n)-A314252(n)` -/
def P16618753162063717838.Spec : Prop :=
  ∀ n, P16618753162063717838.a n = A314670 n

end A314670

/-! ## A314670.P11667615713269219521

`A004277(n)+A022144(n)-A314252(n)`
-/

namespace A314670.P11667615713269219521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A022144 n - A314252 n)

end

end A314670.P11667615713269219521

namespace A314670

/-- `A004277(n)+A022144(n)-A314252(n)` -/
def P11667615713269219521.Spec : Prop :=
  ∀ n, P11667615713269219521.a n = A314670 n

end A314670

/-! ## A314670.P2351478732086991096

`A315761(n)-A047486(n+1)`
-/

namespace A314670.P2351478732086991096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315761 n - A047486 (n + 1)

end

end A314670.P2351478732086991096

namespace A314670

/-- `A315761(n)-A047486(n+1)` -/
def P2351478732086991096.Spec : Prop :=
  ∀ n, P2351478732086991096.a n = A314670 n

end A314670

/-! ## A314670.P15437225835241394693

`A004396(A315255(n))+n`
-/

namespace A314670.P15437225835241394693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315255 n).toNat + (n : ℤ)

end

end A314670.P15437225835241394693

namespace A314670

/-- `A004396(A315255(n))+n` -/
def P15437225835241394693.Spec : Prop :=
  ∀ n, P15437225835241394693.a n = A314670 n

end A314670

/-! ## A314670.P13165049442622784818

`A005843(A008458(n)-n)-A314252(n)`
-/

namespace A314670.P13165049442622784818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314252 n

end

end A314670.P13165049442622784818

namespace A314670

/-- `A005843(A008458(n)-n)-A314252(n)` -/
def P13165049442622784818.Spec : Prop :=
  ∀ n, P13165049442622784818.a n = A314670 n

end A314670

/-!
# A314671: Coordination sequence Gal.5.95.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314671, the canonical program `A314671.P7548887448611647947` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314671 has offset 0).

The definition of A314671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314671.P7303767025852838919

`A315690(n)-A042965(n+1)`
-/

namespace A314671.P7303767025852838919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n - A042965 (n + 1)

end

end A314671.P7303767025852838919

namespace A314671

/-- `A315690(n)-A042965(n+1)` -/
def P7303767025852838919.Spec : Prop :=
  ∀ n, P7303767025852838919.a n = A314671 n

end A314671

/-! ## A314671.P4125625187122221563

`A315690(n)-A004396(2*n)`
-/

namespace A314671.P4125625187122221563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n - A004396 (2 * n)

end

end A314671.P4125625187122221563

namespace A314671

/-- `A315690(n)-A004396(2*n)` -/
def P4125625187122221563.Spec : Prop :=
  ∀ n, P4125625187122221563.a n = A314671 n

end A314671

/-! ## A314671.P7836360005174518151

`A008576(n)+A315690(n)-A008574(n)`
-/

namespace A314671.P7836360005174518151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315690 n - A008574 n)

end

end A314671.P7836360005174518151

namespace A314671

/-- `A008576(n)+A315690(n)-A008574(n)` -/
def P7836360005174518151.Spec : Prop :=
  ∀ n, P7836360005174518151.a n = A314671 n

end A314671

/-! ## A314671.P6575285845729570267

`(A315172(n)+A008574(n))/2`
-/

namespace A314671.P6575285845729570267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315172 n + A008574 n : ℚ) / 2

end

end A314671.P6575285845729570267

namespace A314671

/-- `(A315172(n)+A008574(n))/2` -/
def P6575285845729570267.Spec : Prop :=
  ∀ n, P6575285845729570267.a n = (A314671 n : ℚ)

end A314671

/-! ## A314671.P7548887448611647947

`A008458(n)+A008576(n)-A312100(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A314671

/-- `A008458(n)+A008576(n)-A312100(n)` -/
def P7548887448611647947.Spec : Prop :=
  ∀ n, P7548887448611647947.a n = A314671 n

theorem P7548887448611647947.correct : P7548887448611647947.Spec := by
  intro n
  simp only [A314671]

end A314671

/-! ## A314671.P5503722929615376397

`A313477(n)-A004396(n-A004396(n))`
-/

namespace A314671.P5503722929615376397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313477 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A314671.P5503722929615376397

namespace A314671

/-- `A313477(n)-A004396(n-A004396(n))` -/
def P5503722929615376397.Spec : Prop :=
  ∀ n, P5503722929615376397.a n = A314671 n

end A314671

/-! ## A314671.P18389700708194066551

`A314828(n)+A004396(A004396(n))-A004396(n)`
-/

namespace A314671.P18389700708194066551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A004396 (A004396 n).toNat - A004396 n

end

end A314671.P18389700708194066551

namespace A314671

/-- `A314828(n)+A004396(A004396(n))-A004396(n)` -/
def P18389700708194066551.Spec : Prop :=
  ∀ n, P18389700708194066551.a n = A314671 n

end A314671

/-! ## A314671.P2056652743591193777

`A315256(n)-A004396(n)`
-/

namespace A314671.P2056652743591193777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315256 n - A004396 n

end

end A314671.P2056652743591193777

namespace A314671

/-- `A315256(n)-A004396(n)` -/
def P2056652743591193777.Spec : Prop :=
  ∀ n, P2056652743591193777.a n = A314671 n

end A314671

/-! ## A314671.P11551010206193994312

`A315256(n)-A002264(2*n+1)`
-/

namespace A314671.P11551010206193994312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315256 n - A002264 (2 * n + 1)

end

end A314671.P11551010206193994312

namespace A314671

/-- `A315256(n)-A002264(2*n+1)` -/
def P11551010206193994312.Spec : Prop :=
  ∀ n, P11551010206193994312.a n = A314671 n

end A314671

/-! ## A314671.P14263623413221847649

`2*A313538(n)-A314039(n)`
-/

namespace A314671.P14263623413221847649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313538 n - A314039 n

end

end A314671.P14263623413221847649

namespace A314671

/-- `2*A313538(n)-A314039(n)` -/
def P14263623413221847649.Spec : Prop :=
  ∀ n, P14263623413221847649.a n = A314671 n

end A314671

/-! ## A314671.P5745802225334880130

`A004525(A313477(n))+2*n`
-/

namespace A314671.P5745802225334880130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313477 n).toNat + (2 * n : ℤ)

end

end A314671.P5745802225334880130

namespace A314671

/-- `A004525(A313477(n))+2*n` -/
def P5745802225334880130.Spec : Prop :=
  ∀ n, P5745802225334880130.a n = A314671 n

end A314671

/-! ## A314671.P10155017758970166976

`A004525(A314692(n))+2*n`
-/

namespace A314671.P10155017758970166976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314692 n).toNat + (2 * n : ℤ)

end

end A314671.P10155017758970166976

namespace A314671

/-- `A004525(A314692(n))+2*n` -/
def P10155017758970166976.Spec : Prop :=
  ∀ n, P10155017758970166976.a n = A314671 n

end A314671

/-! ## A314671.P3513573244184290458

`A004525(A314710(n))+2*n`
-/

namespace A314671.P3513573244184290458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314710 n).toNat + (2 * n : ℤ)

end

end A314671.P3513573244184290458

namespace A314671

/-- `A004525(A314710(n))+2*n` -/
def P3513573244184290458.Spec : Prop :=
  ∀ n, P3513573244184290458.a n = A314671 n

end A314671

/-! ## A314671.P15941759599162579

`A004525(A314828(n))+2*n`
-/

namespace A314671.P15941759599162579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314828 n).toNat + (2 * n : ℤ)

end

end A314671.P15941759599162579

namespace A314671

/-- `A004525(A314828(n))+2*n` -/
def P15941759599162579.Spec : Prop :=
  ∀ n, P15941759599162579.a n = A314671 n

end A314671

/-! ## A314671.P8637441448465980784

`A005843(A313538(n))-A314039(n)`
-/

namespace A314671.P8637441448465980784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313538 n).toNat - A314039 n

end

end A314671.P8637441448465980784

namespace A314671

/-- `A005843(A313538(n))-A314039(n)` -/
def P8637441448465980784.Spec : Prop :=
  ∀ n, P8637441448465980784.a n = A314671 n

end A314671

/-! ## A314671.P15840163947684502843

`A008458(n)+A008574(n)-A314251(n)`
-/

namespace A314671.P15840163947684502843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314251 n)

end

end A314671.P15840163947684502843

namespace A314671

/-- `A008458(n)+A008574(n)-A314251(n)` -/
def P15840163947684502843.Spec : Prop :=
  ∀ n, P15840163947684502843.a n = A314671 n

end A314671

/-! ## A314671.P10625574120113231440

`A004396(A315475(n)+n)`
-/

namespace A314671.P10625574120113231440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315475 n + (n : ℤ)).toNat

end

end A314671.P10625574120113231440

namespace A314671

/-- `A004396(A315475(n)+n)` -/
def P10625574120113231440.Spec : Prop :=
  ∀ n, P10625574120113231440.a n = A314671 n

end A314671

/-! ## A314671.P5617570561729595013

`A004396(A004396(n)+A315185(n)+n)`
-/

namespace A314671.P5617570561729595013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n + (A315185 n + (n : ℤ))).toNat

end

end A314671.P5617570561729595013

namespace A314671

/-- `A004396(A004396(n)+A315185(n)+n)` -/
def P5617570561729595013.Spec : Prop :=
  ∀ n, P5617570561729595013.a n = A314671 n

end A314671

/-! ## A314671.P7602599530180910231

`A004396(A315646(n)+n)`
-/

namespace A314671.P7602599530180910231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315646 n + (n : ℤ)).toNat

end

end A314671.P7602599530180910231

namespace A314671

/-- `A004396(A315646(n)+n)` -/
def P7602599530180910231.Spec : Prop :=
  ∀ n, P7602599530180910231.a n = A314671 n

end A314671

/-! ## A314671.P16063194780395778121

`A004396(A315510(n)+n)`
-/

namespace A314671.P16063194780395778121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315510 n + (n : ℤ)).toNat

end

end A314671.P16063194780395778121

namespace A314671

/-- `A004396(A315510(n)+n)` -/
def P16063194780395778121.Spec : Prop :=
  ∀ n, P16063194780395778121.a n = A314671 n

end A314671

/-!
# A314672: Coordination sequence Gal.4.38.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314672, the canonical program `A314672.P11952212366419125291` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314672 has offset 0).

The definition of A314672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314672.P11952212366419125291

`A008574(n)+A004525(A004525(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314672

/-- `A008574(n)+A004525(A004525(n))` -/
def P11952212366419125291.Spec : Prop :=
  ∀ n, P11952212366419125291.a n = A314672 n

theorem P11952212366419125291.correct : P11952212366419125291.Spec := by
  intro n
  simp only [A314672]

end A314672

/-! ## A314672.P12080263520465376769

`A004525(A004525(n))+A004277(2*n)`
-/

namespace A314672.P12080263520465376769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + A004277 (2 * n)

end

end A314672.P12080263520465376769

namespace A314672

/-- `A004525(A004525(n))+A004277(2*n)` -/
def P12080263520465376769.Spec : Prop :=
  ∀ n, P12080263520465376769.a n = A314672 n

end A314672

/-! ## A314672.P9756605359688413922

`A257088(2*n)+A004525(A004525(n))`
-/

namespace A314672.P9756605359688413922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) + A004525 (A004525 n).toNat

end

end A314672.P9756605359688413922

namespace A314672

/-- `A257088(2*n)+A004525(A004525(n))` -/
def P9756605359688413922.Spec : Prop :=
  ∀ n, P9756605359688413922.a n = A314672 n

end A314672

/-! ## A314672.P8140856467259583380

`A004525(A004525(n))+A008486(n)+n`
-/

namespace A314672.P8140856467259583380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A008486 n + (n : ℤ))

end

end A314672.P8140856467259583380

namespace A314672

/-- `A004525(A004525(n))+A008486(n)+n` -/
def P8140856467259583380.Spec : Prop :=
  ∀ n, P8140856467259583380.a n = A314672 n

end A314672

/-! ## A314672.P7481027119601096131

`A004525(A004525(n))+A008706(n)-n`
-/

namespace A314672.P7481027119601096131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A008706 n - (n : ℤ))

end

end A314672.P7481027119601096131

namespace A314672

/-- `A004525(A004525(n))+A008706(n)-n` -/
def P7481027119601096131.Spec : Prop :=
  ∀ n, P7481027119601096131.a n = A314672 n

end A314672

/-! ## A314672.P14791320615857768007

`A311501(n)+A046978(n)`
-/

namespace A314672.P14791320615857768007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311501 n + A046978 n

end

end A314672.P14791320615857768007

namespace A314672

/-- `A311501(n)+A046978(n)` -/
def P14791320615857768007.Spec : Prop :=
  ∀ n, P14791320615857768007.a n = A314672 n

end A314672

/-! ## A314672.P2762084316254897509

`A314829(n)-Δ[A011861(n)]`
-/

namespace A314672.P2762084316254897509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n - (f1 (n + 1) - f1 n)

end

end A314672.P2762084316254897509

namespace A314672

/-- `A314829(n)-Δ[A011861(n)]` -/
def P2762084316254897509.Spec : Prop :=
  ∀ n, P2762084316254897509.a n = A314672 n

end A314672

/-! ## A314672.P4018387007660637438

`A313480(n)-A004525(n-A004525(n))`
-/

namespace A314672.P4018387007660637438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A314672.P4018387007660637438

namespace A314672

/-- `A313480(n)-A004525(n-A004525(n))` -/
def P4018387007660637438.Spec : Prop :=
  ∀ n, P4018387007660637438.a n = A314672 n

end A314672

/-! ## A314672.P5984216131838661012

`(A315173(n)+A008574(n))/2`
-/

namespace A314672.P5984216131838661012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315173 n + A008574 n : ℚ) / 2

end

end A314672.P5984216131838661012

namespace A314672

/-- `(A315173(n)+A008574(n))/2` -/
def P5984216131838661012.Spec : Prop :=
  ∀ n, P5984216131838661012.a n = (A314672 n : ℚ)

end A314672

/-! ## A314672.P4898389812043443505

`A004525(n)+A313685(n)-n`
-/

namespace A314672.P4898389812043443505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313685 n - (n : ℤ))

end

end A314672.P4898389812043443505

namespace A314672

/-- `A004525(n)+A313685(n)-n` -/
def P4898389812043443505.Spec : Prop :=
  ∀ n, P4898389812043443505.a n = A314672 n

end A314672

/-! ## A314672.P496514315099051034

`abs(9*n-A313115(n))`
-/

namespace A314672.P496514315099051034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A313115 n|

end

end A314672.P496514315099051034

namespace A314672

/-- `abs(9*n-A313115(n))` -/
def P496514315099051034.Spec : Prop :=
  ∀ n, P496514315099051034.a n = A314672 n

end A314672

/-! ## A314672.P373628598538775651

`A008458(n)+A008486(n)-A313115(n)`
-/

namespace A314672.P373628598538775651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313115 n)

end

end A314672.P373628598538775651

namespace A314672

/-- `A008458(n)+A008486(n)-A313115(n)` -/
def P373628598538775651.Spec : Prop :=
  ∀ n, P373628598538775651.a n = A314672 n

end A314672

/-! ## A314672.P7650600693526504982

`A315469(n)-n`
-/

namespace A314672.P7650600693526504982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n - (n : ℤ)

end

end A314672.P7650600693526504982

namespace A314672

/-- `A315469(n)-n` -/
def P7650600693526504982.Spec : Prop :=
  ∀ n, P7650600693526504982.a n = A314672 n

end A314672

/-! ## A314672.P11189512906449977315

`A046978(n)+A313793(n)-n`
-/

namespace A314672.P11189512906449977315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A313793 n - (n : ℤ))

end

end A314672.P11189512906449977315

namespace A314672

/-- `A046978(n)+A313793(n)-n` -/
def P11189512906449977315.Spec : Prop :=
  ∀ n, P11189512906449977315.a n = A314672 n

end A314672

/-! ## A314672.P12938797876711121884

`A188510(n)+A314056(n)-n`
-/

namespace A314672.P12938797876711121884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 n + (A314056 n - (n : ℤ))

end

end A314672.P12938797876711121884

namespace A314672

/-- `A188510(n)+A314056(n)-n` -/
def P12938797876711121884.Spec : Prop :=
  ∀ n, P12938797876711121884.a n = A314672 n

end A314672

/-! ## A314672.P6124986268709800999

`A004525(A301291(n))+2*n`
-/

namespace A314672.P6124986268709800999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301291 n).toNat + (2 * n : ℤ)

end

end A314672.P6124986268709800999

namespace A314672

/-- `A004525(A301291(n))+2*n` -/
def P6124986268709800999.Spec : Prop :=
  ∀ n, P6124986268709800999.a n = A314672 n

end A314672

/-! ## A314672.P10055107700256327251

`A004525(A313480(n))+2*n`
-/

namespace A314672.P10055107700256327251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313480 n).toNat + (2 * n : ℤ)

end

end A314672.P10055107700256327251

namespace A314672

/-- `A004525(A313480(n))+2*n` -/
def P10055107700256327251.Spec : Prop :=
  ∀ n, P10055107700256327251.a n = A314672 n

end A314672

/-! ## A314672.P12792279176261322291

`A315745(n)-A047273(n+1)`
-/

namespace A314672.P12792279176261322291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315745 n - A047273 (n + 1)

end

end A314672.P12792279176261322291

namespace A314672

/-- `A315745(n)-A047273(n+1)` -/
def P12792279176261322291.Spec : Prop :=
  ∀ n, P12792279176261322291.a n = A314672 n

end A314672

/-! ## A314672.P683281334821751067

`A008458(n)+A008574(n)-A314250(n)`
-/

namespace A314672.P683281334821751067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314250 n)

end

end A314672.P683281334821751067

namespace A314672

/-- `A008458(n)+A008574(n)-A314250(n)` -/
def P683281334821751067.Spec : Prop :=
  ∀ n, P683281334821751067.a n = A314672 n

end A314672

/-! ## A314672.P9622259965126795003

`A004525(n)+A004525(A315685(n))+n`
-/

namespace A314672.P9622259965126795003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004525 (A315685 n).toNat + (n : ℤ))

end

end A314672.P9622259965126795003

namespace A314672

/-- `A004525(n)+A004525(A315685(n))+n` -/
def P9622259965126795003.Spec : Prop :=
  ∀ n, P9622259965126795003.a n = A314672 n

end A314672

/-!
# A314673: Coordination sequence Gal.6.531.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314673, there is no canonical definition to state claims against.
-/

/-! ## A314673.P11088055826206810751

`∑[∑[A007814(C(n+6, 6)+1)]]`
-/

namespace A314673.P11088055826206810751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.choose (n + 6) 6 + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314673.P11088055826206810751

/-! ## A314673.P9853520227955871434

`∑[A002852(A003418(n))+3]-3`
-/

namespace A314673.P9853520227955871434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 (A003418 n).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A314673.P9853520227955871434

/-! ## A314673.P9188548667489973273

`A032517(3*n)+A000005(3^n)`
-/

namespace A314673.P9188548667489973273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032517 (3 * n) + A000005 (3 ^ n)

end

end A314673.P9188548667489973273

/-! ## A314673.P8554903212930289313

`∑[∑[A007814(A000579(n+6)+1)]]`
-/

namespace A314673.P8554903212930289313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000579 (n + 6) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314673.P8554903212930289313

/-! ## A314673.P15382676926602789420

`A353426(floor(C(n+1, floor(n/2))/(n+1)))+4*n`
-/

namespace A314673.P15382676926602789420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353426 ⌊(Nat.choose (n + 1) ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (n + 1 : ℚ)⌋.toNat + (4 * n : ℤ)

end

end A314673.P15382676926602789420

/-!
# A314674: Coordination sequence Gal.4.58.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314674, the canonical program `A314674.P17643702068041950173` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314674 has offset 0).

The definition of A314674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2569 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314674.P6163104573886141101

`A008706(n)-∑[floor(atan(n%7))]`
-/

namespace A314674.P6163104573886141101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((n % 7 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314674.P6163104573886141101

namespace A314674

/-- `A008706(n)-∑[floor(atan(n%7))]` -/
def P6163104573886141101.Spec : Prop :=
  ∀ n, P6163104573886141101.a n = A314674 n

end A314674

/-! ## A314674.P17643702068041950173

`A312289(n)+A175629(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314674

/-- `A312289(n)+A175629(n)` -/
def P17643702068041950173.Spec : Prop :=
  ∀ n, P17643702068041950173.a n = A314674 n

theorem P17643702068041950173.correct : P17643702068041950173.Spec := by
  intro n
  simp only [A314674]

end A314674

/-! ## A314674.P4145087949851265119

`A008458(n)-A191275(n+1)`
-/

namespace A314674.P4145087949851265119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A191275 (n + 1)

end

end A314674.P4145087949851265119

namespace A314674

/-- `A008458(n)-A191275(n+1)` -/
def P4145087949851265119.Spec : Prop :=
  ∀ n, P4145087949851265119.a n = A314674 n

end A314674

/-! ## A314674.P1562075862257130849

`A312895(n)+A238469(n)`
-/

namespace A314674.P1562075862257130849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + A238469 n

end

end A314674.P1562075862257130849

namespace A314674

/-- `A312895(n)+A238469(n)` -/
def P1562075862257130849.Spec : Prop :=
  ∀ n, P1562075862257130849.a n = A314674 n

end A314674

/-! ## A314674.P3675778197735852766

`A312895(n)+A238470(2*n)`
-/

namespace A314674.P3675778197735852766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + A238470 (2 * n)

end

end A314674.P3675778197735852766

namespace A314674

/-- `A312895(n)+A238470(2*n)` -/
def P3675778197735852766.Spec : Prop :=
  ∀ n, P3675778197735852766.a n = A314674 n

end A314674

/-! ## A314674.P14101570528109557096

`(A315175(n)+A008574(n))/2`
-/

namespace A314674.P14101570528109557096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315175 n + A008574 n : ℚ) / 2

end

end A314674.P14101570528109557096

namespace A314674

/-- `(A315175(n)+A008574(n))/2` -/
def P14101570528109557096.Spec : Prop :=
  ∀ n, P14101570528109557096.a n = (A314674 n : ℚ)

end A314674

/-! ## A314674.P6282278079725231434

`A315490(n)-A047588(n+1)`
-/

namespace A314674.P6282278079725231434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315490 n - A047588 (n + 1)

end

end A314674.P6282278079725231434

namespace A314674

/-- `A315490(n)-A047588(n+1)` -/
def P6282278079725231434.Spec : Prop :=
  ∀ n, P6282278079725231434.a n = A314674 n

end A314674

/-! ## A314674.P16689416617942965032

`A008458(n)+A008574(n)-A314249(n)`
-/

namespace A314674.P16689416617942965032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314249 n)

end

end A314674.P16689416617942965032

namespace A314674

/-- `A008458(n)+A008574(n)-A314249(n)` -/
def P16689416617942965032.Spec : Prop :=
  ∀ n, P16689416617942965032.a n = A314674 n

end A314674

/-! ## A314674.P13012345226961840690

`A004525(A313487(n))+2*n`
-/

namespace A314674.P13012345226961840690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313487 n).toNat + (2 * n : ℤ)

end

end A314674.P13012345226961840690

namespace A314674

/-- `A004525(A313487(n))+2*n` -/
def P13012345226961840690.Spec : Prop :=
  ∀ n, P13012345226961840690.a n = A314674 n

end A314674

/-! ## A314674.P8166507102359058065

`A004525(A314838(n))+2*n`
-/

namespace A314674.P8166507102359058065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314838 n).toNat + (2 * n : ℤ)

end

end A314674.P8166507102359058065

namespace A314674

/-- `A004525(A314838(n))+2*n` -/
def P8166507102359058065.Spec : Prop :=
  ∀ n, P8166507102359058065.a n = A314674 n

end A314674

/-! ## A314674.P15486045447336358460

`A005843(n)+A004525(A313487(n))`
-/

namespace A314674.P15486045447336358460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A313487 n).toNat

end

end A314674.P15486045447336358460

namespace A314674

/-- `A005843(n)+A004525(A313487(n))` -/
def P15486045447336358460.Spec : Prop :=
  ∀ n, P15486045447336358460.a n = A314674 n

end A314674

/-! ## A314674.P953752910308034943

`A005843(n)+A004525(A314838(n))`
-/

namespace A314674.P953752910308034943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A314838 n).toNat

end

end A314674.P953752910308034943

namespace A314674

/-- `A005843(n)+A004525(A314838(n))` -/
def P953752910308034943.Spec : Prop :=
  ∀ n, P953752910308034943.a n = A314674 n

end A314674

/-! ## A314674.P17468883113786371696

`A005843(n)+A004525(A315175(n))`
-/

namespace A314674.P17468883113786371696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315175 n).toNat

end

end A314674.P17468883113786371696

namespace A314674

/-- `A005843(n)+A004525(A315175(n))` -/
def P17468883113786371696.Spec : Prop :=
  ∀ n, P17468883113786371696.a n = A314674 n

end A314674

/-! ## A314674.P16904742786167327007

`A005843(A008458(n)-n)-A314249(n)`
-/

namespace A314674.P16904742786167327007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314249 n

end

end A314674.P16904742786167327007

namespace A314674

/-- `A005843(A008458(n)-n)-A314249(n)` -/
def P16904742786167327007.Spec : Prop :=
  ∀ n, P16904742786167327007.a n = A314674 n

end A314674

/-! ## A314674.P2510345406174572095

`A145569(A008458(n))-A145569(n)`
-/

namespace A314674.P2510345406174572095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A008458 n).toNat - A145569 n

end

end A314674.P2510345406174572095

namespace A314674

/-- `A145569(A008458(n))-A145569(n)` -/
def P2510345406174572095.Spec : Prop :=
  ∀ n, P2510345406174572095.a n = A314674 n

end A314674

/-! ## A314674.P117675944009272715

`A314040(2*n)+n-7*n`
-/

namespace A314674.P117675944009272715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314040 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A314674.P117675944009272715

namespace A314674

/-- `A314040(2*n)+n-7*n` -/
def P117675944009272715.Spec : Prop :=
  ∀ n, P117675944009272715.a n = A314674 n

end A314674

/-! ## A314674.P17921380475896822458

`A004526(A310341(2*n)+1)`
-/

namespace A314674.P17921380475896822458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310341 (2 * n) + 1).toNat

end

end A314674.P17921380475896822458

namespace A314674

/-- `A004526(A310341(2*n)+1)` -/
def P17921380475896822458.Spec : Prop :=
  ∀ n, P17921380475896822458.a n = A314674 n

end A314674

/-! ## A314674.P15911020379437551582

`A000267(A008767(n))+4*n`
-/

namespace A314674.P15911020379437551582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A008767 n).toNat + (4 * n : ℤ)

end

end A314674.P15911020379437551582

namespace A314674

/-- `A000267(A008767(n))+4*n` -/
def P15911020379437551582.Spec : Prop :=
  ∀ n, P15911020379437551582.a n = A314674 n

end A314674

/-!
# A314675: Coordination sequence Gal.6.552.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314675, there is no canonical definition to state claims against.
-/

/-! ## A314675.P14979693980206827627

`A314676(n)-A174875(A022167(n))`
-/

namespace A314675.P14979693980206827627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314676 n - A174875 (A022167 n).toNat

end

end A314675.P14979693980206827627

/-! ## A314675.P15740676362699712927

`A314676(n)-A102683(A325919(n))`
-/

namespace A314675.P15740676362699712927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314676 n - A102683 (A325919 n).toNat

end

end A314675.P15740676362699712927

/-! ## A314675.P15804903574000989100

`A314676(A062399(n))`
-/

namespace A314675.P15804903574000989100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314676 (A062399 n).toNat

end

end A314675.P15804903574000989100

/-! ## A314675.P14697380145676924206

`A314676(A120126(n))`
-/

namespace A314675.P14697380145676924206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314676 (A120126 n).toNat

end

end A314675.P14697380145676924206

/-! ## A314675.P8081493479063307605

`A314676(A351870(n))`
-/

namespace A314675.P8081493479063307605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314676 (A351870 n).toNat

end

end A314675.P8081493479063307605

/-!
# A314677: Coordination sequence Gal.3.10.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314677, the canonical program `A314677.P709044874121363319` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314677 has offset 0).

The definition of A314677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314677.P3062580970141019298

`comp[A075607(n+1)]+ceil(abs(1-8*n)/3)`
-/

namespace A314677.P3062580970141019298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉

end

end A314677.P3062580970141019298

namespace A314677

/-- `comp[A075607(n+1)]+ceil(abs(1-8*n)/3)` -/
def P3062580970141019298.Spec : Prop :=
  ∀ n, P3062580970141019298.a n = A314677 n

end A314677

/-! ## A314677.P9389642237665704537

`A008706(n)-∑[A131735(n)]`
-/

namespace A314677.P9389642237665704537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314677.P9389642237665704537

namespace A314677

/-- `A008706(n)-∑[A131735(n)]` -/
def P9389642237665704537.Spec : Prop :=
  ∀ n, P9389642237665704537.a n = A314677 n

end A314677

/-! ## A314677.P709044874121363319

`A047424(n+1)+A008486(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314677

/-- `A047424(n+1)+A008486(n)` -/
def P709044874121363319.Spec : Prop :=
  ∀ n, P709044874121363319.a n = A314677 n

theorem P709044874121363319.correct : P709044874121363319.Spec := by
  intro n
  simp only [A314677]

end A314677

/-! ## A314677.P12989524107694210406

`A315693(n)-A042965(n+1)`
-/

namespace A314677.P12989524107694210406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - A042965 (n + 1)

end

end A314677.P12989524107694210406

namespace A314677

/-- `A315693(n)-A042965(n+1)` -/
def P12989524107694210406.Spec : Prop :=
  ∀ n, P12989524107694210406.a n = A314677 n

end A314677

/-! ## A314677.P11111192022678161454

`A134667(n)+A008576(2*n)-n`
-/

namespace A314677.P11111192022678161454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + A008576 (2 * n) - (n : ℤ)

end

end A314677.P11111192022678161454

namespace A314677

/-- `A134667(n)+A008576(2*n)-n` -/
def P11111192022678161454.Spec : Prop :=
  ∀ n, P11111192022678161454.a n = A314677 n

end A314677

/-! ## A314677.P16240060560700858749

`A008574(n)+A004525(A004396(n))`
-/

namespace A314677.P16240060560700858749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A004396 n).toNat

end

end A314677.P16240060560700858749

namespace A314677

/-- `A008574(n)+A004525(A004396(n))` -/
def P16240060560700858749.Spec : Prop :=
  ∀ n, P16240060560700858749.a n = A314677 n

end A314677

/-! ## A314677.P13601803110333255764

`A312901(n)+A134667(n)`
-/

namespace A314677.P13601803110333255764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312901 n + A134667 n

end

end A314677.P13601803110333255764

namespace A314677

/-- `A312901(n)+A134667(n)` -/
def P13601803110333255764.Spec : Prop :=
  ∀ n, P13601803110333255764.a n = A314677 n

end A314677

/-! ## A314677.P17273091050409826080

`A312065(n)+A128834(n)`
-/

namespace A314677.P17273091050409826080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A128834 n

end

end A314677.P17273091050409826080

namespace A314677

/-- `A312065(n)+A128834(n)` -/
def P17273091050409826080.Spec : Prop :=
  ∀ n, P17273091050409826080.a n = A314677 n

end A314677

/-! ## A314677.P2647522017467358308

`A313510(n)-∑[A022003(n)]`
-/

namespace A314677.P2647522017467358308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314677.P2647522017467358308

namespace A314677

/-- `A313510(n)-∑[A022003(n)]` -/
def P2647522017467358308.Spec : Prop :=
  ∀ n, P2647522017467358308.a n = A314677 n

end A314677

/-! ## A314677.P5280811340533877691

`A315196(n)-A004525(n)`
-/

namespace A314677.P5280811340533877691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315196 n - A004525 n

end

end A314677.P5280811340533877691

namespace A314677

/-- `A315196(n)-A004525(n)` -/
def P5280811340533877691.Spec : Prop :=
  ∀ n, P5280811340533877691.a n = A314677 n

end A314677

/-! ## A314677.P16845791928726962917

`A315257(n)-A004396(n)`
-/

namespace A314677.P16845791928726962917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315257 n - A004396 n

end

end A314677.P16845791928726962917

namespace A314677

/-- `A315257(n)-A004396(n)` -/
def P16845791928726962917.Spec : Prop :=
  ∀ n, P16845791928726962917.a n = A314677 n

end A314677

/-! ## A314677.P7471470803622946954

`A315471(n)-n`
-/

namespace A314677.P7471470803622946954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n - (n : ℤ)

end

end A314677.P7471470803622946954

namespace A314677

/-- `A315471(n)-n` -/
def P7471470803622946954.Spec : Prop :=
  ∀ n, P7471470803622946954.a n = A314677 n

end A314677

/-! ## A314677.P13366371111885966555

`A315538(n)-A047513(n+1)`
-/

namespace A314677.P13366371111885966555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 n - A047513 (n + 1)

end

end A314677.P13366371111885966555

namespace A314677

/-- `A315538(n)-A047513(n+1)` -/
def P13366371111885966555.Spec : Prop :=
  ∀ n, P13366371111885966555.a n = A314677 n

end A314677

/-! ## A314677.P7097619314602366542

`A004525(A301298(n))+2*n`
-/

namespace A314677.P7097619314602366542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301298 n).toNat + (2 * n : ℤ)

end

end A314677.P7097619314602366542

namespace A314677

/-- `A004525(A301298(n))+2*n` -/
def P7097619314602366542.Spec : Prop :=
  ∀ n, P7097619314602366542.a n = A314677 n

end A314677

/-! ## A314677.P9315364122239424561

`A004525(A313494(n))+2*n`
-/

namespace A314677.P9315364122239424561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313494 n).toNat + (2 * n : ℤ)

end

end A314677.P9315364122239424561

namespace A314677

/-- `A004525(A313494(n))+2*n` -/
def P9315364122239424561.Spec : Prop :=
  ∀ n, P9315364122239424561.a n = A314677 n

end A314677

/-! ## A314677.P1263973731389029175

`A004525(A313540(n))+2*n`
-/

namespace A314677.P1263973731389029175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313540 n).toNat + (2 * n : ℤ)

end

end A314677.P1263973731389029175

namespace A314677

/-- `A004525(A313540(n))+2*n` -/
def P1263973731389029175.Spec : Prop :=
  ∀ n, P1263973731389029175.a n = A314677 n

end A314677

/-! ## A314677.P11685844715078822608

`A004525(A313684(n))+2*n`
-/

namespace A314677.P11685844715078822608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313684 n).toNat + (2 * n : ℤ)

end

end A314677.P11685844715078822608

namespace A314677

/-- `A004525(A313684(n))+2*n` -/
def P11685844715078822608.Spec : Prop :=
  ∀ n, P11685844715078822608.a n = A314677 n

end A314677

/-! ## A314677.P9271400887882693110

`A004525(A314691(n))+2*n`
-/

namespace A314677.P9271400887882693110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314691 n).toNat + (2 * n : ℤ)

end

end A314677.P9271400887882693110

namespace A314677

/-- `A004525(A314691(n))+2*n` -/
def P9271400887882693110.Spec : Prop :=
  ∀ n, P9271400887882693110.a n = A314677 n

end A314677

/-! ## A314677.P15124011385281791001

`A004525(A314726(n))+2*n`
-/

namespace A314677.P15124011385281791001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314726 n).toNat + (2 * n : ℤ)

end

end A314677.P15124011385281791001

namespace A314677

/-- `A004525(A314726(n))+2*n` -/
def P15124011385281791001.Spec : Prop :=
  ∀ n, P15124011385281791001.a n = A314677 n

end A314677

/-! ## A314677.P17638391984840101954

`A004525(A314841(n))+2*n`
-/

namespace A314677.P17638391984840101954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314841 n).toNat + (2 * n : ℤ)

end

end A314677.P17638391984840101954

namespace A314677

/-- `A004525(A314841(n))+2*n` -/
def P17638391984840101954.Spec : Prop :=
  ∀ n, P17638391984840101954.a n = A314677 n

end A314677

/-!
# A314678: Coordination sequence Gal.6.17.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314678, there is no canonical definition to state claims against.
-/

/-! ## A314678.P17741498262205885304

`A024899(3*n+2)-A081604(A094969(n))`
-/

namespace A314678.P17741498262205885304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (3 * n + 2) - A081604 (A094969 n).toNat

end

end A314678.P17741498262205885304

/-! ## A314678.P12553084931679898591

`∑[A322134(A045680(n))]+4*n+1`
-/

namespace A314678.P12553084931679898591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322134 (A045680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 * n + 1 : ℤ)

end

end A314678.P12553084931679898591

/-! ## A314678.P6762590153757592501

`lt[A262181(n+3), A135039(n)]+3*n`
-/

namespace A314678.P6762590153757592501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262181 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3 * n

end

end A314678.P6762590153757592501

/-! ## A314678.P4928076898656416807

`lt[A262181(n+3), A217918(n+1)]+3*n`
-/

namespace A314678.P4928076898656416807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262181 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3 * n

end

end A314678.P4928076898656416807

/-! ## A314678.P3970929254282269763

`A311181(n)+A056169(A000149(n))`
-/

namespace A314678.P3970929254282269763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311181 n + A056169 (A000149 n).toNat

end

end A314678.P3970929254282269763

/-!
# A314679: Coordination sequence Gal.6.457.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314679, there is no canonical definition to state claims against.
-/

/-! ## A314679.P4504995371557310926

`record[lcm(A161369(n+1), A224067(n+1))]`
-/

namespace A314679.P4504995371557310926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A161369 (n + 1)) (A224067 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314679.P4504995371557310926

/-! ## A314679.P14085422706605802201

`∑[A374434(A228626(n+1))]+3*n`
-/

namespace A314679.P14085422706605802201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374434 (A228626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 * n : ℤ)

end

end A314679.P14085422706605802201

/-! ## A314679.P4786986613139179408

`A296150(A351510(n))+A008586(n)`
-/

namespace A314679.P4786986613139179408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A351510 n).toNat + A008586 n

end

end A314679.P4786986613139179408

/-! ## A314679.P9439922319875219541

`or(A063056(A171367(n)), A311235(n))`
-/

namespace A314679.P9439922319875219541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063056 (A171367 n).toNat) (A311235 n)

end

end A314679.P9439922319875219541

/-! ## A314679.P9206955882714198160

`or(A063056(A171367(n)), A311871(n))`
-/

namespace A314679.P9206955882714198160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063056 (A171367 n).toNat) (A311871 n)

end

end A314679.P9206955882714198160

/-!
# A314680: Coordination sequence Gal.6.149.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314680, the canonical program `A314680.P15412562109567247213` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314680 has offset 0).

The definition of A314680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314680.P15412562109567247213

`abs(A008592(n)-A314244(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A314680

/-- `abs(A008592(n)-A314244(n))` -/
def P15412562109567247213.Spec : Prop :=
  ∀ n, P15412562109567247213.a n = A314680 n

theorem P15412562109567247213.correct : P15412562109567247213.Spec := by
  intro n
  simp only [A314680]

end A314680

/-! ## A314680.P8052511039052717655

`A008458(n)+A008574(n)-A314244(n)`
-/

namespace A314680.P8052511039052717655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314244 n)

end

end A314680.P8052511039052717655

namespace A314680

/-- `A008458(n)+A008574(n)-A314244(n)` -/
def P8052511039052717655.Spec : Prop :=
  ∀ n, P8052511039052717655.a n = A314680 n

end A314680

/-! ## A314680.P14813704254942419168

`round(A250120(A314832(n))/5)`
-/

namespace A314680.P14813704254942419168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A250120 (A314832 n).toNat : ℚ) / 5)

end

end A314680.P14813704254942419168

namespace A314680

/-- `round(A250120(A314832(n))/5)` -/
def P14813704254942419168.Spec : Prop :=
  ∀ n, P14813704254942419168.a n = A314680 n

end A314680

/-! ## A314680.P3437468736425429790

`A004525(A313514(n))+2*n`
-/

namespace A314680.P3437468736425429790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313514 n).toNat + (2 * n : ℤ)

end

end A314680.P3437468736425429790

namespace A314680

/-- `A004525(A313514(n))+2*n` -/
def P3437468736425429790.Spec : Prop :=
  ∀ n, P3437468736425429790.a n = A314680 n

end A314680

/-! ## A314680.P13886351729207659163

`A004525(A313543(n))+2*n`
-/

namespace A314680.P13886351729207659163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313543 n).toNat + (2 * n : ℤ)

end

end A314680.P13886351729207659163

namespace A314680

/-- `A004525(A313543(n))+2*n` -/
def P13886351729207659163.Spec : Prop :=
  ∀ n, P13886351729207659163.a n = A314680 n

end A314680

/-! ## A314680.P15266574620901699932

`A004525(A315183(n))+2*n`
-/

namespace A314680.P15266574620901699932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315183 n).toNat + (2 * n : ℤ)

end

end A314680.P15266574620901699932

namespace A314680

/-- `A004525(A315183(n))+2*n` -/
def P15266574620901699932.Spec : Prop :=
  ∀ n, P15266574620901699932.a n = A314680 n

end A314680

/-! ## A314680.P16990727402218345195

`A005843(n)+A004525(A313514(n))`
-/

namespace A314680.P16990727402218345195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A313514 n).toNat

end

end A314680.P16990727402218345195

namespace A314680

/-- `A005843(n)+A004525(A313514(n))` -/
def P16990727402218345195.Spec : Prop :=
  ∀ n, P16990727402218345195.a n = A314680 n

end A314680

/-! ## A314680.P16784068498948950211

`round(A008576(A315245(n))/3)`
-/

namespace A314680.P16784068498948950211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008576 (A315245 n).toNat : ℚ) / 3)

end

end A314680.P16784068498948950211

namespace A314680

/-- `round(A008576(A315245(n))/3)` -/
def P16784068498948950211.Spec : Prop :=
  ∀ n, P16784068498948950211.a n = A314680 n

end A314680

/-! ## A314680.P510601670352237082

`A004396(A314689(n)+2*n)`
-/

namespace A314680.P510601670352237082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314689 n + (2 * n : ℤ)).toNat

end

end A314680.P510601670352237082

namespace A314680

/-- `A004396(A314689(n)+2*n)` -/
def P510601670352237082.Spec : Prop :=
  ∀ n, P510601670352237082.a n = A314680 n

end A314680

/-! ## A314680.P12969434857324324822

`A004396(A314832(n)+2*n)`
-/

namespace A314680.P12969434857324324822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314832 n + (2 * n : ℤ)).toNat

end

end A314680.P12969434857324324822

namespace A314680

/-- `A004396(A314832(n)+2*n)` -/
def P12969434857324324822.Spec : Prop :=
  ∀ n, P12969434857324324822.a n = A314680 n

end A314680

/-! ## A314680.P6787232724339130697

`A004396(A314689(n)+n+n)`
-/

namespace A314680.P6787232724339130697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314689 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314680.P6787232724339130697

namespace A314680

/-- `A004396(A314689(n)+n+n)` -/
def P6787232724339130697.Spec : Prop :=
  ∀ n, P6787232724339130697.a n = A314680 n

end A314680

/-! ## A314680.P4637857260356421065

`A004396(A314832(n)+n+n)`
-/

namespace A314680.P4637857260356421065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314832 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314680.P4637857260356421065

namespace A314680

/-- `A004396(A314832(n)+n+n)` -/
def P4637857260356421065.Spec : Prop :=
  ∀ n, P4637857260356421065.a n = A314680 n

end A314680

/-! ## A314680.P17736531973865581958

`A314669(2*n)-4*n`
-/

namespace A314680.P17736531973865581958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 (2 * n) - (4 * n : ℤ)

end

end A314680.P17736531973865581958

namespace A314680

/-- `A314669(2*n)-4*n` -/
def P17736531973865581958.Spec : Prop :=
  ∀ n, P17736531973865581958.a n = A314680 n

end A314680

/-! ## A314680.P2096147859205706613

`A004525(A313475(2*n))`
-/

namespace A314680.P2096147859205706613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313475 (2 * n)).toNat

end

end A314680.P2096147859205706613

namespace A314680

/-- `A004525(A313475(2*n))` -/
def P2096147859205706613.Spec : Prop :=
  ∀ n, P2096147859205706613.a n = A314680 n

end A314680

/-! ## A314680.P12256900250953096748

`A004525(A314684(2*n))`
-/

namespace A314680.P12256900250953096748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314684 (2 * n)).toNat

end

end A314680.P12256900250953096748

namespace A314680

/-- `A004525(A314684(2*n))` -/
def P12256900250953096748.Spec : Prop :=
  ∀ n, P12256900250953096748.a n = A314680 n

end A314680

/-! ## A314680.P14549619756330656498

`A004525(A314707(2*n))`
-/

namespace A314680.P14549619756330656498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314707 (2 * n)).toNat

end

end A314680.P14549619756330656498

namespace A314680

/-- `A004525(A314707(2*n))` -/
def P14549619756330656498.Spec : Prop :=
  ∀ n, P14549619756330656498.a n = A314680 n

end A314680

/-! ## A314680.P12009619218805983042

`A004525(A314826(2*n))`
-/

namespace A314680.P12009619218805983042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314826 (2 * n)).toNat

end

end A314680.P12009619218805983042

namespace A314680

/-- `A004525(A314826(2*n))` -/
def P12009619218805983042.Spec : Prop :=
  ∀ n, P12009619218805983042.a n = A314680 n

end A314680

/-! ## A314680.P7487021614837894996

`2*A008574(2*n)-A314253(2*n)`
-/

namespace A314680.P7487021614837894996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314253 (2 * n)

end

end A314680.P7487021614837894996

namespace A314680

/-- `2*A008574(2*n)-A314253(2*n)` -/
def P7487021614837894996.Spec : Prop :=
  ∀ n, P7487021614837894996.a n = A314680 n

end A314680

/-! ## A314680.P16749356076596665090

`A116921(A315170(2*n)+1)`
-/

namespace A314680.P16749356076596665090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A315170 (2 * n) + 1).toNat

end

end A314680.P16749356076596665090

namespace A314680

/-- `A116921(A315170(2*n)+1)` -/
def P16749356076596665090.Spec : Prop :=
  ∀ n, P16749356076596665090.a n = A314680 n

end A314680

/-! ## A314680.P8238263284967968153

`A315170(2*n)/A135042(2*n+1)*A135042(n+1)`
-/

namespace A314680.P8238263284967968153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315170 (2 * n) : ℚ) / (A135042 (2 * n + 1) : ℚ) * (A135042 (n + 1) : ℚ)

end

end A314680.P8238263284967968153

namespace A314680

/-- `A315170(2*n)/A135042(2*n+1)*A135042(n+1)` -/
def P8238263284967968153.Spec : Prop :=
  ∀ n, P8238263284967968153.a n = (A314680 n : ℚ)

end A314680

/-!
# A314681: Coordination sequence Gal.5.240.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314681, there is no canonical definition to state claims against.
-/

/-! ## A314681.P9712315787814879718

`∑[A332268(A335491(2*(n+1))+18)]`
-/

namespace A314681.P9712315787814879718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332268 (A335491 (2 * (n + 1)) + 18).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314681.P9712315787814879718

/-! ## A314681.P5574107611419416785

`∑[A001222(A336421(round(2*n/3))+1)+2]-2`
-/

namespace A314681.P5574107611419416785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A336421 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat + 1).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A314681.P5574107611419416785

/-! ## A314681.P15919924364784039367

`∑[∑[A105824(A052924(n))]]`
-/

namespace A314681.P15919924364784039367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (A052924 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314681.P15919924364784039367

/-! ## A314681.P10822820173729927429

`A134021(A145270(n))+4*n`
-/

namespace A314681.P10822820173729927429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A145270 n).toNat + (4 * n : ℤ)

end

end A314681.P10822820173729927429

/-! ## A314681.P5577367923945975018

`∑[dr(A220527(A005214(n+1)))]`
-/

namespace A314681.P5577367923945975018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A220527 (A005214 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314681.P5577367923945975018

/-!
# A314682: Coordination sequence Gal.5.246.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314682, there is no canonical definition to state claims against.
-/

/-! ## A314682.P10088486308991344901

`∑[A143441(A296605(comp[2*n+3]))]`
-/

namespace A314682.P10088486308991344901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143441 (A296605 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314682.P10088486308991344901

/-! ## A314682.P1843294583506107287

`∑[gcd(A165919(n+5), A165929(3*(n+1)))]`
-/

namespace A314682.P1843294583506107287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165919 (n + 5)) (A165929 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314682.P1843294583506107287

/-! ## A314682.P1403110396656076584

`A130461(A130478(n+1))+A034045(n+1)`
-/

namespace A314682.P1403110396656076584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130461 (A130478 (n + 1)).toNat + A034045 (n + 1)

end

end A314682.P1403110396656076584

/-! ## A314682.P17992225222281485593

`eq[n%4, A227481(A196646(n+1))]`
-/

namespace A314682.P17992225222281485593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (A196646 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A314682.P17992225222281485593

/-! ## A314682.P6643130453589704448

`A039957(n+1)-A054348(A045723(n))`
-/

namespace A314682.P6643130453589704448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1) - A054348 (A045723 n).toNat

end

end A314682.P6643130453589704448

/-!
# A314683: Coordination sequence Gal.6.130.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314683, the canonical program `A314683.P15823530726852142928` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314683 has offset 0).

The definition of A314683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314683.P15823530726852142928

`A004525(n)+A313693(n)-n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A314683

/-- `A004525(n)+A313693(n)-n` -/
def P15823530726852142928.Spec : Prop :=
  ∀ n, P15823530726852142928.a n = A314683 n

theorem P15823530726852142928.correct : P15823530726852142928.Spec := by
  intro n
  simp only [A314683]

end A314683

/-! ## A314683.P6122167875546587253

`A008574(n)+A004396(A004525(n))`
-/

namespace A314683.P6122167875546587253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A004525 n).toNat

end

end A314683.P6122167875546587253

namespace A314683

/-- `A008574(n)+A004396(A004525(n))` -/
def P6122167875546587253.Spec : Prop :=
  ∀ n, P6122167875546587253.a n = A314683 n

end A314683

/-! ## A314683.P10369924269806702467

`A004396(A004525(n))+A004277(2*n)`
-/

namespace A314683.P10369924269806702467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + A004277 (2 * n)

end

end A314683.P10369924269806702467

namespace A314683

/-- `A004396(A004525(n))+A004277(2*n)` -/
def P10369924269806702467.Spec : Prop :=
  ∀ n, P10369924269806702467.a n = A314683 n

end A314683

/-! ## A314683.P1878560845908020288

`A004525(n)+A314830(n)-A004396(n)`
-/

namespace A314683.P1878560845908020288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314830 n - A004396 n)

end

end A314683.P1878560845908020288

namespace A314683

/-- `A004525(n)+A314830(n)-A004396(n)` -/
def P1878560845908020288.Spec : Prop :=
  ∀ n, P1878560845908020288.a n = A314683 n

end A314683

/-! ## A314683.P7160698253473763636

`A008458(n)+A008486(n)-A313099(n)`
-/

namespace A314683.P7160698253473763636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313099 n)

end

end A314683.P7160698253473763636

namespace A314683

/-- `A008458(n)+A008486(n)-A313099(n)` -/
def P7160698253473763636.Spec : Prop :=
  ∀ n, P7160698253473763636.a n = A314683 n

end A314683

/-! ## A314683.P457454744012509272

`A008458(n)-A004396(A004524(n+1))-A047513(n+1)`
-/

namespace A314683.P457454744012509272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004396 (A004524 (n + 1)).toNat - A047513 (n + 1)

end

end A314683.P457454744012509272

namespace A314683

/-- `A008458(n)-A004396(A004524(n+1))-A047513(n+1)` -/
def P457454744012509272.Spec : Prop :=
  ∀ n, P457454744012509272.a n = A314683 n

end A314683

/-! ## A314683.P13498749671387964880

`A128834(n)+A313922(n)-n`
-/

namespace A314683.P13498749671387964880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313922 n - (n : ℤ))

end

end A314683.P13498749671387964880

namespace A314683

/-- `A128834(n)+A313922(n)-n` -/
def P13498749671387964880.Spec : Prop :=
  ∀ n, P13498749671387964880.a n = A314683 n

end A314683

/-! ## A314683.P9957259792694818313

`A315476(n)-n`
-/

namespace A314683.P9957259792694818313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315476 n - (n : ℤ)

end

end A314683.P9957259792694818313

namespace A314683

/-- `A315476(n)-n` -/
def P9957259792694818313.Spec : Prop :=
  ∀ n, P9957259792694818313.a n = A314683 n

end A314683

/-! ## A314683.P4551574813812304675

`A315260(n)-A004396(n)`
-/

namespace A314683.P4551574813812304675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315260 n - A004396 n

end

end A314683.P4551574813812304675

namespace A314683

/-- `A315260(n)-A004396(n)` -/
def P4551574813812304675.Spec : Prop :=
  ∀ n, P4551574813812304675.a n = A314683 n

end A314683

/-! ## A314683.P11947165908401171682

`A315260(n)-A002264(2*n+1)`
-/

namespace A314683.P11947165908401171682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315260 n - A002264 (2 * n + 1)

end

end A314683.P11947165908401171682

namespace A314683

/-- `A315260(n)-A002264(2*n+1)` -/
def P11947165908401171682.Spec : Prop :=
  ∀ n, P11947165908401171682.a n = A314683 n

end A314683

/-! ## A314683.P11059885017730416374

`A315540(n)-A047513(n+1)`
-/

namespace A314683.P11059885017730416374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - A047513 (n + 1)

end

end A314683.P11059885017730416374

namespace A314683

/-- `A315540(n)-A047513(n+1)` -/
def P11059885017730416374.Spec : Prop :=
  ∀ n, P11059885017730416374.a n = A314683 n

end A314683

/-! ## A314683.P10876117343179761609

`A315751(n)-A047273(n+1)`
-/

namespace A314683.P10876117343179761609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315751 n - A047273 (n + 1)

end

end A314683.P10876117343179761609

namespace A314683

/-- `A315751(n)-A047273(n+1)` -/
def P10876117343179761609.Spec : Prop :=
  ∀ n, P10876117343179761609.a n = A314683 n

end A314683

/-! ## A314683.P15302904594366828921

`A004525(A313556(n))+2*n`
-/

namespace A314683.P15302904594366828921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313556 n).toNat + (2 * n : ℤ)

end

end A314683.P15302904594366828921

namespace A314683

/-- `A004525(A313556(n))+2*n` -/
def P15302904594366828921.Spec : Prop :=
  ∀ n, P15302904594366828921.a n = A314683 n

end A314683

/-! ## A314683.P1415389038557883591

`A004525(A313688(n))+2*n`
-/

namespace A314683.P1415389038557883591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313688 n).toNat + (2 * n : ℤ)

end

end A314683.P1415389038557883591

namespace A314683

/-- `A004525(A313688(n))+2*n` -/
def P1415389038557883591.Spec : Prop :=
  ∀ n, P1415389038557883591.a n = A314683 n

end A314683

/-! ## A314683.P8048856978194377751

`A004525(A314847(n))+2*n`
-/

namespace A314683.P8048856978194377751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314847 n).toNat + (2 * n : ℤ)

end

end A314683.P8048856978194377751

namespace A314683

/-- `A004525(A314847(n))+2*n` -/
def P8048856978194377751.Spec : Prop :=
  ∀ n, P8048856978194377751.a n = A314683 n

end A314683

/-! ## A314683.P3540055598956935512

`A004525(A314893(n))+2*n`
-/

namespace A314683.P3540055598956935512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314893 n).toNat + (2 * n : ℤ)

end

end A314683.P3540055598956935512

namespace A314683

/-- `A004525(A314893(n))+2*n` -/
def P3540055598956935512.Spec : Prop :=
  ∀ n, P3540055598956935512.a n = A314683 n

end A314683

/-! ## A314683.P2422257721386735146

`A004396(A313485(n)+A004525(n))+n`
-/

namespace A314683.P2422257721386735146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313485 n + A004525 n).toNat + (n : ℤ)

end

end A314683.P2422257721386735146

namespace A314683

/-- `A004396(A313485(n)+A004525(n))+n` -/
def P2422257721386735146.Spec : Prop :=
  ∀ n, P2422257721386735146.a n = A314683 n

end A314683

/-! ## A314683.P12792539001705553049

`A004396(A315246(n))+n`
-/

namespace A314683.P12792539001705553049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315246 n).toNat + (n : ℤ)

end

end A314683.P12792539001705553049

namespace A314683

/-- `A004396(A315246(n))+n` -/
def P12792539001705553049.Spec : Prop :=
  ∀ n, P12792539001705553049.a n = A314683 n

end A314683

/-! ## A314683.P15624942906536726288

`A004525(n)+A004525(A315693(n))+n`
-/

namespace A314683.P15624942906536726288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004525 (A315693 n).toNat + (n : ℤ))

end

end A314683.P15624942906536726288

namespace A314683

/-- `A004525(n)+A004525(A315693(n))+n` -/
def P15624942906536726288.Spec : Prop :=
  ∀ n, P15624942906536726288.a n = A314683 n

end A314683

/-! ## A314683.P15028746593261631715

`A004525(n)+A004525(A315700(n))+n`
-/

namespace A314683.P15028746593261631715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004525 (A315700 n).toNat + (n : ℤ))

end

end A314683.P15028746593261631715

namespace A314683

/-- `A004525(n)+A004525(A315700(n))+n` -/
def P15028746593261631715.Spec : Prop :=
  ∀ n, P15028746593261631715.a n = A314683 n

end A314683

/-!
# A314684: Coordination sequence Gal.6.149.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314684, the canonical program `A314684.P10439373234237939789` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314684 has offset 0).

The definition of A314684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314684.P18222293133518451394

`(A315186(n)+A008574(n))/2`
-/

namespace A314684.P18222293133518451394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315186 n + A008574 n : ℚ) / 2

end

end A314684.P18222293133518451394

namespace A314684

/-- `(A315186(n)+A008574(n))/2` -/
def P18222293133518451394.Spec : Prop :=
  ∀ n, P18222293133518451394.a n = (A314684 n : ℚ)

end A314684

/-! ## A314684.P10439373234237939789

`abs(A008592(n)-A314239(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A314684

/-- `abs(A008592(n)-A314239(n))` -/
def P10439373234237939789.Spec : Prop :=
  ∀ n, P10439373234237939789.a n = A314684 n

theorem P10439373234237939789.correct : P10439373234237939789.Spec := by
  intro n
  simp only [A314684]

end A314684

/-! ## A314684.P11720432005355534858

`A008458(n)+A008574(n)-A314239(n)`
-/

namespace A314684.P11720432005355534858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314239 n)

end

end A314684.P11720432005355534858

namespace A314684

/-- `A008458(n)+A008574(n)-A314239(n)` -/
def P11720432005355534858.Spec : Prop :=
  ∀ n, P11720432005355534858.a n = A314684 n

end A314684

/-! ## A314684.P3899127312472579196

`round(A250120(A314720(n))/5)`
-/

namespace A314684.P3899127312472579196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A250120 (A314720 n).toNat : ℚ) / 5)

end

end A314684.P3899127312472579196

namespace A314684

/-- `round(A250120(A314720(n))/5)` -/
def P3899127312472579196.Spec : Prop :=
  ∀ n, P3899127312472579196.a n = A314684 n

end A314684

/-! ## A314684.P8802503721825837460

`round(A250120(A314837(n))/5)`
-/

namespace A314684.P8802503721825837460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A250120 (A314837 n).toNat : ℚ) / 5)

end

end A314684.P8802503721825837460

namespace A314684

/-- `round(A250120(A314837(n))/5)` -/
def P8802503721825837460.Spec : Prop :=
  ∀ n, P8802503721825837460.a n = A314684 n

end A314684

/-! ## A314684.P9702317975053663426

`A004525(A313519(n))+2*n`
-/

namespace A314684.P9702317975053663426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313519 n).toNat + (2 * n : ℤ)

end

end A314684.P9702317975053663426

namespace A314684

/-- `A004525(A313519(n))+2*n` -/
def P9702317975053663426.Spec : Prop :=
  ∀ n, P9702317975053663426.a n = A314684 n

end A314684

/-! ## A314684.P5715733281636968940

`A004525(A314765(n))+2*n`
-/

namespace A314684.P5715733281636968940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314765 n).toNat + (2 * n : ℤ)

end

end A314684.P5715733281636968940

namespace A314684

/-- `A004525(A314765(n))+2*n` -/
def P5715733281636968940.Spec : Prop :=
  ∀ n, P5715733281636968940.a n = A314684 n

end A314684

/-! ## A314684.P3395535903241038008

`A004525(A315194(n))+2*n`
-/

namespace A314684.P3395535903241038008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315194 n).toNat + (2 * n : ℤ)

end

end A314684.P3395535903241038008

namespace A314684

/-- `A004525(A315194(n))+2*n` -/
def P3395535903241038008.Spec : Prop :=
  ∀ n, P3395535903241038008.a n = A314684 n

end A314684

/-! ## A314684.P10672233966817533960

`A005843(A008458(n)-n)-A314239(n)`
-/

namespace A314684.P10672233966817533960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314239 n

end

end A314684.P10672233966817533960

namespace A314684

/-- `A005843(A008458(n)-n)-A314239(n)` -/
def P10672233966817533960.Spec : Prop :=
  ∀ n, P10672233966817533960.a n = A314684 n

end A314684

/-! ## A314684.P7711794030371855071

`A008458(n)+n-A004526(A310520(n))`
-/

namespace A314684.P7711794030371855071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A310520 n).toNat)

end

end A314684.P7711794030371855071

namespace A314684

/-- `A008458(n)+n-A004526(A310520(n))` -/
def P7711794030371855071.Spec : Prop :=
  ∀ n, P7711794030371855071.a n = A314684 n

end A314684

/-! ## A314684.P2893776131882992141

`A004396(A313498(n)+2*n)`
-/

namespace A314684.P2893776131882992141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313498 n + (2 * n : ℤ)).toNat

end

end A314684.P2893776131882992141

namespace A314684

/-- `A004396(A313498(n)+2*n)` -/
def P2893776131882992141.Spec : Prop :=
  ∀ n, P2893776131882992141.a n = A314684 n

end A314684

/-! ## A314684.P10388858242946952731

`A004396(A314837(n)+2*n)`
-/

namespace A314684.P10388858242946952731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314837 n + (2 * n : ℤ)).toNat

end

end A314684.P10388858242946952731

namespace A314684

/-- `A004396(A314837(n)+2*n)` -/
def P10388858242946952731.Spec : Prop :=
  ∀ n, P10388858242946952731.a n = A314684 n

end A314684

/-! ## A314684.P9818838863019974808

`A004396(A313498(n)+n+n)`
-/

namespace A314684.P9818838863019974808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313498 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314684.P9818838863019974808

namespace A314684

/-- `A004396(A313498(n)+n+n)` -/
def P9818838863019974808.Spec : Prop :=
  ∀ n, P9818838863019974808.a n = A314684 n

end A314684

/-! ## A314684.P14465413436429974106

`A004396(A314837(n)+n+n)`
-/

namespace A314684.P14465413436429974106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314837 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314684.P14465413436429974106

namespace A314684

/-- `A004396(A314837(n)+n+n)` -/
def P14465413436429974106.Spec : Prop :=
  ∀ n, P14465413436429974106.a n = A314684 n

end A314684

/-! ## A314684.P3118616692132571657

`A312891(2*n)-4*n`
-/

namespace A314684.P3118616692132571657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312891 (2 * n) - (4 * n : ℤ)

end

end A314684.P3118616692132571657

namespace A314684

/-- `A312891(2*n)-4*n` -/
def P3118616692132571657.Spec : Prop :=
  ∀ n, P3118616692132571657.a n = A314684 n

end A314684

/-! ## A314684.P16420092428744240312

`A004525(A310367(2*n))`
-/

namespace A314684.P16420092428744240312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310367 (2 * n)).toNat

end

end A314684.P16420092428744240312

namespace A314684

/-- `A004525(A310367(2*n))` -/
def P16420092428744240312.Spec : Prop :=
  ∀ n, P16420092428744240312.a n = A314684 n

end A314684

/-! ## A314684.P6720295373417233131

`A004525(A312897(2*n))`
-/

namespace A314684.P6720295373417233131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312897 (2 * n)).toNat

end

end A314684.P6720295373417233131

namespace A314684

/-- `A004525(A312897(2*n))` -/
def P6720295373417233131.Spec : Prop :=
  ∀ n, P6720295373417233131.a n = A314684 n

end A314684

/-! ## A314684.P5077749670325471577

`A004525(A312902(2*n))`
-/

namespace A314684.P5077749670325471577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312902 (2 * n)).toNat

end

end A314684.P5077749670325471577

namespace A314684

/-- `A004525(A312902(2*n))` -/
def P5077749670325471577.Spec : Prop :=
  ∀ n, P5077749670325471577.a n = A314684 n

end A314684

/-! ## A314684.P15905998809721484909

`A004525(A312927(2*n))`
-/

namespace A314684.P15905998809721484909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312927 (2 * n)).toNat

end

end A314684.P15905998809721484909

namespace A314684

/-- `A004525(A312927(2*n))` -/
def P15905998809721484909.Spec : Prop :=
  ∀ n, P15905998809721484909.a n = A314684 n

end A314684

/-! ## A314684.P8929879479708769087

`A004525(A313024(2*n))`
-/

namespace A314684.P8929879479708769087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313024 (2 * n)).toNat

end

end A314684.P8929879479708769087

namespace A314684

/-- `A004525(A313024(2*n))` -/
def P8929879479708769087.Spec : Prop :=
  ∀ n, P8929879479708769087.a n = A314684 n

end A314684

/-!
# A314685: Coordination sequence Gal.3.16.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314685, the canonical program `A314685.P15360716130029271724` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314685 has offset 0).

The definition of A314685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314685.P15360716130029271724

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=4, a(4)=4, a(5)=5, a(6)=5`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A314685

/-- `∑[floor(a(n-5))]` -/
def P15360716130029271724.Spec : Prop :=
  ∀ n, (P15360716130029271724.a n : ℤ) = A314685 n

theorem P15360716130029271724.correct : P15360716130029271724.Spec := by
  intro n
  simp only [A314685]

end A314685

/-! ## A314685.P7327984810797335518

`floor(2/acot(3*n)-comp[or(2, n)+n])`
-/

namespace A314685.P7327984810797335518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌋

end

end A314685.P7327984810797335518

namespace A314685

/-- `floor(2/acot(3*n)-comp[or(2, n)+n])` -/
def P7327984810797335518.Spec : Prop :=
  ∀ n, P7327984810797335518.a n = A314685 n

end A314685

/-! ## A314685.P14712467351620841920

`comp[a(n-2)+7]+n+n+n` with `a(0)=0, a(1)=0, a(2)=6, a(3)=8`
-/

namespace A314685.P14712467351620841920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6, 8] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n + n + n

end

end A314685.P14712467351620841920

namespace A314685

/-- `comp[a(n-2)+7]+n+n+n` -/
def P14712467351620841920.Spec : Prop :=
  ∀ n, (P14712467351620841920.a n : ℤ) = A314685 n

end A314685

/-! ## A314685.P10189798768122739380

`A072154(n)+2*n`
-/

namespace A314685.P10189798768122739380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + (2 * n : ℤ)

end

end A314685.P10189798768122739380

namespace A314685

/-- `A072154(n)+2*n` -/
def P10189798768122739380.Spec : Prop :=
  ∀ n, P10189798768122739380.a n = A314685 n

end A314685

/-! ## A314685.P1798691011930058446

`A250120(3*n)-10*n`
-/

namespace A314685.P1798691011930058446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * n) - (10 * n : ℤ)

end

end A314685.P1798691011930058446

namespace A314685

/-- `A250120(3*n)-10*n` -/
def P1798691011930058446.Spec : Prop :=
  ∀ n, P1798691011930058446.a n = A314685 n

end A314685

/-! ## A314685.P3617025298896665874

`A312907(n)+A134667(n)`
-/

namespace A314685.P3617025298896665874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312907 n + A134667 n

end

end A314685.P3617025298896665874

namespace A314685

/-- `A312907(n)+A134667(n)` -/
def P3617025298896665874.Spec : Prop :=
  ∀ n, P3617025298896665874.a n = A314685 n

end A314685

/-! ## A314685.P5490266581554846431

`A312475(n)+A244895(n)`
-/

namespace A314685.P5490266581554846431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A244895 n

end

end A314685.P5490266581554846431

namespace A314685

/-- `A312475(n)+A244895(n)` -/
def P5490266581554846431.Spec : Prop :=
  ∀ n, P5490266581554846431.a n = A314685 n

end A314685

/-! ## A314685.P9933203210776407746

`A330025(n)+A311384(n)`
-/

namespace A314685.P9933203210776407746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A311384 n

end

end A314685.P9933203210776407746

namespace A314685

/-- `A330025(n)+A311384(n)` -/
def P9933203210776407746.Spec : Prop :=
  ∀ n, P9933203210776407746.a n = A314685 n

end A314685

/-! ## A314685.P17257796702471233555

`A315171(n)-A330025(n)`
-/

namespace A314685.P17257796702471233555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315171 n - A330025 n

end

end A314685.P17257796702471233555

namespace A314685

/-- `A315171(n)-A330025(n)` -/
def P17257796702471233555.Spec : Prop :=
  ∀ n, P17257796702471233555.a n = A314685 n

end A314685

/-! ## A314685.P15295855747764811704

`A047363(n+1)+A008486(n)`
-/

namespace A314685.P15295855747764811704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + A008486 n

end

end A314685.P15295855747764811704

namespace A314685

/-- `A047363(n+1)+A008486(n)` -/
def P15295855747764811704.Spec : Prop :=
  ∀ n, P15295855747764811704.a n = A314685 n

end A314685

/-! ## A314685.P1064800257531205139

`A008458(n)-A047486(n+1)`
-/

namespace A314685.P1064800257531205139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047486 (n + 1)

end

end A314685.P1064800257531205139

namespace A314685

/-- `A008458(n)-A047486(n+1)` -/
def P1064800257531205139.Spec : Prop :=
  ∀ n, P1064800257531205139.a n = A314685 n

end A314685

/-! ## A314685.P10124609660243806959

`A315707(n)-A047299(n+1)`
-/

namespace A314685.P10124609660243806959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - A047299 (n + 1)

end

end A314685.P10124609660243806959

namespace A314685

/-- `A315707(n)-A047299(n+1)` -/
def P10124609660243806959.Spec : Prop :=
  ∀ n, P10124609660243806959.a n = A314685 n

end A314685

/-! ## A314685.P10085678327316213362

`A005408(n)-(1-A072154(n))`
-/

namespace A314685.P10085678327316213362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (1 - A072154 n)

end

end A314685.P10085678327316213362

namespace A314685

/-- `A005408(n)-(1-A072154(n))` -/
def P10085678327316213362.Spec : Prop :=
  ∀ n, P10085678327316213362.a n = A314685 n

end A314685

/-! ## A314685.P13840386411907855697

`∪[A247128(n+1), A008377(n)]`
-/

namespace A314685.P13840386411907855697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A314685.P13840386411907855697

namespace A314685

/-- `∪[A247128(n+1), A008377(n)]` -/
def P13840386411907855697.Spec : Prop :=
  ∀ n, (P13840386411907855697.a n : ℤ) = A314685 n

end A314685

/-! ## A314685.P12746776208394617098

`∪[A247128(n+1), A008395(n)]`
-/

namespace A314685.P12746776208394617098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A314685.P12746776208394617098

namespace A314685

/-- `∪[A247128(n+1), A008395(n)]` -/
def P12746776208394617098.Spec : Prop :=
  ∀ n, (P12746776208394617098.a n : ℤ) = A314685 n

end A314685

/-! ## A314685.P11435017054182623710

`∪[A008450(n), A247128(n+1)]`
-/

namespace A314685.P11435017054182623710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A314685.P11435017054182623710

namespace A314685

/-- `∪[A008450(n), A247128(n+1)]` -/
def P11435017054182623710.Spec : Prop :=
  ∀ n, (P11435017054182623710.a n : ℤ) = A314685 n

end A314685

/-! ## A314685.P17198678144884093666

`∪[A247128(n+1), A014801(n)]`
-/

namespace A314685.P17198678144884093666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014801 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A314685.P17198678144884093666

namespace A314685

/-- `∪[A247128(n+1), A014801(n)]` -/
def P17198678144884093666.Spec : Prop :=
  ∀ n, (P17198678144884093666.a n : ℤ) = A314685 n

end A314685

/-! ## A314685.P13545056497331958001

`∪[A247128(n+1), A016759(n)]`
-/

namespace A314685.P13545056497331958001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A314685.P13545056497331958001

namespace A314685

/-- `∪[A247128(n+1), A016759(n)]` -/
def P13545056497331958001.Spec : Prop :=
  ∀ n, (P13545056497331958001.a n : ℤ) = A314685 n

end A314685

/-! ## A314685.P6044901367601299364

`∪[A016760(n), A247128(n+1)]`
-/

namespace A314685.P6044901367601299364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A314685.P6044901367601299364

namespace A314685

/-- `∪[A016760(n), A247128(n+1)]` -/
def P6044901367601299364.Spec : Prop :=
  ∀ n, (P6044901367601299364.a n : ℤ) = A314685 n

end A314685

/-! ## A314685.P12068555698315297083

`∪[A247128(n+1), A017080(n)]`
-/

namespace A314685.P12068555698315297083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A314685.P12068555698315297083

namespace A314685

/-- `∪[A247128(n+1), A017080(n)]` -/
def P12068555698315297083.Spec : Prop :=
  ∀ n, (P12068555698315297083.a n : ℤ) = A314685 n

end A314685

/-!
# A314686: Coordination sequence Gal.6.213.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314686, there is no canonical definition to state claims against.
-/

/-! ## A314686.P12199513423470718006

`A313583(n)-A048881(A000129(n))`
-/

namespace A314686.P12199513423470718006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n - A048881 (A000129 n).toNat

end

end A314686.P12199513423470718006

/-! ## A314686.P13910969383387141760

`A314688(n)-A185264(A036561(n))`
-/

namespace A314686.P13910969383387141760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n - A185264 (A036561 n).toNat

end

end A314686.P13910969383387141760

/-! ## A314686.P12145279261997809059

`A315182(n)-A327103(A000096(n))`
-/

namespace A314686.P12145279261997809059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315182 n - A327103 (A000096 n).toNat

end

end A314686.P12145279261997809059

/-! ## A314686.P5094740518973563729

`A314687(n)-A286344(A299321(n+1))`
-/

namespace A314686.P5094740518973563729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314687 n - A286344 (A299321 (n + 1)).toNat

end

end A314686.P5094740518973563729

/-! ## A314686.P969758038140005797

`and(A124035(A001987(n+1)), A314687(n))`
-/

namespace A314686.P969758038140005797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124035 (A001987 (n + 1)).toNat) (A314687 n)

end

end A314686.P969758038140005797

/-!
# A314687: Coordination sequence Gal.6.266.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314687, there is no canonical definition to state claims against.
-/

/-! ## A314687.P11002280636952199118

`A209900(A315420(n))`
-/

namespace A314687.P11002280636952199118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A315420 n).toNat

end

end A314687.P11002280636952199118

/-! ## A314687.P16175788016043845123

`A314686(n)+A286344(A299321(n+1))`
-/

namespace A314687.P16175788016043845123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314686 n + A286344 (A299321 (n + 1)).toNat

end

end A314687.P16175788016043845123

/-! ## A314687.P10510110755394524228

`A177152(n+1)-A288226(A175660(n))`
-/

namespace A314687.P10510110755394524228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177152 (n + 1) - A288226 (A175660 n).toNat

end

end A314687.P10510110755394524228

/-!
# A314688: Coordination sequence Gal.6.254.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314688, the canonical program `A314688.P9311445367984874380` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314688 has offset 0).

The definition of A314688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314688.P15991309230726153169

`A312909(n)+A134667(n)`
-/

namespace A314688.P15991309230726153169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + A134667 n

end

end A314688.P15991309230726153169

namespace A314688

/-- `A312909(n)+A134667(n)` -/
def P15991309230726153169.Spec : Prop :=
  ∀ n, P15991309230726153169.a n = A314688 n

end A314688

/-! ## A314688.P9311445367984874380

`A047424(n+1)+A311257(n)-n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A314688

/-- `A047424(n+1)+A311257(n)-n` -/
def P9311445367984874380.Spec : Prop :=
  ∀ n, P9311445367984874380.a n = A314688 n

theorem P9311445367984874380.correct : P9311445367984874380.Spec := by
  intro n
  simp only [A314688]

end A314688

/-! ## A314688.P1476511544358425174

`A312123(n)+A128834(n)`
-/

namespace A314688.P1476511544358425174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + A128834 n

end

end A314688.P1476511544358425174

namespace A314688

/-- `A312123(n)+A128834(n)` -/
def P1476511544358425174.Spec : Prop :=
  ∀ n, P1476511544358425174.a n = A314688 n

end A314688

/-! ## A314688.P10123495672549657795

`abs(A008592(n)-(A313088(n)+n))`
-/

namespace A314688.P10123495672549657795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313088 n + (n : ℤ))|

end

end A314688.P10123495672549657795

namespace A314688

/-- `abs(A008592(n)-(A313088(n)+n))` -/
def P10123495672549657795.Spec : Prop :=
  ∀ n, P10123495672549657795.a n = A314688 n

end A314688

/-! ## A314688.P143317094178933109

`A008458(n)+A008486(n)-A313088(n)`
-/

namespace A314688.P143317094178933109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313088 n)

end

end A314688.P143317094178933109

namespace A314688

/-- `A008458(n)+A008486(n)-A313088(n)` -/
def P143317094178933109.Spec : Prop :=
  ∀ n, P143317094178933109.a n = A314688 n

end A314688

/-! ## A314688.P13910410314360907580

`A004525(n)+A313698(n)-n`
-/

namespace A314688.P13910410314360907580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313698 n - (n : ℤ))

end

end A314688.P13910410314360907580

namespace A314688

/-- `A004525(n)+A313698(n)-n` -/
def P13910410314360907580.Spec : Prop :=
  ∀ n, P13910410314360907580.a n = A314688 n

end A314688

/-! ## A314688.P9552641506470307528

`A004396(A004525(n))+A313739(n)-n`
-/

namespace A314688.P9552641506470307528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313739 n - (n : ℤ))

end

end A314688.P9552641506470307528

namespace A314688

/-- `A004396(A004525(n))+A313739(n)-n` -/
def P9552641506470307528.Spec : Prop :=
  ∀ n, P9552641506470307528.a n = A314688 n

end A314688

/-! ## A314688.P4392905557476520711

`A315479(n)-n`
-/

namespace A314688.P4392905557476520711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315479 n - (n : ℤ)

end

end A314688.P4392905557476520711

namespace A314688

/-- `A315479(n)-n` -/
def P4392905557476520711.Spec : Prop :=
  ∀ n, P4392905557476520711.a n = A314688 n

end A314688

/-! ## A314688.P11942318536332655530

`A128834(n)+A313924(n)-n`
-/

namespace A314688.P11942318536332655530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313924 n - (n : ℤ))

end

end A314688.P11942318536332655530

namespace A314688

/-- `A128834(n)+A313924(n)-n` -/
def P11942318536332655530.Spec : Prop :=
  ∀ n, P11942318536332655530.a n = A314688 n

end A314688

/-! ## A314688.P15384873660514103172

`A008458(n)+A008574(n)-A314236(n)`
-/

namespace A314688.P15384873660514103172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314236 n)

end

end A314688.P15384873660514103172

namespace A314688

/-- `A008458(n)+A008574(n)-A314236(n)` -/
def P15384873660514103172.Spec : Prop :=
  ∀ n, P15384873660514103172.a n = A314688 n

end A314688

/-! ## A314688.P10752202138337689489

`A315549(n)-A047513(n+1)`
-/

namespace A314688.P10752202138337689489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - A047513 (n + 1)

end

end A314688.P10752202138337689489

namespace A314688

/-- `A315549(n)-A047513(n+1)` -/
def P10752202138337689489.Spec : Prop :=
  ∀ n, P10752202138337689489.a n = A314688 n

end A314688

/-! ## A314688.P7856266018808473164

`A004525(A314742(n))+2*n`
-/

namespace A314688.P7856266018808473164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314742 n).toNat + (2 * n : ℤ)

end

end A314688.P7856266018808473164

namespace A314688

/-- `A004525(A314742(n))+2*n` -/
def P7856266018808473164.Spec : Prop :=
  ∀ n, P7856266018808473164.a n = A314688 n

end A314688

/-! ## A314688.P15658304257747253111

`A004525(A314903(n))+2*n`
-/

namespace A314688.P15658304257747253111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314903 n).toNat + (2 * n : ℤ)

end

end A314688.P15658304257747253111

namespace A314688

/-- `A004525(A314903(n))+2*n` -/
def P15658304257747253111.Spec : Prop :=
  ∀ n, P15658304257747253111.a n = A314688 n

end A314688

/-! ## A314688.P8494120971952185125

`A004525(A315405(n))+2*n`
-/

namespace A314688.P8494120971952185125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315405 n).toNat + (2 * n : ℤ)

end

end A314688.P8494120971952185125

namespace A314688

/-- `A004525(A315405(n))+2*n` -/
def P8494120971952185125.Spec : Prop :=
  ∀ n, P8494120971952185125.a n = A314688 n

end A314688

/-! ## A314688.P12778477836157052060

`A004525(n)+A004396(A313698(n)+n)`
-/

namespace A314688.P12778477836157052060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A004396 (A313698 n + (n : ℤ)).toNat

end

end A314688.P12778477836157052060

namespace A314688

/-- `A004525(n)+A004396(A313698(n)+n)` -/
def P12778477836157052060.Spec : Prop :=
  ∀ n, P12778477836157052060.a n = A314688 n

end A314688

/-! ## A314688.P11116867367948200993

`A004525(A313533(2*n))`
-/

namespace A314688.P11116867367948200993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313533 (2 * n)).toNat

end

end A314688.P11116867367948200993

namespace A314688

/-- `A004525(A313533(2*n))` -/
def P11116867367948200993.Spec : Prop :=
  ∀ n, P11116867367948200993.a n = A314688 n

end A314688

/-! ## A314688.P1172578221351496223

`A004525(A313680(2*n))`
-/

namespace A314688.P1172578221351496223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313680 (2 * n)).toNat

end

end A314688.P1172578221351496223

namespace A314688

/-- `A004525(A313680(2*n))` -/
def P1172578221351496223.Spec : Prop :=
  ∀ n, P1172578221351496223.a n = A314688 n

end A314688

/-! ## A314688.P11244406345230947463

`A004525(A314108(2*n)-n)`
-/

namespace A314688.P11244406345230947463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314108 (2 * n) - (n : ℤ)).toNat

end

end A314688.P11244406345230947463

namespace A314688

/-- `A004525(A314108(2*n)-n)` -/
def P11244406345230947463.Spec : Prop :=
  ∀ n, P11244406345230947463.a n = A314688 n

end A314688

/-! ## A314688.P1860238350462922975

`A004525(A315462(2*n)-n)`
-/

namespace A314688.P1860238350462922975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315462 (2 * n) - (n : ℤ)).toNat

end

end A314688.P1860238350462922975

namespace A314688

/-- `A004525(A315462(2*n)-n)` -/
def P1860238350462922975.Spec : Prop :=
  ∀ n, P1860238350462922975.a n = A314688 n

end A314688

/-! ## A314688.P9974325590928114611

`A004525(A315465(2*n)-n)`
-/

namespace A314688.P9974325590928114611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315465 (2 * n) - (n : ℤ)).toNat

end

end A314688.P9974325590928114611

namespace A314688

/-- `A004525(A315465(2*n)-n)` -/
def P9974325590928114611.Spec : Prop :=
  ∀ n, P9974325590928114611.a n = A314688 n

end A314688

/-!
# A314689: Coordination sequence Gal.6.255.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314689, the canonical program `A314689.P7889334889047970928` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314689 has offset 0).

The definition of A314689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314689.P1712291150410104918

`(A315177(n)+A311385(n))/2`
-/

namespace A314689.P1712291150410104918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315177 n + A311385 n : ℚ) / 2

end

end A314689.P1712291150410104918

namespace A314689

/-- `(A315177(n)+A311385(n))/2` -/
def P1712291150410104918.Spec : Prop :=
  ∀ n, P1712291150410104918.a n = (A314689 n : ℚ)

end A314689

/-! ## A314689.P6013437173369054214

`A311331(n)+A004525(A313543(n)-A311331(n))`
-/

namespace A314689.P6013437173369054214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311331 n + A004525 (A313543 n - A311331 n).toNat

end

end A314689.P6013437173369054214

namespace A314689

/-- `A311331(n)+A004525(A313543(n)-A311331(n))` -/
def P6013437173369054214.Spec : Prop :=
  ∀ n, P6013437173369054214.a n = A314689 n

end A314689

/-! ## A314689.P7889334889047970928

`abs(A008592(n)-A314234(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A314689

/-- `abs(A008592(n)-A314234(n))` -/
def P7889334889047970928.Spec : Prop :=
  ∀ n, P7889334889047970928.a n = A314689 n

theorem P7889334889047970928.correct : P7889334889047970928.Spec := by
  intro n
  simp only [A314689]

end A314689

/-! ## A314689.P6460319302762483158

`2*A008706(n)-A314234(n)`
-/

namespace A314689.P6460319302762483158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314234 n

end

end A314689.P6460319302762483158

namespace A314689

/-- `2*A008706(n)-A314234(n)` -/
def P6460319302762483158.Spec : Prop :=
  ∀ n, P6460319302762483158.a n = A314689 n

end A314689

/-! ## A314689.P15989731066413743087

`A135042(2*n+1)-A314234(n)`
-/

namespace A314689.P15989731066413743087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A314234 n

end

end A314689.P15989731066413743087

namespace A314689

/-- `A135042(2*n+1)-A314234(n)` -/
def P15989731066413743087.Spec : Prop :=
  ∀ n, P15989731066413743087.a n = A314689 n

end A314689

/-! ## A314689.P5145877586365657926

`A184418(A008574(n))-A314234(n)`
-/

namespace A314689.P5145877586365657926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A314234 n

end

end A314689.P5145877586365657926

namespace A314689

/-- `A184418(A008574(n))-A314234(n)` -/
def P5145877586365657926.Spec : Prop :=
  ∀ n, P5145877586365657926.a n = A314689 n

end A314689

/-! ## A314689.P7560420157482159538

`A008458(n)+A008574(n)-A314234(n)`
-/

namespace A314689.P7560420157482159538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314234 n)

end

end A314689.P7560420157482159538

namespace A314689

/-- `A008458(n)+A008574(n)-A314234(n)` -/
def P7560420157482159538.Spec : Prop :=
  ∀ n, P7560420157482159538.a n = A314689 n

end A314689

/-! ## A314689.P139567062775993957

`A314234(n)-A005843(A314234(n)-A008706(n))`
-/

namespace A314689.P139567062775993957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314234 n - A005843 (A314234 n - A008706 n).toNat

end

end A314689.P139567062775993957

namespace A314689

/-- `A314234(n)-A005843(A314234(n)-A008706(n))` -/
def P139567062775993957.Spec : Prop :=
  ∀ n, P139567062775993957.a n = A314689 n

end A314689

/-! ## A314689.P5691847616954860218

`A005843(A008706(n))-A314234(n)`
-/

namespace A314689.P5691847616954860218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314234 n

end

end A314689.P5691847616954860218

namespace A314689

/-- `A005843(A008706(n))-A314234(n)` -/
def P5691847616954860218.Spec : Prop :=
  ∀ n, P5691847616954860218.a n = A314689 n

end A314689

/-! ## A314689.P16829162011587685634

`A065502(A008458(n))-A314234(n)`
-/

namespace A314689.P16829162011587685634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A314234 n

end

end A314689.P16829162011587685634

namespace A314689

/-- `A065502(A008458(n))-A314234(n)` -/
def P16829162011587685634.Spec : Prop :=
  ∀ n, P16829162011587685634.a n = A314689 n

end A314689

/-! ## A314689.P16575078351479807661

`A004396(A315450(2*n)-A008585(n))`
-/

namespace A314689.P16575078351479807661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315450 (2 * n) - A008585 n).toNat

end

end A314689.P16575078351479807661

namespace A314689

/-- `A004396(A315450(2*n)-A008585(n))` -/
def P16575078351479807661.Spec : Prop :=
  ∀ n, P16575078351479807661.a n = A314689 n

end A314689

/-! ## A314689.P17971433865279434197

`A315509(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A314689.P17971433865279434197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315509 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A314689.P17971433865279434197

namespace A314689

/-- `A315509(2*n)+A008458(n+1)-(12*n+6)` -/
def P17971433865279434197.Spec : Prop :=
  ∀ n, P17971433865279434197.a n = A314689 n

end A314689

/-! ## A314689.P16228921007383324489

`A004525(A315396(2*n))`
-/

namespace A314689.P16228921007383324489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315396 (2 * n)).toNat

end

end A314689.P16228921007383324489

namespace A314689

/-- `A004525(A315396(2*n))` -/
def P16228921007383324489.Spec : Prop :=
  ∀ n, P16228921007383324489.a n = A314689 n

end A314689

/-! ## A314689.P7021443600271626805

`A004525(A313543(n)+A311331(n))`
-/

namespace A314689.P7021443600271626805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313543 n + A311331 n).toNat

end

end A314689.P7021443600271626805

namespace A314689

/-- `A004525(A313543(n)+A311331(n))` -/
def P7021443600271626805.Spec : Prop :=
  ∀ n, P7021443600271626805.a n = A314689 n

end A314689

/-! ## A314689.P103311449224234081

`A004525(A315177(n)+A311385(n))`
-/

namespace A314689.P103311449224234081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315177 n + A311385 n).toNat

end

end A314689.P103311449224234081

namespace A314689

/-- `A004525(A315177(n)+A311385(n))` -/
def P103311449224234081.Spec : Prop :=
  ∀ n, P103311449224234081.a n = A314689 n

end A314689

/-! ## A314689.P14155068925637733854

`A004526(A315177(n)+A311385(n))`
-/

namespace A314689.P14155068925637733854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315177 n + A311385 n).toNat

end

end A314689.P14155068925637733854

namespace A314689

/-- `A004526(A315177(n)+A311385(n))` -/
def P14155068925637733854.Spec : Prop :=
  ∀ n, P14155068925637733854.a n = A314689 n

end A314689

/-! ## A314689.P1895679851734052329

`A004396(2*A313572(n))-2*n`
-/

namespace A314689.P1895679851734052329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313572 n).toNat - (2 * n : ℤ)

end

end A314689.P1895679851734052329

namespace A314689

/-- `A004396(2*A313572(n))-2*n` -/
def P1895679851734052329.Spec : Prop :=
  ∀ n, P1895679851734052329.a n = A314689 n

end A314689

/-! ## A314689.P1537122140752094382

`A004396(A315450(2*n))-A005843(n)`
-/

namespace A314689.P1537122140752094382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315450 (2 * n)).toNat - A005843 n

end

end A314689.P1537122140752094382

namespace A314689

/-- `A004396(A315450(2*n))-A005843(n)` -/
def P1537122140752094382.Spec : Prop :=
  ∀ n, P1537122140752094382.a n = A314689 n

end A314689

/-! ## A314689.P17960171617638432519

`A233583(A017281(n))-A314234(n)`
-/

namespace A314689.P17960171617638432519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A314234 n

end

end A314689.P17960171617638432519

namespace A314689

/-- `A233583(A017281(n))-A314234(n)` -/
def P17960171617638432519.Spec : Prop :=
  ∀ n, P17960171617638432519.a n = A314689 n

end A314689

/-!
# A314690: Coordination sequence Gal.6.514.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314690, there is no canonical definition to state claims against.
-/

/-! ## A314690.P1122995450922496780

`A314662(n)+A011710(A148126(n))`
-/

namespace A314690.P1122995450922496780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314662 n + A011710 (A148126 n).toNat

end

end A314690.P1122995450922496780

/-! ## A314690.P5187748903915785005

`A050433(∑[A028304(2*n)])+floor(n*ϕ^3)`
-/

namespace A314690.P5187748903915785005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050433 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ⌊(n : ℝ) * Real.goldenRatio ^ 3⌋

end

end A314690.P5187748903915785005

/-! ## A314690.P12370590894007696074

`A311325(n)+A124761(A314212(2*n))`
-/

namespace A314690.P12370590894007696074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311325 n + A124761 (A314212 (2 * n)).toNat

end

end A314690.P12370590894007696074

/-! ## A314690.P7372331046104454067

`A204425(A053221(n+1))+A161579(3*n+1)`
-/

namespace A314690.P7372331046104454067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204425 (A053221 (n + 1)).toNat + A161579 (3 * n + 1)

end

end A314690.P7372331046104454067

/-! ## A314690.P7025779049719509873

`A330025(A279375(3*n+2)-A006047(n)+n)+A312948(n)`
-/

namespace A314690.P7025779049719509873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A279375 (3 * n + 2) - A006047 n + (n : ℤ)).toNat + A312948 n

end

end A314690.P7025779049719509873

/-!
# A314691: Coordination sequence Gal.6.256.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314691, the canonical program `A314691.P8896103277328395044` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314691 has offset 0).

The definition of A314691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314691.P8896103277328395044

`A311312(n)+A004525(A004396(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A314691

/-- `A311312(n)+A004525(A004396(n))` -/
def P8896103277328395044.Spec : Prop :=
  ∀ n, P8896103277328395044.a n = A314691 n

theorem P8896103277328395044.correct : P8896103277328395044.Spec := by
  intro n
  simp only [A314691]

end A314691

/-! ## A314691.P17183859809389646083

`A004525(A004396(n))+A314903(n)-A004396(n)`
-/

namespace A314691.P17183859809389646083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314903 n - A004396 n)

end

end A314691.P17183859809389646083

namespace A314691

/-- `A004525(A004396(n))+A314903(n)-A004396(n)` -/
def P17183859809389646083.Spec : Prop :=
  ∀ n, P17183859809389646083.a n = A314691 n

end A314691

/-! ## A314691.P16170700703074218301

`A312144(n)+A128834(n)`
-/

namespace A314691.P16170700703074218301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + A128834 n

end

end A314691.P16170700703074218301

namespace A314691

/-- `A312144(n)+A128834(n)` -/
def P16170700703074218301.Spec : Prop :=
  ∀ n, P16170700703074218301.a n = A314691 n

end A314691

/-! ## A314691.P17061315797818636904

`A312144(n)-A010892(n+2)`
-/

namespace A314691.P17061315797818636904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n - A010892 (n + 2)

end

end A314691.P17061315797818636904

namespace A314691

/-- `A312144(n)-A010892(n+2)` -/
def P17061315797818636904.Spec : Prop :=
  ∀ n, P17061315797818636904.a n = A314691 n

end A314691

/-! ## A314691.P14977632784141283864

`A313754(n)-∑[A131735(n)]`
-/

namespace A314691.P14977632784141283864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314691.P14977632784141283864

namespace A314691

/-- `A313754(n)-∑[A131735(n)]` -/
def P14977632784141283864.Spec : Prop :=
  ∀ n, P14977632784141283864.a n = A314691 n

end A314691

/-! ## A314691.P5873243830772824661

`abs(A008592(n)-A314233(n))`
-/

namespace A314691.P5873243830772824661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314233 n|

end

end A314691.P5873243830772824661

namespace A314691

/-- `abs(A008592(n)-A314233(n))` -/
def P5873243830772824661.Spec : Prop :=
  ∀ n, P5873243830772824661.a n = A314691 n

end A314691

/-! ## A314691.P13882954671531769838

`2*A008706(n)-A314233(n)`
-/

namespace A314691.P13882954671531769838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314233 n

end

end A314691.P13882954671531769838

namespace A314691

/-- `2*A008706(n)-A314233(n)` -/
def P13882954671531769838.Spec : Prop :=
  ∀ n, P13882954671531769838.a n = A314691 n

end A314691

/-! ## A314691.P11143271913626703455

`A008458(n)+A008574(n)-A314233(n)`
-/

namespace A314691.P11143271913626703455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314233 n)

end

end A314691.P11143271913626703455

namespace A314691

/-- `A008458(n)+A008574(n)-A314233(n)` -/
def P11143271913626703455.Spec : Prop :=
  ∀ n, P11143271913626703455.a n = A314691 n

end A314691

/-! ## A314691.P12273515538757516688

`∑{d}[A008592(n)-A314233(n), A000010(#)]`
-/

namespace A314691.P12273515538757516688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314691.P12273515538757516688

namespace A314691

/-- `∑{d}[A008592(n)-A314233(n), A000010(#)]` -/
def P12273515538757516688.Spec : Prop :=
  ∀ n, P12273515538757516688.a n = A314691 n

end A314691

/-! ## A314691.P13172711478892350950

`(A008592(n)-A314233(n))^A014963(4*n+2)`
-/

namespace A314691.P13172711478892350950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A314233 n : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A314691.P13172711478892350950

namespace A314691

/-- `(A008592(n)-A314233(n))^A014963(4*n+2)` -/
def P13172711478892350950.Spec : Prop :=
  ∀ n, P13172711478892350950.a n = (A314691 n : ℚ)

end A314691

/-! ## A314691.P1586060669945251466

`A314233(n)-A005843(A314233(n)-A008706(n))`
-/

namespace A314691.P1586060669945251466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314233 n - A005843 (A314233 n - A008706 n).toNat

end

end A314691.P1586060669945251466

namespace A314691

/-- `A314233(n)-A005843(A314233(n)-A008706(n))` -/
def P1586060669945251466.Spec : Prop :=
  ∀ n, P1586060669945251466.a n = A314691 n

end A314691

/-! ## A314691.P2022083884769668563

`A004525(A004396(n))+A314737(n)-A004525(n)`
-/

namespace A314691.P2022083884769668563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314737 n - A004525 n)

end

end A314691.P2022083884769668563

namespace A314691

/-- `A004525(A004396(n))+A314737(n)-A004525(n)` -/
def P2022083884769668563.Spec : Prop :=
  ∀ n, P2022083884769668563.a n = A314691 n

end A314691

/-! ## A314691.P7785989216706777006

`A005843(A008706(n))-A314233(n)`
-/

namespace A314691.P7785989216706777006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314233 n

end

end A314691.P7785989216706777006

namespace A314691

/-- `A005843(A008706(n))-A314233(n)` -/
def P7785989216706777006.Spec : Prop :=
  ∀ n, P7785989216706777006.a n = A314691 n

end A314691

/-!
# A314692: Coordination sequence Gal.5.81.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314692, the canonical program `A314692.P15104501043436561296` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314692 has offset 0).

The definition of A314692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314692.P15104501043436561296

`A342851(2*n+1)+A067251(2*n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314692

/-- `A342851(2*n+1)+A067251(2*n+1)` -/
def P15104501043436561296.Spec : Prop :=
  ∀ n, P15104501043436561296.a n = A314692 n

theorem P15104501043436561296.correct : P15104501043436561296.Spec := by
  intro n
  simp only [A314692]

end A314692

/-! ## A314692.P7773514902100088306

`A342851(2*n+1)+A342851(2*(n+1))`
-/

namespace A314692.P7773514902100088306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (2 * n + 1) + A342851 (2 * (n + 1))

end

end A314692.P7773514902100088306

namespace A314692

/-- `A342851(2*n+1)+A342851(2*(n+1))` -/
def P7773514902100088306.Spec : Prop :=
  ∀ n, P7773514902100088306.a n = A314692 n

end A314692

/-! ## A314692.P16534880642065630869

`A004086(A076641(2*n+1))+A004086(A076641(2*n))`
-/

namespace A314692.P16534880642065630869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A076641 (2 * n + 1)).toNat + A004086 (A076641 (2 * n)).toNat

end

end A314692.P16534880642065630869

namespace A314692

/-- `A004086(A076641(2*n+1))+A004086(A076641(2*n))` -/
def P16534880642065630869.Spec : Prop :=
  ∀ n, P16534880642065630869.a n = A314692 n

end A314692

/-! ## A314692.P15777635330958392085

`A314848(n)-Δ[A011862(n)]`
-/

namespace A314692.P15777635330958392085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n - (f1 (n + 1) - f1 n)

end

end A314692.P15777635330958392085

namespace A314692

/-- `A314848(n)-Δ[A011862(n)]` -/
def P15777635330958392085.Spec : Prop :=
  ∀ n, P15777635330958392085.a n = A314692 n

end A314692

/-! ## A314692.P17883964574193392180

`A315033(n)-Δ[2*A011862(n)]`
-/

namespace A314692.P17883964574193392180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n - (f1 (n + 1) - f1 n)

end

end A314692.P17883964574193392180

namespace A314692

/-- `A315033(n)-Δ[2*A011862(n)]` -/
def P17883964574193392180.Spec : Prop :=
  ∀ n, P17883964574193392180.a n = A314692 n

end A314692

/-! ## A314692.P13127810715840340602

`A315198(n)-A004396(A004396(n))`
-/

namespace A314692.P13127810715840340602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315198 n - A004396 (A004396 n).toNat

end

end A314692.P13127810715840340602

namespace A314692

/-- `A315198(n)-A004396(A004396(n))` -/
def P13127810715840340602.Spec : Prop :=
  ∀ n, P13127810715840340602.a n = A314692 n

end A314692

/-! ## A314692.P16265120154084270844

`abs(A008592(n)-A314231(n))`
-/

namespace A314692.P16265120154084270844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314231 n|

end

end A314692.P16265120154084270844

namespace A314692

/-- `abs(A008592(n)-A314231(n))` -/
def P16265120154084270844.Spec : Prop :=
  ∀ n, P16265120154084270844.a n = A314692 n

end A314692

/-! ## A314692.P10379076851400019743

`2*A008706(n)-A314231(n)`
-/

namespace A314692.P10379076851400019743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314231 n

end

end A314692.P10379076851400019743

namespace A314692

/-- `2*A008706(n)-A314231(n)` -/
def P10379076851400019743.Spec : Prop :=
  ∀ n, P10379076851400019743.a n = A314692 n

end A314692

/-! ## A314692.P10801024108269199786

`A315495(n)-A004396(A004396(n)+n)`
-/

namespace A314692.P10801024108269199786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - A004396 (A004396 n + (n : ℤ)).toNat

end

end A314692.P10801024108269199786

namespace A314692

/-- `A315495(n)-A004396(A004396(n)+n)` -/
def P10801024108269199786.Spec : Prop :=
  ∀ n, P10801024108269199786.a n = A314692 n

end A314692

/-! ## A314692.P8686088381576429617

`A008458(n)+A008574(n)-A314231(n)`
-/

namespace A314692.P8686088381576429617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314231 n)

end

end A314692.P8686088381576429617

namespace A314692

/-- `A008458(n)+A008574(n)-A314231(n)` -/
def P8686088381576429617.Spec : Prop :=
  ∀ n, P8686088381576429617.a n = A314692 n

end A314692

/-! ## A314692.P15835023790082212655

`A315265(n)-A004396(n)`
-/

namespace A314692.P15835023790082212655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - A004396 n

end

end A314692.P15835023790082212655

namespace A314692

/-- `A315265(n)-A004396(n)` -/
def P15835023790082212655.Spec : Prop :=
  ∀ n, P15835023790082212655.a n = A314692 n

end A314692

/-! ## A314692.P10390017229206902095

`A315265(n)-A002264(2*n+1)`
-/

namespace A314692.P10390017229206902095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - A002264 (2 * n + 1)

end

end A314692.P10390017229206902095

namespace A314692

/-- `A315265(n)-A002264(2*n+1)` -/
def P10390017229206902095.Spec : Prop :=
  ∀ n, P10390017229206902095.a n = A314692 n

end A314692

/-! ## A314692.P15883846701834627263

`A004525(A313580(n))+2*n`
-/

namespace A314692.P15883846701834627263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313580 n).toNat + (2 * n : ℤ)

end

end A314692.P15883846701834627263

namespace A314692

/-- `A004525(A313580(n))+2*n` -/
def P15883846701834627263.Spec : Prop :=
  ∀ n, P15883846701834627263.a n = A314692 n

end A314692

/-! ## A314692.P1916106333334975367

`A004525(A313703(n))+2*n`
-/

namespace A314692.P1916106333334975367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313703 n).toNat + (2 * n : ℤ)

end

end A314692.P1916106333334975367

namespace A314692

/-- `A004525(A313703(n))+2*n` -/
def P1916106333334975367.Spec : Prop :=
  ∀ n, P1916106333334975367.a n = A314692 n

end A314692

/-! ## A314692.P1930751653586927803

`A004525(A315033(n))+2*n`
-/

namespace A314692.P1930751653586927803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315033 n).toNat + (2 * n : ℤ)

end

end A314692.P1930751653586927803

namespace A314692

/-- `A004525(A315033(n))+2*n` -/
def P1930751653586927803.Spec : Prop :=
  ∀ n, P1930751653586927803.a n = A314692 n

end A314692

/-! ## A314692.P7600785571007355811

`A005843(n)+A004525(A313580(n))`
-/

namespace A314692.P7600785571007355811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A313580 n).toNat

end

end A314692.P7600785571007355811

namespace A314692

/-- `A005843(n)+A004525(A313580(n))` -/
def P7600785571007355811.Spec : Prop :=
  ∀ n, P7600785571007355811.a n = A314692 n

end A314692

/-! ## A314692.P5159207857591160933

`A004396(A314848(n)+2*n)`
-/

namespace A314692.P5159207857591160933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314848 n + (2 * n : ℤ)).toNat

end

end A314692.P5159207857591160933

namespace A314692

/-- `A004396(A314848(n)+2*n)` -/
def P5159207857591160933.Spec : Prop :=
  ∀ n, P5159207857591160933.a n = A314692 n

end A314692

/-! ## A314692.P5276802375802984829

`A004396(A315185(n)+2*n)`
-/

namespace A314692.P5276802375802984829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315185 n + (2 * n : ℤ)).toNat

end

end A314692.P5276802375802984829

namespace A314692

/-- `A004396(A315185(n)+2*n)` -/
def P5276802375802984829.Spec : Prop :=
  ∀ n, P5276802375802984829.a n = A314692 n

end A314692

/-! ## A314692.P13804087595640307219

`A004396(A314848(n)+n+n)`
-/

namespace A314692.P13804087595640307219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314848 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314692.P13804087595640307219

namespace A314692

/-- `A004396(A314848(n)+n+n)` -/
def P13804087595640307219.Spec : Prop :=
  ∀ n, P13804087595640307219.a n = A314692 n

end A314692

/-! ## A314692.P4035553824169946008

`A004396(A315185(n)+n+n)`
-/

namespace A314692.P4035553824169946008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315185 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314692.P4035553824169946008

namespace A314692

/-- `A004396(A315185(n)+n+n)` -/
def P4035553824169946008.Spec : Prop :=
  ∀ n, P4035553824169946008.a n = A314692 n

end A314692

/-!
# A314693: Coordination sequence Gal.5.249.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314693, there is no canonical definition to state claims against.
-/

/-! ## A314693.P18003485320989311214

`or(A079998(n²²), A314689(n))`
-/

namespace A314693.P18003485320989311214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079998 ((n ^ 2) ^ 2)) (A314689 n)

end

end A314693.P18003485320989311214

/-! ## A314693.P2867042594295098019

`A310371(n)-A332823(A022572(n))`
-/

namespace A314693.P2867042594295098019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310371 n - A332823 (A022572 n).toNat

end

end A314693.P2867042594295098019

/-! ## A314693.P6482930118713166826

`or(A104338(A104326(n)), A314689(n))`
-/

namespace A314693.P6482930118713166826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104338 (A104326 n).toNat) (A314689 n)

end

end A314693.P6482930118713166826

/-! ## A314693.P12976796478560894218

`or(A194681(A038266(n)), A314689(n))`
-/

namespace A314693.P12976796478560894218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A194681 (A038266 n).toNat) (A314689 n)

end

end A314693.P12976796478560894218

/-! ## A314693.P2777423186685328952

`A303750(n+1)+A001222(A364080(n+1))`
-/

namespace A314693.P2777423186685328952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303750 (n + 1) + A001222 (A364080 (n + 1)).toNat

end

end A314693.P2777423186685328952

/-!
# A314694: Coordination sequence Gal.4.116.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314694, there is no canonical definition to state claims against.
-/

/-! ## A314694.P18266743947786522421

`record[A314695(n)-A165877(n)]`
-/

namespace A314694.P18266743947786522421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314695 n - A165877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314694.P18266743947786522421

/-! ## A314694.P12200510705224546748

`A055089(A052787(n))+A008586(n)`
-/

namespace A314694.P12200510705224546748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (A052787 n).toNat + A008586 n

end

end A314694.P12200510705224546748

/-! ## A314694.P17302894205532869995

`A314695(n)-A025456(A054962(n))`
-/

namespace A314694.P17302894205532869995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314695 n - A025456 (A054962 n).toNat

end

end A314694.P17302894205532869995

/-! ## A314694.P13985670464633276652

`A314695(n)-A086015(A162162(n))`
-/

namespace A314694.P13985670464633276652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314695 n - A086015 (A162162 n).toNat

end

end A314694.P13985670464633276652

/-! ## A314694.P12588105986530546086

`A311738(n)+A186761(A276142(n+1))`
-/

namespace A314694.P12588105986530546086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311738 n + A186761 (A276142 (n + 1)).toNat

end

end A314694.P12588105986530546086

/-!
# A314695: Coordination sequence Gal.5.255.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314695, there is no canonical definition to state claims against.
-/

/-! ## A314695.P11977429226176718291

`A314617(n)+A001221(A005189(n))`
-/

namespace A314695.P11977429226176718291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314617 n + A001221 (A005189 n).toNat

end

end A314695.P11977429226176718291

/-! ## A314695.P4137961358605677424

`A314694(n)+A025456(A054962(n))`
-/

namespace A314695.P4137961358605677424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314694 n + A025456 (A054962 n).toNat

end

end A314695.P4137961358605677424

/-! ## A314695.P1777995294657135325

`A311368(n)+A001221(A143382(n))`
-/

namespace A314695.P1777995294657135325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311368 n + A001221 (A143382 n).toNat

end

end A314695.P1777995294657135325

/-! ## A314695.P12496546646465744043

`A314694(n)+A025441(A181070(n))`
-/

namespace A314695.P12496546646465744043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314694 n + A025441 (A181070 n).toNat

end

end A314695.P12496546646465744043

/-! ## A314695.P14089198572521121535

`A314694(n)+A086015(A162162(n))`
-/

namespace A314695.P14089198572521121535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314694 n + A086015 (A162162 n).toNat

end

end A314695.P14089198572521121535

/-!
# A314696: Coordination sequence Gal.6.318.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314696, there is no canonical definition to state claims against.
-/

/-! ## A314696.P15925971139659883184

`A314697(n)-A010894(A314697(n))`
-/

namespace A314696.P15925971139659883184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314697 n - A010894 ((A314697 n).toNat + 21)

end

end A314696.P15925971139659883184

/-! ## A314696.P2124083996640918400

`A085759(n+1)-A346698(A020114(n))`
-/

namespace A314696.P2124083996640918400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1) - A346698 (A020114 n).toNat

end

end A314696.P2124083996640918400

/-! ## A314696.P4000040358147930673

`A314744(n)-A343640(A222955(n+1))`
-/

namespace A314696.P4000040358147930673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314744 n - A343640 (A222955 (n + 1)).toNat

end

end A314696.P4000040358147930673

/-! ## A314696.P3113735959484960153

`A314697(n)^A185136(n)!`
-/

namespace A314696.P3113735959484960153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314697 n ^ Nat.factorial (A185136 n).toNat

end

end A314696.P3113735959484960153

/-! ## A314696.P12630193274363108831

`record[A314697(n)/A268199(n)]`
-/

namespace A314696.P12630193274363108831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314697 n : ℚ) / (A268199 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314696.P12630193274363108831

/-!
# A314697: Coordination sequence Gal.5.125.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314697, there is no canonical definition to state claims against.
-/

/-! ## A314697.P3324785529741775297

`A333223(3*n+1)+A000005(A060315(n+1))`
-/

namespace A314697.P3324785529741775297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (3 * n + 1) + A000005 (A060315 (n + 1)).toNat

end

end A314697.P3324785529741775297

/-!
# A314698: Coordination sequence Gal.3.34.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314698, there is no canonical definition to state claims against.
-/

/-! ## A314698.P13737965153796652566

`A353459(A051281(n+3))+A250120(n)`
-/

namespace A314698.P13737965153796652566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353459 (A051281 (n + 3)).toNat + A250120 n

end

end A314698.P13737965153796652566

/-! ## A314698.P11779275317380202748

`∑[dr(A001227(A003915(n+1)))]`
-/

namespace A314698.P11779275317380202748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001227 (A003915 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314698.P11779275317380202748

/-! ## A314698.P8370999623079728685

`A311372(n)+A001221(A150839(n))`
-/

namespace A314698.P8370999623079728685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311372 n + A001221 (A150839 n).toNat

end

end A314698.P8370999623079728685

/-! ## A314698.P3533473491635225889

`A315187(n)+A244895(A176027(n))`
-/

namespace A314698.P3533473491635225889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n + A244895 (A176027 n).toNat

end

end A314698.P3533473491635225889

/-! ## A314698.P2874262773083021686

`A315187(n)-A244895(A089658(n))`
-/

namespace A314698.P2874262773083021686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - A244895 (A089658 n).toNat

end

end A314698.P2874262773083021686

/-!
# A314699: Coordination sequence Gal.5.262.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314699, there is no canonical definition to state claims against.
-/

/-! ## A314699.P16670379703350964466

`A260113(A260113(n+1)+Δ[round((3/8-n)²)])`
-/

namespace A314699.P16670379703350964466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) / 8 - (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (A260113 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A314699.P16670379703350964466

/-! ## A314699.P11628185520317376326

`A037882(A208237(n))+A016813(n)`
-/

namespace A314699.P11628185520317376326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037882 (A208237 n).toNat + A016813 n

end

end A314699.P11628185520317376326

/-! ## A314699.P12366128203498296906

`A194282(n+1)-A194297(A298683(n))`
-/

namespace A314699.P12366128203498296906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194282 (n + 1) - A194297 (A298683 n).toNat

end

end A314699.P12366128203498296906

