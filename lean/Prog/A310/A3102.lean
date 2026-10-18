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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C025

/-!
# A310200: Coordination sequence Gal.6.44.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310200, there is no canonical definition to state claims against.
-/

/-! ## A310200.P6658426713312026369

`A310252(n)+A314299(n)-A314313(n)`
-/

namespace A310200.P6658426713312026369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310252 n + (A314299 n - A314313 n)

end

end A310200.P6658426713312026369

/-! ## A310200.P4631318459444250807

`A246281(eq[A035690(n+1), A059841(n)])`
-/

namespace A310200.P4631318459444250807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246281 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A310200.P4631318459444250807

/-!
# A310201: Coordination sequence Gal.6.1.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310201, there is no canonical definition to state claims against.
-/

/-! ## A310201.P11575599895619012287

`A008574(n)-A078349(A078344(n+1))`
-/

namespace A310201.P11575599895619012287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A078349 (A078344 (n + 1)).toNat

end

end A310201.P11575599895619012287

/-! ## A310201.P11748882224461091758

`A115623(A038747(n+1))+A005117(2*n+1)`
-/

namespace A310201.P11748882224461091758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (A038747 (n + 1)).toNat + A005117 (2 * n + 1)

end

end A310201.P11748882224461091758

/-! ## A310201.P3070248413338821433

`∑[A001221(A051226(n+1)*A256265(2*n+1))]`
-/

namespace A310201.P3070248413338821433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051226 (n + 1) * A256265 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310201.P3070248413338821433

/-! ## A310201.P7957490157307417461

`∑[A294901(∑[A156677(n)])]`
-/

namespace A310201.P7957490157307417461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310201.P7957490157307417461

/-! ## A310201.P11859903779590214515

`∑[A324662(record[A324662(2*n+1)])]`
-/

namespace A310201.P11859903779590214515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310201.P11859903779590214515

/-!
# A310202: Coordination sequence Gal.6.6.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310202, there is no canonical definition to state claims against.
-/

/-! ## A310202.P744946287420126082

`A355222(A087246(2*n+1)%A206554(3*(n+1)))`
-/

namespace A310202.P744946287420126082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 (Int.tmod (A087246 (2 * n + 1)) (A206554 (3 * (n + 1)))).toNat

end

end A310202.P744946287420126082

/-! ## A310202.P12351791159925031152

`A147301(A184655(3*n+1))`
-/

namespace A310202.P12351791159925031152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147301 (A184655 (3 * n + 1)).toNat

end

end A310202.P12351791159925031152

/-! ## A310202.P15532474053058704500

`A147301(A184531(n+1)+n)`
-/

namespace A310202.P15532474053058704500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147301 (A184531 (n + 1) + (n : ℤ)).toNat

end

end A310202.P15532474053058704500

/-! ## A310202.P10744665491604837017

`A147301(A325389(n+1)+A016933(n))`
-/

namespace A310202.P10744665491604837017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147301 (A325389 (n + 1) + A016933 n).toNat

end

end A310202.P10744665491604837017

/-! ## A310202.P17653064998439368719

`A147301(A265227(3*(n+1))+A047486(n+1))`
-/

namespace A310202.P17653064998439368719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147301 (A265227 (3 * (n + 1)) + A047486 (n + 1)).toNat

end

end A310202.P17653064998439368719

/-!
# A310203: Coordination sequence Gal.6.37.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310203, there is no canonical definition to state claims against.
-/

/-! ## A310203.P6014835034238608138

`A310206(n)-A288864(A351969(n))`
-/

namespace A310203.P6014835034238608138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310206 n - A288864 (A351969 n).toNat

end

end A310203.P6014835034238608138

/-! ## A310203.P11344773050722086505

`A130824(n)+A014902(A111297(n))`
-/

namespace A310203.P11344773050722086505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A014902 (A111297 n).toNat

end

end A310203.P11344773050722086505

/-! ## A310203.P9574241737845242032

`A311094(n)-A049240(A041387(n))`
-/

namespace A310203.P9574241737845242032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311094 n - A049240 (A041387 n).toNat

end

end A310203.P9574241737845242032

/-! ## A310203.P952462255691646193

`A311094(n)-A001221(A069027(n+1))`
-/

namespace A310203.P952462255691646193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311094 n - A001221 (A069027 (n + 1)).toNat

end

end A310203.P952462255691646193

/-! ## A310203.P918597478229796724

`A070939(A029852(n+3))+A029905(n)`
-/

namespace A310203.P918597478229796724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A029852 (n + 3)).toNat + A029905 n

end

end A310203.P918597478229796724

/-!
# A310204: Coordination sequence Gal.6.102.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310204, there is no canonical definition to state claims against.
-/

/-! ## A310204.P7364144497323103071

`A265336(A110140(n))+A008486(n)`
-/

namespace A310204.P7364144497323103071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265336 (A110140 n).toNat + A008486 n

end

end A310204.P7364144497323103071

/-!
# A310205: Coordination sequence Gal.4.17.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310205, there is no canonical definition to state claims against.
-/

/-! ## A310205.P15025343142668897024

`∑[A231631(∑[A142926(n+1)])]`
-/

namespace A310205.P15025343142668897024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142926 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231631 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310205.P15025343142668897024

/-! ## A310205.P3507669670473440866

`record[A329405(A375124(2*n+3))]`
-/

namespace A310205.P3507669670473440866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329405 (A375124 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310205.P3507669670473440866

/-! ## A310205.P8312208538935818255

`A302242(A026531(n+4))+3*n`
-/

namespace A310205.P8312208538935818255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A026531 (n + 4)).toNat + (3 * n : ℤ)

end

end A310205.P8312208538935818255

/-! ## A310205.P4995389967165907099

`A311403(n)-A081603(A092690(n))`
-/

namespace A310205.P4995389967165907099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311403 n - A081603 (A092690 n).toNat

end

end A310205.P4995389967165907099

/-!
# A310206: Coordination sequence Gal.5.1.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310206, there is no canonical definition to state claims against.
-/

/-! ## A310206.P5877738280458841212

`A319951(A000124(n))+A022843(n)`
-/

namespace A310206.P5877738280458841212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A000124 n).toNat + A022843 n

end

end A310206.P5877738280458841212

/-! ## A310206.P16259039521571990888

`A310203(n)+A288864(A351969(n))`
-/

namespace A310206.P16259039521571990888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310203 n + A288864 (A351969 n).toNat

end

end A310206.P16259039521571990888

/-! ## A310206.P5561832022172314768

`A353556(A320067(3*n))+A310203(n)`
-/

namespace A310206.P5561832022172314768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (A320067 (3 * n)).toNat + A310203 n

end

end A310206.P5561832022172314768

/-! ## A310206.P4348730553645404363

`A008574(n)-A327298(A340601(3*n))`
-/

namespace A310206.P4348730553645404363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A327298 (A340601 (3 * n)).toNat

end

end A310206.P4348730553645404363

/-! ## A310206.P1992672504417301108

`or(A130824(n), A175024(A001611(n)))`
-/

namespace A310206.P1992672504417301108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130824 n) (A175024 (A001611 n).toNat)

end

end A310206.P1992672504417301108

/-!
# A310207: Coordination sequence Gal.5.17.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310207, there is no canonical definition to state claims against.
-/

/-! ## A310207.P7042559527676960681

`A246142(A324754(n))+record[lcm(2, n)]`
-/

namespace A310207.P7042559527676960681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246142 (A324754 n).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A310207.P7042559527676960681

/-! ## A310207.P11744810307878699412

`abs(1-4*n)-A055641(A172378(n+1))`
-/

namespace A310207.P11744810307878699412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)| - A055641 (A172378 (n + 1)).toNat

end

end A310207.P11744810307878699412

/-! ## A310207.P10169352409658006611

`abs(val(A106442(A049290(n+1))+1, 2)-4*n)`
-/

namespace A310207.P10169352409658006611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.valuation (A106442 (A049290 (n + 1)).toNat + 1).toNat 2 : ℤ) - (4 * n : ℤ)|

end

end A310207.P10169352409658006611

/-! ## A310207.P17789226939316936160

`A130824(n)+A010057(A176639(n))`
-/

namespace A310207.P17789226939316936160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A010057 (A176639 n).toNat

end

end A310207.P17789226939316936160

/-! ## A310207.P18204195833941899777

`A130824(n)+A059108(A262704(n))`
-/

namespace A310207.P18204195833941899777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A059108 (A262704 n).toNat

end

end A310207.P18204195833941899777

/-!
# A310208: Coordination sequence Gal.6.5.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310208, there is no canonical definition to state claims against.
-/

/-! ## A310208.P17964115513595461525

`∑[A000120(∑[A232526(2*n+5)])]`
-/

namespace A310208.P17964115513595461525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232526 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310208.P17964115513595461525

/-! ## A310208.P1544373095204577398

`A301726(n)-A029837(A048776(n))`
-/

namespace A310208.P1544373095204577398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - A029837 (A048776 n).toNat

end

end A310208.P1544373095204577398

/-! ## A310208.P6237527979090960101

`A056556(A005153(n+1)*A016754(n))`
-/

namespace A310208.P6237527979090960101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A005153 (n + 1) * A016754 n).toNat

end

end A310208.P6237527979090960101

/-! ## A310208.P16046949240694303601

`A296368(n)-A122840(A100071(n+3))`
-/

namespace A310208.P16046949240694303601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n - A122840 (A100071 (n + 3)).toNat

end

end A310208.P16046949240694303601

/-! ## A310208.P12410495079624410866

`A005100(3*n+2)-A308186(A014137(n))`
-/

namespace A310208.P12410495079624410866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (3 * n + 2) - A308186 (A014137 n).toNat

end

end A310208.P12410495079624410866

/-!
# A310209: Coordination sequence Gal.6.40.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310209, there is no canonical definition to state claims against.
-/

/-! ## A310209.P1906813437838189119

`∑[∑[A357624(A042163(n))]]`
-/

namespace A310209.P1906813437838189119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357624 (A042163 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310209.P1906813437838189119

/-! ## A310209.P17068208544029359346

`∑[A074399(3^n)%A093074(n+1)+1]+n`
-/

namespace A310209.P17068208544029359346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074399 (3 ^ n)) (A093074 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310209.P17068208544029359346

/-! ## A310209.P4407213430613274474

`A312952(n)-A001222(A006318(n))`
-/

namespace A310209.P4407213430613274474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312952 n - A001222 (A006318 n).toNat

end

end A310209.P4407213430613274474

/-! ## A310209.P1982223049495023088

`A311533(n)-A001222(A079935(n+1))`
-/

namespace A310209.P1982223049495023088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311533 n - A001222 (A079935 (n + 1)).toNat

end

end A310209.P1982223049495023088

/-! ## A310209.P7656906852833750861

`A014567(3*n+1)-A027615(A083860(n))`
-/

namespace A310209.P7656906852833750861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (3 * n + 1) - A027615 (A083860 n).toNat

end

end A310209.P7656906852833750861

/-!
# A310210: Coordination sequence Gal.5.16.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310210, there is no canonical definition to state claims against.
-/

/-! ## A310210.P14802008596707422508

`A004396(n)+A301293(n)-n-A157754(A343277(n))`
-/

namespace A310210.P14802008596707422508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A301293 n - (n : ℤ)) - A157754 (A343277 n).toNat

end

end A310210.P14802008596707422508

/-! ## A310210.P12579314612828367074

`A296368(n)-A292438(A119679(n+1))`
-/

namespace A310210.P12579314612828367074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n - A292438 (A119679 (n + 1)).toNat

end

end A310210.P12579314612828367074

/-! ## A310210.P6028522646288403961

`∑[A096436(A238620(3*n+4))]`
-/

