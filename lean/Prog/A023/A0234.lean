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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A023401: If any even power of 2 ends with k 1's and 4's, they must be the first k terms of this sequence in reverse order.

The programs for A023401, there is no canonical definition to state claims against.
-/

/-! ## A023401.P3225955636812692294

`A014709(record[A050175(n)])²`
-/

namespace A023401.P3225955636812692294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A023401.P3225955636812692294

/-! ## A023401.P548036707985771567

`A195942(A001196(3*n+4))%5`
-/

namespace A023401.P548036707985771567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195942 (A001196 (3 * n + 4)).toNat) 5

end

end A023401.P548036707985771567

/-! ## A023401.P2335438674864421991

`A026513(A063703(n)+3)²`
-/

namespace A023401.P2335438674864421991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026513 (A063703 n + 3).toNat ^ 2

end

end A023401.P2335438674864421991

/-! ## A023401.P3673483838610514508

`gcd(4, A136359(A136360(2*n+3)))`
-/

namespace A023401.P3673483838610514508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A136359 (A136360 (2 * n + 3)).toNat)

end

end A023401.P3673483838610514508

/-! ## A023401.P1692244079973128546

`(A045714(A350944(3*(n+1))-1)%3)²`
-/

namespace A023401.P1692244079973128546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045714 (A350944 (3 * (n + 1)) - 1).toNat) 3 ^ 2

end

end A023401.P1692244079973128546

/-!
# A023402: If any power of 2 ends with k 3's and 4's, they must be the first k terms of this sequence in reverse order.

The programs for A023402, there is no canonical definition to state claims against.
-/

/-! ## A023402.P5064372928596434834

`A010702(A028586(n)+A023408(n+1))`
-/

namespace A023402.P5064372928596434834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A028586 n + A023408 (n + 1)).toNat

end

end A023402.P5064372928596434834

/-! ## A023402.P17617863710664506108

`A010702(A029594(n)+A023408(n+1))`
-/

namespace A023402.P17617863710664506108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A029594 n + A023408 (n + 1)).toNat

end

end A023402.P17617863710664506108

/-! ## A023402.P1463649353939778830

`A157532(A008619(n))²%A023408(n+1)`
-/

namespace A023402.P1463649353939778830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157532 (A008619 n).toNat ^ 2) (A023408 (n + 1))

end

end A023402.P1463649353939778830

/-! ## A023402.P11935535557223134896

`A157532(A080513(n))²%A023408(n+1)`
-/

namespace A023402.P11935535557223134896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157532 (A080513 n).toNat ^ 2) (A023408 (n + 1))

end

end A023402.P11935535557223134896

/-! ## A023402.P8974082223668900819

`A010702(A023408(n+1)+A001223(n+1))`
-/

namespace A023402.P8974082223668900819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A023408 (n + 1) + A001223 (n + 1)).toNat

end

end A023402.P8974082223668900819

/-! ## A023402.P14446224348487060120

`A010702(or(A023408(n+1), A036845(n+1)))`
-/

namespace A023402.P14446224348487060120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (Int.lor (A023408 (n + 1)) (A036845 (n + 1))).toNat

end

end A023402.P14446224348487060120

/-! ## A023402.P3534710298586432949

`A023396(n+1)+A023414(n+1)-A023408(n+1)`
-/

namespace A023402.P3534710298586432949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023396 (n + 1) + (A023414 (n + 1) - A023408 (n + 1))

end

end A023402.P3534710298586432949

/-! ## A023402.P2423847355677304216

`A010702(A023408(n+1)+A010702(n)*A036845(n+1))`
-/

namespace A023402.P2423847355677304216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A023408 (n + 1) + A010702 n * A036845 (n + 1)).toNat

end

end A023402.P2423847355677304216

/-! ## A023402.P15300285275431089963

`9-A023408(A233583(n+2))`
-/

namespace A023402.P15300285275431089963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A023408 (A233583 (n + 2)).toNat

end

end A023402.P15300285275431089963

/-! ## A023402.P15315165465798445945

`A010702(A323333(n+1)+A023408(n+1))`
-/

namespace A023402.P15315165465798445945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A323333 (n + 1) + A023408 (n + 1)).toNat

end

end A023402.P15315165465798445945

/-! ## A023402.P17711488721759302050

`A010702(floor(ratio[A050620(n+1)]))`
-/

namespace A023402.P17711488721759302050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A023402.P17711488721759302050

/-! ## A023402.P6917320103707813897

`floor(A035014(n+1)/A011557(n))`
-/

namespace A023402.P6917320103707813897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035014 (n + 1) : ℚ) / (A011557 n : ℚ)⌋

end

end A023402.P6917320103707813897

/-!
# A023403: If any power of 2 ends with k 4's and 5's, they must be the first k terms of this sequence in reverse order.

The programs for A023403, there is no canonical definition to state claims against.
-/

/-! ## A023403.P10824497090800369084

`A209323(A316545(2*n+5)+2)+2`
-/

namespace A023403.P10824497090800369084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209323 (A316545 (2 * n + 5) + 2).toNat + 2

end

end A023403.P10824497090800369084

/-! ## A023403.P8831330006361980329

`5-A004547(A168335(n+1))`
-/

namespace A023403.P8831330006361980329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A004547 (A168335 (n + 1)).toNat

end

end A023403.P8831330006361980329

/-! ## A023403.P568338347024781627

`A373991(A288996(n+1))+4`
-/

namespace A023403.P568338347024781627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373991 (A288996 (n + 1)).toNat + 4

end

end A023403.P568338347024781627

/-! ## A023403.P4780006974226540867

`5-A004547(A207641(n+4))`
-/

namespace A023403.P4780006974226540867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A004547 (A207641 (n + 4)).toNat

end

end A023403.P4780006974226540867

/-! ## A023403.P11014581339465388133

`and(1, A092022(A015781(n+1)+1))+4`
-/

namespace A023403.P11014581339465388133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A092022 (A015781 (n + 1) + 1).toNat) + 4

end

end A023403.P11014581339465388133

/-!
# A023405: If any power of 2 ends with k 4's and 9's, they must be the first k terms of this sequence in reverse order.

The programs for A023405, there is no canonical definition to state claims against.
-/

/-! ## A023405.P5200498022377017039

`gcd(36, A023415(n+2))`
-/

namespace A023405.P5200498022377017039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 36 (A023415 (n + 2))

end

end A023405.P5200498022377017039

/-! ## A023405.P6120442823095311867

`(3-A145679(n+2))²`
-/

namespace A023405.P6120442823095311867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A145679 (n + 2)) ^ 2

end

end A023405.P6120442823095311867

/-! ## A023405.P3201097032389227496

`A023415(n+2)/(A145679(n+2)+1)`
-/

namespace A023405.P3201097032389227496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023415 (n + 2) : ℚ) / (A145679 (n + 2) + 1 : ℚ)

end

end A023405.P3201097032389227496

/-! ## A023405.P13492056328746443499

`A265344(A023415(n+1)+Δ[A023415(n+1)])`
-/

namespace A023405.P13492056328746443499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (A023415 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A023405.P13492056328746443499

/-! ## A023405.P11100752968551208248

`A277012(A023415(n+2)-A020639(2*(n+1)))`
-/

namespace A023405.P11100752968551208248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277012 (A023415 (n + 2) - A020639 (2 * (n + 1))).toNat

end

end A023405.P11100752968551208248

/-! ## A023405.P6036420267497478770

`A014963(A023415(n+1)+Δ[A023415(n+1)])²`
-/

namespace A023405.P6036420267497478770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A023415 (n + 1) + (f1 (n + 1) - f1 n)).toNat ^ 2

end

end A023405.P6036420267497478770

/-! ## A023405.P5499614952581664631

`A020639((2*n+1)*A023415(n+2))²`
-/

namespace A023405.P5499614952581664631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 * n + 1 : ℤ) * A023415 (n + 2)).toNat ^ 2

end

end A023405.P5499614952581664631

/-!
# A023406: If any even power of 2 ends with k 1's and 6's, they must be the first k terms of this sequence in reverse order.

The programs for A023406, there is no canonical definition to state claims against.
-/

/-! ## A023406.P15743013007288727054

`A023397(n+2)²-3`
-/

namespace A023406.P15743013007288727054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023397 (n + 2) ^ 2 - 3

end

end A023406.P15743013007288727054

/-! ## A023406.P12705096270018883584

`(A023410(n+2)/3)²-3`
-/

namespace A023406.P12705096270018883584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023410 (n + 2) : ℚ) / 3) ^ 2 - 3

end

end A023406.P12705096270018883584

/-! ## A023406.P1461017981380401834

`A315274(∑[-Δ[-A023397(n+1)]])`
-/

namespace A023406.P1461017981380401834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A023397 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315274 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023406.P1461017981380401834

/-! ## A023406.P16961787333994770876

`A315274(∑[A023397(n+2)-A023397(n+1)])`
-/

namespace A023406.P16961787333994770876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023397 (n + 2) - A023397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315274 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023406.P16961787333994770876

/-! ## A023406.P5764901166725002022

`A325005(∑[A023397(n+2)-A023397(n+1)]+1)!`
-/

namespace A023406.P5764901166725002022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023397 (n + 2) - A023397 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A325005 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat).toNat

end

end A023406.P5764901166725002022

/-! ## A023406.P9520941829154145773

`A266303(A023397(n+2)*A266303(2*n))`
-/

namespace A023406.P9520941829154145773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 (A023397 (n + 2) * A266303 (2 * n)).toNat

end

end A023406.P9520941829154145773

/-!
# A023407: If any power of 2 ends with k 3's and 6's, they must be the first k terms of this sequence in reverse order.

The programs for A023407, there is no canonical definition to state claims against.
-/

/-! ## A023407.P13536863999365802132

`3*A023396(n+1)`
-/

namespace A023407.P13536863999365802132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023396 (n + 1)

end

end A023407.P13536863999365802132

/-! ## A023407.P255218861090445467

`lcm(3, A023396(n%(n+1)+1))`
-/

namespace A023407.P255218861090445467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A023396 (n % (n + 1) + 1))

end

end A023407.P255218861090445467

/-! ## A023407.P6386235660199261352

`A023396(char[1]+1+n)²+2`
-/

namespace A023407.P6386235660199261352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023396 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) ^ 2 + 2

end

end A023407.P6386235660199261352

/-! ## A023407.P5995144565953021554

`lcm(A023396(n+1), A174971(n))`
-/

namespace A023407.P5995144565953021554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023396 (n + 1)) (A174971 n)

end

end A023407.P5995144565953021554

/-! ## A023407.P3923573760835211100

`A048724(A023396(n+1)-val(A034856(n+1), 5))`
-/

namespace A023407.P3923573760835211100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (A023396 (n + 1) - (SequenceMachineLib.valuation (A034856 (n + 1)).toNat 5 : ℤ)).toNat

end

end A023407.P3923573760835211100

/-! ## A023407.P17185257365978306907

`A016777(A023396(n+1)+n)-A016777(n)`
-/

namespace A023407.P17185257365978306907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A023396 (n + 1) + (n : ℤ)).toNat - A016777 n

end

end A023407.P17185257365978306907

/-! ## A023407.P7535184032150934811

`A006530(Δ[A007310(n+1)])+A023396(n+1)²`
-/

namespace A023407.P7535184032150934811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat + A023396 (n + 1) ^ 2

end

end A023407.P7535184032150934811

/-!
# A023408: If any power of 2 ends with k 5's and 6's, they must be the first k terms of this sequence in reverse order.

The programs for A023408, there is no canonical definition to state claims against.
-/

/-! ## A023408.P14661565752539553342

`6-A023402(n+1)%A157532(n+1)`
-/

namespace A023408.P14661565752539553342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.tmod (A023402 (n + 1)) (A157532 (n + 1))

end

end A023408.P14661565752539553342

/-! ## A023408.P1159111645004816888

`A023405(a(n-1))-A023402(n+1)` with `a(0)=6`
-/

namespace A023408.P1159111645004816888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A023405 (a (n - 1)).toNat - A023402 (n + 1)

end

end A023408.P1159111645004816888

/-! ## A023408.P3968869722501013275

`xor(A023402(n+1), A029594(n))%2+5`
-/

namespace A023408.P3968869722501013275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A023402 (n + 1)) (A029594 n)) 2 + 5

end

end A023408.P3968869722501013275

/-! ## A023408.P6691960185510509221

`A010717(A029594(n)+A023402(n+1))`
-/

namespace A023408.P6691960185510509221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010717 (A029594 n + A023402 (n + 1)).toNat

end

end A023408.P6691960185510509221

/-! ## A023408.P12726434652747673806

`A023396(n+1)+A023414(n+1)-A023402(n+1)`
-/

namespace A023408.P12726434652747673806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023396 (n + 1) + (A023414 (n + 1) - A023402 (n + 1))

end

end A023408.P12726434652747673806

/-! ## A023408.P8667407644982861502

`A020639(A278486(n+1))+7-A023402(n+1)`
-/

namespace A023408.P8667407644982861502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A278486 (n + 1)).toNat + (7 - A023402 (n + 1))

end

end A023408.P8667407644982861502

/-! ## A023408.P15016518120117993651

`7-gcd(A020699(n), A023402(n+1))`
-/

namespace A023408.P15016518120117993651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (Int.gcd (A020699 n) (A023402 (n + 1)) : ℤ)

end

end A023408.P15016518120117993651

/-!
# A023410: In base 10, if any power of 2 ends with k 6's and 9's, they must be the first k terms of this sequence in reverse order.

The programs for A023410, there is no canonical definition to state claims against.
-/

/-! ## A023410.P16020231529878286939

`3*A023397(n+1)`
-/

namespace A023410.P16020231529878286939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023397 (n + 1)

end

end A023410.P16020231529878286939

/-! ## A023410.P16248014457068018609

`A008486(A023397(n+1)+A053698(n)%(n+1))`
-/

namespace A023410.P16248014457068018609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A023397 (n + 1) + Int.tmod (A053698 n) (n + 1 : ℤ)).toNat

end

end A023410.P16248014457068018609

/-! ## A023410.P14859060690048944550

`A008486(A023397(n+1)+A004526(gcd(n, n+1)))`
-/

namespace A023410.P14859060690048944550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A023397 (n + 1) + A004526 (Nat.gcd n (n + 1))).toNat

end

end A023410.P14859060690048944550

/-! ## A023410.P16165308179215172106

`A008486(A023397(n+1)+A008486(n+1)%(n+1))`
-/

namespace A023410.P16165308179215172106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A023397 (n + 1) + Int.tmod (A008486 (n + 1)) (n + 1 : ℤ)).toNat

end

end A023410.P16165308179215172106

/-! ## A023410.P16654248143256052029

`A016777(A023397(n+1)+n)-A016777(n)`
-/

namespace A023410.P16654248143256052029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A023397 (n + 1) + (n : ℤ)).toNat - A016777 n

end

end A023410.P16654248143256052029

/-! ## A023410.P4549942743822125954

`A008486(A023397(n+1)+n+1)-A008486(n+1)`
-/

namespace A023410.P4549942743822125954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A023397 (n + 1) + (n + 1 : ℤ)).toNat - A008486 (n + 1)

end

end A023410.P4549942743822125954

/-!
# A023411: If any even power of 2 ends with k 1's and 8's, they must be the first k terms of this sequence in reverse order.

The programs for A023411, there is no canonical definition to state claims against.
-/

/-! ## A023411.P12307578913297827784

`A246127(A190812(n+1))^3`
-/

namespace A023411.P12307578913297827784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246127 (A190812 (n + 1)).toNat ^ 3

end

end A023411.P12307578913297827784

/-! ## A023411.P13426768867538028592

`gcd(8, A025435(A293671(n)))`
-/

namespace A023411.P13426768867538028592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A025435 (A293671 n).toNat)

end

end A023411.P13426768867538028592

/-! ## A023411.P160372607296991395

`A031176(32*A207682(n+1))`
-/

namespace A023411.P160372607296991395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (32 * A207682 (n + 1)).toNat

end

end A023411.P160372607296991395

/-! ## A023411.P3250280712383613905

`dr(26^A007318(A238880(n+1)))`
-/

namespace A023411.P3250280712383613905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((26 : ℚ) ^ (A007318 (A238880 (n + 1)).toNat : ℤ)))

end

end A023411.P3250280712383613905

/-! ## A023411.P13312794915360099417

`A010689(A224678(n+1)+A023503(n+2))`
-/

namespace A023411.P13312794915360099417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 (A224678 (n + 1) + A023503 (n + 2)).toNat

end

end A023411.P13312794915360099417

/-!
# A023412: If any power of 2 ends with k 3's and 8's, they must be the first k terms of this sequence in reverse order.

The programs for A023412, there is no canonical definition to state claims against.
-/

/-! ## A023412.P6100642810679575692

`dr(5*A023409(n+1))`
-/

namespace A023412.P6100642810679575692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (5 * A023409 (n + 1))

end

end A023412.P6100642810679575692

/-! ## A023412.P14223402110448004350

`A106624(A023409(n+1)-A006519(2*n+1))`
-/

namespace A023412.P14223402110448004350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A023409 (n + 1) - A006519 (2 * n + 1)).toNat

end

end A023412.P14223402110448004350

/-!
# A023413: If any power of 2 ends with k 5's and 8's, they must be the first k terms of this sequence in reverse order.

The programs for A023413, there is no canonical definition to state claims against.
-/

/-! ## A023413.P302800474038248810

`floor(A053378(n+1)/A011557(n))`
-/

namespace A023413.P302800474038248810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053378 (n + 1) : ℚ) / (A011557 n : ℚ)⌋

end

end A023413.P302800474038248810

/-! ## A023413.P11499907243748893314

`floor(A053378(n+1)/A155594(n))`
-/

namespace A023413.P11499907243748893314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053378 (n + 1) : ℚ) / (A155594 n : ℚ)⌋

end

end A023413.P11499907243748893314

/-! ## A023413.P12985799786273382642

`floor(A053378(n+1)/(A050621(n+1)-1))`
-/

namespace A023413.P12985799786273382642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053378 (n + 1) : ℚ) / (A050621 (n + 1) - 1 : ℚ)⌋

end

end A023413.P12985799786273382642

/-! ## A023413.P6006199393738133178

`9-A284532(A284563(2*n))`
-/

namespace A023413.P6006199393738133178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A284532 (A284563 (2 * n)).toNat

end

end A023413.P6006199393738133178

/-!
# A023414: If any power of 2 ends with k 7's and 8's, they must be the first k terms of this sequence in reverse order.

The programs for A023414, there is no canonical definition to state claims against.
-/

/-! ## A023414.P15211509251520937788

`8-A060308(n+1)%A023396(n+1)`
-/

namespace A023414.P15211509251520937788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - Int.tmod (A060308 (n + 1)) (A023396 (n + 1))

end

end A023414.P15211509251520937788

/-! ## A023414.P5919836178549977168

`9-A023396(char[A073993(3*(n+1))]+1+n)`
-/

namespace A023414.P5919836178549977168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073993 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A023396 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 + n)

end

end A023414.P5919836178549977168

/-! ## A023414.P3916967564325850460

`A023402(n+1)+A023408(n+1)-A023396(n+1)`
-/

namespace A023414.P3916967564325850460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023402 (n + 1) + (A023408 (n + 1) - A023396 (n + 1))

end

end A023414.P3916967564325850460

/-! ## A023414.P13221206173403425935

`9-gcd(A023396(n+1), A054440(n))`
-/

namespace A023414.P13221206173403425935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (Int.gcd (A023396 (n + 1)) (A054440 n) : ℤ)

end

end A023414.P13221206173403425935

/-! ## A023414.P13963870452294782099

`9-gcd(A000079(n), A023407(n+1))`
-/

namespace A023414.P13963870452294782099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (Int.gcd (A000079 n) (A023407 (n + 1)) : ℤ)

end

end A023414.P13963870452294782099

/-!
# A023415: If any power of 2 ends with k 8's and 9's, they must be the first k terms of this sequence in reverse order.

The programs for A023415, there is no canonical definition to state claims against.
-/

/-! ## A023415.P3317150123756105165

`9-A145679(n+1)^n`
-/

namespace A023415.P3317150123756105165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A145679 (n + 1) ^ n

end

end A023415.P3317150123756105165

/-! ## A023415.P18347277207340358774

`xor(9, A145679(C(n+1, n))^n)`
-/

namespace A023415.P18347277207340358774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A145679 (Nat.choose (n + 1) n) ^ n)

end

end A023415.P18347277207340358774

/-! ## A023415.P1564194458217750616

`xor(9, A145679(floor(acot(n+1)+n)+1)^n)`
-/

namespace A023415.P1564194458217750616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A145679 (⌊SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)⌋ + 1).toNat ^ n)

end

end A023415.P1564194458217750616

/-! ## A023415.P18167273879009088434

`xor(9, A145679(floor(sqrt(n²+n))%(n+1)+1)^n)`
-/

namespace A023415.P18167273879009088434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A145679 (Nat.sqrt (n ^ 2 + n) % (n + 1) + 1) ^ n)

end

end A023415.P18167273879009088434

/-! ## A023415.P10658156264807049322

`A061601(A145679(n+1)^n)`
-/

namespace A023415.P10658156264807049322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A145679 (n + 1) ^ n).toNat

end

end A023415.P10658156264807049322

/-! ## A023415.P15789287731465491764

`A000007(n)+9-A145679(n+1)`
-/

namespace A023415.P15789287731465491764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A145679 (n + 1))

end

end A023415.P15789287731465491764

/-! ## A023415.P2587050586364465773

`A020703(A145679(n+1)^n+5)`
-/

namespace A023415.P2587050586364465773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A145679 (n + 1) ^ n + 5).toNat

end

end A023415.P2587050586364465773

/-! ## A023415.P7147322264977946075

`A000032(A145679(n+1)^n)+7`
-/

namespace A023415.P7147322264977946075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A145679 (n + 1) ^ n).toNat + 7

end

end A023415.P7147322264977946075

/-! ## A023415.P7544812768432362126

`A018252(xor(5, A145679(n+1)^n))`
-/

namespace A023415.P7544812768432362126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Int.xor 5 (A145679 (n + 1) ^ n)).toNat

end

end A023415.P7544812768432362126

/-! ## A023415.P10498178001106930960

`xor(9, A000045(A145679(n+1)^n))`
-/

namespace A023415.P10498178001106930960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A000045 (A145679 (n + 1) ^ n).toNat)

end

end A023415.P10498178001106930960

/-!
# A023416: Number of 0's in binary expansion of n.

The programs for A023416, the canonical program `A023416.P8124303482289229133` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023416 has offset 0).

The definition of A023416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023416.P4867982816566655475

`1-n%2+a(floor(n/2))` with `a(0)=1, a(1)=0`
-/

namespace A023416.P4867982816566655475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - ((n % 2 : ℕ) : ℤ) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A023416.P4867982816566655475

namespace A023416

/-- `1-n%2+a(floor(n/2))` -/
def P4867982816566655475.Spec : Prop :=
  ∀ n, P4867982816566655475.a n = A023416 n

end A023416

/-! ## A023416.P17804253844473373364

`A000120(A035327(n))`
-/

namespace A023416.P17804253844473373364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 n).toNat

end

end A023416.P17804253844473373364

namespace A023416

/-- `A000120(A035327(n))` -/
def P17804253844473373364.Spec : Prop :=
  ∀ n, P17804253844473373364.a n = A023416 n

end A023416

/-! ## A023416.P8124303482289229133

`A070939(n)-A000120(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023416

/-- `A070939(n)-A000120(n)` -/
def P8124303482289229133.Spec : Prop :=
  ∀ n, P8124303482289229133.a n = A023416 n

theorem P8124303482289229133.correct : P8124303482289229133.Spec := by
  intro n
  simp only [A023416]

end A023416

/-! ## A023416.P5937836485297284598

`a(floor(n/2))+log2(gcd(2, n))` with `a(0)=1, a(1)=0`
-/

namespace A023416.P5937836485297284598
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A023416.P5937836485297284598

namespace A023416

/-- `a(floor(n/2))+log2(gcd(2, n))` -/
def P5937836485297284598.Spec : Prop :=
  ∀ n, P5937836485297284598.a n = (A023416 n : ℝ)

end A023416

/-! ## A023416.P1873204928653943681

`a(floor(n/2))+a(n%2)` with `a(0)=1, a(1)=0`
-/

namespace A023416.P1873204928653943681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + a (n % 2)

end

end A023416.P1873204928653943681

namespace A023416

/-- `a(floor(n/2))+a(n%2)` -/
def P1873204928653943681.Spec : Prop :=
  ∀ n, (P1873204928653943681.a n : ℤ) = A023416 n

end A023416

/-! ## A023416.P17802805793900014690

`a(floor(n/2))+and(1, n+1)` with `a(0)=1, a(1)=0`
-/

namespace A023416.P17802805793900014690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 (n + 1)

end

end A023416.P17802805793900014690

namespace A023416

/-- `a(floor(n/2))+and(1, n+1)` -/
def P17802805793900014690.Spec : Prop :=
  ∀ n, (P17802805793900014690.a n : ℤ) = A023416 n

end A023416

/-! ## A023416.P3556264745760831071

`a(floor(n/2))+val(n²+2, 2)` with `a(0)=1, a(1)=0`
-/

namespace A023416.P3556264745760831071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + SequenceMachineLib.valuation (n ^ 2 + 2) 2

end

end A023416.P3556264745760831071

namespace A023416

/-- `a(floor(n/2))+val(n²+2, 2)` -/
def P3556264745760831071.Spec : Prop :=
  ∀ n, (P3556264745760831071.a n : ℤ) = A023416 n

end A023416

/-! ## A023416.P944856045872937488

`val(A176893(n), 2)`
-/

namespace A023416.P944856045872937488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176893 n).toNat 2

end

end A023416.P944856045872937488

namespace A023416

/-- `val(A176893(n), 2)` -/
def P944856045872937488.Spec : Prop :=
  ∀ n, (P944856045872937488.a n : ℤ) = A023416 n

end A023416

/-! ## A023416.P17184297240469684876

`abs(1-log2(A267584(n)))`
-/

namespace A023416.P17184297240469684876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |1 - Real.logb 2 (A267584 n : ℝ)|

end

end A023416.P17184297240469684876

namespace A023416

/-- `abs(1-log2(A267584(n)))` -/
def P17184297240469684876.Spec : Prop :=
  ∀ n, P17184297240469684876.a n = (A023416 n : ℝ)

end A023416

/-! ## A023416.P13888805217173291933

`∑{digits}[A007088(n), 1-#]`
-/

namespace A023416.P13888805217173291933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A023416.P13888805217173291933

namespace A023416

/-- `∑{digits}[A007088(n), 1-#]` -/
def P13888805217173291933.Spec : Prop :=
  ∀ n, P13888805217173291933.a n = A023416 n

end A023416

/-! ## A023416.P2579533590200515475

`val(∏{digits}[A176892(n), #], 2)`
-/

namespace A023416.P2579533590200515475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod 2

end

end A023416.P2579533590200515475

namespace A023416

/-- `val(∏{digits}[A176892(n), #], 2)` -/
def P2579533590200515475.Spec : Prop :=
  ∀ n, (P2579533590200515475.a n : ℤ) = A023416 n

end A023416

/-! ## A023416.P238352355955315374

`A080791(n)^ceil(abs(sin(n)))`
-/

namespace A023416.P238352355955315374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080791 n : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A023416.P238352355955315374

namespace A023416

/-- `A080791(n)^ceil(abs(sin(n)))` -/
def P238352355955315374.Spec : Prop :=
  ∀ n, P238352355955315374.a n = (A023416 n : ℚ)

end A023416

/-! ## A023416.P17013039813495746469

`A089263(n)+a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A023416.P17013039813495746469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A089263 n + a (n - 1)

end

end A023416.P17013039813495746469

namespace A023416

/-- `A089263(n)+a(n-1)` -/
def P17013039813495746469.Spec : Prop :=
  ∀ n, P17013039813495746469.a n = A023416 n

end A023416

/-! ## A023416.P5598620655032100108

`A087117(A073137(n))`
-/

namespace A023416.P5598620655032100108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A073137 n).toNat

end

end A023416.P5598620655032100108

namespace A023416

/-- `A087117(A073137(n))` -/
def P5598620655032100108.Spec : Prop :=
  ∀ n, P5598620655032100108.a n = A023416 n

end A023416

/-! ## A023416.P17556018965107941688

`A037861(n)+A000120(n)`
-/

namespace A023416.P17556018965107941688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n + A000120 n

end

end A023416.P17556018965107941688

namespace A023416

/-- `A037861(n)+A000120(n)` -/
def P17556018965107941688.Spec : Prop :=
  ∀ n, P17556018965107941688.a n = A023416 n

theorem P17556018965107941688.correct : P17556018965107941688.Spec := by
  intro n
  simp only [A023416, Nat.add_sub_cancel, A023416.P17556018965107941688.a, A023416.P8124303482289229133.a, A000120, A000120.P2816527436160941581.a, A037861, A037861.P603769739827553154.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023416

/-! ## A023416.P14273723576558096294

`A080791(n)+A000007(n)`
-/

namespace A023416.P14273723576558096294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + A000007 n

end

end A023416.P14273723576558096294

namespace A023416

/-- `A080791(n)+A000007(n)` -/
def P14273723576558096294.Spec : Prop :=
  ∀ n, P14273723576558096294.a n = A023416 n

end A023416

/-! ## A023416.P17534303482835781688

`A080791(A000038(n)+n)`
-/

namespace A023416.P17534303482835781688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A000038 n + (n : ℤ)).toNat

end

end A023416.P17534303482835781688

namespace A023416

/-- `A080791(A000038(n)+n)` -/
def P17534303482835781688.Spec : Prop :=
  ∀ n, P17534303482835781688.a n = A023416 n

end A023416

/-! ## A023416.P11627319918537681901

`A107782(n)+A087116(n)`
-/

namespace A023416.P11627319918537681901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 n + A087116 n

end

end A023416.P11627319918537681901

namespace A023416

/-- `A107782(n)+A087116(n)` -/
def P11627319918537681901.Spec : Prop :=
  ∀ n, P11627319918537681901.a n = A023416 n

theorem P11627319918537681901.correct : P11627319918537681901.Spec := by
  intro n
  simp only [A023416, Nat.add_sub_cancel, A023416.P11627319918537681901.a, A023416.P8124303482289229133.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A087116, A087116.P11350810953562711327.f1, A087116.P11350810953562711327.a, A107782, A107782.P10954405074000137432.a, A005187, A005187.P3874015513960485494.a, A069010, A069010.P14932719103722593844.a, A005811, A005811.P8696411420205566785.a, A003188, A003188.P10544524695508875182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023416

/-! ## A023416.P5815212014114288518

`A233273(n)-A103517(n)`
-/

namespace A023416.P5815212014114288518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233273 n - A103517 n

end

end A023416.P5815212014114288518

namespace A023416

/-- `A233273(n)-A103517(n)` -/
def P5815212014114288518.Spec : Prop :=
  ∀ n, P5815212014114288518.a n = A023416 n

end A023416

/-! ## A023416.P18187390650870689531

`A290251(n)-A158388(n)`
-/

namespace A023416.P18187390650870689531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n - A158388 n

end

end A023416.P18187390650870689531

namespace A023416

/-- `A290251(n)-A158388(n)` -/
def P18187390650870689531.Spec : Prop :=
  ∀ n, P18187390650870689531.a n = A023416 n

end A023416

/-!
# A023418: Denominator of n*(n-3)*(3*n^2 - 6*n + 2)/(3*(n-1)*(n-2)).

The programs for A023418, the canonical program `A023418.P14612031648764867752` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023418 has offset 3).

The definition of A023418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023418.P14612031648764867752

`lcm(n+3, ∑[3*(n+1)])/(n+3)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023418

/-- `lcm(n+3, ∑[3*(n+1)])/(n+3)` -/
def P14612031648764867752.Spec : Prop :=
  ∀ n, P14612031648764867752.a n = (A023418 (n + 3) : ℚ)

end A023418

/-! ## A023418.P5448291921172770232

`∑[2*n+n+3]/gcd(n+3, ∑[n])`
-/

namespace A023418.P5448291921172770232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd (n + 3) (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A023418.P5448291921172770232

namespace A023418

/-- `∑[2*n+n+3]/gcd(n+3, ∑[n])` -/
def P5448291921172770232.Spec : Prop :=
  ∀ n, P5448291921172770232.a n = (A023418 (n + 3) : ℚ)

end A023418

/-! ## A023418.P8170391854375735853

`A026741(gcd((1-n²)², ∑[3*n]))*A026741(n+2)`
-/

namespace A023418.P8170391854375735853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd ((1 - (n ^ 2 : ℤ)) ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * A026741 (n + 2)

end

end A023418.P8170391854375735853

namespace A023418

/-- `A026741(gcd((1-n²)², ∑[3*n]))*A026741(n+2)` -/
def P8170391854375735853.Spec : Prop :=
  ∀ n, P8170391854375735853.a n = A023418 (n + 3)

end A023418

/-! ## A023418.P11618678779956482104

`A026741(n+2)*A026741(A262343(n+3))`
-/

namespace A023418.P11618678779956482104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2) * A026741 (A262343 (n + 3)).toNat

end

end A023418.P11618678779956482104

namespace A023418

/-- `A026741(n+2)*A026741(A262343(n+3))` -/
def P11618678779956482104.Spec : Prop :=
  ∀ n, P11618678779956482104.a n = A023418 (n + 3)

end A023418

/-! ## A023418.P17918078846845623652

`gcd(n*A000096(∑[n+1]), A000537(n+1))`
-/

namespace A023418.P17918078846845623652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A000096 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000537 (n + 1))

end

end A023418.P17918078846845623652

namespace A023418

/-- `gcd(n*A000096(∑[n+1]), A000537(n+1))` -/
def P17918078846845623652.Spec : Prop :=
  ∀ n, (P17918078846845623652.a n : ℤ) = A023418 (n + 3)

end A023418

/-! ## A023418.P10796203866554492560

`gcd(A168059(n+1)², A000096(A168059(n+1)))`
-/

namespace A023418.P10796203866554492560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168059 (n + 1) ^ 2) (A000096 (A168059 (n + 1)).toNat)

