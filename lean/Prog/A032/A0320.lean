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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A032000: "AFJ" (ordered, size, labeled) transform of 2,2,2,2,...

The programs for A032000, there is no canonical definition to state claims against.
-/

/-! ## A032000.P5272253122313139731

`2*A032038(n)-(A057427(n)+1)`
-/

namespace A032000.P5272253122313139731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032038 n - (A057427 n + 1)

end

end A032000.P5272253122313139731

/-! ## A032000.P12771540504023002461

`2*A032038(n)-(A001844(n)%(n+1)+1)`
-/

namespace A032000.P12771540504023002461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032038 n - (Int.tmod (A001844 n) (n + 1 : ℤ) + 1)

end

end A032000.P12771540504023002461

/-! ## A032000.P5959010305904516368

`2*A032038(n)-A014963(A001316(n))`
-/

namespace A032000.P5959010305904516368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032038 n - A014963 (A001316 n).toNat

end

end A032000.P5959010305904516368

/-! ## A032000.P16680083603864755124

`2*A032038(n)-A020639(A001223(n+1))`
-/

namespace A032000.P16680083603864755124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032038 n - A020639 (A001223 (n + 1)).toNat

end

end A032000.P16680083603864755124

/-!
# A032001: "AFJ" (ordered, size, labeled) transform of 2,1,1,1,...

The programs for A032001, there is no canonical definition to state claims against.
-/

/-! ## A032001.P12121141864110940249

`2*A032011(n)-A032013(n)`
-/

namespace A032001.P12121141864110940249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032011 n - A032013 n

end

end A032001.P12121141864110940249

/-! ## A032001.P13430453695971912260

`2*A032011(n)-A004273(A032051(n))`
-/

namespace A032001.P13430453695971912260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032011 n - A004273 (A032051 n).toNat

end

end A032001.P13430453695971912260

/-! ## A032001.P1442839502551556086

`A004277(A032011(n))-A032013(n)`
-/

namespace A032001.P1442839502551556086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032011 n).toNat - A032013 n

end

end A032001.P1442839502551556086

/-! ## A032001.P16864972694292756727

`A004277(A261836(∑[n]+n))-A032013(n)`
-/

namespace A032001.P16864972694292756727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A261836 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat - A032013 n

end

end A032001.P16864972694292756727

/-! ## A032001.P12293475970783999588

`A004277(2*A032049(n)-1)-A032013(n)`
-/

namespace A032001.P12293475970783999588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A032049 n - 1).toNat - A032013 n

end

end A032001.P12293475970783999588

/-!
# A032002: "AFJ" (ordered, size, labeled) transform of 1,2,3,4,...

The programs for A032002, there is no canonical definition to state claims against.
-/

/-! ## A032002.P8216662329800529469

`2*A032040(n)-A028310(n)`
-/

namespace A032002.P8216662329800529469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032040 n - A028310 n

end

end A032002.P8216662329800529469

/-! ## A032002.P8660728982091582456

`2*A032040(n)-A134478(∑[n])`
-/

namespace A032002.P8660728982091582456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032040 n - A134478 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032002.P8660728982091582456

/-! ## A032002.P10392580309078525313

`2*A032040(n)-(A000007(n)+n)`
-/

namespace A032002.P10392580309078525313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032040 n - (A000007 n + (n : ℤ))

end

end A032002.P10392580309078525313

/-! ## A032002.P11422638800526467645

`2*A032040(n)-A007318(∑[n]+1)`
-/

namespace A032002.P11422638800526467645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032040 n - A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A032002.P11422638800526467645

/-! ## A032002.P16719489044214955995

`2*A032040(n)+A057427(n)-(n+1)`
-/

namespace A032002.P16719489044214955995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032040 n + (A057427 n - (n + 1 : ℤ))

end

end A032002.P16719489044214955995

/-! ## A032002.P10650639639405625633

`2*A032040(n)-or(n, A000108(n)%2)`
-/

namespace A032002.P10650639639405625633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032040 n - Int.lor (n : ℤ) (Int.tmod (A000108 n) 2)

end

end A032002.P10650639639405625633

/-!
# A032003: "AFJ" (ordered, size, labeled) transform of 1,3,5,7,...

The programs for A032003, there is no canonical definition to state claims against.
-/

/-! ## A032003.P6702055809765558152

`A005408(A032041(n)-round(sqrt(n²+1)))`
-/

namespace A032003.P6702055809765558152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A032041 n - SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A032003.P6702055809765558152

/-! ## A032003.P4085052441444279809

`∏{p}[A005408(A032041(n)-A028310(n)), #]`
-/

namespace A032003.P4085052441444279809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A032041 n - A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A032003.P4085052441444279809

/-! ## A032003.P7834505663236952089

`A005408(A032041(n)-A028310(n))%A030545(n)!`
-/

namespace A032003.P7834505663236952089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A032041 n - A028310 n).toNat) (Nat.factorial (A030545 n).toNat : ℤ)

end

end A032003.P7834505663236952089

/-! ## A032003.P62466295031444626

`A112762(n+1)!*A005408(A032041(n)-A028310(n))`
-/

namespace A032003.P62466295031444626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A112762 (n + 1)).toNat : ℤ) * A005408 (A032041 n - A028310 n).toNat

end

end A032003.P62466295031444626

/-!
# A032004: Shifts left under "AFJ" (ordered, size, labeled) transform.

The programs for A032004, there is no canonical definition to state claims against.
-/

/-! ## A032004.P4871302186118453028

`A032018(∑[A290852(n)])`
-/

namespace A032004.P4871302186118453028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032018 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032004.P4871302186118453028

/-! ## A032004.P10224622032574481830

`A022998(A032018(n+1))`
-/

namespace A032004.P10224622032574481830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A032018 (n + 1)).toNat

end

end A032004.P10224622032574481830

/-! ## A032004.P1386770183764532667

`A032018(A000005(5^n))`
-/

namespace A032004.P1386770183764532667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032018 (A000005 (5 ^ n)).toNat

end

end A032004.P1386770183764532667

/-! ## A032004.P10786000494553381152

`A032018(A290852(n)+n)`
-/

namespace A032004.P10786000494553381152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032018 (A290852 n + (n : ℤ)).toNat

end

end A032004.P10786000494553381152

/-!
# A032005: "AFK" (ordered, size, unlabeled) transform of 2,2,2,2,...

The programs for A032005, there is no canonical definition to state claims against.
-/

/-! ## A032005.P6102386485854364851

`A036453(n+1)*A397660(n)`
-/

namespace A032005.P6102386485854364851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A397660 n

end

end A032005.P6102386485854364851

/-! ## A032005.P11215612714708159646

`2*A032043(n)-A036453(n+1)`
-/

namespace A032005.P11215612714708159646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032043 n - A036453 (n + 1)

end

end A032005.P11215612714708159646

/-! ## A032005.P12491408281810926515

`2*A032043(n)-A006530(A286575(n))`
-/

namespace A032005.P12491408281810926515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032043 n - A006530 (A286575 n).toNat

end

end A032005.P12491408281810926515

/-! ## A032005.P8774230725343846188

`2*A032043(n)-A020639(A282544(n))`
-/

namespace A032005.P8774230725343846188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032043 n - A020639 (A282544 n).toNat

end

end A032005.P8774230725343846188

/-! ## A032005.P4358800395520955980

`lcm(A057427(n)-A032043(n), A036453(n+1))`
-/

namespace A032005.P4358800395520955980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057427 n - A032043 n) (A036453 (n + 1))

end

end A032005.P4358800395520955980

/-! ## A032005.P14450172087188025681

`A011782(n+1)/A011782(n)*A397660(n)`
-/

namespace A032005.P14450172087188025681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 n : ℚ) * (A397660 n : ℚ)

end

end A032005.P14450172087188025681

/-! ## A032005.P3500441133980835648

`2*A032043(n)-A020639(A141767(n+1))`
-/

namespace A032005.P3500441133980835648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032043 n - A020639 (A141767 (n + 1)).toNat

end

end A032005.P3500441133980835648

/-!
# A032006: "AFK" (ordered, size, unlabeled) transform of 2,1,1,1,...

The programs for A032006, there is no canonical definition to state claims against.
-/

/-! ## A032006.P12892149634929758492

`A339162(n)+A032020(n)`
-/

namespace A032006.P12892149634929758492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339162 n + A032020 n

end

end A032006.P12892149634929758492

/-! ## A032006.P8080838307633648436

`2*A032020(n)-A032022(n)`
-/

namespace A032006.P8080838307633648436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032020 n - A032022 n

end

end A032006.P8080838307633648436

/-! ## A032006.P2953697791416062836

`A032020(n)+A216695(n)+1-A032022(n)`
-/

namespace A032006.P2953697791416062836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n + (A216695 n + (1 - A032022 n))

end

end A032006.P2953697791416062836

/-! ## A032006.P16092422060303326832

`A032020(A028310(n))+A032020(n)-A032022(n)`
-/

namespace A032006.P16092422060303326832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 (A028310 n).toNat + (A032020 n - A032022 n)

end

end A032006.P16092422060303326832

/-! ## A032006.P1067645382443692940

`A032020(n)+A032157(n+1)-A032140(n+1)`
-/

namespace A032006.P1067645382443692940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n + (A032157 (n + 1) - A032140 (n + 1))

end

end A032006.P1067645382443692940

/-! ## A032006.P14835382870354368477

`A032020(A233583(n+1))+A032020(n)-A032022(n)`
-/

namespace A032006.P14835382870354368477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 (A233583 (n + 1)).toNat + (A032020 n - A032022 n)

end

end A032006.P14835382870354368477

/-!
# A032007: "AFK" (ordered, size, unlabeled) transform of 1,2,3,4,...

The programs for A032007, there is no canonical definition to state claims against.
-/

/-! ## A032007.P9094693914632681498

`2*A032045(n)-A028310(n)`
-/

namespace A032007.P9094693914632681498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032045 n - A028310 n

end

end A032007.P9094693914632681498

/-! ## A032007.P5305280658657581462

`A032045(n)*A036453(n+1)-n`
-/

namespace A032007.P5305280658657581462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032045 n * A036453 (n + 1) - (n : ℤ)

end

end A032007.P5305280658657581462

/-! ## A032007.P9305302208745534204

`2*A032045(n)-(A000007(n)+n)`
-/

namespace A032007.P9305302208745534204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032045 n - (A000007 n + (n : ℤ))

end

end A032007.P9305302208745534204

/-! ## A032007.P16004923347232784746

`2*A032045(n)-A060819(A008574(n))`
-/

namespace A032007.P16004923347232784746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032045 n - A060819 (A008574 n).toNat

end

end A032007.P16004923347232784746

/-! ## A032007.P7186538174094957721

`A001489(n)+A032045(n)*A036453(n+1)`
-/

namespace A032007.P7186538174094957721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A032045 n * A036453 (n + 1)

end

end A032007.P7186538174094957721

/-! ## A032007.P7496745216895765401

`2*A032045(n)-A002260(∑[n+2]-1)`
-/

namespace A032007.P7496745216895765401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032045 n - A002260 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A032007.P7496745216895765401

/-! ## A032007.P15614421087841913461

`2*A032045(n)-A007318(A000124(n))`
-/

namespace A032007.P15614421087841913461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032045 n - A007318 (A000124 n).toNat

end

end A032007.P15614421087841913461

/-!
# A032008: "AFK" (ordered, size, unlabeled) transform of 1,3,5,7,...

The programs for A032008, there is no canonical definition to state claims against.
-/

/-! ## A032008.P8000293959232762382

`A032046(n)*A036453(n+1)-A004273(n)`
-/

namespace A032008.P8000293959232762382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032046 n * A036453 (n + 1) - A004273 n

end

end A032008.P8000293959232762382

/-!
# A032009: Number of planted planar trees (n+1 nodes) where any 2 subtrees extending from the same node have a different number of nodes.

The programs for A032009, there is no canonical definition to state claims against.
-/

/-! ## A032009.P806531471926452023

`A363583(A211180(n+1))`
-/

namespace A032009.P806531471926452023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363583 (A211180 (n + 1)).toNat

end

end A032009.P806531471926452023

/-! ## A032009.P12429913918928677446

`A032027(n+1)-A102037(A288853(n))`
-/

namespace A032009.P12429913918928677446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032027 (n + 1) - A102037 (A288853 n).toNat

end

end A032009.P12429913918928677446

/-! ## A032009.P2150337873488161749

`or(A026819(A121749(n+1)), A327539(n))`
-/

namespace A032009.P2150337873488161749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026819 (A121749 (n + 1)).toNat) (A327539 n)

end

end A032009.P2150337873488161749

/-!
# A032010: Number of rooted planar trees where any 2 subtrees extending from same node have a different number of nodes.

The programs for A032010, there is no canonical definition to state claims against.
-/

/-! ## A032010.P8672309498887577596

`A261585(xor(A086622(n), A283797(n)))`
-/

namespace A032010.P8672309498887577596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (Int.xor (A086622 n) (A283797 n)).toNat

end

end A032010.P8672309498887577596

/-! ## A032010.P4531111452262775350

`A261585(xor(A086622(n), A256502(n+1)))`
-/

namespace A032010.P4531111452262775350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (Int.xor (A086622 n) (A256502 (n + 1))).toNat

end

end A032010.P4531111452262775350

/-! ## A032010.P6703746998078847956

`A261585(xor(A086622(n), A276651(n+2)))`
-/

namespace A032010.P6703746998078847956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (Int.xor (A086622 n) (A276651 (n + 2))).toNat

end

end A032010.P6703746998078847956

/-! ## A032010.P12190890865405123253

`A262689(A306524(n)+1)`
-/

namespace A032010.P12190890865405123253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A306524 n + 1).toNat

end

end A032010.P12190890865405123253

/-! ## A032010.P16194539249454604093

`ceil(A005100(A298338(2*(n+1))+1)/63)`
-/

namespace A032010.P16194539249454604093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005100 (A298338 (2 * (n + 1)) + 1).toNat : ℚ) / 63⌉

end

end A032010.P16194539249454604093

/-!
# A032011: Partition n labeled elements into sets of different sizes and order the sets.

The programs for A032011, there is no canonical definition to state claims against.
-/

/-! ## A032011.P16349303316309814371

`2*A032049(n)-1`
-/

namespace A032011.P16349303316309814371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032049 n - 1

end

end A032011.P16349303316309814371

/-! ## A032011.P3190070061736303880

`A261836(∑[n]+n)`
-/

namespace A032011.P3190070061736303880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A032011.P3190070061736303880

/-! ## A032011.P17568546322014819916

`or(1, A261836(A000096(n)))`
-/

namespace A032011.P17568546322014819916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261836 (A000096 n).toNat)

end

end A032011.P17568546322014819916

/-! ## A032011.P2379676643114084014

`gcd(A000038(n), A261836(A000096(n)))`
-/

namespace A032011.P2379676643114084014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261836 (A000096 n).toNat)

end

end A032011.P2379676643114084014

/-! ## A032011.P14787086213483704124

`A007318(∑[n])*A261836(A000096(n))`
-/

namespace A032011.P14787086213483704124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A261836 (A000096 n).toNat

end

end A032011.P14787086213483704124

/-! ## A032011.P13651736304187554684

`lcm(A064179(n+1), A261836(A000096(n)))`
-/

namespace A032011.P13651736304187554684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064179 (n + 1)) (A261836 (A000096 n).toNat)

end

end A032011.P13651736304187554684

/-! ## A032011.P10448918528722431455

`A261836(A000096(n))+(2-4/2)*A000108(n)`
-/

namespace A032011.P10448918528722431455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261836 (A000096 n).toNat : ℚ) + (2 - (4 : ℚ) / 2) * (A000108 n : ℚ)

end

end A032011.P10448918528722431455

/-! ## A032011.P7812181495227938253

`A003415(A000040(n+1))*A261836(A000096(n))`
-/

namespace A032011.P7812181495227938253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000040 (n + 1)).toNat * A261836 (A000096 n).toNat

end

end A032011.P7812181495227938253

/-! ## A032011.P3032591668539893750

`A000670(n)-A262047(n)`
-/

namespace A032011.P3032591668539893750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A262047 n

end

end A032011.P3032591668539893750

/-! ## A032011.P6885441254143610386

`A122101(∑[n])-A262047(n)`
-/

namespace A032011.P6885441254143610386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A262047 n

end

end A032011.P6885441254143610386

/-!
# A032013: Number of ways to partition n labeled elements into sets of different sizes of at least 2 and order the sets.

The programs for A032013, there is no canonical definition to state claims against.
-/

/-! ## A032013.P16248351788643311078

`2*A032011(n)-A032001(n)`
-/

namespace A032013.P16248351788643311078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032011 n - A032001 n

end

end A032013.P16248351788643311078

/-! ## A032013.P7938576118375961492

`A004273(A032051(n))`
-/

namespace A032013.P7938576118375961492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A032051 n).toNat

end

end A032013.P7938576118375961492

/-! ## A032013.P14158182009998000125

`A004277(A032051(n))-A007318(C(n, 2))`
-/

namespace A032013.P14158182009998000125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032051 n).toNat - A007318 (Nat.choose n 2)

end

end A032013.P14158182009998000125

/-! ## A032013.P505967608251234983

`A004277(A032051(n))-A000041(C(2, n+2))`
-/

namespace A032013.P505967608251234983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032051 n).toNat - A000041 (Nat.choose 2 (n + 2))

end

end A032013.P505967608251234983

/-! ## A032013.P6258608787322844429

`A004277(A032051(n))-A000041(gcd(n, n+1))`
-/

namespace A032013.P6258608787322844429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032051 n).toNat - A000041 (Nat.gcd n (n + 1))

end

end A032013.P6258608787322844429

/-!
# A032014: "AGJ" (ordered, elements, labeled) transform of 2,2,2,2,...

The programs for A032014, there is no canonical definition to state claims against.
-/

/-! ## A032014.P12168459274720439727

`A004275(A032052(n))`
-/

namespace A032014.P12168459274720439727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A032052 n).toNat

end

end A032014.P12168459274720439727

/-! ## A032014.P6798660707873003136

`A004277(A032052(n)-1)`
-/

namespace A032014.P6798660707873003136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032052 n - 1).toNat

end

end A032014.P6798660707873003136

/-! ## A032014.P5196438338408469799

`A053438(A032052(n)-1)`
-/

namespace A032014.P5196438338408469799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A032052 n - 1).toNat

end

end A032014.P5196438338408469799

/-!
# A032015: "AGJ" (ordered, elements, labeled) transform of 2,1,1,1,...

The programs for A032015, there is no canonical definition to state claims against.
-/

/-! ## A032015.P16521736454469403449

`record[A303719(Δ[A318759(n+1)])]`
-/

namespace A032015.P16521736454469403449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318759 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032015.P16521736454469403449

/-! ## A032015.P13297375129406591457

`A008679(2*n*A175532(n+1))`
-/

namespace A032015.P13297375129406591457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 ((2 * n : ℤ) * A175532 (n + 1)).toNat

end

end A032015.P13297375129406591457

/-!
# A032016: "AGJ" (ordered, elements, labeled) transform of 1,2,3,4,...

The programs for A032016, there is no canonical definition to state claims against.
-/

/-! ## A032016.P13066153802276189414

`2*A032054(n)-floor(log2(2^n+1))`
-/

namespace A032016.P13066153802276189414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032054 n - (Nat.log 2 (2 ^ n + 1) : ℤ)

end

end A032016.P13066153802276189414

/-! ## A032016.P5948662896541077934

`A093417(A107385(n+1))`
-/

namespace A032016.P5948662896541077934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093417 (A107385 (n + 1)).toNat

end

end A032016.P5948662896541077934

/-!
# A032017: "AGJ" (ordered, elements, labeled) transform of 1,3,5,7,...

The programs for A032017, there is no canonical definition to state claims against.
-/

/-! ## A032017.P12447897587995962324

`A076605((A000010(2*n+1)+1)*a(n-1)+n)` with `a(0)=1, a(1)=1`
-/

namespace A032017.P12447897587995962324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A076605 ((A000010 (2 * n + 1) + 1) * a (n - 1) + (n : ℤ)).toNat

end

end A032017.P12447897587995962324

/-! ## A032017.P7624949776221905183

`A213187(A213192(n))-A213090(n)`
-/

namespace A032017.P7624949776221905183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213187 (A213192 n).toNat - A213090 n

end

end A032017.P7624949776221905183

/-!
# A032019: Doubles (index 2+) under "AGJ" (ordered, elements, labeled) transform.

The programs for A032019, there is no canonical definition to state claims against.
-/

/-! ## A032019.P312323461662719932

`(A107320(A095216(n+1))+A015552(n))*A005843(A001764(n))`
-/

namespace A032019.P312323461662719932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107320 (A095216 (n + 1)).toNat + A015552 n) * A005843 (A001764 n).toNat

end

end A032019.P312323461662719932

/-!
# A032020: Number of compositions (ordered partitions) of n into distinct parts.

The programs for A032020, there is no canonical definition to state claims against.
-/

/-! ## A032020.P1995493899590332654

`A216695(n)+1`
-/

namespace A032020.P1995493899590332654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216695 n + 1

end

end A032020.P1995493899590332654

/-! ## A032020.P10199452040026197596

`A332305(n)+A332304(n)`
-/

namespace A032020.P10199452040026197596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332305 n + A332304 n

end

end A032020.P10199452040026197596

/-! ## A032020.P8644315939708813072

