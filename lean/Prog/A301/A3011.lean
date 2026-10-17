import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A301102: Coordination sequence T2 for Zeolite Code IWW.

The programs for A301102, there is no canonical definition to state claims against.
-/

/-! ## A301102.P7090028830548246657

`A019474(A061994(n))+A019456(n)`
-/

namespace A301102.P7090028830548246657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019474 (A061994 n).toNat + A019456 n

end

end A301102.P7090028830548246657

/-! ## A301102.P13301081133535358331

`A185114(A001710(n))+A019456(n)`
-/

namespace A301102.P13301081133535358331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 (A001710 n).toNat + A019456 n

end

end A301102.P13301081133535358331

/-! ## A301102.P17663168426601347570

`A057427(A187695(n))+A019456(n)`
-/

namespace A301102.P17663168426601347570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A187695 n).toNat + A019456 n

end

end A301102.P17663168426601347570

/-! ## A301102.P15555337463788771036

`A335622(A335632(n))+A019456(n)`
-/

namespace A301102.P15555337463788771036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335622 (A335632 n).toNat + A019456 n

end

end A301102.P15555337463788771036

/-!
# A301103: Coordination sequence T3 for Zeolite Code IWW.

The programs for A301103, there is no canonical definition to state claims against.
-/

/-! ## A301103.P8705136548643978349

`∑[∑[A212125(A008020(n))]]`
-/

namespace A301103.P8705136548643978349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212125 (A008020 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301103.P8705136548643978349

/-! ## A301103.P9228074749748133428

`A038411(n)-A001221(A292725(n))`
-/

namespace A301103.P9228074749748133428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038411 n - A001221 (A292725 n).toNat

end

end A301103.P9228074749748133428

/-! ## A301103.P15664698035846938875

`A067086(A127760(n+1))-A001221(A292725(n))`
-/

namespace A301103.P15664698035846938875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A127760 (n + 1)).toNat - A001221 (A292725 n).toNat

end

end A301103.P15664698035846938875

/-!
# A301105: Coordination sequence T5 for Zeolite Code IWW.

The programs for A301105, there is no canonical definition to state claims against.
-/

/-! ## A301105.P4284625295110488167

`A330060(A145913(n+1)+A000217(n))`
-/

namespace A301105.P4284625295110488167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (A145913 (n + 1) + A000217 n).toNat

end

end A301105.P4284625295110488167

/-! ## A301105.P4237080871966412783

`A008000(n)-A325699(A001358(3*n+2))`
-/

namespace A301105.P4237080871966412783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A325699 (A001358 (3 * n + 2)).toNat

end

end A301105.P4237080871966412783

/-!
# A301108: Coordination sequence T8 for Zeolite Code IWW.

The programs for A301108, there is no canonical definition to state claims against.
-/

/-! ## A301108.P6639052409165042943

`A016439(n)-A001221(A088127(n))`
-/

namespace A301108.P6639052409165042943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016439 n - A001221 (A088127 n).toNat

end

end A301108.P6639052409165042943

/-!
# A301110: Coordination sequence T10 for Zeolite Code IWW.

The programs for A301110, there is no canonical definition to state claims against.
-/

/-! ## A301110.P1318106094914398913

`∑[∑[A292583(A319512(n))]]`
-/

namespace A301110.P1318106094914398913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292583 (A319512 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301110.P1318106094914398913

/-! ## A301110.P13388994544669652640

`∑[record[A330105(A274511(n+1))]]`
-/

namespace A301110.P13388994544669652640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330105 (A274511 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301110.P13388994544669652640

/-! ## A301110.P9649587971184286949

`A002024(A064057(n))-A195663(n)`
-/

namespace A301110.P9649587971184286949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A064057 n).toNat - A195663 n

end

end A301110.P9649587971184286949

/-!
# A301111: Coordination sequence T11 for Zeolite Code IWW.

The programs for A301111, there is no canonical definition to state claims against.
-/

/-! ## A301111.P5349811451881223034

`A125577(2*n)-A275015(A144324(3*n+1))`
-/

namespace A301111.P5349811451881223034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125577 (2 * n) - A275015 (A144324 (3 * n + 1)).toNat

end

end A301111.P5349811451881223034

/-!
# A301112: Coordination sequence T12 for Zeolite Code IWW.

The programs for A301112, there is no canonical definition to state claims against.
-/

/-! ## A301112.P16063504873082948154

`A057142(A392588(n))`
-/

namespace A301112.P16063504873082948154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A392588 n).toNat

