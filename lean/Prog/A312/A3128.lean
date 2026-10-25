import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A312800: Coordination sequence Gal.6.440.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312800, there is no canonical definition to state claims against.
-/

/-! ## A312800.P1040447633851543406

`A312801(n)%A057806(n)`
-/

namespace A312800.P1040447633851543406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312801 n) (A057806 n)

end

end A312800.P1040447633851543406

/-! ## A312800.P12601733063646331989

`A312801(A032555(n+1)-1)`
-/

namespace A312800.P12601733063646331989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312801 (A032555 (n + 1) - 1).toNat

end

end A312800.P12601733063646331989

/-! ## A312800.P4925787384509288315

`A053735(3^n)*A312801(n)`
-/

namespace A312800.P4925787384509288315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (3 ^ n) * A312801 n

end

end A312800.P4925787384509288315

/-! ## A312800.P4607489184285186377

`A312801(n)*A340365(3^n)`
-/

namespace A312800.P4607489184285186377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312801 n * A340365 (3 ^ n)

end

end A312800.P4607489184285186377

/-! ## A312800.P18165852119959973619

`A312801(n)-A000007(A000244(n))`
-/

namespace A312800.P18165852119959973619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312801 n - A000007 (A000244 n).toNat

end

end A312800.P18165852119959973619

/-!
# A312803: Coordination sequence Gal.6.442.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312803, there is no canonical definition to state claims against.
-/

/-! ## A312803.P15301747928876737946

`A312804(n)-A285007(A026768(n))`
-/

namespace A312803.P15301747928876737946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312804 n - A285007 (A026768 n).toNat

end

end A312803.P15301747928876737946

/-! ## A312803.P2469713481989366786

`A312804(n)-A309632(A077739(n+1))`
-/

namespace A312803.P2469713481989366786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312804 n - A309632 (A077739 (n + 1)).toNat

end

end A312803.P2469713481989366786

/-! ## A312803.P1522984572928470893

`xor(A256266(A172550(n+1)), A312804(n))`
-/

namespace A312803.P1522984572928470893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A256266 (A172550 (n + 1)).toNat) (A312804 n)

end

end A312803.P1522984572928470893

/-!
# A312804: Coordination sequence Gal.6.441.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312804, there is no canonical definition to state claims against.
-/

/-! ## A312804.P7192545331176692520

`A312775(n)+A000120(A061138(n))`
-/

namespace A312804.P7192545331176692520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312775 n + A000120 (A061138 n).toNat

end

end A312804.P7192545331176692520

/-! ## A312804.P13349791288219598775

`A312803(n)+A285007(A026768(n))`
-/

namespace A312804.P13349791288219598775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312803 n + A285007 (A026768 n).toNat

end

end A312804.P13349791288219598775

/-! ## A312804.P6550681277095068023

`A312803(n)+A309632(A077739(n+1))`
-/

namespace A312804.P6550681277095068023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312803 n + A309632 (A077739 (n + 1)).toNat

end

end A312804.P6550681277095068023

/-!
# A312807: Coordination sequence Gal.6.573.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312807, there is no canonical definition to state claims against.
-/

/-! ## A312807.P7599585762569187622

`A312687(n)+A063377(A020092(n))`
-/

namespace A312807.P7599585762569187622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312687 n + A063377 (A020092 n).toNat

end

end A312807.P7599585762569187622

/-! ## A312807.P11943548144955643063

`A312686(n)+A253786(A001665(n))`
-/

namespace A312807.P11943548144955643063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312686 n + A253786 (A001665 n).toNat

end

end A312807.P11943548144955643063

/-! ## A312807.P9519607166531265663

`A312687(n)+A007949(A076975(n+5))`
-/

namespace A312807.P9519607166531265663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312687 n + A007949 (A076975 (n + 5)).toNat

end

end A312807.P9519607166531265663

/-!
# A312812: Coordination sequence Gal.5.271.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312812, there is no canonical definition to state claims against.
-/

/-! ## A312812.P5515056390534865725

`A311603(n)+A008441(A079385(n+1))`
-/

namespace A312812.P5515056390534865725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311603 n + A008441 (A079385 (n + 1)).toNat

end

end A312812.P5515056390534865725

/-! ## A312812.P2561413412648943319

`A352867(A297291(n)^A284254(n+1))`
-/

namespace A312812.P2561413412648943319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352867 (SequenceMachineLib.roundAway ((A297291 n : ℚ) ^ (A284254 (n + 1) : ℤ))).toNat

end

end A312812.P2561413412648943319

/-! ## A312812.P284827212970952428

`A312272(A047263(n+1)%A073457(n+1))`
-/

namespace A312812.P284827212970952428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312272 (Int.tmod (A047263 (n + 1)) (A073457 (n + 1))).toNat

end

end A312812.P284827212970952428

/-!
# A312813: Coordination sequence Gal.6.523.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312813, there is no canonical definition to state claims against.
-/

/-! ## A312813.P3599784125101969709

`A312814(A087051(n))`
-/

namespace A312813.P3599784125101969709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312814 (A087051 n).toNat

end

end A312813.P3599784125101969709

/-! ## A312813.P6258561871290894980

`A312814(A227549(n+1))`
-/

namespace A312813.P6258561871290894980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312814 (A227549 (n + 1)).toNat

end

end A312813.P6258561871290894980

/-! ## A312813.P15455423177816030572

`A312814(A396204(n+1))`
-/

namespace A312813.P15455423177816030572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312814 (A396204 (n + 1)).toNat

end

end A312813.P15455423177816030572

/-! ## A312813.P15619416480540234799

`A312814(n)+A001222(C(n, 9)!)`
-/

namespace A312813.P15619416480540234799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312814 n + A001222 (Nat.factorial (Nat.choose n 9))

end

end A312813.P15619416480540234799

/-!
# A312815: Coordination sequence Gal.6.522.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312815, there is no canonical definition to state claims against.
-/

/-! ## A312815.P2934169161571214739

`A312816(A087051(n))`
-/

namespace A312815.P2934169161571214739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312816 (A087051 n).toNat

end

end A312815.P2934169161571214739

/-! ## A312815.P7694843080009661924

`A312816(A227549(n+1))`
-/

namespace A312815.P7694843080009661924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312816 (A227549 (n + 1)).toNat

end

end A312815.P7694843080009661924

/-! ## A312815.P509821060150790080

`A312816(A396204(n+1))`
-/

namespace A312815.P509821060150790080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312816 (A396204 (n + 1)).toNat

end

end A312815.P509821060150790080

/-! ## A312815.P45195610024034375

`A312816(n^A139337(n))`
-/

namespace A312815.P45195610024034375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312816 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A139337 n : ℤ))).toNat

end

end A312815.P45195610024034375

/-! ## A312815.P16009742497798221603

`A323533(n)!*A312816(n)`
-/

namespace A312815.P16009742497798221603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A323533 n).toNat : ℤ) * A312816 n

end

end A312815.P16009742497798221603

/-!
# A312816: Coordination sequence Gal.6.575.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312816, there is no canonical definition to state claims against.
-/

/-! ## A312816.P9361646558206889987

`A312815(n)+A005843(A185284(3*n+4))`
-/

namespace A312816.P9361646558206889987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312815 n + A005843 (A185284 (3 * n + 4)).toNat

end

end A312816.P9361646558206889987

/-! ## A312816.P13457243240291009856

`or(A001221(A053497(n)), A312813(n))`
-/

namespace A312816.P13457243240291009856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A053497 n).toNat) (A312813 n)

end

end A312816.P13457243240291009856

/-! ## A312816.P7798690754020841082

`or(A001221(A053497(n)), A312814(n))`
-/

namespace A312816.P7798690754020841082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A053497 n).toNat) (A312814 n)

end

end A312816.P7798690754020841082

/-! ## A312816.P4653869856200986721

`or(A001222(A053497(n)), A312815(n))`
-/

namespace A312816.P4653869856200986721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A053497 n).toNat) (A312815 n)

end

end A312816.P4653869856200986721

/-!
# A312817: Coordination sequence Gal.6.526.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312817, there is no canonical definition to state claims against.
-/

/-! ## A312817.P2655812599825248970

`A312818(n)-A347706(A008930(n+1))`
-/

namespace A312817.P2655812599825248970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312818 n - A347706 (A008930 (n + 1)).toNat

end

end A312817.P2655812599825248970

/-!
# A312819: Coordination sequence Gal.6.525.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312819, there is no canonical definition to state claims against.
-/

/-! ## A312819.P1292507009052402594

`A312791(n)+A312820(n)-A312792(n)`
-/

namespace A312819.P1292507009052402594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312791 n + (A312820 n - A312792 n)

end

end A312819.P1292507009052402594

/-! ## A312819.P1068683532974020055

`and(A312820(A062399(n)), A312821(n))`
-/

namespace A312819.P1068683532974020055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A312820 (A062399 n).toNat) (A312821 n)

end

end A312819.P1068683532974020055

/-! ## A312819.P14915460886942521037

`A312820(n*A287383(n))`
-/

namespace A312819.P14915460886942521037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312820 ((n : ℤ) * A287383 n).toNat

end

end A312819.P14915460886942521037

/-! ## A312819.P8013268167037759056

`A312820(n^A287383(n))`
-/

namespace A312819.P8013268167037759056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312820 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287383 n : ℤ))).toNat

end

end A312819.P8013268167037759056

/-! ## A312819.P10824889756192692430

`A312820(A287383(n)-1+n)`
-/

namespace A312819.P10824889756192692430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312820 (A287383 n - 1 + (n : ℤ)).toNat

end

end A312819.P10824889756192692430

/-!
# A312820: Coordination sequence Gal.6.578.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312820, there is no canonical definition to state claims against.
-/

/-! ## A312820.P12743851932717234508

`A312792(n)+A312819(n)-A312791(n)`
-/

namespace A312820.P12743851932717234508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312792 n + (A312819 n - A312791 n)

end

end A312820.P12743851932717234508

/-! ## A312820.P18397977361249192692

`A000027(A312792(n)+A312819(n)%A312791(n))`
-/

namespace A312820.P18397977361249192692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A312792 n + Int.tmod (A312819 n) (A312791 n)).toNat

end

end A312820.P18397977361249192692

/-! ## A312820.P6687368905732432484

`A312822(n)-A006925(A288025(n+1))`
-/

namespace A312820.P6687368905732432484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312822 n - A006925 (A288025 (n + 1)).toNat

end

end A312820.P6687368905732432484

/-!
# A312821: Coordination sequence Gal.6.524.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312821, there is no canonical definition to state claims against.
-/

/-! ## A312821.P12216338127621667804

`A312822(n)+A274101(A309862(n))`
-/

namespace A312821.P12216338127621667804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312822 n + A274101 (A309862 n).toNat

end

end A312821.P12216338127621667804

/-! ## A312821.P14421108440534312309

`A312822(n)-A010894(A313116(n))`
-/

namespace A312821.P14421108440534312309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312822 n - A010894 ((A313116 n).toNat + 21)

end

end A312821.P14421108440534312309

/-! ## A312821.P14706433816544211160

`∏{e}[5^n, A312822(#)]`
-/

namespace A312821.P14706433816544211160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A312822 (Nat.factorization (f1 n) p)

end

end A312821.P14706433816544211160

/-! ## A312821.P14481701574979621022

`A312822(n)%A268394(2*n+3)`
-/

namespace A312821.P14481701574979621022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312822 n) (A268394 (2 * n + 3))

end

end A312821.P14481701574979621022

/-! ## A312821.P8566338910837778834

`A312822(n)+A000007(3^n-n)`
-/

namespace A312821.P8566338910837778834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312822 n + A000007 (3 ^ n - n)

end

end A312821.P8566338910837778834

/-!
# A312822: Coordination sequence Gal.6.577.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312822, there is no canonical definition to state claims against.
-/

/-! ## A312822.P17177691338404293283

`2*A312752(n)-A008579(n)`
-/

namespace A312822.P17177691338404293283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312752 n - A008579 n

end

end A312822.P17177691338404293283

/-! ## A312822.P13386637146801886356

`2*A312752(n)-A250122(A005843(n))`
-/

namespace A312822.P13386637146801886356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312752 n - A250122 (A005843 n).toNat

end

end A312822.P13386637146801886356

/-! ## A312822.P10046371895561115845

`2*A312752(n)+A008579(n)*A317939(A001358(n+1))`
-/

namespace A312822.P10046371895561115845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312752 n + A008579 n * A317939 (A001358 (n + 1)).toNat

end

end A312822.P10046371895561115845

/-! ## A312822.P18405647742017253234

`A005843(A312752(n))-A008579(n)`
-/

namespace A312822.P18405647742017253234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312752 n).toNat - A008579 n

end

end A312822.P18405647742017253234

/-! ## A312822.P10690977920678480563

`A005843(A312752(n))-A250122(A005843(n))`
-/

namespace A312822.P10690977920678480563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312752 n).toNat - A250122 (A005843 n).toNat

end

end A312822.P10690977920678480563

/-!
# A312827: Coordination sequence Gal.6.588.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312827, there is no canonical definition to state claims against.
-/

/-! ## A312827.P17826129195865990578

`A008579(n)+and(4, A183757(n))`
-/

namespace A312827.P17826129195865990578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + Int.land 4 (A183757 n)

end

end A312827.P17826129195865990578

/-!
# A312829: Coordination sequence Gal.3.8.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312829, there is no canonical definition to state claims against.
-/

/-! ## A312829.P1418497920780710749

`A381614(A135504(n+1))+n`
-/

namespace A312829.P1418497920780710749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381614 (A135504 (n + 1)).toNat + (n : ℤ)

end

end A312829.P1418497920780710749

/-! ## A312829.P14363727915264818815

`A008574(n)-A151759(A357641(n))`
-/

namespace A312829.P14363727915264818815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A151759 (A357641 n).toNat

end

end A312829.P14363727915264818815

/-!
# A312830: Coordination sequence Gal.6.103.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312830, there is no canonical definition to state claims against.
-/

/-! ## A312830.P11394064252840157749

`record[A165105(∑[A098008(n+1)])]`
-/

namespace A312830.P11394064252840157749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165105 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312830.P11394064252840157749

/-!
# A312831: Coordination sequence Gal.6.105.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312831, there is no canonical definition to state claims against.
-/

/-! ## A312831.P7783657456660818593

`A008407(n+1)+A000002(A038041(n+1))`
-/

namespace A312831.P7783657456660818593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008407 (n + 1) + A000002 (A038041 (n + 1)).toNat

end

end A312831.P7783657456660818593

/-! ## A312831.P3384880237881307337

`A040001(A037234(3*n))+A008407(n+1)`
-/

namespace A312831.P3384880237881307337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A037234 (3 * n)).toNat + A008407 (n + 1)

end

end A312831.P3384880237881307337

/-! ## A312831.P6346669376078121840

`A120936(Δ[A091592(n+1)])+A020497(n+1)`
-/

namespace A312831.P6346669376078121840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (f1 (n + 1) - f1 n).toNat + A020497 (n + 1)

end

end A312831.P6346669376078121840

/-! ## A312831.P5783604995369154509

`A060576(A144207(3*n+1))+A020497(n+1)`
-/

namespace A312831.P5783604995369154509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A144207 (3 * n + 1)).toNat + A020497 (n + 1)

end

end A312831.P5783604995369154509

/-! ## A312831.P2100715656964191957

`A302354(A180662(3*n+2))+A020497(n+1)`
-/

namespace A312831.P2100715656964191957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (A180662 (3 * n + 2)).toNat + A020497 (n + 1)

end

end A312831.P2100715656964191957

/-!
# A312832: Coordination sequence Gal.6.64.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312832, there is no canonical definition to state claims against.
-/

/-! ## A312832.P2426137873485433224

`record[and(A145194(n+1), A265509(n))]`
-/

namespace A312832.P2426137873485433224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145194 (n + 1)) (A265509 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312832.P2426137873485433224

/-! ## A312832.P7986144970238517562

`xor(A289508(A056276(n+1)), A311228(n))`
-/

namespace A312832.P7986144970238517562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A289508 (A056276 (n + 1)).toNat) (A311228 n)

end

end A312832.P7986144970238517562

/-!
# A312834: Coordination sequence Gal.6.11.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312834, there is no canonical definition to state claims against.
-/

/-! ## A312834.P7164236217472200950

`A327974(n!)+A327953(3*n+2)`
-/

namespace A312834.P7164236217472200950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327974 (Nat.factorial n) + A327953 (3 * n + 2)

end

end A312834.P7164236217472200950

/-! ## A312834.P6508658901451305803

`record[A144493(2*n+1)%∑[A051700(n)]]`
-/

