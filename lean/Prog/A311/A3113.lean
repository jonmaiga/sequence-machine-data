import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A311300: Coordination sequence Gal.4.46.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311300, there is no canonical definition to state claims against.
-/

/-! ## A311300.P17891550995747532275

`A311302(n)-A010894(A311882(n))`
-/

namespace A311300.P17891550995747532275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311302 n - A010894 ((A311882 n).toNat + 21)

end

end A311300.P17891550995747532275

/-! ## A311300.P14873703523871044589

`A311302(n)-A010894(A311883(n))`
-/

namespace A311300.P14873703523871044589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311302 n - A010894 ((A311883 n).toNat + 21)

end

end A311300.P14873703523871044589

/-! ## A311300.P1543821713459050398

`A311955(n)-A189479(A170941(n))`
-/

namespace A311300.P1543821713459050398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311955 n - A189479 (A170941 n).toNat

end

end A311300.P1543821713459050398

/-! ## A311300.P16106829033446843858

`A311288(n)+A025466(A010345(n+1))`
-/

namespace A311300.P16106829033446843858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311288 n + A025466 (A010345 (n + 1)).toNat

end

end A311300.P16106829033446843858

/-! ## A311300.P5205955268664439622

`A180613(∑[n+2])`
-/

namespace A311300.P5205955268664439622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180613 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A311300.P5205955268664439622

/-!
# A311301: Coordination sequence Gal.5.61.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311301, there is no canonical definition to state claims against.
-/

/-! ## A311301.P17011330812991070180

`(A311348(n)+A311229(n))/2`
-/

namespace A311301.P17011330812991070180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311348 n + A311229 n : ℚ) / 2

end

end A311301.P17011330812991070180

/-! ## A311301.P8957904278585876610

`A302042(A311348(n)+A311229(n))`
-/

namespace A311301.P8957904278585876610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A311348 n + A311229 n).toNat

end

end A311301.P8957904278585876610

/-! ## A311301.P2519595489396820279

`A004525(A311348(n)+A311229(n))`
-/

namespace A311301.P2519595489396820279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311348 n + A311229 n).toNat

end

end A311301.P2519595489396820279

/-! ## A311301.P10184565047517657

`A004526(A311348(n)+A311229(n))`
-/

namespace A311301.P10184565047517657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311348 n + A311229 n).toNat

end

end A311301.P10184565047517657

/-! ## A311301.P6738168537447199973

`A142150(A311348(n)+A311229(n))`
-/

namespace A311301.P6738168537447199973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A311348 n + A311229 n).toNat

end

end A311301.P6738168537447199973

/-!
# A311302: Coordination sequence Gal.5.57.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311302, there is no canonical definition to state claims against.
-/

/-! ## A311302.P12215177387964171844

`(A311349(n)+A311230(n))/2`
-/

namespace A311302.P12215177387964171844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311349 n + A311230 n : ℚ) / 2

end

end A311302.P12215177387964171844

/-! ## A311302.P17526319107142049612

`A014682(A311349(n)+A311230(n))`
-/

namespace A311302.P17526319107142049612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A311349 n + A311230 n).toNat

end

end A311302.P17526319107142049612

/-! ## A311302.P2068786491144582697

`A004525(A311349(n)+A311230(n))`
-/

namespace A311302.P2068786491144582697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311349 n + A311230 n).toNat

end

end A311302.P2068786491144582697

/-! ## A311302.P3617527291552350759

`A004526(A311349(n)+A311230(n))`
-/

namespace A311302.P3617527291552350759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311349 n + A311230 n).toNat

end

end A311302.P3617527291552350759

/-! ## A311302.P14676342881253942080

`A006370(A311349(n)+A311230(n))`
-/

namespace A311302.P14676342881253942080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A311349 n + A311230 n).toNat

end

end A311302.P14676342881253942080

/-! ## A311302.P9347002199034086846

`A026741(A311349(n)+A311230(n))`
-/

namespace A311302.P9347002199034086846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A311349 n + A311230 n).toNat

end

end A311302.P9347002199034086846

/-! ## A311302.P2058791167262366888

`A029578(A311349(n)+A311230(n))`
-/

namespace A311302.P2058791167262366888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A311349 n + A311230 n).toNat

end

end A311302.P2058791167262366888

/-! ## A311302.P7300628008032160788

`A032742(A311349(n)+A311230(n))`
-/

namespace A311302.P7300628008032160788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A311349 n + A311230 n).toNat

end

end A311302.P7300628008032160788

/-! ## A311302.P15538915554701868137

`A065033(A311349(n)+A311230(n))`
-/

namespace A311302.P15538915554701868137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311349 n + A311230 n).toNat

end

end A311302.P15538915554701868137

/-! ## A311302.P15472541631830645213

`A078898(A311349(n)+A311230(n))`
-/

namespace A311302.P15472541631830645213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A311349 n + A311230 n).toNat

end

end A311302.P15472541631830645213

/-! ## A311302.P4940860900435022417

`A110654(A311349(n)+A311230(n))`
-/

namespace A311302.P4940860900435022417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311349 n + A311230 n).toNat

end

end A311302.P4940860900435022417

/-! ## A311302.P8255520825096466717

`A008619(A311230(n)+A311349(n)-1)`
-/

namespace A311302.P8255520825096466717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311230 n + (A311349 n - 1)).toNat

end

end A311302.P8255520825096466717

/-! ## A311302.P8178102316868219039

`A008619(A311230(n)-(1-A311349(n)))`
-/

namespace A311302.P8178102316868219039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311230 n - (1 - A311349 n)).toNat

end

end A311302.P8178102316868219039

/-! ## A311302.P5906593629142615093

`A065033(A311230(n)-(1-A311349(n)))`
-/

namespace A311302.P5906593629142615093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311230 n - (1 - A311349 n)).toNat

end

end A311302.P5906593629142615093

/-! ## A311302.P3513458338674694095

`A110654(A311230(n)-(1-A311349(n)))`
-/

namespace A311302.P3513458338674694095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311230 n - (1 - A311349 n)).toNat

end

end A311302.P3513458338674694095

/-!
# A311303: Coordination sequence Gal.6.147.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311303, there is no canonical definition to state claims against.
-/

/-! ## A311303.P11970325128289190669

`A351870(A311304(n)-A325649(n+1))`
-/

namespace A311303.P11970325128289190669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A311304 n - A325649 (n + 1)).toNat

end

end A311303.P11970325128289190669

/-! ## A311303.P6926366401667454126

`record[A311304(n)-(A326457(n)+A325649(n+1))]`
-/

namespace A311303.P6926366401667454126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311304 n - (A326457 n + A325649 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311303.P6926366401667454126

/-! ## A311303.P3287764566782949383

`(A311304(n)-A325649(n+1))%A194472(n+1)`
-/

namespace A311303.P3287764566782949383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311304 n - A325649 (n + 1)) (A194472 (n + 1))

end

end A311303.P3287764566782949383

/-! ## A311303.P13118798055657147195

`A311304(A122200(∑[n]))`
-/

namespace A311303.P13118798055657147195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311304 (A122200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311303.P13118798055657147195

/-! ## A311303.P16254516056557797690

`A311304(n)+A000007(A008861(n))`
-/

namespace A311303.P16254516056557797690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311304 n + A000007 (A008861 n).toNat

end

end A311303.P16254516056557797690

/-!
# A311304: Coordination sequence Gal.6.140.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311304, there is no canonical definition to state claims against.
-/

/-! ## A311304.P12146481302616724944

`A351870(A311303(n))+A325649(n+1)`
-/

namespace A311304.P12146481302616724944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A311303 n).toNat + A325649 (n + 1)

end

end A311304.P12146481302616724944

/-! ## A311304.P17008126517295704457

`A325649(n+1)+A311303(n)+A000007(A210678(n))`
-/

namespace A311304.P17008126517295704457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325649 (n + 1) + (A311303 n + A000007 (A210678 n).toNat)

end

end A311304.P17008126517295704457

/-! ## A311304.P16908376000192341683

`A000007(A210697(n+1))+A325649(n+1)+A311303(n)`
-/

namespace A311304.P16908376000192341683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A210697 (n + 1)).toNat + (A325649 (n + 1) + A311303 n)

end

end A311304.P16908376000192341683

/-! ## A311304.P5045188556224878770

`A319988(A000225(n+1))+A325649(n+1)+A311303(n)`
-/

namespace A311304.P5045188556224878770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (A000225 (n + 1)).toNat + (A325649 (n + 1) + A311303 n)

end

end A311304.P5045188556224878770

/-! ## A311304.P921892914125276454

`(A325649(n+1)+A311303(n))^A094507(A178516(n+1))`
-/

namespace A311304.P921892914125276454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325649 (n + 1) + A311303 n : ℚ) ^ (A094507 (A178516 (n + 1)).toNat : ℤ)

end

end A311304.P921892914125276454

/-!
# A311305: Coordination sequence Gal.6.287.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311305, there is no canonical definition to state claims against.
-/

/-! ## A311305.P14228798164804890999

`xor(A283316(A093041(n)), A311295(n))`
-/

namespace A311305.P14228798164804890999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283316 (A093041 n).toNat) (A311295 n)

end

end A311305.P14228798164804890999

/-! ## A311305.P9587119784126242408

`A247973(A311306(n)+A047263(n+1))`
-/

namespace A311305.P9587119784126242408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A311306 n + A047263 (n + 1)).toNat

end

end A311305.P9587119784126242408

/-! ## A311305.P8359443749533645506

`A083918(A000010(2*(n+1)))+A311292(n)+A185284(3*n+1)`
-/

namespace A311305.P8359443749533645506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A000010 (2 * (n + 1))).toNat + (A311292 n + A185284 (3 * n + 1))

end

end A311305.P8359443749533645506

/-! ## A311305.P14055109521951845103

`A311306(n)%∏{p}[A283857(3*n+4)+1, #]`
-/

namespace A311305.P14055109521951845103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (3 * n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311306 n) ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A311305.P14055109521951845103

/-! ## A311305.P5523762720076648782

`A311306(A062399(n))`
-/

namespace A311305.P5523762720076648782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311306 (A062399 n).toNat

end

end A311305.P5523762720076648782

/-!
# A311306: Coordination sequence Gal.6.273.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311306, there is no canonical definition to state claims against.
-/

/-! ## A311306.P1630926840444385020

`or(A003285(A245980(n)), A311305(n))`
-/

namespace A311306.P1630926840444385020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003285 (A245980 n).toNat) (A311305 n)

end

end A311306.P1630926840444385020

/-! ## A311306.P3762709376926165513

`A311305(n)+A188071(A257493(3*n+2))`
-/

namespace A311306.P3762709376926165513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311305 n + A188071 (A257493 (3 * n + 2)).toNat

end

end A311306.P3762709376926165513

/-!
# A311307: Coordination sequence Gal.6.402.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311307, there is no canonical definition to state claims against.
-/

/-! ## A311307.P12092257217103158396

`A313570(n)-A287272(A034856(n+1))`
-/

namespace A311307.P12092257217103158396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313570 n - A287272 (A034856 (n + 1)).toNat

end

end A311307.P12092257217103158396

/-! ## A311307.P1609116158911134518

`∑[A053610(A233586(n+1))]`
-/

namespace A311307.P1609116158911134518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (A233586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311307.P1609116158911134518

/-! ## A311307.P18395832664040096604

`A008574(n)+A001221(A062494(n))`
-/

namespace A311307.P18395832664040096604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001221 (A062494 n).toNat

end

end A311307.P18395832664040096604

/-! ## A311307.P12003031724160154917

`A301301(n)+A285464(A000111(n))`
-/

namespace A311307.P12003031724160154917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A285464 (A000111 n).toNat

end

end A311307.P12003031724160154917

/-! ## A311307.P10029429468235876521

`A311054(n)+A001221(A303160(n))`
-/

namespace A311307.P10029429468235876521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311054 n + A001221 (A303160 n).toNat

end

end A311307.P10029429468235876521

/-!
# A311308: Coordination sequence Gal.4.5.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311308, there is no canonical definition to state claims against.
-/

/-! ## A311308.P5775349836034897813

`A247973(A313900(n))`
-/

namespace A311308.P5775349836034897813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A313900 n).toNat

end

end A311308.P5775349836034897813

/-! ## A311308.P18086779567152398398

`A311264(n)+A011734(A052533(n))`
-/

namespace A311308.P18086779567152398398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311264 n + A011734 (A052533 n).toNat

end

end A311308.P18086779567152398398

/-! ## A311308.P16821764036893874932

`A311266(n)+A011734(A052533(n))`
-/

namespace A311308.P16821764036893874932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311266 n + A011734 (A052533 n).toNat

end

end A311308.P16821764036893874932

/-! ## A311308.P7464671797501923481

`A247973(A313802(n)+A133501(n))`
-/

namespace A311308.P7464671797501923481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A313802 n + A133501 n).toNat

end

end A311308.P7464671797501923481

/-! ## A311308.P17831475294209978593

`A301301(n)+A112765(A096620(n))`
-/

namespace A311308.P17831475294209978593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A112765 (A096620 n).toNat

end

end A311308.P17831475294209978593

/-!
# A311309: Coordination sequence Gal.4.66.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311309, there is no canonical definition to state claims against.
-/

/-! ## A311309.P17193021776923540761

`or(A008574(n), A108611(A048330(n)))`
-/

namespace A311309.P17193021776923540761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A108611 (A048330 n).toNat)

end

end A311309.P17193021776923540761

/-! ## A311309.P14499414723783944761

`record[A311311(n)-A047170(n+1)]`
-/

namespace A311309.P14499414723783944761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311311 n - A047170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311309.P14499414723783944761

/-! ## A311309.P15883884568504780390

`A311278(n)+A037804(A125023(n))`
-/

namespace A311309.P15883884568504780390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311278 n + A037804 (A125023 n).toNat

end

end A311309.P15883884568504780390

/-! ## A311309.P14258108058949240793

`A311327(n)-A016419(A016440(n))`
-/

namespace A311309.P14258108058949240793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311327 n - A016419 (A016440 n).toNat

end

end A311309.P14258108058949240793

/-! ## A311309.P16322827708574156760

`A311356(n)-A025441(A178543(n))`
-/

namespace A311309.P16322827708574156760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 n - A025441 (A178543 n).toNat

end

end A311309.P16322827708574156760

/-!
# A311310: Coordination sequence Gal.5.63.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311310, there is no canonical definition to state claims against.
-/

/-! ## A311310.P14342999395935939282

`A311549(n)+n-A004525(n)-A000523(A101913(2*n))`
-/

namespace A311310.P14342999395935939282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + ((n : ℤ) - A004525 n) - A000523 (A101913 (2 * n)).toNat

end

end A311310.P14342999395935939282

/-! ## A311310.P10232504693031920468

`A311311(n)-A014184(A232230(n))`
-/

namespace A311310.P10232504693031920468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311311 n - A014184 (A232230 n).toNat

end

end A311310.P10232504693031920468

/-! ## A311310.P15117837990287783170

`record[A311312(A348687(n))]`
-/

namespace A311310.P15117837990287783170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 (A348687 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311310.P15117837990287783170

/-! ## A311310.P12943045527254987423

`A311312(n^A269626(n+3))`
-/

namespace A311310.P12943045527254987423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A269626 (n + 3) : ℤ))).toNat

end

end A311310.P12943045527254987423

/-! ## A311310.P9060311657988423227

`∩[A129618(n+1), A311312(n)]`
-/

namespace A311310.P9060311657988423227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A311310.P9060311657988423227

/-!
# A311311: Coordination sequence Gal.5.59.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311311, there is no canonical definition to state claims against.
-/

/-! ## A311311.P2130800615446338684

`A311312(n)+∑[A163533(A203048(n+1))]`
-/

namespace A311311.P2130800615446338684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (A203048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311311.P2130800615446338684

/-! ## A311311.P15505422600416546750

`A311331(n)-A005088(A049332(n))`
-/

namespace A311311.P15505422600416546750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311331 n - A005088 (A049332 n).toNat

end

end A311311.P15505422600416546750

/-! ## A311311.P8798684246304763512

`A311312(n)-A102683(A000079(n))`
-/

namespace A311311.P8798684246304763512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n - A102683 (A000079 n).toNat

end

end A311311.P8798684246304763512

/-! ## A311311.P16965623058535153464

`A311312(n)-A102683(A049332(n))`
-/

namespace A311311.P16965623058535153464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n - A102683 (A049332 n).toNat

end

end A311311.P16965623058535153464

/-!
# A311312: Coordination sequence Gal.6.118.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311312, the canonical program `A311312.P1118141043632426917` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311312 has offset 0).

The definition of A311312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311312.P17970803494232265151

`abs(A008592(n)-(A313717(n)+n))`
-/

namespace A311312.P17970803494232265151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313717 n + (n : ℤ))|

end

end A311312.P17970803494232265151

namespace A311312

/-- `abs(A008592(n)-(A313717(n)+n))` -/
def P17970803494232265151.Spec : Prop :=
  ∀ n, P17970803494232265151.a n = A311312 n

end A311312

/-! ## A311312.P8895156400663710842

`A008458(n)+A008486(n)-A313717(n)`
-/

namespace A311312.P8895156400663710842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313717 n)

end

end A311312.P8895156400663710842

namespace A311312

/-- `A008458(n)+A008486(n)-A313717(n)` -/
def P8895156400663710842.Spec : Prop :=
  ∀ n, P8895156400663710842.a n = A311312 n

end A311312

/-! ## A311312.P2038716671513828074

`A313064(n)-A004524(n+1)`
-/

namespace A311312.P2038716671513828074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313064 n - A004524 (n + 1)

end

end A311312.P2038716671513828074

namespace A311312

/-- `A313064(n)-A004524(n+1)` -/
def P2038716671513828074.Spec : Prop :=
  ∀ n, P2038716671513828074.a n = A311312 n

end A311312

/-! ## A311312.P17440521888381451631

`A004525(n)+A313064(n)-n`
-/

namespace A311312.P17440521888381451631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313064 n - (n : ℤ))

end

end A311312.P17440521888381451631

namespace A311312

/-- `A004525(n)+A313064(n)-n` -/
def P17440521888381451631.Spec : Prop :=
  ∀ n, P17440521888381451631.a n = A311312 n

end A311312

/-! ## A311312.P1118141043632426917

