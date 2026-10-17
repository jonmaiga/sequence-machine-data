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
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A338600: a(n) is the common denominator of the A338197(n) rational resistance values that can be obtained from a network of exactly n one-ohm resistors, but not by a network of fewer than n one-ohm resistors.

The programs for A338600, there is no canonical definition to state claims against.
-/

/-! ## A338600.P11119208743871295572

`A003418(A306912(n)+A301576(n+1))`
-/

namespace A338600.P11119208743871295572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A306912 n + A301576 (n + 1)).toNat

end

end A338600.P11119208743871295572

/-! ## A338600.P12112490823028655283

`A003418(A041247(n+1))`
-/

namespace A338600.P12112490823028655283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A041247 (n + 1)).toNat

end

end A338600.P12112490823028655283

/-! ## A338600.P7163802630403207168

`A070033(A109442(n+1))`
-/

namespace A338600.P7163802630403207168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070033 (A109442 (n + 1)).toNat

end

end A338600.P7163802630403207168

/-!
# A338601: Numerators x of resistance values R=x/y that can be obtained by a network of at most 10 one-ohm resistors such that a network of more than 10 one-ohm resistors is needed to obtain the resistance y/x. Denominators are in A338602.

The programs for A338601, there is no canonical definition to state claims against.
-/

/-! ## A338601.P11488850971881950124

`A338581(A154125(n+1))`
-/

namespace A338601.P11488850971881950124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338581 (A154125 (n + 1)).toNat

end

end A338601.P11488850971881950124

/-! ## A338601.P5656061074361094166

`A338582(record[A154125(n+1)])`
-/

namespace A338601.P5656061074361094166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338601.P5656061074361094166

/-! ## A338601.P6183262408215537567

`A338582(∑[A173917(A000194(n))])`
-/

namespace A338601.P6183262408215537567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173917 (A000194 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338601.P6183262408215537567

/-! ## A338601.P17102138681350729557

`A338582(∑[A124446(A065033(n))])`
-/

namespace A338601.P17102138681350729557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124446 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338601.P17102138681350729557

/-! ## A338601.P6493559804894956005

`A338582(∑[A226482(A261424(n))])`
-/

namespace A338601.P6493559804894956005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226482 (A261424 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338582 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338601.P6493559804894956005

/-!
# A338602: Denominators y of resistance values R=x/y that can be obtained by a network of at most 10 one-ohm resistors such that a network of more than 10 one-ohm resistors is needed to obtain the resistance y/x. Numerators are in A338601.

The programs for A338602, there is no canonical definition to state claims against.
-/

/-! ## A338602.P14892358189694196010

`A338591(A154125(n+1))-A338601(n+1)`
-/

namespace A338602.P14892358189694196010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338591 (A154125 (n + 1)).toNat - A338601 (n + 1)

end

end A338602.P14892358189694196010

/-! ## A338602.P18336266433183357193

`A338591(n+1)-A338601(A057846(n+1))`
-/

namespace A338602.P18336266433183357193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338591 (n + 1) - A338601 (A057846 (n + 1)).toNat

end

end A338602.P18336266433183357193

/-! ## A338602.P16997299961346121218

`A338591(n+1)-A338601(A106039(n+2))`
-/

namespace A338602.P16997299961346121218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338591 (n + 1) - A338601 (A106039 (n + 2)).toNat

end

end A338602.P16997299961346121218

/-! ## A338602.P6770167736004922268

`A338591(n+1)-(A338582(n+1)+A107504(A056612(n+1)))`
-/

namespace A338602.P6770167736004922268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338591 (n + 1) - (A338582 (n + 1) + A107504 (A056612 (n + 1)).toNat)

end

end A338602.P6770167736004922268

/-! ## A338602.P9123758708998489032

`A338591(n+1)-A034460(A114538(n+5))*A338582(n+1)`
-/

namespace A338602.P9123758708998489032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338591 (n + 1) - A034460 (A114538 (n + 5)).toNat * A338582 (n + 1)

end

end A338602.P9123758708998489032

/-!
# A338610: Integers m such that there exist one prime p and one positive integer k, for which the expression k^3 + k^2*p is a perfect cube m^3.

The programs for A338610, there is no canonical definition to state claims against.
-/

/-! ## A338610.P17663416078362513442

`A011379(A111251(n+1))`
-/

namespace A338610.P17663416078362513442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (A111251 (n + 1)).toNat

end

end A338610.P17663416078362513442

/-! ## A338610.P10915505410568715031

`A111251(n+1)²*A002504(n+1)`
-/

namespace A338610.P10915505410568715031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) ^ 2 * A002504 (n + 1)

end

end A338610.P10915505410568715031

/-! ## A338610.P14318833016285760272

`lcm((A111251(n+1)%A000040(n+1))², A002504(n+1))`
-/

namespace A338610.P14318833016285760272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A111251 (n + 1)) (A000040 (n + 1)) ^ 2) (A002504 (n + 1))

end

end A338610.P14318833016285760272

/-! ## A338610.P4158079318939405248

`A011379(A002504(n+1)-1)`
-/

namespace A338610.P4158079318939405248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (A002504 (n + 1) - 1).toNat

end

end A338610.P4158079318939405248

/-! ## A338610.P6630792224765832462

`A080838(A121259(n+1)+1)`
-/

namespace A338610.P6630792224765832462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080838 (A121259 (n + 1) + 1).toNat

end

end A338610.P6630792224765832462

/-! ## A338610.P5103144841752918755

`A000217(A111251(n+1))*A004523(A002640(n+1))`
-/

namespace A338610.P5103144841752918755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A111251 (n + 1)).toNat * A004523 (A002640 (n + 1)).toNat

end

end A338610.P5103144841752918755

/-! ## A338610.P9459051689707629015

`A023443(A133431(n+2))²*A133431(n+2)`
-/

namespace A338610.P9459051689707629015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A133431 (n + 2)).toNat ^ 2 * A133431 (n + 2)

end

end A338610.P9459051689707629015

/-! ## A338610.P12389089657761638621

`A111251(n+1)*A111251(n+1)*A133431(n+2)`
-/

namespace A338610.P12389089657761638621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) * A111251 (n + 1) * A133431 (n + 2)

end

end A338610.P12389089657761638621

/-!
# A338611: Numbers all of whose divisors, excluding the divisor 1, are evil numbers (A001969) with a record number of divisors.

The programs for A338611, there is no canonical definition to state claims against.
-/

/-! ## A338611.P18334485543642269984

`∑[A259445((n+1)!)]`
-/

namespace A338611.P18334485543642269984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 (Nat.factorial (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338611.P18334485543642269984

/-! ## A338611.P3910677308181371064

`∑[A324646((n+1)!)]`
-/

namespace A338611.P3910677308181371064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (Nat.factorial (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338611.P3910677308181371064

/-! ## A338611.P12706183010889518796

`∑[A327937((n+1)!)]`
-/

namespace A338611.P12706183010889518796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (Nat.factorial (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338611.P12706183010889518796

/-!
# A338613: Numbers given by a(n) = 1 + floor(c^(n^1.5)) where c=2.2679962677... is the constant defined at A338837.

The programs for A338613, there is no canonical definition to state claims against.
-/

/-! ## A338613.P2255137985004879523

`A000040(A132070(n)+A060831(n))`
-/

namespace A338613.P2255137985004879523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A132070 n + A060831 n).toNat

end

end A338613.P2255137985004879523

/-! ## A338613.P1212732355335050632

`A008578(A132070(n)+A095172(n+1))`
-/

namespace A338613.P1212732355335050632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A132070 n + A095172 (n + 1)).toNat

end

end A338613.P1212732355335050632

/-!
# A338614: Number of permutations p of [n] such that |p(i) - p(i-1)| <= 3 and |p(i) - p(i-2)| <= 4.

The programs for A338614, there is no canonical definition to state claims against.
-/

/-! ## A338614.P14061030134971039232

`A051162(A309670(n))`
-/

namespace A338614.P14061030134971039232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A309670 n).toNat

end

end A338614.P14061030134971039232

/-! ## A338614.P1917423936014039550

`A347786(A385868(n))`
-/

namespace A338614.P1917423936014039550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 (A385868 n).toNat

end

end A338614.P1917423936014039550

/-! ## A338614.P15849661299907080244

`A134478(or(1, A309670(n)))`
-/

namespace A338614.P15849661299907080244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (Int.lor 1 (A309670 n)).toNat

end

end A338614.P15849661299907080244

/-!
# A338616: a(n) is twice the number of parts in all partitions of n into consecutive parts.

The programs for A338616, there is no canonical definition to state claims against.
-/

/-! ## A338616.P9291502195783547194

`2*A204217(n+1)`
-/

namespace A338616.P9291502195783547194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204217 (n + 1)

end

end A338616.P9291502195783547194

/-! ## A338616.P2578233529054924472

`A004277(A204217(n+1))`
-/

namespace A338616.P2578233529054924472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A204217 (n + 1)).toNat

end

end A338616.P2578233529054924472

/-! ## A338616.P1064770152637430619

`2*(A329322(n+1)+A329321(n+1))`
-/

namespace A338616.P1064770152637430619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A329322 (n + 1) + A329321 (n + 1))

end

end A338616.P1064770152637430619

/-! ## A338616.P5917828138824918228

`2*(A319895(n+1)-A001227(n+1))`
-/

namespace A338616.P5917828138824918228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A319895 (n + 1) - A001227 (n + 1))

end

end A338616.P5917828138824918228

/-! ## A338616.P13710882925078945

`2*(A054785(n+1)-A353149(n+1))`
-/

namespace A338616.P13710882925078945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054785 (n + 1) - A353149 (n + 1))

end

end A338616.P13710882925078945

/-! ## A338616.P16957440283782477168

`A005843(A204217(1-(n-A005843(n))))`
-/

namespace A338616.P16957440283782477168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A204217 (1 - ((n : ℤ) - A005843 n)).toNat).toNat

end

end A338616.P16957440283782477168

/-! ## A338616.P9967892905215056314

`A052928(A204217(n+1)+A204217(n+1))`
-/

namespace A338616.P9967892905215056314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A204217 (n + 1) + A204217 (n + 1)).toNat

end

end A338616.P9967892905215056314

/-! ## A338616.P10408166897621586242

`A245092(A204217(n+1)+A204217(n+1))`
-/

namespace A338616.P10408166897621586242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A204217 (n + 1) + A204217 (n + 1)).toNat

end

end A338616.P10408166897621586242

/-! ## A338616.P2335568196785962085

`A204217(n+1)+A319895(n+1)-A001227(n+1)`
-/

namespace A338616.P2335568196785962085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (n + 1) + (A319895 (n + 1) - A001227 (n + 1))

end

end A338616.P2335568196785962085

/-! ## A338616.P11630451611247618314

`A348953(2*(n+1))+A070039(2*(n+1))`
-/

namespace A338616.P11630451611247618314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348953 (2 * (n + 1)) + A070039 (2 * (n + 1))

end

end A338616.P11630451611247618314

/-! ## A338616.P10658335249431779409

`A066839(2*(n+1))-A348608(2*(n+1))`
-/

namespace A338616.P10658335249431779409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (2 * (n + 1)) - A348608 (2 * (n + 1))

end

end A338616.P10658335249431779409

/-! ## A338616.P15015023974778914668

`2*A230877(A347266(n+1))`
-/

namespace A338616.P15015023974778914668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230877 (A347266 (n + 1)).toNat

end

end A338616.P15015023974778914668

/-!
# A338617: Number of spanning trees in the n X 4 king graph.

The programs for A338617, there is no canonical definition to state claims against.
-/

/-! ## A338617.P12031327185723140766

`A338029(A020752(n+1))`
-/

namespace A338617.P12031327185723140766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338029 (A020752 (n + 1)).toNat

end

end A338617.P12031327185723140766

/-!
# A338618: Lexicographically earliest sequence of distinct positive integers such that three consecutive terms are never pairwise coprime.

The programs for A338618, there is no canonical definition to state claims against.
-/

/-! ## A338618.P496914294189356545

`Δ[A333766(A000837(n))]+1+n`
-/

namespace A338618.P496914294189356545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A000837 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A338618.P496914294189356545

/-! ## A338618.P2304264529339929340

`A113324(lt[A068106(n), A113323(n+1)])`
-/

namespace A338618.P2304264529339929340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113324 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338618.P2304264529339929340

/-! ## A338618.P10674302931847538328

`A113324(lt[A325768(n), A113324(n+1)])`
-/

namespace A338618.P10674302931847538328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325768 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113324 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338618.P10674302931847538328

/-! ## A338618.P3760644242771663689

`A113324(A282230(n+1)+A117804(n+1))`
-/

namespace A338618.P3760644242771663689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113324 (A282230 (n + 1) + A117804 (n + 1)).toNat

end

end A338618.P3760644242771663689

/-! ## A338618.P8592108600519302725

`A113324(A117804(n+1)%A058846(n+1))`
-/

namespace A338618.P8592108600519302725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113324 (Int.tmod (A117804 (n + 1)) (A058846 (n + 1))).toNat

end

end A338618.P8592108600519302725

/-!
# A338621: Triangle read by rows: A(n, k) is the number of partitions of n with "aft" value k (see comments).

The programs for A338621, there is no canonical definition to state claims against.
-/

/-! ## A338621.P7256985034592327644

`A001876(A026351(∑[(2*n)²]))`
-/

namespace A338621.P7256985034592327644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A026351 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A338621.P7256985034592327644

/-! ## A338621.P9310928925925893409

`A001221(Δ[xor(n, A184640(3*n+1))])`
-/

namespace A338621.P9310928925925893409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A184640 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A338621.P9310928925925893409

/-! ## A338621.P17793425474264606386

`A140747(A224956(n)+∑[A000032(n+1)])`
-/

namespace A338621.P17793425474264606386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140747 (A224956 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338621.P17793425474264606386

/-! ## A338621.P11024235013470015175

`A055642(xor(A085771(2*n+3), A144614(n)))`
-/

namespace A338621.P11024235013470015175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.xor (A085771 (2 * n + 3)) (A144614 n)).toNat

end

end A338621.P11024235013470015175

