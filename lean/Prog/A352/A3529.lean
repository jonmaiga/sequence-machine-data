import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B008.C000
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
# A352900: a(n) is the number of different ways to partition the set of vertices of a convex n-gon into intersecting polygons.

The programs for A352900, there is no canonical definition to state claims against.
-/

/-! ## A352900.P2276912827231438449

`A006505(n+3)-A114997(n+3)`
-/

namespace A352900.P2276912827231438449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006505 (n + 3) - A114997 (n + 3)

end

end A352900.P2276912827231438449

/-!
# A352901: a(0) = 1; a(n) = Sum_{k=0..floor(n/3)} binomial(n+1,3*k+1) * a(k).

The programs for A352901, there is no canonical definition to state claims against.
-/

/-! ## A352901.P17693156033472147935

`Δ[A290997(n+1)]%p?[7*n^3+10]`
-/

namespace A352901.P17693156033472147935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290997 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A352901.P17693156033472147935

/-! ## A352901.P8764650120767457884

`Δ[A290997(n+1)]%A290984(n+1)`
-/

namespace A352901.P8764650120767457884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A290984 (n + 1))

end

end A352901.P8764650120767457884

/-! ## A352901.P623446318051932799

`Δ[A290997(∑[A276144(n+1)])]`
-/

namespace A352901.P623446318051932799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276144 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290997 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352901.P623446318051932799

/-! ## A352901.P15691829828117869455

`Δ[A290997(A276144(n+1)+n)]`
-/

namespace A352901.P15691829828117869455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290997 (A276144 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352901.P15691829828117869455

/-!
# A352902: a(0) = 1; a(n) = Sum_{k=0..floor(n/4)} binomial(n+1,4*k+1) * a(k).

The programs for A352902, there is no canonical definition to state claims against.
-/

/-! ## A352902.P17490277204161886541

`A119330(n)-A044941(A040027(n))`
-/

namespace A352902.P17490277204161886541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119330 n - A044941 (A040027 n).toNat

end

end A352902.P17490277204161886541

/-! ## A352902.P4870667793251036639

`A119330(n)-A044941(A055427(n))`
-/

namespace A352902.P4870667793251036639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119330 n - A044941 (A055427 n).toNat

end

end A352902.P4870667793251036639

/-! ## A352902.P15374787839568843634

`A119330(n)-A025466(A206229(n))`
-/

namespace A352902.P15374787839568843634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119330 n - A025466 (A206229 n).toNat

end

end A352902.P15374787839568843634

/-! ## A352902.P14009308193502879578

`A119330(n)-A240328(A048575(n))`
-/

namespace A352902.P14009308193502879578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119330 n - A240328 (A048575 n).toNat

end

end A352902.P14009308193502879578

/-! ## A352902.P1767434468942141832

`A119330(n)-A086017(A279565(n))`
-/

namespace A352902.P1767434468942141832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119330 n - A086017 (A279565 n).toNat

end

end A352902.P1767434468942141832

/-!
# A352904: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/4)} binomial(n,4*k+1) * a(k).

The programs for A352904, there is no canonical definition to state claims against.
-/

/-! ## A352904.P5835837899513485422

`A038504(n)+A010054(A053699(n))`
-/

namespace A352904.P5835837899513485422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n + A010054 (A053699 n).toNat

end

end A352904.P5835837899513485422

/-! ## A352904.P4369512753826563249

`A039982(A066535(n))+A038504(n)`
-/

namespace A352904.P4369512753826563249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A066535 n).toNat + A038504 n

end

end A352904.P4369512753826563249

/-! ## A352904.P10704828484033975217

`or(A016389(A038505(n)), A038504(n))`
-/

namespace A352904.P10704828484033975217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 (A038505 n).toNat) (A038504 n)

end

end A352904.P10704828484033975217

/-! ## A352904.P2948491945386913971

`or(A038504(n), A106222(A002378(n)))`
-/

namespace A352904.P2948491945386913971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038504 n) (A106222 (A002378 n).toNat)

end

end A352904.P2948491945386913971

/-! ## A352904.P16316104812482727783

`or(A008683(A149378(n)), A038504(n))`
-/

namespace A352904.P16316104812482727783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A149378 n).toNat) (A038504 n)

end

end A352904.P16316104812482727783

/-!
# A352905: Expansion of e.g.f. sin(x) * exp(exp(x) - 1).

The programs for A352905, there is no canonical definition to state claims against.
-/

/-! ## A352905.P8171333685766691924

`A002264(A268952(n+1)+A215098(n))`
-/

namespace A352905.P8171333685766691924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A268952 (n + 1) + A215098 n).toNat

end

end A352905.P8171333685766691924

/-! ## A352905.P13564402177014020084

`A230772(A150981(n))`
-/

namespace A352905.P13564402177014020084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (A150981 n).toNat

end

end A352905.P13564402177014020084

/-! ## A352905.P10570518105799977382

`Δ[A111439(A008933(n))]`
-/

namespace A352905.P10570518105799977382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A008933 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352905.P10570518105799977382

/-!
# A352906: Expansion of e.g.f. sinh(x) / (1 - sin(x)).

The programs for A352906, there is no canonical definition to state claims against.
-/

/-! ## A352906.P13859620256352478444

`Δ[A062161(n)]-A062162(n)`
-/

namespace A352906.P13859620256352478444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A062162 n

end

end A352906.P13859620256352478444

/-! ## A352906.P8212638333371071452

`A062161(n+1)-A062272(n)`
-/

namespace A352906.P8212638333371071452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 (n + 1) - A062272 n

end

end A352906.P8212638333371071452

/-! ## A352906.P3274117577652974747

`A062161(n+1)+A062161(n)-A000667(n)`
-/

namespace A352906.P3274117577652974747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 (n + 1) + (A062161 n - A000667 n)

end

end A352906.P3274117577652974747

/-! ## A352906.P8305569063271562825

`A062161(n+1)-(A062162(n)+A062161(n))`
-/

namespace A352906.P8305569063271562825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 (n + 1) - (A062162 n + A062161 n)

end

end A352906.P8305569063271562825

/-! ## A352906.P15966790322944964629

`A062272(n+1)-(A062272(n)+A062162(n+1))`
-/

namespace A352906.P15966790322944964629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 (n + 1) - (A062272 n + A062162 (n + 1))

end

end A352906.P15966790322944964629

/-!
# A352907: Records in the number of iterations in the 3x+1 sequences required to reach a power of 2.

The programs for A352907, there is no canonical definition to state claims against.
-/

/-! ## A352907.P10204516622238423178

`A352939(n)+a(n-1)` with `a(0)=0`
-/

namespace A352907.P10204516622238423178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A352939 n + a (n - 1)

end

end A352907.P10204516622238423178

/-! ## A352907.P15307249812494959333

`∑[A288493(n+1)-A169585(n)]`
-/

namespace A352907.P15307249812494959333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288493 (n + 1) - A169585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352907.P15307249812494959333

/-! ## A352907.P953164700555717600

`A006878(n+2)-A130130(n+1)²`
-/

namespace A352907.P953164700555717600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006878 (n + 2) - A130130 (n + 1) ^ 2

end

end A352907.P953164700555717600

/-! ## A352907.P5789724596712148376

`∪[A023086(n+1), ∑[A352939(n+1)]]`
-/

namespace A352907.P5789724596712148376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023086 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A352907.P5789724596712148376

/-! ## A352907.P9964117174503856924

`A006878(n+2)+2-A040011(2*n)`
-/

namespace A352907.P9964117174503856924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006878 (n + 2) + (2 - A040011 (2 * n))

end

end A352907.P9964117174503856924

/-! ## A352907.P4158241955735914213

`∑[A288493(n+1)]-A000032(floor(1/(n+1)))²`
-/

namespace A352907.P4158241955735914213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat ^ 2

end

end A352907.P4158241955735914213

/-! ## A352907.P15794013576647309284

`A006878(n+2)-A020639(A008574(n))²`
-/

namespace A352907.P15794013576647309284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006878 (n + 2) - A020639 (A008574 n).toNat ^ 2

end

end A352907.P15794013576647309284

/-! ## A352907.P7317161978095355682

`A006878(n+2)-(A130130(2*n)+A130130(n+1))`
-/

namespace A352907.P7317161978095355682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006878 (n + 2) - (A130130 (2 * n) + A130130 (n + 1))

end

end A352907.P7317161978095355682

/-!
# A352909: Pairs (i,j) of nonnegative integers with disjoint binary expansions sorted first by i+j then by i.

The programs for A352909, there is no canonical definition to state claims against.
-/

/-! ## A352909.P14046764114681418375

`A177804(n+1)%A352911(n+1)`
-/

namespace A352909.P14046764114681418375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177804 (n + 1)) (A352911 (n + 1))

end

end A352909.P14046764114681418375

/-! ## A352909.P14788611201754385335

`A352911(n+1)-A003557(A300951(n))`
-/

namespace A352909.P14788611201754385335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 (n + 1) - A003557 (A300951 n).toNat

end

end A352909.P14788611201754385335

/-! ## A352909.P10795790711405836228

`A352911(n+1)+A008683(A098566(n+1))`
-/

namespace A352909.P10795790711405836228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 (n + 1) + A008683 (A098566 (n + 1)).toNat

end

end A352909.P10795790711405836228

/-! ## A352909.P16337301015027786376

`A352911(n+1)-A001055(A005105(n+1))`
-/

namespace A352909.P16337301015027786376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 (n + 1) - A001055 (A005105 (n + 1)).toNat

end

end A352909.P16337301015027786376

/-! ## A352909.P12145717684248076870

`A122617(n+1)%A352911(n+1)`
-/

namespace A352909.P12145717684248076870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122617 (n + 1)) (A352911 (n + 1))

end

end A352909.P12145717684248076870

/-!
# A352910: The j-values of pairs (i,j) listed in A352909.

The programs for A352910, there is no canonical definition to state claims against.
-/

/-! ## A352910.P11080329986551437894

`A295989(n)-A328732(n)`
-/

namespace A352910.P11080329986551437894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 n - A328732 n

end

end A352910.P11080329986551437894

/-! ## A352910.P413895270971276957

`A289814(A353660(n))`
-/

namespace A352910.P413895270971276957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A353660 n).toNat

end

end A352910.P413895270971276957

/-! ## A352910.P8571957294286157163

`A289813(A368229(n))`
-/

namespace A352910.P8571957294286157163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A368229 n).toNat

end

end A352910.P8571957294286157163

/-! ## A352910.P15880897388497136806

`A025581(A268231(n+1))`
-/

namespace A352910.P15880897388497136806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A268231 (n + 1)).toNat

end

end A352910.P15880897388497136806

/-! ## A352910.P13916879779547615822

`A025581(eq[0, A004198(n)])`
-/

namespace A352910.P13916879779547615822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352910.P13916879779547615822

/-! ## A352910.P5811563385192534000

`A099026(eq[0, A004198(n)])`
-/

namespace A352910.P5811563385192534000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352910.P5811563385192534000

/-! ## A352910.P3507233531765172793

`A025581(lt[0, A047999(n)])`
-/

namespace A352910.P3507233531765172793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A352910.P3507233531765172793

/-! ## A352910.P5159788552178648822

`A025581(eq[1, A047999(n)])`
-/

namespace A352910.P5159788552178648822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352910.P5159788552178648822

/-! ## A352910.P2873635230917431253

`A051933(eq[1, A047999(n)])`
-/

namespace A352910.P2873635230917431253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352910.P2873635230917431253

/-! ## A352910.P12393975692620310641

`A025581(eq[A003056(n), A003987(n)])`
-/

namespace A352910.P12393975692620310641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352910.P12393975692620310641

/-! ## A352910.P1926597434038105276

`A025581(eq[A025581(n), A051933(n)])`
-/

namespace A352910.P1926597434038105276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352910.P1926597434038105276

/-! ## A352910.P993391690179656284

`A025581(eq[A025581(n), A099026(n)])`
-/

namespace A352910.P993391690179656284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352910.P993391690179656284

/-! ## A352910.P9693833307624960835

`A025581(lt[A003056(n), A003987(n)+1])`
-/

namespace A352910.P9693833307624960835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352910.P9693833307624960835

