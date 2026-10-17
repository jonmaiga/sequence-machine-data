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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A314300: Coordination sequence Gal.6.317.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314300, there is no canonical definition to state claims against.
-/

/-! ## A314300.P13222975277688333990

`A310711(n)+A186716(A310715(3*n+4))`
-/

namespace A314300.P13222975277688333990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310711 n + A186716 (A310715 (3 * n + 4)).toNat

end

end A314300.P13222975277688333990

/-! ## A314300.P15478088626123145133

`A084139(n)-A323014(A005438(n+1))`
-/

namespace A314300.P15478088626123145133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084139 n - A323014 (A005438 (n + 1)).toNat

end

end A314300.P15478088626123145133

/-! ## A314300.P18146155610139238926

`A322823(A000142(n))+A054353(2*n+1)`
-/

namespace A314300.P18146155610139238926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322823 (A000142 n).toNat + A054353 (2 * n + 1)

end

end A314300.P18146155610139238926

/-!
# A314301: Coordination sequence Gal.6.69.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314301, there is no canonical definition to state claims against.
-/

/-! ## A314301.P4069160363511408044

`A314302(A087051(n))`
-/

namespace A314301.P4069160363511408044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314302 (A087051 n).toNat

end

end A314301.P4069160363511408044

/-! ## A314301.P701895285216487537

`A314302(A227549(n+1))`
-/

namespace A314301.P701895285216487537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314302 (A227549 (n + 1)).toNat

end

end A314301.P701895285216487537

/-! ## A314301.P10733430000511166601

`A314302(A396204(n+1))`
-/

namespace A314301.P10733430000511166601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314302 (A396204 (n + 1)).toNat

end

end A314301.P10733430000511166601

/-! ## A314301.P10379772788190718841

`A314302(n^A229889(n))`
-/

namespace A314301.P10379772788190718841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314302 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A229889 n : ℤ))).toNat

end

end A314301.P10379772788190718841

/-! ## A314301.P17427376566179277687

`A314302(lcm(n, A046469(n)))`
-/

namespace A314301.P17427376566179277687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314302 (Int.lcm (n : ℤ) (A046469 n))

end

end A314301.P17427376566179277687

/-!
# A314302: Coordination sequence Gal.6.51.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314302, there is no canonical definition to state claims against.
-/

/-! ## A314302.P2394192560376588835

`or(A076142(A148288(n)), A314301(n))`
-/

namespace A314302.P2394192560376588835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A076142 (A148288 n).toNat) (A314301 n)

end

end A314302.P2394192560376588835

/-! ## A314302.P17195997622016178267

`A314301(n)-A088194(A315465(2*n))`
-/

namespace A314302.P17195997622016178267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314301 n - A088194 (A315465 (2 * n)).toNat

end

end A314302.P17195997622016178267

/-! ## A314302.P17589925815437725997

`or(A000035(A134279(n+1)), A314301(n))`
-/

namespace A314302.P17589925815437725997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A134279 (n + 1)).toNat) (A314301 n)

end

end A314302.P17589925815437725997

/-!
# A314306: Coordination sequence Gal.5.13.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314306, there is no canonical definition to state claims against.
-/

/-! ## A314306.P15869463969206976880

`or(A189128(2*n+1), A189129(A189177(n)))`
-/

namespace A314306.P15869463969206976880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189128 (2 * n + 1)) (A189129 (A189177 n).toNat)

end

end A314306.P15869463969206976880

/-! ## A314306.P6571721938319687269

`or(A189128(2*n+1), A189132(A189145(n+2)))`
-/

namespace A314306.P6571721938319687269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189128 (2 * n + 1)) (A189132 (A189145 (n + 2)).toNat)

end

end A314306.P6571721938319687269

/-!
# A314307: Coordination sequence Gal.6.9.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314307, there is no canonical definition to state claims against.
-/

/-! ## A314307.P4081318853627601547

`∑[A214636(record[A168266(n+1)]+1)]+n`
-/

namespace A314307.P4081318853627601547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214636 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A314307.P4081318853627601547

/-! ## A314307.P16322510910417567769

`A023208(n+1)-A326787(A031396(2*n+3))`
-/

namespace A314307.P16322510910417567769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1) - A326787 (A031396 (2 * n + 3)).toNat

end

end A314307.P16322510910417567769

/-!
# A314308: Coordination sequence Gal.6.66.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314308, there is no canonical definition to state claims against.
-/

/-! ## A314308.P5677771607014261541

`xor(A052344(A032555(n+1)), A310808(n))`
-/

namespace A314308.P5677771607014261541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052344 (A032555 (n + 1)).toNat) (A310808 n)

end

end A314308.P5677771607014261541

/-!
# A314309: Coordination sequence Gal.6.71.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314309, there is no canonical definition to state claims against.
-/

/-! ## A314309.P9919298158065108686

`record[A314310(n)-A035040(n)]`
-/

namespace A314309.P9919298158065108686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314310 n - A035040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314309.P9919298158065108686

/-! ## A314309.P5511759886532102587

`record[A314310(n)-A036632(n)]`
-/

namespace A314309.P5511759886532102587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314310 n - A036632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314309.P5511759886532102587

/-! ## A314309.P7699471692521172409

`record[A314310(n)-A036646(n)]`
-/

namespace A314309.P7699471692521172409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314310 n - A036646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314309.P7699471692521172409

/-! ## A314309.P7638426100789916493

`record[A314310(n)-A324231(n+1)]`
-/

namespace A314309.P7638426100789916493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314310 n - A324231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314309.P7638426100789916493

/-! ## A314309.P16864228466271446516

`A293790(n+1)+A000523(A128402(n+1))`
-/

namespace A314309.P16864228466271446516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293790 (n + 1) + A000523 (A128402 (n + 1)).toNat

end

end A314309.P16864228466271446516

/-!
# A314310: Coordination sequence Gal.5.27.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314310, there is no canonical definition to state claims against.
-/

/-! ## A314310.P9823087921401375695

`A330025(A047363(2*n+1))+A285959(n+1)-A010873(A030186(n))`
-/

namespace A314310.P9823087921401375695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A047363 (2 * n + 1)).toNat + (A285959 (n + 1) - A010873 (A030186 n).toNat)

end

end A314310.P9823087921401375695

/-! ## A314310.P10571954827972004451

