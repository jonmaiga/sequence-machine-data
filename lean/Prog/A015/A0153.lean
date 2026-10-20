import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
# A015300: 

The programs for A015300, there is no canonical definition to state claims against.
-/

/-! ## A015300.P7399162449752743271

`A015124(eq[5, A002260(n+1)])`
-/

namespace A015300.P7399162449752743271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015300.P7399162449752743271

/-! ## A015300.P14905014636180601954

`A015124(eq[4, A025581(n)])`
-/

namespace A015300.P14905014636180601954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015300.P14905014636180601954

/-!
# A015301: Inverse of 1292nd cyclotomic polynomial.

The programs for A015301, there is no canonical definition to state claims against.
-/

/-! ## A015301.P11690516121170138643

`A056594(lt[A029423(n), 6])`
-/

namespace A015301.P11690516121170138643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015301.P11690516121170138643

/-! ## A015301.P10748629467587623779

`A015573(n)%A260651(n+2)`
-/

namespace A015301.P10748629467587623779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015573 n) (A260651 (n + 2))

end

end A015301.P10748629467587623779

/-! ## A015301.P10140664932188610287

`A015981(n)%A260651(n+2)`
-/

namespace A015301.P10140664932188610287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015981 n) (A260651 (n + 2))

end

end A015301.P10140664932188610287

/-! ## A015301.P11938489785452973462

`A016117(n)%A260651(n+2)`
-/

namespace A015301.P11938489785452973462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016117 n) (A260651 (n + 2))

end

end A015301.P11938489785452973462

/-! ## A015301.P10689114972871769759

`A056594(lt[A077916(n), A055689(n+1)])`
-/

namespace A015301.P10689114972871769759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015301.P10689114972871769759

/-!
# A015302: 

The programs for A015302, there is no canonical definition to state claims against.
-/

/-! ## A015302.P15563131047623395654

`A015125(A167614(n+3)+1)`
-/

namespace A015302.P15563131047623395654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (A167614 (n + 3) + 1).toNat

end

end A015302.P15563131047623395654

/-! ## A015302.P5007844227885761575

`A015125(∑[n+5]+5)`
-/

namespace A015302.P5007844227885761575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A015302.P5007844227885761575

/-!
# A015303: 

The programs for A015303, there is no canonical definition to state claims against.
-/

/-! ## A015303.P5288835923494035099

`A015129(A167614(n+3)+1)`
-/

namespace A015303.P5288835923494035099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (A167614 (n + 3) + 1).toNat

end

end A015303.P5288835923494035099

/-! ## A015303.P8950696881114675983

`A015129(eq[5, A002260(n+1)])`
-/

namespace A015303.P8950696881114675983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015303.P8950696881114675983

/-! ## A015303.P631936332077862794

`A015129(eq[7, A066657(n+1)])`
-/

namespace A015303.P631936332077862794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015303.P631936332077862794

/-! ## A015303.P16974427950642061369

`A015129(A253145(n+3)+n)`
-/

namespace A015303.P16974427950642061369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (A253145 (n + 3) + (n : ℤ)).toNat

end

end A015303.P16974427950642061369

/-! ## A015303.P17358668350960854484

`A015129(A055999(n+3)-(n+5))`
-/

namespace A015303.P17358668350960854484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (A055999 (n + 3) - (n + 5 : ℤ)).toNat

end

end A015303.P17358668350960854484

/-!
# A015304: Inverse of 1295th cyclotomic polynomial.

The programs for A015304, there is no canonical definition to state claims against.
-/

/-! ## A015304.P10804328686535015929

`A015444(A175427(n+1))`
-/

namespace A015304.P10804328686535015929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015444 (A175427 (n + 1)).toNat

end

end A015304.P10804328686535015929

/-!
# A015305: Gaussian binomial coefficient [ n,5 ] for q = -2.

The programs for A015305, there is no canonical definition to state claims against.
-/

/-! ## A015305.P5537970047443704130

`A015109(eq[5, A002262(n)])`
-/

namespace A015305.P5537970047443704130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015305.P5537970047443704130

/-! ## A015305.P9932680758054365907

`A015109(eq[6, A002260(n+1)])`
-/

namespace A015305.P9932680758054365907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015305.P9932680758054365907

/-! ## A015305.P17094422322826276648

`A015109(A055999(n+3))`
-/

namespace A015305.P17094422322826276648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (A055999 (n + 3)).toNat

end

end A015305.P17094422322826276648

/-! ## A015305.P16977118982888454579

`A015109(eq[11, A099375(n)])`
-/

namespace A015305.P16977118982888454579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015305.P16977118982888454579

/-! ## A015305.P17606437249934308443

`A015109(A000124(n+6)-7)`
-/

namespace A015305.P17606437249934308443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (A000124 (n + 6) - 7).toNat

end

end A015305.P17606437249934308443

/-!
# A015306: Gaussian binomial coefficient [ n,5 ] for q = -3.

The programs for A015306, there is no canonical definition to state claims against.
-/

/-! ## A015306.P17569766990983281462

`A015110(A167499(n+4))`
-/

namespace A015306.P17569766990983281462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (A167499 (n + 4)).toNat

end

end A015306.P17569766990983281462

/-! ## A015306.P6917076895633793570

`A015110(eq[6, A002260(n+1)])`
-/

namespace A015306.P6917076895633793570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015306.P6917076895633793570

/-! ## A015306.P13290278557368345922

`A015110(A055999(n+3))`
-/

namespace A015306.P13290278557368345922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (A055999 (n + 3)).toNat

end

end A015306.P13290278557368345922

/-! ## A015306.P11155118965389301121

`A015110(eq[5, A025581(n)])`
-/

namespace A015306.P11155118965389301121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015306.P11155118965389301121

/-! ## A015306.P16069153880828214703

`A015110(eq[6, A004736(n+1)])`
-/

namespace A015306.P16069153880828214703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015306.P16069153880828214703

/-!
# A015307: Inverse of 1298th cyclotomic polynomial.

The programs for A015307, there is no canonical definition to state claims against.
-/

/-! ## A015307.P6758409696228426048

`(A004442(n)-n)*A014658(n)`
-/

namespace A015307.P6758409696228426048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A014658 n

end

end A015307.P6758409696228426048

/-! ## A015307.P10675400940671529282

`A010815(2^∑{digits}[n, #%C(n, #)])^n`
-/

namespace A015307.P10675400940671529282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) ^ n

end

end A015307.P10675400940671529282

/-! ## A015307.P10361749627380462519

`A016275(n)^A007088(A008459(n))`
-/

namespace A015307.P10361749627380462519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A007088 (A008459 n).toNat : ℤ)

end

end A015307.P10361749627380462519

/-! ## A015307.P9630161211633604861

`(A055642(A025522(n+4))-3)^n`
-/

namespace A015307.P9630161211633604861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055642 (A025522 (n + 4)).toNat - 3) ^ n

end

end A015307.P9630161211633604861

/-! ## A015307.P17822359575819188457

`A015351(n)^n^n`
-/

namespace A015307.P17822359575819188457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015351 n ^ n ^ n

end

end A015307.P17822359575819188457

/-! ## A015307.P8266897354464318296

`A015483(n)^n^n`
-/

namespace A015307.P8266897354464318296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015483 n ^ n ^ n

end

end A015307.P8266897354464318296

/-! ## A015307.P2608956819444408676

`A015571(n)^n^n`
-/

namespace A015307.P2608956819444408676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015571 n ^ n ^ n

end

end A015307.P2608956819444408676

/-! ## A015307.P2312617527051918026

`A015615(n)^n^n`
-/

namespace A015307.P2312617527051918026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015615 n ^ n ^ n

end

end A015307.P2312617527051918026

/-! ## A015307.P9210660945026792749

`A015747(n)^n^n`
-/

namespace A015307.P9210660945026792749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015747 n ^ n ^ n

end

end A015307.P9210660945026792749

/-! ## A015307.P5570636185865568872

`A015835(n)^n^n`
-/

namespace A015307.P5570636185865568872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015835 n ^ n ^ n

end

end A015307.P5570636185865568872

/-!
# A015308: Gaussian binomial coefficient [ n,5 ] for q = -4.

The programs for A015308, there is no canonical definition to state claims against.
-/

/-! ## A015308.P6362726260037085208

`A015112(eq[6, A002260(n+1)])`
-/

namespace A015308.P6362726260037085208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015308.P6362726260037085208

/-! ## A015308.P13266700300025823541

`A015112(eq[5, A025581(n)])`
-/

namespace A015308.P13266700300025823541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015308.P13266700300025823541

/-! ## A015308.P9235993011850665480

`A015112(A000124(n+6)-7)`
-/

namespace A015308.P9235993011850665480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (A000124 (n + 6) - 7).toNat

end

end A015308.P9235993011850665480

/-!
# A015309: Gaussian binomial coefficient [ n,5 ] for q = -5.

