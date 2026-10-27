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
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
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
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A222700: Number of nX5 0..1 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222700, there is no canonical definition to state claims against.
-/

/-! ## A222700.P464092110635914746

`A222703(A167499(n+3))`
-/

namespace A222700.P464092110635914746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A167499 (n + 3)).toNat

end

end A222700.P464092110635914746

/-! ## A222700.P14094481234427018795

`A222703(A155212(n)+13)`
-/

namespace A222700.P14094481234427018795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A155212 n + 13).toNat

end

end A222700.P14094481234427018795

/-! ## A222700.P5371207772432223988

`A222703(A056000(n)+15)`
-/

namespace A222700.P5371207772432223988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A056000 n + 15).toNat

end

end A222700.P5371207772432223988

/-! ## A222700.P16533026802290629945

`A222703(eq[7, A066657(n)])`
-/

namespace A222700.P16533026802290629945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222700.P16533026802290629945

/-! ## A222700.P1784203127374234660

`A222703(A000217(n+4)+5)`
-/

namespace A222700.P1784203127374234660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A000217 (n + 4) + 5).toNat

end

end A222700.P1784203127374234660

/-!
# A222701: Number of nX6 0..1 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222701, there is no canonical definition to state claims against.
-/

/-! ## A222701.P171558440106011518

`A222703(A056115(n)+21)`
-/

namespace A222701.P171558440106011518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A056115 n + 21).toNat

end

end A222701.P171558440106011518

/-! ## A222701.P7508424796198084990

`A222703(A167499(n+4)+1)`
-/

namespace A222701.P7508424796198084990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A167499 (n + 4) + 1).toNat

end

end A222701.P7508424796198084990

/-! ## A222701.P12659886901705786117

`A222703(eq[7, A131818(n+1)])`
-/

namespace A222701.P12659886901705786117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222701.P12659886901705786117

/-! ## A222701.P3725876212629722727

`A222703(A000124(n+6)-(n+1))`
-/

namespace A222701.P3725876212629722727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A222701.P3725876212629722727

/-! ## A222701.P3118522956234158959

`A222703(A052905(n+4)-2-2*n)`
-/

namespace A222701.P3118522956234158959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A052905 (n + 4) - 2 - (2 * n : ℤ)).toNat

end

end A222701.P3118522956234158959

/-!
# A222702: Number of nX7 0..1 arrays with no more than floor(nX7/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222702, there is no canonical definition to state claims against.
-/

/-! ## A222702.P8128102006391882666

`A222703(A167487(n+5))`
-/

namespace A222702.P8128102006391882666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A167487 (n + 5)).toNat

end

end A222702.P8128102006391882666

/-! ## A222702.P16667180052679525310

`A222703(eq[11, A066657(n)])`
-/

namespace A222702.P16667180052679525310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222702.P16667180052679525310

/-! ## A222702.P16497028567057254936

`A222703(A166136(n+5)+1)`
-/

namespace A222702.P16497028567057254936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A166136 (n + 5) + 1).toNat

end

end A222702.P16497028567057254936

/-! ## A222702.P14324518864536603718

`A222703(A167499(n+5)+2)`
-/

namespace A222702.P14324518864536603718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A167499 (n + 5) + 2).toNat

end

end A222702.P14324518864536603718

/-! ## A222702.P5585762927284289871

`A222703(A167614(n+5)+4)`
-/

namespace A222702.P5585762927284289871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A167614 (n + 5) + 4).toNat

end

end A222702.P5585762927284289871

/-!
# A222703: T(n,k)=Number of nXk 0..1 arrays with no more than floor(nXk/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..1 order.

The programs for A222703, there is no canonical definition to state claims against.
-/

/-! ## A222703.P7640494545163924829

`and(A032555(A222378(n+1)), A222378(n+1))`
-/

namespace A222703.P7640494545163924829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032555 (A222378 (n + 1)).toNat) (A222378 (n + 1))

end

end A222703.P7640494545163924829

/-! ## A222703.P16717548645805954566

`and(A032555(A222587(n+1)), A222587(n+1))`
-/

namespace A222703.P16717548645805954566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032555 (A222587 (n + 1)).toNat) (A222587 (n + 1))

end

end A222703.P16717548645805954566

/-!
# A222704: Total number of parts of multiplicity 4 in all partitions of n.

The programs for A222704, there is no canonical definition to state claims against.
-/

/-! ## A222704.P2639574134122838213

`A024788(n+4)-A024789(n+4)`
-/

namespace A222704.P2639574134122838213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 4) - A024789 (n + 4)

end

end A222704.P2639574134122838213

/-! ## A222704.P13080949268051888553

`∑[A182714(n+4)]-A024789(n+4)`
-/

namespace A222704.P13080949268051888553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024789 (n + 4)

end

end A222704.P13080949268051888553

/-! ## A222704.P12670855324410961919

`A197126(∑[n+3]+7)`
-/

namespace A222704.P12670855324410961919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222704.P12670855324410961919

/-! ## A222704.P327334534818279272

`or(char[2], A197126(A167614(n+2)+1))`
-/

namespace A222704.P327334534818279272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A197126 (A167614 (n + 2) + 1).toNat)

end

end A222704.P327334534818279272

/-! ## A222704.P12960442930134203365

`gcd(A000038(n), A197126(A167614(n+2)+1))`
-/

namespace A222704.P12960442930134203365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A197126 (A167614 (n + 2) + 1).toNat)

end

end A222704.P12960442930134203365

/-! ## A222704.P3042937253899700185

`A197126(A167614(n+2)+1)+A000007(n+1)`
-/

namespace A222704.P3042937253899700185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A167614 (n + 2) + 1).toNat + A000007 (n + 1)

end

end A222704.P3042937253899700185

/-! ## A222704.P15053262569018235254

`A197126(A167614(n+2)+1)+A000038(n+1)`
-/

namespace A222704.P15053262569018235254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A167614 (n + 2) + 1).toNat + A000038 (n + 1)

end

end A222704.P15053262569018235254

/-! ## A222704.P17197689840841060958

`A000034(2*n)*A197126(A167614(n+2)+1)`
-/

namespace A222704.P17197689840841060958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A197126 (A167614 (n + 2) + 1).toNat

end

end A222704.P17197689840841060958

/-! ## A222704.P14028343433338115503

`A197126(A167614(n+2)+1)%A022524(n+1)`
-/

namespace A222704.P14028343433338115503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197126 (A167614 (n + 2) + 1).toNat) (A022524 (n + 1))

end

end A222704.P14028343433338115503

/-! ## A222704.P10624111275496134328

`A007318(C(2, n))*A197126(A167614(n+2)+1)`
-/

namespace A222704.P10624111275496134328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A197126 (A167614 (n + 2) + 1).toNat

end

end A222704.P10624111275496134328

/-! ## A222704.P5424150425448901764

`A014963(A027379(n+6))*A197126(A167614(n+2)+1)`
-/

namespace A222704.P5424150425448901764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A027379 (n + 6)).toNat * A197126 (A167614 (n + 2) + 1).toNat

end

end A222704.P5424150425448901764

/-!
# A222705: Total number of parts of multiplicity 5 in all partitions of n.

The programs for A222705, there is no canonical definition to state claims against.
-/

/-! ## A222705.P11455863842152472170

`A024794(n+5)+A024794(n+10)-A024790(n+5)`
-/

namespace A222705.P11455863842152472170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024794 (n + 5) + (A024794 (n + 10) - A024790 (n + 5))

end

end A222705.P11455863842152472170

/-! ## A222705.P3510413553263185560

`A024789(n+10)-A024790(n+11)`
-/

namespace A222705.P3510413553263185560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 10) - A024790 (n + 11)

end

end A222705.P3510413553263185560

/-! ## A222705.P6290161858059803287

`A197126(∑[n+4]+11)`
-/

namespace A222705.P6290161858059803287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A222705.P6290161858059803287

/-! ## A222705.P12333399481340653044

`or(A183562(n+5), A307598(A064173(n+1)))`
-/

namespace A222705.P12333399481340653044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A183562 (n + 5)) (A307598 (A064173 (n + 1)).toNat)

end

end A222705.P12333399481340653044

/-! ## A222705.P9402235909269750375

`or(A183562(n+5), A191162(A011782(n)))`
-/

namespace A222705.P9402235909269750375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A183562 (n + 5)) (A191162 (A011782 n).toNat)

end

end A222705.P9402235909269750375

/-!
# A222706: Total number of parts of multiplicity 6 in all partitions of n.

The programs for A222706, there is no canonical definition to state claims against.
-/

/-! ## A222706.P17747661947186394277

`A024790(n+12)-A024791(n+13)`
-/

namespace A222706.P17747661947186394277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024790 (n + 12) - A024791 (n + 13)

end

end A222706.P17747661947186394277

/-! ## A222706.P9667694517030882895

`A197126(A166136(n+4))`
-/

namespace A222706.P9667694517030882895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A166136 (n + 4)).toNat

end

end A222706.P9667694517030882895

/-! ## A222706.P4017239238250594277

`A197126(A056115(n)+21)`
-/

namespace A222706.P4017239238250594277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A056115 n + 21).toNat

end

end A222706.P4017239238250594277

/-! ## A222706.P10131004609903774119

`A197126(A167499(n+4)+1)`
-/

namespace A222706.P10131004609903774119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A167499 (n + 4) + 1).toNat

end

end A222706.P10131004609903774119

/-! ## A222706.P16838216697572693733

`A197126(A167614(n+4)+3)`
-/

namespace A222706.P16838216697572693733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A167614 (n + 4) + 3).toNat

end

end A222706.P16838216697572693733

/-! ## A222706.P488628347251051277

`A197126(A000124(n+5)+5)`
-/

namespace A222706.P488628347251051277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A000124 (n + 5) + 5).toNat

end

end A222706.P488628347251051277

/-! ## A222706.P13669251428268819352

`A197126(A000096(n+4)+7)`
-/

namespace A222706.P13669251428268819352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A000096 (n + 4) + 7).toNat

end

end A222706.P13669251428268819352

/-! ## A222706.P2571871381715995588

`A197126(A000217(n+5)+6)`
-/

namespace A222706.P2571871381715995588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A000217 (n + 5) + 6).toNat

end

end A222706.P2571871381715995588

/-! ## A222706.P11560059912523228117

`A197126(A046691(n+3)+10)`
-/

namespace A222706.P11560059912523228117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A046691 (n + 3) + 10).toNat

end

end A222706.P11560059912523228117

/-! ## A222706.P9079174476145847352

`A197126(A052905(n+2)+11)`
-/

namespace A222706.P9079174476145847352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A052905 (n + 2) + 11).toNat

end

end A222706.P9079174476145847352

/-! ## A222706.P5653198968080966970

`A197126(A038722(A052905(n+3)))`
-/

namespace A222706.P5653198968080966970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A038722 (A052905 (n + 3)).toNat).toNat

end

end A222706.P5653198968080966970

/-!
# A222707: Total number of parts of multiplicity 7 in all partitions of n.

The programs for A222707, there is no canonical definition to state claims against.
-/

/-! ## A222707.P5504270820834324948

`A024791(n+7)-A024792(n+7)`
-/

namespace A222707.P5504270820834324948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024791 (n + 7) - A024792 (n + 7)

end

end A222707.P5504270820834324948

/-! ## A222707.P7040146194640784145

`A024791(n+14)%A024792(n+15)`
-/

namespace A222707.P7040146194640784145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024791 (n + 14)) (A024792 (n + 15))

end

end A222707.P7040146194640784145

/-! ## A222707.P9314030785603283597

`A197126(A056119(n)+28)`
-/

namespace A222707.P9314030785603283597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A056119 n + 28).toNat

end

end A222707.P9314030785603283597

/-! ## A222707.P14617221216507298057

`A197126(A166136(n+5)+1)`
-/

namespace A222707.P14617221216507298057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A166136 (n + 5) + 1).toNat

end

end A222707.P14617221216507298057

/-! ## A222707.P2442339604196509099

`A197126(A167499(n+5)+2)`
-/

namespace A222707.P2442339604196509099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A167499 (n + 5) + 2).toNat

end

end A222707.P2442339604196509099

/-! ## A222707.P3235128360548457837

`A197126(A167614(n+5)+4)`
-/

namespace A222707.P3235128360548457837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A167614 (n + 5) + 4).toNat

end

end A222707.P3235128360548457837

/-! ## A222707.P11360841485821761963

`A197126(A000124(n+6)+6)`
-/

namespace A222707.P11360841485821761963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A000124 (n + 6) + 6).toNat

end

end A222707.P11360841485821761963

/-! ## A222707.P17599348691606275110

`A197126(A000096(n+5)+8)`
-/

namespace A222707.P17599348691606275110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A000096 (n + 5) + 8).toNat

end

end A222707.P17599348691606275110

/-! ## A222707.P14971212735645836303

`A197126(A000217(n+6)+7)`
-/

namespace A222707.P14971212735645836303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A000217 (n + 6) + 7).toNat

end

end A222707.P14971212735645836303

/-! ## A222707.P8279762643279505305

`A197126(A052905(n+3)+12)`
-/

namespace A222707.P8279762643279505305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A052905 (n + 3) + 12).toNat

end

end A222707.P8279762643279505305

/-! ## A222707.P9546702563577935921

`A197126(A034856(n+6)-(n-2))`
-/

namespace A222707.P9546702563577935921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A034856 (n + 6) - ((n : ℤ) - 2)).toNat

end

end A222707.P9546702563577935921

/-!
# A222708: Total number of parts of multiplicity 8 in all partitions of n.

The programs for A222708, there is no canonical definition to state claims against.
-/

/-! ## A222708.P8813176560901686753

`A024792(n+8)-A024793(n+8)`
-/

namespace A222708.P8813176560901686753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024792 (n + 8) - A024793 (n + 8)

end

end A222708.P8813176560901686753

/-! ## A222708.P12403409942928841537

`A197126(A167499(n+6)+3)`
-/

namespace A222708.P12403409942928841537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A167499 (n + 6) + 3).toNat

end

end A222708.P12403409942928841537

/-! ## A222708.P9155619655521768235

`A197126(A167614(n+6)+5)`
-/

namespace A222708.P9155619655521768235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A167614 (n + 6) + 5).toNat

end

end A222708.P9155619655521768235

/-! ## A222708.P9536384538219458523

`A197126(A000124(n+7)+7)`
-/

namespace A222708.P9536384538219458523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A000124 (n + 7) + 7).toNat

end

end A222708.P9536384538219458523

/-! ## A222708.P4055431316873409880

`A197126(A000217(n+7)+8)`
-/

namespace A222708.P4055431316873409880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A000217 (n + 7) + 8).toNat

end

end A222708.P4055431316873409880

/-! ## A222708.P11580092301272820147

`A197126(A161680(n+8)+8)`
-/

namespace A222708.P11580092301272820147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A161680 (n + 8) + 8).toNat

end

end A222708.P11580092301272820147

/-!
# A222709: Total number of parts of multiplicity 9 in all partitions of n.

The programs for A222709, there is no canonical definition to state claims against.
-/

/-! ## A222709.P3172351558363197477

`A024793(n+9)-A024794(n+9)`
-/

namespace A222709.P3172351558363197477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (n + 9) - A024794 (n + 9)

end

end A222709.P3172351558363197477

/-! ## A222709.P5570769889684273671

`A197126(A167499(n+7)+4)`
-/

namespace A222709.P5570769889684273671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A167499 (n + 7) + 4).toNat

end

end A222709.P5570769889684273671

/-! ## A222709.P7857162161321928424

`A197126(A000217(n+8)+9)`
-/

namespace A222709.P7857162161321928424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A000217 (n + 8) + 9).toNat

end

end A222709.P7857162161321928424

/-! ## A222709.P2357808684330379630

`A197126(eq[10, A131818(n+1)])`
-/

namespace A222709.P2357808684330379630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222709.P2357808684330379630

/-! ## A222709.P7658767987672839726

`A197126(A000124(n+9)-(n+1))`
-/

namespace A222709.P7658767987672839726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A000124 (n + 9) - (n + 1 : ℤ)).toNat

end

end A222709.P7658767987672839726

/-!
# A222710: Total number of parts of multiplicity 10 in all partitions of n.

The programs for A222710, there is no canonical definition to state claims against.
-/

/-! ## A222710.P1660212643273818577

`A197126(A000217(n+9)+10)`
-/

namespace A222710.P1660212643273818577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A000217 (n + 9) + 10).toNat

end

end A222710.P1660212643273818577

/-! ## A222710.P11955650705458548555

`A197126(eq[10, A130270(n+1)])`
-/

namespace A222710.P11955650705458548555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222710.P11955650705458548555

/-! ## A222710.P7131897267674319766

`A197126(eq[11, A131818(n+1)])`
-/

namespace A222710.P7131897267674319766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222710.P7131897267674319766

/-! ## A222710.P11310461008143331732

`A197126(A052905(n+7)-(n-5))`
-/

namespace A222710.P11310461008143331732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A052905 (n + 7) - ((n : ℤ) - 5)).toNat

end

end A222710.P11310461008143331732

/-! ## A222710.P13012658547060207904

`A197126(A167499(n+6)+A005843(n+11))`
-/

namespace A222710.P13012658547060207904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A167499 (n + 6) + A005843 (n + 11)).toNat

end

end A222710.P13012658547060207904

/-!
# A222711: Numbers k such that gcd(sigma(k), phi(k)) (A009223) attains record values.

The programs for A222711, there is no canonical definition to state claims against.
-/

/-! ## A222711.P1164988504725092550

`A222713(A222712(n+1))`
-/