end

end A023418.P10796203866554492560

namespace A023418

/-- `gcd(A168059(n+1)², A000096(A168059(n+1)))` -/
def P10796203866554492560.Spec : Prop :=
  ∀ n, (P10796203866554492560.a n : ℤ) = A023418 (n + 3)

end A023418

/-! ## A023418.P16953012581092704281

`A026741((n+2)*A262343(n+3))`
-/

namespace A023418.P16953012581092704281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 2 : ℤ) * A262343 (n + 3)).toNat

end

end A023418.P16953012581092704281

namespace A023418

/-- `A026741((n+2)*A262343(n+3))` -/
def P16953012581092704281.Spec : Prop :=
  ∀ n, P16953012581092704281.a n = A023418 (n + 3)

end A023418

/-!
# A023419: a(n) = c([ n/2 ]) + c([ n/3 ]) + ... + c([ n/n ]) for n >=3, where a(1) = 1, a(2) = 2 and c(n) = n-th number not in sequence a( ).

The programs for A023419, there is no canonical definition to state claims against.
-/

/-! ## A023419.P7082766836839408217

`A372475(A000242(n+3))+A038107(n)`
-/

namespace A023419.P7082766836839408217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372475 (A000242 (n + 3)).toNat + A038107 n

end

end A023419.P7082766836839408217

/-! ## A023419.P3812314838354311960

`A004539(n+1)+A220657(A087051(n))+n`
-/

namespace A023419.P3812314838354311960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1) + (A220657 (A087051 n).toNat + (n : ℤ))

end

end A023419.P3812314838354311960

/-! ## A023419.P15012276169255590687

`A171888(∑[A286545(n+1)])`
-/

namespace A023419.P15012276169255590687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171888 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023419.P15012276169255590687

/-! ## A023419.P7320817307519005442

`A225633(n)+A195932(n²+1)`
-/

namespace A023419.P7320817307519005442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 n + A195932 (n ^ 2 + 1)

end

end A023419.P7320817307519005442

/-! ## A023419.P9328214954862981415

`A171888(∑[A111890(∑{d}[n+1, #])])`
-/

namespace A023419.P9328214954862981415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111890 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171888 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023419.P9328214954862981415

/-!
# A023420: a(n) = c([ n/2 ]) + c([ n/3 ]) + ... + c([ n/n ]) for n >=3, where a(1) = 1, a(2) = 3 and c(n) = n-th number not in sequence a( ).

The programs for A023420, there is no canonical definition to state claims against.
-/

/-! ## A023420.P1023920345795013351

`A300306(n+1)-A300290(A003462(n))`
-/

namespace A023420.P1023920345795013351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300306 (n + 1) - A300290 (A003462 n).toNat

end

end A023420.P1023920345795013351

/-!
# A023421: Generalized Catalan Numbers x^2*A(x)^2 -(1-x+x^2+x^3+x^4)*A(x) + 1 =0.

The programs for A023421, there is no canonical definition to state claims against.
-/

/-! ## A023421.P12200147368580782061

`A064645(∑[n+3]+6)`
-/

namespace A023421.P12200147368580782061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A023421.P12200147368580782061

/-! ## A023421.P3460226983990581779

`or(A000007(n), A064645(A167614(n+2)))`
-/

namespace A023421.P3460226983990581779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A064645 (A167614 (n + 2)).toNat)

end

end A023421.P3460226983990581779

/-! ## A023421.P15563283230995424780

`or(A063524(n), A064645(A167614(n+2)))`
-/

namespace A023421.P15563283230995424780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A064645 (A167614 (n + 2)).toNat)

end

end A023421.P15563283230995424780

/-! ## A023421.P13866022085079840288

`A064645(A167614(n+2))%A190051(n+2)`
-/

namespace A023421.P13866022085079840288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064645 (A167614 (n + 2)).toNat) (A190051 (n + 2))

end

end A023421.P13866022085079840288

/-! ## A023421.P12855308295115149258

`A064645(eq[3, A002262(n)])%A001047(n+2)`
-/

namespace A023421.P12855308295115149258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A001047 (n + 2))

end

end A023421.P12855308295115149258

/-! ## A023421.P5726651512383480993

`A064645(A167614(n+2))+A025444(A025444(n))`
-/

namespace A023421.P5726651512383480993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (A167614 (n + 2)).toNat + A025444 (A025444 n).toNat

end

end A023421.P5726651512383480993

/-! ## A023421.P1352889388058151431

`A064645(A167614(n+2))+A014029(A034856(n+1))`
-/

namespace A023421.P1352889388058151431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (A167614 (n + 2)).toNat + A014029 (A034856 (n + 1)).toNat

end

end A023421.P1352889388058151431

/-! ## A023421.P1658532055781557654

`A001222(A061237(n+1))*A064645(A167614(n+2))`
-/

namespace A023421.P1658532055781557654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061237 (n + 1)).toNat * A064645 (A167614 (n + 2)).toNat

end

end A023421.P1658532055781557654

/-! ## A023421.P17319633314748776922

`A001222(A061242(n+1))*A064645(A167614(n+2))`
-/

namespace A023421.P17319633314748776922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061242 (n + 1)).toNat * A064645 (A167614 (n + 2)).toNat

end

end A023421.P17319633314748776922

/-! ## A023421.P5171169366410643213

`A063524(A178334(n)^n)*A064645(A167614(n+2))`
-/

namespace A023421.P5171169366410643213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A178334 n ^ n).toNat * A064645 (A167614 (n + 2)).toNat

end

end A023421.P5171169366410643213

/-! ## A023421.P11892153950798555622

`A258709((∑[n]+3)%∑[n+1])`
-/

namespace A023421.P11892153950798555622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 ((∑ j ∈ Finset.range (n + 1), f1 j + 3) % (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A023421.P11892153950798555622

/-! ## A023421.P2634003667908288541

`A258709(A133263(n)+1-A130713(n))`
-/

namespace A023421.P2634003667908288541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (A133263 n + (1 - A130713 n)).toNat

end

end A023421.P2634003667908288541

/-! ## A023421.P5879698773035641312

`A258709(1-(A130713(n)-A133263(n)))`
-/

namespace A023421.P5879698773035641312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (1 - (A130713 n - A133263 n)).toNat

end

end A023421.P5879698773035641312

/-! ## A023421.P914235304845890761

`A258709(and(A000225(n), A152950(n+1)))`
-/

namespace A023421.P914235304845890761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (Int.land (A000225 n) (A152950 (n + 1))).toNat

end

end A023421.P914235304845890761

/-!
# A023422: Generalized Catalan Numbers x^2*A(x)^2 -(1-x+x^2+x^3+x^4+x^5)*A(x) + 1 =0.

The programs for A023422, there is no canonical definition to state claims against.
-/

/-! ## A023422.P12156894368179817828

`A064645(∑[n+4]+10)`
-/

namespace A023422.P12156894368179817828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A023422.P12156894368179817828

/-! ## A023422.P2462033076285064603

`gcd(A000038(n), A064645(A155212(n)+12))`
-/

namespace A023422.P2462033076285064603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A064645 (A155212 n + 12).toNat)

end

end A023422.P2462033076285064603

/-! ## A023422.P13195722049211787913

`A064645(A155212(n)+12)^A019426(2*n)`
-/

namespace A023422.P13195722049211787913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064645 (A155212 n + 12).toNat : ℚ) ^ (A019426 (2 * n) : ℤ)

end

end A023422.P13195722049211787913

/-! ## A023422.P6242115181641275036

`A064645(A155212(n)+12)%A001333(n+2)`
-/

namespace A023422.P6242115181641275036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064645 (A155212 n + 12).toNat) (A001333 (n + 2))

end

end A023422.P6242115181641275036

/-! ## A023422.P13575988485776828058

`C(A000010(n+1), n)!*A064645(A155212(n)+12)`
-/

namespace A023422.P13575988485776828058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose (A000010 (n + 1)).toNat n) : ℤ) * A064645 (A155212 n + 12).toNat

end

end A023422.P13575988485776828058

/-! ## A023422.P1352025192912009567

`A053164(A031215(n+1))*A064645(A155212(n)+12)`
-/

namespace A023422.P1352025192912009567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A031215 (n + 1)).toNat * A064645 (A155212 n + 12).toNat

end

end A023422.P1352025192912009567

/-! ## A023422.P16911128244827709585

`A000120(A059268(n))*A064645(A155212(n)+12)`
-/

namespace A023422.P16911128244827709585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059268 n).toNat * A064645 (A155212 n + 12).toNat

end

end A023422.P16911128244827709585

/-!
# A023423: Generalized Catalan Numbers x^2*A(x)^2 -(1-x+x^2+x^3+x^4+x^5+x^6)*A(x) + 1 =0.

The programs for A023423, there is no canonical definition to state claims against.
-/

/-! ## A023423.P15527600565693080437

`A064645(A167499(n+4))`
-/

namespace A023423.P15527600565693080437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (A167499 (n + 4)).toNat

end

end A023423.P15527600565693080437

/-! ## A023423.P5315663342453945859

`A064645(A000124(n+5)+4)`
-/

namespace A023423.P5315663342453945859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (A000124 (n + 5) + 4).toNat

end

end A023423.P5315663342453945859

/-! ## A023423.P5353434327720402212

`A064645(A134869(n+5)+4)`
-/

namespace A023423.P5353434327720402212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (A134869 (n + 5) + 4).toNat

end

end A023423.P5353434327720402212

/-! ## A023423.P4481802205165582110

`A064645(A000217(n+5)+5)`
-/

namespace A023423.P4481802205165582110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (A000217 (n + 5) + 5).toNat

end

end A023423.P4481802205165582110

/-! ## A023423.P11813982414612794894

`A064645(A152947(n+7)+4)`
-/

namespace A023423.P11813982414612794894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (A152947 (n + 7) + 4).toNat

end

end A023423.P11813982414612794894

/-! ## A023423.P16466237934165311634

`A064645(A046691(n+3)+9)`
-/

namespace A023423.P16466237934165311634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (A046691 (n + 3) + 9).toNat

end

end A023423.P16466237934165311634

/-!
# A023424: Expansion of (1+2*x+3*x^2+4*x^3+5*x^4)/(1-x-x^2-x^3-x^4-x^5).

The programs for A023424, the canonical program `A023424.P3701380126245831961` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023424 has offset 0).

The definition of A023424 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+4x^3+5x^4)/(1-x-x^2-x^3-x^4-x^5))` (program `A023424.P3701380126245831961`, by `A023424.P3701380126245831961.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023424.P3701380126245831961

`ogf((1+2x+3x^2+4x^3+5x^4)/(1-x-x^2-x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023424

/-- `ogf((1+2x+3x^2+4x^3+5x^4)/(1-x-x^2-x^3-x^4-x^5))` -/
def P3701380126245831961.Spec : Prop :=
  ∀ n, P3701380126245831961.a n = A023424 n

theorem P3701380126245831961.correct : P3701380126245831961.Spec := by
  intro n
  simp only [A023424]

end A023424

/-! ## A023424.P14078389477838349321

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15, a(4)=31`
-/

namespace A023424.P14078389477838349321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 15, 31] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 3) + (a (n - 4) + a (n - 5))))

end

end A023424.P14078389477838349321

namespace A023424

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P14078389477838349321.Spec : Prop :=
  ∀ n, (P14078389477838349321.a n : ℤ) = A023424 n

end A023424

/-! ## A023424.P10001898640955994157

`A074048(n+1)`
-/

namespace A023424.P10001898640955994157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (n + 1)

end

end A023424.P10001898640955994157

namespace A023424

/-- `A074048(n+1)` -/
def P10001898640955994157.Spec : Prop :=
  ∀ n, P10001898640955994157.a n = A023424 n

end A023424

/-! ## A023424.P12634688012312557225

`record[A074048(A133265(n)/2)]`
-/

namespace A023424.P12634688012312557225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023424.P12634688012312557225

namespace A023424

/-- `record[A074048(A133265(n)/2)]` -/
def P12634688012312557225.Spec : Prop :=
  ∀ n, P12634688012312557225.a n = A023424 n

end A023424

/-! ## A023424.P6751242636464451327

`ratio[A074048(n)]*A074048(n)`
-/

namespace A023424.P6751242636464451327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A074048 n : ℚ)

end

end A023424.P6751242636464451327

namespace A023424

/-- `ratio[A074048(n)]*A074048(n)` -/
def P6751242636464451327.Spec : Prop :=
  ∀ n, P6751242636464451327.a n = (A023424 n : ℚ)

end A023424

/-! ## A023424.P742810241121949063

`A135493(n+1)-A000322(n)`
-/

namespace A023424.P742810241121949063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135493 (n + 1) - A000322 n

end

end A023424.P742810241121949063

namespace A023424

/-- `A135493(n+1)-A000322(n)` -/
def P742810241121949063.Spec : Prop :=
  ∀ n, P742810241121949063.a n = A023424 n

end A023424

/-! ## A023424.P6866250344235470381

`record[A074048(A004526(A133265(n)))]`
-/

namespace A023424.P6866250344235470381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (A004526 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023424.P6866250344235470381

namespace A023424

/-- `record[A074048(A004526(A133265(n)))]` -/
def P6866250344235470381.Spec : Prop :=
  ∀ n, P6866250344235470381.a n = A023424 n

end A023424

/-! ## A023424.P8976531572824120917

`record[A074048(n)%A000032(n)²]`
-/

namespace A023424.P8976531572824120917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074048 n) (A000032 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023424.P8976531572824120917

namespace A023424

/-- `record[A074048(n)%A000032(n)²]` -/
def P8976531572824120917.Spec : Prop :=
  ∀ n, P8976531572824120917.a n = A023424 n

end A023424

/-! ## A023424.P13799640034864860918

`A127221(n+1)/2^(n+1)`
-/

namespace A023424.P13799640034864860918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127221 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A023424.P13799640034864860918

namespace A023424

/-- `A127221(n+1)/2^(n+1)` -/
def P13799640034864860918.Spec : Prop :=
  ∀ n, P13799640034864860918.a n = (A023424 n : ℚ)

end A023424

/-! ## A023424.P17635931445649622091

`A127222(n+1)/3^(n+1)`
-/

namespace A023424.P17635931445649622091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127222 (n + 1) : ℚ) / (3 ^ (n + 1) : ℚ)

end

end A023424.P17635931445649622091

namespace A023424

/-- `A127222(n+1)/3^(n+1)` -/
def P17635931445649622091.Spec : Prop :=
  ∀ n, P17635931445649622091.a n = (A023424 n : ℚ)

end A023424

/-! ## A023424.P3912006614230269629

`gcd(A127221(n+1), A127222(n+1))`
-/

namespace A023424.P3912006614230269629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127221 (n + 1)) (A127222 (n + 1))

end

end A023424.P3912006614230269629

namespace A023424

/-- `gcd(A127221(n+1), A127222(n+1))` -/
def P3912006614230269629.Spec : Prop :=
  ∀ n, (P3912006614230269629.a n : ℤ) = A023424 n

end A023424

/-! ## A023424.P3455566485215428396

`A087131(n+1)/A127211(n+1)*A127221(n+1)`
-/

namespace A023424.P3455566485215428396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 (n + 1) : ℚ) / (A127211 (n + 1) : ℚ) * (A127221 (n + 1) : ℚ)

end

end A023424.P3455566485215428396

namespace A023424

/-- `A087131(n+1)/A127211(n+1)*A127221(n+1)` -/
def P3455566485215428396.Spec : Prop :=
  ∀ n, P3455566485215428396.a n = (A023424 n : ℚ)

end A023424

/-! ## A023424.P14739040262261555536

`A087131(n+1)/A127213(n+1)*A127222(n+1)`
-/

namespace A023424.P14739040262261555536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 (n + 1) : ℚ) / (A127213 (n + 1) : ℚ) * (A127222 (n + 1) : ℚ)

end

end A023424.P14739040262261555536

namespace A023424

/-- `A087131(n+1)/A127213(n+1)*A127222(n+1)` -/
def P14739040262261555536.Spec : Prop :=
  ∀ n, P14739040262261555536.a n = (A023424 n : ℚ)

end A023424

/-!
# A023425: Generalized Catalan numbers: a(0) = 1, a(n) = a(n-1) + Sum_{k=1..n-4} a(k) * a(n-k).

The programs for A023425, there is no canonical definition to state claims against.
-/

/-! ## A023425.P10603454843730845139

`ceil((A004526(A131408(n))+2)/10)`
-/

namespace A023425.P10603454843730845139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004526 (A131408 n).toNat + 2 : ℚ) / 10⌉

end

end A023425.P10603454843730845139

/-! ## A023425.P15309282958162317475

`A338060(A324615(n))`
-/

namespace A023425.P15309282958162317475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338060 (A324615 n).toNat

end

end A023425.P15309282958162317475

/-! ## A023425.P12317139161699753364

`A177849(A006801(n+1))`
-/

namespace A023425.P12317139161699753364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A006801 (n + 1)).toNat

end

end A023425.P12317139161699753364

/-! ## A023425.P14820119204902584586

`A177849(A097919(n+2))`
-/

namespace A023425.P14820119204902584586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A097919 (n + 2)).toNat

end

end A023425.P14820119204902584586

/-! ## A023425.P9232057155498629383

`A137748(A137748(n))+A114299(n)`
-/

namespace A023425.P9232057155498629383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137748 (A137748 n).toNat + A114299 n

end

end A023425.P9232057155498629383

/-!
# A023426: a(n) = a(n-1) + Sum_{k=0..n-4} a(k)*a(n-4-k), a(0) = 1. Generalized Catalan Numbers.

The programs for A023426, there is no canonical definition to state claims against.
-/

/-! ## A023426.P736554155343215336

`∑[A361229(n)]`
-/

namespace A023426.P736554155343215336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023426.P736554155343215336

/-! ## A023426.P46928247385689926

`A365696(n+3)+A365696(n)`
-/

namespace A023426.P46928247385689926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365696 (n + 3) + A365696 n

end

end A023426.P46928247385689926

/-! ## A023426.P15034637435166338882

`A361229(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A023426.P15034637435166338882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A361229 n + a (A023443 n).toNat

end

end A023426.P15034637435166338882

/-! ## A023426.P5372147354446137832

`2*A113409(n)-Δ[A113409(n+1)]`
-/

namespace A023426.P5372147354446137832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113409 n - (f1 (n + 1) - f1 n)

end

end A023426.P5372147354446137832

/-! ## A023426.P17922144127536478281

`A008619(A098575(n*A028950(n)))`
-/

namespace A023426.P17922144127536478281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A098575 ((n : ℤ) * A028950 n).toNat).toNat

end

end A023426.P17922144127536478281

/-!
# A023427: Number of Dyck n-paths with ascents and descents of length equal to 1 (mod 4).

The programs for A023427, there is no canonical definition to state claims against.
-/

/-! ## A023427.P4592075969198034530

`A216116(abs(1-n))`
-/

namespace A023427.P4592075969198034530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216116 |1 - (n : ℤ)|.toNat

end

end A023427.P4592075969198034530

/-! ## A023427.P4381908382913889794

`A212363(∑[n+5]+5)`
-/

namespace A023427.P4381908382913889794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A023427.P4381908382913889794

/-! ## A023427.P15964294413148184343

`A212363(eq[9, A099375(n)])+A000007(n+1)`
-/

namespace A023427.P15964294413148184343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A023427.P15964294413148184343

/-! ## A023427.P6351735687026426315

`A212363(eq[9, A099375(n)])+A000038(n+2)`
-/

namespace A023427.P6351735687026426315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000038 (n + 2)

end

end A023427.P6351735687026426315

/-! ## A023427.P10650953915971774995

`A212363(A055998(n+3)-2)+A000007(n+1)`
-/

namespace A023427.P10650953915971774995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A055998 (n + 3) - 2).toNat + A000007 (n + 1)

end

end A023427.P10650953915971774995

/-!
# A023428: Generalized Catalan Numbers x^4*A(x)^2 -(1-x+x^4+x^5)*A(x) +1 =0.

The programs for A023428, there is no canonical definition to state claims against.
-/

/-! ## A023428.P7943814622085986761

`A118001(A023429(n+1))`
-/

namespace A023428.P7943814622085986761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118001 (A023429 (n + 1)).toNat

end

end A023428.P7943814622085986761

/-! ## A023428.P12443398295777901420

`A166301(A097724(3*n))+A023429(n+1)`
-/

namespace A023428.P12443398295777901420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166301 (A097724 (3 * n)).toNat + A023429 (n + 1)

end

end A023428.P12443398295777901420

/-! ## A023428.P17360032270095030848

`A025466(A023435(2*n+1))+A023430(n+2)`
-/

namespace A023428.P17360032270095030848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A023435 (2 * n + 1)).toNat + A023430 (n + 2)

end

end A023428.P17360032270095030848

/-!
# A023429: Generalized Catalan Numbers x^4*A(x)^2 -(1-x+x^4+x^5+x^6)*A(x) + 1 =0.

The programs for A023429, there is no canonical definition to state claims against.
-/

/-! ## A023429.P5290806795882552417

`A085736(A023430(n+1))`
-/

namespace A023429.P5290806795882552417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A023430 (n + 1)).toNat

end

end A023429.P5290806795882552417

/-! ## A023429.P352175388731844394

`A023430(n+1)+A230533(A023430(n))/8`
-/

namespace A023429.P352175388731844394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023430 (n + 1) : ℚ) + (A230533 (A023430 n).toNat : ℚ) / 8

end

end A023429.P352175388731844394

/-! ## A023429.P6114328448484407712

`A023430(A077168(n))`
-/

namespace A023429.P6114328448484407712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023430 (A077168 n).toNat

end

end A023429.P6114328448484407712

/-! ## A023429.P14932109651612176507

`A023430(A065673(n+1))`
-/

namespace A023429.P14932109651612176507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023430 (A065673 (n + 1)).toNat

end

end A023429.P14932109651612176507

/-! ## A023429.P11216559141555973808

`A368200(A300440(n+1))`
-/

namespace A023429.P11216559141555973808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368200 (A300440 (n + 1)).toNat

end

end A023429.P11216559141555973808

/-!
# A023430: Generalized Catalan Numbers x^4*A(x)^2 -(1-x+x^4+x^5+x^6+x^7)*A(x) + 1 =0.

The programs for A023430, there is no canonical definition to state claims against.
-/

/-! ## A023430.P6508811723556954879

`A005252(∑[A178226(A106803(n))])`
-/

namespace A023430.P6508811723556954879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A106803 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023430.P6508811723556954879

/-! ## A023430.P9401241454372681765

`A005252(∑[A018783(A300546(n+1))])`
-/

namespace A023430.P9401241454372681765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A300546 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023430.P9401241454372681765

/-! ## A023430.P17358048127222984904

`A023429((n-1)%A140639(n+1))`
-/

namespace A023430.P17358048127222984904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023429 (Int.tmod ((n : ℤ) - 1) (A140639 (n + 1))).toNat

end

end A023430.P17358048127222984904

/-! ## A023430.P3036735104300563446

`A023429(abs(A286664(2*n)-(n+1)))`
-/

namespace A023430.P3036735104300563446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023429 |A286664 (2 * n) - (n + 1 : ℤ)|.toNat

end

end A023430.P3036735104300563446

/-!
# A023431: Generalized Catalan Numbers x^3*A(x)^2 + (x-1)*A(x) + 1 =0.

The programs for A023431, there is no canonical definition to state claims against.
-/

/-! ## A023431.P13623616229792692759

`A025246(n+3)`
-/

namespace A023431.P13623616229792692759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025246 (n + 3)

end

end A023431.P13623616229792692759

/-! ## A023431.P1133074930210278155

`∑[A052702(n+1)]+1`
-/

namespace A023431.P1133074930210278155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A023431.P1133074930210278155

/-! ## A023431.P5995836909966540852

`A365694(n+2)+A365694(n)`
-/

namespace A023431.P5995836909966540852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365694 (n + 2) + A365694 n

end

end A023431.P5995836909966540852

/-! ## A023431.P12359603270261436890

`A276066(n²+2)`
-/

namespace A023431.P12359603270261436890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276066 (n ^ 2 + 2)

end

end A023431.P12359603270261436890

/-! ## A023431.P12683438214032539758

`A052743(n+1)/(n+1)!`
-/

namespace A023431.P12683438214032539758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052743 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A023431.P12683438214032539758

/-! ## A023431.P17148810586839262975

`A052743(n+1)/A000142(n+1)`
-/

namespace A023431.P17148810586839262975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052743 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A023431.P17148810586839262975

/-!
# A023432: Number of Dyck n-paths with ascents and descents of length equal to 1 (mod 3).

The programs for A023432, there is no canonical definition to state claims against.
-/

/-! ## A023432.P1476369686664190886

`A212363(∑[n+4]+2)`
-/

namespace A023432.P1476369686664190886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A023432.P1476369686664190886

/-! ## A023432.P920179388274772169

`A212363(A046691(n+2))/gcd(n, n+1)`
-/

namespace A023432.P920179388274772169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212363 (A046691 (n + 2)).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A023432.P920179388274772169

/-! ## A023432.P9853530560799473744

`A212363(A046691(n+2))+A000038(n+2)`
-/

namespace A023432.P9853530560799473744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A046691 (n + 2)).toNat + A000038 (n + 2)

end

end A023432.P9853530560799473744

/-! ## A023432.P13581519135630877916

`A212363(A046691(n+2))^gcd(n, A005408(n))`
-/

namespace A023432.P13581519135630877916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A046691 (n + 2)).toNat ^ Int.gcd (n : ℤ) (A005408 n)

end

end A023432.P13581519135630877916

/-! ## A023432.P2666117088669631606

`A212363(A046691(n+2))*A212363(A000217(n))`
-/

namespace A023432.P2666117088669631606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A046691 (n + 2)).toNat * A212363 (A000217 n).toNat

end

end A023432.P2666117088669631606

/-! ## A023432.P6685988418728927637

`A212363(A167499(n)+A008486(n))%A105082(n)`
-/

namespace A023432.P6685988418728927637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212363 (A167499 n + A008486 n).toNat) (A105082 n)

end

end A023432.P6685988418728927637

/-! ## A023432.P15153318643032851559

`A175860(A008578(n+1))*A212363(A046691(n+2))`
-/

namespace A023432.P15153318643032851559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175860 (A008578 (n + 1)).toNat * A212363 (A046691 (n + 2)).toNat

end

end A023432.P15153318643032851559

/-!
# A023433: Generalized Catalan Numbers x^3*A(x)^2 -(1-x+x^3+x^4)*A(x) + 1 =0.

The programs for A023433, there is no canonical definition to state claims against.
-/

/-! ## A023433.P8749530230730250268

`A002024(floor(A081294(n)/∑[12*n+5])+1)`
-/

namespace A023433.P8749530230730250268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (⌊(A081294 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + 1).toNat

end

end A023433.P8749530230730250268

/-! ## A023433.P14653783434850600058

`A190168(n)-A185284(A001400(n))`
-/

namespace A023433.P14653783434850600058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190168 n - A185284 (A001400 n).toNat

end

end A023433.P14653783434850600058

/-! ## A023433.P5382186323594703283

`A190168(n)-A055641(A283706(n))`
-/

namespace A023433.P5382186323594703283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190168 n - A055641 (A283706 n).toNat

end

end A023433.P5382186323594703283

/-! ## A023433.P16143350941235672150

`A190168(n)-A185284(A007310(n+1))`
-/

namespace A023433.P16143350941235672150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190168 n - A185284 (A007310 (n + 1)).toNat

end

end A023433.P16143350941235672150

/-! ## A023433.P17219149060816357091

`A190168(n)-A230135(A190226(2*n+1))`
-/

namespace A023433.P17219149060816357091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190168 n - A230135 (A190226 (2 * n + 1)).toNat

end

end A023433.P17219149060816357091

/-!
# A023434: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-4).

The programs for A023434, the canonical program `A023434.P18426791889283594592` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023434 has offset 0).

The definition of A023434 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-4)` (program `A023434.P18426791889283594592`, by `A023434.P18426791889283594592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023434.P5909599878959336162

`a(n-2)+a(n-3)+1` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A023434.P5909599878959336162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) + a (n - 3) + 1

end

end A023434.P5909599878959336162

namespace A023434

/-- `a(n-2)+a(n-3)+1` -/
def P5909599878959336162.Spec : Prop :=
  ∀ n, (P5909599878959336162.a n : ℤ) = A023434 n

end A023434

/-! ## A023434.P8909514188475071257

`A000931(n+7)-1`
-/

namespace A023434.P8909514188475071257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 7) - 1

end

end A023434.P8909514188475071257

namespace A023434

/-- `A000931(n+7)-1` -/
def P8909514188475071257.Spec : Prop :=
  ∀ n, P8909514188475071257.a n = A023434 n

end A023434

/-! ## A023434.P18426791889283594592

`a(n-1)+a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023434

/-- `a(n-1)+a(n-2)-a(n-4)` -/
def P18426791889283594592.Spec : Prop :=
  ∀ n, P18426791889283594592.a n = A023434 n

theorem P18426791889283594592.correct : P18426791889283594592.Spec := by
  intro n
  simp only [A023434]

end A023434

/-! ## A023434.P15205300121154986852

`ogf(x/(1-x-x^2+x^4))`
-/

namespace A023434.P15205300121154986852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -1, 0, 1] n