`A314903(n)-A004396(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A311312

/-- `A314903(n)-A004396(n)` -/
def P1118141043632426917.Spec : Prop :=
  ∀ n, P1118141043632426917.a n = A311312 n

theorem P1118141043632426917.correct : P1118141043632426917.Spec := by
  intro n
  simp only [A311312]

end A311312

/-! ## A311312.P2130420854171688360

`A314903(n)-A002264(2*n+1)`
-/

namespace A311312.P2130420854171688360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n - A002264 (2 * n + 1)

end

end A311312.P2130420854171688360

namespace A311312

/-- `A314903(n)-A002264(2*n+1)` -/
def P2130420854171688360.Spec : Prop :=
  ∀ n, P2130420854171688360.a n = A311312 n

end A311312

/-! ## A311312.P929970320506143906

`A004525(A004396(n))+A312144(n)-A004396(n)`
-/

namespace A311312.P929970320506143906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312144 n - A004396 n)

end

end A311312.P929970320506143906

namespace A311312

/-- `A004525(A004396(n))+A312144(n)-A004396(n)` -/
def P929970320506143906.Spec : Prop :=
  ∀ n, P929970320506143906.a n = A311312 n

end A311312

/-! ## A311312.P10809001559869652897

`A004396(A004525(n))+A311536(n)-A004525(n)`
-/

namespace A311312.P10809001559869652897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A311536 n - A004525 n)

end

end A311312.P10809001559869652897

namespace A311312

/-- `A004396(A004525(n))+A311536(n)-A004525(n)` -/
def P10809001559869652897.Spec : Prop :=
  ∀ n, P10809001559869652897.a n = A311312 n

end A311312

/-! ## A311312.P12541221540916447743

`A313754(n)-n`
-/

namespace A311312.P12541221540916447743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n - (n : ℤ)

end

end A311312.P12541221540916447743

namespace A311312

/-- `A313754(n)-n` -/
def P12541221540916447743.Spec : Prop :=
  ∀ n, P12541221540916447743.a n = A311312 n

end A311312

/-! ## A311312.P4682713908447225545

`A001478(n+1)+A313754(n)+1`
-/

namespace A311312.P4682713908447225545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A313754 n + 1)

end

end A311312.P4682713908447225545

namespace A311312

/-- `A001478(n+1)+A313754(n)+1` -/
def P4682713908447225545.Spec : Prop :=
  ∀ n, P4682713908447225545.a n = A311312 n

end A311312

/-! ## A311312.P9820182942225097766

`A314737(n)-A004525(n)`
-/

namespace A311312.P9820182942225097766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n - A004525 n

end

end A311312.P9820182942225097766

namespace A311312

/-- `A314737(n)-A004525(n)` -/
def P9820182942225097766.Spec : Prop :=
  ∀ n, P9820182942225097766.a n = A311312 n

end A311312

/-! ## A311312.P3406696254589953896

`Δ[A011848(n)]+A314737(n)-n`
-/

namespace A311312.P3406696254589953896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314737 n - (n : ℤ))

end

end A311312.P3406696254589953896

namespace A311312

/-- `Δ[A011848(n)]+A314737(n)-n` -/
def P3406696254589953896.Spec : Prop :=
  ∀ n, P3406696254589953896.a n = A311312 n

end A311312

/-! ## A311312.P18116743901773785290

`A128834(n)+A313290(n)-n`
-/

namespace A311312.P18116743901773785290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313290 n - (n : ℤ))

end

end A311312.P18116743901773785290

namespace A311312

/-- `A128834(n)+A313290(n)-n` -/
def P18116743901773785290.Spec : Prop :=
  ∀ n, P18116743901773785290.a n = A311312 n

end A311312

/-! ## A311312.P2437186357925285244

`A008458(n)+A008574(n)-A315760(n)`
-/

namespace A311312.P2437186357925285244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315760 n)

end

end A311312.P2437186357925285244

namespace A311312

/-- `A008458(n)+A008574(n)-A315760(n)` -/
def P2437186357925285244.Spec : Prop :=
  ∀ n, P2437186357925285244.a n = A311312 n

end A311312

/-! ## A311312.P3782622478776624586

`A313930(n)-A047513(n+1)`
-/

namespace A311312.P3782622478776624586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - A047513 (n + 1)

end

end A311312.P3782622478776624586

namespace A311312

/-- `A313930(n)-A047513(n+1)` -/
def P3782622478776624586.Spec : Prop :=
  ∀ n, P3782622478776624586.a n = A311312 n

end A311312

/-! ## A311312.P4768699721799526411

`A004396(A314742(n))+n`
-/

namespace A311312.P4768699721799526411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314742 n).toNat + (n : ℤ)

end

end A311312.P4768699721799526411

namespace A311312

/-- `A004396(A314742(n))+n` -/
def P4768699721799526411.Spec : Prop :=
  ∀ n, P4768699721799526411.a n = A311312 n

end A311312

/-!
# A311313: Coordination sequence Gal.6.459.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311313, there is no canonical definition to state claims against.
-/

/-! ## A311313.P13912705742967324906

`A090001(A046342(n))+A004273(2*n)`
-/

namespace A311313.P13912705742967324906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A046342 n).toNat + A004273 (2 * n)

end

end A311313.P13912705742967324906

/-! ## A311313.P13642520797464123881

`or(A008574(n), A081603(A317671(n+1)))`
-/

namespace A311313.P13642520797464123881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A081603 (A317671 (n + 1)).toNat)

end

end A311313.P13642520797464123881

/-! ## A311313.P3338277673433640145

`xor(A051274(A230090(n+1)), A311278(n))`
-/

namespace A311313.P3338277673433640145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051274 (A230090 (n + 1)).toNat) (A311278 n)

end

end A311313.P3338277673433640145

/-! ## A311313.P1910778744768119110

`xor(A086597(A326336(n)), A311222(n))`
-/

namespace A311313.P1910778744768119110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086597 (A326336 n).toNat) (A311222 n)

end

end A311313.P1910778744768119110

/-!
# A311314: Coordination sequence Gal.5.173.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311314, there is no canonical definition to state claims against.
-/

/-! ## A311314.P8980463189795481034

`A311315(n)-A027870(A351870(n))`
-/

namespace A311314.P8980463189795481034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311315 n - A027870 (A351870 n).toNat

end

end A311314.P8980463189795481034

/-! ## A311314.P6735962111483149569

`A311315(n)-A025469(A308988(n+1))`
-/

namespace A311314.P6735962111483149569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311315 n - A025469 (A308988 (n + 1)).toNat

end

end A311314.P6735962111483149569

/-! ## A311314.P16986388909046208103

`A311315(n)-A124120(A317697(n+1))`
-/

namespace A311314.P16986388909046208103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311315 n - A124120 (A317697 (n + 1)).toNat

end

end A311314.P16986388909046208103

/-! ## A311314.P17284494770890104972

`A311315(A087051(n))`
-/

namespace A311314.P17284494770890104972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311315 (A087051 n).toNat

end

end A311314.P17284494770890104972

/-! ## A311314.P9340825439805875277

`A311315(A227549(n+1))`
-/

namespace A311314.P9340825439805875277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311315 (A227549 (n + 1)).toNat

end

end A311314.P9340825439805875277

/-!
# A311315: Coordination sequence Gal.5.163.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311315, there is no canonical definition to state claims against.
-/

/-! ## A311315.P7525292255702159625

`A311314(n)+A027870(A351870(n))`
-/

namespace A311315.P7525292255702159625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311314 n + A027870 (A351870 n).toNat

end

end A311315.P7525292255702159625

/-! ## A311315.P2423758274008868524

`A311283(n)+A174875(A225117(n))`
-/

namespace A311315.P2423758274008868524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311283 n + A174875 (A225117 n).toNat

end

end A311315.P2423758274008868524

/-! ## A311315.P15458243344853144444

`A311284(n)+A174875(A225117(n))`
-/

namespace A311315.P15458243344853144444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311284 n + A174875 (A225117 n).toNat

end

end A311315.P15458243344853144444

/-! ## A311315.P17796197798152672142

`or(A160382(A110132(n)), A311283(n))`
-/

namespace A311315.P17796197798152672142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160382 (A110132 n).toNat) (A311283 n)

end

end A311315.P17796197798152672142

/-! ## A311315.P8904480282441305787

`or(A160382(A110132(n)), A311284(n))`
-/

namespace A311315.P8904480282441305787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160382 (A110132 n).toNat) (A311284 n)

end

end A311315.P8904480282441305787

/-!
# A311316: Coordination sequence Gal.6.286.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311316, there is no canonical definition to state claims against.
-/

/-! ## A311316.P8051131464425851916

`(A311378(n)+A311222(n))/2`
-/

namespace A311316.P8051131464425851916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311378 n + A311222 n : ℚ) / 2

end

end A311316.P8051131464425851916

/-! ## A311316.P6381243983211890357

`A311317(n)+A311388(n)-A311389(n)`
-/

namespace A311316.P6381243983211890357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311317 n + (A311388 n - A311389 n)

end

end A311316.P6381243983211890357

/-! ## A311316.P14941363300091195222

`A004525(A311378(n)+A311222(n))`
-/

namespace A311316.P14941363300091195222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311378 n + A311222 n).toNat

end

end A311316.P14941363300091195222

/-! ## A311316.P8902364235022087851

`A004526(A311378(n)+A311222(n))`
-/

namespace A311316.P8902364235022087851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311378 n + A311222 n).toNat

end

end A311316.P8902364235022087851

/-! ## A311316.P8371774204903847620

`A065033(A311378(n)+A311222(n))`
-/

namespace A311316.P8371774204903847620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311378 n + A311222 n).toNat

end

end A311316.P8371774204903847620

/-! ## A311316.P8300192729183650057

`A110654(A311378(n)+A311222(n))`
-/

namespace A311316.P8300192729183650057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311378 n + A311222 n).toNat

end

end A311316.P8300192729183650057

/-! ## A311316.P11979997514978736479

`A110514(A311378(n)+A311222(n))-1`
-/

namespace A311316.P11979997514978736479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A311378 n + A311222 n).toNat - 1

end

end A311316.P11979997514978736479

/-! ## A311316.P12666634354958955736

`A065033(A311222(n)-(1-A311378(n)))`
-/

namespace A311316.P12666634354958955736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311222 n - (1 - A311378 n)).toNat

end

end A311316.P12666634354958955736

/-! ## A311316.P10930676340851614551

`A110654(A311222(n)-(1-A311378(n)))`
-/

namespace A311316.P10930676340851614551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311222 n - (1 - A311378 n)).toNat

end

end A311316.P10930676340851614551

/-! ## A311316.P4995073946544803638

`A110514(A311222(n)-(2-A311378(n)))`
-/

namespace A311316.P4995073946544803638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A311222 n - (2 - A311378 n)).toNat

end

end A311316.P4995073946544803638

/-!
# A311317: Coordination sequence Gal.6.287.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311317, there is no canonical definition to state claims against.
-/

/-! ## A311317.P5691550817489633496

`A311316(n)+A311389(n)-A311388(n)`
-/

namespace A311317.P5691550817489633496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311316 n + (A311389 n - A311388 n)

end

end A311317.P5691550817489633496

/-! ## A311317.P3493205940811292141

`(A311379(n)+A311223(n))/2`
-/

namespace A311317.P3493205940811292141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311379 n + A311223 n : ℚ) / 2

end

end A311317.P3493205940811292141

/-! ## A311317.P3569880896594067303

`A004525(A311379(n)+A311223(n))`
-/

namespace A311317.P3569880896594067303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311379 n + A311223 n).toNat

end

end A311317.P3569880896594067303

/-! ## A311317.P10352769972973770860

`A004526(A311379(n)+A311223(n))`
-/

namespace A311317.P10352769972973770860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311379 n + A311223 n).toNat

end

end A311317.P10352769972973770860

/-! ## A311317.P3313842972103336284

`A289436(A311379(n)+A311223(n))`
-/

namespace A311317.P3313842972103336284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A311379 n + A311223 n).toNat

end

end A311317.P3313842972103336284

/-!
# A311318: Coordination sequence Gal.5.91.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311318, there is no canonical definition to state claims against.
-/

/-! ## A311318.P18105376323334953342

`or(A294936(A000108(n)), A311306(n))`
-/

namespace A311318.P18105376323334953342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A294936 (A000108 n).toNat) (A311306 n)

end

end A311318.P18105376323334953342

/-! ## A311318.P12964622032483650289

`or(A174898(A143546(n)), A311296(n))`
-/

namespace A311318.P12964622032483650289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A174898 (A143546 n).toNat) (A311296 n)

end

end A311318.P12964622032483650289

/-! ## A311318.P5198088255959142799

`or(A001222(A146287(n+1)), A311259(n))`
-/

namespace A311318.P5198088255959142799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A146287 (n + 1)).toNat) (A311259 n)

end

end A311318.P5198088255959142799

/-! ## A311318.P16649554877497526297

`A311307(n)-A008683(A076766(n+4))`
-/

namespace A311318.P16649554877497526297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311307 n - A008683 (A076766 (n + 4)).toNat

end

end A311318.P16649554877497526297

/-!
# A311319: Coordination sequence Gal.6.420.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311319, there is no canonical definition to state claims against.
-/

/-! ## A311319.P12012081745127638496

`A311320(n)-A185246(A238863(n))`
-/

namespace A311319.P12012081745127638496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311320 n - A185246 (A238863 n).toNat

end

end A311319.P12012081745127638496

/-! ## A311319.P15578505595332274469

`A311320(n)-A000120(A172538(n+1))`
-/

namespace A311319.P15578505595332274469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311320 n - A000120 (A172538 (n + 1)).toNat

end

end A311319.P15578505595332274469

/-! ## A311319.P4460799476921179605

`A311320(n)-A107846(A258019(n+1))`
-/

namespace A311319.P4460799476921179605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311320 n - A107846 (A258019 (n + 1)).toNat

end

end A311319.P4460799476921179605

/-! ## A311319.P5830995763105091575

`A028310(xor(A172538(n+1), A311320(n)))`
-/

namespace A311319.P5830995763105091575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A172538 (n + 1)) (A311320 n)).toNat

end

end A311319.P5830995763105091575

/-! ## A311319.P12758636784581499218

`A311320(A062399(n))`
-/

namespace A311319.P12758636784581499218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311320 (A062399 n).toNat

end

end A311319.P12758636784581499218

/-!
# A311320: Coordination sequence Gal.6.403.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311320, there is no canonical definition to state claims against.
-/

/-! ## A311320.P8992380251911823971

`A311319(n)+A185246(A238863(n))`
-/

namespace A311320.P8992380251911823971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311319 n + A185246 (A238863 n).toNat

end

end A311320.P8992380251911823971

/-! ## A311320.P4341224170474156488

`or(A083895(A018105(n)), A311319(n))`
-/

namespace A311320.P4341224170474156488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083895 (A018105 n).toNat) (A311319 n)

end

end A311320.P4341224170474156488

/-! ## A311320.P5484154244128812976

`A311319(n)+A083895(A018105(n)+1)`
-/

namespace A311320.P5484154244128812976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311319 n + A083895 (A018105 n + 1).toNat

end

end A311320.P5484154244128812976

/-! ## A311320.P14652646523161513857

`A311319(n)+A000120(A172538(n+1))`
-/

namespace A311320.P14652646523161513857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311319 n + A000120 (A172538 (n + 1)).toNat

end

end A311320.P14652646523161513857

/-!
# A311321: Coordination sequence Gal.5.161.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311321, there is no canonical definition to state claims against.
-/

/-! ## A311321.P3908985663428336134

`A311322(n)+A008683(A351801(n+1))`
-/

namespace A311321.P3908985663428336134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311322 n + A008683 (A351801 (n + 1)).toNat

end

end A311321.P3908985663428336134

/-! ## A311321.P2138324738018923929

`A311322(A062399(n))`
-/

namespace A311321.P2138324738018923929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311322 (A062399 n).toNat

end

end A311321.P2138324738018923929

/-! ## A311321.P3462711234500761330

`A311322(A120126(n))`
-/

namespace A311321.P3462711234500761330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311322 (A120126 n).toNat

end

end A311321.P3462711234500761330

/-! ## A311321.P13761672612344800570

`A311322(A351870(n))`
-/

namespace A311321.P13761672612344800570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311322 (A351870 n).toNat

end

end A311321.P13761672612344800570

/-! ## A311321.P14848258887549438664

`A311322(n)%A020582(n+1)`
-/

namespace A311321.P14848258887549438664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311322 n) (A020582 (n + 1))

end

end A311321.P14848258887549438664

/-!
# A311322: Coordination sequence Gal.3.29.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311322, there is no canonical definition to state claims against.
-/

/-! ## A311322.P11045257067050361602

`(A311381(n)+A311232(n))/2`
-/

namespace A311322.P11045257067050361602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311381 n + A311232 n : ℚ) / 2

end

end A311322.P11045257067050361602

/-! ## A311322.P3984324773407376618

`A004525(A311381(n)+A311232(n))`
-/

namespace A311322.P3984324773407376618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311381 n + A311232 n).toNat

end

end A311322.P3984324773407376618

/-! ## A311322.P12983764298967169352

`A004526(A311381(n)+A311232(n))`
-/

namespace A311322.P12983764298967169352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311381 n + A311232 n).toNat

end

end A311322.P12983764298967169352

/-! ## A311322.P13881315110971058774

`A252461(A311381(n)+A311232(n))`
-/

namespace A311322.P13881315110971058774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252461 (A311381 n + A311232 n).toNat

end

end A311322.P13881315110971058774

/-! ## A311322.P7250159304413108483

`A008619(A311232(n)+A311381(n)-1)`
-/

namespace A311322.P7250159304413108483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311232 n + (A311381 n - 1)).toNat

end

end A311322.P7250159304413108483

/-! ## A311322.P12202651385485004564

`A008619(A311232(n)-(1-A311381(n)))`
-/

namespace A311322.P12202651385485004564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311232 n - (1 - A311381 n)).toNat

end

end A311322.P12202651385485004564

/-!
# A311323: Coordination sequence Gal.6.181.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311323, there is no canonical definition to state claims against.
-/

/-! ## A311323.P12707471296600616852

`A311324(n)-A162781(A077168(n))`
-/

namespace A311323.P12707471296600616852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311324 n - A162781 (A077168 n).toNat

end

end A311323.P12707471296600616852

/-! ## A311323.P7312322440435659820

`A311324(n)-A343380(A263484(n+1))`
-/

namespace A311323.P7312322440435659820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311324 n - A343380 (A263484 (n + 1)).toNat

end

end A311323.P7312322440435659820

/-! ## A311323.P842363755387874660

`record[A311324(A163351(n))]`
-/

namespace A311323.P842363755387874660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311324 (A163351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311323.P842363755387874660

/-! ## A311323.P12855615021982019351

`∏{e}[A000244(n), A311324(#)]`
-/

namespace A311323.P12855615021982019351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311324 (Nat.factorization (f1 n).natAbs p)

end

end A311323.P12855615021982019351

/-! ## A311323.P207459175110153907

`A311324(A077168(n+1)-2)`
-/

namespace A311323.P207459175110153907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311324 (A077168 (n + 1) - 2).toNat

end

end A311323.P207459175110153907

/-!
# A311324: Coordination sequence Gal.6.182.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311324, there is no canonical definition to state claims against.
-/

/-! ## A311324.P11422433844717954091

`A311323(n)+A162781(A077168(n))`
-/

namespace A311324.P11422433844717954091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311323 n + A162781 (A077168 n).toNat

end

end A311324.P11422433844717954091

/-! ## A311324.P12545132360178060167

`A343380(A263484(n+1))+A311323(n)`
-/

namespace A311324.P12545132360178060167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A263484 (n + 1)).toNat + A311323 n

end

end A311324.P12545132360178060167

/-! ## A311324.P17598366969915799782

`or(A057427(A330398(n+1)), A311323(n))`
-/

namespace A311324.P17598366969915799782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 (A330398 (n + 1)).toNat) (A311323 n)