namespace A312834.P6508658901451305803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144493 (2 * n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312834.P6508658901451305803

/-! ## A312834.P17897168454984629816

`A016777(n)+A001222(A135312(n))`
-/

namespace A312834.P17897168454984629816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A001222 (A135312 n).toNat

end

end A312834.P17897168454984629816

/-! ## A312834.P15478295909023067616

`A310987(n)+A202238(A007070(n))`
-/

namespace A312834.P15478295909023067616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310987 n + A202238 (A007070 n).toNat

end

end A312834.P15478295909023067616

/-! ## A312834.P16156825123564731445

`A310987(n)+A202238(A073075(n))`
-/

namespace A312834.P16156825123564731445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310987 n + A202238 (A073075 n).toNat

end

end A312834.P16156825123564731445

/-!
# A312835: Coordination sequence Gal.5.20.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312835, there is no canonical definition to state claims against.
-/

/-! ## A312835.P7205851234035457183

`A313381(n)-A001221(A010683(n))`
-/

namespace A312835.P7205851234035457183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313381 n - A001221 (A010683 n).toNat

end

end A312835.P7205851234035457183

/-! ## A312835.P8943128892579588982

`A016813(n)-A056169(A291000(n))`
-/

namespace A312835.P8943128892579588982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A056169 (A291000 n).toNat

end

end A312835.P8943128892579588982

/-! ## A312835.P9140972546214936782

`A000959(n+1)+A001221(∑[A232970(n)])`
-/

namespace A312835.P9140972546214936782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A312835.P9140972546214936782

/-! ## A312835.P16681798208509463500

`lt[A147311(n)², A147311(A094607(n+1))]`
-/

namespace A312835.P16681798208509463500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147311 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147311 (A094607 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A312835.P16681798208509463500

/-! ## A312835.P1512254066383089729

`A191873(A000037(n+1))-A005117(n+1)`
-/

namespace A312835.P1512254066383089729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191873 (A000037 (n + 1)).toNat - A005117 (n + 1)

end

end A312835.P1512254066383089729

/-!
# A312837: Coordination sequence Gal.5.10.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312837, there is no canonical definition to state claims against.
-/

/-! ## A312837.P14352000024290446492

`A312856(n)-A337345(A242725(n))`
-/

namespace A312837.P14352000024290446492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312856 n - A337345 (A242725 n).toNat

end

end A312837.P14352000024290446492

/-! ## A312837.P16116174787376658615

`A001915(n+1)-A353865(A002522(n))`
-/

namespace A312837.P16116174787376658615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001915 (n + 1) - A353865 (A002522 n).toNat

end

end A312837.P16116174787376658615

/-! ## A312837.P11682596176624762359

`A313389(n)-A326787(A062318(n+1))`
-/

namespace A312837.P11682596176624762359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313389 n - A326787 (A062318 (n + 1)).toNat

end

end A312837.P11682596176624762359

/-!
# A312838: Coordination sequence Gal.6.33.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312838, there is no canonical definition to state claims against.
-/

/-! ## A312838.P13078547460171132386

`A077059(A032555(n+1))+A062383(n)`
-/

namespace A312838.P13078547460171132386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077059 (A032555 (n + 1)).toNat + A062383 n

end

end A312838.P13078547460171132386

/-!
# A312839: Coordination sequence Gal.4.12.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312839, there is no canonical definition to state claims against.
-/

/-! ## A312839.P2125216223455706816

`A055181(A009897(n)*A138708(n+1))`
-/

namespace A312839.P2125216223455706816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055181 (A009897 n * A138708 (n + 1)).toNat

end

end A312839.P2125216223455706816

/-! ## A312839.P16345444556976592836

`A055181(lcm(A009897(n), A138708(n+1)))`
-/

namespace A312839.P16345444556976592836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055181 (Int.lcm (A009897 n) (A138708 (n + 1)))

end

end A312839.P16345444556976592836

/-! ## A312839.P14621946391743884287

`record[∑[3-Δ[A262879(n+3)]]]`
-/

namespace A312839.P14621946391743884287
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262879 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312839.P14621946391743884287

/-! ## A312839.P4992954555802807060

`eq[A002117(A114188(2*(n+1))), A014572(n)]`
-/

namespace A312839.P4992954555802807060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (A114188 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014572 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312839.P4992954555802807060

/-! ## A312839.P8312955397429522393

`∑[A001222(A087191(n+1)-A087179(n+1))]`
-/

namespace A312839.P8312955397429522393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A087191 (n + 1) - A087179 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312839.P8312955397429522393

/-!
# A312840: Coordination sequence Gal.5.243.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312840, there is no canonical definition to state claims against.
-/

/-! ## A312840.P5720461038492911142

`A326787(A000213(n))+A047470(n+1)`
-/

namespace A312840.P5720461038492911142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 (A000213 n).toNat + A047470 (n + 1)

end

end A312840.P5720461038492911142

/-! ## A312840.P12598044885171199061

`A047471(n+1)+A010051(A323679(n))`
-/

namespace A312840.P12598044885171199061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1) + A010051 (A323679 n).toNat

end

end A312840.P12598044885171199061

/-! ## A312840.P18419356730274665668

`A046645(A000302(n))+sqrt(A091419(n+1))`
-/

namespace A312840.P18419356730274665668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046645 (A000302 n).toNat : ℝ) + Real.sqrt (A091419 (n + 1) : ℝ)

end

end A312840.P18419356730274665668

/-! ## A312840.P8280295445665476281

`A047621(A032559(n+1))-A100429(n+1)`
-/

namespace A312840.P8280295445665476281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (A032559 (n + 1)).toNat - A100429 (n + 1)

end

end A312840.P8280295445665476281

/-!
# A312841: Coordination sequence Gal.4.121.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312841, there is no canonical definition to state claims against.
-/

/-! ## A312841.P16614384286949696907

`lt[A257327(n+1), A112798(A325079(n+1))]`
-/

namespace A312841.P16614384286949696907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A325079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A312841.P16614384286949696907

/-!
# A312843: Coordination sequence Gal.6.34.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312843, there is no canonical definition to state claims against.
-/

/-! ## A312843.P9281318174618694244

`A175424(A125965(2*(n+2)))+A008574(n)`
-/

namespace A312843.P9281318174618694244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175424 (A125965 (2 * (n + 2))).toNat + A008574 n

end

end A312843.P9281318174618694244

/-! ## A312843.P317463705070354963

`record[A124832(A227878(2*n+1)+1)]`
-/

namespace A312843.P317463705070354963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124832 (A227878 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312843.P317463705070354963

/-!
# A312844: Coordination sequence Gal.6.513.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312844, there is no canonical definition to state claims against.
-/

/-! ## A312844.P5556421117103438069

`A312842(n)+A141736(A312850(3*n+2))`
-/

namespace A312844.P5556421117103438069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312842 n + A141736 (A312850 (3 * n + 2)).toNat

end

end A312844.P5556421117103438069

/-!
# A312846: Coordination sequence Gal.5.155.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312846, there is no canonical definition to state claims against.
-/

/-! ## A312846.P7666454096860660439

`lt[Δ[A270864(n+5)], A272386(n+1)]`
-/

namespace A312846.P7666454096860660439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270864 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A312846.P7666454096860660439

/-!
# A312849: Coordination sequence Gal.5.217.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312849, there is no canonical definition to state claims against.
-/

/-! ## A312849.P368092385073485187

`2*A310970(n)-A310937(n)`
-/

namespace A312849.P368092385073485187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310970 n - A310937 n

end

end A312849.P368092385073485187

/-! ## A312849.P2077900016592671060

`A005843(A310970(n))-A310937(n)`
-/

namespace A312849.P2077900016592671060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A310970 n).toNat - A310937 n

end

end A312849.P2077900016592671060

/-! ## A312849.P2593274904320924778

`xor(A122285(A000071(n+1)), A311096(n))`
-/

namespace A312849.P2593274904320924778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122285 (A000071 (n + 1)).toNat) (A311096 n)

end

end A312849.P2593274904320924778

/-! ## A312849.P582983245292042727

`A314612(n)-A276004(A347167(n+1))`
-/

namespace A312849.P582983245292042727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314612 n - A276004 (A347167 (n + 1)).toNat

end

end A312849.P582983245292042727

/-!
# A312850: Coordination sequence Gal.6.12.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312850, there is no canonical definition to state claims against.
-/

/-! ## A312850.P13297545154693216932

`∑[A073093(A161202(n)²)]`
-/

namespace A312850.P13297545154693216932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A161202 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312850.P13297545154693216932

/-! ## A312850.P10225543929987762563

`A352514(n²)+A312834(n)`
-/

namespace A312850.P10225543929987762563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (n ^ 2) + A312834 n

end

end A312850.P10225543929987762563

/-! ## A312850.P1496037513113358442

`∑[A031057(∑[A137959(n)])]`
-/

namespace A312850.P1496037513113358442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137959 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312850.P1496037513113358442

/-! ## A312850.P10148147836255952400

`∑[A282243(A372540(n))]-2`
-/

namespace A312850.P10148147836255952400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282243 (A372540 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A312850.P10148147836255952400

/-! ## A312850.P12407293337539203144

`∑[or(1, A020639(A322725(n)))]`
-/

namespace A312850.P12407293337539203144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 (A322725 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312850.P12407293337539203144

/-!
# A312851: Coordination sequence Gal.5.13.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312851, there is no canonical definition to state claims against.
-/

/-! ## A312851.P6277999569660676561

`A016825(n)-A279387(A003453(n+5))`
-/

namespace A312851.P6277999569660676561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A279387 (A003453 (n + 5)).toNat

end

end A312851.P6277999569660676561

/-!
# A312852: Coordination sequence Gal.6.5.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312852, there is no canonical definition to state claims against.
-/

/-! ## A312852.P12734796018174907700

`A313383(n)-A071625(14*C(∑[n]+1, 2)+1)`
-/

namespace A312852.P12734796018174907700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313383 n - A071625 (14 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 + 1)

end

end A312852.P12734796018174907700

/-! ## A312852.P11888901494920841062

`A311037(n)+A052344(A186996(n))`
-/

namespace A312852.P11888901494920841062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311037 n + A052344 (A186996 n).toNat

end

end A312852.P11888901494920841062

/-! ## A312852.P10376105762148933228

`A301688(n)-A275964(A322140(n))`
-/

namespace A312852.P10376105762148933228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n - A275964 (A322140 n).toNat

end

end A312852.P10376105762148933228

/-! ## A312852.P11737396593256318578

`A320911(n+1)-A277141(A160714(2*n))`
-/

namespace A312852.P11737396593256318578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320911 (n + 1) - A277141 (A160714 (2 * n)).toNat

end

end A312852.P11737396593256318578

/-! ## A312852.P15000772501147083395

`A305614(A001835(n))+A000378(3*n+2)`
-/

namespace A312852.P15000772501147083395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 (A001835 n).toNat + A000378 (3 * n + 2)

end

end A312852.P15000772501147083395

/-!
# A312853: Coordination sequence Gal.6.41.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312853, there is no canonical definition to state claims against.
-/

/-! ## A312853.P6656034232840499306

`∑[A317207(A355125(n+1)+1)]`
-/

namespace A312853.P6656034232840499306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (A355125 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312853.P6656034232840499306

/-! ## A312853.P13581527599006189596

`∑[A218578(A005470(n))]+2*n`
-/

namespace A312853.P13581527599006189596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218578 (A005470 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A312853.P13581527599006189596

/-! ## A312853.P3869402445118571890

`∑[A001222(A008528(n)+A008504(n))]`
-/

namespace A312853.P3869402445118571890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008528 n + A008504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312853.P3869402445118571890

/-! ## A312853.P12216733301943420905

`A189718(A095603(n))+A028845(n+1)`
-/

namespace A312853.P12216733301943420905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 (A095603 n).toNat + A028845 (n + 1)

end

end A312853.P12216733301943420905

/-! ## A312853.P9062216007841083704

`A028845(n+1)-A028862(A121704(n+1))`
-/

namespace A312853.P9062216007841083704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028845 (n + 1) - A028862 (A121704 (n + 1)).toNat

end

end A312853.P9062216007841083704

/-!
# A312854: Coordination sequence Gal.5.7.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312854, there is no canonical definition to state claims against.
-/

/-! ## A312854.P2276975868291740648

`∑[A351532(n+1)+A351522(A351535(n+1))]`
-/

namespace A312854.P2276975868291740648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351532 (n + 1) + A351522 (A351535 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312854.P2276975868291740648

/-! ## A312854.P7498219708291371299

`∑[dr(A020883(A017426(n)))]`
-/

namespace A312854.P7498219708291371299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A020883 (A017426 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312854.P7498219708291371299

/-! ## A312854.P12741746888266142148

`record[A106503(2*n+5)%A321499(n+1)]`
-/

namespace A312854.P12741746888266142148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106503 (2 * n + 5)) (A321499 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312854.P12741746888266142148

/-! ## A312854.P3788180287978065477

`A232721(A122624(n+1))+A232710(n)`
-/

namespace A312854.P3788180287978065477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232721 (A122624 (n + 1)).toNat + A232710 n

end

end A312854.P3788180287978065477

/-! ## A312854.P9478305332752332693

`A232721(A004859(n+1)+1)+A232710(n)`
-/

namespace A312854.P9478305332752332693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232721 (A004859 (n + 1) + 1).toNat + A232710 n

end

end A312854.P9478305332752332693

/-!
# A312855: Coordination sequence Gal.6.14.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312855, there is no canonical definition to state claims against.
-/

/-! ## A312855.P12040334222917235646

`A311182(n)+A185012(A001006(n))`
-/

namespace A312855.P12040334222917235646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311182 n + A185012 (A001006 n).toNat

end

end A312855.P12040334222917235646

/-! ## A312855.P6483575631202107831

`A311182(n)+A290739(A106366(n+1))`
-/

namespace A312855.P6483575631202107831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311182 n + A290739 (A106366 (n + 1)).toNat

end

end A312855.P6483575631202107831

/-! ## A312855.P12661061710991844691

`A185012(n)+A121373(A056909(n+1))+A045718(2*n+1)`
-/

namespace A312855.P12661061710991844691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n + (A121373 (A056909 (n + 1)).toNat + A045718 (2 * n + 1))

end

end A312855.P12661061710991844691

/-! ## A312855.P17126365379346903408

`A311182(n^gcd(11, n))+char[2]`
-/

namespace A312855.P17126365379346903408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311182 (n ^ Nat.gcd 11 n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312855.P17126365379346903408

/-! ## A312855.P1801560393267004735

`A311182(A062399(n))+char[2]`
-/

namespace A312855.P1801560393267004735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311182 (A062399 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312855.P1801560393267004735

/-!
# A312856: Coordination sequence Gal.6.15.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312856, there is no canonical definition to state claims against.
-/

/-! ## A312856.P8808104402372582601

`A312837(n)+A185284(A048679(3*n+4))`
-/

namespace A312856.P8808104402372582601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312837 n + A185284 (A048679 (3 * n + 4)).toNat

end

end A312856.P8808104402372582601

/-! ## A312856.P5954141825848538516

`or(A374099(A374120(n+3)), A375057(n))`
-/

namespace A312856.P5954141825848538516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A374099 (A374120 (n + 3)).toNat) (A375057 n)

end

end A312856.P5954141825848538516

/-! ## A312856.P16310642144867345775

`eq[A358136(n+6), A358750(A152193(n))]`
-/

namespace A312856.P16310642144867345775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358136 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358750 (A152193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312856.P16310642144867345775

/-! ## A312856.P9357202160912019921

`and(A315252(n)-A001222(A290356(n)), -3)`
-/

namespace A312856.P9357202160912019921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A315252 n - A001222 (A290356 n).toNat) (-3)

end

end A312856.P9357202160912019921

/-!
# A312857: Coordination sequence Gal.6.317.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312857, there is no canonical definition to state claims against.
-/

/-! ## A312857.P5864448105399955826

`A236850(3*n+2)+A071838(A000106(n+2))`
-/

namespace A312857.P5864448105399955826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236850 (3 * n + 2) + A071838 (A000106 (n + 2)).toNat

end

end A312857.P5864448105399955826

/-! ## A312857.P15368692156478412669

`A316557(A328430(n))+A047346(n+1)`
-/

namespace A312857.P15368692156478412669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316557 (A328430 n).toNat + A047346 (n + 1)

end

end A312857.P15368692156478412669

/-! ## A312857.P12856522310513459274

`A004396(A286361(3^n+1)+4*n)+n`
-/

namespace A312857.P12856522310513459274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A286361 (3 ^ n + 1) + (4 * n : ℤ)).toNat + (n : ℤ)

end

end A312857.P12856522310513459274

/-! ## A312857.P2167981149247121308

`A312896(n)-A107110(A283089(n))`
-/

namespace A312857.P2167981149247121308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n - A107110 (A283089 n).toNat

end

end A312857.P2167981149247121308

/-! ## A312857.P7633513283839738366

`xor(A069283(A148694(n)), A311807(n))`
-/

namespace A312857.P7633513283839738366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069283 (A148694 n).toNat) (A311807 n)

end

end A312857.P7633513283839738366

/-!
# A312858: Coordination sequence Gal.6.53.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312858, there is no canonical definition to state claims against.
-/

/-! ## A312858.P11853847594690256911

`A014684(A311215(n)+A061603(n))`
-/

namespace A312858.P11853847594690256911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A311215 n + A061603 n).toNat

end

end A312858.P11853847594690256911

/-! ## A312858.P15126053240149500986

`A332823(A293606(n))+A311702(n)`
-/

namespace A312858.P15126053240149500986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A293606 n).toNat + A311702 n

end

end A312858.P15126053240149500986

/-! ## A312858.P162287097048663251

`A312882(n)-A107078(A087185(n+1))`
-/

namespace A312858.P162287097048663251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312882 n - A107078 (A087185 (n + 1)).toNat

end

end A312858.P162287097048663251

/-! ## A312858.P717214962840742854

`xor(A232991(A351364(n+1)), A311327(n))`
-/

namespace A312858.P717214962840742854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A232991 (A351364 (n + 1)).toNat) (A311327 n)

end

end A312858.P717214962840742854

/-! ## A312858.P17637682885688938065

`A118682(n)+A311356(n)-A025441(A178543(n))`
-/

namespace A312858.P17637682885688938065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118682 n + (A311356 n - A025441 (A178543 n).toNat)

end

end A312858.P17637682885688938065

/-!
# A312859: Coordination sequence Gal.5.23.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312859, there is no canonical definition to state claims against.
-/

/-! ## A312859.P15537721189194752222

`A310995(n)+A001221(A279570(n))`
-/

namespace A312859.P15537721189194752222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310995 n + A001221 (A279570 n).toNat

end

end A312859.P15537721189194752222

/-! ## A312859.P17072839480014709632

`xor(A021913(n), A311742(A087051(n)))`
-/

namespace A312859.P17072839480014709632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A021913 n) (A311742 (A087051 n).toNat)

end

end A312859.P17072839480014709632

/-! ## A312859.P13987506846693825802

`A311043(n)+A001221(A353944(n+1))`
-/

namespace A312859.P13987506846693825802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311043 n + A001221 (A353944 (n + 1)).toNat

end

end A312859.P13987506846693825802

/-! ## A312859.P12230808080189533348

`xor(A021913(A227549(n+1)), A311742(n))`
-/

namespace A312859.P12230808080189533348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A021913 (A227549 (n + 1)).toNat) (A311742 n)

