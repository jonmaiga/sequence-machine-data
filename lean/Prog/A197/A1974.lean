import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B010.C000
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
import Seq.Opaque.C013
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
# A197400: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,1,1,1 for x=0,1,2,3,4.

The programs for A197400, there is no canonical definition to state claims against.
-/

/-! ## A197400.P9364637362334398485

`A197401(A374008(n+1))`
-/

namespace A197400.P9364637362334398485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A374008 (n + 1)).toNat

end

end A197400.P9364637362334398485

/-! ## A197400.P5818175523923148069

`A197401(A056119(n)+28)`
-/

namespace A197400.P5818175523923148069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A056119 n + 28).toNat

end

end A197400.P5818175523923148069

/-! ## A197400.P14052698941223685116

`A197401(A166136(n+5)+1)`
-/

namespace A197400.P14052698941223685116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A166136 (n + 5) + 1).toNat

end

end A197400.P14052698941223685116

/-! ## A197400.P9406879879964960396

`A197401(A000217(n+6)+7)`
-/

namespace A197400.P9406879879964960396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (A000217 (n + 6) + 7).toNat

end

end A197400.P9406879879964960396

/-! ## A197400.P17691476619095813517

`A197401(eq[8, A131818(n+1)])`
-/

namespace A197400.P17691476619095813517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197400.P17691476619095813517

/-!
# A197401: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,1,1,1 for x=0,1,2,3,4.

The programs for A197401, there is no canonical definition to state claims against.
-/

/-! ## A197401.P17854111376059633856

`A197350(n+1)-A124763(A174545(n))`
-/

namespace A197401.P17854111376059633856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (n + 1) - A124763 (A174545 n).toNat

end

end A197401.P17854111376059633856

/-! ## A197401.P8288291386989252495

`A197350(n+1)-A124763(A331406(n))`
-/

namespace A197401.P8288291386989252495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197350 (n + 1) - A124763 (A331406 n).toNat

end

end A197401.P8288291386989252495

/-! ## A197401.P9017923634114303014

`A261017(A197350(n+1))`
-/

namespace A197401.P9017923634114303014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261017 (A197350 (n + 1)).toNat

end

end A197401.P9017923634114303014

/-! ## A197401.P7962193944181331620

`A016813(A302242(A008292(n+1)²))`
-/

namespace A197401.P7962193944181331620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A302242 (A008292 (n + 1) ^ 2).toNat).toNat

end

end A197401.P7962193944181331620

/-! ## A197401.P6988204894045313732

`A137688(n)%A330654(A007318(n))+1`
-/

namespace A197401.P6988204894045313732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 n) (A330654 (A007318 n).toNat) + 1

end

end A197401.P6988204894045313732

/-!
# A197402: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,1,1,1 for x=0,1,2,3,4.

The programs for A197402, there is no canonical definition to state claims against.
-/

/-! ## A197402.P13161677489549008151

`A197409(∑[4*n]+1)`
-/

namespace A197402.P13161677489549008151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197402.P13161677489549008151

/-! ## A197402.P2637607305601783002

`record[A197409(Δ[A235355(n)])]`
-/

namespace A197402.P2637607305601783002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197402.P2637607305601783002

/-! ## A197402.P10755941405863544935

`record[A197409(A272267(n+1))]`
-/

namespace A197402.P10755941405863544935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197402.P10755941405863544935

/-! ## A197402.P9494177834776930417

`record[A197409(A330613(n+1))]`
-/

namespace A197402.P9494177834776930417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197402.P9494177834776930417

/-!
# A197403: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,1,1 for x=0,1,2,3,4.

The programs for A197403, there is no canonical definition to state claims against.
-/

/-! ## A197403.P3439288889379458777

`A197409(∑[n+1]+2)`
-/

namespace A197403.P3439288889379458777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197403.P3439288889379458777

/-! ## A197403.P16130403597837979121

`A197431(∑[n+1]+2)`
-/

namespace A197403.P16130403597837979121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197403.P16130403597837979121

/-! ## A197403.P2524993817004359004

`record[A197409(n+3)/A266101(n+1)]`
-/

namespace A197403.P2524993817004359004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197409 (n + 3) : ℚ) / (A266101 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197403.P2524993817004359004

/-! ## A197403.P660888016279895061

`or(A000007(n), A197431(A000096(n)+3))`
-/

namespace A197403.P660888016279895061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A197431 (A000096 n + 3).toNat)

end

end A197403.P660888016279895061

/-! ## A197403.P7629457797409699823

`A010892(3*n)²*A197431(A000096(n)+3)`
-/

namespace A197403.P7629457797409699823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) ^ 2 * A197431 (A000096 n + 3).toNat

end

end A197403.P7629457797409699823

/-!
# A197404: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,1,1 for x=0,1,2,3,4.

The programs for A197404, there is no canonical definition to state claims against.
-/

/-! ## A197404.P16354114150303315476

`A197409(∑[n+2]+4)`
-/

namespace A197404.P16354114150303315476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197404.P16354114150303315476

/-! ## A197404.P1961817700812294436

`A197409(A167614(n+1))+A185284(n)`
-/

namespace A197404.P1961817700812294436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A167614 (n + 1)).toNat + A185284 n

end

end A197404.P1961817700812294436

/-! ## A197404.P8781128743311211207

`A326545(n)+A197409(A167614(n+1))`
-/

namespace A197404.P8781128743311211207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A197409 (A167614 (n + 1)).toNat

end

end A197404.P8781128743311211207

/-! ## A197404.P11831541904257858018

`A197409(A167614(n+1))%A017205(n)`
-/

namespace A197404.P11831541904257858018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197409 (A167614 (n + 1)).toNat) (A017205 n)

end

end A197404.P11831541904257858018

/-! ## A197404.P6135575551059695821

`lcm(A033999(n), A197409(A167614(n+1)))`
-/

namespace A197404.P6135575551059695821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197409 (A167614 (n + 1)).toNat)

end

end A197404.P6135575551059695821

/-!
# A197405: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,1,1 for x=0,1,2,3,4.

The programs for A197405, there is no canonical definition to state claims against.
-/

/-! ## A197405.P2130122317350475564

`A197409(A374004(n+1))`
-/

namespace A197405.P2130122317350475564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A374004 (n + 1)).toNat

end

end A197405.P2130122317350475564

/-! ## A197405.P4166905642663100036

`A197409(A141214(n)+7)`
-/

namespace A197405.P4166905642663100036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A141214 n + 7).toNat

end

end A197405.P4166905642663100036

/-! ## A197405.P10858004637842324040

`A197409(A052905(n)+9)`
-/

namespace A197405.P10858004637842324040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A052905 n + 9).toNat

end

end A197405.P10858004637842324040

/-! ## A197405.P17882711509969162064

`A197409(A055999(n)+10)`
-/

namespace A197405.P17882711509969162064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A055999 n + 10).toNat

end

end A197405.P17882711509969162064

/-! ## A197405.P14081698146647369201

`A197409(A167614(n+2)+1)`
-/

namespace A197405.P14081698146647369201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A167614 (n + 2) + 1).toNat

end

end A197405.P14081698146647369201

/-!
# A197406: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,1,1 for x=0,1,2,3,4.

The programs for A197406, there is no canonical definition to state claims against.
-/

/-! ## A197406.P11087195475884475442

`A197409(A374005(n+1))`
-/

namespace A197406.P11087195475884475442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A374005 (n + 1)).toNat

end

end A197406.P11087195475884475442

/-! ## A197406.P5382172993913947784

`A197409(A167499(n+3))`
-/

namespace A197406.P5382172993913947784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A167499 (n + 3)).toNat

end

end A197406.P5382172993913947784

/-! ## A197406.P667290677747312624

`A197409(A155212(n)+13)`
-/

namespace A197406.P667290677747312624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A155212 n + 13).toNat

end

end A197406.P667290677747312624

/-! ## A197406.P7621806849655786150

`A197409(A056000(n)+15)`
-/

namespace A197406.P7621806849655786150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A056000 n + 15).toNat

end

end A197406.P7621806849655786150

/-! ## A197406.P4870284351206681078

`A197409(eq[6, A131818(n+1)])`
-/

namespace A197406.P4870284351206681078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197406.P4870284351206681078

/-!
# A197407: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,1,1 for x=0,1,2,3,4.

The programs for A197407, there is no canonical definition to state claims against.
-/

/-! ## A197407.P6185171200236480473

`A197409(A374007(n+1))`
-/

namespace A197407.P6185171200236480473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A374007 (n + 1)).toNat

end

end A197407.P6185171200236480473

/-! ## A197407.P8782891495625831254

`A197409(A166136(n+4))`
-/

namespace A197407.P8782891495625831254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A166136 (n + 4)).toNat

end

end A197407.P8782891495625831254

/-! ## A197407.P903219067302654719

`A197409(A056115(n)+21)`
-/

namespace A197407.P903219067302654719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A056115 n + 21).toNat

end

end A197407.P903219067302654719

/-! ## A197407.P10622620809109212476

`A197409(A056000(n+1)+16)`
-/

namespace A197407.P10622620809109212476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A056000 (n + 1) + 16).toNat

end

end A197407.P10622620809109212476

/-! ## A197407.P14773165825742784531

`A197409(eq[7, A131818(n+1)])`
-/

namespace A197407.P14773165825742784531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197407.P14773165825742784531

/-!
# A197408: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,1,1,1 for x=0,1,2,3,4.

The programs for A197408, there is no canonical definition to state claims against.
-/

/-! ## A197408.P4665860119193572367

`A197409(A374008(n+1))`
-/

namespace A197408.P4665860119193572367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A374008 (n + 1)).toNat

end

end A197408.P4665860119193572367

/-! ## A197408.P1723235269884080692

`A197409(eq[11, A066657(n)])`
-/

namespace A197408.P1723235269884080692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197408.P1723235269884080692

/-! ## A197408.P2374861903242510075

`A197409(A166136(n+5)+1)`
-/

namespace A197408.P2374861903242510075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A166136 (n + 5) + 1).toNat

end

end A197408.P2374861903242510075

/-! ## A197408.P412809180872891417

`A197409(A167499(n+5)+2)`
-/

namespace A197408.P412809180872891417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (A167499 (n + 5) + 2).toNat

end

end A197408.P412809180872891417

/-! ## A197408.P18001747531965188205

`A197409(eq[8, A131818(n+1)])`
-/

namespace A197408.P18001747531965188205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197408.P18001747531965188205

/-!
# A197409: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,1,1,1 for x=0,1,2,3,4.