end

end A023434.P15205300121154986852

namespace A023434

/-- `ogf(x/(1-x-x^2+x^4))` -/
def P15205300121154986852.Spec : Prop :=
  ∀ n, P15205300121154986852.a n = A023434 n

end A023434

/-! ## A023434.P6147164457586490301

`∑[a(n-2)+a(n-3)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A023434.P6147164457586490301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023434.P6147164457586490301

namespace A023434

/-- `∑[a(n-2)+a(n-3)]` -/
def P6147164457586490301.Spec : Prop :=
  ∀ n, (P6147164457586490301.a n : ℤ) = A023434 n

end A023434

/-! ## A023434.P8525437692001738589

`floor(a(n-1)-(a(n-4)-a(n-2)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A023434.P8525437692001738589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A023434.P8525437692001738589

namespace A023434

/-- `floor(a(n-1)-(a(n-4)-a(n-2)))` -/
def P8525437692001738589.Spec : Prop :=
  ∀ n, P8525437692001738589.a n = A023434 n

end A023434

/-! ## A023434.P527057208071409381

`∑[a(n-1)-(a(n-4)-a(n-2))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A023434.P527057208071409381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f1 =>
  f1 (n - 1) - (f1 (n - 4) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023434.P527057208071409381

namespace A023434

/-- `∑[a(n-1)-(a(n-4)-a(n-2))]` -/
def P527057208071409381.Spec : Prop :=
  ∀ n, P527057208071409381.a n = A023434 n

end A023434

/-! ## A023434.P2326317651332926491

`∑[A000931(n+2)]`
-/

namespace A023434.P2326317651332926491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023434.P2326317651332926491

namespace A023434

/-- `∑[A000931(n+2)]` -/
def P2326317651332926491.Spec : Prop :=
  ∀ n, P2326317651332926491.a n = A023434 n

end A023434

/-! ## A023434.P9455200881435017010

`∑[A078027(n+4)]`
-/

namespace A023434.P9455200881435017010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023434.P9455200881435017010

namespace A023434

/-- `∑[A078027(n+4)]` -/
def P9455200881435017010.Spec : Prop :=
  ∀ n, P9455200881435017010.a n = A023434 n

end A023434

/-! ## A023434.P5072797689147593956

`∑[A133034(n+6)]`
-/

namespace A023434.P5072797689147593956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023434.P5072797689147593956

namespace A023434

/-- `∑[A133034(n+6)]` -/
def P5072797689147593956.Spec : Prop :=
  ∀ n, P5072797689147593956.a n = A023434 n

end A023434

/-! ## A023434.P13426751049516665526

`A228361(n+2)-1`
-/

namespace A023434.P13426751049516665526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 2) - 1

end

end A023434.P13426751049516665526

namespace A023434

/-- `A228361(n+2)-1` -/
def P13426751049516665526.Spec : Prop :=
  ∀ n, P13426751049516665526.a n = A023434 n

end A023434

/-! ## A023434.P17310803316908389366

`A134816(n+3)-1`
-/

namespace A023434.P17310803316908389366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 3) - 1

end

end A023434.P17310803316908389366

namespace A023434

/-- `A134816(n+3)-1` -/
def P17310803316908389366.Spec : Prop :=
  ∀ n, P17310803316908389366.a n = A023434 n

end A023434

/-! ## A023434.P13029124692324458047

`A182097(n+4)-1`
-/

namespace A023434.P13029124692324458047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 4) - 1

end

end A023434.P13029124692324458047

namespace A023434

/-- `A182097(n+4)-1` -/
def P13029124692324458047.Spec : Prop :=
  ∀ n, P13029124692324458047.a n = A023434 n

end A023434

/-! ## A023434.P5151097533094147939

`A052954(n+4)-2`
-/

namespace A023434.P5151097533094147939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 4) - 2

end

end A023434.P5151097533094147939

namespace A023434

/-- `A052954(n+4)-2` -/
def P5151097533094147939.Spec : Prop :=
  ∀ n, P5151097533094147939.a n = A023434 n

end A023434

/-! ## A023434.P11440964305299518956

`∑[A182097(abs(1-n))]`
-/

namespace A023434.P11440964305299518956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023434.P11440964305299518956

namespace A023434

/-- `∑[A182097(abs(1-n))]` -/
def P11440964305299518956.Spec : Prop :=
  ∀ n, P11440964305299518956.a n = A023434 n

end A023434

/-! ## A023434.P17776939248801446809

`A127682(2*(n+2))-1`
-/

namespace A023434.P17776939248801446809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * (n + 2)) - 1

end

end A023434.P17776939248801446809

namespace A023434

/-- `A127682(2*(n+2))-1` -/
def P17776939248801446809.Spec : Prop :=
  ∀ n, P17776939248801446809.a n = A023434 n

end A023434

/-! ## A023434.P2037631283341769888

`∑[A114775(A042963(n+1))]`
-/

namespace A023434.P2037631283341769888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A042963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023434.P2037631283341769888

namespace A023434

/-- `∑[A114775(A042963(n+1))]` -/
def P2037631283341769888.Spec : Prop :=
  ∀ n, P2037631283341769888.a n = A023434 n

end A023434

/-! ## A023434.P10571260772578066346

`∑[∑[A078027(n)]-A078027(n)]`
-/

namespace A023434.P10571260772578066346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A078027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023434.P10571260772578066346

namespace A023434

/-- `∑[∑[A078027(n)]-A078027(n)]` -/
def P10571260772578066346.Spec : Prop :=
  ∀ n, P10571260772578066346.a n = A023434 n

end A023434

/-! ## A023434.P2854324099718471723

`A078027(A263772(n+1)-1)-1`
-/

namespace A023434.P2854324099718471723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (A263772 (n + 1) - 1).toNat - 1

end

end A023434.P2854324099718471723

namespace A023434

/-- `A078027(A263772(n+1)-1)-1` -/
def P2854324099718471723.Spec : Prop :=
  ∀ n, P2854324099718471723.a n = A023434 n

end A023434

/-! ## A023434.P10352785725317087050

`A164001(A019590(n+1)+n)-1`
-/

namespace A023434.P10352785725317087050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (A019590 (n + 1) + (n : ℤ)).toNat - 1

end

end A023434.P10352785725317087050

namespace A023434

/-- `A164001(A019590(n+1)+n)-1` -/
def P10352785725317087050.Spec : Prop :=
  ∀ n, P10352785725317087050.a n = A023434 n

end A023434

/-!
# A023435: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-5).

The programs for A023435, the canonical program `A023435.P4887292357183999623` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023435 has offset 0).

The definition of A023435 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-5)` (program `A023435.P4887292357183999623`, by `A023435.P4887292357183999623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023435.P4887292357183999623

`a(n-1)+a(n-2)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023435

/-- `a(n-1)+a(n-2)-a(n-5)` -/
def P4887292357183999623.Spec : Prop :=
  ∀ n, P4887292357183999623.a n = A023435 n

theorem P4887292357183999623.correct : P4887292357183999623.Spec := by
  intro n
  simp only [A023435]

end A023435

/-! ## A023435.P6013799344376494326

`(A000930(n+2)+2*A000930(n+3)-A000930(n+4))/3-((-1)^n+3)/6`
-/

namespace A023435.P6013799344376494326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 (n + 2) + 2 * A000930 (n + 3) - A000930 (n + 4) : ℚ) / 3 - ((-1) ^ n + 3 : ℚ) / 6

end

end A023435.P6013799344376494326

namespace A023435

/-- `(A000930(n+2)+2*A000930(n+3)-A000930(n+4))/3-((-1)^n+3)/6` -/
def P6013799344376494326.Spec : Prop :=
  ∀ n, P6013799344376494326.a n = (A023435 n : ℚ)

end A023435

/-! ## A023435.P15009802071951069350

`ogf(x/(1-x-x^2+x^5))`
-/

namespace A023435.P15009802071951069350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -1, 0, 0, 1] n

end

end A023435.P15009802071951069350

namespace A023435

/-- `ogf(x/(1-x-x^2+x^5))` -/
def P15009802071951069350.Spec : Prop :=
  ∀ n, P15009802071951069350.a n = A023435 n

end A023435

/-! ## A023435.P7376144619265546990

`a(n-1)+a(n-3)+n%2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A023435.P7376144619265546990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) + (a (n - 3) + n % 2)

end

end A023435.P7376144619265546990

namespace A023435

/-- `a(n-1)+a(n-3)+n%2` -/
def P7376144619265546990.Spec : Prop :=
  ∀ n, (P7376144619265546990.a n : ℤ) = A023435 n

end A023435

/-! ## A023435.P12871637927995523183

`and(1, n)+a(n-1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A023435.P12871637927995523183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Nat.land 1 n + (a (n - 1) + a (n - 3))

end

end A023435.P12871637927995523183

namespace A023435

/-- `and(1, n)+a(n-1)+a(n-3)` -/
def P12871637927995523183.Spec : Prop :=
  ∀ n, (P12871637927995523183.a n : ℤ) = A023435 n

end A023435

/-! ## A023435.P574120466662128783

`∑[A107458(n+3)]`
-/

namespace A023435.P574120466662128783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023435.P574120466662128783

namespace A023435

/-- `∑[A107458(n+3)]` -/
def P574120466662128783.Spec : Prop :=
  ∀ n, P574120466662128783.a n = A023435 n

end A023435

/-! ## A023435.P9246614353219712466

`∑[A013979(abs(1-n))]`
-/

namespace A023435.P9246614353219712466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023435.P9246614353219712466

namespace A023435

/-- `∑[A013979(abs(1-n))]` -/
def P9246614353219712466.Spec : Prop :=
  ∀ n, P9246614353219712466.a n = A023435 n

end A023435

/-! ## A023435.P16074442480889466525

`A013979(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A023435.P16074442480889466525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A013979 (n - 1) + a (n - 1)

end

end A023435.P16074442480889466525

namespace A023435

/-- `A013979(n-1)+a(n-1)` -/
def P16074442480889466525.Spec : Prop :=
  ∀ n, P16074442480889466525.a n = A023435 n

end A023435

/-! ## A023435.P15977157199708687809

`∑[A277252(n+1)-A078012(n)]`
-/

namespace A023435.P15977157199708687809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277252 (n + 1) - A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023435.P15977157199708687809

namespace A023435

/-- `∑[A277252(n+1)-A078012(n)]` -/
def P15977157199708687809.Spec : Prop :=
  ∀ n, P15977157199708687809.a n = A023435 n

end A023435

/-! ## A023435.P11123744007067405394

`A013979(n+2)-A135528(n+2)`
-/

namespace A023435.P11123744007067405394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 2) - A135528 (n + 2)

end

end A023435.P11123744007067405394

namespace A023435

/-- `A013979(n+2)-A135528(n+2)` -/
def P11123744007067405394.Spec : Prop :=
  ∀ n, P11123744007067405394.a n = A023435 n

end A023435

/-! ## A023435.P13308477543571012839

`A013979(n+2)-A219977(2*n)`
-/

namespace A023435.P13308477543571012839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 2) - A219977 (2 * n)

end

end A023435.P13308477543571012839

namespace A023435

/-- `A013979(n+2)-A219977(2*n)` -/
def P13308477543571012839.Spec : Prop :=
  ∀ n, P13308477543571012839.a n = A023435 n

end A023435

/-! ## A023435.P10160640942343490349

`A219977(2*n+1)+A013979(n+2)`
-/

namespace A023435.P10160640942343490349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (2 * n + 1) + A013979 (n + 2)

end

end A023435.P10160640942343490349

namespace A023435

/-- `A219977(2*n+1)+A013979(n+2)` -/
def P10160640942343490349.Spec : Prop :=
  ∀ n, P10160640942343490349.a n = A023435 n

end A023435

/-! ## A023435.P8621398236794748514

`∑[A013979(n)]-A013979(n)`
-/

namespace A023435.P8621398236794748514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A013979 n

end

end A023435.P8621398236794748514

namespace A023435

/-- `∑[A013979(n)]-A013979(n)` -/
def P8621398236794748514.Spec : Prop :=
  ∀ n, P8621398236794748514.a n = A023435 n

end A023435

/-! ## A023435.P11424398707202463080

`∑[A277253(n)]-A078012(n)`
-/

namespace A023435.P11424398707202463080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078012 n

end

end A023435.P11424398707202463080

namespace A023435

/-- `∑[A277253(n)]-A078012(n)` -/
def P11424398707202463080.Spec : Prop :=
  ∀ n, P11424398707202463080.a n = A023435 n

end A023435

/-! ## A023435.P424010156924642974

`∑[a(n-1)+a(n-3)]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A023435.P424010156924642974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A023435.P424010156924642974

namespace A023435

/-- `∑[a(n-1)+a(n-3)]-a(n-1)` -/
def P424010156924642974.Spec : Prop :=
  ∀ n, P424010156924642974.a n = A023435 n

end A023435

/-! ## A023435.P13726103456515834200

`(A306276(n+3)-1)/2`
-/

namespace A023435.P13726103456515834200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306276 (n + 3) - 1 : ℚ) / 2

end

end A023435.P13726103456515834200

namespace A023435

/-- `(A306276(n+3)-1)/2` -/
def P13726103456515834200.Spec : Prop :=
  ∀ n, P13726103456515834200.a n = (A023435 n : ℚ)

end A023435

/-! ## A023435.P11031847979553714024

`∑[A078012(n+2)]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A023435.P11031847979553714024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A023435.P11031847979553714024

namespace A023435

/-- `∑[A078012(n+2)]-a(n-1)` -/
def P11031847979553714024.Spec : Prop :=
  ∀ n, P11031847979553714024.a n = A023435 n

end A023435

/-! ## A023435.P14482764051852153768

`floor(∑[a(n-1)+a(n-3)]/3)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A023435.P14482764051852153768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A023435.P14482764051852153768

namespace A023435

/-- `floor(∑[a(n-1)+a(n-3)]/3)` -/
def P14482764051852153768.Spec : Prop :=
  ∀ n, P14482764051852153768.a n = A023435 n

end A023435

/-! ## A023435.P17973049791630910852

`A164438(n+4)-A164464(n+4)`
-/

namespace A023435.P17973049791630910852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164438 (n + 4) - A164464 (n + 4)

end

end A023435.P17973049791630910852

namespace A023435

/-- `A164438(n+4)-A164464(n+4)` -/
def P17973049791630910852.Spec : Prop :=
  ∀ n, P17973049791630910852.a n = A023435 n

end A023435

/-!
# A023436: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-6).

The programs for A023436, the canonical program `A023436.P10401392782001071075` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023436 has offset 0).

The definition of A023436 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-6)` (program `A023436.P10401392782001071075`, by `A023436.P10401392782001071075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023436.P10401392782001071075

`a(n-1)+a(n-2)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023436

/-- `a(n-1)+a(n-2)-a(n-6)` -/
def P10401392782001071075.Spec : Prop :=
  ∀ n, P10401392782001071075.a n = A023436 n

theorem P10401392782001071075.correct : P10401392782001071075.Spec := by
  intro n
  simp only [A023436]

end A023436

/-! ## A023436.P9960815611139865112

`∑[A013982(abs(1-n))]`
-/

namespace A023436.P9960815611139865112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013982 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023436.P9960815611139865112

namespace A023436

/-- `∑[A013982(abs(1-n))]` -/
def P9960815611139865112.Spec : Prop :=
  ∀ n, P9960815611139865112.a n = A023436 n

end A023436

/-! ## A023436.P7642390895715248717

`A013982(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A023436.P7642390895715248717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A013982 (n - 1) + a (n - 1)

end

end A023436.P7642390895715248717

namespace A023436

/-- `A013982(n-1)+a(n-1)` -/
def P7642390895715248717.Spec : Prop :=
  ∀ n, P7642390895715248717.a n = A023436 n

end A023436

/-! ## A023436.P508610750924254283

`∑[A013982(n)]-A013982(n)`
-/

namespace A023436.P508610750924254283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A013982 n

end

end A023436.P508610750924254283

namespace A023436

/-- `∑[A013982(n)]-A013982(n)` -/
def P508610750924254283.Spec : Prop :=
  ∀ n, P508610750924254283.a n = A023436 n

end A023436

/-! ## A023436.P14377973714429426954

`floor(A109544(n+4)/3)`
-/

namespace A023436.P14377973714429426954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109544 (n + 4) : ℚ) / 3⌋

end

end A023436.P14377973714429426954

namespace A023436

/-- `floor(A109544(n+4)/3)` -/
def P14377973714429426954.Spec : Prop :=
  ∀ n, P14377973714429426954.a n = A023436 n

end A023436

/-! ## A023436.P11845188559963248556

`∑[A072465(n)-Δ[A109544(n+4)]/3]`
-/

namespace A023436.P11845188559963248556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109544 (n + 4)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072465 n : ℚ) - (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023436.P11845188559963248556

namespace A023436

/-- `∑[A072465(n)-Δ[A109544(n+4)]/3]` -/
def P11845188559963248556.Spec : Prop :=
  ∀ n, P11845188559963248556.a n = (A023436 n : ℚ)

end A023436

/-!
# A023437: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-7).

The programs for A023437, the canonical program `A023437.P4556688272748515696` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023437 has offset 0).

The definition of A023437 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-7)` (program `A023437.P4556688272748515696`, by `A023437.P4556688272748515696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023437.P4556688272748515696