`A333149(n)+A333147(n)`
-/

namespace A032020.P8644315939708813072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333149 n + A333147 n

end

end A032020.P8644315939708813072

/-! ## A032020.P17830186738001067566

`A339435(n)+2*A332304(n)`
-/

namespace A032020.P17830186738001067566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339435 n + 2 * A332304 n

end

end A032020.P17830186738001067566

/-! ## A032020.P3494706681574212796

`2*A332305(n)-A339435(n)`
-/

namespace A032020.P3494706681574212796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332305 n - A339435 n

end

end A032020.P3494706681574212796

/-! ## A032020.P16952993526811638772

`A332305(n)-A057428(n)*A332304(n)`
-/

namespace A032020.P16952993526811638772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332305 n - A057428 n * A332304 n

end

end A032020.P16952993526811638772

/-! ## A032020.P846481109292773474

`A216708(n)%A072576(n)+1`
-/

namespace A032020.P846481109292773474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216708 n) (A072576 n) + 1

end

end A032020.P846481109292773474

/-! ## A032020.P11652591148253627005

`A072707(n)+A072706(n)`
-/

namespace A032020.P11652591148253627005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072707 n + A072706 n

end

end A032020.P11652591148253627005

/-! ## A032020.P11394514003905329217

`2*A032058(n)-1`
-/

namespace A032020.P11394514003905329217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032058 n - 1

end

end A032020.P11394514003905329217

/-! ## A032020.P1225810729874315857

`A339162(n)+A032022(n)`
-/

namespace A032020.P1225810729874315857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339162 n + A032022 n

end

end A032020.P1225810729874315857

/-! ## A032020.P5943980431326703464

`A032006(n)-A339162(n)`
-/

namespace A032020.P5943980431326703464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032006 n - A339162 n

end

end A032020.P5943980431326703464

/-! ## A032020.P2568832915046093500

`(A032022(n)+A032006(n))/2`
-/

namespace A032020.P2568832915046093500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032022 n + A032006 n : ℚ) / 2

end

end A032020.P2568832915046093500

/-! ## A032020.P5784429395611782658

`A324969(n+1)-A282694(n)`
-/

namespace A032020.P5784429395611782658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) - A282694 n

end

end A032020.P5784429395611782658

/-! ## A032020.P4351989951069558397

`A003242(n)-A285981(n)`
-/

namespace A032020.P4351989951069558397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - A285981 n

end

end A032020.P4351989951069558397

/-! ## A032020.P13780649949967312610

`A011782(n)-A261982(n)`
-/

namespace A032020.P13780649949967312610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A261982 n

end

end A032020.P13780649949967312610

/-! ## A032020.P14502006141119508937

`A003242(n)+A261983(n)-A261982(n)`
-/

namespace A032020.P14502006141119508937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n + (A261983 n - A261982 n)

end

end A032020.P14502006141119508937

/-! ## A032020.P8272345705164098516

`A242447(A133263(n)-1)`
-/

namespace A032020.P8272345705164098516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A133263 n - 1).toNat

end

end A032020.P8272345705164098516

/-! ## A032020.P15828259025226987426

`A242447(A238531(n+1)-1)`
-/

namespace A032020.P15828259025226987426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A238531 (n + 1) - 1).toNat

end

end A032020.P15828259025226987426

/-! ## A032020.P8636839903276133792

`A242447(eq[n, n*A002262(n)])`
-/

namespace A032020.P8636839903276133792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032020.P8636839903276133792

/-! ## A032020.P13414130393206969933

`A242447(A000124(A242447(∑[n])+n))`
-/

namespace A032020.P13414130393206969933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000124 (A242447 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat).toNat

end

end A032020.P13414130393206969933

/-!
# A032022: Number of compositions (ordered partitions) of n into distinct parts >= 2.

The programs for A032022, there is no canonical definition to state claims against.
-/

/-! ## A032022.P7443504502015823878

`A339163(n)+A339101(n)`
-/

namespace A032022.P7443504502015823878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339163 n + A339101 n

end

end A032022.P7443504502015823878

/-! ## A032022.P2131933481896666854

`A032020(n)-A339162(n)`
-/

namespace A032022.P2131933481896666854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A339162 n

end

end A032022.P2131933481896666854

/-! ## A032022.P8687033691764147587

`2*A032020(n)-A032006(n)`
-/

namespace A032022.P8687033691764147587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032020 n - A032006 n

end

end A032022.P8687033691764147587

/-! ## A032022.P18401504991534625747

`A339102(n)+A339164(n)+A339163(n)`
-/

namespace A032022.P18401504991534625747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339102 n + (A339164 n + A339163 n)

end

end A032022.P18401504991534625747

/-! ## A032022.P1964726493093023097

`A032020(n)-(A032006(n)-(A216695(n)+1))`
-/

namespace A032022.P1964726493093023097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - (A032006 n - (A216695 n + 1))

end

end A032022.P1964726493093023097

/-! ## A032022.P861917695629292430

`A032140(n+1)-A032153(n+1)`
-/

namespace A032022.P861917695629292430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032140 (n + 1) - A032153 (n + 1)

end

end A032022.P861917695629292430

/-! ## A032022.P14431366001180628758

`A032153(n+1)-A032155(n+1)`
-/

namespace A032022.P14431366001180628758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032153 (n + 1) - A032155 (n + 1)

end

end A032022.P14431366001180628758

/-! ## A032022.P12211290175687523856

`(A032140(n+1)-A032155(n+1))/2`
-/

namespace A032022.P12211290175687523856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032140 (n + 1) - A032155 (n + 1) : ℚ) / 2

end

end A032022.P12211290175687523856

/-! ## A032022.P9082102044968490207

`A032020(n)-(A032157(n+1)-A032140(n+1))`
-/

namespace A032022.P9082102044968490207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - (A032157 (n + 1) - A032140 (n + 1))

end

end A032022.P9082102044968490207

/-!
# A032023: "AGK" (ordered, elements, unlabeled) transform of 2,2,2,2...

The programs for A032023, there is no canonical definition to state claims against.
-/

/-! ## A032023.P8860959995590807552

`∑[2*Δ[A032061(n)]]`
-/

namespace A032023.P8860959995590807552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032023.P8860959995590807552

/-! ## A032023.P406437728292970779

`2*(A032061(n+1)-1)`
-/

namespace A032023.P406437728292970779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032061 (n + 1) - 1)

end

end A032023.P406437728292970779

/-! ## A032023.P15198487165637485120

`∑[A004277(Δ[A032061(n)])]`
-/

namespace A032023.P15198487165637485120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032023.P15198487165637485120

/-! ## A032023.P16309777014440741795

`∑[A005843(Δ[A032061(n)])]`
-/

namespace A032023.P16309777014440741795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032023.P16309777014440741795

/-! ## A032023.P5932506720286395215

`∑[A064680(Δ[A032061(n)])]`
-/

namespace A032023.P5932506720286395215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032023.P5932506720286395215

/-!
# A032024: "AGK" (ordered, elements, unlabeled) transform of 2,1,1,1,...

The programs for A032024, there is no canonical definition to state claims against.
-/

/-! ## A032024.P622624238000152619

`A072576(n)+Δ[A303664(n)]`
-/

namespace A032024.P622624238000152619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 n + (f1 (n + 1) - f1 n)

end

end A032024.P622624238000152619

/-! ## A032024.P784859013696668834

`A072576(n)+A032020(n+1)`
-/

namespace A032024.P784859013696668834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 n + A032020 (n + 1)

end

end A032024.P784859013696668834

/-! ## A032024.P2996212162257789573

`A072576(n)+A216695(n+1)+1`
-/

namespace A032024.P2996212162257789573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 n + (A216695 (n + 1) + 1)

end

end A032024.P2996212162257789573

/-! ## A032024.P5515266296500317

`A000045(n+1)+A072576(n)-A282694(n+1)`
-/

namespace A032024.P5515266296500317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A072576 n - A282694 (n + 1))

end

end A032024.P5515266296500317

/-! ## A032024.P8984478128103879986

`A242447(A000124(n+1))+A072576(n)`
-/

namespace A032024.P8984478128103879986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A000124 (n + 1)).toNat + A072576 n

end

end A032024.P8984478128103879986

/-! ## A032024.P8105595899349670315

`A243081(A034856(n+2))+A072576(n)`
-/

namespace A032024.P8105595899349670315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A034856 (n + 2)).toNat + A072576 n

end

end A032024.P8105595899349670315

/-! ## A032024.P17286527142055838657

`A243081(A055999(n)+4)+A072576(n)`
-/

namespace A032024.P17286527142055838657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A055999 n + 4).toNat + A072576 n

end

end A032024.P17286527142055838657

/-!
# A032025: "AGK" (ordered, elements, unlabeled) transform of 1,2,3,4...

The programs for A032025, there is no canonical definition to state claims against.
-/

/-! ## A032025.P9567105149882247661

`2*A032063(n+1)-(n+1)`
-/

namespace A032025.P9567105149882247661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032063 (n + 1) - (n + 1 : ℤ)

end

end A032025.P9567105149882247661

/-! ## A032025.P6540804629305016770

`A001478(n+1)+2*A032063(n+1)`
-/

namespace A032025.P6540804629305016770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A032063 (n + 1)

end

end A032025.P6540804629305016770

/-! ## A032025.P17501961494643181734

`A001489(n+1)+2*A032063(n+1)`
-/

namespace A032025.P17501961494643181734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + 2 * A032063 (n + 1)

end

end A032025.P17501961494643181734

/-! ## A032025.P8635795227006711390

`A001057(2*(n+1))+2*A032063(n+1)`
-/

namespace A032025.P8635795227006711390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * (n + 1)) + 2 * A032063 (n + 1)

end

end A032025.P8635795227006711390

/-! ## A032025.P10088855298707424327

`A056951(∑[n]+1)+2*A032063(n+1)`
-/

namespace A032025.P10088855298707424327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2 * A032063 (n + 1)

end

end A032025.P10088855298707424327

/-!
# A032026: "AGK" (ordered, elements, unlabeled) transform of 1,3,5,7...

The programs for A032026, there is no canonical definition to state claims against.
-/

/-! ## A032026.P17703892784525219968

`2*A032064(n+1)-(2*n+1)`
-/

namespace A032026.P17703892784525219968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032064 (n + 1) - (2 * n + 1 : ℤ)

end

end A032026.P17703892784525219968

/-! ## A032026.P18170460435573711421

`abs(2*A032064(n+1)-A005408(n))`
-/

namespace A032026.P18170460435573711421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A032064 (n + 1) - A005408 n|

end

end A032026.P18170460435573711421

/-! ## A032026.P5545728155230992938

`A000265(2*A032064(n+1)-A005408(n))`
-/

namespace A032026.P5545728155230992938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A032064 (n + 1) - A005408 n).toNat

end

end A032026.P5545728155230992938

/-! ## A032026.P3180911236927574871

`A195161(2*A032064(n+1)-A005408(n))`
-/

namespace A032026.P3180911236927574871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (2 * A032064 (n + 1) - A005408 n).toNat

end

end A032026.P3180911236927574871

/-!
# A032027: Number of planted planar trees (n+1 nodes) where any 2 subtrees extending from the same node are different.

The programs for A032027, there is no canonical definition to state claims against.
-/

/-! ## A032027.P2656118472972107636

`or(A193039(n), A308349(n+1))`
-/

namespace A032027.P2656118472972107636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193039 n) (A308349 (n + 1))

end

end A032027.P2656118472972107636

/-! ## A032027.P18412834399304213781

`A318921(n)+A318229(A028310(n))`
-/

namespace A032027.P18412834399304213781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n + A318229 (A028310 n).toNat

end

end A032027.P18412834399304213781

/-! ## A032027.P3002857618502448011

`or(A027023(n), A318229(A028310(n)))`
-/

namespace A032027.P3002857618502448011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027023 n) (A318229 (A028310 n).toNat)

end

end A032027.P3002857618502448011

/-! ## A032027.P9545958693446438418

`or(A030101(n), A318229(A028310(n)))`
-/

namespace A032027.P9545958693446438418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030101 n) (A318229 (A028310 n).toNat)

end

end A032027.P9545958693446438418

/-! ## A032027.P4169726865534811358

`or(A032009(n+1), A058398(A073617(n)))`
-/

namespace A032027.P4169726865534811358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032009 (n + 1)) (A058398 (A073617 n).toNat)

end

end A032027.P4169726865534811358

/-!
# A032028: Number of rooted planar trees (n+1 nodes) where any 2 subtrees extending from same node are different.

The programs for A032028, there is no canonical definition to state claims against.
-/

/-! ## A032028.P14971746647605840797

`A005041(A177544(abs(1-n)))`
-/

namespace A032028.P14971746647605840797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A177544 |1 - (n : ℤ)|.toNat).toNat

end

end A032028.P14971746647605840797

/-! ## A032028.P2116899067957289284

`A025902(n)+Δ[A013588(n+1)]`
-/

namespace A032028.P2116899067957289284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 n + (f1 (n + 1) - f1 n)

end

end A032028.P2116899067957289284

/-! ## A032028.P5641389077530460093

`A029425(n)+Δ[A013588(n+1)]`
-/

namespace A032028.P5641389077530460093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 n + (f1 (n + 1) - f1 n)

end

end A032028.P5641389077530460093

/-! ## A032028.P12427487760253048433

`A264442(n)+Δ[A013588(n+1)]`
-/

namespace A032028.P12427487760253048433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264442 n + (f1 (n + 1) - f1 n)

end

end A032028.P12427487760253048433

/-!
# A032029: Shifts left twice under "AGK" (ordered, elements, unlabeled) transform.

The programs for A032029, there is no canonical definition to state claims against.
-/

/-! ## A032029.P9810974397672964685

`or(1, A004788(A153931(n)))`
-/

namespace A032029.P9810974397672964685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004788 (A153931 n).toNat)

end

end A032029.P9810974397672964685

/-! ## A032029.P8831339467515691025

`or(1, A095861(A166198(n)))`
-/

namespace A032029.P8831339467515691025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A095861 (A166198 n).toNat)

end

end A032029.P8831339467515691025

/-! ## A032029.P17477348499608535321

`A309288(A154627(n)%A080040(n))`
-/

namespace A032029.P17477348499608535321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309288 (Int.tmod (A154627 n) (A080040 n)).toNat

end

end A032029.P17477348499608535321

/-! ## A032029.P17833956168303952316

`or(A128084(n), A157454(A042483(n)))`
-/

namespace A032029.P17833956168303952316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128084 n) (A157454 (A042483 n).toNat)

end

end A032029.P17833956168303952316

/-! ## A032029.P7275731412511034225

`A309288((2^(n-1)*A144720(n))%A080040(n))`
-/

namespace A032029.P7275731412511034225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309288 (Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A144720 n : ℚ))) (A080040 n)).toNat

end

end A032029.P7275731412511034225

/-!
# A032030: Number of series-reduced planted planar trees with n leaves of 2 colors where any 2 subtrees extending from the same node are different.

The programs for A032030, there is no canonical definition to state claims against.
-/

/-! ## A032030.P7400653110427840501

`A171462(A346626(n)+A001221(n+3)+1)`
-/

namespace A032030.P7400653110427840501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (A346626 n + A001221 (n + 3) + 1).toNat

end

end A032030.P7400653110427840501

/-!
# A032031: Triple factorial numbers: (3n)!!! = 3^n*n!.

The programs for A032031, the canonical program `A032031.P13727891932517305363` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032031 has offset 0).

The definition of A032031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*n!` (program `A032031.P13727891932517305363`, by `A032031.P13727891932517305363.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032031.P13727891932517305363

`3^n*n!`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032031

/-- `3^n*n!` -/
def P13727891932517305363.Spec : Prop :=
  ∀ n, (P13727891932517305363.a n : ℤ) = A032031 n

theorem P13727891932517305363.correct : P13727891932517305363.Spec := by
  intro n
  simp only [A032031]

end A032031

/-! ## A032031.P6091240423025003289

`3*n*a(n-1)` with `a(0)=1`
-/

namespace A032031.P6091240423025003289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * n * a (n - 1)

end

end A032031.P6091240423025003289

namespace A032031

/-- `3*n*a(n-1)` -/
def P6091240423025003289.Spec : Prop :=
  ∀ n, (P6091240423025003289.a n : ℤ) = A032031 n

end A032031

/-! ## A032031.P15151874641483850369

`∏[floor(3/acot(n))]`
-/

namespace A032031.P15151874641483850369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032031.P15151874641483850369

namespace A032031

/-- `∏[floor(3/acot(n))]` -/
def P15151874641483850369.Spec : Prop :=
  ∀ n, P15151874641483850369.a n = A032031 n

end A032031

/-! ## A032031.P11637984736257487618

`n!/3^-n`
-/

namespace A032031.P11637984736257487618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A032031.P11637984736257487618

namespace A032031

/-- `n!/3^-n` -/
def P11637984736257487618.Spec : Prop :=
  ∀ n, P11637984736257487618.a n = (A032031 n : ℚ)

theorem P11637984736257487618.correct : P11637984736257487618.Spec := by
  intro n
  simp only [A032031, Nat.add_sub_cancel, A032031.P11637984736257487618.a, A032031.P13727891932517305363.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A032031

/-! ## A032031.P16316685214263025515

`∏[ceil(3/acot(n))-1]`
-/

namespace A032031.P16316685214263025515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / SequenceMachineLib.acot (n : ℝ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032031.P16316685214263025515

namespace A032031

/-- `∏[ceil(3/acot(n))-1]` -/
def P16316685214263025515.Spec : Prop :=
  ∀ n, P16316685214263025515.a n = A032031 n

end A032031

/-! ## A032031.P15119213329191077956

`∏[round(1/acot(3*n))]`
-/

namespace A032031.P15119213329191077956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (3 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032031.P15119213329191077956

namespace A032031

/-- `∏[round(1/acot(3*n))]` -/
def P15119213329191077956.Spec : Prop :=
  ∀ n, P15119213329191077956.a n = A032031 n

end A032031

/-! ## A032031.P5295072747821048556

`∏[floor(acot(n))+3*n]`
-/

namespace A032031.P5295072747821048556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032031.P5295072747821048556

namespace A032031

/-- `∏[floor(acot(n))+3*n]` -/
def P5295072747821048556.Spec : Prop :=
  ∀ n, P5295072747821048556.a n = A032031 n

end A032031

/-! ## A032031.P2739362878819544080

`∏[gcd(3*n, floor(acot(n)))]`
-/

namespace A032031.P2739362878819544080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032031.P2739362878819544080

namespace A032031

/-- `∏[gcd(3*n, floor(acot(n)))]` -/
def P2739362878819544080.Spec : Prop :=
  ∀ n, (P2739362878819544080.a n : ℤ) = A032031 n

end A032031

/-! ## A032031.P5750112342327482982

`∏[a(n-1)+3]` with `a(0)=1, a(1)=3`
-/

namespace A032031.P5750112342327482982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032031.P5750112342327482982

namespace A032031

/-- `∏[a(n-1)+3]` -/
def P5750112342327482982.Spec : Prop :=
  ∀ n, (P5750112342327482982.a n : ℤ) = A032031 n

end A032031

/-! ## A032031.P17704457130133570890

`∏[C(2, n+2)+3*n]`
-/

namespace A032031.P17704457130133570890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032031.P17704457130133570890

namespace A032031

/-- `∏[C(2, n+2)+3*n]` -/
def P17704457130133570890.Spec : Prop :=
  ∀ n, (P17704457130133570890.a n : ℤ) = A032031 n

end A032031

/-!
# A032032: Number of ways to partition n labeled elements into sets of sizes of at least 2 and order the sets.

The programs for A032032, there is no canonical definition to state claims against.
-/

/-! ## A032032.P5469158160661343407

`A187784(∑[n])`
-/

namespace A032032.P5469158160661343407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187784 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032032.P5469158160661343407

/-! ## A032032.P9081626624290382748

`or(char[2], A187784(A000217(n)))`
-/

namespace A032032.P9081626624290382748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A187784 (A000217 n).toNat)

end

end A032032.P9081626624290382748

/-! ## A032032.P5162229440584959234

`A187784(A000217(n))^A178334(n)`
-/

namespace A032032.P5162229440584959234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187784 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A032032.P5162229440584959234

/-! ## A032032.P18436827301353336186

`A187784(A000217(n))+A129760(A130321(n))`
-/

namespace A032032.P18436827301353336186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187784 (A000217 n).toNat + A129760 (A130321 n).toNat

end

end A032032.P18436827301353336186

/-! ## A032032.P15654734387798114949

`A187784(A000217(n))^A001221(A048883(n))`
-/

namespace A032032.P15654734387798114949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187784 (A000217 n).toNat : ℚ) ^ (A001221 (A048883 n).toNat : ℤ)

end

end A032032.P15654734387798114949

/-! ## A032032.P12615648828457679985

`A187784(A000217(n))^A178489(n)`
-/

namespace A032032.P12615648828457679985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187784 (A000217 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A032032.P12615648828457679985

/-!
# A032033: Stirling transform of A032031.

The programs for A032033, there is no canonical definition to state claims against.
-/

/-! ## A032033.P4558785369688987870

`ceil(A032183(n+1)/4)`
-/

namespace A032033.P4558785369688987870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032183 (n + 1) : ℚ) / 4⌉

end

end A032033.P4558785369688987870

/-! ## A032033.P13177594115343361196

`ceil(3/4*A201354(n))`
-/

namespace A032033.P13177594115343361196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 4 * (A201354 n : ℚ)⌉

end

end A032033.P13177594115343361196

/-! ## A032033.P17065353128934213985

`dr(A002001(n))*A050352(n)`
-/

namespace A032033.P17065353128934213985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A002001 n) : ℤ) * A050352 n