The programs for A197409, there is no canonical definition to state claims against.
-/

/-! ## A197409.P2260451015782851064

`A197431(n+1)-A324674(A279095(n+1))`
-/

namespace A197409.P2260451015782851064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (n + 1) - A324674 (A279095 (n + 1)).toNat

end

end A197409.P2260451015782851064

/-! ## A197409.P12914068920194796967

`A197431(A084193(∑[n]))`
-/

namespace A197409.P12914068920194796967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A197409.P12914068920194796967

/-! ## A197409.P1410686469604628867

`A197431(A043317(n+1))`
-/

namespace A197409.P1410686469604628867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A043317 (n + 1)).toNat

end

end A197409.P1410686469604628867

/-! ## A197409.P11648823079930344330

`A197431(A044914(n+1))`
-/

namespace A197409.P11648823079930344330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A044914 (n + 1)).toNat

end

end A197409.P11648823079930344330

/-! ## A197409.P17142205763189226738

`A197431(A004885(n+2))`
-/

namespace A197409.P17142205763189226738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A004885 (n + 2)).toNat

end

end A197409.P17142205763189226738

/-!
# A197410: Product of cumulative sums of divisors of n.

The programs for A197410, there is no canonical definition to state claims against.
-/

/-! ## A197410.P10588397346914512635

`A349194(A037278(n+1))`
-/

namespace A197410.P10588397346914512635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349194 (A037278 (n + 1)).toNat

end

end A197410.P10588397346914512635

/-! ## A197410.P6910417345155953061

`A349278(A176558(n+1))`
-/

namespace A197410.P6910417345155953061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349278 (A176558 (n + 1)).toNat

end

end A197410.P6910417345155953061

/-! ## A197410.P15124331020659809747

`A349278(A243360(n+1))`
-/

namespace A197410.P15124331020659809747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349278 (A243360 (n + 1)).toNat

end

end A197410.P15124331020659809747

/-! ## A197410.P11687626039336886650

`A349194(A390599(n+1))`
-/

namespace A197410.P11687626039336886650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349194 (A390599 (n + 1)).toNat

end

end A197410.P11687626039336886650

/-! ## A197410.P15231353232735253092

`A349194(A291115(n)+A243361(n+1))`
-/

namespace A197410.P15231353232735253092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349194 (A291115 n + A243361 (n + 1)).toNat

end

end A197410.P15231353232735253092

/-!
# A197421: Primes of the form Sum_{k=1..n} prime(k)*prime(k+1).

The programs for A197421, there is no canonical definition to state claims against.
-/

/-! ## A197421.P11685223656523157854

`p?[A074745(n+1)]`
-/

namespace A197421.P11685223656523157854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197421.P11685223656523157854

/-! ## A197421.P848003742322227674

`p?[∑[record[A116570(n)]]]`
-/

namespace A197421.P848003742322227674
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197421.P848003742322227674

/-!
# A197422: Primes of the form sum_{j=1..n} (-1)^j *prime(j)*prime(j+1).

The programs for A197422, there is no canonical definition to state claims against.
-/

/-! ## A197422.P14256995756023824661

`p?[∑[A109805(2*n+1)]]`
-/

namespace A197422.P14256995756023824661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109805 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197422.P14256995756023824661

/-! ## A197422.P14318430101333361441

`p?[A124669(n)-a(n-1)]` with `a(0)=0`
-/

namespace A197422.P14318430101333361441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A124669 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197422.P14318430101333361441

/-! ## A197422.P4124967733384183655

`p?[A006094(n+1)-(a(n-1)+2)]` with `a(0)=4`
-/

namespace A197422.P4124967733384183655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A006094 (n + 1) - (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197422.P4124967733384183655

/-! ## A197422.P6818598012780375466

`p?[∑[A065091(n+1)*A273960(n+1)]]`
-/

namespace A197422.P6818598012780375466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A273960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197422.P6818598012780375466

/-! ## A197422.P12852262483122698719

`p?[4-a(n-1)-A116570(A005131(n))]` with `a(0)=1`
-/

namespace A197422.P12852262483122698719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - f1 (n - 1) - A116570 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197422.P12852262483122698719

/-!
# A197424: Number of subsets of {1, 2, ..., 4*n + 2} which do not contain two numbers whose difference is 4.

The programs for A197424, the canonical program `A197424.P17565426757181894432` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197424 has offset 0).

The definition of A197424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197424.P17565426757181894432