/-! ## A338621.P5756118290959327127

`A085424(A102006(n+2))`
-/

namespace A338621.P5756118290959327127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085424 (A102006 (n + 2)).toNat

end

end A338621.P5756118290959327127

/-!
# A338622: Irregular table read by rows: The number of k-faced polyhedra, where k>=4, formed when the five Platonic solids, in the order tetrahedron, octahedron, cube, icosahedron, dodecahedron, are internally cut by all the planes defined by any three of their vertices.

The programs for A338622, there is no canonical definition to state claims against.
-/

/-! ## A338622.P10616094192999204878

`A046523(A027642(n)*A282512(n+1))`
-/

namespace A338622.P10616094192999204878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A027642 n * A282512 (n + 1)).toNat

end

end A338622.P10616094192999204878

/-! ## A338622.P7098080731469595125

`A348173(A027642(n)*A282512(n+1))`
-/

namespace A338622.P7098080731469595125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348173 (A027642 n * A282512 (n + 1)).toNat

end

end A338622.P7098080731469595125

/-!
# A338623: a(n) is the length of the longest block of consecutive terms appearing twice (possibly with overlap) among the first n terms of the Thue-Morse sequence (A010060).

The programs for A338623, the canonical program `A338623.P15101146364006255465` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338623 has offset 1).

The definition of A338623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338623.P15101146364006255465

`∑[a(floor(n/2))²]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338623

/-- `∑[a(floor(n/2))²]` -/
def P15101146364006255465.Spec : Prop :=
  ∀ n, (P15101146364006255465.a n : ℤ) = A338623 (n + 1)

theorem P15101146364006255465.correct : P15101146364006255465.Spec := by
  intro n
  simp only [A338623, Nat.add_sub_cancel]

end A338623

/-! ## A338623.P4872325850669966818

`∑[floor(a(floor(n/2)))]-n` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=2, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A338623.P4872325850669966818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 2, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A338623.P4872325850669966818

namespace A338623

/-- `∑[floor(a(floor(n/2)))]-n` -/
def P4872325850669966818.Spec : Prop :=
  ∀ n, P4872325850669966818.a n = A338623 (n + 1)

end A338623

/-! ## A338623.P6096744850074417407

`∑[char[record[A057115(n+1)]]]`
-/

namespace A338623.P6096744850074417407
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338623.P6096744850074417407

namespace A338623

/-- `∑[char[record[A057115(n+1)]]]` -/
def P6096744850074417407.Spec : Prop :=
  ∀ n, (P6096744850074417407.a n : ℤ) = A338623 (n + 1)

end A338623

/-! ## A338623.P8447022411785050960

`comp[A063946(n+1)+n+1]-n`
-/

namespace A338623.P8447022411785050960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A338623.P8447022411785050960

namespace A338623

/-- `comp[A063946(n+1)+n+1]-n` -/
def P8447022411785050960.Spec : Prop :=
  ∀ n, P8447022411785050960.a n = A338623 (n + 1)

end A338623

/-! ## A338623.P11742824276446819900

`∑[char[A054429(2*n+1)+n+1]]`
-/

namespace A338623.P11742824276446819900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (2 * n + 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338623.P11742824276446819900

namespace A338623

/-- `∑[char[A054429(2*n+1)+n+1]]` -/
def P11742824276446819900.Spec : Prop :=
  ∀ n, (P11742824276446819900.a n : ℤ) = A338623 (n + 1)

end A338623

/-! ## A338623.P2812886914793580422

`A352228(A269169(n+1))`
-/

namespace A338623.P2812886914793580422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352228 (A269169 (n + 1)).toNat

end

end A338623.P2812886914793580422

namespace A338623

/-- `A352228(A269169(n+1))` -/
def P2812886914793580422.Spec : Prop :=
  ∀ n, P2812886914793580422.a n = A338623 (n + 1)

end A338623

/-! ## A338623.P13889020463607590381

`∑[char[A132196(A132196(4*n))]]`
-/

namespace A338623.P13889020463607590381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 (A132196 (4 * n)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338623.P13889020463607590381

namespace A338623

/-- `∑[char[A132196(A132196(4*n))]]` -/
def P13889020463607590381.Spec : Prop :=
  ∀ n, (P13889020463607590381.a n : ℤ) = A338623 (n + 1)

end A338623

/-! ## A338623.P13690108704488234528

`∑[A007088(a(A025480(n)))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A338623.P13690108704488234528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  A007088 (f1 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338623.P13690108704488234528

namespace A338623

/-- `∑[A007088(a(A025480(n)))]` -/
def P13690108704488234528.Spec : Prop :=
  ∀ n, P13690108704488234528.a n = A338623 (n + 1)

end A338623

/-! ## A338623.P17930374754823588458

`∑[A336033(a(A025480(n))+1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A338623.P17930374754823588458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  A336033 (f1 (A025480 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338623.P17930374754823588458

namespace A338623

/-- `∑[A336033(a(A025480(n))+1)]` -/
def P17930374754823588458.Spec : Prop :=
  ∀ n, P17930374754823588458.a n = A338623 (n + 1)

end A338623

/-! ## A338623.P16191775731699562190

`A060973(A079905(A006165(n+1)))`
-/

namespace A338623.P16191775731699562190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A079905 (A006165 (n + 1)).toNat).toNat

end

end A338623.P16191775731699562190

namespace A338623

/-- `A060973(A079905(A006165(n+1)))` -/
def P16191775731699562190.Spec : Prop :=
  ∀ n, P16191775731699562190.a n = A338623 (n + 1)

end A338623

/-! ## A338623.P11410683353313635991

`A060973(A079905(n+1-A060973(n+1)))`
-/

namespace A338623.P11410683353313635991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A079905 ((n + 1 : ℤ) - A060973 (n + 1)).toNat).toNat

end

end A338623.P11410683353313635991

namespace A338623

/-- `A060973(A079905(n+1-A060973(n+1)))` -/
def P11410683353313635991.Spec : Prop :=
  ∀ n, P11410683353313635991.a n = A338623 (n + 1)

end A338623

/-! ## A338623.P14409408066702176198

`A060973(n+1-A060973(A060973(n+3)))`
-/

namespace A338623.P14409408066702176198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 ((n + 1 : ℤ) - A060973 (A060973 (n + 3)).toNat).toNat

end

end A338623.P14409408066702176198

namespace A338623

/-- `A060973(n+1-A060973(A060973(n+3)))` -/
def P14409408066702176198.Spec : Prop :=
  ∀ n, P14409408066702176198.a n = A338623 (n + 1)

end A338623

/-! ## A338623.P14306370707360763446

`A060973(A079905(A060973(A080637(n+1))))`
-/

namespace A338623.P14306370707360763446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A079905 (A060973 (A080637 (n + 1)).toNat).toNat).toNat

end

end A338623.P14306370707360763446

namespace A338623

/-- `A060973(A079905(A060973(A080637(n+1))))` -/
def P14306370707360763446.Spec : Prop :=
  ∀ n, P14306370707360763446.a n = A338623 (n + 1)

end A338623

/-! ## A338623.P18277023569867960272

`floor(A006165(A006165(2*(n+1)))/2)`
-/

namespace A338623.P18277023569867960272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006165 (A006165 (2 * (n + 1))).toNat : ℚ) / 2⌋

end

end A338623.P18277023569867960272

namespace A338623

/-- `floor(A006165(A006165(2*(n+1)))/2)` -/
def P18277023569867960272.Spec : Prop :=
  ∀ n, P18277023569867960272.a n = A338623 (n + 1)

end A338623

/-! ## A338623.P5923900485470223686

`n-∑[A086694(A005942(n+1))]`
-/

namespace A338623.P5923900485470223686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086694 (A005942 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338623.P5923900485470223686

namespace A338623

/-- `n-∑[A086694(A005942(n+1))]` -/
def P5923900485470223686.Spec : Prop :=
  ∀ n, P5923900485470223686.a n = A338623 (n + 1)

end A338623

/-! ## A338623.P16795228673525688406

`∑[A086694(A048724(A005942(n+1)))]`
-/

namespace A338623.P16795228673525688406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086694 (A048724 (A005942 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338623.P16795228673525688406

namespace A338623

/-- `∑[A086694(A048724(A005942(n+1)))]` -/
def P16795228673525688406.Spec : Prop :=
  ∀ n, P16795228673525688406.a n = A338623 (n + 1)

end A338623

/-!
# A338624: a(n) is the length of the longest block of consecutive terms appearing twice (possibly with overlap) among the first n terms of the Kolakoski sequence (A000002).

The programs for A338624, there is no canonical definition to state claims against.
-/

/-! ## A338624.P2361158113579424353

`∑[char[A338626(n+1)-1]]`
-/

namespace A338624.P2361158113579424353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338626 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338624.P2361158113579424353

/-! ## A338624.P9583611011650880559

`comp[A338626(Δ[n²]-n)+n-1]-n`
-/

namespace A338624.P9583611011650880559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338626 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat + (n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A338624.P9583611011650880559

/-! ## A338624.P5052745502399786483

`∑[char[A023443(A338626(n+1))]]`
-/

namespace A338624.P5052745502399786483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A338626 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338624.P5052745502399786483

/-! ## A338624.P16997351299149489766

`comp[A338626(n+1)+A023443(n)]-n`
-/

namespace A338624.P16997351299149489766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338626 (n + 1) + A023443 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A338624.P16997351299149489766

/-! ## A338624.P14195141085495957308

`A001489(n)+comp[A338626(n+1)+n-1]`
-/

namespace A338624.P14195141085495957308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338626 (n + 1) + (n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A338624.P14195141085495957308

/-! ## A338624.P4502214694585297114

`(comp[A338626(n+1)-1+n]-n)%A065520(n+1)`
-/

namespace A338624.P4502214694585297114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338626 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) (A065520 (n + 1))

end

end A338624.P4502214694585297114

/-! ## A338624.P17337560580893020828

`comp[A028310(A338626(n+1)-1)+n]-n`
-/

namespace A338624.P17337560580893020828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A338626 (n + 1) - 1).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A338624.P17337560580893020828

/-! ## A338624.P11898963292002696461

`comp[A233583(A338626(n+1)+n)]-n`
-/

namespace A338624.P11898963292002696461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A338626 (n + 1) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A338624.P11898963292002696461

/-! ## A338624.P7434452174248306567

`A001489(n)+comp[A233583(A338626(n+1)+n)]`
-/

namespace A338624.P7434452174248306567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A338626 (n + 1) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A338624.P7434452174248306567

/-! ## A338624.P6684040989107853242

`comp[A233583(A338626(n+1)+n)]%A028310(n)`
-/

namespace A338624.P6684040989107853242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A338626 (n + 1) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A028310 n)

end

end A338624.P6684040989107853242

/-!
# A338626: a(n) is the least k such that the first k terms of the Kolakoski sequence (A000002) contain a length-n repeated block.

The programs for A338626, there is no canonical definition to state claims against.
-/

/-! ## A338626.P13584406412332233107

`eq[A000688(3*n+4), A111660(A246552(n))]`
-/

namespace A338626.P13584406412332233107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A246552 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338626.P13584406412332233107

/-!
# A338627: a(n) is the smallest positive number k such that n consecutive integers starting at k have the same smallest number of squares needed to represent (A002828).

The programs for A338627, there is no canonical definition to state claims against.
-/

/-! ## A338627.P14288658943863541059

`A269043(A174915(3*n+1)+1)`
-/

namespace A338627.P14288658943863541059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269043 (A174915 (3 * n + 1) + 1).toNat

end

end A338627.P14288658943863541059

/-!
# A338628: a(n) is the smallest number k such that n consecutive integers starting at k have the same number of square divisors (A046951).

The programs for A338628, there is no canonical definition to state claims against.
-/

/-! ## A338628.P12163975151083763947

`A151703(A381774(n)-A064553(n+1))`
-/

namespace A338628.P12163975151083763947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 (A381774 n - A064553 (n + 1)).toNat

end

end A338628.P12163975151083763947

/-!
# A338630: Least number of odd primes that add up to n, or 0 if no such representation is possible.

The programs for A338630, the canonical program `A338630.P18368234724363970962` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338630 has offset 1).

The definition of A338630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338630.P3744715892641447114

`A135679(n+1)%A029940(n+1)`
-/

namespace A338630.P3744715892641447114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135679 (n + 1)) (A029940 (n + 1))

end

end A338630.P3744715892641447114

namespace A338630

/-- `A135679(n+1)%A029940(n+1)` -/
def P3744715892641447114.Spec : Prop :=
  ∀ n, P3744715892641447114.a n = A338630 (n + 1)

end A338630

/-! ## A338630.P12718386474664174805

`A389313(n+3)%A082928(n+1)`
-/

namespace A338630.P12718386474664174805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389313 (n + 3)) (A082928 (n + 1))

end

end A338630.P12718386474664174805

namespace A338630

/-- `A389313(n+3)%A082928(n+1)` -/
def P12718386474664174805.Spec : Prop :=
  ∀ n, P12718386474664174805.a n = A338630 (n + 1)

end A338630

/-! ## A338630.P12333650702617573218

`A020639(3*(n+1))%(A241534(n+1)+1)`
-/

namespace A338630.P12333650702617573218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (3 * (n + 1))) (A241534 (n + 1) + 1)

end

end A338630.P12333650702617573218

namespace A338630

/-- `A020639(3*(n+1))%(A241534(n+1)+1)` -/
def P12333650702617573218.Spec : Prop :=
  ∀ n, P12333650702617573218.a n = A338630 (n + 1)

end A338630

/-! ## A338630.P18368234724363970962

`(n+3)%ceil((A046978(A046644(n+1))+n)/2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338630

/-- `(n+3)%ceil((A046978(A046644(n+1))+n)/2)` -/
def P18368234724363970962.Spec : Prop :=
  ∀ n, P18368234724363970962.a n = A338630 (n + 1)

theorem P18368234724363970962.correct : P18368234724363970962.Spec := by
  intro n
  simp only [A338630, Nat.add_sub_cancel]

end A338630

/-! ## A338630.P12607368128359427554

`A040001(n)-A153881(A069016(n+1))`
-/

namespace A338630.P12607368128359427554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n - A153881 (A069016 (n + 1)).toNat

end

end A338630.P12607368128359427554

namespace A338630

/-- `A040001(n)-A153881(A069016(n+1))` -/
def P12607368128359427554.Spec : Prop :=
  ∀ n, P12607368128359427554.a n = A338630 (n + 1)

end A338630

/-! ## A338630.P17650174035047737592

`A020639(3*(n+1))%A055155(A001616(n+1))`
-/

namespace A338630.P17650174035047737592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (3 * (n + 1))) (A055155 (A001616 (n + 1)).toNat)

end

end A338630.P17650174035047737592

namespace A338630

/-- `A020639(3*(n+1))%A055155(A001616(n+1))` -/
def P17650174035047737592.Spec : Prop :=
  ∀ n, P17650174035047737592.a n = A338630 (n + 1)

end A338630

/-! ## A338630.P8653940756261778215

`A112048(3*n+2)%A008619(A300235(n+1))`
-/

namespace A338630.P8653940756261778215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112048 (3 * n + 2)) (A008619 (A300235 (n + 1)).toNat)

end

end A338630.P8653940756261778215

namespace A338630

/-- `A112048(3*n+2)%A008619(A300235(n+1))` -/
def P8653940756261778215.Spec : Prop :=
  ∀ n, P8653940756261778215.a n = A338630 (n + 1)

end A338630

/-! ## A338630.P6581639400986939286

`A020639(3*n+3)%A256890(A051953(n+1))`
-/

namespace A338630.P6581639400986939286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (3 * n + 3)) (A256890 (A051953 (n + 1)).toNat)