`A314309(n)+A185284(A312443(n))`
-/

namespace A314310.P10571954827972004451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314309 n + A185284 (A312443 n).toNat

end

end A314310.P10571954827972004451

/-! ## A314310.P15799444178197187831

`A314309(n)+A185284(A314752(n))`
-/

namespace A314310.P15799444178197187831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314309 n + A185284 (A314752 n).toNat

end

end A314310.P15799444178197187831

/-! ## A314310.P15678938537822160906

`A074291(2*(n+1))-A074265(A000110(n))`
-/

namespace A314310.P15678938537822160906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074291 (2 * (n + 1)) - A074265 (A000110 n).toNat

end

end A314310.P15678938537822160906

/-! ## A314310.P17097975965464690072

`A074291(2*(n+1))-A294647(A330211(n))`
-/

namespace A314310.P17097975965464690072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074291 (2 * (n + 1)) - A294647 (A330211 n).toNat

end

end A314310.P17097975965464690072

/-!
# A314312: Coordination sequence Gal.4.23.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314312, there is no canonical definition to state claims against.
-/

/-! ## A314312.P17651860179577969699

`A314762(n)-A001222(A266238(n+1))`
-/

namespace A314312.P17651860179577969699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314762 n - A001222 (A266238 (n + 1)).toNat

end

end A314312.P17651860179577969699

/-! ## A314312.P12193350737801930328

`A000196(A132359(n+1)*A153503(n+1))`
-/

namespace A314312.P12193350737801930328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A132359 (n + 1) * A153503 (n + 1)).toNat

end

end A314312.P12193350737801930328

/-!
# A314313: Coordination sequence Gal.6.44.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314313, there is no canonical definition to state claims against.
-/

/-! ## A314313.P17573016248633369960

`A310252(n)+A314299(n)-A310200(n)`
-/

namespace A314313.P17573016248633369960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310252 n + (A314299 n - A310200 n)

end

end A314313.P17573016248633369960

/-! ## A314313.P16439538374686420768

`record[A327347(2*n+1)%A087057(n+1)]`
-/

namespace A314313.P16439538374686420768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327347 (2 * n + 1)) (A087057 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314313.P16439538374686420768

/-!
# A314315: Coordination sequence Gal.5.31.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314315, there is no canonical definition to state claims against.
-/

/-! ## A314315.P9237678004199243354

`A008574(n)-A117568(A117585(n))`
-/

namespace A314315.P9237678004199243354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A117568 (A117585 n).toNat

end

end A314315.P9237678004199243354

/-! ## A314315.P8448779516148368288

`A306453(A339484(n+1))+A008586(n)`
-/

namespace A314315.P8448779516148368288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306453 (A339484 (n + 1)).toNat + A008586 n

end

end A314315.P8448779516148368288

/-! ## A314315.P924733834682194702

`A022559(2*n+3)-A345197(A000032(n))`
-/

namespace A314315.P924733834682194702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (2 * n + 3) - A345197 (A000032 n).toNat

end

end A314315.P924733834682194702

/-! ## A314315.P9781805920693520980

`A337050(3*n+1)-A354989(A053979(3*n))`
-/

namespace A314315.P9781805920693520980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (3 * n + 1) - A354989 (A053979 (3 * n)).toNat

end

end A314315.P9781805920693520980

/-! ## A314315.P10541961479225804504

`A016813(n)-A333628((n+1)²)`
-/

namespace A314315.P10541961479225804504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A333628 ((n + 1) ^ 2)

end

end A314315.P10541961479225804504

/-!
# A314316: Coordination sequence Gal.6.518.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314316, there is no canonical definition to state claims against.
-/

/-! ## A314316.P11878535144162535851

`A217571(n+1)+A099314(A126031(n+1))`
-/

namespace A314316.P11878535144162535851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217571 (n + 1) + A099314 (A126031 (n + 1)).toNat

end

end A314316.P11878535144162535851

/-!
# A314317: Coordination sequence Gal.6.64.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314317, there is no canonical definition to state claims against.
-/

/-! ## A314317.P8627638503281789734

`A333217(2*(n+1))+A307598(A294175(n))`
-/

namespace A314317.P8627638503281789734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (2 * (n + 1)) + A307598 (A294175 n).toNat

end

end A314317.P8627638503281789734

/-! ## A314317.P1523572778374058334

`A067774(n+1)-A000120(A085829(n+1))-A057508(n)`
-/

namespace A314317.P1523572778374058334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1) - A000120 (A085829 (n + 1)).toNat - A057508 n

end

end A314317.P1523572778374058334

/-!
# A314319: Coordination sequence Gal.6.14.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314319, there is no canonical definition to state claims against.
-/

/-! ## A314319.P9396636177951681367

`∑[A004426(∑[A221946(n)])]`
-/

namespace A314319.P9396636177951681367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314319.P9396636177951681367

/-! ## A314319.P2729947893687373292

`∑[A087230(A087161(n+1))]`
-/