end

end A311324.P17598366969915799782

/-!
# A311325: Coordination sequence Gal.5.157.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311325, there is no canonical definition to state claims against.
-/

/-! ## A311325.P15122659408955115033

`A247973(A311975(n)+n)`
-/

namespace A311325.P15122659408955115033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A311975 n + (n : ℤ)).toNat

end

end A311325.P15122659408955115033

/-! ## A311325.P1283078564801857317

`∑[A360679(A013929(3*n+1))]`
-/

namespace A311325.P1283078564801857317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (A013929 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311325.P1283078564801857317

/-! ## A311325.P2718622212440141755

`record[A311326(n)-A324095(n+1)]`
-/

namespace A311325.P2718622212440141755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311326 n - A324095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311325.P2718622212440141755

/-! ## A311325.P2171042871049756606

`A311326(A062399(n))-A324095(n+1)`
-/

namespace A311325.P2171042871049756606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311326 (A062399 n).toNat - A324095 (n + 1)

end

end A311325.P2171042871049756606

/-! ## A311325.P7268063367455693906

`A311326(A062399(n))-A340860(n+1)`
-/

namespace A311325.P7268063367455693906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311326 (A062399 n).toNat - A340860 (n + 1)

end

end A311325.P7268063367455693906

/-!
# A311326: Coordination sequence Gal.5.147.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311326, there is no canonical definition to state claims against.
-/

/-! ## A311326.P2506500054076126543

`A247973(A311975(n)+A127287(n))`
-/

namespace A311326.P2506500054076126543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A311975 n + A127287 n).toNat

end

end A311326.P2506500054076126543

/-! ## A311326.P16421129414121062533

`A311325(n)+A178798(A039841(n+1))`
-/

namespace A311326.P16421129414121062533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311325 n + A178798 (A039841 (n + 1)).toNat

end

end A311326.P16421129414121062533

/-! ## A311326.P14742864067533530840

`A311325(n)+A102683(A246861(n))`
-/

namespace A311326.P14742864067533530840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311325 n + A102683 (A246861 n).toNat

end

end A311326.P14742864067533530840

/-! ## A311326.P9032863444772516612

`A311483(n)-A160380(A351870(n))`
-/

namespace A311326.P9032863444772516612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311483 n - A160380 (A351870 n).toNat

end

end A311326.P9032863444772516612

/-! ## A311326.P10567937177012596600

`A000788(2*(n+1))-A106177(A062870(n))`
-/

namespace A311326.P10567937177012596600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (2 * (n + 1)) - A106177 (A062870 n).toNat

end

end A311326.P10567937177012596600

/-!
# A311327: Coordination sequence Gal.6.272.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311327, there is no canonical definition to state claims against.
-/

/-! ## A311327.P9689778569666812223

`(A311382(n)+A311234(n))/2`
-/

namespace A311327.P9689778569666812223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311382 n + A311234 n : ℚ) / 2

end

end A311327.P9689778569666812223

/-! ## A311327.P11202985094568724107

`A065033(A311382(n)+A311234(n))`
-/

namespace A311327.P11202985094568724107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311382 n + A311234 n).toNat

end

end A311327.P11202985094568724107

/-! ## A311327.P6186770341295831616

`A003602(A311234(n)+A311382(n)-1)`
-/

namespace A311327.P6186770341295831616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A311234 n + (A311382 n - 1)).toNat

end

end A311327.P6186770341295831616

/-! ## A311327.P7596351852238786320

`A003602(A311234(n)-(1-A311382(n)))`
-/

namespace A311327.P7596351852238786320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A311234 n - (1 - A311382 n)).toNat

end

end A311327.P7596351852238786320

/-! ## A311327.P8960185996297738697

`A311328(n)-A185238(A045683(n))`
-/

namespace A311327.P8960185996297738697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311328 n - A185238 (A045683 n).toNat

end

end A311327.P8960185996297738697

/-!
# A311328: Coordination sequence Gal.6.273.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311328, there is no canonical definition to state claims against.
-/

/-! ## A311328.P606474764298107162

`A311327(n)+A185238(A045683(n))`
-/

namespace A311328.P606474764298107162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311327 n + A185238 (A045683 n).toNat

end

end A311328.P606474764298107162

/-! ## A311328.P2142993152169918143

`A311327(n)+A185284(A118103(n))`
-/

namespace A311328.P2142993152169918143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311327 n + A185284 (A118103 n).toNat

end

end A311328.P2142993152169918143

/-! ## A311328.P16481697343899099630

`A311327(n)+A070109(A287022(n))`
-/

namespace A311328.P16481697343899099630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311327 n + A070109 (A287022 n).toNat

end

end A311328.P16481697343899099630

/-! ## A311328.P9866893080665027682

`A311327(n)+A185284(A008578(n+1))`
-/

namespace A311328.P9866893080665027682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311327 n + A185284 (A008578 (n + 1)).toNat

end

end A311328.P9866893080665027682

/-! ## A311328.P2309205166956835065

`A311327(n)+A133776(A076303(3*n+5))`
-/

namespace A311328.P2309205166956835065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311327 n + A133776 (A076303 (3 * n + 5)).toNat

end

end A311328.P2309205166956835065

/-!
# A311329: Coordination sequence Gal.6.165.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311329, there is no canonical definition to state claims against.
-/

/-! ## A311329.P8531106598643079224

`A311330(n)-A025469(A078006(n))`
-/

namespace A311329.P8531106598643079224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311330 n - A025469 (A078006 n).toNat

end

end A311329.P8531106598643079224

/-! ## A311329.P17643225356273086935

`A311330(n)-A162781(A077168(n))`
-/

namespace A311329.P17643225356273086935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311330 n - A162781 (A077168 n).toNat

end

end A311329.P17643225356273086935

/-! ## A311329.P4463734526360703842

`record[A311330(A163351(n))]`
-/

namespace A311329.P4463734526360703842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311330 (A163351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311329.P4463734526360703842

/-! ## A311329.P7280747795425975163

`filter[A311330(n), A242718(#)]`
-/

namespace A311329.P7280747795425975163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A311329.P7280747795425975163

/-! ## A311329.P16551079934876880278

`A311330(n)^A269129(n)!`
-/

namespace A311329.P16551079934876880278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311330 n ^ Nat.factorial (A269129 n).toNat

end

end A311329.P16551079934876880278

/-!
# A311330: Coordination sequence Gal.6.166.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311330, there is no canonical definition to state claims against.
-/

/-! ## A311330.P15758002244533764264

`A311329(n)+A025469(A078006(n))`
-/

namespace A311330.P15758002244533764264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311329 n + A025469 (A078006 n).toNat

end

end A311330.P15758002244533764264

/-! ## A311330.P6336420542514515450

`A311329(n)+A185238(A174708(n+4))`
-/

namespace A311330.P6336420542514515450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311329 n + A185238 (A174708 (n + 4)).toNat

end

end A311330.P6336420542514515450

/-!
# A311331: Coordination sequence Gal.6.119.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311331, the canonical program `A311331.P4887198018422537998` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311331 has offset 0).

The definition of A311331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311331.P11920107184529865500

`A311541(n)-A004525(A311635(n)-A311541(n))`
-/

namespace A311331.P11920107184529865500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311541 n - A004525 (A311635 n - A311541 n).toNat

end

end A311331.P11920107184529865500

namespace A311331

/-- `A311541(n)-A004525(A311635(n)-A311541(n))` -/
def P11920107184529865500.Spec : Prop :=
  ∀ n, P11920107184529865500.a n = A311331 n

end A311331

/-! ## A311331.P4887198018422537998

`abs(A008592(n)-A315759(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A311331

/-- `abs(A008592(n)-A315759(n))` -/
def P4887198018422537998.Spec : Prop :=
  ∀ n, P4887198018422537998.a n = A311331 n

theorem P4887198018422537998.correct : P4887198018422537998.Spec := by
  intro n
  simp only [A311331]

end A311331

/-! ## A311331.P6289531901907431778

`2*A008706(n)-A315759(n)`
-/

namespace A311331.P6289531901907431778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315759 n

end

end A311331.P6289531901907431778

namespace A311331

/-- `2*A008706(n)-A315759(n)` -/
def P6289531901907431778.Spec : Prop :=
  ∀ n, P6289531901907431778.a n = A311331 n

end A311331

/-! ## A311331.P6144244549481420170

`A008458(n)+A008574(n)-A315759(n)`
-/

namespace A311331.P6144244549481420170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315759 n)

end

end A311331.P6144244549481420170

namespace A311331

/-- `A008458(n)+A008574(n)-A315759(n)` -/
def P6144244549481420170.Spec : Prop :=
  ∀ n, P6144244549481420170.a n = A311331 n

end A311331

/-! ## A311331.P2381197782962153436

`∑{d}[A008592(n)-A315759(n), A000010(#)]`
-/

namespace A311331.P2381197782962153436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A311331.P2381197782962153436

namespace A311331

/-- `∑{d}[A008592(n)-A315759(n), A000010(#)]` -/
def P2381197782962153436.Spec : Prop :=
  ∀ n, P2381197782962153436.a n = A311331 n

end A311331

/-! ## A311331.P7881472574641829220

`A315759(n)-A005843(A315759(n)-A008706(n))`
-/

namespace A311331.P7881472574641829220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315759 n - A005843 (A315759 n - A008706 n).toNat

end

end A311331.P7881472574641829220

namespace A311331

/-- `A315759(n)-A005843(A315759(n)-A008706(n))` -/
def P7881472574641829220.Spec : Prop :=
  ∀ n, P7881472574641829220.a n = A311331 n

end A311331

/-! ## A311331.P15668758359151213427

`round(A008576(A314741(n))/3)`
-/

namespace A311331.P15668758359151213427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008576 (A314741 n).toNat : ℚ) / 3)

end

end A311331.P15668758359151213427

namespace A311331

/-- `round(A008576(A314741(n))/3)` -/
def P15668758359151213427.Spec : Prop :=
  ∀ n, P15668758359151213427.a n = A311331 n

end A311331

/-! ## A311331.P4375145795642940377

`A005843(A008706(n))-A315759(n)`
-/

namespace A311331.P4375145795642940377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315759 n

end

end A311331.P4375145795642940377

namespace A311331

/-- `A005843(A008706(n))-A315759(n)` -/
def P4375145795642940377.Spec : Prop :=
  ∀ n, P4375145795642940377.a n = A311331 n

end A311331

/-! ## A311331.P12462710150705699055

`A004396(A311385(n)+2*n)`
-/

namespace A311331.P12462710150705699055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311385 n + (2 * n : ℤ)).toNat

end

end A311331.P12462710150705699055

namespace A311331

/-- `A004396(A311385(n)+2*n)` -/
def P12462710150705699055.Spec : Prop :=
  ∀ n, P12462710150705699055.a n = A311331 n

end A311331

/-! ## A311331.P12122818068115860433

`A274616(A311385(n)+2*n)`
-/

namespace A311331.P12122818068115860433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A311385 n + (2 * n : ℤ)).toNat

end

end A311331.P12122818068115860433

namespace A311331

/-- `A274616(A311385(n)+2*n)` -/
def P12122818068115860433.Spec : Prop :=
  ∀ n, P12122818068115860433.a n = A311331 n

end A311331

/-! ## A311331.P7666511256150515779

`A004396(A311385(n)+n+n)`
-/

namespace A311331.P7666511256150515779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311385 n + (n : ℤ) + (n : ℤ)).toNat

end

end A311331.P7666511256150515779

namespace A311331

/-- `A004396(A311385(n)+n+n)` -/
def P7666511256150515779.Spec : Prop :=
  ∀ n, P7666511256150515779.a n = A311331 n

end A311331

/-! ## A311331.P9900887398537765043

`A274616(A311385(n)+n+n)`
-/

namespace A311331.P9900887398537765043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A311385 n + (n : ℤ) + (n : ℤ)).toNat

end

end A311331.P9900887398537765043

namespace A311331

/-- `A274616(A311385(n)+n+n)` -/
def P9900887398537765043.Spec : Prop :=
  ∀ n, P9900887398537765043.a n = A311331 n

end A311331

/-! ## A311331.P5319603812692612195

`A004396(2*A004396(A314741(n)))`
-/

namespace A311331.P5319603812692612195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A004396 (A314741 n).toNat).toNat

end

end A311331.P5319603812692612195

namespace A311331

/-- `A004396(2*A004396(A314741(n)))` -/
def P5319603812692612195.Spec : Prop :=
  ∀ n, P5319603812692612195.a n = A311331 n

end A311331

/-!
# A311332: Coordination sequence Gal.6.120.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311332, the canonical program `A311332.P5397505913384543494` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311332 has offset 0).

The definition of A311332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311332.P10203427103165602395

`2*A311312(n)-A311257(n)`
-/

namespace A311332.P10203427103165602395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311312 n - A311257 n

end

end A311332.P10203427103165602395

namespace A311332

/-- `2*A311312(n)-A311257(n)` -/
def P10203427103165602395.Spec : Prop :=
  ∀ n, P10203427103165602395.a n = A311332 n

end A311332

/-! ## A311332.P5397505913384543494

`A314688(n)-A046978(A004396(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A311332

/-- `A314688(n)-A046978(A004396(n))` -/
def P5397505913384543494.Spec : Prop :=
  ∀ n, P5397505913384543494.a n = A311332 n

theorem P5397505913384543494.correct : P5397505913384543494.Spec := by
  intro n
  simp only [A311332]

end A311332

/-! ## A311332.P1295751249392548131

`A004525(A004396(n))+A311549(n)-A004525(n)`
-/

namespace A311332.P1295751249392548131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A311549 n - A004525 n)

end

end A311332.P1295751249392548131

namespace A311332

/-- `A004525(A004396(n))+A311549(n)-A004525(n)` -/
def P1295751249392548131.Spec : Prop :=
  ∀ n, P1295751249392548131.a n = A311332 n

end A311332

/-! ## A311332.P16311862074975225935

`A312152(n)-A002264(A030118(n))`
-/

namespace A311332.P16311862074975225935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312152 n - A002264 (A030118 n).toNat

end

end A311332.P16311862074975225935

namespace A311332

/-- `A312152(n)-A002264(A030118(n))` -/
def P16311862074975225935.Spec : Prop :=
  ∀ n, P16311862074975225935.a n = A311332 n

end A311332

/-! ## A311332.P8081917488385173106

`A314742(n)-A004525(n)`
-/

namespace A311332.P8081917488385173106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314742 n - A004525 n

end

end A311332.P8081917488385173106

namespace A311332

/-- `A314742(n)-A004525(n)` -/
def P8081917488385173106.Spec : Prop :=
  ∀ n, P8081917488385173106.a n = A311332 n

end A311332

/-! ## A311332.P13343208287808883544

`A314742(n)-Δ[A054925(n)]`
-/

namespace A311332.P13343208287808883544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314742 n - (f1 (n + 1) - f1 n)

end

end A311332.P13343208287808883544

namespace A311332

/-- `A314742(n)-Δ[A054925(n)]` -/
def P13343208287808883544.Spec : Prop :=
  ∀ n, P13343208287808883544.a n = A311332 n

end A311332

/-! ## A311332.P4628446922994397236

`A313129(n)-∑[A131735(n)]`
-/

namespace A311332.P4628446922994397236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313129 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311332.P4628446922994397236

namespace A311332

/-- `A313129(n)-∑[A131735(n)]` -/
def P4628446922994397236.Spec : Prop :=
  ∀ n, P4628446922994397236.a n = A311332 n

end A311332

/-! ## A311332.P14860164568126906566

`A005843(A311312(n))-A311257(n)`
-/

namespace A311332.P14860164568126906566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311312 n).toNat - A311257 n

end

end A311332.P14860164568126906566

namespace A311332

/-- `A005843(A311312(n))-A311257(n)` -/
def P14860164568126906566.Spec : Prop :=
  ∀ n, P14860164568126906566.a n = A311332 n

end A311332

/-! ## A311332.P7139331024432128873

`abs(A008592(n)-A315758(n))`
-/

namespace A311332.P7139331024432128873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315758 n|

end

end A311332.P7139331024432128873

namespace A311332

/-- `abs(A008592(n)-A315758(n))` -/
def P7139331024432128873.Spec : Prop :=
  ∀ n, P7139331024432128873.a n = A311332 n

end A311332

/-! ## A311332.P15289714076556764255

`2*A008706(n)-A315758(n)`
-/

namespace A311332.P15289714076556764255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315758 n

end

end A311332.P15289714076556764255

namespace A311332

/-- `2*A008706(n)-A315758(n)` -/
def P15289714076556764255.Spec : Prop :=
  ∀ n, P15289714076556764255.a n = A311332 n

end A311332

/-! ## A311332.P12377492281538802043

`A008458(n)+A008574(n)-A315758(n)`
-/

namespace A311332.P12377492281538802043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315758 n)

end

end A311332.P12377492281538802043

namespace A311332

/-- `A008458(n)+A008574(n)-A315758(n)` -/
def P12377492281538802043.Spec : Prop :=
  ∀ n, P12377492281538802043.a n = A311332 n

end A311332

/-! ## A311332.P16209711014689913898

`A315758(n)-A005843(A315758(n)-A008706(n))`
-/

namespace A311332.P16209711014689913898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315758 n - A005843 (A315758 n - A008706 n).toNat

end

end A311332.P16209711014689913898

namespace A311332

/-- `A315758(n)-A005843(A315758(n)-A008706(n))` -/
def P16209711014689913898.Spec : Prop :=
  ∀ n, P16209711014689913898.a n = A311332 n

end A311332

/-! ## A311332.P13324464557274242545

`A008706(A008486(n))%(A315758(n)+A008706(n))`
-/

namespace A311332.P13324464557274242545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A008486 n).toNat) (A315758 n + A008706 n)

end

end A311332.P13324464557274242545

namespace A311332

/-- `A008706(A008486(n))%(A315758(n)+A008706(n))` -/
def P13324464557274242545.Spec : Prop :=
  ∀ n, P13324464557274242545.a n = A311332 n

end A311332

/-! ## A311332.P14689613813976730438

`A005843(A008706(n))-A315758(n)`
-/

namespace A311332.P14689613813976730438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315758 n

end

end A311332.P14689613813976730438

namespace A311332

/-- `A005843(A008706(n))-A315758(n)` -/
def P14689613813976730438.Spec : Prop :=
  ∀ n, P14689613813976730438.a n = A311332 n

end A311332

/-!
# A311333: Coordination sequence Gal.6.22.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311333, there is no canonical definition to state claims against.
-/

/-! ## A311333.P5938582431281534538

`∑[A294901(A000217(n)+3^n)+1]`
-/

namespace A311333.P5938582431281534538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (A000217 n + (3 ^ n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311333.P5938582431281534538

/-! ## A311333.P5172999397985894010

`A302242(A325617(n))+A008574(n)`
-/

namespace A311333.P5172999397985894010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A325617 n).toNat + A008574 n

end

end A311333.P5172999397985894010

/-! ## A311333.P13951626881492597059

`A311289(n)+A006667(A187067(n)!)`
-/

namespace A311333.P13951626881492597059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + A006667 (Nat.factorial (A187067 n).toNat)

end

end A311333.P13951626881492597059

/-! ## A311333.P17759418003139195597

`A311331(n)+A051516(A163696(n+1))`
-/

namespace A311333.P17759418003139195597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311331 n + A051516 (A163696 (n + 1)).toNat

end

end A311333.P17759418003139195597

/-!
# A311334: Coordination sequence Gal.5.105.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311334, the canonical program `A311334.P17172168312493708932` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311334 has offset 0).

The definition of A311334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311334.P15725501047495494743

`2*A311898(n)-A312451(n)`
-/

namespace A311334.P15725501047495494743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311898 n - A312451 n

end

end A311334.P15725501047495494743

namespace A311334

/-- `2*A311898(n)-A312451(n)` -/
def P15725501047495494743.Spec : Prop :=
  ∀ n, P15725501047495494743.a n = A311334 n

end A311334

/-! ## A311334.P8460206744686309025

`A004277(A311898(n))-A312451(n)`
-/

namespace A311334.P8460206744686309025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311898 n).toNat - A312451 n

end

end A311334.P8460206744686309025

namespace A311334

/-- `A004277(A311898(n))-A312451(n)` -/
def P8460206744686309025.Spec : Prop :=
  ∀ n, P8460206744686309025.a n = A311334 n

end A311334

/-! ## A311334.P17172168312493708932

`2*A312125(n)-A312669(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A311334

/-- `2*A312125(n)-A312669(n)` -/
def P17172168312493708932.Spec : Prop :=
  ∀ n, P17172168312493708932.a n = A311334 n

theorem P17172168312493708932.correct : P17172168312493708932.Spec := by
  intro n
  simp only [A311334]

end A311334

/-! ## A311334.P10891640729041665583

`A004277(A312125(n))-A312669(n)`
-/

namespace A311334.P10891640729041665583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312125 n).toNat - A312669 n