namespace A310210.P6028522646288403961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096436 (A238620 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310210.P6028522646288403961

/-! ## A310210.P12426406239943439884

`∑[A280522(∑[A109679(3*n+5)])]`
-/

namespace A310210.P12426406239943439884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109679 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280522 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310210.P12426406239943439884

/-! ## A310210.P457864703759956255

`A311249(n)-A260736(A000032(n))`
-/

namespace A310210.P457864703759956255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311249 n - A260736 (A000032 n).toNat

end

end A310210.P457864703759956255

/-!
# A310211: Coordination sequence Gal.5.8.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310211, there is no canonical definition to state claims against.
-/

/-! ## A310211.P14527950519007907098

`round(log(A175900(2*n)))+1`
-/

namespace A310211.P14527950519007907098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A175900 (2 * n) : ℝ)) + 1

end

end A310211.P14527950519007907098

/-! ## A310211.P10274527594027557800

`floor(log(A350476(2*(n+1))+2))`
-/

namespace A310211.P10274527594027557800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A350476 (2 * (n + 1)) + 2 : ℝ)⌋

end

end A310211.P10274527594027557800

/-! ## A310211.P385872375930898028

`A106744(A313057(n))`
-/

namespace A310211.P385872375930898028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A313057 n).toNat

end

end A310211.P385872375930898028

/-! ## A310211.P7616001192620715611

`∑[A110007(A362126(n))]`
-/

namespace A310211.P7616001192620715611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110007 (A362126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310211.P7616001192620715611

/-! ## A310211.P16697811967590720824

`A106744(A314165(n)-n)`
-/

namespace A310211.P16697811967590720824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A314165 n - (n : ℤ)).toNat

end

end A310211.P16697811967590720824

/-!
# A310212: Coordination sequence Gal.6.41.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310212, there is no canonical definition to state claims against.
-/

/-! ## A310212.P14376325710456114472

`∑[A301323(A000079(n))%7]`
-/

namespace A310212.P14376325710456114472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301323 (A000079 n).toNat) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310212.P14376325710456114472

/-! ## A310212.P1927224049523466620

`∑{d}[A000079(n), A301323(#)%7]`
-/

namespace A310212.P1927224049523466620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A301323 d) 7

end

end A310212.P1927224049523466620

/-! ## A310212.P18039747690754709064

`A296368(n)-A348213(A294764(n))`
-/

namespace A310212.P18039747690754709064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n - A348213 (A294764 n).toNat

end

end A310212.P18039747690754709064

/-! ## A310212.P13405364039992097715

`A314224(A087051(n))-A047511(n+1)`
-/

namespace A310212.P13405364039992097715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314224 (A087051 n).toNat - A047511 (n + 1)

end

end A310212.P13405364039992097715

/-!
# A310213: Coordination sequence Gal.6.23.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310213, there is no canonical definition to state claims against.
-/

/-! ## A310213.P10980271641786108982

`A100617(A102296(n)-A261664(n))`
-/

namespace A310213.P10980271641786108982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A102296 n - A261664 n).toNat

end

end A310213.P10980271641786108982

/-! ## A310213.P2473394610230294442

`A311249(n)-A283760(A141479(n))`
-/

namespace A310213.P2473394610230294442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311249 n - A283760 (A141479 n).toNat

end

end A310213.P2473394610230294442

/-! ## A310213.P6895552644919713931

`∑[∑{e}[A122690(n), #]]+1`
-/

namespace A310213.P6895552644919713931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122690 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A310213.P6895552644919713931

/-! ## A310213.P5013384250021535132

`ceil(A336488(7*n+2)/4)`
-/

namespace A310213.P5013384250021535132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A336488 (7 * n + 2) : ℚ) / 4⌉

end

end A310213.P5013384250021535132

/-! ## A310213.P17135530635124242130

`floor(3/acot(n))-A330025(n*(n*(n-5)+5)²)+n`
-/

namespace A310213.P17135530635124242130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - A330025 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat + (n : ℤ)

end

end A310213.P17135530635124242130

/-!
# A310214: Coordination sequence Gal.6.31.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310214, there is no canonical definition to state claims against.
-/

/-! ## A310214.P13577007438507347072

`∑[A001222(A225110(n+1)+A192350(n+1))]`
-/

namespace A310214.P13577007438507347072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225110 (n + 1) + A192350 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310214.P13577007438507347072

/-!
# A310216: Coordination sequence Gal.6.103.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310216, there is no canonical definition to state claims against.
-/

/-! ## A310216.P13294244466540360964

`A310226(n)-A348327(A006012(n))`
-/

namespace A310216.P13294244466540360964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310226 n - A348327 (A006012 n).toNat

end

end A310216.P13294244466540360964

/-! ## A310216.P2112206750768058111

`A312341(n)-A001221(A189940(n+1))`
-/

namespace A310216.P2112206750768058111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312341 n - A001221 (A189940 (n + 1)).toNat

end

end A310216.P2112206750768058111

/-! ## A310216.P2557990224953854540

`∑[∑{e}[A202830(n+1)-n, #]]`
-/

namespace A310216.P2557990224953854540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202830 (n + 1) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310216.P2557990224953854540

/-!
# A310217: Coordination sequence Gal.6.11.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310217, there is no canonical definition to state claims against.
-/

/-! ## A310217.P16183645599508677247

`∑[A046951(Δ[A175529(n)])]`
-/

namespace A310217.P16183645599508677247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175529 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310217.P16183645599508677247

/-! ## A310217.P8894759914545225252

`A265760(n+1)-A054354(A084716(n+1))`
-/

namespace A310217.P8894759914545225252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1) - A054354 (A084716 (n + 1)).toNat

end

end A310217.P8894759914545225252

/-! ## A310217.P9661564854453422331

`eq[A169590(3*(n+1)), A255339(A257884(n+1))]+1`
-/

namespace A310217.P9661564854453422331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169590 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255339 (A257884 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A310217.P9661564854453422331

/-!
# A310219: Coordination sequence Gal.6.104.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310219, there is no canonical definition to state claims against.
-/

/-! ## A310219.P15317954363139571360

`A093501(2*n+1)+A093492(A104350(n+1))`
-/

namespace A310219.P15317954363139571360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093501 (2 * n + 1) + A093492 (A104350 (n + 1)).toNat

end

end A310219.P15317954363139571360

/-!
# A310220: Coordination sequence Gal.6.70.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310220, there is no canonical definition to state claims against.
-/

/-! ## A310220.P9402266771615199233

`A312374(n)-A001222(A189176(n))`
-/

namespace A310220.P9402266771615199233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312374 n - A001222 (A189176 n).toNat

end

end A310220.P9402266771615199233

/-! ## A310220.P13053199402574165158

`A311772(n)-A007814(A077835(n))`
-/

namespace A310220.P13053199402574165158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311772 n - A007814 (A077835 n).toNat

end

end A310220.P13053199402574165158

/-! ## A310220.P13279188480395494317

`A312432(n)-A232748(A032555(n+1))`
-/

namespace A310220.P13279188480395494317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312432 n - A232748 (A032555 (n + 1)).toNat

end

end A310220.P13279188480395494317

/-! ## A310220.P12016543873728433343

`eq[A145865(A145877(n+1)), A145865(n)]+n`
-/

namespace A310220.P12016543873728433343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A145877 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n

end

end A310220.P12016543873728433343

/-! ## A310220.P5630313227586310074

`A288966(A019442(2*(n+1)))-A336856(n+1)`
-/

namespace A310220.P5630313227586310074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288966 (A019442 (2 * (n + 1))).toNat - A336856 (n + 1)

end

end A310220.P5630313227586310074

/-!
# A310221: Coordination sequence Gal.6.3.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310221, there is no canonical definition to state claims against.
-/

/-! ## A310221.P2942916050258969687

`A312260(n)-A001222(A339041(n+1))`
-/

namespace A310221.P2942916050258969687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312260 n - A001222 (A339041 (n + 1)).toNat

end

end A310221.P2942916050258969687

/-! ## A310221.P15623896079105205433

`A310222(n)-A178798(A167614(n+1))`
-/

namespace A310221.P15623896079105205433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310222 n - A178798 (A167614 (n + 1)).toNat

end

end A310221.P15623896079105205433

/-! ## A310221.P7004705037456678669

`or(A010888(A080882(n)), A054248(n+1))`
-/

namespace A310221.P7004705037456678669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010888 (A080882 n).toNat) (A054248 (n + 1))

end

end A310221.P7004705037456678669

/-! ## A310221.P16534451940089828044

`∑[A053610(A051878(n))]`
-/