/-! ## A352910.P1788438552685602805

`A025581(lt[A003056(n), A280172(n+1)])`
-/

namespace A352910.P1788438552685602805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352910.P1788438552685602805

/-! ## A352910.P10631135366987402504

`A025581(lt[A003056(n)-1, A003987(n)])`
-/

namespace A352910.P10631135366987402504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352910.P10631135366987402504

/-! ## A352910.P12567355154035668716

`A352909(2*(n+1))`
-/

namespace A352910.P12567355154035668716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352909 (2 * (n + 1))

end

end A352910.P12567355154035668716

/-! ## A352910.P3027089001581454034

`A025581(lt[A307433(n), 2])`
-/

namespace A352910.P3027089001581454034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307433 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A352910.P3027089001581454034

/-! ## A352910.P1245101599896991871

`A353661(A353660(A352909(n+2+n)))`
-/

namespace A352910.P1245101599896991871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353661 (A353660 (A352909 (n + 2 + n)).toNat).toNat

end

end A352910.P1245101599896991871

/-!
# A352911: Cantor's List: Pairs (i, j) of relatively prime positive integers sorted first by i + j then by i.

The programs for A352911, there is no canonical definition to state claims against.
-/

/-! ## A352911.P11159693272102561580

`(A352909(n+1)+1)%A352156(2*n+1)`
-/

namespace A352911.P11159693272102561580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352909 (n + 1) + 1) (A352156 (2 * n + 1))

end

end A352911.P11159693272102561580

/-! ## A352911.P11436007835889846388

`A352909(n+1)+A000034(A152750(n))`
-/

namespace A352911.P11436007835889846388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352909 (n + 1) + A000034 (A152750 n).toNat

end

end A352911.P11436007835889846388

/-! ## A352911.P8746995362944119409

`A352909(n+1)+A057427(A164845(n))`
-/

namespace A352911.P8746995362944119409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352909 (n + 1) + A057427 (A164845 n).toNat

end

end A352911.P8746995362944119409

/-! ## A352911.P13168125273987630047

`A352909(n+1)+A000035(A027862(n+1))`
-/

namespace A352911.P13168125273987630047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352909 (n + 1) + A000035 (A027862 (n + 1)).toNat

end

end A352911.P13168125273987630047

/-! ## A352911.P406787143123175942

`A352909(n+1)+A008480(A030284(n+1))`
-/

namespace A352911.P406787143123175942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352909 (n + 1) + A008480 (A030284 (n + 1)).toNat

end

end A352911.P406787143123175942

/-!
# A352912: Irregular triangle read by rows: row n (n>=1) lists the primes of the form prime(n) + k! for k >= 0.

The programs for A352912, there is no canonical definition to state claims against.
-/

/-! ## A352912.P10186658928524586303

`p?[A003056(n)+A131818(n+1)!]`
-/

namespace A352912.P10186658928524586303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (Nat.factorial (A131818 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352912.P10186658928524586303

/-! ## A352912.P13458994980263049557

`p?[A117707(n)+A131818(n+1)!]`
-/

namespace A352912.P13458994980263049557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 n + (Nat.factorial (A131818 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352912.P13458994980263049557

/-! ## A352912.P8409752277641715040

`p?[or(n, A209235(3*n+1))]`
-/

namespace A352912.P8409752277641715040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A209235 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352912.P8409752277641715040

/-!
# A352913: a(n) = largest prime of the form prime(n) + k! (k >= 0).

The programs for A352913, there is no canonical definition to state claims against.
-/

/-! ## A352913.P5704929698085497181

`A352912(∑[A082470(n+1)])`
-/

namespace A352913.P5704929698085497181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352912 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352913.P5704929698085497181

/-!
# A352914: Expansion of e.g.f. exp(Sum_{k>=1} prime(k)*x^k).

The programs for A352914, there is no canonical definition to state claims against.
-/

/-! ## A352914.P17469499267488255976

`A004275(n)+A004275(A127132(n))`
-/

namespace A352914.P17469499267488255976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + A004275 (A127132 n).toNat

end

end A352914.P17469499267488255976

/-!
# A352915: Moebius transform of odd primes.

The programs for A352915, the canonical program `A352915.P417262122932191237` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352915 has offset 1).

The definition of A352915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352915.P13229815687162096754

`∑{d}[n+1, A008683(#)*A065091((n+1)/#)]`
-/

namespace A352915.P13229815687162096754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A065091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A352915.P13229815687162096754

namespace A352915

/-- `∑{d}[n+1, A008683(#)*A065091((n+1)/#)]` -/
def P13229815687162096754.Spec : Prop :=
  ∀ n, P13229815687162096754.a n = A352915 (n + 1)

end A352915

/-! ## A352915.P417262122932191237

`∑{d}[n+1, A007427(#)*A353078((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A352915

/-- `∑{d}[n+1, A007427(#)*A353078((n+1)/#)]` -/
def P417262122932191237.Spec : Prop :=
  ∀ n, P417262122932191237.a n = A352915 (n + 1)

theorem P417262122932191237.correct : P417262122932191237.Spec := by
  intro n
  simp only [A352915, Nat.add_sub_cancel]

end A352915

/-!
# A352916: a(n) = A025179(n-2) + A102839(n-4), for n >= 4, with a(0) = a(2) = 0 and a(1) = a(3) = 1.

The programs for A352916, there is no canonical definition to state claims against.
-/

/-! ## A352916.P15841744316736051917

`A257994(A007717(n))+A055113(n)`
-/

namespace A352916.P15841744316736051917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A007717 n).toNat + A055113 n

end

end A352916.P15841744316736051917

/-! ## A352916.P1815537194980819598

`A033183(A025192(n)+A001918(3*(n+1)))`
-/

namespace A352916.P1815537194980819598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A025192 n + A001918 (3 * (n + 1))).toNat

end

end A352916.P1815537194980819598

/-! ## A352916.P18073804811223157465

`A033182(A323481(n+1)*A323481(n+3))`
-/

namespace A352916.P18073804811223157465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A323481 (n + 1) * A323481 (n + 3)).toNat

end

end A352916.P18073804811223157465

/-!
# A352917: Indices k where A109812(k)/k reaches a new high point.

The programs for A352917, there is no canonical definition to state claims against.
-/

/-! ## A352917.P5314683784807791694

`A113233(A352918(n+1))`
-/

namespace A352917.P5314683784807791694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A352918 (n + 1)).toNat

end

end A352917.P5314683784807791694

/-!
# A352918: Values of A109812(k) where A109812(k)/k reaches a new high point.

The programs for A352918, there is no canonical definition to state claims against.
-/

/-! ## A352918.P5481809847302910075

`A109812(A352917(n+1))`
-/

namespace A352918.P5481809847302910075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (A352917 (n + 1)).toNat

end

end A352918.P5481809847302910075

/-! ## A352918.P3518800319472586772

`record[and(A046056(n+1), A138394(n+1))]`
-/

namespace A352918.P3518800319472586772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046056 (n + 1)) (A138394 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352918.P3518800319472586772

/-! ## A352918.P12088948038914458647

`record[and(A110141(n), A132044(n))]`
-/

namespace A352918.P12088948038914458647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110141 n) (A132044 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352918.P12088948038914458647

/-! ## A352918.P6432537212165541624

`record[A064989(A027465(comp[n²]))]`
-/

namespace A352918.P6432537212165541624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A027465 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352918.P6432537212165541624

/-! ## A352918.P2978486598984956978

`record[and(A122111(n+1), A171490(n+1))]`
-/

namespace A352918.P2978486598984956978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122111 (n + 1)) (A171490 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352918.P2978486598984956978

/-!
# A352919: Indices k where k/A109812(k) reaches a new high point.

The programs for A352919, there is no canonical definition to state claims against.
-/

/-! ## A352919.P8006619103632689919

`A113233(A352920(n+1))`
-/

namespace A352919.P8006619103632689919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A352920 (n + 1)).toNat

end

end A352919.P8006619103632689919

/-! ## A352919.P18307070347738520496

`A113234(A109812(A352920(A113234(A113232(n+1)))))`
-/

namespace A352919.P18307070347738520496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113234 (A109812 (A352920 (A113234 (A113232 (n + 1)).toNat).toNat).toNat).toNat

end

end A352919.P18307070347738520496

/-! ## A352919.P11980577251992436630

`A113233(eq[A040847(n), A110316(n)])`
-/

namespace A352919.P11980577251992436630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352919.P11980577251992436630

/-! ## A352919.P9120671785253539305

`A113233(eq[A104714(n)², A110316(n)])`
-/

namespace A352919.P9120671785253539305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352919.P9120671785253539305

/-!
# A352920: Values of A109812(k) where k/A109812(k) reaches a new high point.

The programs for A352920, there is no canonical definition to state claims against.
-/

/-! ## A352920.P8719512980249879728

`A109812(A352919(n+1))`
-/

namespace A352920.P8719512980249879728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (A352919 (n + 1)).toNat

end

end A352920.P8719512980249879728

/-! ## A352920.P3974877044738482487

`eq[A040847(n), A110316(n)]`
-/

namespace A352920.P3974877044738482487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352920.P3974877044738482487

/-! ## A352920.P12462953338095884152

`eq[A104714(n)², A110316(n)]`
-/

namespace A352920.P12462953338095884152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352920.P12462953338095884152

/-! ## A352920.P12141981979541304271

`A066182(2^A030159(n+1))`
-/

namespace A352920.P12141981979541304271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A030159 (n + 1) : ℤ))).toNat

end

end A352920.P12141981979541304271

/-!
# A352921: Let c(s) denote A109812(s). Suppose c(s) = 2^n - 1, and define m(n), p(n), r(n) by m(n) = c(s-1)/2^n, p(n) = c(s+1)/2^n, r(n) = max(m(n), p(n)); sequence gives p(n).

The programs for A352921, there is no canonical definition to state claims against.
-/

/-! ## A352921.P6047323873326649910

`char[a(n-1)+2]+1+n` with `a(0)=10, a(1)=5`
-/

namespace A352921.P6047323873326649910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 5] fun n f1 =>
  f1 (n - 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1 + n

end

end A352921.P6047323873326649910

/-! ## A352921.P14157613266665683984

`char[(n+3)^gcd(2, n)+1]+n+1`
-/

namespace A352921.P14157613266665683984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.gcd 2 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (n + 1)

end

end A352921.P14157613266665683984

/-! ## A352921.P9898681626928039622

`gcd(2, A165073(n+2))+n`
-/

namespace A352921.P9898681626928039622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A165073 (n + 2)) + n

end

end A352921.P9898681626928039622

/-! ## A352921.P4218865843061683922

`A221697(n+4)%3+n`
-/

namespace A352921.P4218865843061683922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221697 (n + 4)) 3 + (n : ℤ)

end

end A352921.P4218865843061683922

/-! ## A352921.P7611584029810359083

`A001221(lcm(3, n)+5)+n`
-/

namespace A352921.P7611584029810359083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.lcm 3 n + 5) + (n : ℤ)

end

end A352921.P7611584029810359083

/-!
# A352922: Let c(s) denote A109812(s). Suppose c(s) = 2^n - 1, and define m(n), p(n), r(n) by m(n) = c(s-1)/2^n, p(n) = c(s+1)/2^n, r(n) = max(m(n), p(n)); sequence gives m(n).

The programs for A352922, there is no canonical definition to state claims against.
-/

/-! ## A352922.P6367136999056003046

`A352923(n+1)-C(A352921(n+1), A352923(n+1))`
-/

namespace A352922.P6367136999056003046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352923 (n + 1) - (Nat.choose (A352921 (n + 1)).toNat (A352923 (n + 1)).toNat : ℤ)

end

end A352922.P6367136999056003046

/-!
# A352923: Let c(s) denote A109812(s). Suppose c(s) = 2^n - 1, and define m(n), p(n), r(n) by m(n) = c(s-1)/2^n, p(n) = c(s+1)/2^n, r(n) = max(m(n), p(n)); sequence gives r(n).

The programs for A352923, there is no canonical definition to state claims against.
-/

/-! ## A352923.P16267919360582556810

`A007305(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)+or(1, n)`
-/