end

end A311334.P10891640729041665583

namespace A311334

/-- `A004277(A312125(n))-A312669(n)` -/
def P10891640729041665583.Spec : Prop :=
  ∀ n, P10891640729041665583.a n = A311334 n

end A311334

/-! ## A311334.P5055512621437846142

`A092524(A311335(n))`
-/

namespace A311334.P5055512621437846142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A311335 n).toNat

end

end A311334.P5055512621437846142

namespace A311334

/-- `A092524(A311335(n))` -/
def P5055512621437846142.Spec : Prop :=
  ∀ n, P5055512621437846142.a n = A311334 n

end A311334

/-!
# A311335: Coordination sequence Gal.5.101.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311335, there is no canonical definition to state claims against.
-/

/-! ## A311335.P3116957199816390850

`2*A311899(n)-A312452(n)`
-/

namespace A311335.P3116957199816390850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311899 n - A312452 n

end

end A311335.P3116957199816390850

/-! ## A311335.P2407302711602778650

`A004277(A311899(n))-A312452(n)`
-/

namespace A311335.P2407302711602778650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311899 n).toNat - A312452 n

end

end A311335.P2407302711602778650

/-! ## A311335.P2617155723093307051

`xor(A096158(A352093(n)), A311228(n))`
-/

namespace A311335.P2617155723093307051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A096158 (A352093 n).toNat) (A311228 n)

end

end A311335.P2617155723093307051

/-! ## A311335.P1295857316462132132

`A311571(n)-A241541(A043318(n+1)²)`
-/

namespace A311335.P1295857316462132132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311571 n - A241541 (A043318 (n + 1) ^ 2).toNat

end

end A311335.P1295857316462132132

/-!
# A311336: Coordination sequence Gal.5.233.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311336, there is no canonical definition to state claims against.
-/

/-! ## A311336.P3802442898136321470

`A311742(n)-A001822(A191825(n))`
-/

namespace A311336.P3802442898136321470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311742 n - A001822 (A191825 n).toNat

end

end A311336.P3802442898136321470

/-! ## A311336.P11076466815653157917

`A312529(n)-A248327(A098790(n))`
-/

namespace A311336.P11076466815653157917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312529 n - A248327 (A098790 n).toNat

end

end A311336.P11076466815653157917

/-! ## A311336.P14144075781019325403

`A311253(n)+A101688(A250032(n+1))`
-/

namespace A311336.P14144075781019325403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311253 n + A101688 (A250032 (n + 1)).toNat

end

end A311336.P14144075781019325403

/-! ## A311336.P15565852447568387572

`A311347(n)-A037806(A209092(n+1))`
-/

namespace A311336.P15565852447568387572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n - A037806 (A209092 (n + 1)).toNat

end

end A311336.P15565852447568387572

/-! ## A311336.P7392440947299519877

`A311586(A062399(n))-A221314(n+1)`
-/

namespace A311336.P7392440947299519877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 (A062399 n).toNat - A221314 (n + 1)

end

end A311336.P7392440947299519877

/-!
# A311337: Coordination sequence Gal.5.172.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311337, there is no canonical definition to state claims against.
-/

/-! ## A311337.P3140749991517000106

`or(4*n, A258278(A033488(n)))`
-/

namespace A311337.P3140749991517000106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * n : ℤ) (A258278 (A033488 n).toNat)

end

end A311337.P3140749991517000106

/-! ## A311337.P410262731246408699

`4*n+1-A295303(A006470(n+1))`
-/

namespace A311337.P410262731246408699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) - A295303 (A006470 (n + 1)).toNat

end

end A311337.P410262731246408699

/-! ## A311337.P17016848639492286391

`or(A008574(n), A175099(A008638(n)))`
-/

namespace A311337.P17016848639492286391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A175099 (A008638 n).toNat)

end

end A311337.P17016848639492286391

/-! ## A311337.P1398736050221919091

`or(A008574(n), A341620(A101785(n)))`
-/

namespace A311337.P1398736050221919091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A341620 (A101785 n).toNat)

end

end A311337.P1398736050221919091

/-! ## A311337.P15291898593054275729

`A322392(A119253(n+3))+A008574(n)`
-/

namespace A311337.P15291898593054275729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322392 (A119253 (n + 3)).toNat + A008574 n

end

end A311337.P15291898593054275729

/-!
# A311338: Coordination sequence Gal.5.173.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311338, there is no canonical definition to state claims against.
-/

/-! ## A311338.P301695416794182279

`record[gcd(A126696(n), A311337(n))]`
-/

namespace A311338.P301695416794182279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126696 n) (A311337 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311338.P301695416794182279

/-! ## A311338.P16821841315405551008

`A352745(A311223(n+1)-2)`
-/

namespace A311338.P16821841315405551008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (A311223 (n + 1) - 2).toNat

end

end A311338.P16821841315405551008

/-! ## A311338.P12120766261939015279

`A136166(A282308(n))+A008574(n)`
-/

namespace A311338.P12120766261939015279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136166 (A282308 n).toNat + A008574 n

end

end A311338.P12120766261939015279

/-! ## A311338.P7071535333121982444

`A311337(n)+A010894(A311339(n))`
-/

namespace A311338.P7071535333121982444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311337 n + A010894 ((A311339 n).toNat + 21)

end

end A311338.P7071535333121982444

/-! ## A311338.P12063107292820932224

`A311337(n)+A010894(A311340(n))`
-/

namespace A311338.P12063107292820932224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311337 n + A010894 ((A311340 n).toNat + 21)

end

end A311338.P12063107292820932224

/-!
# A311339: Coordination sequence Gal.6.240.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311339, there is no canonical definition to state claims against.
-/

/-! ## A311339.P11040616500582670112

`2*A311494(n)-A311579(n)`
-/

namespace A311339.P11040616500582670112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311494 n - A311579 n

end

end A311339.P11040616500582670112

/-! ## A311339.P13285549589486278552

`2*A311246(n)-A311154(n)`
-/

namespace A311339.P13285549589486278552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311246 n - A311154 n

end

end A311339.P13285549589486278552

/-! ## A311339.P7477514380737505746

`A311340(n)+A311390(n)-A311391(n)`
-/

namespace A311339.P7477514380737505746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311340 n + (A311390 n - A311391 n)

end

end A311339.P7477514380737505746

/-! ## A311339.P9404149028037884074

`A004277(A311246(n))-A311154(n)`
-/

namespace A311339.P9404149028037884074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311246 n).toNat - A311154 n

end

end A311339.P9404149028037884074

/-! ## A311339.P10408567072139509602

`A005843(A311494(n))-A311579(n)`
-/

namespace A311339.P10408567072139509602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311494 n).toNat - A311579 n

end

end A311339.P10408567072139509602

/-!
# A311340: Coordination sequence Gal.6.235.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311340, there is no canonical definition to state claims against.
-/

/-! ## A311340.P10431657735638216076

`2*A311906(n)-A312456(n)`
-/

namespace A311340.P10431657735638216076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311906 n - A312456 n

end

end A311340.P10431657735638216076

/-! ## A311340.P10568886487739291042

`A311339(n)+A311391(n)-A311390(n)`
-/

namespace A311340.P10568886487739291042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311339 n + (A311391 n - A311390 n)

end

end A311340.P10568886487739291042

/-! ## A311340.P568662843927789124

`A005843(A311906(n))-A312456(n)`
-/

namespace A311340.P568662843927789124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311906 n).toNat - A312456 n

end

end A311340.P568662843927789124

/-! ## A311340.P11042383349685701816

`A235036(lt[A204217(2*n+5), A134134(3*n+4)])`
-/

namespace A311340.P11042383349685701816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134134 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235036 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A311340.P11042383349685701816

/-!
# A311341: Coordination sequence Gal.6.176.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311341, there is no canonical definition to state claims against.
-/

/-! ## A311341.P11777847172459363824

`2*A311908(n)-A312459(n)`
-/

namespace A311341.P11777847172459363824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311908 n - A312459 n

end

end A311341.P11777847172459363824

/-! ## A311341.P8152152049800632259

`2*A311275(n)-A311219(n)`
-/

namespace A311341.P8152152049800632259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311275 n - A311219 n

end

end A311341.P8152152049800632259

/-! ## A311341.P1679897491711047162

`A005843(A311275(n))-A311219(n)`
-/

namespace A311341.P1679897491711047162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311275 n).toNat - A311219 n

end

end A311341.P1679897491711047162

/-! ## A311341.P4651379412624271285

`A004277(A311908(n))-A312459(n)`
-/

namespace A311341.P4651379412624271285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311908 n).toNat - A312459 n

end

end A311341.P4651379412624271285

/-! ## A311341.P5881790762943352492

`A311342(n)-A030566(A129941(n+1))`
-/

namespace A311341.P5881790762943352492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311342 n - A030566 (A129941 (n + 1)).toNat

end

end A311341.P5881790762943352492

/-!
# A311342: Coordination sequence Gal.6.177.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311342, there is no canonical definition to state claims against.
-/

/-! ## A311342.P14192946997892052633

`2*A311497(n)-A311583(n)`
-/

namespace A311342.P14192946997892052633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311497 n - A311583 n

end

end A311342.P14192946997892052633

/-! ## A311342.P7728051860478213276

`and(A293754(A311724(n)), A311580(n))`
-/

namespace A311342.P7728051860478213276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A293754 (A311724 n).toNat) (A311580 n)

end

end A311342.P7728051860478213276

/-!
# A311343: Coordination sequence Gal.4.60.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311343, there is no canonical definition to state claims against.
-/

/-! ## A311343.P5750819629886207117

`A311583(n)-A055668(A173009(n+1))`
-/

namespace A311343.P5750819629886207117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311583 n - A055668 (A173009 (n + 1)).toNat

end

end A311343.P5750819629886207117

/-! ## A311343.P3564436274216914543

`or(A136166(A000213(n)), A311223(n))`
-/

namespace A311343.P3564436274216914543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136166 (A000213 n).toNat) (A311223 n)

end

end A311343.P3564436274216914543

/-! ## A311343.P4956701377591170370

`A010673(A326249(n))+A008574(n)`
-/

namespace A311343.P4956701377591170370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A326249 n).toNat + A008574 n

end

end A311343.P4956701377591170370

/-! ## A311343.P2179835315104332874

`and(A311928(A062399(n)), A312456(n))`
-/

namespace A311343.P2179835315104332874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A311928 (A062399 n).toNat) (A312456 n)

end

end A311343.P2179835315104332874

/-! ## A311343.P9047836911899316683

`A016825(n)-A093693(A074275(n+1))`
-/

namespace A311343.P9047836911899316683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A093693 (A074275 (n + 1)).toNat

end

end A311343.P9047836911899316683

/-!
# A311344: Coordination sequence Gal.5.95.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311344, the canonical program `A311344.P9479283837272976184` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311344 has offset 0).

The definition of A311344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311344.P1889408638375611593

`A311993(n)-Δ[A011862(n)]`
-/

namespace A311344.P1889408638375611593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 n - (f1 (n + 1) - f1 n)

end

end A311344.P1889408638375611593

namespace A311344

/-- `A311993(n)-Δ[A011862(n)]` -/
def P1889408638375611593.Spec : Prop :=
  ∀ n, P1889408638375611593.a n = A311344 n

end A311344

/-! ## A311344.P10100976578750992510

`A004396(A004396(n))+A311993(n)-A004396(n)`
-/

namespace A311344.P10100976578750992510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A311993 n - A004396 n)

end

end A311344.P10100976578750992510

namespace A311344

/-- `A004396(A004396(n))+A311993(n)-A004396(n)` -/
def P10100976578750992510.Spec : Prop :=
  ∀ n, P10100976578750992510.a n = A311344 n

end A311344

/-! ## A311344.P9479283837272976184

`A312908(n)-A004396(n-A004396(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A311344

/-- `A312908(n)-A004396(n-A004396(n))` -/
def P9479283837272976184.Spec : Prop :=
  ∀ n, P9479283837272976184.a n = A311344 n

theorem P9479283837272976184.correct : P9479283837272976184.Spec := by
  intro n
  simp only [A311344]

end A311344

/-! ## A311344.P12140217368578560624

`A312555(n)-Δ[2*A011862(n)]`
-/

namespace A311344.P12140217368578560624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 n - (f1 (n + 1) - f1 n)

end

end A311344.P12140217368578560624

namespace A311344

/-- `A312555(n)-Δ[2*A011862(n)]` -/
def P12140217368578560624.Spec : Prop :=
  ∀ n, P12140217368578560624.a n = A311344 n

end A311344

/-! ## A311344.P2233067484827955652

`A314736(n)-A004396(A004396(n))`
-/

namespace A311344.P2233067484827955652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n - A004396 (A004396 n).toNat

end

end A311344.P2233067484827955652

namespace A311344

/-- `A314736(n)-A004396(A004396(n))` -/
def P2233067484827955652.Spec : Prop :=
  ∀ n, P2233067484827955652.a n = A311344 n

end A311344

/-! ## A311344.P6920397945900971133

`2*A312160(n)-A312683(n)`
-/

namespace A311344.P6920397945900971133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312160 n - A312683 n

end

end A311344.P6920397945900971133

namespace A311344

/-- `2*A312160(n)-A312683(n)` -/
def P6920397945900971133.Spec : Prop :=
  ∀ n, P6920397945900971133.a n = A311344 n

end A311344

/-! ## A311344.P8773438498705536620

`A315068(n)-A004396(2*A004396(n))`
-/

namespace A311344.P8773438498705536620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315068 n - A004396 (2 * A004396 n).toNat

end

end A311344.P8773438498705536620

namespace A311344

/-- `A315068(n)-A004396(2*A004396(n))` -/
def P8773438498705536620.Spec : Prop :=
  ∀ n, P8773438498705536620.a n = A311344 n

end A311344

/-! ## A311344.P10123552757297370166

`A315214(n)-2*A004396(A004396(n))`
-/

namespace A311344.P10123552757297370166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315214 n - 2 * A004396 (A004396 n).toNat

end

end A311344.P10123552757297370166

namespace A311344

/-- `A315214(n)-2*A004396(A004396(n))` -/
def P10123552757297370166.Spec : Prop :=
  ∀ n, P10123552757297370166.a n = A311344 n

end A311344

/-! ## A311344.P8305545439694184479

`2*A314848(n)-A315308(n)`
-/

namespace A311344.P8305545439694184479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314848 n - A315308 n

end

end A311344.P8305545439694184479

namespace A311344

/-- `2*A314848(n)-A315308(n)` -/
def P8305545439694184479.Spec : Prop :=
  ∀ n, P8305545439694184479.a n = A311344 n

end A311344

/-! ## A311344.P1581546977009420285

`A313799(n)-A004396(A004396(n)+n)`
-/

namespace A311344.P1581546977009420285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n - A004396 (A004396 n + (n : ℤ)).toNat

end

end A311344.P1581546977009420285

namespace A311344

/-- `A313799(n)-A004396(A004396(n)+n)` -/
def P1581546977009420285.Spec : Prop :=
  ∀ n, P1581546977009420285.a n = A311344 n

end A311344

/-! ## A311344.P5142370965899431488

`A315343(n)-2*A004396(n)`
-/

namespace A311344.P5142370965899431488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315343 n - 2 * A004396 n

end

end A311344.P5142370965899431488

namespace A311344

/-- `A315343(n)-2*A004396(n)` -/
def P5142370965899431488.Spec : Prop :=
  ∀ n, P5142370965899431488.a n = A311344 n

end A311344

/-! ## A311344.P8671976411934437645

`2*A313746(n)-A008458(n)`
-/

namespace A311344.P8671976411934437645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313746 n - A008458 n

end

end A311344.P8671976411934437645

namespace A311344

/-- `2*A313746(n)-A008458(n)` -/
def P8671976411934437645.Spec : Prop :=
  ∀ n, P8671976411934437645.a n = A311344 n

end A311344

/-! ## A311344.P18008950562300822405

`abs(A008592(n)-A315757(n))`
-/

namespace A311344.P18008950562300822405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315757 n|

end

end A311344.P18008950562300822405

namespace A311344

/-- `abs(A008592(n)-A315757(n))` -/
def P18008950562300822405.Spec : Prop :=
  ∀ n, P18008950562300822405.a n = A311344 n

end A311344

/-! ## A311344.P18071048283095338023

`A008458(n)+A008574(n)-A315757(n)`
-/

namespace A311344.P18071048283095338023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315757 n)

end

end A311344.P18071048283095338023

namespace A311344

/-- `A008458(n)+A008574(n)-A315757(n)` -/
def P18071048283095338023.Spec : Prop :=
  ∀ n, P18071048283095338023.a n = A311344 n

end A311344

/-! ## A311344.P1207241166258980376

`A315308(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A311344.P1207241166258980376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315308 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A311344.P1207241166258980376

namespace A311344

/-- `A315308(2*n)+A008458(n+1)-(12*n+6)` -/
def P1207241166258980376.Spec : Prop :=
  ∀ n, P1207241166258980376.a n = A311344 n

end A311344

/-!
# A311345: Coordination sequence Gal.4.59.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311345, there is no canonical definition to state claims against.
-/

/-! ## A311345.P9543196092546960354

`A096491(A299254(n))`
-/

namespace A311345.P9543196092546960354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A299254 n).toNat