namespace A310221.P16534451940089828044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (A051878 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310221.P16534451940089828044

/-! ## A310221.P4800171239463241405

`lt[A057531(A342818(n+1)), A342794(2*(n+1))]`
-/

namespace A310221.P4800171239463241405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057531 (A342818 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342794 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310221.P4800171239463241405

/-!
# A310222: Coordination sequence Gal.6.105.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310222, there is no canonical definition to state claims against.
-/

/-! ## A310222.P6920895236458045148

`lt[A278063(n+5), A333216(A133299(2*n+5))]`
-/

namespace A310222.P6920895236458045148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278063 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333216 (A133299 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310222.P6920895236458045148

/-! ## A310222.P10463170964268319755

`A311790(n)-A001221(A114277(n))`
-/

namespace A310222.P10463170964268319755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311790 n - A001221 (A114277 n).toNat

end

end A310222.P10463170964268319755

/-! ## A310222.P7079658943809558496

`A311791(n)-A001221(A114277(n))`
-/

namespace A310222.P7079658943809558496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 n - A001221 (A114277 n).toNat

end

end A310222.P7079658943809558496

/-! ## A310222.P15240782114832292921

`A311792(n)-A001221(A114277(n))`
-/

namespace A310222.P15240782114832292921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311792 n - A001221 (A114277 n).toNat

end

end A310222.P15240782114832292921

/-! ## A310222.P12660094255379610376

`A334067(2*n)+A001221(A192744(n))`
-/

namespace A310222.P12660094255379610376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334067 (2 * n) + A001221 (A192744 n).toNat

end

end A310222.P12660094255379610376

/-!
# A310223: Coordination sequence Gal.6.12.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310223, there is no canonical definition to state claims against.
-/

/-! ## A310223.P6114229359065337558

`A310200(n)+A314303(n)-A314299(n)`
-/

namespace A310223.P6114229359065337558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310200 n + (A314303 n - A314299 n)

end

end A310223.P6114229359065337558

/-! ## A310223.P1462714265109969976

`A310252(n)+A314303(n)-A314313(n)`
-/

namespace A310223.P1462714265109969976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310252 n + (A314303 n - A314313 n)

end

end A310223.P1462714265109969976

/-! ## A310223.P8503031009459558994

`A311766(n)-A001221(A112839(n))`
-/

namespace A310223.P8503031009459558994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311766 n - A001221 (A112839 n).toNat

end

end A310223.P8503031009459558994

/-!
# A310224: Coordination sequence Gal.6.69.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310224, there is no canonical definition to state claims against.
-/

/-! ## A310224.P5932067403473277011

`A346502(n)+A053828(A088218(n))`
-/

namespace A310224.P5932067403473277011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346502 n + A053828 (A088218 n).toNat

end

end A310224.P5932067403473277011

/-! ## A310224.P15067349533341002332

`eq[A005811(n), A061987(A103631(3*n+4))]`
-/

namespace A310224.P15067349533341002332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 (A103631 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310224.P15067349533341002332

/-!
# A310225: Coordination sequence Gal.6.51.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310225, there is no canonical definition to state claims against.
-/

/-! ## A310225.P10617761270246472969

`A190714(n+1)-A326918(A359070(n+1))`
-/

namespace A310225.P10617761270246472969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190714 (n + 1) - A326918 (A359070 (n + 1)).toNat

end

end A310225.P10617761270246472969

/-! ## A310225.P10378569830928019962

`A188967(A143547(n))+A036467(2*n+1)`
-/

namespace A310225.P10378569830928019962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A143547 n).toNat + A036467 (2 * n + 1)

end

end A310225.P10378569830928019962

/-! ## A310225.P15160194374674999713

`A311765(n)-A001221(A150827(n))`
-/

namespace A310225.P15160194374674999713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311765 n - A001221 (A150827 n).toNat

end

end A310225.P15160194374674999713

/-!
# A310226: Coordination sequence Gal.6.39.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310226, there is no canonical definition to state claims against.
-/

/-! ## A310226.P1711759627731185946

`A008574(n)-A125184(A130628(3*n+5))`
-/

namespace A310226.P1711759627731185946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A125184 (A130628 (3 * n + 5)).toNat

end

end A310226.P1711759627731185946

/-! ## A310226.P12355797518575564591

`∑[A094235(∑[A326494(n)])]`
-/

namespace A310226.P12355797518575564591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094235 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310226.P12355797518575564591

/-! ## A310226.P18391271453038827122

`∑[A000120(p?[A010443(n+1)])]`
-/

namespace A310226.P18391271453038827122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010443 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310226.P18391271453038827122

/-! ## A310226.P11823046946021208600

`A348327(A006012(n))+A310216(n)`
-/

namespace A310226.P11823046946021208600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (A006012 n).toNat + A310216 n

end

end A310226.P11823046946021208600

/-! ## A310226.P12760361208484235268

`∑[A371572(A000538(n))+1]`
-/

namespace A310226.P12760361208484235268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371572 (A000538 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310226.P12760361208484235268

/-!
# A310227: Coordination sequence Gal.6.51.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310227, there is no canonical definition to state claims against.
-/

/-! ## A310227.P4146256008705434522

`A311807(n)-A087436(A213556(n+1))`
-/

namespace A310227.P4146256008705434522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n - A087436 (A213556 (n + 1)).toNat

end

end A310227.P4146256008705434522

/-! ## A310227.P6078567883675692786

`A312719(n)-A213911(A111285(n+1))`
-/

namespace A310227.P6078567883675692786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312719 n - A213911 (A111285 (n + 1)).toNat

end

end A310227.P6078567883675692786

/-!
# A310229: Coordination sequence Gal.4.4.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310229, there is no canonical definition to state claims against.
-/

/-! ## A310229.P14095587152497113761

`eq[A153149(n), A238643(n+1)]`
-/

namespace A310229.P14095587152497113761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310229.P14095587152497113761

/-! ## A310229.P6374659222520364106

`∑[A276605(∑[A276591(n+2)])]`
-/

namespace A310229.P6374659222520364106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276591 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276605 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310229.P6374659222520364106

/-! ## A310229.P15275926132183692955

`∑[∑{e}[A326542(2*(n+2))+A189563(n+2), #]]`
-/

namespace A310229.P15275926132183692955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 (2 * (n + 2)) + A189563 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310229.P15275926132183692955

/-! ## A310229.P12630938683086561517

`A311926(n)-A001221(A150632(n))`
-/

namespace A310229.P12630938683086561517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311926 n - A001221 (A150632 n).toNat

end

end A310229.P12630938683086561517

/-! ## A310229.P18271960355527721969

`∑[A136148(n)+A001222(A081704(n))]`
-/

namespace A310229.P18271960355527721969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136148 n + A001222 (A081704 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310229.P18271960355527721969

/-!
# A310230: Coordination sequence Gal.5.3.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310230, there is no canonical definition to state claims against.
-/

/-! ## A310230.P8741882251382350368

`abs(A319782(n)%2-4*n)`
-/

namespace A310230.P8741882251382350368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A319782 n) 2 - (4 * n : ℤ)|

end

end A310230.P8741882251382350368

/-! ## A310230.P3117468380575569238

`A008574(n)-A189673(A042765(n))`
-/

namespace A310230.P3117468380575569238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A189673 (A042765 n).toNat

end

end A310230.P3117468380575569238

/-! ## A310230.P1592908373337506028

`A311843(A062399(n))-A000196(n)`
-/

namespace A310230.P1592908373337506028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 (A062399 n).toNat - A000196 n

end

end A310230.P1592908373337506028

/-! ## A310230.P6691048148453417487

`A311958(A062399(n))-A004525(n)`
-/

namespace A310230.P6691048148453417487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311958 (A062399 n).toNat - A004525 n

end

end A310230.P6691048148453417487

/-! ## A310230.P4092444433428176591

`A131098(n+1)+A010059(A000108(n))`
-/

namespace A310230.P4092444433428176591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1) + A010059 (A000108 n).toNat

end

end A310230.P4092444433428176591

/-!
# A310231: Coordination sequence Gal.6.16.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310231, there is no canonical definition to state claims against.
-/

/-! ## A310231.P9909307744018533089

`A030200(A002605(n))+4*n`
-/

namespace A310231.P9909307744018533089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 (A002605 n).toNat + (4 * n : ℤ)

end

end A310231.P9909307744018533089

/-! ## A310231.P8513574729764632410

`A194884(A182522(n))+A130824(n)`
-/

namespace A310231.P8513574729764632410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194884 (A182522 n).toNat + A130824 n

end

end A310231.P8513574729764632410

/-! ## A310231.P3294651480489135435

`A311861(n)-A001221(A094977(n))`
-/

namespace A310231.P3294651480489135435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n - A001221 (A094977 n).toNat

end

end A310231.P3294651480489135435

/-! ## A310231.P2426203761279102783

`A324692(A123286(n))+A209839(n+1)`
-/

namespace A310231.P2426203761279102783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (A123286 (n + 31)).toNat + A209839 (n + 1)

end

end A310231.P2426203761279102783

/-! ## A310231.P10284290704137076376

`∑[A060130(∑[A188516(n+1)])]`
-/

namespace A310231.P10284290704137076376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310231.P10284290704137076376

/-!
# A310232: Coordination sequence Gal.4.11.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310232, there is no canonical definition to state claims against.
-/

/-! ## A310232.P1725762719232629766

`∑[A131296(A006786(n+1)+n)]`
-/

namespace A310232.P1725762719232629766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131296 (A006786 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310232.P1725762719232629766

/-! ## A310232.P13326993040933821758

`∑[A317946(A242129(2*n+1)²)]`
-/

namespace A310232.P13326993040933821758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 (A242129 (2 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310232.P13326993040933821758

/-!
# A310233: Coordination sequence Gal.6.32.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310233, there is no canonical definition to state claims against.
-/

/-! ## A310233.P4425201319739715759

`A105700(A261664(n))+A312561(n)-A047263(n+1)`
-/

namespace A310233.P4425201319739715759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A261664 n).toNat + (A312561 n - A047263 (n + 1))

end

end A310233.P4425201319739715759

/-!
# A310234: Coordination sequence Gal.6.33.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310234, there is no canonical definition to state claims against.
-/

/-! ## A310234.P14170133690699115281

`A332267(A009958(n))`
-/

namespace A310234.P14170133690699115281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332267 (A009958 n).toNat

end

end A310234.P14170133690699115281

/-! ## A310234.P7980523820791834042

`A008683(record[A170980(n)])+4*n`
-/

namespace A310234.P7980523820791834042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (4 * n : ℤ)

end

end A310234.P7980523820791834042

/-! ## A310234.P8700159755159072388

`A008683(∑[A306859(n)!])+4*n`
-/

namespace A310234.P8700159755159072388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A306859 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j) + (4 * n : ℤ)

end

end A310234.P8700159755159072388

/-! ## A310234.P15516666071726462341

`A008683(∑[A290461(n+1)!])+4*n`
-/

namespace A310234.P15516666071726462341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A290461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j) + (4 * n : ℤ)

end

end A310234.P15516666071726462341

/-! ## A310234.P16327056969034951654

`A361201(n+1)+A000005(ceil(3*4^(n-1)))`
-/

namespace A310234.P16327056969034951654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361201 (n + 1) + A000005 ⌈3 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A310234.P16327056969034951654

/-!
# A310235: Coordination sequence Gal.5.21.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310235, there is no canonical definition to state claims against.
-/

/-! ## A310235.P7487004664269721919

`or(A065413(A083844(n+1)), A145204(n+1))`
-/

namespace A310235.P7487004664269721919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065413 (A083844 (n + 1)).toNat) (A145204 (n + 1))

end

end A310235.P7487004664269721919

/-! ## A310235.P15593055770241854441

`or(A145204(n+1), A352822(A213299(n+5)))`
-/

namespace A310235.P15593055770241854441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A145204 (n + 1)) (A352822 (A213299 (n + 5)).toNat)

end

end A310235.P15593055770241854441

/-!
# A310237: Coordination sequence Gal.4.3.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310237, there is no canonical definition to state claims against.
-/

/-! ## A310237.P16214847596750970590

`A360013(n+1)-A187950(A032020(2*(n+2)))`
-/

namespace A310237.P16214847596750970590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360013 (n + 1) - A187950 (A032020 (2 * (n + 2))).toNat

end

end A310237.P16214847596750970590

/-! ## A310237.P13785065447168007587

`A311818(n)-A001222(A084643(n))`
-/

namespace A310237.P13785065447168007587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311818 n - A001222 (A084643 n).toNat

end

end A310237.P13785065447168007587

/-! ## A310237.P12557322085441803504

`A313230(n)-A084558(A027941(n))`
-/

namespace A310237.P12557322085441803504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313230 n - A084558 (A027941 n).toNat

end

end A310237.P12557322085441803504

/-! ## A310237.P6401520447871005731

`A301299(n)-A206829(A000070(n))`
-/

namespace A310237.P6401520447871005731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n - A206829 (A000070 n).toNat

end

end A310237.P6401520447871005731

/-! ## A310237.P4174089253840034119

`A311761(n)-A330025(A074449(n+1))`
-/

namespace A310237.P4174089253840034119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311761 n - A330025 (A074449 (n + 1)).toNat

end

end A310237.P4174089253840034119

/-!
# A310238: Coordination sequence Gal.4.7.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310238, the canonical program `A310238.P14225451294816343544` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310238 has offset 0).

The definition of A310238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2686 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310238.P5475176827311061980

`(A310532(n)+A008574(n))/2-A057354(2*n+1)`
-/

namespace A310238.P5475176827311061980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310532 n + A008574 n : ℚ) / 2 - (A057354 (2 * n + 1) : ℚ)

end

end A310238.P5475176827311061980

namespace A310238

/-- `(A310532(n)+A008574(n))/2-A057354(2*n+1)` -/
def P5475176827311061980.Spec : Prop :=
  ∀ n, P5475176827311061980.a n = (A310238 n : ℚ)

end A310238

/-! ## A310238.P14225451294816343544