namespace A222711.P1164988504725092550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (A222712 (n + 1)).toNat

end

end A222711.P1164988504725092550

/-! ## A222711.P15165691231228318389

`A222713(record[A222712(C(comp[∑[n]]-n, 2)-n)])`
-/

namespace A222711.P15165691231228318389
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222712 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A222711.P15165691231228318389

/-! ## A222711.P12982475166031380376

`A222713(record[A009223(n+1)])`
-/

namespace A222711.P12982475166031380376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A222711.P12982475166031380376

/-! ## A222711.P9121151413323012224

`A222713(record[A066087(n+1)+A066086(n+1)])`
-/

namespace A222711.P9121151413323012224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1) + A066086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A222711.P9121151413323012224

/-! ## A222711.P3061872284909251748

`A222713(record[A062354(n+1)/A009286(n+1)])`
-/

namespace A222711.P3061872284909251748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A009286 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A222711.P3061872284909251748

/-!
# A222712: Record values of gcd(sigma(n), phi(n)) (A009223).

The programs for A222712, there is no canonical definition to state claims against.
-/

/-! ## A222712.P9368507793333356828

`record[gcd(A000010(n+1), A000203(n+1))]`
-/

namespace A222712.P9368507793333356828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222712.P9368507793333356828

/-! ## A222712.P14317877396872124849

`record[gcd(A073255(n+1), A073256(n+1))]`
-/

namespace A222712.P14317877396872124849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073255 (n + 1)) (A073256 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222712.P14317877396872124849

/-! ## A222712.P12026970831270275240

`record[A009223(n+1)]`
-/

namespace A222712.P12026970831270275240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222712.P12026970831270275240

/-! ## A222712.P11004959477289294089

`A009223(A222711(n+1))`
-/

namespace A222712.P11004959477289294089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (A222711 (n + 1)).toNat

end

end A222712.P11004959477289294089

/-! ## A222712.P11315263912183175832

`record[A066087(n+1)+A066086(n+1)]`
-/

namespace A222712.P11315263912183175832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1) + A066086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222712.P11315263912183175832

/-!
# A222714: Smallest i such that prime(n) divides gcd(sigma(i), phi(i)) (cf. A009223).

The programs for A222714, there is no canonical definition to state claims against.
-/

/-! ## A222714.P1613245222359363760

`A222713(p?[xor(1, n+2)-3])`
-/

namespace A222714.P1613245222359363760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 2) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A222714.P1613245222359363760

/-! ## A222714.P12550427752434585464

`A222713(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A222714.P12550427752434585464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A222714.P12550427752434585464

/-! ## A222714.P15663160178536128087

`A222713(Δ[A007504(n)])`
-/

namespace A222714.P15663160178536128087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (f1 (n + 1) - f1 n).toNat

end

end A222714.P15663160178536128087

/-! ## A222714.P11150122475032209923

`A222713(A000040(n+1))`
-/

namespace A222714.P11150122475032209923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (A000040 (n + 1)).toNat

end

end A222714.P11150122475032209923

/-! ## A222714.P15093451150867502970

`A222713(A095320(n+1))`
-/

namespace A222714.P15093451150867502970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (A095320 (n + 1)).toNat

end

end A222714.P15093451150867502970

/-! ## A222714.P5855947686710359594

`A222713(A216883(n+1))`
-/

namespace A222714.P5855947686710359594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (A216883 (n + 1)).toNat

end

end A222714.P5855947686710359594

/-! ## A222714.P11950670102159461433

`A222713(A216884(n+1))`
-/

namespace A222714.P11950670102159461433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (A216884 (n + 1)).toNat

end

end A222714.P11950670102159461433

/-! ## A222714.P13006823321833865021

`A222713(A216885(n+1))`
-/

namespace A222714.P13006823321833865021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (A216885 (n + 1)).toNat

end

end A222714.P13006823321833865021

/-! ## A222714.P3938021435533880080

`A222713(A216887(n+1))`
-/

namespace A222714.P3938021435533880080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222713 (A216887 (n + 1)).toNat

end

end A222714.P3938021435533880080

/-!
# A222715: The number of binary pattern classes in the (2,n)-rectangular grid with 5 '1's and (2n-5) '0's: two patterns are in same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A222715, the canonical program `A222715.P3900084338169479973` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222715 has offset 3).

The definition of A222715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222715.P3900084338169479973

`∑[A005900(n+1)+(n+1)*A178946(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A222715

/-- `∑[A005900(n+1)+(n+1)*A178946(n+1)]` -/
def P3900084338169479973.Spec : Prop :=
  ∀ n, P3900084338169479973.a n = A222715 (n + 3)

theorem P3900084338169479973.correct : P3900084338169479973.Spec := by
  intro n
  simp only [A222715, Nat.add_sub_cancel]

end A222715

/-! ## A222715.P9262003482862270659

`∑[A005994(2*n)+∑[n²]+(n+1)²/gcd(2, n+1)]`
-/

namespace A222715.P9262003482862270659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005994 (2 * n) : ℚ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) + ((n + 1) ^ 2 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222715.P9262003482862270659

namespace A222715

/-- `∑[A005994(2*n)+∑[n²]+(n+1)²/gcd(2, n+1)]` -/
def P9262003482862270659.Spec : Prop :=
  ∀ n, P9262003482862270659.a n = (A222715 (n + 3) : ℚ)

end A222715

/-! ## A222715.P5543529483357769806

`A248017(∑[n+3]+5)`
-/

namespace A222715.P5543529483357769806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248017 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A222715.P5543529483357769806

namespace A222715

/-- `A248017(∑[n+3]+5)` -/
def P5543529483357769806.Spec : Prop :=
  ∀ n, P5543529483357769806.a n = A222715 (n + 3)

end A222715

/-! ## A222715.P9376646070033298540

`A226048((n+3)²+5)`
-/

namespace A222715.P9376646070033298540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226048 ((n + 3) ^ 2 + 5)

end

end A222715.P9376646070033298540

namespace A222715

/-- `A226048((n+3)²+5)` -/
def P9376646070033298540.Spec : Prop :=
  ∀ n, P9376646070033298540.a n = A222715 (n + 3)

end A222715

/-!
# A222716: Numbers which are both the sum of n+1 consecutive triangular numbers and the sum of the n-1 immediately following triangular numbers.

The programs for A222716, the canonical program `A222716.P15093168432039899886` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222716 has offset 1).

The definition of A222716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222716.P1749958404941287540

`n*(n+1)*(n+2)*(3*(n+1)²-2)/6`
-/

namespace A222716.P1749958404941287540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) * (n + 2) : ℤ) * ((3 * (n + 1) ^ 2 : ℤ) - 2) : ℚ) / 6

end

end A222716.P1749958404941287540

namespace A222716

/-- `n*(n+1)*(n+2)*(3*(n+1)²-2)/6` -/
def P1749958404941287540.Spec : Prop :=
  ∀ n, P1749958404941287540.a n = (A222716 (n + 1) : ℚ)