namespace A352923.P16267919360582556810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))).toNat + (Nat.lor 1 n : ℤ)

end

end A352923.P16267919360582556810

/-! ## A352923.P1785500599282646172

`A008335(A036561(n))+n`
-/

namespace A352923.P1785500599282646172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008335 (A036561 n).toNat + (n : ℤ)

end

end A352923.P1785500599282646172

/-! ## A352923.P15680181656867154170

`Δ[A008624(A301291(∑[n]))]`
-/

namespace A352923.P15680181656867154170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A301291 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352923.P15680181656867154170

/-! ## A352923.P3757026249112444122

`A072628(∑[A000360(n)])+n`
-/

namespace A352923.P3757026249112444122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072628 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A352923.P3757026249112444122

/-! ## A352923.P11395763443484468147

`A334440(A046703(n+1))+n`
-/

namespace A352923.P11395763443484468147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A046703 (n + 1)).toNat + (n : ℤ)

end

end A352923.P11395763443484468147

/-!
# A352924: In the decimal expansion of 2^n, the proper substring which is the largest power of 2 is 2^a(n); a(n) = -1 if no proper substring of 2^n is a power of 2.

The programs for A352924, there is no canonical definition to state claims against.
-/

/-! ## A352924.P2483104884464427724

`A268672(A033921(n))-1`
-/

namespace A352924.P2483104884464427724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268672 (A033921 n).toNat - 1

end

end A352924.P2483104884464427724

/-! ## A352924.P5481935304702384590

`A156140(A033921(n))`
-/

namespace A352924.P5481935304702384590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 (A033921 n).toNat

end

end A352924.P5481935304702384590

/-! ## A352924.P8990865516617540220

`A277608(A033921(n)+1)-1`
-/

namespace A352924.P8990865516617540220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277608 (A033921 n + 1).toNat - 1

end

end A352924.P8990865516617540220

/-! ## A352924.P13805222595705667910

`A261283(A033921(n))-A328578(2*n+1)`
-/

namespace A352924.P13805222595705667910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 (A033921 n).toNat - A328578 (2 * n + 1)

end

end A352924.P13805222595705667910

/-! ## A352924.P5644319360667943551

`∑{e}[A033921(n)*A106856(n+1), #]-1`
-/

namespace A352924.P5644319360667943551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n * A106856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A352924.P5644319360667943551

/-!
# A352925: Primes p such that there exist primes q, r (r != 2) such that p+1 = 2^q*r.

The programs for A352925, the canonical program `A352925.P18313655271073450394` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352925 has offset 1).

The definition of A352925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352925.P18313655271073450394

`p?[A053438(A065985(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A352925

/-- `p?[A053438(A065985(n+1))]` -/
def P18313655271073450394.Spec : Prop :=
  ∀ n, P18313655271073450394.a n = A352925 (n + 1)

theorem P18313655271073450394.correct : P18313655271073450394.Spec := by
  intro n
  simp only [A352925, Nat.add_sub_cancel]

end A352925

/-! ## A352925.P12793398224135476127

`∩[A000040(n+1), A053438(A065985(n+1))]`
-/

namespace A352925.P12793398224135476127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A065985 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352925.P12793398224135476127

namespace A352925

/-- `∩[A000040(n+1), A053438(A065985(n+1))]` -/
def P12793398224135476127.Spec : Prop :=
  ∀ n, (P12793398224135476127.a n : ℤ) = A352925 (n + 1)

end A352925

/-! ## A352925.P6069423890191582786

`∩[A008578(n+1), A053438(A065985(n+1))]`
-/

namespace A352925.P6069423890191582786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A065985 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352925.P6069423890191582786

namespace A352925

/-- `∩[A008578(n+1), A053438(A065985(n+1))]` -/
def P6069423890191582786.Spec : Prop :=
  ∀ n, (P6069423890191582786.a n : ℤ) = A352925 (n + 1)

end A352925

/-! ## A352925.P4413314260582934870

`∩[A045319(n+1), A053438(A065985(n+1))]`
-/

namespace A352925.P4413314260582934870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A065985 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352925.P4413314260582934870

namespace A352925

/-- `∩[A045319(n+1), A053438(A065985(n+1))]` -/
def P4413314260582934870.Spec : Prop :=
  ∀ n, (P4413314260582934870.a n : ℤ) = A352925 (n + 1)

end A352925

/-! ## A352925.P5563518567064399485

`∩[A053438(A065985(n+1)), A086983(n+1)]`
-/

namespace A352925.P5563518567064399485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A065985 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352925.P5563518567064399485

namespace A352925

/-- `∩[A053438(A065985(n+1)), A086983(n+1)]` -/
def P5563518567064399485.Spec : Prop :=
  ∀ n, (P5563518567064399485.a n : ℤ) = A352925 (n + 1)

end A352925

/-!
# A352926: Primes p such that there exist primes q, r (r != 2) such that p-1 = 2^q*r.

The programs for A352926, there is no canonical definition to state claims against.
-/

/-! ## A352926.P2978126365099625544

`p?[or(A085357(n), A329142(n+1))]`
-/

namespace A352926.P2978126365099625544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085357 n) (A329142 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352926.P2978126365099625544

/-! ## A352926.P6394124755140675637

`p?[A329142(n+2)+A085357(n+1)]`
-/

namespace A352926.P6394124755140675637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329142 (n + 2) + A085357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352926.P6394124755140675637

/-!
# A352927: Numbers whose digits are nonzero, consecutive, and all increasing or all decreasing.

The programs for A352927, there is no canonical definition to state claims against.
-/

/-! ## A352927.P6301247225909257113

`∩[A032981(n+1), A288528(n+1)]`
-/

namespace A352927.P6301247225909257113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352927.P6301247225909257113

/-! ## A352927.P10585616297809742597

`∩[A033075(n+1), A288528(n+1)]`
-/

namespace A352927.P10585616297809742597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352927.P10585616297809742597

/-! ## A352927.P6656009611049700295

`∩[A288528(n+1), A376425(n+1)]`
-/

namespace A352927.P6656009611049700295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352927.P6656009611049700295

/-! ## A352927.P16224259337506211283

`∪[A004086(A138141(n+1)), A138141(n+2)]`
-/

namespace A352927.P16224259337506211283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A138141 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138141 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A352927.P16224259337506211283

/-! ## A352927.P17462366897610632500

`∪[A004186(A138141(n+1)), A138141(n+5)]`
-/

namespace A352927.P17462366897610632500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A138141 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138141 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A352927.P17462366897610632500

/-!
# A352929: Indices of primes in A093714.

The programs for A352929, there is no canonical definition to state claims against.
-/

/-! ## A352929.P12647064698832187038

`A093715(p?[xor(1, n)])`
-/

namespace A352929.P12647064698832187038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093715 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A352929.P12647064698832187038

/-! ## A352929.P4028353503781004790

`record[A093715(A006530(n+3))]`
-/

namespace A352929.P4028353503781004790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093715 (A006530 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352929.P4028353503781004790

/-! ## A352929.P7945742579957656825

`record[A093715(A020639(n+3))]`
-/

namespace A352929.P7945742579957656825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093715 (A020639 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352929.P7945742579957656825

/-! ## A352929.P1513592820556702473

`eq[1, A001222(A093714(n+1))]+1`
-/

namespace A352929.P1513592820556702473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A093714 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352929.P1513592820556702473

/-! ## A352929.P2467332318690855054

`A093715(A000040(round(cos(4)^n)+n+1))`
-/

namespace A352929.P2467332318690855054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093715 (A000040 (SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n) + (n + 1 : ℤ)).toNat).toNat

end

end A352929.P2467332318690855054

/-!
# A352930: First differences of A093714.

The programs for A352930, there is no canonical definition to state claims against.
-/

/-! ## A352930.P1893430010686761355

`Δ[A093714(n+1)]`
-/

namespace A352930.P1893430010686761355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352930.P1893430010686761355

/-! ## A352930.P10752573029645091151

`Δ[A352931(n+1)]+1`
-/

namespace A352930.P10752573029645091151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A352930.P10752573029645091151

/-! ## A352930.P10809622730549858262

`A093714(n+2)-A093714(n+1)`
-/

namespace A352930.P10809622730549858262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093714 (n + 2) - A093714 (n + 1)

end

end A352930.P10809622730549858262

/-! ## A352930.P12895823156554780657

`A352931(n+2)+1-A352931(n+1)`
-/

namespace A352930.P12895823156554780657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352931 (n + 2) + 1 - A352931 (n + 1)

end

end A352930.P12895823156554780657

/-! ## A352930.P11557811402438828793

`A093714(A020725(n+1))+A001478(A093714(n+1))`
-/

namespace A352930.P11557811402438828793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093714 (A020725 (n + 1)).toNat + A001478 (A093714 (n + 1)).toNat

end

end A352930.P11557811402438828793

/-!
# A352931: a(n) = A093714(n) - n.

The programs for A352931, there is no canonical definition to state claims against.
-/

/-! ## A352931.P8251909526830579696

`A093714(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352931.P8251909526830579696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093714 (n + 1) - (n + 1 : ℤ)

end

end A352931.P8251909526830579696

/-! ## A352931.P3550910997573478725

`A352930(n)+a(n-1)-1` with `a(0)=0`
-/

namespace A352931.P3550910997573478725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A352930 n + (a (n - 1) - 1)

end

end A352931.P3550910997573478725

/-! ## A352931.P8796983616148123999

`∑[A352930(abs(1-n)+1)]+1-n`
-/

namespace A352931.P8796983616148123999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352930 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - (n : ℤ)

end

end A352931.P8796983616148123999

/-! ## A352931.P8294474296897396098

`∑[A352930(A028310(n))]-(n+2)`
-/

namespace A352931.P8294474296897396098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352930 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)

end

end A352931.P8294474296897396098

/-! ## A352931.P3674406126648670796

`A001478(n+1)+A093714(n+1)`
-/

namespace A352931.P3674406126648670796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A093714 (n + 1)

end

end A352931.P3674406126648670796

/-! ## A352931.P1821285772453984147

`∑[A352930(A000007(n)+n)]-(n+2)`
-/

namespace A352931.P1821285772453984147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352930 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)

end

end A352931.P1821285772453984147

/-! ## A352931.P10191705663975527826

`∑[A352930(n+1)]-(A352930(n+1)+n)`
-/

namespace A352931.P10191705663975527826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A352930 (n + 1) + (n : ℤ))

end

end A352931.P10191705663975527826

/-! ## A352931.P9645051393163023394

`A353706(A093714(n+1))`
-/

namespace A352931.P9645051393163023394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353706 (A093714 (n + 1)).toNat

end

end A352931.P9645051393163023394

/-! ## A352931.P12766631924452644871

`∑[A352930(A065033(2*n))]-(n+2)`
-/

namespace A352931.P12766631924452644871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352930 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)

end

end A352931.P12766631924452644871

/-!
# A352932: Where the parity of A352931 changes.

The programs for A352932, there is no canonical definition to state claims against.
-/

/-! ## A352932.P13411610924156642274

`A351498(A028310(n))-(floor(acot(n))-1)`
-/

namespace A352932.P13411610924156642274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351498 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A352932.P13411610924156642274

/-! ## A352932.P2240097909303021600

`A351498(A028310(n))+A057427(n)`
-/

namespace A352932.P2240097909303021600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351498 (A028310 n).toNat + A057427 n

end

end A352932.P2240097909303021600

/-! ## A352932.P6112195242478843137

`A351498(A028310(n))-A057428(n)`
-/

namespace A352932.P6112195242478843137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351498 (A028310 n).toNat - A057428 n

end

end A352932.P6112195242478843137

/-! ## A352932.P12299853258771217540

`A351498(A065033(2*n))-A057428(n)`
-/

namespace A352932.P12299853258771217540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351498 (A065033 (2 * n)).toNat - A057428 n

end

end A352932.P12299853258771217540

/-!
# A352933: First differences of A121216.

The programs for A352933, there is no canonical definition to state claims against.
-/

/-! ## A352933.P16506078756147457910

`Δ[A121216(n+1)]`
-/

namespace A352933.P16506078756147457910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352933.P16506078756147457910

/-! ## A352933.P5422768333515835222

`Δ[A352935(n+1)]+1`
-/