`A047263(n+1)+A312948(n)-n-A057354(2*n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310238

/-- `A047263(n+1)+A312948(n)-n-A057354(2*n+1)` -/
def P14225451294816343544.Spec : Prop :=
  ∀ n, P14225451294816343544.a n = A310238 n

theorem P14225451294816343544.correct : P14225451294816343544.Spec := by
  intro n
  simp only [A310238]

end A310238

/-! ## A310238.P4713288764009033942

`A191275(n+1)+A311157(n)-n-A057354(2*n+1)`
-/

namespace A310238.P4713288764009033942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + (A311157 n - (n : ℤ)) - A057354 (2 * n + 1)

end

end A310238.P4713288764009033942

namespace A310238

/-- `A191275(n+1)+A311157(n)-n-A057354(2*n+1)` -/
def P4713288764009033942.Spec : Prop :=
  ∀ n, P4713288764009033942.a n = A310238 n

end A310238

/-! ## A310238.P2367769667791931258

`A008458(n)+A008486(n)-A314670(n)-A057354(2*n+1)`
-/

namespace A310238.P2367769667791931258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314670 n) - A057354 (2 * n + 1)

end

end A310238.P2367769667791931258

namespace A310238

/-- `A008458(n)+A008486(n)-A314670(n)-A057354(2*n+1)` -/
def P2367769667791931258.Spec : Prop :=
  ∀ n, P2367769667791931258.a n = A310238 n

end A310238

/-! ## A310238.P18179342665808536298

`A047486(n+1)+A311289(n)-n-A057354(2*n+1)`
-/

namespace A310238.P18179342665808536298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A311289 n - (n : ℤ)) - A057354 (2 * n + 1)

end

end A310238.P18179342665808536298

namespace A310238

/-- `A047486(n+1)+A311289(n)-n-A057354(2*n+1)` -/
def P18179342665808536298.Spec : Prop :=
  ∀ n, P18179342665808536298.a n = A310238 n

end A310238

/-! ## A310238.P13888625657385423207

`A047299(n+1)+A311958(n)-n-A057354(2*n+1)`
-/

namespace A310238.P13888625657385423207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A311958 n - (n : ℤ)) - A057354 (2 * n + 1)

end

end A310238.P13888625657385423207

namespace A310238

/-- `A047299(n+1)+A311958(n)-n-A057354(2*n+1)` -/
def P13888625657385423207.Spec : Prop :=
  ∀ n, P13888625657385423207.a n = A310238 n

end A310238

/-! ## A310238.P14497541026379460089

`A005843(A008574(n))+n-A314670(n)-A057354(2*n+1)`
-/

namespace A310238.P14497541026379460089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A314670 n) - A057354 (2 * n + 1)

end

end A310238.P14497541026379460089

namespace A310238

/-- `A005843(A008574(n))+n-A314670(n)-A057354(2*n+1)` -/
def P14497541026379460089.Spec : Prop :=
  ∀ n, P14497541026379460089.a n = A310238 n

end A310238

/-! ## A310238.P7586396241168091736

`A314087(n)-A253262(n)-A057354(2*n+1)`
-/

namespace A310238.P7586396241168091736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314087 n - A253262 n - A057354 (2 * n + 1)

end

end A310238.P7586396241168091736

namespace A310238

/-- `A314087(n)-A253262(n)-A057354(2*n+1)` -/
def P7586396241168091736.Spec : Prop :=
  ∀ n, P7586396241168091736.a n = A310238 n

end A310238

/-! ## A310238.P725318040178019125

`A313116(n)-A057354(2*n+1)`
-/

namespace A310238.P725318040178019125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n - A057354 (2 * n + 1)

end

end A310238.P725318040178019125

namespace A310238

/-- `A313116(n)-A057354(2*n+1)` -/
def P725318040178019125.Spec : Prop :=
  ∀ n, P725318040178019125.a n = A310238 n

end A310238

/-! ## A310238.P8525095896708210025

`A313855(n)-(A330025(n)+n)`
-/

namespace A310238.P8525095896708210025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313855 n - (A330025 n + (n : ℤ))

end

end A310238.P8525095896708210025

namespace A310238

/-- `A313855(n)-(A330025(n)+n)` -/
def P8525095896708210025.Spec : Prop :=
  ∀ n, P8525095896708210025.a n = A310238 n

end A310238

/-! ## A310238.P15454657282748572168

`A313589(n)-(A244895(n)+n)`
-/

namespace A310238.P15454657282748572168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313589 n - (A244895 n + (n : ℤ))

end

end A310238.P15454657282748572168

namespace A310238

/-- `A313589(n)-(A244895(n)+n)` -/
def P15454657282748572168.Spec : Prop :=
  ∀ n, P15454657282748572168.a n = A310238 n

end A310238

/-! ## A310238.P3677840717387480348

`A313255(n)-n`
-/

namespace A310238.P3677840717387480348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313255 n - (n : ℤ)

end

end A310238.P3677840717387480348

namespace A310238

/-- `A313255(n)-n` -/
def P3677840717387480348.Spec : Prop :=
  ∀ n, P3677840717387480348.a n = A310238 n

end A310238

/-! ## A310238.P6642597423962675950

`abs(A008591(n)-A315412(n))`
-/

namespace A310238.P6642597423962675950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A315412 n|

end

end A310238.P6642597423962675950

namespace A310238

/-- `abs(A008591(n)-A315412(n))` -/
def P6642597423962675950.Spec : Prop :=
  ∀ n, P6642597423962675950.a n = A310238 n

end A310238

/-! ## A310238.P10068731862861578331

`abs(A008592(n)-(A315412(n)+n))`
-/

namespace A310238.P10068731862861578331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A315412 n + (n : ℤ))|

end

end A310238.P10068731862861578331

namespace A310238

/-- `abs(A008592(n)-(A315412(n)+n))` -/
def P10068731862861578331.Spec : Prop :=
  ∀ n, P10068731862861578331.a n = A310238 n

end A310238

/-! ## A310238.P2698617569719242428

`floor(A010015(n)/A315412(n)-n)`
-/

namespace A310238.P2698617569719242428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315412 n : ℚ) - (n : ℚ)⌋

end

end A310238.P2698617569719242428

namespace A310238

/-- `floor(A010015(n)/A315412(n)-n)` -/
def P2698617569719242428.Spec : Prop :=
  ∀ n, P2698617569719242428.a n = A310238 n

end A310238

/-! ## A310238.P17385258525598598995

`A008458(n)+A008486(n)-A315412(n)`
-/

namespace A310238.P17385258525598598995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A315412 n)

end

end A310238.P17385258525598598995

namespace A310238

/-- `A008458(n)+A008486(n)-A315412(n)` -/
def P17385258525598598995.Spec : Prop :=
  ∀ n, P17385258525598598995.a n = A310238 n

end A310238

/-! ## A310238.P2008430919019876144

`A313898(n)-A047363(n+1)`
-/

namespace A310238.P2008430919019876144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313898 n - A047363 (n + 1)

end

end A310238.P2008430919019876144

namespace A310238

/-- `A313898(n)-A047363(n+1)` -/
def P2008430919019876144.Spec : Prop :=
  ∀ n, P2008430919019876144.a n = A310238 n

end A310238

/-! ## A310238.P17224884412497662506

`A314252(n)-n-A057354(2*n+1)`
-/

namespace A310238.P17224884412497662506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - (n : ℤ) - A057354 (2 * n + 1)

end

end A310238.P17224884412497662506

namespace A310238

/-- `A314252(n)-n-A057354(2*n+1)` -/
def P17224884412497662506.Spec : Prop :=
  ∀ n, P17224884412497662506.a n = A310238 n

end A310238

/-! ## A310238.P17980086254400840236

`A074067(A315412(n))-n`
-/

namespace A310238.P17980086254400840236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315412 n).toNat - (n : ℤ)

end

end A310238.P17980086254400840236

namespace A310238

/-- `A074067(A315412(n))-n` -/
def P17980086254400840236.Spec : Prop :=
  ∀ n, P17980086254400840236.a n = A310238 n

end A310238

/-! ## A310238.P1477234363454242757

`A004396(A313255(n)+n)`
-/

namespace A310238.P1477234363454242757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313255 n + (n : ℤ)).toNat

end

end A310238.P1477234363454242757

namespace A310238

/-- `A004396(A313255(n)+n)` -/
def P1477234363454242757.Spec : Prop :=
  ∀ n, P1477234363454242757.a n = A310238 n

end A310238

/-!
# A310239: Coordination sequence Gal.6.13.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310239, there is no canonical definition to state claims against.
-/

/-! ## A310239.P16770019686163815733

`A056556(∑[A310556(n)²])`
-/

namespace A310239.P16770019686163815733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310556 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A310239.P16770019686163815733

/-! ## A310239.P5925162197669268389

`∑[A131295(∑[A084068(n+1)])]`
-/

namespace A310239.P5925162197669268389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131295 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310239.P5925162197669268389

/-! ## A310239.P1338272155887366020

`4*n-A008683(A063778(n+1))`
-/

namespace A310239.P1338272155887366020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A008683 (A063778 (n + 1)).toNat

end

end A310239.P1338272155887366020

/-! ## A310239.P7100922131378736123

`A312062(n)-A001221(A038561(n))`
-/

namespace A310239.P7100922131378736123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312062 n - A001221 (A038561 n).toNat

end

end A310239.P7100922131378736123

/-! ## A310239.P5930050067137743194

`A008683(A301306(n))+A008586(n)`
-/

namespace A310239.P5930050067137743194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A301306 n).toNat + A008586 n

end

end A310239.P5930050067137743194

/-!
# A310240: Coordination sequence Gal.5.7.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310240, there is no canonical definition to state claims against.
-/

/-! ## A310240.P13183003641125630038

`∑[A272886(A315413(n)+∑[n])]`
-/

namespace A310240.P13183003641125630038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272886 (A315413 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310240.P13183003641125630038

/-! ## A310240.P15057886521220509980

`4*n-A157658(∑[A306208(n+1)])`
-/

namespace A310240.P15057886521220509980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A157658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A310240.P15057886521220509980

/-! ## A310240.P11197752897371077678

`abs(A008683(A005902(3*n+1))-4*n)`
-/

namespace A310240.P11197752897371077678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A005902 (3 * n + 1)).toNat - (4 * n : ℤ)|

end

end A310240.P11197752897371077678

/-! ## A310240.P11906079681300071743

`A312083(n)-A001221(A031873(n+1))`
-/

namespace A310240.P11906079681300071743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312083 n - A001221 (A031873 (n + 1)).toNat

end

end A310240.P11906079681300071743

/-! ## A310240.P2466592239182847101

`lt[A046523(n+4), A046523(A001844(2*(n+2)))]`
-/

namespace A310240.P2466592239182847101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A001844 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310240.P2466592239182847101

/-!
# A310241: Coordination sequence Gal.5.18.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310241, there is no canonical definition to state claims against.
-/

/-! ## A310241.P2619732461110029442

`A143062(A130103(n))+A008586(n)`
-/

namespace A310241.P2619732461110029442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (A130103 n).toNat + A008586 n

end

end A310241.P2619732461110029442

/-! ## A310241.P16532348136443523542

`A310242(n)-A011732(A048481(n))`
-/

namespace A310241.P16532348136443523542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310242 n - A011732 (A048481 n).toNat

end

end A310241.P16532348136443523542

/-! ## A310241.P12487860246498734834

`A310242(n)-A025455(A149461(n))`
-/

namespace A310241.P12487860246498734834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310242 n - A025455 (A149461 n).toNat

end

end A310241.P12487860246498734834

/-! ## A310241.P6512800624728026224

`A310242(n)-A055641(A159772(n+1))`
-/

namespace A310241.P6512800624728026224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310242 n - A055641 (A159772 (n + 1)).toNat

end

end A310241.P6512800624728026224

/-! ## A310241.P12122513060918657376

`A131098(n+1)+A007423(A052536(n)+1)`
-/

namespace A310241.P12122513060918657376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1) + A007423 (A052536 n + 1).toNat

end

end A310241.P12122513060918657376

/-!
# A310242: Coordination sequence Gal.6.14.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310242, there is no canonical definition to state claims against.
-/

/-! ## A310242.P15895537840844851535

`A096852(A316624(n+1))+record[lcm(2, n)]`
-/

namespace A310242.P15895537840844851535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096852 (A316624 (n + 1)).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A310242.P15895537840844851535

/-! ## A310242.P7731314691981116520

`A008574(n)-A074290(A027376(n))`
-/

namespace A310242.P7731314691981116520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A074290 (A027376 n).toNat

end

end A310242.P7731314691981116520

/-! ## A310242.P11250134924129932991

`A336705(n)+A072401(A178551(3*n+5))`
-/

namespace A310242.P11250134924129932991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336705 n + A072401 (A178551 (3 * n + 5)).toNat

end

end A310242.P11250134924129932991

/-! ## A310242.P17181322236073443963

`∑[A115624(∑[A014668(n+4)])]`
-/

namespace A310242.P17181322236073443963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014668 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115624 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310242.P17181322236073443963

/-! ## A310242.P12212835931265610841

`A000069(2*n+1)-A069513(A382187(n))`
-/

namespace A310242.P12212835931265610841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (2 * n + 1) - A069513 (A382187 n).toNat

end

end A310242.P12212835931265610841

/-!
# A310243: Coordination sequence Gal.4.8.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310243, there is no canonical definition to state claims against.
-/

/-! ## A310243.P13651448790128020731

`2*A310258(n)-A310272(n)`
-/

namespace A310243.P13651448790128020731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310258 n - A310272 n

end

end A310243.P13651448790128020731

/-! ## A310243.P10032089164615044502

`A005843(A310258(n))-A310272(n)`
-/

namespace A310243.P10032089164615044502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A310258 n).toNat - A310272 n

end

end A310243.P10032089164615044502

/-! ## A310243.P13266422147260200108

`A310242(n)+A025459(A257520(n))`
-/

namespace A310243.P13266422147260200108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310242 n + A025459 (A257520 n).toNat

end

end A310243.P13266422147260200108

/-! ## A310243.P1439049604399852812

`or(A010060(A137959(n)), A091087(2*n))`
-/

namespace A310243.P1439049604399852812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A137959 n).toNat) (A091087 (2 * n))

end

end A310243.P1439049604399852812

/-! ## A310243.P3344717595167915156

`A330166(A060477(n+1)-A000038(n))+A004280(2*n+1)`
-/

namespace A310243.P3344717595167915156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (A060477 (n + 1) - A000038 n).toNat + A004280 (2 * n + 1)

end

end A310243.P3344717595167915156

/-!
# A310244: Coordination sequence Gal.6.45.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310244, there is no canonical definition to state claims against.
-/

/-! ## A310244.P11874450314506829449

`A162618(A080359(n+1))+n`
-/

namespace A310244.P11874450314506829449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162618 (A080359 (n + 1)).toNat + (n : ℤ)

end

end A310244.P11874450314506829449

/-! ## A310244.P6298837514518193680

`record[A298022(n)-A201702(n+1)]`
-/

namespace A310244.P6298837514518193680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298022 n - A201702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310244.P6298837514518193680

/-! ## A310244.P6088999839650208971

`A343652(A005598(n))+A161767(n)`
-/

namespace A310244.P6088999839650208971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343652 (A005598 n).toNat + A161767 n

end

end A310244.P6088999839650208971

/-!
# A310245: Coordination sequence Gal.6.46.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310245, there is no canonical definition to state claims against.
-/

/-! ## A310245.P1708309622746601076

`A313184(n)-A001221(n!)-A330025(A047363(n+1))`
-/

namespace A310245.P1708309622746601076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313184 n - A001221 (Nat.factorial n) - A330025 (A047363 (n + 1)).toNat

end

end A310245.P1708309622746601076

/-!
# A310246: Coordination sequence Gal.3.1.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310246, there is no canonical definition to state claims against.
-/

/-! ## A310246.P1624391024106976506

`∑[A374684(∑[A263008(n+5)])]`
-/

namespace A310246.P1624391024106976506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263008 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310246.P1624391024106976506

/-! ## A310246.P1948652983692393844

`∑[∑{e}[A000040(A134915(n))+1, #]]`
-/

namespace A310246.P1948652983692393844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A134915 n).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310246.P1948652983692393844

/-! ## A310246.P7529946489756178889

`eq[2*A029443(n), A238386(n+1)]`
-/

namespace A310246.P7529946489756178889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310246.P7529946489756178889

/-! ## A310246.P12765467988325449791

`A312015(n)-A001221(A155438(n+6))`
-/

namespace A310246.P12765467988325449791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312015 n - A001221 (A155438 (n + 6)).toNat

end

end A310246.P12765467988325449791

/-! ## A310246.P10671705981004446181

`A312016(n)-A001221(A155438(n+6))`
-/

namespace A310246.P10671705981004446181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312016 n - A001221 (A155438 (n + 6)).toNat

end

end A310246.P10671705981004446181

/-!
# A310247: Coordination sequence Gal.6.26.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310247, there is no canonical definition to state claims against.
-/

/-! ## A310247.P4113080325704091761

`A312046(A062399(n))-A001222(A017984(n))`
-/

namespace A310247.P4113080325704091761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312046 (A062399 n).toNat - A001222 (A017984 n).toNat

end

end A310247.P4113080325704091761

/-! ## A310247.P15604521429254810023

`A301688(n)-A083893(A207069(n+1))`
-/

namespace A310247.P15604521429254810023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n - A083893 (A207069 (n + 1)).toNat

end

end A310247.P15604521429254810023

/-! ## A310247.P13309398775573670476

`A312926(n)-A087117(A318209(n+1))`
-/

namespace A310247.P13309398775573670476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n - A087117 (A318209 (n + 1)).toNat

end

end A310247.P13309398775573670476

/-! ## A310247.P442694111363515583

`A242374(A048504(n))`
-/

namespace A310247.P442694111363515583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242374 (A048504 n).toNat

end

end A310247.P442694111363515583

/-! ## A310247.P13396148661500929036

`∑[A100878(A131941(n))+1]`
-/

namespace A310247.P13396148661500929036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100878 (A131941 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310247.P13396148661500929036

/-!
# A310248: Coordination sequence Gal.6.15.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310248, there is no canonical definition to state claims against.
-/

/-! ## A310248.P14790839917473149707

`A078594(n+1)+A001221(n!)`
-/

namespace A310248.P14790839917473149707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078594 (n + 1) + A001221 (Nat.factorial n)

end

end A310248.P14790839917473149707

/-! ## A310248.P4261204303457718185

`∑[A277545(A277550((n+1)*Δ[n^3]))]`
-/

namespace A310248.P4261204303457718185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277545 (A277550 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310248.P4261204303457718185

/-! ## A310248.P17587597114988613242

`A131295(n)+A000005(A003947(n))`
-/

namespace A310248.P17587597114988613242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131295 n + A000005 (A003947 n).toNat

end

end A310248.P17587597114988613242

/-! ## A310248.P12634429204818894033

`A078594(n+1)+A001221(A177279(n))`
-/

namespace A310248.P12634429204818894033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078594 (n + 1) + A001221 (A177279 n).toNat

end

end A310248.P12634429204818894033

/-! ## A310248.P7370303355225370611

`A311497(n)+A056594(A003469(n+1))`
-/

namespace A310248.P7370303355225370611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311497 n + A056594 (A003469 (n + 1)).toNat

end

end A310248.P7370303355225370611

/-!
# A310249: Coordination sequence Gal.5.9.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310249, there is no canonical definition to state claims against.
-/

/-! ## A310249.P16910547032650669182

`A379793(n+1)-A374748(A127002(3*n+2))`
-/

namespace A310249.P16910547032650669182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379793 (n + 1) - A374748 (A127002 (3 * n + 2)).toNat

end

end A310249.P16910547032650669182

/-!
# A310250: Coordination sequence Gal.6.24.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310250, there is no canonical definition to state claims against.
-/

/-! ## A310250.P5752086876421465364

`A310258(n)-A327253(A086771(n+1))`
-/

namespace A310250.P5752086876421465364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310258 n - A327253 (A086771 (n + 1)).toNat

end

end A310250.P5752086876421465364

/-! ## A310250.P4317006738461291340

`A310258(n)-A155972(n²+9)`
-/

namespace A310250.P4317006738461291340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310258 n - A155972 (n ^ 2 + 9)

end

end A310250.P4317006738461291340

/-! ## A310250.P15597638810337456200

`A310258(n)-A368844(A252891(n+1))`
-/

namespace A310250.P15597638810337456200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310258 n - A368844 (A252891 (n + 1)).toNat

end

end A310250.P15597638810337456200

/-! ## A310250.P9433839595248506310

`lt[A249072(A267742(n+5)), 1]+1`
-/

namespace A310250.P9433839595248506310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249072 (A267742 (n + 5)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A310250.P9433839595248506310

/-! ## A310250.P7010957275250198327

`A310258(n)-A077814(A048855(n))`
-/

namespace A310250.P7010957275250198327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310258 n - A077814 (A048855 n).toNat

end

end A310250.P7010957275250198327

/-!
# A310252: Coordination sequence Gal.3.3.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310252, the canonical program `A310252.P16435605649831598924` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310252 has offset 0).

The definition of A310252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310252.P16435605649831598924

`A008574(n)+A313568(n)-A315373(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A310252

/-- `A008574(n)+A313568(n)-A315373(n)` -/
def P16435605649831598924.Spec : Prop :=
  ∀ n, P16435605649831598924.a n = A310252 n

theorem P16435605649831598924.correct : P16435605649831598924.Spec := by
  intro n
  simp only [A310252]

end A310252

/-! ## A310252.P10394149841431286463

`A008574(n)+A250120(n)-A315213(n)`
-/

namespace A310252.P10394149841431286463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A250120 n - A315213 n)

end

end A310252.P10394149841431286463

namespace A310252

/-- `A008574(n)+A250120(n)-A315213(n)` -/
def P10394149841431286463.Spec : Prop :=
  ∀ n, P10394149841431286463.a n = A310252 n

end A310252

/-! ## A310252.P3168504748410979739

`A008486(n)+n-(A315213(n)-A250120(n))`
-/

namespace A310252.P3168504748410979739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (n : ℤ) - (A315213 n - A250120 n)

end

end A310252.P3168504748410979739

namespace A310252

/-- `A008486(n)+n-(A315213(n)-A250120(n))` -/
def P3168504748410979739.Spec : Prop :=
  ∀ n, P3168504748410979739.a n = A310252 n

end A310252

/-! ## A310252.P8476962261592257104

`A004275(Δ[n²])+A250120(n)-A315213(n)`
-/

namespace A310252.P8476962261592257104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (A250120 n - A315213 n)

end

end A310252.P8476962261592257104

namespace A310252

/-- `A004275(Δ[n²])+A250120(n)-A315213(n)` -/
def P8476962261592257104.Spec : Prop :=
  ∀ n, P8476962261592257104.a n = A310252 n

end A310252

/-! ## A310252.P13238649985911642595

`A004396(A008458(n))+A250120(n)-A315213(n)`
-/

namespace A310252.P13238649985911642595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008458 n).toNat + (A250120 n - A315213 n)

end

end A310252.P13238649985911642595

namespace A310252

/-- `A004396(A008458(n))+A250120(n)-A315213(n)` -/
def P13238649985911642595.Spec : Prop :=
  ∀ n, P13238649985911642595.a n = A310252 n

end A310252

/-! ## A310252.P16021060317019419325

`ceil(A310174(2*n)/2)`
-/

namespace A310252.P16021060317019419325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A310174 (2 * n) : ℚ) / 2⌉

end

end A310252.P16021060317019419325

namespace A310252

/-- `ceil(A310174(2*n)/2)` -/
def P16021060317019419325.Spec : Prop :=
  ∀ n, P16021060317019419325.a n = A310252 n

end A310252

/-! ## A310252.P12155156444925772474

`A310174(2*n)/(A019428(2*n)+1)`
-/

namespace A310252.P12155156444925772474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310174 (2 * n) : ℚ) / (A019428 (2 * n) + 1 : ℚ)

end

end A310252.P12155156444925772474

namespace A310252

/-- `A310174(2*n)/(A019428(2*n)+1)` -/
def P12155156444925772474.Spec : Prop :=
  ∀ n, P12155156444925772474.a n = (A310252 n : ℚ)

end A310252

/-! ## A310252.P14042795413426305383

`A004525(A022144(n))+A250120(n)-A315213(n)`
-/

namespace A310252.P14042795413426305383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022144 n).toNat + (A250120 n - A315213 n)

end

end A310252.P14042795413426305383

namespace A310252

/-- `A004525(A022144(n))+A250120(n)-A315213(n)` -/
def P14042795413426305383.Spec : Prop :=
  ∀ n, P14042795413426305383.a n = A310252 n

end A310252

/-!
# A310253: Coordination sequence Gal.5.13.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310253, there is no canonical definition to state claims against.
-/

/-! ## A310253.P12784981862426578582

`lt[A046523(A238871(n)), A209639(n)]`
-/

namespace A310253.P12784981862426578582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A238871 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209639 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310253.P12784981862426578582

/-!
# A310254: Coordination sequence Gal.4.9.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310254, there is no canonical definition to state claims against.
-/

/-! ## A310254.P12437339526344583152

`∑[A030998(record[A330843(n)])]`
-/

namespace A310254.P12437339526344583152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310254.P12437339526344583152

/-! ## A310254.P10884301540044174984

`∑[A193173(A022887(n+1)^A022934(n))]`
-/

namespace A310254.P10884301540044174984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193173 (SequenceMachineLib.roundAway ((A022887 (n + 1) : ℚ) ^ (A022934 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310254.P10884301540044174984

/-! ## A310254.P6392772919798270922

`A156262(A141226(n+1)+A000010(n+1))`
-/

namespace A310254.P6392772919798270922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A141226 (n + 1) + A000010 (n + 1)).toNat

end

end A310254.P6392772919798270922

/-! ## A310254.P15781174757839640626

`lt[A000010(A217559(n+1)²), A281878(n+3)]`
-/

namespace A310254.P15781174757839640626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A217559 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281878 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310254.P15781174757839640626

/-!
# A310255: Coordination sequence Gal.4.10.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310255, there is no canonical definition to state claims against.
-/

/-! ## A310255.P15520892743995524040

`record[A250120(n)-A147822(n)]`
-/

namespace A310255.P15520892743995524040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A147822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310255.P15520892743995524040

/-! ## A310255.P13602129349035345115

`record[A072154(2*n)-A147822(n)]`
-/

namespace A310255.P13602129349035345115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A147822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310255.P13602129349035345115

/-! ## A310255.P13117400650120678735

`record[record[A072154(n)/(-1)^n]-A147822(n)]`
-/

namespace A310255.P13117400650120678735
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072154 n : ℚ) / ((-1) ^ n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (A147822 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310255.P13117400650120678735

/-! ## A310255.P17203364746499615931

`A310312(n)-A001222(A001930(n))`
-/

namespace A310255.P17203364746499615931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310312 n - A001222 (A001930 n).toNat

end

end A310255.P17203364746499615931

/-!
# A310256: Coordination sequence Gal.4.5.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310256, there is no canonical definition to state claims against.
-/

/-! ## A310256.P612400980304399327

`∑[A001223(A091520(n))%7]`
-/

namespace A310256.P612400980304399327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (A091520 n).toNat) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310256.P612400980304399327

/-! ## A310256.P2136706132679519686

`A047263(n+1)+record[A346265(n+1)]`
-/

namespace A310256.P2136706132679519686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310256.P2136706132679519686

/-! ## A310256.P18145265633704915310

`A310258(n)-A005088(A000110(n))`
-/

namespace A310256.P18145265633704915310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310258 n - A005088 (A000110 n).toNat

end

end A310256.P18145265633704915310

/-!
# A310257: Coordination sequence Gal.6.22.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310257, there is no canonical definition to state claims against.
-/

/-! ## A310257.P4825019951452101995

`A056556(A000143(n)+n²)`
-/

namespace A310257.P4825019951452101995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A000143 n + (n ^ 2 : ℤ)).toNat

end

end A310257.P4825019951452101995

/-! ## A310257.P10786205878995057324

`∑[∑{e}[A002623(A000328(n)), #]]`
-/

namespace A310257.P10786205878995057324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (A000328 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310257.P10786205878995057324

/-! ## A310257.P15397827578127819069

`A056556(A002623(n)+A000143(n))`
-/

namespace A310257.P15397827578127819069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A002623 n + A000143 n).toNat

end

end A310257.P15397827578127819069

/-! ## A310257.P11430960639445229507

`A286585(A157704(n))+A088822(n+1)`
-/

namespace A310257.P11430960639445229507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286585 (A157704 n).toNat + A088822 (n + 1)

end

end A310257.P11430960639445229507

/-!
# A310258: Coordination sequence Gal.6.25.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310258, there is no canonical definition to state claims against.
-/

/-! ## A310258.P11377873147255168136

`(A310272(n)+A310243(n))/2`
-/

namespace A310258.P11377873147255168136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310272 n + A310243 n : ℚ) / 2

end

end A310258.P11377873147255168136

/-! ## A310258.P11611704517523833946

`A001281(A310272(n)+A310243(n))`
-/

namespace A310258.P11611704517523833946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A310272 n + A310243 n).toNat

end

end A310258.P11611704517523833946

/-! ## A310258.P8648717086078999048

`A004525(A310272(n)+A310243(n))`
-/

namespace A310258.P8648717086078999048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310272 n + A310243 n).toNat

end

end A310258.P8648717086078999048

/-! ## A310258.P722347490590939490

`A004526(A310272(n)+A310243(n))`
-/

namespace A310258.P722347490590939490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310272 n + A310243 n).toNat

end

end A310258.P722347490590939490

/-! ## A310258.P7251064791879424472

`A006370(A310272(n)+A310243(n))`
-/

namespace A310258.P7251064791879424472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A310272 n + A310243 n).toNat

end

end A310258.P7251064791879424472

/-! ## A310258.P18237457749145075007

`A025480(A310272(n)+A310243(n))`
-/

namespace A310258.P18237457749145075007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A310272 n + A310243 n).toNat