end

end A312859.P12230808080189533348

/-! ## A312859.P7585090482751589380

`xor(A021913(A227549(n+1)), A311743(n))`
-/

namespace A312859.P7585090482751589380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A021913 (A227549 (n + 1)).toNat) (A311743 n)

end

end A312859.P7585090482751589380

/-!
# A312860: Coordination sequence Gal.6.546.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312860, there is no canonical definition to state claims against.
-/

/-! ## A312860.P10475305855631190113

`or(A008574(n), A174886(A008346(n)))`
-/

namespace A312860.P10475305855631190113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A174886 (A008346 n).toNat)

end

end A312860.P10475305855631190113

/-! ## A312860.P2669720935904295259

`A312928(n)-A001221(A146619(n+1))`
-/

namespace A312860.P2669720935904295259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 n - A001221 (A146619 (n + 1)).toNat

end

end A312860.P2669720935904295259

/-! ## A312860.P12869804799689466331

`A311184(n)+A213728(A342252(n+9))`
-/

namespace A312860.P12869804799689466331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311184 n + A213728 (A342252 (n + 9)).toNat

end

end A312860.P12869804799689466331

/-! ## A312860.P17808290605966527180

`A188434(n+1)-A353742(A138137(n+1))`
-/

namespace A312860.P17808290605966527180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 1) - A353742 (A138137 (n + 1)).toNat

end

end A312860.P17808290605966527180

/-! ## A312860.P892557271847234689

`A124760(A115059(2*n+3))+A008574(n)`
-/

namespace A312860.P892557271847234689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A115059 (2 * n + 3)).toNat + A008574 n

end

end A312860.P892557271847234689

/-!
# A312861: Coordination sequence Gal.6.54.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312861, there is no canonical definition to state claims against.
-/

/-! ## A312861.P9564335317673852431

`or(A311453(n), A332016(A219078(n+1)))`
-/

namespace A312861.P9564335317673852431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311453 n) (A332016 (A219078 (n + 1)).toNat)

end

end A312861.P9564335317673852431

/-! ## A312861.P1699781430516272396

`∑[A350238(2*n+1)+A246142(2*n+5)]`
-/

namespace A312861.P1699781430516272396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350238 (2 * n + 1) + A246142 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312861.P1699781430516272396

/-! ## A312861.P12262132009646430120

`xor(A001221(A072214(n)), A312878(n))`
-/

namespace A312861.P12262132009646430120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A072214 n).toNat) (A312878 n)

end

end A312861.P12262132009646430120

/-! ## A312861.P8896664448652742980

`A311230(A087051(n))+A115878(n+1)`
-/

namespace A312861.P8896664448652742980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311230 (A087051 n).toNat + A115878 (n + 1)

end

end A312861.P8896664448652742980

/-! ## A312861.P9816931910902480528

`or(A093955(n+1), A311478(A087051(n)))`
-/

namespace A312861.P9816931910902480528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093955 (n + 1)) (A311478 (A087051 n).toNat)

end

end A312861.P9816931910902480528

/-!
# A312862: Coordination sequence Gal.5.230.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312862, there is no canonical definition to state claims against.
-/

/-! ## A312862.P11631715004771822867

`A301688(n)+A102677(A328357(n))`
-/

namespace A312862.P11631715004771822867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n + A102677 (A328357 n).toNat

end

end A312862.P11631715004771822867

/-! ## A312862.P16107595310725213864

`A312037(n)-A081729(A091965(C(n, 2)))`
-/

namespace A312862.P16107595310725213864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312037 n - A081729 (A091965 (Nat.choose n 2)).toNat

end

end A312862.P16107595310725213864

/-! ## A312862.P13652517634855422361

`A358006(A301688(2*(n+1)))+A301688(n)`
-/

namespace A312862.P13652517634855422361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358006 ((A301688 (2 * (n + 1))).toNat + 32) + A301688 n

end

end A312862.P13652517634855422361

/-! ## A312862.P5870291824509732917

`A312037(n)-A081729(A128714(n)+A033321(n))`
-/

namespace A312862.P5870291824509732917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312037 n - A081729 (A128714 n + A033321 n).toNat

end

end A312862.P5870291824509732917

/-!
# A312863: Coordination sequence Gal.6.506.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312863, there is no canonical definition to state claims against.
-/

/-! ## A312863.P15232729899546964762

`A301678(n)-A000120(A136704(n+1))`
-/

namespace A312863.P15232729899546964762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A000120 (A136704 (n + 1)).toNat

end

end A312863.P15232729899546964762

/-! ## A312863.P4765382969295542958

`A313615(n)-A001222(A245594(n+1))`
-/

namespace A312863.P4765382969295542958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313615 n - A001222 (A245594 (n + 1)).toNat

end

end A312863.P4765382969295542958

/-! ## A312863.P12589653041035913367

`A286493(A328434(n))+A106633(n)`
-/

namespace A312863.P12589653041035913367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (A328434 n).toNat + A106633 n

end

end A312863.P12589653041035913367

/-! ## A312863.P6226215240142811724

`A315259(n)-A001222(A267154(n))`
-/

namespace A312863.P6226215240142811724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - A001222 (A267154 n).toNat

end

end A312863.P6226215240142811724

/-! ## A312863.P1946154439735450151

`A314637(n)-A014856(A369013(n))`
-/

namespace A312863.P1946154439735450151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314637 n - A014856 (A369013 n).toNat

end

end A312863.P1946154439735450151

/-!
# A312864: Coordination sequence Gal.5.93.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312864, there is no canonical definition to state claims against.
-/

/-! ## A312864.P10226277163262083919

`A301678(n)-A350387(A015891(n+1))`
-/

namespace A312864.P10226277163262083919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A350387 (A015891 (n + 1)).toNat

end

end A312864.P10226277163262083919

/-! ## A312864.P15262106732456225650

`A312979(n)-A067099(n+3)^A109107(n)`
-/

namespace A312864.P15262106732456225650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312979 n : ℚ) - (A067099 (n + 3) : ℚ) ^ (A109107 n : ℤ)

end

end A312864.P15262106732456225650

/-! ## A312864.P9858179812824459252

`A312979(n)-A067099(n+3)^A155400(n+6)`
-/

namespace A312864.P9858179812824459252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312979 n : ℚ) - (A067099 (n + 3) : ℚ) ^ (A155400 (n + 6) : ℤ)

end

end A312864.P9858179812824459252

/-! ## A312864.P8387591873186846049

`A301678(n)-A001221(A134762(n))`
-/

namespace A312864.P8387591873186846049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A001221 (A134762 n).toNat

end

end A312864.P8387591873186846049

/-! ## A312864.P6543325434838621468

`A301684(n)+A010872(A278682(n+1))`
-/

namespace A312864.P6543325434838621468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301684 n + A010872 (A278682 (n + 1)).toNat

end

end A312864.P6543325434838621468

/-!
# A312865: Coordination sequence Gal.5.91.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312865, there is no canonical definition to state claims against.
-/

/-! ## A312865.P17138875276752190125

`record[and(A035280(n+1), A148389(n))]`
-/

namespace A312865.P17138875276752190125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035280 (n + 1)) (A148389 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312865.P17138875276752190125

/-! ## A312865.P614564292344224739

`A311595(n)+A007814(A000110(n))`
-/

namespace A312865.P614564292344224739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311595 n + A007814 (A000110 n).toNat

end

end A312865.P614564292344224739

/-! ## A312865.P9440428823139700301

`A311597(n)+A007814(A000110(n))`
-/

namespace A312865.P9440428823139700301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311597 n + A007814 (A000110 n).toNat

end

end A312865.P9440428823139700301

/-! ## A312865.P15088245131224843288

`xor(A051903(A054491(n)), A314454(n))`
-/

namespace A312865.P15088245131224843288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051903 (A054491 n).toNat) (A314454 n)

end

end A312865.P15088245131224843288

/-! ## A312865.P9000662702723713421

`xor(A174726(A101052(n)), A312203(n))`
-/

namespace A312865.P9000662702723713421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A174726 (A101052 n).toNat) (A312203 n)

end

end A312865.P9000662702723713421

/-!
# A312866: Coordination sequence Gal.6.316.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312866, there is no canonical definition to state claims against.
-/

/-! ## A312866.P10108888232332750641

`A314180(n)-A000120(A069038(n))`
-/

namespace A312866.P10108888232332750641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314180 n - A000120 (A069038 n).toNat

end

end A312866.P10108888232332750641

/-! ## A312866.P15935325828490107802

`or(A130400(A166578(n)), A311613(n))`
-/

namespace A312866.P15935325828490107802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130400 (A166578 n).toNat) (A311613 n)

end

end A312866.P15935325828490107802

/-! ## A312866.P15284234038595077938

`A312976(n)-A137331(A243736(n+1))`
-/

namespace A312866.P15284234038595077938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312976 n - A137331 (A243736 (n + 1)).toNat

end

end A312866.P15284234038595077938

/-! ## A312866.P11793770822601735683

`xor(A000035(A206659(n+1)), A312951(n))`
-/

namespace A312866.P11793770822601735683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A206659 (n + 1)).toNat) (A312951 n)

end

end A312866.P11793770822601735683

/-! ## A312866.P13482846677555317289

`A356930(3*n+1)+A010051(A356934(n))`
-/

namespace A312866.P13482846677555317289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356930 (3 * n + 1) + A010051 (A356934 n).toNat

end

end A312866.P13482846677555317289

/-!
# A312867: Coordination sequence Gal.4.120.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312867, there is no canonical definition to state claims against.
-/

/-! ## A312867.P12444712859104505397

`or(A002262(A328085(n+1)), A311440(n))`
-/

namespace A312867.P12444712859104505397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A328085 (n + 1)).toNat) (A311440 n)

end

end A312867.P12444712859104505397

/-! ## A312867.P18197214648527950952

`A167288(A000288(n))+4*n-n%2`
-/

namespace A312867.P18197214648527950952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167288 (A000288 n).toNat + ((4 * n : ℤ) - ((n % 2 : ℕ) : ℤ))

end

end A312867.P18197214648527950952

/-! ## A312867.P3358000153594661864

`xor(p?[A111725(n+1)], A300064(3*(n+1)))`
-/

namespace A312867.P3358000153594661864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A300064 (3 * (n + 1)))

end

end A312867.P3358000153594661864

/-! ## A312867.P2745790423594024534

`A310414(n)-A001222(A328441(n))`
-/

namespace A312867.P2745790423594024534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310414 n - A001222 (A328441 n).toNat

end

end A312867.P2745790423594024534

/-! ## A312867.P9239095504574216170

`A276151(3*n+1)+A061775(A036447(n))`
-/

namespace A312867.P9239095504574216170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276151 (3 * n + 1) + A061775 (A036447 n).toNat

end

end A312867.P9239095504574216170

/-!
# A312869: Coordination sequence Gal.6.545.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312869, there is no canonical definition to state claims against.
-/

/-! ## A312869.P15154052273682371797

`A333489(A000005(4^n))+A140434(n+1)`
-/

namespace A312869.P15154052273682371797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A000005 (4 ^ n)).toNat + A140434 (n + 1)

end

end A312869.P15154052273682371797

/-!
# A312872: Coordination sequence Gal.6.88.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312872, there is no canonical definition to state claims against.
-/

/-! ## A312872.P14943952582939428479

`A311033(n)+A006842(A018321(2*n+1))`
-/

namespace A312872.P14943952582939428479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311033 n + A006842 (A018321 (2 * n + 1)).toNat

end

end A312872.P14943952582939428479

/-! ## A312872.P5725912596526827735

`A095278(2*n+3)-A000120(A362351(n))`
-/

namespace A312872.P5725912596526827735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (2 * n + 3) - A000120 (A362351 n).toNat

end

end A312872.P5725912596526827735

/-! ## A312872.P9276337652711631832

`∑[A152723(A152723(n+1)+A116130(n+1))]`
-/

namespace A312872.P9276337652711631832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152723 (A152723 (n + 1) + A116130 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312872.P9276337652711631832

/-! ## A312872.P15857538034203880146

`A335947(A237270(n+1))+eq[2, A106127(n+1)%5]`
-/

namespace A312872.P15857538034203880146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106127 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335947 (A237270 (n + 1)).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A312872.P15857538034203880146

/-! ## A312872.P6045724565158323371

`A335947(A237270(n+1))+A072152(n)+A001222(4^n)`
-/

namespace A312872.P6045724565158323371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335947 (A237270 (n + 1)).toNat + (A072152 n + A001222 (4 ^ n))

end

end A312872.P6045724565158323371

/-!
# A312873: Coordination sequence Gal.5.33.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312873, there is no canonical definition to state claims against.
-/

/-! ## A312873.P8175228671122933330

`A016825(n)-A331581(A054272(n+1))`
-/

namespace A312873.P8175228671122933330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A331581 (A054272 (n + 1)).toNat

end

end A312873.P8175228671122933330

/-! ## A312873.P15542756397151114156

`eq[A126303(A093868(n+1)), A157076(n+1)]`
-/

namespace A312873.P15542756397151114156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126303 (A093868 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312873.P15542756397151114156

/-! ## A312873.P4485983595900430257

`xor(A288601(2*n+1), A322389(A000045(n+2)))`
-/

namespace A312873.P4485983595900430257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A288601 (2 * n + 1)) (A322389 (A000045 (n + 2)).toNat)

end

end A312873.P4485983595900430257

/-! ## A312873.P13686657327430711921

`A356713(3*n+2)-A092782(A212123(3*n+5))`
-/

namespace A312873.P13686657327430711921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (3 * n + 2) - A092782 (A212123 (3 * n + 5)).toNat

end

end A312873.P13686657327430711921

/-!
# A312874: Coordination sequence Gal.6.89.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312874, there is no canonical definition to state claims against.
-/

/-! ## A312874.P15198917473221550310

`A246960(A185040(n))+A172323(n)`
-/

namespace A312874.P15198917473221550310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 (A185040 n).toNat + A172323 n

end

end A312874.P15198917473221550310

/-! ## A312874.P2744236030510973346

`A311079(n)+A001221(A306918(n))`
-/

namespace A312874.P2744236030510973346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311079 n + A001221 (A306918 n).toNat

end

end A312874.P2744236030510973346

/-! ## A312874.P2468202559698949082

`A036710(2*n)+A001221(A012840(n))`
-/

namespace A312874.P2468202559698949082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 (2 * n) + A001221 (A012840 n).toNat

end

end A312874.P2468202559698949082

/-!
# A312876: Coordination sequence Gal.6.82.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312876, there is no canonical definition to state claims against.
-/

/-! ## A312876.P16218870666379395624

`A311033(n)+A001221(A149382(n))`
-/

namespace A312876.P16218870666379395624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311033 n + A001221 (A149382 n).toNat

end

end A312876.P16218870666379395624

/-! ## A312876.P8752324347896882839

`A314129(n)-A001222(A082613(n))`
-/

namespace A312876.P8752324347896882839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314129 n - A001222 (A082613 n).toNat

end

end A312876.P8752324347896882839

/-! ## A312876.P13633357849174932070

`A345913(3*(n+1))-A010054(A000108(n))`
-/

namespace A312876.P13633357849174932070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (3 * (n + 1)) - A010054 (A000108 n).toNat

end

end A312876.P13633357849174932070

/-! ## A312876.P8832574014408008251

`A345913(3*(n+1))-A316341(A007717(n))`
-/

namespace A312876.P8832574014408008251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (3 * (n + 1)) - A316341 (A007717 n).toNat

end

end A312876.P8832574014408008251

/-! ## A312876.P18204053755675446177

`A345913(3*n+2)+A051904(A327034(n))`
-/

namespace A312876.P18204053755675446177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (3 * n + 2) + A051904 (A327034 n).toNat

end

end A312876.P18204053755675446177

/-!
# A312877: Coordination sequence Gal.6.45.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312877, there is no canonical definition to state claims against.
-/

/-! ## A312877.P16833062085769881257

`A123580(or(∑[n+3]-2, A003557(n+1)))`
-/

namespace A312877.P16833062085769881257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (Int.lor (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) (A003557 (n + 1))).toNat

end

end A312877.P16833062085769881257

/-! ## A312877.P6288943843199670396

`A123580(or((n+1)/∏{p}[n+1, #], A052905(n)))`
-/

namespace A312877.P6288943843199670396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A052905 n)).toNat

end

end A312877.P6288943843199670396

/-! ## A312877.P2145075960548068360

`A313534(n)-A001221(A281347(n+1))`
-/

namespace A312877.P2145075960548068360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313534 n - A001221 (A281347 (n + 1)).toNat

end

end A312877.P2145075960548068360

/-! ## A312877.P3672263361881831913

`A123580(or(A003557(n+1), A052905(n)))`
-/

namespace A312877.P3672263361881831913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (Int.lor (A003557 (n + 1)) (A052905 n)).toNat

end

end A312877.P3672263361881831913

/-! ## A312877.P4048863523607409828