`A001654(n+2)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A197424

/-- `A001654(n+2)²` -/
def P17565426757181894432.Spec : Prop :=
  ∀ n, P17565426757181894432.a n = A197424 n

theorem P17565426757181894432.correct : P17565426757181894432.Spec := by
  intro n
  simp only [A197424]

end A197424

/-! ## A197424.P1111674781626388098

`A060635(n+2)/2`
-/

namespace A197424.P1111674781626388098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060635 (n + 2) : ℚ) / 2

end

end A197424.P1111674781626388098

namespace A197424

/-- `A060635(n+2)/2` -/
def P1111674781626388098.Spec : Prop :=
  ∀ n, P1111674781626388098.a n = (A197424 n : ℚ)

theorem P1111674781626388098.correct : P1111674781626388098.Spec := by
  intro n
  simp only [A197424, Nat.add_sub_cancel, A197424.P1111674781626388098.a, A197424.P17565426757181894432.a, A001654, A001654.P2587154079132953885.a, A060635, A060635.P900422356418885628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A197424

/-! ## A197424.P1604492445392074478

`(A000045(n+2)*A000045(n+3))²`
-/

namespace A197424.P1604492445392074478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) * A000045 (n + 3)) ^ 2

end

end A197424.P1604492445392074478

namespace A197424

/-- `(A000045(n+2)*A000045(n+3))²` -/
def P1604492445392074478.Spec : Prop :=
  ∀ n, P1604492445392074478.a n = A197424 n

end A197424

/-! ## A197424.P7444190925471121297

`Δ[A077916(n)]²`
-/

namespace A197424.P7444190925471121297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A197424.P7444190925471121297

namespace A197424

/-- `Δ[A077916(n)]²` -/
def P7444190925471121297.Spec : Prop :=
  ∀ n, P7444190925471121297.a n = A197424 n

end A197424

/-! ## A197424.P7817233886775749374

`Δ[A180664(n)]²`
-/

namespace A197424.P7817233886775749374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A197424.P7817233886775749374

namespace A197424

/-- `Δ[A180664(n)]²` -/
def P7817233886775749374.Spec : Prop :=
  ∀ n, P7817233886775749374.a n = A197424 n

end A197424

/-! ## A197424.P4870717697610626830

`Δ[Δ[A080145(n)]]²`
-/

namespace A197424.P4870717697610626830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A197424.P4870717697610626830

namespace A197424

/-- `Δ[Δ[A080145(n)]]²` -/
def P4870717697610626830.Spec : Prop :=
  ∀ n, P4870717697610626830.a n = A197424 n

end A197424

/-! ## A197424.P1906809472934078252

`A189145(2*n+3)`
-/

namespace A197424.P1906809472934078252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189145 (2 * n + 3)

end

end A197424.P1906809472934078252

namespace A197424

/-- `A189145(2*n+3)` -/
def P1906809472934078252.Spec : Prop :=
  ∀ n, P1906809472934078252.a n = A197424 n

end A197424

/-! ## A197424.P15416715026580644014

`A031923(4*n+3)`
-/

namespace A197424.P15416715026580644014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (4 * n + 3)

end

end A197424.P15416715026580644014

namespace A197424

/-- `A031923(4*n+3)` -/
def P15416715026580644014.Spec : Prop :=
  ∀ n, P15416715026580644014.a n = A197424 n

end A197424

/-! ## A197424.P10880410901222324267

`Δ[A064831(n+1)]²`
-/

namespace A197424.P10880410901222324267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A197424.P10880410901222324267

namespace A197424

/-- `Δ[A064831(n+1)]²` -/
def P10880410901222324267.Spec : Prop :=
  ∀ n, P10880410901222324267.a n = A197424 n

end A197424

/-! ## A197424.P7959330101870093585

`(Δ[A214885(n)]+1)²`
-/

namespace A197424.P7959330101870093585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A197424.P7959330101870093585

namespace A197424

/-- `(Δ[A214885(n)]+1)²` -/
def P7959330101870093585.Spec : Prop :=
  ∀ n, P7959330101870093585.a n = A197424 n

end A197424

/-! ## A197424.P11258883138045101123

`Δ[A166516(n+2)]²`
-/

namespace A197424.P11258883138045101123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A197424.P11258883138045101123

namespace A197424

/-- `Δ[A166516(n+2)]²` -/
def P11258883138045101123.Spec : Prop :=
  ∀ n, P11258883138045101123.a n = A197424 n

end A197424

/-! ## A197424.P3901454017728775888

`record[A180663(n+3)²]`
-/

namespace A197424.P3901454017728775888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180663 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197424.P3901454017728775888

namespace A197424

/-- `record[A180663(n+3)²]` -/
def P3901454017728775888.Spec : Prop :=
  ∀ n, P3901454017728775888.a n = A197424 n

end A197424

/-! ## A197424.P8559436760122431416

`Δ[A097083(Δ[n²])]²`
-/

namespace A197424.P8559436760122431416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A197424.P8559436760122431416

namespace A197424

/-- `Δ[A097083(Δ[n²])]²` -/
def P8559436760122431416.Spec : Prop :=
  ∀ n, P8559436760122431416.a n = A197424 n

end A197424

/-! ## A197424.P4002362654552613832

`(A119996(n+1)+1)²`
-/

namespace A197424.P4002362654552613832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119996 (n + 1) + 1) ^ 2

end

end A197424.P4002362654552613832

namespace A197424

/-- `(A119996(n+1)+1)²` -/
def P4002362654552613832.Spec : Prop :=
  ∀ n, P4002362654552613832.a n = A197424 n

end A197424

/-! ## A197424.P11902186258071385975

`A070550(2*(n+1))²`
-/

namespace A197424.P11902186258071385975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (2 * (n + 1)) ^ 2

end

end A197424.P11902186258071385975

namespace A197424

/-- `A070550(2*(n+1))²` -/
def P11902186258071385975.Spec : Prop :=
  ∀ n, P11902186258071385975.a n = A197424 n

end A197424

/-! ## A197424.P1953963527377569847

`A074677(2*(n+2))²`
-/

namespace A197424.P1953963527377569847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * (n + 2)) ^ 2

end

end A197424.P1953963527377569847

namespace A197424

/-- `A074677(2*(n+2))²` -/
def P1953963527377569847.Spec : Prop :=
  ∀ n, P1953963527377569847.a n = A197424 n

end A197424

/-! ## A197424.P12882759513814462641

`A006498(2*n+3)²`
-/

namespace A197424.P12882759513814462641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n + 3) ^ 2

end

end A197424.P12882759513814462641

namespace A197424

/-- `A006498(2*n+3)²` -/
def P12882759513814462641.Spec : Prop :=
  ∀ n, P12882759513814462641.a n = A197424 n

end A197424

/-! ## A197424.P140894234491883431

`A080239(2*n+3)²`
-/

namespace A197424.P140894234491883431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080239 (2 * n + 3) ^ 2

end

end A197424.P140894234491883431

namespace A197424

/-- `A080239(2*n+3)²` -/
def P140894234491883431.Spec : Prop :=
  ∀ n, P140894234491883431.a n = A197424 n

end A197424

/-! ## A197424.P8994895026686751480

`A295688(2*n+3)²`
-/

namespace A197424.P8994895026686751480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295688 (2 * n + 3) ^ 2

end

end A197424.P8994895026686751480

namespace A197424

/-- `A295688(2*n+3)²` -/
def P8994895026686751480.Spec : Prop :=
  ∀ n, P8994895026686751480.a n = A197424 n

end A197424

/-! ## A197424.P15191544551017672410

`(∑[A000045(n+2)²]+1)²`
-/

namespace A197424.P15191544551017672410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A197424.P15191544551017672410

namespace A197424

/-- `(∑[A000045(n+2)²]+1)²` -/
def P15191544551017672410.Spec : Prop :=
  ∀ n, P15191544551017672410.a n = A197424 n

end A197424

/-!
# A197425: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,0,1,1,1 for x=0,1,2,3,4.

The programs for A197425, there is no canonical definition to state claims against.
-/

/-! ## A197425.P7028496413635406138

`A197431(∑[4*n]+1)`
-/

namespace A197425.P7028496413635406138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197425.P7028496413635406138

/-! ## A197425.P81145918775022445

`record[A197431(Δ[A235355(n)])]`
-/

namespace A197425.P81145918775022445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197425.P81145918775022445

/-! ## A197425.P2909639484163558065

`record[A197431(A330613(n+1))]`
-/

namespace A197425.P2909639484163558065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197425.P2909639484163558065

/-! ## A197425.P2325700021435761869

`A197431(A001844(n))^ceil(acot(n))`
-/

namespace A197425.P2325700021435761869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197431 (A001844 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A197425.P2325700021435761869

/-!
# A197426: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,1,1 for x=0,1,2,3,4.

The programs for A197426, there is no canonical definition to state claims against.
-/

/-! ## A197426.P6285210653447916802

`A197431(∑[n+2]+4)`
-/

namespace A197426.P6285210653447916802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197426.P6285210653447916802

/-! ## A197426.P7878593959892336386

`A197431(A167614(n+1))+A185284(n)`
-/

namespace A197426.P7878593959892336386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A167614 (n + 1)).toNat + A185284 n

end

end A197426.P7878593959892336386

/-! ## A197426.P1288641212487751724

`A326545(n)+A197431(A167614(n+1))`
-/

namespace A197426.P1288641212487751724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A197431 (A167614 (n + 1)).toNat

end

end A197426.P1288641212487751724

/-! ## A197426.P1165612113773859936

`lcm(A033999(n), A197431(A167614(n+1)))`
-/

namespace A197426.P1165612113773859936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197431 (A167614 (n + 1)).toNat)

end

end A197426.P1165612113773859936

/-! ## A197426.P5688472392303780412

`or(A197431(A167614(n+1)), A316867(n))`
-/

namespace A197426.P5688472392303780412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197431 (A167614 (n + 1)).toNat) (A316867 n)

end

end A197426.P5688472392303780412

/-!
# A197427: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,1,1 for x=0,1,2,3,4.

The programs for A197427, there is no canonical definition to state claims against.
-/

/-! ## A197427.P13646842778163966440

`A197431(A374004(n+1))`
-/

namespace A197427.P13646842778163966440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A374004 (n + 1)).toNat

end

end A197427.P13646842778163966440

/-! ## A197427.P4787348563236834663

`A197431(A141214(n)+7)`
-/

namespace A197427.P4787348563236834663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A141214 n + 7).toNat

end

end A197427.P4787348563236834663

/-! ## A197427.P15366534126114734060

`A197431(A052905(n)+9)`
-/

namespace A197427.P15366534126114734060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A052905 n + 9).toNat

end

end A197427.P15366534126114734060

/-! ## A197427.P14600680684588642595

`A197431(A055999(n)+10)`
-/

namespace A197427.P14600680684588642595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A055999 n + 10).toNat

end

end A197427.P14600680684588642595

/-! ## A197427.P15069124015342971370

`A197431(A167614(n+2)+1)`
-/

namespace A197427.P15069124015342971370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A167614 (n + 2) + 1).toNat

end

end A197427.P15069124015342971370

/-!
# A197428: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,1,1 for x=0,1,2,3,4.

The programs for A197428, there is no canonical definition to state claims against.
-/

/-! ## A197428.P14047602004955843941

`A197431(A374005(n+1))`
-/

namespace A197428.P14047602004955843941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A374005 (n + 1)).toNat

end

end A197428.P14047602004955843941

/-! ## A197428.P12173820776117973853

`A197431(A167499(n+3))`
-/

namespace A197428.P12173820776117973853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A167499 (n + 3)).toNat

end

end A197428.P12173820776117973853

/-! ## A197428.P7643261163452980308

`A197431(A155212(n)+13)`
-/

namespace A197428.P7643261163452980308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A155212 n + 13).toNat

end

end A197428.P7643261163452980308

/-! ## A197428.P16277967121242031718

`A197431(A056000(n)+15)`
-/

namespace A197428.P16277967121242031718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A056000 n + 15).toNat

end

end A197428.P16277967121242031718

/-! ## A197428.P3018340743463213003

`A197431(eq[7, A066657(n)])`
-/

namespace A197428.P3018340743463213003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197428.P3018340743463213003

/-!
# A197429: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,1,1 for x=0,1,2,3,4.

The programs for A197429, there is no canonical definition to state claims against.
-/

/-! ## A197429.P4815671494373758909

`A197431(A374007(n+1))`
-/

namespace A197429.P4815671494373758909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A374007 (n + 1)).toNat

end

end A197429.P4815671494373758909

/-! ## A197429.P16469610419438913100

`A197431(A166136(n+4))`
-/

namespace A197429.P16469610419438913100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A166136 (n + 4)).toNat

end

end A197429.P16469610419438913100

/-! ## A197429.P9501377657273328986

`A197431(A056115(n)+21)`
-/

namespace A197429.P9501377657273328986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A056115 n + 21).toNat

end

end A197429.P9501377657273328986

/-! ## A197429.P2765875091158861543

`A197431(A056000(n+1)+16)`
-/

namespace A197429.P2765875091158861543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A056000 (n + 1) + 16).toNat

end

end A197429.P2765875091158861543

/-! ## A197429.P16359296252718673566

`A197431(eq[7, A131818(n+1)])`
-/

namespace A197429.P16359296252718673566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197429.P16359296252718673566

/-!
# A197430: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,1,1 for x=0,1,2,3,4.

The programs for A197430, there is no canonical definition to state claims against.
-/

/-! ## A197430.P1171314943035572013

`A197431(A374008(n+1))`
-/

namespace A197430.P1171314943035572013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A374008 (n + 1)).toNat

end

end A197430.P1171314943035572013

/-! ## A197430.P5983208368206505244

`A197431(A166136(n+5)+1)`
-/

namespace A197430.P5983208368206505244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A166136 (n + 5) + 1).toNat

end

end A197430.P5983208368206505244

/-! ## A197430.P14901272437524244889

`A197431(eq[8, A131818(n+1)])`
-/

namespace A197430.P14901272437524244889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197430.P14901272437524244889

/-! ## A197430.P17724346365105336717

`A197431(eq[6, A193592(n)])`
-/

namespace A197430.P17724346365105336717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197430.P17724346365105336717

/-! ## A197430.P4068241213148334972

`A197431(A155212(n+3)+2)`
-/

namespace A197430.P4068241213148334972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A155212 (n + 3) + 2).toNat

end

end A197430.P4068241213148334972

/-!
# A197431: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,0,1,1,1 for x=0,1,2,3,4.

The programs for A197431, there is no canonical definition to state claims against.
-/

/-! ## A197431.P15519372410480063070

`A197409(n+1)+A182635(A334709(n+1))`
-/

namespace A197431.P15519372410480063070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (n + 1) + A182635 (A334709 (n + 1)).toNat

end

end A197431.P15519372410480063070

/-! ## A197431.P14510407732342716439

`A367141(A196218(n+1))`
-/

namespace A197431.P14510407732342716439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367141 (A196218 (n + 1)).toNat

end

end A197431.P14510407732342716439

/-! ## A197431.P8831588122938937348

`A367141(A196300(n+1))`
-/

namespace A197431.P8831588122938937348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367141 (A196300 (n + 1)).toNat

end

end A197431.P8831588122938937348

/-! ## A197431.P4620937107562572500

`A367141(A196685(n+1))`
-/

namespace A197431.P4620937107562572500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367141 (A196685 (n + 1)).toNat

end

end A197431.P4620937107562572500

/-! ## A197431.P937719022763865649

`A248394(A184614(n+1))+A197409(n+1)`
-/

namespace A197431.P937719022763865649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (A184614 (n + 1)).toNat + A197409 (n + 1)

end

end A197431.P937719022763865649

/-!
# A197432: a(n) = Sum_{k>=0} A030308(n,k)*C(k) where C(k) is the k-th Catalan number (A000108).

The programs for A197432, there is no canonical definition to state claims against.
-/

/-! ## A197432.P11298905615482173115

`A197433(floor(n/2))+n%2`
-/

namespace A197432.P11298905615482173115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)

end

end A197432.P11298905615482173115

/-! ## A197432.P16997324453786028916

`A197433(floor(or(1, n)/2))+and(1, n)`
-/

namespace A197432.P16997324453786028916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 ⌊(Nat.lor 1 n : ℚ) / 2⌋.toNat + (Nat.land 1 n : ℤ)

end

end A197432.P16997324453786028916

/-! ## A197432.P3311573477128824159

`A197433(floor(xor(1, n)/2))+and(1, n)`
-/

namespace A197432.P3311573477128824159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 ⌊(Nat.xor 1 n : ℚ) / 2⌋.toNat + (Nat.land 1 n : ℤ)

end

end A197432.P3311573477128824159

/-! ## A197432.P16732313242052085012

`A197433(floor(∑[n]/(n+1)))+and(1, n)`
-/

namespace A197432.P16732313242052085012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋.toNat + (Nat.land 1 n : ℤ)

end

end A197432.P16732313242052085012

/-! ## A197432.P4375338600818361955

`A244155(∑[char[A195161(n+1)]])`
-/

namespace A197432.P4375338600818361955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244155 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197432.P4375338600818361955

/-! ## A197432.P13548875302575174245

`A244155(∑[char[A195161(n)]]-1)`
-/

namespace A197432.P13548875302575174245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244155 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A197432.P13548875302575174245

/-! ## A197432.P11727519784644555077

`A197433(floor(n/2))+A000035(n)`
-/

namespace A197432.P11727519784644555077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 ⌊(n : ℚ) / 2⌋.toNat + A000035 n

end

end A197432.P11727519784644555077

/-! ## A197432.P9752941208593624613

`A197433(floor(n/2))+Δ[A008619(n)]`
-/

namespace A197432.P9752941208593624613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 ⌊(n : ℚ) / 2⌋.toNat + (f1 (n + 1) - f1 n)

end

end A197432.P9752941208593624613

/-! ## A197432.P12811349257919280467

`A197433(A004526(n))+val(n²+1, 2)`
-/

namespace A197432.P12811349257919280467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 (A004526 n).toNat + (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ)

end

end A197432.P12811349257919280467

/-! ## A197432.P16786153536263262254

`A197433(A004526(n))+A096271(n²)`
-/

namespace A197432.P16786153536263262254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 (A004526 n).toNat + A096271 (n ^ 2)

end

end A197432.P16786153536263262254

/-!
# A197433: Sum of distinct Catalan numbers: a(n) = Sum_{k>=0} A030308(n,k)*C(k+1) where C(n) is the n-th Catalan number (A000108). (C(0) and C(1) not treated as distinct.)

The programs for A197433, there is no canonical definition to state claims against.
-/

/-! ## A197433.P5353684685719972962

`lt[A244231(n), 2]`
-/

namespace A197433.P5353684685719972962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A197433.P5353684685719972962

/-! ## A197433.P9793739495785359580

`A244155(A001068(n))`
-/

namespace A197433.P9793739495785359580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244155 (A001068 n).toNat

end

end A197433.P9793739495785359580

/-! ## A197433.P15885119684232029714

`eq[A211666(A244231(n)+1), A244231(n)]`
-/

namespace A197433.P15885119684232029714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (A244231 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197433.P15885119684232029714

/-! ## A197433.P12411195837317874816

`eq[A057427(A244231(2*n)), A244231(n)]`
-/

namespace A197433.P12411195837317874816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A244231 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197433.P12411195837317874816

/-! ## A197433.P13356614946439594182

`eq[A244231(n), A244231(3*A244231(n))]`
-/

namespace A197433.P13356614946439594182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 (3 * A244231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197433.P13356614946439594182

/-! ## A197433.P17365820791414970955

`eq[A244231(n), A244231(A244231(n)²²)]`
-/

namespace A197433.P17365820791414970955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 ((A244231 n ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197433.P17365820791414970955

/-! ## A197433.P12223619154025715573

`lt[0, A176137(n)]`
-/

namespace A197433.P12223619154025715573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A197433.P12223619154025715573

/-! ## A197433.P16639630683674275570

`lt[0, Δ[A244230(n)]]`
-/

namespace A197433.P16639630683674275570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A197433.P16639630683674275570

/-! ## A197433.P16306614825639352500

`filter[A244155(n), A176137(#)]`
-/

namespace A197433.P16306614825639352500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A176137 (f1 j).toNat = 1) n)