The programs for A015309, there is no canonical definition to state claims against.
-/

/-! ## A015309.P7834924201049452310

`A015113(eq[6, A002260(n+1)])`
-/

namespace A015309.P7834924201049452310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015309.P7834924201049452310

/-! ## A015309.P2811827314379437390

`A015113(eq[11, A099375(n)])`
-/

namespace A015309.P2811827314379437390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015309.P2811827314379437390

/-! ## A015309.P11728075858177760000

`A015113(A000124(n+6)-7)`
-/

namespace A015309.P11728075858177760000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (A000124 (n + 6) - 7).toNat

end

end A015309.P11728075858177760000

/-!
# A015310: Gaussian binomial coefficient [ n,5 ] for q = -6.

The programs for A015310, there is no canonical definition to state claims against.
-/

/-! ## A015310.P2228344545004247792

`A015116(eq[5, A002262(n)])`
-/

namespace A015310.P2228344545004247792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015310.P2228344545004247792

/-! ## A015310.P17588372564602157012

`A015116(eq[6, A002260(n+1)])`
-/

namespace A015310.P17588372564602157012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015310.P17588372564602157012

/-! ## A015310.P17989701617584242625

`A015116(A000124(n+6)-7)`
-/

namespace A015310.P17989701617584242625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (A000124 (n + 6) - 7).toNat

end

end A015310.P17989701617584242625

/-!
# A015311: Inverse of 1302nd cyclotomic polynomial.

The programs for A015311, there is no canonical definition to state claims against.
-/

/-! ## A015311.P3616733163291006607

`A014660(n)*A033999(n)`
-/

namespace A015311.P3616733163291006607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014660 n * A033999 n

end

end A015311.P3616733163291006607

/-! ## A015311.P6195406282958323763

`A015227(A274933(n+1))`
-/

namespace A015311.P6195406282958323763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015227 (A274933 (n + 1)).toNat

end

end A015311.P6195406282958323763

/-! ## A015311.P16562353884407093453

`A015731(A182049(n+1))`
-/

namespace A015311.P16562353884407093453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015731 (A182049 (n + 1)).toNat

end

end A015311.P16562353884407093453

/-! ## A015311.P7784378957569525718

`A015563(n)%A322348(n)`
-/

namespace A015311.P7784378957569525718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015563 n) (A322348 n)

end

end A015311.P7784378957569525718

/-! ## A015311.P15077705890452565581

`A015731(n)%A322348(n)`
-/

namespace A015311.P15077705890452565581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015731 n) (A322348 n)

end

end A015311.P15077705890452565581

/-!
# A015312: 

The programs for A015312, there is no canonical definition to state claims against.
-/

/-! ## A015312.P186650727857503641

`A015117(eq[5, A002262(n)])`
-/

namespace A015312.P186650727857503641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015312.P186650727857503641

/-! ## A015312.P4199975427434349792

`A015117(eq[5, A025581(n)])`
-/

namespace A015312.P4199975427434349792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015312.P4199975427434349792

/-! ## A015312.P4945779905399023018

`A015117(eq[6, A193739(n)])`
-/

namespace A015312.P4945779905399023018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015312.P4945779905399023018

/-! ## A015312.P12115024653685586504

`A015117(A000124(n+6)-7)`
-/

namespace A015312.P12115024653685586504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (A000124 (n + 6) - 7).toNat

end

end A015312.P12115024653685586504

/-!
# A015313: 

The programs for A015313, there is no canonical definition to state claims against.
-/

/-! ## A015313.P12489585127411343301

`A015118(eq[6, A002260(n+1)])`
-/

namespace A015313.P12489585127411343301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015313.P12489585127411343301

/-! ## A015313.P1177040066343076425

`A015118(A052905(n+3)-1)`
-/

namespace A015313.P1177040066343076425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (A052905 (n + 3) - 1).toNat

end

end A015313.P1177040066343076425

/-! ## A015313.P4163468912102174835

`A015118(A000124(n+6)-7)`
-/

namespace A015313.P4163468912102174835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (A000124 (n + 6) - 7).toNat

end

end A015313.P4163468912102174835

/-!
# A015314: Inverse of 1305th cyclotomic polynomial.

The programs for A015314, there is no canonical definition to state claims against.
-/

/-! ## A015314.P14159876500377676620

`A015854(∑[A225654(n+1)])`
-/

namespace A015314.P14159876500377676620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015854 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015314.P14159876500377676620

/-! ## A015314.P7611476131856207159

`A320742(A333226(n+1))+A016124(n)`
-/

namespace A015314.P7611476131856207159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (A333226 (n + 1)).toNat + A016124 n

end

end A015314.P7611476131856207159

/-! ## A015314.P13596559635152430597

`A016124(n)*A051424(A320742(n+1))`
-/

namespace A015314.P13596559635152430597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 n * A051424 (A320742 (n + 1)).toNat

end

end A015314.P13596559635152430597

/-! ## A015314.P8793536702003252895

`A016124(n)^A051424(A374966(n))`
-/

namespace A015314.P8793536702003252895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A051424 (A374966 n).toNat : ℤ)

end

end A015314.P8793536702003252895

/-! ## A015314.P2017151472421946384

`A016124(n)^A384047(A127576(2*n+3))`
-/

namespace A015314.P2017151472421946384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A384047 (A127576 (2 * n + 3)).toNat : ℤ)

end

end A015314.P2017151472421946384

/-! ## A015314.P9067190461831964581

`A016124(n)*A384047(A034856(2*(n+1)))`
-/

namespace A015314.P9067190461831964581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 n * A384047 (A034856 (2 * (n + 1))).toNat

end

end A015314.P9067190461831964581

/-! ## A015314.P7086797511279535184

`A016124(n)^A000040(A296911(n))`
-/

namespace A015314.P7086797511279535184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A000040 (A296911 n).toNat : ℤ)

end

end A015314.P7086797511279535184

/-! ## A015314.P8366516840609950242

`A016124(n)^A257333(A296911(n)+1)`
-/

namespace A015314.P8366516840609950242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A257333 (A296911 n + 1).toNat : ℤ)

end

end A015314.P8366516840609950242

/-! ## A015314.P17143782069683047378

`A016124(n)^A267009(A296911(n)+1)`
-/

namespace A015314.P17143782069683047378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A267009 (A296911 n + 1).toNat : ℤ)

end

end A015314.P17143782069683047378

/-! ## A015314.P18261295202663500531

`A016124(n)^A280967(A296911(n)+1)`
-/

namespace A015314.P18261295202663500531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A280967 (A296911 n + 1).toNat : ℤ)

end

end A015314.P18261295202663500531

/-!
# A015315: 

The programs for A015315, there is no canonical definition to state claims against.
-/

/-! ## A015315.P5115143387774124127

`A015121(eq[6, A002260(n+1)])`
-/

namespace A015315.P5115143387774124127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015315.P5115143387774124127

/-! ## A015315.P9625235113042055506

`A015121(eq[5, A025581(n)])`
-/

namespace A015315.P9625235113042055506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015315.P9625235113042055506

/-! ## A015315.P2897153891932299715

`A015121(A000124(n+6)-7)`
-/

namespace A015315.P2897153891932299715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (A000124 (n + 6) - 7).toNat

end

end A015315.P2897153891932299715

/-!
# A015316: 

The programs for A015316, there is no canonical definition to state claims against.
-/

/-! ## A015316.P10542625458395925382

`A015123(eq[6, A002260(n+1)])`
-/

namespace A015316.P10542625458395925382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015316.P10542625458395925382

/-!
# A015317: 

The programs for A015317, there is no canonical definition to state claims against.
-/

/-! ## A015317.P7783563873176277462

`A015124(eq[6, A002260(n+1)])`
-/

namespace A015317.P7783563873176277462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015317.P7783563873176277462

/-! ## A015317.P2993168681338527029

`A015124(eq[5, A025581(n)])`
-/

namespace A015317.P2993168681338527029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015317.P2993168681338527029

/-! ## A015317.P13590283846097343833

`A015124(eq[6, A193739(n)])`
-/

namespace A015317.P13590283846097343833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015317.P13590283846097343833

/-!
# A015318: Inverse of 1309th cyclotomic polynomial.

The programs for A015318, there is no canonical definition to state claims against.
-/

/-! ## A015318.P3872651405127617307

`Δ[A266968(A018231(n+1))%2]`
-/