namespace A352933.P5422768333515835222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A352933.P5422768333515835222

/-! ## A352933.P4230662870566154975

`A121216(n+2)-A121216(n+1)`
-/

namespace A352933.P4230662870566154975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (n + 2) - A121216 (n + 1)

end

end A352933.P4230662870566154975

/-! ## A352933.P51851449260775489

`A352935(n+2)+1-A352935(n+1)`
-/

namespace A352933.P51851449260775489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352935 (n + 2) + 1 - A352935 (n + 1)

end

end A352933.P51851449260775489

/-! ## A352933.P12793436409822862544

`A121216(A020725(n+1))+A001478(A121216(n+1))`
-/

namespace A352933.P12793436409822862544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (A020725 (n + 1)).toNat + A001478 (A121216 (n + 1)).toNat

end

end A352933.P12793436409822862544

/-!
# A352934: Fixed points in A121216.

The programs for A352934, there is no canonical definition to state claims against.
-/

/-! ## A352934.P7484475840593920557

`eq[0, A352935(n+1)]+1`
-/

namespace A352934.P7484475840593920557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352934.P7484475840593920557

/-! ## A352934.P5929735679891366542

`record[gcd(n+1, A121216(n+1))]`
-/

namespace A352934.P5929735679891366542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A121216 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352934.P5929735679891366542

/-! ## A352934.P16838158752632277340

`eq[n, A225047(A028310(n))]`
-/

namespace A352934.P16838158752632277340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352934.P16838158752632277340

/-! ## A352934.P5882284211430177738

`eq[A000007(n), A352935(A028310(n))]`
-/

namespace A352934.P5882284211430177738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352935 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352934.P5882284211430177738

/-! ## A352934.P367722612074422843

`eq[A000038(n), A352935(A028310(n))]`
-/

namespace A352934.P367722612074422843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352935 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352934.P367722612074422843

/-! ## A352934.P5362749955064716771

`eq[A225047(n+1), A225047(A225047(n+1))]+1`
-/

namespace A352934.P5362749955064716771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A225047 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A352934.P5362749955064716771

/-!
# A352935: a(n) = A121216(n) - n.

The programs for A352935, there is no canonical definition to state claims against.
-/

/-! ## A352935.P7028356519105492468