end

end A197433.P16306614825639352500

/-! ## A197433.P14557624254719198713

`eq[A057427(n), A244231(n)]`
-/

namespace A197433.P14557624254719198713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197433.P14557624254719198713

/-! ## A197433.P3733320854097931788

`eq[1, A244230(n+1)-A244230(n)]`
-/

namespace A197433.P3733320854097931788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 (n + 1) - A244230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197433.P3733320854097931788

/-! ## A197433.P18029277069657659044

`eq[A176137(n*A176137(n)), A176137(n)]`
-/

namespace A197433.P18029277069657659044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176137 ((n : ℤ) * A176137 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197433.P18029277069657659044

/-! ## A197433.P10606456372902016439

`eq[1, A000035(A244230(n+1)+A244230(n))]`
-/

namespace A197433.P10606456372902016439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244230 (n + 1) + A244230 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197433.P10606456372902016439

/-! ## A197433.P849281480612143539

`eq[A176137(n), A326538(n+1)]`
-/

namespace A197433.P849281480612143539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197433.P849281480612143539

/-! ## A197433.P11594010691969082305

`A082363(record[A082364(n)])`
-/

namespace A197433.P11594010691969082305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A197433.P11594010691969082305

/-! ## A197433.P14742464206954272699

`filter[A244218(n), A176137(#)]`
-/

namespace A197433.P14742464206954272699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A176137 (f1 j).toNat = 1) n)

end

end A197433.P14742464206954272699

/-! ## A197433.P14887153937772531640

`∩[A244155(n), A244218(n)]`
-/

namespace A197433.P14887153937772531640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197433.P14887153937772531640

/-! ## A197433.P14548015085938226554

`record[A057504(A057504(n))-A057504(n)]`
-/

namespace A197433.P14548015085938226554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057504 (A057504 n).toNat - A057504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197433.P14548015085938226554

/-!
# A197434: Number of n X n 0..2 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197434, there is no canonical definition to state claims against.
-/

/-! ## A197434.P7799084830686072994

`A197442((n+1)²+n²)`
-/

namespace A197434.P7799084830686072994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 ((n + 1) ^ 2 + n ^ 2)

end

end A197434.P7799084830686072994

/-!
# A197435: Number of n X 1 0..2 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197435, the canonical program `A197435.P6902004275160358293` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197435 has offset 1).

The definition of A197435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197435.P6902004275160358293

`a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)` with `a(0)=3, a(1)=6, a(2)=10, a(3)=28, a(4)=66`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197435

/-- `a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)` -/
def P6902004275160358293.Spec : Prop :=
  ∀ n, (P6902004275160358293.a n : ℤ) = A197435 (n + 1)

theorem P6902004275160358293.correct : P6902004275160358293.Spec := by
  intro n
  simp only [A197435, Nat.add_sub_cancel]

end A197435

/-! ## A197435.P17753530056896942875

`A197442(∑[n]+1)`
-/

namespace A197435.P17753530056896942875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197435.P17753530056896942875

namespace A197435

/-- `A197442(∑[n]+1)` -/
def P17753530056896942875.Spec : Prop :=
  ∀ n, P17753530056896942875.a n = A197435 (n + 1)

end A197435

/-! ## A197435.P14059854103541194707

`record[A010054(n)*A197442(n+1)]`
-/

namespace A197435.P14059854103541194707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A197442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197435.P14059854103541194707

namespace A197435

/-- `record[A010054(n)*A197442(n+1)]` -/
def P14059854103541194707.Spec : Prop :=
  ∀ n, P14059854103541194707.a n = A197435 (n + 1)

end A197435

/-! ## A197435.P16422205835957086208

`record[root(A197442(n+1), A091042(n))]`
-/

namespace A197435.P16422205835957086208
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197442 (n + 1) : ℝ) ^ (1 / (A091042 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197435.P16422205835957086208

namespace A197435

/-- `record[root(A197442(n+1), A091042(n))]` -/
def P16422205835957086208.Spec : Prop :=
  ∀ n, P16422205835957086208.a n = (A197435 (n + 1) : ℝ)

end A197435

/-! ## A197435.P6884824392854354315

`record[gcd(A002262(n), A197442(n+1))]`
-/

namespace A197435.P6884824392854354315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A197442 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197435.P6884824392854354315

namespace A197435

/-- `record[gcd(A002262(n), A197442(n+1))]` -/
def P6884824392854354315.Spec : Prop :=
  ∀ n, (P6884824392854354315.a n : ℤ) = A197435 (n + 1)

end A197435

/-!
# A197436: Number of nX2 0..2 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197436, there is no canonical definition to state claims against.
-/

/-! ## A197436.P7745192575138068717

`A197442(∑[n+1]+2)`
-/

namespace A197436.P7745192575138068717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197436.P7745192575138068717

/-! ## A197436.P16051391884863791400

`record[A010054(n)*A197442(n+2)]`
-/

namespace A197436.P16051391884863791400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A197442 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197436.P16051391884863791400

/-! ## A197436.P17812167442735610841

`record[root(A197442(n+2), A091042(n))]`
-/

namespace A197436.P17812167442735610841
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197442 (n + 2) : ℝ) ^ (1 / (A091042 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197436.P17812167442735610841

/-! ## A197436.P4790603742431452470

`record[gcd(A002262(n), A197442(n+2))]`
-/

namespace A197436.P4790603742431452470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A197442 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197436.P4790603742431452470

/-! ## A197436.P13299560040162309375

`record[A197442(abs(A201163(n)))]`
-/

namespace A197436.P13299560040162309375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197436.P13299560040162309375

/-!
# A197437: Number of nX3 0..2 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197437, there is no canonical definition to state claims against.
-/

/-! ## A197437.P8003355094786815344

`A197442(∑[n+2]+4)`
-/

namespace A197437.P8003355094786815344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197437.P8003355094786815344

/-! ## A197437.P3311709194644421406

`lcm(2, A197442(A167614(n+1)))`
-/

namespace A197437.P3311709194644421406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A197442 (A167614 (n + 1)).toNat)

end

end A197437.P3311709194644421406

/-! ## A197437.P12505233791471047313

`A197442(A167614(n+1))+A000007(n+1)`
-/

namespace A197437.P12505233791471047313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A197437.P12505233791471047313

/-! ## A197437.P1271779699064444606

`A197442(A167614(n+1))+A007393(n+1)`
-/

namespace A197437.P1271779699064444606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A167614 (n + 1)).toNat + A007393 (n + 1)

end

end A197437.P1271779699064444606

/-! ## A197437.P3332628317373523020

`A197442(A167614(n+1))+A122180(n+1)`
-/

namespace A197437.P3332628317373523020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A167614 (n + 1)).toNat + A122180 (n + 1)

end

end A197437.P3332628317373523020

/-!
# A197438: Number of nX4 0..2 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197438, there is no canonical definition to state claims against.
-/

/-! ## A197438.P9929512679552144698