theorem P1749958404941287540.correct : P1749958404941287540.Spec := by
  intro n
  simp only [A222716, Nat.add_sub_cancel, A222716.P1749958404941287540.a, A222716.P15093168432039899886.a, A024166, A024166.P6072422221111961718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222716

/-! ## A222716.P15093168432039899886

`10*A024166(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A222716

/-- `10*A024166(n)` -/
def P15093168432039899886.Spec : Prop :=
  ∀ n, P15093168432039899886.a n = A222716 (n + 1)

theorem P15093168432039899886.correct : P15093168432039899886.Spec := by
  intro n
  simp only [A222716, Nat.add_sub_cancel]

end A222716

/-! ## A222716.P7654935558423130768

`A000292(n)*A100536(n+1)`
-/

namespace A222716.P7654935558423130768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A100536 (n + 1)

end

end A222716.P7654935558423130768

namespace A222716

/-- `A000292(n)*A100536(n+1)` -/
def P7654935558423130768.Spec : Prop :=
  ∀ n, P7654935558423130768.a n = A222716 (n + 1)

theorem P7654935558423130768.correct : P7654935558423130768.Spec := by
  intro n
  simp only [A222716, Nat.add_sub_cancel, A222716.P7654935558423130768.a, A222716.P15093168432039899886.a, A000292, A000292.P18322089543142633594.a, A024166, A024166.P6072422221111961718.a, A100536, A100536.P12167223128897193754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222716

/-! ## A222716.P18208677896843856535

`∑[∑[n/cos(atan(3))]²]`
-/

namespace A222716.P18208677896843856535
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.cos (Real.arctan (3 : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222716.P18208677896843856535

namespace A222716

/-- `∑[∑[n/cos(atan(3))]²]` -/
def P18208677896843856535.Spec : Prop :=
  ∀ n, P18208677896843856535.a n = (A222716 (n + 1) : ℝ)

end A222716

/-! ## A222716.P9048253712578056197

`∑[∑[n/sin(acot(3))]²]`
-/

namespace A222716.P9048253712578056197
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.sin (SequenceMachineLib.acot (3 : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222716.P9048253712578056197

namespace A222716

/-- `∑[∑[n/sin(acot(3))]²]` -/
def P9048253712578056197.Spec : Prop :=
  ∀ n, P9048253712578056197.a n = (A222716 (n + 1) : ℝ)

end A222716

/-! ## A222716.P2526834121786925864

`Δ[C(n²+n, 3)/2]`
-/

namespace A222716.P2526834121786925864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2 + n) 3 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222716.P2526834121786925864

namespace A222716

/-- `Δ[C(n²+n, 3)/2]` -/
def P2526834121786925864.Spec : Prop :=
  ∀ n, P2526834121786925864.a n = (A222716 (n + 1) : ℚ)

theorem P2526834121786925864.correct : P2526834121786925864.Spec := by
  intro n
  simp only [A222716, Nat.add_sub_cancel, A222716.P2526834121786925864.f1, A222716.P2526834121786925864.a, A222716.P15093168432039899886.a, A024166, A024166.P6072422221111961718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222716

/-! ## A222716.P1046407532487824003

`∑[∑[A244729(n)]]`
-/

namespace A222716.P1046407532487824003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222716.P1046407532487824003

namespace A222716

/-- `∑[∑[A244729(n)]]` -/
def P1046407532487824003.Spec : Prop :=
  ∀ n, P1046407532487824003.a n = A222716 (n + 1)

end A222716

/-! ## A222716.P4486449753450104344

`A000292(n+1)+A000217(n+1)*A152015(n+1)`
-/

namespace A222716.P4486449753450104344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + A000217 (n + 1) * A152015 (n + 1)

end

end A222716.P4486449753450104344

namespace A222716

/-- `A000292(n+1)+A000217(n+1)*A152015(n+1)` -/
def P4486449753450104344.Spec : Prop :=
  ∀ n, P4486449753450104344.a n = A222716 (n + 1)

theorem P4486449753450104344.correct : P4486449753450104344.Spec := by
  intro n
  simp only [A222716, Nat.add_sub_cancel, A222716.P4486449753450104344.a, A222716.P15093168432039899886.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, A024166, A024166.P6072422221111961718.a, A152015, A152015.P10693124433547333661.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222716

/-! ## A222716.P4934196627750894160

`A008911(n+1)+n*A036464(n+2)`
-/

namespace A222716.P4934196627750894160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1) + (n : ℤ) * A036464 (n + 2)

end

end A222716.P4934196627750894160

namespace A222716

/-- `A008911(n+1)+n*A036464(n+2)` -/
def P4934196627750894160.Spec : Prop :=
  ∀ n, P4934196627750894160.a n = A222716 (n + 1)

theorem P4934196627750894160.correct : P4934196627750894160.Spec := by
  intro n
  simp only [A222716, Nat.add_sub_cancel, A222716.P4934196627750894160.a, A222716.P15093168432039899886.a, A008911, A008911.P13273812959186450040.a, A024166, A024166.P6072422221111961718.a, A036464, A036464.P6645508525514235542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222716

/-! ## A222716.P5963510182656964386

`A000217(n+1)*A002414(n+1)-A172045(n+1)`
-/

namespace A222716.P5963510182656964386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A002414 (n + 1) - A172045 (n + 1)

end

end A222716.P5963510182656964386

namespace A222716

/-- `A000217(n+1)*A002414(n+1)-A172045(n+1)` -/
def P5963510182656964386.Spec : Prop :=
  ∀ n, P5963510182656964386.a n = A222716 (n + 1)

end A222716

/-! ## A222716.P8899977846820045768

`A168178(n+1)-A000292(2*n+1)`
-/

namespace A222716.P8899977846820045768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 (n + 1) - A000292 (2 * n + 1)

end

end A222716.P8899977846820045768

namespace A222716

/-- `A168178(n+1)-A000292(2*n+1)` -/
def P8899977846820045768.Spec : Prop :=
  ∀ n, P8899977846820045768.a n = A222716 (n + 1)

theorem P8899977846820045768.correct : P8899977846820045768.Spec := by
  intro n
  simp only [A222716, Nat.add_sub_cancel, A222716.P8899977846820045768.a, A222716.P15093168432039899886.a, A000292, A000292.P18322089543142633594.a, A024166, A024166.P6072422221111961718.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222716

/-! ## A222716.P8886598673825586413

`n*A007009(2*n+1)-A006918(2*n)`
-/

namespace A222716.P8886598673825586413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007009 (2 * n + 1) - A006918 (2 * n)

end

end A222716.P8886598673825586413

namespace A222716

/-- `n*A007009(2*n+1)-A006918(2*n)` -/
def P8886598673825586413.Spec : Prop :=
  ∀ n, P8886598673825586413.a n = A222716 (n + 1)

end A222716

/-! ## A222716.P9614209558972001933

`∑[A033583(∑[n])]`
-/

namespace A222716.P9614209558972001933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222716.P9614209558972001933

namespace A222716

/-- `∑[A033583(∑[n])]` -/
def P9614209558972001933.Spec : Prop :=
  ∀ n, P9614209558972001933.a n = A222716 (n + 1)

end A222716

/-! ## A222716.P8432779211809612090

`∑[A032526(∑[2*n])]`
-/

namespace A222716.P8432779211809612090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032526 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222716.P8432779211809612090

namespace A222716

/-- `∑[A032526(∑[2*n])]` -/
def P8432779211809612090.Spec : Prop :=
  ∀ n, P8432779211809612090.a n = A222716 (n + 1)

end A222716

/-! ## A222716.P2576299200607918591

`∑[A195142(∑[2*n])]`
-/

namespace A222716.P2576299200607918591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222716.P2576299200607918591

namespace A222716

/-- `∑[A195142(∑[2*n])]` -/
def P2576299200607918591.Spec : Prop :=
  ∀ n, P2576299200607918591.a n = A222716 (n + 1)

end A222716

/-!
# A222717: Primes p whose smallest positive quadratic nonresidue is not a primitive root of p.

The programs for A222717, there is no canonical definition to state claims against.
-/

/-! ## A222717.P7226988354085812868

`p?[A267303(A020656(n+5))%A003278(n+1)]`
-/

namespace A222717.P7226988354085812868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267303 (A020656 (n + 5)).toNat) (A003278 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222717.P7226988354085812868

/-! ## A222717.P9752658404407534754

`A000040(eq[A114905(3*n+1), A114915(n+1)])`
-/

namespace A222717.P9752658404407534754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114905 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A222717.P9752658404407534754

/-!
# A222718: Number of nX2 0..3 arrays with exactly floor(nX2/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222718, there is no canonical definition to state claims against.
-/

/-! ## A222718.P14535264794969246526

`A222722(∑[n+1]+2)`
-/

namespace A222718.P14535264794969246526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222722 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222718.P14535264794969246526

/-! ## A222718.P3095242094938368650

`record[A222722(A101881(n)+3)]`
-/

namespace A222718.P3095242094938368650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222722 (A101881 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222718.P3095242094938368650

/-! ## A222718.P6219774152244675394

`lcm(2, A222722(A000096(n)+3))`
-/

namespace A222718.P6219774152244675394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222722 (A000096 n + 3).toNat)

end

end A222718.P6219774152244675394

/-! ## A222718.P14118119035553701082

`record[A222722(A114091(n+1)+1)]`
-/

namespace A222718.P14118119035553701082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222722 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222718.P14118119035553701082

/-! ## A222718.P3567641074251403495

`record[A222722(n+1)%A038291(n)]`
-/

namespace A222718.P3567641074251403495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222722 (n + 1)) (A038291 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222718.P3567641074251403495

/-!
# A222719: Number of nX3 0..3 arrays with exactly floor(nX3/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222719, there is no canonical definition to state claims against.
-/

/-! ## A222719.P18359389534069937876

`A222722(∑[n+2]+4)`
-/

namespace A222719.P18359389534069937876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222722 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222719.P18359389534069937876

/-! ## A222719.P18028178335337030385

`record[A167374(n)*A222722(n+4)]`
-/

namespace A222719.P18028178335337030385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A222722 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222719.P18028178335337030385

/-! ## A222719.P17384680014514381063

`record[A222722(n+4)/A111559(n)]`
-/

namespace A222719.P17384680014514381063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222722 (n + 4) : ℚ) / (A111559 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222719.P17384680014514381063

/-! ## A222719.P3890301239541204102

`ceil(acot(n))*A222722(A167614(n+1))`
-/

namespace A222719.P3890301239541204102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A222722 (A167614 (n + 1)).toNat

end

end A222719.P3890301239541204102

/-! ## A222719.P8944276234809800047

`A222722(A167614(n+1))+A025439(n)`
-/

namespace A222719.P8944276234809800047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222722 (A167614 (n + 1)).toNat + A025439 n

end

end A222719.P8944276234809800047

/-!
# A222720: Number of nX4 0..3 arrays with exactly floor(nX4/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222720, there is no canonical definition to state claims against.
-/

/-! ## A222720.P7122196874310334592

`A222722(∑[n+3]+7)`
-/

namespace A222720.P7122196874310334592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222722 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222720.P7122196874310334592

/-!
# A222721: Number of nX5 0..3 arrays with exactly floor(nX5/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222721, there is no canonical definition to state claims against.
-/

/-! ## A222721.P16531357318621462065

`A222722(A374005(n+1))`
-/

namespace A222721.P16531357318621462065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222722 (A374005 (n + 1)).toNat

end

end A222721.P16531357318621462065

/-! ## A222721.P2117026847150197533

`A222722(A155212(n)+13)`
-/

namespace A222721.P2117026847150197533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222722 (A155212 n + 13).toNat

end

end A222721.P2117026847150197533

/-!
# A222723: Palindromic primes starting with a digit 1.

The programs for A222723, there is no canonical definition to state claims against.
-/

/-! ## A222723.P11106305412563671590

`∩[A002385(n+1), A043036(n+1)]`
-/

namespace A222723.P11106305412563671590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P11106305412563671590

/-! ## A222723.P17732177782603940958

`∩[A043036(n+1), A072299(n+1)]`
-/

namespace A222723.P17732177782603940958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P17732177782603940958

/-! ## A222723.P9616221047711383219

`∩[A043036(n+1), A037010(n)+a(n-1)]` with `a(0)=2`
-/

namespace A222723.P9616221047711383219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A037010 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P9616221047711383219

/-! ## A222723.P11674637478169619012

`∩[A043036(n+1), A232183(n+1)]`
-/

namespace A222723.P11674637478169619012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P11674637478169619012

/-! ## A222723.P13168866608901737452

`∩[A043036(n+1), A180440(n+1)]`
-/

namespace A222723.P13168866608901737452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P13168866608901737452

/-! ## A222723.P1355451265782631699

`∩[A002113(n+1), A062332(n+1)]`
-/

namespace A222723.P1355451265782631699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P1355451265782631699

/-! ## A222723.P8491260578385089206

`∩[A002385(n+1), A062332(n+1)]`
-/

namespace A222723.P8491260578385089206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P8491260578385089206

/-! ## A222723.P17769243740295337240

`∩[A029950(n+1), A062332(n+1)]`
-/

namespace A222723.P17769243740295337240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P17769243740295337240

/-! ## A222723.P4136988285462403419

`∩[A043036(n+1), A062332(n+1)]`
-/

namespace A222723.P4136988285462403419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P4136988285462403419

/-! ## A222723.P14360964693221858971

`∩[A062332(n+1), A062687(n+1)]`
-/

namespace A222723.P14360964693221858971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P14360964693221858971

/-! ## A222723.P16490577960237129373

`∩[A062332(n+1), A069217(n+1)]`
-/

namespace A222723.P16490577960237129373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P16490577960237129373

/-! ## A222723.P16356753776471181558

`∩[A062332(n+1), A071251(n+1)]`
-/

namespace A222723.P16356753776471181558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P16356753776471181558

/-! ## A222723.P3799833323559897498

`∩[A062332(n+1), A072299(n+1)]`
-/

namespace A222723.P3799833323559897498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P3799833323559897498

/-! ## A222723.P3368733909268841428

`∩[A062332(n+1), A075800(n+1)]`
-/

namespace A222723.P3368733909268841428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P3368733909268841428

/-! ## A222723.P11575437264909424954

`∩[A062332(n+1), A080716(n+1)]`
-/

namespace A222723.P11575437264909424954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P11575437264909424954

/-! ## A222723.P2067726732578925676

`∩[A062332(n+1), A083136(n+1)]`
-/

namespace A222723.P2067726732578925676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P2067726732578925676

/-! ## A222723.P13524408819371340711

`∩[A062332(n+1), A083137(n+1)]`
-/

namespace A222723.P13524408819371340711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P13524408819371340711

/-! ## A222723.P13936173135735941978

`∩[A062332(n+1), A084092(n+1)]`
-/

namespace A222723.P13936173135735941978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P13936173135735941978

/-! ## A222723.P4424970859497439508

`∩[A062332(n+1), A098897(n+1)]`
-/

namespace A222723.P4424970859497439508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P4424970859497439508

/-! ## A222723.P972789644586726901

`∩[A062332(n+1), A169829(n+1)]`
-/

namespace A222723.P972789644586726901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222723.P972789644586726901

/-!
# A222724: Palindromic nonprime numbers starting with a digit 1.

The programs for A222724, there is no canonical definition to state claims against.
-/

/-! ## A222724.P2403785307644679840

`∩[A032350(n+1), A043036(n+1)]`
-/

namespace A222724.P2403785307644679840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P2403785307644679840

/-! ## A222724.P4553810313459946291

`∩[A002113(n+1), A208260(n+1)]`
-/

namespace A222724.P4553810313459946291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P4553810313459946291

/-! ## A222724.P5619777904485849823

`∩[A029950(n+1), A208260(n+1)]`
-/

namespace A222724.P5619777904485849823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P5619777904485849823

/-! ## A222724.P10107633161274537864

`∩[A032350(n+1), A208260(n+1)]`
-/

namespace A222724.P10107633161274537864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P10107633161274537864

/-! ## A222724.P15067913608938471181

`∩[A043036(n+1), A208260(n+1)]`
-/

namespace A222724.P15067913608938471181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P15067913608938471181

/-! ## A222724.P12008101308895314686

`∩[A061379(n+1), A208260(n+1)]`
-/

namespace A222724.P12008101308895314686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P12008101308895314686

/-! ## A222724.P1439397208842706375

`∩[A061917(n+1), A208260(n+1)]`
-/

namespace A222724.P1439397208842706375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P1439397208842706375

/-! ## A222724.P771043586887027371

`∩[A083970(n+1), A208260(n+1)]`
-/

namespace A222724.P771043586887027371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P771043586887027371

/-! ## A222724.P12064492920550533030

`∩[A169824(n+1), A208260(n+1)]`
-/

namespace A222724.P12064492920550533030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P12064492920550533030

/-! ## A222724.P3528237104840700904

`∩[A208260(n+1), A306273(n+1)]`
-/

namespace A222724.P3528237104840700904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P3528237104840700904

/-! ## A222724.P8134878078291274341

`∩[A032350(n+1), A208259(n+1)]`
-/

namespace A222724.P8134878078291274341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P8134878078291274341

/-! ## A222724.P12956421517701292057

`∩[A092361(n+1), A208260(n+1)]`
-/

namespace A222724.P12956421517701292057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P12956421517701292057

/-! ## A222724.P11310574548189034696

`∩[A002113(n+1), A053178(n+1)]`
-/

namespace A222724.P11310574548189034696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P11310574548189034696

/-! ## A222724.P7433354840675754637

`∩[A029950(n+1), A053178(n+1)]`
-/

namespace A222724.P7433354840675754637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P7433354840675754637

/-! ## A222724.P14249655536827988833

`∩[A032350(n+1), A053178(n+1)]`
-/

namespace A222724.P14249655536827988833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P14249655536827988833

/-! ## A222724.P11861613624883755687

`∩[A043036(n+1), A053178(n+1)]`
-/

namespace A222724.P11861613624883755687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P11861613624883755687

/-! ## A222724.P7887714829129008514

`∩[A053178(n+1), A061917(n+1)]`
-/

namespace A222724.P7887714829129008514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P7887714829129008514

/-! ## A222724.P3335413186821376290

`∩[A053178(n+1), A083970(n+1)]`
-/

namespace A222724.P3335413186821376290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P3335413186821376290

/-! ## A222724.P18301926338876164527

`∩[A053178(n+1), A092361(n+1)]`
-/

namespace A222724.P18301926338876164527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P18301926338876164527

/-! ## A222724.P2776014711559193352

`∩[A053178(n+1), A098897(n+1)]`
-/

namespace A222724.P2776014711559193352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222724.P2776014711559193352

/-!
# A222725: Palindromic primes starting with a digit 3.

The programs for A222725, there is no canonical definition to state claims against.
-/

/-! ## A222725.P9474853360266195209

`∩[A002385(n+1), A043038(n+1)]`
-/

namespace A222725.P9474853360266195209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222725.P9474853360266195209

/-! ## A222725.P11759308789083431866

`∩[A043038(n+1), A072299(n+1)]`
-/

namespace A222725.P11759308789083431866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222725.P11759308789083431866

/-! ## A222725.P17577304371311815995

`∩[A043038(n+1), A324989(n+1)]`
-/

namespace A222725.P17577304371311815995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222725.P17577304371311815995

/-! ## A222725.P9680767173153285834

`∩[A043038(n+1), A327325(n+1)]`
-/

namespace A222725.P9680767173153285834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222725.P9680767173153285834

/-! ## A222725.P8365317318507967460

`∩[A043038(n+1), A069217(n+1)]`
-/

namespace A222725.P8365317318507967460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222725.P8365317318507967460

/-! ## A222725.P3663459915099865783

`∩[A043038(n+1), A232183(n+1)]`
-/

namespace A222725.P3663459915099865783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222725.P3663459915099865783

/-! ## A222725.P18234210684669548946

`∩[A043038(n+1), A350836(n+1)]`
-/

namespace A222725.P18234210684669548946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222725.P18234210684669548946

/-!
# A222726: Palindromic composite numbers starting with a digit 3.

The programs for A222726, there is no canonical definition to state claims against.
-/

/-! ## A222726.P16348793960427207087

`record[A191558(A043038(n+2))]`
-/

namespace A222726.P16348793960427207087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A043038 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222726.P16348793960427207087

/-! ## A222726.P11919774811182712286

`filter[A053179(n+1), A136522(#)]`
-/

namespace A222726.P11919774811182712286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A222726.P11919774811182712286

/-! ## A222726.P6130737764260731057

`∩[A005381(n+1), A043038(n+1)]`
-/

namespace A222726.P6130737764260731057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222726.P6130737764260731057

/-! ## A222726.P2751644341397801671

`∩[A009188(n+1), A043038(n+1)]`
-/

namespace A222726.P2751644341397801671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222726.P2751644341397801671

/-! ## A222726.P13390888575419385966

`∩[A014076(n+1), A043038(n+1)]`
-/

namespace A222726.P13390888575419385966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222726.P13390888575419385966

/-!
# A222727: Palindromic primes starting with a digit 7.

The programs for A222727, there is no canonical definition to state claims against.
-/

/-! ## A222727.P1477046220134478511

`∩[A002385(n+1), A043042(n+1)]`
-/

namespace A222727.P1477046220134478511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222727.P1477046220134478511

/-! ## A222727.P3051110113280553224

`∩[A043042(n+1), A072299(n+1)]`
-/

namespace A222727.P3051110113280553224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222727.P3051110113280553224

/-! ## A222727.P12438003720707276399

`∩[A043042(n+1), A324989(n+1)]`
-/

namespace A222727.P12438003720707276399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222727.P12438003720707276399

/-! ## A222727.P13514542493351229560

`∩[A043042(n+1), A327325(n+1)]`
-/

namespace A222727.P13514542493351229560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222727.P13514542493351229560

/-! ## A222727.P14436211943119081675

`∩[A043042(n+1), A340252(n+1)]`
-/

namespace A222727.P14436211943119081675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222727.P14436211943119081675

/-! ## A222727.P15161628344778348873

`∩[A043042(n+1), A069217(n+1)]`
-/

namespace A222727.P15161628344778348873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222727.P15161628344778348873

/-! ## A222727.P3338177420405160400

`∩[A043042(n+1), A084092(n+1)]`
-/

namespace A222727.P3338177420405160400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222727.P3338177420405160400

/-! ## A222727.P12230682845606223335

`∩[A043042(n+1), A192139(n+1)]`
-/

namespace A222727.P12230682845606223335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222727.P12230682845606223335

/-! ## A222727.P12531781536608628627

`∩[A043042(n+1), A232183(n+1)]`
-/

namespace A222727.P12531781536608628627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222727.P12531781536608628627

/-! ## A222727.P7106573816587758008

`∩[A043042(n+1), A350836(n+1)]`
-/

namespace A222727.P7106573816587758008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222727.P7106573816587758008

/-!
# A222728: Palindromic composite numbers starting with a digit 7.

The programs for A222728, there is no canonical definition to state claims against.
-/

/-! ## A222728.P14479499515395753035

`record[A171435(A043042(n+2))]`
-/

namespace A222728.P14479499515395753035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A043042 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222728.P14479499515395753035

/-! ## A222728.P13874852058536000714

`filter[A043042(n+1), A354108(#)]`
-/

namespace A222728.P13874852058536000714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A222728.P13874852058536000714

/-! ## A222728.P3376907918488170085

`∩[A032350(n+1), A017353(n)]`
-/

namespace A222728.P3376907918488170085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222728.P3376907918488170085

/-! ## A222728.P3381734428768996540

`∩[A002113(n+1), A053180(n+1)]`
-/

namespace A222728.P3381734428768996540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222728.P3381734428768996540

/-! ## A222728.P2354603669858781188

`∩[A029950(n+1), A053180(n+1)]`
-/

namespace A222728.P2354603669858781188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222728.P2354603669858781188

/-! ## A222728.P918661658068573623

`∩[A032350(n+1), A053180(n+1)]`
-/

namespace A222728.P918661658068573623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222728.P918661658068573623

/-! ## A222728.P2758678986500214641

`∩[A043042(n+1), A053180(n+1)]`
-/

namespace A222728.P2758678986500214641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222728.P2758678986500214641

/-! ## A222728.P3463396819667676840

`∩[A053180(n+1), A061917(n+1)]`
-/

namespace A222728.P3463396819667676840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222728.P3463396819667676840

/-! ## A222728.P8890568867624431970

`∩[A053180(n+1), A062697(n+1)]`
-/

namespace A222728.P8890568867624431970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222728.P8890568867624431970

/-! ## A222728.P2555054638865864954

`∩[A053180(n+1), A083158(n+1)]`
-/

namespace A222728.P2555054638865864954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222728.P2555054638865864954

/-!
# A222729: Palindromic composite numbers starting with a digit 9.

The programs for A222729, there is no canonical definition to state claims against.
-/

/-! ## A222729.P10480260098814394293

`∩[A032350(n+1), A043044(n+1)]`
-/

namespace A222729.P10480260098814394293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P10480260098814394293

/-! ## A222729.P11193050165608813480

`∩[10*n+9, A032350(n+2)]`
-/

namespace A222729.P11193050165608813480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P11193050165608813480

/-! ## A222729.P367878829586690158

`record[A171435(A043044(n+1))]`
-/

namespace A222729.P367878829586690158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A043044 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222729.P367878829586690158

/-! ## A222729.P16405225837032230035

`∩[A032350(n+1), A017377(n)]`
-/

namespace A222729.P16405225837032230035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P16405225837032230035

/-! ## A222729.P15656625919621647830

`∩[A002113(n+1), A053181(n+1)]`
-/

namespace A222729.P15656625919621647830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P15656625919621647830

/-! ## A222729.P3359479164118280481

`∩[A029950(n+1), A053181(n+1)]`
-/

namespace A222729.P3359479164118280481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P3359479164118280481

/-! ## A222729.P5033358627203166850

`∩[A032350(n+1), A053181(n+1)]`
-/

namespace A222729.P5033358627203166850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P5033358627203166850

/-! ## A222729.P16629295851801673955

`∩[A043044(n+1), A053181(n+1)]`
-/

namespace A222729.P16629295851801673955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P16629295851801673955

/-! ## A222729.P6050456151439507119

`∩[A053181(n+1), A061917(n+1)]`
-/

namespace A222729.P6050456151439507119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P6050456151439507119

/-! ## A222729.P16331957969831529994

`∩[A053181(n+1), A083158(n+1)]`
-/

namespace A222729.P16331957969831529994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P16331957969831529994

/-! ## A222729.P11212391957606368904

`∩[A053181(n+1), A092361(n+1)]`
-/

namespace A222729.P11212391957606368904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P11212391957606368904

/-! ## A222729.P14742274532349295715

`∩[A053181(n+1), A098897(n+1)]`
-/

namespace A222729.P14742274532349295715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P14742274532349295715

/-! ## A222729.P12129428845055126063

`∩[A053181(n+1), A169824(n+1)]`
-/

namespace A222729.P12129428845055126063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P12129428845055126063

/-! ## A222729.P1069069301055439281

`∩[A032350(n+1), A017353(n)+2]`
-/

namespace A222729.P1069069301055439281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222729.P1069069301055439281

/-! ## A222729.P12840384420197813053

`record[A171435(2*A043041(n+1)-A043038(n+1))]`
-/

namespace A222729.P12840384420197813053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A043041 (n + 1) - A043038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222729.P12840384420197813053

/-!
# A222731: Total sum of parts of multiplicity 3 in all partitions of n.

The programs for A222731, there is no canonical definition to state claims against.
-/

/-! ## A222731.P13765401116855866784

`A222730(∑[n+3]+6)`
-/

namespace A222731.P13765401116855866784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222731.P13765401116855866784

/-! ## A222731.P13295811842231044189

`or(char[2], A222730(A167614(n+2)))`
-/

namespace A222731.P13295811842231044189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222730 (A167614 (n + 2)).toNat)

end

end A222731.P13295811842231044189

/-! ## A222731.P14035638350754442282

`A222730(A167614(n+2))%A000032(n)`
-/

namespace A222731.P14035638350754442282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222730 (A167614 (n + 2)).toNat) (A000032 n)

end

end A222731.P14035638350754442282

/-! ## A222731.P2729575950333311031

`gcd(A000038(n), A222730(A167614(n+2)))`
-/

namespace A222731.P2729575950333311031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222730 (A167614 (n + 2)).toNat)