`A121216(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352935.P7028356519105492468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (n + 1) - (n + 1 : ℤ)

end

end A352935.P7028356519105492468

/-! ## A352935.P533065902276552328

`∑[A352933(A028310(n))-1]`
-/

namespace A352935.P533065902276552328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352933 (A028310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352935.P533065902276552328

/-! ## A352935.P403172192410962984

`A001478(n+1)+A121216(n+1)`
-/

namespace A352935.P403172192410962984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A121216 (n + 1)

end

end A352935.P403172192410962984

/-! ## A352935.P17586411547905455598

`∑[A352933(n+1)]-(A352933(n+1)+n)`
-/

namespace A352935.P17586411547905455598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A352933 (n + 1) + (n : ℤ))

end

end A352935.P17586411547905455598

/-! ## A352935.P8516685066306625631

`A001478(n+1)+∑[A352933(A028310(n))]`
-/

namespace A352935.P8516685066306625631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352933 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352935.P8516685066306625631

/-! ## A352935.P9105104305610967820

`A353707(A121216(n+1))`
-/

namespace A352935.P9105104305610967820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353707 (A121216 (n + 1)).toNat

end

end A352935.P9105104305610967820

/-! ## A352935.P14593527842363930650

`∑[A352933(A233583(n+1))-1]`
-/

namespace A352935.P14593527842363930650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352933 (A233583 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352935.P14593527842363930650

/-!
# A352936: Records in A121216.

The programs for A352936, there is no canonical definition to state claims against.
-/

/-! ## A352936.P9841228326031856842

`record[A121216(n+1)]`
-/

namespace A352936.P9841228326031856842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352936.P9841228326031856842

/-! ## A352936.P10784106366246989369

`record[A352935(n+1)+1+n]`
-/

namespace A352936.P10784106366246989369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352935 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352936.P10784106366246989369

/-! ## A352936.P17749518180682949930

`record[A352933(n)+a(n-1)]` with `a(0)=1`
-/

namespace A352936.P17749518180682949930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A352933 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352936.P17749518180682949930

/-! ## A352936.P7210602106979745418

`A121216(A352937(n+1))`
-/

namespace A352936.P7210602106979745418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (A352937 (n + 1)).toNat

end

end A352936.P7210602106979745418

/-! ## A352936.P13489828494674942101

`record[∑[A352933(A028310(n))]]`
-/

namespace A352936.P13489828494674942101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352933 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352936.P13489828494674942101

/-!
# A352937: Indices of records in A121216.

The programs for A352937, there is no canonical definition to state claims against.
-/

/-! ## A352937.P9414890434612676096

`A225047(A352936(n+1))`
-/

namespace A352937.P9414890434612676096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A352936 (n + 1)).toNat

end

end A352937.P9414890434612676096

/-! ## A352937.P1858283859864834184

`A225047(record[A121216(n+1)])`
-/

namespace A352937.P1858283859864834184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352937.P1858283859864834184

/-! ## A352937.P14680951101661718036

`A225047(record[A352935(n+1)+1+n])`
-/

namespace A352937.P14680951101661718036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352935 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352937.P14680951101661718036

/-! ## A352937.P12858415177872717046

`A225047(record[A352933(n)+a(n-1)])` with `a(0)=1`
-/

namespace A352937.P12858415177872717046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A352933 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352937.P12858415177872717046

/-!
# A352938: Irregular table T(n, k), n >= 0, k = 1..A080100(n), read by rows: the n-th row contains in ascending order the distinct nonnegative integers k <= n that have no common 1-bit with n.

The programs for A352938, there is no canonical definition to state claims against.
-/

/-! ## A352938.P5475384439642079612

`A343230(A368239(n))`
-/

namespace A352938.P5475384439642079612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343230 (A368239 n).toNat

end

end A352938.P5475384439642079612

/-! ## A352938.P12237287786129444597

`A343230(A380181(n))`
-/

namespace A352938.P12237287786129444597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343230 (A380181 n).toNat

end

end A352938.P12237287786129444597

/-! ## A352938.P17476490364982237778

`A002262(eq[0, A080099(n)])`
-/

namespace A352938.P17476490364982237778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352938.P17476490364982237778

/-! ## A352938.P11830025025201507553

`A002262(eq[1, A089885(n)])`
-/

namespace A352938.P11830025025201507553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352938.P11830025025201507553

/-! ## A352938.P8366459289933149456

`A002262(lt[A080099(n), 1])`
-/

namespace A352938.P8366459289933149456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A352938.P8366459289933149456

/-! ## A352938.P9166858997753346598

`A002262(record[n-A080099(n)])`
-/

namespace A352938.P9166858997753346598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A080099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352938.P9166858997753346598

/-! ## A352938.P9463423444840322482

`A002262(eq[A051162(n), A051933(n)])`
-/

namespace A352938.P9463423444840322482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352938.P9463423444840322482

/-! ## A352938.P3150809505891176165

`A002262(eq[A051933(n), A080098(n)])`
-/

namespace A352938.P3150809505891176165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352938.P3150809505891176165

/-!
# A352939: First differences of the records in the number of iterations of the 3x+1 sequences required to reach a power of 2.

The programs for A352939, there is no canonical definition to state claims against.
-/

/-! ## A352939.P7670332137853352914

`Δ[A352907(n+1)]`
-/

namespace A352939.P7670332137853352914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352939.P7670332137853352914

/-! ## A352939.P2961443400258452168

`A288493(abs(round(6/(53*n+2))-n)+2)`
-/

namespace A352939.P2961443400258452168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288493 (|SequenceMachineLib.roundAway (6 / (53 * n + 2 : ℚ)) - (n : ℤ)| + 2).toNat

end

end A352939.P2961443400258452168

/-! ## A352939.P13689952052916594095

`Δ[record[A352907(A134478(n))]]`
-/

namespace A352939.P13689952052916594095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352907 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352939.P13689952052916594095

/-! ## A352939.P1425241018718943333

`Δ[record[A352907(A141256(n))]]`
-/

namespace A352939.P1425241018718943333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352907 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352939.P1425241018718943333

/-! ## A352939.P14604069122201923158

`Δ[record[A352907(A286626(n))]]`
-/

namespace A352939.P14604069122201923158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352907 (A286626 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352939.P14604069122201923158

/-! ## A352939.P4517450614945462569

`abs(Δ[A352907(A008619(2*n))])`
-/

namespace A352939.P4517450614945462569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352907 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A352939.P4517450614945462569

/-! ## A352939.P18273565419806586994

`A288493(n+2)-A169585(n+1)`
-/

namespace A352939.P18273565419806586994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288493 (n + 2) - A169585 (n + 1)

end

end A352939.P18273565419806586994

/-! ## A352939.P13147124760074705824

`A352907(n+2)-A352907(n+1)`
-/

namespace A352939.P13147124760074705824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352907 (n + 2) - A352907 (n + 1)

end

end A352939.P13147124760074705824

/-! ## A352939.P4198435056043779164

`Δ[A006878(n+2)-A040011(2*n)]`
-/

namespace A352939.P4198435056043779164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006878 (n + 2) - A040011 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352939.P4198435056043779164

/-! ## A352939.P16177598158666485156

`A288493(n+2)/(A169585(2*n)+1)`
-/

namespace A352939.P16177598158666485156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288493 (n + 2) : ℚ) / (A169585 (2 * n) + 1 : ℚ)

end

end A352939.P16177598158666485156

/-! ## A352939.P2873214517409570871

`Δ[A006878(n+2)-A130130(n+1)²]`
-/

namespace A352939.P2873214517409570871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006878 (n + 2) - A130130 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352939.P2873214517409570871

/-!
# A352940: The largest positive integer k such that binomial(k+1,2) <= binomial(n,2)^2.

The programs for A352940, there is no canonical definition to state claims against.
-/

/-! ## A352940.P2080800169865654867

`round(sqrt(2*C(n+3, 2)²+1))-1`
-/

namespace A352940.P2080800169865654867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * Nat.choose (n + 3) 2 ^ 2 + 1 : ℝ)) - 1

end

end A352940.P2080800169865654867

/-! ## A352940.P17679658599689458187

`round(sqrt(A242983(n+3)))`
-/

namespace A352940.P17679658599689458187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A242983 (n + 3) : ℝ))

end

end A352940.P17679658599689458187

/-! ## A352940.P11496483213798912572

`round(sqrt(A096376(∑[n+2])))`
-/

namespace A352940.P11496483213798912572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A096376 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A352940.P11496483213798912572

/-! ## A352940.P12857069064020212372

`A214857(C(n+3, 2))-1`
-/

namespace A352940.P12857069064020212372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (Nat.choose (n + 3) 2) - 1

end

end A352940.P12857069064020212372

/-! ## A352940.P18160506863750279346

`A214857(∑[n+2]+1)-1`
-/

namespace A352940.P18160506863750279346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A352940.P18160506863750279346

/-! ## A352940.P16577105863228856582

`round(sqrt(∑[A295622(2*(n+3))]))`
-/

namespace A352940.P16577105863228856582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295622 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A352940.P16577105863228856582

/-! ## A352940.P10022409541545375888

`round(sqrt(A133263((n+2)²+n)))`
-/

namespace A352940.P10022409541545375888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A133263 ((n + 2) ^ 2 + n) : ℝ))

end

end A352940.P10022409541545375888

/-! ## A352940.P11982902627767746691

`round(sqrt(Δ[A171005(n+3)]/n!))`
-/

namespace A352940.P11982902627767746691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171005 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) - f1 n : ℚ) / (Nat.factorial n : ℚ) : ℝ))

end

end A352940.P11982902627767746691

/-! ## A352940.P10535764072128814443

`round(sqrt(A084849(∑[n+2])+n+1))`
-/

namespace A352940.P10535764072128814443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A084849 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) + 1 : ℝ))

end

end A352940.P10535764072128814443

/-! ## A352940.P8929777379432103245

`A186220(A161680(n+3))-A161680(n+3)`
-/

namespace A352940.P8929777379432103245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186220 (A161680 (n + 3)).toNat - A161680 (n + 3)

end

end A352940.P8929777379432103245

/-!
# A352942: Let p = prime(n); a(n) = number of primes q with same number of binary digits as p that can be obtained from p by changing one binary digit.

The programs for A352942, there is no canonical definition to state claims against.
-/

/-! ## A352942.P3236340837621694542

`A081603(A226627(n+1)+A001383(n))`
-/

namespace A352942.P3236340837621694542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A226627 (n + 1) + A001383 n).toNat

end

end A352942.P3236340837621694542

/-! ## A352942.P1288484215992149825

`A328616(A328601(2*n+3)+A049627(n))`
-/

namespace A352942.P1288484215992149825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328616 (A328601 (2 * n + 3) + A049627 n).toNat

end

end A352942.P1288484215992149825

/-! ## A352942.P13174484989301079263

`A048825(A038503(n)+2)`
-/

namespace A352942.P13174484989301079263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048825 (A038503 n + 2).toNat

end

end A352942.P13174484989301079263

/-! ## A352942.P10729155745872657697

`and(A001221(A048573(n)), A107292(n))`
-/

namespace A352942.P10729155745872657697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A048573 n).toNat) (A107292 n)

end

end A352942.P10729155745872657697

/-! ## A352942.P665156888676083206

`A037908(A298026(2*n+3)+A066324(n+1))`
-/

namespace A352942.P665156888676083206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037908 (A298026 (2 * n + 3) + A066324 (n + 1)).toNat

end

end A352942.P665156888676083206

/-!
# A352944: a(n) = Sum_{k=0..floor(n/2)} (n-2*k)^k.

The programs for A352944, there is no canonical definition to state claims against.
-/

/-! ## A352944.P6764115319751108425

`A357861(A274376(n+1))`
-/

namespace A352944.P6764115319751108425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357861 (A274376 (n + 1)).toNat

end

end A352944.P6764115319751108425

/-! ## A352944.P10614961703071191806

`A001462(floor(sqrt(A290280(n))))`
-/

namespace A352944.P10614961703071191806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.sqrt (A290280 n)).toNat

end

end A352944.P10614961703071191806

/-! ## A352944.P3990760525572114744

`A357861(floor(sqrt(A055775(n))))`
-/

namespace A352944.P3990760525572114744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357861 (Int.sqrt (A055775 n)).toNat

end

end A352944.P3990760525572114744

/-! ## A352944.P16208487834232273387

`A001462(round(sqrt(A290280(n))))`
-/

namespace A352944.P16208487834232273387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.roundAway (Real.sqrt (A290280 n : ℝ))).toNat

end

end A352944.P16208487834232273387

/-! ## A352944.P17645925683702760004

`A111651(A205544(n))`
-/

namespace A352944.P17645925683702760004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A205544 n).toNat

end

end A352944.P17645925683702760004

/-!
# A352945: a(n) = Sum_{k=0..floor(n/3)} k^(n-3*k).

The programs for A352945, there is no canonical definition to state claims against.
-/

/-! ## A352945.P2997482792652776175

`A392462(A078012(n)+1)`
-/

namespace A352945.P2997482792652776175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392462 (A078012 n + 1).toNat

end

end A352945.P2997482792652776175

/-! ## A352945.P4955935991131063074

`A008616(A018442(n+1)-A065033(n))`
-/

namespace A352945.P4955935991131063074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A018442 (n + 1) - A065033 n).toNat

end

end A352945.P4955935991131063074

/-!
# A352946: a(n) = Sum_{k=0..floor(n/3)} (n-3*k)^k.

The programs for A352946, there is no canonical definition to state claims against.
-/

/-! ## A352946.P6683179686120746229

`A132016(A343304(n))`
-/

namespace A352946.P6683179686120746229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (A343304 n).toNat

end

end A352946.P6683179686120746229

/-! ## A352946.P14415714950675740637

`A000194(floor(sqrt(A079391(n+1))))`
-/

namespace A352946.P14415714950675740637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.sqrt (A079391 (n + 1))).toNat

end

end A352946.P14415714950675740637

/-! ## A352946.P8170852482843324452

`A000194(round(sqrt(A079391(n+1))))`
-/

namespace A352946.P8170852482843324452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway (Real.sqrt (A079391 (n + 1) : ℝ))).toNat

end

end A352946.P8170852482843324452

/-! ## A352946.P5065208758736771497

`A000196(A300913(n)+A059226(n))`
-/

namespace A352946.P5065208758736771497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A300913 n + A059226 n).toNat

end

end A352946.P5065208758736771497

/-! ## A352946.P9278538997513323612

`A085735(A346075(n))`
-/

namespace A352946.P9278538997513323612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A346075 n).toNat

end

end A352946.P9278538997513323612

/-!
# A352949: Composite numbers of the form 2*k^2 + 29.

The programs for A352949, there is no canonical definition to state claims against.
-/

/-! ## A352949.P1829578137468635801

`2*A007642(n+1)²+29`
-/

namespace A352949.P1829578137468635801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007642 (n + 1) ^ 2 + 29

end

end A352949.P1829578137468635801

/-! ## A352949.P9122602701033562340

`A056220(A007642(n+1))+30`
-/

namespace A352949.P9122602701033562340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A007642 (n + 1)).toNat + 30

end

end A352949.P9122602701033562340

/-! ## A352949.P5605753561218856822

`A056220(comp[A352800(n+1)])+30`
-/

namespace A352949.P5605753561218856822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352800 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 30

end

end A352949.P5605753561218856822

/-! ## A352949.P2669187491110592346

`A056220(lt[1, A001222(2*n²+29)])+30`
-/

namespace A352949.P2669187491110592346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 30

end

end A352949.P2669187491110592346

/-! ## A352949.P10514031369119241424

`A056220(lt[A020639(2*n²+29), 2*n])+30`
-/

namespace A352949.P10514031369119241424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n ^ 2 + 29)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 30

end

end A352949.P10514031369119241424

/-!
# A352952: a(1) = 3; a(2) = 5; a(n+1) = a(n) + b(n), where b(n) = max {a(n-1)+-1, a(n-2)+-1, a(n-3)+-1, ..., a(1)+-1} such that a(n) + b(n) is a prime.

The programs for A352952, there is no canonical definition to state claims against.
-/

/-! ## A352952.P13760467600210826977

`p?[A175767(∑[A299150(n+1)])]`
-/

namespace A352952.P13760467600210826977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175767 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352952.P13760467600210826977

/-! ## A352952.P15680451296621789897

`p?[or(A008864(n+1), A194673(n))]`
-/

namespace A352952.P15680451296621789897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008864 (n + 1)) (A194673 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352952.P15680451296621789897

/-! ## A352952.P41271278672161623

`∩[A067829(n+1), A294748(n+1)]`
-/

namespace A352952.P41271278672161623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352952.P41271278672161623

/-! ## A352952.P16688308637683977397

`∩[A206023(n+1), A294748(n+1)]`
-/

namespace A352952.P16688308637683977397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352952.P16688308637683977397

/-! ## A352952.P13148909096536026992

`A001097(lt[A046034(n+1), 2*∑{d}[n+1, #]])`
-/

namespace A352952.P13148909096536026992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A352952.P13148909096536026992

/-!
# A352954: Primes p such that (p^2+3*p+1)/5 is prime.

The programs for A352954, the canonical program `A352954.P6065376693423034420` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352954 has offset 1).

The definition of A352954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352954.P6065376693423034420

`p?[5*A090563(n+1)+1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A352954

/-- `p?[5*A090563(n+1)+1]` -/
def P6065376693423034420.Spec : Prop :=
  ∀ n, P6065376693423034420.a n = A352954 (n + 1)

theorem P6065376693423034420.correct : P6065376693423034420.Spec := by
  intro n
  simp only [A352954, Nat.add_sub_cancel]

end A352954

/-! ## A352954.P1429467926065069031

`∩[5*A090563(n+1)+1, A000040(n+2)]`
-/

namespace A352954.P1429467926065069031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A090563 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352954.P1429467926065069031

namespace A352954

/-- `∩[5*A090563(n+1)+1, A000040(n+2)]` -/
def P1429467926065069031.Spec : Prop :=
  ∀ n, (P1429467926065069031.a n : ℤ) = A352954 (n + 1)

end A352954

/-! ## A352954.P4007632622101463814

`p?[A016861(A090563(n+1))]`
-/

namespace A352954.P4007632622101463814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A090563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352954.P4007632622101463814

namespace A352954

/-- `p?[A016861(A090563(n+1))]` -/
def P4007632622101463814.Spec : Prop :=
  ∀ n, P4007632622101463814.a n = A352954 (n + 1)

end A352954

/-! ## A352954.P8337093795053460105

`∩[A000040(n+1), A016861(A090563(n+1))]`
-/

namespace A352954.P8337093795053460105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A090563 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352954.P8337093795053460105

namespace A352954

/-- `∩[A000040(n+1), A016861(A090563(n+1))]` -/
def P8337093795053460105.Spec : Prop :=
  ∀ n, (P8337093795053460105.a n : ℤ) = A352954 (n + 1)

end A352954

/-! ## A352954.P10682858548350231161

`∩[A065091(n+1), A016861(A090563(n+1))]`
-/

namespace A352954.P10682858548350231161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A090563 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352954.P10682858548350231161

namespace A352954

/-- `∩[A065091(n+1), A016861(A090563(n+1))]` -/
def P10682858548350231161.Spec : Prop :=
  ∀ n, (P10682858548350231161.a n : ℤ) = A352954 (n + 1)

end A352954

/-! ## A352954.P7163960254726506983

`∩[A006093(n+1)+1, A016861(A090563(n+1))]`
-/

namespace A352954.P7163960254726506983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A090563 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352954.P7163960254726506983

namespace A352954

/-- `∩[A006093(n+1)+1, A016861(A090563(n+1))]` -/
def P7163960254726506983.Spec : Prop :=
  ∀ n, (P7163960254726506983.a n : ℤ) = A352954 (n + 1)

end A352954

/-! ## A352954.P2000620382939723870

`∩[A008864(n+1)-1, A016861(A090563(n+1))]`
-/

namespace A352954.P2000620382939723870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A090563 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352954.P2000620382939723870

namespace A352954

/-- `∩[A008864(n+1)-1, A016861(A090563(n+1))]` -/
def P2000620382939723870.Spec : Prop :=
  ∀ n, (P2000620382939723870.a n : ℤ) = A352954 (n + 1)

end A352954

/-! ## A352954.P9021303343904470142

`∩[A040976(n+1)+2, A016861(A090563(n+1))]`
-/

namespace A352954.P9021303343904470142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A090563 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352954.P9021303343904470142

namespace A352954

/-- `∩[A040976(n+1)+2, A016861(A090563(n+1))]` -/
def P9021303343904470142.Spec : Prop :=
  ∀ n, (P9021303343904470142.a n : ℤ) = A352954 (n + 1)

end A352954

/-!
# A352956: For n>1, a(n) = a(n - a(n-1)) + a(n-2) starting with a(0) = a(1) = 1.

The programs for A352956, there is no canonical definition to state claims against.
-/

/-! ## A352956.P15209409180925340665

`a(n-2)+a(∑[n]%n)` with `a(0)=1, a(1)=1`
-/

namespace A352956.P15209409180925340665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a ((∑ j ∈ Finset.range (n + 1), f1 j) % n)

end

end A352956.P15209409180925340665

/-! ## A352956.P17374579338885620245

`a(C(n, 2)%n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A352956.P17374579338885620245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (Nat.choose n 2 % n) + a (n - 2)

end

end A352956.P17374579338885620245

/-! ## A352956.P14323361071950183911

`a(n-2)+a(gcd(n, floor(n/2)))` with `a(0)=1, a(1)=1`
-/

namespace A352956.P14323361071950183911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A352956.P14323361071950183911

/-! ## A352956.P1202626980291662715

`a(n-lcm(2, n)/2)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A352956.P1202626980291662715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2)).toNat + a (n - 2)

end

end A352956.P1202626980291662715

/-! ## A352956.P3402426696690356002

`a(a(gcd(n-1, n%2)))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A352956.P3402426696690356002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a (Int.gcd ((n : ℤ) - 1) ((n % 2 : ℕ) : ℤ))) + a (n - 2)

end

end A352956.P3402426696690356002

/-! ## A352956.P3964926649438756889

`a((n/2)^((n+1)%2))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A352956.P3964926649438756889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℚ) / 2) ^ ((n + 1) % 2))).toNat + a (n - 2)

end

end A352956.P3964926649438756889

/-! ## A352956.P16026263111713810481

`a(a(n-1)*char[2*n])+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A352956.P16026263111713810481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a (n - 1) * (if ∃ j, f1 j = n then 1 else 0)) + a (n - 2)

end

end A352956.P16026263111713810481

/-! ## A352956.P3289107288672447669

`a(n-2)+a(A142150(n))` with `a(0)=1, a(1)=1`
-/

namespace A352956.P3289107288672447669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (A142150 n).toNat

end

end A352956.P3289107288672447669

/-! ## A352956.P9491889724488031035

`a(n-2)+a(A166514(n))` with `a(0)=1, a(1)=1`
-/

namespace A352956.P9491889724488031035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (A166514 n).toNat

end

end A352956.P9491889724488031035

/-! ## A352956.P5116867064206946391

`a(n-2)+a(n-A026741(n))` with `a(0)=1, a(1)=1`
-/

namespace A352956.P5116867064206946391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a ((n : ℤ) - A026741 n).toNat

end

end A352956.P5116867064206946391

/-!
# A352957: Triangle read by rows: Row n is the lexicographically earliest strictly monotonic completely additive sequence of length n.

The programs for A352957, there is no canonical definition to state claims against.
-/

/-! ## A352957.P8289643454137145973

`A387173(A364509(n))`
-/

namespace A352957.P8289643454137145973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387173 (A364509 n).toNat

end

end A352957.P8289643454137145973

/-! ## A352957.P17288339769948661085

`A238158(n+1)+A162782(A228683(n+1))`
-/

namespace A352957.P17288339769948661085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238158 (n + 1) + A162782 (A228683 (n + 1)).toNat

end

end A352957.P17288339769948661085

/-! ## A352957.P5799599119269991639

`A219463(A024462(3*n+2))+A002262(n)`
-/

namespace A352957.P5799599119269991639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 (A024462 (3 * n + 2)).toNat + A002262 n

end

end A352957.P5799599119269991639

/-! ## A352957.P14283769551690213949

`A002260(n+1)-A000161(A242527(n+1))`
-/

namespace A352957.P14283769551690213949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A000161 (A242527 (n + 1)).toNat

end

end A352957.P14283769551690213949

/-! ## A352957.P1891197856565583918

`A072750(or(A000120(2*n+3), A088652(n+1)))`
-/

namespace A352957.P1891197856565583918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072750 (Int.lor (A000120 (2 * n + 3)) (A088652 (n + 1))).toNat

end

end A352957.P1891197856565583918

/-!
# A352961: a(0) = 0, a(1) = 1, and for any n > 1, a(n) = a(n-2^e) + a(n-2^(e+1)) with e as large as possible (e = A070939(n) - 2).

The programs for A352961, there is no canonical definition to state claims against.
-/

/-! ## A352961.P12894462078484742739

`A000196(A342635(n)%A093107(3*n+2))`
-/

namespace A352961.P12894462078484742739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A342635 n) (A093107 (3 * n + 2))).toNat