`A140473(A008574(2*n))+A057627(n+2)`
-/

namespace A312877.P4048863523607409828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140473 (A008574 (2 * n)).toNat + A057627 (n + 2)

end

end A312877.P4048863523607409828

/-!
# A312878: Coordination sequence Gal.6.21.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312878, there is no canonical definition to state claims against.
-/

/-! ## A312878.P4322377495934924070

`xor(A001221(A072214(n)), A312861(n))`
-/

namespace A312878.P4322377495934924070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A072214 n).toNat) (A312861 n)

end

end A312878.P4322377495934924070

/-! ## A312878.P18069499392216487957

`A329317(A296372(n+1))+A020656(3*n+1)`
-/

namespace A312878.P18069499392216487957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329317 (A296372 (n + 1)).toNat + A020656 (3 * n + 1)

end

end A312878.P18069499392216487957

/-! ## A312878.P12171549347196390787

`∑[A000120(A183177((n%4)!%3+n))]`
-/

namespace A312878.P12171549347196390787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A183177 (Nat.factorial (n % 4) % 3 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312878.P12171549347196390787

/-! ## A312878.P205134456827739067

`A039024(A032559(n+1))+∑[∑{e}[n+1, #]+1]`
-/

namespace A312878.P205134456827739067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039024 (A032559 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A312878.P205134456827739067

/-! ## A312878.P4172142275839413479

`A347550(A038504(n))+A008586(n)`
-/

namespace A312878.P4172142275839413479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 (A038504 n).toNat + A008586 n

end

end A312878.P4172142275839413479

/-!
# A312879: Coordination sequence Gal.5.223.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312879, there is no canonical definition to state claims against.
-/

/-! ## A312879.P15973988457741326290

`A336377(n+1)-record[A069464(n+2)]`
-/

namespace A312879.P15973988457741326290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336377 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312879.P15973988457741326290

/-! ## A312879.P14513088922840707080

`∑[∑{e}[A009199(n)+A001599(2*n+1), #]]`
-/

namespace A312879.P14513088922840707080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009199 n + A001599 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312879.P14513088922840707080

/-! ## A312879.P14366081169303729899

`A313037(n)-A001221(A001349(n))`
-/

namespace A312879.P14366081169303729899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313037 n - A001221 (A001349 n).toNat

end

end A312879.P14366081169303729899

/-! ## A312879.P7539466014184279000

`A314667(n)-A003849(A006190(n))`
-/

namespace A312879.P7539466014184279000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314667 n - A003849 (A006190 n).toNat

end

end A312879.P7539466014184279000

/-! ## A312879.P9238298564040473988

`xor(A305436(A049774(n)), A311534(n))`
-/

namespace A312879.P9238298564040473988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A305436 (A049774 n).toNat) (A311534 n)

end

end A312879.P9238298564040473988

/-!
# A312880: Coordination sequence Gal.6.497.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312880, there is no canonical definition to state claims against.
-/

/-! ## A312880.P13105369156600485072

`A037477(A311101(n)^A165661(n))`
-/

namespace A312880.P13105369156600485072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A311101 n : ℚ) ^ (A165661 n : ℤ))).toNat

end

end A312880.P13105369156600485072

/-! ## A312880.P2098538252465763294

`A037477(C(A311101(n), A165661(n)))`
-/

namespace A312880.P2098538252465763294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A311101 n).toNat (A165661 n).toNat)

end

end A312880.P2098538252465763294

/-! ## A312880.P14722855036821244380

`A311217(n)+A037808(A104310(n+1))`
-/

namespace A312880.P14722855036821244380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311217 n + A037808 (A104310 (n + 1)).toNat

end

end A312880.P14722855036821244380

/-! ## A312880.P17940186141996581674

`A037477(A311101(n)%A104310(n+1))`
-/

namespace A312880.P17940186141996581674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A311101 n) (A104310 (n + 1))).toNat

end

end A312880.P17940186141996581674

/-! ## A312880.P9469011946821431446

`∩[A061568(n+1), A346129(n+1)]`
-/

namespace A312880.P9469011946821431446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A312880.P9469011946821431446

/-!
# A312881: Coordination sequence Gal.6.24.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312881, there is no canonical definition to state claims against.
-/

/-! ## A312881.P5390181566978700464

`xor(A170958(A014076(n+1)), A311440(n))`
-/

namespace A312881.P5390181566978700464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A170958 (A014076 (n + 1)).toNat) (A311440 n)

end

end A312881.P5390181566978700464

/-! ## A312881.P4947212510414127788

`xor(A084888(A011782(n)), A311852(n))`
-/

namespace A312881.P4947212510414127788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084888 (A011782 n).toNat) (A311852 n)

end

end A312881.P4947212510414127788

/-! ## A312881.P99826936776177126

`A311699(n)+A144027(A340266(n+1))`
-/

namespace A312881.P99826936776177126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311699 n + A144027 (A340266 (n + 1)).toNat

end

end A312881.P99826936776177126

/-! ## A312881.P7978659717883193188

`A311296(n)+A174275(A018030(n))`
-/

namespace A312881.P7978659717883193188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311296 n + A174275 (A018030 n).toNat

end

end A312881.P7978659717883193188

/-! ## A312881.P12578453536723675260

`A156261(A156268(2*(n+1))+A072437(3*n+2))`
-/

namespace A312881.P12578453536723675260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (A156268 (2 * (n + 1)) + A072437 (3 * n + 2)).toNat

end

end A312881.P12578453536723675260

/-!
# A312882: Coordination sequence Gal.6.518.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312882, there is no canonical definition to state claims against.
-/

/-! ## A312882.P13053480141372428653

`A311320(n)+A010051(A000110(n))`
-/

namespace A312882.P13053480141372428653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311320 n + A010051 (A000110 n).toNat

end

end A312882.P13053480141372428653

/-! ## A312882.P8679907404989983534

`A312881(n)+A062977(A054259(n+1))`
-/

namespace A312882.P8679907404989983534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312881 n + A062977 (A054259 (n + 1)).toNat

end

end A312882.P8679907404989983534

/-! ## A312882.P11350398941729526794

`A312858(n)+A107078(A087185(n+1))`
-/

namespace A312882.P11350398941729526794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312858 n + A107078 (A087185 (n + 1)).toNat

end

end A312882.P11350398941729526794

/-! ## A312882.P10770636113084423819

`A312881(n)+A035155(A209736(n+1))`
-/

namespace A312882.P10770636113084423819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312881 n + A035155 (A209736 (n + 1)).toNat

end

end A312882.P10770636113084423819

/-! ## A312882.P3779073238626965840

`A311214(n)+A294883(A051236(n+1))`
-/

namespace A312882.P3779073238626965840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311214 n + A294883 (A051236 (n + 1)).toNat

end

end A312882.P3779073238626965840

/-!
# A312883: Coordination sequence Gal.6.457.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312883, there is no canonical definition to state claims against.
-/

/-! ## A312883.P1252134475973578560

`or(A010051(A049155(n)), A311738(n))`
-/

namespace A312883.P1252134475973578560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A049155 n).toNat) (A311738 n)

end

end A312883.P1252134475973578560

/-! ## A312883.P15831660439824118043

`A311326(A087051(n))+A217207(A310398(n))`
-/

namespace A312883.P15831660439824118043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311326 (A087051 n).toNat + A217207 (A310398 n).toNat

end

end A312883.P15831660439824118043

/-! ## A312883.P16227355837988572735

`A217207(A310398(n))+A311326(n)^A070565(n)!`
-/

namespace A312883.P16227355837988572735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217207 (A310398 n).toNat + A311326 n ^ Nat.factorial (A070565 n).toNat

end

end A312883.P16227355837988572735

/-! ## A312883.P9882194965781922986

`A313526(n)-A001221(A380708(2*n))`
-/

namespace A312883.P9882194965781922986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313526 n - A001221 (A380708 (2 * n)).toNat

end

end A312883.P9882194965781922986

/-!
# A312884: Coordination sequence Gal.5.12.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312884, there is no canonical definition to state claims against.
-/

/-! ## A312884.P17144152248944559561

`A140595(A311322(n)-1)`
-/

namespace A312884.P17144152248944559561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 (A311322 n - 1).toNat

end

end A312884.P17144152248944559561

/-! ## A312884.P13943572020396986915

`A311000(n)+A007814(A307401(n))`
-/

namespace A312884.P13943572020396986915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311000 n + A007814 (A307401 n).toNat

end

end A312884.P13943572020396986915

/-! ## A312884.P8449596848416084284

`A346131(A008574(n))-A185214(n)`
-/

namespace A312884.P8449596848416084284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (A008574 n).toNat - A185214 n

end

end A312884.P8449596848416084284

/-! ## A312884.P1525049218917753881

`A311347(n)+A308625(A076099(n+1))`
-/

namespace A312884.P1525049218917753881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A308625 (A076099 (n + 1)).toNat

end

end A312884.P1525049218917753881

/-! ## A312884.P10126398794113665202

`A067774(n+1)-A070939(A054486(n))`
-/

namespace A312884.P10126398794113665202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1) - A070939 (A054486 n).toNat

end

end A312884.P10126398794113665202

/-!
# A312885: Coordination sequence Gal.6.460.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312885, there is no canonical definition to state claims against.
-/

/-! ## A312885.P2089677872532984436

`A313582(n)-A001221(A011965(n))`
-/

namespace A312885.P2089677872532984436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313582 n - A001221 (A011965 n).toNat

end

end A312885.P2089677872532984436

/-! ## A312885.P12823748504781670218

`and(A005408(A108626(n)), A312983(n))`
-/

namespace A312885.P12823748504781670218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A108626 n).toNat) (A312983 n)

end

end A312885.P12823748504781670218

/-! ## A312885.P6411764709738024121

`A330060(A229184(n+2)+A059009(n))`
-/

namespace A312885.P6411764709738024121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (A229184 (n + 2) + A059009 n).toNat

end

end A312885.P6411764709738024121

/-!
# A312886: Coordination sequence Gal.5.231.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312886, there is no canonical definition to state claims against.
-/

/-! ## A312886.P13095627433881149034

`or(A280750(A284829(n+1)), A320924(n+1))`
-/

namespace A312886.P13095627433881149034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280750 (A284829 (n + 1)).toNat) (A320924 (n + 1))

end

end A312886.P13095627433881149034

/-! ## A312886.P3334200858565021169

`A320924(n+1)+A101605(A019308(n))`
-/

namespace A312886.P3334200858565021169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1) + A101605 (A019308 n).toNat

end

end A312886.P3334200858565021169

/-! ## A312886.P7003223753731094105

`A320924(n+1)+A024326(A143888(n))`
-/

namespace A312886.P7003223753731094105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1) + A024326 (A143888 n).toNat

end

end A312886.P7003223753731094105

/-! ## A312886.P839685837785848762

`A320924(n+1)+A094186(A152808(n))`
-/

namespace A312886.P839685837785848762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1) + A094186 (A152808 n).toNat

end

end A312886.P839685837785848762

/-! ## A312886.P15315873632280926732

`A320924(n+1)+A285684(A285672(n))`
-/

namespace A312886.P15315873632280926732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1) + A285684 (A285672 n).toNat

end

end A312886.P15315873632280926732

/-!
# A312887: Coordination sequence Gal.6.46.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312887, there is no canonical definition to state claims against.
-/

/-! ## A312887.P1979614352200477773

`∑[dr(A175093(A098067(n+1)))]`
-/

namespace A312887.P1979614352200477773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A175093 (A098067 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312887.P1979614352200477773

/-! ## A312887.P18196158307670725910

`A111660(A336564(n+1)+A022144(n))`
-/

namespace A312887.P18196158307670725910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A336564 (n + 1) + A022144 n).toNat

end

end A312887.P18196158307670725910

/-! ## A312887.P225398871177832578

`∑[dr(A000265(A072999(n)))]`
-/

namespace A312887.P225398871177832578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000265 (A072999 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312887.P225398871177832578

/-! ## A312887.P14759479072056097433

`A352830(2*n+1)-A000120(2^(n-1)*∑[n])`
-/

namespace A312887.P14759479072056097433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (2 * n + 1) - A000120 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))).toNat

end

end A312887.P14759479072056097433

/-! ## A312887.P15281011899835028349

`A311690(n)+A056594(A017930(n))`
-/

namespace A312887.P15281011899835028349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311690 n + A056594 (A017930 n).toNat

end

end A312887.P15281011899835028349

/-!
# A312888: Coordination sequence Gal.6.378.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312888, there is no canonical definition to state claims against.
-/

/-! ## A312888.P13605491904710106458

`A312889(n)^(n-∑{digits}[n, #])!`
-/

namespace A312888.P13605491904710106458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312889 n ^ Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A312888.P13605491904710106458

/-! ## A312888.P11353365626981425080

`A312889(A087051(n))`
-/

namespace A312888.P11353365626981425080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312889 (A087051 n).toNat

end

end A312888.P11353365626981425080

/-! ## A312888.P2546503010050548490

`A312889(A227549(n+1))`
-/

namespace A312888.P2546503010050548490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312889 (A227549 (n + 1)).toNat

end

end A312888.P2546503010050548490

/-! ## A312888.P5021431147731110429

`A312889(A396204(n+1))`
-/

namespace A312888.P5021431147731110429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312889 (A396204 (n + 1)).toNat

end

end A312888.P5021431147731110429

/-! ## A312888.P15793523760421265673

`A312889(n*A061603(n))`
-/

namespace A312888.P15793523760421265673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312889 ((n : ℤ) * A061603 n).toNat

end

end A312888.P15793523760421265673

/-!
# A312890: Coordination sequence Gal.6.115.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312890, the canonical program `A312890.P5869710039852604831` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312890 has offset 0).

The definition of A312890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312890.P13963968446940209322

`A315687(n)-A047424(n+1)`
-/

namespace A312890.P13963968446940209322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n - A047424 (n + 1)

end

end A312890.P13963968446940209322

namespace A312890

/-- `A315687(n)-A047424(n+1)` -/
def P13963968446940209322.Spec : Prop :=
  ∀ n, P13963968446940209322.a n = A312890 n