namespace A015318.P3872651405127617307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266968 (A018231 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015318.P3872651405127617307

/-! ## A015318.P9560301671987512396

`A016358(A036779(n+1))`
-/

namespace A015318.P9560301671987512396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016358 (A036779 (n + 1)).toNat

end

end A015318.P9560301671987512396

/-! ## A015318.P10722052328534212206

`Δ[A156731(∑[A016496(2*(n+1))])]`
-/

namespace A015318.P10722052328534212206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016496 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156731 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015318.P10722052328534212206

/-! ## A015318.P4471663077874992322

`Δ[A078880(∑[A191206(3*n+2)])]`
-/

namespace A015318.P4471663077874992322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191206 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015318.P4471663077874992322

/-!
# A015319: 

The programs for A015319, there is no canonical definition to state claims against.
-/

/-! ## A015319.P18178811303789613050

`A015125(A000096(n+4)+6)`
-/

namespace A015319.P18178811303789613050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (A000096 (n + 4) + 6).toNat

end

end A015319.P18178811303789613050

/-! ## A015319.P14712511429752862268

`A015125(eq[6, A002260(n+1)])`
-/

namespace A015319.P14712511429752862268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015319.P14712511429752862268

/-! ## A015319.P10074880119223564288

`A015125(eq[6, A193739(n)])`
-/

namespace A015319.P10074880119223564288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015319.P10074880119223564288

/-!
# A015320: Inverse of 1311th cyclotomic polynomial.

The programs for A015320, there is no canonical definition to state claims against.
-/

/-! ## A015320.P12191003598502530458

`A011652(n)*A015711(n)`
-/

namespace A015320.P12191003598502530458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011652 n * A015711 n

end

end A015320.P12191003598502530458

/-! ## A015320.P6567445654031893557

`A011652(n)*A015895(n)`
-/

namespace A015320.P6567445654031893557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011652 n * A015895 n

end

end A015320.P6567445654031893557

/-! ## A015320.P5267629732774759113

`A011652(n)*A015987(n)`
-/

namespace A015320.P5267629732774759113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011652 n * A015987 n

end

end A015320.P5267629732774759113

/-! ## A015320.P3522813453889674284

`A011652(n)*A016171(n)`
-/

namespace A015320.P3522813453889674284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011652 n * A016171 n

end

end A015320.P3522813453889674284

/-! ## A015320.P1488998514395763141

`A106510(lt[A185316(n), n+1])`
-/

namespace A015320.P1488998514395763141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015320.P1488998514395763141

/-!
# A015321: 

The programs for A015321, there is no canonical definition to state claims against.
-/

/-! ## A015321.P5002798964935151053

`A015129(A055999(n+3))`
-/

namespace A015321.P5002798964935151053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (A055999 (n + 3)).toNat

end

end A015321.P5002798964935151053

/-! ## A015321.P3329125201533532166

`A015129(A000124(n+6)-7)`
-/

namespace A015321.P3329125201533532166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (A000124 (n + 6) - 7).toNat

end

end A015321.P3329125201533532166

/-!
# A015322: Inverse of 1313th cyclotomic polynomial.

The programs for A015322, there is no canonical definition to state claims against.
-/

/-! ## A015322.P13235045632019369195

`floor(sqrt((n+1)/A324744(n)))`
-/

namespace A015322.P13235045632019369195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1 : ℚ) / (A324744 n : ℚ) : ℝ)⌋

end

end A015322.P13235045632019369195

/-! ## A015322.P17800097335039002168

`round(sqrt((n+1)/A088314(n)))`
-/

namespace A015322.P17800097335039002168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℚ) / (A088314 n : ℚ) : ℝ))

end

end A015322.P17800097335039002168

/-! ## A015322.P4036930551764041904

`C(ceil(n/98), ∑[A125005(n+5)])`
-/

namespace A015322.P4036930551764041904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 98⌉.toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015322.P4036930551764041904

/-! ## A015322.P8436218190798809377

`floor(A093694(n)/A143823(n))`
-/

namespace A015322.P8436218190798809377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093694 n : ℚ) / (A143823 n : ℚ)⌋

end

end A015322.P8436218190798809377

/-! ## A015322.P3712428077916845006

`A320659(∑[char[A038604(2*n+5)]]²+1)`
-/

namespace A015322.P3712428077916845006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (2 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320659 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1)

end

end A015322.P3712428077916845006

/-! ## A015322.P10122979671789573524

`A057427(A162207(n)*A325683(n))`
-/

namespace A015322.P10122979671789573524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A162207 n * A325683 n).toNat

end

end A015322.P10122979671789573524

/-! ## A015322.P4893769170366494455

`A010060(round(A130883(n)/A143823(n)))`
-/

namespace A015322.P4893769170366494455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.roundAway ((A130883 n : ℚ) / (A143823 n : ℚ))).toNat

end

end A015322.P4893769170366494455

/-! ## A015322.P10688669684719786575

`A030101(round(A130883(n)/A143823(n)))`
-/

namespace A015322.P10688669684719786575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A130883 n : ℚ) / (A143823 n : ℚ))).toNat

end

end A015322.P10688669684719786575

/-! ## A015322.P7205331837836310676

`A366284(C(A171941(n+1), A326525(n)))`
-/

namespace A015322.P7205331837836310676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366284 (Nat.choose (A171941 (n + 1)).toNat (A326525 n).toNat)

end

end A015322.P7205331837836310676

/-! ## A015322.P9997476571312442079

`C(A262163((n+1)*(2-A001285(n))), A026816(n))`
-/

namespace A015322.P9997476571312442079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A262163 ((n + 1 : ℤ) * (2 - A001285 n)).toNat).toNat (A026816 n).toNat

end

end A015322.P9997476571312442079

/-! ## A015322.P4881401216522411266

`C(A262163((n+1)*A254651(2*n)), A026816(n))`
-/

namespace A015322.P4881401216522411266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A262163 ((n + 1 : ℤ) * A254651 (2 * n)).toNat).toNat (A026816 n).toNat

end

end A015322.P4881401216522411266

/-! ## A015322.P18182651937478282276

`C(A090620(A283305(n+1)), A090620(n))`
-/

namespace A015322.P18182651937478282276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090620 (A283305 (n + 1)).toNat).toNat (A090620 n).toNat

end

end A015322.P18182651937478282276

/-!
# A015323: Gaussian binomial coefficient [ n,6 ] for q = -2.

The programs for A015323, there is no canonical definition to state claims against.
-/

/-! ## A015323.P51611131162883188

`∑[lcm(A000079(n), A015305(n+5))]`
-/

namespace A015323.P51611131162883188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A015305 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015323.P51611131162883188

/-! ## A015323.P6502868523809913034

`A015109(eq[6, A002262(n)])`
-/

namespace A015323.P6502868523809913034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015323.P6502868523809913034

/-! ## A015323.P2339407849843870796

`A015109(eq[7, A002260(n+1)])`
-/

namespace A015323.P2339407849843870796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015323.P2339407849843870796

/-! ## A015323.P11494061646125791093

`A015109(eq[6, A025581(n)])`
-/

namespace A015323.P11494061646125791093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015323.P11494061646125791093

/-! ## A015323.P4908119401716233269

`A015109(eq[8, A129713(n)])`
-/

namespace A015323.P4908119401716233269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015323.P4908119401716233269

/-!
# A015324: Gaussian binomial coefficient [ n,6 ] for q = -3.

The programs for A015324, there is no canonical definition to state claims against.
-/

/-! ## A015324.P3348018706166077636

`A015110(eq[7, A002260(n+1)])`
-/

namespace A015324.P3348018706166077636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015324.P3348018706166077636

/-! ## A015324.P1308453843874974979

`A015110(A155212(n+3)+1)`
-/

namespace A015324.P1308453843874974979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (A155212 (n + 3) + 1).toNat

end

end A015324.P1308453843874974979

/-! ## A015324.P14814547594495309766

`A015110(eq[7, A004736(n+1)])`
-/

namespace A015324.P14814547594495309766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015324.P14814547594495309766

/-!
# A015325: Inverse of 1316th cyclotomic polynomial.

The programs for A015325, there is no canonical definition to state claims against.
-/

/-! ## A015325.P4432376434491228792

`A015997(n)^A000040(A270214(n))`
-/

namespace A015325.P4432376434491228792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A000040 (A270214 n).toNat : ℤ)

end

end A015325.P4432376434491228792

/-! ## A015325.P1422164432778453064

`A015493(lt[A134611(n+1), A288101(2*n+3)])`
-/

namespace A015325.P1422164432778453064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288101 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015493 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015325.P1422164432778453064

/-! ## A015325.P9758915508657322025

`A015493(lt[A179392(n+1), A355584(3*(n+1))])`
-/

namespace A015325.P9758915508657322025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015493 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015325.P9758915508657322025

/-! ## A015325.P9977971267436499339

`A015813(n)*A015838(A015837(n+1))`
-/

namespace A015325.P9977971267436499339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015813 n * A015838 (A015837 (n + 1)).toNat

end

end A015325.P9977971267436499339

/-! ## A015325.P9470967871806044564