end

end A301112.P16063504873082948154

/-!
# A301118: Coordination sequence T2 for Zeolite Code LIT.

The programs for A301118, there is no canonical definition to state claims against.
-/

/-! ## A301118.P1350098835835375695

`A003056(A008255(n)*A010000(n))-A145569(A008130(n+1))`
-/

namespace A301118.P1350098835835375695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A008255 n * A010000 n).toNat - A145569 (A008130 (n + 1)).toNat

end

end A301118.P1350098835835375695

/-!
# A301120: Coordination sequence T1 for Zeolite Code MAR.

The programs for A301120, there is no canonical definition to state claims against.
-/

/-! ## A301120.P10637222691792237518

`A301036(n)-A185284(A106195(n))`
-/

namespace A301120.P10637222691792237518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301036 n - A185284 (A106195 n).toNat

end

end A301120.P10637222691792237518

/-! ## A301120.P5133966875434734483

`A301036(n)-A276791(A185231(n))`
-/

namespace A301120.P5133966875434734483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301036 n - A276791 (A185231 n).toNat

end

end A301120.P5133966875434734483

/-! ## A301120.P8339830846627681346

`A301036(n)-A185274(A326597(n))`
-/

namespace A301120.P8339830846627681346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301036 n - A185274 (A326597 n).toNat

end

end A301120.P8339830846627681346

/-! ## A301120.P15757770927468559920

`A301036(n)-A025443(A005179(n+1))`
-/

namespace A301120.P15757770927468559920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301036 n - A025443 (A005179 (n + 1)).toNat

end

end A301120.P15757770927468559920

/-! ## A301120.P13761702026319670750

`A301036(n)-A055641(A256810(n+1))`
-/

namespace A301120.P13761702026319670750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301036 n - A055641 (A256810 (n + 1)).toNat

end

end A301120.P13761702026319670750

/-!
# A301121: Coordination sequence T2 for Zeolite Code MAR.

The programs for A301121, there is no canonical definition to state claims against.
-/

/-! ## A301121.P2971532318089987541

`A301037(n)-A277735(A160555(n))`
-/

namespace A301121.P2971532318089987541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301037 n - A277735 (A160555 n).toNat

end

end A301121.P2971532318089987541

/-! ## A301121.P14702401605673586245

`A301033(n)-A185284(3*n+4)`
-/

namespace A301121.P14702401605673586245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301033 n - A185284 (3 * n + 4)

end

end A301121.P14702401605673586245

/-! ## A301121.P5613629688334189848

`or(A008140(n), A185284(3*n+4))`
-/

namespace A301121.P5613629688334189848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008140 n) (A185284 (3 * n + 4))

end

end A301121.P5613629688334189848

/-! ## A301121.P8392025977304166251

`A340988(A024723(n+1))+A008140(n)`
-/

namespace A301121.P8392025977304166251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A024723 (n + 1)).toNat + 91) + A008140 n

end

end A301121.P8392025977304166251

/-! ## A301121.P13303505790788578714

`A185284(n)+A301033(n)-A185284(A016116(n))`
-/

namespace A301121.P13303505790788578714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + (A301033 n - A185284 (A016116 n).toNat)

end

end A301121.P13303505790788578714

/-!
# A301124: Coordination sequence T2 for Zeolite Code MOZ.

The programs for A301124, there is no canonical definition to state claims against.
-/

/-! ## A301124.P6364039381295251752

`∑[∑[A254044(2*(3^n-2^n)+1)]]`
-/