end

end A032033.P17065353128934213985

/-! ## A032033.P16868870982545309388

`dr(A123227(n))*A050352(n)`
-/

namespace A032033.P16868870982545309388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A123227 n) : ℤ) * A050352 n

end

end A032033.P16868870982545309388

/-! ## A032033.P17290031350093202075

`(A198767(n)-1)%5*A050352(n)`
-/

namespace A032033.P17290031350093202075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198767 n - 1) 5 * A050352 n

end

end A032033.P17290031350093202075

/-! ## A032033.P2940152952636918186

`A048691(A006005(n+1))*A050352(n)`
-/

namespace A032033.P2940152952636918186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A006005 (n + 1)).toNat * A050352 n

end

end A032033.P2940152952636918186

/-! ## A032033.P295883531198934177

`A006530(A187778(n+1))*A050352(n)`
-/

namespace A032033.P295883531198934177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A187778 (n + 1)).toNat * A050352 n

end

end A032033.P295883531198934177

/-! ## A032033.P550333682053110102

`A020639(A316320(2*n))*A050352(n)`
-/

namespace A032033.P550333682053110102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A316320 (2 * n)).toNat * A050352 n

end

end A032033.P550333682053110102

/-! ## A032033.P616420169726280862

`A032183(n+1)/A000005(A100484(n+1))`
-/

namespace A032033.P616420169726280862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032183 (n + 1) : ℚ) / (A000005 (A100484 (n + 1)).toNat : ℚ)

end

end A032033.P616420169726280862

/-! ## A032033.P6385947367359995247

`A344499(A167614(n+2))`
-/

namespace A032033.P6385947367359995247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344499 (A167614 (n + 2)).toNat

end

end A032033.P6385947367359995247

/-!
# A032034: Shifts left under "AIJ" (ordered, indistinct, labeled) transform.

The programs for A032034, there is no canonical definition to state claims against.
-/

/-! ## A032034.P3512352100838755923

`2*A032188(n+1)`
-/

namespace A032034.P3512352100838755923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032188 (n + 1)

end

end A032034.P3512352100838755923

/-! ## A032034.P13376964292755258017

`lcm(2, A112487(n))`
-/

namespace A032034.P13376964292755258017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A112487 n)

end

end A032034.P13376964292755258017

/-! ## A032034.P7332256332984664536

`A112487(n%((2*n-3)*4*a(n-1)/2))` with `a(0)=2`
-/

namespace A032034.P7332256332984664536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A112487 (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((((2 * n : ℤ) - 3) * (4 * a (n - 1)) : ℚ) / 2))).toNat

end

end A032034.P7332256332984664536

/-! ## A032034.P9987752091408275720

`A112487(A028310(n))`
-/

namespace A032034.P9987752091408275720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112487 (A028310 n).toNat

end

end A032034.P9987752091408275720

/-! ## A032034.P8536864014024738282

`A112487(A000007(n)+n)`
-/

namespace A032034.P8536864014024738282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112487 (A000007 n + (n : ℤ)).toNat

end

end A032034.P8536864014024738282

/-! ## A032034.P7447339954882924658

`A112487(gcd(n, A000142(n)))`
-/

namespace A032034.P7447339954882924658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112487 (Int.gcd (n : ℤ) (A000142 n))

end

end A032034.P7447339954882924658

/-! ## A032034.P8115272435971337381

`A112487(1-A057427(n)+n)`
-/

namespace A032034.P8115272435971337381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112487 (1 - A057427 n + (n : ℤ)).toNat

end

end A032034.P8115272435971337381

/-! ## A032034.P5852473802207725954

`A112487(1-(A057427(n)-n))`
-/

namespace A032034.P5852473802207725954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112487 (1 - (A057427 n - (n : ℤ))).toNat

end

end A032034.P5852473802207725954

/-!
# A032035: Number of increasing rooted 2,3 cacti (triangular cacti with bridges) with n-1 nodes.

The programs for A032035, there is no canonical definition to state claims against.
-/

/-! ## A032035.P544837036510670415

`exp(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=13, a(5)=77, a(6)=573`
-/

namespace A032035.P544837036510670415
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 1, 3, 13, 77, 573] fun n a =>
  Real.exp (a (n - 1))

end

end A032035.P544837036510670415

/-! ## A032035.P13690186949573801641

`A194990(A037143(n!))`
-/

namespace A032035.P13690186949573801641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A037143 (Nat.factorial n)).toNat

end

end A032035.P13690186949573801641

/-! ## A032035.P3449082340468927941

`A187180(A003659(n+1))`
-/

namespace A032035.P3449082340468927941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A003659 (n + 1)).toNat

end

end A032035.P3449082340468927941

/-!
# A032036: Shifts left 3 places under "AIJ" (ordered, indistinct, labeled) transform.

The programs for A032036, there is no canonical definition to state claims against.
-/

/-! ## A032036.P7001085994881384503

`A347647(A213722(n))`
-/

namespace A032036.P7001085994881384503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347647 (A213722 n).toNat

end

end A032036.P7001085994881384503

/-! ## A032036.P4554429127484943872

`A347647(A325924(n))`
-/

namespace A032036.P4554429127484943872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347647 (A325924 n).toNat

end

end A032036.P4554429127484943872

/-! ## A032036.P18100878015414405743

`or(1, A032634(A075834(n)))`
-/

namespace A032036.P18100878015414405743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A032634 (A075834 n).toNat)

end

end A032036.P18100878015414405743

/-! ## A032036.P13318976222939742102

`or(1, A059995(∑[A263688(n)]))`
-/

namespace A032036.P13318976222939742102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A059995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A032036.P13318976222939742102

/-!
# A032037: Doubles (index 2+) under "AIJ" (ordered, indistinct, labeled) transform.

The programs for A032037, the canonical program `A032037.P6282549882592970735` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032037 has offset 1).

The definition of A032037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032037.P6282549882592970735

`3*(2*(n+1)-3)*a(n-1)-n*(n-2)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032037

/-- `3*(2*(n+1)-3)*a(n-1)-n*(n-2)*a(n-2)` -/
def P6282549882592970735.Spec : Prop :=
  ∀ n, P6282549882592970735.a n = A032037 (n + 1)

theorem P6282549882592970735.correct : P6282549882592970735.Spec := by
  intro n
  simp only [A032037, Nat.add_sub_cancel]

end A032037

/-! ## A032037.P5774202874620869192

`(n+1)!*A001003(n)`
-/

namespace A032037.P5774202874620869192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A001003 n

end

end A032037.P5774202874620869192

namespace A032037

/-- `(n+1)!*A001003(n)` -/
def P5774202874620869192.Spec : Prop :=
  ∀ n, P5774202874620869192.a n = A032037 (n + 1)

end A032037

/-! ## A032037.P13735309372893447411

`n!*A176479(n)`
-/

namespace A032037.P13735309372893447411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A176479 n

end

end A032037.P13735309372893447411

namespace A032037

/-- `n!*A176479(n)` -/
def P13735309372893447411.Spec : Prop :=
  ∀ n, P13735309372893447411.a n = A032037 (n + 1)

end A032037

/-! ## A032037.P3981376497331248414

`A052716(n+1)/2`
-/

namespace A032037.P3981376497331248414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052716 (n + 1) : ℚ) / 2

end

end A032037.P3981376497331248414

namespace A032037

/-- `A052716(n+1)/2` -/
def P3981376497331248414.Spec : Prop :=
  ∀ n, P3981376497331248414.a n = (A032037 (n + 1) : ℚ)

end A032037

/-! ## A032037.P6795142667469643468

`(n+1)!*A186826(∑[n])`
-/

namespace A032037.P6795142667469643468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A186826 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032037.P6795142667469643468

namespace A032037

/-- `(n+1)!*A186826(∑[n])` -/
def P6795142667469643468.Spec : Prop :=
  ∀ n, P6795142667469643468.a n = A032037 (n + 1)

end A032037

/-! ## A032037.P14358042592671421147

`round((n+1)!/2)*A006318(n)`
-/

namespace A032037.P14358042592671421147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) / 2) * A006318 n

end

end A032037.P14358042592671421147

namespace A032037

/-- `round((n+1)!/2)*A006318(n)` -/
def P14358042592671421147.Spec : Prop :=
  ∀ n, P14358042592671421147.a n = A032037 (n + 1)

end A032037

/-! ## A032037.P2208608936758872007

`record[A047920(n)]*A001003(n)`
-/

namespace A032037.P2208608936758872007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001003 n

end

end A032037.P2208608936758872007

namespace A032037

/-- `record[A047920(n)]*A001003(n)` -/
def P2208608936758872007.Spec : Prop :=
  ∀ n, P2208608936758872007.a n = A032037 (n + 1)

end A032037

/-! ## A032037.P16417481689319833343

`record[A047922(n)]*A001003(n)`
-/

namespace A032037.P16417481689319833343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001003 n

end

end A032037.P16417481689319833343

namespace A032037

/-- `record[A047922(n)]*A001003(n)` -/
def P16417481689319833343.Spec : Prop :=
  ∀ n, P16417481689319833343.a n = A032037 (n + 1)

end A032037

/-! ## A032037.P11418901897027730440

`record[A084938(n)]*A001003(n)`
-/

namespace A032037.P11418901897027730440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001003 n

end

end A032037.P11418901897027730440

namespace A032037

/-- `record[A084938(n)]*A001003(n)` -/
def P11418901897027730440.Spec : Prop :=
  ∀ n, P11418901897027730440.a n = A032037 (n + 1)

end A032037

/-! ## A032037.P9815272895712491639

`A000142(n+1)*A001003(n)`
-/

namespace A032037.P9815272895712491639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A001003 n

end

end A032037.P9815272895712491639

namespace A032037

/-- `A000142(n+1)*A001003(n)` -/
def P9815272895712491639.Spec : Prop :=
  ∀ n, P9815272895712491639.a n = A032037 (n + 1)

end A032037

/-!
# A032038: "BFJ" (reversible, size, labeled) transform of 2,2,2,2...

The programs for A032038, there is no canonical definition to state claims against.
-/

/-! ## A032038.P10583896446878102525

`floor(A032000(n)/2)+1`
-/

namespace A032038.P10583896446878102525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032000 n : ℚ) / 2⌋ + 1

end

end A032038.P10583896446878102525

/-! ## A032038.P801421838177174080

`gcd(ceil((A032000(n)+1)/2), A000038(n))`
-/

namespace A032038.P801421838177174080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(A032000 n + 1 : ℚ) / 2⌉ (A000038 n)

end

end A032038.P801421838177174080

/-! ## A032038.P18209844380461681851

`or(ceil((A032000(n)+1)/2), A000007(n))`
-/

namespace A032038.P18209844380461681851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(A032000 n + 1 : ℚ) / 2⌉ (A000007 n)

end

end A032038.P18209844380461681851

/-! ## A032038.P269545063301358139

`A000007(n+1)+ceil((A032000(n)+1)/2)`
-/

namespace A032038.P269545063301358139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ⌈(A032000 n + 1 : ℚ) / 2⌉

end

end A032038.P269545063301358139

/-! ## A032038.P5670866666709218268

`(A032000(n)+A000034(A004273(n)))/2`
-/

namespace A032038.P5670866666709218268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032000 n + A000034 (A004273 n).toNat : ℚ) / 2

end

end A032038.P5670866666709218268

/-!
# A032039: "BFJ" (reversible, size, labeled) transform of 2,1,1,1...

The programs for A032039, there is no canonical definition to state claims against.
-/

/-! ## A032039.P10086276466726322531

`floor(A032001(n)/2)+1`
-/

namespace A032039.P10086276466726322531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032001 n : ℚ) / 2⌋ + 1

end

end A032039.P10086276466726322531

/-! ## A032039.P1448312844762458237

`A032011(n)+1-A032051(n)`
-/

namespace A032039.P1448312844762458237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032011 n + (1 - A032051 n)

end

end A032039.P1448312844762458237

/-! ## A032039.P324646415177826614

`2*A032049(n)-A032051(n)`
-/

namespace A032039.P324646415177826614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032049 n - A032051 n

end

end A032039.P324646415177826614

/-! ## A032039.P16726797470008407502

`2*A032049(n)-ceil(A032013(n)/2)`
-/

namespace A032039.P16726797470008407502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032049 n - ⌈(A032013 n : ℚ) / 2⌉

end

end A032039.P16726797470008407502

/-! ## A032039.P16458511400225879061

`ceil(cosh(log(A032001(n))))`
-/

namespace A032039.P16458511400225879061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A032001 n : ℝ))⌉

end

end A032039.P16458511400225879061

/-!
# A032040: "BFJ" (reversible, size, labeled) transform of 1,2,3,4...

The programs for A032040, there is no canonical definition to state claims against.
-/

/-! ## A032040.P4973068885022330015

`ceil((A032002(n)+n)/2)`
-/

namespace A032040.P4973068885022330015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032002 n + (n : ℤ) : ℚ) / 2⌉

end

end A032040.P4973068885022330015

/-! ## A032040.P16058170476904195802

`(A032002(n)+A028310(n))/2`
-/

namespace A032040.P16058170476904195802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032002 n + A028310 n : ℚ) / 2

end

end A032040.P16058170476904195802

/-! ## A032040.P16123986081627026869

`(A032002(A000038(n)+n)+n)/2`
-/

namespace A032040.P16123986081627026869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032002 (A000038 n + (n : ℤ)).toNat + (n : ℤ) : ℚ) / 2

end

end A032040.P16123986081627026869

/-! ## A032040.P9678475208662583714

`(A032002(n*a(A037830(n+1)))+n)/2` with `a(0)=1, a(1)=1`
-/

namespace A032040.P9678475208662583714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A032002 (SequenceMachineLib.roundAway ((n : ℚ) * a (A037830 (n + 1)).toNat)).toNat + (n : ℤ) : ℚ) / 2

end

end A032040.P9678475208662583714

/-!
# A032041: "BFJ" (reversible, size, labeled) transform of 1,3,5,7...

The programs for A032041, there is no canonical definition to state claims against.
-/

/-! ## A032041.P14584662066142325155

`A003602(A032003(n)+A004275(n))`
-/

namespace A032041.P14584662066142325155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A032003 n + A004275 n).toNat

end

end A032041.P14584662066142325155

/-! ## A032041.P7655881651823362475

`A004525(A032003(n)+A004273(n))`
-/

namespace A032041.P7655881651823362475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A032003 n + A004273 n).toNat

end

end A032041.P7655881651823362475

/-! ## A032041.P13753661772306440471

`A292155(A036718(n))+A032300(n)`
-/

namespace A032041.P13753661772306440471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292155 (A036718 n).toNat + A032300 n

end

end A032041.P13753661772306440471

/-!
# A032042: Shifts left under "BFJ" (reversible, size, labeled) transform.

The programs for A032042, there is no canonical definition to state claims against.
-/

/-! ## A032042.P16929399207304116491

`A032056(∑[(1-∑{digits}[n+2, #]+n)²])`
-/

namespace A032042.P16929399207304116491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032042.P16929399207304116491

/-! ## A032042.P12830396373580626291

`A032056((n+1)*(1-∑{digits}[n+2, #]+n)²)`
-/

namespace A032042.P12830396373580626291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032056 ((n + 1 : ℤ) * (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)) ^ 2).toNat

end

end A032042.P12830396373580626291

/-! ## A032042.P519942385429409299

`A032056(n+1)^(1-∑{digits}[n+2, #]+n)²`
-/

namespace A032042.P519942385429409299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032056 (n + 1) : ℚ) ^ ((1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)) ^ 2 : ℤ)

end

end A032042.P519942385429409299

/-! ## A032042.P17243237514273450547

`A288469(A032056(n+1))`
-/

namespace A032042.P17243237514273450547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A032056 (n + 1)).toNat

end

end A032042.P17243237514273450547

/-!
# A032043: "BFK" (reversible, size, unlabeled) transform of 2,2,2,2...

The programs for A032043, there is no canonical definition to state claims against.
-/

/-! ## A032043.P17955795897410246024

`floor(A032005(n)/2)+1`
-/

namespace A032043.P17955795897410246024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032005 n : ℚ) / 2⌋ + 1

end

end A032043.P17955795897410246024

/-! ## A032043.P13918018712238218517

`A397660(n)+A057427(n)`
-/

namespace A032043.P13918018712238218517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397660 n + A057427 n

end

end A032043.P13918018712238218517

/-! ## A032043.P4294007807238483716

`A397660(n)-A057428(n)`
-/

namespace A032043.P4294007807238483716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397660 n - A057428 n

end

end A032043.P4294007807238483716

/-! ## A032043.P16528607963553185803

`A036453(n+1)*A351639(n)`
-/

namespace A032043.P16528607963553185803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A351639 n

end

end A032043.P16528607963553185803

/-! ## A032043.P3388516286621976681

`(A036453(n+1)+A032005(n))/2`
-/

namespace A032043.P3388516286621976681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036453 (n + 1) + A032005 n : ℚ) / 2

end

end A032043.P3388516286621976681

/-! ## A032043.P5744336753836754876

`(A032005(n)+A000034(A004273(n)))/2`
-/

namespace A032043.P5744336753836754876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032005 n + A000034 (A004273 n).toNat : ℚ) / 2

end

end A032043.P5744336753836754876

/-!
# A032044: "BFK" (reversible, size, unlabeled) transform of 2,1,1,1...

The programs for A032044, there is no canonical definition to state claims against.
-/

/-! ## A032044.P7116978827146003281

`ceil(cosh(log(A032006(n))))`
-/

namespace A032044.P7116978827146003281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A032006 n : ℝ))⌉

end

end A032044.P7116978827146003281

/-! ## A032044.P8584492122371634138

`ceil(A032006(n)/A329683(n))`
-/

namespace A032044.P8584492122371634138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032006 n : ℚ) / (A329683 n : ℚ)⌉

end

end A032044.P8584492122371634138

/-! ## A032044.P7737244108699178261

`A032020(n)+1-A032060(n)`
-/

namespace A032044.P7737244108699178261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n + (1 - A032060 n)

end

end A032044.P7737244108699178261

/-! ## A032044.P16800866955536034122

`2*A032058(n)-A032060(n)`
-/

namespace A032044.P16800866955536034122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032058 n - A032060 n

end

end A032044.P16800866955536034122

/-! ## A032044.P10043113077844285388

`1-A032060(n)-(A261982(n)-A011782(n))`
-/

namespace A032044.P10043113077844285388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A032060 n - (A261982 n - A011782 n)

end

end A032044.P10043113077844285388

/-!
# A032045: "BFK" (reversible, size, unlabeled) transform of 1,2,3,4...

The programs for A032045, there is no canonical definition to state claims against.
-/

/-! ## A032045.P5278083810219896426

`ceil((A032007(n)+n)/2)`
-/

namespace A032045.P5278083810219896426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032007 n + (n : ℤ) : ℚ) / 2⌉

end

end A032045.P5278083810219896426

/-! ## A032045.P2723517637513310726

`(A032007(n)+A028310(n))/2`
-/

namespace A032045.P2723517637513310726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032007 n + A028310 n : ℚ) / 2

end

end A032045.P2723517637513310726

/-! ## A032045.P14366665653942265485

`(A065033(2*n)+A032007(n))/2`
-/

namespace A032045.P14366665653942265485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (2 * n) + A032007 n : ℚ) / 2

end

end A032045.P14366665653942265485

/-! ## A032045.P5421807250549541812

`(A032007(n)+n)/A036453(n+1)`
-/

namespace A032045.P5421807250549541812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032007 n + (n : ℤ) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A032045.P5421807250549541812

/-!
# A032046: "BFK" (reversible, size, unlabeled) transform of 1,3,5,7...

The programs for A032046, there is no canonical definition to state claims against.
-/

/-! ## A032046.P1271890512454848125

`(A032008(n)+A004273(n))/A036453(n+1)`
-/

namespace A032046.P1271890512454848125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032008 n + A004273 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A032046.P1271890512454848125

/-! ## A032046.P17810200703491018258

`(A032008(n)+A004273(n))/A020639(A103517(n))`
-/

namespace A032046.P17810200703491018258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032008 n + A004273 n : ℚ) / (A020639 (A103517 n).toNat : ℚ)

end

end A032046.P17810200703491018258

/-! ## A032046.P8728117478021756951

`(A032008(n)+A004273(n))/A020639(A125514(n))`
-/

namespace A032046.P8728117478021756951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032008 n + A004273 n : ℚ) / (A020639 (A125514 n).toNat : ℚ)

end

end A032046.P8728117478021756951

/-! ## A032046.P11609857029306631524

`(A032008(n)+A004273(n))/A020639(A320191(n))`
-/

namespace A032046.P11609857029306631524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032008 n + A004273 n : ℚ) / (A020639 (A320191 n).toNat : ℚ)

end

end A032046.P11609857029306631524

/-! ## A032046.P2561276265274999082

`(A032008(n)+A004273(n))/A020639(A116882(n+1))`
-/

namespace A032046.P2561276265274999082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032008 n + A004273 n : ℚ) / (A020639 (A116882 (n + 1)).toNat : ℚ)

end

end A032046.P2561276265274999082