`A197442(A374004(n+1))`
-/

namespace A197438.P9929512679552144698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A374004 (n + 1)).toNat

end

end A197438.P9929512679552144698

/-! ## A197438.P7228648136453669550

`A197442(A141214(n)+7)`
-/

namespace A197438.P7228648136453669550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A141214 n + 7).toNat

end

end A197438.P7228648136453669550

/-! ## A197438.P4278865780808657421

`A197442(A055999(n)+10)`
-/

namespace A197438.P4278865780808657421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A055999 n + 10).toNat

end

end A197438.P4278865780808657421

/-! ## A197438.P14286363037760323300

`A197442(A167614(n+2)+1)`
-/

namespace A197438.P14286363037760323300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A167614 (n + 2) + 1).toNat

end

end A197438.P14286363037760323300

/-! ## A197438.P11357209939428580433

`A197442(eq[5, A131818(n+1)])`
-/

namespace A197438.P11357209939428580433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197438.P11357209939428580433

/-!
# A197439: Number of nX5 0..2 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197439, there is no canonical definition to state claims against.
-/

/-! ## A197439.P9452609807350891947

`A197442(A374005(n+1))`
-/

namespace A197439.P9452609807350891947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A374005 (n + 1)).toNat

end

end A197439.P9452609807350891947

/-! ## A197439.P6190351040253954751

`A197442(A056000(n)+15)`
-/

namespace A197439.P6190351040253954751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A056000 n + 15).toNat

end

end A197439.P6190351040253954751

/-! ## A197439.P1538416609465515349

`A197442(eq[7, A066657(n)])`
-/

namespace A197439.P1538416609465515349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197439.P1538416609465515349

/-! ## A197439.P8797940592925066350

`A197442(A167614(n+3)+2)`
-/

namespace A197439.P8797940592925066350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A167614 (n + 3) + 2).toNat

end

end A197439.P8797940592925066350

/-! ## A197439.P8431971634496240154

`A197442(eq[4, A002262(n)]+1)`
-/

namespace A197439.P8431971634496240154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A197439.P8431971634496240154

/-!
# A197440: Number of nX6 0..2 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197440, there is no canonical definition to state claims against.
-/

/-! ## A197440.P15092500457275053400

`A197442(A374007(n+1))`
-/

namespace A197440.P15092500457275053400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A374007 (n + 1)).toNat

end

end A197440.P15092500457275053400

/-! ## A197440.P6248664889187994782

`A197442(eq[7, A131818(n+1)])`
-/

namespace A197440.P6248664889187994782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197440.P6248664889187994782

/-! ## A197440.P14818665163752979312

`A197442(eq[5, A193592(n)])`
-/

namespace A197440.P14818665163752979312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197440.P14818665163752979312

/-! ## A197440.P8047093366629789989

`A197442(A055999(n+3)+1)`
-/

namespace A197440.P8047093366629789989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A055999 (n + 3) + 1).toNat

end

end A197440.P8047093366629789989

/-! ## A197440.P7061472193053527764

`A197442(A238531(n+7)-7)`
-/

namespace A197440.P7061472193053527764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A238531 (n + 7) - 7).toNat

end

end A197440.P7061472193053527764

/-!
# A197441: Number of nX7 0..2 arrays with no element equal to the average of its horizontal and vertical neighbors.

The programs for A197441, there is no canonical definition to state claims against.
-/

/-! ## A197441.P14117895098869611115

`A197442(A374008(n+1))`
-/

namespace A197441.P14117895098869611115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A374008 (n + 1)).toNat

end

end A197441.P14117895098869611115

/-! ## A197441.P18062534479245441970

`A197442(A238531(n+7)+5)`
-/

namespace A197441.P18062534479245441970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (A238531 (n + 7) + 5).toNat

end

end A197441.P18062534479245441970

/-! ## A197441.P12969564058181925020

`A197442(eq[6, A193592(n)])`
-/

namespace A197441.P12969564058181925020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197441.P12969564058181925020

/-!
# A197443: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,1,1,0,0 for x=0,1,2,3,4.

The programs for A197443, there is no canonical definition to state claims against.
-/

/-! ## A197443.P4216369521040394146

`A197450(∑[4*n]+1)`
-/

namespace A197443.P4216369521040394146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197443.P4216369521040394146

/-! ## A197443.P17134895675266291540

`record[A003982(n)*A197450(n+1)]`
-/

namespace A197443.P17134895675266291540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197443.P17134895675266291540

/-! ## A197443.P17149730120720904478

`record[gcd(A003987(n), A197450(n+1))]`
-/

namespace A197443.P17149730120720904478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A197450 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197443.P17149730120720904478

/-! ## A197443.P1017027553395184583

`gcd(A151622(n), A197450(A001844(n)))`
-/

namespace A197443.P1017027553395184583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151622 n) (A197450 (A001844 n).toNat)

end

end A197443.P1017027553395184583

/-! ## A197443.P4719453553793838017

`A197450(A001844(n))+A037134(n+1)`
-/

namespace A197443.P4719453553793838017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A001844 n).toNat + A037134 (n + 1)

end

end A197443.P4719453553793838017

/-!
# A197444: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,1,0,0 for x=0,1,2,3,4.

The programs for A197444, there is no canonical definition to state claims against.
-/

/-! ## A197444.P16175487025990299831

`A197450(∑[n+1]+2)`
-/

namespace A197444.P16175487025990299831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197444.P16175487025990299831

/-! ## A197444.P10598804329838540854

`A197450(A133263(n+1))%A224803(n+1)`
-/

namespace A197444.P10598804329838540854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197450 (A133263 (n + 1)).toNat) (A224803 (n + 1))

end

end A197444.P10598804329838540854

/-! ## A197444.P3574522662467104611

`A197450(A133263(n+1))+A000007(2*n+3)`
-/

namespace A197444.P3574522662467104611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A133263 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A197444.P3574522662467104611

/-! ## A197444.P12466986740595439409

`record[A197450(Δ[A003453(n+5)])]`
-/

namespace A197444.P12466986740595439409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197444.P12466986740595439409

/-! ## A197444.P3469666582613167736

`A197450(A000096(n+1))%A052919(n+1)`
-/

namespace A197444.P3469666582613167736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197450 (A000096 (n + 1)).toNat) (A052919 (n + 1))

end

end A197444.P3469666582613167736

/-!
# A197445: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,1,0,0 for x=0,1,2,3,4.

The programs for A197445, there is no canonical definition to state claims against.
-/

/-! ## A197445.P17037963701439084677

`A197450(∑[n+2]+4)`
-/

namespace A197445.P17037963701439084677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197445.P17037963701439084677

/-! ## A197445.P16201509077378989589

`A197450(A167614(n+1))+A025469(n)`
-/

namespace A197445.P16201509077378989589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A167614 (n + 1)).toNat + A025469 n

end

end A197445.P16201509077378989589

/-! ## A197445.P1880005013087366359

`A326292(n)+A197450(A167614(n+1))`
-/

namespace A197445.P1880005013087366359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A197450 (A167614 (n + 1)).toNat

end

end A197445.P1880005013087366359

/-! ## A197445.P13377215419821116939

`lcm(A087960(n), A197450(A167614(n+1)))`
-/

namespace A197445.P13377215419821116939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A197450 (A167614 (n + 1)).toNat)

end

end A197445.P13377215419821116939

/-! ## A197445.P8633471984388873147

`or(A055641(n), A197450(A167614(n+1)))`
-/

namespace A197445.P8633471984388873147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A197450 (A167614 (n + 1)).toNat)

end

end A197445.P8633471984388873147

/-!
# A197446: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,1,0,0 for x=0,1,2,3,4.

The programs for A197446, there is no canonical definition to state claims against.
-/

/-! ## A197446.P17063373152235737102

`A197450(A374004(n+1))`
-/

namespace A197446.P17063373152235737102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A374004 (n + 1)).toNat

end

end A197446.P17063373152235737102

/-! ## A197446.P11600743501756512840

`A197450(A141214(n)+7)`
-/

namespace A197446.P11600743501756512840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A141214 n + 7).toNat

end

end A197446.P11600743501756512840

/-! ## A197446.P16781021816430462050

`A197450(A055999(n)+10)`
-/

namespace A197446.P16781021816430462050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A055999 n + 10).toNat

end

end A197446.P16781021816430462050

/-! ## A197446.P9815285762002662101

`A197450(A167614(n+2)+1)`
-/

namespace A197446.P9815285762002662101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A167614 (n + 2) + 1).toNat

end

end A197446.P9815285762002662101

/-! ## A197446.P1195641775230330835

`A197450(A112355(n+1)+4)`
-/

namespace A197446.P1195641775230330835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A112355 (n + 1) + 4).toNat

end

end A197446.P1195641775230330835

/-!
# A197447: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,1,0,0 for x=0,1,2,3,4.

The programs for A197447, there is no canonical definition to state claims against.
-/

/-! ## A197447.P3098196037116261451

`A197450(A374005(n+1))`
-/

namespace A197447.P3098196037116261451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A374005 (n + 1)).toNat

end

end A197447.P3098196037116261451

/-! ## A197447.P9275676117781164368

`A197450(A167499(n+3))`
-/

namespace A197447.P9275676117781164368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A167499 (n + 3)).toNat

end

end A197447.P9275676117781164368

/-! ## A197447.P10692118093259491754

`A197450(A056000(n)+15)`
-/

namespace A197447.P10692118093259491754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A056000 n + 15).toNat

end

end A197447.P10692118093259491754

/-! ## A197447.P17434859699818153585

`A197450(eq[7, A066657(n)])`
-/

namespace A197447.P17434859699818153585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197447.P17434859699818153585

/-! ## A197447.P3344665653632091794

`A197450(eq[4, A002262(n)]+1)`
-/

namespace A197447.P3344665653632091794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A197447.P3344665653632091794

/-!
# A197448: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,1,0,0 for x=0,1,2,3,4.

The programs for A197448, there is no canonical definition to state claims against.
-/

/-! ## A197448.P5347218265869797987

`A197450(A374007(n+1))`
-/

namespace A197448.P5347218265869797987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A374007 (n + 1)).toNat

end

end A197448.P5347218265869797987

/-! ## A197448.P5603924811601514473

`A197450(eq[7, A131818(n+1)])`
-/

namespace A197448.P5603924811601514473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197448.P5603924811601514473

/-! ## A197448.P11185086383645385147

`A197450(A056119(n)+16)`
-/

namespace A197448.P11185086383645385147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A056119 n + 16).toNat

end

end A197448.P11185086383645385147