end

end A352961.P12894462078484742739

/-! ## A352961.P5185556683263939473

`A116529(comp[2*(n+1)])%A147924(n+1)`
-/

namespace A352961.P5185556683263939473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116529 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A147924 (n + 1))

end

end A352961.P5185556683263939473

/-! ## A352961.P15749038650260691081

`A116529(A004273(n))%A293060(n)`
-/

namespace A352961.P15749038650260691081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116529 (A004273 n).toNat) (A293060 n)

end

end A352961.P15749038650260691081

/-! ## A352961.P5156167785714252600

`A116529(A004273(n))+A008683(A000079(n+1))`
-/

namespace A352961.P5156167785714252600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116529 (A004273 n).toNat + A008683 (A000079 (n + 1)).toNat

end

end A352961.P5156167785714252600

/-! ## A352961.P7642785951931410062

`A257564(A342635(n))`
-/

namespace A352961.P7642785951931410062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A342635 n).toNat

end

end A352961.P7642785951931410062

/-!
# A352963: What remains from the sequence of positive integers (A000027) when all prime sums of two successive digits are erased.

The programs for A352963, there is no canonical definition to state claims against.
-/

/-! ## A352963.P11202051323222816471

`lt[A342757(2*n+5), Δ[A342773(n+1)]]`
-/

namespace A352963.P11202051323222816471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342757 (2 * n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352963.P11202051323222816471

/-! ## A352963.P9109301594316997584

`A352486(2*n+5)-A065828(A077241(n))`
-/

namespace A352963.P9109301594316997584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352486 (2 * n + 5) - A065828 (A077241 n).toNat

end

end A352963.P9109301594316997584

/-! ## A352963.P16883492309709812211

`A288464(n+4)-A288478(A342335(3*n+4))`
-/

namespace A352963.P16883492309709812211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 4) - A288478 (A342335 (3 * n + 4)).toNat

end

end A352963.P16883492309709812211

/-!
# A352964: a(0) = 0, a(1) = 1, and for any n > 1, a(n) = a(n-F(e)) + a(n-F(e+1)) with e as large as possible (where F(k) is the k-th Fibonacci number).

The programs for A352964, there is no canonical definition to state claims against.
-/

/-! ## A352964.P7780708284058186073

`A001222(A278656(n+1)+A214449(n+1))`
-/

namespace A352964.P7780708284058186073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278656 (n + 1) + A214449 (n + 1)).toNat

end

end A352964.P7780708284058186073

/-! ## A352964.P6626531998137190181

`A124764(or(A261612(3*n+2), A280681(n+1)))`
-/

namespace A352964.P6626531998137190181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (Int.lor (A261612 (3 * n + 2)) (A280681 (n + 1))).toNat

end

end A352964.P6626531998137190181

/-! ## A352964.P2320632914143134381

`A069010(A003714(n)²*A256999(n))`
-/

namespace A352964.P2320632914143134381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A003714 n ^ 2 * A256999 n).toNat

end

end A352964.P2320632914143134381

/-! ## A352964.P6174046783924817911

`A069010(A003714(n)*A256999(n)*A003714(n))`
-/

namespace A352964.P6174046783924817911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A003714 n * A256999 n * A003714 n).toNat

end

end A352964.P6174046783924817911

/-! ## A352964.P13517381144030991999

`A333224(lcm(2*A003714(n), A001316(n)))`
-/

namespace A352964.P13517381144030991999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (Int.lcm (2 * A003714 n) (A001316 n))

end

end A352964.P13517381144030991999

/-!
# A352966: Primes of the form A321513(k) + 1 for some k > 0.

The programs for A352966, there is no canonical definition to state claims against.
-/

/-! ## A352966.P1423614523246285144

`p?[A321513(n+1)+1]`
-/

namespace A352966.P1423614523246285144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321513 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352966.P1423614523246285144

/-! ## A352966.P16854113530831889236

`p?[A004442(A321513(n+1))]`
-/

namespace A352966.P16854113530831889236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A321513 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352966.P16854113530831889236

/-! ## A352966.P6637213790278042729

`p?[A153152(A321513(n+2))]`
-/

namespace A352966.P6637213790278042729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A321513 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352966.P6637213790278042729

/-! ## A352966.P8164978231937534391

`record[A006530(A321513(n+2)+1)]`
-/

namespace A352966.P8164978231937534391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A321513 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352966.P8164978231937534391

/-!
# A352967: Array read by antidiagonals: A(i, j) = abs(i - j) if min(i, j) < max(i, j) <= 2*min(i, j), and otherwise 0, with i >= 0 and j >= 0.

The programs for A352967, there is no canonical definition to state claims against.
-/

/-! ## A352967.P10649189657645065596

`val(A245109(A007318(n)), 5)`
-/

namespace A352967.P10649189657645065596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A245109 (A007318 n).toNat).toNat 5

end

end A352967.P10649189657645065596

/-! ## A352967.P9259471737497710546

`val(A046261(A300966(n+1)), 4)`
-/

namespace A352967.P9259471737497710546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046261 (A300966 (n + 1)).toNat).toNat 4

end

end A352967.P9259471737497710546

/-! ## A352967.P5233079890534647757

`A385881(A176282(n))`
-/

namespace A352967.P5233079890534647757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385881 (A176282 n).toNat

end

end A352967.P5233079890534647757

/-! ## A352967.P16931405346107080862

`A262900(A281165(n+1))`
-/

namespace A352967.P16931405346107080862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262900 (A281165 (n + 1)).toNat

end

end A352967.P16931405346107080862

/-! ## A352967.P6709158030470654627

`A025426(A230935(n+1)+A143182(n))`
-/

namespace A352967.P6709158030470654627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A230935 (n + 1) + A143182 n).toNat

end

end A352967.P6709158030470654627

/-!
# A352969: Start with {1}, then at each step replace it with the set of all pairwise products and sums of its elements (an element can be paired with itself). a(n) gives the number of elements after n-th step.

The programs for A352969, there is no canonical definition to state claims against.
-/

/-! ## A352969.P7721185069374324773

`∑[A365661(Δ[A006497(n)])]`
-/

namespace A352969.P7721185069374324773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365661 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352969.P7721185069374324773

/-! ## A352969.P12810736539247285050

`A046699(∑[A098859(2^n)])`
-/

namespace A352969.P12810736539247285050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098859 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352969.P12810736539247285050

/-!
# A352972: a(n) = Sum_{j=0..2*n} Sum_{k=0..j} A026536(j, k).

The programs for A352972, there is no canonical definition to state claims against.
-/

/-! ## A352972.P4409387541084630001

`A026550(2*n)`
-/

namespace A352972.P4409387541084630001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026550 (2 * n)

end

end A352972.P4409387541084630001

/-! ## A352972.P14430220430571987506

`record[A026550(n)^and(1, n+1)]`
-/

namespace A352972.P14430220430571987506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026550 n ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352972.P14430220430571987506

/-! ## A352972.P11375210049515545268

`record[A026550(A014681(n))]`
-/

namespace A352972.P11375210049515545268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026550 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352972.P11375210049515545268

/-! ## A352972.P7818587179969703914

`record[A026550(n)/A266303(n)]`
-/

namespace A352972.P7818587179969703914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026550 n : ℚ) / (A266303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352972.P7818587179969703914

/-! ## A352972.P12850604076667626786

`record[gcd(A026550(n), A097331(n))]`
-/

namespace A352972.P12850604076667626786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026550 n) (A097331 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352972.P12850604076667626786

/-! ## A352972.P8952407847092431896

`A026531(2*n)+A026566(2*n)-A026533(2*n)`
-/

namespace A352972.P8952407847092431896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026531 (2 * n) + (A026566 (2 * n) - A026533 (2 * n))

end

end A352972.P8952407847092431896

/-! ## A352972.P1513042391713713280

`A026548(2*n)+A026566(2*n)-A026533(2*n)`
-/

namespace A352972.P1513042391713713280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026548 (2 * n) + (A026566 (2 * n) - A026533 (2 * n))

end

end A352972.P1513042391713713280

/-!
# A352973: Prime numbers p such that iterating the map m -> m^2 + 1 on p generates a number ending with p in binary format.

The programs for A352973, there is no canonical definition to state claims against.
-/

/-! ## A352973.P15341272829918885401

`p?[A354832(n+1)]`
-/

namespace A352973.P15341272829918885401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352973.P15341272829918885401

/-!
# A352976: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number that has not appeared that shares a factor with max(a(n-2),a(n-1)).

The programs for A352976, there is no canonical definition to state claims against.
-/

/-! ## A352976.P15749263669828841824

`A377225(lt[A349797(n+1), A377225(n)])`
-/

namespace A352976.P15749263669828841824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377225 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352976.P15749263669828841824

/-! ## A352976.P764559849343860395

`A377225(lt[A325227(n+1), A377225(n)])`
-/

namespace A352976.P764559849343860395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377225 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352976.P764559849343860395

/-! ## A352976.P12028114509896415636

`A351625(n+1)+A185284(A084937(n+1))`
-/

namespace A352976.P12028114509896415636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351625 (n + 1) + A185284 (A084937 (n + 1)).toNat

end

end A352976.P12028114509896415636

/-!
# A352977: Expansion of e.g.f. cos(2*x) cos(3*x) / cos(6*x) (even powers only).

The programs for A352977, there is no canonical definition to state claims against.
-/

/-! ## A352977.P17753671585196396506

`A000192(n)/2`
-/

namespace A352977.P17753671585196396506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000192 n : ℚ) / 2