namespace A301124.P6364039381295251752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254044 (2 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301124.P6364039381295251752

/-! ## A301124.P8760072849764264246

`∑[∑[A088696(A006497(n))]]`
-/

namespace A301124.P8760072849764264246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088696 (A006497 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301124.P8760072849764264246

/-! ## A301124.P3416248111700473281

`A184333(∑[∑[A136218(n)]])`
-/

namespace A301124.P3416248111700473281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184333 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301124.P3416248111700473281

/-! ## A301124.P7195151431450261173

`∑[∑[A001222(A180367(n+1))]]`
-/

namespace A301124.P7195151431450261173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A180367 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301124.P7195151431450261173

/-!
# A301128: Coordination sequence T6 for Zeolite Code MOZ.

The programs for A301128, there is no canonical definition to state claims against.
-/

/-! ## A301128.P3629273221515263319

`A137292(∑[comp[round(n*ϕ²)]])`
-/

namespace A301128.P3629273221515263319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301128.P3629273221515263319

/-! ## A301128.P9794969512515579539

`A103128(A056520(n)*A315303(n))`
-/

namespace A301128.P9794969512515579539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A056520 n * A315303 n).toNat

end

end A301128.P9794969512515579539

/-!
# A301129: Coordination sequence T1 for Zeolite Code MSE.

The programs for A301129, there is no canonical definition to state claims against.
-/

/-! ## A301129.P10026853944291523548

`∑[∑[A124458(A000070(n))]]`
-/

namespace A301129.P10026853944291523548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124458 (A000070 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301129.P10026853944291523548

/-! ## A301129.P5766903948382399686

`A008095(n)-A259361(A126874(n+5))`
-/

namespace A301129.P5766903948382399686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008095 n - A259361 (A126874 (n + 5)).toNat

end

end A301129.P5766903948382399686

/-! ## A301129.P10431246371998306892

`A003056(A183958(n+1))-A091246(n+1)`
-/

namespace A301129.P10431246371998306892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A183958 (n + 1)).toNat - A091246 (n + 1)

end

end A301129.P10431246371998306892

/-!
# A301131: Coordination sequence T3 for Zeolite Code MSE.

The programs for A301131, there is no canonical definition to state claims against.
-/

/-! ## A301131.P13848505183937585854

`A266338(n)+A037840(A266339(2*n))`
-/

namespace A301131.P13848505183937585854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266338 n + A037840 (A266339 (2 * n)).toNat

end

end A301131.P13848505183937585854

/-!
# A301132: Coordination sequence T4 for Zeolite Code MSE.

The programs for A301132, there is no canonical definition to state claims against.
-/

/-! ## A301132.P15470609735884123880

`A132380(n!)+A008000(n)`
-/

namespace A301132.P15470609735884123880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (Nat.factorial n) + A008000 n

end

end A301132.P15470609735884123880

/-! ## A301132.P1580831542269854235

`xor(A008000(n), A165560(n!))`
-/

namespace A301132.P1580831542269854235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008000 n) (A165560 (Nat.factorial n))

end

end A301132.P1580831542269854235

/-! ## A301132.P8392456883705168646

`A046978(A177483(n))+C(Δ[n²], 2)`
-/

namespace A301132.P8392456883705168646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A177483 n).toNat + (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 : ℤ)

end

end A301132.P8392456883705168646

/-! ## A301132.P2483497262678716467

`n*(2*n+1)-A008683(A235611(n+1))`
-/

namespace A301132.P2483497262678716467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 1) : ℤ) - A008683 (A235611 (n + 1)).toNat

end

end A301132.P2483497262678716467

/-!
# A301134: Coordination sequence T6 for Zeolite Code MSE.

The programs for A301134, there is no canonical definition to state claims against.
-/

/-! ## A301134.P5939222895807992112

`A004523(n)+A301095(n)+A055641(A094433(n))`
-/

namespace A301134.P5939222895807992112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n + (A301095 n + A055641 (A094433 n).toNat)

end

end A301134.P5939222895807992112

/-!
# A301139: Coordination sequence T1 for Zeolite Code NPO.

The programs for A301139, there is no canonical definition to state claims against.
-/

/-! ## A301139.P10937962026611272221

`A047951(n)-A086520(A041165(n))`
-/

namespace A301139.P10937962026611272221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047951 n - A086520 (A041165 n).toNat

end

end A301139.P10937962026611272221

/-! ## A301139.P8200005413343893856

`A067029(A343245(floor(2*n/5)))+A008013(n)`
-/

namespace A301139.P8200005413343893856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A343245 ⌊2 * ((n : ℚ) / 5)⌋.toNat).toNat + A008013 n

end

end A301139.P8200005413343893856

/-!
# A301141: Coordination sequence T2 for Zeolite Code NSI.

The programs for A301141, there is no canonical definition to state claims against.
-/

/-! ## A301141.P2960487126625119545

`xor(A025581(n), A082447(A101094(n+1)))`
-/

namespace A301141.P2960487126625119545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025581 n) (A082447 (A101094 (n + 1)).toNat)

end

end A301141.P2960487126625119545

/-!
# A301148: Coordination sequence T1 for Zeolite Code OSO.

The programs for A301148, there is no canonical definition to state claims against.
-/

/-! ## A301148.P2610733964467013297