end

end A311345.P9543196092546960354

/-! ## A311345.P5359371859251666201

`A248327(A011782(n))+A008574(n)`
-/

namespace A311345.P5359371859251666201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 (A011782 n).toNat + A008574 n

end

end A311345.P5359371859251666201

/-! ## A311345.P15431530372812078079

`A248327(A131577(n))+A008574(n)`
-/

namespace A311345.P15431530372812078079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 (A131577 n).toNat + A008574 n

end

end A311345.P15431530372812078079

/-! ## A311345.P10331813681517221415

`A248327(A011782(n))+A004277(2*n)`
-/

namespace A311345.P10331813681517221415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 (A011782 n).toNat + A004277 (2 * n)

end

end A311345.P10331813681517221415

/-! ## A311345.P15099682131788316694

`A248327(A332743(n+2))+A008574(n)`
-/

namespace A311345.P15099682131788316694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 (A332743 (n + 2)).toNat + A008574 n

end

end A311345.P15099682131788316694

/-!
# A311346: Coordination sequence Gal.6.160.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311346, there is no canonical definition to state claims against.
-/

/-! ## A311346.P1501584089731216451

`2*A311298(n)-A311227(n)`
-/

namespace A311346.P1501584089731216451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311298 n - A311227 n

end

end A311346.P1501584089731216451

/-! ## A311346.P17135785768845989934

`A004277(A311298(n))-A311227(n)`
-/

namespace A311346.P17135785768845989934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311298 n).toNat - A311227 n

end

end A311346.P17135785768845989934

/-! ## A311346.P8873633634372860280

`A311347(n)+A014054(A000079(n))`
-/

namespace A311346.P8873633634372860280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A014054 (A000079 n).toNat

end

end A311346.P8873633634372860280

/-! ## A311346.P13895350875001813694

`A311347(n)+A185012(A282453(n))`
-/

namespace A311346.P13895350875001813694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A185012 (A282453 n).toNat

end

end A311346.P13895350875001813694

/-! ## A311346.P2750938438138012996

`A092524(A311347(n))`
-/

namespace A311346.P2750938438138012996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A311347 n).toNat

end

end A311346.P2750938438138012996

/-!
# A311347: Coordination sequence Gal.6.161.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311347, there is no canonical definition to state claims against.
-/

/-! ## A311347.P2165007019008437252

`2*A311299(n)-A311228(n)`
-/

namespace A311347.P2165007019008437252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311299 n - A311228 n

end

end A311347.P2165007019008437252

/-! ## A311347.P9995550566005434583

`2*A311505(n)-A311585(n)`
-/

namespace A311347.P9995550566005434583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311505 n - A311585 n

end

end A311347.P9995550566005434583

/-! ## A311347.P8322471938446447557

`A004277(A311299(n))-A311228(n)`
-/

namespace A311347.P8322471938446447557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311299 n).toNat - A311228 n

end

end A311347.P8322471938446447557

/-! ## A311347.P8657815371695559037

`A005843(A311505(n))-A311585(n)`
-/

namespace A311347.P8657815371695559037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311505 n).toNat - A311585 n

end

end A311347.P8657815371695559037

/-! ## A311347.P11560478923472972043

`A311346(n)+A065363(A205295(n+1))`
-/

namespace A311347.P11560478923472972043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311346 n + A065363 (A205295 (n + 1)).toNat

end

end A311347.P11560478923472972043

/-!
# A311348: Coordination sequence Gal.6.241.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311348, there is no canonical definition to state claims against.
-/

/-! ## A311348.P1292784307459681298

`2*A311301(n)-A311229(n)`
-/

namespace A311348.P1292784307459681298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311301 n - A311229 n

end

end A311348.P1292784307459681298

/-! ## A311348.P4499396201704966819

`A005843(A311301(n))-A311229(n)`
-/

namespace A311348.P4499396201704966819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311301 n).toNat - A311229 n

end

end A311348.P4499396201704966819

/-! ## A311348.P1837586021042595507

`A005843(A311301(n))+A001478(A311229(n)+1)+1`
-/

namespace A311348.P1837586021042595507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311301 n).toNat + (A001478 (A311229 n + 1).toNat + 1)

end

end A311348.P1837586021042595507

/-! ## A311348.P2401689034173043901

`∏{e}[3^n, A311349(#)]`
-/

namespace A311348.P2401689034173043901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A311349 (Nat.factorization (f1 n) p)

end

end A311348.P2401689034173043901

/-! ## A311348.P5121227007283032364

`A311349(n)%Δ[A216902(n+2)]`
-/

namespace A311348.P5121227007283032364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216902 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311349 n) (f1 (n + 1) - f1 n)

end

end A311348.P5121227007283032364

/-!
# A311349: Coordination sequence Gal.6.236.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311349, there is no canonical definition to state claims against.
-/

/-! ## A311349.P10440447439764366743

`2*A311508(n)-A311588(n)`
-/

namespace A311349.P10440447439764366743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311508 n - A311588 n

end

end A311349.P10440447439764366743

/-! ## A311349.P3364119098172643673

`2*A311302(n)-A311230(n)`
-/

namespace A311349.P3364119098172643673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311302 n - A311230 n

end

end A311349.P3364119098172643673

/-! ## A311349.P7947643371607743540

`2*A311918(n)-A312466(n)`
-/

namespace A311349.P7947643371607743540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311918 n - A312466 n

end

end A311349.P7947643371607743540

/-! ## A311349.P14815907644215260041

`A005843(A311302(n))-A311230(n)`
-/

namespace A311349.P14815907644215260041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311302 n).toNat - A311230 n

end

end A311349.P14815907644215260041

/-! ## A311349.P16541426005117928210

`A004277(A311918(n))-A312466(n)`
-/

namespace A311349.P16541426005117928210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311918 n).toNat - A312466 n

end

end A311349.P16541426005117928210

/-! ## A311349.P13083461596377050866

`A005843(A311508(n))-A311588(n)`
-/

namespace A311349.P13083461596377050866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311508 n).toNat - A311588 n

end

end A311349.P13083461596377050866

/-!
# A311350: Coordination sequence Gal.5.106.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311350, there is no canonical definition to state claims against.
-/

/-! ## A311350.P1153198729279213789

`2*A311510(n)-A311589(n)`
-/

namespace A311350.P1153198729279213789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311510 n - A311589 n

end

end A311350.P1153198729279213789

/-! ## A311350.P16791826724392909833

`2*A311920(n)-A312461(n)`
-/

namespace A311350.P16791826724392909833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311920 n - A312461 n

end

end A311350.P16791826724392909833

/-! ## A311350.P10836152423878274341

`A005843(A311920(n))-A312461(n)`
-/

namespace A311350.P10836152423878274341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311920 n).toNat - A312461 n

end

end A311350.P10836152423878274341

/-! ## A311350.P10292594955625731801

`A004277(A311510(n))-A311589(n)`
-/

namespace A311350.P10292594955625731801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311510 n).toNat - A311589 n

end

end A311350.P10292594955625731801

/-! ## A311350.P10415126466758356412

`A092524(A311351(n))`
-/

namespace A311350.P10415126466758356412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A311351 n).toNat

end

end A311350.P10415126466758356412

/-!
# A311351: Coordination sequence Gal.5.102.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311351, there is no canonical definition to state claims against.
-/

/-! ## A311351.P13672468127158495392

`A311535(n)-A063725(A145929(n+1))`
-/

namespace A311351.P13672468127158495392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n - A063725 (A145929 (n + 1)).toNat

end

end A311351.P13672468127158495392

/-!
# A311352: Coordination sequence Gal.6.243.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311352, there is no canonical definition to state claims against.
-/

/-! ## A311352.P5167697658318786326

`∏{e}[3^n, A311353(#)]`
-/

namespace A311352.P5167697658318786326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A311353 (Nat.factorization (f1 n) p)

end

end A311352.P5167697658318786326

/-! ## A311352.P1554519632377383025

`A311353(n*A036601(n)!)`
-/

namespace A311352.P1554519632377383025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311353 (n * Nat.factorial (A036601 n).toNat)

end

end A311352.P1554519632377383025

/-! ## A311352.P15310854683119334299

`A311353(n)^A036601(n)!`
-/

namespace A311352.P15310854683119334299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311353 n ^ Nat.factorial (A036601 n).toNat

end

end A311352.P15310854683119334299

/-! ## A311352.P9944096027966880693

`A311353(n)%Δ[A252652(n)]`
-/

namespace A311352.P9944096027966880693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311353 n) (f1 (n + 1) - f1 n)

end

end A311352.P9944096027966880693

/-! ## A311352.P11696053821022267220

`A311353(A036601(n)²²+n)`
-/

namespace A311352.P11696053821022267220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311353 ((A036601 n ^ 2) ^ 2 + (n : ℤ)).toNat

end

end A311352.P11696053821022267220

/-!
# A311353: Coordination sequence Gal.6.238.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311353, there is no canonical definition to state claims against.
-/

/-! ## A311353.P3128438024578387531

`A311352(n)+A249441(A185213(n))`
-/

namespace A311353.P3128438024578387531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311352 n + A249441 (A185213 n).toNat

end

end A311353.P3128438024578387531

/-!
# A311354: Coordination sequence Gal.5.108.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311354, there is no canonical definition to state claims against.
-/

/-! ## A311354.P5907865795854261288

`2*A311928(n)-A312457(n)`
-/

namespace A311354.P5907865795854261288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311928 n - A312457 n

end

end A311354.P5907865795854261288

/-! ## A311354.P7607175396482019644

`2*A311521(n)-A311591(n)`
-/

namespace A311354.P7607175396482019644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311521 n - A311591 n

end

end A311354.P7607175396482019644

/-! ## A311354.P15134985384758868954

`A004277(A311928(n))-A312457(n)`
-/

namespace A311354.P15134985384758868954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311928 n).toNat - A312457 n

end

end A311354.P15134985384758868954

/-! ## A311354.P12038773391543163247

`A004277(A311521(n))-A311591(n)`
-/

namespace A311354.P12038773391543163247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311521 n).toNat - A311591 n

end

end A311354.P12038773391543163247

/-! ## A311354.P15818196047565568240

`A311355(n)-A025466(A227978(n))`
-/

namespace A311354.P15818196047565568240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311355 n - A025466 (A227978 n).toNat

end

end A311354.P15818196047565568240

/-!
# A311355: Coordination sequence Gal.5.104.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311355, there is no canonical definition to state claims against.
-/

/-! ## A311355.P9965328106511282103

`A311354(n)+A000122(A032820(3*n+5))`
-/

namespace A311355.P9965328106511282103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311354 n + A000122 (A032820 (3 * n + 5)).toNat

end

end A311355.P9965328106511282103

/-! ## A311355.P2499139445068518819

`A311356(n)-A063725(A070251(n+1))`
-/

namespace A311355.P2499139445068518819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 n - A063725 (A070251 (n + 1)).toNat

end

end A311355.P2499139445068518819

/-! ## A311355.P8587133921592788131

`or(A185284((5-n)²), A311354(n))`
-/

namespace A311355.P8587133921592788131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 ((5 - (n : ℤ)) ^ 2).toNat) (A311354 n)

end

end A311355.P8587133921592788131

/-! ## A311355.P14151177721632338941

`A311354(n)+A025466(A227978(n))`
-/

namespace A311355.P14151177721632338941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311354 n + A025466 (A227978 n).toNat

end

end A311355.P14151177721632338941

/-! ## A311355.P8215498082550646635

`A311356(n)-A055641(A105476(n))`
-/

namespace A311355.P8215498082550646635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 n - A055641 (A105476 n).toNat

end

end A311355.P8215498082550646635

/-!
# A311356: Coordination sequence Gal.6.219.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311356, the canonical program `A311356.P10753522587295853284` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311356 has offset 0).

The definition of A311356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311356.P10753522587295853284