end

end A352977.P17753671585196396506

/-! ## A352977.P15312570051228966565

`A001587(2*n)/2`
-/

namespace A352977.P15312570051228966565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001587 (2 * n) : ℚ) / 2

end

end A352977.P15312570051228966565

/-! ## A352977.P7391674982183735735

`floor(A001587(A005843(n))/2)`
-/

namespace A352977.P7391674982183735735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001587 (A005843 n).toNat : ℚ) / 2⌋

end

end A352977.P7391674982183735735

/-! ## A352977.P17968699333198143272

`2^A008683(A181758(n+1))*A001587(2*n)`
-/

namespace A352977.P17968699333198143272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) * (A001587 (2 * n) : ℚ)

end

end A352977.P17968699333198143272

/-! ## A352977.P9722415854693490685

`(A001587(A005843(n))+A008683(A089552(n+1)))/2`
-/

namespace A352977.P9722415854693490685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001587 (A005843 n).toNat + A008683 (A089552 (n + 1)).toNat : ℚ) / 2

end

end A352977.P9722415854693490685

/-!
# A352978: Lesser term of pairs of numbers of the form (x^y, y^x) whose numbers of digits are repdigits.

The programs for A352978, there is no canonical definition to state claims against.
-/

/-! ## A352978.P14647743495726798279

`A001597(lt[9, A260371(n+2)])`
-/

namespace A352978.P14647743495726798279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260371 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A352978.P14647743495726798279

/-! ## A352978.P9398873573973407989

`A115367(A175806(n))`
-/

namespace A352978.P9398873573973407989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115367 (A175806 n).toNat

end

end A352978.P9398873573973407989

/-! ## A352978.P12814047950920073084

`A113009(A059880(n+1))`
-/

namespace A352978.P12814047950920073084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113009 (A059880 (n + 1)).toNat

end

end A352978.P12814047950920073084

/-! ## A352978.P13120281488675044492

`A115367(A250777(n+1))`
-/

namespace A352978.P13120281488675044492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115367 (A250777 (n + 1)).toNat

end

end A352978.P13120281488675044492

/-!
# A352979: a(n) = Sum_{k=1..n} Sum_{j=1..k} Sum_{i=1..j} (k*j*i)^3.

The programs for A352979, the canonical program `A352979.P6795934592847810606` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352979 has offset 0).

The definition of A352979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352979.P6795934592847810606

`∑[n^3*∑[∑[n]²*n^3]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A352979

/-- `∑[n^3*∑[∑[n]²*n^3]]` -/
def P6795934592847810606.Spec : Prop :=
  ∀ n, (P6795934592847810606.a n : ℤ) = A352979 n

theorem P6795934592847810606.correct : P6795934592847810606.Spec := by
  intro n
  simp only [A352979]

end A352979

/-! ## A352979.P15835524968046744430

`A269948(∑[n+3]+n+3)`
-/

namespace A352979.P15835524968046744430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269948 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A352979.P15835524968046744430

namespace A352979

/-- `A269948(∑[n+3]+n+3)` -/
def P15835524968046744430.Spec : Prop :=
  ∀ n, P15835524968046744430.a n = A352979 n

end A352979

/-! ## A352979.P18097155232942458368

`record[A269948(A060577(n))]`
-/

namespace A352979.P18097155232942458368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269948 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352979.P18097155232942458368

namespace A352979

/-- `record[A269948(A060577(n))]` -/
def P18097155232942458368.Spec : Prop :=
  ∀ n, P18097155232942458368.a n = A352979 n

end A352979

/-! ## A352979.P18249359054181829101

`record[A269948(abs(A046691(n)))]`
-/

namespace A352979.P18249359054181829101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269948 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352979.P18249359054181829101

namespace A352979

/-- `record[A269948(abs(A046691(n)))]` -/
def P18249359054181829101.Spec : Prop :=
  ∀ n, P18249359054181829101.a n = A352979 n

end A352979

/-! ## A352979.P2502202802011112049

`lcm(A000217(n), A269948(A046691(n+2)))`
-/

namespace A352979.P2502202802011112049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000217 n) (A269948 (A046691 (n + 2)).toNat)

end

end A352979.P2502202802011112049

namespace A352979

/-- `lcm(A000217(n), A269948(A046691(n+2)))` -/
def P2502202802011112049.Spec : Prop :=
  ∀ n, (P2502202802011112049.a n : ℤ) = A352979 n

end A352979

/-!
# A352980: a(n) = Sum_{1 <= i < j < k <= n} (i*j*k)^3.

The programs for A352980, there is no canonical definition to state claims against.
-/

/-! ## A352980.P12979008538329505284

`A269948(∑[n+3]+n+3)-∑[n]²*A000540(n)`
-/

namespace A352980.P12979008538329505284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269948 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3)) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) * A000540 n

end

end A352980.P12979008538329505284

/-! ## A352980.P13852305558728000899

`A269947(∑[comp[A035287(n+1)]])`
-/

namespace A352980.P13852305558728000899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035287 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352980.P13852305558728000899

/-! ## A352980.P6665523938445829563

`A269947(A046691(round(acot(n)+n)))`
-/

namespace A352980.P6665523938445829563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (A046691 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A352980.P6665523938445829563

/-! ## A352980.P13721270832356584360

`A269947(A000124(n)+comp[2*n+3])`
-/

namespace A352980.P13721270832356584360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (A000124 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A352980.P13721270832356584360

/-! ## A352980.P6959432837222349483

`A269947(A004275(n)+A000124(n))`
-/

namespace A352980.P6959432837222349483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (A004275 n + A000124 n).toNat

end

end A352980.P6959432837222349483

/-!
# A352982: a(n) = Sum_{k=0..floor(n/3)} k^n.

The programs for A352982, there is no canonical definition to state claims against.
-/

/-! ## A352982.P5660080338094724492

`or(1, 2^(n*a(n-3)))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A352982.P5660080338094724492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n a =>
  Nat.lor 1 (2 ^ (n * a (n - 3)))

end

end A352982.P5660080338094724492

/-! ## A352982.P6114245655040092697

`2^(n*a(n-3))+1` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A352982.P6114245655040092697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1] fun n a =>
  2 ^ (n * a (n - 3)) + 1

end

end A352982.P6114245655040092697

/-! ## A352982.P6694960088884210143

`or(1, 2^(a(n-3)/n^(-1)))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A352982.P6694960088884210143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((a (n - 3) : ℚ) / (n : ℚ) ^ (-1 : ℤ) : ℝ)))

end

end A352982.P6694960088884210143

/-! ## A352982.P15843049727239992471

`2^(a(n-3)/n^(-1))+1` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A352982.P15843049727239992471
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1] fun n a =>
  (2 : ℝ) ^ (a (n - 3) / ((n : ℚ) ^ (-1 : ℤ) : ℝ)) + 1

end

end A352982.P15843049727239992471

/-! ## A352982.P2758392293342961570

`and(-63, A321410(n+2))`
-/

namespace A352982.P2758392293342961570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-63) (A321410 (n + 2))

end

end A352982.P2758392293342961570

/-!
# A352983: a(n) = Sum_{k=0..floor(n/2)} k^(2*n).

The programs for A352983, there is no canonical definition to state claims against.
-/

/-! ## A352983.P9682090532158105849

`A215083(A106232(n+1)-A110654(n))`
-/

namespace A352983.P9682090532158105849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215083 (A106232 (n + 1) - A110654 n).toNat

end

end A352983.P9682090532158105849

/-! ## A352983.P7896125177540397815

`(4^n+1)^a(n-2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A352983.P7896125177540397815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (4 ^ n + 1) ^ a (n - 2)

end

end A352983.P7896125177540397815

/-!
# A352984: a(n) = Sum_{k=0..floor(n/3)} k^(3*n).

The programs for A352984, there is no canonical definition to state claims against.
-/

/-! ## A352984.P13632996572680456954

`A352982(n)+A007531(A352982(n))`
-/

namespace A352984.P13632996572680456954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352982 n + A007531 (A352982 n).toNat

end

end A352984.P13632996572680456954

/-! ## A352984.P3065145815997563506

`∑{d}[A038110(n+1), A049084(#)^(3*n)]`
-/

namespace A352984.P3065145815997563506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d ^ (3 * n)

end

end A352984.P3065145815997563506

/-! ## A352984.P9140020605634968362

`A052539((3*a(and(n, n-1)))²)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A352984.P9140020605634968362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1] fun n a =>
  A052539 ((3 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) ^ 2).toNat

end

end A352984.P9140020605634968362

/-!
# A352986: a(n) = Sum_{k=0..floor(n/3)} k^(3*(n-3*k)).

The programs for A352986, there is no canonical definition to state claims against.
-/

/-! ## A352986.P1296207460711860502

`A178334(C(floor((n/2)²), ∑[n²%3]))`
-/

namespace A352986.P1296207460711860502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (Nat.choose ⌊((n : ℚ) / 2) ^ 2⌋.toNat (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A352986.P1296207460711860502

/-! ## A352986.P1495612020378129692

`A178334(a(n-1)+(n-1)!)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A352986.P1495612020378129692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A178334 (a (n - 1) + (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)).toNat

end

end A352986.P1495612020378129692

/-! ## A352986.P16203636029840689102

`A178334(A003221(n))`
-/

namespace A352986.P16203636029840689102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A003221 n).toNat

end

end A352986.P16203636029840689102

/-! ## A352986.P17875110484815833482

`A178334(A020067(n))`
-/

namespace A352986.P17875110484815833482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A020067 n).toNat

end

end A352986.P17875110484815833482

/-! ## A352986.P8503440578330219909

`A178334(A020077(n))`
-/

namespace A352986.P8503440578330219909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A020077 n).toNat

end

end A352986.P8503440578330219909

/-!
# A352988: Matrix inverse of triangle A352650.

The programs for A352988, there is no canonical definition to state claims against.
-/

/-! ## A352988.P13209692411030393250

`A318274(n+2)-∑[char[∑[n+1]]]`
-/

namespace A352988.P13209692411030393250
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A352988.P13209692411030393250

/-! ## A352988.P14703267959616666590

`A083920(n)+A318274(n+2)-n`
-/

namespace A352988.P14703267959616666590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + (A318274 (n + 2) - (n : ℤ))

end

end A352988.P14703267959616666590

/-! ## A352988.P2828844669677359023

`char[∑[n-1]]+A129186(n)-A153869(n+1)`
-/

namespace A352988.P2828844669677359023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A129186 n - A153869 (n + 1))

end

end A352988.P2828844669677359023

/-! ## A352988.P4223699581671193726

`A183110(A083920(n+2))-A003056(n)`
-/

namespace A352988.P4223699581671193726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (A083920 (n + 2)).toNat - A003056 n

end

end A352988.P4223699581671193726

/-! ## A352988.P3689038329417104636

`A000027(A318274(n+2))-A003056(n)`
-/

namespace A352988.P3689038329417104636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A318274 (n + 2)).toNat - A003056 n

end

end A352988.P3689038329417104636

/-! ## A352988.P3382883271827258256

`A097806(n)-A002260(n+1)*A167371(n+1)`
-/

namespace A352988.P3382883271827258256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n - A002260 (n + 1) * A167371 (n + 1)

end

end A352988.P3382883271827258256

/-!
# A352990: Numbers k such that the k-th triangular number == 1 mod the integer log of k.

The programs for A352990, the canonical program `A352990.P13756720821750131226` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352990 has offset 1).

The definition of A352990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352990.P13756720821750131226