`∑[∑[A055091(A151237(n))]]`
-/

namespace A301148.P2610733964467013297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A151237 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301148.P2610733964467013297

/-! ## A301148.P13871561081825206763

`A156349(A096816(n))+A000326(n)`
-/

namespace A301148.P13871561081825206763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156349 (A096816 n).toNat + A000326 n

end

end A301148.P13871561081825206763

/-! ## A301148.P2082236997176231033

`A356316(A007504(n)+A005704(n))`
-/

namespace A301148.P2082236997176231033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356316 (A007504 n + A005704 n).toNat

end

end A301148.P2082236997176231033

/-! ## A301148.P1522662151981168197

`A254874(n)-A001221(A209881(n))`
-/

namespace A301148.P1522662151981168197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254874 n - A001221 (A209881 n).toNat

end

end A301148.P1522662151981168197

/-!
# A301151: Coordination sequence T2 for Zeolite Code OWE.

The programs for A301151, there is no canonical definition to state claims against.
-/

/-! ## A301151.P12367193956891177681

`A273137(A172503(n+1))+2*n²`
-/

namespace A301151.P12367193956891177681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273137 (A172503 (n + 1)).toNat + (2 * n ^ 2 : ℤ)

end

end A301151.P12367193956891177681

/-! ## A301151.P1322026732218520809

`A375431(A006626(n+4))+A056220(n)`
-/

namespace A301151.P1322026732218520809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375431 (A006626 (n + 4)).toNat + A056220 n

end

end A301151.P1322026732218520809

/-! ## A301151.P16745696365908482738

`A005893(n)-A008683(A230184(3*n+5))`
-/

namespace A301151.P16745696365908482738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - A008683 (A230184 (3 * n + 5)).toNat

end

end A301151.P16745696365908482738

/-!
# A301153: Coordination sequence T1 for Zeolite Code PON.

The programs for A301153, there is no canonical definition to state claims against.
-/

/-! ## A301153.P329243221837658558

`A036555(A047659(n))+ceil(2/acot(n)²)`
-/

namespace A301153.P329243221837658558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 (A047659 n).toNat + ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A301153.P329243221837658558

/-! ## A301153.P4340702644876577835

`A225633(A100438(n+1))+A100440(n+1)`
-/

namespace A301153.P4340702644876577835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 (A100438 (n + 1)).toNat + A100440 (n + 1)

end

end A301153.P4340702644876577835

/-!
# A301154: Coordination sequence T2 for Zeolite Code PON.

The programs for A301154, there is no canonical definition to state claims against.
-/

/-! ## A301154.P11166961715708770808

`A342735(A239660(3*(n+1))+n²)`
-/

namespace A301154.P11166961715708770808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342735 (A239660 (3 * (n + 1)) + (n ^ 2 : ℤ)).toNat

end

end A301154.P11166961715708770808

/-! ## A301154.P15117249112234946014

`A285888(A325859(n))+A008013(n)`
-/

namespace A301154.P15117249112234946014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285888 (A325859 n).toNat + A008013 n

end

end A301154.P15117249112234946014

/-! ## A301154.P1068195287702729690

`xor(A056980(A056981(n)), A301007(n))`
-/

namespace A301154.P1068195287702729690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056980 (A056981 n).toNat) (A301007 n)

end

end A301154.P1068195287702729690

/-! ## A301154.P2767659213124568521

`A354912(∑[A328596(n+1)+A227186(n)])`
-/

namespace A301154.P2767659213124568521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (n + 1) + A227186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301154.P2767659213124568521

/-!
# A301155: Coordination sequence T3 for Zeolite Code PON.

The programs for A301155, there is no canonical definition to state claims against.
-/

/-! ## A301155.P2365124445396074505

`A233204(A219262(n)+1)+A008225(n)`
-/

namespace A301155.P2365124445396074505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233204 (A219262 n + 1).toNat + A008225 n

end

end A301155.P2365124445396074505

/-! ## A301155.P5632716013244365658

`A084849(n)-A319396(A319417(n+1))`
-/

namespace A301155.P5632716013244365658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n - A319396 (A319417 (n + 1)).toNat

end

end A301155.P5632716013244365658

/-! ## A301155.P11914011209849744018

`A000217(2*n)-A236338(A062145(n+4))`
-/

namespace A301155.P11914011209849744018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A236338 (A062145 (n + 4)).toNat

end

end A301155.P11914011209849744018

/-!
# A301156: Coordination sequence T4 for Zeolite Code PON.