end

end A310258.P18237457749145075007

/-! ## A310258.P3880451295306123919

`A064680(A310272(n)+A310243(n))`
-/

namespace A310258.P3880451295306123919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A310272 n + A310243 n).toNat

end

end A310258.P3880451295306123919

/-! ## A310258.P5276437489257568766

`A065033(A310272(n)+A310243(n))`
-/

namespace A310258.P5276437489257568766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A310272 n + A310243 n).toNat

end

end A310258.P5276437489257568766

/-! ## A310258.P6702741192458937961

`A097140(A310272(n)+A310243(n))`
-/

namespace A310258.P6702741192458937961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A310272 n + A310243 n).toNat

end

end A310258.P6702741192458937961

/-! ## A310258.P14868856381331583986

`A123108(A310272(n)+A310243(n))`
-/

namespace A310258.P14868856381331583986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A310272 n + A310243 n).toNat

end

end A310258.P14868856381331583986

/-! ## A310258.P3566054535285214504

`A065033(A310243(n)-(1-A310272(n)))`
-/

namespace A310258.P3566054535285214504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A310243 n - (1 - A310272 n)).toNat

end

end A310258.P3566054535285214504

/-! ## A310258.P15272570287768439774

`A310272(n)-A004526(A310272(n)-A310243(n))`
-/