`2*A311262(n)-A008574(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A311356

/-- `2*A311262(n)-A008574(n)` -/
def P10753522587295853284.Spec : Prop :=
  ∀ n, P10753522587295853284.a n = A311356 n

theorem P10753522587295853284.correct : P10753522587295853284.Spec := by
  intro n
  simp only [A311356]

end A311356

/-! ## A311356.P18295219019995955647

`A004275(A311262(n)-A004273(n))`
-/

namespace A311356.P18295219019995955647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311262 n - A004273 n).toNat

end

end A311356.P18295219019995955647

namespace A311356

/-- `A004275(A311262(n)-A004273(n))` -/
def P18295219019995955647.Spec : Prop :=
  ∀ n, P18295219019995955647.a n = A311356 n

end A311356

/-! ## A311356.P4919352727735187496

`A004273(A311262(n)-n)-A004273(n)`
-/

namespace A311356.P4919352727735187496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A311262 n - (n : ℤ)).toNat - A004273 n

end

end A311356.P4919352727735187496

namespace A311356

/-- `A004273(A311262(n)-n)-A004273(n)` -/
def P4919352727735187496.Spec : Prop :=
  ∀ n, P4919352727735187496.a n = A311356 n

end A311356

/-! ## A311356.P11398130405979639277

`A008574(n)+A005843(A311262(n)-A008574(n))`
-/

namespace A311356.P11398130405979639277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A311262 n - A008574 n).toNat

end

end A311356.P11398130405979639277

namespace A311356

/-- `A008574(n)+A005843(A311262(n)-A008574(n))` -/
def P11398130405979639277.Spec : Prop :=
  ∀ n, P11398130405979639277.a n = A311356 n

end A311356

/-! ## A311356.P11259083283832289538

`A005843(A311262(n))-A008574(n)`
-/

namespace A311356.P11259083283832289538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311262 n).toNat - A008574 n

end

end A311356.P11259083283832289538

namespace A311356

/-- `A005843(A311262(n))-A008574(n)` -/
def P11259083283832289538.Spec : Prop :=
  ∀ n, P11259083283832289538.a n = A311356 n

end A311356

/-! ## A311356.P6963091101753589072

`A004275(A311262(n))-A004275(2*n)`
-/

namespace A311356.P6963091101753589072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311262 n).toNat - A004275 (2 * n)

end

end A311356.P6963091101753589072

namespace A311356

/-- `A004275(A311262(n))-A004275(2*n)` -/
def P6963091101753589072.Spec : Prop :=
  ∀ n, P6963091101753589072.a n = A311356 n

end A311356

/-! ## A311356.P16845064756703766253

`A005843(A311262(n))+n-A008706(n)`
-/

namespace A311356.P16845064756703766253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311262 n).toNat + ((n : ℤ) - A008706 n)

end

end A311356.P16845064756703766253

namespace A311356

/-- `A005843(A311262(n))+n-A008706(n)` -/
def P16845064756703766253.Spec : Prop :=
  ∀ n, P16845064756703766253.a n = A311356 n

end A311356

/-! ## A311356.P10601101558806094293

`A001221(A001749(n+1))*A004525(A311331(n))`
-/

namespace A311356.P10601101558806094293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001749 (n + 1)).toNat * A004525 (A311331 n).toNat

end

end A311356.P10601101558806094293

namespace A311356

/-- `A001221(A001749(n+1))*A004525(A311331(n))` -/
def P10601101558806094293.Spec : Prop :=
  ∀ n, P10601101558806094293.a n = A311356 n

end A311356

/-! ## A311356.P4809959320152471188

`abs(A008592(n)-A315756(n))`
-/

namespace A311356.P4809959320152471188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315756 n|

end

end A311356.P4809959320152471188

namespace A311356

/-- `abs(A008592(n)-A315756(n))` -/
def P4809959320152471188.Spec : Prop :=
  ∀ n, P4809959320152471188.a n = A311356 n

end A311356

/-! ## A311356.P11280158890816787630

`2*A008706(n)-A315756(n)`
-/

namespace A311356.P11280158890816787630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315756 n

end

end A311356.P11280158890816787630

namespace A311356

/-- `2*A008706(n)-A315756(n)` -/
def P11280158890816787630.Spec : Prop :=
  ∀ n, P11280158890816787630.a n = A311356 n

end A311356

/-! ## A311356.P460717688447824087

`A135042(2*n+1)-A315756(n)`
-/

namespace A311356.P460717688447824087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315756 n

end

end A311356.P460717688447824087

namespace A311356

/-- `A135042(2*n+1)-A315756(n)` -/
def P460717688447824087.Spec : Prop :=
  ∀ n, P460717688447824087.a n = A311356 n

end A311356

/-! ## A311356.P11860235086934051803

`A004442(A017281(n)-A315756(n))`
-/

namespace A311356.P11860235086934051803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315756 n).toNat

end

end A311356.P11860235086934051803

namespace A311356

/-- `A004442(A017281(n)-A315756(n))` -/
def P11860235086934051803.Spec : Prop :=
  ∀ n, P11860235086934051803.a n = A311356 n

end A311356

/-! ## A311356.P10782076805918017164

`A008458(n)+A008574(n)-A315756(n)`
-/

namespace A311356.P10782076805918017164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315756 n)

end

end A311356.P10782076805918017164

namespace A311356

/-- `A008458(n)+A008574(n)-A315756(n)` -/
def P10782076805918017164.Spec : Prop :=
  ∀ n, P10782076805918017164.a n = A311356 n

end A311356

/-! ## A311356.P18316123540395123058

`A315756(n)-A005843(A315756(n)-A008706(n))`
-/

namespace A311356.P18316123540395123058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315756 n - A005843 (A315756 n - A008706 n).toNat

end

end A311356.P18316123540395123058

namespace A311356

/-- `A315756(n)-A005843(A315756(n)-A008706(n))` -/
def P18316123540395123058.Spec : Prop :=
  ∀ n, P18316123540395123058.a n = A311356 n

end A311356

/-! ## A311356.P9352977700553459519

`A005843(A008706(n))-A315756(n)`
-/

namespace A311356.P9352977700553459519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315756 n

end

end A311356.P9352977700553459519

namespace A311356

/-- `A005843(A008706(n))-A315756(n)` -/
def P9352977700553459519.Spec : Prop :=
  ∀ n, P9352977700553459519.a n = A311356 n

end A311356

/-!
# A311357: Coordination sequence Gal.6.413.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311357, there is no canonical definition to state claims against.
-/

/-! ## A311357.P8583406272949076291

`A311358(A087051(n))-A079693(n)`
-/

namespace A311357.P8583406272949076291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311358 (A087051 n).toNat - A079693 n

end

end A311357.P8583406272949076291

/-! ## A311357.P10021024544360467365

`A311358(n)-A010894(A310398(n))`
-/

namespace A311357.P10021024544360467365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311358 n - A010894 ((A310398 n).toNat + 21)

end

end A311357.P10021024544360467365

/-! ## A311357.P18101560168011233125

`A311358(n-A257848(A087051(n)))`
-/

namespace A311357.P18101560168011233125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311358 ((n : ℤ) - A257848 (A087051 n).toNat).toNat

end

end A311357.P18101560168011233125

/-! ## A311357.P8127941458331449413

`A301670(n)+A067255(A179554(n+1))`
-/

namespace A311357.P8127941458331449413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n + A067255 (A179554 (n + 1)).toNat

end

end A311357.P8127941458331449413

/-! ## A311357.P14326136010655433465

`A311358(A087051(n+1)-1)`
-/

namespace A311357.P14326136010655433465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311358 (A087051 (n + 1) - 1).toNat

end

end A311357.P14326136010655433465

/-!
# A311358: Coordination sequence Gal.6.393.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311358, there is no canonical definition to state claims against.
-/

/-! ## A311358.P2670752547520215345

`A311357(A087051(n))+A079693(n)`
-/

namespace A311358.P2670752547520215345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311357 (A087051 n).toNat + A079693 n

end

end A311358.P2670752547520215345

/-! ## A311358.P8747764426876900983

`A311357(n)+A024362(A187044(n))`
-/

namespace A311358.P8747764426876900983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311357 n + A024362 (A187044 n).toNat

end

end A311358.P8747764426876900983

/-! ## A311358.P2491357532295234694

`A311357(n)+A010894(A310398(n))`
-/

namespace A311358.P2491357532295234694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311357 n + A010894 ((A310398 n).toNat + 21)

end

end A311358.P2491357532295234694

/-! ## A311358.P14520844917359270623

`A320005(A259239(n))+A311357(n)`
-/

namespace A311358.P14520844917359270623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (A259239 n).toNat + A311357 n

end

end A311358.P14520844917359270623

/-! ## A311358.P10571686619657737752

`A311363(n)-A178798(A141214(n))`
-/

namespace A311358.P10571686619657737752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311363 n - A178798 (A141214 n).toNat

end

end A311358.P10571686619657737752

/-!
# A311359: Coordination sequence Gal.6.304.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311359, there is no canonical definition to state claims against.
-/

/-! ## A311359.P11963804781040041318

`or(A008574(n), A089051(A346895(n)))`
-/

namespace A311359.P11963804781040041318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A089051 (A346895 n).toNat)

end

end A311359.P11963804781040041318

/-! ## A311359.P757381509155265501

`A311276(n)+A226463(A308723(n+1))`
-/

namespace A311359.P757381509155265501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311276 n + A226463 (A308723 (n + 1)).toNat

end

end A311359.P757381509155265501

/-! ## A311359.P13701703029392307351

`comp[or(n, val(n+2, 2))]+3+n-A002828(75*2^n-38)`
-/

namespace A311359.P13701703029392307351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3 + n : ℤ) - A002828 (75 * 2 ^ n - 38)

end

end A311359.P13701703029392307351

/-! ## A311359.P16962295835583216295

`A342515(2*A311340(n))`
-/

namespace A311359.P16962295835583216295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (2 * A311340 n).toNat

end

end A311359.P16962295835583216295

/-! ## A311359.P6849995888998821985

`record[A198455(n+1)-A000009(n)]`
-/

namespace A311359.P6849995888998821985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198455 (n + 1) - A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311359.P6849995888998821985

/-!
# A311360: Coordination sequence Gal.6.299.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311360, there is no canonical definition to state claims against.
-/

/-! ## A311360.P9740788662174040413

`or(A278216(A215928(n)), A311347(n))`
-/

namespace A311360.P9740788662174040413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A278216 (A215928 n).toNat) (A311347 n)

end

end A311360.P9740788662174040413

/-! ## A311360.P11609627019641139679

`A077267(A120262(n))+A008574(n)`
-/

namespace A311360.P11609627019641139679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A120262 n).toNat + A008574 n

end

end A311360.P11609627019641139679

/-! ## A311360.P7095306644916921044

`xor(A311515(n), A353558(A000111(n)))`
-/

namespace A311360.P7095306644916921044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A311515 n) (A353558 (A000111 n).toNat)

end

end A311360.P7095306644916921044

/-!
# A311361: Coordination sequence Gal.6.283.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311361, there is no canonical definition to state claims against.
-/

/-! ## A311361.P12892391018195899457

`A311337(n)+A083339(A083329(n))`
-/

namespace A311361.P12892391018195899457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311337 n + A083339 (A083329 n).toNat

end

end A311361.P12892391018195899457

/-! ## A311361.P17163289590605513643

`A351088(A262809(n+1))+A311340(n)`
-/

namespace A311361.P17163289590605513643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351088 (A262809 (n + 1)).toNat + A311340 n

end

end A311361.P17163289590605513643

/-! ## A311361.P12469619829549144762

`A311363(n)-A112765(A084708(n+1))`
-/

namespace A311361.P12469619829549144762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311363 n - A112765 (A084708 (n + 1)).toNat

end

end A311361.P12469619829549144762

/-! ## A311361.P9864510935248452370

`and(A003512(A018366(n+1)), A311373(n))`
-/

namespace A311361.P9864510935248452370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003512 (A018366 (n + 1)).toNat) (A311373 n)

end

end A311361.P9864510935248452370

/-! ## A311361.P7622508854338148184

`or(A008574(n), A282849(A127982(n+1)))`
-/

namespace A311361.P7622508854338148184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A282849 (A127982 (n + 1)).toNat)

end

end A311361.P7622508854338148184

/-!
# A311362: Coordination sequence Gal.5.238.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311362, there is no canonical definition to state claims against.
-/

/-! ## A311362.P16032305080433702484

`A079169(A107590(n))+A008574(n)`
-/

namespace A311362.P16032305080433702484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079169 (A107590 n).toNat + A008574 n

end

end A311362.P16032305080433702484

/-! ## A311362.P5624825061358256373

`A183063(A020118(n))+A008574(n)`
-/

namespace A311362.P5624825061358256373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A020118 n).toNat + A008574 n

end

end A311362.P5624825061358256373

/-! ## A311362.P15996446257457520133

`or(A008574(n), A045833(A048695(n)))`
-/

namespace A311362.P15996446257457520133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A045833 (A048695 n).toNat)

end

end A311362.P15996446257457520133

/-! ## A311362.P5523148778019440167

`or(A008574(n), A077556(A045872(n)))`
-/

namespace A311362.P5523148778019440167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A077556 (A045872 (n + 10)).toNat)

end

end A311362.P5523148778019440167

/-! ## A311362.P1884983938883980522

`A311363(n)+A000007(A190877(n))`
-/

namespace A311362.P1884983938883980522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311363 n + A000007 (A190877 n).toNat

end

end A311362.P1884983938883980522

/-!
# A311363: Coordination sequence Gal.3.39.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311363, there is no canonical definition to state claims against.
-/

/-! ## A311363.P7683793029893487508

`A311607(n)-A172444(A141690(n))`
-/

namespace A311363.P7683793029893487508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311607 n - A172444 (A141690 n).toNat

end

end A311363.P7683793029893487508

/-! ## A311363.P9435664152742516746

`A311607(n)-A172444(A174045(n+1))`
-/

namespace A311363.P9435664152742516746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311607 n - A172444 (A174045 (n + 1)).toNat

end

end A311363.P9435664152742516746

/-! ## A311363.P1681425455110596506

`A311607(n)-A123262(A238129(3*n+4))`
-/

namespace A311363.P1681425455110596506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311607 n - A123262 (A238129 (3 * n + 4)).toNat

end

end A311363.P1681425455110596506

/-! ## A311363.P8260895346563358209

`or(A311361(A087051(n)), A311362(n))`
-/

namespace A311363.P8260895346563358209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311361 (A087051 n).toNat) (A311362 n)

end

end A311363.P8260895346563358209

/-! ## A311363.P7041011795273245421

`xor(A010894(A311365(n)), A311365(n))`
-/

namespace A311363.P7041011795273245421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010894 ((A311365 n).toNat + 21)) (A311365 n)

end

end A311363.P7041011795273245421

/-!
# A311364: Coordination sequence Gal.5.230.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311364, there is no canonical definition to state claims against.
-/

/-! ## A311364.P8108691860925921796

`A326457(A047842(n))+A301670(n)`
-/

namespace A311364.P8108691860925921796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326457 (A047842 n).toNat + A301670 n

end

end A311364.P8108691860925921796

/-! ## A311364.P17223277130725770363

`A326458(A244112(n))+A301670(n)`
-/

namespace A311364.P17223277130725770363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 (A244112 n).toNat + A301670 n

end

end A311364.P17223277130725770363

/-! ## A311364.P11486897608307486922

`A349294(A311361(n))`
-/

namespace A311364.P11486897608307486922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A311361 n).toNat

end

end A311364.P11486897608307486922

/-! ## A311364.P6167423517066410037

`A311362(n)+A038023(A212386(n))`
-/

namespace A311364.P6167423517066410037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311362 n + A038023 (A212386 n).toNat

end

end A311364.P6167423517066410037

/-! ## A311364.P14498047259019878238

`or(A008574(n), A280913(A086855(n)))`
-/

namespace A311364.P14498047259019878238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A280913 (A086855 n).toNat)

end

end A311364.P14498047259019878238

/-!
# A311365: Coordination sequence Gal.6.436.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311365, there is no canonical definition to state claims against.
-/

/-! ## A311365.P16141400088414586081

`A301670(n)+A183152(A298641(n))`
-/

namespace A311365.P16141400088414586081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n + A183152 (A298641 n).toNat

end

end A311365.P16141400088414586081

/-! ## A311365.P12362210626243105512

`or(A008574(n), A025460(A150151(n)))`
-/

namespace A311365.P12362210626243105512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A025460 (A150151 n).toNat)

end

end A311365.P12362210626243105512

/-! ## A311365.P16499782099139450430

`or(A008574(n), A184156(A208354(n)))`
-/

namespace A311365.P16499782099139450430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A184156 (A208354 n).toNat)

end

end A311365.P16499782099139450430

/-! ## A311365.P2530444348860648006

`A355480(A338145(n+1))+A301670(n)`
-/

namespace A311365.P2530444348860648006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355480 (A338145 (n + 1)).toNat + A301670 n

end

end A311365.P2530444348860648006

/-!
# A311366: Coordination sequence Gal.6.288.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311366, there is no canonical definition to state claims against.
-/

/-! ## A311366.P16298572447739917594

`A311367(n)+A311393(n)-A311394(n)`
-/

namespace A311366.P16298572447739917594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311367 n + (A311393 n - A311394 n)

end

end A311366.P16298572447739917594

/-! ## A311366.P5985972094524110076

`A010879(A056490(n+1))+A008574(n)`
-/

namespace A311366.P5985972094524110076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A056490 (n + 1)).toNat + A008574 n

end

end A311366.P5985972094524110076

/-! ## A311366.P4954518142996268433

`A311367(A062399(n))`
-/

namespace A311366.P4954518142996268433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311367 (A062399 n).toNat

end

end A311366.P4954518142996268433

/-! ## A311366.P10087828922001896309

`A311367(A120126(n))`
-/

namespace A311366.P10087828922001896309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311367 (A120126 n).toNat

end

end A311366.P10087828922001896309

/-! ## A311366.P3189796997114608801

`A311367(A351870(n))`
-/

namespace A311366.P3189796997114608801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311367 (A351870 n).toNat

end

end A311366.P3189796997114608801

/-!
# A311367: Coordination sequence Gal.6.289.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311367, there is no canonical definition to state claims against.
-/

/-! ## A311367.P5979555134100676486

`A311366(n)+A311394(n)-A311393(n)`
-/

namespace A311367.P5979555134100676486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311366 n + (A311394 n - A311393 n)

end

end A311367.P5979555134100676486

/-! ## A311367.P12511678654179772114

`A242869(A212205(n))+A008574(n)`
-/

namespace A311367.P12511678654179772114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242869 (A212205 n).toNat + A008574 n

end

end A311367.P12511678654179772114

/-! ## A311367.P14356250353741617249

`A311223(n)+A063725(A006130(n))`
-/

namespace A311367.P14356250353741617249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311223 n + A063725 (A006130 n).toNat

end

end A311367.P14356250353741617249

/-! ## A311367.P9911676257991889257

`A036443(A339069(n+4))+A008574(n)`
-/

namespace A311367.P9911676257991889257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036443 (A339069 (n + 4)).toNat + A008574 n

end

end A311367.P9911676257991889257

/-! ## A311367.P16085627856536791357

`or(A034432(A008364(n+1)), A311366(n))`
-/

namespace A311367.P16085627856536791357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034432 (A008364 (n + 1)).toNat) (A311366 n)

end

end A311367.P16085627856536791357

/-!
# A311368: Coordination sequence Gal.6.178.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311368, there is no canonical definition to state claims against.
-/

/-! ## A311368.P6190172338997608771

`∑[∏{e}[A046100(A005323(n+3)), #+1]]`
-/

namespace A311368.P6190172338997608771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (A005323 (n + 3)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311368.P6190172338997608771

/-! ## A311368.P14565361726910545833

`A311369(n)%A310531((n-1)*2^n+2)`
-/

namespace A311368.P14565361726910545833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311369 n) (A310531 (((n : ℤ) - 1) * (2 ^ n : ℤ) + 2).toNat)

end

end A311368.P14565361726910545833

/-! ## A311368.P11971495969335767185

`A311275(n)+A001222(A013529(n))`
-/

namespace A311368.P11971495969335767185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311275 n + A001222 (A013529 n).toNat

end

end A311368.P11971495969335767185

/-! ## A311368.P6607991170858334182

`A311369(n)+A185012(A000244(n))`
-/

namespace A311368.P6607991170858334182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311369 n + A185012 (A000244 n).toNat

end

end A311368.P6607991170858334182

/-! ## A311368.P798421548137279406

`A311369(n)+A185012(A336303(n))`
-/

namespace A311368.P798421548137279406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311369 n + A185012 (A336303 n).toNat

end

end A311368.P798421548137279406

/-!
# A311369: Coordination sequence Gal.5.126.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311369, there is no canonical definition to state claims against.
-/

/-! ## A311369.P7244377154278097261

`A311370(lt[A028290(n), ∑{d}[n+1, #]+1])`
-/

namespace A311369.P7244377154278097261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028290 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311370 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A311369.P7244377154278097261

/-! ## A311369.P1234743552062361931

`A311370(lt[∑{d}[n, #*n²%(3*#²)], A001248(n+1)])`
-/

namespace A311369.P1234743552062361931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d * (n ^ 2 % (3 * d ^ 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A311369.P1234743552062361931

/-! ## A311369.P6590789484666754616

`A004277(lt[A316586(3*n+4), A118487(n+1)])`
-/

namespace A311369.P6590789484666754616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316586 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A311369.P6590789484666754616

/-!
# A311370: Coordination sequence Gal.5.183.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311370, there is no canonical definition to state claims against.
-/

/-! ## A311370.P2776989509741368653

`A311368(n)+A010894(A314325(n+1))`
-/

namespace A311370.P2776989509741368653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311368 n + A010894 ((A314325 (n + 1)).toNat + 21)

end

end A311370.P2776989509741368653

/-! ## A311370.P13656387325731502598

`A311373(n)-A248333(A185293(n+2)+1)`
-/

namespace A311370.P13656387325731502598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311373 n - A248333 (A185293 (n + 2) + 1).toNat

end

end A311370.P13656387325731502598

/-! ## A311370.P651075169403124774

`∑[A277427(A126358(n))]`
-/

namespace A311370.P651075169403124774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277427 (A126358 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311370.P651075169403124774

/-! ## A311370.P12532244694098459445

`A196054(A028445(n+1))`
-/

namespace A311370.P12532244694098459445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196054 (A028445 (n + 1)).toNat

end

end A311370.P12532244694098459445

/-! ## A311370.P12138970242061608211

`A311372(A087051(n+1)-1)`
-/

namespace A311370.P12138970242061608211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311372 (A087051 (n + 1) - 1).toNat

end

end A311370.P12138970242061608211

/-!
# A311371: Coordination sequence Gal.5.159.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311371, there is no canonical definition to state claims against.
-/

/-! ## A311371.P1872579673834689758

`A311372(n)-A184955(A047309(n+1))`
-/

namespace A311371.P1872579673834689758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311372 n - A184955 (A047309 (n + 1)).toNat

end

end A311371.P1872579673834689758

/-! ## A311371.P6665609381665647007

`A311373(n)-A184955(A047309(n+1))`
-/

namespace A311371.P6665609381665647007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311373 n - A184955 (A047309 (n + 1)).toNat

end

end A311371.P6665609381665647007

/-! ## A311371.P14002101807556273230

`A311372(n)-A184955(A141689(n+2))`
-/

namespace A311371.P14002101807556273230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311372 n - A184955 (A141689 (n + 2)).toNat

end

end A311371.P14002101807556273230

/-! ## A311371.P5238483683006481900

`A311373(n)-A184955(A141689(n+2))`
-/

namespace A311371.P5238483683006481900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311373 n - A184955 (A141689 (n + 2)).toNat

end

end A311371.P5238483683006481900

/-! ## A311371.P4666444552811720433

`A311372(n)-A054908(A302081(n+2))`
-/

namespace A311371.P4666444552811720433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311372 n - A054908 (A302081 (n + 2)).toNat

end

end A311371.P4666444552811720433

/-!
# A311372: Coordination sequence Gal.6.269.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311372, there is no canonical definition to state claims against.
-/

/-! ## A311372.P8900983060065962279

`A311373(n)-A248333(A185293(n))`
-/

namespace A311372.P8900983060065962279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311373 n - A248333 (A185293 n).toNat

end

end A311372.P8900983060065962279

/-! ## A311372.P5867998986524069214

`A311373(n)-A184955(A141689(n+1))`
-/

namespace A311372.P5867998986524069214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311373 n - A184955 (A141689 (n + 1)).toNat

end

end A311372.P5867998986524069214

/-! ## A311372.P8106078230417573504

`A311373(n)-A054908(A302081(n+1))`
-/

namespace A311372.P8106078230417573504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311373 n - A054908 (A302081 (n + 1)).toNat

end

end A311372.P8106078230417573504

/-! ## A311372.P3619611994100689517

`A311373(A062399(n))`
-/

namespace A311372.P3619611994100689517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311373 (A062399 n).toNat

end

end A311372.P3619611994100689517

/-! ## A311372.P12611986608372111727

`A311373(A120126(n))`
-/

namespace A311372.P12611986608372111727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311373 (A120126 n).toNat

end

end A311372.P12611986608372111727

/-!
# A311373: Coordination sequence Gal.6.162.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311373, there is no canonical definition to state claims against.
-/

/-! ## A311373.P15201583486671260709

`A311372(n)+A184955(A141689(n+1))`
-/

namespace A311373.P15201583486671260709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311372 n + A184955 (A141689 (n + 1)).toNat

end

end A311373.P15201583486671260709

/-! ## A311373.P2694745619056432654

`A311372(n)+A054908(A302081(n+1))`
-/

namespace A311373.P2694745619056432654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311372 n + A054908 (A302081 (n + 1)).toNat

end

end A311373.P2694745619056432654

/-!
# A311374: Coordination sequence Gal.6.516.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311374, there is no canonical definition to state claims against.
-/

/-! ## A311374.P14186039360415773794

`A311375(A062399(n))`
-/

namespace A311374.P14186039360415773794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311375 (A062399 n).toNat

end

end A311374.P14186039360415773794

/-! ## A311374.P10138352567873113312

`A311375(A120126(n))`
-/

namespace A311374.P10138352567873113312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311375 (A120126 n).toNat

end

end A311374.P10138352567873113312

/-! ## A311374.P2065701121025625443

`A311375(A351870(n))`
-/

namespace A311374.P2065701121025625443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311375 (A351870 n).toNat

end

end A311374.P2065701121025625443

/-! ## A311374.P16344128504093343268

`A311375(n)+A000038(A000105(n))`
-/

namespace A311374.P16344128504093343268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311375 n + A000038 (A000105 n).toNat

end

end A311374.P16344128504093343268

/-! ## A311374.P7691015269490225392

`A311375(n)+A185284(A342002(n))`
-/

namespace A311374.P7691015269490225392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311375 n + A185284 (A342002 n).toNat

end

end A311374.P7691015269490225392

/-!
# A311375: Coordination sequence Gal.6.534.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311375, there is no canonical definition to state claims against.
-/

/-! ## A311375.P10287565717902155316

`or(A008574(n), A226557(A008574(n)))`
-/

namespace A311375.P10287565717902155316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A226557 (A008574 n).toNat)

end

end A311375.P10287565717902155316

/-! ## A311375.P10611909992460723487

`or(A185284((5-n)²), A311374(n))`
-/

namespace A311375.P10611909992460723487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 ((5 - (n : ℤ)) ^ 2).toNat) (A311374 n)

end

end A311375.P10611909992460723487

/-! ## A311375.P3735902187607400072

`A311374(n)+A054908(A302081(n+1))/2`
-/

namespace A311375.P3735902187607400072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311374 n : ℚ) + (A054908 (A302081 (n + 1)).toNat : ℚ) / 2

end

end A311375.P3735902187607400072

/-!
# A311376: Coordination sequence Gal.5.162.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311376, there is no canonical definition to state claims against.
-/

/-! ## A311376.P11476919732338241617

`A311367(n)+A287086(A164343(n+1))`
-/

namespace A311376.P11476919732338241617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311367 n + A287086 (A164343 (n + 1)).toNat

end

end A311376.P11476919732338241617

/-! ## A311376.P11639698729461319052

`A311377(n)-A351439(A237481(n+1))`
-/

namespace A311376.P11639698729461319052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311377 n - A351439 (A237481 (n + 1)).toNat

end

end A311376.P11639698729461319052

/-! ## A311376.P14329989796151974040

`A311377(n)-A241541(A218592(n+1)²)`
-/

namespace A311376.P14329989796151974040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311377 n - A241541 (A218592 (n + 1) ^ 2).toNat

end

end A311376.P14329989796151974040

/-! ## A311376.P1110922063372266518

`A311377(A087051(n))`
-/

namespace A311376.P1110922063372266518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311377 (A087051 n).toNat

end

end A311376.P1110922063372266518

/-! ## A311376.P12065912096673347691

`A311377(A227549(n+1))`
-/

namespace A311376.P12065912096673347691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311377 (A227549 (n + 1)).toNat

end

end A311376.P12065912096673347691

/-!
# A311377: Coordination sequence Gal.5.163.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311377, there is no canonical definition to state claims against.
-/

/-! ## A311377.P5486085228598689954

`A311610(n)-A191265(A145549(n+1))`
-/

namespace A311377.P5486085228598689954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311610 n - A191265 (A145549 (n + 1)).toNat

end

end A311377.P5486085228598689954

/-! ## A311377.P17084241968530999895

`A351439(A237481(n+1))+A311376(n)`
-/

namespace A311377.P17084241968530999895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351439 (A237481 (n + 1)).toNat + A311376 n

end

end A311377.P17084241968530999895

/-! ## A311377.P8330054744926127685

`A311376(n)+A241541(A218592(n+1)²)`
-/

namespace A311377.P8330054744926127685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311376 n + A241541 (A218592 (n + 1) ^ 2).toNat

end

end A311377.P8330054744926127685

/-!
# A311378: Coordination sequence Gal.6.183.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311378, there is no canonical definition to state claims against.
-/

/-! ## A311378.P11918356961209236678

`2*A311316(n)-A311222(n)`
-/

namespace A311378.P11918356961209236678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311316 n - A311222 n

end

end A311378.P11918356961209236678

/-! ## A311378.P6386132966014788446

`A004277(A311316(n))-A311222(n)`
-/

namespace A311378.P6386132966014788446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311316 n).toNat - A311222 n

end

end A311378.P6386132966014788446

/-! ## A311378.P3423125102750011235

`A004277(A311316(n))-(2*A311698(n)-A312249(n))`
-/

namespace A311378.P3423125102750011235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311316 n).toNat - (2 * A311698 n - A312249 n)