The programs for A301156, there is no canonical definition to state claims against.
-/

/-! ## A301156.P17147438140120627120

`A301238(n)-A348177(A151897(n))`
-/

namespace A301156.P17147438140120627120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301238 n - A348177 (A151897 n).toNat

end

end A301156.P17147438140120627120

/-! ## A301156.P7489253574742043865

`A327193(A001700(n))+A008810(2*n+1)`
-/

namespace A301156.P7489253574742043865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327193 (A001700 n).toNat + A008810 (2 * n + 1)

end

end A301156.P7489253574742043865

/-!
# A301157: Coordination sequence T5 for Zeolite Code PON.

The programs for A301157, there is no canonical definition to state claims against.
-/

/-! ## A301157.P11717738869344000660

`A104484(A301711(n))+A025202(n+3)`
-/

namespace A301157.P11717738869344000660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (A301711 n).toNat + A025202 (n + 3)

end

end A301157.P11717738869344000660

/-! ## A301157.P3229575421871360674

`A008000(n)-A178670(A000984(n))`
-/

namespace A301157.P3229575421871360674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A178670 (A000984 n).toNat

end

end A301157.P3229575421871360674

/-!
# A301158: Coordination sequence T6 for Zeolite Code PON.

The programs for A301158, there is no canonical definition to state claims against.
-/

/-! ## A301158.P15162508855070253993

`A008032(n)+A001222(A033462(n))`
-/

namespace A301158.P15162508855070253993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008032 n + A001222 (A033462 n).toNat

end

end A301158.P15162508855070253993

/-! ## A301158.P8104286566350220360

`A001844(n)-A000120(A002703(2*(n+2)))`
-/

namespace A301158.P8104286566350220360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A000120 (A002703 (2 * (n + 2))).toNat

end

end A301158.P8104286566350220360

/-! ## A301158.P4621638269316180990

`xor(A000124(2*n), A360677(A232646(n+2)))`
-/

namespace A301158.P4621638269316180990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000124 (2 * n)) (A360677 (A232646 (n + 2)).toNat)

end

end A301158.P4621638269316180990

/-!
# A301160: Coordination sequence T2 for Zeolite Code RRO.

The programs for A301160, there is no canonical definition to state claims against.
-/

/-! ## A301160.P6626685198965249605

`or(A008118(n), A193330(A074430(n+1)))`
-/

namespace A301160.P6626685198965249605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008118 n) (A193330 (A074430 (n + 1)).toNat)

end

end A301160.P6626685198965249605

/-!
# A301161: Coordination sequence T3 for Zeolite Code RRO.

The programs for A301161, there is no canonical definition to state claims against.
-/

/-! ## A301161.P13460141809103576763

`A324731(A138292(n))+A008119(n)`
-/

namespace A301161.P13460141809103576763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (A138292 n).toNat + A008119 n

end

end A301161.P13460141809103576763

/-! ## A301161.P4167595289778333450

`A324731(A138738(n))+A008119(n)`
-/

namespace A301161.P4167595289778333450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (A138738 n).toNat + A008119 n

end

end A301161.P4167595289778333450

/-! ## A301161.P10866400286068055280

`A175253(A056277(n+1))+A008119(n)`
-/

namespace A301161.P10866400286068055280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (A056277 (n + 1)).toNat + A008119 n

end

end A301161.P10866400286068055280

/-!
# A301163: Coordination sequence T5 for Zeolite Code RRO.

The programs for A301163, there is no canonical definition to state claims against.
-/

/-! ## A301163.P17577090051472696763

`A340998(A008246(n))+A008120(n)`
-/

namespace A301163.P17577090051472696763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A008246 n).toNat + 140) + A008120 n

end

end A301163.P17577090051472696763

/-!
# A301165: Coordination sequence T2 for Zeolite Code RWR.

The programs for A301165, there is no canonical definition to state claims against.
-/

/-! ## A301165.P2748622522182665280

`∑[∑[A053737(A100230(n))]]`
-/

namespace A301165.P2748622522182665280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A100230 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301165.P2748622522182665280

/-! ## A301165.P15752794609367325902

`∑[∑[A354598(A054753(2*n+1))]]`
-/