namespace A314319.P2729947893687373292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 (A087161 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314319.P2729947893687373292

/-! ## A314319.P14050424160162346308

`A311843(n)+A092220(A302646(n))`
-/

namespace A314319.P14050424160162346308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + A092220 (A302646 n).toNat

end

end A314319.P14050424160162346308

/-! ## A314319.P5151118560316057604

`A349612(A202143(n))+A311227(n)`
-/

namespace A314319.P5151118560316057604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (A202143 n).toNat + A311227 n

end

end A314319.P5151118560316057604

/-! ## A314319.P12827509742477903768

`A314322(n)-A011686(A041797(n))`
-/

namespace A314319.P12827509742477903768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314322 n - A011686 (A041797 n).toNat

end

end A314319.P12827509742477903768

/-!
# A314320: Coordination sequence Gal.5.26.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314320, there is no canonical definition to state claims against.
-/

/-! ## A314320.P17626423546364778767

`A311238(n)+A157658(A017934(n))`
-/

namespace A314320.P17626423546364778767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311238 n + A157658 (A017934 n).toNat

end

end A314320.P17626423546364778767

/-! ## A314320.P12045758702821511247

`A274920(A015128(n))+A105772(n+1)`
-/

namespace A314320.P12045758702821511247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274920 (A015128 n).toNat + A105772 (n + 1)

end

end A314320.P12045758702821511247

/-! ## A314320.P8088198709031640274

`A247761(3*(n+1))-A164349(A000984(n))`
-/

namespace A314320.P8088198709031640274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247761 (3 * (n + 1)) - A164349 (A000984 n).toNat

end

end A314320.P8088198709031640274

/-! ## A314320.P7831979719149902065

`A247761(3*(n+1))-A286561(A025192(n))`
-/

namespace A314320.P7831979719149902065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247761 (3 * (n + 1)) - A286561 (A025192 n).toNat

end

end A314320.P7831979719149902065

/-! ## A314320.P10940201163032794871

`A107015(A248546(n+1))+A007094(3*n+1)`
-/

namespace A314320.P10940201163032794871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (A248546 (n + 1)).toNat + A007094 (3 * n + 1)

end

end A314320.P10940201163032794871

/-!
# A314321: Coordination sequence Gal.6.78.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314321, there is no canonical definition to state claims against.
-/

/-! ## A314321.P9970411757673650044

`A105760(2*n+1)+A000002(A018030(n))`
-/

namespace A314321.P9970411757673650044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (2 * n + 1) + A000002 (A018030 n).toNat

end

end A314321.P9970411757673650044

/-! ## A314321.P15997831776377026641

`∑[A182718(∑[A053645(2*n+5)])]`
-/

namespace A314321.P15997831776377026641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182718 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314321.P15997831776377026641

/-! ## A314321.P14630338031343505978

`A362240(A007097(n))+A087087(3*n+1)`
-/

namespace A314321.P14630338031343505978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362240 (A007097 n).toNat + A087087 (3 * n + 1)

end

end A314321.P14630338031343505978

/-! ## A314321.P10494475433266061544

`A124737(A028421(n+3))+A004273(2*n)`
-/

namespace A314321.P10494475433266061544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 (A028421 (n + 3)).toNat + A004273 (2 * n)

end

end A314321.P10494475433266061544

/-! ## A314321.P8338910281485890148

`A005097(2*n+3)-A056062(A146891(n))`
-/

namespace A314321.P8338910281485890148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (2 * n + 3) - A056062 (A146891 n).toNat

end

end A314321.P8338910281485890148

/-!
# A314322: Coordination sequence Gal.6.53.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314322, there is no canonical definition to state claims against.
-/

/-! ## A314322.P16513152200880782605

`A314427(n)-A178602(A315532(n))`
-/

namespace A314322.P16513152200880782605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314427 n - A178602 (A315532 n).toNat

end

end A314322.P16513152200880782605

/-! ## A314322.P4528457032101340267

`A022839(2*n+1)-A001222(A229847(2*(n+2)))`
-/

namespace A314322.P4528457032101340267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (2 * n + 1) - A001222 (A229847 (2 * (n + 2))).toNat

end

end A314322.P4528457032101340267

/-! ## A314322.P878648793666313064

`or(A255315(A061255(n)), A310788(n))`
-/

namespace A314322.P878648793666313064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A255315 (A061255 n).toNat) (A310788 n)

end

end A314322.P878648793666313064

/-! ## A314322.P10522905112033519812

`eq[A023022(n+5), A033676(A324743(n))]`
-/

namespace A314322.P10522905112033519812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A324743 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314322.P10522905112033519812

/-! ## A314322.P1923165001582983899

`A303707(A062884(n+5))+A310076(n)-A000007(n)`
-/

namespace A314322.P1923165001582983899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (A062884 (n + 5)).toNat + (A310076 n - A000007 n)

end

end A314322.P1923165001582983899

/-!
# A314323: Coordination sequence Gal.5.248.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314323, there is no canonical definition to state claims against.
-/

/-! ## A314323.P6685678445268795372

`A315902(n)-A362129(A299262(3*(n+1)))`
-/

namespace A314323.P6685678445268795372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315902 n - A362129 (A299262 (3 * (n + 1))).toNat

end

end A314323.P6685678445268795372

/-!
# A314332: Coordination sequence Gal.6.13.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314332, there is no canonical definition to state claims against.
-/

/-! ## A314332.P5066865241898384986

`xor(A216577(n²+3), A310842(n))`
-/

namespace A314332.P5066865241898384986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A216577 (n ^ 2 + 3)) (A310842 n)

end

end A314332.P5066865241898384986

/-! ## A314332.P5552488165287895915

`A310842(n)+A014053(A331722(n))`
-/

namespace A314332.P5552488165287895915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310842 n + A014053 (A331722 n).toNat

end

end A314332.P5552488165287895915

/-! ## A314332.P8814551278645063994

`A310844(n)+A014053(A331722(n))`
-/

namespace A314332.P8814551278645063994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310844 n + A014053 (A331722 n).toNat

end

end A314332.P8814551278645063994

/-! ## A314332.P39363996538628434

`A310845(n)+A014053(A331722(n))`
-/

namespace A314332.P39363996538628434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310845 n + A014053 (A331722 n).toNat

end

end A314332.P39363996538628434

/-! ## A314332.P16457452847820305165

`xor(A310842(n), A343222(A035070(n+1)))`
-/

namespace A314332.P16457452847820305165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A310842 n) (A343222 (A035070 (n + 1)).toNat)

end

end A314332.P16457452847820305165

/-!
# A314334: Coordination sequence Gal.6.60.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314334, there is no canonical definition to state claims against.
-/

/-! ## A314334.P7443235277480382735

`p?[A114651(2*n+1)]-A114652(n+1)`
-/

namespace A314334.P7443235277480382735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114651 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A114652 (n + 1)

end

end A314334.P7443235277480382735

/-! ## A314334.P9447643764101139178

`A086251(A129939(n+2))+A031142(n+1)`
-/

namespace A314334.P9447643764101139178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (A129939 (n + 2)).toNat + A031142 (n + 1)

end

end A314334.P9447643764101139178

/-!
# A314335: Coordination sequence Gal.5.243.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314335, there is no canonical definition to state claims against.
-/

/-! ## A314335.P3808757852627618242

`or(A000002(A003946(n)), A310836(n))`
-/

namespace A314335.P3808757852627618242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000002 (A003946 n).toNat) (A310836 n)

end

end A314335.P3808757852627618242

/-! ## A314335.P17540719484195890903

`or(A001222(A095934(n)), A310835(n))`
-/

namespace A314335.P17540719484195890903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A095934 n).toNat) (A310835 n)

end

end A314335.P17540719484195890903