/-! ## A197448.P17846159040195026854

`A197450(eq[3, A219347(n)])`
-/

namespace A197448.P17846159040195026854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197448.P17846159040195026854

/-! ## A197448.P1475516033757044206

`A197450(eq[5, A193592(n)])`
-/

namespace A197448.P1475516033757044206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197448.P1475516033757044206

/-!
# A197449: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,1,0,0 for x=0,1,2,3,4.

The programs for A197449, there is no canonical definition to state claims against.
-/

/-! ## A197449.P16232835846098486173

`A197450(A374008(n+1))`
-/

namespace A197449.P16232835846098486173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A374008 (n + 1)).toNat

end

end A197449.P16232835846098486173

/-! ## A197449.P5121043018339052640

`A197450(A238531(n+7)+5)`
-/

namespace A197449.P5121043018339052640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (A238531 (n + 7) + 5).toNat

end

end A197449.P5121043018339052640

/-! ## A197449.P6951293881089727872

`A197450(eq[8, A131818(n+1)])`
-/

namespace A197449.P6951293881089727872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197449.P6951293881089727872

/-! ## A197449.P3431000655165713256

`A197450(eq[4, A219347(n)])`
-/

namespace A197449.P3431000655165713256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197449.P3431000655165713256

/-! ## A197449.P2494945584771464205

`A197450(eq[6, A193592(n)])`
-/

namespace A197449.P2494945584771464205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197449.P2494945584771464205

/-!
# A197450: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,1,1,0,0 for x=0,1,2,3,4.

The programs for A197450, there is no canonical definition to state claims against.
-/

/-! ## A197450.P7577907147054985721

`A351490(A391484(n+1))`
-/

namespace A197450.P7577907147054985721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351490 (A391484 (n + 1)).toNat

end

end A197450.P7577907147054985721

/-! ## A197450.P2953187810848349126

`A193404(A219310(n+1))*A300138(n+1)`
-/

namespace A197450.P2953187810848349126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193404 (A219310 (n + 1)).toNat * A300138 (n + 1)

end

end A197450.P2953187810848349126

/-!
# A197451: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,0,2,2 for x=0,1,2,3,4.

The programs for A197451, there is no canonical definition to state claims against.
-/

/-! ## A197451.P12996754345237774744

`A197457(∑[4*n]+1)`
-/

namespace A197451.P12996754345237774744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197451.P12996754345237774744

/-! ## A197451.P2028942804537635318

`or(1, A197457(A001844(n)))`
-/

namespace A197451.P2028942804537635318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A197457 (A001844 n).toNat)

end

end A197451.P2028942804537635318

/-! ## A197451.P14011751384297585067

`record[A003982(n)*A197457(n+1)]`
-/

namespace A197451.P14011751384297585067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197451.P14011751384297585067

/-! ## A197451.P1454721564647942849

`record[A115718(n)*A197457(n+1)]`
-/

namespace A197451.P1454721564647942849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n * A197457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197451.P1454721564647942849

/-! ## A197451.P16310969821162504362

`A197457(A001844(n))+A185255(n)`
-/

namespace A197451.P16310969821162504362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A001844 n).toNat + A185255 n

end

end A197451.P16310969821162504362

/-!
# A197452: Number of nX3 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,0,2,2 for x=0,1,2,3,4.

The programs for A197452, there is no canonical definition to state claims against.
-/

/-! ## A197452.P15331399757201832097

`A197457(∑[n+2]+4)`
-/

namespace A197452.P15331399757201832097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197452.P15331399757201832097

/-! ## A197452.P18169560968713539618

`and(-1, A197457(A167614(n+1)))`
-/

namespace A197452.P18169560968713539618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A197457 (A167614 (n + 1)).toNat)

end

end A197452.P18169560968713539618

/-! ## A197452.P11708682214333256978

`A197457(A046691(n)+7)+char[20]`
-/

namespace A197452.P11708682214333256978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197452.P11708682214333256978

/-! ## A197452.P14652986971032088164

`A197457(A000217(n+2)+3)+char[29]`
-/

namespace A197452.P14652986971032088164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197452.P14652986971032088164

/-! ## A197452.P9166505926363654582

`A197457(A167614(n+1))+A185255(n)`
-/

namespace A197452.P9166505926363654582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A167614 (n + 1)).toNat + A185255 n

end

end A197452.P9166505926363654582

/-!
# A197453: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,2,2 for x=0,1,2,3,4.

The programs for A197453, there is no canonical definition to state claims against.
-/

/-! ## A197453.P15959057771870889830

`A197457(∑[n+2]+n+8)`
-/

namespace A197453.P15959057771870889830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A197453.P15959057771870889830

/-! ## A197453.P12737197243558554887

`A197457(A141214(n)+7)+char[16]`
-/

namespace A197453.P12737197243558554887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197453.P12737197243558554887

/-! ## A197453.P17501773270511883000

`A007318(C(2, n))*A197457(A141214(n)+7)`
-/

namespace A197453.P17501773270511883000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A197457 (A141214 n + 7).toNat

end

end A197453.P17501773270511883000

/-! ## A197453.P470914483554728600

`A000041(C(2, 2*n))*A197457(A141214(n)+7)`
-/

namespace A197453.P470914483554728600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A197457 (A141214 n + 7).toNat

end

end A197453.P470914483554728600

/-! ## A197453.P10096099903554184210

`A007318(A007318(2*n))*A197457(A141214(n)+7)`
-/

namespace A197453.P10096099903554184210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (2 * n)).toNat * A197457 (A141214 n + 7).toNat

end

end A197453.P10096099903554184210

/-!
# A197454: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,2,2 for x=0,1,2,3,4.

The programs for A197454, there is no canonical definition to state claims against.
-/

/-! ## A197454.P6252607790400073079

`A197457(A374005(n+1))`
-/

namespace A197454.P6252607790400073079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A374005 (n + 1)).toNat

end

end A197454.P6252607790400073079

/-! ## A197454.P1876280094961495091

`A197457(A167499(n+3))`
-/

namespace A197454.P1876280094961495091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A167499 (n + 3)).toNat

end

end A197454.P1876280094961495091

/-! ## A197454.P12670914853786451714

`A197457(A155212(n)+13)`
-/

namespace A197454.P12670914853786451714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A155212 n + 13).toNat

end

end A197454.P12670914853786451714

/-! ## A197454.P1516361692147642684

`A197457(A056000(n)+15)`
-/

namespace A197454.P1516361692147642684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A056000 n + 15).toNat

end

end A197454.P1516361692147642684

/-! ## A197454.P4556341261488817202

`A197457(eq[7, A066657(n)])`
-/

namespace A197454.P4556341261488817202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197454.P4556341261488817202

/-!
# A197455: Number of n X 7 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,0,2,2 for x=0,1,2,3,4.

The programs for A197455, there is no canonical definition to state claims against.
-/

/-! ## A197455.P15413675314959513855

`A197457(A374008(n+1))`
-/

namespace A197455.P15413675314959513855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A374008 (n + 1)).toNat

end

end A197455.P15413675314959513855

/-! ## A197455.P6743723523863755800

`A197457(A056119(n)+28)`
-/

namespace A197455.P6743723523863755800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A056119 n + 28).toNat

end

end A197455.P6743723523863755800

/-! ## A197455.P7999644093897344057

`A197457(eq[11, A066657(n)])`
-/

namespace A197455.P7999644093897344057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197455.P7999644093897344057

/-! ## A197455.P9068327465938500032

`A197457(A000124(n+6)+6)`
-/

namespace A197455.P9068327465938500032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A000124 (n + 6) + 6).toNat

end

end A197455.P9068327465938500032

/-! ## A197455.P4931421478999826920

`A197457(A000217(n+6)+7)`
-/

namespace A197455.P4931421478999826920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A000217 (n + 6) + 7).toNat

end

end A197455.P4931421478999826920

/-!
# A197456: Number of n X 6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,2,2 for x=0,1,2,3,4.

The programs for A197456, there is no canonical definition to state claims against.
-/

/-! ## A197456.P6614889512305038701

`A197457(A374007(n+1))`
-/

namespace A197456.P6614889512305038701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A374007 (n + 1)).toNat

end

end A197456.P6614889512305038701

/-! ## A197456.P6806302557893250954

`A197457(A056115(n)+21)`
-/

namespace A197456.P6806302557893250954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A056115 n + 21).toNat

end

end A197456.P6806302557893250954

/-! ## A197456.P1564401613719578984

`A197457(A167499(n+4)+1)`
-/

namespace A197456.P1564401613719578984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A167499 (n + 4) + 1).toNat

end

end A197456.P1564401613719578984

/-! ## A197456.P8239239437452072652

`A197457(A167614(n+4)+3)`
-/

namespace A197456.P8239239437452072652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A167614 (n + 4) + 3).toNat

end

end A197456.P8239239437452072652

/-! ## A197456.P14705350697941394148

`A197457(A000124(n+5)+5)`
-/

namespace A197456.P14705350697941394148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197457 (A000124 (n + 5) + 5).toNat

end

end A197456.P14705350697941394148

/-!
# A197457: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,0,2,2 for x=0,1,2,3,4.

The programs for A197457, there is no canonical definition to state claims against.
-/

/-! ## A197457.P18242325982293327219

`or(A167662(A196329(n+1)), A196329(n+1))`
-/

namespace A197457.P18242325982293327219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A167662 (A196329 (n + 1)).toNat) (A196329 (n + 1))

end

end A197457.P18242325982293327219

/-!
# A197458: Number of n X n binary matrices with at most two 1's in each row and column, other entries 0.

The programs for A197458, there is no canonical definition to state claims against.
-/

/-! ## A197458.P10151342839559526852

`A186320(∑[A012148(n)])-n`
-/

namespace A197458.P10151342839559526852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186320 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A197458.P10151342839559526852

/-!
# A197459: Number of free poly-[3.6.3.6]-tiles (holes allowed) with n cells (division into rhombi is significant).

The programs for A197459, there is no canonical definition to state claims against.
-/

/-! ## A197459.P17375849099421845991

`A330659(A257814(n+1))`
-/

namespace A197459.P17375849099421845991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330659 (A257814 (n + 1)).toNat

end

end A197459.P17375849099421845991

/-! ## A197459.P4898243125763872829

`A330659(A073789(n)+2)`
-/

namespace A197459.P4898243125763872829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330659 (A073789 n + 2).toNat

end

end A197459.P4898243125763872829

/-! ## A197459.P17964478576762872304

`A330659(A082232(n+2))`
-/