namespace A301165.P15752794609367325902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354598 (A054753 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301165.P15752794609367325902

/-! ## A301165.P2287862653515438632

`A350237(2*(n+1))+A034684(A099947(n))`
-/

namespace A301165.P2287862653515438632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350237 (2 * (n + 1)) + A034684 (A099947 n).toNat

end

end A301165.P2287862653515438632

/-!
# A301166: Coordination sequence T1 for Zeolite Code RWY.

The programs for A301166, there is no canonical definition to state claims against.
-/

/-! ## A301166.P5460043870782516593

`A316345(A277023(3*n+2))+A277023(n)`
-/

namespace A301166.P5460043870782516593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 (A277023 (3 * n + 2)).toNat + A277023 n

end

end A301166.P5460043870782516593

/-! ## A301166.P3016390501150428183

`A007814(C(n+7, 7))+n^ceil(atan(n))`
-/

namespace A301166.P3016390501150428183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (Nat.choose (n + 7) 7) : ℚ) + (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A301166.P3016390501150428183

/-! ## A301166.P8867632223959460036

`A131209(A002522(n))+A088705(n)`
-/

namespace A301166.P8867632223959460036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A002522 n).toNat + A088705 n

end

end A301166.P8867632223959460036

/-! ## A301166.P15170815965890572004

`A341969(A342596(n+3))+A277023(n)`
-/

namespace A301166.P15170815965890572004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341969 (A342596 (n + 3)).toNat + A277023 n

end

end A301166.P15170815965890572004

/-! ## A301166.P4042518807515201767

`A274830(A077739(n+1))+A061399(2*(n+1))`
-/

namespace A301166.P4042518807515201767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (A077739 (n + 1)).toNat + A061399 (2 * (n + 1))

end

end A301166.P4042518807515201767

/-!
# A301168: Coordination sequence T2 for Zeolite Code SFG.

The programs for A301168, there is no canonical definition to state claims against.
-/

/-! ## A301168.P10899511697074271861

`A181347(A282629(n))+A014105(n)`
-/

namespace A301168.P10899511697074271861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181347 (A282629 n).toNat + A014105 n

end

end A301168.P10899511697074271861

/-! ## A301168.P8848255165079318557

`A076411(A002313(n+1)*A183038(n))`
-/

namespace A301168.P8848255165079318557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (A002313 (n + 1) * A183038 n).toNat

end

end A301168.P8848255165079318557

/-! ## A301168.P6892846368567726070

`A061399(A000602(2*n))+A008000(n)`
-/

namespace A301168.P6892846368567726070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061399 (A000602 (2 * n)).toNat + A008000 n

end

end A301168.P6892846368567726070

/-!
# A301170: Coordination sequence T4 for Zeolite Code SFG.

The programs for A301170, there is no canonical definition to state claims against.
-/

/-! ## A301170.P507623702612978182

`∑[∑[A002117(A358544(n+1))]]`
-/