/-!
# A032047: Number of dyslexic planted planar trees with n+1 nodes where any 2 subtrees extending from the same node are different sizes.

The programs for A032047, there is no canonical definition to state claims against.
-/

/-! ## A032047.P3114365611995964449

`A325100(A352944(n))`
-/

namespace A032047.P3114365611995964449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325100 (A352944 n).toNat

end

end A032047.P3114365611995964449

/-! ## A032047.P14043993261829733209

`A262689(A208237(n)-A004526(n))`
-/

namespace A032047.P14043993261829733209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A208237 n - A004526 n).toNat

end

end A032047.P14043993261829733209

/-! ## A032047.P11328896441522825700

`round(sqrt(A350827(n+4)/2))`
-/

namespace A032047.P11328896441522825700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A350827 (n + 4) : ℚ) / 2 : ℝ))

end

end A032047.P11328896441522825700

/-! ## A032047.P8378370904285649870

`A168045(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A032047.P8378370904285649870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A168045 (a (n - 1)).toNat

end

end A032047.P8378370904285649870

/-! ## A032047.P3439791546454050070

`A176298(A148686(n))`
-/

namespace A032047.P3439791546454050070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176298 (A148686 n).toNat

end

end A032047.P3439791546454050070

/-!
# A032048: Number of dyslexic rooted planar trees with n nodes where any 2 subtrees extending from a node are of different sizes.

The programs for A032048, there is no canonical definition to state claims against.
-/

/-! ## A032048.P11362775593699772145

`A172471(A027610(n+1))`
-/

namespace A032048.P11362775593699772145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A027610 (n + 1)).toNat

end

end A032048.P11362775593699772145

/-! ## A032048.P13644850129326638745

`A172471(A371350(n+1))+1`
-/

namespace A032048.P13644850129326638745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A371350 (n + 1)).toNat + 1

end

end A032048.P13644850129326638745

/-! ## A032048.P5922102833526051272

`A257639(A272065(n)+A000110(n))`
-/

namespace A032048.P5922102833526051272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A272065 n + A000110 n).toNat

end

end A032048.P5922102833526051272

/-! ## A032048.P18332124068540099616

`A051889(A027071(n)-A107243(n))`
-/

namespace A032048.P18332124068540099616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A027071 n - A107243 n).toNat

end

end A032048.P18332124068540099616

/-! ## A032048.P14470569223462774301

`A276581(A000111(n))-A239116(n)`
-/

namespace A032048.P14470569223462774301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A000111 n).toNat - A239116 n

end

end A032048.P14470569223462774301

/-!
# A032049: "BGJ" (reversible, element, labeled) transform of 1,1,1,1...

The programs for A032049, there is no canonical definition to state claims against.
-/

/-! ## A032049.P12080757354384372672

`ceil(A032011(n)/2)`
-/

namespace A032049.P12080757354384372672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032011 n : ℚ) / 2⌉

end

end A032049.P12080757354384372672

/-! ## A032049.P12096632589922538506

`round(A032011(n)/A036453(n+1))`
-/

namespace A032049.P12096632589922538506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032011 n : ℚ) / (A036453 (n + 1) : ℚ))

end

end A032049.P12096632589922538506

/-! ## A032049.P8875095627911712986

`(A261836(∑[n]+n)+1)/2`
-/

namespace A032049.P8875095627911712986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261836 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1 : ℚ) / 2

end

end A032049.P8875095627911712986

/-! ## A032049.P16809184710510288052

`ceil(A261836(A000096(n))/2)`
-/

namespace A032049.P16809184710510288052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261836 (A000096 n).toNat : ℚ) / 2⌉

end

end A032049.P16809184710510288052

/-! ## A032049.P5881680026332158476

`round(A261836(A000096(n))/2*A033999(n)²)`
-/

namespace A032049.P5881680026332158476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A261836 (A000096 n).toNat : ℚ) / 2 * (A033999 n ^ 2 : ℚ))

end

end A032049.P5881680026332158476

/-!
# A032050: "BGJ" (reversible, element, labeled) transform of 1,0,1,0... (odds).

The programs for A032050, there is no canonical definition to state claims against.
-/

/-! ## A032050.P13378185996219435650

`ceil(A032012(n)/2)`
-/

namespace A032050.P13378185996219435650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032012 n : ℚ) / 2⌉

end

end A032050.P13378185996219435650

/-! ## A032050.P6113252790751581881

`round((A032012(n)+A000035(n))/2)`
-/

namespace A032050.P6113252790751581881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032012 n + A000035 n : ℚ) / 2)

end

end A032050.P6113252790751581881

/-! ## A032050.P5365776121837769808

`or(round(A032012(n)/2), A000007(n))`
-/

namespace A032050.P5365776121837769808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A032012 n : ℚ) / 2)) (A000007 n)

end

end A032050.P5365776121837769808

/-! ## A032050.P3074758775402583322

`(A032012(n)+A000035(n))/2*A000038(n)!`
-/

namespace A032050.P3074758775402583322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032012 n + A000035 n : ℚ) / 2 * (Nat.factorial (A000038 n).toNat : ℚ)

end

end A032050.P3074758775402583322

/-! ## A032050.P11379222849392573734

`(A032012(n)+A000035(n))/A020639(A008253(n))`
-/

namespace A032050.P11379222849392573734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032012 n + A000035 n : ℚ) / (A020639 (A008253 n).toNat : ℚ)

end

end A032050.P11379222849392573734

/-! ## A032050.P928646213534644251

`(A032012(n)+A000035(n))/A020639(A008574(n))`
-/

namespace A032050.P928646213534644251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032012 n + A000035 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A032050.P928646213534644251

/-! ## A032050.P14799102633708402552

`(A032012(n)+A000035(n))/A020639(A278222(n))`
-/

namespace A032050.P14799102633708402552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032012 n + A000035 n : ℚ) / (A020639 (A278222 n).toNat : ℚ)

end

end A032050.P14799102633708402552

/-! ## A032050.P16662111836897602385

`(A032012(n)+A000035(n))/2*A001222(A137922(n+2))`
-/

namespace A032050.P16662111836897602385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032012 n + A000035 n : ℚ) / 2 * (A001222 (A137922 (n + 2)).toNat : ℚ)

end

end A032050.P16662111836897602385

/-!
# A032051: "BGJ" (reversible, element, labeled) transform of 0,1,1,1...

The programs for A032051, there is no canonical definition to state claims against.
-/

/-! ## A032051.P498996065143999507

`ceil(A032013(n)/2)`
-/

namespace A032051.P498996065143999507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032013 n : ℚ) / 2⌉

end

end A032051.P498996065143999507

/-! ## A032051.P832923604615322376

`round(A032013(n)/A020639(A017293(n)))`
-/

namespace A032051.P832923604615322376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032013 n : ℚ) / (A020639 (A017293 n).toNat : ℚ))

end

end A032051.P832923604615322376

/-! ## A032051.P2813898956321660125

`round(A032013(n)/A141044(A025444(n)))`
-/

namespace A032051.P2813898956321660125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032013 n : ℚ) / (A141044 (A025444 n).toNat : ℚ))

end

end A032051.P2813898956321660125

/-! ## A032051.P13625167630469762055

`2*A032049(n)-A032039(n)`
-/

namespace A032051.P13625167630469762055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032049 n - A032039 n

end

end A032051.P13625167630469762055

/-!
# A032052: "BGJ" (reversible, element, labeled) transform of 2,2,2,2...

The programs for A032052, there is no canonical definition to state claims against.
-/

/-! ## A032052.P10261654402588689431

`floor(A032014(n)/2)+1`
-/

namespace A032052.P10261654402588689431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032014 n : ℚ) / 2⌋ + 1

end

end A032052.P10261654402588689431

/-! ## A032052.P6525298631167373191

`(A057427(n)+A032014(n)+1)/2`
-/

namespace A032052.P6525298631167373191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n + (A032014 n + 1) : ℚ) / 2

end

end A032052.P6525298631167373191

/-! ## A032052.P14849288262002861828

`round((A032014(A004525(2*n))+1)/2)`
-/

namespace A032052.P14849288262002861828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032014 (A004525 (2 * n)).toNat + 1 : ℚ) / 2)

end

end A032052.P14849288262002861828

/-! ## A032052.P13105791681372540173

`round((A000035(n)+A032014(n)+1)/2)`
-/

namespace A032052.P13105791681372540173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000035 n + (A032014 n + 1) : ℚ) / 2)

end

end A032052.P13105791681372540173

/-! ## A032052.P7787906378978898647

`(A011655(A280773(n+1))+A032014(n)+1)/2`
-/

namespace A032052.P7787906378978898647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011655 (A280773 (n + 1)).toNat + (A032014 n + 1) : ℚ) / 2

end

end A032052.P7787906378978898647

/-!
# A032053: "BGJ" (reversible, element, labeled) transform of 2,1,1,1...

The programs for A032053, there is no canonical definition to state claims against.
-/

/-! ## A032053.P5701532558981164664

`floor(A032015(n)/2)+1`
-/

namespace A032053.P5701532558981164664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032015 n : ℚ) / 2⌋ + 1

end

end A032053.P5701532558981164664

/-! ## A032053.P5847123626232398470

`A008619(A032015(n))`
-/

namespace A032053.P5847123626232398470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A032015 n).toNat

end

end A032053.P5847123626232398470

/-! ## A032053.P6862467289442045670

`A029578(A032015(n)+1)`
-/

namespace A032053.P6862467289442045670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A032015 n + 1).toNat

end

end A032053.P6862467289442045670

/-!
# A032054: "BGJ" (reversible, element, labeled) transform of 1,2,3,4...

The programs for A032054, there is no canonical definition to state claims against.
-/

/-! ## A032054.P10962332072997363722

`ceil((A032016(n)+n)/2)`
-/

namespace A032054.P10962332072997363722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032016 n + (n : ℤ) : ℚ) / 2⌉

end

end A032054.P10962332072997363722

/-! ## A032054.P5509813995389011999

`(A032016(floor(acot(n)²+n))+n)/2`
-/

namespace A032054.P5509813995389011999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032016 ⌊SequenceMachineLib.acot (n : ℝ) ^ 2 + (n : ℝ)⌋.toNat + (n : ℤ) : ℚ) / 2

end

end A032054.P5509813995389011999

/-! ## A032054.P2463176703841575306

`(A032016(n)+A028310(n))/2`
-/

namespace A032054.P2463176703841575306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032016 n + A028310 n : ℚ) / 2

end

end A032054.P2463176703841575306

/-! ## A032054.P2488319601410759125

`(A032016(n)+n)/A000032(C(2, n+2))`
-/

namespace A032054.P2488319601410759125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032016 n + (n : ℤ) : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A032054.P2488319601410759125

/-! ## A032054.P17013019180745775900

`(A032016(n)+n)/A000032(floor(1/(n+1)))`
-/

namespace A032054.P17013019180745775900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032016 n + (n : ℤ) : ℚ) / (A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A032054.P17013019180745775900

/-! ## A032054.P14756955248551330935

`(A032016(n)+n)/A020639(A008574(n))`
-/

namespace A032054.P14756955248551330935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032016 n + (n : ℤ) : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A032054.P14756955248551330935

/-! ## A032054.P17031400030747291078

`(A032016(n)+n)/A020639(A006093(n+1))`
-/

namespace A032054.P17031400030747291078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032016 n + (n : ℤ) : ℚ) / (A020639 (A006093 (n + 1)).toNat : ℚ)

end

end A032054.P17031400030747291078

/-! ## A032054.P11447795569378837000

`(A032016(n)+n)/A020639(A000010(n+2))`
-/

namespace A032054.P11447795569378837000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032016 n + (n : ℤ) : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A032054.P11447795569378837000

/-! ## A032054.P1180942526744949232

`(A032016(n)+n)/A020639(eq[2, A000005(n+1)])`
-/

namespace A032054.P1180942526744949232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032016 n + (n : ℤ) : ℚ) / (A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ)

end

end A032054.P1180942526744949232

/-!
# A032055: "BGJ" (reversible, element, labeled) transform of 1,3,5,7...

The programs for A032055, there is no canonical definition to state claims against.
-/

/-! ## A032055.P2441861495203691470

`A004525(A032017(n)+A004273(n))`
-/

namespace A032055.P2441861495203691470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A032017 n + A004273 n).toNat

end

end A032055.P2441861495203691470

/-! ## A032055.P15399393410800037640

`A028310(n)+A004526(A032017(n))`
-/

namespace A032055.P15399393410800037640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A004526 (A032017 n).toNat

end

end A032055.P15399393410800037640

/-! ## A032055.P6524276085684487991

`A152271(A151566(n)+A032017(n))`
-/

namespace A032055.P6524276085684487991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A151566 n + A032017 n).toNat

end

end A032055.P6524276085684487991

/-!
# A032057: Doubles (index 2+) under "BGJ" (reversible, element, labeled) transform.

The programs for A032057, there is no canonical definition to state claims against.
-/

/-! ## A032057.P16422227302782533168

`n!*A127567(n!)`
-/

namespace A032057.P16422227302782533168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A127567 (Nat.factorial n)

end

end A032057.P16422227302782533168

/-!
# A032058: "BGK" (reversible, element, unlabeled) transform of 1,1,1,1,...

The programs for A032058, there is no canonical definition to state claims against.
-/

/-! ## A032058.P12853754064201182731

`1/2*(A032020(n)+1)`
-/

namespace A032058.P12853754064201182731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A032020 n + 1 : ℚ)

end

end A032058.P12853754064201182731

/-! ## A032058.P12649867921603476015

`ceil(A032020(n)/2)`
-/

namespace A032058.P12649867921603476015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032020 n : ℚ) / 2⌉

end

end A032058.P12649867921603476015

/-! ## A032058.P11868881149752291849

`A216695(n)/2+1`
-/

namespace A032058.P11868881149752291849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216695 n : ℚ) / 2 + 1

end

end A032058.P11868881149752291849

/-! ## A032058.P6663351649392895733

`A032020(n)-A216695(n)/2`
-/

namespace A032058.P6663351649392895733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032020 n : ℚ) - (A216695 n : ℚ) / 2

end

end A032058.P6663351649392895733

/-! ## A032058.P13328868015282451230

`(A032020(n)+A033999(n)²)/2`
-/

namespace A032058.P13328868015282451230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032020 n + A033999 n ^ 2 : ℚ) / 2

end

end A032058.P13328868015282451230

/-! ## A032058.P2078894743434945013

`(A032020(n)+char[A002251(n)])/2`
-/

namespace A032058.P2078894743434945013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032020 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / 2

end

end A032058.P2078894743434945013

/-! ## A032058.P6634702930693358408

`A216708(n)%A072576(n)/2+1`
-/

namespace A032058.P6634702930693358408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A216708 n) (A072576 n) : ℚ) / 2 + 1

end

end A032058.P6634702930693358408

/-! ## A032058.P13764941351499091310

`(A032020(n)+and(1, A016969(n)))/2`
-/

namespace A032058.P13764941351499091310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032020 n + Int.land 1 (A016969 n) : ℚ) / 2

end

end A032058.P13764941351499091310

/-! ## A032058.P5079455150789361591

`(A032020(n)+char[A065185(n+1)])/2`
-/

namespace A032058.P5079455150789361591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032020 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / 2

end

end A032058.P5079455150789361591

/-! ## A032058.P3699334095437514600

`round(A032020(n)/A020639(A017293(n)))`
-/

namespace A032058.P3699334095437514600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032020 n : ℚ) / (A020639 (A017293 n).toNat : ℚ))

end

end A032058.P3699334095437514600

/-! ## A032058.P16325784784642799889

`(A032020(A233583(n+1))+1)/2`
-/

namespace A032058.P16325784784642799889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032020 (A233583 (n + 1)).toNat + 1 : ℚ) / 2

end

end A032058.P16325784784642799889

/-! ## A032058.P6887130920994193424

`(A011782(n)+1-A261982(n))/2`
-/

namespace A032058.P6887130920994193424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n + (1 - A261982 n) : ℚ) / 2

end

end A032058.P6887130920994193424

/-! ## A032058.P8510690927734092085

`(A243081(A034856(n+1))+1)/2`
-/

namespace A032058.P8510690927734092085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243081 (A034856 (n + 1)).toNat + 1 : ℚ) / 2

end

end A032058.P8510690927734092085

/-!
# A032059: "BGK" (reversible, element, unlabeled) transform of 1,0,1,0,...

The programs for A032059, there is no canonical definition to state claims against.
-/

/-! ## A032059.P9088765257335690781

`ceil(A032021(n)/2)`
-/

namespace A032059.P9088765257335690781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032021 n : ℚ) / 2⌉

end

end A032059.P9088765257335690781

/-! ## A032059.P16149539098080090810

`round(A032021(A028310(n))/2)`
-/

namespace A032059.P16149539098080090810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032021 (A028310 n).toNat : ℚ) / 2)

end

end A032059.P16149539098080090810

/-! ## A032059.P16065794601740664748

`round(A032021(n)/A329683(n))`
-/

namespace A032059.P16065794601740664748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032021 n : ℚ) / (A329683 n : ℚ))

end

end A032059.P16065794601740664748

/-! ## A032059.P11253737655661518492

`round(A032021(n)/A010696(A187794(n+1)))`
-/

namespace A032059.P11253737655661518492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032021 n : ℚ) / (A010696 (A187794 (n + 1)).toNat : ℚ))

end

end A032059.P11253737655661518492

/-! ## A032059.P10533335619628153562

`round(A032021(n)/A020639(A189785(n+1)))`
-/

namespace A032059.P10533335619628153562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032021 n : ℚ) / (A020639 (A189785 (n + 1)).toNat : ℚ))

end

end A032059.P10533335619628153562

/-! ## A032059.P12581013978410179606

`round(A032021(n)/ratio[A011782(n)])`
-/

namespace A032059.P12581013978410179606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032021 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A032059.P12581013978410179606

/-!
# A032060: "BGK" (reversible, element, unlabeled) transform of 0,1,1,1,...

The programs for A032060, there is no canonical definition to state claims against.
-/

/-! ## A032060.P11674687611391075452

`ceil(A032022(n)/2)`
-/

namespace A032060.P11674687611391075452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032022 n : ℚ) / 2⌉

end

end A032060.P11674687611391075452

/-! ## A032060.P18395320938072985338

`round(A032022(n)/A036453(n+1))`
-/

namespace A032060.P18395320938072985338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032022 n : ℚ) / (A036453 (n + 1) : ℚ))

end

end A032060.P18395320938072985338

/-! ## A032060.P12866263631067190061

`round(A032022(n)/A040001(2*n))`
-/

namespace A032060.P12866263631067190061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032022 n : ℚ) / (A040001 (2 * n) : ℚ))

end

end A032060.P12866263631067190061

/-! ## A032060.P17477389274298119296

`A032228(n+1)-A032230(n+1)`
-/

namespace A032060.P17477389274298119296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032228 (n + 1) - A032230 (n + 1)

end

end A032060.P17477389274298119296

/-! ## A032060.P9076717607305704372

`round(A032022(n)/A000034(2*n+1))`
-/

namespace A032060.P9076717607305704372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032022 n : ℚ) / (A000034 (2 * n + 1) : ℚ))

end

end A032060.P9076717607305704372

/-! ## A032060.P18118134204061827914

`A032215(n+1)-A032228(n+1)`
-/

namespace A032060.P18118134204061827914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032215 (n + 1) - A032228 (n + 1)

end

end A032060.P18118134204061827914

/-! ## A032060.P17889005486955339267

`(A032215(n+1)-A032230(n+1))/2`
-/

namespace A032060.P17889005486955339267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032215 (n + 1) - A032230 (n + 1) : ℚ) / 2

end

end A032060.P17889005486955339267

/-!
# A032061: "BGK" (reversible, element, unlabeled) transform of 2,2,2,2,...

The programs for A032061, there is no canonical definition to state claims against.
-/

/-! ## A032061.P15878617085154417024

`∑[A347740(A343379(3*n+1)+2)]`
-/

namespace A032061.P15878617085154417024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347740 (A343379 (3 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032061.P15878617085154417024

/-! ## A032061.P15486074877773755930

`A127686(A061918(n+1)+4)+1+n`
-/

namespace A032061.P15486074877773755930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127686 (A061918 (n + 1) + 4).toNat + 1 + (n : ℤ)

end

end A032061.P15486074877773755930

/-! ## A032061.P297472285317440518

`A011776(A149701(n))+A000975(n)`
-/

namespace A032061.P297472285317440518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A149701 n).toNat + A000975 n

end

end A032061.P297472285317440518

/-! ## A032061.P17417907054427812077

`A008611(A236397(n)+A041341(n))`
-/

namespace A032061.P17417907054427812077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A236397 n + A041341 n).toNat

end

end A032061.P17417907054427812077

/-!
# A032062: "BGK" (reversible, element, unlabeled) transform of 2,1,1,1,...

The programs for A032062, there is no canonical definition to state claims against.
-/

/-! ## A032062.P15888900972502974527

`A128282(A175027(n)+A002530(n))`
-/

namespace A032062.P15888900972502974527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128282 (A175027 n + A002530 n).toNat

end

end A032062.P15888900972502974527

/-! ## A032062.P11800097273059033490

`A340203(A073776(n))+A094508(n+1)`
-/

namespace A032062.P11800097273059033490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340203 (A073776 n).toNat + A094508 (n + 1)

end

end A032062.P11800097273059033490

/-! ## A032062.P16366330889134081952

`A115514(A173540(n+5)+A106627(n))`
-/

namespace A032062.P16366330889134081952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (A173540 (n + 5) + A106627 n).toNat

end

end A032062.P16366330889134081952

/-!
# A032065: Number of dyslexic planted planar trees with n+1 nodes where any 2 subtrees extending from the same node are different.

The programs for A032065, there is no canonical definition to state claims against.
-/

/-! ## A032065.P10164735759176441988

`A257639(2*A238426(n)²)`
-/

namespace A032065.P10164735759176441988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (2 * A238426 n ^ 2).toNat

end

end A032065.P10164735759176441988

/-! ## A032065.P12214509460743309447

`A262689(A263779(n)-A002265(n))`
-/

namespace A032065.P12214509460743309447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A263779 n - A002265 n).toNat

end

end A032065.P12214509460743309447

/-! ## A032065.P1211212803977078219

`A262689(A263779(n)-A038575(n))`
-/

namespace A032065.P1211212803977078219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A263779 n - A038575 n).toNat

end

end A032065.P1211212803977078219

/-! ## A032065.P8553673173740284196

`A257639(A328434(n))-A327695(n+1)`
-/

namespace A032065.P8553673173740284196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A328434 n).toNat - A327695 (n + 1)

end

end A032065.P8553673173740284196

/-! ## A032065.P8958090214248715997

`A316495(A030038(n))`
-/

namespace A032065.P8958090214248715997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (A030038 n).toNat

end

end A032065.P8958090214248715997

/-!
# A032066: Number of dyslexic rooted planar trees with n nodes where any 2 subtrees extending from the same node are different.

The programs for A032066, there is no canonical definition to state claims against.
-/

/-! ## A032066.P17900963849527480399

`A226762(A119471(n+1)+A062203(n))`
-/

namespace A032066.P17900963849527480399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A119471 (n + 1) + A062203 n).toNat

end

end A032066.P17900963849527480399

/-!
# A032067: Shifts left 2 places under "BGK" (reversible, element, unlabeled) transform.

The programs for A032067, there is no canonical definition to state claims against.
-/

/-! ## A032067.P4258234454077966979

`A122921(A052473(n)+1)`
-/

namespace A032067.P4258234454077966979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A052473 n + 1).toNat

end

end A032067.P4258234454077966979

/-! ## A032067.P332768668351143210

`A122921(or(A052473(n), A243752(n)))`
-/

namespace A032067.P332768668351143210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (Int.lor (A052473 n) (A243752 n)).toNat

end

end A032067.P332768668351143210

/-!
# A032068: Number of series-reduced dyslexic planted planar trees with n leaves of 2 colors where any 2 subtrees extending from the same node are different.

The programs for A032068, there is no canonical definition to state claims against.
-/

/-! ## A032068.P16946911335651967823

`A105516(A300956(3*n+4)+A003947(n))`
-/

namespace A032068.P16946911335651967823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105516 (A300956 (3 * n + 4) + A003947 n).toNat

end

end A032068.P16946911335651967823

/-!
# A032069: Number of reversible strings with n labeled beads of 2 colors, no palindromes of more than 1 bead.

The programs for A032069, there is no canonical definition to state claims against.
-/

/-! ## A032069.P16858433426678694055

`(n+1)!*A032085(n+1)`
-/

namespace A032069.P16858433426678694055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A032085 (n + 1)

end

end A032069.P16858433426678694055

/-! ## A032069.P12582115680997178483

`A000142(n+1)*A032085(n+1)`
-/

namespace A032069.P12582115680997178483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A032085 (n + 1)

end

end A032069.P12582115680997178483

/-! ## A032069.P11346231046666405228

`∏[A000027(n+1)]*A032085(n+1)`
-/

namespace A032069.P11346231046666405228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A032085 (n + 1)

end

end A032069.P11346231046666405228

/-! ## A032069.P11218581866553336714

`∏[A130446(n+1)]*A032085(n+1)`
-/

namespace A032069.P11218581866553336714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A032085 (n + 1)

end

end A032069.P11218581866553336714

/-! ## A032069.P8381266260927740758

`∏[n+1]*A032085(A008619(2*n))`
-/

namespace A032069.P8381266260927740758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A032085 (A008619 (2 * n)).toNat

end

end A032069.P8381266260927740758

/-!
# A032070: Number of reversible strings with n labeled beads of 3 colors, no palindromes of more than 1 bead.

The programs for A032070, there is no canonical definition to state claims against.
-/

/-! ## A032070.P14820126310333740061

`(n+1)!*A032086(n+1)`
-/

namespace A032070.P14820126310333740061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A032086 (n + 1)

end

end A032070.P14820126310333740061

/-! ## A032070.P595447268662657062

`record[A094587(n)]*A032086(n+1)`
-/

namespace A032070.P595447268662657062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032086 (n + 1)

end

end A032070.P595447268662657062

/-! ## A032070.P18421174387687089760

`A000142(n+1)*A032086(n+1)`
-/

namespace A032070.P18421174387687089760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A032086 (n + 1)

end

end A032070.P18421174387687089760

/-! ## A032070.P4521100115634178283

`∏[A000027(n+1)]*A032086(n+1)`
-/

namespace A032070.P4521100115634178283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A032086 (n + 1)

end

end A032070.P4521100115634178283

/-! ## A032070.P1582834290052723404

`∏[A085736(n+1)]*A032086(n+1)`
-/

namespace A032070.P1582834290052723404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A032086 (n + 1)

end

end A032070.P1582834290052723404

/-!
# A032071: Number of reversible strings with n labeled beads of 4 colors, no palindromes of more than 1 bead.

The programs for A032071, there is no canonical definition to state claims against.
-/

/-! ## A032071.P8928376640228256168

`∏[n+1]*A032087(n+1)`
-/

namespace A032071.P8928376640228256168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A032087 (n + 1)

end

end A032071.P8928376640228256168

/-! ## A032071.P2950862766813262765

`(xor(2, A141023(n+1))+2)*A000079(n)*∏[n+1]`
-/

namespace A032071.P2950862766813262765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (A141023 (n + 1)) + 2) * A000079 n * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A032071.P2950862766813262765

/-! ## A032071.P16214909671504674168

`A032087(n+1)*A214080(A028387(n))`
-/

namespace A032071.P16214909671504674168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032087 (n + 1) * A214080 (A028387 n).toNat

end

end A032071.P16214909671504674168

/-! ## A032071.P3268999034107412496

`A032087(n+1)*A059590(A000079(n))`
-/

namespace A032071.P3268999034107412496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032087 (n + 1) * A059590 (A000079 n).toNat

end

end A032071.P3268999034107412496

/-! ## A032071.P12737616024761243131

`A032087(n+1)*A121663(A000225(n))`
-/

namespace A032071.P12737616024761243131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032087 (n + 1) * A121663 (A000225 n).toNat

end

end A032071.P12737616024761243131

/-!
# A032072: Number of reversible strings with n labeled beads of 5 colors, no palindromes of more than 1 bead.

The programs for A032072, there is no canonical definition to state claims against.
-/

/-! ## A032072.P11359094105598213443

`(n+1)!*A032088(n+1)`
-/

namespace A032072.P11359094105598213443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A032088 (n + 1)

end

end A032072.P11359094105598213443

/-! ## A032072.P17307379795776129629

`record[A094587(n)]*A032088(n+1)`
-/

namespace A032072.P17307379795776129629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032088 (n + 1)

end

end A032072.P17307379795776129629

/-! ## A032072.P4222572951970136134

`record[A233543(n)]*A032088(n+1)`
-/

namespace A032072.P4222572951970136134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032088 (n + 1)

end

end A032072.P4222572951970136134

/-! ## A032072.P1906890245804527280

`∏[A000027(n+1)]*A032088(n+1)`
-/

namespace A032072.P1906890245804527280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A032088 (n + 1)

end

end A032072.P1906890245804527280

/-! ## A032072.P18161938656910290530

`∏[A085736(n+1)]*A032088(n+1)`
-/

namespace A032072.P18161938656910290530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A032088 (n + 1)

end

end A032072.P18161938656910290530

/-!
# A032073: "BHJ" (reversible, identity, labeled) transform of 1,1,1,1...

The programs for A032073, there is no canonical definition to state claims against.
-/

/-! ## A032073.P8570407239722221039

`floor(sqrt(A163910(∑[n])))`
-/

namespace A032073.P8570407239722221039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163910 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A032073.P8570407239722221039

/-!
# A032074: "BHJ" (reversible, identity, labeled) transform of 1,0,1,0... (odds).

The programs for A032074, there is no canonical definition to state claims against.
-/

/-! ## A032074.P9926124303980270330

`A358638(A125500(n)+n)`
-/

namespace A032074.P9926124303980270330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358638 (A125500 n + (n : ℤ)).toNat

end

end A032074.P9926124303980270330

/-! ## A032074.P12824736117720881017

`A219255(A055244(n))-n`
-/

namespace A032074.P12824736117720881017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219255 (A055244 n).toNat - (n : ℤ)

end

end A032074.P12824736117720881017

/-!
# A032075: "BHJ" (reversible, identity, labeled) transform of 0,1,1,1...

The programs for A032075, there is no canonical definition to state claims against.
-/

/-! ## A032075.P14819807952853818602

`A032327(n*a(floor(n/2))+1)` with `a(0)=0, a(1)=1`
-/

namespace A032075.P14819807952853818602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A032327 ((n : ℤ) * a ⌊(n : ℚ) / 2⌋.toNat + 1).toNat

end

end A032075.P14819807952853818602

/-! ## A032075.P4937138102004430203

`A103205(A032327(n+1))`
-/

namespace A032075.P4937138102004430203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A032327 (n + 1)).toNat

end

end A032075.P4937138102004430203

/-! ## A032075.P4314493268311377393

`A032327(∑[A293718(n)!])`
-/

namespace A032075.P4314493268311377393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A293718 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032327 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032075.P4314493268311377393

/-! ## A032075.P14369460807635827897

`A032327(A346701((n+1)²))`
-/

namespace A032075.P14369460807635827897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032327 (A346701 ((n + 1) ^ 2)).toNat

end

end A032075.P14369460807635827897

/-!
# A032076: "BHJ" (reversible, identity, labeled) transform of 2,2,2,2...

The programs for A032076, there is no canonical definition to state claims against.
-/

/-! ## A032076.P16379192597174104467

`2*A065631(A152059(n))`
-/

namespace A032076.P16379192597174104467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065631 (A152059 n).toNat

end

end A032076.P16379192597174104467

/-!
# A032077: "BHJ" (reversible, identity, labeled) transform of 2,1,1,1...

The programs for A032077, there is no canonical definition to state claims against.
-/

/-! ## A032077.P15410357760559425460

`A125976(A201550(n))+A054859(n)`
-/

namespace A032077.P15410357760559425460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A201550 n).toNat + A054859 n

end

end A032077.P15410357760559425460

/-!
# A032079: "BHJ" (reversible, identity, labeled) transform of 1,2,3,4...

The programs for A032079, there is no canonical definition to state claims against.
-/

/-! ## A032079.P9595954065362270991

`A116529(floor(10^(n-1)))+n`
-/

namespace A032079.P9595954065362270991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116529 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat + (n : ℤ)

end

end A032079.P9595954065362270991

/-!
# A032080: "BHJ" (reversible, identity, labeled) transform of 1,3,5,7...

The programs for A032080, there is no canonical definition to state claims against.
-/

/-! ## A032080.P1662673615953153229

`A017665(A178501(n)+A000219(n))`
-/

namespace A032080.P1662673615953153229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A178501 n + A000219 n).toNat

end

end A032080.P1662673615953153229

/-!
# A032081: Shifts left under "BHJ" (reversible, identity, labeled) transform.

The programs for A032081, there is no canonical definition to state claims against.
-/

/-! ## A032081.P15204831443664191167

`∏[∏{e}[((∏[2*or(1, n)/(n+1)]-2)/2)^n, #+1]]`
-/

namespace A032081.P15204831443664191167
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f3 j - 2) / 2) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f2 n)).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032081.P15204831443664191167