theorem P13963968446940209322.correct : P13963968446940209322.Spec := by
  intro n
  simp only [A312890, Nat.add_sub_cancel, A312890.P13963968446940209322.a, A312890.P5869710039852604831.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A315687, A315687.P9579488049278104774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312890

/-! ## A312890.P5869710039852604831

`A008574(n)+A004525(round(n/3))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312890

/-- `A008574(n)+A004525(round(n/3))` -/
def P5869710039852604831.Spec : Prop :=
  ∀ n, P5869710039852604831.a n = A312890 n

theorem P5869710039852604831.correct : P5869710039852604831.Spec := by
  intro n
  simp only [A312890]

end A312890

/-! ## A312890.P16813693922263644539

`A004525(round(n/3))+A008486(n)+n`
-/

namespace A312890.P16813693922263644539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat + (A008486 n + (n : ℤ))

end

end A312890.P16813693922263644539

namespace A312890

/-- `A004525(round(n/3))+A008486(n)+n` -/
def P16813693922263644539.Spec : Prop :=
  ∀ n, P16813693922263644539.a n = A312890 n

end A312890

/-! ## A312890.P1064912334855219589

`A315687(n)-(A128834(n)+A047513(n+1))`
-/

namespace A312890.P1064912334855219589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n - (A128834 n + A047513 (n + 1))

end

end A312890.P1064912334855219589

namespace A312890

/-- `A315687(n)-(A128834(n)+A047513(n+1))` -/
def P1064912334855219589.Spec : Prop :=
  ∀ n, P1064912334855219589.a n = A312890 n

end A312890

/-! ## A312890.P1263566071745763690

`A315687(n)+A010892(n+2)-A047513(n+1)`
-/

namespace A312890.P1263566071745763690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n + A010892 (n + 2) - A047513 (n + 1)

end

end A312890.P1263566071745763690

namespace A312890

/-- `A315687(n)+A010892(n+2)-A047513(n+1)` -/
def P1263566071745763690.Spec : Prop :=
  ∀ n, P1263566071745763690.a n = A312890 n

end A312890

/-! ## A312890.P1465844699318098490

`A313485(n)-A004525(A004396(n))`
-/

namespace A312890.P1465844699318098490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n - A004525 (A004396 n).toNat

end

end A312890.P1465844699318098490

namespace A312890

/-- `A313485(n)-A004525(A004396(n))` -/
def P1465844699318098490.Spec : Prop :=
  ∀ n, P1465844699318098490.a n = A312890 n

end A312890

/-! ## A312890.P2823440164821387889

`A310373(n)-A002264(n+1)`
-/

namespace A312890.P2823440164821387889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310373 n - A002264 (n + 1)

end

end A312890.P2823440164821387889

namespace A312890

/-- `A310373(n)-A002264(n+1)` -/
def P2823440164821387889.Spec : Prop :=
  ∀ n, P2823440164821387889.a n = A312890 n

theorem P2823440164821387889.correct : P2823440164821387889.Spec := by
  intro n
  simp only [A312890, Nat.add_sub_cancel, A312890.P2823440164821387889.a, A312890.P5869710039852604831.a, A002264, A002264.P5647656940077635922.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A310373, A310373.P7906756891214118992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312890

/-! ## A312890.P8884715901183341755

`A004396(n)+A310373(n)-n`
-/

namespace A312890.P8884715901183341755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310373 n - (n : ℤ))

end

end A312890.P8884715901183341755

namespace A312890

/-- `A004396(n)+A310373(n)-n` -/
def P8884715901183341755.Spec : Prop :=
  ∀ n, P8884715901183341755.a n = A312890 n

end A312890

/-! ## A312890.P2405311658194150552

`A313556(n)-A004525(n)`
-/

namespace A312890.P2405311658194150552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n - A004525 n

end

end A312890.P2405311658194150552

namespace A312890

/-- `A313556(n)-A004525(n)` -/
def P2405311658194150552.Spec : Prop :=
  ∀ n, P2405311658194150552.a n = A312890 n

theorem P2405311658194150552.correct : P2405311658194150552.Spec := by
  intro n
  simp only [A312890, Nat.add_sub_cancel, A312890.P2405311658194150552.a, A312890.P5869710039852604831.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A313556, A313556.P12127503874440300930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312890

/-! ## A312890.P14805291761925012298

`A313720(n)-A004396(n)`
-/

namespace A312890.P14805291761925012298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n - A004396 n

end

end A312890.P14805291761925012298

namespace A312890

/-- `A313720(n)-A004396(n)` -/
def P14805291761925012298.Spec : Prop :=
  ∀ n, P14805291761925012298.a n = A312890 n

theorem P14805291761925012298.correct : P14805291761925012298.Spec := by
  intro n
  simp only [A312890, Nat.add_sub_cancel, A312890.P14805291761925012298.a, A312890.P5869710039852604831.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A313720, A313720.P17061328062091106116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312890

/-! ## A312890.P420847565832692074

`A313720(n)-A002264(2*n+1)`
-/

namespace A312890.P420847565832692074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n - A002264 (2 * n + 1)

end

end A312890.P420847565832692074

namespace A312890

/-- `A313720(n)-A002264(2*n+1)` -/
def P420847565832692074.Spec : Prop :=
  ∀ n, P420847565832692074.a n = A312890 n

theorem P420847565832692074.correct : P420847565832692074.Spec := by
  intro n
  simp only [A312890, Nat.add_sub_cancel, A312890.P420847565832692074.a, A312890.P5869710039852604831.a, A002264, A002264.P5647656940077635922.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A313720, A313720.P17061328062091106116.a, A004396, A004396.P17032557045289780609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312890

/-! ## A312890.P13628002517848595427

`A004525(A312896(n))+2*n`
-/

namespace A312890.P13628002517848595427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312896 n).toNat + (2 * n : ℤ)

end

end A312890.P13628002517848595427

namespace A312890

/-- `A004525(A312896(n))+2*n` -/
def P13628002517848595427.Spec : Prop :=
  ∀ n, P13628002517848595427.a n = A312890 n

end A312890

/-! ## A312890.P10823371008742663292

`A004525(A312901(n))+2*n`
-/

namespace A312890.P10823371008742663292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312901 n).toNat + (2 * n : ℤ)

end

end A312890.P10823371008742663292

namespace A312890

/-- `A004525(A312901(n))+2*n` -/
def P10823371008742663292.Spec : Prop :=
  ∀ n, P10823371008742663292.a n = A312890 n

end A312890

/-! ## A312890.P9277727921057564611

`A004525(A312926(n))+2*n`
-/

namespace A312890.P9277727921057564611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312926 n).toNat + (2 * n : ℤ)

end

end A312890.P9277727921057564611

namespace A312890

/-- `A004525(A312926(n))+2*n` -/
def P9277727921057564611.Spec : Prop :=
  ∀ n, P9277727921057564611.a n = A312890 n

end A312890

/-! ## A312890.P9649128471860017186

`A314110(n)-n`
-/

namespace A312890.P9649128471860017186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314110 n - (n : ℤ)

end

end A312890.P9649128471860017186

namespace A312890

/-- `A314110(n)-n` -/
def P9649128471860017186.Spec : Prop :=
  ∀ n, P9649128471860017186.a n = A312890 n

theorem P9649128471860017186.correct : P9649128471860017186.Spec := by
  intro n
  simp only [A312890, Nat.add_sub_cancel, A312890.P9649128471860017186.a, A312890.P5869710039852604831.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A314110, A314110.P11829887775557874322.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312890

/-! ## A312890.P2572522321022856970

`A314144(n)-comp[A113804(n+1)]`
-/

namespace A312890.P2572522321022856970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A312890.P2572522321022856970

namespace A312890

/-- `A314144(n)-comp[A113804(n+1)]` -/
def P2572522321022856970.Spec : Prop :=
  ∀ n, P2572522321022856970.a n = A312890 n

end A312890

/-! ## A312890.P14616472740538511195

`A315534(n)-2*A004396(n)`
-/

namespace A312890.P14616472740538511195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315534 n - 2 * A004396 n

end

end A312890.P14616472740538511195

namespace A312890

/-- `A315534(n)-2*A004396(n)` -/
def P14616472740538511195.Spec : Prop :=
  ∀ n, P14616472740538511195.a n = A312890 n

theorem P14616472740538511195.correct : P14616472740538511195.Spec := by
  intro n
  simp only [A312890, Nat.add_sub_cancel, A312890.P14616472740538511195.a, A312890.P5869710039852604831.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A315534, A315534.P15836177857492630035.a, A313720, A313720.P17061328062091106116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312890

/-! ## A312890.P18363022080215333925

`A315703(n)-A047229(n+1)`
-/

namespace A312890.P18363022080215333925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - A047229 (n + 1)

end

end A312890.P18363022080215333925

namespace A312890

/-- `A315703(n)-A047229(n+1)` -/
def P18363022080215333925.Spec : Prop :=
  ∀ n, P18363022080215333925.a n = A312890 n

end A312890

/-! ## A312890.P15693160407162245233

`A314236(n)-A047513(n+1)`
-/

namespace A312890.P15693160407162245233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314236 n - A047513 (n + 1)

end

end A312890.P15693160407162245233

namespace A312890

/-- `A314236(n)-A047513(n+1)` -/
def P15693160407162245233.Spec : Prop :=
  ∀ n, P15693160407162245233.a n = A312890 n

theorem P15693160407162245233.correct : P15693160407162245233.Spec := by
  intro n
  simp only [A312890, Nat.add_sub_cancel, A312890.P15693160407162245233.a, A312890.P5869710039852604831.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, A314236, A314236.P11197453166256301907.a, A313088, A313088.P8261115150776480095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312890

/-! ## A312890.P17577056425324761983

`A315763(n)-A047222(n+1)`
-/

namespace A312890.P17577056425324761983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A047222 (n + 1)

end

end A312890.P17577056425324761983

namespace A312890

/-- `A315763(n)-A047222(n+1)` -/
def P17577056425324761983.Spec : Prop :=
  ∀ n, P17577056425324761983.a n = A312890 n

end A312890

/-!
# A312891: Coordination sequence Gal.6.216.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312891, the canonical program `A312891.P482666226062443179` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312891 has offset 0).

The definition of A312891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312891.P482666226062443179

`(A310367(n)+A008574(n))/2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A312891

/-- `(A310367(n)+A008574(n))/2` -/
def P482666226062443179.Spec : Prop :=
  ∀ n, P482666226062443179.a n = (A312891 n : ℚ)

end A312891

/-! ## A312891.P14341754565953844168

`A004525(A312897(n))+2*n`
-/

namespace A312891.P14341754565953844168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312897 n).toNat + (2 * n : ℤ)

end

end A312891.P14341754565953844168

namespace A312891

/-- `A004525(A312897(n))+2*n` -/
def P14341754565953844168.Spec : Prop :=
  ∀ n, P14341754565953844168.a n = A312891 n

end A312891

/-! ## A312891.P16597478257010183118

`A004525(A312902(n))+2*n`
-/

namespace A312891.P16597478257010183118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312902 n).toNat + (2 * n : ℤ)

end

end A312891.P16597478257010183118

namespace A312891

/-- `A004525(A312902(n))+2*n` -/
def P16597478257010183118.Spec : Prop :=
  ∀ n, P16597478257010183118.a n = A312891 n

end A312891

/-! ## A312891.P14030094322579762813

`A004525(A312927(n))+2*n`
-/

namespace A312891.P14030094322579762813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312927 n).toNat + (2 * n : ℤ)

end

end A312891.P14030094322579762813

namespace A312891

/-- `A004525(A312927(n))+2*n` -/
def P14030094322579762813.Spec : Prop :=
  ∀ n, P14030094322579762813.a n = A312891 n

end A312891

/-! ## A312891.P4696653446299748877

`A004525(A313024(n))+2*n`
-/

namespace A312891.P4696653446299748877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313024 n).toNat + (2 * n : ℤ)

end

end A312891.P4696653446299748877

namespace A312891

/-- `A004525(A313024(n))+2*n` -/
def P4696653446299748877.Spec : Prop :=
  ∀ n, P4696653446299748877.a n = A312891 n

end A312891

/-! ## A312891.P1419850309631700967

`A008458(n)+A008574(n)-A315548(n)`
-/

namespace A312891.P1419850309631700967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315548 n)

end

end A312891.P1419850309631700967

namespace A312891

/-- `A008458(n)+A008574(n)-A315548(n)` -/
def P1419850309631700967.Spec : Prop :=
  ∀ n, P1419850309631700967.a n = A312891 n

end A312891

/-! ## A312891.P13416567052983695909

`A005843(A008458(n)-n)-A315548(n)`
-/

namespace A312891.P13416567052983695909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315548 n

end

end A312891.P13416567052983695909

namespace A312891

/-- `A005843(A008458(n)-n)-A315548(n)` -/
def P13416567052983695909.Spec : Prop :=
  ∀ n, P13416567052983695909.a n = A312891 n

end A312891

/-! ## A312891.P12219901818371690444

`A068962(A314133(n))+2*n`
-/

namespace A312891.P12219901818371690444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A314133 n).toNat + (2 * n : ℤ)

end

end A312891.P12219901818371690444

namespace A312891

/-- `A068962(A314133(n))+2*n` -/
def P12219901818371690444.Spec : Prop :=
  ∀ n, P12219901818371690444.a n = A312891 n

end A312891

/-! ## A312891.P17560382928255493123

`A068962(A314194(n))+2*n`
-/

namespace A312891.P17560382928255493123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A314194 n).toNat + (2 * n : ℤ)

end

end A312891.P17560382928255493123

namespace A312891

/-- `A068962(A314194(n))+2*n` -/
def P17560382928255493123.Spec : Prop :=
  ∀ n, P17560382928255493123.a n = A312891 n

end A312891

/-! ## A312891.P3062647879200400304

`A004396(A314117(n)+n)`
-/

namespace A312891.P3062647879200400304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314117 n + (n : ℤ)).toNat

end

end A312891.P3062647879200400304

namespace A312891

/-- `A004396(A314117(n)+n)` -/
def P3062647879200400304.Spec : Prop :=
  ∀ n, P3062647879200400304.a n = A312891 n

end A312891

/-! ## A312891.P11748292687610454380

`A004396(A314127(n)+n)`
-/

namespace A312891.P11748292687610454380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314127 n + (n : ℤ)).toNat

end

end A312891.P11748292687610454380

namespace A312891

/-- `A004396(A314127(n)+n)` -/
def P11748292687610454380.Spec : Prop :=
  ∀ n, P11748292687610454380.a n = A312891 n

end A312891

/-! ## A312891.P9850028835098763826

`A004396(A314140(n)+n)`
-/

namespace A312891.P9850028835098763826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314140 n + (n : ℤ)).toNat

end

end A312891.P9850028835098763826

namespace A312891

/-- `A004396(A314140(n)+n)` -/
def P9850028835098763826.Spec : Prop :=
  ∀ n, P9850028835098763826.a n = A312891 n

end A312891

/-! ## A312891.P11416778848434568888

`A004396(A314186(n)+n)`
-/

namespace A312891.P11416778848434568888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314186 n + (n : ℤ)).toNat

end

end A312891.P11416778848434568888

namespace A312891

/-- `A004396(A314186(n)+n)` -/
def P11416778848434568888.Spec : Prop :=
  ∀ n, P11416778848434568888.a n = A312891 n

end A312891

/-! ## A312891.P5640945465900510131

`A004525(A311434(2*n))`
-/

namespace A312891.P5640945465900510131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311434 (2 * n)).toNat

end

end A312891.P5640945465900510131

namespace A312891

/-- `A004525(A311434(2*n))` -/
def P5640945465900510131.Spec : Prop :=
  ∀ n, P5640945465900510131.a n = A312891 n

end A312891

/-! ## A312891.P16623932145069452950

`A004525(A311804(2*n))`
-/

namespace A312891.P16623932145069452950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311804 (2 * n)).toNat

end

end A312891.P16623932145069452950

namespace A312891

/-- `A004525(A311804(2*n))` -/
def P16623932145069452950.Spec : Prop :=
  ∀ n, P16623932145069452950.a n = A312891 n

end A312891

/-! ## A312891.P12759948974159015731

`A313772(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A312891.P12759948974159015731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313772 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A312891.P12759948974159015731

namespace A312891

/-- `A313772(2*n)+A008458(n+1)-(12*n+6)` -/
def P12759948974159015731.Spec : Prop :=
  ∀ n, P12759948974159015731.a n = A312891 n

end A312891

/-!
# A312892: Coordination sequence Gal.5.50.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312892, the canonical program `A312892.P8731984914629007574` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312892 has offset 0).

The definition of A312892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312892.P14961351907203723302

`A301726(n)-A151988(n)`
-/

namespace A312892.P14961351907203723302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - A151988 n

end

end A312892.P14961351907203723302

namespace A312892

/-- `A301726(n)-A151988(n)` -/
def P14961351907203723302.Spec : Prop :=
  ∀ n, P14961351907203723302.a n = A312892 n

end A312892

/-! ## A312892.P17450480830623964626

`A315691(n)-A047363(n+1)`
-/

namespace A312892.P17450480830623964626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315691 n - A047363 (n + 1)

end

end A312892.P17450480830623964626

namespace A312892

/-- `A315691(n)-A047363(n+1)` -/
def P17450480830623964626.Spec : Prop :=
  ∀ n, P17450480830623964626.a n = A312892 n

end A312892

/-! ## A312892.P18228363201275957270

`A008706(n)-A004396(A151988(n))`
-/

namespace A312892.P18228363201275957270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004396 (A151988 n).toNat

end

end A312892.P18228363201275957270

namespace A312892

/-- `A008706(n)-A004396(A151988(n))` -/
def P18228363201275957270.Spec : Prop :=
  ∀ n, P18228363201275957270.a n = A312892 n

end A312892

/-! ## A312892.P8731984914629007574

`A008574(n)+A004525(A057354(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312892

/-- `A008574(n)+A004525(A057354(n+1))` -/
def P8731984914629007574.Spec : Prop :=
  ∀ n, P8731984914629007574.a n = A312892 n

theorem P8731984914629007574.correct : P8731984914629007574.Spec := by
  intro n
  simp only [A312892]

end A312892

/-! ## A312892.P5050853048082816027

`A008458(n)-(A004396(A151988(n))+n)`
-/

namespace A312892.P5050853048082816027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A004396 (A151988 n).toNat + (n : ℤ))

end

end A312892.P5050853048082816027

namespace A312892

/-- `A008458(n)-(A004396(A151988(n))+n)` -/
def P5050853048082816027.Spec : Prop :=
  ∀ n, P5050853048082816027.a n = A312892 n

end A312892

/-! ## A312892.P8514554206030990858

`A330025(n-A330025(n))+A311289(n)`
-/

namespace A312892.P8514554206030990858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A311289 n

end

end A312892.P8514554206030990858

namespace A312892

/-- `A330025(n-A330025(n))+A311289(n)` -/
def P8514554206030990858.Spec : Prop :=
  ∀ n, P8514554206030990858.a n = A312892 n

end A312892

/-! ## A312892.P7833328198748514245

`A312903(n)+n-A151988(n)`
-/

namespace A312892.P7833328198748514245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + ((n : ℤ) - A151988 n)

end

end A312892.P7833328198748514245

namespace A312892

/-- `A312903(n)+n-A151988(n)` -/
def P7833328198748514245.Spec : Prop :=
  ∀ n, P7833328198748514245.a n = A312892 n

end A312892

/-! ## A312892.P3701972341270207988

`(A310368(n)+A008574(n))/2`
-/

namespace A312892.P3701972341270207988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310368 n + A008574 n : ℚ) / 2

end

end A312892.P3701972341270207988

namespace A312892

/-- `(A310368(n)+A008574(n))/2` -/
def P3701972341270207988.Spec : Prop :=
  ∀ n, P3701972341270207988.a n = (A312892 n : ℚ)

theorem P3701972341270207988.correct : P3701972341270207988.Spec := by
  intro n
  simp only [A312892, Nat.add_sub_cancel, A312892.P3701972341270207988.a, A312892.P8731984914629007574.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A057354, A057354.P3759514669842217521.a, A310368, A310368.P16178457141432640460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312892

/-! ## A312892.P1031628810050373384

`A008458(n)+A008486(n)-A314898(n)`
-/

namespace A312892.P1031628810050373384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314898 n)

end

end A312892.P1031628810050373384

namespace A312892

/-- `A008458(n)+A008486(n)-A314898(n)` -/
def P1031628810050373384.Spec : Prop :=
  ∀ n, P1031628810050373384.a n = A312892 n

end A312892

/-! ## A312892.P16024877068210862998

`A008574(n)+A313827(n)-A250120(n)`
-/

namespace A312892.P16024877068210862998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313827 n - A250120 n)

end

end A312892.P16024877068210862998

namespace A312892

/-- `A008574(n)+A313827(n)-A250120(n)` -/
def P16024877068210862998.Spec : Prop :=
  ∀ n, P16024877068210862998.a n = A312892 n

end A312892

/-! ## A312892.P14400553911579113163

`A315679(n)-(A330025(n)+n)`
-/

namespace A312892.P14400553911579113163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n - (A330025 n + (n : ℤ))

end