namespace A301170.P507623702612978182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (A358544 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301170.P507623702612978182

/-! ## A301170.P1274882736644466574

`A301125(n)+A294928(A000142(n))`
-/

namespace A301170.P1274882736644466574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301125 n + A294928 (A000142 n).toNat

end

end A301170.P1274882736644466574

/-!
# A301173: Coordination sequence T7 for Zeolite Code SFG.

The programs for A301173, there is no canonical definition to state claims against.
-/

/-! ## A301173.P3290310155995708512

`∑[A079511(∑[A237271(n+3)])]`
-/

namespace A301173.P3290310155995708512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079511 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301173.P3290310155995708512

/-! ## A301173.P13648402205898863966

`A120059(A114492(n))+A008804(2*n)`
-/

namespace A301173.P13648402205898863966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120059 (A114492 n).toNat + A008804 (2 * n)

end

end A301173.P13648402205898863966

/-!
# A301175: Coordination sequence T9 for Zeolite Code SFG.

The programs for A301175, there is no canonical definition to state claims against.
-/

/-! ## A301175.P13360512101159793110

`A130402(A008646(n))+A014105(n)`
-/

namespace A301175.P13360512101159793110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130402 (A008646 n).toNat + A014105 n

end

end A301175.P13360512101159793110

/-! ## A301175.P9995329660170606738

`A191677(A073471(n)%A126196(n+1))`
-/

namespace A301175.P9995329660170606738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (Int.tmod (A073471 n) (A126196 (n + 1))).toNat

end

end A301175.P9995329660170606738

/-!
# A301177: Coordination sequence T11 for Zeolite Code SFG.

The programs for A301177, there is no canonical definition to state claims against.
-/

/-! ## A301177.P13883748291443929892

`A299277(n)-A124157(n+1)`
-/

namespace A301177.P13883748291443929892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299277 n - A124157 (n + 1)

end

end A301177.P13883748291443929892

/-! ## A301177.P13576381008096022531

`∑[∑[A321479(A007089(n+1))]]`
-/

namespace A301177.P13576381008096022531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321479 (A007089 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301177.P13576381008096022531

/-! ## A301177.P4023238913236551818

`A326702(A038384(n))+A038410(n)`
-/

namespace A301177.P4023238913236551818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A038384 n).toNat + A038410 n

end

end A301177.P4023238913236551818

/-! ## A301177.P12583168649744286590

`A357377(A001045(n))+A247643(n)`
-/

namespace A301177.P12583168649744286590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357377 (A001045 n).toNat + A247643 n

end

end A301177.P12583168649744286590

/-!
# A301178: Coordination sequence T12 for Zeolite Code SFG.

The programs for A301178, there is no canonical definition to state claims against.
-/

/-! ## A301178.P13012194445643943593

`∑[record[A325611(A163511(n))]]`
-/

namespace A301178.P13012194445643943593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325611 (A163511 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301178.P13012194445643943593

/-!
# A301180: Coordination sequence T2 for Zeolite Code SFH.

The programs for A301180, there is no canonical definition to state claims against.
-/

/-! ## A301180.P6856590217009743118

`A008000(n)-A178047(A322115(3*n))`
-/

namespace A301180.P6856590217009743118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A178047 (A322115 (3 * n)).toNat

end

end A301180.P6856590217009743118

/-!
# A301183: Coordination sequence T5 for Zeolite Code SFH.

The programs for A301183, there is no canonical definition to state claims against.
-/

/-! ## A301183.P17578985100860601585

`or(A000120(A074431(n+1)), A005893(n))`
-/

namespace A301183.P17578985100860601585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A074431 (n + 1)).toNat) (A005893 n)

end

end A301183.P17578985100860601585

/-!
# A301185: Coordination sequence T7 for Zeolite Code SFH.

The programs for A301185, there is no canonical definition to state claims against.
-/

/-! ## A301185.P4296430770201771214

`A215459(A153251(n+1))`
-/

namespace A301185.P4296430770201771214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215459 (A153251 (n + 1)).toNat

end

end A301185.P4296430770201771214

/-! ## A301185.P17977417088741810541

`A301189(n)-A025436(A207819(n)+1)`
-/

namespace A301185.P17977417088741810541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301189 n - A025436 (A207819 n + 1).toNat

end

end A301185.P17977417088741810541

/-! ## A301185.P6602259867536808852

`A301189(n)-A025436(xor(1, A207819(n)))`
-/

namespace A301185.P6602259867536808852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301189 n - A025436 (Int.xor 1 (A207819 n)).toNat

end

end A301185.P6602259867536808852

/-! ## A301185.P16487766137576674851

`A301189(n)-A007949(A086732(2*(n+2)))`
-/

namespace A301185.P16487766137576674851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301189 n - A007949 (A086732 (2 * (n + 2))).toNat

end

end A301185.P16487766137576674851

/-!
# A301186: Coordination sequence T8 for Zeolite Code SFH.

The programs for A301186, there is no canonical definition to state claims against.
-/

/-! ## A301186.P11654881618874527758

`A004523(A004526(n))+A231005(A129339(n+1))+n²`
-/

namespace A301186.P11654881618874527758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A004526 n).toNat + (A231005 (A129339 (n + 1)).toNat + (n ^ 2 : ℤ))

end

end A301186.P11654881618874527758

/-! ## A301186.P3535930443279483919

`A008130(A004396(n))+A231005(A129339(n+1))+n²`
-/

namespace A301186.P3535930443279483919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (A004396 n).toNat + (A231005 (A129339 (n + 1)).toNat + (n ^ 2 : ℤ))

end

end A301186.P3535930443279483919

/-! ## A301186.P10828642008381096153

`A008130(A110654(n+1))+A231005(A129339(n+1))+n²`
-/

namespace A301186.P10828642008381096153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (A110654 (n + 1)).toNat + (A231005 (A129339 (n + 1)).toNat + (n ^ 2 : ℤ))

end

end A301186.P10828642008381096153

/-!
# A301189: Coordination sequence T3 for Zeolite Code SFN.

The programs for A301189, there is no canonical definition to state claims against.
-/

/-! ## A301189.P4014029509162665850