namespace A197459.P17964478576762872304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330659 (A082232 (n + 2)).toNat

end

end A197459.P17964478576762872304

/-! ## A197459.P3931284807885141271

`A330659(A098771(n+2))`
-/

namespace A197459.P3931284807885141271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330659 (A098771 (n + 2)).toNat

end

end A197459.P3931284807885141271

/-!
# A197461: Number of fixed poly-[3.6.3.6]-tiles (holes allowed) with n cells (division into rhombi is significant).

The programs for A197461, there is no canonical definition to state claims against.
-/

/-! ## A197461.P3903927617369308951

`A221205(A024645(n+1))+1`
-/

namespace A197461.P3903927617369308951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221205 (A024645 (n + 1)).toNat + 1

end

end A197461.P3903927617369308951

/-! ## A197461.P2997825068632747436

`A221205(n+1)-A376139(A057733(n+1))`
-/

namespace A197461.P2997825068632747436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221205 (n + 1) - A376139 (A057733 (n + 1)).toNat

end

end A197461.P2997825068632747436

/-!
# A197462: Number of free poly-[4.6.12]-tiles (holes allowed) with n cells (division into triangles is significant).

The programs for A197462, there is no canonical definition to state claims against.
-/

/-! ## A197462.P16187990812349974822

`A383496(A082743(n))`
-/

namespace A197462.P16187990812349974822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383496 (A082743 n).toNat

end

end A197462.P16187990812349974822

/-! ## A197462.P8040061895387280586

`A383496(A381225(n))`
-/

namespace A197462.P8040061895387280586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383496 (A381225 n).toNat

end

end A197462.P8040061895387280586

/-! ## A197462.P10706432278925747082

`A383496(A001104(n+1))`
-/

namespace A197462.P10706432278925747082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383496 (A001104 (n + 1)).toNat

end

end A197462.P10706432278925747082

/-! ## A197462.P6573609440947874665

`A383496(A002998(n+1))`
-/

namespace A197462.P6573609440947874665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383496 (A002998 (n + 1)).toNat

end

end A197462.P6573609440947874665

/-! ## A197462.P6276586147991005813

`A383496(A023106(n+1))`
-/

namespace A197462.P6276586147991005813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383496 (A023106 (n + 1)).toNat

end

end A197462.P6276586147991005813

/-!
# A197463: Number of one-sided poly-[4.6.12]-tiles (holes allowed) with n cells (division into triangles is significant).

The programs for A197463, there is no canonical definition to state claims against.
-/

/-! ## A197463.P7535257165574266152

`A383497(A082743(n))`
-/

namespace A197463.P7535257165574266152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383497 (A082743 n).toNat

end

end A197463.P7535257165574266152

/-! ## A197463.P2982834372280048539

`A383497(A381225(n))`
-/

namespace A197463.P2982834372280048539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383497 (A381225 n).toNat

end

end A197463.P2982834372280048539

/-! ## A197463.P6709669477464030512

`A383497(A001104(n+1))`
-/

namespace A197463.P6709669477464030512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383497 (A001104 (n + 1)).toNat

end

end A197463.P6709669477464030512

/-! ## A197463.P5000636001193468320

`A383497(A002998(n+1))`
-/

namespace A197463.P5000636001193468320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383497 (A002998 (n + 1)).toNat

end

end A197463.P5000636001193468320

/-! ## A197463.P3389117323155345925

`A383497(A023106(n+1))`
-/

namespace A197463.P3389117323155345925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383497 (A023106 (n + 1)).toNat

end

end A197463.P3389117323155345925

/-!
# A197464: Number of fixed poly-[4.6.12]-tiles (holes allowed) with n cells (division into triangles is significant).

The programs for A197464, there is no canonical definition to state claims against.
-/

/-! ## A197464.P5256270772960936903

`A092094((n*(n*(n-5)+5)²)²+5)`
-/

namespace A197464.P5256270772960936903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092094 (((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2) ^ 2 + 5).toNat

end

end A197464.P5256270772960936903

/-!
# A197465: Number of free tetrakis polyaboloes (poly-[4.8^2]-tiles) with n cells, allowing holes, where division into tetrakis cells (triangular quarters of square grid cells) is significant.

The programs for A197465, there is no canonical definition to state claims against.
-/

/-! ## A197465.P2465073420020201995

`A025581(or(A015525(n), A163842(n)))`
-/

namespace A197465.P2465073420020201995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Int.lor (A015525 n) (A163842 n)).toNat

end

end A197465.P2465073420020201995

/-! ## A197465.P2230516875518015193

`A106617(n)+A001650(A318600(n+1))`
-/

namespace A197465.P2230516875518015193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n + A001650 (A318600 (n + 1)).toNat

end

end A197465.P2230516875518015193

/-!
# A197467: Number of fixed poly-[4.8^2]-tiles (holes allowed) with n cells (division into triangles is significant).

The programs for A197467, there is no canonical definition to state claims against.
-/

/-! ## A197467.P2133556250672846893

`A001462(A180166(n+3))-A180121(n+1)`
-/

namespace A197467.P2133556250672846893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A180166 (n + 3)).toNat - A180121 (n + 1)

end

end A197467.P2133556250672846893

/-! ## A197467.P3320488421897363100

`round(sqrt(A053179(6^n+1)/6))+1`
-/

namespace A197467.P3320488421897363100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A053179 (6 ^ n + 1) : ℚ) / 6 : ℝ)) + 1

end

end A197467.P3320488421897363100

/-!
# A197468: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,1,0,0,0 for x=0,1,2,3,4.

The programs for A197468, there is no canonical definition to state claims against.
-/

/-! ## A197468.P2781873883183610379

`A197475(∑[4*n]+1)`
-/

namespace A197468.P2781873883183610379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197468.P2781873883183610379

/-! ## A197468.P7244387485451672771

`record[A003982(n)*A197475(n+1)]`
-/

namespace A197468.P7244387485451672771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197468.P7244387485451672771

/-! ## A197468.P17711299107239064063

`record[A197475(n+1)*A203994(n+1)]`
-/

namespace A197468.P17711299107239064063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (n + 1) * A203994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197468.P17711299107239064063

/-! ## A197468.P7356671337663504332

`A007318(C(2, n+2))*A197475(A001844(n))`
-/

namespace A197468.P7356671337663504332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A197475 (A001844 n).toNat

end

end A197468.P7356671337663504332

/-! ## A197468.P3978769464188208614

`A000032(ceil(1/(n+1)))*A197475(A001844(n))`
-/

namespace A197468.P3978769464188208614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌈1 / (n + 1 : ℚ)⌉.toNat * A197475 (A001844 n).toNat

end

end A197468.P3978769464188208614

/-!
# A197469: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,1,0,0,0 for x=0,1,2,3,4.

The programs for A197469, the canonical program `A197469.P18315685224723732334` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197469 has offset 1).

The definition of A197469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197469.P5337622857872535392

`ogf((1+x+4x^2+2x^3+4x^4+2x^5)/(1-x-4x^3))`
-/

namespace A197469.P5337622857872535392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 4, 2, 4, 2] [1, -1, 0, -4] n

end

end A197469.P5337622857872535392

namespace A197469

/-- `ogf((1+x+4x^2+2x^3+4x^4+2x^5)/(1-x-4x^3))` -/
def P5337622857872535392.Spec : Prop :=
  ∀ n, P5337622857872535392.a n = A197469 (n + 1)

end A197469

/-! ## A197469.P18315685224723732334

`a(n-1)+4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=12, a(4)=24, a(5)=50`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197469

/-- `a(n-1)+4*a(n-3)` -/
def P18315685224723732334.Spec : Prop :=
  ∀ n, (P18315685224723732334.a n : ℤ) = A197469 (n + 1)

theorem P18315685224723732334.correct : P18315685224723732334.Spec := by
  intro n
  simp only [A197469, Nat.add_sub_cancel]

end A197469

/-! ## A197469.P13829311639526085627

`A197475(∑[n+1]+2)`
-/

namespace A197469.P13829311639526085627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197469.P13829311639526085627

namespace A197469

/-- `A197475(∑[n+1]+2)` -/
def P13829311639526085627.Spec : Prop :=
  ∀ n, P13829311639526085627.a n = A197469 (n + 1)

end A197469

/-! ## A197469.P17843049957754834454

`record[gcd(A124926(n), A197475(n+1))]`
-/

namespace A197469.P17843049957754834454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124926 n) (A197475 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197469.P17843049957754834454

namespace A197469

/-- `record[gcd(A124926(n), A197475(n+1))]` -/
def P17843049957754834454.Spec : Prop :=
  ∀ n, (P17843049957754834454.a n : ℤ) = A197469 (n + 1)

end A197469

/-! ## A197469.P14845964536777669770

`record[gcd(A048994(n), A197475(n+2))]`
-/

namespace A197469.P14845964536777669770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048994 n) (A197475 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197469.P14845964536777669770

namespace A197469

/-- `record[gcd(A048994(n), A197475(n+2))]` -/
def P14845964536777669770.Spec : Prop :=
  ∀ n, (P14845964536777669770.a n : ℤ) = A197469 (n + 1)

end A197469

/-!
# A197470: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,1,0,0,0 for x=0,1,2,3,4.

The programs for A197470, there is no canonical definition to state claims against.
-/

/-! ## A197470.P16887269259676868469

`A197475(∑[n+2]+4)`
-/

namespace A197470.P16887269259676868469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197470.P16887269259676868469

/-! ## A197470.P132249942785169720

`A197475(A167614(n+1))%A016902(n)`
-/

namespace A197470.P132249942785169720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197475 (A167614 (n + 1)).toNat) (A016902 n)

end

end A197470.P132249942785169720

/-! ## A197470.P6365629508449521706

`lcm(A033630(n), A197475(A167614(n+1)))`
-/

namespace A197470.P6365629508449521706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033630 n) (A197475 (A167614 (n + 1)).toNat)

end

end A197470.P6365629508449521706

/-! ## A197470.P16728194268313361434

`A197475(A046691(n)+7)%(A046636(n)+3)`
-/

namespace A197470.P16728194268313361434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197475 (A046691 n + 7).toNat) (A046636 n + 3)

end

end A197470.P16728194268313361434

/-!
# A197471: Number of n X 4 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,1,0,0,0 for x=0,1,2,3,4.

The programs for A197471, there is no canonical definition to state claims against.
-/

/-! ## A197471.P9296481501783842638

`A197475(∑[n+3]+7)`
-/

namespace A197471.P9296481501783842638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A197471.P9296481501783842638

/-! ## A197471.P8260518152851006167