end A312892.P14400553911579113163

namespace A312892

/-- `A315679(n)-(A330025(n)+n)` -/
def P14400553911579113163.Spec : Prop :=
  ∀ n, P14400553911579113163.a n = A312892 n

end A312892

/-! ## A312892.P15364329420401113748

`A314111(n)-n`
-/

namespace A312892.P15364329420401113748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314111 n - (n : ℤ)

end

end A312892.P15364329420401113748

namespace A312892

/-- `A314111(n)-n` -/
def P15364329420401113748.Spec : Prop :=
  ∀ n, P15364329420401113748.a n = A312892 n

theorem P15364329420401113748.correct : P15364329420401113748.Spec := by
  intro n
  simp only [A312892, Nat.add_sub_cancel, A312892.P15364329420401113748.a, A312892.P8731984914629007574.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A057354, A057354.P3759514669842217521.a, A314111, A314111.P2022816928026981768.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312892

/-! ## A312892.P7876279516433382382

`A253262(n)+A313154(n)-n`
-/

namespace A312892.P7876279516433382382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A313154 n - (n : ℤ))

end

end A312892.P7876279516433382382

namespace A312892

/-- `A253262(n)+A313154(n)-n` -/
def P7876279516433382382.Spec : Prop :=
  ∀ n, P7876279516433382382.a n = A312892 n

end A312892

/-! ## A312892.P16973017996225052736

`A310464(n)+A330025(n)-n`
-/

namespace A312892.P16973017996225052736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310464 n + (A330025 n - (n : ℤ))

end

end A312892.P16973017996225052736

namespace A312892

/-- `A310464(n)+A330025(n)-n` -/
def P16973017996225052736.Spec : Prop :=
  ∀ n, P16973017996225052736.a n = A312892 n

end A312892

/-! ## A312892.P5220040187357246951

`A314209(n)-A047263(n+1)`
-/

namespace A312892.P5220040187357246951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314209 n - A047263 (n + 1)

end

end A312892.P5220040187357246951

namespace A312892

/-- `A314209(n)-A047263(n+1)` -/
def P5220040187357246951.Spec : Prop :=
  ∀ n, P5220040187357246951.a n = A312892 n

end A312892

/-! ## A312892.P18389863131758277507

`A008458(n)+A008574(n)-A315547(n)`
-/

namespace A312892.P18389863131758277507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315547 n)

end

end A312892.P18389863131758277507

namespace A312892

/-- `A008458(n)+A008574(n)-A315547(n)` -/
def P18389863131758277507.Spec : Prop :=
  ∀ n, P18389863131758277507.a n = A312892 n

end A312892

/-! ## A312892.P14824105624176528667

`A315749(n)-A047448(n+1)`
-/

namespace A312892.P14824105624176528667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315749 n - A047448 (n + 1)

end

end A312892.P14824105624176528667

namespace A312892

/-- `A315749(n)-A047448(n+1)` -/
def P14824105624176528667.Spec : Prop :=
  ∀ n, P14824105624176528667.a n = A312892 n

theorem P14824105624176528667.correct : P14824105624176528667.Spec := by
  intro n
  simp only [A312892, Nat.add_sub_cancel, A312892.P14824105624176528667.a, A312892.P8731984914629007574.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A047448, A047448.P12851231882716690150.a, A057354, A057354.P3759514669842217521.a, A315749, A315749.P13778468742197853903.a, A313692, A313692.P7381687034045997065.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312892

/-! ## A312892.P6235145441812920466

`A004396(A310439(n))+n`
-/

namespace A312892.P6235145441812920466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310439 n).toNat + (n : ℤ)

end

end A312892.P6235145441812920466

namespace A312892

/-- `A004396(A310439(n))+n` -/
def P6235145441812920466.Spec : Prop :=
  ∀ n, P6235145441812920466.a n = A312892 n

end A312892

/-! ## A312892.P8569279080419685162

`A004396(A313692(n))+n`
-/

namespace A312892.P8569279080419685162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313692 n).toNat + (n : ℤ)

end

end A312892.P8569279080419685162

namespace A312892

/-- `A004396(A313692(n))+n` -/
def P8569279080419685162.Spec : Prop :=
  ∀ n, P8569279080419685162.a n = A312892 n

end A312892

/-! ## A312892.P5238293189382682810

`A004396(A313719(n))+n`
-/

namespace A312892.P5238293189382682810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313719 n).toNat + (n : ℤ)

end

end A312892.P5238293189382682810

namespace A312892

/-- `A004396(A313719(n))+n` -/
def P5238293189382682810.Spec : Prop :=
  ∀ n, P5238293189382682810.a n = A312892 n

end A312892

/-!
# A312893: Coordination sequence Gal.5.95.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312893, the canonical program `A312893.P922128372979076951` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312893 has offset 0).

The definition of A312893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312893.P922128372979076951

`A004396(A298786(n))+2*n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312893

/-- `A004396(A298786(n))+2*n` -/
def P922128372979076951.Spec : Prop :=
  ∀ n, P922128372979076951.a n = A312893 n

theorem P922128372979076951.correct : P922128372979076951.Spec := by
  intro n
  simp only [A312893]

end A312893

/-! ## A312893.P3746897641895798786

`A298784(n)+A004396(4*round(n/3))`
-/

namespace A312893.P3746897641895798786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n + A004396 (4 * SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A312893.P3746897641895798786

namespace A312893

/-- `A298784(n)+A004396(4*round(n/3))` -/
def P3746897641895798786.Spec : Prop :=
  ∀ n, P3746897641895798786.a n = A312893 n

end A312893

/-! ## A312893.P15486874771817936704

`A005843(n)+A004396(A298786(n))`
-/

namespace A312893.P15486874771817936704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A298786 n).toNat

end

end A312893.P15486874771817936704

namespace A312893

/-- `A005843(n)+A004396(A298786(n))` -/
def P15486874771817936704.Spec : Prop :=
  ∀ n, P15486874771817936704.a n = A312893 n

theorem P15486874771817936704.correct : P15486874771817936704.Spec := by
  intro n
  simp only [A312893, Nat.add_sub_cancel, A312893.P15486874771817936704.a, A312893.P922128372979076951.a, A004396, A004396.P17032557045289780609.a, A005843, A005843.P3167286115683555970.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312893

/-! ## A312893.P2394037423971391113

`A008574(n)+A004396(n-A004396(n))`
-/

namespace A312893.P2394037423971391113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A312893.P2394037423971391113

namespace A312893

/-- `A008574(n)+A004396(n-A004396(n))` -/
def P2394037423971391113.Spec : Prop :=
  ∀ n, P2394037423971391113.a n = A312893 n

end A312893

/-! ## A312893.P12455340651650325126

`(A310369(n)+A008574(n))/2`
-/

namespace A312893.P12455340651650325126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310369 n + A008574 n : ℚ) / 2

end

end A312893.P12455340651650325126

namespace A312893

/-- `(A310369(n)+A008574(n))/2` -/
def P12455340651650325126.Spec : Prop :=
  ∀ n, P12455340651650325126.a n = (A312893 n : ℚ)

theorem P12455340651650325126.correct : P12455340651650325126.Spec := by
  intro n
  simp only [A312893, Nat.add_sub_cancel, A312893.P12455340651650325126.a, A312893.P922128372979076951.a, A004396, A004396.P17032557045289780609.a, A008574, A008574.P1300280032690682112.a, A298786, A298786.P14431482331037710348.a, A310369, A310369.P267865594556305958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312893

/-! ## A312893.P2244485769467665065

`A310369(n)-A004396(n-A004396(n))`
-/

namespace A312893.P2244485769467665065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310369 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A312893.P2244485769467665065

namespace A312893

/-- `A310369(n)-A004396(n-A004396(n))` -/
def P2244485769467665065.Spec : Prop :=
  ∀ n, P2244485769467665065.a n = A312893 n

end A312893

/-! ## A312893.P18132856490531116262

`A313026(n)-Δ[A011862(n)]`
-/

namespace A312893.P18132856490531116262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n - (f1 (n + 1) - f1 n)

end

end A312893.P18132856490531116262

namespace A312893

/-- `A313026(n)-Δ[A011862(n)]` -/
def P18132856490531116262.Spec : Prop :=
  ∀ n, P18132856490531116262.a n = A312893 n

theorem P18132856490531116262.correct : P18132856490531116262.Spec := by
  intro n
  simp only [A312893, Nat.add_sub_cancel, A312893.P18132856490531116262.f1, A312893.P18132856490531116262.a, A312893.P922128372979076951.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A298786, A298786.P14431482331037710348.a, A313026, A313026.P11714630493594694704.f1, A313026.P11714630493594694704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312893

/-! ## A312893.P2727335763412885831

`A004396(A004396(n))+A313026(n)-A004396(n)`
-/

namespace A312893.P2727335763412885831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A313026 n - A004396 n)

end

end A312893.P2727335763412885831

namespace A312893

/-- `A004396(A004396(n))+A313026(n)-A004396(n)` -/
def P2727335763412885831.Spec : Prop :=
  ∀ n, P2727335763412885831.a n = A312893 n

end A312893

/-! ## A312893.P4904004363533066972

`A310502(A008574(n))/2-A008458(n)`
-/

namespace A312893.P4904004363533066972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310502 (A008574 n).toNat : ℚ) / 2 - (A008458 n : ℚ)

end

end A312893.P4904004363533066972

namespace A312893

/-- `A310502(A008574(n))/2-A008458(n)` -/
def P4904004363533066972.Spec : Prop :=
  ∀ n, P4904004363533066972.a n = (A312893 n : ℚ)

end A312893

/-! ## A312893.P14506069148157100925

`A313538(n)-A004396(A004396(n))`
-/

namespace A312893.P14506069148157100925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 n - A004396 (A004396 n).toNat

end

end A312893.P14506069148157100925

namespace A312893

/-- `A313538(n)-A004396(A004396(n))` -/
def P14506069148157100925.Spec : Prop :=
  ∀ n, P14506069148157100925.a n = A312893 n

theorem P14506069148157100925.correct : P14506069148157100925.Spec := by
  intro n
  simp only [A312893, Nat.add_sub_cancel, A312893.P14506069148157100925.a, A312893.P922128372979076951.a, A004396, A004396.P17032557045289780609.a, A298786, A298786.P14431482331037710348.a, A313538, A313538.P13622609119361302116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312893

/-! ## A312893.P4661594937977442475

`A313201(n)-Δ[2*A011862(n)]`
-/

namespace A312893.P4661594937977442475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 n - (f1 (n + 1) - f1 n)

end

end A312893.P4661594937977442475

namespace A312893

/-- `A313201(n)-Δ[2*A011862(n)]` -/
def P4661594937977442475.Spec : Prop :=
  ∀ n, P4661594937977442475.a n = A312893 n

theorem P4661594937977442475.correct : P4661594937977442475.Spec := by
  intro n
  simp only [A312893, Nat.add_sub_cancel, A312893.P4661594937977442475.f1, A312893.P4661594937977442475.a, A312893.P922128372979076951.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A298786, A298786.P14431482331037710348.a, A313201, A313201.P17274935370983792056.f1, A313201.P17274935370983792056.a, A313026, A313026.P11714630493594694704.f1, A313026.P11714630493594694704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312893

/-! ## A312893.P189414955362822788

`A313721(n)-A004396(n)`
-/

namespace A312893.P189414955362822788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n - A004396 n

end

end A312893.P189414955362822788

namespace A312893

/-- `A313721(n)-A004396(n)` -/
def P189414955362822788.Spec : Prop :=
  ∀ n, P189414955362822788.a n = A312893 n

end A312893

/-! ## A312893.P15622157739726298770

`A313721(n)-A002264(2*n+1)`
-/

namespace A312893.P15622157739726298770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n - A002264 (2 * n + 1)

end

end A312893.P15622157739726298770

namespace A312893

/-- `A313721(n)-A002264(2*n+1)` -/
def P15622157739726298770.Spec : Prop :=
  ∀ n, P15622157739726298770.a n = A312893 n

end A312893

/-! ## A312893.P5170350362267799578

`A314099(n)-A004396(A004396(2*n))`
-/

namespace A312893.P5170350362267799578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314099 n - A004396 (A004396 (2 * n)).toNat

end

end A312893.P5170350362267799578

namespace A312893

/-- `A314099(n)-A004396(A004396(2*n))` -/
def P5170350362267799578.Spec : Prop :=
  ∀ n, P5170350362267799578.a n = A312893 n

end A312893

/-! ## A312893.P10519915844575757182

`A313860(n)-A004396(2*A004396(n))`
-/

namespace A312893.P10519915844575757182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313860 n - A004396 (2 * A004396 n).toNat

end

end A312893.P10519915844575757182

namespace A312893

/-- `A313860(n)-A004396(2*A004396(n))` -/
def P10519915844575757182.Spec : Prop :=
  ∀ n, P10519915844575757182.a n = A312893 n

end A312893

/-! ## A312893.P17410265690231868028

`A315535(n)-2*A004396(n)`
-/

namespace A312893.P17410265690231868028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315535 n - 2 * A004396 n

end

end A312893.P17410265690231868028

namespace A312893

/-- `A315535(n)-2*A004396(n)` -/
def P17410265690231868028.Spec : Prop :=
  ∀ n, P17410265690231868028.a n = A312893 n

end A312893

/-! ## A312893.P1987122923334866208

`A004525(A312932(n))+2*n`
-/

namespace A312893.P1987122923334866208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312932 n).toNat + (2 * n : ℤ)

end

end A312893.P1987122923334866208

namespace A312893

/-- `A004525(A312932(n))+2*n` -/
def P1987122923334866208.Spec : Prop :=
  ∀ n, P1987122923334866208.a n = A312893 n

end A312893

/-! ## A312893.P2301947898683059925

`A004396(A219529(n)+n)`
-/

namespace A312893.P2301947898683059925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A219529 n + (n : ℤ)).toNat

end

end A312893.P2301947898683059925

namespace A312893

/-- `A004396(A219529(n)+n)` -/
def P2301947898683059925.Spec : Prop :=
  ∀ n, P2301947898683059925.a n = A312893 n

end A312893

/-! ## A312893.P8675213724028968878

`A004396(A008576(2*n)+n)`
-/

namespace A312893.P8675213724028968878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008576 (2 * n) + (n : ℤ)).toNat

end

end A312893.P8675213724028968878

namespace A312893

/-- `A004396(A008576(2*n)+n)` -/
def P8675213724028968878.Spec : Prop :=
  ∀ n, P8675213724028968878.a n = A312893 n

end A312893

/-! ## A312893.P7883039659908213321

`A004396(A312901(n)+2*n)`
-/

namespace A312893.P7883039659908213321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312901 n + (2 * n : ℤ)).toNat

end

end A312893.P7883039659908213321

namespace A312893

/-- `A004396(A312901(n)+2*n)` -/
def P7883039659908213321.Spec : Prop :=
  ∀ n, P7883039659908213321.a n = A312893 n

end A312893

/-!
# A312894: Coordination sequence Gal.4.38.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312894, the canonical program `A312894.P11041919530925850968` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312894 has offset 0).

The definition of A312894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312894.P11041919530925850968

`A301293(n)-Δ[A011861(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312894

/-- `A301293(n)-Δ[A011861(n)]` -/
def P11041919530925850968.Spec : Prop :=
  ∀ n, P11041919530925850968.a n = A312894 n

theorem P11041919530925850968.correct : P11041919530925850968.Spec := by
  intro n
  simp only [A312894]

end A312894

/-! ## A312894.P10300679055843900053

`A008574(n)+A004525(∑[and(2, n)/2])`
-/

namespace A312894.P10300679055843900053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A312894.P10300679055843900053

namespace A312894

/-- `A008574(n)+A004525(∑[and(2, n)/2])` -/
def P10300679055843900053.Spec : Prop :=
  ∀ n, P10300679055843900053.a n = A312894 n

end A312894

/-! ## A312894.P6534033619814729950

`A008574(n)+A004525(n-A004525(n))`
-/

namespace A312894.P6534033619814729950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A312894.P6534033619814729950

namespace A312894

/-- `A008574(n)+A004525(n-A004525(n))` -/
def P6534033619814729950.Spec : Prop :=
  ∀ n, P6534033619814729950.a n = A312894 n

end A312894

/-! ## A312894.P13496610063931355790

`A008706(n)-A004525(A004525(n)+n)`
-/

namespace A312894.P13496610063931355790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004525 (A004525 n + (n : ℤ)).toNat

end

end A312894.P13496610063931355790

namespace A312894

/-- `A008706(n)-A004525(A004525(n)+n)` -/
def P13496610063931355790.Spec : Prop :=
  ∀ n, P13496610063931355790.a n = A312894 n

end A312894

/-! ## A312894.P6868280474287996475

`(A310370(n)+A008574(n))/2`
-/

namespace A312894.P6868280474287996475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310370 n + A008574 n : ℚ) / 2

end

end A312894.P6868280474287996475

namespace A312894

/-- `(A310370(n)+A008574(n))/2` -/
def P6868280474287996475.Spec : Prop :=
  ∀ n, P6868280474287996475.a n = (A312894 n : ℚ)

theorem P6868280474287996475.correct : P6868280474287996475.Spec := by
  intro n
  simp only [A312894, Nat.add_sub_cancel, A312894.P6868280474287996475.a, A312894.P11041919530925850968.f1, A312894.P11041919530925850968.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, A301293, A301293.P16402300677055153941.a, A310370, A310370.P11121117059766069442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312894

/-! ## A312894.P2298182754494686661

`A310370(n)-A004525(n-A004525(n))`
-/

namespace A312894.P2298182754494686661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310370 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A312894.P2298182754494686661

namespace A312894

/-- `A310370(n)-A004525(n-A004525(n))` -/
def P2298182754494686661.Spec : Prop :=
  ∀ n, P2298182754494686661.a n = A312894 n

end A312894

/-! ## A312894.P10203130837749400336

`A313480(n)-A004525(A004525(n))`
-/

namespace A312894.P10203130837749400336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n - A004525 (A004525 n).toNat

end

end A312894.P10203130837749400336

namespace A312894

/-- `A313480(n)-A004525(A004525(n))` -/
def P10203130837749400336.Spec : Prop :=
  ∀ n, P10203130837749400336.a n = A312894 n

end A312894

/-! ## A312894.P11645577488879468472

`A313561(n)-A004525(n)`
-/

namespace A312894.P11645577488879468472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n - A004525 n

end

end A312894.P11645577488879468472

namespace A312894

/-- `A313561(n)-A004525(n)` -/
def P11645577488879468472.Spec : Prop :=
  ∀ n, P11645577488879468472.a n = A312894 n

theorem P11645577488879468472.correct : P11645577488879468472.Spec := by
  intro n
  simp only [A312894, Nat.add_sub_cancel, A312894.P11645577488879468472.a, A312894.P11041919530925850968.f1, A312894.P11041919530925850968.a, A004525, A004525.P4158271949796742323.a, A011861, A011861.P4500963193198654930.a, A301293, A301293.P16402300677055153941.a, A313561, A313561.P3656167571663365839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312894

/-! ## A312894.P17483223626131637167

`A008458(n)+A008486(n)-A314896(n)`
-/

namespace A312894.P17483223626131637167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314896 n)

end

end A312894.P17483223626131637167

namespace A312894

/-- `A008458(n)+A008486(n)-A314896(n)` -/
def P17483223626131637167.Spec : Prop :=
  ∀ n, P17483223626131637167.a n = A312894 n

end A312894

/-! ## A312894.P1512876535580882196

`A004525(A004525(n))+A310458(n)-n`
-/

namespace A312894.P1512876535580882196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A310458 n - (n : ℤ))

end

end A312894.P1512876535580882196

namespace A312894

/-- `A004525(A004525(n))+A310458(n)-n` -/
def P1512876535580882196.Spec : Prop :=
  ∀ n, P1512876535580882196.a n = A312894 n

end A312894

/-! ## A312894.P15038605869701201711

`A314112(n)-n`
-/

namespace A312894.P15038605869701201711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314112 n - (n : ℤ)

end

end A312894.P15038605869701201711

namespace A312894

/-- `A314112(n)-n` -/
def P15038605869701201711.Spec : Prop :=
  ∀ n, P15038605869701201711.a n = A312894 n

theorem P15038605869701201711.correct : P15038605869701201711.Spec := by
  intro n
  simp only [A312894, Nat.add_sub_cancel, A312894.P15038605869701201711.a, A312894.P11041919530925850968.f1, A312894.P11041919530925850968.a, A011861, A011861.P4500963193198654930.a, A301293, A301293.P16402300677055153941.a, A314112, A314112.P8835196921211282987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312894

/-! ## A312894.P11566168904712051846

`A315671(n)-(A046978(n)+n)`
-/

namespace A312894.P11566168904712051846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n - (A046978 n + (n : ℤ))

end

end A312894.P11566168904712051846

namespace A312894

/-- `A315671(n)-(A046978(n)+n)` -/
def P11566168904712051846.Spec : Prop :=
  ∀ n, P11566168904712051846.a n = A312894 n

end A312894

/-! ## A312894.P14931146620441736482

`A004525(A312943(n))+2*n`
-/

namespace A312894.P14931146620441736482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312943 n).toNat + (2 * n : ℤ)

end

end A312894.P14931146620441736482

namespace A312894

/-- `A004525(A312943(n))+2*n` -/
def P14931146620441736482.Spec : Prop :=
  ∀ n, P14931146620441736482.a n = A312894 n

end A312894

/-! ## A312894.P4212726914801527439

`A315704(n)-A047229(n+1)`
-/

namespace A312894.P4212726914801527439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 n - A047229 (n + 1)

end

end A312894.P4212726914801527439

namespace A312894

/-- `A315704(n)-A047229(n+1)` -/
def P4212726914801527439.Spec : Prop :=
  ∀ n, P4212726914801527439.a n = A312894 n

end A312894

/-! ## A312894.P11058175738033358837

`A315704(n)-(A004525(n)+n)`
-/

namespace A312894.P11058175738033358837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 n - (A004525 n + (n : ℤ))

end

end A312894.P11058175738033358837

namespace A312894

/-- `A315704(n)-(A004525(n)+n)` -/
def P11058175738033358837.Spec : Prop :=
  ∀ n, P11058175738033358837.a n = A312894 n

theorem P11058175738033358837.correct : P11058175738033358837.Spec := by
  intro n
  simp only [A312894, Nat.add_sub_cancel, A312894.P11058175738033358837.a, A312894.P11041919530925850968.f1, A312894.P11041919530925850968.a, A004525, A004525.P4158271949796742323.a, A011861, A011861.P4500963193198654930.a, A301293, A301293.P16402300677055153941.a, A315704, A315704.P11710660165894118179.a, A313561, A313561.P3656167571663365839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312894

/-! ## A312894.P17032446560927989598

`A008458(n)+A008574(n)-A315543(n)`
-/

namespace A312894.P17032446560927989598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315543 n)

end

end A312894.P17032446560927989598

namespace A312894

/-- `A008458(n)+A008574(n)-A315543(n)` -/
def P17032446560927989598.Spec : Prop :=
  ∀ n, P17032446560927989598.a n = A312894 n

end A312894

/-! ## A312894.P12496198314482331516

`A004525(A301710(n)+n)+n`
-/

namespace A312894.P12496198314482331516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301710 n + (n : ℤ)).toNat + (n : ℤ)