/-! ## A032081.P546092351680805870

`∏[∏{e}[A343428(n), #]]`
-/

namespace A032081.P546092351680805870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343428 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032081.P546092351680805870

/-!
# A032082: Shifts left under "BHJ" (reversible, identity, labeled) transform.

The programs for A032082, there is no canonical definition to state claims against.
-/

/-! ## A032082.P12595877147208653131

`A240799(n+1)+A034884(A000325(n))`
-/

namespace A032082.P12595877147208653131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240799 (n + 1) + A034884 (A000325 n).toNat

end

end A032082.P12595877147208653131

/-! ## A032082.P5182618476280393333

`A163650(n)+A080513(A055793(n+1))`
-/

namespace A032082.P5182618476280393333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163650 n + A080513 (A055793 (n + 1)).toNat

end

end A032082.P5182618476280393333

/-!
# A032083: Shifts left 2 places under "BHJ" (reversible, identity, labeled) transform.

The programs for A032083, there is no canonical definition to state claims against.
-/

/-! ## A032083.P361948665892997050

`A004525(A005370(n))`
-/

namespace A032083.P361948665892997050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A005370 n).toNat

end

end A032083.P361948665892997050

/-! ## A032083.P288539941952935073

`A005252(A041809(n))`
-/

namespace A032083.P288539941952935073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (A041809 n).toNat

end

end A032083.P288539941952935073

/-! ## A032083.P12178854713908140955

`A034367(A019595(n))`
-/

namespace A032083.P12178854713908140955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034367 (A019595 n).toNat

end

end A032083.P12178854713908140955

/-!
# A032084: Doubles (index 2+) under "BHJ" (reversible, identity, labeled) transform.

The programs for A032084, there is no canonical definition to state claims against.
-/

/-! ## A032084.P1586024901800081543

`A005843(A001003(n)*A364866(n))`
-/

namespace A032084.P1586024901800081543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001003 n * A364866 n).toNat

end

end A032084.P1586024901800081543

/-!
# A032085: Number of reversible strings with n beads of 2 colors. If more than 1 bead, not palindromic.

The programs for A032085, the canonical program `A032085.P11728261101407275475` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032085 has offset 1).

The definition of A032085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032085.P11728261101407275475

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032085

/-- `2*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P11728261101407275475.Spec : Prop :=
  ∀ n, P11728261101407275475.a n = A032085 (n + 1)

theorem P11728261101407275475.correct : P11728261101407275475.Spec := by
  intro n
  simp only [A032085, Nat.add_sub_cancel]

end A032085

/-! ## A032085.P211226026199783639

`2*or(a(n-1), a(n-2))` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A032085.P211226026199783639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  2 * Nat.lor (a (n - 1)) (a (n - 2))

end

end A032085.P211226026199783639

namespace A032085

/-- `2*or(a(n-1), a(n-2))` -/
def P211226026199783639.Spec : Prop :=
  ∀ n, (P211226026199783639.a n : ℤ) = A032085 (n + 1)

end A032085

/-! ## A032085.P9869146151583747663

`xor(2*a(n-2)+1, 2^(n-1)+1)` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A032085.P9869146151583747663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  Int.xor (2 * a (n - 2) + 1) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1))

end

end A032085.P9869146151583747663

namespace A032085

/-- `xor(2*a(n-2)+1, 2^(n-1)+1)` -/
def P9869146151583747663.Spec : Prop :=
  ∀ n, P9869146151583747663.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P6489094670604739918

`A122746(abs(1-n))`
-/

namespace A032085.P6489094670604739918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 |1 - (n : ℤ)|.toNat

end

end A032085.P6489094670604739918

namespace A032085

/-- `A122746(abs(1-n))` -/
def P6489094670604739918.Spec : Prop :=
  ∀ n, P6489094670604739918.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P3844777983382910398

`A007179(n)+a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A032085.P3844777983382910398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A007179 n + a (n - 1)

end

end A032085.P3844777983382910398

namespace A032085

/-- `A007179(n)+a(n-1)` -/
def P3844777983382910398.Spec : Prop :=
  ∀ n, P3844777983382910398.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P6602250934898595212

`A171559(n)-A016116(n)`
-/

namespace A032085.P6602250934898595212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 n - A016116 n

end

end A032085.P6602250934898595212

namespace A032085

/-- `A171559(n)-A016116(n)` -/
def P6602250934898595212.Spec : Prop :=
  ∀ n, P6602250934898595212.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P10355200504918791806

`2*A011782(n)-A131572(n)`
-/

namespace A032085.P10355200504918791806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n - A131572 n

end

end A032085.P10355200504918791806

namespace A032085

/-- `2*A011782(n)-A131572(n)` -/
def P10355200504918791806.Spec : Prop :=
  ∀ n, P10355200504918791806.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P3800106824997620363

`A131572(A004277(n)+1)-A131572(n)`
-/

namespace A032085.P3800106824997620363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (A004277 n + 1).toNat - A131572 n

end

end A032085.P3800106824997620363

namespace A032085

/-- `A131572(A004277(n)+1)-A131572(n)` -/
def P3800106824997620363.Spec : Prop :=
  ∀ n, P3800106824997620363.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P12357768587547059479

`A131572(A004273(n)+2)-A131572(n)`
-/

namespace A032085.P12357768587547059479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (A004273 n + 2).toNat - A131572 n

end

end A032085.P12357768587547059479

namespace A032085

/-- `A131572(A004273(n)+2)-A131572(n)` -/
def P12357768587547059479.Spec : Prop :=
  ∀ n, P12357768587547059479.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P15458032783110547691

`A131572(A004275(n)+2)-A131572(n)`
-/

namespace A032085.P15458032783110547691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (A004275 n + 2).toNat - A131572 n

end

end A032085.P15458032783110547691

namespace A032085

/-- `A131572(A004275(n)+2)-A131572(n)` -/
def P15458032783110547691.Spec : Prop :=
  ∀ n, P15458032783110547691.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P14639540700484768963

`A131572(A163985(n)+2)-A131572(n)`
-/

namespace A032085.P14639540700484768963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (A163985 n + 2).toNat - A131572 n

end

end A032085.P14639540700484768963

namespace A032085

/-- `A131572(A163985(n)+2)-A131572(n)` -/
def P14639540700484768963.Spec : Prop :=
  ∀ n, P14639540700484768963.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P5423397129291159244

`A000079(A000007(n)+n)-A131572(n)`
-/

namespace A032085.P5423397129291159244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000007 n + (n : ℤ)).toNat - A131572 n

end

end A032085.P5423397129291159244

namespace A032085

/-- `A000079(A000007(n)+n)-A131572(n)` -/
def P5423397129291159244.Spec : Prop :=
  ∀ n, P5423397129291159244.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P4474322588501171657

`A000007(n)-(A131572(n)-A000079(n))`
-/

namespace A032085.P4474322588501171657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A131572 n - A000079 n)

end

end A032085.P4474322588501171657

namespace A032085

/-- `A000007(n)-(A131572(n)-A000079(n))` -/
def P4474322588501171657.Spec : Prop :=
  ∀ n, P4474322588501171657.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P16768749278831120549

`A060546(n+1)*A158780(n+1)-A131572(n)`
-/

namespace A032085.P16768749278831120549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) * A158780 (n + 1) - A131572 n

end

end A032085.P16768749278831120549

namespace A032085

/-- `A060546(n+1)*A158780(n+1)-A131572(n)` -/
def P16768749278831120549.Spec : Prop :=
  ∀ n, P16768749278831120549.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P359979955059399796