`(a(n-1)-A382877(n+1))*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A015325.P9470967871806044564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) - A382877 (n + 1)) * a (n - 2)

end

end A015325.P9470967871806044564

/-!
# A015326: Gaussian binomial coefficient [ n,6 ] for q = -4.

The programs for A015326, there is no canonical definition to state claims against.
-/

/-! ## A015326.P2690076885233939274

`∑[lcm(4^n, A015308(n+5))]`
-/

namespace A015326.P2690076885233939274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 ^ n : ℤ) (A015308 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015326.P2690076885233939274

/-! ## A015326.P7199369186375070745

`A015112(eq[7, A002260(n+1)])`
-/

namespace A015326.P7199369186375070745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015326.P7199369186375070745

/-! ## A015326.P7800994079190045622

`A015112(eq[6, A025581(n)])`
-/

namespace A015326.P7800994079190045622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015326.P7800994079190045622

/-!
# A015327: 

The programs for A015327, there is no canonical definition to state claims against.
-/

/-! ## A015327.P13415782736871912062

`A015113(eq[7, A002260(n+1)])`
-/

namespace A015327.P13415782736871912062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015327.P13415782736871912062

/-!
# A015329: Inverse of 1320th cyclotomic polynomial.

The programs for A015329, there is no canonical definition to state claims against.
-/

/-! ## A015329.P5663795023384585787

`A014669(gcd(n, ∑[n]))`
-/

namespace A015329.P5663795023384585787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015329.P5663795023384585787

/-! ## A015329.P6209087370161738597

`A014669(A004525(n))`
-/

namespace A015329.P6209087370161738597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A004525 n).toNat

end

end A015329.P6209087370161738597

/-! ## A015329.P6521388071256571272

`A014669(A026741(n))`
-/

namespace A015329.P6521388071256571272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A026741 n).toNat

end

end A015329.P6521388071256571272

/-! ## A015329.P12541345137761062841

`A014669(A186813(n))`
-/

namespace A015329.P12541345137761062841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A186813 n).toNat

end

end A015329.P12541345137761062841

/-! ## A015329.P10305187995417698165

`A015659(A001068(n))`
-/

namespace A015329.P10305187995417698165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015659 (A001068 n).toNat

end

end A015329.P10305187995417698165

/-! ## A015329.P17407716593313940902

`A015659(A265430(n))`
-/

namespace A015329.P17407716593313940902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015659 (A265430 n).toNat

end

end A015329.P17407716593313940902

/-! ## A015329.P14091570159262134480

`A015659(A271324(n))`
-/

namespace A015329.P14091570159262134480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015659 (A271324 n).toNat

end

end A015329.P14091570159262134480

/-! ## A015329.P9065522218207010960

`A015989(A028390(n))`
-/

namespace A015329.P9065522218207010960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A028390 n).toNat

end

end A015329.P9065522218207010960

/-! ## A015329.P1942507006142431109

`A015989(A080032(n))`
-/

namespace A015329.P1942507006142431109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A080032 n).toNat

end

end A015329.P1942507006142431109

/-! ## A015329.P5808942902425690501

`A015989(A160016(n))`
-/

namespace A015329.P5808942902425690501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A160016 n).toNat

end

end A015329.P5808942902425690501

/-! ## A015329.P16911587282679531602

`A015989(A006368(n))`
-/

namespace A015329.P16911587282679531602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A006368 n).toNat

end

end A015329.P16911587282679531602

/-! ## A015329.P14247945241644310673

`A015989(A007494(n))`
-/

namespace A015329.P14247945241644310673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A007494 n).toNat

end

end A015329.P14247945241644310673

/-! ## A015329.P5927425656749564111

`A015989(A026430(n))`
-/

namespace A015329.P5927425656749564111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A026430 n).toNat

end

end A015329.P5927425656749564111

/-! ## A015329.P17559822413604429165

`A015989(A032766(n))`
-/

namespace A015329.P17559822413604429165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A032766 n).toNat

end

end A015329.P17559822413604429165

/-! ## A015329.P14223124056974039283

`A015989(A074306(n))`
-/

namespace A015329.P14223124056974039283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A074306 n).toNat

end

end A015329.P14223124056974039283

/-! ## A015329.P15012343635222760575

`A014999(A160079(n))`
-/

namespace A015329.P15012343635222760575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014999 (A160079 n).toNat

end

end A015329.P15012343635222760575

/-! ## A015329.P5637944793744533820

`A015989(A165351(n))`
-/

namespace A015329.P5637944793744533820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A165351 n).toNat

end

end A015329.P5637944793744533820

/-!
# A015330: 

The programs for A015330, there is no canonical definition to state claims against.
-/

/-! ## A015330.P6757293461988800428

`A015117(eq[6, A025581(n)])`
-/

namespace A015330.P6757293461988800428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015330.P6757293461988800428

/-!
# A015332: 

The programs for A015332, there is no canonical definition to state claims against.
-/

/-! ## A015332.P9776674470192446145

`A015121(eq[7, A002260(n+1)])`
-/

namespace A015332.P9776674470192446145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015332.P9776674470192446145

/-! ## A015332.P13106645857699923475

`A015121(eq[6, A025581(n)])`
-/

namespace A015332.P13106645857699923475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015332.P13106645857699923475

/-!
# A015333: 

The programs for A015333, there is no canonical definition to state claims against.
-/

/-! ## A015333.P6460681421199772959

`A015123(eq[7, A002260(n+1)])`
-/

namespace A015333.P6460681421199772959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015333.P6460681421199772959

/-!
# A015334: 

The programs for A015334, there is no canonical definition to state claims against.
-/

/-! ## A015334.P6424467197234826158

`A015124(eq[7, A002260(n+1)])`
-/

namespace A015334.P6424467197234826158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015334.P6424467197234826158

/-! ## A015334.P18063972264603926344

`A015124(eq[6, A025581(n)])`
-/

namespace A015334.P18063972264603926344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015334.P18063972264603926344

/-!
# A015335: Inverse of 1326th cyclotomic polynomial.

The programs for A015335, there is no canonical definition to state claims against.
-/

/-! ## A015335.P8394524340157819566

`A014672(n)*A033999(n)`
-/

namespace A015335.P8394524340157819566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014672 n * A033999 n

end

end A015335.P8394524340157819566

/-! ## A015335.P9989752525893647828

`A010892(lt[A358521(n+1), A257537(2*n+5)])`
-/

namespace A015335.P9989752525893647828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257537 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015335.P9989752525893647828

/-! ## A015335.P13172005671215756211

`A010892(A247755(n+1)%A339153(2*(n+2)))`
-/

namespace A015335.P13172005671215756211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (Int.tmod (A247755 (n + 1)) (A339153 (2 * (n + 2)))).toNat

end

end A015335.P13172005671215756211

/-! ## A015335.P13689714211289074746

`A016350(A007090(n))`
-/

namespace A015335.P13689714211289074746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016350 (A007090 n).toNat

end

end A015335.P13689714211289074746

/-!
# A015336: 

The programs for A015336, there is no canonical definition to state claims against.
-/

/-! ## A015336.P17471307389808964344

`A015125(eq[6, A025581(n)])`
-/

namespace A015336.P17471307389808964344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015336.P17471307389808964344

/-!
# A015337: 

The programs for A015337, there is no canonical definition to state claims against.
-/

/-! ## A015337.P11271872019417631596

`A015129(eq[7, A002260(n+1)])`
-/

namespace A015337.P11271872019417631596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015337.P11271872019417631596

/-! ## A015337.P9925620940543320777

`A015129(eq[11, A066657(n+1)])`
-/

namespace A015337.P9925620940543320777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015337.P9925620940543320777

/-!
# A015338: Gaussian binomial coefficient [ n,7 ] for q = -2.

The programs for A015338, there is no canonical definition to state claims against.
-/

/-! ## A015338.P1776810919594692019

`A015109(eq[7, A002262(n)])`
-/

namespace A015338.P1776810919594692019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015338.P1776810919594692019

/-! ## A015338.P9217170884520735980

`A015109(eq[7, A025581(n)])`
-/

namespace A015338.P9217170884520735980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015338.P9217170884520735980

/-! ## A015338.P17814634624628619497

`A015109(eq[15, A099375(n)])`
-/

namespace A015338.P17814634624628619497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015338.P17814634624628619497

/-! ## A015338.P11877229119611089457

`A015109(eq[8, A004736(n+1)])`
-/

namespace A015338.P11877229119611089457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015338.P11877229119611089457

/-! ## A015338.P1602552614576821692

`A015109(eq[32, A128307(n+1)])`
-/

namespace A015338.P1602552614576821692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015338.P1602552614576821692

/-!
# A015339: Inverse of 1330th cyclotomic polynomial.

The programs for A015339, there is no canonical definition to state claims against.
-/

/-! ## A015339.P12576831215155382994

`A014674(n)*A033999(n)`
-/

namespace A015339.P12576831215155382994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014674 n * A033999 n

end

end A015339.P12576831215155382994

/-!
# A015340: Gaussian binomial coefficient [ n,7 ] for q = -3.

The programs for A015340, there is no canonical definition to state claims against.
-/

/-! ## A015340.P13934810254724888922

`A015110(eq[8, A002260(n+1)])`
-/

namespace A015340.P13934810254724888922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015340.P13934810254724888922

/-! ## A015340.P11020528349500054783

`A015110(eq[7, A025581(n)])`
-/

namespace A015340.P11020528349500054783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015340.P11020528349500054783

/-! ## A015340.P9524853278964098819

`A015110(eq[8, A004736(n+1)])`
-/

namespace A015340.P9524853278964098819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015340.P9524853278964098819

/-!
# A015341: 

The programs for A015341, there is no canonical definition to state claims against.
-/

/-! ## A015341.P10899929752280354122

`A015112(eq[8, A002260(n+1)])`
-/

namespace A015341.P10899929752280354122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015341.P10899929752280354122

/-!
# A015342: Inverse of 1333rd cyclotomic polynomial.

The programs for A015342, there is no canonical definition to state claims against.
-/

/-! ## A015342.P6742303272023829292

`A015970(A220604(A210719(n+1))+n)`
-/

namespace A015342.P6742303272023829292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A220604 (A210719 (n + 1)).toNat + (n : ℤ)).toNat

end

end A015342.P6742303272023829292

/-!
# A015343: Inverse of 1334th cyclotomic polynomial.

The programs for A015343, there is no canonical definition to state claims against.
-/

/-! ## A015343.P16324801414151654133

`A014676(n)*A033999(n)`
-/

namespace A015343.P16324801414151654133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014676 n * A033999 n

end

end A015343.P16324801414151654133

/-! ## A015343.P6589913780582414813

`A016155(A344543(n+2))`
-/

namespace A015343.P6589913780582414813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016155 (A344543 (n + 2)).toNat

end

end A015343.P6589913780582414813

/-! ## A015343.P15500006956038714679

`A015435(A175427(n+1))`
-/

namespace A015343.P15500006956038714679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015435 (A175427 (n + 1)).toNat

end

end A015343.P15500006956038714679

/-! ## A015343.P8242176563696106531

`A015987(A272269(n+1))`
-/

namespace A015343.P8242176563696106531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015987 (A272269 (n + 1)).toNat

end

end A015343.P8242176563696106531

/-! ## A015343.P5508026682487444779

`(-A358194(∑[A320742(2*n+5)]))^n`
-/

namespace A015343.P5508026682487444779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A358194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) ^ n

end

end A015343.P5508026682487444779

/-!
# A015344: 

The programs for A015344, there is no canonical definition to state claims against.
-/

/-! ## A015344.P16390815020930317032

`A015113(A253145(n+6)+7)`
-/

namespace A015344.P16390815020930317032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (A253145 (n + 6) + 7).toNat

end

end A015344.P16390815020930317032

/-! ## A015344.P12005829977427157802

`A015113(eq[8, A002260(n+1)])`
-/

namespace A015344.P12005829977427157802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015344.P12005829977427157802

/-!
# A015345: 

The programs for A015345, there is no canonical definition to state claims against.
-/

/-! ## A015345.P14312118502637694985

`A015116(eq[7, A002262(n)])`
-/

namespace A015345.P14312118502637694985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015345.P14312118502637694985

/-! ## A015345.P4127289772366484944

`A015116(eq[8, A002260(n+1)])`
-/

namespace A015345.P4127289772366484944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015345.P4127289772366484944

/-!
# A015346: 

The programs for A015346, there is no canonical definition to state claims against.
-/

/-! ## A015346.P5754460833055230823

`A015117(eq[7, A002262(n)])`
-/

namespace A015346.P5754460833055230823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015346.P5754460833055230823

/-! ## A015346.P1923458162505099767

`A015117(eq[7, A025581(n)])`
-/

namespace A015346.P1923458162505099767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015346.P1923458162505099767

/-!
# A015347: 

The programs for A015347, there is no canonical definition to state claims against.
-/

/-! ## A015347.P6236401357280668720

`A015118(eq[8, A002260(n+1)])`
-/

namespace A015347.P6236401357280668720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015347.P6236401357280668720

/-! ## A015347.P17926326565048795257

`A015118(A055998(n+6)-5)`
-/

namespace A015347.P17926326565048795257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (A055998 (n + 6) - 5).toNat

end

end A015347.P17926326565048795257

/-! ## A015347.P14668165664535969483

`A015118(eq[5, A219347(n+1)])`
-/

namespace A015347.P14668165664535969483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015347.P14668165664535969483

/-!
# A015348: Inverse of 1339th cyclotomic polynomial.

The programs for A015348, there is no canonical definition to state claims against.
-/

/-! ## A015348.P17171578588765597521

`A014922(∑[A168184(A090928(2*(n+2)))])`
-/

namespace A015348.P17171578588765597521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 (A090928 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014922 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015348.P17171578588765597521

/-! ## A015348.P9428779610246621345

`A001300(A319951(n))%2`
-/

namespace A015348.P9428779610246621345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001300 (A319951 n).toNat) 2

end

end A015348.P9428779610246621345

/-! ## A015348.P13072217856375546547

`A010052(C(A319951(n), 3))`
-/

namespace A015348.P13072217856375546547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Nat.choose (A319951 n).toNat 3)

end

end A015348.P13072217856375546547

/-! ## A015348.P7697655975118821538

`A011558(C(4, A319951(n)))`
-/

namespace A015348.P7697655975118821538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (Nat.choose 4 (A319951 n).toNat)

end

end A015348.P7697655975118821538

/-! ## A015348.P4124454516701573358

`A186727(ceil(sqrt(A319951(n))))`
-/

namespace A015348.P4124454516701573358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 ⌈Real.sqrt (A319951 n : ℝ)⌉.toNat

end

end A015348.P4124454516701573358

/-! ## A015348.P4053559301812392282

`A073423(∑[A004437(n+1)])`
-/

namespace A015348.P4053559301812392282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015348.P4053559301812392282

/-! ## A015348.P325062891222609226

`A329359(A260188(2*(n+2)))-1`
-/

namespace A015348.P325062891222609226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329359 (A260188 (2 * (n + 2))).toNat - 1

end

end A015348.P325062891222609226

/-! ## A015348.P13315743568644559554

`A124756(A260188(2*n+5)+12)`
-/

namespace A015348.P13315743568644559554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124756 (A260188 (2 * n + 5) + 12).toNat

end

end A015348.P13315743568644559554

/-! ## A015348.P4347375013056533865

`C(A124766(n+2), A349187(A029837(n+4)))`
-/

namespace A015348.P4347375013056533865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124766 (n + 2)).toNat (A349187 (A029837 (n + 4)).toNat).toNat

end

end A015348.P4347375013056533865

/-! ## A015348.P14458289566341293895

`C(A055874(A001359(2*n+3)), A049987(n+1))`
-/

namespace A015348.P14458289566341293895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055874 (A001359 (2 * n + 3)).toNat).toNat (A049987 (n + 1)).toNat

end

end A015348.P14458289566341293895

/-! ## A015348.P4034242311578433836

`C(A262163(n), A026816(n))`
-/

namespace A015348.P4034242311578433836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A262163 n).toNat (A026816 n).toNat

end

end A015348.P4034242311578433836

/-!
# A015349: 

The programs for A015349, there is no canonical definition to state claims against.
-/

/-! ## A015349.P1210740843233494105

`A015121(A253145(n+6)+7)`
-/

namespace A015349.P1210740843233494105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (A253145 (n + 6) + 7).toNat

end

end A015349.P1210740843233494105

/-! ## A015349.P16793770755021950235

`A015121(eq[8, A002260(n+1)])`
-/

namespace A015349.P16793770755021950235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015349.P16793770755021950235

/-! ## A015349.P7756580142692175745

`A015121(eq[7, A025581(n)])`
-/

namespace A015349.P7756580142692175745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015349.P7756580142692175745

/-!
# A015350: 

The programs for A015350, there is no canonical definition to state claims against.
-/

/-! ## A015350.P7297867413125717403

`A015123(eq[8, A002260(n+1)])`
-/

namespace A015350.P7297867413125717403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015350.P7297867413125717403

/-!
# A015351: Inverse of 1342nd cyclotomic polynomial.

The programs for A015351, there is no canonical definition to state claims against.
-/

/-! ## A015351.P10202510675936246699

`A014680(n)*A033999(n)`
-/

namespace A015351.P10202510675936246699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014680 n * A033999 n

end

end A015351.P10202510675936246699

/-! ## A015351.P8934857663968816730

`A016275(n)^((n+2)%A335127(n+1))`
-/

namespace A015351.P8934857663968816730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (Int.tmod (n + 2 : ℤ) (A335127 (n + 1)) : ℤ)

end

end A015351.P8934857663968816730

/-! ## A015351.P8706528175398539791

`val(A324736(n), A324697(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A015351.P8706528175398539791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (A324736 n).toNat (A324697 (n + 1)).toNat : ℤ) - a (n - 1)

end

end A015351.P8706528175398539791

/-! ## A015351.P18290160751904088273

`A016275(n)^A007088(A083064(n))`
-/

namespace A015351.P18290160751904088273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A007088 (A083064 n).toNat : ℤ)