end

end A312894.P12496198314482331516

namespace A312894

/-- `A004525(A301710(n)+n)+n` -/
def P12496198314482331516.Spec : Prop :=
  ∀ n, P12496198314482331516.a n = A312894 n

end A312894

/-! ## A312894.P17297323406997399249

`A004525(A315520(n)+n)+n`
-/

namespace A312894.P17297323406997399249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315520 n + (n : ℤ)).toNat + (n : ℤ)

end

end A312894.P17297323406997399249

namespace A312894

/-- `A004525(A315520(n)+n)+n` -/
def P17297323406997399249.Spec : Prop :=
  ∀ n, P17297323406997399249.a n = A312894 n

end A312894

/-! ## A312894.P13621373977195549667

`A004525(A315685(n)+n)+n`
-/

namespace A312894.P13621373977195549667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315685 n + (n : ℤ)).toNat + (n : ℤ)

end

end A312894.P13621373977195549667

namespace A312894

/-- `A004525(A315685(n)+n)+n` -/
def P13621373977195549667.Spec : Prop :=
  ∀ n, P13621373977195549667.a n = A312894 n

end A312894

/-! ## A312894.P15714275365662320703

`A004525(A311501(2*n))`
-/

namespace A312894.P15714275365662320703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311501 (2 * n)).toNat

end

end A312894.P15714275365662320703

namespace A312894

/-- `A004525(A311501(2*n))` -/
def P15714275365662320703.Spec : Prop :=
  ∀ n, P15714275365662320703.a n = A312894 n

end A312894

/-!
# A312895: Coordination sequence Gal.4.58.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312895, the canonical program `A312895.P3589302732376537873` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312895 has offset 0).

The definition of A312895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312895.P11839332181642080874

`round(10/(7*acot(3*n)))`
-/

namespace A312895.P11839332181642080874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (10 / (7 * SequenceMachineLib.acot (3 * n : ℝ)))

end

end A312895.P11839332181642080874

namespace A312895

/-- `round(10/(7*acot(3*n)))` -/
def P11839332181642080874.Spec : Prop :=
  ∀ n, P11839332181642080874.a n = A312895 n

end A312895

/-! ## A312895.P3589302732376537873

`round(A008574(n)+2*n/7)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312895

/-- `round(A008574(n)+2*n/7)` -/
def P3589302732376537873.Spec : Prop :=
  ∀ n, P3589302732376537873.a n = A312895 n

theorem P3589302732376537873.correct : P3589302732376537873.Spec := by
  intro n
  simp only [A312895]

end A312895

/-! ## A312895.P4920272705460933422

`A310341(n)+A238468(n)`
-/

namespace A312895.P4920272705460933422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310341 n + A238468 n

end

end A312895.P4920272705460933422

namespace A312895

/-- `A310341(n)+A238468(n)` -/
def P4920272705460933422.Spec : Prop :=
  ∀ n, P4920272705460933422.a n = A312895 n

end A312895

/-! ## A312895.P16686937885333330636

`A312289(n)-A238468(n)`
-/

namespace A312895.P16686937885333330636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n - A238468 n

end

end A312895.P16686937885333330636

namespace A312895

/-- `A312289(n)-A238468(n)` -/
def P16686937885333330636.Spec : Prop :=
  ∀ n, P16686937885333330636.a n = A312895 n

end A312895

/-! ## A312895.P11160531943589604037

`A314674(n)-A238469(n)`
-/

namespace A312895.P11160531943589604037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n - A238469 n

end

end A312895.P11160531943589604037

namespace A312895

/-- `A314674(n)-A238469(n)` -/
def P11160531943589604037.Spec : Prop :=
  ∀ n, P11160531943589604037.a n = A312895 n

end A312895

/-! ## A312895.P13045037573735688017

`A008458(n)-A083033(n+1)`
-/

namespace A312895.P13045037573735688017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A083033 (n + 1)

end

end A312895.P13045037573735688017

namespace A312895

/-- `A008458(n)-A083033(n+1)` -/
def P13045037573735688017.Spec : Prop :=
  ∀ n, P13045037573735688017.a n = A312895 n

end A312895

/-! ## A312895.P17174259595804294465

`A271114(n)-(A083033(n+1)+1)`
-/

namespace A312895.P17174259595804294465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - (A083033 (n + 1) + 1)

end

end A312895.P17174259595804294465

namespace A312895

/-- `A271114(n)-(A083033(n+1)+1)` -/
def P17174259595804294465.Spec : Prop :=
  ∀ n, P17174259595804294465.a n = A312895 n

end A312895

/-! ## A312895.P13095816257352938420

`A004776(2*(n+1))+A004273(n)`
-/

namespace A312895.P13095816257352938420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004776 (2 * (n + 1)) + A004273 n

end

end A312895.P13095816257352938420

namespace A312895

/-- `A004776(2*(n+1))+A004273(n)` -/
def P13095816257352938420.Spec : Prop :=
  ∀ n, P13095816257352938420.a n = A312895 n

end A312895

/-! ## A312895.P12101031091894287110

`A047588(2*n+1)+A004277(n)`
-/

namespace A312895.P12101031091894287110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (2 * n + 1) + A004277 n

end

end A312895.P12101031091894287110

namespace A312895

/-- `A047588(2*n+1)+A004277(n)` -/
def P12101031091894287110.Spec : Prop :=
  ∀ n, P12101031091894287110.a n = A312895 n

end A312895

/-! ## A312895.P8197171572610605272

`A008486(2*n)-A083033(n+1)`
-/

namespace A312895.P8197171572610605272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A083033 (n + 1)

end

end A312895.P8197171572610605272

namespace A312895

/-- `A008486(2*n)-A083033(n+1)` -/
def P8197171572610605272.Spec : Prop :=
  ∀ n, P8197171572610605272.a n = A312895 n

end A312895

/-! ## A312895.P15280002636747242106

`A008706(n)-A083033(n+1)+n`
-/

namespace A312895.P15280002636747242106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A083033 (n + 1) + (n : ℤ)

end

end A312895.P15280002636747242106

namespace A312895

/-- `A008706(n)-A083033(n+1)+n` -/
def P15280002636747242106.Spec : Prop :=
  ∀ n, P15280002636747242106.a n = A312895 n

end A312895

/-! ## A312895.P15442435125663151909

`A004776(2*(n+1))+record[A006369(n)]`
-/

namespace A312895.P15442435125663151909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004776 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312895.P15442435125663151909

namespace A312895

/-- `A004776(2*(n+1))+record[A006369(n)]` -/
def P15442435125663151909.Spec : Prop :=
  ∀ n, P15442435125663151909.a n = A312895 n

end A312895

/-! ## A312895.P10965932554428527443

`A004776(2*(n+1))+record[A026741(n)]`
-/

namespace A312895.P10965932554428527443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004776 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312895.P10965932554428527443

namespace A312895

/-- `A004776(2*(n+1))+record[A026741(n)]` -/
def P10965932554428527443.Spec : Prop :=
  ∀ n, P10965932554428527443.a n = A312895 n

end A312895

/-! ## A312895.P10541334280707127866

`A047588(2*n+1)+A004275(n+1)`
-/

namespace A312895.P10541334280707127866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (2 * n + 1) + A004275 (n + 1)

end

end A312895.P10541334280707127866

namespace A312895

/-- `A047588(2*n+1)+A004275(n+1)` -/
def P10541334280707127866.Spec : Prop :=
  ∀ n, P10541334280707127866.a n = A312895 n

end A312895

/-! ## A312895.P616493594050039905

`A014681(2*n)+A004776(2*(n+1))`
-/

namespace A312895.P616493594050039905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * n) + A004776 (2 * (n + 1))

end

end A312895.P616493594050039905

namespace A312895

/-- `A014681(2*n)+A004776(2*(n+1))` -/
def P616493594050039905.Spec : Prop :=
  ∀ n, P616493594050039905.a n = A312895 n

end A312895

/-! ## A312895.P176739376101370264

`A004776(2*(n+1))+A004275(n+1)-1`
-/

namespace A312895.P176739376101370264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004776 (2 * (n + 1)) + (A004275 (n + 1) - 1)

end

end A312895.P176739376101370264

namespace A312895

/-- `A004776(2*(n+1))+A004275(n+1)-1` -/
def P176739376101370264.Spec : Prop :=
  ∀ n, P176739376101370264.a n = A312895 n

end A312895

/-! ## A312895.P6746943628531621180

`A004776(2*(n+1))+A004275(2*n)/2`
-/

namespace A312895.P6746943628531621180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004776 (2 * (n + 1)) : ℚ) + (A004275 (2 * n) : ℚ) / 2

end

end A312895.P6746943628531621180

namespace A312895

/-- `A004776(2*(n+1))+A004275(2*n)/2` -/
def P6746943628531621180.Spec : Prop :=
  ∀ n, P6746943628531621180.a n = (A312895 n : ℚ)

end A312895

/-! ## A312895.P13884245441333153444

`A057357(A008486(n)+1)+A008486(n)`
-/

namespace A312895.P13884245441333153444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A008486 n + 1).toNat + A008486 n

end

end A312895.P13884245441333153444

namespace A312895

/-- `A057357(A008486(n)+1)+A008486(n)` -/
def P13884245441333153444.Spec : Prop :=
  ∀ n, P13884245441333153444.a n = A312895 n

end A312895

/-! ## A312895.P18158450329439254617

`A008574(n)+A057357(A016777(n))-n`
-/

namespace A312895.P18158450329439254617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A057357 (A016777 n).toNat - (n : ℤ))

end

end A312895.P18158450329439254617

namespace A312895

/-- `A008574(n)+A057357(A016777(n))-n` -/
def P18158450329439254617.Spec : Prop :=
  ∀ n, P18158450329439254617.a n = A312895 n

end A312895

/-! ## A312895.P12146040287821633853

`A008486(2*n)+A060107(n+2)-A060107(2*(n+1))`
-/

namespace A312895.P12146040287821633853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A060107 (n + 2) - A060107 (2 * (n + 1)))

end

end A312895.P12146040287821633853

namespace A312895

/-- `A008486(2*n)+A060107(n+2)-A060107(2*(n+1))` -/
def P12146040287821633853.Spec : Prop :=
  ∀ n, P12146040287821633853.a n = A312895 n

end A312895

/-!
# A312896: Coordination sequence Gal.6.130.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312896, the canonical program `A312896.P16473508619976293498` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312896 has offset 0).

The definition of A312896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2544 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312896.P16473508619976293498

`A008574(n)+A004396(A004524(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312896

/-- `A008574(n)+A004396(A004524(n+1))` -/
def P16473508619976293498.Spec : Prop :=
  ∀ n, P16473508619976293498.a n = A312896 n

theorem P16473508619976293498.correct : P16473508619976293498.Spec := by
  intro n
  simp only [A312896]

end A312896

/-! ## A312896.P10525153902898696048

`A008574(n)+A004396(n-A004525(n))`
-/

namespace A312896.P10525153902898696048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A312896.P10525153902898696048

namespace A312896

/-- `A008574(n)+A004396(n-A004525(n))` -/
def P10525153902898696048.Spec : Prop :=
  ∀ n, P10525153902898696048.a n = A312896 n

end A312896

/-! ## A312896.P17115420335928440981

`A313099(n)+A002264(n+1)-∑[A131735(n)]`
-/

namespace A312896.P17115420335928440981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + A002264 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312896.P17115420335928440981

namespace A312896

/-- `A313099(n)+A002264(n+1)-∑[A131735(n)]` -/
def P17115420335928440981.Spec : Prop :=
  ∀ n, P17115420335928440981.a n = A312896 n

end A312896

/-! ## A312896.P18209206110837749740

`A313099(n)+n-A004396(n)-∑[A131735(n)]`
-/

namespace A312896.P18209206110837749740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + ((n : ℤ) - A004396 n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312896.P18209206110837749740

namespace A312896

/-- `A313099(n)+n-A004396(n)-∑[A131735(n)]` -/
def P18209206110837749740.Spec : Prop :=
  ∀ n, P18209206110837749740.a n = A312896 n

end A312896

/-! ## A312896.P1483920731523685016

`A008458(n)+A008486(n)-A314893(n)`
-/

namespace A312896.P1483920731523685016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314893 n)

end

end A312896.P1483920731523685016

namespace A312896

/-- `A008458(n)+A008486(n)-A314893(n)` -/
def P1483920731523685016.Spec : Prop :=
  ∀ n, P1483920731523685016.a n = A312896 n

end A312896

/-! ## A312896.P6832624716401523673

`A313569(n)-A004525(n)`
-/

namespace A312896.P6832624716401523673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n - A004525 n

end

end A312896.P6832624716401523673

namespace A312896

/-- `A313569(n)-A004525(n)` -/
def P6832624716401523673.Spec : Prop :=
  ∀ n, P6832624716401523673.a n = A312896 n

theorem P6832624716401523673.correct : P6832624716401523673.Spec := by
  intro n
  simp only [A312896, Nat.add_sub_cancel, A312896.P6832624716401523673.a, A312896.P16473508619976293498.a, A004396, A004396.P17032557045289780609.a, A004524, A004524.P8943215836771390324.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A313569, A313569.P8131727440747983242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312896

/-! ## A312896.P12180718143572746566

`A313726(n)-A004396(n)`
-/

namespace A312896.P12180718143572746566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 n - A004396 n

end

end A312896.P12180718143572746566

namespace A312896

/-- `A313726(n)-A004396(n)` -/
def P12180718143572746566.Spec : Prop :=
  ∀ n, P12180718143572746566.a n = A312896 n

end A312896

/-! ## A312896.P8017329286457824413

`A314124(n)-n`
-/

namespace A312896.P8017329286457824413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n - (n : ℤ)

end

end A312896.P8017329286457824413

namespace A312896

/-- `A314124(n)-n` -/
def P8017329286457824413.Spec : Prop :=
  ∀ n, P8017329286457824413.a n = A312896 n

theorem P8017329286457824413.correct : P8017329286457824413.Spec := by
  intro n
  simp only [A312896, Nat.add_sub_cancel, A312896.P8017329286457824413.a, A312896.P16473508619976293498.a, A004396, A004396.P17032557045289780609.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A314124, A314124.P13406789306969075082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312896

/-! ## A312896.P16224397964377346165

`A128834(n)+A310524(n)-n`
-/

namespace A312896.P16224397964377346165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A310524 n - (n : ℤ))

end

end A312896.P16224397964377346165

namespace A312896

/-- `A128834(n)+A310524(n)-n` -/
def P16224397964377346165.Spec : Prop :=
  ∀ n, P16224397964377346165.a n = A312896 n

theorem P16224397964377346165.correct : P16224397964377346165.Spec := by
  intro n
  simp only [A312896, Nat.add_sub_cancel, A312896.P16224397964377346165.a, A312896.P16473508619976293498.a, A004396, A004396.P17032557045289780609.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A128834, A128834.P16779687439637953687.a, A310524, A310524.P4933406775284647162.a, A010892, A010892.P14408744864468695543.a, A314124, A314124.P13406789306969075082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312896

/-! ## A312896.P3328260618086993800

`A314240(n)-A047513(n+1)`
-/

namespace A312896.P3328260618086993800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A047513 (n + 1)

end

end A312896.P3328260618086993800

namespace A312896

/-- `A314240(n)-A047513(n+1)` -/
def P3328260618086993800.Spec : Prop :=
  ∀ n, P3328260618086993800.a n = A312896 n

end A312896

/-! ## A312896.P14890278942270598556

`A008458(n)+A008574(n)-A315540(n)`
-/

namespace A312896.P14890278942270598556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315540 n)

end

end A312896.P14890278942270598556

namespace A312896

/-- `A008458(n)+A008574(n)-A315540(n)` -/
def P14890278942270598556.Spec : Prop :=
  ∀ n, P14890278942270598556.a n = A312896 n

end A312896

/-! ## A312896.P6740319590936920255

`A315710(n)-A047229(n+1)`
-/

namespace A312896.P6740319590936920255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315710 n - A047229 (n + 1)

end

end A312896.P6740319590936920255

namespace A312896

/-- `A315710(n)-A047229(n+1)` -/
def P6740319590936920255.Spec : Prop :=
  ∀ n, P6740319590936920255.a n = A312896 n

end A312896

/-! ## A312896.P1264328604208537422

`A315710(n)-(A004525(n)+n)`
-/

namespace A312896.P1264328604208537422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315710 n - (A004525 n + (n : ℤ))

end

end A312896.P1264328604208537422

namespace A312896

/-- `A315710(n)-(A004525(n)+n)` -/
def P1264328604208537422.Spec : Prop :=
  ∀ n, P1264328604208537422.a n = A312896 n

theorem P1264328604208537422.correct : P1264328604208537422.Spec := by
  intro n
  simp only [A312896, Nat.add_sub_cancel, A312896.P1264328604208537422.a, A312896.P16473508619976293498.a, A004396, A004396.P17032557045289780609.a, A004524, A004524.P8943215836771390324.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A315710, A315710.P3884167862571020999.a, A313569, A313569.P8131727440747983242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312896

/-! ## A312896.P13624513736059404447

`A004525(A310393(n))+2*n`
-/

namespace A312896.P13624513736059404447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310393 n).toNat + (2 * n : ℤ)

end

end A312896.P13624513736059404447

namespace A312896

/-- `A004525(A310393(n))+2*n` -/
def P13624513736059404447.Spec : Prop :=
  ∀ n, P13624513736059404447.a n = A312896 n

end A312896

/-! ## A312896.P17731007474739788897

`A004525(A312950(n))+2*n`
-/

namespace A312896.P17731007474739788897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312950 n).toNat + (2 * n : ℤ)

end

end A312896.P17731007474739788897

namespace A312896

/-- `A004525(A312950(n))+2*n` -/
def P17731007474739788897.Spec : Prop :=
  ∀ n, P17731007474739788897.a n = A312896 n

end A312896

/-! ## A312896.P1962412071463900730

`A004525(A313057(n))+2*n`
-/

namespace A312896.P1962412071463900730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313057 n).toNat + (2 * n : ℤ)

end

end A312896.P1962412071463900730

namespace A312896

/-- `A004525(A313057(n))+2*n` -/
def P1962412071463900730.Spec : Prop :=
  ∀ n, P1962412071463900730.a n = A312896 n

end A312896

/-! ## A312896.P5812795996950991859

`A004525(A313099(n))+2*n`
-/

namespace A312896.P5812795996950991859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313099 n).toNat + (2 * n : ℤ)