`a(n-1)+a(n-2)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023437

/-- `a(n-1)+a(n-2)-a(n-7)` -/
def P4556688272748515696.Spec : Prop :=
  ∀ n, P4556688272748515696.a n = A023437 n

theorem P4556688272748515696.correct : P4556688272748515696.Spec := by
  intro n
  simp only [A023437]

end A023437

/-! ## A023437.P13121612072722072145

`∑[A013983(abs(1-n))]`
-/

namespace A023437.P13121612072722072145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013983 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023437.P13121612072722072145

namespace A023437

/-- `∑[A013983(abs(1-n))]` -/
def P13121612072722072145.Spec : Prop :=
  ∀ n, P13121612072722072145.a n = A023437 n

end A023437

/-! ## A023437.P1493423644802954624

`A013983(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A023437.P1493423644802954624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A013983 (n - 1) + a (n - 1)

end

end A023437.P1493423644802954624

namespace A023437

/-- `A013983(n-1)+a(n-1)` -/
def P1493423644802954624.Spec : Prop :=
  ∀ n, P1493423644802954624.a n = A023437 n

end A023437

/-! ## A023437.P15799302590752930576

`∑[A060961(n-1)-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A023437.P15799302590752930576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A060961 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023437.P15799302590752930576

namespace A023437

/-- `∑[A060961(n-1)-a(n-1)]` -/
def P15799302590752930576.Spec : Prop :=
  ∀ n, P15799302590752930576.a n = A023437 n

end A023437

/-! ## A023437.P6291515794770223575

`∑[A060961(n)-abs(∑[A033999(n)*A060961(n)])]`
-/

namespace A023437.P6291515794770223575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A060961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 n - |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023437.P6291515794770223575

namespace A023437

/-- `∑[A060961(n)-abs(∑[A033999(n)*A060961(n)])]` -/
def P6291515794770223575.Spec : Prop :=
  ∀ n, P6291515794770223575.a n = A023437 n

end A023437

/-! ## A023437.P16276886169937771316

`∑[A013983(n)]-A013983(n)`
-/

namespace A023437.P16276886169937771316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A013983 n

end

end A023437.P16276886169937771316

namespace A023437

/-- `∑[A013983(n)]-A013983(n)` -/
def P16276886169937771316.Spec : Prop :=
  ∀ n, P16276886169937771316.a n = A023437 n

end A023437

/-!
# A023438: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-8).

The programs for A023438, the canonical program `A023438.P12004482492767892343` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023438 has offset 0).

The definition of A023438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-8)` (program `A023438.P12004482492767892343`, by `A023438.P12004482492767892343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023438.P12004482492767892343

`a(n-1)+a(n-2)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8, a(7)=13`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023438

/-- `a(n-1)+a(n-2)-a(n-8)` -/
def P12004482492767892343.Spec : Prop :=
  ∀ n, P12004482492767892343.a n = A023438 n

theorem P12004482492767892343.correct : P12004482492767892343.Spec := by
  intro n
  simp only [A023438]

end A023438

/-! ## A023438.P7172670355498104385

`∑[A013984(abs(1-n))]`
-/

namespace A023438.P7172670355498104385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013984 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023438.P7172670355498104385

namespace A023438

/-- `∑[A013984(abs(1-n))]` -/
def P7172670355498104385.Spec : Prop :=
  ∀ n, P7172670355498104385.a n = A023438 n

end A023438

/-! ## A023438.P6817327271177014345

`A013984(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A023438.P6817327271177014345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A013984 (n - 1) + a (n - 1)

end

end A023438.P6817327271177014345

namespace A023438

/-- `A013984(n-1)+a(n-1)` -/
def P6817327271177014345.Spec : Prop :=
  ∀ n, P6817327271177014345.a n = A023438 n

end A023438

/-! ## A023438.P5212382350904385773

`∑[A107479(n-2-a(2%n))]` with `a(0)=0, a(1)=1`
-/

namespace A023438.P5212382350904385773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A107479 ((n : ℤ) - 2 - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023438.P5212382350904385773

namespace A023438

/-- `∑[A107479(n-2-a(2%n))]` -/
def P5212382350904385773.Spec : Prop :=
  ∀ n, P5212382350904385773.a n = A023438 n

end A023438

/-! ## A023438.P4280140023906828993

`∑[A013984(n)]-A013984(n)`
-/

namespace A023438.P4280140023906828993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A013984 n

end

end A023438.P4280140023906828993

namespace A023438

/-- `∑[A013984(n)]-A013984(n)` -/
def P4280140023906828993.Spec : Prop :=
  ∀ n, P4280140023906828993.a n = A023438 n

end A023438

/-! ## A023438.P10205947000627591740

`∑[A107479(abs(1-n))]-A107479(abs(1-n))`
-/

namespace A023438.P10205947000627591740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107479 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A107479 |1 - (n : ℤ)|.toNat

end

end A023438.P10205947000627591740

namespace A023438

/-- `∑[A107479(abs(1-n))]-A107479(abs(1-n))` -/
def P10205947000627591740.Spec : Prop :=
  ∀ n, P10205947000627591740.a n = A023438 n

end A023438

/-!
# A023439: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-9).

The programs for A023439, the canonical program `A023439.P17073879449613270126` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023439 has offset 0).

The definition of A023439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-9)` (program `A023439.P17073879449613270126`, by `A023439.P17073879449613270126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023439.P17073879449613270126

`a(n-1)+a(n-2)-a(n-9)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8, a(7)=13, a(8)=21`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023439

/-- `a(n-1)+a(n-2)-a(n-9)` -/
def P17073879449613270126.Spec : Prop :=
  ∀ n, P17073879449613270126.a n = A023439 n

theorem P17073879449613270126.correct : P17073879449613270126.Spec := by
  intro n
  simp only [A023439]

end A023439

/-! ## A023439.P11844918973099094965

`∑[A013985(abs(1-n))]`
-/

namespace A023439.P11844918973099094965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013985 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023439.P11844918973099094965

namespace A023439

/-- `∑[A013985(abs(1-n))]` -/
def P11844918973099094965.Spec : Prop :=
  ∀ n, P11844918973099094965.a n = A023439 n

end A023439

/-! ## A023439.P4128389404802837298

`A013985(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A023439.P4128389404802837298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A013985 (n - 1) + a (n - 1)

end

end A023439.P4128389404802837298

namespace A023439

/-- `A013985(n-1)+a(n-1)` -/
def P4128389404802837298.Spec : Prop :=
  ∀ n, P4128389404802837298.a n = A023439 n

end A023439

/-! ## A023439.P13050796898569594162

`A117760(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A023439.P13050796898569594162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A117760 (n - 1) + a (n - 2)

end

end A023439.P13050796898569594162

namespace A023439

/-- `A117760(n-1)+a(n-2)` -/
def P13050796898569594162.Spec : Prop :=
  ∀ n, P13050796898569594162.a n = A023439 n

end A023439

/-! ## A023439.P13634446562792741176

`A013985(n-1)-(C(A028310(n)-n, 2)-a(n-1))` with `a(0)=0`
-/

namespace A023439.P13634446562792741176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A013985 (n - 1) - ((Nat.choose (A028310 n - (n : ℤ)).toNat 2 : ℤ) - a (n - 1))

end

end A023439.P13634446562792741176

namespace A023439

/-- `A013985(n-1)-(C(A028310(n)-n, 2)-a(n-1))` -/
def P13634446562792741176.Spec : Prop :=
  ∀ n, P13634446562792741176.a n = A023439 n

end A023439

/-! ## A023439.P336163947216474900

`∑[A013985(n)]-A013985(n)`
-/

namespace A023439.P336163947216474900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A013985 n

end

end A023439.P336163947216474900

namespace A023439

/-- `∑[A013985(n)]-A013985(n)` -/
def P336163947216474900.Spec : Prop :=
  ∀ n, P336163947216474900.a n = A023439 n

end A023439

/-!
# A023440: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-10).

The programs for A023440, the canonical program `A023440.P7238407367384374586` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023440 has offset 0).

The definition of A023440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-10)` (program `A023440.P7238407367384374586`, by `A023440.P7238407367384374586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023440.P7238407367384374586

`a(n-1)+a(n-2)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8, a(7)=13, a(8)=21, a(9)=34`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023440

/-- `a(n-1)+a(n-2)-a(n-10)` -/
def P7238407367384374586.Spec : Prop :=
  ∀ n, P7238407367384374586.a n = A023440 n

theorem P7238407367384374586.correct : P7238407367384374586.Spec := by
  intro n
  simp only [A023440]

end A023440

/-! ## A023440.P8942626367957466519

`∑[A013986(abs(1-n))]`
-/

namespace A023440.P8942626367957466519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013986 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023440.P8942626367957466519

namespace A023440

/-- `∑[A013986(abs(1-n))]` -/
def P8942626367957466519.Spec : Prop :=
  ∀ n, P8942626367957466519.a n = A023440 n

end A023440

/-! ## A023440.P6465335366063512158

`A013986(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A023440.P6465335366063512158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A013986 (n - 1) + a (n - 1)

end

end A023440.P6465335366063512158

namespace A023440

/-- `A013986(n-1)+a(n-1)` -/
def P6465335366063512158.Spec : Prop :=
  ∀ n, P6465335366063512158.a n = A023440 n

end A023440

/-! ## A023440.P11173488761613507073

`∑[A013986(n)]-A013986(n)`
-/

namespace A023440.P11173488761613507073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A013986 n

end

end A023440.P11173488761613507073

namespace A023440

/-- `∑[A013986(n)]-A013986(n)` -/
def P11173488761613507073.Spec : Prop :=
  ∀ n, P11173488761613507073.a n = A023440 n

end A023440

/-! ## A023440.P7937700959944231823

`A000045(n)-A374741(A036600(n))`
-/

namespace A023440.P7937700959944231823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A374741 (A036600 n).toNat

end

end A023440.P7937700959944231823

namespace A023440

/-- `A000045(n)-A374741(A036600(n))` -/
def P7937700959944231823.Spec : Prop :=
  ∀ n, P7937700959944231823.a n = A023440 n

end A023440

/-!
# A023441: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-11).

The programs for A023441, the canonical program `A023441.P17268161528577507209` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023441 has offset 0).

The definition of A023441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023441.P17268161528577507209

`∑[A013987(abs(1-n))]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023441

/-- `∑[A013987(abs(1-n))]` -/
def P17268161528577507209.Spec : Prop :=
  ∀ n, P17268161528577507209.a n = A023441 n

theorem P17268161528577507209.correct : P17268161528577507209.Spec := by
  intro n
  simp only [A023441]

end A023441

/-! ## A023441.P595171995845320702

`A013987(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A023441.P595171995845320702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A013987 (n - 1) + a (n - 1)

end

end A023441.P595171995845320702

namespace A023441

/-- `A013987(n-1)+a(n-1)` -/
def P595171995845320702.Spec : Prop :=
  ∀ n, P595171995845320702.a n = A023441 n

end A023441

/-! ## A023441.P10095475499884157141

`∑[A013987(n)]-A013987(n)`
-/

namespace A023441.P10095475499884157141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A013987 n

end

end A023441.P10095475499884157141

namespace A023441

/-- `∑[A013987(n)]-A013987(n)` -/
def P10095475499884157141.Spec : Prop :=
  ∀ n, P10095475499884157141.a n = A023441 n

end A023441

/-! ## A023441.P4082418474005401720

`A000045(n)-A374684(A006927(n))`
-/

namespace A023441.P4082418474005401720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A374684 (A006927 n).toNat

end

end A023441.P4082418474005401720

namespace A023441

/-- `A000045(n)-A374684(A006927(n))` -/
def P4082418474005401720.Spec : Prop :=
  ∀ n, P4082418474005401720.a n = A023441 n

end A023441

/-! ## A023441.P2561925693081046127

`A000045(n)-A124757(A376934(n+1))`
-/

namespace A023441.P2561925693081046127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A124757 (A376934 (n + 1)).toNat

end

end A023441.P2561925693081046127

namespace A023441

/-- `A000045(n)-A124757(A376934(n+1))` -/
def P2561925693081046127.Spec : Prop :=
  ∀ n, P2561925693081046127.a n = A023441 n

end A023441

/-!
# A023442: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-12).

The programs for A023442, there is no canonical definition to state claims against.
-/

/-! ## A023442.P9464851468518151269

`A000044(n)-A000290(A028240(n))`
-/

namespace A023442.P9464851468518151269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000044 n - A000290 (A028240 n).toNat

end

end A023442.P9464851468518151269

/-! ## A023442.P4256322395065874250

`A000045(n)-A083896(A011782(n))`
-/

namespace A023442.P4256322395065874250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A083896 (A011782 n).toNat

end

end A023442.P4256322395065874250

/-! ## A023442.P12341909132209278608

`A000045(n)-A086075(A072642(n))`
-/

namespace A023442.P12341909132209278608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A086075 (A072642 n).toNat

end

end A023442.P12341909132209278608

/-! ## A023442.P4464898444150191249

`A000045(n)-A362423(A014375(n))`
-/

namespace A023442.P4464898444150191249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A362423 (A014375 n).toNat

end

end A023442.P4464898444150191249

/-! ## A023442.P13092217137571104680

`A000044(n)%A231901(A001350(n))`
-/

namespace A023442.P13092217137571104680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000044 n) (A231901 (A001350 n).toNat)

end

end A023442.P13092217137571104680

/-!
# A023443: a(n) = n - 1.

The programs for A023443, the canonical program `A023443.P2966051066474347068` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023443 has offset 0).

The definition of A023443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-1` (program `A023443.P2966051066474347068`, by `A023443.P2966051066474347068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023443.P2966051066474347068

`n-1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023443

/-- `n-1` -/
def P2966051066474347068.Spec : Prop :=
  ∀ n, P2966051066474347068.a n = A023443 n

theorem P2966051066474347068.correct : P2966051066474347068.Spec := by
  intro n
  simp only [A023443]

end A023443

/-!
# A023444: a(n) = n-2.

The programs for A023444, the canonical program `A023444.P8712163668128210297` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023444 has offset 0).

The definition of A023444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-2` (program `A023444.P8712163668128210297`, by `A023444.P8712163668128210297.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023444.P8712163668128210297

`n-2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023444

/-- `n-2` -/
def P8712163668128210297.Spec : Prop :=
  ∀ n, P8712163668128210297.a n = A023444 n

theorem P8712163668128210297.correct : P8712163668128210297.Spec := by
  intro n
  simp only [A023444]

end A023444

/-!
# A023445: a(n) = n-3.

The programs for A023445, the canonical program `A023445.P17030645253662401943` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023445 has offset 0).

The definition of A023445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-3` (program `A023445.P17030645253662401943`, by `A023445.P17030645253662401943.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023445.P17030645253662401943

`n-3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023445

/-- `n-3` -/
def P17030645253662401943.Spec : Prop :=
  ∀ n, P17030645253662401943.a n = A023445 n

theorem P17030645253662401943.correct : P17030645253662401943.Spec := by
  intro n
  simp only [A023445]

end A023445

/-!
# A023446: a(n) = n-4.

The programs for A023446, the canonical program `A023446.P16124919383851026186` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023446 has offset 0).

The definition of A023446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-4` (program `A023446.P16124919383851026186`, by `A023446.P16124919383851026186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023446.P16124919383851026186

`n-4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023446

/-- `n-4` -/
def P16124919383851026186.Spec : Prop :=
  ∀ n, P16124919383851026186.a n = A023446 n

theorem P16124919383851026186.correct : P16124919383851026186.Spec := by
  intro n
  simp only [A023446]

end A023446

/-!
# A023447: a(n) = n-5.

The programs for A023447, the canonical program `A023447.P1511845102663344607` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023447 has offset 0).

The definition of A023447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-5` (program `A023447.P1511845102663344607`, by `A023447.P1511845102663344607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023447.P1511845102663344607

`n-5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023447

/-- `n-5` -/
def P1511845102663344607.Spec : Prop :=
  ∀ n, P1511845102663344607.a n = A023447 n

theorem P1511845102663344607.correct : P1511845102663344607.Spec := by
  intro n
  simp only [A023447]

end A023447

/-!
# A023448: a(n) = n-6.

The programs for A023448, the canonical program `A023448.P4394137644875426517` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023448 has offset 0).

The definition of A023448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-6` (program `A023448.P4394137644875426517`, by `A023448.P4394137644875426517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023448.P4394137644875426517

`n-6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023448

/-- `n-6` -/
def P4394137644875426517.Spec : Prop :=
  ∀ n, P4394137644875426517.a n = A023448 n

theorem P4394137644875426517.correct : P4394137644875426517.Spec := by
  intro n
  simp only [A023448]

end A023448

/-!
# A023449: a(n) = n-7.

The programs for A023449, the canonical program `A023449.P632329531483881473` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023449 has offset 0).

The definition of A023449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-7` (program `A023449.P632329531483881473`, by `A023449.P632329531483881473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023449.P632329531483881473

`n-7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023449

/-- `n-7` -/
def P632329531483881473.Spec : Prop :=
  ∀ n, P632329531483881473.a n = A023449 n

theorem P632329531483881473.correct : P632329531483881473.Spec := by
  intro n
  simp only [A023449]

end A023449

/-!
# A023450: a(n) = n-8.

The programs for A023450, the canonical program `A023450.P2225491518700593129` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023450 has offset 0).

The definition of A023450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-8` (program `A023450.P2225491518700593129`, by `A023450.P2225491518700593129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023450.P2225491518700593129

`n-8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023450

/-- `n-8` -/
def P2225491518700593129.Spec : Prop :=
  ∀ n, P2225491518700593129.a n = A023450 n

theorem P2225491518700593129.correct : P2225491518700593129.Spec := by
  intro n
  simp only [A023450]

end A023450

/-!
# A023451: a(n) = n-9.

The programs for A023451, the canonical program `A023451.P10918551651332973129` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023451 has offset 0).

The definition of A023451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-9` (program `A023451.P10918551651332973129`, by `A023451.P10918551651332973129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023451.P10918551651332973129

`n-9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023451

/-- `n-9` -/
def P10918551651332973129.Spec : Prop :=
  ∀ n, P10918551651332973129.a n = A023451 n

theorem P10918551651332973129.correct : P10918551651332973129.Spec := by
  intro n
  simp only [A023451]

end A023451

/-!
# A023452: a(n) = n-10.

The programs for A023452, the canonical program `A023452.P3824057514643465905` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023452 has offset 0).

The definition of A023452 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-10` (program `A023452.P3824057514643465905`, by `A023452.P3824057514643465905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023452.P3824057514643465905

`n-10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023452

/-- `n-10` -/
def P3824057514643465905.Spec : Prop :=
  ∀ n, P3824057514643465905.a n = A023452 n

theorem P3824057514643465905.correct : P3824057514643465905.Spec := by
  intro n
  simp only [A023452]

end A023452

/-!
# A023453: a(n) = n-11.

The programs for A023453, the canonical program `A023453.P6399622911449397509` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023453 has offset 0).

The definition of A023453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-11` (program `A023453.P6399622911449397509`, by `A023453.P6399622911449397509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023453.P6399622911449397509

`n-11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023453

/-- `n-11` -/
def P6399622911449397509.Spec : Prop :=
  ∀ n, P6399622911449397509.a n = A023453 n

theorem P6399622911449397509.correct : P6399622911449397509.Spec := by
  intro n
  simp only [A023453]

end A023453

/-!
# A023454: a(n) = n - 12.

The programs for A023454, the canonical program `A023454.P17847968958104591799` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023454 has offset 0).

The definition of A023454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-12` (program `A023454.P17847968958104591799`, by `A023454.P17847968958104591799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023454.P17847968958104591799

`n-12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023454

/-- `n-12` -/
def P17847968958104591799.Spec : Prop :=
  ∀ n, P17847968958104591799.a n = A023454 n

theorem P17847968958104591799.correct : P17847968958104591799.Spec := by
  intro n
  simp only [A023454]

end A023454

/-!
# A023455: a(n) = n - 13.

The programs for A023455, the canonical program `A023455.P8476404562613874856` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023455 has offset 0).

The definition of A023455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-13` (program `A023455.P8476404562613874856`, by `A023455.P8476404562613874856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023455.P8476404562613874856

`n-13`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023455

/-- `n-13` -/
def P8476404562613874856.Spec : Prop :=
  ∀ n, P8476404562613874856.a n = A023455 n

theorem P8476404562613874856.correct : P8476404562613874856.Spec := by
  intro n
  simp only [A023455]

end A023455

/-!
# A023456: a(n) = n - 14.

The programs for A023456, the canonical program `A023456.P222171751024684870` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023456 has offset 0).

The definition of A023456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-14` (program `A023456.P222171751024684870`, by `A023456.P222171751024684870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023456.P222171751024684870

`n-14`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023456

/-- `n-14` -/
def P222171751024684870.Spec : Prop :=
  ∀ n, P222171751024684870.a n = A023456 n

theorem P222171751024684870.correct : P222171751024684870.Spec := by
  intro n
  simp only [A023456]

end A023456

/-!
# A023457: a(n) = n-15.

The programs for A023457, the canonical program `A023457.P863186941795494776` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023457 has offset 0).

The definition of A023457 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-15` (program `A023457.P863186941795494776`, by `A023457.P863186941795494776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023457.P863186941795494776

`n-15`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023457

/-- `n-15` -/
def P863186941795494776.Spec : Prop :=
  ∀ n, P863186941795494776.a n = A023457 n

theorem P863186941795494776.correct : P863186941795494776.Spec := by
  intro n
  simp only [A023457]

end A023457

/-!
# A023458: a(n) = n-16.

The programs for A023458, the canonical program `A023458.P2390337497007185691` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023458 has offset 0).

The definition of A023458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-16` (program `A023458.P2390337497007185691`, by `A023458.P2390337497007185691.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023458.P2390337497007185691

`n-16`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023458

/-- `n-16` -/
def P2390337497007185691.Spec : Prop :=
  ∀ n, P2390337497007185691.a n = A023458 n

theorem P2390337497007185691.correct : P2390337497007185691.Spec := by
  intro n
  simp only [A023458]

end A023458

/-!
# A023459: a(n) = n-17.

The programs for A023459, the canonical program `A023459.P3467275396401403854` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023459 has offset 0).

The definition of A023459 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-17` (program `A023459.P3467275396401403854`, by `A023459.P3467275396401403854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023459.P3467275396401403854

`n-17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023459

/-- `n-17` -/
def P3467275396401403854.Spec : Prop :=
  ∀ n, P3467275396401403854.a n = A023459 n

theorem P3467275396401403854.correct : P3467275396401403854.Spec := by
  intro n
  simp only [A023459]

end A023459

/-!
# A023460: a(n) = n-18.

The programs for A023460, the canonical program `A023460.P6081665032794811057` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023460 has offset 0).

The definition of A023460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-18` (program `A023460.P6081665032794811057`, by `A023460.P6081665032794811057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023460.P6081665032794811057

`n-18`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023460

/-- `n-18` -/
def P6081665032794811057.Spec : Prop :=
  ∀ n, P6081665032794811057.a n = A023460 n

theorem P6081665032794811057.correct : P6081665032794811057.Spec := by
  intro n
  simp only [A023460]

end A023460

/-!
# A023461: a(n) = n-19.

The programs for A023461, the canonical program `A023461.P1701024439936542546` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023461 has offset 0).

The definition of A023461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-19` (program `A023461.P1701024439936542546`, by `A023461.P1701024439936542546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023461.P1701024439936542546

`n-19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023461

/-- `n-19` -/
def P1701024439936542546.Spec : Prop :=
  ∀ n, P1701024439936542546.a n = A023461 n

theorem P1701024439936542546.correct : P1701024439936542546.Spec := by
  intro n
  simp only [A023461]

end A023461

/-!
# A023462: a(n) = n-20.

The programs for A023462, the canonical program `A023462.P15873733340913758828` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023462 has offset 0).

The definition of A023462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-20` (program `A023462.P15873733340913758828`, by `A023462.P15873733340913758828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023462.P15873733340913758828

`n-20`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023462

/-- `n-20` -/
def P15873733340913758828.Spec : Prop :=
  ∀ n, P15873733340913758828.a n = A023462 n

theorem P15873733340913758828.correct : P15873733340913758828.Spec := by
  intro n
  simp only [A023462]

end A023462

/-!
# A023463: a(n) = n-21.

The programs for A023463, the canonical program `A023463.P13340327421806470167` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023463 has offset 0).

The definition of A023463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-21` (program `A023463.P13340327421806470167`, by `A023463.P13340327421806470167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023463.P13340327421806470167

`n-21`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023463

/-- `n-21` -/
def P13340327421806470167.Spec : Prop :=
  ∀ n, P13340327421806470167.a n = A023463 n

theorem P13340327421806470167.correct : P13340327421806470167.Spec := by
  intro n
  simp only [A023463]

end A023463

/-!
# A023464: a(n) = n-22.

The programs for A023464, the canonical program `A023464.P13346798337513209447` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023464 has offset 0).

The definition of A023464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-22` (program `A023464.P13346798337513209447`, by `A023464.P13346798337513209447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023464.P13346798337513209447

`n-22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023464

/-- `n-22` -/
def P13346798337513209447.Spec : Prop :=
  ∀ n, P13346798337513209447.a n = A023464 n

theorem P13346798337513209447.correct : P13346798337513209447.Spec := by
  intro n
  simp only [A023464]

end A023464

/-!
# A023465: a(n) = n-23.

The programs for A023465, the canonical program `A023465.P15573522710299522326` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023465 has offset 0).

The definition of A023465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-23` (program `A023465.P15573522710299522326`, by `A023465.P15573522710299522326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023465.P15573522710299522326

`n-23`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023465

/-- `n-23` -/
def P15573522710299522326.Spec : Prop :=
  ∀ n, P15573522710299522326.a n = A023465 n

theorem P15573522710299522326.correct : P15573522710299522326.Spec := by
  intro n
  simp only [A023465]

end A023465

/-!
# A023466: a(n) = n - 24.

The programs for A023466, the canonical program `A023466.P15635143131224760971` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023466 has offset 0).

The definition of A023466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-24` (program `A023466.P15635143131224760971`, by `A023466.P15635143131224760971.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023466.P15635143131224760971

`n-24`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023466

/-- `n-24` -/
def P15635143131224760971.Spec : Prop :=
  ∀ n, P15635143131224760971.a n = A023466 n

theorem P15635143131224760971.correct : P15635143131224760971.Spec := by
  intro n
  simp only [A023466]

end A023466

/-!
# A023467: a(n) = n-25.

The programs for A023467, the canonical program `A023467.P16378063099040043376` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023467 has offset 0).

The definition of A023467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-25` (program `A023467.P16378063099040043376`, by `A023467.P16378063099040043376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023467.P16378063099040043376

`n-25`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023467

/-- `n-25` -/
def P16378063099040043376.Spec : Prop :=
  ∀ n, P16378063099040043376.a n = A023467 n

theorem P16378063099040043376.correct : P16378063099040043376.Spec := by
  intro n
  simp only [A023467]

end A023467

/-!
# A023468: a(n) = n-26.

The programs for A023468, the canonical program `A023468.P6083773450565060551` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023468 has offset 0).

The definition of A023468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-26` (program `A023468.P6083773450565060551`, by `A023468.P6083773450565060551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023468.P6083773450565060551

`n-26`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023468

/-- `n-26` -/
def P6083773450565060551.Spec : Prop :=
  ∀ n, P6083773450565060551.a n = A023468 n

theorem P6083773450565060551.correct : P6083773450565060551.Spec := by
  intro n
  simp only [A023468]

end A023468

/-!
# A023469: a(n) = n-27.

The programs for A023469, the canonical program `A023469.P16623533803023051570` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023469 has offset 0).

The definition of A023469 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-27` (program `A023469.P16623533803023051570`, by `A023469.P16623533803023051570.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023469.P16623533803023051570

`n-27`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023469

/-- `n-27` -/
def P16623533803023051570.Spec : Prop :=
  ∀ n, P16623533803023051570.a n = A023469 n

theorem P16623533803023051570.correct : P16623533803023051570.Spec := by
  intro n
  simp only [A023469]

end A023469

/-!
# A023470: a(n) = n-28.

The programs for A023470, the canonical program `A023470.P6056020075891729902` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023470 has offset 0).

The definition of A023470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-28` (program `A023470.P6056020075891729902`, by `A023470.P6056020075891729902.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023470.P6056020075891729902

`n-28`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023470

/-- `n-28` -/
def P6056020075891729902.Spec : Prop :=
  ∀ n, P6056020075891729902.a n = A023470 n

theorem P6056020075891729902.correct : P6056020075891729902.Spec := by
  intro n
  simp only [A023470]

end A023470

/-!
# A023471: a(n) = n-29.

The programs for A023471, the canonical program `A023471.P9970346476799130473` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023471 has offset 0).

The definition of A023471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-29` (program `A023471.P9970346476799130473`, by `A023471.P9970346476799130473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023471.P9970346476799130473

`n-29`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023471

/-- `n-29` -/
def P9970346476799130473.Spec : Prop :=
  ∀ n, P9970346476799130473.a n = A023471 n

theorem P9970346476799130473.correct : P9970346476799130473.Spec := by
  intro n
  simp only [A023471]

end A023471

/-!
# A023472: a(n) = n - 30.

The programs for A023472, the canonical program `A023472.P7905059235647750017` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023472 has offset 0).

The definition of A023472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-30` (program `A023472.P7905059235647750017`, by `A023472.P7905059235647750017.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023472.P7905059235647750017

`n-30`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023472

/-- `n-30` -/
def P7905059235647750017.Spec : Prop :=
  ∀ n, P7905059235647750017.a n = A023472 n

theorem P7905059235647750017.correct : P7905059235647750017.Spec := by
  intro n
  simp only [A023472]

end A023472

/-!
# A023473: a(n) = n-31.

The programs for A023473, the canonical program `A023473.P5324242782236802804` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023473 has offset 0).

The definition of A023473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-31` (program `A023473.P5324242782236802804`, by `A023473.P5324242782236802804.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023473.P5324242782236802804

`n-31`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023473

/-- `n-31` -/
def P5324242782236802804.Spec : Prop :=
  ∀ n, P5324242782236802804.a n = A023473 n

theorem P5324242782236802804.correct : P5324242782236802804.Spec := by
  intro n
  simp only [A023473]

end A023473

/-!
# A023474: a(n) = n-32.

The programs for A023474, the canonical program `A023474.P12853618900781979249` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023474 has offset 0).

The definition of A023474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-32` (program `A023474.P12853618900781979249`, by `A023474.P12853618900781979249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023474.P12853618900781979249

`n-32`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023474

/-- `n-32` -/
def P12853618900781979249.Spec : Prop :=
  ∀ n, P12853618900781979249.a n = A023474 n

theorem P12853618900781979249.correct : P12853618900781979249.Spec := by
  intro n
  simp only [A023474]

end A023474

/-!
# A023475: a(n) = n-33.

The programs for A023475, the canonical program `A023475.P7363115203595806616` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023475 has offset 0).

The definition of A023475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-33` (program `A023475.P7363115203595806616`, by `A023475.P7363115203595806616.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023475.P7363115203595806616

`n-33`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023475

/-- `n-33` -/
def P7363115203595806616.Spec : Prop :=
  ∀ n, P7363115203595806616.a n = A023475 n

theorem P7363115203595806616.correct : P7363115203595806616.Spec := by
  intro n
  simp only [A023475]

end A023475

/-!
# A023476: a(n) = n-34.

The programs for A023476, the canonical program `A023476.P1868753708794674298` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023476 has offset 0).

The definition of A023476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-34` (program `A023476.P1868753708794674298`, by `A023476.P1868753708794674298.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023476.P1868753708794674298

`n-34`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023476

/-- `n-34` -/
def P1868753708794674298.Spec : Prop :=
  ∀ n, P1868753708794674298.a n = A023476 n

theorem P1868753708794674298.correct : P1868753708794674298.Spec := by
  intro n
  simp only [A023476]

end A023476

/-!
# A023477: a(n) = n-35.

The programs for A023477, the canonical program `A023477.P11107403362716646898` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023477 has offset 0).

The definition of A023477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-35` (program `A023477.P11107403362716646898`, by `A023477.P11107403362716646898.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023477.P11107403362716646898

`n-35`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023477

/-- `n-35` -/
def P11107403362716646898.Spec : Prop :=
  ∀ n, P11107403362716646898.a n = A023477 n

theorem P11107403362716646898.correct : P11107403362716646898.Spec := by
  intro n
  simp only [A023477]

end A023477

/-!
# A023478: a(n) = n-36.

The programs for A023478, the canonical program `A023478.P13335276018786921324` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023478 has offset 0).

The definition of A023478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-36` (program `A023478.P13335276018786921324`, by `A023478.P13335276018786921324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023478.P13335276018786921324

`n-36`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023478

/-- `n-36` -/
def P13335276018786921324.Spec : Prop :=
  ∀ n, P13335276018786921324.a n = A023478 n

theorem P13335276018786921324.correct : P13335276018786921324.Spec := by
  intro n
  simp only [A023478]

end A023478

/-!
# A023479: a(n) = n-37.

The programs for A023479, the canonical program `A023479.P6128352249614289451` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023479 has offset 0).

The definition of A023479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-37` (program `A023479.P6128352249614289451`, by `A023479.P6128352249614289451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023479.P6128352249614289451

`n-37`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023479

/-- `n-37` -/
def P6128352249614289451.Spec : Prop :=
  ∀ n, P6128352249614289451.a n = A023479 n

theorem P6128352249614289451.correct : P6128352249614289451.Spec := by
  intro n
  simp only [A023479]

end A023479

/-!
# A023480: a(n) = n-38.

The programs for A023480, the canonical program `A023480.P15874114386161469736` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023480 has offset 0).

The definition of A023480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-38` (program `A023480.P15874114386161469736`, by `A023480.P15874114386161469736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023480.P15874114386161469736

`n-38`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023480

/-- `n-38` -/
def P15874114386161469736.Spec : Prop :=
  ∀ n, P15874114386161469736.a n = A023480 n

theorem P15874114386161469736.correct : P15874114386161469736.Spec := by
  intro n
  simp only [A023480]

end A023480

/-!
# A023481: a(n) = n-39.

The programs for A023481, the canonical program `A023481.P8149254853506171742` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023481 has offset 0).

The definition of A023481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-39` (program `A023481.P8149254853506171742`, by `A023481.P8149254853506171742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023481.P8149254853506171742

`n-39`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023481

/-- `n-39` -/
def P8149254853506171742.Spec : Prop :=
  ∀ n, P8149254853506171742.a n = A023481 n

theorem P8149254853506171742.correct : P8149254853506171742.Spec := by
  intro n
  simp only [A023481]

end A023481

/-!
# A023482: a(n) = n-40.

The programs for A023482, the canonical program `A023482.P907986368205919176` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023482 has offset 0).

The definition of A023482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-40` (program `A023482.P907986368205919176`, by `A023482.P907986368205919176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023482.P907986368205919176

`n-40`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023482

/-- `n-40` -/
def P907986368205919176.Spec : Prop :=
  ∀ n, P907986368205919176.a n = A023482 n

theorem P907986368205919176.correct : P907986368205919176.Spec := by
  intro n
  simp only [A023482]

end A023482

/-!
# A023483: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 1) and d(n) = (n-th non-Fibonacci number).