/-! ## A314335.P9255825698772563113

`or(A119989(A001595(n)), A310835(n))`
-/

namespace A314335.P9255825698772563113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A119989 (A001595 n).toNat) (A310835 n)

end

end A314335.P9255825698772563113

/-! ## A314335.P15677228909709350421

`or(A308009(A007854(n)), A310835(n))`
-/

namespace A314335.P15677228909709350421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A308009 (A007854 n).toNat) (A310835 n)

end

end A314335.P15677228909709350421

/-!
# A314337: Coordination sequence Gal.6.59.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314337, there is no canonical definition to state claims against.
-/

/-! ## A314337.P6224271511772130151

`or(A001221(A090328(n+1)), A310777(n))`
-/

namespace A314337.P6224271511772130151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A090328 (n + 1)).toNat) (A310777 n)

end

end A314337.P6224271511772130151

/-! ## A314337.P15303314255459527926

`A296910(n)+A331864(2*n+1)%2`
-/

namespace A314337.P15303314255459527926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + Int.tmod (A331864 (2 * n + 1)) 2

end

end A314337.P15303314255459527926

/-! ## A314337.P6756016372695510634

`A296910(n)+A000035(A006190(n))`
-/

namespace A314337.P6756016372695510634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A000035 (A006190 n).toNat

end

end A314337.P6756016372695510634

/-! ## A314337.P5174692681804446785

`A296910(n)+A079978(A001205(n))`
-/

namespace A314337.P5174692681804446785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A079978 (A001205 n).toNat

end

end A314337.P5174692681804446785

/-! ## A314337.P6329140295002946823

`A296910(n)+A079978(A058818(n))`
-/

namespace A314337.P6329140295002946823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A079978 (A058818 n).toNat

end

end A314337.P6329140295002946823

/-!
# A314338: Coordination sequence Gal.6.52.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314338, there is no canonical definition to state claims against.
-/

/-! ## A314338.P1465039656588294482

`A314474(n)-A059841(A133647(n))`
-/

namespace A314338.P1465039656588294482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314474 n - A059841 (A133647 n).toNat

end

end A314338.P1465039656588294482

/-! ## A314338.P16043622050970352000

`or(A020639(A001764(n)), A310831(n))`
-/

namespace A314338.P16043622050970352000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A001764 n).toNat) (A310831 n)

end

end A314338.P16043622050970352000

/-! ## A314338.P5540568557400088283

`or(A020639(A001764(n)), A310839(n))`
-/

namespace A314338.P5540568557400088283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A001764 n).toNat) (A310839 n)

end

end A314338.P5540568557400088283

/-! ## A314338.P10539791425858501539

`or(A182989(n+1), A183028(A104272(n+1)))`
-/

namespace A314338.P10539791425858501539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A182989 (n + 1)) (A183028 (A104272 (n + 1)).toNat)

end

end A314338.P10539791425858501539

/-! ## A314338.P8469125317764178571

`lt[A329697(A225555(n+3)), A001222(n+1)]`
-/

namespace A314338.P8469125317764178571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A225555 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A314338.P8469125317764178571

/-!
# A314341: Coordination sequence Gal.5.233.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314341, there is no canonical definition to state claims against.
-/

/-! ## A314341.P2163558030788518822

`A314343(n)-A025441(A351144(n))`
-/

namespace A314341.P2163558030788518822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314343 n - A025441 (A351144 n).toNat

end

end A314341.P2163558030788518822

/-! ## A314341.P6737203732445516769

`A314343(n)-A168312(A314336(2*n+3))`
-/

namespace A314341.P6737203732445516769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314343 n - A168312 (A314336 (2 * n + 3)).toNat

end

end A314341.P6737203732445516769

/-! ## A314341.P12409604918886583584

`A285683(n+1)-A104807(A113350(2*(n+2)))`
-/

namespace A314341.P12409604918886583584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285683 (n + 1) - A104807 (A113350 (2 * (n + 2))).toNat

end

end A314341.P12409604918886583584

/-!
# A314342: Coordination sequence Gal.6.549.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314342, there is no canonical definition to state claims against.
-/

/-! ## A314342.P18190571978126354618

`xor(A001221(A020135(n)), A314361(n))`
-/

namespace A314342.P18190571978126354618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A020135 n).toNat) (A314361 n)

end

end A314342.P18190571978126354618

/-! ## A314342.P908449267580121971

`record[A286252(n)%A286261(A286280(n+2))]`
-/