`A135094(n)-a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A032085.P359979955059399796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A135094 n - a (n - 1)

end

end A032085.P359979955059399796

namespace A032085

/-- `A135094(n)-a(n-1)` -/
def P359979955059399796.Spec : Prop :=
  ∀ n, P359979955059399796.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P15022372729348722249

`Δ[A131572(2*n)]-A131572(n)`
-/

namespace A032085.P15022372729348722249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131572 n

end

end A032085.P15022372729348722249

namespace A032085

/-- `Δ[A131572(2*n)]-A131572(n)` -/
def P15022372729348722249.Spec : Prop :=
  ∀ n, P15022372729348722249.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P16642124384436342587

`or(2, A000225(n+1))-A056326(n+2)`
-/

namespace A032085.P16642124384436342587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A000225 (n + 1)) - A056326 (n + 2)

end

end A032085.P16642124384436342587

namespace A032085

/-- `or(2, A000225(n+1))-A056326(n+2)` -/
def P16642124384436342587.Spec : Prop :=
  ∀ n, P16642124384436342587.a n = A032085 (n + 1)

end A032085

/-! ## A032085.P9807254068032524009

`A005418(2*(n+1))-xor(A005418(2*(n+1)), A005418(n+2))`
-/

namespace A032085.P9807254068032524009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (2 * (n + 1)) - Int.xor (A005418 (2 * (n + 1))) (A005418 (n + 2))

end

end A032085.P9807254068032524009

namespace A032085

/-- `A005418(2*(n+1))-xor(A005418(2*(n+1)), A005418(n+2))` -/
def P9807254068032524009.Spec : Prop :=
  ∀ n, P9807254068032524009.a n = A032085 (n + 1)

end A032085

/-!
# A032086: Number of reversible strings with n beads of 3 colors. If more than 1 bead, not palindromic.

The programs for A032086, the canonical program `A032086.P9104185682000459793` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032086 has offset 1).

The definition of A032086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032086.P12306316265107390130

`3^n+3%a(n-1)*a(n-2)` with `a(0)=3, a(1)=3`
-/

namespace A032086.P12306316265107390130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  3 ^ n + 3 % a (n - 1) * a (n - 2)

end

end A032086.P12306316265107390130

namespace A032086

/-- `3^n+3%a(n-1)*a(n-2)` -/
def P12306316265107390130.Spec : Prop :=
  ∀ n, (P12306316265107390130.a n : ℤ) = A032086 (n + 1)

end A032086

/-! ## A032086.P10329258116678250731

`3^n-3*-a(n-2)%a(n-1)` with `a(0)=3, a(1)=3`
-/

namespace A032086.P10329258116678250731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  (3 ^ n : ℤ) - 3 * Int.tmod (-a (n - 2)) (a (n - 1))

end

end A032086.P10329258116678250731

namespace A032086

/-- `3^n-3*-a(n-2)%a(n-1)` -/
def P10329258116678250731.Spec : Prop :=
  ∀ n, P10329258116678250731.a n = A032086 (n + 1)

end A032086

/-! ## A032086.P3773753045336299715

`A052993(A004273(n)+2)-A052993(n)`
-/

namespace A032086.P3773753045336299715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 (A004273 n + 2).toNat - A052993 n

end

end A032086.P3773753045336299715

namespace A032086

/-- `A052993(A004273(n)+2)-A052993(n)` -/
def P3773753045336299715.Spec : Prop :=
  ∀ n, P3773753045336299715.a n = A032086 (n + 1)

end A032086

/-! ## A032086.P10925733711174118112

`A052993(A004275(n)+2)-A052993(n)`
-/

namespace A032086.P10925733711174118112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 (A004275 n + 2).toNat - A052993 n

end

end A032086.P10925733711174118112

namespace A032086

/-- `A052993(A004275(n)+2)-A052993(n)` -/
def P10925733711174118112.Spec : Prop :=
  ∀ n, P10925733711174118112.a n = A032086 (n + 1)

end A032086

/-! ## A032086.P7831126904879715893

`A052993(A092535(n)+2)-A052993(n)`
-/

namespace A032086.P7831126904879715893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 (A092535 n + 2).toNat - A052993 n

end

end A032086.P7831126904879715893

namespace A032086

/-- `A052993(A092535(n)+2)-A052993(n)` -/
def P7831126904879715893.Spec : Prop :=
  ∀ n, P7831126904879715893.a n = A032086 (n + 1)

end A032086

/-! ## A032086.P9267428010168939486

`A052993(A163985(n)+2)-A052993(n)`
-/

namespace A032086.P9267428010168939486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 (A163985 n + 2).toNat - A052993 n

end

end A032086.P9267428010168939486

namespace A032086

/-- `A052993(A163985(n)+2)-A052993(n)` -/
def P9267428010168939486.Spec : Prop :=
  ∀ n, P9267428010168939486.a n = A032086 (n + 1)

end A032086

/-! ## A032086.P18080503998078061967

`A052993(A058992(n+1)+2)-A052993(n)`
-/

namespace A032086.P18080503998078061967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 (A058992 (n + 1) + 2).toNat - A052993 n

end

end A032086.P18080503998078061967

namespace A032086

/-- `A052993(A058992(n+1)+2)-A052993(n)` -/
def P18080503998078061967.Spec : Prop :=
  ∀ n, P18080503998078061967.a n = A032086 (n + 1)

end A032086

/-! ## A032086.P15443042484561350683

`A000244(A008619(n))*A003462(A065033(n))`
-/

namespace A032086.P15443042484561350683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A008619 n).toNat * A003462 (A065033 n).toNat

end

end A032086.P15443042484561350683

namespace A032086

/-- `A000244(A008619(n))*A003462(A065033(n))` -/
def P15443042484561350683.Spec : Prop :=
  ∀ n, P15443042484561350683.a n = A032086 (n + 1)

end A032086

/-! ## A032086.P9104185682000459793

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=3, a(1)=3, a(2)=9, a(3)=36`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032086

/-- `3*a(n-1)+3*a(n-2)-9*a(n-3)` -/
def P9104185682000459793.Spec : Prop :=
  ∀ n, P9104185682000459793.a n = A032086 (n + 1)

theorem P9104185682000459793.correct : P9104185682000459793.Spec := by
  intro n
  simp only [A032086, Nat.add_sub_cancel]

end A032086

/-! ## A032086.P10021586994012984719

`A309758(2*A076921(n+1))`
-/

namespace A032086.P10021586994012984719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309758 (2 * A076921 (n + 1)).toNat

end

end A032086.P10021586994012984719

namespace A032086

/-- `A309758(2*A076921(n+1))` -/
def P10021586994012984719.Spec : Prop :=
  ∀ n, P10021586994012984719.a n = A032086 (n + 1)

end A032086

/-!
# A032087: Number of reversible strings with n beads of 4 colors. If more than 1 bead, not palindromic.

The programs for A032087, the canonical program `A032087.P12927161139422861981` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032087 has offset 1).

The definition of A032087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032087.P12927161139422861981

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=4, a(1)=6, a(2)=24, a(3)=120`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032087

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P12927161139422861981.Spec : Prop :=
  ∀ n, P12927161139422861981.a n = A032087 (n + 1)

theorem P12927161139422861981.correct : P12927161139422861981.Spec := by
  intro n
  simp only [A032087, Nat.add_sub_cancel]

end A032087

/-! ## A032087.P2736873212545163254

`4*or(a(n-1), a(n-2))` with `a(0)=4, a(1)=6`
-/

namespace A032087.P2736873212545163254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n a =>
  4 * Nat.lor (a (n - 1)) (a (n - 2))

end

end A032087.P2736873212545163254

namespace A032087

/-- `4*or(a(n-1), a(n-2))` -/
def P2736873212545163254.Spec : Prop :=
  ∀ n, (P2736873212545163254.a n : ℤ) = A032087 (n + 1)

end A032087

/-! ## A032087.P13008882760900589840

`(xor(2, A141023(n+1))+2)*A000079(n)`
-/

namespace A032087.P13008882760900589840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (A141023 (n + 1)) + 2) * A000079 n

end

end A032087.P13008882760900589840

namespace A032087

/-- `(xor(2, A141023(n+1))+2)*A000079(n)` -/
def P13008882760900589840.Spec : Prop :=
  ∀ n, P13008882760900589840.a n = A032087 (n + 1)

end A032087

/-! ## A032087.P12675644384780871850

`gcd(a(n-1), A166920(n))*A166920(n+1)` with `a(0)=4`
-/

namespace A032087.P12675644384780871850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (Int.gcd (a (n - 1)) (A166920 n) : ℤ) * A166920 (n + 1)

end

end A032087.P12675644384780871850

namespace A032087

/-- `gcd(a(n-1), A166920(n))*A166920(n+1)` -/
def P12675644384780871850.Spec : Prop :=
  ∀ n, P12675644384780871850.a n = A032087 (n + 1)

end A032087

/-! ## A032087.P8798139847677918970

`A166920(n+1)*A166920(A000007(n)+n)`
-/

namespace A032087.P8798139847677918970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 (n + 1) * A166920 (A000007 n + (n : ℤ)).toNat

end

end A032087.P8798139847677918970

namespace A032087

/-- `A166920(n+1)*A166920(A000007(n)+n)` -/
def P8798139847677918970.Spec : Prop :=
  ∀ n, P8798139847677918970.a n = A032087 (n + 1)

end A032087

/-! ## A032087.P9036800529120489170

`(A166920(n+1)-A166977(n))*A166920(n+1)`
-/

namespace A032087.P9036800529120489170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166920 (n + 1) - A166977 n) * A166920 (n + 1)

end

end A032087.P9036800529120489170

namespace A032087

/-- `(A166920(n+1)-A166977(n))*A166920(n+1)` -/
def P9036800529120489170.Spec : Prop :=
  ∀ n, P9036800529120489170.a n = A032087 (n + 1)

end A032087

/-! ## A032087.P5545119485460075923

`(A166920(n)+A057635(A003961(n+1)))*A166920(n+1)`
-/

namespace A032087.P5545119485460075923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166920 n + A057635 (A003961 (n + 1)).toNat) * A166920 (n + 1)

end

end A032087.P5545119485460075923

namespace A032087

/-- `(A166920(n)+A057635(A003961(n+1)))*A166920(n+1)` -/
def P5545119485460075923.Spec : Prop :=
  ∀ n, P5545119485460075923.a n = A032087 (n + 1)

end A032087

/-!
# A032088: Number of reversible strings with n beads of 5 colors. If more than 1 bead, not palindromic.

The programs for A032088, the canonical program `A032088.P239513853229791925` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032088 has offset 1).

The definition of A032088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032088.P239513853229791925

`5*a(n-1)+5*a(n-2)-25*a(n-3)` with `a(0)=5, a(1)=10, a(2)=50, a(3)=300`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032088

/-- `5*a(n-1)+5*a(n-2)-25*a(n-3)` -/
def P239513853229791925.Spec : Prop :=
  ∀ n, P239513853229791925.a n = A032088 (n + 1)

theorem P239513853229791925.correct : P239513853229791925.Spec := by
  intro n
  simp only [A032088, Nat.add_sub_cancel]

end A032088

/-! ## A032088.P12806886620140811924

`A000351(n+1)-A032122(n+1)*A057427(n)`
-/

namespace A032088.P12806886620140811924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (n + 1) - A032122 (n + 1) * A057427 n

end

end A032088.P12806886620140811924

namespace A032088

/-- `A000351(n+1)-A032122(n+1)*A057427(n)` -/
def P12806886620140811924.Spec : Prop :=
  ∀ n, P12806886620140811924.a n = A032088 (n + 1)

end A032088

/-! ## A032088.P4317162837967777976

`A032122(n+1)-A056451(n+1)*A057427(n)`
-/

namespace A032088.P4317162837967777976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032122 (n + 1) - A056451 (n + 1) * A057427 n

end

end A032088.P4317162837967777976

namespace A032088

/-- `A032122(n+1)-A056451(n+1)*A057427(n)` -/
def P4317162837967777976.Spec : Prop :=
  ∀ n, P4317162837967777976.a n = A032088 (n + 1)

end A032088

/-! ## A032088.P2368491854023355181

`A032072(n+1)/(n+1)!`
-/

namespace A032088.P2368491854023355181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032072 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A032088.P2368491854023355181

namespace A032088

/-- `A032072(n+1)/(n+1)!` -/
def P2368491854023355181.Spec : Prop :=
  ∀ n, P2368491854023355181.a n = (A032088 (n + 1) : ℚ)

end A032088

/-! ## A032088.P1439179187016853738

`A032072(n+1)/A000142(n+1)`
-/

namespace A032088.P1439179187016853738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032072 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A032088.P1439179187016853738

namespace A032088

/-- `A032072(n+1)/A000142(n+1)` -/
def P1439179187016853738.Spec : Prop :=
  ∀ n, P1439179187016853738.a n = (A032088 (n + 1) : ℚ)

end A032088

/-! ## A032088.P4776335229825127149

`A032072(n+1)/∏[A085736(n+1)]`
-/

namespace A032088.P4776335229825127149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032072 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A032088.P4776335229825127149

namespace A032088

/-- `A032072(n+1)/∏[A085736(n+1)]` -/
def P4776335229825127149.Spec : Prop :=
  ∀ n, P4776335229825127149.a n = (A032088 (n + 1) : ℚ)

end A032088

/-! ## A032088.P1477280359252192015

`A032072(n+1)/A032069(n+1)*A032085(n+1)`
-/

namespace A032088.P1477280359252192015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032072 (n + 1) : ℚ) / (A032069 (n + 1) : ℚ) * (A032085 (n + 1) : ℚ)

end

end A032088.P1477280359252192015

namespace A032088

/-- `A032072(n+1)/A032069(n+1)*A032085(n+1)` -/
def P1477280359252192015.Spec : Prop :=
  ∀ n, P1477280359252192015.a n = (A032088 (n + 1) : ℚ)

end A032088

/-!
# A032089: "BHK" (reversible, identity, unlabeled) transform of 1,0,1,0...(odds).

The programs for A032089, the canonical program `A032089.P12573802574290399080` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032089 has offset 1).

The definition of A032089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032089.P602219645791329514

`A032090(n+2)-A000035(n)`
-/

namespace A032089.P602219645791329514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032090 (n + 2) - A000035 n

end

end A032089.P602219645791329514

namespace A032089

/-- `A032090(n+2)-A000035(n)` -/
def P602219645791329514.Spec : Prop :=
  ∀ n, P602219645791329514.a n = A032089 (n + 1)

end A032089

/-! ## A032089.P10012718192271612731

`A032090(n+2)-Δ[A008619(n)]`
-/

namespace A032089.P10012718192271612731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032090 (n + 2) - (f1 (n + 1) - f1 n)

end

end A032089.P10012718192271612731

namespace A032089

/-- `A032090(n+2)-Δ[A008619(n)]` -/
def P10012718192271612731.Spec : Prop :=
  ∀ n, P10012718192271612731.a n = A032089 (n + 1)

end A032089

/-! ## A032089.P3504967891477686109

`A032090(n+2)-A059841(n+1)`
-/

namespace A032089.P3504967891477686109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032090 (n + 2) - A059841 (n + 1)

end

end A032089.P3504967891477686109

namespace A032089

/-- `A032090(n+2)-A059841(n+1)` -/
def P3504967891477686109.Spec : Prop :=
  ∀ n, P3504967891477686109.a n = A032089 (n + 1)

end A032089

/-! ## A032089.P18093590609921927738

`A032090(n+2)-A359820(2*n)`
-/

namespace A032089.P18093590609921927738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032090 (n + 2) - A359820 (2 * n)

end

end A032089.P18093590609921927738

namespace A032089

/-- `A032090(n+2)-A359820(2*n)` -/
def P18093590609921927738.Spec : Prop :=
  ∀ n, P18093590609921927738.a n = A032089 (n + 1)

end A032089

/-! ## A032089.P14501309723111138145

`A032090(n+2)-Δ[A110654(n+1)]`
-/

namespace A032089.P14501309723111138145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032090 (n + 2) - (f1 (n + 1) - f1 n)

end

end A032089.P14501309723111138145

namespace A032089

/-- `A032090(n+2)-Δ[A110654(n+1)]` -/
def P14501309723111138145.Spec : Prop :=
  ∀ n, P14501309723111138145.a n = A032089 (n + 1)

end A032089

/-! ## A032089.P5256079120278215259

`A032090(n+2)-Δ[Δ[A024206(n+2)]]`
-/

namespace A032089.P5256079120278215259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032090 (n + 2) - (f1 (n + 1) - f1 n)

end

end A032089.P5256079120278215259

namespace A032089

/-- `A032090(n+2)-Δ[Δ[A024206(n+2)]]` -/
def P5256079120278215259.Spec : Prop :=
  ∀ n, P5256079120278215259.a n = A032089 (n + 1)

end A032089

/-! ## A032089.P6985830338841812573

`A032090(n+2)-A001221(A006519(n+1))`
-/

namespace A032089.P6985830338841812573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032090 (n + 2) - A001221 (A006519 (n + 1)).toNat

end

end A032089.P6985830338841812573

namespace A032089

/-- `A032090(n+2)-A001221(A006519(n+1))` -/
def P6985830338841812573.Spec : Prop :=
  ∀ n, P6985830338841812573.a n = A032089 (n + 1)

end A032089

/-! ## A032089.P7951169419080600267

`A032090(n+2)-A079977(n+1)/A123231(n+2)`
-/

namespace A032089.P7951169419080600267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032090 (n + 2) : ℚ) - (A079977 (n + 1) : ℚ) / (A123231 (n + 2) : ℚ)

end

end A032089.P7951169419080600267

namespace A032089

/-- `A032090(n+2)-A079977(n+1)/A123231(n+2)` -/
def P7951169419080600267.Spec : Prop :=
  ∀ n, P7951169419080600267.a n = (A032089 (n + 1) : ℚ)

end A032089

/-! ## A032089.P12573802574290399080

`A052959(n)-A102526(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032089

/-- `A052959(n)-A102526(n)` -/
def P12573802574290399080.Spec : Prop :=
  ∀ n, P12573802574290399080.a n = A032089 (n + 1)

theorem P12573802574290399080.correct : P12573802574290399080.Spec := by
  intro n
  simp only [A032089, Nat.add_sub_cancel]

end A032089

/-! ## A032089.P6842823643242770340

`A052959(n)-A001224(A028310(n))`
-/

namespace A032089.P6842823643242770340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 n - A001224 (A028310 n).toNat

end

end A032089.P6842823643242770340

namespace A032089

/-- `A052959(n)-A001224(A028310(n))` -/
def P6842823643242770340.Spec : Prop :=
  ∀ n, P6842823643242770340.a n = A032089 (n + 1)

end A032089

/-! ## A032089.P367612271835187366

`A000045(n+1)+A032090(n+2)-A127968(n)`
-/

namespace A032089.P367612271835187366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A032090 (n + 2) - A127968 n)

end

end A032089.P367612271835187366

namespace A032089

/-- `A000045(n+1)+A032090(n+2)-A127968(n)` -/
def P367612271835187366.Spec : Prop :=
  ∀ n, P367612271835187366.a n = A032089 (n + 1)

end A032089

/-!
# A032090: "BHK" (reversible, identity, unlabeled) transform of 0,1,1,1...

The programs for A032090, the canonical program `A032090.P1511666356782873879` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032090 has offset 1).

The definition of A032090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032090.P1511666356782873879

`A032089(A028310(n))-(1-n)%2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032090

/-- `A032089(A028310(n))-(1-n)%2` -/
def P1511666356782873879.Spec : Prop :=
  ∀ n, P1511666356782873879.a n = A032090 (n + 1)

theorem P1511666356782873879.correct : P1511666356782873879.Spec := by
  intro n
  simp only [A032090, Nat.add_sub_cancel]

end A032090

/-! ## A032090.P3262006447423300857

`A027656(A324969(n+1)-A053602(n))`
-/

namespace A032090.P3262006447423300857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A324969 (n + 1) - A053602 n).toNat

end

end A032090.P3262006447423300857

namespace A032090

/-- `A027656(A324969(n+1)-A053602(n))` -/
def P3262006447423300857.Spec : Prop :=
  ∀ n, P3262006447423300857.a n = A032090 (n + 1)

end A032090

/-! ## A032090.P13629619200465087324

`A028242(A324969(n+1)-A053602(n))`
-/

namespace A032090.P13629619200465087324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A324969 (n + 1) - A053602 n).toNat

end

end A032090.P13629619200465087324

namespace A032090

/-- `A028242(A324969(n+1)-A053602(n))` -/
def P13629619200465087324.Spec : Prop :=
  ∀ n, P13629619200465087324.a n = A032090 (n + 1)

end A032090

/-! ## A032090.P9883234279333332236

`A027656(A324969(n+1)-A000045(floor(and(1, n)+(n+1)/2)))`
-/

namespace A032090.P9883234279333332236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A324969 (n + 1) - A000045 ⌊(Nat.land 1 n : ℚ) + (n + 1 : ℚ) / 2⌋.toNat).toNat

end

end A032090.P9883234279333332236

namespace A032090

/-- `A027656(A324969(n+1)-A000045(floor(and(1, n)+(n+1)/2)))` -/
def P9883234279333332236.Spec : Prop :=
  ∀ n, P9883234279333332236.a n = A032090 (n + 1)

end A032090

/-! ## A032090.P11088910078250215279

`A028242(A324969(n+1)-A000045(floor(and(1, n)+(n+1)/2)))`
-/

namespace A032090.P11088910078250215279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A324969 (n + 1) - A000045 ⌊(Nat.land 1 n : ℚ) + (n + 1 : ℚ) / 2⌋.toNat).toNat

end

end A032090.P11088910078250215279

namespace A032090

/-- `A028242(A324969(n+1)-A000045(floor(and(1, n)+(n+1)/2)))` -/
def P11088910078250215279.Spec : Prop :=
  ∀ n, P11088910078250215279.a n = A032090 (n + 1)

end A032090

/-!
# A032091: Number of reversible strings with n-1 beads of 2 colors. 4 beads are black. String is not palindromic.

The programs for A032091, the canonical program `A032091.P3822543457742477574` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032091 has offset 6).

The definition of A032091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032091.P3822543457742477574

`2*A002624(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032091

/-- `2*A002624(n)` -/
def P3822543457742477574.Spec : Prop :=
  ∀ n, P3822543457742477574.a n = A032091 (n + 6)

theorem P3822543457742477574.correct : P3822543457742477574.Spec := by
  intro n
  simp only [A032091, Nat.add_sub_cancel]

end A032091

/-! ## A032091.P10161993709287271557

`∑[∑[∑[(n+2)*char[2*n]]]]`
-/

namespace A032091.P10161993709287271557
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (if ∃ j, f4 j = n then 1 else 0)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032091.P10161993709287271557

namespace A032091

/-- `∑[∑[∑[(n+2)*char[2*n]]]]` -/
def P10161993709287271557.Spec : Prop :=
  ∀ n, (P10161993709287271557.a n : ℤ) = A032091 (n + 6)

end A032091

/-! ## A032091.P4291732770386318075

`2*∑[∑[C(floor(n/2)+2, 2)]]`
-/

namespace A032091.P4291732770386318075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032091.P4291732770386318075

namespace A032091

/-- `2*∑[∑[C(floor(n/2)+2, 2)]]` -/
def P4291732770386318075.Spec : Prop :=
  ∀ n, (P4291732770386318075.a n : ℤ) = A032091 (n + 6)

end A032091

/-! ## A032091.P7595042619883351253

`A005994(n)+A002623(n)`
-/

namespace A032091.P7595042619883351253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 n + A002623 n

end

end A032091.P7595042619883351253

namespace A032091

/-- `A005994(n)+A002623(n)` -/
def P7595042619883351253.Spec : Prop :=
  ∀ n, P7595042619883351253.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P12196017178779977552

`2*A052938(n)*A058187(n)`
-/

namespace A032091.P12196017178779977552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052938 n * A058187 n)