end

end A338630.P6581639400986939286

namespace A338630

/-- `A020639(3*n+3)%A256890(A051953(n+1))` -/
def P6581639400986939286.Spec : Prop :=
  ∀ n, P6581639400986939286.a n = A338630 (n + 1)

end A338630

/-!
# A338632: G.f. A(x) satisfies: 1 = A(x) - x/(A(x) - 3*x/(A(x) - 5*x/(A(x) - 7*x/(A(x) - 9*x/(A(x) - ...))))), a continued fraction relation.

The programs for A338632, there is no canonical definition to state claims against.
-/

/-! ## A338632.P4141921126566144857

`A002465(n)-A082023(A005649(n))`
-/

namespace A338632.P4141921126566144857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002465 n - A082023 (A005649 n).toNat

end

end A338632.P4141921126566144857

/-!
# A338633: G.f. A(x) satisfies: 1 = A(x) - x/(A(x) - 2^3*x/(A(x) - 3^3*x/(A(x) - 4^3*x/(A(x) - 5^3*x/(A(x) - 6^3*x/(A(x) - ...)))))), a continued fraction relation.

The programs for A338633, there is no canonical definition to state claims against.
-/

/-! ## A338633.P338384119210784369

`A032892(A060776(n+1)*A135862(n))`
-/

namespace A338633.P338384119210784369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032892 (A060776 (n + 1) * A135862 n).toNat

end

end A338633.P338384119210784369

/-!
# A338635: G.f. A(x) satisfies: 1 = A(x) - x/(A(x) - 3*x/(A(x) - 6*x/(A(x) - 10*x/(A(x) - 15*x/(A(x) - 21*x/(A(x) - 28*x/(A(x) - ... - (n*(n+1)/2)*x/(A(x) - ...))))))), a continued fraction relation.

The programs for A338635, there is no canonical definition to state claims against.
-/

/-! ## A338635.P5850670880637971928

`A075355(n!²)`
-/

namespace A338635.P5850670880637971928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075355 (Nat.factorial n ^ 2)

end

end A338635.P5850670880637971928

/-!
# A338636: G.f. A(x) satisfies: 1 = A(x) - x/(A(x) - 3^2*x/(A(x) - 5^2*x/(A(x) - 7^2*x/(A(x) - 9^2*x/(A(x) - ...))))), a continued fraction relation.

The programs for A338636, there is no canonical definition to state claims against.
-/

/-! ## A338636.P8355689168338083857

`A102726(n)*A190850(A001044(n))`
-/

namespace A338636.P8355689168338083857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102726 n * A190850 (A001044 n).toNat

end

end A338636.P8355689168338083857

/-!
# A338637: a(n) is the numerator of f(n) where f(n) = 1/n for n <= 2 and f(2n) = f(n-1)*f(n+1)+1, and f(2n+1) = f(n)*f(n+1)+1 for n > 2.

The programs for A338637, there is no canonical definition to state claims against.
-/

/-! ## A338637.P1410230231376355399

`A216505(A302986(n+1)+A126646(n))`
-/

namespace A338637.P1410230231376355399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216505 (A302986 (n + 1) + A126646 n).toNat

end

end A338637.P1410230231376355399

/-! ## A338637.P3807231913138706790

`A364113(n)+A160124(A005188(n+2))`
-/

namespace A338637.P3807231913138706790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364113 n + A160124 (A005188 (n + 2)).toNat

end

end A338637.P3807231913138706790

/-! ## A338637.P18233913770309469876

`A020986(A024320(n+1)*A051239(n+1))`
-/

namespace A338637.P18233913770309469876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (A024320 (n + 1) * A051239 (n + 1)).toNat

end

end A338637.P18233913770309469876

/-! ## A338637.P10896626410355075732

`A109613(A329481(3*n+4)-A109613(2*(n+1)))`
-/

namespace A338637.P10896626410355075732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A329481 (3 * n + 4) - A109613 (2 * (n + 1))).toNat

end

end A338637.P10896626410355075732

/-!
# A338638: a(n) = L(L(n)) mod L(n), where L = Lucas numbers = A000032.

The programs for A338638, there is no canonical definition to state claims against.
-/

/-! ## A338638.P3822457155738258583

`A213060(Δ[round(ϕ^((n+1)%(n+1)²))])`
-/

namespace A338638.P3822457155738258583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n + 1) % (n + 1) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213060 (f1 (n + 1) - f1 n).toNat

end

end A338638.P3822457155738258583

/-! ## A338638.P9027184579793112749

`A213060(Δ[ceil(ϕ^(n+1)-acot(n+1))])`
-/