The programs for A023483, the canonical program `A023483.P14211022439572459082` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023483 has offset 1).

The definition of A023483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023483.P14211022439572459082

`A000045(n+3)+A001690(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023483

/-- `A000045(n+3)+A001690(n+1)` -/
def P14211022439572459082.Spec : Prop :=
  ∀ n, P14211022439572459082.a n = A023483 (n + 1)

theorem P14211022439572459082.correct : P14211022439572459082.Spec := by
  intro n
  simp only [A023483, Nat.add_sub_cancel]

end A023483

/-! ## A023483.P1901572630826536263

`A212804(n)+A023484(n)`
-/

namespace A023483.P1901572630826536263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A023484 n

end

end A023483.P1901572630826536263

namespace A023483

/-- `A212804(n)+A023484(n)` -/
def P1901572630826536263.Spec : Prop :=
  ∀ n, P1901572630826536263.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P5278028873538584318

`A023484(n)+Δ[A000045(n)]`
-/

namespace A023483.P5278028873538584318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023484 n + (f1 (n + 1) - f1 n)

end

end A023483.P5278028873538584318

namespace A023483

/-- `A023484(n)+Δ[A000045(n)]` -/
def P5278028873538584318.Spec : Prop :=
  ∀ n, P5278028873538584318.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P4815299945218624182

`A020695(n)+comp[A000045(n)]`
-/

namespace A023483.P4815299945218624182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023483.P4815299945218624182

namespace A023483

/-- `A020695(n)+comp[A000045(n)]` -/
def P4815299945218624182.Spec : Prop :=
  ∀ n, P4815299945218624182.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P8044386201839685876

`A020695(n)+comp[A103609(n)]`
-/

namespace A023483.P8044386201839685876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023483.P8044386201839685876

namespace A023483

/-- `A020695(n)+comp[A103609(n)]` -/
def P8044386201839685876.Spec : Prop :=
  ∀ n, P8044386201839685876.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P16031406625626493426

`A020695(n)+comp[A212804(n)]`
-/

namespace A023483.P16031406625626493426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023483.P16031406625626493426

namespace A023483

/-- `A020695(n)+comp[A212804(n)]` -/
def P16031406625626493426.Spec : Prop :=
  ∀ n, P16031406625626493426.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P10042116284916557885

`A020695(n)+comp[A327035(n)]`
-/

namespace A023483.P10042116284916557885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023483.P10042116284916557885

namespace A023483

/-- `A020695(n)+comp[A327035(n)]` -/
def P10042116284916557885.Spec : Prop :=
  ∀ n, P10042116284916557885.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P4976461841121843973

`A020695(n)+A001690(n+1)`
-/

namespace A023483.P4976461841121843973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + A001690 (n + 1)

end

end A023483.P4976461841121843973

namespace A023483

/-- `A020695(n)+A001690(n+1)` -/
def P4976461841121843973.Spec : Prop :=
  ∀ n, P4976461841121843973.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P16050404030883165734

`A020695(n)+comp[Δ[A001611(n)]]`
-/

namespace A023483.P16050404030883165734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023483.P16050404030883165734

namespace A023483

/-- `A020695(n)+comp[Δ[A001611(n)]]` -/
def P16050404030883165734.Spec : Prop :=
  ∀ n, P16050404030883165734.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P6457932920746893273

`comp[A000045(n)]+A000045(n+3)`
-/

namespace A023483.P6457932920746893273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000045 (n + 3)

end

end A023483.P6457932920746893273

namespace A023483

/-- `comp[A000045(n)]+A000045(n+3)` -/
def P6457932920746893273.Spec : Prop :=
  ∀ n, P6457932920746893273.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P692592518540899745

`A212804(n+4)+comp[A103609(n)]`
-/

namespace A023483.P692592518540899745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 4) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023483.P692592518540899745

namespace A023483

/-- `A212804(n+4)+comp[A103609(n)]` -/
def P692592518540899745.Spec : Prop :=
  ∀ n, P692592518540899745.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P8474253824019929083

`A212804(n+4)+comp[A212804(n)]`
-/

namespace A023483.P8474253824019929083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 4) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023483.P8474253824019929083

namespace A023483

/-- `A212804(n+4)+comp[A212804(n)]` -/
def P8474253824019929083.Spec : Prop :=
  ∀ n, P8474253824019929083.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P13555729655821649434

`A022799(n+1)+A000045(n+1)`
-/

namespace A023483.P13555729655821649434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022799 (n + 1) + A000045 (n + 1)

end

end A023483.P13555729655821649434

namespace A023483

/-- `A022799(n+1)+A000045(n+1)` -/
def P13555729655821649434.Spec : Prop :=
  ∀ n, P13555729655821649434.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P16430726610902429201

`eq[0, A010056(n)]+A000045(n+3)`
-/

namespace A023483.P16430726610902429201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A000045 (n + 3)

end

end A023483.P16430726610902429201

namespace A023483

/-- `eq[0, A010056(n)]+A000045(n+3)` -/
def P16430726610902429201.Spec : Prop :=
  ∀ n, P16430726610902429201.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P9500718985167445015

`A020695(n)+comp[Δ[A000071(n+1)]]`
-/

namespace A023483.P9500718985167445015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023483.P9500718985167445015

namespace A023483

/-- `A020695(n)+comp[Δ[A000071(n+1)]]` -/
def P9500718985167445015.Spec : Prop :=
  ∀ n, P9500718985167445015.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P18104090433805008437

`A001611(n+3)+comp[A000071(n+1)]`
-/

namespace A023483.P18104090433805008437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023483.P18104090433805008437

namespace A023483

/-- `A001611(n+3)+comp[A000071(n+1)]` -/
def P18104090433805008437.Spec : Prop :=
  ∀ n, P18104090433805008437.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P11160426093410221497

`A337879(3*(n+2))+comp[A103609(n)]`
-/

namespace A023483.P11160426093410221497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337879 (3 * (n + 2)) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023483.P11160426093410221497

namespace A023483

/-- `A337879(3*(n+2))+comp[A103609(n)]` -/
def P11160426093410221497.Spec : Prop :=
  ∀ n, P11160426093410221497.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P14280074525980023589

`A020695(n)+comp[A293545(n)+A293543(n)]`
-/

namespace A023483.P14280074525980023589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 n + A293543 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023483.P14280074525980023589

namespace A023483

/-- `A020695(n)+comp[A293545(n)+A293543(n)]` -/
def P14280074525980023589.Spec : Prop :=
  ∀ n, P14280074525980023589.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P9287240912042387628

`A000032(n)+A023484(n)-A000045(n+1)`
-/

namespace A023483.P9287240912042387628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A023484 n - A000045 (n + 1))

end

end A023483.P9287240912042387628

namespace A023483

/-- `A000032(n)+A023484(n)-A000045(n+1)` -/
def P9287240912042387628.Spec : Prop :=
  ∀ n, P9287240912042387628.a n = A023483 (n + 1)

end A023483

/-! ## A023483.P3544966376081797039

`A000045(n+1)+A023484(n)-A000045(n)`
-/

namespace A023483.P3544966376081797039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A023484 n - A000045 n)

end

end A023483.P3544966376081797039

namespace A023483

/-- `A000045(n+1)+A023484(n)-A000045(n)` -/
def P3544966376081797039.Spec : Prop :=
  ∀ n, P3544966376081797039.a n = A023483 (n + 1)

end A023483

/-!
# A023484: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number) and d(n) = (n-th non-Fibonacci number).

The programs for A023484, the canonical program `A023484.P7292727787972664292` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023484 has offset 0).

The definition of A023484 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023484.P7292727787972664292

`A000032(n+1)+A001690(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023484

/-- `A000032(n+1)+A001690(n+1)` -/
def P7292727787972664292.Spec : Prop :=
  ∀ n, P7292727787972664292.a n = A023484 n

theorem P7292727787972664292.correct : P7292727787972664292.Spec := by
  intro n
  simp only [A023484]

end A023484

/-! ## A023484.P6963887447363765744

`A022799(n+1)+A000045(n)`
-/

namespace A023484.P6963887447363765744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022799 (n + 1) + A000045 n

end

end A023484.P6963887447363765744

namespace A023484

/-- `A022799(n+1)+A000045(n)` -/
def P6963887447363765744.Spec : Prop :=
  ∀ n, P6963887447363765744.a n = A023484 n

end A023484

/-! ## A023484.P1994182830169707187

`A023483(n+1)-A212804(n)`
-/

namespace A023484.P1994182830169707187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023483 (n + 1) - A212804 n

end

end A023484.P1994182830169707187

namespace A023484

/-- `A023483(n+1)-A212804(n)` -/
def P1994182830169707187.Spec : Prop :=
  ∀ n, P1994182830169707187.a n = A023484 n

end A023484

/-! ## A023484.P13582736491429985438

`comp[A000045(n)]+A000032(n+1)`
-/

namespace A023484.P13582736491429985438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000032 (n + 1)

end

end A023484.P13582736491429985438

namespace A023484

/-- `comp[A000045(n)]+A000032(n+1)` -/
def P13582736491429985438.Spec : Prop :=
  ∀ n, P13582736491429985438.a n = A023484 n

end A023484

/-! ## A023484.P1432347503375098804

`A000204(n+1)+comp[A000045(n)]`
-/

namespace A023484.P1432347503375098804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023484.P1432347503375098804

namespace A023484

/-- `A000204(n+1)+comp[A000045(n)]` -/
def P1432347503375098804.Spec : Prop :=
  ∀ n, P1432347503375098804.a n = A023484 n

end A023484

/-! ## A023484.P14198858522693891901

`comp[A000045(n)]+A001610(n)+1`
-/

namespace A023484.P14198858522693891901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (A001610 n + 1)

end

end A023484.P14198858522693891901

namespace A023484

/-- `comp[A000045(n)]+A001610(n)+1` -/
def P14198858522693891901.Spec : Prop :=
  ∀ n, P14198858522693891901.a n = A023484 n

end A023484

/-! ## A023484.P14823819294336878832

`A000204(n+1)+comp[A103609(n)]`
-/

namespace A023484.P14823819294336878832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023484.P14823819294336878832

namespace A023484

/-- `A000204(n+1)+comp[A103609(n)]` -/
def P14823819294336878832.Spec : Prop :=
  ∀ n, P14823819294336878832.a n = A023484 n

end A023484

/-! ## A023484.P7706291046618132450

`A000204(n+1)+comp[A212804(n)]`
-/

namespace A023484.P7706291046618132450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023484.P7706291046618132450

namespace A023484

/-- `A000204(n+1)+comp[A212804(n)]` -/
def P7706291046618132450.Spec : Prop :=
  ∀ n, P7706291046618132450.a n = A023484 n

end A023484

/-! ## A023484.P15228687388561745578

`A000204(n+1)+comp[A327917(n)]`
-/

namespace A023484.P15228687388561745578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327917 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023484.P15228687388561745578

namespace A023484

/-- `A000204(n+1)+comp[A327917(n)]` -/
def P15228687388561745578.Spec : Prop :=
  ∀ n, P15228687388561745578.a n = A023484 n

end A023484

/-! ## A023484.P13867436801610119568

`A001690(n+1)+A000204(n+1)`
-/

namespace A023484.P13867436801610119568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1) + A000204 (n + 1)

end

end A023484.P13867436801610119568

namespace A023484

/-- `A001690(n+1)+A000204(n+1)` -/
def P13867436801610119568.Spec : Prop :=
  ∀ n, P13867436801610119568.a n = A023484 n

end A023484

/-! ## A023484.P3469992876832617744

`A090244(2*n)+A001690(n+1)`
-/

namespace A023484.P3469992876832617744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n) + A001690 (n + 1)

end

end A023484.P3469992876832617744

namespace A023484

/-- `A090244(2*n)+A001690(n+1)` -/
def P3469992876832617744.Spec : Prop :=
  ∀ n, P3469992876832617744.a n = A023484 n

end A023484

/-! ## A023484.P11133815857301312388

`A000204(n+1)+comp[Δ[A001611(n)]]`
-/

namespace A023484.P11133815857301312388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023484.P11133815857301312388

namespace A023484

/-- `A000204(n+1)+comp[Δ[A001611(n)]]` -/
def P11133815857301312388.Spec : Prop :=
  ∀ n, P11133815857301312388.a n = A023484 n

end A023484

/-! ## A023484.P10491103240703592576

`A001612(n+1)+comp[A000071(n+1)]`
-/

namespace A023484.P10491103240703592576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023484.P10491103240703592576

namespace A023484

/-- `A001612(n+1)+comp[A000071(n+1)]` -/
def P10491103240703592576.Spec : Prop :=
  ∀ n, P10491103240703592576.a n = A023484 n

end A023484

/-! ## A023484.P16926800818068723589

`A000204(n+1)+comp[A157725(n)-2]`
-/

namespace A023484.P16926800818068723589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023484.P16926800818068723589

namespace A023484

/-- `A000204(n+1)+comp[A157725(n)-2]` -/
def P16926800818068723589.Spec : Prop :=
  ∀ n, P16926800818068723589.a n = A023484 n

end A023484

/-! ## A023484.P6774937505616781720

`A000204(n+1)+comp[A221459(∑[n+1])]`
-/

namespace A023484.P6774937505616781720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023484.P6774937505616781720

namespace A023484

/-- `A000204(n+1)+comp[A221459(∑[n+1])]` -/
def P6774937505616781720.Spec : Prop :=
  ∀ n, P6774937505616781720.a n = A023484 n

end A023484

/-! ## A023484.P2046401322456812332

`A000204(n+1)+comp[Δ[A000071(n+1)]]`
-/

namespace A023484.P2046401322456812332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023484.P2046401322456812332

namespace A023484

/-- `A000204(n+1)+comp[Δ[A000071(n+1)]]` -/
def P2046401322456812332.Spec : Prop :=
  ∀ n, P2046401322456812332.a n = A023484 n

end A023484

/-! ## A023484.P17637593109472382608

`A020695(n)+comp[A212804(n)]-A212804(n)`
-/

namespace A023484.P17637593109472382608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A212804 n)

end

end A023484.P17637593109472382608

namespace A023484

/-- `A020695(n)+comp[A212804(n)]-A212804(n)` -/
def P17637593109472382608.Spec : Prop :=
  ∀ n, P17637593109472382608.a n = A023484 n

end A023484

/-! ## A023484.P10355691769302872521

`A000045(n)+comp[A000045(n)]+A000045(n+2)`
-/

namespace A023484.P10355691769302872521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000045 (n + 2))

end

end A023484.P10355691769302872521

namespace A023484

/-- `A000045(n)+comp[A000045(n)]+A000045(n+2)` -/
def P10355691769302872521.Spec : Prop :=
  ∀ n, P10355691769302872521.a n = A023484 n

end A023484

/-!
# A023485: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number A000204 > 1) and d(n) = (n-th non-Fibonacci number).

The programs for A023485, the canonical program `A023485.P12163396700155618846` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023485 has offset 1).

The definition of A023485 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023485.P12163396700155618846

`A000204(n+2)+A001690(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023485

/-- `A000204(n+2)+A001690(n+1)` -/
def P12163396700155618846.Spec : Prop :=
  ∀ n, P12163396700155618846.a n = A023485 (n + 1)

theorem P12163396700155618846.correct : P12163396700155618846.Spec := by
  intro n
  simp only [A023485, Nat.add_sub_cancel]

end A023485

/-! ## A023485.P557978351472036782

`A023484(n)+A000032(n)`
-/

namespace A023485.P557978351472036782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023484 n + A000032 n

end

end A023485.P557978351472036782

namespace A023485

/-- `A023484(n)+A000032(n)` -/
def P557978351472036782.Spec : Prop :=
  ∀ n, P557978351472036782.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P16258802412930246584

`A023486(n)-A000045(n)`
-/

namespace A023485.P16258802412930246584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023486 n - A000045 n

end

end A023485.P16258802412930246584

namespace A023485

/-- `A023486(n)-A000045(n)` -/
def P16258802412930246584.Spec : Prop :=
  ∀ n, P16258802412930246584.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P12390501534668037047

`A022800(n+2)-A000045(n)`
-/

namespace A023485.P12390501534668037047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022800 (n + 2) - A000045 n

end

end A023485.P12390501534668037047

namespace A023485

/-- `A022800(n+2)-A000045(n)` -/
def P12390501534668037047.Spec : Prop :=
  ∀ n, P12390501534668037047.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P1806879924374571235

`comp[A000045(n)]+A000032(n+2)`
-/

namespace A023485.P1806879924374571235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000032 (n + 2)

end

end A023485.P1806879924374571235

namespace A023485

/-- `comp[A000045(n)]+A000032(n+2)` -/
def P1806879924374571235.Spec : Prop :=
  ∀ n, P1806879924374571235.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P14153691022597970229

`A000204(n+2)+comp[A000045(n)]`
-/

namespace A023485.P14153691022597970229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023485.P14153691022597970229

namespace A023485

/-- `A000204(n+2)+comp[A000045(n)]` -/
def P14153691022597970229.Spec : Prop :=
  ∀ n, P14153691022597970229.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P4052663454090860919

`A000204(n+2)+comp[A103609(n)]`
-/

namespace A023485.P4052663454090860919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023485.P4052663454090860919

namespace A023485

/-- `A000204(n+2)+comp[A103609(n)]` -/
def P4052663454090860919.Spec : Prop :=
  ∀ n, P4052663454090860919.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P18109671066634832200

`A000204(n+2)+comp[A212804(n)]`
-/

namespace A023485.P18109671066634832200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023485.P18109671066634832200

namespace A023485

/-- `A000204(n+2)+comp[A212804(n)]` -/
def P18109671066634832200.Spec : Prop :=
  ∀ n, P18109671066634832200.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P12008952634089050512

`A000204(n+2)+comp[A327917(n)]`
-/

namespace A023485.P12008952634089050512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327917 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023485.P12008952634089050512

namespace A023485

/-- `A000204(n+2)+comp[A327917(n)]` -/
def P12008952634089050512.Spec : Prop :=
  ∀ n, P12008952634089050512.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P10565297023117155899

`A023483(n+1)+A000045(n+1)`
-/

namespace A023485.P10565297023117155899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023483 (n + 1) + A000045 (n + 1)

end

end A023485.P10565297023117155899

namespace A023485

/-- `A023483(n+1)+A000045(n+1)` -/
def P10565297023117155899.Spec : Prop :=
  ∀ n, P10565297023117155899.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P17899831367837334329

`A001690(n+1)+A000032(n+2)`
-/

namespace A023485.P17899831367837334329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1) + A000032 (n + 2)

end

end A023485.P17899831367837334329

namespace A023485

/-- `A001690(n+1)+A000032(n+2)` -/
def P17899831367837334329.Spec : Prop :=
  ∀ n, P17899831367837334329.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P8403125044148486528

`A212804(n+2)+A023483(n+1)`
-/

namespace A023485.P8403125044148486528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A023483 (n + 1)

end

end A023485.P8403125044148486528

namespace A023485

/-- `A212804(n+2)+A023483(n+1)` -/
def P8403125044148486528.Spec : Prop :=
  ∀ n, P8403125044148486528.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P9341822438745712233

`eq[0, A010056(n)]+A000032(n+2)`
-/

namespace A023485.P9341822438745712233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A000032 (n + 2)

end

end A023485.P9341822438745712233

namespace A023485

/-- `eq[0, A010056(n)]+A000032(n+2)` -/
def P9341822438745712233.Spec : Prop :=
  ∀ n, P9341822438745712233.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P14315558006038233663

`A001612(n+2)+comp[A000071(n+1)]`
-/

namespace A023485.P14315558006038233663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023485.P14315558006038233663

namespace A023485

/-- `A001612(n+2)+comp[A000071(n+1)]` -/
def P14315558006038233663.Spec : Prop :=
  ∀ n, P14315558006038233663.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P14466593208803766937

`A000204(n+2)+comp[A001611(n)-1]`
-/

namespace A023485.P14466593208803766937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023485.P14466593208803766937

namespace A023485

/-- `A000204(n+2)+comp[A001611(n)-1]` -/
def P14466593208803766937.Spec : Prop :=
  ∀ n, P14466593208803766937.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P14245800503261133833

`A000204(n+2)+comp[floor(A187893(n)/3)]`
-/

namespace A023485.P14245800503261133833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187893 n : ℚ) / 3⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023485.P14245800503261133833

namespace A023485

/-- `A000204(n+2)+comp[floor(A187893(n)/3)]` -/
def P14245800503261133833.Spec : Prop :=
  ∀ n, P14245800503261133833.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P8335917691124946369

`A000204(n+2)+comp[A221459(∑[n+1])]`
-/

namespace A023485.P8335917691124946369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023485.P8335917691124946369

namespace A023485

/-- `A000204(n+2)+comp[A221459(∑[n+1])]` -/
def P8335917691124946369.Spec : Prop :=
  ∀ n, P8335917691124946369.a n = A023485 (n + 1)

end A023485

/-! ## A023485.P486942482864497358

`comp[A000045(n)]+A000045(n+4)-A000045(n)`
-/

namespace A023485.P486942482864497358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000045 (n + 4) - A000045 n

end

end A023485.P486942482864497358

namespace A023485

/-- `comp[A000045(n)]+A000045(n+4)-A000045(n)` -/
def P486942482864497358.Spec : Prop :=
  ∀ n, P486942482864497358.a n = A023485 (n + 1)

end A023485

/-!
# A023486: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2) and d(n) = (n-th non-Fibonacci number).

The programs for A023486, the canonical program `A023486.P13668964546540766955` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023486 has offset 0).

The definition of A023486 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023486.P13668964546540766955

`A001690(n+1)+A000045(n+4)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023486

/-- `A001690(n+1)+A000045(n+4)` -/
def P13668964546540766955.Spec : Prop :=
  ∀ n, P13668964546540766955.a n = A023486 n

theorem P13668964546540766955.correct : P13668964546540766955.Spec := by
  intro n
  simp only [A023486]

end A023486

/-! ## A023486.P8546032132686063056

`A022800(n+2)`
-/

namespace A023486.P8546032132686063056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022800 (n + 2)

end

end A023486.P8546032132686063056

namespace A023486

/-- `A022800(n+2)` -/
def P8546032132686063056.Spec : Prop :=
  ∀ n, P8546032132686063056.a n = A023486 n

end A023486

/-! ## A023486.P12797232373899342514

`A020701(n)+comp[A103609(n)]`
-/

namespace A023486.P12797232373899342514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023486.P12797232373899342514

namespace A023486

/-- `A020701(n)+comp[A103609(n)]` -/
def P12797232373899342514.Spec : Prop :=
  ∀ n, P12797232373899342514.a n = A023486 n

end A023486

/-! ## A023486.P16369608568844249571

`A020701(n)+comp[A212804(n)]`
-/

namespace A023486.P16369608568844249571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023486.P16369608568844249571

namespace A023486

/-- `A020701(n)+comp[A212804(n)]` -/
def P16369608568844249571.Spec : Prop :=
  ∀ n, P16369608568844249571.a n = A023486 n

end A023486

/-! ## A023486.P3139205031619962816

`A020701(n)+comp[A327035(n)]`
-/

namespace A023486.P3139205031619962816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023486.P3139205031619962816

namespace A023486

/-- `A020701(n)+comp[A327035(n)]` -/
def P3139205031619962816.Spec : Prop :=
  ∀ n, P3139205031619962816.a n = A023486 n

end A023486

/-! ## A023486.P13632173985604712195

`A020701(n)+A001690(n+1)`
-/

namespace A023486.P13632173985604712195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + A001690 (n + 1)

end

end A023486.P13632173985604712195

namespace A023486

/-- `A020701(n)+A001690(n+1)` -/
def P13632173985604712195.Spec : Prop :=
  ∀ n, P13632173985604712195.a n = A023486 n

end A023486

/-! ## A023486.P1610715986683760705

`A023485(n+1)+A000045(n)`
-/

namespace A023486.P1610715986683760705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023485 (n + 1) + A000045 n

end

end A023486.P1610715986683760705

namespace A023486

/-- `A023485(n+1)+A000045(n)` -/
def P1610715986683760705.Spec : Prop :=
  ∀ n, P1610715986683760705.a n = A023486 n

end A023486

/-! ## A023486.P8211486261880807255

`A022799(n+1)+A020695(n)`
-/

namespace A023486.P8211486261880807255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022799 (n + 1) + A020695 n

end

end A023486.P8211486261880807255

namespace A023486

/-- `A022799(n+1)+A020695(n)` -/
def P8211486261880807255.Spec : Prop :=
  ∀ n, P8211486261880807255.a n = A023486 n

end A023486

/-! ## A023486.P11109173911935395552

`A020706(n)+comp[A000071(n+1)]`
-/

namespace A023486.P11109173911935395552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023486.P11109173911935395552

namespace A023486

/-- `A020706(n)+comp[A000071(n+1)]` -/
def P11109173911935395552.Spec : Prop :=
  ∀ n, P11109173911935395552.a n = A023486 n

end A023486

/-! ## A023486.P1134126990523248635

`A020695(n+1)+comp[A103609(n)]`
-/

namespace A023486.P1134126990523248635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023486.P1134126990523248635

namespace A023486

/-- `A020695(n+1)+comp[A103609(n)]` -/
def P1134126990523248635.Spec : Prop :=
  ∀ n, P1134126990523248635.a n = A023486 n

end A023486

/-! ## A023486.P8320675587654081125

`A020695(n+1)+comp[A212804(n)]`
-/

namespace A023486.P8320675587654081125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023486.P8320675587654081125

namespace A023486

/-- `A020695(n+1)+comp[A212804(n)]` -/
def P8320675587654081125.Spec : Prop :=
  ∀ n, P8320675587654081125.a n = A023486 n

end A023486

/-! ## A023486.P12753594800519830881

`A020695(n+1)+comp[A327035(n)]`
-/

namespace A023486.P12753594800519830881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023486.P12753594800519830881

namespace A023486

/-- `A020695(n+1)+comp[A327035(n)]` -/
def P12753594800519830881.Spec : Prop :=
  ∀ n, P12753594800519830881.a n = A023486 n

end A023486

/-! ## A023486.P14273226093053856725

`comp[A000045(n)]+A000045(n+4)`
-/

namespace A023486.P14273226093053856725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000045 (n + 4)

end

end A023486.P14273226093053856725

namespace A023486

/-- `comp[A000045(n)]+A000045(n+4)` -/
def P14273226093053856725.Spec : Prop :=
  ∀ n, P14273226093053856725.a n = A023486 n

end A023486

/-! ## A023486.P2056076102363890531

`A020695(n+1)+A001690(n+1)`
-/

namespace A023486.P2056076102363890531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + A001690 (n + 1)

end

end A023486.P2056076102363890531

namespace A023486

/-- `A020695(n+1)+A001690(n+1)` -/
def P2056076102363890531.Spec : Prop :=
  ∀ n, P2056076102363890531.a n = A023486 n

end A023486

/-! ## A023486.P1725604806566528470

`A023483(n+1)+A000045(n+2)`
-/

namespace A023486.P1725604806566528470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023483 (n + 1) + A000045 (n + 2)

end

end A023486.P1725604806566528470

namespace A023486

/-- `A023483(n+1)+A000045(n+2)` -/
def P1725604806566528470.Spec : Prop :=
  ∀ n, P1725604806566528470.a n = A023486 n

end A023486

/-! ## A023486.P16588431042575573462

`A020695(n+1)+comp[A001611(n)-1]`
-/

namespace A023486.P16588431042575573462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023486.P16588431042575573462

namespace A023486

/-- `A020695(n+1)+comp[A001611(n)-1]` -/
def P16588431042575573462.Spec : Prop :=
  ∀ n, P16588431042575573462.a n = A023486 n

end A023486

/-! ## A023486.P16981265427841861415

`A001690(n+1)+A006327(n+4)+3`
-/

namespace A023486.P16981265427841861415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1) + (A006327 (n + 4) + 3)

end

end A023486.P16981265427841861415

namespace A023486

/-- `A001690(n+1)+A006327(n+4)+3` -/
def P16981265427841861415.Spec : Prop :=
  ∀ n, P16981265427841861415.a n = A023486 n

theorem P16981265427841861415.correct : P16981265427841861415.Spec := by
  intro n
  simp only [A023486, Nat.add_sub_cancel, A023486.P16981265427841861415.a, A023486.P13668964546540766955.a, A000045, A000045.P11838749114346432762.a, A001690, A001690.P14637073873687351098.f1, A001690.P14637073873687351098.a, A006327, A006327.P16731944309453537489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023486

/-! ## A023486.P8026883590080879524

`A020695(n+1)+comp[Δ[A000071(n+1)]]`
-/

namespace A023486.P8026883590080879524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023486.P8026883590080879524

namespace A023486

/-- `A020695(n+1)+comp[Δ[A000071(n+1)]]` -/
def P8026883590080879524.Spec : Prop :=
  ∀ n, P8026883590080879524.a n = A023486 n

end A023486

/-! ## A023486.P17057274088905220624

`A020695(n+1)+comp[Δ[A001611(n+1)]]`
-/

namespace A023486.P17057274088905220624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023486.P17057274088905220624

namespace A023486

/-- `A020695(n+1)+comp[Δ[A001611(n+1)]]` -/
def P17057274088905220624.Spec : Prop :=
  ∀ n, P17057274088905220624.a n = A023486 n

end A023486

/-! ## A023486.P14188378413883190795

`A000032(n)+A023484(n)+A000045(n)`
-/

namespace A023486.P14188378413883190795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A023484 n + A000045 n)