end

end A032091.P12196017178779977552

namespace A032091

/-- `2*A052938(n)*A058187(n)` -/
def P12196017178779977552.Spec : Prop :=
  ∀ n, P12196017178779977552.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P11020770342611807331

`A266769(n)+A055328(n+6)`
-/

namespace A032091.P11020770342611807331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n + A055328 (n + 6)

end

end A032091.P11020770342611807331

namespace A032091

/-- `A266769(n)+A055328(n+6)` -/
def P11020770342611807331.Spec : Prop :=
  ∀ n, P11020770342611807331.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P1812717732773956317

`A032092(n+7)-A005995(n)`
-/

namespace A032091.P1812717732773956317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (n + 7) - A005995 n

end

end A032091.P1812717732773956317

namespace A032091

/-- `A032092(n+7)-A005995(n)` -/
def P1812717732773956317.Spec : Prop :=
  ∀ n, P1812717732773956317.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P13258017192435049302

`A227327(n+1)+A026035(n+2)`
-/

namespace A032091.P13258017192435049302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227327 (n + 1) + A026035 (n + 2)

end

end A032091.P13258017192435049302

namespace A032091

/-- `A227327(n+1)+A026035(n+2)` -/
def P13258017192435049302.Spec : Prop :=
  ∀ n, P13258017192435049302.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P5144303674868988070

`A002623(n)+∑[A168380(n+1)]/2`
-/

namespace A032091.P5144303674868988070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002623 n : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A032091.P5144303674868988070

namespace A032091

/-- `A002623(n)+∑[A168380(n+1)]/2` -/
def P5144303674868988070.Spec : Prop :=
  ∀ n, P5144303674868988070.a n = (A032091 (n + 6) : ℚ)

end A032091

/-! ## A032091.P719412548376316775

`A001752(n+1)-Δ[A001752(n)-a(n-1)]` with `a(0)=1`
-/

namespace A032091.P719412548376316775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001752 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 (n + 1) - (f1 (n + 1) - f1 n)

end

end A032091.P719412548376316775

namespace A032091

/-- `A001752(n+1)-Δ[A001752(n)-a(n-1)]` -/
def P719412548376316775.Spec : Prop :=
  ∀ n, P719412548376316775.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P5083023519556706396

`A001752(n)+A002623(n)-A006918(n)`
-/

namespace A032091.P5083023519556706396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + (A002623 n - A006918 n)

end

end A032091.P5083023519556706396

namespace A032091

/-- `A001752(n)+A002623(n)-A006918(n)` -/
def P5083023519556706396.Spec : Prop :=
  ∀ n, P5083023519556706396.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P17676552346343462723

`A001752(n+1)+A002624(n)-A002624(n+1)`
-/

namespace A032091.P17676552346343462723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 (n + 1) + (A002624 n - A002624 (n + 1))

end

end A032091.P17676552346343462723

namespace A032091

/-- `A001752(n+1)+A002624(n)-A002624(n+1)` -/
def P17676552346343462723.Spec : Prop :=
  ∀ n, P17676552346343462723.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P10667710051615587956

`2*∑[A006918(n+1)]`
-/

namespace A032091.P10667710051615587956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032091.P10667710051615587956

namespace A032091

/-- `2*∑[A006918(n+1)]` -/
def P10667710051615587956.Spec : Prop :=
  ∀ n, P10667710051615587956.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P10624652151471172700

`A006918(n+1)+A001752(n)`
-/

namespace A032091.P10624652151471172700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 1) + A001752 n

end

end A032091.P10624652151471172700

namespace A032091

/-- `A006918(n+1)+A001752(n)` -/
def P10624652151471172700.Spec : Prop :=
  ∀ n, P10624652151471172700.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P124477751256986177

`A173196(n+2)+A005994(n)`
-/

namespace A032091.P124477751256986177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 2) + A005994 n

end

end A032091.P124477751256986177

namespace A032091

/-- `A173196(n+2)+A005994(n)` -/
def P124477751256986177.Spec : Prop :=
  ∀ n, P124477751256986177.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P17449371249561787445

`2*(A007009(n+2)-A005994(n+1))`
-/

namespace A032091.P17449371249561787445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007009 (n + 2) - A005994 (n + 1))

end

end A032091.P17449371249561787445

namespace A032091

/-- `2*(A007009(n+2)-A005994(n+1))` -/
def P17449371249561787445.Spec : Prop :=
  ∀ n, P17449371249561787445.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P16140544936012481309

`A096338(n+1)+A096338(n)+A002624(n)`
-/

namespace A032091.P16140544936012481309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 (n + 1) + (A096338 n + A002624 n)

end

end A032091.P16140544936012481309

namespace A032091

/-- `A096338(n+1)+A096338(n)+A002624(n)` -/
def P16140544936012481309.Spec : Prop :=
  ∀ n, P16140544936012481309.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P10903203325914816476

`A001752(n+1)+A001752(n)-A005994(n+1)`
-/

namespace A032091.P10903203325914816476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 (n + 1) + (A001752 n - A005994 (n + 1))

end

end A032091.P10903203325914816476

namespace A032091

/-- `A001752(n+1)+A001752(n)-A005994(n+1)` -/
def P10903203325914816476.Spec : Prop :=
  ∀ n, P10903203325914816476.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P2549542100693787572

`A006918(n+1)+A007009(n+2)-A002624(n+1)`
-/

namespace A032091.P2549542100693787572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 1) + (A007009 (n + 2) - A002624 (n + 1))

end

end A032091.P2549542100693787572

namespace A032091

/-- `A006918(n+1)+A007009(n+2)-A002624(n+1)` -/
def P2549542100693787572.Spec : Prop :=
  ∀ n, P2549542100693787572.a n = A032091 (n + 6)

end A032091

/-! ## A032091.P811195137683966288

`A115269(Δ[n²])`
-/

namespace A032091.P811195137683966288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115269 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A032091.P811195137683966288

namespace A032091

/-- `A115269(Δ[n²])` -/
def P811195137683966288.Spec : Prop :=
  ∀ n, P811195137683966288.a n = A032091 (n + 6)

end A032091

/-!
# A032092: Number of reversible strings with n-1 beads of 2 colors. 5 beads are black. String is not palindromic.

The programs for A032092, the canonical program `A032092.P17259365878144111399` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032092 has offset 7).

The definition of A032092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032092.P17259365878144111399

`∑[∑[A023857(or(1, n))]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032092

/-- `∑[∑[A023857(or(1, n))]]` -/
def P17259365878144111399.Spec : Prop :=
  ∀ n, P17259365878144111399.a n = A032092 (n + 7)

theorem P17259365878144111399.correct : P17259365878144111399.Spec := by
  intro n
  simp only [A032092, Nat.add_sub_cancel]

end A032092

/-! ## A032092.P5624722532958888059

`∑[∑[A016061(∑[(n+1)%2])]]`
-/

namespace A032092.P5624722532958888059
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032092.P5624722532958888059

namespace A032092

/-- `∑[∑[A016061(∑[(n+1)%2])]]` -/
def P5624722532958888059.Spec : Prop :=
  ∀ n, P5624722532958888059.a n = A032092 (n + 7)

end A032092

/-! ## A032092.P3046294532890930848

`∑[∑[A002623(and(1, n+1)+n)]]`
-/

namespace A032092.P3046294532890930848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (Nat.land 1 (n + 1) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032092.P3046294532890930848

namespace A032092

/-- `∑[∑[A002623(and(1, n+1)+n)]]` -/
def P3046294532890930848.Spec : Prop :=
  ∀ n, P3046294532890930848.a n = A032092 (n + 7)

end A032092

/-! ## A032092.P4184481837401580611

`∑[∑[A016061(∑[1-a(n-1)])]]` with `a(0)=1`
-/

namespace A032092.P4184481837401580611
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  1 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032092.P4184481837401580611

namespace A032092

/-- `∑[∑[A016061(∑[1-a(n-1)])]]` -/
def P4184481837401580611.Spec : Prop :=
  ∀ n, P4184481837401580611.a n = A032092 (n + 7)

end A032092

/-! ## A032092.P3537557736928468388

`A032091(n+6)+A005995(n)`
-/

namespace A032092.P3537557736928468388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032091 (n + 6) + A005995 n

end

end A032092.P3537557736928468388

namespace A032092

/-- `A032091(n+6)+A005995(n)` -/
def P3537557736928468388.Spec : Prop :=
  ∀ n, P3537557736928468388.a n = A032092 (n + 7)

end A032092

/-! ## A032092.P774260541620533607

`A011796(n+1)+A381289(n+7)+A011796(n+1)`
-/

namespace A032092.P774260541620533607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011796 (n + 1) + (A381289 (n + 7) + A011796 (n + 1))

end

end A032092.P774260541620533607

namespace A032092

/-- `A011796(n+1)+A381289(n+7)+A011796(n+1)` -/
def P774260541620533607.Spec : Prop :=
  ∀ n, P774260541620533607.a n = A032092 (n + 7)

end A032092

/-! ## A032092.P7556435773913078901

`A001753(n+1)+A001753(n)-A005995(n+1)`
-/

namespace A032092.P7556435773913078901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (n + 1) + (A001753 n - A005995 (n + 1))

end

end A032092.P7556435773913078901

namespace A032092

/-- `A001753(n+1)+A001753(n)-A005995(n+1)` -/
def P7556435773913078901.Spec : Prop :=
  ∀ n, P7556435773913078901.a n = A032092 (n + 7)

end A032092

/-! ## A032092.P14284573592404269644

`∑[∑[A173196(or(1, n+2))]]`
-/

namespace A032092.P14284573592404269644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (Nat.lor 1 (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032092.P14284573592404269644

namespace A032092

/-- `∑[∑[A173196(or(1, n+2))]]` -/
def P14284573592404269644.Spec : Prop :=
  ∀ n, P14284573592404269644.a n = A032092 (n + 7)

end A032092

/-! ## A032092.P1908654120671294927

`A005995(n+2)-A005994(n+2)`
-/

namespace A032092.P1908654120671294927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 (n + 2) - A005994 (n + 2)

end

end A032092.P1908654120671294927

namespace A032092

/-- `A005995(n+2)-A005994(n+2)` -/
def P1908654120671294927.Spec : Prop :=
  ∀ n, P1908654120671294927.a n = A032092 (n + 7)

end A032092

/-! ## A032092.P4145357353632157361

`∑[∑[A016061(A138996(2*n+1))]]`
-/

namespace A032092.P4145357353632157361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 (A138996 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032092.P4145357353632157361

namespace A032092

/-- `∑[∑[A016061(A138996(2*n+1))]]` -/
def P4145357353632157361.Spec : Prop :=
  ∀ n, P4145357353632157361.a n = A032092 (n + 7)

end A032092

/-!
# A032093: Number of reversible strings with n-1 beads of 2 colors. 6 beads are black. Strings are not palindromic.

The programs for A032093, the canonical program `A032093.P4455377691887345898` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032093 has offset 8).

The definition of A032093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032093.P4455377691887345898

`1/2*(C(n+7, n+1)-C(floor((n+7)/2), floor((n+1)/2)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032093

/-- `1/2*(C(n+7, n+1)-C(floor((n+7)/2), floor((n+1)/2)))` -/
def P4455377691887345898.Spec : Prop :=
  ∀ n, P4455377691887345898.a n = (A032093 (n + 8) : ℚ)

end A032093

/-! ## A032093.P17812668640305024204

`∑[A032092(n+7)]`
-/

namespace A032093.P17812668640305024204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032093.P17812668640305024204

namespace A032093

/-- `∑[A032092(n+7)]` -/
def P17812668640305024204.Spec : Prop :=
  ∀ n, P17812668640305024204.a n = A032093 (n + 8)

end A032093

/-! ## A032093.P3205341844924071827

`A001769(n)+2*A038163(n)`
-/

namespace A032093.P3205341844924071827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 n + 2 * A038163 n

end

end A032093.P3205341844924071827

namespace A032093

/-- `A001769(n)+2*A038163(n)` -/
def P3205341844924071827.Spec : Prop :=
  ∀ n, P3205341844924071827.a n = A032093 (n + 8)

end A032093

/-! ## A032093.P5781095117134345329

`A018210(n)+2*A028346(n)`
-/

namespace A032093.P5781095117134345329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018210 n + 2 * A028346 n

end

end A032093.P5781095117134345329

namespace A032093

/-- `A018210(n)+2*A028346(n)` -/
def P5781095117134345329.Spec : Prop :=
  ∀ n, P5781095117134345329.a n = A032093 (n + 8)

end A032093

/-! ## A032093.P3656773545383770802

`A032094(n+9)-A018211(n)`
-/

namespace A032093.P3656773545383770802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032094 (n + 9) - A018211 n

end

end A032093.P3656773545383770802

namespace A032093

/-- `A032094(n+9)-A018211(n)` -/
def P3656773545383770802.Spec : Prop :=
  ∀ n, P3656773545383770802.a n = A032093 (n + 8)

end A032093

/-! ## A032093.P1915724044452986596

`∑[A032091(n+6)+A005995(n)]`
-/

namespace A032093.P1915724044452986596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032091 (n + 6) + A005995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032093.P1915724044452986596

namespace A032093

/-- `∑[A032091(n+6)+A005995(n)]` -/
def P1915724044452986596.Spec : Prop :=
  ∀ n, P1915724044452986596.a n = A032093 (n + 8)

end A032093

/-! ## A032093.P15056893968894519832

`A096338(n+1)+2*A299335(n)`
-/

namespace A032093.P15056893968894519832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 (n + 1) + 2 * A299335 n

end

end A032093.P15056893968894519832

namespace A032093

/-- `A096338(n+1)+2*A299335(n)` -/
def P15056893968894519832.Spec : Prop :=
  ∀ n, P15056893968894519832.a n = A032093 (n + 8)

end A032093

/-! ## A032093.P5881166937540992051

`A000580(n+8)-(A018211(n+1)+A018211(n))`
-/

namespace A032093.P5881166937540992051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - (A018211 (n + 1) + A018211 n)

end

end A032093.P5881166937540992051

namespace A032093

/-- `A000580(n+8)-(A018211(n+1)+A018211(n))` -/
def P5881166937540992051.Spec : Prop :=
  ∀ n, P5881166937540992051.a n = A032093 (n + 8)

end A032093

/-! ## A032093.P4082246925748832195

`∑[A005995(n+2)-A005994(n+2)]`
-/

namespace A032093.P4082246925748832195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 (n + 2) - A005994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032093.P4082246925748832195

namespace A032093

/-- `∑[A005995(n+2)-A005994(n+2)]` -/
def P4082246925748832195.Spec : Prop :=
  ∀ n, P4082246925748832195.a n = A032093 (n + 8)

end A032093

/-! ## A032093.P14671345673237783185

`A034877(A000096(n+4)+6)`
-/

namespace A032093.P14671345673237783185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (A000096 (n + 4) + 6).toNat

end

end A032093.P14671345673237783185

namespace A032093

/-- `A034877(A000096(n+4)+6)` -/
def P14671345673237783185.Spec : Prop :=
  ∀ n, P14671345673237783185.a n = A032093 (n + 8)

end A032093

/-!
# A032094: Number of reversible strings with n-1 beads of 2 colors. 7 beads are black. String is not palindromic.

The programs for A032094, the canonical program `A032094.P1520495427252306651` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032094 has offset 9).

The definition of A032094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031164, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A032094.P1520495427252306651

`4*A031164(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032094

/-- `4*A031164(n)` -/
def P1520495427252306651.Spec : Prop :=
  ∀ n, P1520495427252306651.a n = A032094 (n + 9)

theorem P1520495427252306651.correct : P1520495427252306651.Spec := by
  intro n
  simp only [A032094, Nat.add_sub_cancel]

end A032094

/-! ## A032094.P1561509438583450307

`∑[∑[A339355(n+1)/2]]`
-/

namespace A032094.P1561509438583450307
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339355 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032094.P1561509438583450307

namespace A032094

/-- `∑[∑[A339355(n+1)/2]]` -/
def P1561509438583450307.Spec : Prop :=
  ∀ n, P1561509438583450307.a n = (A032094 (n + 9) : ℚ)

end A032094

/-! ## A032094.P7324588963211821762

`A032093(n+8)+A018211(n)`
-/

namespace A032094.P7324588963211821762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032093 (n + 8) + A018211 n

end

end A032094.P7324588963211821762

namespace A032094

/-- `A032093(n+8)+A018211(n)` -/
def P7324588963211821762.Spec : Prop :=
  ∀ n, P7324588963211821762.a n = A032094 (n + 9)

theorem P7324588963211821762.correct : P7324588963211821762.Spec := by
  intro n
  simp only [A032094, Nat.add_sub_cancel, A032094.P7324588963211821762.a, A032094.P1520495427252306651.a, A018211, A018211.P8561171215378061643.a, A031164, A031164.P14530744105720124966.a, A032093, A032093.P4455377691887345898.a, A038164, A038164.P1586895725578601011.a, A060099, A060099.P8454151791043827126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032094

/-! ## A032094.P2858274438249687541

`A189976(n+8)+∑[∑[A032092(n+7)]]`
-/

namespace A032094.P2858274438249687541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189976 (n + 8) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032094.P2858274438249687541

namespace A032094

/-- `A189976(n+8)+∑[∑[A032092(n+7)]]` -/
def P2858274438249687541.Spec : Prop :=
  ∀ n, P2858274438249687541.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P12482393826798482423

`Δ[A052267(n)-A177747(n)]`
-/

namespace A032094.P12482393826798482423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052267 n - A177747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032094.P12482393826798482423

namespace A032094

/-- `Δ[A052267(n)-A177747(n)]` -/
def P12482393826798482423.Spec : Prop :=
  ∀ n, P12482393826798482423.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P13201841054259510607

`A000580(n+8)-A018211(n+1)`
-/

namespace A032094.P13201841054259510607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - A018211 (n + 1)

end

end A032094.P13201841054259510607

namespace A032094

/-- `A000580(n+8)-A018211(n+1)` -/
def P13201841054259510607.Spec : Prop :=
  ∀ n, P13201841054259510607.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P5407744157225840819

`A001779(n+1)+A001779(n)-A018211(n+1)`
-/

namespace A032094.P5407744157225840819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 (n + 1) + (A001779 n - A018211 (n + 1))

end

end A032094.P5407744157225840819

namespace A032094

/-- `A001779(n+1)+A001779(n)-A018211(n+1)` -/
def P5407744157225840819.Spec : Prop :=
  ∀ n, P5407744157225840819.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P12629605928179854954

`A000581(n+9)-(A018211(n+1)+A000581(n+8))`
-/

namespace A032094.P12629605928179854954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 9) - (A018211 (n + 1) + A000581 (n + 8))

end

end A032094.P12629605928179854954

namespace A032094

/-- `A000581(n+9)-(A018211(n+1)+A000581(n+8))` -/
def P12629605928179854954.Spec : Prop :=
  ∀ n, P12629605928179854954.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P4126877006907028573

`A018211(n+2)-A018210(n+2)`
-/

namespace A032094.P4126877006907028573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018211 (n + 2) - A018210 (n + 2)

end

end A032094.P4126877006907028573

namespace A032094

/-- `A018211(n+2)-A018210(n+2)` -/
def P4126877006907028573.Spec : Prop :=
  ∀ n, P4126877006907028573.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P742396473767001378

`A034852(A000217(n+8)+7)`
-/

namespace A032094.P742396473767001378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A000217 (n + 8) + 7).toNat

end

end A032094.P742396473767001378

namespace A032094

/-- `A034852(A000217(n+8)+7)` -/
def P742396473767001378.Spec : Prop :=
  ∀ n, P742396473767001378.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P3085072534993105074

`A034852(A052905(n+5)+12)`
-/

namespace A032094.P3085072534993105074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A052905 (n + 5) + 12).toNat

end

end A032094.P3085072534993105074

namespace A032094

/-- `A034852(A052905(n+5)+12)` -/
def P3085072534993105074.Spec : Prop :=
  ∀ n, P3085072534993105074.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P8029133296889657864

`A034852(A027379(n+2)+A008574(n+9))`
-/

namespace A032094.P8029133296889657864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A027379 (n + 2) + A008574 (n + 9)).toNat

end

end A032094.P8029133296889657864

namespace A032094

/-- `A034852(A027379(n+2)+A008574(n+9))` -/
def P8029133296889657864.Spec : Prop :=
  ∀ n, P8029133296889657864.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P14507177994617606327

`A034852(A001478(n+3)+A000124(n+9))`
-/

namespace A032094.P14507177994617606327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A001478 (n + 3) + A000124 (n + 9)).toNat

end

end A032094.P14507177994617606327

namespace A032094

/-- `A034852(A001478(n+3)+A000124(n+9))` -/
def P14507177994617606327.Spec : Prop :=
  ∀ n, P14507177994617606327.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P428053675885082526

`A034852(A008574(n+8)+A000124(n+4))`
-/

namespace A032094.P428053675885082526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A008574 (n + 8) + A000124 (n + 4)).toNat

end

end A032094.P428053675885082526

namespace A032094

/-- `A034852(A008574(n+8)+A000124(n+4))` -/
def P428053675885082526.Spec : Prop :=
  ∀ n, P428053675885082526.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P15873844338487706560

`A034877(A167499(n+5)+1)`
-/

namespace A032094.P15873844338487706560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (A167499 (n + 5) + 1).toNat

end

end A032094.P15873844338487706560

namespace A032094

/-- `A034877(A167499(n+5)+1)` -/
def P15873844338487706560.Spec : Prop :=
  ∀ n, P15873844338487706560.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P12530685390611715623

`A034877(A167614(n+5)+3)`
-/

namespace A032094.P12530685390611715623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (A167614 (n + 5) + 3).toNat

end

end A032094.P12530685390611715623

namespace A032094

/-- `A034877(A167614(n+5)+3)` -/
def P12530685390611715623.Spec : Prop :=
  ∀ n, P12530685390611715623.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P6067332539528610634

`A034877(A155212(n+3)+1)`
-/

namespace A032094.P6067332539528610634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (A155212 (n + 3) + 1).toNat

end

end A032094.P6067332539528610634

namespace A032094

/-- `A034877(A155212(n+3)+1)` -/
def P6067332539528610634.Spec : Prop :=
  ∀ n, P6067332539528610634.a n = A032094 (n + 9)

end A032094

/-! ## A032094.P11083551331587631567

`A159916(A000217(n+7)+7)`
-/

namespace A032094.P11083551331587631567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159916 (A000217 (n + 7) + 7).toNat

end

end A032094.P11083551331587631567

namespace A032094

/-- `A159916(A000217(n+7)+7)` -/
def P11083551331587631567.Spec : Prop :=
  ∀ n, P11083551331587631567.a n = A032094 (n + 9)

end A032094

/-!
# A032095: Number of reversible strings with n-1 black beads and n-1 white beads. String is not palindromic.

The programs for A032095, the canonical program `A032095.P17238562505437964512` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032095 has offset 1).

The definition of A032095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032095.P17238562505437964512

`A005317(A028310(n))-A027306(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032095

/-- `A005317(A028310(n))-A027306(n)` -/
def P17238562505437964512.Spec : Prop :=
  ∀ n, P17238562505437964512.a n = A032095 (n + 1)

theorem P17238562505437964512.correct : P17238562505437964512.Spec := by
  intro n
  simp only [A032095, Nat.add_sub_cancel]

end A032095

/-! ## A032095.P1799255922477083278

`A088218(n)-A138364(A014681(n))`
-/

namespace A032095.P1799255922477083278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - A138364 (A014681 n).toNat

end

end A032095.P1799255922477083278

namespace A032095

/-- `A088218(n)-A138364(A014681(n))` -/
def P1799255922477083278.Spec : Prop :=
  ∀ n, P1799255922477083278.a n = A032095 (n + 1)

end A032095

/-! ## A032095.P11826724726282893016

`A011782(n)+A088218(n)-A027306(n)`
-/

namespace A032095.P11826724726282893016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A088218 n - A027306 n)

end

end A032095.P11826724726282893016

namespace A032095

/-- `A011782(n)+A088218(n)-A027306(n)` -/
def P11826724726282893016.Spec : Prop :=
  ∀ n, P11826724726282893016.a n = A032095 (n + 1)

end A032095

/-! ## A032095.P4314911285541810914

`A034852(∑[4*n])^ceil(sin(n)²)`
-/

namespace A032095.P4314911285541810914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034852 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A032095.P4314911285541810914

namespace A032095

/-- `A034852(∑[4*n])^ceil(sin(n)²)` -/
def P4314911285541810914.Spec : Prop :=
  ∀ n, P4314911285541810914.a n = (A032095 (n + 1) : ℚ)

end A032095

/-! ## A032095.P3326694832868093491

`A034852(A106232(n+1))`
-/

namespace A032095.P3326694832868093491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A106232 (n + 1)).toNat