end

end A222731.P2729575950333311031

/-! ## A222731.P17251466189269990466

`A222730(A167614(n+2))^cosh(A000007(n))`
-/

namespace A222731.P17251466189269990466
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222730 (A167614 (n + 2)).toNat : ℝ) ^ (Real.cosh (A000007 n : ℝ))

end

end A222731.P17251466189269990466

/-! ## A222731.P3375901824726764590

`A222730(A167614(n+2))+A000007(n+1)`
-/

namespace A222731.P3375901824726764590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A167614 (n + 2)).toNat + A000007 (n + 1)

end

end A222731.P3375901824726764590

/-! ## A222731.P12416111029844782005

`A222730(A167614(n+2))+A000038(n+1)`
-/

namespace A222731.P12416111029844782005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A167614 (n + 2)).toNat + A000038 (n + 1)

end

end A222731.P12416111029844782005

/-! ## A222731.P13553297343337723118

`A000108(C(2, n))*A222730(A167614(n+2))`
-/

namespace A222731.P13553297343337723118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A222730 (A167614 (n + 2)).toNat

end

end A222731.P13553297343337723118

/-! ## A222731.P3329861880126500541

`A007318(C(2, n))*A222730(A167614(n+2))`
-/

namespace A222731.P3329861880126500541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A222730 (A167614 (n + 2)).toNat

end

end A222731.P3329861880126500541

/-! ## A222731.P17942267228835542075

`A007318(and(1, -n))*A222730(A167614(n+2))`
-/

namespace A222731.P17942267228835542075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A222730 (A167614 (n + 2)).toNat

end

end A222731.P17942267228835542075

/-! ## A222731.P11903023789617956964

`A000108(n*char[1])*A222730(A167614(n+2))`
-/

namespace A222731.P11903023789617956964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n * (if ∃ j, f1 j = n then 1 else 0)) * A222730 (A167614 (n + 2)).toNat

end

end A222731.P11903023789617956964

/-! ## A222731.P15682767379026657058

`A000041(C(2, n+2))*A222730(A167614(n+2))`
-/

namespace A222731.P15682767379026657058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A222730 (A167614 (n + 2)).toNat

end

end A222731.P15682767379026657058

/-! ## A222731.P13980241280045779478

`A222730(A167614(n+2))^(A000040(n+1)%2)`
-/

namespace A222731.P13980241280045779478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222730 (A167614 (n + 2)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A222731.P13980241280045779478

/-! ## A222731.P15235867718079230170

`A014963(C(n+2, 2))*A222730(A167614(n+2))`
-/

namespace A222731.P15235867718079230170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 2) 2) * A222730 (A167614 (n + 2)).toNat

end

end A222731.P15235867718079230170

/-! ## A222731.P16415066115754756578

`A000032(abs((-1)^n))*A222730(A167614(n+2))`
-/

namespace A222731.P16415066115754756578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |(-1) ^ n|.toNat * A222730 (A167614 (n + 2)).toNat

end

end A222731.P16415066115754756578

/-! ## A222731.P1186757282932488243

`A222730(A167614(n+2))/A007318(or(3, n)-n)`
-/

namespace A222731.P1186757282932488243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222730 (A167614 (n + 2)).toNat : ℚ) / (A007318 (Nat.lor 3 n - n) : ℚ)

end

end A222731.P1186757282932488243

/-! ## A222731.P8423804257528540673

`A222730(A167614(n+2))/and(1, A006530(54*n+5))`
-/

namespace A222731.P8423804257528540673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222730 (A167614 (n + 2)).toNat : ℚ) / (Int.land 1 (A006530 (54 * n + 5)) : ℚ)

end

end A222731.P8423804257528540673

/-! ## A222731.P10978021710371351845

`A007318(A014963(2*(n+1)))*A222730(A167614(n+2))`
-/

namespace A222731.P10978021710371351845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (2 * (n + 1))).toNat * A222730 (A167614 (n + 2)).toNat

end

end A222731.P10978021710371351845

/-!
# A222732: Total sum of parts of multiplicity 4 in all partitions of n.

The programs for A222732, there is no canonical definition to state claims against.
-/

/-! ## A222732.P12434258740332489111

`A222730(∑[n+4]+10)`
-/

namespace A222732.P12434258740332489111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A222732.P12434258740332489111

/-! ## A222732.P14433985814547801584

`or(char[2], A222730(A000217(n+4)+4))`
-/

namespace A222732.P14433985814547801584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222730 (A000217 (n + 4) + 4).toNat)

end

end A222732.P14433985814547801584

/-! ## A222732.P4696991740769983422

`A222730(A000217(4-char[1]+n)+4)-char[1]`
-/

namespace A222732.P4696991740769983422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000217 (4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat + 4).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222732.P4696991740769983422

/-! ## A222732.P11173185034732690012

`A222730(A000217(n+4)+4)%A001060(n)`
-/

namespace A222732.P11173185034732690012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222730 (A000217 (n + 4) + 4).toNat) (A001060 n)

end

end A222732.P11173185034732690012

/-! ## A222732.P18210552329942777743

`gcd(A000038(n), A222730(A000217(n+4)+4))`
-/

namespace A222732.P18210552329942777743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222730 (A000217 (n + 4) + 4).toNat)

end

end A222732.P18210552329942777743

/-! ## A222732.P8992990902616068644

`A007318(C(2, n))*A222730(A000217(n+4)+4)`
-/

namespace A222732.P8992990902616068644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A222730 (A000217 (n + 4) + 4).toNat

end

end A222732.P8992990902616068644

/-! ## A222732.P2243614923667486626

`A222730(A000217(n+4)+4)/A007318(and(1, -n))`
-/

namespace A222732.P2243614923667486626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222730 (A000217 (n + 4) + 4).toNat : ℚ) / (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A222732.P2243614923667486626

/-! ## A222732.P9406749389403085385

`A000041(C(3, n²))*A222730(A000217(n+4)+4)`
-/

namespace A222732.P9406749389403085385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 3 (n ^ 2)) * A222730 (A000217 (n + 4) + 4).toNat

end

end A222732.P9406749389403085385

/-! ## A222732.P16261702290907376063

`A222730(A000217(n+4)+4)/A007318(C(n, n²))`
-/

namespace A222732.P16261702290907376063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222730 (A000217 (n + 4) + 4).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A222732.P16261702290907376063

/-! ## A222732.P14813061907560276440

`A000045(((-1)^n)²)*A222730(A000217(n+4)+4)`
-/

namespace A222732.P14813061907560276440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A222730 (A000217 (n + 4) + 4).toNat

end

end A222732.P14813061907560276440

/-! ## A222732.P12692839008126515042

`log2(A020639(2*(n+1)))*A222730(A000217(n+4)+4)`
-/

namespace A222732.P12692839008126515042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A222730 (A000217 (n + 4) + 4).toNat : ℝ)

end

end A222732.P12692839008126515042

/-! ## A222732.P5013631953290073040

`A057427(A007318(n))*A222730(A000217(n+4)+4)`
-/

namespace A222732.P5013631953290073040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A007318 n).toNat * A222730 (A000217 (n + 4) + 4).toNat

end

end A222732.P5013631953290073040

/-! ## A222732.P6581444338845504816

`A050320(A000040(n+1))*A222730(A000217(n+4)+4)`
-/

namespace A222732.P6581444338845504816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A000040 (n + 1)).toNat * A222730 (A000217 (n + 4) + 4).toNat

end

end A222732.P6581444338845504816

/-! ## A222732.P5866627802533254292

`A050320(A006530(n+2))*A222730(A000217(n+4)+4)`
-/

namespace A222732.P5866627802533254292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A006530 (n + 2)).toNat * A222730 (A000217 (n + 4) + 4).toNat

end

end A222732.P5866627802533254292

/-!
# A222733: Total sum of parts of multiplicity 5 in all partitions of n.

The programs for A222733, there is no canonical definition to state claims against.
-/

/-! ## A222733.P13888459306183112268

`A222730(A167499(n+4))`
-/

namespace A222733.P13888459306183112268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A167499 (n + 4)).toNat

end

end A222733.P13888459306183112268

/-! ## A222733.P1382800240875709747

`A222730(A077169(n+6))`
-/

namespace A222733.P1382800240875709747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A077169 (n + 6)).toNat

end

end A222733.P1382800240875709747

/-! ## A222733.P17641713639988195856

`A222730(A056115(n)+20)`
-/

namespace A222733.P17641713639988195856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A056115 n + 20).toNat

end

end A222733.P17641713639988195856

/-! ## A222733.P18379661115138810734

`A222730(A000124(n+5)+4)`
-/

namespace A222733.P18379661115138810734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000124 (n + 5) + 4).toNat

end

end A222733.P18379661115138810734

/-! ## A222733.P11678885050780692719

`A222730(A000096(n+4)+6)`
-/

namespace A222733.P11678885050780692719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000096 (n + 4) + 6).toNat

end

end A222733.P11678885050780692719

/-! ## A222733.P6504909129737129191

`A222730(A000217(n+5)+5)`
-/

namespace A222733.P6504909129737129191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000217 (n + 5) + 5).toNat

end

end A222733.P6504909129737129191

/-! ## A222733.P1302213238153646740

`A222730(A046691(n+3)+9)`
-/

namespace A222733.P1302213238153646740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A046691 (n + 3) + 9).toNat

end

end A222733.P1302213238153646740

/-! ## A222733.P12235460564996130030

`A222730(Δ[A023545(n+1)]+9)`
-/

namespace A222733.P12235460564996130030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (f1 (n + 1) - f1 n + 9).toNat

end

end A222733.P12235460564996130030

/-! ## A222733.P5593850186224040550

`A222730(A055999(n+4)-2*(n+1))`
-/

namespace A222733.P5593850186224040550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A055999 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A222733.P5593850186224040550

/-!
# A222734: Total sum of parts of multiplicity 6 in all partitions of n.

The programs for A222734, there is no canonical definition to state claims against.
-/

/-! ## A222734.P13006529552568700042

`A222730(A056119(n)+27)`
-/

namespace A222734.P13006529552568700042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A056119 n + 27).toNat

end

end A222734.P13006529552568700042

/-! ## A222734.P7572124361787527219

`A222730(A167499(n+5)+1)`
-/

namespace A222734.P7572124361787527219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A167499 (n + 5) + 1).toNat

end

end A222734.P7572124361787527219

/-! ## A222734.P4271099650013228020

`A222730(A167487(n+5)-1)`
-/

namespace A222734.P4271099650013228020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A167487 (n + 5) - 1).toNat

end

end A222734.P4271099650013228020

/-! ## A222734.P11992269745299110000

`A222730(A167614(n+5)+3)`
-/

namespace A222734.P11992269745299110000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A167614 (n + 5) + 3).toNat

end

end A222734.P11992269745299110000

/-! ## A222734.P6976593437112029016

`A222730(A000124(n+6)+5)`
-/

namespace A222734.P6976593437112029016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000124 (n + 6) + 5).toNat

end

end A222734.P6976593437112029016

/-! ## A222734.P15228274171648023928

`A222730(A000096(n+5)+7)`
-/

namespace A222734.P15228274171648023928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000096 (n + 5) + 7).toNat

end

end A222734.P15228274171648023928

/-! ## A222734.P4977321315743581706

`A222730(A000217(n+6)+6)`
-/

namespace A222734.P4977321315743581706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000217 (n + 6) + 6).toNat

end

end A222734.P4977321315743581706

/-! ## A222734.P8278553340570137658

`A222730(A055999(n+3)+12)`
-/

namespace A222734.P8278553340570137658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A055999 (n + 3) + 12).toNat

end

end A222734.P8278553340570137658

/-! ## A222734.P9837404849999103343

`A222730(eq[7, A002260(n+1)])`
-/

namespace A222734.P9837404849999103343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222734.P9837404849999103343

/-! ## A222734.P12074745984803525771

`A222730(A046691(n+6)-A005408(n+2))`
-/

namespace A222734.P12074745984803525771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A046691 (n + 6) - A005408 (n + 2)).toNat

end

end A222734.P12074745984803525771

/-! ## A222734.P8459355827298491433

`A222730(A046691(n+6)+A038608(2*n+5))`
-/

namespace A222734.P8459355827298491433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A046691 (n + 6) + A038608 (2 * n + 5)).toNat

end

end A222734.P8459355827298491433

/-!
# A222735: Total sum of parts of multiplicity 7 in all partitions of n.

The programs for A222735, there is no canonical definition to state claims against.
-/

/-! ## A222735.P4841434398946830139

`A222730(A167487(n+6))`
-/

namespace A222735.P4841434398946830139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A167487 (n + 6)).toNat

end

end A222735.P4841434398946830139

/-! ## A222735.P7301326756848894715

`A222730(A000124(n+7)+6)`
-/

namespace A222735.P7301326756848894715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000124 (n + 7) + 6).toNat

end

end A222735.P7301326756848894715

/-! ## A222735.P2741681363364686856

`A222730(A134869(n+7)+6)`
-/

namespace A222735.P2741681363364686856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A134869 (n + 7) + 6).toNat

end

end A222735.P2741681363364686856

/-! ## A222735.P168673104284007141

`A222730(A000096(n+6)+8)`
-/

namespace A222735.P168673104284007141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000096 (n + 6) + 8).toNat

end

end A222735.P168673104284007141

/-! ## A222735.P1657041828776804425

`A222730(A000217(n+7)+7)`
-/

namespace A222735.P1657041828776804425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000217 (n + 7) + 7).toNat

end

end A222735.P1657041828776804425

/-! ## A222735.P2347717972671063213

`A222730(A046691(n+7)-2*(n+3))`
-/

namespace A222735.P2347717972671063213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A046691 (n + 7) - (2 * (n + 3) : ℤ)).toNat

end

end A222735.P2347717972671063213

/-! ## A222735.P15693212232923416055

`A222730(A034856(n+3)+3*(n+9))`
-/

namespace A222735.P15693212232923416055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A034856 (n + 3) + (3 * (n + 9) : ℤ)).toNat

end

end A222735.P15693212232923416055

/-! ## A222735.P5763912370181419957

`A222730(eq[7, A001633(A002260(n+1))])`
-/

namespace A222735.P5763912370181419957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222735.P5763912370181419957

/-!
# A222736: Total sum of parts of multiplicity 8 in all partitions of n.

The programs for A222736, there is no canonical definition to state claims against.
-/

/-! ## A222736.P13595265222046243246

`A222730(A000096(n+7)+9)`
-/

namespace A222736.P13595265222046243246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000096 (n + 7) + 9).toNat

end

end A222736.P13595265222046243246

/-! ## A222736.P18403103356344737181

`A222730(A000217(n+8)+8)`
-/

namespace A222736.P18403103356344737181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000217 (n + 8) + 8).toNat

end

end A222736.P18403103356344737181

/-! ## A222736.P5679117360587152197

`A222730(A055998(n+7)-(n-2))`
-/

namespace A222736.P5679117360587152197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A055998 (n + 7) - ((n : ℤ) - 2)).toNat

end

end A222736.P5679117360587152197

/-! ## A222736.P2174344931942570978

`A222730(A000124(n+9)-(n+2))`
-/

namespace A222736.P2174344931942570978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000124 (n + 9) - (n + 2 : ℤ)).toNat

end

end A222736.P2174344931942570978

/-! ## A222736.P16245133893936161988

`A222730(A161680(n+10)-(n+1))`
-/

namespace A222736.P16245133893936161988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A161680 (n + 10) - (n + 1 : ℤ)).toNat

end

end A222736.P16245133893936161988

/-! ## A222736.P17689892170962101296

`A222730(A046691(n+8)-A005408(n+3))`
-/

namespace A222736.P17689892170962101296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A046691 (n + 8) - A005408 (n + 3)).toNat

end

end A222736.P17689892170962101296

/-! ## A222736.P12941252092471397674

`A222730(A046691(n+8)+A038608(2*n+7))`
-/

namespace A222736.P12941252092471397674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A046691 (n + 8) + A038608 (2 * n + 7)).toNat

end

end A222736.P12941252092471397674

/-!
# A222737: Total sum of parts of multiplicity 9 in all partitions of n.

The programs for A222737, there is no canonical definition to state claims against.
-/

/-! ## A222737.P10057464052293509086

`A222730(eq[9, A002262(n)])`
-/

namespace A222737.P10057464052293509086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222737.P10057464052293509086

/-! ## A222737.P7112839822643166355

`A222730(A000124(n+9)+8)`
-/

namespace A222737.P7112839822643166355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000124 (n + 9) + 8).toNat

end

end A222737.P7112839822643166355

/-! ## A222737.P16735574327794088037

`A222730(A000096(n+8)+10)`
-/

namespace A222737.P16735574327794088037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000096 (n + 8) + 10).toNat

end

end A222737.P16735574327794088037

/-! ## A222737.P13313973394110728648

`A222730(A000217(n+9)+9)`
-/

namespace A222737.P13313973394110728648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000217 (n + 9) + 9).toNat

end

end A222737.P13313973394110728648

/-! ## A222737.P2448957809358405813

`A222730(eq[10, A002260(n+1)])`
-/

namespace A222737.P2448957809358405813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222737.P2448957809358405813

/-! ## A222737.P12790901602866536468

`A222730(eq[10, A134868(n+1)])`
-/

namespace A222737.P12790901602866536468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222737.P12790901602866536468