end

end A023486.P14188378413883190795

namespace A023486

/-- `A000032(n)+A023484(n)+A000045(n)` -/
def P14188378413883190795.Spec : Prop :=
  ∀ n, P14188378413883190795.a n = A023486 n

end A023486

/-!
# A023487: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 3) and d(n) = (n-th non-Fibonacci number).

The programs for A023487, the canonical program `A023487.P8057689308705659646` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023487 has offset 0).

The definition of A023487 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023487.P8057689308705659646

`A000032(n+3)+A001690(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023487

/-- `A000032(n+3)+A001690(n+1)` -/
def P8057689308705659646.Spec : Prop :=
  ∀ n, P8057689308705659646.a n = A023487 n

theorem P8057689308705659646.correct : P8057689308705659646.Spec := by
  intro n
  simp only [A023487]

end A023487

/-! ## A023487.P14156370086879062995

`A022799(n+1)+A020701(n)`
-/

namespace A023487.P14156370086879062995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022799 (n + 1) + A020701 n

end

end A023487.P14156370086879062995

namespace A023487

/-- `A022799(n+1)+A020701(n)` -/
def P14156370086879062995.Spec : Prop :=
  ∀ n, P14156370086879062995.a n = A023487 n

end A023487

/-! ## A023487.P14791483005155272232

`A023484(n)+A000032(n+2)`
-/

namespace A023487.P14791483005155272232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023484 n + A000032 (n + 2)

end

end A023487.P14791483005155272232

namespace A023487

/-- `A023484(n)+A000032(n+2)` -/
def P14791483005155272232.Spec : Prop :=
  ∀ n, P14791483005155272232.a n = A023487 n

end A023487

/-! ## A023487.P14909797000707836872

`A023486(n)+A000045(n+2)`
-/

namespace A023487.P14909797000707836872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023486 n + A000045 (n + 2)

end

end A023487.P14909797000707836872

namespace A023487

/-- `A023486(n)+A000045(n+2)` -/
def P14909797000707836872.Spec : Prop :=
  ∀ n, P14909797000707836872.a n = A023487 n

end A023487

/-! ## A023487.P3258582998622850899

`A023484(n)+A000204(n+2)`
-/

namespace A023487.P3258582998622850899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023484 n + A000204 (n + 2)

end

end A023487.P3258582998622850899

namespace A023487

/-- `A023484(n)+A000204(n+2)` -/
def P3258582998622850899.Spec : Prop :=
  ∀ n, P3258582998622850899.a n = A023487 n

end A023487

/-! ## A023487.P4288969528210297085

`comp[A000045(n)]+A000032(n+3)`
-/

namespace A023487.P4288969528210297085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000032 (n + 3)

end

end A023487.P4288969528210297085

namespace A023487

/-- `comp[A000045(n)]+A000032(n+3)` -/
def P4288969528210297085.Spec : Prop :=
  ∀ n, P4288969528210297085.a n = A023487 n

end A023487

/-! ## A023487.P15481446634939275321

`A023485(n+1)+A000032(n+1)`
-/

namespace A023487.P15481446634939275321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023485 (n + 1) + A000032 (n + 1)

end

end A023487.P15481446634939275321

namespace A023487

/-- `A023485(n+1)+A000032(n+1)` -/
def P15481446634939275321.Spec : Prop :=
  ∀ n, P15481446634939275321.a n = A023487 n

end A023487

/-! ## A023487.P18020443660453560582

`A023485(n+1)+A000204(n+1)`
-/

namespace A023487.P18020443660453560582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023485 (n + 1) + A000204 (n + 1)

end

end A023487.P18020443660453560582

namespace A023487

/-- `A023485(n+1)+A000204(n+1)` -/
def P18020443660453560582.Spec : Prop :=
  ∀ n, P18020443660453560582.a n = A023487 n

end A023487

/-! ## A023487.P2621137997728087744

`A022799(n+1)+A020695(n+1)`
-/

namespace A023487.P2621137997728087744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022799 (n + 1) + A020695 (n + 1)

end

end A023487.P2621137997728087744

namespace A023487

/-- `A022799(n+1)+A020695(n+1)` -/
def P2621137997728087744.Spec : Prop :=
  ∀ n, P2621137997728087744.a n = A023487 n

end A023487

/-! ## A023487.P2008134374966644041

`A288219(n+1)+A001690(n+1)`
-/

namespace A023487.P2008134374966644041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 (n + 1) + A001690 (n + 1)

end

end A023487.P2008134374966644041

namespace A023487

/-- `A288219(n+1)+A001690(n+1)` -/
def P2008134374966644041.Spec : Prop :=
  ∀ n, P2008134374966644041.a n = A023487 n

end A023487

/-! ## A023487.P37023700125817601

`A023488(n+1)-A000045(n+1)`
-/

namespace A023487.P37023700125817601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 (n + 1) - A000045 (n + 1)

end

end A023487.P37023700125817601

namespace A023487

/-- `A023488(n+1)-A000045(n+1)` -/
def P37023700125817601.Spec : Prop :=
  ∀ n, P37023700125817601.a n = A023487 n

end A023487

/-! ## A023487.P18191294037158235949

`A001690(n+1)+A000204(n+3)`
-/

namespace A023487.P18191294037158235949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1) + A000204 (n + 3)

end

end A023487.P18191294037158235949

namespace A023487

/-- `A001690(n+1)+A000204(n+3)` -/
def P18191294037158235949.Spec : Prop :=
  ∀ n, P18191294037158235949.a n = A023487 n

end A023487

/-! ## A023487.P13142589270922480944

`A022800(n+2)+A000045(n+2)`
-/

namespace A023487.P13142589270922480944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022800 (n + 2) + A000045 (n + 2)

end

end A023487.P13142589270922480944

namespace A023487

/-- `A022800(n+2)+A000045(n+2)` -/
def P13142589270922480944.Spec : Prop :=
  ∀ n, P13142589270922480944.a n = A023487 n

end A023487

/-! ## A023487.P3529184291087443832

`A001612(n+3)+comp[∑[A000045(n)]]`
-/

namespace A023487.P3529184291087443832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023487.P3529184291087443832

namespace A023487

/-- `A001612(n+3)+comp[∑[A000045(n)]]` -/
def P3529184291087443832.Spec : Prop :=
  ∀ n, P3529184291087443832.a n = A023487 n

end A023487

/-! ## A023487.P689592265840679301

`A001612(n+3)+comp[A000071(n+1)]`
-/

namespace A023487.P689592265840679301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023487.P689592265840679301

namespace A023487

/-- `A001612(n+3)+comp[A000071(n+1)]` -/
def P689592265840679301.Spec : Prop :=
  ∀ n, P689592265840679301.a n = A023487 n

end A023487

/-! ## A023487.P16860210300148275735

`A272632(2*n+1)+A001690(n+1)`
-/

namespace A023487.P16860210300148275735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272632 (2 * n + 1) + A001690 (n + 1)

end

end A023487.P16860210300148275735

namespace A023487

/-- `A272632(2*n+1)+A001690(n+1)` -/
def P16860210300148275735.Spec : Prop :=
  ∀ n, P16860210300148275735.a n = A023487 n

end A023487

/-! ## A023487.P1241349133377236428

`A099925(n+1)+A099925(n)+A023484(n)`
-/

namespace A023487.P1241349133377236428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 (n + 1) + (A099925 n + A023484 n)

end

end A023487.P1241349133377236428

namespace A023487

/-- `A099925(n+1)+A099925(n)+A023484(n)` -/
def P1241349133377236428.Spec : Prop :=
  ∀ n, P1241349133377236428.a n = A023487 n

end A023487

/-! ## A023487.P1382197864376995966

`A023486(n)+A023486(n)-A023483(n+1)`
-/

namespace A023487.P1382197864376995966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023486 n + (A023486 n - A023483 (n + 1))

end

end A023487.P1382197864376995966

namespace A023487

/-- `A023486(n)+A023486(n)-A023483(n+1)` -/
def P1382197864376995966.Spec : Prop :=
  ∀ n, P1382197864376995966.a n = A023487 n

end A023487

/-! ## A023487.P15806838598338025225

`A000285(n+1)+A023484(n)-A000045(n+1)`
-/

namespace A023487.P15806838598338025225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 1) + (A023484 n - A000045 (n + 1))

end

end A023487.P15806838598338025225

namespace A023487

/-- `A000285(n+1)+A023484(n)-A000045(n+1)` -/
def P15806838598338025225.Spec : Prop :=
  ∀ n, P15806838598338025225.a n = A023487 n

end A023487

/-! ## A023487.P500110097073784954

`A023485(n+1)+A023484(n)-A001690(n+1)`
-/

namespace A023487.P500110097073784954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023485 (n + 1) + (A023484 n - A001690 (n + 1))

end

end A023487.P500110097073784954

namespace A023487

/-- `A023485(n+1)+A023484(n)-A001690(n+1)` -/
def P500110097073784954.Spec : Prop :=
  ∀ n, P500110097073784954.a n = A023487 n

end A023487

/-!
# A023488: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2) and d(n) = (n-th number that is 1 or is not a Fibonacci number).

The programs for A023488, the canonical program `A023488.P475559876391436152` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023488 has offset 0).

The definition of A023488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023488.P18210333311030923999

`A020706(n)+comp[A000071(n+3)]`
-/

namespace A023488.P18210333311030923999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023488.P18210333311030923999

namespace A023488

/-- `A020706(n)+comp[A000071(n+3)]` -/
def P18210333311030923999.Spec : Prop :=
  ∀ n, P18210333311030923999.a n = A023488 n

end A023488

/-! ## A023488.P475559876391436152

`A022800(n+1)+A000045(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023488

/-- `A022800(n+1)+A000045(n+2)` -/
def P475559876391436152.Spec : Prop :=
  ∀ n, P475559876391436152.a n = A023488 n

theorem P475559876391436152.correct : P475559876391436152.Spec := by
  intro n
  simp only [A023488]

end A023488

/-! ## A023488.P6811232238866466882

`A022800(n+1)+A023486(n)-A023483(n+1)`
-/

namespace A023488.P6811232238866466882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022800 (n + 1) + (A023486 n - A023483 (n + 1))

end

end A023488.P6811232238866466882

namespace A023488

/-- `A022800(n+1)+A023486(n)-A023483(n+1)` -/
def P6811232238866466882.Spec : Prop :=
  ∀ n, P6811232238866466882.a n = A023488 n

end A023488

/-! ## A023488.P4383636204580469159

`A022800(n+1)+A022800(n+2)-A023483(n+1)`
-/

namespace A023488.P4383636204580469159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022800 (n + 1) + (A022800 (n + 2) - A023483 (n + 1))

end

end A023488.P4383636204580469159

namespace A023488

/-- `A022800(n+1)+A022800(n+2)-A023483(n+1)` -/
def P4383636204580469159.Spec : Prop :=
  ∀ n, P4383636204580469159.a n = A023488 n

end A023488

/-! ## A023488.P10138967702522518335

`A020712(n)-A014242(n+1)`
-/

namespace A023488.P10138967702522518335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n - A014242 (n + 1)

end

end A023488.P10138967702522518335

namespace A023488

/-- `A020712(n)-A014242(n+1)` -/
def P10138967702522518335.Spec : Prop :=
  ∀ n, P10138967702522518335.a n = A023488 n

end A023488

/-! ## A023488.P7091366528794384094

`A023489(n+1)-Δ[A001911(n)]`
-/

namespace A023488.P7091366528794384094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023489 (n + 1) - (f1 (n + 1) - f1 n)

end

end A023488.P7091366528794384094

namespace A023488

/-- `A023489(n+1)-Δ[A001911(n)]` -/
def P7091366528794384094.Spec : Prop :=
  ∀ n, P7091366528794384094.a n = A023488 n

theorem P7091366528794384094.correct : P7091366528794384094.Spec := by
  intro n
  simp only [A023488, Nat.add_sub_cancel, A023488.P7091366528794384094.f1, A023488.P7091366528794384094.a, A023488.P475559876391436152.a, A000045, A000045.P11838749114346432762.a, A001911, A001911.P2299546665043418976.a, A022800, A022800.P2504383713306654643.a, A023489, A023489.P10868598948325569583.f1, A023489.P10868598948325569583.a, A014242, A014242.P916885412522519883.f1, A014242.P916885412522519883.a, A020695, A020695.P5292720263086745780.a, A000071, A000071.P17543778731970887199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023488

/-! ## A023488.P14541657276904163757

`A020701(n+1)-A014242(n+1)`
-/

namespace A023488.P14541657276904163757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 1) - A014242 (n + 1)

end

end A023488.P14541657276904163757

namespace A023488

/-- `A020701(n+1)-A014242(n+1)` -/
def P14541657276904163757.Spec : Prop :=
  ∀ n, P14541657276904163757.a n = A023488 n

end A023488

/-! ## A023488.P12354860620092377475

`A023489(n+1)-A000045(n+2)`
-/

namespace A023488.P12354860620092377475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023489 (n + 1) - A000045 (n + 2)

end

end A023488.P12354860620092377475

namespace A023488

/-- `A023489(n+1)-A000045(n+2)` -/
def P12354860620092377475.Spec : Prop :=
  ∀ n, P12354860620092377475.a n = A023488 n

end A023488

/-! ## A023488.P7703334956267747962

`A020695(n+2)-A014242(n+1)`
-/

namespace A023488.P7703334956267747962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 2) - A014242 (n + 1)

end

end A023488.P7703334956267747962

namespace A023488

/-- `A020695(n+2)-A014242(n+1)` -/
def P7703334956267747962.Spec : Prop :=
  ∀ n, P7703334956267747962.a n = A023488 n

end A023488

/-! ## A023488.P16653041281166861480

`A000045(A020710(n))-A014242(n+1)`
-/

namespace A023488.P16653041281166861480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020710 n).toNat - A014242 (n + 1)

end

end A023488.P16653041281166861480

namespace A023488

/-- `A000045(A020710(n))-A014242(n+1)` -/
def P16653041281166861480.Spec : Prop :=
  ∀ n, P16653041281166861480.a n = A023488 n

end A023488

/-!
# A023489: Sum of n-th Lucas number greater than 3 and n-th number that is 1 or is not a Fibonacci number.

The programs for A023489, the canonical program `A023489.P10868598948325569583` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023489 has offset 1).

The definition of A023489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023489.P10868598948325569583

`A023488(n)+Δ[A001911(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023489

/-- `A023488(n)+Δ[A001911(n)]` -/
def P10868598948325569583.Spec : Prop :=
  ∀ n, P10868598948325569583.a n = A023489 (n + 1)

theorem P10868598948325569583.correct : P10868598948325569583.Spec := by
  intro n
  simp only [A023489, Nat.add_sub_cancel]

end A023489

/-! ## A023489.P5723650741480147011

`A023488(n)+Δ[A018910(n)]`
-/

namespace A023489.P5723650741480147011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n + (f1 (n + 1) - f1 n)

end

end A023489.P5723650741480147011

namespace A023489

/-- `A023488(n)+Δ[A018910(n)]` -/
def P5723650741480147011.Spec : Prop :=
  ∀ n, P5723650741480147011.a n = A023489 (n + 1)

end A023489

/-! ## A023489.P3778906622692557606

`A023488(n)+Δ[A020695(n)]`
-/

namespace A023489.P3778906622692557606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n + (f1 (n + 1) - f1 n)

end

end A023489.P3778906622692557606

namespace A023489

/-- `A023488(n)+Δ[A020695(n)]` -/
def P3778906622692557606.Spec : Prop :=
  ∀ n, P3778906622692557606.a n = A023489 (n + 1)

end A023489

/-! ## A023489.P6441336453502111778

`A023488(n)+Δ[A048577(n)]`
-/

namespace A023489.P6441336453502111778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n + (f1 (n + 1) - f1 n)

end

end A023489.P6441336453502111778

namespace A023489

/-- `A023488(n)+Δ[A048577(n)]` -/
def P6441336453502111778.Spec : Prop :=
  ∀ n, P6441336453502111778.a n = A023489 (n + 1)

end A023489

/-! ## A023489.P6596662540240627927

`A023488(n)+A000045(n+2)`
-/

namespace A023489.P6596662540240627927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n + A000045 (n + 2)

end

end A023489.P6596662540240627927

namespace A023489

/-- `A023488(n)+A000045(n+2)` -/
def P6596662540240627927.Spec : Prop :=
  ∀ n, P6596662540240627927.a n = A023489 (n + 1)

end A023489

/-! ## A023489.P11755021783942843990

`A020701(n)+A020701(n)-A014242(n+1)`
-/

namespace A023489.P11755021783942843990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + (A020701 n - A014242 (n + 1))

end

end A023489.P11755021783942843990

namespace A023489

/-- `A020701(n)+A020701(n)-A014242(n+1)` -/
def P11755021783942843990.Spec : Prop :=
  ∀ n, P11755021783942843990.a n = A023489 (n + 1)

end A023489

/-! ## A023489.P13231631819296641678

`A212804(n+3)-(A014242(n+1)-A212804(n+6))`
-/

namespace A023489.P13231631819296641678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 3) - (A014242 (n + 1) - A212804 (n + 6))

end

end A023489.P13231631819296641678

namespace A023489

/-- `A212804(n+3)-(A014242(n+1)-A212804(n+6))` -/
def P13231631819296641678.Spec : Prop :=
  ∀ n, P13231631819296641678.a n = A023489 (n + 1)

end A023489

/-! ## A023489.P17814949177376680681

`A090991(n+1)-A014242(n+1)`
-/

namespace A023489.P17814949177376680681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) - A014242 (n + 1)

end

end A023489.P17814949177376680681

namespace A023489

/-- `A090991(n+1)-A014242(n+1)` -/
def P17814949177376680681.Spec : Prop :=
  ∀ n, P17814949177376680681.a n = A023489 (n + 1)

end A023489

/-! ## A023489.P13412004789502562296

`A078642(n+2)-A014242(n+1)`
-/

namespace A023489.P13412004789502562296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 2) - A014242 (n + 1)

end

end A023489.P13412004789502562296

namespace A023489

/-- `A078642(n+2)-A014242(n+1)` -/
def P13412004789502562296.Spec : Prop :=
  ∀ n, P13412004789502562296.a n = A023489 (n + 1)

end A023489

/-! ## A023489.P1587495774495125561

`2*A020701(n)-A014242(n+1)`
-/

namespace A023489.P1587495774495125561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020701 n - A014242 (n + 1)

end

end A023489.P1587495774495125561

namespace A023489

/-- `2*A020701(n)-A014242(n+1)` -/
def P1587495774495125561.Spec : Prop :=
  ∀ n, P1587495774495125561.a n = A023489 (n + 1)

end A023489

/-! ## A023489.P9022918422327431073

`A020695(n+3)-A014242(n+1)-A020695(n)`
-/

namespace A023489.P9022918422327431073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 3) - A014242 (n + 1) - A020695 n

end

end A023489.P9022918422327431073

namespace A023489

/-- `A020695(n+3)-A014242(n+1)-A020695(n)` -/
def P9022918422327431073.Spec : Prop :=
  ∀ n, P9022918422327431073.a n = A023489 (n + 1)

end A023489

/-! ## A023489.P10047700296962969829

`Δ[A204644(n+2)/2]-A014242(n+1)`
-/

namespace A023489.P10047700296962969829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204644 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A014242 (n + 1) : ℚ)

end

end A023489.P10047700296962969829

namespace A023489

/-- `Δ[A204644(n+2)/2]-A014242(n+1)` -/
def P10047700296962969829.Spec : Prop :=
  ∀ n, P10047700296962969829.a n = (A023489 (n + 1) : ℚ)

end A023489

/-!
# A023490: n-th non-Lucas number plus Fibonacci(n + 1).

The programs for A023490, the canonical program `A023490.P988857930729845770` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023490 has offset 0).

The definition of A023490 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023490.P988857930729845770

`A000045(n+2)+A090946(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023490

/-- `A000045(n+2)+A090946(n+2)` -/
def P988857930729845770.Spec : Prop :=
  ∀ n, P988857930729845770.a n = A023490 n

theorem P988857930729845770.correct : P988857930729845770.Spec := by
  intro n
  simp only [A023490]

end A023490

/-! ## A023490.P56681558876875563

`A001611(n+2)+comp[A001610(n)]`
-/

namespace A023490.P56681558876875563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023490.P56681558876875563

namespace A023490

/-- `A001611(n+2)+comp[A001610(n)]` -/
def P56681558876875563.Spec : Prop :=
  ∀ n, P56681558876875563.a n = A023490 n

end A023490

/-! ## A023490.P15185547746612568215

`A000071(n+2)+A090946(n+2)+1`
-/

namespace A023490.P15185547746612568215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A090946 (n + 2) + 1)

end

end A023490.P15185547746612568215

namespace A023490

/-- `A000071(n+2)+A090946(n+2)+1` -/
def P15185547746612568215.Spec : Prop :=
  ∀ n, P15185547746612568215.a n = A023490 n

theorem P15185547746612568215.correct : P15185547746612568215.Spec := by
  intro n
  simp only [A023490, Nat.add_sub_cancel, A023490.P15185547746612568215.a, A023490.P988857930729845770.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, A090946, A090946.P6276582592417008834.f2, A090946.P6276582592417008834.f1, A090946.P6276582592417008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023490

/-! ## A023490.P14280605462327547343

`A090946(n+2)+A053602(2*n+1)`
-/

namespace A023490.P14280605462327547343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + A053602 (2 * n + 1)

end

end A023490.P14280605462327547343

namespace A023490

/-- `A090946(n+2)+A053602(2*n+1)` -/
def P14280605462327547343.Spec : Prop :=
  ∀ n, P14280605462327547343.a n = A023490 n

end A023490

/-! ## A023490.P16546692602321595206

`A115339(2*n+1)+A090946(n+2)`
-/

namespace A023490.P16546692602321595206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (2 * n + 1) + A090946 (n + 2)

end

end A023490.P16546692602321595206

namespace A023490

/-- `A115339(2*n+1)+A090946(n+2)` -/
def P16546692602321595206.Spec : Prop :=
  ∀ n, P16546692602321595206.a n = A023490 n

end A023490

/-! ## A023490.P2681569030171139055

`A001611(n+2)+comp[A000032(n+1)-1]`
-/

namespace A023490.P2681569030171139055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023490.P2681569030171139055

namespace A023490

/-- `A001611(n+2)+comp[A000032(n+1)-1]` -/
def P2681569030171139055.Spec : Prop :=
  ∀ n, P2681569030171139055.a n = A023490 n

end A023490

/-! ## A023490.P5427627996308512338

`A001611(n+2)+comp[A000204(n+1)-1]`
-/

namespace A023490.P5427627996308512338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023490.P5427627996308512338

namespace A023490

/-- `A001611(n+2)+comp[A000204(n+1)-1]` -/
def P5427627996308512338.Spec : Prop :=
  ∀ n, P5427627996308512338.a n = A023490 n

end A023490

/-! ## A023490.P9416477239413801463

`A001611(n+2)+comp[A059840(2*(n+1))%A000032(n+1)]`
-/

namespace A023490.P9416477239413801463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059840 (2 * (n + 1))) (A000032 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023490.P9416477239413801463

namespace A023490

/-- `A001611(n+2)+comp[A059840(2*(n+1))%A000032(n+1)]` -/
def P9416477239413801463.Spec : Prop :=
  ∀ n, P9416477239413801463.a n = A023490 n

end A023490

/-! ## A023490.P8964623353543621568

`A022801(n+1)-A000045(n)`
-/

namespace A023490.P8964623353543621568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 1) - A000045 n

end

end A023490.P8964623353543621568

namespace A023490

/-- `A022801(n+1)-A000045(n)` -/
def P8964623353543621568.Spec : Prop :=
  ∀ n, P8964623353543621568.a n = A023490 n

end A023490

/-! ## A023490.P12819671798449231442

`A023491(n)-A000045(n+1)`
-/

namespace A023490.P12819671798449231442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n - A000045 (n + 1)

end

end A023490.P12819671798449231442

namespace A023490

/-- `A023491(n)-A000045(n+1)` -/
def P12819671798449231442.Spec : Prop :=
  ∀ n, P12819671798449231442.a n = A023490 n

end A023490

/-! ## A023490.P10377905398419397264

`A023491(n)-A212804(n+2)`
-/

namespace A023490.P10377905398419397264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n - A212804 (n + 2)

end

end A023490.P10377905398419397264

namespace A023490

/-- `A023491(n)-A212804(n+2)` -/
def P10377905398419397264.Spec : Prop :=
  ∀ n, P10377905398419397264.a n = A023490 n

end A023490

/-! ## A023490.P15563336964064516444

`A023491(n)-Δ[A000071(n+2)]`
-/

namespace A023490.P15563336964064516444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n - (f1 (n + 1) - f1 n)

end

end A023490.P15563336964064516444

namespace A023490

/-- `A023491(n)-Δ[A000071(n+2)]` -/
def P15563336964064516444.Spec : Prop :=
  ∀ n, P15563336964064516444.a n = A023490 n

theorem P15563336964064516444.correct : P15563336964064516444.Spec := by
  intro n
  simp only [A023490, Nat.add_sub_cancel, A023490.P15563336964064516444.f1, A023490.P15563336964064516444.a, A023490.P988857930729845770.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, A023491, A023491.P5893731132072105009.a, A090946, A090946.P6276582592417008834.f2, A090946.P6276582592417008834.f1, A090946.P6276582592417008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023490

/-! ## A023490.P16962516462213081111

`A023491(n)-(A000071(n+1)+1)`
-/

namespace A023490.P16962516462213081111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n - (A000071 (n + 1) + 1)

end

end A023490.P16962516462213081111

namespace A023490

/-- `A023491(n)-(A000071(n+1)+1)` -/
def P16962516462213081111.Spec : Prop :=
  ∀ n, P16962516462213081111.a n = A023490 n

end A023490

/-! ## A023490.P1812106073113722936

`A022801(n+1)-A212804(n+1)`
-/

namespace A023490.P1812106073113722936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 1) - A212804 (n + 1)

end

end A023490.P1812106073113722936

namespace A023490

/-- `A022801(n+1)-A212804(n+1)` -/
def P1812106073113722936.Spec : Prop :=
  ∀ n, P1812106073113722936.a n = A023490 n

end A023490

/-! ## A023490.P3567333101481159516

`A023491(n)-A000045(n)-Δ[A000045(n)]`
-/

namespace A023490.P3567333101481159516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n - A000045 n - (f1 (n + 1) - f1 n)

end

end A023490.P3567333101481159516

namespace A023490

/-- `A023491(n)-A000045(n)-Δ[A000045(n)]` -/
def P3567333101481159516.Spec : Prop :=
  ∀ n, P3567333101481159516.a n = A023490 n

end A023490

/-! ## A023490.P6329350160839020844

`A023494(n)-A020695(n)`
-/

namespace A023490.P6329350160839020844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023494 n - A020695 n

end

end A023490.P6329350160839020844

namespace A023490

/-- `A023494(n)-A020695(n)` -/
def P6329350160839020844.Spec : Prop :=
  ∀ n, P6329350160839020844.a n = A023490 n

end A023490

/-! ## A023490.P4047506454647250648

`A023494(n)-(A001911(n)+2)`
-/

namespace A023490.P4047506454647250648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023494 n - (A001911 n + 2)

end

end A023490.P4047506454647250648

namespace A023490

/-- `A023494(n)-(A001911(n)+2)` -/
def P4047506454647250648.Spec : Prop :=
  ∀ n, P4047506454647250648.a n = A023490 n

end A023490

/-! ## A023490.P14459559656525122524

`A090946(n+2)+Δ[A020695(n)]`
-/

namespace A023490.P14459559656525122524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + (f1 (n + 1) - f1 n)

end

end A023490.P14459559656525122524

namespace A023490

/-- `A090946(n+2)+Δ[A020695(n)]` -/
def P14459559656525122524.Spec : Prop :=
  ∀ n, P14459559656525122524.a n = A023490 n

end A023490

/-! ## A023490.P6688936275482480759

`A023493(n)-∑[2*A212804(n)]`
-/

namespace A023490.P6688936275482480759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023490.P6688936275482480759

namespace A023490

/-- `A023493(n)-∑[2*A212804(n)]` -/
def P6688936275482480759.Spec : Prop :=
  ∀ n, P6688936275482480759.a n = A023490 n

end A023490

/-! ## A023490.P14798551562454943933

`A090946(n+2)+Δ[A000071(n+3)]`
-/

namespace A023490.P14798551562454943933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + (f1 (n + 1) - f1 n)

end

end A023490.P14798551562454943933

namespace A023490