namespace A338638.P9027184579793112749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (n + 1) - SequenceMachineLib.acot (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213060 (f1 (n + 1) - f1 n).toNat

end

end A338638.P9027184579793112749

/-! ## A338638.P12886523385124786563

`A213060(n-∑[a(n-1)-(1-a(n-2))])` with `a(0)=-2, a(1)=2`
-/

namespace A338638.P12886523385124786563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213060 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338638.P12886523385124786563

/-! ## A338638.P7101513599119679957

`A213060(A000032(n))`
-/

namespace A338638.P7101513599119679957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213060 (A000032 n).toNat

end

end A338638.P7101513599119679957

/-! ## A338638.P2404260389214578719

`A213060(sqrt(A001254(n)))`
-/

namespace A338638.P2404260389214578719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213060 (SequenceMachineLib.roundAway (Real.sqrt (A001254 n : ℝ))).toNat

end

end A338638.P2404260389214578719

/-!
# A338640: Numbers k with the property that concatenating all successive absolute differences between two successive digits of k produces a divisor of k.

The programs for A338640, there is no canonical definition to state claims against.
-/

/-! ## A338640.P17177454935338439848

`∩[A048378(n+1), A241158(n+1)]`
-/

namespace A338640.P17177454935338439848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338640.P17177454935338439848

/-!
# A338643: Cycle lengths arising from interpreting sequence prefixes as graph node offsets.

The programs for A338643, there is no canonical definition to state claims against.
-/

/-! ## A338643.P5481694047459655753

`A051125(A035044(A015161(n)²+n))`
-/

namespace A338643.P5481694047459655753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (A035044 (A015161 n ^ 2 + (n : ℤ)).toNat).toNat

end

end A338643.P5481694047459655753

/-! ## A338643.P4031949648707412983

`A051125(or(A015161(n)², A035044(n)))`
-/

namespace A338643.P4031949648707412983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (Int.lor (A015161 n ^ 2) (A035044 n)).toNat

end

end A338643.P4031949648707412983

/-! ## A338643.P3810000845512768448

`A051125(xor(A015161(n)², A035044(n)))`
-/

namespace A338643.P3810000845512768448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (Int.xor (A015161 n ^ 2) (A035044 n)).toNat

end

end A338643.P3810000845512768448

/-! ## A338643.P4702085452227851568

`A051125(A035608(A015161(n))+A035044(n))`
-/

namespace A338643.P4702085452227851568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (A035608 (A015161 n).toNat + A035044 n).toNat

end

end A338643.P4702085452227851568

/-! ## A338643.P8851880911381004842

`A051125(A035044(n)^A015161(A015161(n)))`
-/

namespace A338643.P8851880911381004842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (SequenceMachineLib.roundAway ((A035044 n : ℚ) ^ (A015161 (A015161 n).toNat : ℤ))).toNat

end

end A338643.P8851880911381004842

/-!
# A338645: Expansion of Product_{k>=1} (1 + x^k)^binomial(k+2,2).

The programs for A338645, there is no canonical definition to state claims against.
-/

/-! ## A338645.P11417497710587512572

`Δ[A048688(A048499(n))]`
-/

namespace A338645.P11417497710587512572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048688 (A048499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338645.P11417497710587512572

/-! ## A338645.P1049308176747051264

`A044933(A304937(2*n))+∑[(n-1)*2^n+2]`
-/

namespace A338645.P1049308176747051264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 ^ n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (A304937 (2 * n)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338645.P1049308176747051264

/-!
# A338647: a(n) = Sum_{k=1..n} 2^(k/gcd(n,k) - 1).

The programs for A338647, there is no canonical definition to state claims against.
-/

/-! ## A338647.P2832016922286760106

`∑{d}[n+1, A054432(#)]`
-/

namespace A338647.P2832016922286760106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054432 d

end

end A338647.P2832016922286760106

/-!
# A338648: Number of divisors of n which are greater than 4.

The programs for A338648, the canonical program `A338648.P5515648176150518427` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338648 has offset 1).

The definition of A338648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A083040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338648.P5515648176150518427

`A000005(n+1)-A083040(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338648

/-- `A000005(n+1)-A083040(n+1)` -/
def P5515648176150518427.Spec : Prop :=
  ∀ n, P5515648176150518427.a n = A338648 (n + 1)

theorem P5515648176150518427.correct : P5515648176150518427.Spec := by
  intro n
  simp only [A338648, Nat.add_sub_cancel]

end A338648

/-! ## A338648.P11623120451213689353

`∑{d}[n+1, floor(atan(log(#)))]`
-/

namespace A338648.P11623120451213689353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (Real.log (d : ℝ))⌋

end

end A338648.P11623120451213689353

namespace A338648

/-- `∑{d}[n+1, floor(atan(log(#)))]` -/
def P11623120451213689353.Spec : Prop :=
  ∀ n, P11623120451213689353.a n = A338648 (n + 1)

end A338648

/-! ## A338648.P1080680285472346557

`∑{d}[n+1, C(4%#, 4)]`
-/

namespace A338648.P1080680285472346557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (4 % d) 4

end

end A338648.P1080680285472346557

namespace A338648

/-- `∑{d}[n+1, C(4%#, 4)]` -/
def P1080680285472346557.Spec : Prop :=
  ∀ n, (P1080680285472346557.a n : ℤ) = A338648 (n + 1)

end A338648

/-! ## A338648.P16066628273945678007

`∑{d}[n+1, round(#/(#+5))]`
-/

namespace A338648.P16066628273945678007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((d : ℚ) / (d + 5 : ℚ))

end

end A338648.P16066628273945678007

namespace A338648

/-- `∑{d}[n+1, round(#/(#+5))]` -/
def P16066628273945678007.Spec : Prop :=
  ∀ n, P16066628273945678007.a n = A338648 (n + 1)

end A338648

/-! ## A338648.P13256178111620094054

`A321014(n+1)-char[or(3, n)]`
-/

namespace A338648.P13256178111620094054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A338648.P13256178111620094054

namespace A338648

/-- `A321014(n+1)-char[or(3, n)]` -/
def P13256178111620094054.Spec : Prop :=
  ∀ n, P13256178111620094054.a n = A338648 (n + 1)

end A338648

/-! ## A338648.P12006908642135686898

`A321014(n+1)-A011765(n+1)`
-/

namespace A338648.P12006908642135686898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (n + 1) - A011765 (n + 1)

end

end A338648.P12006908642135686898

namespace A338648

/-- `A321014(n+1)-A011765(n+1)` -/
def P12006908642135686898.Spec : Prop :=
  ∀ n, P12006908642135686898.a n = A338648 (n + 1)

end A338648

/-! ## A338648.P11110951749163310778

`A338649(A290641(n+1))`
-/

namespace A338648.P11110951749163310778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338649 (A290641 (n + 1)).toNat

end

end A338648.P11110951749163310778

namespace A338648

/-- `A338649(A290641(n+1))` -/
def P11110951749163310778.Spec : Prop :=
  ∀ n, P11110951749163310778.a n = A338648 (n + 1)

end A338648

/-! ## A338648.P1135807727497545224

`A338649(A319525(n+1))`
-/

namespace A338648.P1135807727497545224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338649 (A319525 (n + 1)).toNat

end

end A338648.P1135807727497545224

namespace A338648

/-- `A338649(A319525(n+1))` -/
def P1135807727497545224.Spec : Prop :=
  ∀ n, P1135807727497545224.a n = A338648 (n + 1)

end A338648

/-! ## A338648.P3429392185113489621

`A338653(A064988(n+1))`
-/

namespace A338648.P3429392185113489621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (A064988 (n + 1)).toNat

end

end A338648.P3429392185113489621

namespace A338648

/-- `A338653(A064988(n+1))` -/
def P3429392185113489621.Spec : Prop :=
  ∀ n, P3429392185113489621.a n = A338648 (n + 1)

end A338648

/-! ## A338648.P7734553045276984184

`A338649(A357983(n+1))`
-/

namespace A338648.P7734553045276984184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338649 (A357983 (n + 1)).toNat

end

end A338648.P7734553045276984184

namespace A338648

/-- `A338649(A357983(n+1))` -/
def P7734553045276984184.Spec : Prop :=
  ∀ n, P7734553045276984184.a n = A338648 (n + 1)

end A338648

/-! ## A338648.P1652911104181152914

`A338653(A297002(n+1))`
-/

namespace A338648.P1652911104181152914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (A297002 (n + 1)).toNat

end

end A338648.P1652911104181152914

namespace A338648

/-- `A338653(A297002(n+1))` -/
def P1652911104181152914.Spec : Prop :=
  ∀ n, P1652911104181152914.a n = A338648 (n + 1)

end A338648

/-! ## A338648.P1267777456628123397

`A338653(A389092(n+1))`
-/

namespace A338648.P1267777456628123397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (A389092 (n + 1)).toNat

end

end A338648.P1267777456628123397

namespace A338648

/-- `A338653(A389092(n+1))` -/
def P1267777456628123397.Spec : Prop :=
  ∀ n, P1267777456628123397.a n = A338648 (n + 1)

end A338648

/-!
# A338649: Number of divisors of n which are greater than 5.

The programs for A338649, the canonical program `A338649.P6004992956774776109` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338649 has offset 1).

The definition of A338649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338649.P6004992956774776109

`∑{d}[n+1, C(5%#, 5)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338649

/-- `∑{d}[n+1, C(5%#, 5)]` -/
def P6004992956774776109.Spec : Prop :=
  ∀ n, (P6004992956774776109.a n : ℤ) = A338649 (n + 1)

theorem P6004992956774776109.correct : P6004992956774776109.Spec := by
  intro n
  simp only [A338649, Nat.add_sub_cancel]

end A338649

/-! ## A338649.P13894493840168612376

`∑{d}[n+1, round(((n-1)/(n+3))^#)]`
-/

namespace A338649.P13894493840168612376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((((n : ℤ) - 1 : ℚ) / (n + 3 : ℚ)) ^ d)

end

end A338649.P13894493840168612376

namespace A338649

/-- `∑{d}[n+1, round(((n-1)/(n+3))^#)]` -/
def P13894493840168612376.Spec : Prop :=
  ∀ n, P13894493840168612376.a n = A338649 (n + 1)

end A338649

/-! ## A338649.P7819667703863129990

`A338652(n+1)+A321013(n+1)`
-/

namespace A338649.P7819667703863129990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338652 (n + 1) + A321013 (n + 1)

end

end A338649.P7819667703863129990

namespace A338649

/-- `A338652(n+1)+A321013(n+1)` -/
def P7819667703863129990.Spec : Prop :=
  ∀ n, P7819667703863129990.a n = A338649 (n + 1)

end A338649

/-! ## A338649.P14532482081920292463

`A023645(n+1)-A366981(n+1)`
-/

namespace A338649.P14532482081920292463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) - A366981 (n + 1)

end

end A338649.P14532482081920292463

namespace A338649

/-- `A023645(n+1)-A366981(n+1)` -/
def P14532482081920292463.Spec : Prop :=
  ∀ n, P14532482081920292463.a n = A338649 (n + 1)

end A338649

/-! ## A338649.P755159388039138740

`A321013(n+1)+∑{d}[n+1, A185119(#)]`
-/

namespace A338649.P755159388039138740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321013 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A185119 d

end

end A338649.P755159388039138740

namespace A338649

/-- `A321013(n+1)+∑{d}[n+1, A185119(#)]` -/
def P755159388039138740.Spec : Prop :=
  ∀ n, P755159388039138740.a n = A338649 (n + 1)

end A338649

/-! ## A338649.P1310747049723164511

`A338653(A003961(n+1))`
-/

namespace A338649.P1310747049723164511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (A003961 (n + 1)).toNat

end

end A338649.P1310747049723164511

namespace A338649

/-- `A338653(A003961(n+1))` -/
def P1310747049723164511.Spec : Prop :=
  ∀ n, P1310747049723164511.a n = A338649 (n + 1)

end A338649

/-! ## A338649.P10201716918634486561

`A338653(A045965(n+1))`
-/

namespace A338649.P10201716918634486561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (A045965 (n + 1)).toNat

end

end A338649.P10201716918634486561

namespace A338649

/-- `A338653(A045965(n+1))` -/
def P10201716918634486561.Spec : Prop :=
  ∀ n, P10201716918634486561.a n = A338649 (n + 1)

end A338649

/-! ## A338649.P1702468848907793407

`A338653(A332818(n+1))`
-/

namespace A338649.P1702468848907793407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (A332818 (n + 1)).toNat

end

end A338649.P1702468848907793407

namespace A338649

/-- `A338653(A332818(n+1))` -/
def P1702468848907793407.Spec : Prop :=
  ∀ n, P1702468848907793407.a n = A338649 (n + 1)

end A338649

/-! ## A338649.P8398842762438026020

`A321014(n+1)-A011765(n+1)-A321013(A045965(n+1))`
-/

namespace A338649.P8398842762438026020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (n + 1) - A011765 (n + 1) - A321013 (A045965 (n + 1)).toNat

end

end A338649.P8398842762438026020

namespace A338649

/-- `A321014(n+1)-A011765(n+1)-A321013(A045965(n+1))` -/
def P8398842762438026020.Spec : Prop :=
  ∀ n, P8398842762438026020.a n = A338649 (n + 1)

end A338649

/-! ## A338649.P849014355226679083

`A321014(n+1)-A011765(n+1)-A321013(A332818(n+1))`
-/

namespace A338649.P849014355226679083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (n + 1) - A011765 (n + 1) - A321013 (A332818 (n + 1)).toNat

end

end A338649.P849014355226679083

namespace A338649

/-- `A321014(n+1)-A011765(n+1)-A321013(A332818(n+1))` -/
def P849014355226679083.Spec : Prop :=
  ∀ n, P849014355226679083.a n = A338649 (n + 1)

end A338649

/-!
# A338650: Number of divisors of n which are greater than 6.

The programs for A338650, the canonical program `A338650.P8852648492989549153` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338650 has offset 1).

The definition of A338650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338650.P11160736370108868532

`∑{d}[n+1, round(log2(atan(#)))]`
-/

namespace A338650.P11160736370108868532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (Real.logb 2 (Real.arctan (d : ℝ)))

end

end A338650.P11160736370108868532

namespace A338650

/-- `∑{d}[n+1, round(log2(atan(#)))]` -/
def P11160736370108868532.Spec : Prop :=
  ∀ n, P11160736370108868532.a n = A338650 (n + 1)

end A338650

/-! ## A338650.P8852648492989549153

`∑{d}[n+1, C(6%#, 6)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338650

/-- `∑{d}[n+1, C(6%#, 6)]` -/
def P8852648492989549153.Spec : Prop :=
  ∀ n, (P8852648492989549153.a n : ℤ) = A338650 (n + 1)

theorem P8852648492989549153.correct : P8852648492989549153.Spec := by
  intro n
  simp only [A338650, Nat.add_sub_cancel]

end A338650

/-! ## A338650.P11905405557446295090

`∑{d}[n+1, A185117(#)]`
-/

namespace A338650.P11905405557446295090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A185117 d

end

end A338650.P11905405557446295090

namespace A338650

/-- `∑{d}[n+1, A185117(#)]` -/
def P11905405557446295090.Spec : Prop :=
  ∀ n, P11905405557446295090.a n = A338650 (n + 1)

end A338650

/-! ## A338650.P8532221632429677132

`∑{d}[n+1, A185118(#+1)]`
-/

namespace A338650.P8532221632429677132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A185118 (d + 1)

end

end A338650.P8532221632429677132

namespace A338650

/-- `∑{d}[n+1, A185118(#+1)]` -/
def P8532221632429677132.Spec : Prop :=
  ∀ n, P8532221632429677132.a n = A338650 (n + 1)

end A338650

/-! ## A338650.P7893477065358908858

`A338651(A290641(n+1))`
-/

namespace A338650.P7893477065358908858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338651 (A290641 (n + 1)).toNat

end

end A338650.P7893477065358908858

namespace A338650

/-- `A338651(A290641(n+1))` -/
def P7893477065358908858.Spec : Prop :=
  ∀ n, P7893477065358908858.a n = A338650 (n + 1)

end A338650

/-! ## A338650.P11493986080926092261

`A338651(A357977(n+1))`
-/

namespace A338650.P11493986080926092261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338651 (A357977 (n + 1)).toNat

end

end A338650.P11493986080926092261

namespace A338650

/-- `A338651(A357977(n+1))` -/
def P11493986080926092261.Spec : Prop :=
  ∀ n, P11493986080926092261.a n = A338650 (n + 1)

end A338650

/-!
# A338651: Number of divisors of n which are greater than 7.

The programs for A338651, the canonical program `A338651.P3584200837895763524` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338651 has offset 1).

The definition of A338651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338651.P41845902249705057

`∑{d}[n+1, A129251(A072376(#))]`
-/

namespace A338651.P41845902249705057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129251 (A072376 d).toNat

end

end A338651.P41845902249705057

namespace A338651

/-- `∑{d}[n+1, A129251(A072376(#))]` -/
def P41845902249705057.Spec : Prop :=
  ∀ n, P41845902249705057.a n = A338651 (n + 1)

end A338651

/-! ## A338651.P3584200837895763524

`∑{d}[n+1, A185118(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338651

/-- `∑{d}[n+1, A185118(#)]` -/
def P3584200837895763524.Spec : Prop :=
  ∀ n, P3584200837895763524.a n = A338651 (n + 1)

theorem P3584200837895763524.correct : P3584200837895763524.Spec := by
  intro n
  simp only [A338651, Nat.add_sub_cancel]

end A338651

/-! ## A338651.P2163169343836478662

`A338650(n+1)-A082784(n+1)`
-/

namespace A338651.P2163169343836478662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338650 (n + 1) - A082784 (n + 1)

end

end A338651.P2163169343836478662

namespace A338651

/-- `A338650(n+1)-A082784(n+1)` -/
def P2163169343836478662.Spec : Prop :=
  ∀ n, P2163169343836478662.a n = A338651 (n + 1)

end A338651

/-! ## A338651.P16234667101320538120

`∑{d}[n+1, A185119(#+1)]`
-/

namespace A338651.P16234667101320538120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A185119 (d + 1)

end

end A338651.P16234667101320538120

namespace A338651

/-- `∑{d}[n+1, A185119(#+1)]` -/
def P16234667101320538120.Spec : Prop :=
  ∀ n, P16234667101320538120.a n = A338651 (n + 1)

end A338651

/-! ## A338651.P15114725901181209857

`A338652(n+1)+A321013(A319525(n+1))`
-/

namespace A338651.P15114725901181209857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338652 (n + 1) + A321013 (A319525 (n + 1)).toNat

end

end A338651.P15114725901181209857

namespace A338651

/-- `A338652(n+1)+A321013(A319525(n+1))` -/
def P15114725901181209857.Spec : Prop :=
  ∀ n, P15114725901181209857.a n = A338651 (n + 1)

end A338651

/-! ## A338651.P5855799003488011450

`A321013(A319525(n+1))+A338649(n+1)-A321013(n+1)`
-/

namespace A338651.P5855799003488011450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321013 (A319525 (n + 1)).toNat + (A338649 (n + 1) - A321013 (n + 1))

end

end A338651.P5855799003488011450

namespace A338651

/-- `A321013(A319525(n+1))+A338649(n+1)-A321013(n+1)` -/
def P5855799003488011450.Spec : Prop :=
  ∀ n, P5855799003488011450.a n = A338651 (n + 1)

end A338651

/-! ## A338651.P15301510639741421045

`A338650(n+1)-A321013(A348746(n+1))`
-/

namespace A338651.P15301510639741421045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338650 (n + 1) - A321013 (A348746 (n + 1)).toNat

end

end A338651.P15301510639741421045

namespace A338651

/-- `A338650(n+1)-A321013(A348746(n+1))` -/
def P15301510639741421045.Spec : Prop :=
  ∀ n, P15301510639741421045.a n = A338651 (n + 1)

end A338651

/-!
# A338652: Number of divisors of n which are greater than 8.

The programs for A338652, the canonical program `A338652.P3214220023861582878` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338652 has offset 1).

The definition of A338652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338652.P3214220023861582878

`∑{d}[n+1, C(8%#, 8)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338652

/-- `∑{d}[n+1, C(8%#, 8)]` -/
def P3214220023861582878.Spec : Prop :=
  ∀ n, (P3214220023861582878.a n : ℤ) = A338652 (n + 1)

theorem P3214220023861582878.correct : P3214220023861582878.Spec := by
  intro n
  simp only [A338652, Nat.add_sub_cancel]

end A338652

/-! ## A338652.P3921670949127066818

`∑{d}[n+1, floor(atan(ceil(#/8)))]`
-/

namespace A338652.P3921670949127066818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (⌈(d : ℚ) / 8⌉ : ℝ)⌋

end

end A338652.P3921670949127066818

namespace A338652

/-- `∑{d}[n+1, floor(atan(ceil(#/8)))]` -/
def P3921670949127066818.Spec : Prop :=
  ∀ n, P3921670949127066818.a n = A338652 (n + 1)

end A338652

/-! ## A338652.P3990852440510600018

`A338651(n+1)-char[record[xor(7, n)]]`
-/

namespace A338652.P3990852440510600018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338651 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A338652.P3990852440510600018

namespace A338652

/-- `A338651(n+1)-char[record[xor(7, n)]]` -/
def P3990852440510600018.Spec : Prop :=
  ∀ n, P3990852440510600018.a n = A338652 (n + 1)

end A338652

/-! ## A338652.P11869311436879075620

`A338649(n+1)-A321013(n+1)`
-/

namespace A338652.P11869311436879075620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338649 (n + 1) - A321013 (n + 1)

end

end A338652.P11869311436879075620

namespace A338652

/-- `A338649(n+1)-A321013(n+1)` -/
def P11869311436879075620.Spec : Prop :=
  ∀ n, P11869311436879075620.a n = A338652 (n + 1)

end A338652

/-! ## A338652.P11381740967542702101

`∑{d}[n+1, A185119(#)]`
-/

namespace A338652.P11381740967542702101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A185119 d

end

end A338652.P11381740967542702101

namespace A338652

/-- `∑{d}[n+1, A185119(#)]` -/
def P11381740967542702101.Spec : Prop :=
  ∀ n, P11381740967542702101.a n = A338652 (n + 1)

end A338652

/-! ## A338652.P9365112733433505992

`∑{d}[n+1, A000927(#)*A297037((n+1)/#)]`
-/

namespace A338652.P9365112733433505992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000927 d * A297037 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338652.P9365112733433505992

namespace A338652

/-- `∑{d}[n+1, A000927(#)*A297037((n+1)/#)]` -/
def P9365112733433505992.Spec : Prop :=
  ∀ n, P9365112733433505992.a n = A338652 (n + 1)

end A338652

/-! ## A338652.P17102830121803487657

`∑{d}[n+1, A064268(#)*A297037((n+1)/#)]`
-/

namespace A338652.P17102830121803487657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064268 d * A297037 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338652.P17102830121803487657

namespace A338652

/-- `∑{d}[n+1, A064268(#)*A297037((n+1)/#)]` -/
def P17102830121803487657.Spec : Prop :=
  ∀ n, P17102830121803487657.a n = A338652 (n + 1)

end A338652

/-!
# A338653: Number of divisors of n which are greater than 9.

The programs for A338653, the canonical program `A338653.P12197485443038469719` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338653 has offset 1).

The definition of A338653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338653.P12197485443038469719

`∑{d}[n+1, C(9%#, 9)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338653

/-- `∑{d}[n+1, C(9%#, 9)]` -/
def P12197485443038469719.Spec : Prop :=
  ∀ n, (P12197485443038469719.a n : ℤ) = A338653 (n + 1)

theorem P12197485443038469719.correct : P12197485443038469719.Spec := by
  intro n
  simp only [A338653, Nat.add_sub_cancel]

end A338653

/-! ## A338653.P12005192735750286354

`∏{e}[n+1, #+1]-A242627(n+1)`
-/

namespace A338653.P12005192735750286354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A242627 (n + 1)

end

end A338653.P12005192735750286354

namespace A338653

/-- `∏{e}[n+1, #+1]-A242627(n+1)` -/
def P12005192735750286354.Spec : Prop :=
  ∀ n, P12005192735750286354.a n = A338653 (n + 1)

end A338653

/-! ## A338653.P2052804760381028776

`A000005(n+1)-A242627(n+1)`
-/

namespace A338653.P2052804760381028776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A242627 (n + 1)

end

end A338653.P2052804760381028776

namespace A338653

/-- `A000005(n+1)-A242627(n+1)` -/
def P2052804760381028776.Spec : Prop :=
  ∀ n, P2052804760381028776.a n = A338653 (n + 1)

end A338653

/-! ## A338653.P3027795913279708463

`A087990(n+1)+A087991(n+1)-A242627(n+1)`
-/

namespace A338653.P3027795913279708463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A242627 (n + 1))

end

end A338653.P3027795913279708463

namespace A338653

/-- `A087990(n+1)+A087991(n+1)-A242627(n+1)` -/
def P3027795913279708463.Spec : Prop :=
  ∀ n, P3027795913279708463.a n = A338653 (n + 1)

end A338653

/-! ## A338653.P12938080794517798342

`∑{d}[n+1, floor(atan(A029135(#)))]`
-/

namespace A338653.P12938080794517798342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (A029135 d : ℝ)⌋

end

end A338653.P12938080794517798342

namespace A338653

/-- `∑{d}[n+1, floor(atan(A029135(#)))]` -/
def P12938080794517798342.Spec : Prop :=
  ∀ n, P12938080794517798342.a n = A338653 (n + 1)

end A338653

/-! ## A338653.P9032900073169834976

`∑{d}[n+1, A268199(#-1)*A297038((n+1)/#)]`
-/

namespace A338653.P9032900073169834976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A268199 (d - 1) * A297038 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338653.P9032900073169834976

namespace A338653

/-- `∑{d}[n+1, A268199(#-1)*A297038((n+1)/#)]` -/
def P9032900073169834976.Spec : Prop :=
  ∀ n, P9032900073169834976.a n = A338653 (n + 1)

end A338653

/-! ## A338653.P12715972653608437163

`∑{d}[n+1, A205303(#)*A297038((n+1)/#)]`
-/

namespace A338653.P12715972653608437163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A205303 d * A297038 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338653.P12715972653608437163

namespace A338653

/-- `∑{d}[n+1, A205303(#)*A297038((n+1)/#)]` -/
def P12715972653608437163.Spec : Prop :=
  ∀ n, P12715972653608437163.a n = A338653 (n + 1)

end A338653

/-! ## A338653.P7413122525209985390

`∑{d}[n+1, A000927(#)*A297038((n+1)/#)]`
-/

namespace A338653.P7413122525209985390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000927 d * A297038 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338653.P7413122525209985390

namespace A338653

/-- `∑{d}[n+1, A000927(#)*A297038((n+1)/#)]` -/
def P7413122525209985390.Spec : Prop :=
  ∀ n, P7413122525209985390.a n = A338653 (n + 1)

end A338653

/-!
# A338654: T(n, k) = 2^n * Product_{j=1..k} (j/2)^((-1)^(j - 1)). Triangle read by rows, for 0 <= k <= n.

The programs for A338654, the canonical program `A338654.P4635307025439918129` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338654 has offset 0).

The definition of A338654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338654.P4635307025439918129

`A056040(A002262(n))*A130321(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338654

/-- `A056040(A002262(n))*A130321(n)` -/
def P4635307025439918129.Spec : Prop :=
  ∀ n, P4635307025439918129.a n = A338654 n

theorem P4635307025439918129.correct : P4635307025439918129.Spec := by
  intro n
  simp only [A338654]

end A338654

/-! ## A338654.P220953793982274385

`A056040(A144328(n+1))*A130321(n)`
-/

namespace A338654.P220953793982274385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A144328 (n + 1)).toNat * A130321 n

end

end A338654.P220953793982274385

namespace A338654

/-- `A056040(A144328(n+1))*A130321(n)` -/
def P220953793982274385.Spec : Prop :=
  ∀ n, P220953793982274385.a n = A338654 n

end A338654

/-! ## A338654.P5484174405269442561

`A000079(A025581(n))*A056040(A002262(n))`
-/

namespace A338654.P5484174405269442561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A056040 (A002262 n).toNat

end

end A338654.P5484174405269442561

namespace A338654

/-- `A000079(A025581(n))*A056040(A002262(n))` -/
def P5484174405269442561.Spec : Prop :=
  ∀ n, P5484174405269442561.a n = A338654 n

end A338654

/-! ## A338654.P2621297518899156715

`A056040(A144328(n+1))*A059268(A061579(n))`
-/

namespace A338654.P2621297518899156715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A144328 (n + 1)).toNat * A059268 (A061579 n).toNat

end

end A338654.P2621297518899156715

namespace A338654

/-- `A056040(A144328(n+1))*A059268(A061579(n))` -/
def P2621297518899156715.Spec : Prop :=
  ∀ n, P2621297518899156715.a n = A338654 n

end A338654

/-! ## A338654.P1958489837446564091

`A056040(A002262(n))/A013610(n)*A013620(n)`
-/

namespace A338654.P1958489837446564091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (A002262 n).toNat : ℚ) / (A013610 n : ℚ) * (A013620 n : ℚ)

end

end A338654.P1958489837446564091

namespace A338654

/-- `A056040(A002262(n))/A013610(n)*A013620(n)` -/
def P1958489837446564091.Spec : Prop :=
  ∀ n, P1958489837446564091.a n = (A338654 n : ℚ)

end A338654

/-! ## A338654.P9902259826760671408

`A130321(n)*A182073(A112367(n))`
-/

namespace A338654.P9902259826760671408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A182073 (A112367 n).toNat

end

end A338654.P9902259826760671408

namespace A338654

/-- `A130321(n)*A182073(A112367(n))` -/
def P9902259826760671408.Spec : Prop :=
  ∀ n, P9902259826760671408.a n = A338654 n

end A338654

/-! ## A338654.P12826495745737214059

`A130321(n)/A119502(n)*A349269(n)`
-/

namespace A338654.P12826495745737214059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130321 n : ℚ) / (A119502 n : ℚ) * (A349269 n : ℚ)

end

end A338654.P12826495745737214059

namespace A338654

/-- `A130321(n)/A119502(n)*A349269(n)` -/
def P12826495745737214059.Spec : Prop :=
  ∀ n, P12826495745737214059.a n = (A338654 n : ℚ)

end A338654

/-!
# A338658: a(n) = Sum_{d|n} d * binomial(d+n/d-1, d).

The programs for A338658, there is no canonical definition to state claims against.
-/

/-! ## A338658.P3714039612720568100

`2*A157020(n+1)-A157019(n+1)`
-/

namespace A338658.P3714039612720568100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157020 (n + 1) - A157019 (n + 1)

end

end A338658.P3714039612720568100

/-! ## A338658.P3696869204626106962

`A004277(A157020(n+1))-A157019(n+1)`
-/

namespace A338658.P3696869204626106962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A157020 (n + 1)).toNat - A157019 (n + 1)

end

end A338658.P3696869204626106962

/-! ## A338658.P3013521715910628611

`A004277(∑{d}[n+1, A156833(#)])-A157019(n+1)`
-/

namespace A338658.P3013521715910628611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ d ∈ Nat.divisors (f1 n), A156833 d).toNat - A157019 (n + 1)

end

end A338658.P3013521715910628611

/-! ## A338658.P750689821038081429

`A005843(∑{d}[n+1, A156833(#)])-A157019(n+1)`
-/

namespace A338658.P750689821038081429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ d ∈ Nat.divisors (f1 n), A156833 d).toNat - A157019 (n + 1)

end

end A338658.P750689821038081429

/-!
# A338662: a(n) = Sum_{d|n} (n/d)^d * binomial(d+n/d-1, d).

The programs for A338662, there is no canonical definition to state claims against.
-/

/-! ## A338662.P9777898182856257063

`p?[A068905(n+1)]-A029656(n+1)`
-/

namespace A338662.P9777898182856257063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A029656 (n + 1)

end

end A338662.P9777898182856257063

/-! ## A338662.P11043021066882744563

`or(∑{d}[n+1, #²], A175503(A053699(n)))`
-/

namespace A338662.P11043021066882744563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) (A175503 (A053699 n).toNat)

end

end A338662.P11043021066882744563

/-!
# A338663: a(n) = Sum_{d|n} (n/d)^n * binomial(d+n/d-1, d).

The programs for A338663, there is no canonical definition to state claims against.
-/

/-! ## A338663.P17188924438322999062

`A294645(n+1)+A292370(∑[10^n])`
-/

namespace A338663.P17188924438322999062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294645 (n + 1) + A292370 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338663.P17188924438322999062

/-!
# A338665: 

The programs for A338665, there is no canonical definition to state claims against.
-/

/-! ## A338665.P139779826284554332

`((n+2)!²/2)^(n+2)`
-/

namespace A338665.P139779826284554332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 2) ^ 2 : ℚ) / 2) ^ (n + 2)

end

end A338665.P139779826284554332

/-! ## A338665.P9042753077511630940

`(∏[(n+2)²]/2)^(n+2)`
-/

namespace A338665.P9042753077511630940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ (n + 2)

end

end A338665.P9042753077511630940

/-!
# A338666: a(1)=1 and a(2)=2. For all n > 2, a(n) is the smallest number > a(n-1) by a number > the difference between a(n-1) and a(n-2) so that consecutive terms of sequence are always relatively prime.

The programs for A338666, there is no canonical definition to state claims against.
-/

/-! ## A338666.P6040881065587689859

`A062096(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A338666.P6040881065587689859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A062096 n + a (n - 1)

end

end A338666.P6040881065587689859

/-! ## A338666.P8124632477661190957

`A359077(A005228(n+1)-n)`
-/

namespace A338666.P8124632477661190957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359077 (A005228 (n + 1) - (n : ℤ)).toNat

end

end A338666.P8124632477661190957

/-! ## A338666.P9097688114054420852

`A232753(xor(n, A082107(n)))`
-/

namespace A338666.P9097688114054420852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (Int.xor (n : ℤ) (A082107 n)).toNat

end

end A338666.P9097688114054420852

/-! ## A338666.P9540244517612908671

`A002522(n)-A061395(A131446(n+1))`
-/

namespace A338666.P9540244517612908671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - A061395 (A131446 (n + 1)).toNat

end

end A338666.P9540244517612908671

/-!
# A338667: Numbers that are the sum of two positive cubes in exactly one way.

The programs for A338667, there is no canonical definition to state claims against.
-/

/-! ## A338667.P16102544336015062530

`record[A003325(n+1)/A025455(A003325(n+1))]`
-/

namespace A338667.P16102544336015062530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003325 (n + 1) : ℚ) / (A025455 (A003325 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338667.P16102544336015062530

/-! ## A338667.P10472532714807725746

`eq[1, A025455(n)]`
-/

namespace A338667.P10472532714807725746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338667.P10472532714807725746

/-! ## A338667.P8991510616156091563

`lt[A025468(n)², A280618(n)]`
-/

namespace A338667.P8991510616156091563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338667.P8991510616156091563

/-! ## A338667.P9091361209726851442

`eq[A010057(A175362(n)), A025464(n)]`
-/

namespace A338667.P9091361209726851442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A175362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338667.P9091361209726851442

/-! ## A338667.P12716360228553593739

`eq[A010057(n), A175372(A175362(n))]`
-/

namespace A338667.P12716360228553593739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 (A175362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338667.P12716360228553593739

/-!
# A338668: a(n) is the rightmost prime number in prime tower factorization of n; a(1) = 1.

The programs for A338668, there is no canonical definition to state claims against.
-/

/-! ## A338668.P18042159404040468666

`A287620(A323129(n+1))`
-/

namespace A338668.P18042159404040468666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287620 (A323129 (n + 1)).toNat

end

end A338668.P18042159404040468666

/-! ## A338668.P18324071477075555192

`A304491(and(-1, A323129(n+1)))`
-/

namespace A338668.P18324071477075555192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (Int.land (-1) (A323129 (n + 1))).toNat

end

end A338668.P18324071477075555192

/-! ## A338668.P6367512352437741642

`A304491(gcd(n+1, A323129(n+1)))`
-/

namespace A338668.P6367512352437741642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (Int.gcd (n + 1 : ℤ) (A323129 (n + 1)))

end

end A338668.P6367512352437741642

/-! ## A338668.P6084855815374698408

`gcd(A000038(n), A304491(A323129(n+1)))`
-/

namespace A338668.P6084855815374698408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A304491 (A323129 (n + 1)).toNat)

end

end A338668.P6084855815374698408

/-! ## A338668.P15894991726103772438

`A304491(or(A000007(n), A323129(n+1)))`
-/

namespace A338668.P15894991726103772438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (Int.lor (A000007 n) (A323129 (n + 1))).toNat

end

end A338668.P15894991726103772438

/-! ## A338668.P13498039128224639213

`∑{d}[A304491(A323129(n+1)), A000010(#)]`
-/

namespace A338668.P13498039128224639213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (A323129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A338668.P13498039128224639213

/-! ## A338668.P5629270484826339284

`∏{d}[A304491(A323129(n+1)), A014963(#)]`
-/

namespace A338668.P5629270484826339284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (A323129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A338668.P5629270484826339284

/-! ## A338668.P17197734131528063889

`A287620(A053585(n+1))/A064372(A053585(n+1))`
-/

namespace A338668.P17197734131528063889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287620 (A053585 (n + 1)).toNat : ℚ) / (A064372 (A053585 (n + 1)).toNat : ℚ)

end

end A338668.P17197734131528063889

/-! ## A338668.P17601372452682157998

`A304491(A323129(n+1))%∑[A014963(n+2)]`
-/

namespace A338668.P17601372452682157998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304491 (A323129 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338668.P17601372452682157998

/-!
# A338669: The prime tower factorization of a(n) is obtained by replacing the rightmost prime number by 1 in the prime tower factorization of n; a(1) = 1.

The programs for A338669, there is no canonical definition to state claims against.
-/

/-! ## A338669.P4927479711549953530

`gcd(A052126(n+1), A272860((n+1)/4^val(n+1, 4)))`
-/

namespace A338669.P4927479711549953530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052126 (n + 1)) (A272860 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat)

end

end A338669.P4927479711549953530

/-! ## A338669.P265097056642421841

`gcd(A052126(n+1), A145892(A066990(n+1)))`
-/

namespace A338669.P265097056642421841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052126 (n + 1)) (A145892 (A066990 (n + 1)).toNat)

end

end A338669.P265097056642421841

/-! ## A338669.P3722290698342696029

`A015052(A052126(n+1)^A345934(n+1))`
-/

namespace A338669.P3722290698342696029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (SequenceMachineLib.roundAway ((A052126 (n + 1) : ℚ) ^ (A345934 (n + 1) : ℤ))).toNat

end

end A338669.P3722290698342696029

/-! ## A338669.P6670171874625843153

`A060938(gcd(A050399(n+1), A185255(n)))`
-/

namespace A338669.P6670171874625843153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060938 (Int.gcd (A050399 (n + 1)) (A185255 n))

end

end A338669.P6670171874625843153

/-! ## A338669.P14904307839484250645

`A000188(record[A031285(n)-4]*A051119(n+1))`
-/

namespace A338669.P14904307839484250645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A051119 (n + 1)).toNat

end

end A338669.P14904307839484250645

/-!
# A338671: a(n) is the number of distinct ways of arranging n identical square tiles into two rectangles.

The programs for A338671, there is no canonical definition to state claims against.
-/

/-! ## A338671.P18045100426291896417

`A330572(n)-A212597(n+1)`
-/

namespace A338671.P18045100426291896417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330572 n - A212597 (n + 1)

end

end A338671.P18045100426291896417

/-! ## A338671.P7908800095144497993

`A212597(n+1)+A110654(A183063(n+1))`
-/

namespace A338671.P7908800095144497993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212597 (n + 1) + A110654 (A183063 (n + 1)).toNat

end

end A338671.P7908800095144497993

/-! ## A338671.P15634419663043770850

`A212597(n+1)+A034178(2*(n+1))`
-/

namespace A338671.P15634419663043770850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212597 (n + 1) + A034178 (2 * (n + 1))

end

end A338671.P15634419663043770850

/-! ## A338671.P13060545060904731703

`A110654(A330572(n)+A034178(2*(n+1)))`
-/

namespace A338671.P13060545060904731703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A330572 n + A034178 (2 * (n + 1))).toNat

end

end A338671.P13060545060904731703

/-!
# A338673: Expansion of Product_{k>=1} 1 / (1 - 4^(k-1)*x^k).

The programs for A338673, there is no canonical definition to state claims against.
-/

/-! ## A338673.P2084046397444676248

`A016813(5*a(n-2))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A338673.P2084046397444676248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A016813 (5 * a (n - 2)).toNat

end

end A338673.P2084046397444676248

/-! ## A338673.P15304039958688317218

`A314340(5*a(n-2))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A338673.P15304039958688317218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A314340 (5 * a (n - 2)).toNat

end

end A338673.P15304039958688317218

/-! ## A338673.P17606117826241221377

`A005408(10*a(n-2))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A338673.P17606117826241221377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A005408 (10 * a (n - 2)).toNat

end

end A338673.P17606117826241221377

/-! ## A338673.P2103255102922926529

`A026491(10*a(n-2))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A338673.P2103255102922926529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A026491 (10 * a (n - 2)).toNat

end

end A338673.P2103255102922926529

/-!
# A338674: Expansion of Product_{k>=1} 1 / (1 - 5^(k-1)*x^k).

The programs for A338674, there is no canonical definition to state claims against.
-/

/-! ## A338674.P6243667168841871786

`A016861(6*a(n-2))` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A338674.P6243667168841871786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  A016861 (6 * a (n - 2)).toNat

end

end A338674.P6243667168841871786

/-! ## A338674.P2956694932715647365

`A016777(10*a(n-2))` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A338674.P2956694932715647365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  A016777 (10 * a (n - 2)).toNat

end

end A338674.P2956694932715647365

/-! ## A338674.P758268184766854686

`A090771(6*a(n-2)+1)` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A338674.P758268184766854686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  A090771 (6 * a (n - 2) + 1).toNat

end

end A338674.P758268184766854686

/-! ## A338674.P7375021940211280327

`A023721(A338673(n))`
-/

namespace A338674.P7375021940211280327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (A338673 n).toNat

end

end A338674.P7375021940211280327

/-!
# A338675: Expansion of Product_{k>=1} 1 / (1 - 6^(k-1)*x^k).

The programs for A338675, there is no canonical definition to state claims against.
-/

/-! ## A338675.P5238103157763217236

`A016921(7*a(n-2))` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A338675.P5238103157763217236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  A016921 (7 * a (n - 2)).toNat

end

end A338675.P5238103157763217236

/-! ## A338675.P6208869723570853496

`A026226(7*a(n-2))` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A338675.P6208869723570853496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  A026226 (7 * a (n - 2)).toNat

end

end A338675.P6208869723570853496

/-! ## A338675.P11702532968379060128

`A271114(7*a(n-2))` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A338675.P11702532968379060128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  A271114 (7 * a (n - 2)).toNat

end

end A338675.P11702532968379060128

/-!
# A338676: Expansion of Product_{k>=1} 1 / (1 - 7^(k-1)*x^k).

The programs for A338676, there is no canonical definition to state claims against.
-/

/-! ## A338676.P7961964005914186561

`A016993(8*a(n-2))` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A338676.P7961964005914186561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 8] fun n a =>
  A016993 (8 * a (n - 2)).toNat

end

end A338676.P7961964005914186561

/-! ## A338676.P10176883787753712501

`A020658(A338675(n))`
-/

namespace A338676.P10176883787753712501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A338675 n).toNat

end

end A338676.P10176883787753712501

/-!
# A338677: Expansion of Product_{k>=1} 1 / (1 - 8^(k-1)*x^k).

The programs for A338677, there is no canonical definition to state claims against.
-/

/-! ## A338677.P10655128240077092771

`A000027(72*a(n-2)+1)` with `a(0)=1, a(1)=1, a(2)=9`
-/

namespace A338677.P10655128240077092771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 9] fun n a =>
  A000027 (72 * a (n - 2) + 1).toNat

end

end A338677.P10655128240077092771

/-! ## A338677.P15111721231376431394

`A017077(9*a(n-2))` with `a(0)=1, a(1)=1, a(2)=9`
-/

namespace A338677.P15111721231376431394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 9] fun n a =>
  A017077 (9 * a (n - 2)).toNat

end

end A338677.P15111721231376431394

/-! ## A338677.P15512891624077816994

`A000265(72*a(n-2)+1)` with `a(0)=1, a(1)=1, a(2)=9`
-/

namespace A338677.P15512891624077816994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 9] fun n a =>
  A000265 (72 * a (n - 2) + 1).toNat