`A003056(A244728(n)+A002533(n))`
-/

namespace A301189.P4014029509162665850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A244728 n + A002533 n).toNat

end

end A301189.P4014029509162665850

/-! ## A301189.P11888691717930471954

`xor(A025436(A207819(n)), A301260(n))`
-/

namespace A301189.P11888691717930471954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025436 (A207819 n).toNat) (A301260 n)

end

end A301189.P11888691717930471954

/-! ## A301189.P10879521787376407167

`A003056(A138573(n+2)+A000578(2*n))`
-/

namespace A301189.P10879521787376407167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A138573 (n + 2) + A000578 (2 * n)).toNat

end

end A301189.P10879521787376407167

/-!
# A301191: Coordination sequence T5 for Zeolite Code SFN.

The programs for A301191, there is no canonical definition to state claims against.
-/

/-! ## A301191.P10357079422927897505

`A231005(A129339(n+1))+n²`
-/

namespace A301191.P10357079422927897505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231005 (A129339 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A301191.P10357079422927897505

/-! ## A301191.P17973998174765011171

`A331784(A257997(3*n+1))-A277697(n+1)`
-/

namespace A301191.P17973998174765011171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331784 (A257997 (3 * n + 1)).toNat - A277697 (n + 1)

end

end A301191.P17973998174765011171

/-!
# A301193: Coordination sequence T7 for Zeolite Code SFN.

The programs for A301193, there is no canonical definition to state claims against.
-/

/-! ## A301193.P6688220175873629973

`A008000(n)-A072627(A003161(n))`
-/

namespace A301193.P6688220175873629973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A072627 (A003161 n).toNat

end

end A301193.P6688220175873629973

/-! ## A301193.P9720236272705834878

`A008130(n)+A005893(n)-A072627(A003161(n))`
-/

namespace A301193.P9720236272705834878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n + A005893 n - A072627 (A003161 n).toNat

end

end A301193.P9720236272705834878

/-! ## A301193.P2080876309559608131

`A008259(n)-A000212(n)-A072627(A003161(n))`
-/

namespace A301193.P2080876309559608131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008259 n - A000212 n - A072627 (A003161 n).toNat

end

end A301193.P2080876309559608131

/-! ## A301193.P13541638635353475430

`A008255(n)-A008130(n)-A072627(A003161(n))`
-/

namespace A301193.P13541638635353475430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008255 n - A008130 n - A072627 (A003161 n).toNat

end

end A301193.P13541638635353475430

/-!
# A301194: Coordination sequence T8 for Zeolite Code SFN.

The programs for A301194, there is no canonical definition to state claims against.
-/

/-! ## A301194.P1820851905340558639

`∑[A023896(n+1)+A001222(A171476(n))]`
-/

namespace A301194.P1820851905340558639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + A001222 (A171476 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301194.P1820851905340558639

/-!
# A301196: Coordination sequence T2 for Zeolite Code SFO.

The programs for A301196, there is no canonical definition to state claims against.
-/

/-! ## A301196.P361133305865812312

`A008020(n)-A185284(A188069(n+1))`
-/

namespace A301196.P361133305865812312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008020 n - A185284 (A188069 (n + 1)).toNat

end

end A301196.P361133305865812312

/-!
# A301199: Coordination sequence T1 for Zeolite Code SIV.

The programs for A301199, there is no canonical definition to state claims against.
-/

/-! ## A301199.P3298099516758372769

`∑[∑[∑{e}[A015448(n+1)+1, #]]]`
-/

namespace A301199.P3298099516758372769
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301199.P3298099516758372769

/-! ## A301199.P4784824062244067712

`∑[∑[∑{e}[A000045(3*n+2)+1, #]]]`
-/

namespace A301199.P4784824062244067712
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n + 2) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301199.P4784824062244067712

/-! ## A301199.P17241886779437057504

`∑[∑[∑{e}[A167808(3*n+2)+1, #]]]`
-/

namespace A301199.P17241886779437057504
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (3 * n + 2) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301199.P17241886779437057504

/-! ## A301199.P22492220098330533

`A301201(n)+A107846(A082526(n))`
-/

namespace A301199.P22492220098330533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301201 n + A107846 (A082526 n).toNat

end

end A301199.P22492220098330533

/-! ## A301199.P1907546838951068766

`∑[∑[A023514(A369073(n+2))]]`
-/

namespace A301199.P1907546838951068766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (A369073 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301199.P1907546838951068766