/-- `A090946(n+2)+Δ[A000071(n+3)]` -/
def P14798551562454943933.Spec : Prop :=
  ∀ n, P14798551562454943933.a n = A023490 n

end A023490

/-!
# A023491: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 1) and d(n) = (n-th non-Lucas number).

The programs for A023491, the canonical program `A023491.P5893731132072105009` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023491 has offset 0).

The definition of A023491 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023491.P5893731132072105009

`A000045(n+3)+A090946(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023491

/-- `A000045(n+3)+A090946(n+2)` -/
def P5893731132072105009.Spec : Prop :=
  ∀ n, P5893731132072105009.a n = A023491 n

theorem P5893731132072105009.correct : P5893731132072105009.Spec := by
  intro n
  simp only [A023491]

end A023491

/-! ## A023491.P8908867997979671900

`A023490(n)+∑[A212804(n)]`
-/

namespace A023491.P8908867997979671900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023491.P8908867997979671900

namespace A023491

/-- `A023490(n)+∑[A212804(n)]` -/
def P8908867997979671900.Spec : Prop :=
  ∀ n, P8908867997979671900.a n = A023491 n

end A023491

/-! ## A023491.P6390764106702935018

`A023490(n)+A000045(n+1)`
-/

namespace A023491.P6390764106702935018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + A000045 (n + 1)

end

end A023491.P6390764106702935018

namespace A023491

/-- `A023490(n)+A000045(n+1)` -/
def P6390764106702935018.Spec : Prop :=
  ∀ n, P6390764106702935018.a n = A023491 n

end A023491

/-! ## A023491.P4758954569652283329

`A212804(n)+A022801(n+1)`
-/

namespace A023491.P4758954569652283329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022801 (n + 1)

end

end A023491.P4758954569652283329

namespace A023491

/-- `A212804(n)+A022801(n+1)` -/
def P4758954569652283329.Spec : Prop :=
  ∀ n, P4758954569652283329.a n = A023491 n

end A023491

/-! ## A023491.P12395923047843943804

`A090946(n+2)+A020695(n)`
-/

namespace A023491.P12395923047843943804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + A020695 n

end

end A023491.P12395923047843943804

namespace A023491

/-- `A090946(n+2)+A020695(n)` -/
def P12395923047843943804.Spec : Prop :=
  ∀ n, P12395923047843943804.a n = A023491 n

end A023491

/-! ## A023491.P17095908488542179142

`A212804(n+2)+A023490(n)`
-/

namespace A023491.P17095908488542179142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A023490 n

end

end A023491.P17095908488542179142

namespace A023491

/-- `A212804(n+2)+A023490(n)` -/
def P17095908488542179142.Spec : Prop :=
  ∀ n, P17095908488542179142.a n = A023491 n

end A023491

/-! ## A023491.P7884851519931185007

`A023490(n)+Δ[A000071(n+2)]`
-/

namespace A023491.P7884851519931185007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + (f1 (n + 1) - f1 n)

end

end A023491.P7884851519931185007

namespace A023491

/-- `A023490(n)+Δ[A000071(n+2)]` -/
def P7884851519931185007.Spec : Prop :=
  ∀ n, P7884851519931185007.a n = A023491 n

theorem P7884851519931185007.correct : P7884851519931185007.Spec := by
  intro n
  simp only [A023491, Nat.add_sub_cancel, A023491.P7884851519931185007.f1, A023491.P7884851519931185007.a, A023491.P5893731132072105009.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, A023490, A023490.P988857930729845770.a, A090946, A090946.P6276582592417008834.f2, A090946.P6276582592417008834.f1, A090946.P6276582592417008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023491

/-! ## A023491.P239183820958181458

`A001611(n+3)+comp[A001610(n)]`
-/

namespace A023491.P239183820958181458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023491.P239183820958181458

namespace A023491

/-- `A001611(n+3)+comp[A001610(n)]` -/
def P239183820958181458.Spec : Prop :=
  ∀ n, P239183820958181458.a n = A023491 n

end A023491

/-! ## A023491.P11408987028988962957

`A000071(n+1)+A023490(n)+1`
-/

namespace A023491.P11408987028988962957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A023490 n + 1)

end

end A023491.P11408987028988962957

namespace A023491

/-- `A000071(n+1)+A023490(n)+1` -/
def P11408987028988962957.Spec : Prop :=
  ∀ n, P11408987028988962957.a n = A023491 n

end A023491

/-! ## A023491.P6822184310669654030

`A020695(n)+comp[A000204(n+1)-1]+1`
-/

namespace A023491.P6822184310669654030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A023491.P6822184310669654030

namespace A023491

/-- `A020695(n)+comp[A000204(n+1)-1]+1` -/
def P6822184310669654030.Spec : Prop :=
  ∀ n, P6822184310669654030.a n = A023491 n

end A023491

/-! ## A023491.P3208915799348128939

`A023490(n+1)+A090946(n+2)-A057854(n+1)`
-/

namespace A023491.P3208915799348128939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 (n + 1) + (A090946 (n + 2) - A057854 (n + 1))

end

end A023491.P3208915799348128939

namespace A023491

/-- `A023490(n+1)+A090946(n+2)-A057854(n+1)` -/
def P3208915799348128939.Spec : Prop :=
  ∀ n, P3208915799348128939.a n = A023491 n

theorem P3208915799348128939.correct : P3208915799348128939.Spec := by
  intro n
  simp only [A023491, Nat.add_sub_cancel, A023491.P3208915799348128939.a, A023491.P5893731132072105009.a, A000045, A000045.P11838749114346432762.a, A023490, A023490.P988857930729845770.a, A057854, A057854.P3516327272515158544.a, A090946, A090946.P6276582592417008834.f2, A090946.P6276582592417008834.f1, A090946.P6276582592417008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023491

/-! ## A023491.P3777825579188039116

`A023493(n)-∑[A212804(n)]`
-/

namespace A023491.P3777825579188039116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023491.P3777825579188039116

namespace A023491

/-- `A023493(n)-∑[A212804(n)]` -/
def P3777825579188039116.Spec : Prop :=
  ∀ n, P3777825579188039116.a n = A023491 n

end A023491

/-! ## A023491.P7431505405942835051

`A023494(n)-Δ[A001911(n)]`
-/

namespace A023491.P7431505405942835051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023494 n - (f1 (n + 1) - f1 n)

end

end A023491.P7431505405942835051

namespace A023491

/-- `A023494(n)-Δ[A001911(n)]` -/
def P7431505405942835051.Spec : Prop :=
  ∀ n, P7431505405942835051.a n = A023491 n

theorem P7431505405942835051.correct : P7431505405942835051.Spec := by
  intro n
  simp only [A023491, Nat.add_sub_cancel, A023491.P7431505405942835051.f1, A023491.P7431505405942835051.a, A023491.P5893731132072105009.a, A000045, A000045.P11838749114346432762.a, A001911, A001911.P2299546665043418976.a, A023494, A023494.P3154077987958110990.a, A090946, A090946.P6276582592417008834.f2, A090946.P6276582592417008834.f1, A090946.P6276582592417008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023491

/-! ## A023491.P14239485260652190862

`A023493(n)-A000045(n+1)`
-/

namespace A023491.P14239485260652190862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n - A000045 (n + 1)

end

end A023491.P14239485260652190862

namespace A023491

/-- `A023493(n)-A000045(n+1)` -/
def P14239485260652190862.Spec : Prop :=
  ∀ n, P14239485260652190862.a n = A023491 n

end A023491

/-! ## A023491.P3309939298287760348

`A023494(n)-A000045(n+2)`
-/

namespace A023491.P3309939298287760348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023494 n - A000045 (n + 2)

end

end A023491.P3309939298287760348

namespace A023491

/-- `A023494(n)-A000045(n+2)` -/
def P3309939298287760348.Spec : Prop :=
  ∀ n, P3309939298287760348.a n = A023491 n

end A023491

/-! ## A023491.P15532453054545438201

`A023493(n)-A212804(n+2)`
-/

namespace A023491.P15532453054545438201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n - A212804 (n + 2)

end

end A023491.P15532453054545438201

namespace A023491

/-- `A023493(n)-A212804(n+2)` -/
def P15532453054545438201.Spec : Prop :=
  ∀ n, P15532453054545438201.a n = A023491 n

end A023491

/-! ## A023491.P17807813744174447020

`A023493(n)-Δ[A000071(n+2)]`
-/

namespace A023491.P17807813744174447020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n - (f1 (n + 1) - f1 n)

end

end A023491.P17807813744174447020

namespace A023491

/-- `A023493(n)-Δ[A000071(n+2)]` -/
def P17807813744174447020.Spec : Prop :=
  ∀ n, P17807813744174447020.a n = A023491 n

end A023491

/-! ## A023491.P4105373490392980204

`A023493(n)-(A000071(n+1)+1)`
-/

namespace A023491.P4105373490392980204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n - (A000071 (n + 1) + 1)

end

end A023491.P4105373490392980204

namespace A023491

/-- `A023493(n)-(A000071(n+1)+1)` -/
def P4105373490392980204.Spec : Prop :=
  ∀ n, P4105373490392980204.a n = A023491 n

end A023491

/-! ## A023491.P8126867410129506802

`A090946(n+2)+A023494(n)-A023490(n)`
-/

namespace A023491.P8126867410129506802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + (A023494 n - A023490 n)

end

end A023491.P8126867410129506802

namespace A023491

/-- `A090946(n+2)+A023494(n)-A023490(n)` -/
def P8126867410129506802.Spec : Prop :=
  ∀ n, P8126867410129506802.a n = A023491 n

end A023491

/-! ## A023491.P6849948472942200052

`A022801(n+2)+A023490(n)-A023490(n+1)`
-/

namespace A023491.P6849948472942200052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 2) + (A023490 n - A023490 (n + 1))

end

end A023491.P6849948472942200052

namespace A023491

/-- `A022801(n+2)+A023490(n)-A023490(n+1)` -/
def P6849948472942200052.Spec : Prop :=
  ∀ n, P6849948472942200052.a n = A023491 n

end A023491

/-!
# A023493: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 1) and d(n) = (n-th non-Lucas number).

The programs for A023493, the canonical program `A023493.P16959634899048244030` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023493 has offset 0).

The definition of A023493 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023493.P16959634899048244030

`A000032(n+2)+A090946(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023493

/-- `A000032(n+2)+A090946(n+2)` -/
def P16959634899048244030.Spec : Prop :=
  ∀ n, P16959634899048244030.a n = A023493 n

theorem P16959634899048244030.correct : P16959634899048244030.Spec := by
  intro n
  simp only [A023493]

end A023493

/-! ## A023493.P17916472434983549762

`A023494(n)-A000045(n)`
-/

namespace A023493.P17916472434983549762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023494 n - A000045 n

end

end A023493.P17916472434983549762

namespace A023493

/-- `A023494(n)-A000045(n)` -/
def P17916472434983549762.Spec : Prop :=
  ∀ n, P17916472434983549762.a n = A023493 n

end A023493

/-! ## A023493.P17511860368235688996

`A022801(n+1)+A000032(n)`
-/

namespace A023493.P17511860368235688996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 1) + A000032 n

end

end A023493.P17511860368235688996

namespace A023493

/-- `A022801(n+1)+A000032(n)` -/
def P17511860368235688996.Spec : Prop :=
  ∀ n, P17511860368235688996.a n = A023493 n

end A023493

/-! ## A023493.P526577153605745127

`A023491(n)+A000045(n+1)`
-/

namespace A023493.P526577153605745127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n + A000045 (n + 1)

end

end A023493.P526577153605745127

namespace A023493

/-- `A023491(n)+A000045(n+1)` -/
def P526577153605745127.Spec : Prop :=
  ∀ n, P526577153605745127.a n = A023493 n

end A023493

/-! ## A023493.P14916403178020870768

`A212804(n+2)+A023491(n)`
-/

namespace A023493.P14916403178020870768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A023491 n

end

end A023493.P14916403178020870768

namespace A023493

/-- `A212804(n+2)+A023491(n)` -/
def P14916403178020870768.Spec : Prop :=
  ∀ n, P14916403178020870768.a n = A023493 n

end A023493

/-! ## A023493.P16033673362719718438

`A023491(n)+Δ[A000071(n+2)]`
-/

namespace A023493.P16033673362719718438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n + (f1 (n + 1) - f1 n)

end

end A023493.P16033673362719718438

namespace A023493

/-- `A023491(n)+Δ[A000071(n+2)]` -/
def P16033673362719718438.Spec : Prop :=
  ∀ n, P16033673362719718438.a n = A023493 n

end A023493

/-! ## A023493.P1513581621597372348

`A023490(n)+∑[2*A212804(n)]`
-/

namespace A023493.P1513581621597372348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023493.P1513581621597372348

namespace A023493

/-- `A023490(n)+∑[2*A212804(n)]` -/
def P1513581621597372348.Spec : Prop :=
  ∀ n, P1513581621597372348.a n = A023493 n

end A023493

/-! ## A023493.P1457263736704173968

`A001612(n+2)+comp[A001610(n)]`
-/

namespace A023493.P1457263736704173968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023493.P1457263736704173968

namespace A023493

/-- `A001612(n+2)+comp[A001610(n)]` -/
def P1457263736704173968.Spec : Prop :=
  ∀ n, P1457263736704173968.a n = A023493 n

end A023493

/-! ## A023493.P13054186389524804883

`A000071(n+1)+A023491(n)+1`
-/

namespace A023493.P13054186389524804883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A023491 n + 1)

end

end A023493.P13054186389524804883

namespace A023493

/-- `A000071(n+1)+A023491(n)+1` -/
def P13054186389524804883.Spec : Prop :=
  ∀ n, P13054186389524804883.a n = A023493 n

end A023493

/-! ## A023493.P18425022494121466910

`A090946(n+2)+A000204(n+2)`
-/

namespace A023493.P18425022494121466910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + A000204 (n + 2)

end

end A023493.P18425022494121466910

namespace A023493

/-- `A090946(n+2)+A000204(n+2)` -/
def P18425022494121466910.Spec : Prop :=
  ∀ n, P18425022494121466910.a n = A023493 n

end A023493

/-! ## A023493.P12438480977283084413

`A090946(n+2)+A082587(2*n)`
-/

namespace A023493.P12438480977283084413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + A082587 (2 * n)

end

end A023493.P12438480977283084413

namespace A023493

/-- `A090946(n+2)+A082587(2*n)` -/
def P12438480977283084413.Spec : Prop :=
  ∀ n, P12438480977283084413.a n = A023493 n

end A023493

/-! ## A023493.P5679787981433024643

`A000032(n+2)+comp[A001610(n)]+1`
-/

namespace A023493.P5679787981433024643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A023493.P5679787981433024643

namespace A023493

/-- `A000032(n+2)+comp[A001610(n)]+1` -/
def P5679787981433024643.Spec : Prop :=
  ∀ n, P5679787981433024643.a n = A023493 n

end A023493

/-! ## A023493.P1643784871800374740

`A000032(n)+A023490(n)+A000045(n)`
-/

namespace A023493.P1643784871800374740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A023490 n + A000045 n)

end

end A023493.P1643784871800374740

namespace A023493

/-- `A000032(n)+A023490(n)+A000045(n)` -/
def P1643784871800374740.Spec : Prop :=
  ∀ n, P1643784871800374740.a n = A023493 n

end A023493

/-! ## A023493.P2372386530364835406

`A020695(n)+A023490(n)-A000045(n)`
-/

namespace A023493.P2372386530364835406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (A023490 n - A000045 n)

end

end A023493.P2372386530364835406

namespace A023493

/-- `A020695(n)+A023490(n)-A000045(n)` -/
def P2372386530364835406.Spec : Prop :=
  ∀ n, P2372386530364835406.a n = A023493 n

end A023493

/-! ## A023493.P10482393972054897291

`A023491(n)+A023491(n)-A023490(n)`
-/

namespace A023493.P10482393972054897291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n + (A023491 n - A023490 n)

end

end A023493.P10482393972054897291

namespace A023493

/-- `A023491(n)+A023491(n)-A023490(n)` -/
def P10482393972054897291.Spec : Prop :=
  ∀ n, P10482393972054897291.a n = A023493 n

end A023493

/-! ## A023493.P2031386506190382240

`A023490(n)+A023494(n)-A022801(n+1)`
-/

namespace A023493.P2031386506190382240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + (A023494 n - A022801 (n + 1))

end

end A023493.P2031386506190382240

namespace A023493

/-- `A023490(n)+A023494(n)-A022801(n+1)` -/
def P2031386506190382240.Spec : Prop :=
  ∀ n, P2031386506190382240.a n = A023493 n

end A023493

/-! ## A023493.P10161307265163754929

`A004695(n+1)+A023494(n)-A173714(n)`
-/

namespace A023493.P10161307265163754929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + (A023494 n - A173714 n)

end

end A023493.P10161307265163754929

namespace A023493

/-- `A004695(n+1)+A023494(n)-A173714(n)` -/
def P10161307265163754929.Spec : Prop :=
  ∀ n, P10161307265163754929.a n = A023493 n

end A023493

/-! ## A023493.P10327677959175838422

`A000045(n+1)+A023490(n)+A000045(n+1)`
-/

namespace A023493.P10327677959175838422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A023490 n + A000045 (n + 1))

end

end A023493.P10327677959175838422

namespace A023493

/-- `A000045(n+1)+A023490(n)+A000045(n+1)` -/
def P10327677959175838422.Spec : Prop :=
  ∀ n, P10327677959175838422.a n = A023493 n

end A023493

/-! ## A023493.P10223566777304763300

`A099925(n+1)+A099925(n)+A090946(n+2)`
-/

namespace A023493.P10223566777304763300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 (n + 1) + (A099925 n + A090946 (n + 2))

end

end A023493.P10223566777304763300

namespace A023493

/-- `A099925(n+1)+A099925(n)+A090946(n+2)` -/
def P10223566777304763300.Spec : Prop :=
  ∀ n, P10223566777304763300.a n = A023493 n

end A023493

/-! ## A023493.P4631878069989876930

`A022801(n+2)+A023494(n)-A023491(n+1)`
-/

namespace A023493.P4631878069989876930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 2) + (A023494 n - A023491 (n + 1))

end

end A023493.P4631878069989876930

namespace A023493

/-- `A022801(n+2)+A023494(n)-A023491(n+1)` -/
def P4631878069989876930.Spec : Prop :=
  ∀ n, P4631878069989876930.a n = A023493 n

end A023493

/-!
# A023494: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2) and d(n) = (n-th non-Lucas number).

The programs for A023494, the canonical program `A023494.P3154077987958110990` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023494 has offset 0).

The definition of A023494 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023494.P3154077987958110990

`A000045(n+4)+A090946(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023494

/-- `A000045(n+4)+A090946(n+2)` -/
def P3154077987958110990.Spec : Prop :=
  ∀ n, P3154077987958110990.a n = A023494 n

theorem P3154077987958110990.correct : P3154077987958110990.Spec := by
  intro n
  simp only [A023494]

end A023494

/-! ## A023494.P18437832791671480791

`A023493(n)+A000045(n)`
-/

namespace A023494.P18437832791671480791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n + A000045 n

end

end A023494.P18437832791671480791

namespace A023494

/-- `A023493(n)+A000045(n)` -/
def P18437832791671480791.Spec : Prop :=
  ∀ n, P18437832791671480791.a n = A023494 n

end A023494

/-! ## A023494.P13548815264732712194

`A023490(n)+A020695(n)`
-/

namespace A023494.P13548815264732712194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + A020695 n

end

end A023494.P13548815264732712194

namespace A023494

/-- `A023490(n)+A020695(n)` -/
def P13548815264732712194.Spec : Prop :=
  ∀ n, P13548815264732712194.a n = A023494 n

end A023494

/-! ## A023494.P18001088641621538789

`A023491(n)+Δ[A001911(n)]`
-/

namespace A023494.P18001088641621538789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n + (f1 (n + 1) - f1 n)

end

end A023494.P18001088641621538789

namespace A023494

/-- `A023491(n)+Δ[A001911(n)]` -/
def P18001088641621538789.Spec : Prop :=
  ∀ n, P18001088641621538789.a n = A023494 n

theorem P18001088641621538789.correct : P18001088641621538789.Spec := by
  intro n
  simp only [A023494, Nat.add_sub_cancel, A023494.P18001088641621538789.f1, A023494.P18001088641621538789.a, A023494.P3154077987958110990.a, A000045, A000045.P11838749114346432762.a, A001911, A001911.P2299546665043418976.a, A023491, A023491.P5893731132072105009.a, A090946, A090946.P6276582592417008834.f2, A090946.P6276582592417008834.f1, A090946.P6276582592417008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023494

/-! ## A023494.P627648780847391849

`A212804(n+1)+A023493(n)`
-/

namespace A023494.P627648780847391849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A023493 n

end

end A023494.P627648780847391849

namespace A023494

/-- `A212804(n+1)+A023493(n)` -/
def P627648780847391849.Spec : Prop :=
  ∀ n, P627648780847391849.a n = A023494 n

end A023494

/-! ## A023494.P10813299839180413626

`A023491(n)+A000045(n+2)`
-/

namespace A023494.P10813299839180413626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 n + A000045 (n + 2)

end

end A023494.P10813299839180413626

namespace A023494

/-- `A023491(n)+A000045(n+2)` -/
def P10813299839180413626.Spec : Prop :=
  ∀ n, P10813299839180413626.a n = A023494 n

end A023494

/-! ## A023494.P16060728187747383123

`A001611(n)+A023493(n)-1`
-/

namespace A023494.P16060728187747383123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A023493 n - 1)

end

end A023494.P16060728187747383123

namespace A023494

/-- `A001611(n)+A023493(n)-1` -/
def P16060728187747383123.Spec : Prop :=
  ∀ n, P16060728187747383123.a n = A023494 n

end A023494

/-! ## A023494.P17786257057007499230

`A023490(n)+A000045(n+3)`
-/

namespace A023494.P17786257057007499230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + A000045 (n + 3)

end

end A023494.P17786257057007499230

namespace A023494

/-- `A023490(n)+A000045(n+3)` -/
def P17786257057007499230.Spec : Prop :=
  ∀ n, P17786257057007499230.a n = A023494 n

end A023494

/-! ## A023494.P5885823790776517027

`A002062(n)+A023493(n)-n`
-/

namespace A023494.P5885823790776517027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + (A023493 n - (n : ℤ))

end

end A023494.P5885823790776517027

namespace A023494

/-- `A002062(n)+A023493(n)-n` -/
def P5885823790776517027.Spec : Prop :=
  ∀ n, P5885823790776517027.a n = A023494 n

end A023494

/-! ## A023494.P8290268459847347204

`A023493(n)+Δ[A000071(n+1)]`
-/

namespace A023494.P8290268459847347204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n + (f1 (n + 1) - f1 n)

end

end A023494.P8290268459847347204

namespace A023494

/-- `A023493(n)+Δ[A000071(n+1)]` -/
def P8290268459847347204.Spec : Prop :=
  ∀ n, P8290268459847347204.a n = A023494 n

end A023494

/-! ## A023494.P2704112298847440247

`A090946(n+2)+A020695(n+1)`
-/

namespace A023494.P2704112298847440247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + A020695 (n + 1)

end

end A023494.P2704112298847440247

namespace A023494

/-- `A090946(n+2)+A020695(n+1)` -/
def P2704112298847440247.Spec : Prop :=
  ∀ n, P2704112298847440247.a n = A023494 n

end A023494

/-! ## A023494.P7452307551401710826

`A023493(n)+lcm(A167808(n), A167816(n))`
-/

namespace A023494.P7452307551401710826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n + (Int.lcm (A167808 n) (A167816 n) : ℤ)

end

end A023494.P7452307551401710826

namespace A023494

/-- `A023493(n)+lcm(A167808(n), A167816(n))` -/
def P7452307551401710826.Spec : Prop :=
  ∀ n, P7452307551401710826.a n = A023494 n

end A023494

/-! ## A023494.P474385556988409857

`A022801(n+1)+A000032(n)+A000045(n)`
-/

namespace A023494.P474385556988409857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 1) + (A000032 n + A000045 n)

end

end A023494.P474385556988409857

namespace A023494

/-- `A022801(n+1)+A000032(n)+A000045(n)` -/
def P474385556988409857.Spec : Prop :=
  ∀ n, P474385556988409857.a n = A023494 n

end A023494

/-! ## A023494.P7312514536198470335

`A022801(n+1)+A023493(n)-A023490(n)`
-/

namespace A023494.P7312514536198470335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 1) + (A023493 n - A023490 n)

end

end A023494.P7312514536198470335

namespace A023494

/-- `A022801(n+1)+A023493(n)-A023490(n)` -/
def P7312514536198470335.Spec : Prop :=
  ∀ n, P7312514536198470335.a n = A023494 n

end A023494

/-! ## A023494.P2386998371493097930

`A023490(n)+A023491(n)-A090946(n+2)`
-/

namespace A023494.P2386998371493097930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + (A023491 n - A090946 (n + 2))

end

end A023494.P2386998371493097930

namespace A023494

/-- `A023490(n)+A023491(n)-A090946(n+2)` -/
def P2386998371493097930.Spec : Prop :=
  ∀ n, P2386998371493097930.a n = A023494 n

end A023494

/-! ## A023494.P11922005299370351676

`A023491(n+1)+A023491(n)-A023490(n+1)`
-/

namespace A023494.P11922005299370351676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 (n + 1) + (A023491 n - A023490 (n + 1))

end

end A023494.P11922005299370351676

namespace A023494

/-- `A023491(n+1)+A023491(n)-A023490(n+1)` -/
def P11922005299370351676.Spec : Prop :=
  ∀ n, P11922005299370351676.a n = A023494 n

theorem P11922005299370351676.correct : P11922005299370351676.Spec := by
  intro n
  simp only [A023494, Nat.add_sub_cancel, A023494.P11922005299370351676.a, A023494.P3154077987958110990.a, A000045, A000045.P11838749114346432762.a, A023490, A023490.P988857930729845770.a, A023491, A023491.P5893731132072105009.a, A090946, A090946.P6276582592417008834.f2, A090946.P6276582592417008834.f1, A090946.P6276582592417008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023494

/-! ## A023494.P4495490223497600185

`A023490(n+1)+A023490(n)-A057854(n+1)`
-/

namespace A023494.P4495490223497600185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 (n + 1) + (A023490 n - A057854 (n + 1))

end

end A023494.P4495490223497600185

namespace A023494

/-- `A023490(n+1)+A023490(n)-A057854(n+1)` -/
def P4495490223497600185.Spec : Prop :=
  ∀ n, P4495490223497600185.a n = A023494 n

end A023494

/-! ## A023494.P15361915324527848939

`A023491(n+1)+A090946(n+2)-A057854(n+1)`
-/

namespace A023494.P15361915324527848939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 (n + 1) + (A090946 (n + 2) - A057854 (n + 1))

end

end A023494.P15361915324527848939

namespace A023494

/-- `A023491(n+1)+A090946(n+2)-A057854(n+1)` -/
def P15361915324527848939.Spec : Prop :=
  ∀ n, P15361915324527848939.a n = A023494 n

theorem P15361915324527848939.correct : P15361915324527848939.Spec := by
  intro n
  simp only [A023494, Nat.add_sub_cancel, A023494.P15361915324527848939.a, A023494.P3154077987958110990.a, A000045, A000045.P11838749114346432762.a, A023491, A023491.P5893731132072105009.a, A057854, A057854.P3516327272515158544.a, A090946, A090946.P6276582592417008834.f2, A090946.P6276582592417008834.f1, A090946.P6276582592417008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023494

/-! ## A023494.P5929387682362395860

`A023493(n)+A319359(A217221(2*n)+1)+A001611(n)`
-/

namespace A023494.P5929387682362395860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n + (A319359 (A217221 (2 * n) + 1).toNat + A001611 n)

end

end A023494.P5929387682362395860

namespace A023494

/-- `A023493(n)+A319359(A217221(2*n)+1)+A001611(n)` -/
def P5929387682362395860.Spec : Prop :=
  ∀ n, P5929387682362395860.a n = A023494 n

end A023494

/-!
# A023495: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 3) and d(n) = (n-th non-Lucas number).

The programs for A023495, the canonical program `A023495.P13551267996903774427` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023495 has offset 0).

The definition of A023495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023495.P13551267996903774427

`A022802(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023495

/-- `A022802(n+2)` -/
def P13551267996903774427.Spec : Prop :=
  ∀ n, P13551267996903774427.a n = A023495 n

theorem P13551267996903774427.correct : P13551267996903774427.Spec := by
  intro n
  simp only [A023495]

end A023495

/-! ## A023495.P5067074673563166529

`A023490(n)+A020701(n)`
-/

namespace A023495.P5067074673563166529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + A020701 n

end

end A023495.P5067074673563166529

namespace A023495

/-- `A023490(n)+A020701(n)` -/
def P5067074673563166529.Spec : Prop :=
  ∀ n, P5067074673563166529.a n = A023495 n

end A023495

/-! ## A023495.P16864576174728546940

`A023494(n)+Δ[A001911(n)]`
-/

namespace A023495.P16864576174728546940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023494 n + (f1 (n + 1) - f1 n)

end

end A023495.P16864576174728546940

namespace A023495

/-- `A023494(n)+Δ[A001911(n)]` -/
def P16864576174728546940.Spec : Prop :=
  ∀ n, P16864576174728546940.a n = A023495 n

end A023495

/-! ## A023495.P8469430109453457729

`A023493(n)+A000032(n+1)`
-/

namespace A023495.P8469430109453457729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n + A000032 (n + 1)

end

end A023495.P8469430109453457729

namespace A023495

/-- `A023493(n)+A000032(n+1)` -/
def P8469430109453457729.Spec : Prop :=
  ∀ n, P8469430109453457729.a n = A023495 n

end A023495

/-! ## A023495.P3074173588742451859

`A023493(n)+A000204(n+1)`
-/

namespace A023495.P3074173588742451859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n + A000204 (n + 1)

end

end A023495.P3074173588742451859

namespace A023495

/-- `A023493(n)+A000204(n+1)` -/
def P3074173588742451859.Spec : Prop :=
  ∀ n, P3074173588742451859.a n = A023495 n

end A023495

/-! ## A023495.P14968290096885080687

`A023490(n)+A020695(n+1)`
-/

namespace A023495.P14968290096885080687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + A020695 (n + 1)

end

end A023495.P14968290096885080687

namespace A023495

/-- `A023490(n)+A020695(n+1)` -/
def P14968290096885080687.Spec : Prop :=
  ∀ n, P14968290096885080687.a n = A023495 n

end A023495

/-! ## A023495.P3693525411400063620

`A023494(n)+A000045(n+2)`
-/

namespace A023495.P3693525411400063620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023494 n + A000045 (n + 2)

end

end A023495.P3693525411400063620

namespace A023495

/-- `A023494(n)+A000045(n+2)` -/
def P3693525411400063620.Spec : Prop :=
  ∀ n, P3693525411400063620.a n = A023495 n

end A023495

/-! ## A023495.P9343102587981761827

`A023490(n)+A000045(n+4)`
-/

namespace A023495.P9343102587981761827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + A000045 (n + 4)

end

end A023495.P9343102587981761827

namespace A023495

/-- `A023490(n)+A000045(n+4)` -/
def P9343102587981761827.Spec : Prop :=
  ∀ n, P9343102587981761827.a n = A023495 n

end A023495

/-! ## A023495.P8326842723729434510

`A023496(n+1)-∑[A212804(n)]`
-/

namespace A023495.P8326842723729434510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023495.P8326842723729434510

namespace A023495

/-- `A023496(n+1)-∑[A212804(n)]` -/
def P8326842723729434510.Spec : Prop :=
  ∀ n, P8326842723729434510.a n = A023495 n

end A023495

/-! ## A023495.P13250740158379444897

`A001612(n+3)+comp[A001610(n)]`
-/

namespace A023495.P13250740158379444897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A023495.P13250740158379444897

namespace A023495

/-- `A001612(n+3)+comp[A001610(n)]` -/
def P13250740158379444897.Spec : Prop :=
  ∀ n, P13250740158379444897.a n = A023495 n

end A023495

/-! ## A023495.P9632178595140509470

`A022801(n+1)+A000032(n+2)`
-/

namespace A023495.P9632178595140509470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 1) + A000032 (n + 2)