end

end A338677.P15512891624077816994

/-!
# A338678: Expansion of Product_{k>=1} 1 / (1 - 9^(k-1)*x^k).

The programs for A338678, there is no canonical definition to state claims against.
-/

/-! ## A338678.P14608403677835183535

`A017173(10*a(n-2))` with `a(0)=1, a(1)=1, a(2)=10`
-/

namespace A338678.P14608403677835183535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 10] fun n a =>
  A017173 (10 * a (n - 2)).toNat

end

end A338678.P14608403677835183535

/-! ## A338678.P18201484746757117123

`A084984(A338674(n)+1)`
-/

namespace A338678.P18201484746757117123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (A338674 n + 1).toNat

end

end A338678.P18201484746757117123

/-!
# A338679: Expansion of Product_{k>=1} 1 / (1 - 10^(k-1)*x^k).

The programs for A338679, there is no canonical definition to state claims against.
-/

/-! ## A338679.P7852605667468944030

`A084544(A338673(n))`
-/

namespace A338679.P7852605667468944030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (A338673 n).toNat

end

end A338679.P7852605667468944030

/-! ## A338679.P2771761448055480551

`A001742(A338674(n))`
-/

namespace A338679.P2771761448055480551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (A338674 n).toNat

end

end A338679.P2771761448055480551