/-! ## A222737.P9553947603786544938

`A222730(A046691(n+9)-2*(n+4))`
-/

namespace A222737.P9553947603786544938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A046691 (n + 9) - (2 * (n + 4) : ℤ)).toNat

end

end A222737.P9553947603786544938

/-!
# A222738: Total sum of parts of multiplicity 10 in all partitions of n.

The programs for A222738, there is no canonical definition to state claims against.
-/

/-! ## A222738.P15538525625412772150

`A222730(A167499(n+9)+5)`
-/

namespace A222738.P15538525625412772150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A167499 (n + 9) + 5).toNat

end

end A222738.P15538525625412772150

/-! ## A222738.P2505761623694176160

`A222730(A000124(n+10)+9)`
-/

namespace A222738.P2505761623694176160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000124 (n + 10) + 9).toNat

end

end A222738.P2505761623694176160

/-! ## A222738.P11466472283874036246

`A222730(A000096(n+9)+11)`
-/

namespace A222738.P11466472283874036246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000096 (n + 9) + 11).toNat

end

end A222738.P11466472283874036246

/-! ## A222738.P10125412540151476600

`A222730(A000217(n+10)+10)`
-/

namespace A222738.P10125412540151476600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A000217 (n + 10) + 10).toNat

end

end A222738.P10125412540151476600

/-! ## A222738.P17013652239038121058

`A222730(A046691(n+8)+14)`
-/

namespace A222738.P17013652239038121058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (A046691 (n + 8) + 14).toNat

end

end A222738.P17013652239038121058

/-!
# A222740: Denominators of 1/16 - 1/(4 + 8*n)^2.

The programs for A222740, the canonical program `A222740.P1638837219687918471` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222740 has offset 0).

The definition of A222740 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A222740.P1638837219687918471

`A014695(n)*A016754(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A222740

/-- `A014695(n)*A016754(n)` -/
def P1638837219687918471.Spec : Prop :=
  ∀ n, P1638837219687918471.a n = A222740 n

theorem P1638837219687918471.correct : P1638837219687918471.Spec := by
  intro n
  simp only [A222740]

end A222740

/-! ## A222740.P4966087839363911013

`16*A064038(n+1)+A014695(n)`
-/

namespace A222740.P4966087839363911013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A064038 (n + 1) + A014695 n

end

end A222740.P4966087839363911013

namespace A222740

/-- `16*A064038(n+1)+A014695(n)` -/
def P4966087839363911013.Spec : Prop :=
  ∀ n, P4966087839363911013.a n = A222740 n

end A222740

/-! ## A222740.P11875039478087575440

`A061042(4+8*n)`
-/

namespace A222740.P11875039478087575440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061042 (4 + 8 * n)

end

end A222740.P11875039478087575440

namespace A222740

/-- `A061042(4+8*n)` -/
def P11875039478087575440.Spec : Prop :=
  ∀ n, P11875039478087575440.a n = A222740 n

end A222740

/-! ## A222740.P16339695191578630854

`Δ[n²]²*and(2, -n)!`
-/

namespace A222740.P16339695191578630854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat : ℤ)

end

end A222740.P16339695191578630854

namespace A222740

/-- `Δ[n²]²*and(2, -n)!` -/
def P16339695191578630854.Spec : Prop :=
  ∀ n, P16339695191578630854.a n = A222740 n

theorem P16339695191578630854.correct : P16339695191578630854.Spec := by
  intro n
  simp only [A222740, Nat.add_sub_cancel, A222740.P16339695191578630854.f1, A222740.P16339695191578630854.a, A222740.P1638837219687918471.a, A014695, A014695.P2567678757837118433.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A222740

/-! ## A222740.P9836466922863903600

`lcm(Δ[n²]², and(2, -n)!)`
-/

namespace A222740.P9836466922863903600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat : ℤ)

end

end A222740.P9836466922863903600

namespace A222740

/-- `lcm(Δ[n²]², and(2, -n)!)` -/
def P9836466922863903600.Spec : Prop :=
  ∀ n, (P9836466922863903600.a n : ℤ) = A222740 n

end A222740

/-! ## A222740.P7271551874505849532

`and(2, n+1)!*(2*n+1)²`
-/

namespace A222740.P7271551874505849532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (n + 1)) * (2 * n + 1) ^ 2

end

end A222740.P7271551874505849532

namespace A222740

/-- `and(2, n+1)!*(2*n+1)²` -/
def P7271551874505849532.Spec : Prop :=
  ∀ n, (P7271551874505849532.a n : ℤ) = A222740 n

end A222740

/-! ## A222740.P3739223966707196642

`(2*n+1)²*gcd(2, ∑[n]+1)`
-/

namespace A222740.P3739223966707196642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 * Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222740.P3739223966707196642

namespace A222740

/-- `(2*n+1)²*gcd(2, ∑[n]+1)` -/
def P3739223966707196642.Spec : Prop :=
  ∀ n, (P3739223966707196642.a n : ℤ) = A222740 n

end A222740

/-! ## A222740.P14213170313882504472

`(and(1, ∑[n])+1)*(2*n+1)²`
-/

namespace A222740.P14213170313882504472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1) * (2 * n + 1) ^ 2

end

end A222740.P14213170313882504472

namespace A222740

/-- `(and(1, ∑[n])+1)*(2*n+1)²` -/
def P14213170313882504472.Spec : Prop :=
  ∀ n, (P14213170313882504472.a n : ℤ) = A222740 n

end A222740

/-! ## A222740.P15561608140553344592

`(2*n+1)²*val(or(2, n)+n, 2)`
-/

namespace A222740.P15561608140553344592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 * SequenceMachineLib.valuation (Nat.lor 2 n + n) 2

end

end A222740.P15561608140553344592

namespace A222740

/-- `(2*n+1)²*val(or(2, n)+n, 2)` -/
def P15561608140553344592.Spec : Prop :=
  ∀ n, (P15561608140553344592.a n : ℤ) = A222740 n

end A222740

/-! ## A222740.P5007247568150603771

`(2*n+1)²*∏{d}[and(2, n-3), #]`
-/

namespace A222740.P5007247568150603771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 * (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A222740.P5007247568150603771

namespace A222740

/-- `(2*n+1)²*∏{d}[and(2, n-3), #]` -/
def P5007247568150603771.Spec : Prop :=
  ∀ n, (P5007247568150603771.a n : ℤ) = A222740 n

end A222740

/-! ## A222740.P17165436909499935097

`(2*n+1)²*∏{p}[and(2, n-3), #]`
-/

namespace A222740.P17165436909499935097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A222740.P17165436909499935097

namespace A222740

/-- `(2*n+1)²*∏{p}[and(2, n-3), #]` -/
def P17165436909499935097.Spec : Prop :=
  ∀ n, (P17165436909499935097.a n : ℤ) = A222740 n

end A222740

/-! ## A222740.P855959993398265566

`(2*n+1)*(2*n+1)*and(2, n+1)!`
-/

namespace A222740.P855959993398265566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((2 * n + 1) * Nat.factorial (Nat.land 2 (n + 1)))

end

end A222740.P855959993398265566

namespace A222740

/-- `(2*n+1)*(2*n+1)*and(2, n+1)!` -/
def P855959993398265566.Spec : Prop :=
  ∀ n, (P855959993398265566.a n : ℤ) = A222740 n

end A222740

/-! ## A222740.P1272076487637792382

`Δ[n²]²*A000041(and(2, n-3))`
-/

namespace A222740.P1272076487637792382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * A000041 (Int.land 2 ((n : ℤ) - 3)).toNat

end

end A222740.P1272076487637792382

namespace A222740

/-- `Δ[n²]²*A000041(and(2, n-3))` -/
def P1272076487637792382.Spec : Prop :=
  ∀ n, P1272076487637792382.a n = A222740 n

end A222740

/-! ## A222740.P10717796785180695629

`(2*n+1)²*A000108(and(2, -n))`
-/

namespace A222740.P10717796785180695629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) * A000108 (Int.land 2 (-(n : ℤ))).toNat

end

end A222740.P10717796785180695629

namespace A222740

/-- `(2*n+1)²*A000108(and(2, -n))` -/
def P10717796785180695629.Spec : Prop :=
  ∀ n, P10717796785180695629.a n = A222740 n

end A222740

/-! ## A222740.P2865816322253775800

`(2*n+1)²*A007318(and(2, n-3)²)`
-/

namespace A222740.P2865816322253775800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) * A007318 (Int.land 2 ((n : ℤ) - 3) ^ 2).toNat

end

end A222740.P2865816322253775800

namespace A222740

/-- `(2*n+1)²*A007318(and(2, n-3)²)` -/
def P2865816322253775800.Spec : Prop :=
  ∀ n, P2865816322253775800.a n = A222740 n

end A222740

/-! ## A222740.P8343782281292878945

`(2*n+1)²*A000005(and(2, n-3)+1)`
-/

namespace A222740.P8343782281292878945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) * A000005 (Int.land 2 ((n : ℤ) - 3) + 1).toNat

end

end A222740.P8343782281292878945

namespace A222740

/-- `(2*n+1)²*A000005(and(2, n-3)+1)` -/
def P8343782281292878945.Spec : Prop :=
  ∀ n, P8343782281292878945.a n = A222740 n

end A222740

/-! ## A222740.P4844763660387694876

`(2*n+1)²*A000010(and(2, n-3)+1)`
-/

namespace A222740.P4844763660387694876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) * A000010 (Int.land 2 ((n : ℤ) - 3) + 1).toNat

end

end A222740.P4844763660387694876

namespace A222740

/-- `(2*n+1)²*A000010(and(2, n-3)+1)` -/
def P4844763660387694876.Spec : Prop :=
  ∀ n, P4844763660387694876.a n = A222740 n

end A222740

/-! ## A222740.P2634376150697819695

`(A000045(and(2, n-3))+1)*(2*n+1)²`
-/

namespace A222740.P2634376150697819695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (Int.land 2 ((n : ℤ) - 3)).toNat + 1) * ((2 * n + 1) ^ 2 : ℤ)

end

end A222740.P2634376150697819695

namespace A222740

/-- `(A000045(and(2, n-3))+1)*(2*n+1)²` -/
def P2634376150697819695.Spec : Prop :=
  ∀ n, P2634376150697819695.a n = A222740 n

end A222740

/-! ## A222740.P18387375528754705506

`(2*n+1)²*A001222(and(2, n-3)+2)`
-/

namespace A222740.P18387375528754705506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) * A001222 (Int.land 2 ((n : ℤ) - 3) + 2).toNat

end

end A222740.P18387375528754705506

namespace A222740

/-- `(2*n+1)²*A001222(and(2, n-3)+2)` -/
def P18387375528754705506.Spec : Prop :=
  ∀ n, P18387375528754705506.a n = A222740 n

end A222740

/-! ## A222740.P9535755610769004344

`(2*n+1)²*A000032(and(2, n-1)/2)`
-/

namespace A222740.P9535755610769004344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) * A000032 (SequenceMachineLib.roundAway ((Int.land 2 ((n : ℤ) - 1) : ℚ) / 2)).toNat

end

end A222740.P9535755610769004344

namespace A222740

/-- `(2*n+1)²*A000032(and(2, n-1)/2)` -/
def P9535755610769004344.Spec : Prop :=
  ∀ n, P9535755610769004344.a n = A222740 n

end A222740

/-!
# A222741: Number of nX2 0..3 arrays with exactly floor(nX2/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222741, there is no canonical definition to state claims against.
-/

/-! ## A222741.P5438435552983316602

`A222604(2*(n+1))`
-/

namespace A222741.P5438435552983316602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222604 (2 * (n + 1))

end

end A222741.P5438435552983316602

/-! ## A222741.P1365188746395499344

`record[lcm(n%2, A222604(n+1))]`
-/

namespace A222741.P1365188746395499344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 2 : ℕ) : ℤ) (A222604 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222741.P1365188746395499344

/-! ## A222741.P3620565441561664773

`lcm(n+2, A222604(A005843(n+1)))`
-/

namespace A222741.P3620565441561664773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A222604 (A005843 (n + 1)).toNat)

end

end A222741.P3620565441561664773

/-! ## A222741.P6390545531848953572

`A222604(A103517(n))-C(2, n+2)`
-/

namespace A222741.P6390545531848953572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222604 (A103517 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A222741.P6390545531848953572

/-! ## A222741.P12019825352099234722

`A222604(A103517(n))-A000007(n)`
-/

namespace A222741.P12019825352099234722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222604 (A103517 n).toNat - A000007 n

end

end A222741.P12019825352099234722

/-! ## A222741.P16733611054930472491

`A222604(A005843(n+1))/A014963(A017545(n))`
-/

namespace A222741.P16733611054930472491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222604 (A005843 (n + 1)).toNat : ℚ) / (A014963 (A017545 n).toNat : ℚ)

end

end A222741.P16733611054930472491

/-! ## A222741.P16582295750017362019

`A222604(A051755(n+2))/A014963(A000217(n+8))`
-/

namespace A222741.P16582295750017362019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222604 (A051755 (n + 2)).toNat : ℚ) / (A014963 (A000217 (n + 8)).toNat : ℚ)

end

end A222741.P16582295750017362019

/-!
# A222742: Number of nX3 0..3 arrays with exactly floor(nX3/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222742, there is no canonical definition to state claims against.
-/

/-! ## A222742.P17746634146789666301

`A222747(∑[n+3]+1)`
-/

namespace A222742.P17746634146789666301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222742.P17746634146789666301

/-! ## A222742.P15447032479447548342

`A055642(n)*A222747(A034856(n+2))`
-/

namespace A222742.P15447032479447548342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A222747 (A034856 (n + 2)).toNat

end

end A222742.P15447032479447548342

/-!
# A222743: Number of nX4 0..3 arrays with exactly floor(nX4/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222743, there is no canonical definition to state claims against.
-/

/-! ## A222743.P17017725640391148865

`A222747(A141214(n+1))`
-/

namespace A222743.P17017725640391148865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A141214 (n + 1)).toNat

end

end A222743.P17017725640391148865

/-! ## A222743.P7147232067610696905

`A222747(A055998(n+2))`
-/

namespace A222743.P7147232067610696905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A055998 (n + 2)).toNat

end

end A222743.P7147232067610696905

/-! ## A222743.P16939113407970482651

`A222747(A155212(n)+5)`
-/

namespace A222743.P16939113407970482651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A155212 n + 5).toNat

end

end A222743.P16939113407970482651

/-! ## A222743.P10057148388481912673

`A222747(A046691(n+2)+1)`
-/

namespace A222743.P10057148388481912673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A046691 (n + 2) + 1).toNat

end

end A222743.P10057148388481912673

/-! ## A222743.P1844778939677611197

`A222747(A052905(n+1)+2)`
-/

namespace A222743.P1844778939677611197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A052905 (n + 1) + 2).toNat

end

end A222743.P1844778939677611197

/-!
# A222744: Number of nX5 0..3 arrays with exactly floor(nX5/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222744, there is no canonical definition to state claims against.
-/

/-! ## A222744.P12870998046131921039

`A222747(Δ[A264443(n)])`
-/

namespace A222744.P12870998046131921039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (f1 (n + 1) - f1 n).toNat

end

end A222744.P12870998046131921039

/-! ## A222744.P6226492784415603091

`A222747(eq[4, A193592(n)])`
-/

namespace A222744.P6226492784415603091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222744.P6226492784415603091

/-! ## A222744.P10369536459221111508

`A222747(Δ[A023545(n+1)])`
-/

namespace A222744.P10369536459221111508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (f1 (n + 1) - f1 n).toNat

end

end A222744.P10369536459221111508

/-! ## A222744.P8262722889047361570

`A222747(eq[6, A185782(n+1)])`
-/

namespace A222744.P8262722889047361570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222744.P8262722889047361570

/-!
# A222745: Number of nX6 0..3 arrays with exactly floor(nX6/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222745, there is no canonical definition to state claims against.
-/

/-! ## A222745.P2962512628146771043

`A222747(A052905(n+3))`
-/

namespace A222745.P2962512628146771043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A052905 (n + 3)).toNat

end

end A222745.P2962512628146771043

/-! ## A222745.P4980003027158529697

`A222747(eq[5, A193592(n)])`
-/

namespace A222745.P4980003027158529697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222745.P4980003027158529697

/-! ## A222745.P5042917783344074753

`A222747(eq[8, A185782(n+1)])`
-/

namespace A222745.P5042917783344074753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222745.P5042917783344074753

/-!
# A222746: 

The programs for A222746, there is no canonical definition to state claims against.
-/

/-! ## A222746.P11199895895807213277

`A222747(eq[4, A219347(n)])`
-/

namespace A222746.P11199895895807213277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222746.P11199895895807213277

/-! ## A222746.P11378290418531874553

`A222747(eq[5, A332954(n)])`
-/

namespace A222746.P11378290418531874553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222746.P11378290418531874553

/-!
# A222748: Poly-Cauchy numbers c_n^(-4).

The programs for A222748, there is no canonical definition to state claims against.
-/

/-! ## A222748.P3943555176625700485

`A383049(A000217(n+4)+n)`
-/

namespace A222748.P3943555176625700485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A222748.P3943555176625700485

/-! ## A222748.P17149563515998996136

`A383049(n+1+A000096(n+3))`
-/

namespace A222748.P17149563515998996136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 ((n + 1 : ℤ) + A000096 (n + 3)).toNat

end

end A222748.P17149563515998996136

/-!
# A222749: Number of 2Xn 0..3 arrays with exactly floor(2Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222749, there is no canonical definition to state claims against.
-/

/-! ## A222749.P6419555405473141329