end

end A015351.P18290160751904088273

/-! ## A015351.P18126144847478104625

`A016275(n)^(A335127(n+2)+1)`
-/

namespace A015351.P18126144847478104625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A335127 (n + 2) + 1 : ℤ)

end

end A015351.P18126144847478104625

/-! ## A015351.P18369590496624937299

`A016275(n)^A007519(A335127(n+2))`
-/

namespace A015351.P18369590496624937299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A007519 (A335127 (n + 2)).toNat : ℤ)

end

end A015351.P18369590496624937299

/-!
# A015352: Inverse of 1343rd cyclotomic polynomial.

The programs for A015352, there is no canonical definition to state claims against.
-/

/-! ## A015352.P5166110458519878072

`and(-A331247(n), a(n-1))` with `a(0)=1`
-/

namespace A015352.P5166110458519878072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (-A331247 n) (a (n - 1))

end

end A015352.P5166110458519878072

/-! ## A015352.P16892821657918315301

`A000007(∑[A192541(n+4)])`
-/

namespace A015352.P16892821657918315301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192541 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015352.P16892821657918315301

/-! ## A015352.P5791762492030088058

`A010076(C(2, A373069(n+1)))`
-/

namespace A015352.P5791762492030088058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010076 (Nat.choose 2 (A373069 (n + 1)).toNat)