/-! ## A338679.P12255965226890587479

`A007091(and(-1, A338674(n)))`
-/

namespace A338679.P12255965226890587479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (Int.land (-1) (A338674 n)).toNat

end

end A338679.P12255965226890587479

/-!
# A338681: The number of factorizations of an n-element set. (Defined below in Comments.)

The programs for A338681, there is no canonical definition to state claims against.
-/

/-! ## A338681.P566538179362652907

`A325641(∑{e}[n+1, #]+n!)`
-/

namespace A338681.P566538179362652907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + Nat.factorial n)

end

end A338681.P566538179362652907

/-! ## A338681.P14889403833345991591

`A325641(A001222(n+1)+n!)`
-/

namespace A338681.P14889403833345991591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A001222 (n + 1) + (Nat.factorial n : ℤ)).toNat

end

end A338681.P14889403833345991591

/-! ## A338681.P16429719557528378406

`A325641(A325568(n+1)+n!)`
-/

namespace A338681.P16429719557528378406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A325568 (n + 1) + (Nat.factorial n : ℤ)).toNat

end

end A338681.P16429719557528378406

/-! ## A338681.P823923437369136350

`A325641(A000142(n)+∑{e}[n+1, #])`
-/

namespace A338681.P823923437369136350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A000142 n + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A338681.P823923437369136350

/-!
# A338682: a(n) = Sum_{d|n} (-1)^(d-1) * binomial(d+n/d-1, d).

The programs for A338682, there is no canonical definition to state claims against.
-/

/-! ## A338682.P2804841513798832486

`2*A340626(n+1)-A081543(n+1)`
-/

namespace A338682.P2804841513798832486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340626 (n + 1) - A081543 (n + 1)

end

end A338682.P2804841513798832486

/-! ## A338682.P11647590384407187455

`A004277(A340626(n+1))-A081543(n+1)`
-/

namespace A338682.P11647590384407187455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A340626 (n + 1)).toNat - A081543 (n + 1)

end

end A338682.P11647590384407187455

/-! ## A338682.P12932249781899988158

`A004277(A340626(n+1))-(A366974(n+1)+A157019(n+1))`
-/

namespace A338682.P12932249781899988158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A340626 (n + 1)).toNat - (A366974 (n + 1) + A157019 (n + 1))

end

end A338682.P12932249781899988158

/-!
# A338685: a(n) = Sum_{d|n} d^n * binomial(d, n/d).

The programs for A338685, there is no canonical definition to state claims against.
-/

/-! ## A338685.P12596889115577780007

`A066182(A294956(n+1))`
-/

namespace A338685.P12596889115577780007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A294956 (n + 1)).toNat

end

end A338685.P12596889115577780007

/-!
# A338686: Number of ways to write n as x^5 + y^2 + [z^2/7], where x,y,z are integers with x >= 0, y >= 1 and z >= 2, and [.] is the floor function.

The programs for A338686, there is no canonical definition to state claims against.
-/

/-! ## A338686.P17625683918219940817

`A338687(n+1)-A058343(A146607(n+1))`
-/

namespace A338686.P17625683918219940817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338687 (n + 1) - A058343 (A146607 (n + 1)).toNat

end

end A338686.P17625683918219940817

/-! ## A338686.P17288883321663836558

`A105528(A234247(n+1)%(2^n))`
-/

namespace A338686.P17288883321663836558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105528 (Int.tmod (A234247 (n + 1)) (2 ^ n : ℤ)).toNat

end

end A338686.P17288883321663836558

/-! ## A338686.P8074480788436511387

`A126305(A313708(n)+A250486(n))`
-/

namespace A338686.P8074480788436511387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 (A313708 n + A250486 n).toNat

end

end A338686.P8074480788436511387

/-! ## A338686.P14852257827895686632

`A338687(n+1)+A075553(A184955(n))`
-/

namespace A338686.P14852257827895686632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338687 (n + 1) + A075553 (A184955 n).toNat

end

end A338686.P14852257827895686632

/-! ## A338686.P568524884551583051