namespace A310258.P15272570287768439774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310272 n - A004526 (A310272 n - A310243 n).toNat

end

end A310258.P15272570287768439774

/-!
# A310260: Coordination sequence Gal.5.10.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310260, there is no canonical definition to state claims against.
-/

/-! ## A310260.P1522018768873003596

`A311577(A062399(n))-A330025(A265227(n+1))`
-/

namespace A310260.P1522018768873003596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311577 (A062399 n).toNat - A330025 (A265227 (n + 1)).toNat

end

end A310260.P1522018768873003596

/-! ## A310260.P5268952547603387565

`A311577(A120126(n))-A330025(A265227(n+1))`
-/

namespace A310260.P5268952547603387565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311577 (A120126 n).toNat - A330025 (A265227 (n + 1)).toNat

end

end A310260.P5268952547603387565

/-! ## A310260.P8011258168011514398

`A311577(A351870(n))-A330025(A265227(n+1))`
-/

namespace A310260.P8011258168011514398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311577 (A351870 n).toNat - A330025 (A265227 (n + 1)).toNat

end

end A310260.P8011258168011514398

/-!
# A310261: Coordination sequence Gal.4.6.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310261, there is no canonical definition to state claims against.
-/

/-! ## A310261.P9342076937293119390

`A354111(n²)+A298981(n+1)`
-/

namespace A310261.P9342076937293119390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354111 (n ^ 2) + A298981 (n + 1)

end

end A310261.P9342076937293119390

/-! ## A310261.P9480181971853310112

`A312065(n)-A163532(A001096(n))`
-/

namespace A310261.P9480181971853310112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n - A163532 (A001096 n).toNat

end

end A310261.P9480181971853310112

/-!
# A310262: Coordination sequence Gal.6.18.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310262, there is no canonical definition to state claims against.
-/

/-! ## A310262.P13698859442668045939

`A244895(A057354(n))+A310258(n)-A155972(n²+9)`
-/

namespace A310262.P13698859442668045939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A057354 n).toNat + (A310258 n - A155972 (n ^ 2 + 9))

end

end A310262.P13698859442668045939

/-! ## A310262.P6635584146360357476

`A310273(n)-A333806(A000244(n))`
-/

namespace A310262.P6635584146360357476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310273 n - A333806 (A000244 n).toNat

end

end A310262.P6635584146360357476

/-! ## A310262.P8530388392782967977

`A310273(n)-A178226(A265612(n))`
-/

namespace A310262.P8530388392782967977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310273 n - A178226 (A265612 n).toNat

end

end A310262.P8530388392782967977

/-! ## A310262.P2250418728215392301

`A310273(n)-A178226(∑[A009697(n)])`
-/

namespace A310262.P2250418728215392301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310273 n - A178226 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A310262.P2250418728215392301

/-! ## A310262.P16798691091042123459

`A310273(n)-A178226(A009697(n)-n)`
-/

namespace A310262.P16798691091042123459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310273 n - A178226 (A009697 n - (n : ℤ)).toNat

end

end A310262.P16798691091042123459

/-!
# A310263: Coordination sequence Gal.6.27.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310263, there is no canonical definition to state claims against.
-/

/-! ## A310263.P4769437375125213945

`A047486(n+1)+A023604(∑[A089749(n+1)²])-n`
-/

namespace A310263.P4769437375125213945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089749 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A023604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ))

end

end A310263.P4769437375125213945

/-! ## A310263.P18444830080826514593

`A047486(n+1)-n+A310076(n)+A049347(A251791(n+1))`
-/

namespace A310263.P18444830080826514593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) - (n : ℤ) + (A310076 n + A049347 (A251791 (n + 1)).toNat)

end

end A310263.P18444830080826514593

/-! ## A310263.P13006646876395582832

`A312799(n)-A001221(A017955(n))`
-/

namespace A310263.P13006646876395582832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312799 n - A001221 (A017955 n).toNat

end

end A310263.P13006646876395582832

/-! ## A310263.P1833226327741805345

`A312655(n)-A244895(A244730(n))`
-/

namespace A310263.P1833226327741805345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312655 n - A244895 (A244730 n).toNat

end

end A310263.P1833226327741805345

/-! ## A310263.P16217434814966917781

`A039956(n+1)-A294180(A299292(n))`
-/

namespace A310263.P16217434814966917781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) - A294180 (A299292 n).toNat

end

end A310263.P16217434814966917781

/-!
# A310264: Coordination sequence Gal.6.20.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310264, there is no canonical definition to state claims against.
-/

/-! ## A310264.P10654678069671495702

`A312684(n)-A226046(A133464(n))`
-/

namespace A310264.P10654678069671495702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312684 n - A226046 (A133464 n).toNat

end

end A310264.P10654678069671495702

/-! ## A310264.P6430814731873664853

`A391991(A158546(n))`
-/

namespace A310264.P6430814731873664853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391991 (A158546 n).toNat

end

end A310264.P6430814731873664853

/-! ## A310264.P1810372914482464102

`A310061(n)+A000523(A002212(n))`
-/

namespace A310264.P1810372914482464102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310061 n + A000523 (A002212 n).toNat

end

end A310264.P1810372914482464102

/-! ## A310264.P7770574976022890708

`A313289(n)-A001221(A055099(n))`
-/

namespace A310264.P7770574976022890708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313289 n - A001221 (A055099 n).toNat

end

end A310264.P7770574976022890708

/-! ## A310264.P12848319166440229272

`A312205(n)-A059841(A185387(n))`
-/

namespace A310264.P12848319166440229272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n - A059841 (A185387 n).toNat

end

end A310264.P12848319166440229272

/-!
# A310265: Coordination sequence Gal.6.19.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310265, there is no canonical definition to state claims against.
-/

/-! ## A310265.P13051465077672647034

`∑[A119585(∑[A322655(n+1)])]`
-/

namespace A310265.P13051465077672647034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322655 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119585 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310265.P13051465077672647034