`A197475(A167614(n+2)+1)+char[41]`
-/

namespace A197471.P8260518152851006167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197471.P8260518152851006167

/-! ## A197471.P16899383374280499861

`A197475(A000217(n+3)+4)%A001801(n)`
-/

namespace A197471.P16899383374280499861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197475 (A000217 (n + 3) + 4).toNat) (A001801 n)

end

end A197471.P16899383374280499861

/-! ## A197471.P4786570265202424027

`lcm(A001221(n+2), A197475(A167614(n+2)+1))`
-/

namespace A197471.P4786570265202424027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A197475 (A167614 (n + 2) + 1).toNat)

end

end A197471.P4786570265202424027

/-! ## A197471.P1650953220198911310

`A197475(A167614(n+2)+1)^A014963(4*n+2)`
-/

namespace A197471.P1650953220198911310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197475 (A167614 (n + 2) + 1).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A197471.P1650953220198911310

/-!
# A197472: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,1,0,0,0 for x=0,1,2,3,4.

The programs for A197472, there is no canonical definition to state claims against.
-/

/-! ## A197472.P1372433870252458547

`A197475(A167499(n+3))`
-/

namespace A197472.P1372433870252458547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A167499 (n + 3)).toNat

end

end A197472.P1372433870252458547

/-! ## A197472.P13642676096466400439

`A197475(A055998(n+2)+8)`
-/

namespace A197472.P13642676096466400439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A055998 (n + 2) + 8).toNat

end

end A197472.P13642676096466400439

/-! ## A197472.P2826459105756281

`A197475(eq[4, A002262(n)]+1)`
-/

namespace A197472.P2826459105756281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A197472.P2826459105756281

/-! ## A197472.P12349290507966194466

`A197475(A374005(n+1))`
-/

namespace A197472.P12349290507966194466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A374005 (n + 1)).toNat

end

end A197472.P12349290507966194466

/-! ## A197472.P11923732026009410263

`A197475(A046691(n+3))`
-/

namespace A197472.P11923732026009410263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A046691 (n + 3)).toNat

end

end A197472.P11923732026009410263

/-!
# A197473: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,1,0,0,0 for x=0,1,2,3,4.

The programs for A197473, there is no canonical definition to state claims against.
-/

/-! ## A197473.P4483217417671462119

`A197475(A167499(n+4)+1)`
-/

namespace A197473.P4483217417671462119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A167499 (n + 4) + 1).toNat

end

end A197473.P4483217417671462119

/-! ## A197473.P11734943568417722030

`A197475(A167614(n+4)+3)`
-/

namespace A197473.P11734943568417722030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A167614 (n + 4) + 3).toNat

end

end A197473.P11734943568417722030

/-! ## A197473.P14457913994420618712

`A197475(A055998(n+3)+9)`
-/

namespace A197473.P14457913994420618712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A055998 (n + 3) + 9).toNat

end

end A197473.P14457913994420618712

/-! ## A197473.P214860629775353955

`A197475(eq[7, A131818(n+1)])`
-/

namespace A197473.P214860629775353955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197473.P214860629775353955

/-! ## A197473.P14397647346554973190

`A197475(A000124(n+6)-(n+1))`
-/

namespace A197473.P14397647346554973190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A197473.P14397647346554973190

/-!
# A197474: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,1,0,0,0 for x=0,1,2,3,4.

The programs for A197474, there is no canonical definition to state claims against.
-/

/-! ## A197474.P11241161465090717009

`A197475(A238531(n+7)+5)`
-/

namespace A197474.P11241161465090717009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A238531 (n + 7) + 5).toNat

end

end A197474.P11241161465090717009

/-! ## A197474.P14152128667203744252

`A197475(A055998(n+4)+10)`
-/

namespace A197474.P14152128667203744252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A055998 (n + 4) + 10).toNat

end

end A197474.P14152128667203744252

/-! ## A197474.P4522252644278862392

`A197475(A374008(n+1))`
-/

namespace A197474.P4522252644278862392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A374008 (n + 1)).toNat

end

end A197474.P4522252644278862392

/-! ## A197474.P17571834154024649740

`A197475(A055999(n+4))`
-/

namespace A197474.P17571834154024649740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (A055999 (n + 4)).toNat

end

end A197474.P17571834154024649740

/-! ## A197474.P7385828316757809390

`A197475(eq[4, A219347(n)])`
-/

namespace A197474.P7385828316757809390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197474.P7385828316757809390

/-!
# A197484: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,4,1,0,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A197484, there is no canonical definition to state claims against.
-/

/-! ## A197484.P8731314078939103954

`A318205(A396714(n))`
-/

namespace A197484.P8731314078939103954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318205 (A396714 n).toNat

end

end A197484.P8731314078939103954

/-!
# A197496: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,3,1,1,0 for x=0,1,2,3,4.

The programs for A197496, there is no canonical definition to state claims against.
-/

/-! ## A197496.P5005644309603709981

`A197503(∑[4*n]+1)`
-/

namespace A197496.P5005644309603709981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197496.P5005644309603709981

/-! ## A197496.P4994895719759583665

`A197503(A001844(n))+char[19]`
-/

namespace A197496.P4994895719759583665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197496.P4994895719759583665

/-! ## A197496.P270757222982345572

`A178788(n)*A197503(A001844(n))`
-/

namespace A197496.P270757222982345572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n * A197503 (A001844 n).toNat

end

end A197496.P270757222982345572

/-! ## A197496.P13458818554439677276

`A197503(A001844(n))*A275065(n)`
-/

namespace A197496.P13458818554439677276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A001844 n).toNat * A275065 n

end

end A197496.P13458818554439677276

/-! ## A197496.P8968573913581112905

`or(A011732(n), A197503(A001844(n)))`
-/

namespace A197496.P8968573913581112905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011732 n) (A197503 (A001844 n).toNat)

end

end A197496.P8968573913581112905

/-!
# A197497: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,1,1,0 for x=0,1,2,3,4.

The programs for A197497, the canonical program `A197497.P10955437317375094330` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197497 has offset 1).

The definition of A197497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197497.P10955437317375094330

`a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=9, a(3)=9`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A197497

/-- `a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` -/
def P10955437317375094330.Spec : Prop :=
  ∀ n, P10955437317375094330.a n = A197497 (n + 1)

theorem P10955437317375094330.correct : P10955437317375094330.Spec := by
  intro n
  simp only [A197497, Nat.add_sub_cancel]

end A197497

/-! ## A197497.P15154372655347689793

`A197503(∑[n+1]+2)`
-/

namespace A197497.P15154372655347689793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197497.P15154372655347689793

namespace A197497

/-- `A197503(∑[n+1]+2)` -/
def P15154372655347689793.Spec : Prop :=
  ∀ n, P15154372655347689793.a n = A197497 (n + 1)

end A197497

/-! ## A197497.P5124185911679887634

`or(1, A197503(A133263(n+1)))`
-/

namespace A197497.P5124185911679887634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A197503 (A133263 (n + 1)).toNat)

end

end A197497.P5124185911679887634

namespace A197497

/-- `or(1, A197503(A133263(n+1)))` -/
def P5124185911679887634.Spec : Prop :=
  ∀ n, P5124185911679887634.a n = A197497 (n + 1)

end A197497

/-! ## A197497.P6687286375224251492

`A007318(C(n, 2))*A197503(A133263(n+1))`
-/

namespace A197497.P6687286375224251492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A197503 (A133263 (n + 1)).toNat

end

end A197497.P6687286375224251492

namespace A197497

/-- `A007318(C(n, 2))*A197503(A133263(n+1))` -/
def P6687286375224251492.Spec : Prop :=
  ∀ n, P6687286375224251492.a n = A197497 (n + 1)

end A197497

/-! ## A197497.P10591433992102681839

`A000027(A197503(∑[n+2]))`
-/

namespace A197497.P10591433992102681839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A197503 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A197497.P10591433992102681839

namespace A197497

/-- `A000027(A197503(∑[n+2]))` -/
def P10591433992102681839.Spec : Prop :=
  ∀ n, P10591433992102681839.a n = A197497 (n + 1)

end A197497

/-!
# A197498: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,1,1,0 for x=0,1,2,3,4.

The programs for A197498, there is no canonical definition to state claims against.
-/

/-! ## A197498.P8365880283885316444

`A197503(∑[n+2]+4)`
-/

namespace A197498.P8365880283885316444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197498.P8365880283885316444

/-! ## A197498.P5622520979172414195

`lcm((-1)^n, A197503(A167614(n+1)))`
-/

namespace A197498.P5622520979172414195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A197503 (A167614 (n + 1)).toNat)

end

end A197498.P5622520979172414195

/-! ## A197498.P6094842486192756242

`A197503(A167614(n+1))%A017480(n)`
-/

namespace A197498.P6094842486192756242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197503 (A167614 (n + 1)).toNat) (A017480 n)

end

end A197498.P6094842486192756242

/-! ## A197498.P6954563149950231621

`gcd(A010894(n), A197503(A167614(n+1)))`
-/

namespace A197498.P6954563149950231621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A197503 (A167614 (n + 1)).toNat)

end

end A197498.P6954563149950231621

/-! ## A197498.P13870550087356972031

`or(A000007(n), A197503(A167614(n+1)))`
-/

namespace A197498.P13870550087356972031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A197503 (A167614 (n + 1)).toNat)

end

end A197498.P13870550087356972031

/-!
# A197499: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,1,1,0 for x=0,1,2,3,4.

The programs for A197499, there is no canonical definition to state claims against.
-/

/-! ## A197499.P14736214860704218564

`A197503(A374004(n+1))`
-/

namespace A197499.P14736214860704218564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A374004 (n + 1)).toNat

end

end A197499.P14736214860704218564

/-! ## A197499.P9650244238686718378

`A197503(A052905(n)+9)`
-/

namespace A197499.P9650244238686718378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A052905 n + 9).toNat

end

end A197499.P9650244238686718378

/-! ## A197499.P10647758316993595891

`A197503(A055999(n)+10)`
-/

namespace A197499.P10647758316993595891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A055999 n + 10).toNat

end

end A197499.P10647758316993595891

/-! ## A197499.P10092029422927004070

`A197503(A167614(n+2)+1)`
-/

namespace A197499.P10092029422927004070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A167614 (n + 2) + 1).toNat

end

end A197499.P10092029422927004070

/-! ## A197499.P8695922851287241857

`A197503(A133263(n+3)+2)`
-/

namespace A197499.P8695922851287241857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197503 (A133263 (n + 3) + 2).toNat

end

end A197499.P8695922851287241857