end

end A312896.P5812795996950991859

namespace A312896

/-- `A004525(A313099(n))+2*n` -/
def P5812795996950991859.Spec : Prop :=
  ∀ n, P5812795996950991859.a n = A312896 n

end A312896

/-! ## A312896.P1644031393990797515

`A004525(A313193(n))+2*n`
-/

namespace A312896.P1644031393990797515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313193 n).toNat + (2 * n : ℤ)

end

end A312896.P1644031393990797515

namespace A312896

/-- `A004525(A313193(n))+2*n` -/
def P1644031393990797515.Spec : Prop :=
  ∀ n, P1644031393990797515.a n = A312896 n

end A312896

/-! ## A312896.P7477199903936143165

`A004396(A314022(n))+n`
-/

namespace A312896.P7477199903936143165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314022 n).toNat + (n : ℤ)

end

end A312896.P7477199903936143165

namespace A312896

/-- `A004396(A314022(n))+n` -/
def P7477199903936143165.Spec : Prop :=
  ∀ n, P7477199903936143165.a n = A312896 n

end A312896

/-! ## A312896.P10821926845929608339

`A004396(A313698(n))+n`
-/

namespace A312896.P10821926845929608339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313698 n).toNat + (n : ℤ)

end

end A312896.P10821926845929608339

namespace A312896

/-- `A004396(A313698(n))+n` -/
def P10821926845929608339.Spec : Prop :=
  ∀ n, P10821926845929608339.a n = A312896 n

end A312896

/-!
# A312897: Coordination sequence Gal.6.192.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312897, the canonical program `A312897.P998791536937785754` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312897 has offset 0).

The definition of A312897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2037 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312897.P11136200457274042041

`A004525(A310438(n))+2*n`
-/

namespace A312897.P11136200457274042041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310438 n).toNat + (2 * n : ℤ)

end

end A312897.P11136200457274042041

namespace A312897

/-- `A004525(A310438(n))+2*n` -/
def P11136200457274042041.Spec : Prop :=
  ∀ n, P11136200457274042041.a n = A312897 n

end A312897

/-! ## A312897.P11774992242069266457

`A004525(A312976(n))+2*n`
-/

namespace A312897.P11774992242069266457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312976 n).toNat + (2 * n : ℤ)

end

end A312897.P11774992242069266457

namespace A312897

/-- `A004525(A312976(n))+2*n` -/
def P11774992242069266457.Spec : Prop :=
  ∀ n, P11774992242069266457.a n = A312897 n

end A312897

/-! ## A312897.P5261096184871375266

`A004525(A313062(n))+2*n`
-/

namespace A312897.P5261096184871375266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313062 n).toNat + (2 * n : ℤ)

end

end A312897.P5261096184871375266

namespace A312897

/-- `A004525(A313062(n))+2*n` -/
def P5261096184871375266.Spec : Prop :=
  ∀ n, P5261096184871375266.a n = A312897 n

end A312897

/-! ## A312897.P998791536937785754

`round(A008576(A310442(n))/3)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A312897

/-- `round(A008576(A310442(n))/3)` -/
def P998791536937785754.Spec : Prop :=
  ∀ n, P998791536937785754.a n = A312897 n

theorem P998791536937785754.correct : P998791536937785754.Spec := by
  intro n
  simp only [A312897]

end A312897

/-! ## A312897.P11479128530450640227

`round(A008458(A313738(n))/7)`
-/

namespace A312897.P11479128530450640227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008458 (A313738 n).toNat : ℚ) / 7)

end

end A312897.P11479128530450640227

namespace A312897

/-- `round(A008458(A313738(n))/7)` -/
def P11479128530450640227.Spec : Prop :=
  ∀ n, P11479128530450640227.a n = A312897 n

end A312897

/-! ## A312897.P5568675501683233134

`A004396(A310371(n)+2*n)`
-/

namespace A312897.P5568675501683233134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310371 n + (2 * n : ℤ)).toNat

end

end A312897.P5568675501683233134

namespace A312897

/-- `A004396(A310371(n)+2*n)` -/
def P5568675501683233134.Spec : Prop :=
  ∀ n, P5568675501683233134.a n = A312897 n

end A312897

/-! ## A312897.P1192826338736658687

`A004396(A312935(n)+2*n)`
-/

namespace A312897.P1192826338736658687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312935 n + (2 * n : ℤ)).toNat

end

end A312897.P1192826338736658687

namespace A312897

/-- `A004396(A312935(n)+2*n)` -/
def P1192826338736658687.Spec : Prop :=
  ∀ n, P1192826338736658687.a n = A312897 n

end A312897

/-! ## A312897.P925570788126013493

`A004396(A313031(n)+2*n)`
-/

namespace A312897.P925570788126013493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313031 n + (2 * n : ℤ)).toNat

end

end A312897.P925570788126013493

namespace A312897

/-- `A004396(A313031(n)+2*n)` -/
def P925570788126013493.Spec : Prop :=
  ∀ n, P925570788126013493.a n = A312897 n

end A312897

/-! ## A312897.P18057139947604848208

`A004396(A310371(n)+n+n)`
-/

namespace A312897.P18057139947604848208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310371 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312897.P18057139947604848208

namespace A312897

/-- `A004396(A310371(n)+n+n)` -/
def P18057139947604848208.Spec : Prop :=
  ∀ n, P18057139947604848208.a n = A312897 n

end A312897

/-! ## A312897.P2685946175790123660

`A004396(A312935(n)+n+n)`
-/

namespace A312897.P2685946175790123660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312935 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312897.P2685946175790123660

namespace A312897

/-- `A004396(A312935(n)+n+n)` -/
def P2685946175790123660.Spec : Prop :=
  ∀ n, P2685946175790123660.a n = A312897 n

end A312897

/-! ## A312897.P1055226729318874569

`A004396(A313031(n)+n+n)`
-/

namespace A312897.P1055226729318874569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313031 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312897.P1055226729318874569

namespace A312897

/-- `A004396(A313031(n)+n+n)` -/
def P1055226729318874569.Spec : Prop :=
  ∀ n, P1055226729318874569.a n = A312897 n

end A312897

/-! ## A312897.P14151104879316888640

`A310380(A008486(n))/2-A008486(n)`
-/

namespace A312897.P14151104879316888640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310380 (A008486 n).toNat : ℚ) / 2 - (A008486 n : ℚ)

end

end A312897.P14151104879316888640

namespace A312897

/-- `A310380(A008486(n))/2-A008486(n)` -/
def P14151104879316888640.Spec : Prop :=
  ∀ n, P14151104879316888640.a n = (A312897 n : ℚ)

end A312897

/-! ## A312897.P1885274448845843275

`A008458(A008574(n))-A315056(A008574(n))`
-/

namespace A312897.P1885274448845843275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008574 n).toNat - A315056 (A008574 n).toNat

end

end A312897.P1885274448845843275

namespace A312897

/-- `A008458(A008574(n))-A315056(A008574(n))` -/
def P1885274448845843275.Spec : Prop :=
  ∀ n, P1885274448845843275.a n = A312897 n

end A312897

/-! ## A312897.P1698864472341513493

`A315024(A008458(n))-A008574(A008458(n))`
-/

namespace A312897.P1698864472341513493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315024 (A008458 n).toNat - A008574 (A008458 n).toNat

end

end A312897.P1698864472341513493

namespace A312897

/-- `A315024(A008458(n))-A008574(A008458(n))` -/
def P1698864472341513493.Spec : Prop :=
  ∀ n, P1698864472341513493.a n = A312897 n

end A312897

/-! ## A312897.P18123069453020796587

`A314885(A008574(2*n))-A008574(A008574(2*n))`
-/

namespace A312897.P18123069453020796587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314885 (A008574 (2 * n)).toNat - A008574 (A008574 (2 * n)).toNat

end

end A312897.P18123069453020796587

namespace A312897

/-- `A314885(A008574(2*n))-A008574(A008574(2*n))` -/
def P18123069453020796587.Spec : Prop :=
  ∀ n, P18123069453020796587.a n = A312897 n

end A312897

/-! ## A312897.P15603242057138764735

`abs(A008592(n)-A315539(n))`
-/

namespace A312897.P15603242057138764735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315539 n|

end

end A312897.P15603242057138764735

namespace A312897

/-- `abs(A008592(n)-A315539(n))` -/
def P15603242057138764735.Spec : Prop :=
  ∀ n, P15603242057138764735.a n = A312897 n

end A312897

/-! ## A312897.P8936540014524789738

`A008458(n)+A008574(n)-A315539(n)`
-/

namespace A312897.P8936540014524789738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315539 n)

end

end A312897.P8936540014524789738

namespace A312897

/-- `A008458(n)+A008574(n)-A315539(n)` -/
def P8936540014524789738.Spec : Prop :=
  ∀ n, P8936540014524789738.a n = A312897 n

end A312897

/-!
# A312898: Coordination sequence Gal.5.11.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312898, there is no canonical definition to state claims against.
-/

/-! ## A312898.P571755051766352192

`A312900(n)-A296469(A247970(n+1))`
-/

namespace A312898.P571755051766352192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312900 n - A296469 ((A247970 (n + 1)).toNat + 1)

end

end A312898.P571755051766352192

/-! ## A312898.P4575113068608351679

`A312900(n*A287378(n))-A057354(A173068(n+2))`
-/

namespace A312898.P4575113068608351679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312900 ((n : ℤ) * A287378 n).toNat - A057354 (A173068 (n + 2)).toNat

end

end A312898.P4575113068608351679

/-! ## A312898.P16107587866334741298

`A312900(n^A287378(n))-A057354(A173068(n+2))`
-/

namespace A312898.P16107587866334741298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312900 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287378 n : ℤ))).toNat - A057354 (A173068 (n + 2)).toNat

end

end A312898.P16107587866334741298

/-! ## A312898.P14659198805699969471

`A311551(n)-A057427((n+1)²²)+1-A038608(A332104(n))`
-/

namespace A312898.P14659198805699969471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311551 n - A057427 (((n + 1) ^ 2) ^ 2) + 1 - A038608 (A332104 n).toNat

end

end A312898.P14659198805699969471

/-!
# A312899: Coordination sequence Gal.6.390.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312899, there is no canonical definition to state claims against.
-/

/-! ## A312899.P8495770769355338280

`A312900(n*A287378(n))`
-/

namespace A312899.P8495770769355338280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312900 ((n : ℤ) * A287378 n).toNat

end

end A312899.P8495770769355338280

/-! ## A312899.P2847432259460159428

`A312900(n^A287378(n))`
-/

namespace A312899.P2847432259460159428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312900 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287378 n : ℤ))).toNat

end

end A312899.P2847432259460159428

/-! ## A312899.P11192508196619241859

`A312900(lcm(n, A287378(n)))`
-/

namespace A312899.P11192508196619241859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312900 (Int.lcm (n : ℤ) (A287378 n))

end

end A312899.P11192508196619241859

/-! ## A312899.P9674781552946626014

`A312900(n)^exp(A173068(n))`
-/

namespace A312899.P9674781552946626014
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A312900 n : ℝ) ^ (Real.exp (A173068 n : ℝ))

end

end A312899.P9674781552946626014