end

end A023495.P9632178595140509470

namespace A023495

/-- `A022801(n+1)+A000032(n+2)` -/
def P9632178595140509470.Spec : Prop :=
  ∀ n, P9632178595140509470.a n = A023495 n

end A023495

/-! ## A023495.P11047351306483106622

`A022801(n+1)+A000204(n+2)`
-/

namespace A023495.P11047351306483106622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 1) + A000204 (n + 2)

end

end A023495.P11047351306483106622

namespace A023495

/-- `A022801(n+1)+A000204(n+2)` -/
def P11047351306483106622.Spec : Prop :=
  ∀ n, P11047351306483106622.a n = A023495 n

end A023495

/-! ## A023495.P12258815995586952891

`A023496(n+1)-A000045(n+1)`
-/

namespace A023495.P12258815995586952891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 (n + 1) - A000045 (n + 1)

end

end A023495.P12258815995586952891

namespace A023495

/-- `A023496(n+1)-A000045(n+1)` -/
def P12258815995586952891.Spec : Prop :=
  ∀ n, P12258815995586952891.a n = A023495 n

theorem P12258815995586952891.correct : P12258815995586952891.Spec := by
  intro n
  simp only [A023495, Nat.add_sub_cancel, A023495.P12258815995586952891.a, A023495.P13551267996903774427.a, A000045, A000045.P11838749114346432762.a, A022802, A022802.P5209542318991673861.f1, A022802.P5209542318991673861.f2, A022802.P5209542318991673861.a, A023496, A023496.P2103762783943479263.a, A000032, A000032.P8352177345629330861.a, A001610, A001610.P768124038299274592.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023495

/-! ## A023495.P12857676590568853356

`A288219(n+1)+A090946(n+2)`
-/

namespace A023495.P12857676590568853356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 (n + 1) + A090946 (n + 2)

end

end A023495.P12857676590568853356

namespace A023495

/-- `A288219(n+1)+A090946(n+2)` -/
def P12857676590568853356.Spec : Prop :=
  ∀ n, P12857676590568853356.a n = A023495 n

end A023495

/-! ## A023495.P15084369267705975745

`A000032(n+3)+A090946(n+2)`
-/

namespace A023495.P15084369267705975745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 3) + A090946 (n + 2)

end

end A023495.P15084369267705975745

namespace A023495

/-- `A000032(n+3)+A090946(n+2)` -/
def P15084369267705975745.Spec : Prop :=
  ∀ n, P15084369267705975745.a n = A023495 n

end A023495

/-! ## A023495.P3922654560013048284

`A090946(n+2)+A000204(n+3)`
-/

namespace A023495.P3922654560013048284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + A000204 (n + 3)

end

end A023495.P3922654560013048284

namespace A023495

/-- `A090946(n+2)+A000204(n+3)` -/
def P3922654560013048284.Spec : Prop :=
  ∀ n, P3922654560013048284.a n = A023495 n

end A023495

/-! ## A023495.P14903491798902883228

`A023496(n+1)+1-A001611(n+1)`
-/

namespace A023495.P14903491798902883228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 (n + 1) + (1 - A001611 (n + 1))

end

end A023495.P14903491798902883228

namespace A023495

/-- `A023496(n+1)+1-A001611(n+1)` -/
def P14903491798902883228.Spec : Prop :=
  ∀ n, P14903491798902883228.a n = A023495 n

theorem P14903491798902883228.correct : P14903491798902883228.Spec := by
  intro n
  simp only [A023495, Nat.add_sub_cancel, A023495.P14903491798902883228.a, A023495.P13551267996903774427.a, A001611, A001611.P16593652898942925329.a, A022802, A022802.P5209542318991673861.f1, A022802.P5209542318991673861.f2, A022802.P5209542318991673861.a, A023496, A023496.P2103762783943479263.a, A000032, A000032.P8352177345629330861.a, A000045, A000045.P11838749114346432762.a, A001610, A001610.P768124038299274592.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023495

/-! ## A023495.P4024426230186671204

`A023494(n)+A023494(n)-A023491(n)`
-/

namespace A023495.P4024426230186671204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023494 n + (A023494 n - A023491 n)

end

end A023495.P4024426230186671204

namespace A023495

/-- `A023494(n)+A023494(n)-A023491(n)` -/
def P4024426230186671204.Spec : Prop :=
  ∀ n, P4024426230186671204.a n = A023495 n

end A023495

/-! ## A023495.P1382973466935714429

`A023496(n+1)+A023490(n)-A023491(n)`
-/

namespace A023495.P1382973466935714429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 (n + 1) + (A023490 n - A023491 n)

end

end A023495.P1382973466935714429

namespace A023495

/-- `A023496(n+1)+A023490(n)-A023491(n)` -/
def P1382973466935714429.Spec : Prop :=
  ∀ n, P1382973466935714429.a n = A023495 n

end A023495

/-! ## A023495.P4696210110499382968

`A023490(n)+A023494(n)-A090946(n+2)`
-/

namespace A023495.P4696210110499382968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + (A023494 n - A090946 (n + 2))

end

end A023495.P4696210110499382968

namespace A023495

/-- `A023490(n)+A023494(n)-A090946(n+2)` -/
def P4696210110499382968.Spec : Prop :=
  ∀ n, P4696210110499382968.a n = A023495 n

end A023495

/-!
# A023496: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2) and d(n) = (n-th number that is 1 or is not a Lucas number).

The programs for A023496, the canonical program `A023496.P2103762783943479263` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023496 has offset 0).

The definition of A023496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023496.P2103762783943479263

`A022802(n+1)+A000045(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023496

/-- `A022802(n+1)+A000045(n)` -/
def P2103762783943479263.Spec : Prop :=
  ∀ n, P2103762783943479263.a n = A023496 n

theorem P2103762783943479263.correct : P2103762783943479263.Spec := by
  intro n
  simp only [A023496]

end A023496

/-! ## A023496.P6753860896503529183

`A022802(n+1)+abs(A236191(n))`
-/

namespace A023496.P6753860896503529183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022802 (n + 1) + |A236191 n|

end

end A023496.P6753860896503529183

namespace A023496

/-- `A022802(n+1)+abs(A236191(n))` -/
def P6753860896503529183.Spec : Prop :=
  ∀ n, P6753860896503529183.a n = A023496 n

end A023496

/-! ## A023496.P4670453357555352480

`A022801(A028310(n))+A000285(n)`
-/

namespace A023496.P4670453357555352480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (A028310 n).toNat + A000285 n

end

end A023496.P4670453357555352480

namespace A023496

/-- `A022801(A028310(n))+A000285(n)` -/
def P4670453357555352480.Spec : Prop :=
  ∀ n, P4670453357555352480.a n = A023496 n

end A023496

/-! ## A023496.P12342425403823922980

`A022801(n+1)+A022802(n+1)-A023490(n)`
-/

namespace A023496.P12342425403823922980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 1) + (A022802 (n + 1) - A023490 n)

end

end A023496.P12342425403823922980

namespace A023496

/-- `A022801(n+1)+A022802(n+1)-A023490(n)` -/
def P12342425403823922980.Spec : Prop :=
  ∀ n, P12342425403823922980.a n = A023496 n

end A023496

/-! ## A023496.P16273294603955535172

`A022802(n+1)+A023491(n+1)-A022801(n+2)`
-/

namespace A023496.P16273294603955535172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022802 (n + 1) + (A023491 (n + 1) - A022801 (n + 2))

end

end A023496.P16273294603955535172

namespace A023496

/-- `A022802(n+1)+A023491(n+1)-A022801(n+2)` -/
def P16273294603955535172.Spec : Prop :=
  ∀ n, P16273294603955535172.a n = A023496 n

end A023496

/-! ## A023496.P16069364488586584000

`A023497(n)-A000045(n+2)`
-/

namespace A023496.P16069364488586584000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023497 n - A000045 (n + 2)

end

end A023496.P16069364488586584000

namespace A023496

/-- `A023497(n)-A000045(n+2)` -/
def P16069364488586584000.Spec : Prop :=
  ∀ n, P16069364488586584000.a n = A023496 n

end A023496

/-! ## A023496.P9280411569649521261

`A090946(n+2)+A023497(n)-A023490(n)`
-/

namespace A023496.P9280411569649521261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 2) + (A023497 n - A023490 n)

end

end A023496.P9280411569649521261

namespace A023496

/-- `A090946(n+2)+A023497(n)-A023490(n)` -/
def P9280411569649521261.Spec : Prop :=
  ∀ n, P9280411569649521261.a n = A023496 n

end A023496

/-! ## A023496.P16494821172789746662

`A023490(n+1)+A023497(n)-A023491(n+1)`
-/

namespace A023496.P16494821172789746662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 (n + 1) + (A023497 n - A023491 (n + 1))

end

end A023496.P16494821172789746662

namespace A023496

/-- `A023490(n+1)+A023497(n)-A023491(n+1)` -/
def P16494821172789746662.Spec : Prop :=
  ∀ n, P16494821172789746662.a n = A023496 n

theorem P16494821172789746662.correct : P16494821172789746662.Spec := by
  intro n
  simp only [A023496, Nat.add_sub_cancel, A023496.P16494821172789746662.a, A023496.P2103762783943479263.a, A000045, A000045.P11838749114346432762.a, A022802, A022802.P5209542318991673861.f1, A022802.P5209542318991673861.f2, A022802.P5209542318991673861.a, A023490, A023490.P988857930729845770.a, A023491, A023491.P5893731132072105009.a, A023497, A023497.P14393320893270749846.f1, A023497.P14393320893270749846.a, A000032, A000032.P8352177345629330861.a, A001610, A001610.P768124038299274592.a, A001911, A001911.P2299546665043418976.a, A090946, A090946.P6276582592417008834.f2, A090946.P6276582592417008834.f1, A090946.P6276582592417008834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023496

/-! ## A023496.P3321485638512130816

`A022802(n+1)+sqrt(A007598(n))`
-/

namespace A023496.P3321485638512130816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A022802 (n + 1) : ℝ) + Real.sqrt (A007598 n : ℝ)

end

end A023496.P3321485638512130816

namespace A023496

/-- `A022802(n+1)+sqrt(A007598(n))` -/
def P3321485638512130816.Spec : Prop :=
  ∀ n, P3321485638512130816.a n = (A023496 n : ℝ)

end A023496

/-!
# A023497: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 3) and d(n) = (n-th number that is 1 or is not a Lucas number).

The programs for A023497, the canonical program `A023497.P14393320893270749846` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023497 has offset 0).

The definition of A023497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023497.P14393320893270749846

`A023496(n)+Δ[A001911(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023497

/-- `A023496(n)+Δ[A001911(n)]` -/
def P14393320893270749846.Spec : Prop :=
  ∀ n, P14393320893270749846.a n = A023497 n

theorem P14393320893270749846.correct : P14393320893270749846.Spec := by
  intro n
  simp only [A023497]

end A023497

/-! ## A023497.P5881109305589723454

`A023496(n)+Δ[A020695(n)]`
-/

namespace A023497.P5881109305589723454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n + (f1 (n + 1) - f1 n)

end

end A023497.P5881109305589723454

namespace A023497

/-- `A023496(n)+Δ[A020695(n)]` -/
def P5881109305589723454.Spec : Prop :=
  ∀ n, P5881109305589723454.a n = A023497 n

end A023497

/-! ## A023497.P11148104228290563149

`A023496(n)+Δ[A048577(n)]`
-/

namespace A023497.P11148104228290563149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n + (f1 (n + 1) - f1 n)

end

end A023497.P11148104228290563149

namespace A023497

/-- `A023496(n)+Δ[A048577(n)]` -/
def P11148104228290563149.Spec : Prop :=
  ∀ n, P11148104228290563149.a n = A023497 n

end A023497

/-! ## A023497.P12533620351054748649

`A023496(n)+record[A212804(n)]`
-/

namespace A023497.P12533620351054748649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023497.P12533620351054748649

namespace A023497

/-- `A023496(n)+record[A212804(n)]` -/
def P12533620351054748649.Spec : Prop :=
  ∀ n, P12533620351054748649.a n = A023497 n

end A023497

/-! ## A023497.P4664117821517075508

`A023496(n)+record[A247049(n)]`
-/

namespace A023497.P4664117821517075508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023497.P4664117821517075508

namespace A023497

/-- `A023496(n)+record[A247049(n)]` -/
def P4664117821517075508.Spec : Prop :=
  ∀ n, P4664117821517075508.a n = A023497 n

end A023497

/-! ## A023497.P10452287523524182448

`A023496(n)+A000045(n+2)`
-/

namespace A023497.P10452287523524182448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n + A000045 (n + 2)

end

end A023497.P10452287523524182448

namespace A023497

/-- `A023496(n)+A000045(n+2)` -/
def P10452287523524182448.Spec : Prop :=
  ∀ n, P10452287523524182448.a n = A023497 n

end A023497

/-! ## A023497.P9489343485003588436

`A022802(n+1)+A000032(n+1)`
-/

namespace A023497.P9489343485003588436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022802 (n + 1) + A000032 (n + 1)

end

end A023497.P9489343485003588436

namespace A023497

/-- `A022802(n+1)+A000032(n+1)` -/
def P9489343485003588436.Spec : Prop :=
  ∀ n, P9489343485003588436.a n = A023497 n

end A023497

/-! ## A023497.P536301289013329159

`A022802(n+1)+A000204(n+1)`
-/

namespace A023497.P536301289013329159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022802 (n + 1) + A000204 (n + 1)

end

end A023497.P536301289013329159

namespace A023497

/-- `A022802(n+1)+A000204(n+1)` -/
def P536301289013329159.Spec : Prop :=
  ∀ n, P536301289013329159.a n = A023497 n

end A023497

/-! ## A023497.P736293967091647210

`A022802(n+1)+A022112(n)/2`
-/

namespace A023497.P736293967091647210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022802 (n + 1) : ℚ) + (A022112 n : ℚ) / 2

end

end A023497.P736293967091647210

namespace A023497

/-- `A022802(n+1)+A022112(n)/2` -/
def P736293967091647210.Spec : Prop :=
  ∀ n, P736293967091647210.a n = (A023497 n : ℚ)

end A023497

/-! ## A023497.P10973524443290593028

`A023496(n)+∑[A212804(n+1)]+1`
-/

namespace A023497.P10973524443290593028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023496 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A023497.P10973524443290593028

namespace A023497

/-- `A023496(n)+∑[A212804(n+1)]+1` -/
def P10973524443290593028.Spec : Prop :=
  ∀ n, P10973524443290593028.a n = A023497 n

end A023497

/-! ## A023497.P13939963726779434666

`A000032(n)+A023496(n)+Δ[A212804(n)]`
-/

namespace A023497.P13939963726779434666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A023496 n + (f1 (n + 1) - f1 n))

end

end A023497.P13939963726779434666

namespace A023497

/-- `A000032(n)+A023496(n)+Δ[A212804(n)]` -/
def P13939963726779434666.Spec : Prop :=
  ∀ n, P13939963726779434666.a n = A023497 n

end A023497

/-! ## A023497.P6787275694730644346

`A022801(A028310(n))+2*A000204(n+1)`
-/

namespace A023497.P6787275694730644346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (A028310 n).toNat + 2 * A000204 (n + 1)

end

end A023497.P6787275694730644346

namespace A023497

/-- `A022801(A028310(n))+2*A000204(n+1)` -/
def P6787275694730644346.Spec : Prop :=
  ∀ n, P6787275694730644346.a n = A023497 n

end A023497

/-! ## A023497.P15909996285020173555

`A023490(n)+A023496(n)-A090946(n+2)`
-/

namespace A023497.P15909996285020173555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023490 n + (A023496 n - A090946 (n + 2))

end

end A023497.P15909996285020173555

namespace A023497

/-- `A023490(n)+A023496(n)-A090946(n+2)` -/
def P15909996285020173555.Spec : Prop :=
  ∀ n, P15909996285020173555.a n = A023497 n

end A023497

/-! ## A023497.P18416909804049304791

`A023491(n+1)+A023496(n)-A023490(n+1)`
-/

namespace A023497.P18416909804049304791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023491 (n + 1) + (A023496 n - A023490 (n + 1))

end

end A023497.P18416909804049304791

namespace A023497

/-- `A023491(n+1)+A023496(n)-A023490(n+1)` -/
def P18416909804049304791.Spec : Prop :=
  ∀ n, P18416909804049304791.a n = A023497 n

theorem P18416909804049304791.correct : P18416909804049304791.Spec := by
  intro n
  simp only [A023497, Nat.add_sub_cancel, A023497.P18416909804049304791.a, A023497.P14393320893270749846.f1, A023497.P14393320893270749846.a, A001911, A001911.P2299546665043418976.a, A023490, A023490.P988857930729845770.a, A023491, A023491.P5893731132072105009.a, A023496, A023496.P2103762783943479263.a, A000045, A000045.P11838749114346432762.a, A022802, A022802.P5209542318991673861.f1, A022802.P5209542318991673861.f2, A022802.P5209542318991673861.a, A090946, A090946.P6276582592417008834.f2, A090946.P6276582592417008834.f1, A090946.P6276582592417008834.a, A000032, A000032.P8352177345629330861.a, A001610, A001610.P768124038299274592.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023497

/-! ## A023497.P9820277504149686089

`A022802(n+1)+A022802(n+2)-A023493(n)`
-/

namespace A023497.P9820277504149686089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022802 (n + 1) + (A022802 (n + 2) - A023493 n)

end

end A023497.P9820277504149686089

namespace A023497

/-- `A022802(n+1)+A022802(n+2)-A023493(n)` -/
def P9820277504149686089.Spec : Prop :=
  ∀ n, P9820277504149686089.a n = A023497 n

end A023497

/-! ## A023497.P4975892292356940234

`A022801(n+1)+A022802(n+1)-A090946(n+2)`
-/

namespace A023497.P4975892292356940234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 1) + (A022802 (n + 1) - A090946 (n + 2))

end

end A023497.P4975892292356940234

namespace A023497

/-- `A022801(n+1)+A022802(n+1)-A090946(n+2)` -/
def P4975892292356940234.Spec : Prop :=
  ∀ n, P4975892292356940234.a n = A023497 n

end A023497

/-! ## A023497.P2990681722375954356

`A288219(n+2)-A014244(n+1)`
-/

namespace A023497.P2990681722375954356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 (n + 2) - A014244 (n + 1)

end

end A023497.P2990681722375954356

namespace A023497

/-- `A288219(n+2)-A014244(n+1)` -/
def P2990681722375954356.Spec : Prop :=
  ∀ n, P2990681722375954356.a n = A023497 n

end A023497

/-! ## A023497.P2658161691236636834

`A163695(n+3)-A014244(n+1)`
-/

namespace A023497.P2658161691236636834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163695 (n + 3) - A014244 (n + 1)

end

end A023497.P2658161691236636834

namespace A023497

/-- `A163695(n+3)-A014244(n+1)` -/
def P2658161691236636834.Spec : Prop :=
  ∀ n, P2658161691236636834.a n = A023497 n

end A023497

/-!
# A023498: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 3) and d(n) = (n-th number that is 1 or 2 or is not a Fibonacci number).

The programs for A023498, the canonical program `A023498.P15877121129977384704` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023498 has offset 0).

The definition of A023498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023498.P15877121129977384704

`A022809(n+1)+Δ[A001911(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023498

/-- `A022809(n+1)+Δ[A001911(n)]` -/
def P15877121129977384704.Spec : Prop :=
  ∀ n, P15877121129977384704.a n = A023498 n

theorem P15877121129977384704.correct : P15877121129977384704.Spec := by
  intro n
  simp only [A023498]

end A023498

/-! ## A023498.P896796248907316926

`A022809(n+1)+Δ[A020695(n)]`
-/

namespace A023498.P896796248907316926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022809 (n + 1) + (f1 (n + 1) - f1 n)

end

end A023498.P896796248907316926

namespace A023498

/-- `A022809(n+1)+Δ[A020695(n)]` -/
def P896796248907316926.Spec : Prop :=
  ∀ n, P896796248907316926.a n = A023498 n

end A023498

/-! ## A023498.P4401588090941453964

`A022809(n+1)+Δ[A048577(n)]`
-/

namespace A023498.P4401588090941453964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022809 (n + 1) + (f1 (n + 1) - f1 n)

end

end A023498.P4401588090941453964

namespace A023498

/-- `A022809(n+1)+Δ[A048577(n)]` -/
def P4401588090941453964.Spec : Prop :=
  ∀ n, P4401588090941453964.a n = A023498 n

end A023498

/-! ## A023498.P11242600530229078024

`A022809(n+1)+record[A212804(n)]`
-/

namespace A023498.P11242600530229078024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022809 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023498.P11242600530229078024

namespace A023498

/-- `A022809(n+1)+record[A212804(n)]` -/
def P11242600530229078024.Spec : Prop :=
  ∀ n, P11242600530229078024.a n = A023498 n

end A023498

/-! ## A023498.P11027265762961051807

`A022809(n+1)+A000045(n+2)`
-/

namespace A023498.P11027265762961051807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022809 (n + 1) + A000045 (n + 2)

end

end A023498.P11027265762961051807

namespace A023498

/-- `A022809(n+1)+A000045(n+2)` -/
def P11027265762961051807.Spec : Prop :=
  ∀ n, P11027265762961051807.a n = A023498 n

end A023498

/-! ## A023498.P10233531027181082398

`A022809(n+1)+record[A193923(n)]`
-/

namespace A023498.P10233531027181082398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022809 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023498.P10233531027181082398

namespace A023498

/-- `A022809(n+1)+record[A193923(n)]` -/
def P10233531027181082398.Spec : Prop :=
  ∀ n, P10233531027181082398.a n = A023498 n

end A023498

/-!
# A023499: a(n) = b(n) + d(n), where b(n) = ( (n+1)st Fibonacci number) and d(n) = (n-th number that is 1, 2, or 3, or is not a Lucas number).

The programs for A023499, the canonical program `A023499.P8730777959964670675` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023499 has offset 0).

The definition of A023499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023499.P8730777959964670675

`comp[A000032(n+3)-1]+∑[A000045(n)]+2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023499

/-- `comp[A000032(n+3)-1]+∑[A000045(n)]+2` -/
def P8730777959964670675.Spec : Prop :=
  ∀ n, P8730777959964670675.a n = A023499 n

theorem P8730777959964670675.correct : P8730777959964670675.Spec := by
  intro n
  simp only [A023499]

end A023499

/-! ## A023499.P3239823053372017300

`A023500(n)-A000045(n+1)`
-/

namespace A023499.P3239823053372017300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023500 n - A000045 (n + 1)

end

end A023499.P3239823053372017300

namespace A023499

/-- `A023500(n)-A000045(n+1)` -/
def P3239823053372017300.Spec : Prop :=
  ∀ n, P3239823053372017300.a n = A023499 n

theorem P3239823053372017300.correct : P3239823053372017300.Spec := by
  intro n
  simp only [A023499, Nat.add_sub_cancel, A023499.P3239823053372017300.a, A023499.P8730777959964670675.f1, A023499.P8730777959964670675.f2, A023499.P8730777959964670675.a, A000032, A000032.P8352177345629330861.a, A000045, A000045.P11838749114346432762.a, A023500, A023500.P6704142718453384351.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023499

/-! ## A023499.P2818953927001426298

`A023502(n)-A020695(n)`
-/

namespace A023499.P2818953927001426298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023502 n - A020695 n

end

end A023499.P2818953927001426298

namespace A023499

/-- `A023502(n)-A020695(n)` -/
def P2818953927001426298.Spec : Prop :=
  ∀ n, P2818953927001426298.a n = A023499 n

end A023499

/-! ## A023499.P13709784846182626426

`A022810(n+1)-A020701(n)`
-/

namespace A023499.P13709784846182626426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022810 (n + 1) - A020701 n

end

end A023499.P13709784846182626426

namespace A023499

/-- `A022810(n+1)-A020701(n)` -/
def P13709784846182626426.Spec : Prop :=
  ∀ n, P13709784846182626426.a n = A023499 n

theorem P13709784846182626426.correct : P13709784846182626426.Spec := by
  intro n
  simp only [A023499, Nat.add_sub_cancel, A023499.P13709784846182626426.a, A023499.P8730777959964670675.f1, A023499.P8730777959964670675.f2, A023499.P8730777959964670675.a, A000032, A000032.P8352177345629330861.a, A000045, A000045.P11838749114346432762.a, A020701, A020701.P3023773977330208485.a, A022810, A022810.P14713839583043034836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023499

/-! ## A023499.P144655198515033940

`A023500(n)-Δ[Δ[A001911(n)]]`
-/

namespace A023499.P144655198515033940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023500 n - (f1 (n + 1) - f1 n)

end

end A023499.P144655198515033940

namespace A023499

/-- `A023500(n)-Δ[Δ[A001911(n)]]` -/
def P144655198515033940.Spec : Prop :=
  ∀ n, P144655198515033940.a n = A023499 n

end A023499

/-! ## A023499.P11370490938869710831

`A022810(n+1)-A000045(n+4)`
-/

namespace A023499.P11370490938869710831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022810 (n + 1) - A000045 (n + 4)

end

end A023499.P11370490938869710831

namespace A023499

/-- `A022810(n+1)-A000045(n+4)` -/
def P11370490938869710831.Spec : Prop :=
  ∀ n, P11370490938869710831.a n = A023499 n

end A023499

/-! ## A023499.P14834903649628568414

`A023500(n)-A036355(∑[n])`
-/

namespace A023499.P14834903649628568414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023500 n - A036355 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023499.P14834903649628568414

namespace A023499

/-- `A023500(n)-A036355(∑[n])` -/
def P14834903649628568414.Spec : Prop :=
  ∀ n, P14834903649628568414.a n = A023499 n

end A023499