end

end A032095.P3326694832868093491

namespace A032095

/-- `A034852(A106232(n+1))` -/
def P3326694832868093491.Spec : Prop :=
  ∀ n, P3326694832868093491.a n = A032095 (n + 1)

end A032095

/-! ## A032095.P8569362503132600916

`A034852(4*A179865(n+1))`
-/

namespace A032095.P8569362503132600916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (4 * A179865 (n + 1)).toNat

end

end A032095.P8569362503132600916

namespace A032095

/-- `A034852(4*A179865(n+1))` -/
def P8569362503132600916.Spec : Prop :=
  ∀ n, P8569362503132600916.a n = A032095 (n + 1)

end A032095

/-! ## A032095.P8619883584743737507

`A034852(A046092(A028310(n)))`
-/

namespace A032095.P8619883584743737507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A046092 (A028310 n).toNat).toNat

end

end A032095.P8619883584743737507

namespace A032095

/-- `A034852(A046092(A028310(n)))` -/
def P8619883584743737507.Spec : Prop :=
  ∀ n, P8619883584743737507.a n = A032095 (n + 1)

end A032095

/-! ## A032095.P6367660058106566070

`A034852(A046092(A000007(n)+n))`
-/

namespace A032095.P6367660058106566070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A046092 (A000007 n + (n : ℤ)).toNat).toNat

end

end A032095.P6367660058106566070

namespace A032095

/-- `A034852(A046092(A000007(n)+n))` -/
def P6367660058106566070.Spec : Prop :=
  ∀ n, P6367660058106566070.a n = A032095 (n + 1)

end A032095

/-! ## A032095.P14260411288165046789

`A034852(A005843(n+1)*A233583(n+1))`
-/

namespace A032095.P14260411288165046789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A005843 (n + 1) * A233583 (n + 1)).toNat

end

end A032095.P14260411288165046789

namespace A032095

/-- `A034852(A005843(n+1)*A233583(n+1))` -/
def P14260411288165046789.Spec : Prop :=
  ∀ n, P14260411288165046789.a n = A032095 (n + 1)

end A032095

/-! ## A032095.P3560927721441757328

`A034852(A233583(2*n+1)*A233583(n+2))`
-/

namespace A032095.P3560927721441757328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A233583 (2 * n + 1) * A233583 (n + 2)).toNat

end

end A032095.P3560927721441757328

namespace A032095

/-- `A034852(A233583(2*n+1)*A233583(n+2))` -/
def P3560927721441757328.Spec : Prop :=
  ∀ n, P3560927721441757328.a n = A032095 (n + 1)

end A032095

/-!
# A032096: "BHK" (reversible, identity, unlabeled) transform of 2,2,2,2,...

The programs for A032096, the canonical program `A032096.P2211039898956355850` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032096 has offset 1).

The definition of A032096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032096.P2211039898956355850

`1/6*((-1)^(n+1)-5)*3^floor((n+1)/2)+3^n+2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032096

/-- `1/6*((-1)^(n+1)-5)*3^floor((n+1)/2)+3^n+2` -/
def P2211039898956355850.Spec : Prop :=
  ∀ n, P2211039898956355850.a n = (A032096 (n + 1) : ℚ)

end A032096

/-!
# A032097: "BHK" (reversible, identity, unlabeled) transform of 2,1,1,1,...

The programs for A032097, the canonical program `A032097.P1611958979588345420` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032097 has offset 1).

The definition of A032097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032097.P1611958979588345420

`A250111(Δ[n²])+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032097

/-- `A250111(Δ[n²])+1` -/
def P1611958979588345420.Spec : Prop :=
  ∀ n, P1611958979588345420.a n = A032097 (n + 1)

theorem P1611958979588345420.correct : P1611958979588345420.Spec := by
  intro n
  simp only [A032097, Nat.add_sub_cancel]

end A032097

/-! ## A032097.P10695584995795538863

`A094292(n+1)+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A032097.P10695584995795538863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A094292 (n + 1) + a (n - 1)

end

end A032097.P10695584995795538863

namespace A032097

/-- `A094292(n+1)+a(n-1)` -/
def P10695584995795538863.Spec : Prop :=
  ∀ n, P10695584995795538863.a n = A032097 (n + 1)

end A032097

/-! ## A032097.P1091170355123022284

`A032090(A361871(n+2))`
-/

namespace A032097.P1091170355123022284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032090 (A361871 (n + 2)).toNat

end

end A032097.P1091170355123022284

namespace A032097

/-- `A032090(A361871(n+2))` -/
def P1091170355123022284.Spec : Prop :=
  ∀ n, P1091170355123022284.a n = A032097 (n + 1)

end A032097

/-! ## A032097.P8077978512204365476

`A032090(A027379(n)+4-∑[n])`
-/

namespace A032097.P8077978512204365476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032090 (A027379 n + (4 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A032097.P8077978512204365476

namespace A032097

/-- `A032090(A027379(n)+4-∑[n])` -/
def P8077978512204365476.Spec : Prop :=
  ∀ n, P8077978512204365476.a n = A032097 (n + 1)

end A032097

/-! ## A032097.P15818866727528037418

`A254667(n+1)+A056014(n+2)-n`
-/

namespace A032097.P15818866727528037418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (n + 1) + (A056014 (n + 2) - (n : ℤ))

end

end A032097.P15818866727528037418

namespace A032097

/-- `A254667(n+1)+A056014(n+2)-n` -/
def P15818866727528037418.Spec : Prop :=
  ∀ n, P15818866727528037418.a n = A032097 (n + 1)

end A032097

/-! ## A032097.P13345686960144557589

`A056014(n+2)+A233583(n+2)-n`
-/

namespace A032097.P13345686960144557589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 (n + 2) + (A233583 (n + 2) - (n : ℤ))

end

end A032097.P13345686960144557589

namespace A032097

/-- `A056014(n+2)+A233583(n+2)-n` -/
def P13345686960144557589.Spec : Prop :=
  ∀ n, P13345686960144557589.a n = A032097 (n + 1)

end A032097

/-! ## A032097.P2004215082428738759

`A020695(2*n)+1-A060312(2*(n+1))`
-/

namespace A032097.P2004215082428738759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (2 * n) + (1 - A060312 (2 * (n + 1)))

end

end A032097.P2004215082428738759

namespace A032097

/-- `A020695(2*n)+1-A060312(2*(n+1))` -/
def P2004215082428738759.Spec : Prop :=
  ∀ n, P2004215082428738759.a n = A032097 (n + 1)

end A032097

/-! ## A032097.P7771986918825383035

`A032089(A131507(∑[n+1]+2))`
-/

namespace A032097.P7771986918825383035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032089 (A131507 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A032097.P7771986918825383035

namespace A032097

/-- `A032089(A131507(∑[n+1]+2))` -/
def P7771986918825383035.Spec : Prop :=
  ∀ n, P7771986918825383035.a n = A032097 (n + 1)

end A032097

/-!
# A032098: "BHK" (reversible, identity, unlabeled) transform of 3,3,3,3,...

The programs for A032098, the canonical program `A032098.P7091713504265939081` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032098 has offset 1).

The definition of A032098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032098.P7091713504265939081

`3*(C(2^n, 2)+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032098

/-- `3*(C(2^n, 2)+1)` -/
def P7091713504265939081.Spec : Prop :=
  ∀ n, (P7091713504265939081.a n : ℤ) = A032098 (n + 1)

theorem P7091713504265939081.correct : P7091713504265939081.Spec := by
  intro n
  simp only [A032098, Nat.add_sub_cancel]

end A032098

/-! ## A032098.P4938660330693877620

`lcm(3, C(2^n, 2)+1)`
-/

namespace A032098.P4938660330693877620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (Nat.choose (2 ^ n) 2 + 1)

end

end A032098.P4938660330693877620

namespace A032098

/-- `lcm(3, C(2^n, 2)+1)` -/
def P4938660330693877620.Spec : Prop :=
  ∀ n, (P4938660330693877620.a n : ℤ) = A032098 (n + 1)

end A032098

/-! ## A032098.P9208094965452827894

`∑[C(3*ceil(2^(n-1)), 2)]`
-/

namespace A032098.P9208094965452827894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032098.P9208094965452827894

namespace A032098

/-- `∑[C(3*ceil(2^(n-1)), 2)]` -/
def P9208094965452827894.Spec : Prop :=
  ∀ n, (P9208094965452827894.a n : ℤ) = A032098 (n + 1)

end A032098

/-! ## A032098.P16353511551201056982

`3*ceil(∑[2^(n-1)]²/2)`
-/

namespace A032098.P16353511551201056982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 / 2⌉

end

end A032098.P16353511551201056982

namespace A032098

/-- `3*ceil(∑[2^(n-1)]²/2)` -/
def P16353511551201056982.Spec : Prop :=
  ∀ n, P16353511551201056982.a n = A032098 (n + 1)

end A032098

/-! ## A032098.P6678961004550260280

`C(2^n, 2)+4^n-(2^n-3)`
-/

namespace A032098.P6678961004550260280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 ^ n) 2 + 4 ^ n : ℤ) - ((2 ^ n : ℤ) - 3)

end

end A032098.P6678961004550260280

namespace A032098

/-- `C(2^n, 2)+4^n-(2^n-3)` -/
def P6678961004550260280.Spec : Prop :=
  ∀ n, P6678961004550260280.a n = A032098 (n + 1)

end A032098

/-! ## A032098.P11899883969045199215

`3-Δ[2*(3*a(n-1)-4*a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A032098.P11899883969045199215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (3 * f1 (n - 1) - 4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A032098.P11899883969045199215

namespace A032098

/-- `3-Δ[2*(3*a(n-1)-4*a(n-2))]` -/
def P11899883969045199215.Spec : Prop :=
  ∀ n, P11899883969045199215.a n = A032098 (n + 1)

end A032098

/-! ## A032098.P4253362312140971136

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=3, a(1)=6, a(2)=21`
-/

namespace A032098.P4253362312140971136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6, 21] fun n a =>
  7 * a (n - 1) - 14 * a (n - 2) + 8 * a (n - 3)

end

end A032098.P4253362312140971136

namespace A032098

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P4253362312140971136.Spec : Prop :=
  ∀ n, P4253362312140971136.a n = A032098 (n + 1)

end A032098

/-! ## A032098.P3608293716347505485

`Δ[A134057(n)]+3`
-/

namespace A032098.P3608293716347505485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A032098.P3608293716347505485

namespace A032098

/-- `Δ[A134057(n)]+3` -/
def P3608293716347505485.Spec : Prop :=
  ∀ n, P3608293716347505485.a n = A032098 (n + 1)

end A032098

/-! ## A032098.P15397743527630036503

`A135094(2*n)+3`
-/

namespace A032098.P15397743527630036503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135094 (2 * n) + 3

end

end A032098.P15397743527630036503

namespace A032098

/-- `A135094(2*n)+3` -/
def P15397743527630036503.Spec : Prop :=
  ∀ n, P15397743527630036503.a n = A032098 (n + 1)

end A032098

/-! ## A032098.P14035829042564739011

`3*A006516(n)+3`
-/

namespace A032098.P14035829042564739011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006516 n + 3

end

end A032098.P14035829042564739011

namespace A032098

/-- `3*A006516(n)+3` -/
def P14035829042564739011.Spec : Prop :=
  ∀ n, P14035829042564739011.a n = A032098 (n + 1)

theorem P14035829042564739011.correct : P14035829042564739011.Spec := by
  intro n
  simp only [A032098, Nat.add_sub_cancel, A032098.P14035829042564739011.a, A032098.P7091713504265939081.a, A006516, A006516.P14395339880805769554.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032098

/-! ## A032098.P17951267604548259433

`(A169726(n)+5)/2`
-/

namespace A032098.P17951267604548259433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169726 n + 5 : ℚ) / 2

end

end A032098.P17951267604548259433

namespace A032098

/-- `(A169726(n)+5)/2` -/
def P17951267604548259433.Spec : Prop :=
  ∀ n, P17951267604548259433.a n = (A032098 (n + 1) : ℚ)

theorem P17951267604548259433.correct : P17951267604548259433.Spec := by
  intro n
  simp only [A032098, Nat.add_sub_cancel, A032098.P17951267604548259433.a, A032098.P7091713504265939081.a, A169726, A169726.P11086986432710171647.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032098

/-! ## A032098.P6120618413586286427

`3*A170939(n)/2`
-/

namespace A032098.P6120618413586286427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A170939 n : ℚ) / 2

end

end A032098.P6120618413586286427

namespace A032098

/-- `3*A170939(n)/2` -/
def P6120618413586286427.Spec : Prop :=
  ∀ n, P6120618413586286427.a n = (A032098 (n + 1) : ℚ)

end A032098

/-! ## A032098.P1427815262441015193

`Δ[3*(A006095(n)+n)]`
-/

namespace A032098.P1427815262441015193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A006095 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032098.P1427815262441015193

namespace A032098

/-- `Δ[3*(A006095(n)+n)]` -/
def P1427815262441015193.Spec : Prop :=
  ∀ n, P1427815262441015193.a n = A032098 (n + 1)

end A032098

/-! ## A032098.P7810957090997296456

`3*C(A000079(n), 2)+3`
-/

namespace A032098.P7810957090997296456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A000079 n).toNat 2 + 3

end

end A032098.P7810957090997296456

namespace A032098

/-- `3*C(A000079(n), 2)+3` -/
def P7810957090997296456.Spec : Prop :=
  ∀ n, (P7810957090997296456.a n : ℤ) = A032098 (n + 1)

end A032098

/-! ## A032098.P18219099209513039769

`3*C(A000225(n)+1, 2)+3`
-/

namespace A032098.P18219099209513039769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A000225 n + 1).toNat 2 + 3

end

end A032098.P18219099209513039769

namespace A032098

/-- `3*C(A000225(n)+1, 2)+3` -/
def P18219099209513039769.Spec : Prop :=
  ∀ n, (P18219099209513039769.a n : ℤ) = A032098 (n + 1)

end A032098

/-! ## A032098.P3063828694617222584

`A170939(n)+A134169(n)`
-/

namespace A032098.P3063828694617222584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170939 n + A134169 n

end

end A032098.P3063828694617222584

namespace A032098

/-- `A170939(n)+A134169(n)` -/
def P3063828694617222584.Spec : Prop :=
  ∀ n, P3063828694617222584.a n = A032098 (n + 1)

end A032098

/-! ## A032098.P12959902310622724791

`A394960(n)+A161168(n)`
-/

namespace A032098.P12959902310622724791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394960 n + A161168 n

end

end A032098.P12959902310622724791

namespace A032098

/-- `A394960(n)+A161168(n)` -/
def P12959902310622724791.Spec : Prop :=
  ∀ n, P12959902310622724791.a n = A032098 (n + 1)

end A032098

/-! ## A032098.P16526118193602505323

`A010036(n)-A036563(n)`
-/

namespace A032098.P16526118193602505323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n - A036563 n

end

end A032098.P16526118193602505323

namespace A032098

/-- `A010036(n)-A036563(n)` -/
def P16526118193602505323.Spec : Prop :=
  ∀ n, P16526118193602505323.a n = A032098 (n + 1)

end A032098

/-! ## A032098.P4511577297611934918

`A188161(n)-A257273(n)`
-/

namespace A032098.P4511577297611934918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188161 n - A257273 n

end

end A032098.P4511577297611934918

namespace A032098

/-- `A188161(n)-A257273(n)` -/
def P4511577297611934918.Spec : Prop :=
  ∀ n, P4511577297611934918.a n = A032098 (n + 1)

end A032098

/-! ## A032098.P1988416943854012316

`lcm(A134169(n), A174971(n))`
-/

namespace A032098.P1988416943854012316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134169 n) (A174971 n)

end

end A032098.P1988416943854012316

namespace A032098

/-- `lcm(A134169(n), A174971(n))` -/
def P1988416943854012316.Spec : Prop :=
  ∀ n, (P1988416943854012316.a n : ℤ) = A032098 (n + 1)

end A032098

/-!
# A032099: "BHK" (reversible, identity, unlabeled) transform of 1,2,3,4,...

The programs for A032099, the canonical program `A032099.P9217517832218233789` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032099 has offset 1).

The definition of A032099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032099.P9217517832218233789

`∑[A056014(n)+∑[A192352(n+1)]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032099

/-- `∑[A056014(n)+∑[A192352(n+1)]]` -/
def P9217517832218233789.Spec : Prop :=
  ∀ n, P9217517832218233789.a n = A032099 (n + 1)

theorem P9217517832218233789.correct : P9217517832218233789.Spec := by
  intro n
  simp only [A032099, Nat.add_sub_cancel]

end A032099

/-! ## A032099.P8985304539786268955

`A285304(A358937(n))+n`
-/

namespace A032099.P8985304539786268955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285304 (A358937 n).toNat + (n : ℤ)

end

end A032099.P8985304539786268955

namespace A032099

/-- `A285304(A358937(n))+n` -/
def P8985304539786268955.Spec : Prop :=
  ∀ n, P8985304539786268955.a n = A032099 (n + 1)

end A032099

/-! ## A032099.P11240968956665194238

`A257994(A000670(n))+A000084(n+1)`
-/

namespace A032099.P11240968956665194238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A000670 n).toNat + A000084 (n + 1)

end

end A032099.P11240968956665194238

namespace A032099

/-- `A257994(A000670(n))+A000084(n+1)` -/
def P11240968956665194238.Spec : Prop :=
  ∀ n, P11240968956665194238.a n = A032099 (n + 1)

end A032099