`A105528(A234247(n+1)-A000007(n))`
-/

namespace A338686.P568524884551583051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105528 (A234247 (n + 1) - A000007 n).toNat

end

end A338686.P568524884551583051

/-!
# A338687: Number of ways to write n as x^4 + y^2 + floor(z^2/7), where x,y,z are integers with x >= 0, y >= 1 and z >= 2.

The programs for A338687, there is no canonical definition to state claims against.
-/

/-! ## A338687.P7376615271654207516

`A338686(n+1)+A245794(∑[A245794(n)])`
-/

namespace A338687.P7376615271654207516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338686 (n + 1) + A245794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338687.P7376615271654207516

/-! ## A338687.P1000794173072086734

`A338686(n+1)+A058343(A146607(n+1))`
-/

namespace A338687.P1000794173072086734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338686 (n + 1) + A058343 (A146607 (n + 1)).toNat

end

end A338687.P1000794173072086734

/-! ## A338687.P12145273298385483103

`A338686(n+1)+A185274(2*A185215(n))`
-/

namespace A338687.P12145273298385483103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338686 (n + 1) + A185274 (2 * A185215 n).toNat

end

end A338687.P12145273298385483103

/-! ## A338687.P8099766537061357628

`A078313(record[7-A125694(n)])`
-/

namespace A338687.P8099766537061357628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A125694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078313 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338687.P8099766537061357628

/-! ## A338687.P7381311661046814418

`A338686(n+1)+A044941(A000079(n))`
-/

namespace A338687.P7381311661046814418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338686 (n + 1) + A044941 (A000079 n).toNat

end

end A338687.P7381311661046814418

/-!
# A338689: a(n) = Sum_{d|n} (-1)^(d-1) * (n/d)^n * binomial(d+n/d-2, d-1).

The programs for A338689, there is no canonical definition to state claims against.
-/

/-! ## A338689.P3994593209572254088

`A007489(n)+A003188(A110501(n+2))`
-/

namespace A338689.P3994593209572254088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n + A003188 (A110501 (n + 2)).toNat

end

end A338689.P3994593209572254088

/-!
# A338690: Inverse Moebius transform of A209615.

The programs for A338690, the canonical program `A338690.P145908305422629450` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338690 has offset 1).

The definition of A338690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338690.P145908305422629450

`∑{d}[n+1, A209615(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338690

/-- `∑{d}[n+1, A209615(#)]` -/
def P145908305422629450.Spec : Prop :=
  ∀ n, P145908305422629450.a n = A338690 (n + 1)

theorem P145908305422629450.correct : P145908305422629450.Spec := by
  intro n
  simp only [A338690, Nat.add_sub_cancel]

end A338690

/-! ## A338690.P1869095881599569143

`A008442(A065883(n+1))`
-/

namespace A338690.P1869095881599569143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008442 (A065883 (n + 1)).toNat

end

end A338690.P1869095881599569143

namespace A338690

/-- `A008442(A065883(n+1))` -/
def P1869095881599569143.Spec : Prop :=
  ∀ n, P1869095881599569143.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P1262457104737842848

`A002654(n+1)*A091949(n)`
-/

namespace A338690.P1262457104737842848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A091949 n

end

end A338690.P1262457104737842848

namespace A338690

/-- `A002654(n+1)*A091949(n)` -/
def P1262457104737842848.Spec : Prop :=
  ∀ n, P1262457104737842848.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P12991244182748774371

`A002654(n+1)*A106665(n)`
-/

namespace A338690.P12991244182748774371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A106665 n

end

end A338690.P12991244182748774371

namespace A338690

/-- `A002654(n+1)*A106665(n)` -/
def P12991244182748774371.Spec : Prop :=
  ∀ n, P12991244182748774371.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P7102660496251922558

`A002654(n+1)*A035263(n+1)`
-/

namespace A338690.P7102660496251922558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A035263 (n + 1)

end

end A338690.P7102660496251922558

namespace A338690

/-- `A002654(n+1)*A035263(n+1)` -/
def P7102660496251922558.Spec : Prop :=
  ∀ n, P7102660496251922558.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P9317243591020278952

`A002654(n+1)*A372574(n+1)`
-/

namespace A338690.P9317243591020278952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A372574 (n + 1)

end

end A338690.P9317243591020278952

namespace A338690

/-- `A002654(n+1)*A372574(n+1)` -/
def P9317243591020278952.Spec : Prop :=
  ∀ n, P9317243591020278952.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P4961380030948001155

`A002654(n+1)*A373136(n+1)`
-/

namespace A338690.P4961380030948001155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A373136 (n + 1)

end

end A338690.P4961380030948001155

namespace A338690

/-- `A002654(n+1)*A373136(n+1)` -/
def P4961380030948001155.Spec : Prop :=
  ∀ n, P4961380030948001155.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P5640044861294252585

`A035154(n+1)*A372574(n+1)`
-/

namespace A338690.P5640044861294252585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) * A372574 (n + 1)

end

end A338690.P5640044861294252585

namespace A338690

/-- `A035154(n+1)*A372574(n+1)` -/
def P5640044861294252585.Spec : Prop :=
  ∀ n, P5640044861294252585.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P5194419676108178075

`A113446(n+1)*A372574(n+1)`
-/

namespace A338690.P5194419676108178075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (n + 1) * A372574 (n + 1)

end

end A338690.P5194419676108178075

namespace A338690

/-- `A113446(n+1)*A372574(n+1)` -/
def P5194419676108178075.Spec : Prop :=
  ∀ n, P5194419676108178075.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P4820558503039204352

`A138950(n+1)*A372574(n+1)`
-/

namespace A338690.P4820558503039204352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 (n + 1) * A372574 (n + 1)

end

end A338690.P4820558503039204352

namespace A338690

/-- `A138950(n+1)*A372574(n+1)` -/
def P4820558503039204352.Spec : Prop :=
  ∀ n, P4820558503039204352.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P14512809183797272558

`A163746(n+1)*A372574(n+1)`
-/

namespace A338690.P14512809183797272558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (n + 1) * A372574 (n + 1)

end

end A338690.P14512809183797272558

namespace A338690

/-- `A163746(n+1)*A372574(n+1)` -/
def P14512809183797272558.Spec : Prop :=
  ∀ n, P14512809183797272558.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P4032820556848205165

`lcm(A002654(n+1), A029883(n+1))`
-/

namespace A338690.P4032820556848205165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002654 (n + 1)) (A029883 (n + 1))

end

end A338690.P4032820556848205165

namespace A338690

/-- `lcm(A002654(n+1), A029883(n+1))` -/
def P4032820556848205165.Spec : Prop :=
  ∀ n, (P4032820556848205165.a n : ℤ) = A338690 (n + 1)

end A338690

/-! ## A338690.P11888065912187486825

`Δ[A014198(n)/4]*A035263(n+1)`
-/

namespace A338690.P11888065912187486825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014198 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A035263 (n + 1) : ℚ)

end

end A338690.P11888065912187486825

namespace A338690

/-- `Δ[A014198(n)/4]*A035263(n+1)` -/
def P11888065912187486825.Spec : Prop :=
  ∀ n, P11888065912187486825.a n = (A338690 (n + 1) : ℚ)

end A338690

/-! ## A338690.P2478731037888480402

`and(1, A003969(n+1))*A002654(n+1)`
-/

namespace A338690.P2478731037888480402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003969 (n + 1)) * A002654 (n + 1)

end

end A338690.P2478731037888480402

namespace A338690

/-- `and(1, A003969(n+1))*A002654(n+1)` -/
def P2478731037888480402.Spec : Prop :=
  ∀ n, P2478731037888480402.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P4093225336933976636

`and(1, A085296(n+1))*A002654(n+1)`
-/

namespace A338690.P4093225336933976636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A085296 (n + 1)) * A002654 (n + 1)

end

end A338690.P4093225336933976636

namespace A338690

/-- `and(1, A085296(n+1))*A002654(n+1)` -/
def P4093225336933976636.Spec : Prop :=
  ∀ n, P4093225336933976636.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P3730014373209160919

`∑{d}[n+1, A002654(#)*A154269((n+1)/#)]`
-/

namespace A338690.P3730014373209160919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338690.P3730014373209160919

namespace A338690

/-- `∑{d}[n+1, A002654(#)*A154269((n+1)/#)]` -/
def P3730014373209160919.Spec : Prop :=
  ∀ n, P3730014373209160919.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P16380052268093669446

`∑{d}[n+1, A091400(#)*A143259((n+1)/#)]`
-/

namespace A338690.P16380052268093669446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091400 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338690.P16380052268093669446

namespace A338690

/-- `∑{d}[n+1, A091400(#)*A143259((n+1)/#)]` -/
def P16380052268093669446.Spec : Prop :=
  ∀ n, P16380052268093669446.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P6081795864849730177

`∑{d}[n+1, A008836(#)*A256452((n+1)/#)]`
-/

namespace A338690.P6081795864849730177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A256452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338690.P6081795864849730177

namespace A338690

/-- `∑{d}[n+1, A008836(#)*A256452((n+1)/#)]` -/
def P6081795864849730177.Spec : Prop :=
  ∀ n, P6081795864849730177.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P12685576113511881729

`∑{d}[n+1, A034947(#)*A309873((n+1)/#)]`
-/

namespace A338690.P12685576113511881729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d * A309873 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338690.P12685576113511881729

namespace A338690

/-- `∑{d}[n+1, A034947(#)*A309873((n+1)/#)]` -/
def P12685576113511881729.Spec : Prop :=
  ∀ n, P12685576113511881729.a n = A338690 (n + 1)

end A338690

/-! ## A338690.P12274572146064806362

`∑{d}[n+1, A174273(#)*A275966((n+1)/#)]`
-/

namespace A338690.P12274572146064806362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174273 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338690.P12274572146064806362

namespace A338690

/-- `∑{d}[n+1, A174273(#)*A275966((n+1)/#)]` -/
def P12274572146064806362.Spec : Prop :=
  ∀ n, P12274572146064806362.a n = A338690 (n + 1)

end A338690

/-!
# A338691: Positions of (-1)'s in A209615.

The programs for A338691, the canonical program `A338691.P3970477865839426901` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338691 has offset 1).

The definition of A338691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338691.P1398759540273803764

`A343501(n+1)/2`
-/

namespace A338691.P1398759540273803764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343501 (n + 1) : ℚ) / 2

end

end A338691.P1398759540273803764

namespace A338691

/-- `A343501(n+1)/2` -/
def P1398759540273803764.Spec : Prop :=
  ∀ n, P1398759540273803764.a n = (A338691 (n + 1) : ℚ)

end A338691

/-! ## A338691.P3970477865839426901

`∪[A343500(n+1), A004767(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338691

/-- `∪[A343500(n+1), A004767(n)]` -/
def P3970477865839426901.Spec : Prop :=
  ∀ n, (P3970477865839426901.a n : ℤ) = A338691 (n + 1)

theorem P3970477865839426901.correct : P3970477865839426901.Spec := by
  intro n
  simp only [A338691, Nat.add_sub_cancel]

end A338691

/-! ## A338691.P2082150806958072815

`∪[A047531(n+1), A343500(n+1)]`
-/

namespace A338691.P2082150806958072815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338691.P2082150806958072815

namespace A338691

/-- `∪[A047531(n+1), A343500(n+1)]` -/
def P2082150806958072815.Spec : Prop :=
  ∀ n, (P2082150806958072815.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P14874391806232092014

`∪[A055050(n+1), A343500(n+1)]`
-/

namespace A338691.P14874391806232092014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338691.P14874391806232092014

namespace A338691

/-- `∪[A055050(n+1), A343500(n+1)]` -/
def P14874391806232092014.Spec : Prop :=
  ∀ n, (P14874391806232092014.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P4528311766075250239

`filter[n+1, A292077(#)]`
-/

namespace A338691.P4528311766075250239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292077 (f1 j) = 1) n)

end

end A338691.P4528311766075250239

namespace A338691