/-! ## A310265.P16936979728664928629

`A059533(floor(p?[A325456(3*n+1)]/4))`
-/

namespace A310265.P16936979728664928629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059533 ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋.toNat

end

end A310265.P16936979728664928629

/-!
# A310266: Coordination sequence Gal.6.21.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310266, there is no canonical definition to state claims against.
-/

/-! ## A310266.P2654950397408403735

`A310274(n)-A086971(A231606(n+1))`
-/

namespace A310266.P2654950397408403735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310274 n - A086971 (A231606 (n + 1)).toNat

end

end A310266.P2654950397408403735

/-!
# A310267: Coordination sequence Gal.4.12.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310267, there is no canonical definition to state claims against.
-/

/-! ## A310267.P15118923178351047368

`A311764(n)+A011582(A024023(n))`
-/

namespace A310267.P15118923178351047368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311764 n + A011582 (A024023 n).toNat

end

end A310267.P15118923178351047368

/-!
# A310268: Coordination sequence Gal.6.34.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310268, there is no canonical definition to state claims against.
-/

/-! ## A310268.P16846980914373666935

`A314346(n)-A000122(A034472(n))`
-/

namespace A310268.P16846980914373666935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314346 n - A000122 (A034472 n).toNat

end

end A310268.P16846980914373666935

/-! ## A310268.P4723612965843715771

`A312506(n)-A084658(A056544(n+1))`
-/

namespace A310268.P4723612965843715771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 n - A084658 (A056544 (n + 1)).toNat

end

end A310268.P4723612965843715771

/-! ## A310268.P304588505964479646

`A285126(eq[A069513(n+1), A371735(3*n+1)])`
-/

namespace A310268.P304588505964479646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371735 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285126 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A310268.P304588505964479646

/-!
# A310269: Coordination sequence Gal.4.13.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310269, there is no canonical definition to state claims against.
-/

/-! ## A310269.P11050004996470507127

`2*A313230(n)-A219529(n)`
-/

namespace A310269.P11050004996470507127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313230 n - A219529 n

end

end A310269.P11050004996470507127

/-! ## A310269.P8933172151668576222

`2*A313230(n)-A008576(2*n)`
-/

namespace A310269.P8933172151668576222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313230 n - A008576 (2 * n)

end

end A310269.P8933172151668576222

/-! ## A310269.P12498144402892167047

`A219529(n)-A005843(A219529(n)-A313230(n))`
-/

namespace A310269.P12498144402892167047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A005843 (A219529 n - A313230 n).toNat

end

end A310269.P12498144402892167047

/-! ## A310269.P8940022988844034260

`A005843(A313230(n))-A219529(n)`
-/

namespace A310269.P8940022988844034260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313230 n).toNat - A219529 n

end

end A310269.P8940022988844034260

/-! ## A310269.P10791114720296320220

`A004277(abs(10*n-A315419(n)))-A219529(n)`
-/

namespace A310269.P10791114720296320220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 |(10 * n : ℤ) - A315419 n|.toNat - A219529 n

end

end A310269.P10791114720296320220

/-!
# A310270: Coordination sequence Gal.5.14.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310270, there is no canonical definition to state claims against.
-/

/-! ## A310270.P1414646228877118119

`A160755(or(A002264(n), A310272(n)))`
-/

namespace A310270.P1414646228877118119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.lor (A002264 n) (A310272 n)).toNat

end

end A310270.P1414646228877118119

/-! ## A310270.P13225134723319794643

`A310271(n)-A179527(A065975(n))`
-/

namespace A310270.P13225134723319794643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310271 n - A179527 (A065975 n).toNat

end

end A310270.P13225134723319794643

/-! ## A310270.P15340601767092259432

`A310271(n)-A179527(A148939(n))`
-/

namespace A310270.P15340601767092259432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310271 n - A179527 (A148939 n).toNat

end

end A310270.P15340601767092259432

/-! ## A310270.P7494019882486814861

`A310271(n)-A185284(A312738(n))`
-/

namespace A310270.P7494019882486814861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310271 n - A185284 (A312738 n).toNat

end

end A310270.P7494019882486814861

/-! ## A310270.P7521986884652967467

`A310271(n)-A185284(A313110(n))`
-/

namespace A310270.P7521986884652967467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310271 n - A185284 (A313110 n).toNat

end

end A310270.P7521986884652967467

/-!
# A310271: Coordination sequence Gal.5.12.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310271, there is no canonical definition to state claims against.
-/

/-! ## A310271.P12357812888001755522

`A310270(n)+A179527(A065975(n))`
-/

namespace A310271.P12357812888001755522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310270 n + A179527 (A065975 n).toNat

end

end A310271.P12357812888001755522

/-! ## A310271.P1802699625619916676

`A310270(n)+A179527(A148939(n))`
-/

namespace A310271.P1802699625619916676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310270 n + A179527 (A148939 n).toNat

end

end A310271.P1802699625619916676

/-! ## A310271.P4520180107880407191

`A336396(A000142(n))+A310270(n)`
-/

namespace A310271.P4520180107880407191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336396 (A000142 n).toNat + A310270 n

end

end A310271.P4520180107880407191

/-! ## A310271.P7689571127270266579

`A310270(n)+A185284(A312738(n))`
-/

namespace A310271.P7689571127270266579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310270 n + A185284 (A312738 n).toNat

end

end A310271.P7689571127270266579

/-! ## A310271.P372151918725385418

`A310270(n)+A185284(A313110(n))`
-/

namespace A310271.P372151918725385418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310270 n + A185284 (A313110 n).toNat

end

end A310271.P372151918725385418

/-!
# A310272: Coordination sequence Gal.5.11.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310272, there is no canonical definition to state claims against.
-/

/-! ## A310272.P11971408159065401401

`2*A310258(n)-A310243(n)`
-/

namespace A310272.P11971408159065401401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310258 n - A310243 n

end

end A310272.P11971408159065401401

/-! ## A310272.P2921821103238666377

`A005843(A310258(n))-A310243(n)`
-/

namespace A310272.P2921821103238666377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A310258 n).toNat - A310243 n

end

end A310272.P2921821103238666377

/-! ## A310272.P13483211877634089413

`A310273(n)-A280639(A041125(n))`
-/

namespace A310272.P13483211877634089413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310273 n - A280639 (A041125 n).toNat

end

end A310272.P13483211877634089413

/-!
# A310273: Coordination sequence Gal.5.15.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310273, there is no canonical definition to state claims against.
-/

/-! ## A310273.P9969939198903097360

`lt[and(A000123(n), A085516(n+1)), 1]-1`
-/

namespace A310273.P9969939198903097360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000123 n) (A085516 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A310273.P9969939198903097360

/-! ## A310273.P14015274536083790523

`A310262(n)+A178226(A265612(n))`
-/

namespace A310273.P14015274536083790523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310262 n + A178226 (A265612 n).toNat

end

end A310273.P14015274536083790523

/-! ## A310273.P45081001805890446

`or(A030341(A079121(n)), A310272(n))`
-/

namespace A310273.P45081001805890446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030341 (A079121 n).toNat) (A310272 n)

end

end A310273.P45081001805890446

/-!
# A310274: Coordination sequence Gal.6.35.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310274, there is no canonical definition to state claims against.
-/

/-! ## A310274.P524021925819335881

`A310266(n)+A086971(A231606(n+1))`
-/

namespace A310274.P524021925819335881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310266 n + A086971 (A231606 (n + 1)).toNat

end

end A310274.P524021925819335881

/-! ## A310274.P5279907297006431524

`record[A217689(2*n+1)-A343161(n+1)]`
-/

namespace A310274.P5279907297006431524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217689 (2 * n + 1) - A343161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310274.P5279907297006431524

/-! ## A310274.P14669841143609318346

`A310275(n)-A342753(A008965(n+1))`
-/

namespace A310274.P14669841143609318346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310275 n - A342753 (A008965 (n + 1)).toNat

end

end A310274.P14669841143609318346

/-! ## A310274.P14891402134162396407

`A310275(n)-A100910(A270269(n+1))`
-/

namespace A310274.P14891402134162396407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310275 n - A100910 (A270269 (n + 1)).toNat

end

end A310274.P14891402134162396407

/-!
# A310275: Coordination sequence Gal.6.36.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310275, there is no canonical definition to state claims against.
-/

/-! ## A310275.P5369570049619963849

`A342753(A008965(n+1))+A310274(n)`
-/

namespace A310275.P5369570049619963849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A008965 (n + 1)).toNat + A310274 n

end

end A310275.P5369570049619963849

/-!
# A310276: Coordination sequence Gal.6.30.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310276, there is no canonical definition to state claims against.
-/

/-! ## A310276.P11900168129685073786

`record[A310277(n)-A056511(n+1)]`
-/

namespace A310276.P11900168129685073786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310277 n - A056511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310276.P11900168129685073786

/-! ## A310276.P4407988613389428843

`A310277(n)-A059841(A148939(n))`
-/

namespace A310276.P4407988613389428843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310277 n - A059841 (A148939 n).toNat

end

end A310276.P4407988613389428843

/-! ## A310276.P12833581807954039448

`A310277(n)-A179527(A065975(n))`
-/

namespace A310276.P12833581807954039448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310277 n - A179527 (A065975 n).toNat

end

end A310276.P12833581807954039448

/-! ## A310276.P11365180594541579187

`A000007(n+3)+A310277(n)-A179527(A148939(n))`
-/

namespace A310276.P11365180594541579187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 3) + (A310277 n - A179527 (A148939 n).toNat)

end

end A310276.P11365180594541579187

/-! ## A310276.P13039806823312385895

`(A310277(n)-A179527(A148939(n)))*A340085(n+1)`
-/

namespace A310276.P13039806823312385895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A310277 n - A179527 (A148939 n).toNat) * A340085 (n + 1)

end

end A310276.P13039806823312385895

/-!
# A310277: Coordination sequence Gal.6.29.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310277, there is no canonical definition to state claims against.
-/

/-! ## A310277.P596867850580944825

`or(A197879(A085279(n)), A310276(n))`
-/

namespace A310277.P596867850580944825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197879 (A085279 n).toNat) (A310276 n)

end

end A310277.P596867850580944825

/-! ## A310277.P11760020164038668075

`or(A071178(A113444(3*(n+1))), A310276(n))`
-/

namespace A310277.P11760020164038668075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071178 (A113444 (3 * (n + 1))).toNat) (A310276 n)

end

end A310277.P11760020164038668075

/-! ## A310277.P9826289163617066679

`A310276(n)+A059841(A148939(n))`
-/

namespace A310277.P9826289163617066679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310276 n + A059841 (A148939 n).toNat

end

end A310277.P9826289163617066679

/-! ## A310277.P9849450748512635127

`A310276(n)+A255361(A065975(n))`
-/

namespace A310277.P9849450748512635127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310276 n + A255361 (A065975 n).toNat

end

end A310277.P9849450748512635127

/-! ## A310277.P7399507398589139080

`or(A005614(A079382(n+1)), A310276(n))`
-/

namespace A310277.P7399507398589139080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005614 (A079382 (n + 1)).toNat) (A310276 n)

end

end A310277.P7399507398589139080

/-!
# A310281: Coordination sequence Gal.6.9.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310281, there is no canonical definition to state claims against.
-/

/-! ## A310281.P15855369087947790166

`A296368(n)-A030190(A262259(n+1))`
-/

namespace A310281.P15855369087947790166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n - A030190 (A262259 (n + 1)).toNat

end

end A310281.P15855369087947790166

/-! ## A310281.P7859749095472138352

`A296368(n)-A316824(A000081(n+1))`
-/

namespace A310281.P7859749095472138352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n - A316824 (A000081 (n + 1)).toNat

end

end A310281.P7859749095472138352

/-! ## A310281.P4074959838332533090

`A296368(n)-A091970(A362260(n+4))`
-/

namespace A310281.P4074959838332533090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n - A091970 (A362260 (n + 4)).toNat

end

end A310281.P4074959838332533090