`eq[1, A352996(n+2)]+2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A352990

/-- `eq[1, A352996(n+2)]+2` -/
def P13756720821750131226.Spec : Prop :=
  ∀ n, (P13756720821750131226.a n : ℤ) = A352990 (n + 1)

theorem P13756720821750131226.correct : P13756720821750131226.Spec := by
  intro n
  simp only [A352990, Nat.add_sub_cancel]

end A352990

/-!
# A352991: Concatenation of all the distinct permutations of the first 1, 2, 3, ... (strictly) positive integers, arranged in ascending numerical order.

The programs for A352991, there is no canonical definition to state claims against.
-/

/-! ## A352991.P12459616407540680588

`A030299(n+1)+char[42]`
-/

namespace A352991.P12459616407540680588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A352991.P12459616407540680588

/-! ## A352991.P11453913105186166241

`A030299(xor(n, C(n, 59))+1)`
-/

namespace A352991.P11453913105186166241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (Nat.xor n (Nat.choose n 59) + 1)

end

end A352991.P11453913105186166241

/-! ## A352991.P14165856876397699835

`A030299((n+1)^ceil(n/98))`
-/

namespace A352991.P14165856876397699835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ))).toNat

end

end A352991.P14165856876397699835

/-! ## A352991.P10860541369608934030

`record[A030299(A302042(n+1))]`
-/

namespace A352991.P10860541369608934030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (A302042 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352991.P10860541369608934030

/-! ## A352991.P6543743102124708683

`A066035(n)+A030299(n+1)`
-/

namespace A352991.P6543743102124708683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066035 n + A030299 (n + 1)

end

end A352991.P6543743102124708683

/-!
# A352993: a(n) is the n-th positive integer that has no common 1-bit with n; a(0) = 0.

The programs for A352993, there is no canonical definition to state claims against.
-/

/-! ## A352993.P15211417951884778397

`A367306(n*A001316(n))`
-/

namespace A352993.P15211417951884778397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 ((n : ℤ) * A001316 n).toNat

end

end A352993.P15211417951884778397

/-!
# A352994: Number of copies of the star graph S(2,2,1) contained within the n-dimensional hypercube graph.

The programs for A352994, the canonical program `A352994.P12794878723960370675` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352994 has offset 1).

The definition of A352994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352994.P12794878723960370675

`2^(n+1)*C(n+1, 3)*3*(n+1)*(n-1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A352994

/-- `2^(n+1)*C(n+1, 3)*3*(n+1)*(n-1)` -/
def P12794878723960370675.Spec : Prop :=
  ∀ n, P12794878723960370675.a n = A352994 (n + 1)

theorem P12794878723960370675.correct : P12794878723960370675.Spec := by
  intro n
  simp only [A352994, Nat.add_sub_cancel]

end A352994

/-! ## A352994.P3699686715654430495

`n*(1-n²)²*2^n`
-/

namespace A352994.P3699686715654430495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((1 - (n ^ 2 : ℤ)) ^ 2 * (2 ^ n : ℤ))

end

end A352994.P3699686715654430495

namespace A352994

/-- `n*(1-n²)²*2^n` -/
def P3699686715654430495.Spec : Prop :=
  ∀ n, P3699686715654430495.a n = A352994 (n + 1)

theorem P3699686715654430495.correct : P3699686715654430495.Spec := by
  intro n
  simp only [A352994, Nat.add_sub_cancel, A352994.P3699686715654430495.a, A352994.P12794878723960370675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A352994

/-! ## A352994.P12823861294385728472

`(1-n)²*∑[n]+(1-n)²*∑[n]*A003261(n+1)`
-/

namespace A352994.P12823861294385728472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (n : ℤ)) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A003261 (n + 1)

end

end A352994.P12823861294385728472

namespace A352994

/-- `(1-n)²*∑[n]+(1-n)²*∑[n]*A003261(n+1)` -/
def P12823861294385728472.Spec : Prop :=
  ∀ n, P12823861294385728472.a n = A352994 (n + 1)

end A352994

/-!
# A352995: Smallest positive integer whose cube ends with exactly n 3's.

The programs for A352995, there is no canonical definition to state claims against.
-/

/-! ## A352995.P5892956890797204941

`A077744(A093137(n)-A099206(n+1))`
-/

namespace A352995.P5892956890797204941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077744 (A093137 n - A099206 (n + 1)).toNat

end

end A352995.P5892956890797204941

/-!
# A352996: a(n) = n*(n+1)/2 mod (sum (with multiplicity) of prime factors of n).

The programs for A352996, the canonical program `A352996.P6063555587499060284` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352996 has offset 2).

The definition of A352996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352996.P6063555587499060284

`C(n+3, 2)%A001414(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A352996

/-- `C(n+3, 2)%A001414(n+2)` -/
def P6063555587499060284.Spec : Prop :=
  ∀ n, P6063555587499060284.a n = A352996 (n + 2)

theorem P6063555587499060284.correct : P6063555587499060284.Spec := by
  intro n
  simp only [A352996, Nat.add_sub_cancel]

end A352996

/-! ## A352996.P14783613498304322493

`A000217(n+2)%A001414(n+2)`
-/

namespace A352996.P14783613498304322493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 2)) (A001414 (n + 2))

end

end A352996.P14783613498304322493

namespace A352996

/-- `A000217(n+2)%A001414(n+2)` -/
def P14783613498304322493.Spec : Prop :=
  ∀ n, P14783613498304322493.a n = A352996 (n + 2)

end A352996

/-! ## A352996.P5853239429258778107

`A253145(n+1)%A001414(n+2)`
-/

namespace A352996.P5853239429258778107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 (n + 1)) (A001414 (n + 2))

end

end A352996.P5853239429258778107

namespace A352996

/-- `A253145(n+1)%A001414(n+2)` -/
def P5853239429258778107.Spec : Prop :=
  ∀ n, P5853239429258778107.a n = A352996 (n + 2)

end A352996

/-! ## A352996.P12412177871179728822

`(A055998(n)+3)%Δ[A025281(n+1)]`
-/

namespace A352996.P12412177871179728822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055998 n + 3) (f1 (n + 1) - f1 n)

end

end A352996.P12412177871179728822

namespace A352996

/-- `(A055998(n)+3)%Δ[A025281(n+1)]` -/
def P12412177871179728822.Spec : Prop :=
  ∀ n, P12412177871179728822.a n = A352996 (n + 2)

end A352996

/-! ## A352996.P2667399205840289779

`(A347553(n+4)+1)%A001414(n+2)`
-/

namespace A352996.P2667399205840289779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347553 (n + 4) + 1) (A001414 (n + 2))

end

end A352996.P2667399205840289779

namespace A352996

/-- `(A347553(n+4)+1)%A001414(n+2)` -/
def P2667399205840289779.Spec : Prop :=
  ∀ n, P2667399205840289779.a n = A352996 (n + 2)

end A352996

/-! ## A352996.P8325503907842233019

`A000027(A000217(n+2))%(A036288(n+2)-1)`
-/

namespace A352996.P8325503907842233019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A000217 (n + 2)).toNat) (A036288 (n + 2) - 1)

end

end A352996.P8325503907842233019

namespace A352996

/-- `A000027(A000217(n+2))%(A036288(n+2)-1)` -/
def P8325503907842233019.Spec : Prop :=
  ∀ n, P8325503907842233019.a n = A352996 (n + 2)

end A352996

/-! ## A352996.P17645262315119170877

`record[A038722(n+2)]%A001414(n+2)`
-/

namespace A352996.P17645262315119170877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A001414 (n + 2))

end

end A352996.P17645262315119170877

namespace A352996

/-- `record[A038722(n+2)]%A001414(n+2)` -/
def P17645262315119170877.Spec : Prop :=
  ∀ n, P17645262315119170877.a n = A352996 (n + 2)

end A352996

/-! ## A352996.P12897697484862960916

`A000720(A011756(n+2))%A001414(n+2)`
-/

namespace A352996.P12897697484862960916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A011756 (n + 2)).toNat) (A001414 (n + 2))

end

end A352996.P12897697484862960916

namespace A352996

/-- `A000720(A011756(n+2))%A001414(n+2)` -/
def P12897697484862960916.Spec : Prop :=
  ∀ n, P12897697484862960916.a n = A352996 (n + 2)

end A352996

/-! ## A352996.P8671872509580219176

`A169803(A004273((n+2)²))%A001414(n+2)`
-/

namespace A352996.P8671872509580219176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169803 (A004273 ((n + 2) ^ 2)).toNat) (A001414 (n + 2))

end

end A352996.P8671872509580219176

namespace A352996

/-- `A169803(A004273((n+2)²))%A001414(n+2)` -/
def P8671872509580219176.Spec : Prop :=
  ∀ n, P8671872509580219176.a n = A352996 (n + 2)

end A352996

/-!
# A352997: Numbers k such that A352996(k) is prime.

The programs for A352997, the canonical program `A352997.P7877165416529509533` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352997 has offset 1).

The definition of A352997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352997.P7877165416529509533

`eq[1, ∑{e}[A352996(n+2), #]]+2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A352997

/-- `eq[1, ∑{e}[A352996(n+2), #]]+2` -/
def P7877165416529509533.Spec : Prop :=
  ∀ n, (P7877165416529509533.a n : ℤ) = A352997 (n + 1)

theorem P7877165416529509533.correct : P7877165416529509533.Spec := by
  intro n
  simp only [A352997, Nat.add_sub_cancel]

end A352997

/-!
# A352998: a(n) is the least k > 0 such that the binary expansions of A109812(n) and A109812(n + 2*k) have no common 1-bit.

The programs for A352998, there is no canonical definition to state claims against.
-/

/-! ## A352998.P13884098641863243898

`gcd(A190491(n+1), A331985(A014945(3*n+1)))`
-/

namespace A352998.P13884098641863243898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A190491 (n + 1)) (A331985 (A014945 (3 * n + 1)).toNat)

end

end A352998.P13884098641863243898

/-! ## A352998.P9055610848036235562

`A112798(A286001(n+1)+A036721(n))`
-/

namespace A352998.P9055610848036235562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A286001 (n + 1) + A036721 n).toNat

end

end A352998.P9055610848036235562

/-! ## A352998.P1624455192891103229

`gcd(A336957(A336957(n+1)), A360215(3*(n+1)))`
-/

namespace A352998.P1624455192891103229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336957 (A336957 (n + 1)).toNat) (A360215 (3 * (n + 1)))

end

end A352998.P1624455192891103229

/-! ## A352998.P6521036545418225961

`A347256(A347263(2*n+1)+A057354(3*n+4))`
-/

namespace A352998.P6521036545418225961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347256 (A347263 (2 * n + 1) + A057354 (3 * n + 4)).toNat

end

end A352998.P6521036545418225961

/-! ## A352998.P3124752737661159936

`A118291(A161134(n))+A096270(n)`
-/

namespace A352998.P3124752737661159936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118291 (A161134 n).toNat + A096270 n

end

end A352998.P3124752737661159936

/-!
# A352999: a(n) is the least k > 0 such that A109812(n) and A109812(n + 2*k) have different binary lengths.

The programs for A352999, there is no canonical definition to state claims against.
-/

/-! ## A352999.P17289444067628483678

`A282194(23*A080335(n))`
-/

namespace A352999.P17289444067628483678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282194 (23 * A080335 n).toNat

end

end A352999.P17289444067628483678

/-! ## A352999.P9405602792335309904

`A282194(lcm(23, A080335(n)))`
-/

namespace A352999.P9405602792335309904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282194 (Int.lcm 23 (A080335 n))

end

end A352999.P9405602792335309904

/-! ## A352999.P2982963065903563263

`∏{e}[A342991(n+1)+A000051(n), #]`
-/

namespace A352999.P2982963065903563263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342991 (n + 1) + A000051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A352999.P2982963065903563263

/-! ## A352999.P4197683034312073502

`gcd(A002251(A000032(n)), A312948(n))`
-/

namespace A352999.P4197683034312073502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002251 (A000032 n).toNat) (A312948 n)

end

end A352999.P4197683034312073502

/-! ## A352999.P17657543360665438030

`A228525(A019529(n)*A357456(n+3))`
-/

namespace A352999.P17657543360665438030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228525 (A019529 n * A357456 (n + 3)).toNat

end

end A352999.P17657543360665438030