end

end A311378.P3423125102750011235

/-! ## A311378.P1162003226305467757

`A004277(A311316(n))-∏{e}[3^n, A311223(#)]`
-/

namespace A311378.P1162003226305467757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311316 n).toNat - ∏ p ∈ Nat.primeFactors (f1 n), A311223 (Nat.factorization (f1 n) p)

end

end A311378.P1162003226305467757

/-! ## A311378.P10415837870039260827

`A092524(A311379(n))`
-/

namespace A311378.P10415837870039260827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A311379 n).toNat

end

end A311378.P10415837870039260827

/-!
# A311380: Coordination sequence Gal.6.274.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311380, there is no canonical definition to state claims against.
-/

/-! ## A311380.P313553287440032733

`A311381(n)-A340998(A052905(n))`
-/

namespace A311380.P313553287440032733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311381 n - A340998 ((A052905 n).toNat + 140)

end

end A311380.P313553287440032733

/-! ## A311380.P13216343581618456188

`A311381(A062399(n))`
-/

namespace A311380.P13216343581618456188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311381 (A062399 n).toNat

end

end A311380.P13216343581618456188

/-! ## A311380.P12171080087368933258

`A311381(A120126(n))`
-/

namespace A311380.P12171080087368933258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311381 (A120126 n).toNat

end

end A311380.P12171080087368933258

/-! ## A311380.P18001279229161414971

`A311381(A351870(n))`
-/

namespace A311380.P18001279229161414971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311381 (A351870 n).toNat

end

end A311380.P18001279229161414971

/-! ## A311380.P9039577378280302001

`A311381(A324661(∑[n]))`
-/

namespace A311380.P9039577378280302001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311381 (A324661 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311380.P9039577378280302001

/-!
# A311381: Coordination sequence Gal.6.275.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311381, there is no canonical definition to state claims against.
-/

/-! ## A311381.P15579732500937666957

`2*A311322(n)-A311232(n)`
-/

namespace A311381.P15579732500937666957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311322 n - A311232 n

end

end A311381.P15579732500937666957

/-! ## A311381.P11731779983720161011

`A004277(A311322(n))-A311232(n)`
-/

namespace A311381.P11731779983720161011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311322 n).toNat - A311232 n

end

end A311381.P11731779983720161011

/-!
# A311382: Coordination sequence Gal.6.167.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311382, there is no canonical definition to state claims against.
-/

/-! ## A311382.P8676641324137147812

`A311383(n)-A122924(A013610(n))`
-/

namespace A311382.P8676641324137147812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311383 n - A122924 (A013610 n).toNat

end

end A311382.P8676641324137147812

/-! ## A311382.P17112188717508616562

`A092524(A311383(n))`
-/

namespace A311382.P17112188717508616562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A311383 n).toNat

end

end A311382.P17112188717508616562

/-! ## A311382.P5927917782505445479

`A311383(A004906(n+1))`
-/

namespace A311382.P5927917782505445479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311383 (A004906 (n + 1)).toNat

end

end A311382.P5927917782505445479

/-! ## A311382.P10831729053556504883

`A311383(A004917(n+1))`
-/

namespace A311382.P10831729053556504883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311383 (A004917 (n + 1)).toNat

end

end A311382.P10831729053556504883

/-! ## A311382.P9437383439462183444

`A311383(A062399(n))`
-/

namespace A311382.P9437383439462183444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311383 (A062399 n).toNat

end

end A311382.P9437383439462183444

/-!
# A311383: Coordination sequence Gal.6.168.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311383, there is no canonical definition to state claims against.
-/

/-! ## A311383.P17919281865564588190

`2*A311328(n)-A311235(n)`
-/

namespace A311383.P17919281865564588190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311328 n - A311235 n

end

end A311383.P17919281865564588190

/-! ## A311383.P6884350114432876895

`A004277(A311328(n))-A311235(n)`
-/

namespace A311383.P6884350114432876895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311328 n).toNat - A311235 n

end

end A311383.P6884350114432876895

/-! ## A311383.P17014788774627121411

`A311382(n)+A122924(A013610(n))`
-/

namespace A311383.P17014788774627121411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311382 n + A122924 (A013610 n).toNat

end

end A311383.P17014788774627121411

/-! ## A311383.P2702574296128781706

`gcd(A373671(n+1), A375714(n+5))+A311382(n)-1`
-/

namespace A311383.P2702574296128781706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A373671 (n + 1)) (A375714 (n + 5)) : ℤ) + (A311382 n - 1)

end

end A311383.P2702574296128781706

/-!
# A311384: Coordination sequence Gal.6.220.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311384, the canonical program `A311384.P2354907441128154650` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311384 has offset 0).

The definition of A311384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311384.P9570308072884560826

`A004277(comp[or(1, xor(3, 6*n)+2)]+n)`
-/

namespace A311384.P9570308072884560826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.xor 3 (6 * n) + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A311384.P9570308072884560826

namespace A311384

/-- `A004277(comp[or(1, xor(3, 6*n)+2)]+n)` -/
def P9570308072884560826.Spec : Prop :=
  ∀ n, P9570308072884560826.a n = A311384 n

end A311384

/-! ## A311384.P17341181219796897617

`comp[a(n-2)+7]+n+n+n-A330025(n)` with `a(0)=8, a(1)=0, a(2)=0, a(3)=6, a(4)=8`
-/

namespace A311384.P17341181219796897617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 0, 0, 6, 8] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n + n + n : ℤ) - A330025 n

end

end A311384.P17341181219796897617

namespace A311384

/-- `comp[a(n-2)+7]+n+n+n-A330025(n)` -/
def P17341181219796897617.Spec : Prop :=
  ∀ n, P17341181219796897617.a n = A311384 n

end A311384

/-! ## A311384.P7038963238951874832

`A004277(A151988(n)+n)`
-/

namespace A311384.P7038963238951874832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151988 n + (n : ℤ)).toNat

end

end A311384.P7038963238951874832

namespace A311384

/-- `A004277(A151988(n)+n)` -/
def P7038963238951874832.Spec : Prop :=
  ∀ n, P7038963238951874832.a n = A311384 n

end A311384

/-! ## A311384.P4517027986912165080

`A004275(A151988(n)+1+n)`
-/

namespace A311384.P4517027986912165080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A151988 n + 1 + (n : ℤ)).toNat

end

end A311384.P4517027986912165080

namespace A311384

/-- `A004275(A151988(n)+1+n)` -/
def P4517027986912165080.Spec : Prop :=
  ∀ n, P4517027986912165080.a n = A311384 n

end A311384

/-! ## A311384.P12037408344703700184

`A004273(A151988(n)+n)+1`
-/

namespace A311384.P12037408344703700184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A151988 n + (n : ℤ)).toNat + 1

end

end A311384.P12037408344703700184

namespace A311384

/-- `A004273(A151988(n)+n)+1` -/
def P12037408344703700184.Spec : Prop :=
  ∀ n, P12037408344703700184.a n = A311384 n

end A311384

/-! ## A311384.P12727463123338616523

`2*A311289(n)-A008574(n)`
-/

namespace A311384.P12727463123338616523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311289 n - A008574 n

end

end A311384.P12727463123338616523

namespace A311384

/-- `2*A311289(n)-A008574(n)` -/
def P12727463123338616523.Spec : Prop :=
  ∀ n, P12727463123338616523.a n = A311384 n

end A311384

/-! ## A311384.P6031593566430982408

`2*(A311289(n)-n)-A004277(n)`
-/

namespace A311384.P6031593566430982408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A311289 n - (n : ℤ)) - A004277 n

end

end A311384.P6031593566430982408

namespace A311384

/-- `2*(A311289(n)-n)-A004277(n)` -/
def P6031593566430982408.Spec : Prop :=
  ∀ n, P6031593566430982408.a n = A311384 n

end A311384

/-! ## A311384.P3085332665638631473

`A005408(n)+A004273(A151988(n))`
-/

namespace A311384.P3085332665638631473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A004273 (A151988 n).toNat

end

end A311384.P3085332665638631473

namespace A311384

/-- `A005408(n)+A004273(A151988(n))` -/
def P3085332665638631473.Spec : Prop :=
  ∀ n, P3085332665638631473.a n = A311384 n

end A311384

/-! ## A311384.P548979266464582874

`A004277(A311289(n)-A004277(n))`
-/

namespace A311384.P548979266464582874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311289 n - A004277 n).toNat

end

end A311384.P548979266464582874

namespace A311384

/-- `A004277(A311289(n)-A004277(n))` -/
def P548979266464582874.Spec : Prop :=
  ∀ n, P548979266464582874.a n = A311384 n

end A311384

/-! ## A311384.P921627776335930794

`A004396(A008486(n))+2*A151988(n)`
-/

namespace A311384.P921627776335930794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008486 n).toNat + 2 * A151988 n

end

end A311384.P921627776335930794

namespace A311384

/-- `A004396(A008486(n))+2*A151988(n)` -/
def P921627776335930794.Spec : Prop :=
  ∀ n, P921627776335930794.a n = A311384 n

end A311384

/-! ## A311384.P2354907441128154650

`A047363(n+1)+A008486(n)-A330025(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A311384

/-- `A047363(n+1)+A008486(n)-A330025(n)` -/
def P2354907441128154650.Spec : Prop :=
  ∀ n, P2354907441128154650.a n = A311384 n

theorem P2354907441128154650.correct : P2354907441128154650.Spec := by
  intro n
  simp only [A311384]

end A311384

/-! ## A311384.P2648837835418740710

`A315707(n)-(A330025(n)+A047299(n+1))`
-/

namespace A311384.P2648837835418740710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - (A330025 n + A047299 (n + 1))

end

end A311384.P2648837835418740710

namespace A311384

/-- `A315707(n)-(A330025(n)+A047299(n+1))` -/
def P2648837835418740710.Spec : Prop :=
  ∀ n, P2648837835418740710.a n = A311384 n

end A311384

/-! ## A311384.P3570289976787830217

`A312903(n)-A330025(n-A330025(n))`
-/

namespace A311384.P3570289976787830217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A311384.P3570289976787830217

namespace A311384

/-- `A312903(n)-A330025(n-A330025(n))` -/
def P3570289976787830217.Spec : Prop :=
  ∀ n, P3570289976787830217.a n = A311384 n

end A311384

/-! ## A311384.P13840303333502658204

`A315171(n)-2*A330025(n)`
-/

namespace A311384.P13840303333502658204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315171 n - 2 * A330025 n

end

end A311384.P13840303333502658204

namespace A311384

/-- `A315171(n)-2*A330025(n)` -/
def P13840303333502658204.Spec : Prop :=
  ∀ n, P13840303333502658204.a n = A311384 n

end A311384

/-! ## A311384.P2929887816975660067

`A134667(n)+A312907(n)-A330025(n)`
-/

namespace A311384.P2929887816975660067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A312907 n - A330025 n)

end

end A311384.P2929887816975660067

namespace A311384

/-- `A134667(n)+A312907(n)-A330025(n)` -/
def P2929887816975660067.Spec : Prop :=
  ∀ n, P2929887816975660067.a n = A311384 n

end A311384

/-! ## A311384.P5123303088460094292

`A314685(n)-A330025(n)`
-/

namespace A311384.P5123303088460094292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n - A330025 n

end

end A311384.P5123303088460094292

namespace A311384

/-- `A314685(n)-A330025(n)` -/
def P5123303088460094292.Spec : Prop :=
  ∀ n, P5123303088460094292.a n = A311384 n

end A311384

/-! ## A311384.P16883898165118136671

`A004525(A008574(n))+2*A151988(n)`
-/

namespace A311384.P16883898165118136671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008574 n).toNat + 2 * A151988 n

end

end A311384.P16883898165118136671

namespace A311384

/-- `A004525(A008574(n))+2*A151988(n)` -/
def P16883898165118136671.Spec : Prop :=
  ∀ n, P16883898165118136671.a n = A311384 n

end A311384

/-! ## A311384.P5113140969259958467

`2*A313752(n)-A008458(n)`
-/

namespace A311384.P5113140969259958467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313752 n - A008458 n

end

end A311384.P5113140969259958467

namespace A311384

/-- `2*A313752(n)-A008458(n)` -/
def P5113140969259958467.Spec : Prop :=
  ∀ n, P5113140969259958467.a n = A311384 n

end A311384

/-! ## A311384.P8529103586897958173

`A004277(A313752(n)-(A004277(n)+n))`
-/

namespace A311384.P8529103586897958173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313752 n - (A004277 n + (n : ℤ))).toNat

end

end A311384.P8529103586897958173

namespace A311384

/-- `A004277(A313752(n)-(A004277(n)+n))` -/
def P8529103586897958173.Spec : Prop :=
  ∀ n, P8529103586897958173.a n = A311384 n

end A311384

/-! ## A311384.P6858114564955729451

`A004277(A313752(n)-n-A004277(n))`
-/

namespace A311384.P6858114564955729451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313752 n - (n : ℤ) - A004277 n).toNat

end

end A311384.P6858114564955729451

namespace A311384

/-- `A004277(A313752(n)-n-A004277(n))` -/
def P6858114564955729451.Spec : Prop :=
  ∀ n, P6858114564955729451.a n = A311384 n

end A311384

/-!
# A311385: Coordination sequence Gal.6.221.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311385, the canonical program `A311385.P2482110562961122991` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311385 has offset 0).

The definition of A311385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311385.P9269869456782903506

`A311553(n)-A004525(A311553(n)-A311331(n))`
-/

namespace A311385.P9269869456782903506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311553 n - A004525 (A311553 n - A311331 n).toNat

end

end A311385.P9269869456782903506

namespace A311385

/-- `A311553(n)-A004525(A311553(n)-A311331(n))` -/
def P9269869456782903506.Spec : Prop :=
  ∀ n, P9269869456782903506.a n = A311385 n

end A311385

/-! ## A311385.P533521142131263438

`A008486(n)+A008593(n)%A313718(n)`
-/

namespace A311385.P533521142131263438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + Int.tmod (A008593 n) (A313718 n)

end

end A311385.P533521142131263438

namespace A311385

/-- `A008486(n)+A008593(n)%A313718(n)` -/
def P533521142131263438.Spec : Prop :=
  ∀ n, P533521142131263438.a n = A311385 n

end A311385

/-! ## A311385.P9034860535352142204

`2*A313753(n)-A008458(n)`
-/

namespace A311385.P9034860535352142204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313753 n - A008458 n

end

end A311385.P9034860535352142204

namespace A311385

/-- `2*A313753(n)-A008458(n)` -/
def P9034860535352142204.Spec : Prop :=
  ∀ n, P9034860535352142204.a n = A311385 n

end A311385

/-! ## A311385.P15568637887375805893

`A008458(n)-A005843(A008458(n)-A313753(n))`
-/

namespace A311385.P15568637887375805893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313753 n).toNat

end

end A311385.P15568637887375805893

namespace A311385

/-- `A008458(n)-A005843(A008458(n)-A313753(n))` -/
def P15568637887375805893.Spec : Prop :=
  ∀ n, P15568637887375805893.a n = A311385 n

end A311385

/-! ## A311385.P2482110562961122991

`abs(A008592(n)-A315754(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A311385

/-- `abs(A008592(n)-A315754(n))` -/
def P2482110562961122991.Spec : Prop :=
  ∀ n, P2482110562961122991.a n = A311385 n

theorem P2482110562961122991.correct : P2482110562961122991.Spec := by
  intro n
  simp only [A311385]

end A311385

/-! ## A311385.P13174277859883253851

`2*A008706(n)-A315754(n)`
-/

namespace A311385.P13174277859883253851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315754 n

end

end A311385.P13174277859883253851

namespace A311385

/-- `2*A008706(n)-A315754(n)` -/
def P13174277859883253851.Spec : Prop :=
  ∀ n, P13174277859883253851.a n = A311385 n

end A311385

/-! ## A311385.P7078833082791765086

`xor(1, A017281(n)-A315754(n))`
-/

namespace A311385.P7078833082791765086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A315754 n)

end

end A311385.P7078833082791765086

namespace A311385

/-- `xor(1, A017281(n)-A315754(n))` -/
def P7078833082791765086.Spec : Prop :=
  ∀ n, P7078833082791765086.a n = A311385 n

end A311385

/-! ## A311385.P1290844581060021159

`A008458(n)+A008574(n)-A315754(n)`
-/

namespace A311385.P1290844581060021159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315754 n)