/-!
# A310282: Coordination sequence Gal.6.7.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310282, there is no canonical definition to state claims against.
-/

/-! ## A310282.P10890551463184140233

`eq[A322114(A136868(n)), A336352(n+1)]`
-/

namespace A310282.P10890551463184140233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322114 (A136868 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310282.P10890551463184140233

/-! ## A310282.P2090339510206560400

`eq[A292777(n+1), A320111(A292776(n+2))]`
-/

namespace A310282.P2090339510206560400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A292776 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310282.P2090339510206560400

/-! ## A310282.P2483269799613086561

`eq[A067721(A178867(2*(n+2))), A120525(n+3)]`
-/

namespace A310282.P2483269799613086561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067721 (A178867 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310282.P2483269799613086561

/-!
# A310286: Coordination sequence Gal.5.27.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310286, there is no canonical definition to state claims against.
-/

/-! ## A310286.P15207122553583282487

`∑[dr(A082500(A151282(n)))]`
-/

namespace A310286.P15207122553583282487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A082500 (A151282 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310286.P15207122553583282487

/-! ## A310286.P17583575308865404309

`A057985(record[A125781(n)])+A057976(n)`
-/

namespace A310286.P17583575308865404309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A057976 n

end

end A310286.P17583575308865404309

/-!
# A310288: Coordination sequence Gal.6.16.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310288, there is no canonical definition to state claims against.
-/

/-! ## A310288.P7450653290119548239

`A309247(A063199(n+1)+A055998(n))`
-/

namespace A310288.P7450653290119548239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309247 (A063199 (n + 1) + A055998 n).toNat

end

end A310288.P7450653290119548239

/-!
# A310289: Coordination sequence Gal.4.19.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310289, there is no canonical definition to state claims against.
-/

/-! ## A310289.P15469886805380940337

`∑[A006530(A137327(n+4)!)]`
-/

namespace A310289.P15469886805380940337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A137327 (n + 4)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310289.P15469886805380940337

/-!
# A310291: Coordination sequence Gal.6.66.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310291, there is no canonical definition to state claims against.
-/

/-! ## A310291.P6472571400429548771

`A298024(n)-A001222(A150992(n))`
-/

namespace A310291.P6472571400429548771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A001222 (A150992 n).toNat

end

end A310291.P6472571400429548771

/-! ## A310291.P14840547825827228012

`A296368(n)-A102283(A283842(n))`
-/

namespace A310291.P14840547825827228012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n - A102283 (A283842 n).toNat

end

end A310291.P14840547825827228012

/-! ## A310291.P4694392407482721822

`A310295(n)-A118174(A024212(n+1))`
-/

namespace A310291.P4694392407482721822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310295 n - A118174 (A024212 (n + 1)).toNat

end

end A310291.P4694392407482721822

/-! ## A310291.P173928392241787186

`A190563(n+1)-A266786(A032123(n))`
-/

namespace A310291.P173928392241787186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190563 (n + 1) - A266786 (A032123 n).toNat

end

end A310291.P173928392241787186

/-! ## A310291.P12641404423948272406

`A310486(n)-A196228(A139700(n+1))`
-/

namespace A310291.P12641404423948272406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310486 n - A196228 (A139700 (n + 1)).toNat

end

end A310291.P12641404423948272406

/-!
# A310292: Coordination sequence Gal.5.26.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310292, there is no canonical definition to state claims against.
-/

/-! ## A310292.P8832622394877813340

`A004976(n)+A008683(A272277(n))`
-/

namespace A310292.P8832622394877813340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n + A008683 (A272277 n).toNat

end

end A310292.P8832622394877813340

/-! ## A310292.P16990606731462026004

`A311717(n)-A059841(A320950(n))`
-/

namespace A310292.P16990606731462026004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311717 n - A059841 (A320950 n).toNat

end

end A310292.P16990606731462026004

/-! ## A310292.P13374263138461057413

`A311790(n)+A258764(A244407(n+1))`
-/

namespace A310292.P13374263138461057413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311790 n + A258764 (A244407 (n + 1)).toNat

end

end A310292.P13374263138461057413

/-! ## A310292.P10448520024537936364

`A311807(n)-A353846(A008509(n+1))`
-/

namespace A310292.P10448520024537936364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n - A353846 (A008509 (n + 1)).toNat

end

end A310292.P10448520024537936364

/-!
# A310293: Coordination sequence Gal.6.64.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310293, there is no canonical definition to state claims against.
-/

/-! ## A310293.P5415770145297121061

`A310294(n)-A185115(A284568(n))`
-/

namespace A310293.P5415770145297121061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310294 n - A185115 (A284568 n).toNat

end

end A310293.P5415770145297121061

/-! ## A310293.P9216316557629145132

`A310216(n)+A033665(A033428(n))`
-/

namespace A310293.P9216316557629145132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310216 n + A033665 (A033428 n).toNat

end

end A310293.P9216316557629145132

/-! ## A310293.P1102579488627790947

`A312996(n)-A188967(record[A008292(n+1)])`
-/

namespace A310293.P1102579488627790947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312996 n - A188967 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A310293.P1102579488627790947

/-! ## A310293.P321180197958678344

`A336361(A076739(2*n+1))+A000959(n+1)`
-/

namespace A310293.P321180197958678344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336361 (A076739 (2 * n + 1)).toNat + A000959 (n + 1)

end

end A310293.P321180197958678344

/-!
# A310294: Coordination sequence Gal.4.18.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310294, there is no canonical definition to state claims against.
-/

/-! ## A310294.P8801928682735723006

`A310293(n)+A185115(floor(n/2)!²)`
-/

namespace A310294.P8801928682735723006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310293 n + A185115 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2)

end

end A310294.P8801928682735723006

/-! ## A310294.P5142767113397788412

`A310293(n)+A185115(A284568(n))`
-/

namespace A310294.P5142767113397788412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310293 n + A185115 (A284568 n).toNat

end

end A310294.P5142767113397788412

/-! ## A310294.P1018589392323449631

`A336503(2*(n+1))-A126999(A119020(n))`
-/

namespace A310294.P1018589392323449631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336503 (2 * (n + 1)) - A126999 (A119020 n).toNat

end

end A310294.P1018589392323449631

/-! ## A310294.P9929542716718922492

`A312247(n)-A260394(A000244(n))`
-/

namespace A310294.P9929542716718922492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312247 n - A260394 (A000244 n).toNat

end

end A310294.P9929542716718922492

/-! ## A310294.P785122300178756237

`A255199(n+1)+A181834(A000045(n+2))`
-/

namespace A310294.P785122300178756237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1) + A181834 (A000045 (n + 2)).toNat

end

end A310294.P785122300178756237

/-!
# A310295: Coordination sequence Gal.5.24.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310295, there is no canonical definition to state claims against.
-/

/-! ## A310295.P7271923462105598782

`A336705(n)+A193496(A044732(n+1))`
-/

namespace A310295.P7271923462105598782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336705 n + A193496 (A044732 (n + 1)).toNat

end

end A310295.P7271923462105598782

/-! ## A310295.P16926251953671213681

`A312272(n)-A037830(A079612(n+1))`
-/

namespace A310295.P16926251953671213681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312272 n - A037830 (A079612 (n + 1)).toNat

end

end A310295.P16926251953671213681

/-! ## A310295.P12913016994130426957

`A008574(n)-A156707(A302878(n+1))`
-/

namespace A310295.P12913016994130426957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A156707 (A302878 (n + 1)).toNat

end

end A310295.P12913016994130426957

/-! ## A310295.P14146556028369034301

`A301672(n)-A324327(A288387(n))`
-/

namespace A310295.P14146556028369034301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n - A324327 (A288387 n).toNat

end

end A310295.P14146556028369034301

/-! ## A310295.P14135055842297740715

`A260113(3*n+1)-A229062(A005525(n+1))`
-/

namespace A310295.P14135055842297740715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (3 * n + 1) - A229062 (A005525 (n + 1)).toNat

end

end A310295.P14135055842297740715

/-!
# A310296: Coordination sequence Gal.6.52.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310296, there is no canonical definition to state claims against.
-/

/-! ## A310296.P4343901512882672382

`A145383(n+1)+A140361(A002378(n))`
-/

namespace A310296.P4343901512882672382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145383 (n + 1) + A140361 (A002378 n).toNat

end

end A310296.P4343901512882672382

/-! ## A310296.P9967033671540003468

`A311335(n)-A056594(A025507(n+1))`
-/

namespace A310296.P9967033671540003468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311335 n - A056594 (A025507 (n + 1)).toNat

end

end A310296.P9967033671540003468

/-! ## A310296.P14610592537009326075

`A311335(n)+A056594(A025507(n+1)+2)`
-/

namespace A310296.P14610592537009326075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311335 n + A056594 (A025507 (n + 1) + 2).toNat

end

end A310296.P14610592537009326075

/-! ## A310296.P329084203359539995

`A311712(n)-A345197(A267874(n))`
-/

namespace A310296.P329084203359539995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311712 n - A345197 (A267874 n).toNat

end

end A310296.P329084203359539995

/-!
# A310297: Coordination sequence Gal.6.53.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310297, there is no canonical definition to state claims against.
-/

/-! ## A310297.P3677054990355352318

`∑[dr(A006530(A280786(n+2)))]`
-/

namespace A310297.P3677054990355352318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006530 (A280786 (n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310297.P3677054990355352318

/-! ## A310297.P4639691219470765177

`xor(A185284(A310318(n)), A310298(n))`
-/

namespace A310297.P4639691219470765177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A310318 n).toNat) (A310298 n)

end

end A310297.P4639691219470765177

/-! ## A310297.P3474391306680257392

`A310298(n)-A002654(A101589(n+2))`
-/

namespace A310297.P3474391306680257392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310298 n - A002654 (A101589 (n + 2)).toNat

end

end A310297.P3474391306680257392

/-! ## A310297.P18049913554472167094

`A031285(A310298(n))-1`
-/

namespace A310297.P18049913554472167094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A310298 n).toNat - 1

end

end A310297.P18049913554472167094

/-! ## A310297.P7296072369314537546

`A310298(n)%A095613(n)`
-/

namespace A310297.P7296072369314537546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310298 n) (A095613 n)

end

end A310297.P7296072369314537546

/-!
# A310298: Coordination sequence Gal.5.23.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310298, there is no canonical definition to state claims against.
-/

/-! ## A310298.P1222022186057521359

`xor(A185284((3-n)²), A310297(n))`
-/

namespace A310298.P1222022186057521359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 ((3 - (n : ℤ)) ^ 2).toNat) (A310297 n)

end

end A310298.P1222022186057521359

/-!
# A310299: Coordination sequence Gal.4.21.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310299, there is no canonical definition to state claims against.
-/

/-! ## A310299.P8416076020940783343

`∑[A001222(A152124(n)+72)]`
-/

namespace A310299.P8416076020940783343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A152124 n + 72).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310299.P8416076020940783343

/-! ## A310299.P8739338295616108763

`∑[A038548(A109386(3*n+1)²)]`
-/

namespace A310299.P8739338295616108763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A109386 (3 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310299.P8739338295616108763

/-! ## A310299.P3742336725425810788

`A102354(10^ceil(n/2))+4*n-A025826(n+1)-floor((n+1)/5)`
-/

namespace A310299.P3742336725425810788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat + (4 * n : ℤ) - A025826 (n + 1) - ⌊(n + 1 : ℚ) / 5⌋

end

end A310299.P3742336725425810788

/-! ## A310299.P12934800565146146819

`A311762(n)-A342910(A006500(n))`
-/

namespace A310299.P12934800565146146819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311762 n - A342910 (A006500 n).toNat

end

end A310299.P12934800565146146819

/-! ## A310299.P12955460811998825037

`A010064(n+1)-A373834(A078457(3*(n+1)))`
-/

namespace A310299.P12955460811998825037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010064 (n + 1) - A373834 (A078457 (3 * (n + 1))).toNat

end

end A310299.P12955460811998825037