`A222747(∑[n+1]+2)`
-/

namespace A222749.P6419555405473141329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222749.P6419555405473141329

/-! ## A222749.P7710830692657319863

`record[A185917(n+1)*A222747(n+2)]`
-/

namespace A222749.P7710830692657319863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (n + 1) * A222747 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222749.P7710830692657319863

/-! ## A222749.P4421598645849237444

`A222747(A133263(n+1))+A000007(n+1)`
-/

namespace A222749.P4421598645849237444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A222749.P4421598645849237444

/-! ## A222749.P11587017041799233593

`A222747(A133263(n+1))+A000035(2*n)`
-/

namespace A222749.P11587017041799233593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A222749.P11587017041799233593

/-! ## A222749.P5885854161943555879

`A222747(A133263(n+1))%A206374(2*n)`
-/

namespace A222749.P5885854161943555879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222747 (A133263 (n + 1)).toNat) (A206374 (2 * n))

end

end A222749.P5885854161943555879

/-!
# A222750: Number of 3Xn 0..3 arrays with exactly floor(3Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222750, there is no canonical definition to state claims against.
-/

/-! ## A222750.P286079427009572285

`A222747(∑[n+2]+4)`
-/

namespace A222750.P286079427009572285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222750.P286079427009572285

/-! ## A222750.P6104295582978777705

`A222747(A167614(n+1))+A025466(n)`
-/

namespace A222750.P6104295582978777705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A167614 (n + 1)).toNat + A025466 n

end

end A222750.P6104295582978777705

/-! ## A222750.P2388519396056941588

`A222747(A167614(n+1))+A090620(n)`
-/

namespace A222750.P2388519396056941588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A167614 (n + 1)).toNat + A090620 n

end

end A222750.P2388519396056941588

/-! ## A222750.P11738895390391712115

`A222747(A167614(n+1))+A180649(n)`
-/

namespace A222750.P11738895390391712115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A167614 (n + 1)).toNat + A180649 n

end

end A222750.P11738895390391712115

/-! ## A222750.P14964645825432685443

`A222747(A167614(n+1))+A185284(n)`
-/

namespace A222750.P14964645825432685443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A167614 (n + 1)).toNat + A185284 n

end

end A222750.P14964645825432685443

/-!
# A222751: Number of 4Xn 0..3 arrays with exactly floor(4Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222751, there is no canonical definition to state claims against.
-/

/-! ## A222751.P8753148510087473776

`A222747(A141214(n)+7)`
-/

namespace A222751.P8753148510087473776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A141214 n + 7).toNat

end

end A222751.P8753148510087473776

/-! ## A222751.P15418861483685756243

`A222747(A052905(n)+9)`
-/

namespace A222751.P15418861483685756243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A052905 n + 9).toNat

end

end A222751.P15418861483685756243

/-! ## A222751.P5518213284493815806

`A222747(A055999(n)+10)`
-/

namespace A222751.P5518213284493815806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A055999 n + 10).toNat

end

end A222751.P5518213284493815806

/-! ## A222751.P9518749476040180630

`A222747(A167614(n+2)+1)`
-/

namespace A222751.P9518749476040180630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (A167614 (n + 2) + 1).toNat

end

end A222751.P9518749476040180630

/-! ## A222751.P6027482467924829026

`A222747(eq[5, A131818(n+1)])`
-/

namespace A222751.P6027482467924829026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222751.P6027482467924829026

/-!
# A222752: Irregular array of odd numbers T(n,k) such that the difference between the number of halving and tripling steps in the Collatz (3x+1) iteration is n.

The programs for A222752, there is no canonical definition to state claims against.
-/

/-! ## A222752.P1543090292663617652

`A222599(eq[1, A222599(n)%2])`
-/

namespace A222752.P1543090292663617652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222599 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222752.P1543090292663617652

/-! ## A222752.P8165949364953834066

`A222599(eq[1, and(1, A222599(n))])`
-/

namespace A222752.P8165949364953834066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A222599 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222752.P8165949364953834066

/-! ## A222752.P8839610141390117106

`A222599(eq[2, A061393(A222599(n))])`
-/

namespace A222752.P8839610141390117106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A222599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222752.P8839610141390117106

/-! ## A222752.P6801409096708136479

`A222599(eq[1, A322584(A222599(n))])`
-/

namespace A222752.P6801409096708136479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (A222599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222752.P6801409096708136479

/-! ## A222752.P398672539505594439

`filter[A222599(n), A000035(#)]`
-/

namespace A222752.P398672539505594439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A222752.P398672539505594439

/-! ## A222752.P622987786831544020

`A222599(eq[2, A000034(A222599(n))])`
-/

namespace A222752.P622987786831544020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A222599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222752.P622987786831544020

/-!
# A222756: Smallest prime p > prime(n+2) such that the first n odd primes 3, 5, 7, 11, ..., prime(n+1) are quadratic residues mod p, and prime(n+2) is a quadratic non-residue mod p.

The programs for A222756, there is no canonical definition to state claims against.
-/

/-! ## A222756.P18392614402410625710

`A043727(A006281(n)+1)`
-/

namespace A222756.P18392614402410625710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (A006281 n + 1).toNat

end

end A222756.P18392614402410625710

/-!
# A222759: Conjectured number of primes p for which binomial(n*p,p) (mod p^3) does not equal n.

The programs for A222759, there is no canonical definition to state claims against.
-/

/-! ## A222759.P12926643936701338886

`A131534(n)-A010054(A023523(n+1))`
-/

namespace A222759.P12926643936701338886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n - A010054 (A023523 (n + 1)).toNat

end

end A222759.P12926643936701338886

/-! ## A222759.P16451583551494276369

`A101825(n+1)-A010054(A023523(n+1))`
-/

namespace A222759.P16451583551494276369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (n + 1) - A010054 (A023523 (n + 1)).toNat

end

end A222759.P16451583551494276369

/-! ## A222759.P16015868458769436250

`A000124(n)%3-A010054(A023523(n+1))`
-/

namespace A222759.P16015868458769436250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) 3 - A010054 (A023523 (n + 1)).toNat

end

end A222759.P16015868458769436250

/-! ## A222759.P10268257292597111622

`Δ[A004773(n+1)]-A010054(A023523(n+1))`
-/

namespace A222759.P10268257292597111622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010054 (A023523 (n + 1)).toNat

end

end A222759.P10268257292597111622

/-! ## A222759.P3513972049620436422

`A080425(A014616(2*n+1)%A365925(2*n))`
-/

namespace A222759.P3513972049620436422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (Int.tmod (A014616 (2 * n + 1)) (A365925 (2 * n))).toNat

end

end A222759.P3513972049620436422

/-!
# A222760: Conjectured least prime p for which binomial(n*q,q) (mod q^3) = n for all primes q >= p.

The programs for A222760, there is no canonical definition to state claims against.
-/

/-! ## A222760.P7596330403039327498

`a(gcd(2, ∑[a(n-3)²]))` with `a(0)=2, a(1)=5, a(2)=3, a(3)=2`
-/

namespace A222760.P7596330403039327498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 3, 2] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 3, 2] fun n a =>
  a (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A222760.P7596330403039327498

/-! ## A222760.P14143654509255307266

`A191904(A299267(n))+A171977(A299267(n))`
-/

namespace A222760.P14143654509255307266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191904 (A299267 n).toNat + A171977 (A299267 n).toNat

end

end A222760.P14143654509255307266

/-! ## A222760.P9349918317839044328

`p?[A059841(A117386(n+1))-A141035(n)]`
-/

namespace A222760.P9349918317839044328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A117386 (n + 1)).toNat - A141035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222760.P9349918317839044328

/-! ## A222760.P12418258369036449513

`gcd(3, 1-n)-A000086(A000045(n)+1)+2`
-/

namespace A222760.P12418258369036449513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (1 - (n : ℤ)) : ℤ) - A000086 (A000045 n + 1).toNat + 2

end

end A222760.P12418258369036449513

/-! ## A222760.P3229956052175098158

`A002217(A007953(3*n+1)²²)`
-/

namespace A222760.P3229956052175098158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 ((A007953 (3 * n + 1) ^ 2) ^ 2).toNat

end

end A222760.P3229956052175098158

/-!
# A222761: Conjectured lower bounds for the Riemann hypothesis function floor(H(k) + exp(H(k))*log(H(k))) - sigma(k).

The programs for A222761, there is no canonical definition to state claims against.
-/

/-! ## A222761.P8904272947549468393

`A057641(A176679(n+3))`
-/

namespace A222761.P8904272947549468393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (A176679 (n + 3)).toNat

end

end A222761.P8904272947549468393

/-!
# A222762: Number of n X n 0..1 arrays with exactly floor(n X n/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222762, there is no canonical definition to state claims against.
-/

/-! ## A222762.P6491143757854640639

`A222769(∑[4*n]+1)`
-/

namespace A222762.P6491143757854640639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222762.P6491143757854640639

/-! ## A222762.P17209375119031006733

`A222769(A001844(n))/A007318(∑[n+2])`
-/

namespace A222762.P17209375119031006733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222769 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A222762.P17209375119031006733

/-! ## A222762.P17021188049261109178

`A014963(15*(n+1))*A222769(A001844(n))`
-/

namespace A222762.P17021188049261109178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A222769 (A001844 n).toNat

end

end A222762.P17021188049261109178

/-! ## A222762.P989435815382625878

`A000041(C(2, n+2))*A222769(A001844(n))`
-/

namespace A222762.P989435815382625878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A222769 (A001844 n).toNat

end

end A222762.P989435815382625878

/-! ## A222762.P17428967556408496793

`A007318(A001222(n+1))*A222769(A001844(n))`
-/

namespace A222762.P17428967556408496793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001222 (n + 1)).toNat * A222769 (A001844 n).toNat

end

end A222762.P17428967556408496793

/-!
# A222763: Number of n X 2 0..1 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222763, the canonical program `A222763.P9947241186755586665` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222763 has offset 0).

The definition of A222763 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046736, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A222763.P9947241186755586665