/-- `filter[n+1, A292077(#)]` -/
def P4528311766075250239.Spec : Prop :=
  ∀ n, (P4528311766075250239.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P9154111731919821806

`lt[A209615(n+1), 0]+1`
-/

namespace A338691.P9154111731919821806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A338691.P9154111731919821806

namespace A338691

/-- `lt[A209615(n+1), 0]+1` -/
def P9154111731919821806.Spec : Prop :=
  ∀ n, (P9154111731919821806.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P2175640379088039847

`eq[1, A292077(n+1)]+1`
-/

namespace A338691.P2175640379088039847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338691.P2175640379088039847

namespace A338691

/-- `eq[1, A292077(n+1)]+1` -/
def P2175640379088039847.Spec : Prop :=
  ∀ n, (P2175640379088039847.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P1200659747155856761

`record[1-(n+1)*A209615(n+2)]`
-/

namespace A338691.P1200659747155856761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n + 1 : ℤ) * A209615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338691.P1200659747155856761

namespace A338691

/-- `record[1-(n+1)*A209615(n+2)]` -/
def P1200659747155856761.Spec : Prop :=
  ∀ n, P1200659747155856761.a n = A338691 (n + 1)

end A338691

/-! ## A338691.P9563485783335317384

`lt[A209615(A028310(n)), 0]`
-/

namespace A338691.P9563485783335317384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A338691.P9563485783335317384

namespace A338691

/-- `lt[A209615(A028310(n)), 0]` -/
def P9563485783335317384.Spec : Prop :=
  ∀ n, (P9563485783335317384.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P8271821681392119284

`eq[A038189(n), A285384(n+1)]`
-/

namespace A338691.P8271821681392119284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338691.P8271821681392119284

namespace A338691

/-- `eq[A038189(n), A285384(n+1)]` -/
def P8271821681392119284.Spec : Prop :=
  ∀ n, (P8271821681392119284.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P16094688163119784363

`eq[A089013(n), A285383(n+1)]`
-/

namespace A338691.P16094688163119784363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338691.P16094688163119784363

namespace A338691

/-- `eq[A089013(n), A285383(n+1)]` -/
def P16094688163119784363.Spec : Prop :=
  ∀ n, (P16094688163119784363.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P3429863035475683937

`eq[A082410(n+1), A284948(n+1)]`
-/

namespace A338691.P3429863035475683937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338691.P3429863035475683937

namespace A338691

/-- `eq[A082410(n+1), A284948(n+1)]` -/
def P3429863035475683937.Spec : Prop :=
  ∀ n, (P3429863035475683937.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P8689266991908517561

`∩[A338692(n+1), A005843(n)]/2`
-/

namespace A338691.P8689266991908517561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A338691.P8689266991908517561

namespace A338691

/-- `∩[A338692(n+1), A005843(n)]/2` -/
def P8689266991908517561.Spec : Prop :=
  ∀ n, P8689266991908517561.a n = (A338691 (n + 1) : ℚ)

end A338691

/-! ## A338691.P8878683943097995484

`eq[A038189(n+1), 1-A096268(n)]+1`
-/

namespace A338691.P8878683943097995484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A338691.P8878683943097995484

namespace A338691

/-- `eq[A038189(n+1), 1-A096268(n)]+1` -/
def P8878683943097995484.Spec : Prop :=
  ∀ n, (P8878683943097995484.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P2528169349424309146

`∩[A338692(n+1), A348005(n+1)]/2`
-/

namespace A338691.P2528169349424309146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A338691.P2528169349424309146

namespace A338691

/-- `∩[A338692(n+1), A348005(n+1)]/2` -/
def P2528169349424309146.Spec : Prop :=
  ∀ n, P2528169349424309146.a n = (A338691 (n + 1) : ℚ)

end A338691

/-! ## A338691.P16789142021207704288

`∩[A338692(n+1), A051755(n+2)]/2`
-/

namespace A338691.P16789142021207704288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A338691.P16789142021207704288

namespace A338691

/-- `∩[A338692(n+1), A051755(n+2)]/2` -/
def P16789142021207704288.Spec : Prop :=
  ∀ n, P16789142021207704288.a n = (A338691 (n + 1) : ℚ)

end A338691

/-! ## A338691.P1349579650811659927

`eq[A006467(2*n)+2, A006467(2*n+1)]`
-/

namespace A338691.P1349579650811659927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006467 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006467 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338691.P1349579650811659927

namespace A338691

/-- `eq[A006467(2*n)+2, A006467(2*n+1)]` -/
def P1349579650811659927.Spec : Prop :=
  ∀ n, (P1349579650811659927.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P4511250883254578707

`lt[4, A006467(4*n)+1]`
-/

namespace A338691.P4511250883254578707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006467 (4 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338691.P4511250883254578707

namespace A338691

/-- `lt[4, A006467(4*n)+1]` -/
def P4511250883254578707.Spec : Prop :=
  ∀ n, (P4511250883254578707.a n : ℤ) = A338691 (n + 1)

end A338691

/-! ## A338691.P5298312131490463475

`eq[5, A006467(2*n)]/2`
-/

namespace A338691.P5298312131490463475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006467 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A338691.P5298312131490463475

namespace A338691

/-- `eq[5, A006467(2*n)]/2` -/
def P5298312131490463475.Spec : Prop :=
  ∀ n, P5298312131490463475.a n = (A338691 (n + 1) : ℚ)

end A338691

/-!
# A338692: Positions of 1's in A209615.

The programs for A338692, the canonical program `A338692.P11057652021479963878` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338692 has offset 1).

The definition of A338692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338692.P8574495800587425489

`A343500(n+1)/2`
-/

namespace A338692.P8574495800587425489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343500 (n + 1) : ℚ) / 2

end

end A338692.P8574495800587425489

namespace A338692

/-- `A343500(n+1)/2` -/
def P8574495800587425489.Spec : Prop :=
  ∀ n, P8574495800587425489.a n = (A338692 (n + 1) : ℚ)

end A338692

/-! ## A338692.P14204971062353690180

`comp[A338691(n+1)-1]+1`
-/

namespace A338692.P14204971062353690180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A338692.P14204971062353690180

namespace A338692

/-- `comp[A338691(n+1)-1]+1` -/
def P14204971062353690180.Spec : Prop :=
  ∀ n, (P14204971062353690180.a n : ℤ) = A338692 (n + 1)

end A338692

/-! ## A338692.P10694410150301654460

`A014682(A343500(n+1))`
-/

namespace A338692.P10694410150301654460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A343500 (n + 1)).toNat

end

end A338692.P10694410150301654460

namespace A338692

/-- `A014682(A343500(n+1))` -/
def P10694410150301654460.Spec : Prop :=
  ∀ n, P10694410150301654460.a n = A338692 (n + 1)

end A338692

/-! ## A338692.P919989087193115686

`∪[A343501(n+1), A016813(n)]`
-/

namespace A338692.P919989087193115686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338692.P919989087193115686

namespace A338692

/-- `∪[A343501(n+1), A016813(n)]` -/
def P919989087193115686.Spec : Prop :=
  ∀ n, (P919989087193115686.a n : ℤ) = A338692 (n + 1)

end A338692

/-! ## A338692.P17404520409587242383

`∪[A047438(n+1), A343501(n+1)]`
-/

namespace A338692.P17404520409587242383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338692.P17404520409587242383

namespace A338692

/-- `∪[A047438(n+1), A343501(n+1)]` -/
def P17404520409587242383.Spec : Prop :=
  ∀ n, (P17404520409587242383.a n : ℤ) = A338692 (n + 1)

end A338692

/-! ## A338692.P397069380839324527

`∪[A277549(n+1), A343501(n+1)]`
-/

namespace A338692.P397069380839324527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338692.P397069380839324527

namespace A338692

/-- `∪[A277549(n+1), A343501(n+1)]` -/
def P397069380839324527.Spec : Prop :=
  ∀ n, (P397069380839324527.a n : ℤ) = A338692 (n + 1)

end A338692

/-! ## A338692.P11057652021479963878

`eq[1, A209615(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338692

/-- `eq[1, A209615(n+1)]+1` -/
def P11057652021479963878.Spec : Prop :=
  ∀ n, (P11057652021479963878.a n : ℤ) = A338692 (n + 1)

theorem P11057652021479963878.correct : P11057652021479963878.Spec := by
  intro n
  simp only [A338692, Nat.add_sub_cancel]

end A338692

/-! ## A338692.P4046690451072321417

`lt[A292077(n+1), 1]+1`
-/

namespace A338692.P4046690451072321417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A338692.P4046690451072321417

namespace A338692

/-- `lt[A292077(n+1), 1]+1` -/
def P4046690451072321417.Spec : Prop :=
  ∀ n, (P4046690451072321417.a n : ℤ) = A338692 (n + 1)

end A338692

/-! ## A338692.P6300092638209520434

`eq[A038189(n+1), A096268(n)]+1`
-/

namespace A338692.P6300092638209520434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A338692.P6300092638209520434

namespace A338692

/-- `eq[A038189(n+1), A096268(n)]+1` -/
def P6300092638209520434.Spec : Prop :=
  ∀ n, (P6300092638209520434.a n : ℤ) = A338692 (n + 1)

end A338692

/-! ## A338692.P18147274456212900367

`∩[A338691(n+1), A003485(n)]/2`
-/

namespace A338692.P18147274456212900367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A338692.P18147274456212900367

namespace A338692

/-- `∩[A338691(n+1), A003485(n)]/2` -/
def P18147274456212900367.Spec : Prop :=
  ∀ n, P18147274456212900367.a n = (A338692 (n + 1) : ℚ)

end A338692

/-! ## A338692.P13544169779017865834

`∩[A047464(n+1), A338691(n+1)]/2`
-/

namespace A338692.P13544169779017865834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A338692.P13544169779017865834

namespace A338692

/-- `∩[A047464(n+1), A338691(n+1)]/2` -/
def P13544169779017865834.Spec : Prop :=
  ∀ n, P13544169779017865834.a n = (A338692 (n + 1) : ℚ)

end A338692

/-! ## A338692.P13358208528880244338

`∩[A157502(n+1), A338691(n+1)]/2`
-/

namespace A338692.P13358208528880244338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A338692.P13358208528880244338

namespace A338692

/-- `∩[A157502(n+1), A338691(n+1)]/2` -/
def P13358208528880244338.Spec : Prop :=
  ∀ n, P13358208528880244338.a n = (A338692 (n + 1) : ℚ)

end A338692

/-! ## A338692.P12156504102043575295

`eq[A038189(n), A284948(n+1)]`
-/

namespace A338692.P12156504102043575295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338692.P12156504102043575295

namespace A338692

/-- `eq[A038189(n), A284948(n+1)]` -/
def P12156504102043575295.Spec : Prop :=
  ∀ n, (P12156504102043575295.a n : ℤ) = A338692 (n + 1)

end A338692

/-! ## A338692.P12602572973750240707

`eq[A089013(n), A328979(n+1)]`
-/

namespace A338692.P12602572973750240707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338692.P12602572973750240707

namespace A338692

/-- `eq[A089013(n), A328979(n+1)]` -/
def P12602572973750240707.Spec : Prop :=
  ∀ n, (P12602572973750240707.a n : ℤ) = A338692 (n + 1)

end A338692

/-! ## A338692.P17337311825873274694

`eq[A082410(n+1), A285384(n+1)]`
-/

namespace A338692.P17337311825873274694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338692.P17337311825873274694

namespace A338692

/-- `eq[A082410(n+1), A285384(n+1)]` -/
def P17337311825873274694.Spec : Prop :=
  ∀ n, (P17337311825873274694.a n : ℤ) = A338692 (n + 1)

end A338692

/-! ## A338692.P14345677527517543779

`∩[A338691(n+1), A004275(n)]/2`
-/

namespace A338692.P14345677527517543779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A338692.P14345677527517543779

namespace A338692

/-- `∩[A338691(n+1), A004275(n)]/2` -/
def P14345677527517543779.Spec : Prop :=
  ∀ n, P14345677527517543779.a n = (A338692 (n + 1) : ℚ)

end A338692

/-! ## A338692.P9314515587445854803

`∩[A338691(n+1), A004277(n)]/2`
-/

namespace A338692.P9314515587445854803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A338692.P9314515587445854803

namespace A338692

/-- `∩[A338691(n+1), A004277(n)]/2` -/
def P9314515587445854803.Spec : Prop :=
  ∀ n, P9314515587445854803.a n = (A338692 (n + 1) : ℚ)

end A338692

/-! ## A338692.P1646023794382269765

`∩[A338691(n+1), A005843(n)]/2`
-/

namespace A338692.P1646023794382269765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A338692.P1646023794382269765

namespace A338692

/-- `∩[A338691(n+1), A005843(n)]/2` -/
def P1646023794382269765.Spec : Prop :=
  ∀ n, P1646023794382269765.a n = (A338692 (n + 1) : ℚ)

end A338692

/-! ## A338692.P8900741738834948419

`lt[A006467(2*n+1), A006467(2*n)]`
-/

namespace A338692.P8900741738834948419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006467 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006467 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338692.P8900741738834948419

namespace A338692

/-- `lt[A006467(2*n+1), A006467(2*n)]` -/
def P8900741738834948419.Spec : Prop :=
  ∀ n, (P8900741738834948419.a n : ℤ) = A338692 (n + 1)

end A338692

/-!
# A338693: a(n) = Sum_{d|n} d^(d - n/d) * binomial(d, n/d).

The programs for A338693, there is no canonical definition to state claims against.
-/

/-! ## A338693.P11842992144778403297

`A127296(n*ratio[gcd(2, n)])+A048861(n+1)`
-/

namespace A338693.P11842992144778403297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127296 (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))).toNat + A048861 (n + 1)

end

end A338693.P11842992144778403297

/-! ## A338693.P3547258278711318278

`or(A000312(n+1), A022307(A337038(n)))`
-/

namespace A338693.P3547258278711318278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000312 (n + 1)) (A022307 (A337038 n).toNat)

end

end A338693.P3547258278711318278

/-! ## A338693.P6620780191978246927

`or(A000312(n+1), A033111(A132831(2*n)))`
-/

namespace A338693.P6620780191978246927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000312 (n + 1)) (A033111 (A132831 (2 * n)).toNat)

end

end A338693.P6620780191978246927

/-!
# A338694: a(n) = Sum_{d|n} d^d * binomial(d, n/d).

The programs for A338694, there is no canonical definition to state claims against.
-/

/-! ## A338694.P17733081182821698430

`A322991((n+1)^(n+2))-n`
-/

namespace A338694.P17733081182821698430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322991 ((n + 1) ^ (n + 2)) - (n : ℤ)

end

end A338694.P17733081182821698430

/-!
# A338695: a(n) = Sum_{d|n} 2^(d-1) * binomial(d, n/d).

The programs for A338695, there is no canonical definition to state claims against.
-/

/-! ## A338695.P10988985180721292825

`A163823(A350851(n))`
-/

namespace A338695.P10988985180721292825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (A350851 n).toNat

end

end A338695.P10988985180721292825

/-! ## A338695.P17952782442984246610

`A163823(∑[A005246(n+2)])`
-/

namespace A338695.P17952782442984246610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338695.P17952782442984246610

/-!
# A338697: a(n) = [x^n] Product_{k>=1} 1 / (1 - n^(k-1)*x^k).

The programs for A338697, there is no canonical definition to state claims against.
-/

/-! ## A338697.P13304099208630382185

`A034936(A087052(n!))`
-/

namespace A338697.P13304099208630382185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (A087052 (Nat.factorial n)).toNat

end

end A338697.P13304099208630382185

/-! ## A338697.P3122336110821300314

`A249876(A020658(n!))`
-/

namespace A338697.P3122336110821300314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249876 (A020658 (Nat.factorial n)).toNat

end

end A338697.P3122336110821300314

/-!
# A338698: Lexicographically latest sequence of distinct nonnegative terms such that for any n >= 0, n and a(n) have the same number of 0's and the same number of 1's in their Zeckendorf-binary representations.

The programs for A338698, there is no canonical definition to state claims against.
-/

/-! ## A338698.P12244085005437023586

`∑{e}[A000079(n), A343150(#)]`
-/

namespace A338698.P12244085005437023586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A343150 (Nat.factorization (f1 n).natAbs p)

end

end A338698.P12244085005437023586