namespace A314342.P908449267580121971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286252 n) (A286261 (A286280 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314342.P908449267580121971

/-!
# A314343: Coordination sequence Gal.6.513.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314343, there is no canonical definition to state claims against.
-/

/-! ## A314343.P4089881628733775965

`A311584(n)+A236338(A022144(n)-n)`
-/

namespace A314343.P4089881628733775965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311584 n + A236338 (A022144 n - (n : ℤ)).toNat

end

end A314343.P4089881628733775965

/-! ## A314343.P3985905128699892339

`∑[A004427(A140897(n+1)²)]`
-/

namespace A314343.P3985905128699892339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A140897 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314343.P3985905128699892339

/-! ## A314343.P13606909193879245002

`A311584(n)+A236338(A022144(n))`
-/

namespace A314343.P13606909193879245002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311584 n + A236338 (A022144 n).toNat

end

end A314343.P13606909193879245002

/-! ## A314343.P18348967797480815091

`A301686(n)+A004198(A352035(n+1))`
-/

namespace A314343.P18348967797480815091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n + A004198 (A352035 (n + 1)).toNat

end

end A314343.P18348967797480815091

/-! ## A314343.P2412234056651700532

`A319759(A215405(n+1))+A301686(n)`
-/

namespace A314343.P2412234056651700532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319759 (A215405 (n + 1)).toNat + A301686 n

end

end A314343.P2412234056651700532

/-!
# A314346: Coordination sequence Gal.4.118.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314346, there is no canonical definition to state claims against.
-/

/-! ## A314346.P2743419240714995557

`A250120(n)-A359269((∑[n]+2)*2^(n-1))`
-/

namespace A314346.P2743419240714995557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A359269 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A314346.P2743419240714995557

/-!
# A314347: Coordination sequence Gal.4.85.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314347, the canonical program `A314347.P7578346678599695922` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314347 has offset 0).

The definition of A314347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314347.P7578346678599695922

`A151988(2*n)+A008486(A004396(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314347

/-- `A151988(2*n)+A008486(A004396(n))` -/
def P7578346678599695922.Spec : Prop :=
  ∀ n, P7578346678599695922.a n = A314347 n

theorem P7578346678599695922.correct : P7578346678599695922.Spec := by
  intro n
  simp only [A314347]

end A314347

/-! ## A314347.P397291830039894480

`A312475(n)+A102283(n)`
-/

namespace A314347.P397291830039894480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A102283 n

end

end A314347.P397291830039894480

namespace A314347

/-- `A312475(n)+A102283(n)` -/
def P397291830039894480.Spec : Prop :=
  ∀ n, P397291830039894480.a n = A314347 n

end A314347

/-! ## A314347.P3309673922752873607

`A312475(n)+A049347(n+2)`
-/

namespace A314347.P3309673922752873607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A049347 (n + 2)

end

end A314347.P3309673922752873607

namespace A314347

/-- `A312475(n)+A049347(n+2)` -/
def P3309673922752873607.Spec : Prop :=
  ∀ n, P3309673922752873607.a n = A314347 n

end A314347

/-! ## A314347.P1538189631167608685

`A312475(n)+A128834(2*n)`
-/

namespace A314347.P1538189631167608685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A128834 (2 * n)

end

end A314347.P1538189631167608685

namespace A314347

/-- `A312475(n)+A128834(2*n)` -/
def P1538189631167608685.Spec : Prop :=
  ∀ n, P1538189631167608685.a n = A314347 n

end A314347

/-! ## A314347.P5136466510174533725

`A312475(n)+A131736(2*n)`
-/

namespace A314347.P5136466510174533725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A131736 (2 * n)

end

end A314347.P5136466510174533725

namespace A314347

/-- `A312475(n)+A131736(2*n)` -/
def P5136466510174533725.Spec : Prop :=
  ∀ n, P5136466510174533725.a n = A314347 n

end A314347

/-! ## A314347.P9527973000527485712

`A312475(n)+A010892(A016825(n))`
-/

namespace A314347.P9527973000527485712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A010892 (A016825 n).toNat

end

end A314347.P9527973000527485712

namespace A314347

/-- `A312475(n)+A010892(A016825(n))` -/
def P9527973000527485712.Spec : Prop :=
  ∀ n, P9527973000527485712.a n = A314347 n

end A314347

/-! ## A314347.P9651344780015597506

`A312475(n)-A010892(A017089(n))`
-/

namespace A314347.P9651344780015597506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n - A010892 (A017089 n).toNat

end

end A314347.P9651344780015597506

namespace A314347

/-- `A312475(n)-A010892(A017089(n))` -/
def P9651344780015597506.Spec : Prop :=
  ∀ n, P9651344780015597506.a n = A314347 n

end A314347

/-! ## A314347.P413001179912626149

`A312475(n)+A010892(A004769(n))`
-/

namespace A314347.P413001179912626149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A010892 (A004769 n).toNat

end

end A314347.P413001179912626149

namespace A314347

/-- `A312475(n)+A010892(A004769(n))` -/
def P413001179912626149.Spec : Prop :=
  ∀ n, P413001179912626149.a n = A314347 n

end A314347

/-!
# A314348: Coordination sequence Gal.4.119.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314348, there is no canonical definition to state claims against.
-/

/-! ## A314348.P5584707416076266710

`A314349(n)-A040081(A007283(n))`
-/

namespace A314348.P5584707416076266710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314349 n - A040081 (A007283 n).toNat

end

end A314348.P5584707416076266710

/-! ## A314348.P16239317031833446240

`A301676(n)-A054354(A376655(n+2))`
-/

namespace A314348.P16239317031833446240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A054354 (A376655 (n + 2)).toNat

end

end A314348.P16239317031833446240

/-! ## A314348.P8746213502217362151

`A047255(3*n+1)-A230425(A339254(n))`
-/

namespace A314348.P8746213502217362151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (3 * n + 1) - A230425 (A339254 n).toNat

end

end A314348.P8746213502217362151

/-!
# A314349: Coordination sequence Gal.5.250.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314349, there is no canonical definition to state claims against.
-/

/-! ## A314349.P2427147208317363492

`A314348(n)+A040081(A007283(n))`
-/

namespace A314349.P2427147208317363492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314348 n + A040081 (A007283 n).toNat

end

end A314349.P2427147208317363492

/-! ## A314349.P10493042619109113704

`A244895(A195733(n+1))+A047263(A008574(n))`
-/

namespace A314349.P10493042619109113704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A195733 (n + 1)).toNat + A047263 (A008574 n).toNat

end

end A314349.P10493042619109113704

/-! ## A314349.P961256424022445214

`A314347(n)+A037817(A297204(n))`
-/

namespace A314349.P961256424022445214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314347 n + A037817 (A297204 n).toNat

end

end A314349.P961256424022445214

/-! ## A314349.P17512962984811361576

`A250120(n)-A328702(A265068(n))`
-/

namespace A314349.P17512962984811361576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A328702 (A265068 n).toNat

end

end A314349.P17512962984811361576

/-! ## A314349.P14887346814721234399

`A250120(n)-A287438(A003441(n+1))`
-/

namespace A314349.P14887346814721234399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A287438 (A003441 (n + 1)).toNat

end

end A314349.P14887346814721234399

/-!
# A314351: Coordination sequence Gal.5.265.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314351, there is no canonical definition to state claims against.
-/

/-! ## A314351.P17946503358187994352

`eq[A014675(A260991(n+4)), A204418(n+1)]`
-/

namespace A314351.P17946503358187994352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A260991 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314351.P17946503358187994352

/-!
# A314358: Coordination sequence Gal.6.553.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314358, there is no canonical definition to state claims against.
-/

/-! ## A314358.P12693550491004903383

`A314534(n)-A037910(A337034(n))`
-/

namespace A314358.P12693550491004903383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314534 n - A037910 (A337034 n).toNat

end

end A314358.P12693550491004903383

/-!
# A314359: Coordination sequence Gal.5.235.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314359, there is no canonical definition to state claims against.
-/

/-! ## A314359.P15834336949790158486

`A314370(n)+A000493(A165522(n))`
-/

namespace A314359.P15834336949790158486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314370 n + A000493 (A165522 n).toNat

end

end A314359.P15834336949790158486

/-!
# A314360: Coordination sequence Gal.4.113.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314360, there is no canonical definition to state claims against.
-/

/-! ## A314360.P1983544097943380419

`xor(A314359(n), A351357(A351343(n)))`
-/

namespace A314360.P1983544097943380419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A314359 n) (A351357 (A351343 n).toNat)

end

end A314360.P1983544097943380419

/-!
# A314361: Coordination sequence Gal.5.156.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314361, there is no canonical definition to state claims against.
-/

/-! ## A314361.P3431562532416839290

`A314362(n)-A023969(A002532(n))`
-/

namespace A314361.P3431562532416839290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314362 n - A023969 (A002532 n).toNat

end

end A314361.P3431562532416839290

/-! ## A314361.P13558897451937349936

`A314363(n)-A023969(A002532(n))`
-/

namespace A314361.P13558897451937349936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314363 n - A023969 (A002532 n).toNat

end

end A314361.P13558897451937349936

/-! ## A314361.P14286214165351032147

`A314362(n)-A016389(A026775(n))`
-/

namespace A314361.P14286214165351032147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314362 n - A016389 (A026775 n).toNat

end

end A314361.P14286214165351032147

/-! ## A314361.P8687043420165198492

`A250120(n)-A191322(A005106(n+1))`
-/

namespace A314361.P8687043420165198492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A191322 (A005106 (n + 1)).toNat

end

end A314361.P8687043420165198492

/-! ## A314361.P17594474792685194438

`A314362(n)-A185284(A000045(n+1))`
-/

namespace A314361.P17594474792685194438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314362 n - A185284 (A000045 (n + 1)).toNat

end

end A314361.P17594474792685194438

/-!
# A314362: Coordination sequence Gal.4.112.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314362, there is no canonical definition to state claims against.
-/

/-! ## A314362.P17295780178153333095

`A314363(n)-Δ[A014963(A309864(n))]`
-/

namespace A314362.P17295780178153333095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A309864 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314363 n - (f1 (n + 1) - f1 n)

end

end A314362.P17295780178153333095

/-! ## A314362.P9423234563117706451

`xor(A178780(A325263(n+1)), A314363(n))`
-/

namespace A314362.P9423234563117706451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178780 (A325263 (n + 1)).toNat) (A314363 n)

end

end A314362.P9423234563117706451

/-! ## A314362.P16554021003290020460

`A314363(n)+A178798(A001037(n))`
-/

namespace A314362.P16554021003290020460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314363 n + A178798 (A001037 n).toNat

end

end A314362.P16554021003290020460

/-! ## A314362.P7426819433863304413

`A314363(n)-A185284(A000045(n))`
-/

namespace A314362.P7426819433863304413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314363 n - A185284 (A000045 n).toNat

end

end A314362.P7426819433863304413

/-! ## A314362.P17790202510978555261

`A314363(n)+A142150(A002064(n+1))`
-/

namespace A314362.P17790202510978555261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314363 n + A142150 (A002064 (n + 1)).toNat

end

end A314362.P17790202510978555261

/-!
# A314363: Coordination sequence Gal.5.155.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314363, there is no canonical definition to state claims against.
-/

/-! ## A314363.P2604709815342206619

`or(A124778(3*n+2)², A314362(n))`
-/

namespace A314363.P2604709815342206619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124778 (3 * n + 2) ^ 2) (A314362 n)

end

end A314363.P2604709815342206619

/-! ## A314363.P7632842900354314152

`or(A275937((n+1)/2^val(n+1, 2)), A314362(n))`
-/

namespace A314363.P7632842900354314152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275937 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (A314362 n)

end

end A314363.P7632842900354314152

/-! ## A314363.P271590605485670315

`A314362(n)+A058348(A005176(n))`
-/

namespace A314363.P271590605485670315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314362 n + A058348 (A005176 n).toNat

end

end A314363.P271590605485670315

/-! ## A314363.P5728382049361418674

`A314362(n)+A185284(A000045(n))`
-/

namespace A314363.P5728382049361418674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314362 n + A185284 (A000045 n).toNat

end

end A314363.P5728382049361418674

/-! ## A314363.P176987740496226982

`A314362(n)-A178780(A001037(n))`
-/

namespace A314363.P176987740496226982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314362 n - A178780 (A001037 n).toNat

end

end A314363.P176987740496226982

/-!
# A314364: Coordination sequence Gal.5.91.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314364, the canonical program `A314364.P3264614006262536072` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314364 has offset 0).

The definition of A314364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314364.P2407852434716280617

`A314548(n)-A087509(n)`
-/

namespace A314364.P2407852434716280617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314548 n - A087509 n

end

end A314364.P2407852434716280617

namespace A314364

/-- `A314548(n)-A087509(n)` -/
def P2407852434716280617.Spec : Prop :=
  ∀ n, P2407852434716280617.a n = A314364 n

end A314364

/-! ## A314364.P6740849506210737540

`A314548(n)-Δ[A008133(n)]`
-/

namespace A314364.P6740849506210737540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314548 n - (f1 (n + 1) - f1 n)

end

end A314364.P6740849506210737540

namespace A314364

/-- `A314548(n)-Δ[A008133(n)]` -/
def P6740849506210737540.Spec : Prop :=
  ∀ n, P6740849506210737540.a n = A314364 n

end A314364

/-! ## A314364.P12006936668444270131

`A314548(n)-A186731(A091684(n))`
-/

namespace A314364.P12006936668444270131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314548 n - A186731 (A091684 n).toNat

end

end A314364.P12006936668444270131

namespace A314364

/-- `A314548(n)-A186731(A091684(n))` -/
def P12006936668444270131.Spec : Prop :=
  ∀ n, P12006936668444270131.a n = A314364 n

end A314364

/-! ## A314364.P849103413783162051

`A008574(n)+A314548(n)-A301688(n)`
-/

namespace A314364.P849103413783162051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314548 n - A301688 n)

end

end A314364.P849103413783162051

namespace A314364

/-- `A008574(n)+A314548(n)-A301688(n)` -/
def P849103413783162051.Spec : Prop :=
  ∀ n, P849103413783162051.a n = A314364 n

end A314364

/-! ## A314364.P3264614006262536072

`A315943(n)-A006368(A004396(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314364

/-- `A315943(n)-A006368(A004396(n))` -/
def P3264614006262536072.Spec : Prop :=
  ∀ n, P3264614006262536072.a n = A314364 n

theorem P3264614006262536072.correct : P3264614006262536072.Spec := by
  intro n
  simp only [A314364]

end A314364

/-!
# A314375: Coordination sequence Gal.6.91.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314375, there is no canonical definition to state claims against.
-/

/-! ## A314375.P4161292850047816588

`A227177(A333646(n+1))+A171826(n+1)`
-/

namespace A314375.P4161292850047816588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A333646 (n + 1)).toNat + A171826 (n + 1)

end

end A314375.P4161292850047816588

/-! ## A314375.P12197064083542474899

`A303780(A267763(3*n+1))+A002379(n)`
-/

namespace A314375.P12197064083542474899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303780 (A267763 (3 * n + 1)).toNat + A002379 n

end

end A314375.P12197064083542474899

/-! ## A314375.P12814195764981502894

`A316846(A330058(n)+A000217(3*n+1))`
-/

namespace A314375.P12814195764981502894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (A330058 n + A000217 (3 * n + 1)).toNat

end

end A314375.P12814195764981502894

/-! ## A314375.P1821499249363131580

`or(A110911(2*n+1), A134090(A134090(n+1)))`
-/

namespace A314375.P1821499249363131580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A110911 (2 * n + 1)) (A134090 (A134090 (n + 1)).toNat)

end

end A314375.P1821499249363131580

/-! ## A314375.P17448262267392985934

`lt[A072094(A084462(n+1)), A147665(3*n+2)]`
-/

namespace A314375.P17448262267392985934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072094 (A084462 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147665 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A314375.P17448262267392985934

/-!
# A314377: Coordination sequence Gal.6.109.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314377, there is no canonical definition to state claims against.
-/

/-! ## A314377.P15241661644694991933

`record[A153663(n+1)%A047700(n+1)]`
-/

namespace A314377.P15241661644694991933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153663 (n + 1)) (A047700 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314377.P15241661644694991933

/-! ## A314377.P4835442471824038627

`eq[A080843(n), A096811(A094587(n))]`
-/

namespace A314377.P4835442471824038627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 (A094587 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314377.P4835442471824038627

/-! ## A314377.P2910240687843295286

`A016825(n)-A169991(A000217(n+2))`
-/

namespace A314377.P2910240687843295286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A169991 (A000217 (n + 2)).toNat

end

end A314377.P2910240687843295286

/-! ## A314377.P5439980248403796236

`eq[A080843(n), A095062(A316074(n+1))]`
-/

namespace A314377.P5439980248403796236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095062 (A316074 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314377.P5439980248403796236

/-!
# A314380: Coordination sequence Gal.6.102.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314380, there is no canonical definition to state claims against.
-/

/-! ## A314380.P10146200882086141507

`eq[A169764(n+1), A285568(A362360(3*n+5))]`
-/

namespace A314380.P10146200882086141507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (A362360 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314380.P10146200882086141507

/-! ## A314380.P4081014180462058477

`∑[A000005(A348689(2*n+1)+A348661(3*n+2))]`
-/

namespace A314380.P4081014180462058477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A348689 (2 * n + 1) + A348661 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314380.P4081014180462058477

/-! ## A314380.P3633798697967729858

`A072149(n)%A101416(3*n+1)+n-A274923(A265188(n+4))`
-/

namespace A314380.P3633798697967729858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072149 n) (A101416 (3 * n + 1)) + (n : ℤ) - A274923 (A265188 (n + 4)).toNat

end

end A314380.P3633798697967729858

/-!
# A314382: Coordination sequence Gal.3.35.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314382, there is no canonical definition to state claims against.
-/

/-! ## A314382.P12321741568556587005

`2*A310661(n)-A250122(n)`
-/

namespace A314382.P12321741568556587005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310661 n - A250122 n

end

end A314382.P12321741568556587005

/-! ## A314382.P13250144492021451790

`A005843(A310661(n))-A250122(n)`
-/

namespace A314382.P13250144492021451790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A310661 n).toNat - A250122 n

end

end A314382.P13250144492021451790

/-! ## A314382.P4394035883459078520

`A004277(A310661(n))-(A301287(n)+A314517(n)-A008706(n))`
-/

namespace A314382.P4394035883459078520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A310661 n).toNat - (A301287 n + (A314517 n - A008706 n))

end

end A314382.P4394035883459078520

/-! ## A314382.P10038008627154634180

`A004277(A310661(n))-(A301287(n)-A008587(n)%A314517(n))`
-/

namespace A314382.P10038008627154634180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A310661 n).toNat - (A301287 n - Int.tmod (A008587 n) (A314517 n))

end

end A314382.P10038008627154634180

/-! ## A314382.P3941714406397976396

`A000267(A310661(n)²)-A250122(n)`
-/

namespace A314382.P3941714406397976396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A310661 n ^ 2).toNat - A250122 n

end

end A314382.P3941714406397976396

/-!
# A314383: Coordination sequence Gal.5.94.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314383, there is no canonical definition to state claims against.
-/

/-! ## A314383.P5931691937078045787

`record[A219040(n+5)%A336064(n+1)]`
-/

namespace A314383.P5931691937078045787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219040 (n + 5)) (A336064 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314383.P5931691937078045787

/-!
# A314385: Coordination sequence Gal.4.108.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314385, there is no canonical definition to state claims against.
-/

/-! ## A314385.P4576352473017558690

`∑[A089840(∑[A180200(2*n+1)+1])+1]`
-/

namespace A314385.P4576352473017558690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (2 * n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314385.P4576352473017558690

/-! ## A314385.P12686077826054245295

`eq[A165476(n), A165582(A185318(n+2))]`
-/

namespace A314385.P12686077826054245295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165582 (A185318 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314385.P12686077826054245295

/-!
# A314387: Coordination sequence Gal.6.11.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314387, there is no canonical definition to state claims against.
-/

/-! ## A314387.P11924099840748696391

`A314615(n)-A124761(A314618(2*(n+2)))`
-/

namespace A314387.P11924099840748696391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314615 n - A124761 (A314618 (2 * (n + 2))).toNat

end

end A314387.P11924099840748696391

/-! ## A314387.P9326813837523204719

`∏{e}[2^n, A110548(2*(n+1))+#]`
-/

namespace A314387.P9326813837523204719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A110548 (2 * (n + 1)) + (Nat.factorization (f1 n) p : ℤ))

end

end A314387.P9326813837523204719

/-! ## A314387.P12667254614090303293

`A110548(2*n+2)+n-floor(acot(n))`
-/

namespace A314387.P12667254614090303293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110548 (2 * n + 2) + ((n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A314387.P12667254614090303293

/-! ## A314387.P16927065572136738094

`∑[∏{e}[eq[1, A323510(n+1)]+4^n-1, #!]]+2*n`
-/

namespace A314387.P16927065572136738094
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n : ℤ) + ((4 ^ n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A314387.P16927065572136738094

/-!
# A314388: Coordination sequence Gal.5.20.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314388, there is no canonical definition to state claims against.
-/

/-! ## A314388.P6445612822779616352

`eq[A000484(n), A007016(A122921(n))]`
-/

namespace A314388.P6445612822779616352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007016 (A122921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314388.P6445612822779616352

/-! ## A314388.P15037569233050920366

`A100832(n+1)+A100825(A017990(n))`
-/

namespace A314388.P15037569233050920366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (n + 1) + A100825 (A017990 n).toNat

end

end A314388.P15037569233050920366

/-! ## A314388.P222280905710947906

`A278248(A032559(n+1))+A008486(n)`
-/

namespace A314388.P222280905710947906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278248 (A032559 (n + 1)).toNat + A008486 n

end

end A314388.P222280905710947906

/-! ## A314388.P2670402520838936007

`A246101(3*n+2)+A121373(A034472(n))`
-/

namespace A314388.P2670402520838936007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246101 (3 * n + 2) + A121373 (A034472 n).toNat

end

end A314388.P2670402520838936007

/-! ## A314388.P16902195172147660160

`A246101(3*n+2)-A121373(A183346(n+1))`
-/

namespace A314388.P16902195172147660160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246101 (3 * n + 2) - A121373 (A183346 (n + 1)).toNat

end

end A314388.P16902195172147660160

/-!
# A314389: Coordination sequence Gal.4.12.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314389, there is no canonical definition to state claims against.
-/

/-! ## A314389.P4092530706479155288

`A314617(n)-A037817(A001731(n))`
-/

namespace A314389.P4092530706479155288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314617 n - A037817 (A001731 n).toNat

end

end A314389.P4092530706479155288

/-!
# A314390: Coordination sequence Gal.5.217.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314390, there is no canonical definition to state claims against.
-/

/-! ## A314390.P5245328516194835033

`A315987(n)-A004525(A047273(n+1))`
-/

namespace A314390.P5245328516194835033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315987 n - A004525 (A047273 (n + 1)).toNat

end

end A314390.P5245328516194835033

/-! ## A314390.P5801783008244192233

`A315987(n)-A004525(A004525(3*n))`
-/

namespace A314390.P5801783008244192233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315987 n - A004525 (A004525 (3 * n)).toNat

end

end A314390.P5801783008244192233

/-! ## A314390.P12774256548721978384

`A291812(A314960(n)+1)`
-/

namespace A314390.P12774256548721978384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A314960 n + 1).toNat

end

end A314390.P12774256548721978384

/-! ## A314390.P5490573231444476566

`A029883(A033191(n))+4*n`
-/

namespace A314390.P5490573231444476566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A033191 n).toNat + (4 * n : ℤ)

end

end A314390.P5490573231444476566

/-! ## A314390.P1578366277309137081

`4*n+3-A001222(A234161(n+2))`
-/

namespace A314390.P1578366277309137081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) - A001222 (A234161 (n + 2)).toNat

end

end A314390.P1578366277309137081

/-!
# A314392: Coordination sequence Gal.5.94.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314392, there is no canonical definition to state claims against.
-/

/-! ## A314392.P2974860114014611395

`A310696(n)+A001221(A295334(2*n))`
-/

namespace A314392.P2974860114014611395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310696 n + A001221 (A295334 (2 * n)).toNat

end

end A314392.P2974860114014611395

/-! ## A314392.P11565942817558566093

`A261133(A315349(n)+n)+A244895(n)`
-/

namespace A314392.P11565942817558566093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261133 (A315349 n + (n : ℤ)).toNat + A244895 n

end

end A314392.P11565942817558566093

/-! ## A314392.P13913939452447002768

`A010051(A102362(n+1))+4*n+2-A000120(A167973(2*n+1))`
-/

namespace A314392.P13913939452447002768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A102362 (n + 1)).toNat + (4 * n + 2 : ℤ) - A000120 (A167973 (2 * n + 1)).toNat

end

end A314392.P13913939452447002768

/-!
# A314393: Coordination sequence Gal.6.34.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314393, there is no canonical definition to state claims against.
-/

/-! ## A314393.P1587107404206337254

`A165474(n)-∑{e}[A019463(2*n+1), #]`
-/

namespace A314393.P1587107404206337254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165474 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A314393.P1587107404206337254

/-!
# A314397: Coordination sequence Gal.5.7.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314397, there is no canonical definition to state claims against.
-/

/-! ## A314397.P18443150027592051174

`A314395(n)+A276330(A129551(n+1))`
-/

namespace A314397.P18443150027592051174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314395 n + A276330 (A129551 (n + 1)).toNat

end

end A314397.P18443150027592051174

/-!
# A314398: Coordination sequence Gal.5.23.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314398, there is no canonical definition to state claims against.
-/

/-! ## A314398.P268644229234310203

`A301298(n)-A124010(A324238(n))`
-/

namespace A314398.P268644229234310203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A124010 (A324238 n).toNat

end

end A314398.P268644229234310203

/-!
# A314399: Coordination sequence Gal.6.68.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314399, there is no canonical definition to state claims against.
-/

/-! ## A314399.P1825453482772158184

`A052938(A108542(n+1)%A123181(n+1))`
-/

namespace A314399.P1825453482772158184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (Int.tmod (A108542 (n + 1)) (A123181 (n + 1))).toNat

end

end A314399.P1825453482772158184

/-! ## A314399.P6933357882956349050

`A057561(or(A034856(n+1), A337909(n+1)))`
-/

namespace A314399.P6933357882956349050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (Int.lor (A034856 (n + 1)) (A337909 (n + 1))).toNat

end

end A314399.P6933357882956349050