end

end A015352.P5791762492030088058

/-! ## A015352.P16712789275364952513

`C(2, A087087(A326544(n+4)))`
-/

namespace A015352.P16712789275364952513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A087087 (A326544 (n + 4)).toNat).toNat

end

end A015352.P16712789275364952513

/-! ## A015352.P3761659614505073385

`C(A333627(n), ∑[A325318(n+1)])`
-/

namespace A015352.P3761659614505073385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333627 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015352.P3761659614505073385

/-! ## A015352.P9011241987180731012

`A000007(floor(A338470(n)/(2*n+5)))`
-/

namespace A015352.P9011241987180731012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(A338470 n : ℚ) / (2 * n + 5 : ℚ)⌋.toNat

end

end A015352.P9011241987180731012

/-! ## A015352.P1165976634722578865

`n+1-comp[A050688(A370638(3*n+2)+1)-1]`
-/

namespace A015352.P1165976634722578865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050688 (A370638 (3 * n + 2) + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A015352.P1165976634722578865

/-! ## A015352.P8740063590792788461

`C(A087897(n), A114994(A087897(n)))`
-/

namespace A015352.P8740063590792788461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087897 n).toNat (A114994 (A087897 n).toNat).toNat

end

end A015352.P8740063590792788461

/-! ## A015352.P17916281320755829822

`A127247(A103373(n+1)-A223730(n+5))`
-/

namespace A015352.P17916281320755829822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127247 (A103373 (n + 1) - A223730 (n + 5)).toNat

end

end A015352.P17916281320755829822

/-!
# A015353: 

The programs for A015353, there is no canonical definition to state claims against.
-/

/-! ## A015353.P8454796277512547437

`A015124(A253145(n+6)+7)`
-/

namespace A015353.P8454796277512547437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (A253145 (n + 6) + 7).toNat

end

end A015353.P8454796277512547437

/-! ## A015353.P6774946995923956687

`A015124(eq[8, A002260(n+1)])`
-/

namespace A015353.P6774946995923956687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015353.P6774946995923956687

/-! ## A015353.P10733158728486311593

`A015124(eq[7, A025581(n)])`
-/

namespace A015353.P10733158728486311593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015353.P10733158728486311593

/-!
# A015354: 

The programs for A015354, there is no canonical definition to state claims against.
-/

/-! ## A015354.P4181229943889954585

`A015125(A253145(n+6)+7)`
-/

namespace A015354.P4181229943889954585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (A253145 (n + 6) + 7).toNat

end

end A015354.P4181229943889954585

/-! ## A015354.P3009485250648942347

`A015125(eq[8, A002260(n+1)])`
-/

namespace A015354.P3009485250648942347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015354.P3009485250648942347

/-!
# A015356: Gaussian binomial coefficient [ n,8 ] for q=-2.

The programs for A015356, there is no canonical definition to state claims against.
-/

/-! ## A015356.P12256477580140198973

`A015109(eq[8, A002262(n)])`
-/

namespace A015356.P12256477580140198973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015356.P12256477580140198973

/-! ## A015356.P15698815605377853400

`A015109(A000217(n+10)-10-A005408(n))`
-/

namespace A015356.P15698815605377853400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (A000217 (n + 10) - 10 - A005408 n).toNat

end

end A015356.P15698815605377853400

/-! ## A015356.P5281454549941989090

`A015109(eq[9, A004736(n+1)])`
-/

namespace A015356.P5281454549941989090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015356.P5281454549941989090

/-! ## A015356.P5903556169552528553

`A015109(eq[64, A128307(n+1)])`
-/

namespace A015356.P5903556169552528553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015356.P5903556169552528553

/-!
# A015357: Gaussian binomial coefficient [ n,8 ] for q=-3.

The programs for A015357, there is no canonical definition to state claims against.
-/

/-! ## A015357.P16653912433317253220

`A015110(A056126(n)+44)`
-/

namespace A015357.P16653912433317253220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (A056126 n + 44).toNat

end

end A015357.P16653912433317253220

/-! ## A015357.P13661981471224880487

`A015110(eq[8, A002262(n)])`
-/

namespace A015357.P13661981471224880487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015357.P13661981471224880487

/-! ## A015357.P884319536632691393

`A015110(A000217(n+10)-10-A005408(n))`
-/

namespace A015357.P884319536632691393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (A000217 (n + 10) - 10 - A005408 n).toNat

end

end A015357.P884319536632691393

/-!
# A015358: Inverse of 1349th cyclotomic polynomial.

The programs for A015358, there is no canonical definition to state claims against.
-/

/-! ## A015358.P11429864912166357106

`A015918(lt[A071625(n+1), A235791(2*n+1)])`
-/

namespace A015358.P11429864912166357106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015358.P11429864912166357106

/-! ## A015358.P15506010855768444383

`A000007(A326688(n+1))`
-/

namespace A015358.P15506010855768444383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A326688 (n + 1)).toNat

end

end A015358.P15506010855768444383

/-! ## A015358.P18046332920527179473

`A003056(C(2, A241069(n)))`
-/

namespace A015358.P18046332920527179473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose 2 (A241069 n).toNat)

end

end A015358.P18046332920527179473

/-! ## A015358.P17362321663866384770

`A010060(C(2, A241069(n)))`
-/

namespace A015358.P17362321663866384770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose 2 (A241069 n).toNat)

end

end A015358.P17362321663866384770

/-! ## A015358.P1068834890826450382

`A071858(C(2, A241069(n)))`
-/

namespace A015358.P1068834890826450382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (Nat.choose 2 (A241069 n).toNat)

end

end A015358.P1068834890826450382

/-! ## A015358.P5648841068218102344

`A010054(∑[n]*A135661(n+5))`
-/

namespace A015358.P5648841068218102344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A135661 (n + 5)).toNat

end

end A015358.P5648841068218102344

/-! ## A015358.P2808180288098882602

`ceil(A276625(n+1)/A001358(n+1))%2`
-/

namespace A015358.P2808180288098882602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A276625 (n + 1) : ℚ) / (A001358 (n + 1) : ℚ)⌉ 2

end

end A015358.P2808180288098882602

/-! ## A015358.P1442191148657272784

`A127247(A105514(n)*A382731(n))`
-/

namespace A015358.P1442191148657272784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127247 (A105514 n * A382731 n).toNat

end

end A015358.P1442191148657272784

/-! ## A015358.P18369479154542141123

`C(A344616(A016754(n)), A105514(n))`
-/

namespace A015358.P18369479154542141123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344616 (A016754 n).toNat).toNat (A105514 n).toNat

end

end A015358.P18369479154542141123

/-! ## A015358.P11184247263184177038

`C(A001285(A336168(n)), A326548(n))`
-/

namespace A015358.P11184247263184177038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001285 (A336168 n).toNat).toNat (A326548 n).toNat

end

end A015358.P11184247263184177038

/-!
# A015362: Inverse of 1353rd cyclotomic polynomial.

The programs for A015362, there is no canonical definition to state claims against.
-/

/-! ## A015362.P16603585539937691168

`A015428(n)%A282535(n+4)`
-/

namespace A015362.P16603585539937691168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015428 n) (A282535 (n + 4))