`(n+1)*A046736(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A222763

/-- `(n+1)*A046736(n+2)` -/
def P9947241186755586665.Spec : Prop :=
  ∀ n, P9947241186755586665.a n = A222763 n

theorem P9947241186755586665.correct : P9947241186755586665.Spec := by
  intro n
  simp only [A222763]

end A222763

/-! ## A222763.P12473088444878421692

`A357182(Δ[n²])`
-/

namespace A222763.P12473088444878421692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A222763.P12473088444878421692

namespace A222763

/-- `A357182(Δ[n²])` -/
def P12473088444878421692.Spec : Prop :=
  ∀ n, P12473088444878421692.a n = A222763 n

end A222763

/-! ## A222763.P1034325280382348057

`lcm(n+1, A357182(2*n+1))`
-/

namespace A222763.P1034325280382348057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A357182 (2 * n + 1))

end

end A222763.P1034325280382348057

namespace A222763

/-- `lcm(n+1, A357182(2*n+1))` -/
def P1034325280382348057.Spec : Prop :=
  ∀ n, (P1034325280382348057.a n : ℤ) = A222763 n

end A222763

/-! ## A222763.P10220014942417716410

`A222283(A004277(n))`
-/

namespace A222763.P10220014942417716410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222283 (A004277 n).toNat

end

end A222763.P10220014942417716410

namespace A222763

/-- `A222283(A004277(n))` -/
def P10220014942417716410.Spec : Prop :=
  ∀ n, P10220014942417716410.a n = A222763 n

end A222763

/-! ## A222763.P4519483136732352544

`A222283(A004275(n+1))`
-/

namespace A222763.P4519483136732352544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222283 (A004275 (n + 1)).toNat

end

end A222763.P4519483136732352544

namespace A222763

/-- `A222283(A004275(n+1))` -/
def P4519483136732352544.Spec : Prop :=
  ∀ n, P4519483136732352544.a n = A222763 n

end A222763

/-! ## A222763.P7053511383488348515

`A222283(A092535(n+1))`
-/

namespace A222763.P7053511383488348515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222283 (A092535 (n + 1)).toNat

end

end A222763.P7053511383488348515

namespace A222763

/-- `A222283(A092535(n+1))` -/
def P7053511383488348515.Spec : Prop :=
  ∀ n, P7053511383488348515.a n = A222763 n

end A222763

/-! ## A222763.P14882755948315712631

`A222283(A058992(n+2))`
-/

namespace A222763.P14882755948315712631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222283 (A058992 (n + 2)).toNat

end

end A222763.P14882755948315712631

namespace A222763

/-- `A222283(A058992(n+2))` -/
def P14882755948315712631.Spec : Prop :=
  ∀ n, P14882755948315712631.a n = A222763 n

end A222763

/-! ## A222763.P1088226923342926880

`A222283(A028310(2*n))`
-/

namespace A222763.P1088226923342926880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222283 (A028310 (2 * n)).toNat

end

end A222763.P1088226923342926880

namespace A222763

/-- `A222283(A028310(2*n))` -/
def P1088226923342926880.Spec : Prop :=
  ∀ n, P1088226923342926880.a n = A222763 n

end A222763

/-! ## A222763.P4763062705666781009

`A222283(A028310(n)+n)`
-/

namespace A222763.P4763062705666781009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222283 (A028310 n + (n : ℤ)).toNat

end

end A222763.P4763062705666781009

namespace A222763

/-- `A222283(A028310(n)+n)` -/
def P4763062705666781009.Spec : Prop :=
  ∀ n, P4763062705666781009.a n = A222763 n

end A222763

/-! ## A222763.P3529379900891528706

`A232665(n)+A057428(n)`
-/

namespace A222763.P3529379900891528706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232665 n + A057428 n

end

end A222763.P3529379900891528706

namespace A222763

/-- `A232665(n)+A057428(n)` -/
def P3529379900891528706.Spec : Prop :=
  ∀ n, P3529379900891528706.a n = A222763 n

end A222763

/-! ## A222763.P6058852112402252505

`A232665(n)-A057427(n)`
-/

namespace A222763.P6058852112402252505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232665 n - A057427 n

end

end A222763.P6058852112402252505

namespace A222763

/-- `A232665(n)-A057427(n)` -/
def P6058852112402252505.Spec : Prop :=
  ∀ n, P6058852112402252505.a n = A222763 n

end A222763

/-! ## A222763.P2619488701920915754

`A331332(2*(n+1)²)`
-/

namespace A222763.P2619488701920915754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (2 * (n + 1) ^ 2)

end

end A222763.P2619488701920915754

namespace A222763

/-- `A331332(2*(n+1)²)` -/
def P2619488701920915754.Spec : Prop :=
  ∀ n, P2619488701920915754.a n = A222763 n

end A222763

/-!
# A222764: Number of nX3 0..1 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222764, there is no canonical definition to state claims against.
-/

/-! ## A222764.P6306801498054962336

`A222769(∑[n+3]+1)`
-/

namespace A222764.P6306801498054962336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222764.P6306801498054962336

/-! ## A222764.P3489369544354592265

`record[A222769(n+2)-A222794(n+4)]`
-/

namespace A222764.P3489369544354592265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (n + 2) - A222794 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222764.P3489369544354592265

/-!
# A222765: Number of nX4 0..1 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222765, there is no canonical definition to state claims against.
-/

/-! ## A222765.P1490917048819280004

`A222769(A141214(n+1))`
-/

namespace A222765.P1490917048819280004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A141214 (n + 1)).toNat

end

end A222765.P1490917048819280004

/-! ## A222765.P17378358919850236246

`A222769(A055998(n+2))`
-/

namespace A222765.P17378358919850236246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A055998 (n + 2)).toNat

end

end A222765.P17378358919850236246

/-! ## A222765.P17223525885189146705

`A222769(A155212(n)+5)`
-/

namespace A222765.P17223525885189146705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A155212 n + 5).toNat

end

end A222765.P17223525885189146705

/-! ## A222765.P14103195239518112260

`A222769(A056000(n)+7)`
-/

namespace A222765.P14103195239518112260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A056000 n + 7).toNat

end

end A222765.P14103195239518112260

/-! ## A222765.P8004131318637638510

`A222769(eq[3, A193592(n)])`
-/

namespace A222765.P8004131318637638510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222765.P8004131318637638510

/-!
# A222766: Number of nX5 0..1 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222766, there is no canonical definition to state claims against.
-/

/-! ## A222766.P7755861378880647339

`A222769(Δ[A264443(n)])`
-/

namespace A222766.P7755861378880647339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (f1 (n + 1) - f1 n).toNat

end

end A222766.P7755861378880647339

/-! ## A222766.P4837282247661858855

`A222769(eq[2, A092921(n)])`
-/

namespace A222766.P4837282247661858855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222766.P4837282247661858855

/-! ## A222766.P13559835197942781942

`A222769(eq[4, A193592(n)])`
-/

namespace A222766.P13559835197942781942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222766.P13559835197942781942

/-! ## A222766.P1542229340351372735

`A222769(Δ[A023545(n+1)])`
-/

namespace A222766.P1542229340351372735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (f1 (n + 1) - f1 n).toNat

end

end A222766.P1542229340351372735

/-! ## A222766.P18119722480349242882

`A222769(eq[5, A200370(n+1)])`
-/

namespace A222766.P18119722480349242882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222766.P18119722480349242882

/-!
# A222767: Number of nX6 0..1 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222767, there is no canonical definition to state claims against.
-/

/-! ## A222767.P18051255694933615581

`A222769(A052905(n+3))`
-/

namespace A222767.P18051255694933615581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A052905 (n + 3)).toNat

end

end A222767.P18051255694933615581

/-! ## A222767.P9762013428235576544

`A222769(eq[3, A219347(n)])`
-/

namespace A222767.P9762013428235576544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222767.P9762013428235576544

/-! ## A222767.P12377165264858694177

`A222769(eq[5, A193592(n)])`
-/

namespace A222767.P12377165264858694177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222767.P12377165264858694177

/-! ## A222767.P7056145822698468342

`A222769(eq[6, A200370(n+1)])`
-/

namespace A222767.P7056145822698468342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222767.P7056145822698468342

/-! ## A222767.P5954442966568364460

`A222769(Δ[Δ[A006504(n+1)]])`
-/

namespace A222767.P5954442966568364460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (f1 (n + 1) - f1 n).toNat

end

end A222767.P5954442966568364460

/-!
# A222768: Number of nX7 0..1 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222768, there is no canonical definition to state claims against.
-/

/-! ## A222768.P7950721670078268288

`A222769(eq[4, A219347(n)])`
-/

namespace A222768.P7950721670078268288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222768.P7950721670078268288

/-! ## A222768.P16923052798189700359

`A222769(eq[6, A193592(n)])`
-/

namespace A222768.P16923052798189700359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222768.P16923052798189700359

/-! ## A222768.P14936233630788565844

`A222769(A056119(n+1)+15)`
-/

namespace A222768.P14936233630788565844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A056119 (n + 1) + 15).toNat

end

end A222768.P14936233630788565844

/-! ## A222768.P13479518519715387601

`A222769(eq[7, A200370(n+1)])`
-/

namespace A222768.P13479518519715387601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222768.P13479518519715387601

/-! ## A222768.P4657477663380883140

`A222769(eq[10, A185782(n+1)])`
-/

namespace A222768.P4657477663380883140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222768.P4657477663380883140

/-!
# A222770: Number of 2Xn 0..1 arrays with exactly floor(2Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222770, there is no canonical definition to state claims against.
-/

/-! ## A222770.P12166545660682233190

`A222769(∑[n+1]+2)`
-/

namespace A222770.P12166545660682233190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222770.P12166545660682233190

/-! ## A222770.P14494752913731698482

`record[A073424(n)*A222769(n+2)]`
-/

namespace A222770.P14494752913731698482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n * A222769 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222770.P14494752913731698482

/-! ## A222770.P3765482930950478314

`A062157(n)²*A222769(A000217(n+1)+2)`
-/

namespace A222770.P3765482930950478314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2 * A222769 (A000217 (n + 1) + 2).toNat

end

end A222770.P3765482930950478314

/-! ## A222770.P10603367818282050006

`A019425(2*n)*A222769(A000217(n+1)+2)`
-/

namespace A222770.P10603367818282050006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n) * A222769 (A000217 (n + 1) + 2).toNat

end

end A222770.P10603367818282050006

/-! ## A222770.P3983764291227674384

`A007318(A000096(n))*A222769(A000217(n+1)+2)`
-/

namespace A222770.P3983764291227674384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A222769 (A000217 (n + 1) + 2).toNat

end

end A222770.P3983764291227674384

/-!
# A222771: Number of 3Xn 0..1 arrays with exactly floor(3Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222771, there is no canonical definition to state claims against.
-/

/-! ## A222771.P11202805710272006335

`A222769(∑[n+2]+4)`
-/

namespace A222771.P11202805710272006335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222771.P11202805710272006335

/-! ## A222771.P12669033994018473731

`A222769(A167614(n+1))%(13^n)`
-/

namespace A222771.P12669033994018473731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222769 (A167614 (n + 1)).toNat) (13 ^ n : ℤ)

end

end A222771.P12669033994018473731

/-! ## A222771.P6913477848241394304

`A064458(n)!*A222769(A167614(n+1))`
-/

namespace A222771.P6913477848241394304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A064458 n).toNat : ℤ) * A222769 (A167614 (n + 1)).toNat

end

end A222771.P6913477848241394304

/-! ## A222771.P16360777196372605532

`A082343(A000040(n+1))*A222769(A167614(n+1))`
-/

namespace A222771.P16360777196372605532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (A000040 (n + 1)).toNat * A222769 (A167614 (n + 1)).toNat

end

end A222771.P16360777196372605532

/-! ## A222771.P11347358858445692425

`A082343(A002144(n+1))*A222769(A167614(n+1))`
-/

namespace A222771.P11347358858445692425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (A002144 (n + 1)).toNat * A222769 (A167614 (n + 1)).toNat

end

end A222771.P11347358858445692425

/-!
# A222772: Number of 4Xn 0..1 arrays with exactly floor(4Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222772, there is no canonical definition to state claims against.
-/

/-! ## A222772.P14924220737116641589

`A222769(A141214(n)+7)`
-/

namespace A222772.P14924220737116641589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A141214 n + 7).toNat

end

end A222772.P14924220737116641589

/-! ## A222772.P13478504041015511349

`A222769(A052905(n)+9)`
-/

namespace A222772.P13478504041015511349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A052905 n + 9).toNat

end

end A222772.P13478504041015511349

/-! ## A222772.P17900436183917017270

`A222769(A055999(n)+10)`
-/

namespace A222772.P17900436183917017270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A055999 n + 10).toNat

end

end A222772.P17900436183917017270

/-! ## A222772.P10728970566047322936

`A222769(A167614(n+2)+1)`
-/

namespace A222772.P10728970566047322936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A167614 (n + 2) + 1).toNat

end

end A222772.P10728970566047322936

/-! ## A222772.P17657847504158668024

`A222769(A000217(n+3)+4)`
-/

namespace A222772.P17657847504158668024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A000217 (n + 3) + 4).toNat

end

end A222772.P17657847504158668024

/-!
# A222773: Number of 5Xn 0..1 arrays with exactly floor(5Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222773, there is no canonical definition to state claims against.
-/

/-! ## A222773.P18064218536527352389

`A222769(A167499(n+3))`
-/

namespace A222773.P18064218536527352389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A167499 (n + 3)).toNat

end

end A222773.P18064218536527352389

/-! ## A222773.P12961608214217905180

`A222769(A155212(n)+13)`
-/

namespace A222773.P12961608214217905180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A155212 n + 13).toNat

end

end A222773.P12961608214217905180

/-! ## A222773.P7512007003150660900

`A222769(A056000(n)+15)`
-/

namespace A222773.P7512007003150660900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A056000 n + 15).toNat

end

end A222773.P7512007003150660900

/-! ## A222773.P3004199825184634770

`A222769(A167614(n+3)+2)`
-/

namespace A222773.P3004199825184634770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A167614 (n + 3) + 2).toNat

end

end A222773.P3004199825184634770

/-! ## A222773.P5793205228998405298

`A222769(A000217(n+4)+5)`
-/

namespace A222773.P5793205228998405298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A000217 (n + 4) + 5).toNat

end

end A222773.P5793205228998405298

/-!
# A222774: Number of 6Xn 0..1 arrays with exactly floor(6Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222774, there is no canonical definition to state claims against.
-/

/-! ## A222774.P16133040555297764995

`A222769(A056115(n)+21)`
-/

namespace A222774.P16133040555297764995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A056115 n + 21).toNat

end

end A222774.P16133040555297764995

/-! ## A222774.P8282377946650335296

`A222769(A167614(n+4)+3)`
-/

namespace A222774.P8282377946650335296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A167614 (n + 4) + 3).toNat

end

end A222774.P8282377946650335296

/-! ## A222774.P13202785578211215930

`A222769(eq[6, A130270(n+1)])`
-/

namespace A222774.P13202785578211215930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222774.P13202785578211215930

/-! ## A222774.P14280107899982211073

`A222769(eq[7, A131818(n+1)])`
-/

namespace A222774.P14280107899982211073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222774.P14280107899982211073

/-! ## A222774.P309071901789029296

`A222769(Δ[A023545(n+1)]+10)`
-/

namespace A222774.P309071901789029296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (f1 (n + 1) - f1 n + 10).toNat

end

end A222774.P309071901789029296

/-!
# A222775: Number of 7 X n 0..1 arrays with exactly floor(7 X n/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222775, there is no canonical definition to state claims against.
-/

/-! ## A222775.P10734559165334801300

`A222769(eq[11, A066657(n)])`
-/

namespace A222775.P10734559165334801300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222775.P10734559165334801300

/-! ## A222775.P18019308918304135195

`A222769(A167499(n+5)+2)`
-/

namespace A222775.P18019308918304135195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A167499 (n + 5) + 2).toNat

end

end A222775.P18019308918304135195

/-! ## A222775.P12756309065292050107

`A222769(A000096(n+5)+8)`
-/

namespace A222775.P12756309065292050107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A000096 (n + 5) + 8).toNat

end

end A222775.P12756309065292050107

/-! ## A222775.P3051219603025881743

`A222769(A055998(n+4)+10)`
-/

namespace A222775.P3051219603025881743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (A055998 (n + 4) + 10).toNat

end

end A222775.P3051219603025881743

/-! ## A222775.P2611693105461899547

`A222769(eq[8, A131818(n+1)])`
-/

namespace A222775.P2611693105461899547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222775.P2611693105461899547

/-!
# A222776: Number of n X 1 0..6 arrays with no element equal to another at a city block distance of exactly two, and new values 0..6 introduced in row major order.

The programs for A222776, there is no canonical definition to state claims against.
-/

/-! ## A222776.P14949275697263835541

`A222779(∑[n]+1)`
-/

namespace A222776.P14949275697263835541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222776.P14949275697263835541

/-! ## A222776.P9338402471169863593

`record[A222779(A056534(n+1))]`
-/

namespace A222776.P9338402471169863593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222776.P9338402471169863593

/-! ## A222776.P11680378498013614206

`record[A222779(A246276(n+1))]`
-/

namespace A222776.P11680378498013614206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222776.P11680378498013614206

/-! ## A222776.P16143823360213568790

`record[A222779(A286235(n+1))]`
-/

namespace A222776.P16143823360213568790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222776.P16143823360213568790

/-!
# A222777: Number of n X 2 0..6 arrays with no element equal to another at a city block distance of exactly two, and new values 0..6 introduced in row major order.

The programs for A222777, there is no canonical definition to state claims against.
-/

/-! ## A222777.P14193718521660392249

`A222779(∑[n+1]+2)`
-/

namespace A222777.P14193718521660392249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222777.P14193718521660392249

/-! ## A222777.P5706538711551650358

`record[A222779(A286235(n+1)+1)]`
-/

namespace A222777.P5706538711551650358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222777.P5706538711551650358

/-! ## A222777.P17211169706636514984

`record[gcd(A002262(n), A222779(n+2))]`
-/

namespace A222777.P17211169706636514984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A222779 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222777.P17211169706636514984

/-! ## A222777.P15988653784200013689

`record[gcd(A025581(n), A222779(n+3))]`
-/

namespace A222777.P15988653784200013689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A222779 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222777.P15988653784200013689

/-! ## A222777.P3992182216251973351

`A222779(A133263(n+1))%A222940(2*(n+2))`
-/

namespace A222777.P3992182216251973351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222779 (A133263 (n + 1)).toNat) (A222940 (2 * (n + 2)))

end

end A222777.P3992182216251973351

/-!
# A222778: Number of n X 3 0..6 arrays with no element equal to another at a city block distance of exactly two, and new values 0..6 introduced in row major order.

The programs for A222778, there is no canonical definition to state claims against.
-/

/-! ## A222778.P5109641783558326735

`A222779(∑[n+2]+4)`
-/

namespace A222778.P5109641783558326735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222778.P5109641783558326735

/-! ## A222778.P9554144114064388633

`abs(1-A222779(A167614(n+1)))+1`
-/

namespace A222778.P9554144114064388633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A222779 (A167614 (n + 1)).toNat| + 1

end

end A222778.P9554144114064388633

/-! ## A222778.P17880784177155028331

`A222779(A167614(n+1))+A025463(n)`
-/

namespace A222778.P17880784177155028331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (A167614 (n + 1)).toNat + A025463 n

end

end A222778.P17880784177155028331

/-! ## A222778.P10819626135249692040

`A222779(A167614(n+1))+A025466(n)`
-/

namespace A222778.P10819626135249692040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (A167614 (n + 1)).toNat + A025466 n

end

end A222778.P10819626135249692040

/-!
# A222779: T(n,k)=Number of nXk 0..6 arrays with no element equal to another at a city block distance of exactly two, and new values 0..6 introduced in row major order.

The programs for A222779, there is no canonical definition to state claims against.
-/

/-! ## A222779.P4401818059445569768

`A222894(n+1)-A025469(n²²)`
-/

namespace A222779.P4401818059445569768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (n + 1) - A025469 ((n ^ 2) ^ 2)

end

end A222779.P4401818059445569768

/-! ## A222779.P8552571084604600117

`A222894(n+1)-A011708(A110182(n))`
-/

namespace A222779.P8552571084604600117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (n + 1) - A011708 (A110182 n).toNat

end

end A222779.P8552571084604600117

/-! ## A222779.P1968156698895818757

`A222894(n+1)-A025441(A107243(n))`
-/

namespace A222779.P1968156698895818757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (n + 1) - A025441 (A107243 n).toNat

end

end A222779.P1968156698895818757

/-! ## A222779.P4880208089310019560

`A222894(n+1)-A124761(A036633(n))`
-/

namespace A222779.P4880208089310019560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (n + 1) - A124761 (A036633 n).toNat

end

end A222779.P4880208089310019560

/-! ## A222779.P9956197486121726007

`A222894(n+1)-A185044(A008459(n))`
-/

namespace A222779.P9956197486121726007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (n + 1) - A185044 (A008459 n).toNat

end

end A222779.P9956197486121726007

/-!
# A222780: Number of (n+3) X 4 0..1 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222780, there is no canonical definition to state claims against.
-/

/-! ## A222780.P7180526857137351743

`A222784(∑[n]+1)`
-/

namespace A222780.P7180526857137351743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222784 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222780.P7180526857137351743

/-! ## A222780.P15325024589212359707

`lcm(2, A222784(A000124(n)))`
-/

namespace A222780.P15325024589212359707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222784 (A000124 n).toNat)

end

end A222780.P15325024589212359707

/-! ## A222780.P3089623842691694569

`record[A222784(A267104(n+1))]`
-/

namespace A222780.P3089623842691694569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222784 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222780.P3089623842691694569

/-! ## A222780.P3663342744041274846

`record[A222784(A286235(n+1))]`
-/

namespace A222780.P3663342744041274846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222784 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222780.P3663342744041274846

/-! ## A222780.P362988441559258519

`record[A010054(n)*A222784(n+1)]`
-/

namespace A222780.P362988441559258519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222780.P362988441559258519

/-!
# A222781: Number of (n+3)X5 0..1 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222781, there is no canonical definition to state claims against.
-/

/-! ## A222781.P8533443956581000938

`A222784(∑[n+1]+2)`
-/

namespace A222781.P8533443956581000938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222784 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222781.P8533443956581000938

/-! ## A222781.P8252250769282036625

`record[A010054(n)*A222784(n+2)]`
-/

namespace A222781.P8252250769282036625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222781.P8252250769282036625

/-! ## A222781.P15387077100854202660

`A222784(A133263(n+1))%A204885(n+1)`
-/

namespace A222781.P15387077100854202660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222784 (A133263 (n + 1)).toNat) (A204885 (n + 1))

end

end A222781.P15387077100854202660

/-! ## A222781.P15395686101730416753

`record[gcd(A222769(n+3), A222784(n+2))]`
-/

namespace A222781.P15395686101730416753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222769 (n + 3)) (A222784 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222781.P15395686101730416753

/-!
# A222782: Number of (n+3)X6 0..1 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222782, there is no canonical definition to state claims against.
-/

/-! ## A222782.P611938046848383192

`A222784(∑[n+2]+4)`
-/

namespace A222782.P611938046848383192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222784 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222782.P611938046848383192

/-! ## A222782.P3664557343251720543

`lcm(2, A222784(A167614(n+1)))`
-/

namespace A222782.P3664557343251720543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222784 (A167614 (n + 1)).toNat)

end

end A222782.P3664557343251720543

/-! ## A222782.P16322826492118861793

`record[A222784(A286235(n+2)+2)]`
-/

namespace A222782.P16322826492118861793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222784 (A286235 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222782.P16322826492118861793

/-! ## A222782.P10951292364337315718

`record[gcd(A025581(n), A222784(n+4))]`
-/

namespace A222782.P10951292364337315718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A222784 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222782.P10951292364337315718

/-!
# A222783: Number of (n+3)X7 0..1 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222783, there is no canonical definition to state claims against.
-/

/-! ## A222783.P10995748604705221156

`A222784(A141214(n)+7)`
-/

namespace A222783.P10995748604705221156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222784 (A141214 n + 7).toNat

end

end A222783.P10995748604705221156

/-! ## A222783.P10738169375944514547

`A222784(A052905(n)+9)`
-/

namespace A222783.P10738169375944514547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222784 (A052905 n + 9).toNat

end

end A222783.P10738169375944514547

/-! ## A222783.P7448202177749911726

`A222784(A055999(n)+10)`
-/

namespace A222783.P7448202177749911726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222784 (A055999 n + 10).toNat

end

end A222783.P7448202177749911726

/-!
# A222785: Terms A002336(k) that are divisible by k.

The programs for A222785, there is no canonical definition to state claims against.
-/

/-! ## A222785.P2849776729186463203

`A002336(A211202(n+1))`
-/

namespace A222785.P2849776729186463203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002336 (A211202 (n + 1)).toNat

end

end A222785.P2849776729186463203

/-! ## A222785.P2437358932743678434

`A211202(n+1)*A222786(n+1)`
-/

namespace A222785.P2437358932743678434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211202 (n + 1) * A222786 (n + 1)

end

end A222785.P2437358932743678434

/-! ## A222785.P13878334983669695152

`A002336(A165306(n+1)%A354049(n))`
-/

namespace A222785.P13878334983669695152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002336 (Int.tmod (A165306 (n + 1)) (A354049 n)).toNat

end

end A222785.P13878334983669695152

/-! ## A222785.P11081556851719957354

`A002336(A165306(n+1))`
-/

namespace A222785.P11081556851719957354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002336 (A165306 (n + 1)).toNat

end

end A222785.P11081556851719957354

/-! ## A222785.P12850898110822138464

`∩[A002336(n), A396478(n+1)]`
-/

namespace A222785.P12850898110822138464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222785.P12850898110822138464

/-!
# A222786: a(n) = A222785(n)/A211202(n).

The programs for A222786, there is no canonical definition to state claims against.
-/

/-! ## A222786.P2636975049344710031

`A222785(n+1)/A211202(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A222786.P2636975049344710031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222785 (n + 1) : ℚ) / (A211202 (n + 1) : ℚ)