end

end A311385.P1290844581060021159

namespace A311385

/-- `A008458(n)+A008574(n)-A315754(n)` -/
def P1290844581060021159.Spec : Prop :=
  ∀ n, P1290844581060021159.a n = A311385 n

end A311385

/-! ## A311385.P5283919173110536584

`A315754(n)-A005843(A315754(n)-A008706(n))`
-/

namespace A311385.P5283919173110536584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315754 n - A005843 (A315754 n - A008706 n).toNat

end

end A311385.P5283919173110536584

namespace A311385

/-- `A315754(n)-A005843(A315754(n)-A008706(n))` -/
def P5283919173110536584.Spec : Prop :=
  ∀ n, P5283919173110536584.a n = A311385 n

end A311385

/-! ## A311385.P17686325333180421431

`A004442(A017281(n)-A315754(n))`
-/

namespace A311385.P17686325333180421431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315754 n).toNat

end

end A311385.P17686325333180421431

namespace A311385

/-- `A004442(A017281(n)-A315754(n))` -/
def P17686325333180421431.Spec : Prop :=
  ∀ n, P17686325333180421431.a n = A311385 n

end A311385

/-! ## A311385.P18436420012063591301

`A004442(A017281(n)%A315754(n))`
-/

namespace A311385.P18436420012063591301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.tmod (A017281 n) (A315754 n)).toNat

end

end A311385.P18436420012063591301

namespace A311385

/-- `A004442(A017281(n)%A315754(n))` -/
def P18436420012063591301.Spec : Prop :=
  ∀ n, P18436420012063591301.a n = A311385 n

end A311385

/-! ## A311385.P12561763343093292112

`2*A311553(n)-A180004(A311553(n))`
-/

namespace A311385.P12561763343093292112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311553 n - A180004 (A311553 n).toNat

end

end A311385.P12561763343093292112

namespace A311385

/-- `2*A311553(n)-A180004(A311553(n))` -/
def P12561763343093292112.Spec : Prop :=
  ∀ n, P12561763343093292112.a n = A311385 n

end A311385

/-! ## A311385.P1618600556812534499

`2*A004396(A314741(n))-A004277(n)`
-/

namespace A311385.P1618600556812534499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004396 (A314741 n).toNat - A004277 n

end

end A311385.P1618600556812534499

namespace A311385

/-- `2*A004396(A314741(n))-A004277(n)` -/
def P1618600556812534499.Spec : Prop :=
  ∀ n, P1618600556812534499.a n = A311385 n

end A311385

/-! ## A311385.P3290889709736802852

`A005843(A008706(n))-A315754(n)`
-/

namespace A311385.P3290889709736802852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315754 n

end

end A311385.P3290889709736802852

namespace A311385

/-- `A005843(A008706(n))-A315754(n)` -/
def P3290889709736802852.Spec : Prop :=
  ∀ n, P3290889709736802852.a n = A311385 n

end A311385

/-! ## A311385.P10420751490357019933

`A005843(A313753(n))-A008458(n)`
-/

namespace A311385.P10420751490357019933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313753 n).toNat - A008458 n

end

end A311385.P10420751490357019933

namespace A311385

/-- `A005843(A313753(n))-A008458(n)` -/
def P10420751490357019933.Spec : Prop :=
  ∀ n, P10420751490357019933.a n = A311385 n

end A311385

/-! ## A311385.P4410266856769536776

`A005843(A313753(n))-(A008706(n)+n)`
-/

namespace A311385.P4410266856769536776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313753 n).toNat - (A008706 n + (n : ℤ))

end

end A311385.P4410266856769536776

namespace A311385

/-- `A005843(A313753(n))-(A008706(n)+n)` -/
def P4410266856769536776.Spec : Prop :=
  ∀ n, P4410266856769536776.a n = A311385 n

end A311385

/-!
# A311386: Coordination sequence Gal.6.148.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311386, there is no canonical definition to state claims against.
-/

/-! ## A311386.P11155074724318817873

`A311387(n)-A185284(A104144(n))`
-/

namespace A311386.P11155074724318817873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311387 n - A185284 (A104144 n).toNat

end

end A311386.P11155074724318817873

/-! ## A311386.P17776095774823743023

`A311387(n)-A092436(A049934(n+1))`
-/

namespace A311386.P17776095774823743023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311387 n - A092436 (A049934 (n + 1)).toNat

end

end A311386.P17776095774823743023

/-! ## A311386.P4210767631398599212

`A311387(n)-A111775(A133181(n+1))`
-/

namespace A311386.P4210767631398599212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311387 n - A111775 (A133181 (n + 1)).toNat

end

end A311386.P4210767631398599212

/-! ## A311386.P8124711992007159100

`A311387(A077168(n)-1)`
-/

namespace A311386.P8124711992007159100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311387 (A077168 n - 1).toNat

end

end A311386.P8124711992007159100

/-! ## A311386.P375399013102891116

`A311387(A348800(n)+n)`
-/

namespace A311386.P375399013102891116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311387 (A348800 n + (n : ℤ)).toNat

end

end A311386.P375399013102891116

/-!
# A311387: Coordination sequence Gal.6.141.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311387, there is no canonical definition to state claims against.
-/

/-! ## A311387.P3793581051521721445

`A311386(n)+A185284(A104144(n))`
-/

namespace A311387.P3793581051521721445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311386 n + A185284 (A104144 n).toNat

end

end A311387.P3793581051521721445

/-! ## A311387.P12351841709313849538

`or(A286044(A129682(n)), A311386(n))`
-/

namespace A311387.P12351841709313849538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286044 (A129682 n).toNat) (A311386 n)

end

end A311387.P12351841709313849538

/-! ## A311387.P2389762301307144184

`A311386(n)+A092436(A049934(n+1))`
-/

namespace A311387.P2389762301307144184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311386 n + A092436 (A049934 (n + 1)).toNat

end

end A311387.P2389762301307144184

/-! ## A311387.P7299699870544215189

`A028310(A311386(n)+A172543(n+1))`
-/

namespace A311387.P7299699870544215189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A311386 n + A172543 (n + 1)).toNat

end

end A311387.P7299699870544215189

/-! ## A311387.P948687781238539255

`A311386(n)+A111775(A133181(n+1))`
-/

namespace A311387.P948687781238539255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311386 n + A111775 (A133181 (n + 1)).toNat

end

end A311387.P948687781238539255

/-!
# A311388: Coordination sequence Gal.6.421.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311388, there is no canonical definition to state claims against.
-/

/-! ## A311388.P2041519833313818984

`A311316(n)+A311389(n)-A311317(n)`
-/

namespace A311388.P2041519833313818984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311316 n + (A311389 n - A311317 n)

end

end A311388.P2041519833313818984

/-! ## A311388.P14802449525515536460

`A311389(n)-A011737(A056362(n))`
-/

namespace A311388.P14802449525515536460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311389 n - A011737 (A056362 n).toNat

end

end A311388.P14802449525515536460

/-! ## A311388.P18417677449134326359

`A311389(n)-A086010(A279824(n))`
-/

namespace A311388.P18417677449134326359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311389 n - A086010 (A279824 n).toNat

end

end A311388.P18417677449134326359

/-! ## A311388.P11044474290174757272

`A311389(n)-A185264(A317082(n))`
-/

namespace A311388.P11044474290174757272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311389 n - A185264 (A317082 n).toNat

end

end A311388.P11044474290174757272

/-! ## A311388.P5977341510414154278

`A311389(n)-A055641(A076968(2*(n+1)))`
-/

namespace A311388.P5977341510414154278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311389 n - A055641 (A076968 (2 * (n + 1))).toNat

end

end A311388.P5977341510414154278

/-!
# A311389: Coordination sequence Gal.6.404.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311389, there is no canonical definition to state claims against.
-/

/-! ## A311389.P1520232609821665981

`A311317(n)+A311388(n)-A311316(n)`
-/

namespace A311389.P1520232609821665981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311317 n + (A311388 n - A311316 n)

end

end A311389.P1520232609821665981

/-! ## A311389.P6186247409601448496

`A311388(n)+A011737(A056362(n))`
-/

namespace A311389.P6186247409601448496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311388 n + A011737 (A056362 n).toNat

end

end A311389.P6186247409601448496

/-! ## A311389.P9598161645696782491

`A311388(n)+A086010(A279824(n))`
-/

namespace A311389.P9598161645696782491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311388 n + A086010 (A279824 n).toNat

end

end A311389.P9598161645696782491

/-! ## A311389.P15256960789023043344

`A311388(n)+A185264(A317082(n))`
-/

namespace A311389.P15256960789023043344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311388 n + A185264 (A317082 n).toNat

end

end A311389.P15256960789023043344

/-! ## A311389.P15042717726549452793

`A311388(n)+A055641(A076968(2*(n+1)))`
-/

namespace A311389.P15042717726549452793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311388 n + A055641 (A076968 (2 * (n + 1))).toNat

end

end A311389.P15042717726549452793

/-!
# A311390: Coordination sequence Gal.6.244.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311390, there is no canonical definition to state claims against.
-/

/-! ## A311390.P3085222773380347993

`A311339(n)+A311391(n)-A311340(n)`
-/

namespace A311390.P3085222773380347993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311339 n + (A311391 n - A311340 n)

end

end A311390.P3085222773380347993

/-! ## A311390.P9799532754084837432

`∏{e}[3^n, A311391(#)]`
-/

namespace A311390.P9799532754084837432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A311391 (Nat.factorization (f1 n) p)

end

end A311390.P9799532754084837432

/-! ## A311390.P6987222139749635031

`A095400(A311391(n))`
-/

namespace A311390.P6987222139749635031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095400 (A311391 n).toNat

end

end A311390.P6987222139749635031

/-! ## A311390.P8334812430622548318

`A311391(A129600(∑[n]))`
-/

namespace A311390.P8334812430622548318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311391 (A129600 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311390.P8334812430622548318

/-! ## A311390.P708756264127999460

`A311391(A163352(∑[n]))`
-/

namespace A311390.P708756264127999460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311391 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311390.P708756264127999460

/-!
# A311391: Coordination sequence Gal.6.239.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311391, there is no canonical definition to state claims against.
-/

/-! ## A311391.P2977024708193113925

`A311340(n)+A311390(n)-A311339(n)`
-/

namespace A311391.P2977024708193113925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311340 n + (A311390 n - A311339 n)

end

end A311391.P2977024708193113925

/-!
# A311392: Coordination sequence Gal.6.437.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311392, there is no canonical definition to state claims against.
-/

/-! ## A311392.P16309906032077671020

`A311372(n)+A103493(A000332(n))`
-/

namespace A311392.P16309906032077671020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311372 n + A103493 (A000332 n).toNat

end

end A311392.P16309906032077671020

/-! ## A311392.P15128417125472089875

`A311394(n)-A332671(A047749(n))`
-/

namespace A311392.P15128417125472089875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311394 n - A332671 (A047749 n).toNat

end

end A311392.P15128417125472089875

/-! ## A311392.P12443212005526801854

`A006928(A153863(n+1))*A181821(n+1)`
-/

namespace A311392.P12443212005526801854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A153863 (n + 1)).toNat * A181821 (n + 1)

end

end A311392.P12443212005526801854

/-!
# A311393: Coordination sequence Gal.6.517.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311393, there is no canonical definition to state claims against.
-/

/-! ## A311393.P8123380960085951387

`A311366(n)+A311394(n)-A311367(n)`
-/

namespace A311393.P8123380960085951387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311366 n + (A311394 n - A311367 n)

end

end A311393.P8123380960085951387

/-! ## A311393.P3033462847726605775

`A141729(A020687(n+1)+1)`
-/

namespace A311393.P3033462847726605775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141729 (A020687 (n + 1) + 1).toNat

end

end A311393.P3033462847726605775

/-! ## A311393.P1270571367769860792

`A311394(A062399(n))`
-/

namespace A311393.P1270571367769860792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311394 (A062399 n).toNat

end

end A311393.P1270571367769860792

/-! ## A311393.P5821462314184237290

`A311394(A120126(n))`
-/

namespace A311393.P5821462314184237290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311394 (A120126 n).toNat

end

end A311393.P5821462314184237290

/-! ## A311393.P2190205211894805017

`A311394(A351870(n))`
-/

namespace A311393.P2190205211894805017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311394 (A351870 n).toNat

end

end A311393.P2190205211894805017

/-!
# A311394: Coordination sequence Gal.6.535.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311394, there is no canonical definition to state claims against.
-/

/-! ## A311394.P10533225112440536053

`A311367(n)+A311393(n)-A311366(n)`
-/

namespace A311394.P10533225112440536053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311367 n + (A311393 n - A311366 n)

end

end A311394.P10533225112440536053

/-!
# A311395: Coordination sequence Gal.5.8.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311395, there is no canonical definition to state claims against.
-/

/-! ## A311395.P11320405108761356858

`A016825(n)-A302243(A137758(3*n+2))`
-/

namespace A311395.P11320405108761356858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A302243 (A137758 (3 * n + 2)).toNat

end

end A311395.P11320405108761356858

/-! ## A311395.P3255330691390943426

`4*n+2-A318440(A304518(n+1))`
-/

namespace A311395.P3255330691390943426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - A318440 (A304518 (n + 1)).toNat

end

end A311395.P3255330691390943426

/-! ## A311395.P14926176657231641322

`A353558(A001075(n))+A310779(n)`
-/

namespace A311395.P14926176657231641322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (A001075 n).toNat + A310779 n

end

end A311395.P14926176657231641322

/-! ## A311395.P16982051288318036247

`A316556(A001003(n))+A122132(3*n+1)`
-/

namespace A311395.P16982051288318036247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316556 (A001003 n).toNat + A122132 (3 * n + 1)

end

end A311395.P16982051288318036247

/-!
# A311397: Coordination sequence Gal.6.78.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311397, there is no canonical definition to state claims against.
-/

/-! ## A311397.P2864741113776006409

`A311801(n)-A256580(A326495(n))`
-/

namespace A311397.P2864741113776006409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n - A256580 (A326495 n).toNat

end

end A311397.P2864741113776006409

/-! ## A311397.P1205466959468245509

`A311427(n)-A126792(A074591(n+1)*A109014(n))`
-/

namespace A311397.P1205466959468245509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311427 n - A126792 (A074591 (n + 1) * A109014 n).toNat

end

end A311397.P1205466959468245509

/-! ## A311397.P11078306941300761372

`A311427(n^A109014(n))-A126792(A074591(n+1))`
-/

namespace A311397.P11078306941300761372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311427 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A109014 n : ℤ))).toNat - A126792 (A074591 (n + 1)).toNat

end

end A311397.P11078306941300761372

/-! ## A311397.P6905932323912323033

`A311887(n)-A124737(A001630(n))`
-/

namespace A311397.P6905932323912323033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311887 n - A124737 (A001630 n).toNat

end

end A311397.P6905932323912323033

/-! ## A311397.P6667883845094048061

`A313136(n)-A001222(A149059(n))`
-/

namespace A311397.P6667883845094048061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313136 n - A001222 (A149059 n).toNat

end

end A311397.P6667883845094048061

/-!
# A311398: Coordination sequence Gal.6.59.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311398, there is no canonical definition to state claims against.
-/

/-! ## A311398.P18218432758793730073

`A310783(n)+A055641(A100058(n))`
-/

namespace A311398.P18218432758793730073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310783 n + A055641 (A100058 n).toNat

end

end A311398.P18218432758793730073

/-! ## A311398.P3826501015020826448

`A311535(n)-A070176(A052899(n))`
-/

namespace A311398.P3826501015020826448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n - A070176 (A052899 n).toNat

end

end A311398.P3826501015020826448

/-! ## A311398.P5401114472051947977

`A313786(n)-A302037(A320025(n))`
-/

namespace A311398.P5401114472051947977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313786 n - A302037 (A320025 n).toNat

end

end A311398.P5401114472051947977

/-! ## A311398.P10409398240586510493

`A071690(n)+A311769(n)-A163351(A255062(n))`
-/

namespace A311398.P10409398240586510493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071690 n + (A311769 n - A163351 (A255062 n).toNat)

end

end A311398.P10409398240586510493

/-!
# A311399: Coordination sequence Gal.6.435.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311399, there is no canonical definition to state claims against.
-/

/-! ## A311399.P10073819452953250768

`A311160(n)-A016351(A070935(n+2))`
-/

namespace A311399.P10073819452953250768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311160 n - A016351 (A070935 (n + 2)).toNat

end

end A311399.P10073819452953250768

/-! ## A311399.P5971245284854193041

`A102800(A313719(n))-n`
-/

namespace A311399.P5971245284854193041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A313719 n).toNat - (n : ℤ)

end

end A311399.P5971245284854193041

/-! ## A311399.P17142027536066226120

`A327051(∑[A074458(n)])+4*n`
-/

namespace A311399.P17142027536066226120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (4 * n : ℤ)

end

end A311399.P17142027536066226120

/-! ## A311399.P14188638290135285299

`A311422(n)-A010051(A006784(n+1))`
-/

namespace A311399.P14188638290135285299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311422 n - A010051 (A006784 (n + 1)).toNat

end

end A311399.P14188638290135285299

/-! ## A311399.P879952033179089447

`A301672(n)-A189628(A102726(n+1))`
-/

namespace A311399.P879952033179089447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n - A189628 (A102726 (n + 1)).toNat

end

end A311399.P879952033179089447