end

end A015362.P16603585539937691168

/-! ## A015362.P503823788789396774

`A015560(n)%A282535(n+4)`
-/

namespace A015362.P503823788789396774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015560 n) (A282535 (n + 4))

end

end A015362.P503823788789396774

/-! ## A015362.P17247414873888276077

`A015758(n)%A282535(n+4)`
-/

namespace A015362.P17247414873888276077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015758 n) (A282535 (n + 4))

end

end A015362.P17247414873888276077

/-! ## A015362.P16881328248292236403

`A015956(n)%A282535(n+4)`
-/

namespace A015362.P16881328248292236403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015956 n) (A282535 (n + 4))

end

end A015362.P16881328248292236403

/-!
# A015363: 

The programs for A015363, there is no canonical definition to state claims against.
-/

/-! ## A015363.P12921413767382776380

`A015117(A000217(n+9)+n-A005408(n))`
-/

namespace A015363.P12921413767382776380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (A000217 (n + 9) + (n : ℤ) - A005408 n).toNat

end

end A015363.P12921413767382776380

/-!
# A015364: 

The programs for A015364, there is no canonical definition to state claims against.
-/

/-! ## A015364.P1353590281104821748

`A015118(A000217(n+8)+8)`
-/

namespace A015364.P1353590281104821748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (A000217 (n + 8) + 8).toNat

end

end A015364.P1353590281104821748

/-! ## A015364.P6297714434343600293

`A015118(eq[6, A219347(n+1)])`
-/

namespace A015364.P6297714434343600293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015364.P6297714434343600293

/-! ## A015364.P5578533104993021020

`A015118(A000096(n+8)-n)`
-/

namespace A015364.P5578533104993021020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (A000096 (n + 8) - (n : ℤ)).toNat

end

end A015364.P5578533104993021020

/-!
# A015366: Inverse of 1357th cyclotomic polynomial.

The programs for A015366, there is no canonical definition to state claims against.
-/

/-! ## A015366.P11651405502215264306

`A014902(A248227(n+1)+A059995(n))`
-/

namespace A015366.P11651405502215264306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 (A248227 (n + 1) + A059995 n).toNat

end

end A015366.P11651405502215264306

/-!
# A015369: 

The programs for A015369, there is no canonical definition to state claims against.
-/

/-! ## A015369.P7339260419109531840

`A015125(A000096(n+7)+9)`
-/

namespace A015369.P7339260419109531840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (A000096 (n + 7) + 9).toNat

end

end A015369.P7339260419109531840

/-!
# A015370: 

The programs for A015370, there is no canonical definition to state claims against.
-/

/-! ## A015370.P10474759225075915176

`A015129(eq[9, A002260(n+1)])`
-/

namespace A015370.P10474759225075915176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015370.P10474759225075915176

/-!
# A015371: Gaussian binomial coefficient [ n,9 ] for q=-2.

The programs for A015371, there is no canonical definition to state claims against.
-/

/-! ## A015371.P2296403081209382582

`A015109(eq[9, A025581(n)])`
-/

namespace A015371.P2296403081209382582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015371.P2296403081209382582

/-! ## A015371.P3158214073595879701

`A015109(A000217(n+10)-10)`
-/

namespace A015371.P3158214073595879701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (A000217 (n + 10) - 10).toNat

end

end A015371.P3158214073595879701

/-!
# A015372: Inverse of 1363rd cyclotomic polynomial.

The programs for A015372, there is no canonical definition to state claims against.
-/

/-! ## A015372.P9776302281461975253

`A016192(record[A008612(5*(n+1))])`
-/

namespace A015372.P9776302281461975253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015372.P9776302281461975253

/-! ## A015372.P2961403903314065369

`A015748(A225634(n)+A114460(n+1))`
-/

namespace A015372.P2961403903314065369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 (A225634 n + A114460 (n + 1)).toNat

end

end A015372.P2961403903314065369

/-! ## A015372.P15279544673696601707

`A015970(A179439(n+4)-A054899(2*n+1))`
-/

namespace A015372.P15279544673696601707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A179439 (n + 4) - A054899 (2 * n + 1)).toNat

end

end A015372.P15279544673696601707

/-!
# A015373: Inverse of 1364th cyclotomic polynomial.

The programs for A015373, there is no canonical definition to state claims against.
-/

/-! ## A015373.P5129372185485962699

`A015621(n)%A119946(n)`
-/

namespace A015373.P5129372185485962699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015621 n) (A119946 n)

end

end A015373.P5129372185485962699

/-!
# A015375: 

The programs for A015375, there is no canonical definition to state claims against.
-/

/-! ## A015375.P3837875775392594225

`A015110(A167614(n+8)+6)`
-/

namespace A015375.P3837875775392594225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (A167614 (n + 8) + 6).toNat

end

end A015375.P3837875775392594225

/-! ## A015375.P12143981587800933240

`A015110(eq[9, A025581(n)])`
-/

namespace A015375.P12143981587800933240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015375.P12143981587800933240

/-! ## A015375.P6257482658922255508

`A015110(A000217(n+9)+n)`
-/

namespace A015375.P6257482658922255508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (A000217 (n + 9) + (n : ℤ)).toNat

end

end A015375.P6257482658922255508

/-!
# A015377: 

The programs for A015377, there is no canonical definition to state claims against.
-/

/-! ## A015377.P7351951451068364366

`A015113(A167614(n+8)+6)`
-/

namespace A015377.P7351951451068364366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (A167614 (n + 8) + 6).toNat

end

end A015377.P7351951451068364366

/-!
# A015378: 

The programs for A015378, there is no canonical definition to state claims against.
-/

/-! ## A015378.P5942358806684281557

`A015116(eq[9, A002262(n)])`
-/

namespace A015378.P5942358806684281557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015378.P5942358806684281557

/-! ## A015378.P2931568671363578158

`A015116(A167614(n+8)+6)`
-/

namespace A015378.P2931568671363578158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (A167614 (n + 8) + 6).toNat

end

end A015378.P2931568671363578158

/-!
# A015380: 

The programs for A015380, there is no canonical definition to state claims against.
-/

/-! ## A015380.P17730043347723149709

`A015118(A167614(n+8)+6)`
-/

namespace A015380.P17730043347723149709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (A167614 (n + 8) + 6).toNat

end

end A015380.P17730043347723149709

/-! ## A015380.P17700803296768880706

`A015118(A000096(n+8)+1+n)`
-/

namespace A015380.P17700803296768880706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (A000096 (n + 8) + 1 + (n : ℤ)).toNat

end

end A015380.P17700803296768880706

/-!
# A015384: 

The programs for A015384, there is no canonical definition to state claims against.
-/

/-! ## A015384.P14773462905029380966

`A015125(A167614(n+8)+6)`
-/

namespace A015384.P14773462905029380966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (A167614 (n + 8) + 6).toNat

end

end A015384.P14773462905029380966

/-!
# A015385: 

The programs for A015385, there is no canonical definition to state claims against.
-/

/-! ## A015385.P14170499976225446093

`A015129(eq[10, A002260(n+1)])`
-/

namespace A015385.P14170499976225446093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015385.P14170499976225446093

/-!
# A015386: Gaussian binomial coefficient [ n,10 ] for q=-2.

The programs for A015386, there is no canonical definition to state claims against.
-/

/-! ## A015386.P569739843928730356

`∑[lcm(2^n, A015371(n+9))]`
-/

namespace A015386.P569739843928730356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A015371 (n + 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015386.P569739843928730356

/-!
# A015387: Inverse of 1378th cyclotomic polynomial.

The programs for A015387, there is no canonical definition to state claims against.
-/

/-! ## A015387.P4976440941255017964

`(A004442(n)-n)*A014698(n)`
-/

namespace A015387.P4976440941255017964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A014698 n

end

end A015387.P4976440941255017964

/-! ## A015387.P2998785602489460181

`A014995(A024641(n))`
-/

namespace A015387.P2998785602489460181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014995 (A024641 n).toNat

end

end A015387.P2998785602489460181

/-! ## A015387.P14664613094899197486

`A015543(n)%A157439(n)`
-/

namespace A015387.P14664613094899197486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015543 n) (A157439 n)

end

end A015387.P14664613094899197486

/-! ## A015387.P10701045243369819668

`A015595(n)%A157439(n)`
-/

namespace A015387.P10701045243369819668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015595 n) (A157439 n)

end

end A015387.P10701045243369819668

/-! ## A015387.P16169928061588880437

`A015751(n)%A157439(n)`
-/

namespace A015387.P16169928061588880437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015751 n) (A157439 n)

end

end A015387.P16169928061588880437

/-!
# A015389: Inverse of 1380th cyclotomic polynomial.

The programs for A015389, there is no canonical definition to state claims against.
-/

/-! ## A015389.P12715937009465201272

`A016079(A006368(n))`
-/