end

end A222786.P2636975049344710031

/-! ## A222786.P14835571709509106185

`A002336(A211202(n+1))/A211202(A094275(n+1))`
-/

namespace A222786.P14835571709509106185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002336 (A211202 (n + 1)).toNat : ℚ) / (A211202 (A094275 (n + 1)).toNat : ℚ)

end

end A222786.P14835571709509106185

/-! ## A222786.P18398232799851038191

`A316502(A069510(n+1))+A007477(n)`
-/

namespace A222786.P18398232799851038191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316502 (A069510 (n + 1)).toNat + A007477 n

end

end A222786.P18398232799851038191

/-! ## A222786.P15172404360360717276

`A002336(A165306(n+1)%A354049(n))/A211202(n+1)`
-/

namespace A222786.P15172404360360717276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002336 (Int.tmod (A165306 (n + 1)) (A354049 n)).toNat : ℚ) / (A211202 (n + 1) : ℚ)

end

end A222786.P15172404360360717276

/-! ## A222786.P1764578654399718580

`A204164(7*A049312(n))`
-/

namespace A222786.P1764578654399718580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (7 * A049312 n).toNat

end

end A222786.P1764578654399718580

/-!
# A222787: Number of n X n 0..3 arrays with exactly floor(n X n/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222787, there is no canonical definition to state claims against.
-/

/-! ## A222787.P1505835441851047182

`A222794(∑[4*n]+1)`
-/

namespace A222787.P1505835441851047182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222787.P1505835441851047182

/-! ## A222787.P1786030019077658536

`record[A222794(Δ[A235355(n)])]`
-/

namespace A222787.P1786030019077658536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222787.P1786030019077658536

/-! ## A222787.P16898508709299338905

`record[A222794(A272267(n+1))]`
-/

namespace A222787.P16898508709299338905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222787.P16898508709299338905

/-! ## A222787.P2872093580554407545

`record[A222794(A330613(n+1))]`
-/

namespace A222787.P2872093580554407545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222787.P2872093580554407545

/-!
# A222788: Number of nX2 0..3 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222788, there is no canonical definition to state claims against.
-/

/-! ## A222788.P10142464263982266786

`A222269(2*(n+1))`
-/

namespace A222788.P10142464263982266786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222269 (2 * (n + 1))

end

end A222788.P10142464263982266786

/-! ## A222788.P7596195363391624810

`record[lcm(n%2, A222269(n+1))]`
-/

namespace A222788.P7596195363391624810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 2 : ℕ) : ℤ) (A222269 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222788.P7596195363391624810

/-! ## A222788.P7661740547370002359

`record[A222269(A014681(n)+2)]`
-/

namespace A222788.P7661740547370002359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222269 (A014681 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222788.P7661740547370002359

/-! ## A222788.P14740366146625154832

`record[A222269(A060819(n+1)+1)]`
-/

namespace A222788.P14740366146625154832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222269 (A060819 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222788.P14740366146625154832

/-! ## A222788.P5224118733311721170

`or(char[1], A222269(A005843(n+1)))`
-/

namespace A222788.P5224118733311721170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222269 (A005843 (n + 1)).toNat)

end

end A222788.P5224118733311721170

/-! ## A222788.P10148398205530148860

`A222269(A103517(n))-A000007(n)`
-/

namespace A222788.P10148398205530148860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222269 (A103517 n).toNat - A000007 n

end

end A222788.P10148398205530148860

/-! ## A222788.P7749966943867312415

`A222269(A005843(n+1))%A021854(n)`
-/

namespace A222788.P7749966943867312415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222269 (A005843 (n + 1)).toNat) (A021854 n)

end

end A222788.P7749966943867312415

/-! ## A222788.P13713332005335758179

`A222269(A005843(n+1))/A014963(A014574(n+1))`
-/

namespace A222788.P13713332005335758179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222269 (A005843 (n + 1)).toNat : ℚ) / (A014963 (A014574 (n + 1)).toNat : ℚ)

end

end A222788.P13713332005335758179

/-!
# A222789: Number of nX3 0..3 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222789, there is no canonical definition to state claims against.
-/

/-! ## A222789.P7987645529175343863

`A222794(∑[n+3]+1)`
-/

namespace A222789.P7987645529175343863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222789.P7987645529175343863

/-! ## A222789.P17533314154692420804

`lcm(2, A222794(Δ[A008778(n)]))`
-/

namespace A222789.P17533314154692420804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222794 (f1 (n + 1) - f1 n).toNat)

end

end A222789.P17533314154692420804

/-! ## A222789.P17984865782088854737

`A222794(Δ[A008778(n)])+A178798(n)`
-/

namespace A222789.P17984865782088854737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (f1 (n + 1) - f1 n).toNat + A178798 n

end

end A222789.P17984865782088854737

/-! ## A222789.P5900537773785389422

`A158388(n)*A222794(A034856(n+2))`
-/

namespace A222789.P5900537773785389422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A222794 (A034856 (n + 2)).toNat

end

end A222789.P5900537773785389422

/-! ## A222789.P3813965568072925841

`A014963(4*n+2)*A222794(Δ[A008778(n)])`
-/

namespace A222789.P3813965568072925841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A222794 (f1 (n + 1) - f1 n).toNat

end

end A222789.P3813965568072925841

/-!
# A222790: Number of nX4 0..3 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222790, there is no canonical definition to state claims against.
-/

/-! ## A222790.P5838922901328005352

`A222794(A141214(n+1))`
-/

namespace A222790.P5838922901328005352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A141214 (n + 1)).toNat

end

end A222790.P5838922901328005352

/-! ## A222790.P9816509855193095803

`A222794(A055998(n+2))`
-/

namespace A222790.P9816509855193095803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A055998 (n + 2)).toNat

end

end A222790.P9816509855193095803

/-! ## A222790.P12770086236446788947

`A222794(A155212(n)+5)`
-/

namespace A222790.P12770086236446788947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A155212 n + 5).toNat

end

end A222790.P12770086236446788947

/-! ## A222790.P17744104872712944460

`A222794(A056000(n)+7)`
-/

namespace A222790.P17744104872712944460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A056000 n + 7).toNat

end

end A222790.P17744104872712944460

/-! ## A222790.P7367230729032934794

`A222794(eq[3, A193592(n)])`
-/

namespace A222790.P7367230729032934794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222790.P7367230729032934794

/-!
# A222791: Number of nX5 0..3 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222791, there is no canonical definition to state claims against.
-/

/-! ## A222791.P14587724075139193642

`A222794(Δ[A264443(n)])`
-/

namespace A222791.P14587724075139193642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (f1 (n + 1) - f1 n).toNat

end

end A222791.P14587724075139193642

/-! ## A222791.P2552575744753343211

`A222794(A046691(n+3))`
-/

namespace A222791.P2552575744753343211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A046691 (n + 3)).toNat

end

end A222791.P2552575744753343211

/-! ## A222791.P2549166542155862333

`A222794(A056115(n)+11)`
-/

namespace A222791.P2549166542155862333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A056115 n + 11).toNat

end

end A222791.P2549166542155862333

/-! ## A222791.P854574175040990910

`A222794(eq[4, A193592(n)])`
-/

namespace A222791.P854574175040990910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222791.P854574175040990910

/-! ## A222791.P6872112632955716486

`A222794(eq[8, A140996(n)])`
-/

namespace A222791.P6872112632955716486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222791.P6872112632955716486

/-!
# A222792: Number of nX6 0..3 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222792, there is no canonical definition to state claims against.
-/

/-! ## A222792.P11406175019528684596

`A222794(A052905(n+3))`
-/

namespace A222792.P11406175019528684596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A052905 (n + 3)).toNat

end

end A222792.P11406175019528684596

/-! ## A222792.P13750843366383456050

`A222794(A056119(n)+16)`
-/

namespace A222792.P13750843366383456050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A056119 n + 16).toNat

end

end A222792.P13750843366383456050

/-! ## A222792.P1890670370209040412

`A222794(eq[3, A219347(n)])`
-/

namespace A222792.P1890670370209040412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222792.P1890670370209040412

/-! ## A222792.P5426961073224565388

`A222794(eq[5, A193592(n)])`
-/

namespace A222792.P5426961073224565388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222792.P5426961073224565388

/-! ## A222792.P5742414739438511260

`A222794(eq[8, A185782(n+1)])`
-/

namespace A222792.P5742414739438511260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222792.P5742414739438511260

/-!
# A222793: Number of n X 7 0..3 arrays with exactly floor(n X 7/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222793, there is no canonical definition to state claims against.
-/

/-! ## A222793.P12499433352174345885

`A222794(A055999(n+4))`
-/

namespace A222793.P12499433352174345885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A055999 (n + 4)).toNat

end

end A222793.P12499433352174345885

/-! ## A222793.P2142831989982717990

`A222794(eq[4, A219347(n)])`
-/

namespace A222793.P2142831989982717990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222793.P2142831989982717990

/-! ## A222793.P7802918251232471732

`A222794(eq[6, A193592(n)])`
-/

namespace A222793.P7802918251232471732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222793.P7802918251232471732

/-! ## A222793.P4675732662935618572

`A222794(eq[7, A200370(n+1)])`
-/

namespace A222793.P4675732662935618572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222793.P4675732662935618572

/-! ## A222793.P14314557100809528630

`A222794(eq[10, A185782(n+1)])`
-/

namespace A222793.P14314557100809528630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222793.P14314557100809528630

/-!
# A222794: T(n,k)=Number of nXk 0..3 arrays with exactly floor(nXk/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222794, there is no canonical definition to state claims against.
-/

/-! ## A222794.P9781115743188329300

`A175427(A222690(n+1)+1)`
-/

namespace A222794.P9781115743188329300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A222690 (n + 1) + 1).toNat

end

end A222794.P9781115743188329300

/-! ## A222794.P8977645191398746188

`A222690(n+1)+A083893(A099902(n))`
-/

namespace A222794.P8977645191398746188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (n + 1) + A083893 (A099902 n).toNat

end

end A222794.P8977645191398746188

/-! ## A222794.P6356254681788723576

`A295884(A018018(n))+A222690(n+1)`
-/

namespace A222794.P6356254681788723576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A018018 n).toNat + A222690 (n + 1)

end

end A222794.P6356254681788723576

/-! ## A222794.P13453669754662089219

`A222690(n+1)+A014083(A023110(n+1))`
-/

namespace A222794.P13453669754662089219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (n + 1) + A014083 (A023110 (n + 1)).toNat

end

end A222794.P13453669754662089219

/-! ## A222794.P1557930765874961713

`A222690(n+1)+A007610(A120572(3*n+2))`
-/

namespace A222794.P1557930765874961713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (n + 1) + A007610 (A120572 (3 * n + 2)).toNat

end

end A222794.P1557930765874961713

/-!
# A222795: Number of 2Xn 0..3 arrays with exactly floor(2Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222795, there is no canonical definition to state claims against.
-/

/-! ## A222795.P9097811419404112263

`A222794(∑[n+1]+2)`
-/

namespace A222795.P9097811419404112263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222795.P9097811419404112263

/-! ## A222795.P3491792034750048873

`record[A010054(n)*A222794(n+2)]`
-/

namespace A222795.P3491792034750048873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222794 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222795.P3491792034750048873

/-! ## A222795.P2725362431419641471

`record[char[A000124(n)]*A222794(n+1)]`
-/

namespace A222795.P2725362431419641471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222795.P2725362431419641471

/-! ## A222795.P10756076955179553759

`record[A222794(n+2)/A008292(n+1)]`
-/

namespace A222795.P10756076955179553759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222794 (n + 2) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222795.P10756076955179553759

/-! ## A222795.P11638136493794488490

`record[A222794(n+2)/A008969(n+1)]`
-/

namespace A222795.P11638136493794488490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222794 (n + 2) : ℚ) / (A008969 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222795.P11638136493794488490

/-!
# A222796: Number of 3Xn 0..3 arrays with exactly floor(3Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222796, there is no canonical definition to state claims against.
-/

/-! ## A222796.P13447458374846613330

`A222794(∑[n+2]+4)`
-/

namespace A222796.P13447458374846613330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222796.P13447458374846613330

/-! ## A222796.P14196221405429367383

`record[char[A000124(n+1)]*A222794(n+2)]`
-/

namespace A222796.P14196221405429367383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222794 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222796.P14196221405429367383

/-! ## A222796.P12874939836728390794

`A222794(A167614(n+1))+A025469(n)`
-/

namespace A222796.P12874939836728390794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A167614 (n + 1)).toNat + A025469 n

end

end A222796.P12874939836728390794

/-! ## A222796.P10726488010277991052

`A222794(A167614(n+1))+A180649(n)`
-/

namespace A222796.P10726488010277991052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A167614 (n + 1)).toNat + A180649 n

end

end A222796.P10726488010277991052

/-! ## A222796.P12422957356966315631

`A222794(A167614(n+1))+A185284(n)`
-/

namespace A222796.P12422957356966315631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A167614 (n + 1)).toNat + A185284 n

end

end A222796.P12422957356966315631

/-!
# A222797: Number of 4 X n 0..3 arrays with exactly floor(4 X n/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222797, there is no canonical definition to state claims against.
-/

/-! ## A222797.P9903912012807352378

`A222794(A141214(n)+7)`
-/

namespace A222797.P9903912012807352378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A141214 n + 7).toNat

end

end A222797.P9903912012807352378

/-! ## A222797.P5863993598977722009

`A222794(A052905(n)+9)`
-/

namespace A222797.P5863993598977722009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A052905 n + 9).toNat

end

end A222797.P5863993598977722009

/-! ## A222797.P2818809555941850886

`A222794(A055999(n)+10)`
-/

namespace A222797.P2818809555941850886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A055999 n + 10).toNat

end

end A222797.P2818809555941850886

/-! ## A222797.P3551541947504850657

`A222794(Δ[A008778(n)]+6)`
-/

namespace A222797.P3551541947504850657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (f1 (n + 1) - f1 n + 6).toNat

end

end A222797.P3551541947504850657

/-! ## A222797.P17270614877115199659

`A222794(A167614(n+2)+1)`
-/

namespace A222797.P17270614877115199659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A167614 (n + 2) + 1).toNat

end

end A222797.P17270614877115199659

/-!
# A222798: Number of 5 X n 0..3 arrays with exactly floor(5 X n/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222798, there is no canonical definition to state claims against.
-/

/-! ## A222798.P4763162879015746880

`A222794(A167499(n+3))`
-/

namespace A222798.P4763162879015746880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A167499 (n + 3)).toNat

end

end A222798.P4763162879015746880

/-! ## A222798.P2583062463432447543

`A222794(A155212(n)+13)`
-/

namespace A222798.P2583062463432447543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A155212 n + 13).toNat

end

end A222798.P2583062463432447543

/-! ## A222798.P4167045342788392015

`A222794(A056000(n)+15)`
-/

namespace A222798.P4167045342788392015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A056000 n + 15).toNat

end

end A222798.P4167045342788392015

/-! ## A222798.P12492376610455001616

`A222794(eq[7, A066657(n)])`
-/

namespace A222798.P12492376610455001616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222798.P12492376610455001616

/-! ## A222798.P15530675066286271603

`A222794(A167614(n+3)+2)`
-/

namespace A222798.P15530675066286271603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A167614 (n + 3) + 2).toNat

end

end A222798.P15530675066286271603

/-!
# A222799: Number of 6Xn 0..3 arrays with exactly floor(6Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222799, there is no canonical definition to state claims against.
-/

/-! ## A222799.P12587046512774067086

`A222794(A056115(n)+21)`
-/

namespace A222799.P12587046512774067086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A056115 n + 21).toNat

end

end A222799.P12587046512774067086

/-! ## A222799.P17536483376773850426

`A222794(A167614(n+4)+3)`
-/

namespace A222799.P17536483376773850426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A167614 (n + 4) + 3).toNat

end

end A222799.P17536483376773850426

/-! ## A222799.P7808763393881139236

`A222794(A141214(n+2)+9)`
-/

namespace A222799.P7808763393881139236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A141214 (n + 2) + 9).toNat

end

end A222799.P7808763393881139236

/-! ## A222799.P12118854542964523625

`A222794(A055998(n+3)+9)`
-/

namespace A222799.P12118854542964523625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A055998 (n + 3) + 9).toNat

end

end A222799.P12118854542964523625

/-! ## A222799.P732559834784132583

`A222794(eq[6, A130270(n+1)])`
-/

namespace A222799.P732559834784132583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222799.P732559834784132583