namespace A015389.P12715937009465201272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 (A006368 n).toNat

end

end A015389.P12715937009465201272

/-! ## A015389.P14412882825473161020

`A016079(A007494(n))`
-/

namespace A015389.P14412882825473161020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 (A007494 n).toNat

end

end A015389.P14412882825473161020

/-! ## A015389.P2663707097584695668

`A016079(A026430(n))`
-/

namespace A015389.P2663707097584695668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 (A026430 n).toNat

end

end A015389.P2663707097584695668

/-! ## A015389.P14224881199959121463

`A016079(A032766(n))`
-/

namespace A015389.P14224881199959121463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 (A032766 n).toNat

end

end A015389.P14224881199959121463

/-! ## A015389.P6364693407572570409

`A016079(A074306(n))`
-/

namespace A015389.P6364693407572570409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 (A074306 n).toNat

end

end A015389.P6364693407572570409

/-! ## A015389.P13658802123528045153

`A016079(A367806(n))`
-/

namespace A015389.P13658802123528045153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 (A367806 n).toNat

end

end A015389.P13658802123528045153

/-! ## A015389.P7982433874073754262

`A016079(A047229(n+1))`
-/

namespace A015389.P7982433874073754262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 (A047229 (n + 1)).toNat

end

end A015389.P7982433874073754262

/-! ## A015389.P9549611472337196695

`A016079(A047273(n+1))`
-/

namespace A015389.P9549611472337196695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 (A047273 (n + 1)).toNat

end

end A015389.P9549611472337196695

/-! ## A015389.P8452891539345257467

`A016079(A168197(n+1))`
-/

namespace A015389.P8452891539345257467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 (A168197 (n + 1)).toNat

end

end A015389.P8452891539345257467

/-!
# A015392: 

The programs for A015392, there is no canonical definition to state claims against.
-/

/-! ## A015392.P13948320294530697055

`A015116(eq[10, A002262(n)])`
-/

namespace A015392.P13948320294530697055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015392.P13948320294530697055

/-!
# A015393: 

The programs for A015393, there is no canonical definition to state claims against.
-/

/-! ## A015393.P2521230867250214450

`A015117(eq[10, A002262(n)])`
-/

namespace A015393.P2521230867250214450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015393.P2521230867250214450

/-! ## A015393.P15398747760917412859

`A015117(eq[10, A025581(n)])`
-/

namespace A015393.P15398747760917412859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015393.P15398747760917412859

/-!
# A015395: Inverse of 1386th cyclotomic polynomial.

The programs for A015395, there is no canonical definition to state claims against.
-/

/-! ## A015395.P9057638620024273806

`A014933(round(2*n/3))`
-/

namespace A015395.P9057638620024273806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A015395.P9057638620024273806

/-! ## A015395.P11774955222775119437

`A010892(n)*A014702(n)`
-/

namespace A015395.P11774955222775119437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014702 n

end

end A015395.P11774955222775119437

/-! ## A015395.P12937009612766785729

`A014702(n)*A033999(n)`
-/

namespace A015395.P12937009612766785729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A033999 n

end

end A015395.P12937009612766785729

/-! ## A015395.P14266639766901937869

`A014702(n)*A057079(n)`
-/

namespace A015395.P14266639766901937869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A057079 n

end

end A015395.P14266639766901937869

/-! ## A015395.P10076459632021280451

`A014702(n)*A081729(n)`
-/

namespace A015395.P10076459632021280451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A081729 n

end

end A015395.P10076459632021280451

/-! ## A015395.P12839378863265902777

`A014702(n)*A101676(n)`
-/

namespace A015395.P12839378863265902777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A101676 n

end

end A015395.P12839378863265902777

/-! ## A015395.P10874571097739545352

`A014702(n)*A103368(n)`
-/

namespace A015395.P10874571097739545352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A103368 n

end

end A015395.P10874571097739545352

/-! ## A015395.P3584042795816364197

`A014702(n)*A117373(n)`
-/

namespace A015395.P3584042795816364197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A117373 n

end

end A015395.P3584042795816364197

/-! ## A015395.P3784887894900850438

`A014702(n)*A117378(n)`
-/

namespace A015395.P3784887894900850438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A117378 n

end

end A015395.P3784887894900850438

/-! ## A015395.P11292821130259115147

`A014702(n)*A128213(n)`
-/

namespace A015395.P11292821130259115147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A128213 n

end

end A015395.P11292821130259115147

/-! ## A015395.P2601788672161326177

`A014702(n)*A130151(n)`
-/

namespace A015395.P2601788672161326177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A130151 n

end

end A015395.P2601788672161326177

/-! ## A015395.P5224046122310837707

`A014702(n)*A130806(n)`
-/

namespace A015395.P5224046122310837707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A130806 n

end

end A015395.P5224046122310837707

/-! ## A015395.P17781667467758192759

`A014702(n)*A130815(n)`
-/

namespace A015395.P17781667467758192759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A130815 n

end

end A015395.P17781667467758192759

/-! ## A015395.P13048793375663698212

`A014702(n)*A131017(n)`
-/

namespace A015395.P13048793375663698212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A131017 n

end

end A015395.P13048793375663698212

/-! ## A015395.P14142122095492151992

`A014702(n)*A131556(n)`
-/

namespace A015395.P14142122095492151992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A131556 n

end

end A015395.P14142122095492151992

/-! ## A015395.P11144281434670677897

`A014702(n)*A131714(n)`
-/

namespace A015395.P11144281434670677897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A131714 n

end

end A015395.P11144281434670677897

/-! ## A015395.P1034599236625705889

`A014702(n)*A132367(n)`
-/

namespace A015395.P1034599236625705889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A132367 n

end

end A015395.P1034599236625705889

/-! ## A015395.P12261213175127418610

`A014702(n)*A132419(n)`
-/

namespace A015395.P12261213175127418610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A132419 n

end

end A015395.P12261213175127418610

/-! ## A015395.P144059709317600898

`A014702(n)*A132951(n)`
-/

namespace A015395.P144059709317600898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A132951 n

end

end A015395.P144059709317600898

/-! ## A015395.P10630782490001730993

`A014702(n)*A132954(n)`
-/

namespace A015395.P10630782490001730993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014702 n * A132954 n

end

end A015395.P10630782490001730993

/-!
# A015396: Inverse of 1387th cyclotomic polynomial.

The programs for A015396, there is no canonical definition to state claims against.
-/

/-! ## A015396.P17486911979720280668

`A015918(A276783(n)-n)`
-/

namespace A015396.P17486911979720280668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 (A276783 n - (n : ℤ)).toNat

end

end A015396.P17486911979720280668

/-! ## A015396.P1049620068342980414

`A000007(4*A326684(n+1))`
-/

namespace A015396.P1049620068342980414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (4 * A326684 (n + 1)).toNat

end

end A015396.P1049620068342980414

/-! ## A015396.P9635635028730347797

`C(2, A241690(A000720(3*n+4)))`
-/

namespace A015396.P9635635028730347797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A241690 (A000720 (3 * n + 4)).toNat).toNat

end

end A015396.P9635635028730347797

/-! ## A015396.P3946669308211897931

`∑[A232714(∑[A052405(3*n+1)])]`
-/

namespace A015396.P3946669308211897931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232714 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015396.P3946669308211897931

/-! ## A015396.P14649670070111590878

`ceil(2/A113320(A116371(n+1)))-1`
-/

namespace A015396.P14649670070111590878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A113320 (A116371 (n + 1)).toNat : ℚ)⌉ - 1

end

end A015396.P14649670070111590878

/-! ## A015396.P9794222299452123002

`round(A156261(n+4)/A067080(n+1))`
-/

namespace A015396.P9794222299452123002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A156261 (n + 4) : ℚ) / (A067080 (n + 1) : ℚ))

end

end A015396.P9794222299452123002

/-! ## A015396.P3669601054545233019

`A353380(A308791(n+1)-a(n-1))` with `a(0)=1`
-/

namespace A015396.P3669601054545233019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A353380 (A308791 (n + 1) - a (n - 1)).toNat

end

end A015396.P3669601054545233019

/-! ## A015396.P11177432833415809305

`C(A017884(n), A007088(A017884(n)))`
-/

namespace A015396.P11177432833415809305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A017884 n).toNat (A007088 (A017884 n).toNat).toNat

end

end A015396.P11177432833415809305

/-! ## A015396.P8650786350763451468

`A015972(A334742(n+1)-A074080(n))`
-/

namespace A015396.P8650786350763451468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015972 (A334742 (n + 1) - A074080 n).toNat

end

end A015396.P8650786350763451468

/-! ## A015396.P16899942475274013817

`A015936(A329638(n+1))*A015966(n)`
-/

namespace A015396.P16899942475274013817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (A329638 (n + 1)).toNat * A015966 n

end

end A015396.P16899942475274013817

