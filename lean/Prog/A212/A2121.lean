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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
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
import Seq.B001.C010
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
import Seq.B005.C000
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
# A212100: Number of (w,x,y,z) with all terms in {1,...,n} and w^3>=x^3+y^3+z^3.

The programs for A212100, there is no canonical definition to state claims against.
-/

/-! ## A212100.P6882092141768887275

`A212099(n)+A212096(n)`
-/

namespace A212100.P6882092141768887275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212099 n + A212096 n

end

end A212100.P6882092141768887275

/-! ## A212100.P12682777500421916738

`n^4+A212096(n)-A212098(n)`
-/

namespace A212100.P12682777500421916738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) + (A212096 n - A212098 n)

end

end A212100.P12682777500421916738

/-! ## A212100.P9238157436599954985

`A000583(n)-(A212098(n)-A212096(n))`
-/

namespace A212100.P9238157436599954985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212098 n - A212096 n)

end

end A212100.P9238157436599954985

/-! ## A212100.P14213489532692876588

`A000290(n)²-(A212098(n)-A212096(n))`
-/

namespace A212100.P14213489532692876588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 - (A212098 n - A212096 n)

end

end A212100.P14213489532692876588

/-! ## A212100.P11559225486666717508

`A212096(n)+A002523(n)-(A212098(n)+1)`
-/

namespace A212100.P11559225486666717508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212096 n + (A002523 n - (A212098 n + 1))

end

end A212100.P11559225486666717508

/-! ## A212100.P7736573129565049111

`A212096(n)+n²²%A212098(A000007(n)+n)`
-/

namespace A212100.P7736573129565049111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212096 n + Int.tmod ((n ^ 2) ^ 2 : ℤ) (A212098 (A000007 n + (n : ℤ)).toNat)

end

end A212100.P7736573129565049111

/-! ## A212100.P6342253976730956107

`A212099(A028310(n))-A001489(A212096(n))`
-/

namespace A212100.P6342253976730956107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212099 (A028310 n).toNat - A001489 (A212096 n).toNat

end

end A212100.P6342253976730956107

/-! ## A212100.P18239448912234470051

`A212096(n)+A212088(n)+A212089(n)-A212098(n)`
-/

namespace A212100.P18239448912234470051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212096 n + (A212088 n + (A212089 n - A212098 n))

end

end A212100.P18239448912234470051

/-! ## A212100.P16405054197421844134

`n^4-A212097(n)`
-/

namespace A212100.P16405054197421844134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212097 n

end

end A212100.P16405054197421844134

/-! ## A212100.P8374459146835402442

`abs(A000583(n)-A212097(n))`
-/

namespace A212100.P8374459146835402442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212097 n|

end

end A212100.P8374459146835402442

/-! ## A212100.P2956177495118049442

`A212093(n)+A212094(n)-A212097(n)`
-/

namespace A212100.P2956177495118049442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n + (A212094 n - A212097 n)

end

end A212100.P2956177495118049442

/-! ## A212100.P12997884322770421438

`A212098(n)+A212099(n)-A212097(n)`
-/

namespace A212100.P12997884322770421438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A212097 n)

end

end A212100.P12997884322770421438

/-! ## A212100.P4397248870642679987

`A212681(n)+A212682(n)-A212097(n)`
-/

namespace A212100.P4397248870642679987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212681 n + (A212682 n - A212097 n)

end

end A212100.P4397248870642679987

/-! ## A212100.P4953223379775535612

`A212151(n+1)+A212241(n)-A212097(n)`
-/

namespace A212100.P4953223379775535612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 1) + (A212241 n - A212097 n)

end

end A212100.P4953223379775535612

/-! ## A212100.P6033314528468625826

`A211812(n)+A211918(n)-A212097(n)`
-/

namespace A212100.P6033314528468625826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n + (A211918 n - A212097 n)

end

end A212100.P6033314528468625826

/-! ## A212100.P9408716597494596298

`A212055(n)+A212056(n)-A212097(n)`
-/

namespace A212100.P9408716597494596298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212055 n + (A212056 n - A212097 n)

end

end A212100.P9408716597494596298

/-! ## A212100.P11882918445786637603

`A211917(n)+A211919(n)-A212097(n)`
-/

namespace A212100.P11882918445786637603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211917 n + (A211919 n - A212097 n)

end

end A212100.P11882918445786637603

/-! ## A212100.P5364603765156818270

`A211795(n)+A211809(n)-A212097(n)`
-/

namespace A212100.P5364603765156818270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211795 n + (A211809 n - A212097 n)

end

end A212100.P5364603765156818270

/-!
# A212103: Number of (w,x,y,z) with all terms in {1,...,n} and w = harmonic mean of {x,y,z}.

The programs for A212103, there is no canonical definition to state claims against.
-/

/-! ## A212103.P1942408175039332451

`A212107(n)-A212105(n)`
-/

namespace A212103.P1942408175039332451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212107 n - A212105 n

end

end A212103.P1942408175039332451

/-! ## A212103.P7708487747021695817

`A212107(n)%A212105(round(acot(n)+n))`
-/

namespace A212103.P7708487747021695817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212107 n) (A212105 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A212103.P7708487747021695817

/-! ## A212103.P3666238002717267925

`A212107(n)%A212105(A233583(n+1))`
-/

namespace A212103.P3666238002717267925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212107 n) (A212105 (A233583 (n + 1)).toNat)

end

end A212103.P3666238002717267925

/-! ## A212103.P3588745351103243414

`A212104(n)-A212106(n)`
-/

namespace A212103.P3588745351103243414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 n - A212106 n

end

end A212103.P3588745351103243414

/-! ## A212103.P3660750139811469755

`n^4-A212105(n)-A212106(n)`
-/

namespace A212103.P3660750139811469755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212105 n - A212106 n

end

end A212103.P3660750139811469755

/-! ## A212103.P1321315765150814595

`A212107(n)-(n^4-A212104(n))`
-/

namespace A212103.P1321315765150814595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212107 n - ((n ^ 4 : ℤ) - A212104 n)

end

end A212103.P1321315765150814595

/-! ## A212103.P13722975608880358804

`A212104(n)%A212106(A233583(n+1))`
-/

namespace A212103.P13722975608880358804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212104 n) (A212106 (A233583 (n + 1)).toNat)

end

end A212103.P13722975608880358804

/-! ## A212103.P11420052243162235228

`A000583(n)-(A212106(n)+A212105(n))`
-/

namespace A212103.P11420052243162235228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212106 n + A212105 n)

end

end A212103.P11420052243162235228

/-! ## A212103.P5211077764201213511

`A212104(n)+A212107(n)-A000583(n)`
-/

namespace A212103.P5211077764201213511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 n + (A212107 n - A000583 n)

end

end A212103.P5211077764201213511

/-! ## A212103.P1746166544641432450

`A212093(n)+A212094(n)-A212105(n)-A212106(n)`
-/

namespace A212103.P1746166544641432450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n + (A212094 n - A212105 n) - A212106 n

end

end A212103.P1746166544641432450

/-! ## A212103.P17984023845491872123

`(A000583(n)-A212106(n))*A007318(C(2, n))-A212105(n)`
-/

namespace A212103.P17984023845491872123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212106 n) * A007318 (Nat.choose 2 n) - A212105 n

end

end A212103.P17984023845491872123

/-!
# A212104: Number of (w,x,y,z) with all terms in {1,...,n} and w <= harmonic mean of {x,y,z}.

The programs for A212104, there is no canonical definition to state claims against.
-/

/-! ## A212104.P17183300587096105952

`n^4-A212105(n)`
-/

namespace A212104.P17183300587096105952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212105 n

end

end A212104.P17183300587096105952

/-! ## A212104.P17164157482499973095

`A212106(n)+A212103(n)`
-/

namespace A212104.P17164157482499973095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 n + A212103 n

end

end A212104.P17164157482499973095

/-! ## A212104.P12235230550579764982

`abs(A000583(n)-A212105(n))`
-/

namespace A212104.P12235230550579764982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212105 n|

end

end A212104.P12235230550579764982

/-! ## A212104.P12707256286282077086

`A212103(n)+n^4-A212107(n)`
-/

namespace A212104.P12707256286282077086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212103 n + ((n ^ 4 : ℤ) - A212107 n)

end

end A212104.P12707256286282077086

/-! ## A212104.P6971094615507445805

`A212088(n)+A212089(n)-A212105(n)`
-/

namespace A212104.P6971094615507445805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212105 n)

end

end A212104.P6971094615507445805

/-! ## A212104.P12859987976652223887

`A212092(n)+A212095(n)-A212105(n)`
-/

namespace A212104.P12859987976652223887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + (A212095 n - A212105 n)

end

end A212104.P12859987976652223887

/-! ## A212104.P1914893899700724314

`A212093(n)+A212094(n)-A212105(n)`
-/

namespace A212104.P1914893899700724314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n + (A212094 n - A212105 n)

end

end A212104.P1914893899700724314

/-! ## A212104.P11341765322564729384

`A212097(n)+A212100(n)-A212105(n)`
-/

namespace A212104.P11341765322564729384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212097 n + (A212100 n - A212105 n)

end

end A212104.P11341765322564729384

/-! ## A212104.P6295178387332757816

`A212098(n)+A212099(n)-A212105(n)`
-/

namespace A212104.P6295178387332757816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A212105 n)

end

end A212104.P6295178387332757816

/-! ## A212104.P11922964232338135317

`A212106(n)+A212107(n)-A212105(n)`
-/

namespace A212104.P11922964232338135317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 n + (A212107 n - A212105 n)

end

end A212104.P11922964232338135317

/-! ## A212104.P8055078376766339082

`A000583(n)-A057427(n)*A212105(n)`
-/

namespace A212104.P8055078376766339082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A057427 n * A212105 n

end

end A212104.P8055078376766339082

/-! ## A212104.P7432805017585606757

`A008683(4*(n+1))+A000583(n)-A212105(n)`
-/

namespace A212104.P7432805017585606757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A000583 n - A212105 n)

end

end A212104.P7432805017585606757

/-! ## A212104.P18296957769533241623

`(A000583(n)-A212105(n))*A014963(4*n+6)`
-/

namespace A212104.P18296957769533241623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212105 n) * A014963 (4 * n + 6)

end

end A212104.P18296957769533241623

/-! ## A212104.P9472783464393339495

`(A000583(n)-A212105(n))*A000041(gcd(n, n+1))`
-/

namespace A212104.P9472783464393339495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212105 n) * A000041 (Nat.gcd n (n + 1))

end

end A212104.P9472783464393339495

/-!
# A212105: Number of (w,x,y,z) with all terms in {1,...,n} and w > harmonic mean of {x,y,z}.

The programs for A212105, there is no canonical definition to state claims against.
-/

/-! ## A212105.P12461815046696418538

`A212107(n)-A212103(n)`
-/

namespace A212105.P12461815046696418538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212107 n - A212103 n

end

end A212105.P12461815046696418538

/-! ## A212105.P7952796583174329796

`n^4-A212104(n)`
-/

namespace A212105.P7952796583174329796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212104 n

end

end A212105.P7952796583174329796

/-! ## A212105.P14260995663479691938

`abs(A000583(n)-A212104(n))`
-/

namespace A212105.P14260995663479691938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212104 n|

end

end A212105.P14260995663479691938

/-! ## A212105.P7239887896372262131

`n^4-(A212106(n)+A212103(n))`
-/

namespace A212105.P7239887896372262131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - (A212106 n + A212103 n)

end

end A212105.P7239887896372262131

/-! ## A212105.P12895485562363438757

`A211787(n)+A211797(n)-A212104(n)`
-/

namespace A212105.P12895485562363438757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212104 n)

end

end A212105.P12895485562363438757

/-! ## A212105.P7096458891878193967

`A212055(n)+A212056(n)-A212104(n)`
-/

namespace A212105.P7096458891878193967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212055 n + (A212056 n - A212104 n)

end

end A212105.P7096458891878193967

/-! ## A212105.P10978770241664721026

`A212088(n)+A212089(n)-A212104(n)`
-/

namespace A212105.P10978770241664721026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212104 n)

end

end A212105.P10978770241664721026

/-! ## A212105.P15640590734878169844

`A212092(n)+A212095(n)-A212104(n)`
-/

namespace A212105.P15640590734878169844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + (A212095 n - A212104 n)

end

end A212105.P15640590734878169844

/-! ## A212105.P4306589027948345620

`A212093(n)+A212094(n)-A212104(n)`
-/

namespace A212105.P4306589027948345620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n + (A212094 n - A212104 n)

end

end A212105.P4306589027948345620

/-! ## A212105.P15979388214087524008

`A212097(n)+A212100(n)-A212104(n)`
-/

namespace A212105.P15979388214087524008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212097 n + (A212100 n - A212104 n)

end

end A212105.P15979388214087524008

/-! ## A212105.P65472513929677997

`A212098(n)+A212099(n)-A212104(n)`
-/

namespace A212105.P65472513929677997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A212104 n)

end

end A212105.P65472513929677997

/-! ## A212105.P10788900042317727645

`A212106(n)+A212107(n)-A212104(n)`
-/

namespace A212105.P10788900042317727645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 n + (A212107 n - A212104 n)

end

end A212105.P10788900042317727645

/-! ## A212105.P3134788251383287120

`A212134(n)+A212135(n)-A212104(n)`
-/

namespace A212105.P3134788251383287120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + (A212135 n - A212104 n)

end

end A212105.P3134788251383287120

/-! ## A212105.P8399367375062094014

`A212249(n)+A212250(n)-A212104(n)`
-/

namespace A212105.P8399367375062094014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212249 n + (A212250 n - A212104 n)

end

end A212105.P8399367375062094014

/-! ## A212105.P7907896150026893775

`abs(A000583(n)-(A212106(n)+A212103(n)))`
-/

namespace A212105.P7907896150026893775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - (A212106 n + A212103 n)|

end

end A212105.P7907896150026893775

/-! ## A212105.P12445699126155878873

`(A000583(n)-A212104(n))*A000045(C(2, n)!)`
-/

namespace A212105.P12445699126155878873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212104 n) * A000045 (Nat.factorial (Nat.choose 2 n))

end

end A212105.P12445699126155878873

/-! ## A212105.P6306653406948193059

`A008683(4*(n+1))+A000583(n)-A212104(n)`
-/

namespace A212105.P6306653406948193059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A000583 n - A212104 n)

end

end A212105.P6306653406948193059

/-! ## A212105.P18263343214584499453

`A211787(n)+A211797(n)-A212106(n)-A212103(n)`
-/

namespace A212105.P18263343214584499453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212106 n) - A212103 n

end

end A212105.P18263343214584499453

/-! ## A212105.P6385436432503891797

`A212088(n)+A212089(n)-A212106(n)-A212103(n)`
-/

namespace A212105.P6385436432503891797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212106 n) - A212103 n

end

end A212105.P6385436432503891797

/-! ## A212105.P10825996557640466513

`(A000583(n)-A212106(n))*A000040(n+1)%2-A212103(n)`
-/

namespace A212105.P10825996557640466513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212106 n) * Int.tmod (A000040 (n + 1)) 2 - A212103 n

end

end A212105.P10825996557640466513

/-!
# A212106: Number of (w,x,y,z) with all terms in {1,...,n} and w < harmonic mean of {x,y,z}.

The programs for A212106, there is no canonical definition to state claims against.
-/

/-! ## A212106.P18208688718239579677

`n^4-A212107(n)`
-/

namespace A212106.P18208688718239579677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212107 n

end

end A212106.P18208688718239579677

/-! ## A212106.P16610468817179840705

`A212104(n)-A212103(n)`
-/

namespace A212106.P16610468817179840705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 n - A212103 n

end

end A212106.P16610468817179840705

/-! ## A212106.P4660875175720373080

`abs(A000583(n)-A212107(n))`
-/

namespace A212106.P4660875175720373080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212107 n|

end

end A212106.P4660875175720373080

/-! ## A212106.P17565921981088533674

`A002523(n)-(A212107(n)+1)`
-/

namespace A212106.P17565921981088533674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212107 n + 1)

end

end A212106.P17565921981088533674

/-! ## A212106.P7256518107940165475

`A091940(n+1)-(A212107(n)+n)`
-/

namespace A212106.P7256518107940165475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091940 (n + 1) - (A212107 n + (n : ℤ))

end

end A212106.P7256518107940165475

/-! ## A212106.P9780178866507344282

`n^4-A212105(n)-A212103(n)`
-/

namespace A212106.P9780178866507344282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212105 n - A212103 n

end

end A212106.P9780178866507344282

/-! ## A212106.P15981745115183764046

`n²²%A212107(A000007(n)+n)`
-/

namespace A212106.P15981745115183764046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2) ^ 2 : ℤ) (A212107 (A000007 n + (n : ℤ)).toNat)

end

end A212106.P15981745115183764046

/-! ## A212106.P4839560285722333737

`A000583(n)-(A212105(n)+A212103(n))`
-/

namespace A212106.P4839560285722333737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212105 n + A212103 n)

end

end A212106.P4839560285722333737

/-! ## A212106.P7430908161806682611

`A212104(n)+A212105(n)-A212107(n)`
-/

namespace A212106.P7430908161806682611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 n + (A212105 n - A212107 n)

end

end A212106.P7430908161806682611

/-! ## A212106.P7583731246767483079

`A000583(n)+A057428(n)*A212107(n)`
-/

namespace A212106.P7583731246767483079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A057428 n * A212107 n

end

end A212106.P7583731246767483079

/-! ## A212106.P13252762608477696087

`A000583(n)-A054977(n)*A212107(n)`
-/

namespace A212106.P13252762608477696087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A054977 n * A212107 n

end

end A212106.P13252762608477696087

/-! ## A212106.P2757645118912054651

`A000290(n)²-(A212105(n)+A212103(n))`
-/

namespace A212106.P2757645118912054651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 - (A212105 n + A212103 n)

end

end A212106.P2757645118912054651

/-! ## A212106.P4728402499791942740

`A000007(n+1)-(A212107(n)-A000583(n))`
-/

namespace A212106.P4728402499791942740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - (A212107 n - A000583 n)

end

end A212106.P4728402499791942740

/-! ## A212106.P3191460252041928029

`(A000583(n)-A212107(n))*(A000041(n)%2)!`
-/

namespace A212106.P3191460252041928029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212107 n) * (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

end

end A212106.P3191460252041928029

/-! ## A212106.P6251568190736446825

`A008683(4*(n+1))-(A212107(n)-A000583(n))`
-/

namespace A212106.P6251568190736446825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - (A212107 n - A000583 n)

end

end A212106.P6251568190736446825

/-! ## A212106.P8975542598690939922

`val(A006530(n+2), 10)-(A212107(n)-A000583(n))`
-/

namespace A212106.P8975542598690939922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A006530 (n + 2)).toNat 10 : ℤ) - (A212107 n - A000583 n)

end

end A212106.P8975542598690939922

/-! ## A212106.P3726445136490944018

`A000583(n)+A008683(A000928(n+1))*A212107(n)`
-/

namespace A212106.P3726445136490944018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A008683 (A000928 (n + 1)).toNat * A212107 n

end

end A212106.P3726445136490944018

/-! ## A212106.P2183468918169828879

`A000583(n)+A008683(A002144(n+1))*A212107(n)`
-/

namespace A212106.P2183468918169828879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A008683 (A002144 (n + 1)).toNat * A212107 n

end

end A212106.P2183468918169828879

/-! ## A212106.P11727933358029605531

`A000583(n)+A008683(A060974(n+1))*A212107(n)`
-/

namespace A212106.P11727933358029605531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A008683 (A060974 (n + 1)).toNat * A212107 n

end

end A212106.P11727933358029605531

/-! ## A212106.P5486502877240034399

`A000583(n)+A008683(A068363(n+1))*A212107(n)`
-/

namespace A212106.P5486502877240034399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A008683 (A068363 (n + 1)).toNat * A212107 n

end

end A212106.P5486502877240034399

/-!
# A212107: Number of (w,x,y,z) with all terms in {1,...,n} and w >= harmonic mean of {x,y,z}.

The programs for A212107, there is no canonical definition to state claims against.
-/

/-! ## A212107.P13968640259712444019

`A212105(n)+A212103(n)`
-/

namespace A212107.P13968640259712444019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212105 n + A212103 n

end

end A212107.P13968640259712444019

/-! ## A212107.P10708303231735193108

`1-(char[A001057(n)]-A212105(n)-A212103(n))`
-/

namespace A212107.P10708303231735193108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A212105 n - A212103 n)

end

end A212107.P10708303231735193108

/-! ## A212107.P8606351846120748155

`∑[n]-(A000217(n)-A212105(n)-A212103(n))`
-/

namespace A212107.P8606351846120748155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A000217 n - A212105 n - A212103 n)

end

end A212107.P8606351846120748155

/-! ## A212107.P9189706643953003295

`A000583(n)-(n^4-A212105(n)-A212103(n))`
-/

namespace A212107.P9189706643953003295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - ((n ^ 4 : ℤ) - A212105 n - A212103 n)

end

end A212107.P9189706643953003295

/-! ## A212107.P4342875392845316788

`A000290(n)²-(n^4-A212105(n)-A212103(n))`
-/

namespace A212107.P4342875392845316788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 - ((n ^ 4 : ℤ) - A212105 n - A212103 n)

end

end A212107.P4342875392845316788

/-! ## A212107.P1984723622785381961

`n^4-A212106(n)`
-/

namespace A212107.P1984723622785381961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212106 n

end

end A212107.P1984723622785381961

/-! ## A212107.P5508140137936154539

`abs(A000583(n)-A212106(n))`
-/

namespace A212107.P5508140137936154539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212106 n|

end

end A212107.P5508140137936154539

/-! ## A212107.P9661181301530937547

`A211787(n)+A211797(n)-A212106(n)`
-/

namespace A212107.P9661181301530937547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212106 n)

end

end A212107.P9661181301530937547

/-! ## A212107.P4523235443321256171

`A212088(n)+A212089(n)-A212106(n)`
-/

namespace A212107.P4523235443321256171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212106 n)

end

end A212107.P4523235443321256171

/-! ## A212107.P3117581231537541486

`A212093(n)+A212094(n)-A212106(n)`
-/

namespace A212107.P3117581231537541486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n + (A212094 n - A212106 n)

end

end A212107.P3117581231537541486

/-! ## A212107.P10216492522231191680

`A212104(n)+A212105(n)-A212106(n)`
-/

namespace A212107.P10216492522231191680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 n + (A212105 n - A212106 n)

end

end A212107.P10216492522231191680

/-! ## A212107.P4185772572147416861

`A212134(n)+A212135(n)-A212106(n)`
-/

namespace A212107.P4185772572147416861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + (A212135 n - A212106 n)

end

end A212107.P4185772572147416861

/-! ## A212107.P13569666485452908671

`A212249(n)+A212250(n)-A212106(n)`
-/

namespace A212107.P13569666485452908671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212249 n + (A212250 n - A212106 n)

end

end A212107.P13569666485452908671

/-! ## A212107.P6160264695248818861

`A212568(n)+A212675(n)-A212106(n)`
-/

namespace A212107.P6160264695248818861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212568 n + (A212675 n - A212106 n)

end

end A212107.P6160264695248818861

/-! ## A212107.P10392788602056526648

`(A000583(n)-A212106(n))*A007318(C(2, n))`
-/

namespace A212107.P10392788602056526648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212106 n) * A007318 (Nat.choose 2 n)

end

end A212107.P10392788602056526648

/-! ## A212107.P8970200848201032221

`(A000583(n)-A212106(n))/A007318(and(1, -n))`
-/

namespace A212107.P8970200848201032221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212106 n : ℚ) / (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A212107.P8970200848201032221

/-! ## A212107.P11331015397152713722

`(A000583(n)-A212106(n))*A014963(4*n+2)`
-/

namespace A212107.P11331015397152713722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212106 n) * A014963 (4 * n + 2)

end

end A212107.P11331015397152713722

/-! ## A212107.P15769369107943726359

`(A000583(n)-A212106(n))*A000040(n+1)%2`
-/

namespace A212107.P15769369107943726359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212106 n) * Int.tmod (A000040 (n + 1)) 2

end

end A212107.P15769369107943726359

/-! ## A212107.P202907392072074873

`(A000583(n)-A212106(n))*A000041(C(2, n+2))`
-/

namespace A212107.P202907392072074873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212106 n) * A000041 (Nat.choose 2 (n + 2))

end

end A212107.P202907392072074873

/-! ## A212107.P18099566005682348102

`A008683(or(3, n+1)+1)+A000583(n)-A212106(n)`
-/

namespace A212107.P18099566005682348102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.lor 3 (n + 1) + 1) + (A000583 n - A212106 n)

end

end A212107.P18099566005682348102

/-!
# A212108: Number of (w,x,y,z) with all terms in {1,...,n} and w*x-y*z

The programs for A212108, there is no canonical definition to state claims against.
-/

/-! ## A212108.P11284362833421263774

`n^4-A211061(A028310(n))`
-/

namespace A212108.P11284362833421263774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211061 (A028310 n).toNat

end

end A212108.P11284362833421263774

/-! ## A212108.P3413215423976176986

`n²²-A211061(A123108(2*n))`
-/

namespace A212108.P3413215423976176986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A211061 (A123108 (2 * n)).toNat

end

end A212108.P3413215423976176986

/-! ## A212108.P8239353933898301289

`n^4-A211060(A123108(2*n))-A211053(A028310(n))`
-/

namespace A212108.P8239353933898301289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211060 (A123108 (2 * n)).toNat - A211053 (A028310 n).toNat

end

end A212108.P8239353933898301289

/-! ## A212108.P13676891532849502571

`A212109(n)-A211053(A028310(n))`
-/

namespace A212108.P13676891532849502571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212109 n - A211053 (A028310 n).toNat

end

end A212108.P13676891532849502571

/-! ## A212108.P2450683120961541822

`A212109(n)-A211053(A123108(2*n))`
-/

namespace A212108.P2450683120961541822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212109 n - A211053 (A123108 (2 * n)).toNat

end

end A212108.P2450683120961541822

/-!
# A212109: Number of (w,x,y,z) with all terms in {1,...,n} and w*x-y*z<=n.

The programs for A212109, there is no canonical definition to state claims against.
-/

/-! ## A212109.P4204494000538824916

`n^4-A211060(A028310(n))`
-/

namespace A212109.P4204494000538824916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211060 (A028310 n).toNat

end

end A212109.P4204494000538824916

/-! ## A212109.P17211138552464489917

`n^4-A211060(A123108(2*n))`
-/

namespace A212109.P17211138552464489917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211060 (A123108 (2 * n)).toNat

end

end A212109.P17211138552464489917

/-! ## A212109.P15933305672760263408

`A212108(n)+A211053(A028310(n))`
-/

namespace A212109.P15933305672760263408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212108 n + A211053 (A028310 n).toNat

end

end A212109.P15933305672760263408

/-! ## A212109.P6161498637140206214

`A212108(n)+A211053(A123108(2*n))`
-/

namespace A212109.P6161498637140206214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212108 n + A211053 (A123108 (2 * n)).toNat

end

end A212109.P6161498637140206214

/-! ## A212109.P12483464435592669998

`A211053(A123108(2*n))+n^4-A211061(A028310(n))`
-/

namespace A212109.P12483464435592669998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211053 (A123108 (2 * n)).toNat + ((n ^ 4 : ℤ) - A211061 (A028310 n).toNat)

end

end A212109.P12483464435592669998

/-!
# A212110: Number of (w,x,y,z) with all terms in {1,...,n} and w*x + y*z = n^2.

The programs for A212110, there is no canonical definition to state claims against.
-/

/-! ## A212110.P16247382813925008417

`A212150(n)-A212111(n)`
-/

namespace A212110.P16247382813925008417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212150 n - A212111 n

end

end A212110.P16247382813925008417

/-! ## A212110.P3856121471640488094

`A212150(n)%A212111(A233583(n+1))`
-/

namespace A212110.P3856121471640488094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212150 n) (A212111 (A233583 (n + 1)).toNat)

end

end A212110.P3856121471640488094

/-! ## A212110.P14251762431395255540

`n^4-A212111(n)-A212136(n)`
-/

namespace A212110.P14251762431395255540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212111 n - A212136 n

end

end A212110.P14251762431395255540

/-! ## A212110.P16305079044628807198

`A000583(n)-(A212136(n)+A212111(n))`
-/

namespace A212110.P16305079044628807198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212136 n + A212111 n)

end

end A212110.P16305079044628807198

/-! ## A212110.P12612360922352914362

`(n²²-A212136(n))%A131509(n)-A212111(n)`
-/

namespace A212110.P12612360922352914362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n ^ 2) ^ 2 : ℤ) - A212136 n) (A131509 n) - A212111 n

end

end A212110.P12612360922352914362

/-! ## A212110.P7128118433788604078

`A008683(8*(n+1))+n²²-A212136(n)-A212111(n)`
-/

namespace A212110.P7128118433788604078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) + (((n ^ 2) ^ 2 : ℤ) - A212136 n) - A212111 n

end

end A212110.P7128118433788604078

/-! ## A212110.P11442017693570706972

`(n²²-A212136(n))*A000040(n+1)%2-A212111(n)`
-/

namespace A212110.P11442017693570706972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) - A212136 n) * Int.tmod (A000040 (n + 1)) 2 - A212111 n

end

end A212110.P11442017693570706972

/-! ## A212110.P10354090187337657933

`A212088(n)+A212089(n)-A212111(n)-A212136(n)`
-/

namespace A212110.P10354090187337657933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212111 n) - A212136 n

end

end A212110.P10354090187337657933

/-! ## A212110.P16261491555453189191

`A212098(n)+A212099(n)-A212111(n)-A212136(n)`
-/

namespace A212110.P16261491555453189191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A212111 n) - A212136 n

end

end A212110.P16261491555453189191

/-! ## A212110.P3851047721073250091

`A212134(n)+A212135(n)-A212111(n)-A212136(n)`
-/

namespace A212110.P3851047721073250091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + (A212135 n - A212111 n) - A212136 n

end

end A212110.P3851047721073250091

/-! ## A212110.P82150541685588100

`A212132(n)-A212136(n)`
-/

namespace A212110.P82150541685588100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212132 n - A212136 n

end

end A212110.P82150541685588100

/-! ## A212110.P10202098835312109712

`A212150(n)-(n^4-A212132(n))`
-/

namespace A212110.P10202098835312109712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212150 n - ((n ^ 4 : ℤ) - A212132 n)

end

end A212110.P10202098835312109712

/-! ## A212110.P7488625013156080498

`A212132(n)%A212136(A028310(n))`
-/

namespace A212110.P7488625013156080498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212132 n) (A212136 (A028310 n).toNat)

end

end A212110.P7488625013156080498

/-! ## A212110.P3064656256341637343

`A212132(n)+A212150(n)-A000583(n)`
-/

namespace A212110.P3064656256341637343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212132 n + (A212150 n - A000583 n)

end

end A212110.P3064656256341637343

/-! ## A212110.P14394465421301618540

`A000265(A211143(n))-(4*n+1)`
-/

namespace A212110.P14394465421301618540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A211143 n).toNat - (4 * n + 1 : ℤ)

end

end A212110.P14394465421301618540

/-!
# A212111: Number of (w,x,y,z) with all terms in {1,...,n} and w*x+y*z

The programs for A212111, there is no canonical definition to state claims against.
-/

/-! ## A212111.P16442213251501594101

`A212150(n)-A212110(n)`
-/

namespace A212111.P16442213251501594101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212150 n - A212110 n

end

end A212111.P16442213251501594101

/-! ## A212111.P7497342431479134767

`n^4-(A212136(n)+A212110(n))`
-/

namespace A212111.P7497342431479134767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - (A212136 n + A212110 n)

end

end A212111.P7497342431479134767

/-! ## A212111.P16502944966704463834

`abs(A000583(n)-(A212136(n)+A212110(n)))`
-/

namespace A212111.P16502944966704463834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - (A212136 n + A212110 n)|

end

end A212111.P16502944966704463834

/-! ## A212111.P5461360622075962107

`n^4-A212136(n)-A212110(A028310(n))`
-/

namespace A212111.P5461360622075962107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212136 n - A212110 (A028310 n).toNat

end

end A212111.P5461360622075962107

/-! ## A212111.P12072241129887576772

`(n²²-A212136(n))%A131509(n)-A212110(n)`
-/

namespace A212111.P12072241129887576772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n ^ 2) ^ 2 : ℤ) - A212136 n) (A131509 n) - A212110 n

end

end A212111.P12072241129887576772

/-! ## A212111.P7995104204808942481

`A008683(8*(n+1))+n²²-A212136(n)-A212110(n)`
-/

namespace A212111.P7995104204808942481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) + (((n ^ 2) ^ 2 : ℤ) - A212136 n) - A212110 n

end

end A212111.P7995104204808942481

/-! ## A212111.P12719502873636177890

`(n²²-A212136(n))*A000040(n+1)%2-A212110(n)`
-/

namespace A212111.P12719502873636177890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) - A212136 n) * Int.tmod (A000040 (n + 1)) 2 - A212110 n

end

end A212111.P12719502873636177890

/-! ## A212111.P11303040731251862111

`n^4-A212132(n)`
-/

namespace A212111.P11303040731251862111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212132 n

end

end A212111.P11303040731251862111

/-! ## A212111.P1650100090307518328

`abs(A000583(n)-A212132(n))`
-/

namespace A212111.P1650100090307518328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212132 n|

end

end A212111.P1650100090307518328

/-! ## A212111.P5150375567207272145

`A211787(n)+A211797(n)-A212132(n)`
-/

namespace A212111.P5150375567207272145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212132 n)

end

end A212111.P5150375567207272145

/-! ## A212111.P9027966984277821080

`A212134(n)+A212135(n)-A212132(n)`
-/

namespace A212111.P9027966984277821080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + (A212135 n - A212132 n)

end

end A212111.P9027966984277821080

/-! ## A212111.P15367896934453271721

`A212136(n)+A212150(n)-A212132(n)`
-/

namespace A212111.P15367896934453271721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212136 n + (A212150 n - A212132 n)

end

end A212111.P15367896934453271721

/-! ## A212111.P5125614547298095791

`A000007(n+1)+A000583(n)-A212132(n)`
-/

namespace A212111.P5125614547298095791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000583 n - A212132 n)

end

end A212111.P5125614547298095791

/-! ## A212111.P6430016053283764369

`(A000583(n)-A212132(n))*A014963(4*n+2)`
-/

namespace A212111.P6430016053283764369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212132 n) * A014963 (4 * n + 2)

end

end A212111.P6430016053283764369

/-! ## A212111.P11278795579795283223

`(A000583(n)-A212132(n))*gcd(2, A000040(n+2))`
-/

namespace A212111.P11278795579795283223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212132 n) * (Int.gcd 2 (A000040 (n + 2)) : ℤ)

end

end A212111.P11278795579795283223

/-! ## A212111.P12512415421256387320

`(A000583(n)-A212132(n))*A000041(C(2, n+2))`
-/

namespace A212111.P12512415421256387320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212132 n) * A000041 (Nat.choose 2 (n + 2))

end

end A212111.P12512415421256387320

/-! ## A212111.P5897515348041555509

`A000079(n)²-(A212132(n)+A024040(n))`
-/

namespace A212111.P5897515348041555509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - (A212132 n + A024040 n)

end

end A212111.P5897515348041555509

/-!
# A212116: Number of partitions of n into exactly 5 different parts with distinct multiplicities.

The programs for A212116, there is no canonical definition to state claims against.
-/

/-! ## A212116.P11508169615877347583

`xor(A160728(n), A341880(A329626(n)))`
-/

namespace A212116.P11508169615877347583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A160728 n) (A341880 ((A329626 n).toNat + 16))

end

end A212116.P11508169615877347583

/-! ## A212116.P11880750779130036208

`A123050(A190098(n+1)+A056115(n))`
-/

namespace A212116.P11880750779130036208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123050 (A190098 (n + 1) + A056115 n).toNat

end

end A212116.P11880750779130036208

/-! ## A212116.P10659835240075140170

`A123050(A197450(n+1)+A056115(n))`
-/

namespace A212116.P10659835240075140170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123050 (A197450 (n + 1) + A056115 n).toNat

end

end A212116.P10659835240075140170

/-!
# A212117: Number of partitions of n into exactly 6 different parts with distinct multiplicities.

The programs for A212117, there is no canonical definition to state claims against.
-/

/-! ## A212117.P10127173605744924142

`A220487(A318604(n+3)+n)`
-/

namespace A212117.P10127173605744924142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220487 (A318604 (n + 3) + (n : ℤ)).toNat

end

end A212117.P10127173605744924142

/-! ## A212117.P11868804399146450957

`A199974(A002623(n))-A128174(n+1)`
-/

namespace A212117.P11868804399146450957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199974 (A002623 n).toNat - A128174 (n + 1)

end

end A212117.P11868804399146450957

/-!
# A212118: Number of partitions of n into exactly 7 different parts with distinct multiplicities.

The programs for A212118, there is no canonical definition to state claims against.
-/

/-! ## A212118.P2645548178679837303

`A000005(∏[2*(n+3)])+n-3`
-/

namespace A212118.P2645548178679837303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j) + ((n : ℤ) - 3)

end

end A212118.P2645548178679837303

/-!
# A212119: Triangle read by rows T(n,k), n>=1, k>=1, where T(n,k) is the number of divisors d of n with min(d, n/d) = k.

The programs for A212119, there is no canonical definition to state claims against.
-/

/-! ## A212119.P9367384679313777815

`A036453(A332266(n+1))*A303300(n+1)`
-/

namespace A212119.P9367384679313777815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A332266 (n + 1)).toNat * A303300 (n + 1)

end

end A212119.P9367384679313777815

/-! ## A212119.P13856083345703335367

`A036453(A332266(-xor(n, -1)))%(A303300(n+1)+2)`
-/

namespace A212119.P13856083345703335367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036453 (A332266 (-Int.xor (n : ℤ) (-1)).toNat).toNat) (A303300 (n + 1) + 2)

end

end A212119.P13856083345703335367

/-! ## A212119.P14983088941173302905

`A036453(A332266(char[1]+1+n))%(A303300(n+1)+2)`
-/

namespace A212119.P14983088941173302905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036453 (A332266 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat) (A303300 (n + 1) + 2)

end

end A212119.P14983088941173302905

/-! ## A212119.P18396121656838166463

`A324646(A164413(n))%3`
-/

namespace A212119.P18396121656838166463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324646 (A164413 n).toNat) 3

end

end A212119.P18396121656838166463

/-! ## A212119.P9280045030697124498

`A347883(A000203(A003415(n+6)^3))`
-/

namespace A212119.P9280045030697124498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A000203 (A003415 (n + 6) ^ 3).toNat).toNat

end

end A212119.P9280045030697124498

/-!
# A212121: Triangle read by rows in which row n lists the number of pairs of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

The programs for A212121, there is no canonical definition to state claims against.
-/

/-! ## A212121.P1174042646462626135

`A212122(n+1)/2`
-/

namespace A212121.P1174042646462626135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212122 (n + 1) : ℚ) / 2

end

end A212121.P1174042646462626135

/-! ## A212121.P15697954779325654579

`floor(A212122(Δ[n²]-n)/2)`
-/

namespace A212121.P15697954779325654579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212122 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A212121.P15697954779325654579

/-! ## A212121.P4779646326160286115

`A001281(A212122(n+1))`
-/

namespace A212121.P4779646326160286115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A212122 (n + 1)).toNat

end

end A212121.P4779646326160286115

/-! ## A212121.P8508284063587060885

`A064727(A212122(n+1)²)`
-/

namespace A212121.P8508284063587060885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A212122 (n + 1) ^ 2).toNat

end

end A212121.P8508284063587060885

/-!
# A212122: Triangle read by rows in which row n lists the number of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

The programs for A212122, there is no canonical definition to state claims against.
-/

/-! ## A212122.P12613155920714389027

`2*A212121(n+1)`
-/

namespace A212122.P12613155920714389027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212121 (n + 1)

end

end A212122.P12613155920714389027

/-! ## A212122.P1836835397545187649

`Δ[∪[A162626(n), A212124(n+1)]]`
-/

namespace A212122.P1836835397545187649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162626 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212124 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A212122.P1836835397545187649

/-! ## A212122.P872824290303570922

`A005843(A212121(n+1)+C(n, 64))`
-/

namespace A212122.P872824290303570922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A212121 (n + 1) + (Nat.choose n 64 : ℤ)).toNat

end

end A212122.P872824290303570922

/-! ## A212122.P2256189982357164426

`A005843(lcm((-1)^n, A212121(n+1)))`
-/

namespace A212122.P2256189982357164426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm ((-1) ^ n) (A212121 (n + 1)))

end

end A212122.P2256189982357164426

/-!
# A212123: Total number of pairs of states of the first n subshells of the nuclear shell model in which the subshells are ordered by energy level in increasing order.

The programs for A212123, there is no canonical definition to state claims against.
-/

/-! ## A212123.P9968410394251999433

`A212124(n+1)/2`
-/

namespace A212123.P9968410394251999433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212124 (n + 1) : ℚ) / 2

end

end A212123.P9968410394251999433

/-! ## A212123.P1195117349145625049

`∑[A212121(n+1)]`
-/

namespace A212123.P1195117349145625049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212123.P1195117349145625049

/-! ## A212123.P7397421020525378136

`∑[A212122(n+1)/2]`
-/

namespace A212123.P7397421020525378136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212122 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212123.P7397421020525378136

/-! ## A212123.P9078262644181393295

`∑[floor(A212122(Δ[n²]-n)/2)]`
-/

namespace A212123.P9078262644181393295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212122 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212123.P9078262644181393295

/-! ## A212123.P12179013259226624329

`A001281(A212124(n+1))`
-/

namespace A212123.P12179013259226624329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A212124 (n + 1)).toNat

end

end A212123.P12179013259226624329

/-!
# A212124: Total number of states of the first n subshells of the nuclear shell model in which the subshells are ordered by energy level in increasing order.

The programs for A212124, there is no canonical definition to state claims against.
-/

/-! ## A212124.P1643391544053234524

`2*A212123(n+1)`
-/

namespace A212124.P1643391544053234524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212123 (n + 1)

end

end A212124.P1643391544053234524

/-! ## A212124.P17436571719111467477

`∑[A212122(n+1)]`
-/

namespace A212124.P17436571719111467477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212124.P17436571719111467477

/-! ## A212124.P12006653780816581489

`∑[2*A212121(n+1)]`
-/

namespace A212124.P12006653780816581489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212124.P12006653780816581489

/-! ## A212124.P1300824998013922269

`∑[2*floor(A212122(Δ[n²]-n)/2)]`
-/

namespace A212124.P1300824998013922269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A212122 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212124.P1300824998013922269

/-! ## A212124.P12134517488736147724

`A004277(A212123(n+1))`
-/

namespace A212124.P12134517488736147724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A212123 (n + 1)).toNat

end

end A212124.P12134517488736147724

/-!
# A212125: Largest part of n-th partition of the table of partitions of A211999.

The programs for A212125, there is no canonical definition to state claims against.
-/

/-! ## A212125.P6020835771427294607

`Δ[A331827(n+1)]-A216510(A155717(n+1))`
-/

namespace A212125.P6020835771427294607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A216510 (A155717 (n + 1)).toNat

end

end A212125.P6020835771427294607

/-! ## A212125.P4840228827868918085

`Δ[A331827(n+1)]%p?[A007318(n)]`
-/

namespace A212125.P4840228827868918085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A212125.P4840228827868918085

/-! ## A212125.P12980392509443450259

`Δ[A331827(n+1)%A083636(n+1)]`
-/

namespace A212125.P12980392509443450259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331827 (n + 1)) (A083636 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212125.P12980392509443450259

/-!
# A212126: Period 13: repeat (0,0,1,0,0,1,0,1,0,0,1,0,1).

The programs for A212126, the canonical program `A212126.P15964168202194070474` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212126 has offset 0).

The definition of A212126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212126.P15964168202194070474

`Δ[floor(5*n/13)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212126

/-- `Δ[floor(5*n/13)]` -/
def P15964168202194070474.Spec : Prop :=
  ∀ n, P15964168202194070474.a n = A212126 n

theorem P15964168202194070474.correct : P15964168202194070474.Spec := by
  intro n
  simp only [A212126]

end A212126

/-!
# A212127: Numbers n whose arithmetic derivative equals the sum of its proper divisors.

The programs for A212127, the canonical program `A212127.P1787608542594397849` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212127 has offset 1).

The definition of A212127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212127.P1787608542594397849

`eq[0, A211991(n+1)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A212127

/-- `eq[0, A211991(n+1)]+1` -/
def P1787608542594397849.Spec : Prop :=
  ∀ n, (P1787608542594397849.a n : ℤ) = A212127 (n + 1)

theorem P1787608542594397849.correct : P1787608542594397849.Spec := by
  intro n
  simp only [A212127, Nat.add_sub_cancel]

end A212127

/-! ## A212127.P13169726324843193235

`eq[1, A343227(n+1)]+1`
-/

namespace A212127.P13169726324843193235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212127.P13169726324843193235

namespace A212127

/-- `eq[1, A343227(n+1)]+1` -/
def P13169726324843193235.Spec : Prop :=
  ∀ n, (P13169726324843193235.a n : ℤ) = A212127 (n + 1)

end A212127

/-! ## A212127.P12287911127750781821

`eq[1, A345059(n+1)]+1`
-/

namespace A212127.P12287911127750781821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212127.P12287911127750781821

namespace A212127

/-- `eq[1, A345059(n+1)]+1` -/
def P12287911127750781821.Spec : Prop :=
  ∀ n, (P12287911127750781821.a n : ℤ) = A212127 (n + 1)

end A212127

/-! ## A212127.P13424409496387411177

`lt[n, A343226(n+1)]+1`
-/

namespace A212127.P13424409496387411177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A212127.P13424409496387411177

namespace A212127

/-- `lt[n, A343226(n+1)]+1` -/
def P13424409496387411177.Spec : Prop :=
  ∀ n, (P13424409496387411177.a n : ℤ) = A212127 (n + 1)

end A212127

/-! ## A212127.P15085911617225745677

`eq[A129283(n), A227131(n)]`
-/

namespace A212127.P15085911617225745677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212127.P15085911617225745677

namespace A212127

/-- `eq[A129283(n), A227131(n)]` -/
def P15085911617225745677.Spec : Prop :=
  ∀ n, (P15085911617225745677.a n : ℤ) = A212127 (n + 1)

end A212127

/-! ## A212127.P8499312308484982098

`∪[A000040(n+1), A238922(n+1)]`
-/

namespace A212127.P8499312308484982098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212127.P8499312308484982098

namespace A212127

/-- `∪[A000040(n+1), A238922(n+1)]` -/
def P8499312308484982098.Spec : Prop :=
  ∀ n, (P8499312308484982098.a n : ℤ) = A212127 (n + 1)

end A212127

/-! ## A212127.P10484055134451446905

`∪[A008578(n+1), A238922(n+1)]`
-/

namespace A212127.P10484055134451446905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A212127.P10484055134451446905

namespace A212127

/-- `∪[A008578(n+1), A238922(n+1)]` -/
def P10484055134451446905.Spec : Prop :=
  ∀ n, (P10484055134451446905.a n : ℤ) = A212127 (n + 1)

end A212127

/-! ## A212127.P1243724107057076300

`record[A343226(n+1)-A001065(n+1)]`
-/

namespace A212127.P1243724107057076300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343226 (n + 1) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212127.P1243724107057076300

namespace A212127

/-- `record[A343226(n+1)-A001065(n+1)]` -/
def P1243724107057076300.Spec : Prop :=
  ∀ n, P1243724107057076300.a n = A212127 (n + 1)

end A212127

/-! ## A212127.P17945453945492284915

`record[A343224(n+1)/A343227(n+1)]`
-/

namespace A212127.P17945453945492284915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343224 (n + 1) : ℚ) / (A343227 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212127.P17945453945492284915

namespace A212127

/-- `record[A343224(n+1)/A343227(n+1)]` -/
def P17945453945492284915.Spec : Prop :=
  ∀ n, P17945453945492284915.a n = (A212127 (n + 1) : ℚ)

end A212127

/-! ## A212127.P17313539789828392213

`lt[A000010(A343227(n+1)+1), 2]+1`
-/

namespace A212127.P17313539789828392213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A343227 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A212127.P17313539789828392213

namespace A212127

/-- `lt[A000010(A343227(n+1)+1), 2]+1` -/
def P17313539789828392213.Spec : Prop :=
  ∀ n, (P17313539789828392213.a n : ℤ) = A212127 (n + 1)

end A212127

/-! ## A212127.P5333402961717948421

`eq[A001065(n+1), A003415(n+1)]+1`
-/

namespace A212127.P5333402961717948421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A212127.P5333402961717948421

namespace A212127

/-- `eq[A001065(n+1), A003415(n+1)]+1` -/
def P5333402961717948421.Spec : Prop :=
  ∀ n, (P5333402961717948421.a n : ℤ) = A212127 (n + 1)

end A212127

/-! ## A212127.P12227075092057411031

`A343224(eq[n+1, A343224(n+1)]+1)`
-/

namespace A212127.P12227075092057411031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A212127.P12227075092057411031

namespace A212127

/-- `A343224(eq[n+1, A343224(n+1)]+1)` -/
def P12227075092057411031.Spec : Prop :=
  ∀ n, P12227075092057411031.a n = A212127 (n + 1)

end A212127

/-!
# A212128: Nonprimes whose arithmetic derivative equals the sum of its proper divisors.

The programs for A212128, there is no canonical definition to state claims against.
-/

/-! ## A212128.P1065408529349617244

`A238922(lt[xor(6, n-5), n]+1)`
-/

namespace A212128.P1065408529349617244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 ((n : ℤ) - 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238922 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A212128.P1065408529349617244

/-!
# A212131: Decimal expansion of k such that e^(k*sqrt(163)) = round(e^(Pi*sqrt(163))).

The programs for A212131, there is no canonical definition to state claims against.
-/

/-! ## A212131.P3389683055079379196

`A107279(A034549(n+2)²)+A000796(n)`
-/

namespace A212131.P3389683055079379196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A034549 (n + 2) ^ 2).toNat + A000796 (n + 1)

end

end A212131.P3389683055079379196

/-! ## A212131.P17559366672300958361

`A107279(A048330(A034549(n+1)))+A000796(n)`
-/

namespace A212131.P17559366672300958361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A048330 (A034549 (n + 1)).toNat).toNat + A000796 (n + 1)

end

end A212131.P17559366672300958361

/-! ## A212131.P7688232801559537727

`or(A000796(n), A010894(A085159(n)))`
-/

namespace A212131.P7688232801559537727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000796 (n + 1)) (A010894 ((A085159 n).toNat + 21))

end

end A212131.P7688232801559537727

/-! ## A212131.P7573081352658884247

`or(A000796(n), A004427(A185255(n)))`
-/

namespace A212131.P7573081352658884247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000796 (n + 1)) (A004427 (A185255 n).toNat)

end

end A212131.P7573081352658884247

/-!
# A212132: Number of (w,x,y,z) with all terms in {1,...,n} and w*x+y*z>=n^2.

The programs for A212132, there is no canonical definition to state claims against.
-/

/-! ## A212132.P12535421743179738371

`n^4-A212111(n)`
-/

namespace A212132.P12535421743179738371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212111 n

end

end A212132.P12535421743179738371

/-! ## A212132.P15620696339635223237

`A212136(n)+A212110(n)`
-/

namespace A212132.P15620696339635223237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212136 n + A212110 n

end

end A212132.P15620696339635223237

/-! ## A212132.P3406971529984606954

`abs(A000583(n)-A212111(n))`
-/

namespace A212132.P3406971529984606954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212111 n|

end

end A212132.P3406971529984606954

/-! ## A212132.P14906189185997004395

`A212110(n)+n^4-A212150(n)`
-/

namespace A212132.P14906189185997004395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212110 n + ((n ^ 4 : ℤ) - A212150 n)

end

end A212132.P14906189185997004395

/-! ## A212132.P13050672435689786023

`A212088(n)+A212089(n)-A212111(n)`
-/

namespace A212132.P13050672435689786023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212111 n)

end

end A212132.P13050672435689786023

/-! ## A212132.P2197497329378568165

`A212092(n)+A212095(n)-A212111(n)`
-/

namespace A212132.P2197497329378568165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + (A212095 n - A212111 n)

end

end A212132.P2197497329378568165

/-! ## A212132.P10848781625804292797

`A212093(n)+A212094(n)-A212111(n)`
-/

namespace A212132.P10848781625804292797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n + (A212094 n - A212111 n)

end

end A212132.P10848781625804292797

/-! ## A212132.P5036245527091207071

`A212098(n)+A212099(n)-A212111(n)`
-/

namespace A212132.P5036245527091207071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A212111 n)

end

end A212132.P5036245527091207071

/-! ## A212132.P7923042001553735558

`A212134(n)+A212135(n)-A212111(n)`
-/

namespace A212132.P7923042001553735558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + (A212135 n - A212111 n)

end

end A212132.P7923042001553735558

/-! ## A212132.P4586148335236081836

`lcm(A000583(n)-A212111(n), A008683(∏{p}[n+1, #]))`
-/

namespace A212132.P4586148335236081836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000583 n - A212111 n) (A008683 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A212132.P4586148335236081836

/-! ## A212132.P1191160627257285562

`(A000583(n)-A212111(n))*(A000005(n+1)%2)!`
-/

namespace A212132.P1191160627257285562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212111 n) * (Nat.factorial (Int.tmod (A000005 (n + 1)) 2).toNat : ℤ)

end

end A212132.P1191160627257285562

/-! ## A212132.P11273030334955934700

`A000079(n)²-(A212111(n)+A024040(n))`
-/

namespace A212132.P11273030334955934700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - (A212111 n + A024040 n)

end

end A212132.P11273030334955934700

/-!
# A212133: Number of (w,x,y,z) with all terms in {1,...,n} and median=mean.

The programs for A212133, the canonical program `A212133.P14369258408973180320` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212133 has offset 0).

The definition of A212133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212133.P14369258408973180320

`n*(2*n²-3*n+2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212133

/-- `n*(2*n²-3*n+2)` -/
def P14369258408973180320.Spec : Prop :=
  ∀ n, P14369258408973180320.a n = A212133 n

theorem P14369258408973180320.correct : P14369258408973180320.Spec := by
  intro n
  simp only [A212133]

end A212133

/-! ## A212133.P15973639613953078457

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=33`
-/

namespace A212133.P15973639613953078457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8, 33] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A212133.P15973639613953078457

namespace A212133

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15973639613953078457.Spec : Prop :=
  ∀ n, P15973639613953078457.a n = A212133 n

theorem P15973639613953078457.correct : P15973639613953078457.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A212133, Nat.add_sub_cancel, A212133.P15973639613953078457.a, A212133.P14369258408973180320.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A212133, Nat.add_sub_cancel, A212133.P15973639613953078457.a, A212133.P14369258408973180320.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212133

/-! ## A212133.P7616025868527962606

`n^3+6*C(n, 3)`
-/

namespace A212133.P7616025868527962606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 6 * Nat.choose n 3

end

end A212133.P7616025868527962606

namespace A212133

/-- `n^3+6*C(n, 3)` -/
def P7616025868527962606.Spec : Prop :=
  ∀ n, (P7616025868527962606.a n : ℤ) = A212133 n

end A212133

/-! ## A212133.P5608133149633323532

`Δ[C((1-n)², 2)]+n`
-/

namespace A212133.P5608133149633323532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - (n : ℤ)) ^ 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A212133.P5608133149633323532

namespace A212133

/-- `Δ[C((1-n)², 2)]+n` -/
def P5608133149633323532.Spec : Prop :=
  ∀ n, P5608133149633323532.a n = A212133 n

end A212133

/-! ## A212133.P263835728200733538

`n-Δ[-C((1-n)², 2)]`
-/

namespace A212133.P263835728200733538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose ((1 - (n : ℤ)) ^ 2).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A212133.P263835728200733538

namespace A212133

/-- `n-Δ[-C((1-n)², 2)]` -/
def P263835728200733538.Spec : Prop :=
  ∀ n, P263835728200733538.a n = A212133 n

end A212133

/-! ## A212133.P1240557120634585634

`∑[∑[a(n-1)+12]]` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A212133.P1240557120634585634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212133.P1240557120634585634

namespace A212133

/-- `∑[∑[a(n-1)+12]]` -/
def P1240557120634585634.Spec : Prop :=
  ∀ n, (P1240557120634585634.a n : ℤ) = A212133 n

end A212133

/-! ## A212133.P4347765185553187585

`(n-1)*C(2*n, 2)+n`
-/

namespace A212133.P4347765185553187585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (2 * n) 2 : ℤ) + (n : ℤ)

end

end A212133.P4347765185553187585

namespace A212133

/-- `(n-1)*C(2*n, 2)+n` -/
def P4347765185553187585.Spec : Prop :=
  ∀ n, P4347765185553187585.a n = A212133 n

end A212133

/-! ## A212133.P146827455411933102

`n²+2*lcm(n, (1-n)²)`
-/

namespace A212133.P146827455411933102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2 * Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2)

end

end A212133.P146827455411933102

namespace A212133

/-- `n²+2*lcm(n, (1-n)²)` -/
def P146827455411933102.Spec : Prop :=
  ∀ n, (P146827455411933102.a n : ℤ) = A212133 n

end A212133

/-! ## A212133.P621699565450502809

`∑[∑[ogf((x+4x^2+7x^3)/(1-2x+x^2))]]`
-/

namespace A212133.P621699565450502809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 7] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212133.P621699565450502809

namespace A212133

/-- `∑[∑[ogf((x+4x^2+7x^3)/(1-2x+x^2))]]` -/
def P621699565450502809.Spec : Prop :=
  ∀ n, P621699565450502809.a n = A212133 n

end A212133

/-! ## A212133.P2244758937434102564

`lcm(n-1-n², 2*n)-n²`
-/

namespace A212133.P2244758937434102564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1 - (n ^ 2 : ℤ)) (2 * n : ℤ) : ℤ) - (n ^ 2 : ℤ)

end

end A212133.P2244758937434102564

namespace A212133

/-- `lcm(n-1-n², 2*n)-n²` -/
def P2244758937434102564.Spec : Prop :=
  ∀ n, P2244758937434102564.a n = A212133 n

end A212133

/-! ## A212133.P10623806376454090482

`(C(2*n, 2)²+2*n)/(2*n+1)`
-/

namespace A212133.P10623806376454090482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 ^ 2 + 2 * n : ℚ) / (2 * n + 1 : ℚ)

end

end A212133.P10623806376454090482

namespace A212133

/-- `(C(2*n, 2)²+2*n)/(2*n+1)` -/
def P10623806376454090482.Spec : Prop :=
  ∀ n, P10623806376454090482.a n = (A212133 n : ℚ)

end A212133

/-! ## A212133.P5459487229135648269

`A015238(n)+2*n`
-/

namespace A212133.P5459487229135648269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n + (2 * n : ℤ)

end

end A212133.P5459487229135648269

namespace A212133

/-- `A015238(n)+2*n` -/
def P5459487229135648269.Spec : Prop :=
  ∀ n, P5459487229135648269.a n = A212133 n

end A212133

/-! ## A212133.P8537987870289710393

`A007531(n)+n^3`
-/

namespace A212133.P8537987870289710393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + (n ^ 3 : ℤ)

end

end A212133.P8537987870289710393

namespace A212133

/-- `A007531(n)+n^3` -/
def P8537987870289710393.Spec : Prop :=
  ∀ n, P8537987870289710393.a n = A212133 n

end A212133

/-! ## A212133.P3725727494522577134

`∑[n]²-A327319(n)`
-/

namespace A212133.P3725727494522577134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A327319 n

end

end A212133.P3725727494522577134

namespace A212133

/-- `∑[n]²-A327319(n)` -/
def P3725727494522577134.Spec : Prop :=
  ∀ n, P3725727494522577134.a n = A212133 n

end A212133

/-! ## A212133.P553882483914417864

`A015242(n)+A002943(n)`
-/

namespace A212133.P553882483914417864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015242 n + A002943 n

end

end A212133.P553882483914417864

namespace A212133

/-- `A015242(n)+A002943(n)` -/
def P553882483914417864.Spec : Prop :=
  ∀ n, P553882483914417864.a n = A212133 n

end A212133

/-! ## A212133.P16164270272901455822

`A033580(n)+A015243(n)`
-/

namespace A212133.P16164270272901455822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n + A015243 n

end

end A212133.P16164270272901455822

namespace A212133

/-- `A033580(n)+A015243(n)` -/
def P16164270272901455822.Spec : Prop :=
  ∀ n, P16164270272901455822.a n = A212133 n

end A212133

/-! ## A212133.P6411715983705237372

`A033585(n)+A015245(n)`
-/

namespace A212133.P6411715983705237372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n + A015245 n

end

end A212133.P6411715983705237372

namespace A212133

/-- `A033585(n)+A015245(n)` -/
def P6411715983705237372.Spec : Prop :=
  ∀ n, P6411715983705237372.a n = A212133 n

end A212133

/-! ## A212133.P11410313653109584904

`A046092(n)+A015240(n)`
-/

namespace A212133.P11410313653109584904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A015240 n

end

end A212133.P11410313653109584904

namespace A212133

/-- `A046092(n)+A015240(n)` -/
def P11410313653109584904.Spec : Prop :=
  ∀ n, P11410313653109584904.a n = A212133 n

end A212133

/-! ## A212133.P17373244224055638555

`A280058(n)+A000567(n)`
-/

namespace A212133.P17373244224055638555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 n + A000567 n

end

end A212133.P17373244224055638555

namespace A212133

/-- `A280058(n)+A000567(n)` -/
def P17373244224055638555.Spec : Prop :=
  ∀ n, P17373244224055638555.a n = A212133 n

end A212133

/-! ## A212133.P10373894846796913219

`A242659(n)+A242135(n)`
-/

namespace A212133.P10373894846796913219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242659 n + A242135 n

end

end A212133.P10373894846796913219

namespace A212133

/-- `A242659(n)+A242135(n)` -/
def P10373894846796913219.Spec : Prop :=
  ∀ n, P10373894846796913219.a n = A212133 n

end A212133

/-!
# A212134: Number of (w,x,y,z) with all terms in {1,...,n} and median<=mean.

The programs for A212134, the canonical program `A212134.P2043333068734268830` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212134 has offset 0).

The definition of A212134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212134.P10530482157182686952

`n*(n^3+2*n²-3*n+2)/2`
-/

namespace A212134.P10530482157182686952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 3 + 2 * n ^ 2 : ℤ) - (3 * n : ℤ) + 2) : ℚ) / 2

end

end A212134.P10530482157182686952

namespace A212134

/-- `n*(n^3+2*n²-3*n+2)/2` -/
def P10530482157182686952.Spec : Prop :=
  ∀ n, P10530482157182686952.a n = (A212134 n : ℚ)

theorem P10530482157182686952.correct : P10530482157182686952.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A212134, Nat.add_sub_cancel, A212134.P10530482157182686952.a, A212134.P2043333068734268830.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A212134, Nat.add_sub_cancel, A212134.P10530482157182686952.a, A212134.P2043333068734268830.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212134

/-! ## A212134.P2043333068734268830

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=57, a(4)=172`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212134

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2043333068734268830.Spec : Prop :=
  ∀ n, P2043333068734268830.a n = A212134 n

theorem P2043333068734268830.correct : P2043333068734268830.Spec := by
  intro n
  simp only [A212134]

end A212134

/-! ## A212134.P1405101977694499907

`n*((n+3)*C(n, 2)+1)`
-/

namespace A212134.P1405101977694499907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 3) * Nat.choose n 2 + 1)

end

end A212134.P1405101977694499907

namespace A212134

/-- `n*((n+3)*C(n, 2)+1)` -/
def P1405101977694499907.Spec : Prop :=
  ∀ n, (P1405101977694499907.a n : ℤ) = A212134 n

end A212134

/-! ## A212134.P14482820505810700401

`2*∑[n]²-C(2*n, 2)`
-/

namespace A212134.P14482820505810700401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (2 * n) 2 : ℤ)

end

end A212134.P14482820505810700401

namespace A212134

/-- `2*∑[n]²-C(2*n, 2)` -/
def P14482820505810700401.Spec : Prop :=
  ∀ n, P14482820505810700401.a n = A212134 n

end A212134

/-! ## A212134.P6859008031944871780

`2*A085740(n)+n`
-/

namespace A212134.P6859008031944871780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085740 n + (n : ℤ)

end

end A212134.P6859008031944871780

namespace A212134

/-- `2*A085740(n)+n` -/
def P6859008031944871780.Spec : Prop :=
  ∀ n, P6859008031944871780.a n = A212134 n

end A212134

/-! ## A212134.P10099055991285132037

`n²²-A212135(n)`
-/

namespace A212134.P10099055991285132037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212135 n

end

end A212134.P10099055991285132037

namespace A212134

/-- `n²²-A212135(n)` -/
def P10099055991285132037.Spec : Prop :=
  ∀ n, P10099055991285132037.a n = A212134 n

end A212134

/-! ## A212134.P5125746071743104142

`A188667(n)+∑[n]²`
-/

namespace A212134.P5125746071743104142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188667 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A212134.P5125746071743104142

namespace A212134

/-- `A188667(n)+∑[n]²` -/
def P5125746071743104142.Spec : Prop :=
  ∀ n, P5125746071743104142.a n = A212134 n

end A212134

/-! ## A212134.P13969515770262267625

`A255499(n)-(n²-n)`
-/

namespace A212134.P13969515770262267625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n - ((n ^ 2 : ℤ) - (n : ℤ))

end

end A212134.P13969515770262267625

namespace A212134

/-- `A255499(n)-(n²-n)` -/
def P13969515770262267625.Spec : Prop :=
  ∀ n, P13969515770262267625.a n = A212134 n

end A212134

/-! ## A212134.P6697384599168103554

`n*(A212343(n+2)+1)`
-/

namespace A212134.P6697384599168103554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A212343 (n + 2) + 1)

end

end A212134.P6697384599168103554

namespace A212134

/-- `n*(A212343(n+2)+1)` -/
def P6697384599168103554.Spec : Prop :=
  ∀ n, P6697384599168103554.a n = A212134 n

end A212134

/-! ## A212134.P12704645157985446756

`A173963(n+1)/2+n`
-/

namespace A212134.P12704645157985446756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173963 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A212134.P12704645157985446756

namespace A212134

/-- `A173963(n+1)/2+n` -/
def P12704645157985446756.Spec : Prop :=
  ∀ n, P12704645157985446756.a n = (A212134 n : ℚ)

end A212134

/-! ## A212134.P16806734538345014173

`A060783(n)+A000567(n)`
-/

namespace A212134.P16806734538345014173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060783 n + A000567 n

end

end A212134.P16806734538345014173

namespace A212134

/-- `A060783(n)+A000567(n)` -/
def P16806734538345014173.Spec : Prop :=
  ∀ n, P16806734538345014173.a n = A212134 n

end A212134

/-! ## A212134.P7117742115747321483

`A101374(n)+A045991(n)`
-/

namespace A212134.P7117742115747321483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 n + A045991 n

end

end A212134.P7117742115747321483

namespace A212134

/-- `A101374(n)+A045991(n)` -/
def P7117742115747321483.Spec : Prop :=
  ∀ n, P7117742115747321483.a n = A212134 n

end A212134

/-! ## A212134.P17182926500524298964

`A212135(n)+A212133(n)`
-/

namespace A212134.P17182926500524298964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n + A212133 n

end

end A212134.P17182926500524298964

namespace A212134

/-- `A212135(n)+A212133(n)` -/
def P17182926500524298964.Spec : Prop :=
  ∀ n, P17182926500524298964.a n = A212134 n

end A212134

/-! ## A212134.P2718208743683340680

`A002523(n)-A058919(n)`
-/

namespace A212134.P2718208743683340680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - A058919 n

end

end A212134.P2718208743683340680

namespace A212134

/-- `A002523(n)-A058919(n)` -/
def P2718208743683340680.Spec : Prop :=
  ∀ n, P2718208743683340680.a n = A212134 n

end A212134

/-! ## A212134.P14729750818159525433

`A110450(n)-A005476(n)`
-/

namespace A212134.P14729750818159525433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n - A005476 n

end

end A212134.P14729750818159525433

namespace A212134

/-- `A110450(n)-A005476(n)` -/
def P14729750818159525433.Spec : Prop :=
  ∀ n, P14729750818159525433.a n = A212134 n

end A212134

/-! ## A212134.P12123111478728254776

`A163102(n)-A000384(n)`
-/

namespace A212134.P12123111478728254776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - A000384 n

end

end A212134.P12123111478728254776

namespace A212134

/-- `A163102(n)-A000384(n)` -/
def P12123111478728254776.Spec : Prop :=
  ∀ n, P12123111478728254776.a n = A212134 n

end A212134

/-! ## A212134.P5039140486894999485

`A037235(n)+A036464(n+1)`
-/

namespace A212134.P5039140486894999485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037235 n + A036464 (n + 1)

end

end A212134.P5039140486894999485

namespace A212134

/-- `A037235(n)+A036464(n+1)` -/
def P5039140486894999485.Spec : Prop :=
  ∀ n, P5039140486894999485.a n = A212134 n

end A212134

/-! ## A212134.P1967005561198509484

`A172132(n+1)-A155965(n)`
-/

namespace A212134.P1967005561198509484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172132 (n + 1) - A155965 n

end

end A212134.P1967005561198509484

namespace A212134

/-- `A172132(n+1)-A155965(n)` -/
def P1967005561198509484.Spec : Prop :=
  ∀ n, P1967005561198509484.a n = A212134 n

end A212134

/-! ## A212134.P5858854885545282936

`A185505(n+1)-A188480(n)`
-/

namespace A212134.P5858854885545282936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185505 (n + 1) - A188480 n

end

end A212134.P5858854885545282936

namespace A212134

/-- `A185505(n+1)-A188480(n)` -/
def P5858854885545282936.Spec : Prop :=
  ∀ n, P5858854885545282936.a n = A212134 n

end A212134

/-! ## A212134.P15553579359413294666

`A383834(n)-A054567(n+1)`
-/

namespace A212134.P15553579359413294666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383834 n - A054567 (n + 1)

end

end A212134.P15553579359413294666

namespace A212134

/-- `A383834(n)-A054567(n+1)` -/
def P15553579359413294666.Spec : Prop :=
  ∀ n, P15553579359413294666.a n = A212134 n

end A212134

/-!
# A212135: Number of (w,x,y,z) with all terms in {1,...,n} and median

The programs for A212135, the canonical program `A212135.P13883141854860914440` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212135 has offset 0).

The definition of A212135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212135.P5708983445385352017

`n*(n-1)*(n²-n+2)/2`
-/

namespace A212135.P5708983445385352017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n ^ 2 : ℤ) - (n : ℤ) + 2) : ℚ) / 2

end

end A212135.P5708983445385352017

namespace A212135

/-- `n*(n-1)*(n²-n+2)/2` -/
def P5708983445385352017.Spec : Prop :=
  ∀ n, P5708983445385352017.a n = (A212135 n : ℚ)

theorem P5708983445385352017.correct : P5708983445385352017.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A212135, Nat.add_sub_cancel, A212135.P5708983445385352017.a, A212135.P13883141854860914440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A212135, Nat.add_sub_cancel, A212135.P5708983445385352017.a, A212135.P13883141854860914440.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212135

/-! ## A212135.P13883141854860914440

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=24, a(4)=84`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212135

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13883141854860914440.Spec : Prop :=
  ∀ n, P13883141854860914440.a n = A212135 n

theorem P13883141854860914440.correct : P13883141854860914440.Spec := by
  intro n
  simp only [A212135]

end A212135

/-! ## A212135.P9950497653164694474

`4*C(C(n, 2)+1, 2)`
-/

namespace A212135.P9950497653164694474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (Nat.choose n 2 + 1) 2

end

end A212135.P9950497653164694474

namespace A212135

/-- `4*C(C(n, 2)+1, 2)` -/
def P9950497653164694474.Spec : Prop :=
  ∀ n, (P9950497653164694474.a n : ℤ) = A212135 n

end A212135

/-! ## A212135.P6477847771475625393

`C(n², 2)-n*(1-n)²`
-/

namespace A212135.P6477847771475625393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℤ) - (n : ℤ) * (1 - (n : ℤ)) ^ 2

end

end A212135.P6477847771475625393

namespace A212135

/-- `C(n², 2)-n*(1-n)²` -/
def P6477847771475625393.Spec : Prop :=
  ∀ n, P6477847771475625393.a n = A212135 n

end A212135

/-! ## A212135.P3412985028777916914

`lcm(n-(n²+2), n-n²)`
-/

namespace A212135.P3412985028777916914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - (n ^ 2 + 2 : ℤ)) ((n : ℤ) - (n ^ 2 : ℤ))

end

end A212135.P3412985028777916914

namespace A212135

/-- `lcm(n-(n²+2), n-n²)` -/
def P3412985028777916914.Spec : Prop :=
  ∀ n, (P3412985028777916914.a n : ℤ) = A212135 n

end A212135

/-! ## A212135.P10707849937526403766

`(∑[n-1]+2)*lcm(n, n-1)`
-/

namespace A212135.P10707849937526403766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) * (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)

end

end A212135.P10707849937526403766

namespace A212135

/-- `(∑[n-1]+2)*lcm(n, n-1)` -/
def P10707849937526403766.Spec : Prop :=
  ∀ n, P10707849937526403766.a n = A212135 n

end A212135

/-! ## A212135.P13679335961954458023

`xor(1, ceil(((1-n)²+n)²/2))`
-/

namespace A212135.P13679335961954458023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈(((1 - (n : ℤ)) ^ 2 + (n : ℤ)) ^ 2 : ℚ) / 2⌉

end

end A212135.P13679335961954458023

namespace A212135

/-- `xor(1, ceil(((1-n)²+n)²/2))` -/
def P13679335961954458023.Spec : Prop :=
  ∀ n, P13679335961954458023.a n = A212135 n

end A212135

/-! ## A212135.P14838997398472632810

`n*∑[∑[a(n-1)+3]]` with `a(0)=-1, a(1)=2, a(2)=1`
-/

namespace A212135.P14838997398472632810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 1] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212135.P14838997398472632810

namespace A212135

/-- `n*∑[∑[a(n-1)+3]]` -/
def P14838997398472632810.Spec : Prop :=
  ∀ n, P14838997398472632810.a n = A212135 n

end A212135

/-! ## A212135.P15266909905150448647

`n*(∑[∑[ogf((1-2x+2x^2+2x^3)/(1-2x+x^2))]]-2)`
-/

namespace A212135.P15266909905150448647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A212135.P15266909905150448647

namespace A212135

/-- `n*(∑[∑[ogf((1-2x+2x^2+2x^3)/(1-2x+x^2))]]-2)` -/
def P15266909905150448647.Spec : Prop :=
  ∀ n, P15266909905150448647.a n = A212135 n

end A212135

/-! ## A212135.P9287901160570691506

`(n-1)*n*∑[C(n-1, a(n-1))]` with `a(0)=0`
-/

namespace A212135.P9287901160570691506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose ((n : ℤ) - 1).toNat (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A212135.P9287901160570691506

namespace A212135

/-- `(n-1)*n*∑[C(n-1, a(n-1))]` -/
def P9287901160570691506.Spec : Prop :=
  ∀ n, P9287901160570691506.a n = A212135 n

end A212135

/-! ## A212135.P10372870434466246346

`A058919(n)-1`
-/

namespace A212135.P10372870434466246346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058919 n - 1

end

end A212135.P10372870434466246346

namespace A212135

/-- `A058919(n)-1` -/
def P10372870434466246346.Spec : Prop :=
  ∀ n, P10372870434466246346.a n = A212135 n

end A212135

/-! ## A212135.P10799527669623698657

`n*(A189890(n)-2)`
-/

namespace A212135.P10799527669623698657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A189890 n - 2)

end

end A212135.P10799527669623698657

namespace A212135

/-- `n*(A189890(n)-2)` -/
def P10799527669623698657.Spec : Prop :=
  ∀ n, P10799527669623698657.a n = A212135 n

end A212135

/-! ## A212135.P13381673272877527636

`4*(A101357(n)-n)`
-/

namespace A212135.P13381673272877527636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A101357 n - (n : ℤ))

end

end A212135.P13381673272877527636

namespace A212135

/-- `4*(A101357(n)-n)` -/
def P13381673272877527636.Spec : Prop :=
  ∀ n, P13381673272877527636.a n = A212135 n

end A212135

/-! ## A212135.P14246239801858776250

`n²²-A212134(n)`
-/

namespace A212135.P14246239801858776250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212134 n

end

end A212135.P14246239801858776250

namespace A212135

/-- `n²²-A212134(n)` -/
def P14246239801858776250.Spec : Prop :=
  ∀ n, P14246239801858776250.a n = A212135 n

end A212135

/-! ## A212135.P13498922230135284483

`(n-1)*(A218152(n)-1)`
-/

namespace A212135.P13498922230135284483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (A218152 n - 1)

end

end A212135.P13498922230135284483

namespace A212135

/-- `(n-1)*(A218152(n)-1)` -/
def P13498922230135284483.Spec : Prop :=
  ∀ n, P13498922230135284483.a n = A212135 n

end A212135

/-! ## A212135.P8031637154235537710

`(n²-n)*A152947(n+1)`
-/

namespace A212135.P8031637154235537710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A152947 (n + 1)

end

end A212135.P8031637154235537710

namespace A212135

/-- `(n²-n)*A152947(n+1)` -/
def P8031637154235537710.Spec : Prop :=
  ∀ n, P8031637154235537710.a n = A212135 n

end A212135

/-! ## A212135.P3292094118319006410

`A135503(n)+A019582(n)`
-/

namespace A212135.P3292094118319006410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A019582 n

end

end A212135.P3292094118319006410

namespace A212135

/-- `A135503(n)+A019582(n)` -/
def P3292094118319006410.Spec : Prop :=
  ∀ n, P3292094118319006410.a n = A212135 n

end A212135

/-! ## A212135.P6818041777462814478

`A327319(n)+A188667(n)`
-/

namespace A212135.P6818041777462814478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327319 n + A188667 n

end

end A212135.P6818041777462814478

namespace A212135

/-- `A327319(n)+A188667(n)` -/
def P6818041777462814478.Spec : Prop :=
  ∀ n, P6818041777462814478.a n = A212135 n

end A212135

/-! ## A212135.P14628597751333168430

`A326725(n)+A242983(n)`
-/

namespace A212135.P14628597751333168430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A242983 n

end

end A212135.P14628597751333168430

namespace A212135

/-- `A326725(n)+A242983(n)` -/
def P14628597751333168430.Spec : Prop :=
  ∀ n, P14628597751333168430.a n = A212135 n

end A212135

/-! ## A212135.P5768613288830347768

`A101375(n)-A060354(n)`
-/

namespace A212135.P5768613288830347768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101375 n - A060354 n

end

end A212135.P5768613288830347768

namespace A212135

/-- `A101375(n)-A060354(n)` -/
def P5768613288830347768.Spec : Prop :=
  ∀ n, P5768613288830347768.a n = A212135 n

end A212135

/-!
# A212136: Number of (w,x,y,z) with all terms in {1,...,n} and w*x+y*z>n^2.

The programs for A212136, there is no canonical definition to state claims against.
-/

/-! ## A212136.P15318048285934359503

`n^4-A212150(n)`
-/

namespace A212136.P15318048285934359503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212150 n

end

end A212136.P15318048285934359503

/-! ## A212136.P4568764530077834169

`abs(A000583(n)-A212150(n))`
-/

namespace A212136.P4568764530077834169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212150 n|

end

end A212136.P4568764530077834169

/-! ## A212136.P1715499605014485097

`n^4-A212111(n)-A212110(n)`
-/

namespace A212136.P1715499605014485097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212111 n - A212110 n

end

end A212136.P1715499605014485097

/-! ## A212136.P689652837370378789

`n²²%A212150(A233583(n+1))`
-/

namespace A212136.P689652837370378789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2) ^ 2 : ℤ) (A212150 (A233583 (n + 1)).toNat)

end

end A212136.P689652837370378789

/-! ## A212136.P15000748275917865388

`A000583(n)-(A212111(n)+A212110(n))`
-/

namespace A212136.P15000748275917865388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212111 n + A212110 n)

end

end A212136.P15000748275917865388

/-! ## A212136.P10134178866002447687

`A212134(n)+A212135(n)-A212150(n)`
-/

namespace A212136.P10134178866002447687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + (A212135 n - A212150 n)

end

end A212136.P10134178866002447687

/-! ## A212136.P4692040779490543651

`A212681(n)+A212682(n)-A212150(n)`
-/

namespace A212136.P4692040779490543651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212681 n + (A212682 n - A212150 n)

end

end A212136.P4692040779490543651

/-! ## A212136.P15322548519237579373

`A000583(n)-char[A006068(n)]*A212150(n)`
-/

namespace A212136.P15322548519237579373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212150 n

end

end A212136.P15322548519237579373

/-! ## A212136.P18299599581484771436

`A000583(n)-char[A006368(n)]*A212150(n)`
-/

namespace A212136.P18299599581484771436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212150 n

end

end A212136.P18299599581484771436

/-! ## A212136.P3948818988124094154

`A212151(n+1)+A212241(n)-A212150(n)`
-/

namespace A212136.P3948818988124094154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 1) + (A212241 n - A212150 n)

end

end A212136.P3948818988124094154

/-! ## A212136.P4063053042273195048

`A000035(4*n)+A000583(n)-A212150(n)`
-/

namespace A212136.P4063053042273195048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (4 * n) + (A000583 n - A212150 n)

end

end A212136.P4063053042273195048

/-! ## A212136.P7936760681022885779

`(A000583(n)-A212150(n))*A007318(C(2, n))`
-/

namespace A212136.P7936760681022885779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212150 n) * A007318 (Nat.choose 2 n)

end

end A212136.P7936760681022885779

/-! ## A212136.P4244650079921137411

`(A000583(n)-A212150(n))/A007318(C(3, n))`
-/

namespace A212136.P4244650079921137411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212150 n : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A212136.P4244650079921137411

/-! ## A212136.P16267285609185934526

`A000583(n)-char[A280496(n+1)]*A212150(n)`
-/

namespace A212136.P16267285609185934526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212150 n

end

end A212136.P16267285609185934526

/-! ## A212136.P13572894485092477497

`A008683(4*(n+1))+A000583(n)-A212150(n)`
-/

namespace A212136.P13572894485092477497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A000583 n - A212150 n)

end

end A212136.P13572894485092477497

/-! ## A212136.P15714642040510542965

`(A000583(n)-A212150(n))*A000040(n+1)%2`
-/

namespace A212136.P15714642040510542965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212150 n) * Int.tmod (A000040 (n + 1)) 2

end

end A212136.P15714642040510542965

/-! ## A212136.P11011912564309091069

`(A000583(n)-A212150(n))*A000010(gcd(n, n+1))`
-/

namespace A212136.P11011912564309091069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212150 n) * A000010 (Nat.gcd n (n + 1))

end

end A212136.P11011912564309091069

/-! ## A212136.P9005027047837477068

`A212132(n)-A212110(n)`
-/

namespace A212136.P9005027047837477068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212132 n - A212110 n

end

end A212136.P9005027047837477068

/-! ## A212136.P1064199656135697421

`A211812(n)+A211918(n)-A212150(n)`
-/

namespace A212136.P1064199656135697421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n + (A211918 n - A212150 n)

end

end A212136.P1064199656135697421

/-! ## A212136.P6080180463345475876

`A212055(n)+A212056(n)-A212150(n)`
-/

namespace A212136.P6080180463345475876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212055 n + (A212056 n - A212150 n)

end

end A212136.P6080180463345475876

/-!
# A212137: Triangular array: T(n,k) is the number of k-element subsets of {1,...,n} whose average is not an integer.

The programs for A212137, there is no canonical definition to state claims against.
-/

/-! ## A212137.P8294200942886050022

`A135278(n)-A061865(n+1)`
-/

namespace A212137.P8294200942886050022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A061865 (n + 1)

end

end A212137.P8294200942886050022

/-! ## A212137.P16922693971947940402

`A074909(n+1)-A061865(n+1)`
-/

namespace A212137.P16922693971947940402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) - A061865 (n + 1)

end

end A212137.P16922693971947940402

/-! ## A212137.P5480453938524315632

`A007318(∑[A035214(n)])-A061865(n+1)`
-/

namespace A212137.P5480453938524315632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A061865 (n + 1)

end

end A212137.P5480453938524315632

/-! ## A212137.P12779753445022613398

`A007318(A014132(n+1))-A061865(n+1)`
-/

namespace A212137.P12779753445022613398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat - A061865 (n + 1)

end

end A212137.P12779753445022613398

/-! ## A212137.P6303423308628652255

`A119963(A185871(n+1))-A061865(n+1)`
-/

namespace A212137.P6303423308628652255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A185871 (n + 1)).toNat - A061865 (n + 1)

end

end A212137.P6303423308628652255

/-! ## A212137.P8121260719166175758

`A212139(n+1)+A212148(n+1)-A061865(n+1)`
-/

namespace A212137.P8121260719166175758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212139 (n + 1) + (A212148 (n + 1) - A061865 (n + 1))

end

end A212137.P8121260719166175758

/-!
# A212138: Triangular array: T(n,k) is the number of k-element subsets S of {1,...,n} whose average is in S.

The programs for A212138, there is no canonical definition to state claims against.
-/

/-! ## A212138.P6460534391148625801

`A035181(3*A013623(n))`
-/

namespace A212138.P6460534391148625801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (3 * A013623 n).toNat

end

end A212138.P6460534391148625801

/-! ## A212138.P6915648161016096378

`A035215(3*A013623(n))`
-/

namespace A212138.P6915648161016096378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035215 (3 * A013623 n).toNat

end

end A212138.P6915648161016096378

/-! ## A212138.P15110263957740307381

`A123864(3*A013623(n))`
-/

namespace A212138.P15110263957740307381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123864 (3 * A013623 n).toNat

end

end A212138.P15110263957740307381

/-! ## A212138.P7885649744665099835

`A035181(lcm(3, A013623(n)))`
-/

namespace A212138.P7885649744665099835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (Int.lcm 3 (A013623 n))

end

end A212138.P7885649744665099835

/-! ## A212138.P7144827968372746722

`and(A053735(A223387(n+1)), A091039(n+1))`
-/

namespace A212138.P7144827968372746722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053735 (A223387 (n + 1)).toNat) (A091039 (n + 1))

end

end A212138.P7144827968372746722

/-!
# A212139: Triangular array: T(n,k) is the number of k-element subsets of {1,...,n} that satisfy mean=median.

The programs for A212139, there is no canonical definition to state claims against.
-/

/-! ## A212139.P12194402841024827399

`A135278(n)-A212148(n+1)`
-/

namespace A212139.P12194402841024827399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A212148 (n + 1)

end

end A212139.P12194402841024827399

/-! ## A212139.P3390200287287241435

`A074909(n+1)-A212148(n+1)`
-/

namespace A212139.P3390200287287241435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) - A212148 (n + 1)

end

end A212139.P3390200287287241435

/-! ## A212139.P10313408103194409979

`A007318(comp[∑[n]])-A212148(n+1)`
-/

namespace A212139.P10313408103194409979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A212148 (n + 1)

end

end A212139.P10313408103194409979

/-! ## A212139.P16274414995467642373

`A132749(A014132(n+1))-A212148(n+1)`
-/

namespace A212139.P16274414995467642373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (A014132 (n + 1)).toNat - A212148 (n + 1)

end

end A212139.P16274414995467642373

/-! ## A212139.P9498894212861902221

`A061865(n+1)+A212137(n+1)-A212148(n+1)`
-/

namespace A212139.P9498894212861902221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (n + 1) + (A212137 (n + 1) - A212148 (n + 1))

end

end A212139.P9498894212861902221

/-!
# A212140: Number of k-element subsets S of {1,...,n} such that mean(S) is not equal to median(S).

The programs for A212140, there is no canonical definition to state claims against.
-/

/-! ## A212140.P4859371485640764439

`2*A212149(n+1)`
-/

namespace A212140.P4859371485640764439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212149 (n + 1)

end

end A212140.P4859371485640764439

/-! ## A212140.P9335638812109013958

`∑[2^n]-A212146(n+1)`
-/

namespace A212140.P9335638812109013958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A212146 (n + 1)

end

end A212140.P9335638812109013958

/-! ## A212140.P12348569579746062737

`2*(2^n-(A212147(n+1)+1))`
-/

namespace A212140.P12348569579746062737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) - (A212147 (n + 1) + 1))

end

end A212140.P12348569579746062737

/-! ## A212140.P10071030175898392069

`xor(A126646(n), A212146(n+1))`
-/

namespace A212140.P10071030175898392069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 n) (A212146 (n + 1))

end

end A212140.P10071030175898392069

/-! ## A212140.P1132481935663107953

`xor(∑[A000079(n)], A212146(n+1))`
-/

namespace A212140.P1132481935663107953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A212146 (n + 1))

end

end A212140.P1132481935663107953

/-!
# A212141: Number of (w,x,y,z) with all terms in {1,...,n} and w < (geometric mean of x,y,z).

The programs for A212141, there is no canonical definition to state claims against.
-/

/-! ## A212141.P3621745716878109720

`A212143(n)-A212067(n)`
-/

namespace A212141.P3621745716878109720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212143 n - A212067 n

end

end A212141.P3621745716878109720

/-! ## A212141.P2978718811309765345

`n^4-A212144(n)-A212067(n)`
-/

namespace A212141.P2978718811309765345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212144 n - A212067 n

end

end A212141.P2978718811309765345

/-! ## A212141.P770439692969826276

`n^4-A212142(n)`
-/

namespace A212141.P770439692969826276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212142 n

end

end A212141.P770439692969826276

/-! ## A212141.P8051523961006813293

`abs(A000583(n)-A212142(n))`
-/

namespace A212141.P8051523961006813293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212142 n|

end

end A212141.P8051523961006813293

/-! ## A212141.P16845396901650756117

`A002523(n)-(A212142(n)+1)`
-/

namespace A212141.P16845396901650756117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212142 n + 1)

end

end A212141.P16845396901650756117

/-! ## A212141.P6391088234940482902

`n²²%A212142(A000007(n)+n)`
-/

namespace A212141.P6391088234940482902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2) ^ 2 : ℤ) (A212142 (A000007 n + (n : ℤ)).toNat)

end

end A212141.P6391088234940482902

/-! ## A212141.P7016332382881128560

`A211812(n)+A211918(n)-A212142(n)`
-/

namespace A212141.P7016332382881128560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n + (A211918 n - A212142 n)

end

end A212141.P7016332382881128560

/-! ## A212141.P5027237976886699093

`A211917(n)+A211919(n)-A212142(n)`
-/

namespace A212141.P5027237976886699093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211917 n + (A211919 n - A212142 n)

end

end A212141.P5027237976886699093

/-! ## A212141.P16034216745929234448

`A212055(n)+A212056(n)-A212142(n)`
-/

namespace A212141.P16034216745929234448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212055 n + (A212056 n - A212142 n)

end

end A212141.P16034216745929234448

/-! ## A212141.P5966896002410489530

`A212681(n)+A212682(n)-A212142(n)`
-/

namespace A212141.P5966896002410489530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212681 n + (A212682 n - A212142 n)

end

end A212141.P5966896002410489530

/-! ## A212141.P18350947827471631187

`(A000583(n)-A212142(n))%A047646(n)`
-/

namespace A212141.P18350947827471631187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212142 n) (A047646 (n + 21))

end

end A212141.P18350947827471631187

/-! ## A212141.P16070263594066534438

`(A000583(n)-A212142(n))*A000038(n)!`
-/

namespace A212141.P16070263594066534438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212142 n) * (Nat.factorial (A000038 n).toNat : ℤ)

end

end A212141.P16070263594066534438

/-! ## A212141.P6482232126752403269

`A000007(n+1)+A000583(n)-A212142(n)`
-/

namespace A212141.P6482232126752403269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000583 n - A212142 n)

end

end A212141.P6482232126752403269

/-! ## A212141.P16887936180898871397

`A000038(n+1)+A000583(n)-A212142(n)`
-/

namespace A212141.P16887936180898871397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A000583 n - A212142 n)

end

end A212141.P16887936180898871397

/-! ## A212141.P4543504105629869154

`char[A000032(n+15)]+A000583(n)-A212142(n)`
-/

namespace A212141.P4543504105629869154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 15)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A212142 n)

end

end A212141.P4543504105629869154

/-! ## A212141.P16571644554129957054

`A008683(4*(n+1))+A000583(n)-A212142(n)`
-/

namespace A212141.P16571644554129957054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A000583 n - A212142 n)

end

end A212141.P16571644554129957054

/-! ## A212141.P1108930756434364138

`(A000583(n)-A212142(n))*A000040(n+1)²%8`
-/

namespace A212141.P1108930756434364138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212142 n) * Int.tmod (A000040 (n + 1) ^ 2) 8

end

end A212141.P1108930756434364138

/-! ## A212141.P764414071370938925

`A211795(n)+A211809(n)-A212142(n)`
-/

namespace A212141.P764414071370938925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211795 n + (A211809 n - A212142 n)

end

end A212141.P764414071370938925

/-!
# A212142: Number of (w,x,y,z) with all terms in {1,...,n} and w >= (geometric mean of x,y,z).

The programs for A212142, there is no canonical definition to state claims against.
-/

/-! ## A212142.P3226435099345625317

`n^4-A212141(n)`
-/

namespace A212142.P3226435099345625317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212141 n

end

end A212142.P3226435099345625317

/-! ## A212142.P11822448608125479883

`A212144(n)+A212067(n)`
-/

namespace A212142.P11822448608125479883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212144 n + A212067 n

end

end A212142.P11822448608125479883

/-! ## A212142.P15877835344430461024

`abs(A000583(n)-A212141(n))`
-/

namespace A212142.P15877835344430461024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212141 n|

end

end A212142.P15877835344430461024

/-! ## A212142.P6433060129064256306

`A002523(n)-(A212141(n)+1)`
-/

namespace A212142.P6433060129064256306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212141 n + 1)

end

end A212142.P6433060129064256306

/-! ## A212142.P1806566933323918495

`abs(A000290(n)²-A212141(n))`
-/

namespace A212142.P1806566933323918495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n ^ 2 - A212141 n|

end

end A212142.P1806566933323918495

/-! ## A212142.P7473140937938841164

`A212067(n)+n^4-A212143(n)`
-/

namespace A212142.P7473140937938841164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212067 n + ((n ^ 4 : ℤ) - A212143 n)

end

end A212142.P7473140937938841164

/-! ## A212142.P9990658843294250086

`A000583(n)+A212067(n)-A212143(n)`
-/

namespace A212142.P9990658843294250086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + (A212067 n - A212143 n)

end

end A212142.P9990658843294250086

/-! ## A212142.P1627564005159816334

`A211787(n)+A211797(n)-A212141(n)`
-/

namespace A212142.P1627564005159816334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212141 n)

end

end A212142.P1627564005159816334

/-! ## A212142.P10602029353403716165

`A000583(n)-cos(A000038(n))*A212141(n)`
-/

namespace A212142.P10602029353403716165
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000583 n : ℝ) - Real.cos (A000038 n : ℝ) * (A212141 n : ℝ)

end

end A212142.P10602029353403716165

/-! ## A212142.P18384501181160993379

`A000007(n+1)+A000583(n)-A212141(n)`
-/

namespace A212142.P18384501181160993379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000583 n - A212141 n)

end

end A212142.P18384501181160993379

/-! ## A212142.P9318477628123997478

`A212067(n)+A002523(n)-(A212143(n)+1)`
-/

namespace A212142.P9318477628123997478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212067 n + (A002523 n - (A212143 n + 1))

end

end A212142.P9318477628123997478

/-! ## A212142.P4876137349817134419

`A000035(2*n)+A000583(n)-A212141(n)`
-/

namespace A212142.P4876137349817134419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (A000583 n - A212141 n)

end

end A212142.P4876137349817134419

/-! ## A212142.P1421757946386982870

`A014198(n)%2+A000583(n)-A212141(n)`
-/

namespace A212142.P1421757946386982870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014198 n) 2 + (A000583 n - A212141 n)

end

end A212142.P1421757946386982870

/-! ## A212142.P10180532135954082280

`A212067(n)+abs(A000290(n)²-A212143(n))`
-/

namespace A212142.P10180532135954082280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212067 n + |A000290 n ^ 2 - A212143 n|

end

end A212142.P10180532135954082280

/-! ## A212142.P3667864468365124173

`(A000583(n)-A212141(n))*A000040(n+2)%2`
-/

namespace A212142.P3667864468365124173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212141 n) * Int.tmod (A000040 (n + 2)) 2

end

end A212142.P3667864468365124173

/-! ## A212142.P17329272801840452135

`(A000583(n)-A212141(n))*A020639(C(2, n+2)+1)`
-/

namespace A212142.P17329272801840452135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212141 n) * A020639 (Nat.choose 2 (n + 2) + 1)

end

end A212142.P17329272801840452135

/-! ## A212142.P7338234329930211426

`(A000583(n)-A212141(n))*(n+3)%A006530(n+2)`
-/

namespace A212142.P7338234329930211426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212141 n) * Int.tmod (n + 3 : ℤ) (A006530 (n + 2))

end

end A212142.P7338234329930211426

/-! ## A212142.P12801969256090085568

`A211795(n)+A211809(n)-A212141(n)`
-/

namespace A212142.P12801969256090085568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211795 n + (A211809 n - A212141 n)

end

end A212142.P12801969256090085568

/-!
# A212143: Number of (w,x,y,z) with all terms in {1,...,n} and w <= (geometric mean of x,y,z).

The programs for A212143, there is no canonical definition to state claims against.
-/

/-! ## A212143.P5701705335232170792

`n^4-A212144(n)`
-/

namespace A212143.P5701705335232170792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212144 n

end

end A212143.P5701705335232170792

/-! ## A212143.P6404339019866411008

`abs(A000583(n)-A212144(n))`
-/

namespace A212143.P6404339019866411008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212144 n|

end

end A212143.P6404339019866411008

/-! ## A212143.P3744863545208833442

`A002523(n)-(A212144(n)+1)`
-/

namespace A212143.P3744863545208833442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212144 n + 1)

end

end A212143.P3744863545208833442

/-! ## A212143.P8195678825912459456

`n²²-A057427(n)*A212144(n)`
-/

namespace A212143.P8195678825912459456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A057427 n * A212144 n

end

end A212143.P8195678825912459456

/-! ## A212143.P16457360601951546833

`(A000583(n)-A212144(n))%∑[A001386(n)]`
-/

namespace A212143.P16457360601951546833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212144 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212143.P16457360601951546833

/-! ## A212143.P5747799087986547795

`(A000007(n)+1)*(A000583(n)-A212144(n))`
-/

namespace A212143.P5747799087986547795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * (A000583 n - A212144 n)

end

end A212143.P5747799087986547795

/-! ## A212143.P3263334289876066195

`(A000583(n)-A212144(n))*A007318(C(2, n))`
-/

namespace A212143.P3263334289876066195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212144 n) * A007318 (Nat.choose 2 n)

end

end A212143.P3263334289876066195

/-! ## A212143.P18209389693995452654

`A000583(n)-A212144(n)-A005378(n)%-1`
-/

namespace A212143.P18209389693995452654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A212144 n - Int.tmod (A005378 n) (-1)

end

end A212143.P18209389693995452654

/-! ## A212143.P16020438074219257439

`(A000583(n)-A212144(n))*A014963(4*n+2)`
-/

namespace A212143.P16020438074219257439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212144 n) * A014963 (4 * n + 2)

end

end A212143.P16020438074219257439

/-! ## A212143.P3241525581995896146

`A008683(49*(n+1))+A000583(n)-A212144(n)`
-/

namespace A212143.P3241525581995896146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (49 * (n + 1)) + (A000583 n - A212144 n)

end

end A212143.P3241525581995896146

/-! ## A212143.P3789307601149118658

`(A000583(n)-A212144(n))*A000045(gcd(n, n+1))`
-/

namespace A212143.P3789307601149118658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212144 n) * A000045 (Nat.gcd n (n + 1))

end

end A212143.P3789307601149118658

/-! ## A212143.P13784251026178523444

`C(n, A000040(n+1))+A000583(n)-A212144(n)`
-/

namespace A212143.P13784251026178523444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A000040 (n + 1)).toNat : ℤ) + (A000583 n - A212144 n)

end

end A212143.P13784251026178523444

/-! ## A212143.P2011682835178078368

`(A000583(n)-A212144(n))*A000045(C(n, n²)!)`
-/

namespace A212143.P2011682835178078368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212144 n) * A000045 (Nat.factorial (Nat.choose n (n ^ 2)))

end

end A212143.P2011682835178078368

/-! ## A212143.P6106066622827595725

`(A000583(n)-A212144(n))*A000010(2-C(2, n+2))`
-/

namespace A212143.P6106066622827595725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212144 n) * A000010 (2 - Nat.choose 2 (n + 2))

end

end A212143.P6106066622827595725

/-! ## A212143.P11981327417390833870

`(A000583(n)-A212144(n))*A001222(2-C(2, n+2))`
-/

namespace A212143.P11981327417390833870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212144 n) * A001222 (2 - Nat.choose 2 (n + 2))

end

end A212143.P11981327417390833870

/-! ## A212143.P17173681659573370150

`A212141(n)+A212067(n)`
-/

namespace A212143.P17173681659573370150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212141 n + A212067 n

end

end A212143.P17173681659573370150

/-! ## A212143.P16352865198776810994

`A212067(n)+n^4-A212142(n)`
-/

namespace A212143.P16352865198776810994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212067 n + ((n ^ 4 : ℤ) - A212142 n)

end

end A212143.P16352865198776810994

/-!
# A212144: Number of (w,x,y,z) with all terms in {1,...,n} and w > (geometric mean of x,y,z).

The programs for A212144, there is no canonical definition to state claims against.
-/

/-! ## A212144.P1018528112609127413

`n^4-A212143(n)`
-/

namespace A212144.P1018528112609127413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212143 n

end

end A212144.P1018528112609127413

/-! ## A212144.P8666138545996136715

`abs(A000583(n)-A212143(n))`
-/

namespace A212144.P8666138545996136715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212143 n|

end

end A212144.P8666138545996136715

/-! ## A212144.P4815829314244008194

`A002523(n)-(A212143(n)+1)`
-/

namespace A212144.P4815829314244008194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212143 n + 1)

end

end A212144.P4815829314244008194

/-! ## A212144.P13072175125874469204

`abs(A000290(n)²-A212143(n))`
-/

namespace A212144.P13072175125874469204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n ^ 2 - A212143 n|

end

end A212144.P13072175125874469204

/-! ## A212144.P17732504878064928583

`A212134(n)+A212135(n)-A212143(n)`
-/

namespace A212144.P17732504878064928583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + (A212135 n - A212143 n)

end

end A212144.P17732504878064928583

/-! ## A212144.P1439645354053896616

`A000583(n)-A057427(n)*A212143(n)`
-/

namespace A212144.P1439645354053896616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A057427 n * A212143 n

end

end A212144.P1439645354053896616

/-! ## A212144.P826560801128855364

`A008683(8*(n+1))+A000583(n)-A212143(n)`
-/

namespace A212144.P826560801128855364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) + (A000583 n - A212143 n)

end

end A212144.P826560801128855364

/-! ## A212144.P8449609083250991383

`lcm(A212143(n)-A000583(n), A014963(4*n+2))`
-/

namespace A212144.P8449609083250991383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A212143 n - A000583 n) (A014963 (4 * n + 2))

end

end A212144.P8449609083250991383

/-! ## A212144.P12894908260982726744

`n^4-A212141(n)-A212067(n)`
-/

namespace A212144.P12894908260982726744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212141 n - A212067 n

end

end A212144.P12894908260982726744

/-! ## A212144.P11712299812979225848

`A000583(n)-(A212141(n)+A212067(n))`
-/

namespace A212144.P11712299812979225848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212141 n + A212067 n)

end

end A212144.P11712299812979225848

/-! ## A212144.P13571007787205600903

`A000290(n)²-(A212141(n)+A212067(n))`
-/

namespace A212144.P13571007787205600903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 - (A212141 n + A212067 n)

end

end A212144.P13571007787205600903

/-! ## A212144.P10032354469695397033

`A002523(n)-(A212141(n)+1)-A212067(n)`
-/

namespace A212144.P10032354469695397033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212141 n + 1) - A212067 n

end

end A212144.P10032354469695397033

/-! ## A212144.P9662915465165090500

`A212142(n)-A212067(n)`
-/

namespace A212144.P9662915465165090500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212142 n - A212067 n

end

end A212144.P9662915465165090500

/-! ## A212144.P14526769082027148225

`A211795(n)+A211809(n)-A212141(n)-A212067(n)`
-/

namespace A212144.P14526769082027148225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211795 n + (A211809 n - A212141 n) - A212067 n

end

end A212144.P14526769082027148225

/-! ## A212144.P2858223492661627558

`-((A212143(n)-A000583(n))*A014963(∑[n+1]))`
-/

namespace A212144.P2858223492661627558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A212143 n - A000583 n) * A014963 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A212144.P2858223492661627558

/-!
# A212145: Number of (w,x,y,z) with all terms in {1,...,n} and w

The programs for A212145, the canonical program `A212145.P8664915941778525164` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212145 has offset 0).

The definition of A212145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212145.P9193859582752459401

`(3-3*(-1)^n-8*n-4*n²+8*n^3+94*n^4)/96`
-/

namespace A212145.P9193859582752459401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - 3 * (-1) ^ n - (8 * n : ℤ) - (4 * n ^ 2 : ℤ) + (8 * n ^ 3 : ℤ) + (94 * n ^ 4 : ℤ) : ℚ) / 96

end

end A212145.P9193859582752459401

namespace A212145

/-- `(3-3*(-1)^n-8*n-4*n²+8*n^3+94*n^4)/96` -/
def P9193859582752459401.Spec : Prop :=
  ∀ n, P9193859582752459401.a n = (A212145 n : ℚ)

theorem P9193859582752459401.correct : P9193859582752459401.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A212145, Nat.add_sub_cancel, A212145.P9193859582752459401.a, A212145.P8664915941778525164.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h1 := ih (m + 5) (by omega)
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h5 := ih (m + 1) (by omega)
      have h6 := ih m (by omega)
      simp only [A212145, Nat.add_sub_cancel, A212145.P9193859582752459401.a, A212145.P8664915941778525164.a, SequenceMachineLib.memo_apply] at h1 h2 h4 h5 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 1 = m + 5 by omega, show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 5 = m + 1 by omega, show m + 6 - 6 = m by omega, show m + 5 < m + 6 by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m + 1 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h1 h2 h4 h5 h6 ⊢
      rw [← h1, ← h2, ← h4, ← h5, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212145

/-! ## A212145.P8664915941778525164

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=81, a(4)=255, a(5)=621`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212145

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P8664915941778525164.Spec : Prop :=
  ∀ n, P8664915941778525164.a n = A212145 n

theorem P8664915941778525164.correct : P8664915941778525164.Spec := by
  intro n
  simp only [A212145]

end A212145

/-! ## A212145.P8761987047388835741

`n²²-∑[A173196(A289207(n))]`
-/

namespace A212145.P8761987047388835741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212145.P8761987047388835741

namespace A212145

/-- `n²²-∑[A173196(A289207(n))]` -/
def P8761987047388835741.Spec : Prop :=
  ∀ n, P8761987047388835741.a n = A212145 n

end A212145

/-! ## A212145.P17251611072998268543

`n²²+A000332(n+2)-A011863(n)`
-/

namespace A212145.P17251611072998268543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) + (A000332 (n + 2) - A011863 n)

end

end A212145.P17251611072998268543

namespace A212145

/-- `n²²+A000332(n+2)-A011863(n)` -/
def P17251611072998268543.Spec : Prop :=
  ∀ n, P17251611072998268543.a n = A212145 n

end A212145

/-!
# A212146: Number of subsets of {1,...,n} having mean=median.

The programs for A212146, there is no canonical definition to state claims against.
-/

/-! ## A212146.P10701733192970397951

`2*A212147(n+1)+1`
-/

namespace A212146.P10701733192970397951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212147 (n + 1) + 1

end

end A212146.P10701733192970397951

/-! ## A212146.P10374152418619598646

`A212147(A000027(n+1))+A212147(n+1)+1`
-/

namespace A212146.P10374152418619598646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212147 (A000027 (n + 1)).toNat + (A212147 (n + 1) + 1)

end

end A212146.P10374152418619598646

/-! ## A212146.P9985507359376993184

`A212147(n+1)+A212147(n+1)-A008683(A002146(n))`
-/

namespace A212146.P9985507359376993184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212147 (n + 1) + (A212147 (n + 1) - A008683 (A002146 n).toNat)

end

end A212146.P9985507359376993184

/-! ## A212146.P4882760536828912893

`A212147(n+1)+A212147(n+1)-A008683(A005382(n+1))`
-/

namespace A212146.P4882760536828912893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212147 (n + 1) + (A212147 (n + 1) - A008683 (A005382 (n + 1)).toNat)

end

end A212146.P4882760536828912893

/-!
# A212147: a(n) = (A212146(n)-1)/2.

The programs for A212147, there is no canonical definition to state claims against.
-/

/-! ## A212147.P6373858949457974324

`(A212146(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212147.P6373858949457974324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212146 (n + 1) - 1 : ℚ) / 2

end

end A212147.P6373858949457974324

/-! ## A212147.P6921008800958992871

`floor(A212146(n+1)/2)`
-/

namespace A212147.P6921008800958992871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212146 (n + 1) : ℚ) / 2⌋

end

end A212147.P6921008800958992871

/-! ## A212147.P9260752585863123034

`xor(1, A212146(n+1))/A001316(A001316(n))`
-/

namespace A212147.P9260752585863123034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A212146 (n + 1)) : ℚ) / (A001316 (A001316 n).toNat : ℚ)

end

end A212147.P9260752585863123034

/-! ## A212147.P12335607492199465906

`xor(1, A212146(n+1))/A020639(A014206(n))`
-/

namespace A212147.P12335607492199465906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A212146 (n + 1)) : ℚ) / (A020639 (A014206 n).toNat : ℚ)

end

end A212147.P12335607492199465906

/-! ## A212147.P13619010040752295499

`A000225(n)-A212149(n+1)`
-/

namespace A212147.P13619010040752295499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A212149 (n + 1)

end

end A212147.P13619010040752295499

/-!
# A212148: Triangular array: T(n,k) is the number of k-element subsets S of {1,...,n} such that mean(S) is not equal to median(S).

The programs for A212148, there is no canonical definition to state claims against.
-/

/-! ## A212148.P3731448322528011623

`A135278(n)-A212139(n+1)`
-/

namespace A212148.P3731448322528011623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A212139 (n + 1)

end

end A212148.P3731448322528011623

/-! ## A212148.P11953928923506992040

`A074909(n+1)-A212139(n+1)`
-/

namespace A212148.P11953928923506992040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) - A212139 (n + 1)

end

end A212148.P11953928923506992040

/-! ## A212148.P12318837927995615259

`A007318(comp[∑[n]])-A212139(n+1)`
-/

namespace A212148.P12318837927995615259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A212139 (n + 1)

end

end A212148.P12318837927995615259

/-! ## A212148.P17249672335830843309

`A132749(A014132(n+1))-A212139(n+1)`
-/

namespace A212148.P17249672335830843309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (A014132 (n + 1)).toNat - A212139 (n + 1)

end

end A212148.P17249672335830843309

/-! ## A212148.P8582245912128658888

`A061865(n+1)+A212137(n+1)-A212139(n+1)`
-/

namespace A212148.P8582245912128658888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (n + 1) + (A212137 (n + 1) - A212139 (n + 1))

end

end A212148.P8582245912128658888

/-!
# A212149: Number of k-element subsets S of {1,...,n} such that mean(S)

The programs for A212149, there is no canonical definition to state claims against.
-/

/-! ## A212149.P18376712680010728854

`A212140(n+1)/2`
-/

namespace A212149.P18376712680010728854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212140 (n + 1) : ℚ) / 2

end

end A212149.P18376712680010728854

/-! ## A212149.P16053311732052389542

`2^n-(A212147(n+1)+1)`
-/

namespace A212149.P16053311732052389542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A212147 (n + 1) + 1)

end

end A212149.P16053311732052389542

/-! ## A212149.P2794738160372831087

`floor(2^n-A212146(n+1)/2)`
-/

namespace A212149.P2794738160372831087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) - (A212146 (n + 1) : ℚ) / 2⌋

end

end A212149.P2794738160372831087

/-! ## A212149.P6668445100259989375

`A000225(n)-A212147(n+1)`
-/

namespace A212149.P6668445100259989375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A212147 (n + 1)

end

end A212149.P6668445100259989375

/-! ## A212149.P926586111758634063

`∑[A131577(n)]-A212147(n+1)`
-/

namespace A212149.P926586111758634063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212147 (n + 1)

end

end A212149.P926586111758634063

/-!
# A212150: Number of (w,x,y,z) with all terms in {1,...,n} and w*x+y*z<=n^2.

The programs for A212150, there is no canonical definition to state claims against.
-/

/-! ## A212150.P3257894441235138538

`A212111(n)+A212110(n)`
-/

namespace A212150.P3257894441235138538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212111 n + A212110 n

end

end A212150.P3257894441235138538

/-! ## A212150.P7999268277262534597

`A000583(n)-(n^4-A212111(n)-A212110(n))`
-/

namespace A212150.P7999268277262534597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - ((n ^ 4 : ℤ) - A212111 n - A212110 n)

end

end A212150.P7999268277262534597

/-! ## A212150.P5815686325977968679

`A000290(n)²-(n^4-A212111(n)-A212110(n))`
-/

namespace A212150.P5815686325977968679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 - ((n ^ 4 : ℤ) - A212111 n - A212110 n)

end

end A212150.P5815686325977968679

/-! ## A212150.P11468978162980621805

`n^4-A212136(n)`
-/

namespace A212150.P11468978162980621805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212136 n

end

end A212150.P11468978162980621805

/-! ## A212150.P5010834371462353662

`abs(A000583(n)-A212136(n))`
-/

namespace A212150.P5010834371462353662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212136 n|

end

end A212150.P5010834371462353662

/-! ## A212150.P8528928436936965120

`(n²²-A212136(n))%A131509(n)`
-/

namespace A212150.P8528928436936965120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n ^ 2) ^ 2 : ℤ) - A212136 n) (A131509 n)

end

end A212150.P8528928436936965120

/-! ## A212150.P13662184692702162852

`A000007(n+1)+n²²-A212136(n)`
-/

namespace A212150.P13662184692702162852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (((n ^ 2) ^ 2 : ℤ) - A212136 n)

end

end A212150.P13662184692702162852

/-! ## A212150.P15708217563209208241

`abs(n²²-A212136(n))%A254804(n+1)`
-/

namespace A212150.P15708217563209208241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |((n ^ 2) ^ 2 : ℤ) - A212136 n| (A254804 (n + 1))

end

end A212150.P15708217563209208241

/-! ## A212150.P18365962400458909358

`A008683(8*(n+1))+n²²-A212136(n)`
-/

namespace A212150.P18365962400458909358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) + (((n ^ 2) ^ 2 : ℤ) - A212136 n)

end

end A212150.P18365962400458909358

/-! ## A212150.P3069579051928012262

`(n²²-A212136(n))*A000040(n+1)%2`
-/

namespace A212150.P3069579051928012262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) - A212136 n) * Int.tmod (A000040 (n + 1)) 2

end

end A212150.P3069579051928012262

/-! ## A212150.P6824336186792948392

`(n²²-A212136(n))*A007318(gcd(n, n+1))`
-/

namespace A212150.P6824336186792948392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) - A212136 n) * A007318 (Nat.gcd n (n + 1))

end

end A212150.P6824336186792948392

/-! ## A212150.P6178029490360961428

`n²²-∏{e}[A014963(n+1), #]*A212136(n)`
-/

namespace A212150.P6178029490360961428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A212136 n

end

end A212150.P6178029490360961428

/-! ## A212150.P10238551052934085017

`A212088(n)+A212089(n)-A212136(n)`
-/

namespace A212150.P10238551052934085017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A212136 n)

end

end A212150.P10238551052934085017

/-! ## A212150.P16453645971612428986

`A212098(n)+A212099(n)-A212136(n)`
-/

namespace A212150.P16453645971612428986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A212136 n)

end

end A212150.P16453645971612428986

/-! ## A212150.P3783670604547393280

`A212134(n)+A212135(n)-A212136(n)`
-/

namespace A212150.P3783670604547393280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + (A212135 n - A212136 n)

end

end A212150.P3783670604547393280

/-! ## A212150.P18076448747999633229

`(A000583(n)-A212136(n))%A016780(n)`
-/

namespace A212150.P18076448747999633229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212136 n) (A016780 n)

end

end A212150.P18076448747999633229

/-! ## A212150.P12552008387792248161

`(A000007(n)+1)*(A000583(n)-A212136(n))`
-/

namespace A212150.P12552008387792248161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * (A000583 n - A212136 n)

end

end A212150.P12552008387792248161

/-! ## A212150.P2604925134206240560

`(A000583(n)-A212136(n))*A007318(C(2, n))`
-/

namespace A212150.P2604925134206240560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212136 n) * A007318 (Nat.choose 2 n)

end

end A212150.P2604925134206240560

/-! ## A212150.P8960201071358547319

`(A000583(n)-A212136(n))*A000010(C(n, n²)!)`
-/

namespace A212150.P8960201071358547319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212136 n) * A000010 (Nat.factorial (Nat.choose n (n ^ 2)))

end

end A212150.P8960201071358547319

/-! ## A212150.P2920515238690594888

`A000583(n)-A212136(n)-(A000005(n+1)-1)%-1`
-/

namespace A212150.P2920515238690594888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A212136 n - Int.tmod (A000005 (n + 1) - 1) (-1)

end

end A212150.P2920515238690594888

/-!
# A212151: Number of 2 X 2 matrices M of positive integers such that permanent(M) < n.

The programs for A212151, there is no canonical definition to state claims against.
-/

/-! ## A212151.P15609649313839554087

`n^4-A212240(n)`
-/

namespace A212151.P15609649313839554087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212240 n

end

end A212151.P15609649313839554087

/-! ## A212151.P3835751000598762156

`abs(A000583(n)-A212240(n))`
-/

namespace A212151.P3835751000598762156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212240 n|

end

end A212151.P3835751000598762156

/-! ## A212151.P10068465386032769448

`1-(A212240(n)+A024002(n))`
-/

namespace A212151.P10068465386032769448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A212240 n + A024002 n)

end

end A212151.P10068465386032769448

/-! ## A212151.P3122308284769546285

`abs(A000290(n)²-A212240(n))`
-/

namespace A212151.P3122308284769546285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n ^ 2 - A212240 n|

end

end A212151.P3122308284769546285

/-! ## A212151.P10928647277462744475

`(A000583(n)-A212240(n))*A214060(2*n+3)`
-/

namespace A212151.P10928647277462744475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212240 n) * A214060 (2 * n + 3)

end

end A212151.P10928647277462744475

/-! ## A212151.P5809641548407349482

`∑[A320019(A238531(n))]`
-/

namespace A212151.P5809641548407349482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212151.P5809641548407349482

/-!
# A212152: Digits of one of the three 7-adic integers (-1)^(1/3).

The programs for A212152, there is no canonical definition to state claims against.
-/

/-! ## A212152.P10396688247697622234

`Δ[A210852(n)]/7^n`
-/

namespace A212152.P10396688247697622234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210852 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A212152.P10396688247697622234

/-! ## A212152.P1140232159930501188

`ceil(Δ[A210852(n)]/A003950(n))`
-/

namespace A212152.P1140232159930501188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A003950 n : ℚ)⌉

end

end A212152.P1140232159930501188

/-! ## A212152.P2413025026808906026

`floor(A210852(n+1)/A000420(n))`
-/

namespace A212152.P2413025026808906026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A210852 (n + 1) : ℚ) / (A000420 n : ℚ)⌋

end

end A212152.P2413025026808906026

/-! ## A212152.P612309843313523384

`A167499(A151878(n))-A212155(n)`
-/

namespace A212152.P612309843313523384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (A151878 n).toNat - A212155 n

end

end A212152.P612309843313523384

/-! ## A212152.P7380272964488901730

`A167499(A151878(n))-Δ[A212153(n)]/7^n`
-/

namespace A212152.P7380272964488901730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212153 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167499 (A151878 n).toNat : ℚ) - (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A212152.P7380272964488901730

/-! ## A212152.P6252000871823995564

`A167499(A151933(n))-A212155(n)`
-/

namespace A212152.P6252000871823995564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (A151933 n).toNat - A212155 n

end

end A212152.P6252000871823995564

/-!
# A212153: Approximations up to 7^n for one of the three 7-adic integers (-1)^(1/3).

The programs for A212153, there is no canonical definition to state claims against.
-/

/-! ## A212153.P2042151384741604137

`A000584(A210852(n))%A000420(n)`
-/

namespace A212153.P2042151384741604137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000584 (A210852 n).toNat) (A000420 n)

end

end A212153.P2042151384741604137

/-! ## A212153.P10287267846379760021

`A103458(n)-(A056969(7^A061984(n))+A000007(n))`
-/

namespace A212153.P10287267846379760021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103458 n - (A056969 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A061984 n : ℤ))).toNat + A000007 n)

end

end A212153.P10287267846379760021

/-!
# A212154: a(n) = (A212153(n)^3 + 1)/7^n, n >= 0.

The programs for A212154, there is no canonical definition to state claims against.
-/

/-! ## A212154.P9749235929653171291

`(A212153(n)^3+1)/7^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212154.P9749235929653171291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212153 n ^ 3 + 1 : ℚ) / (7 ^ n : ℚ)

end

end A212154.P9749235929653171291

/-!
# A212155: Digits of one of the three 7-adic integers (-1)^(1/3).

The programs for A212155, there is no canonical definition to state claims against.
-/

/-! ## A212155.P5239880782346450595

`Δ[A212153(n)]/7^n`
-/

namespace A212155.P5239880782346450595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212153 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A212155.P5239880782346450595

/-! ## A212155.P14836263315806876907

`Δ[A212153(n)]%A019325(n)`
-/

namespace A212155.P14836263315806876907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A019325 n)

end

end A212155.P14836263315806876907

/-! ## A212155.P7402718702058859575

`A167499(A151878(n))-A212152(n)`
-/

namespace A212155.P7402718702058859575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (A151878 n).toNat - A212152 n

end

end A212155.P7402718702058859575

/-! ## A212155.P994405709634078631

`A167499(A151878(n))-Δ[A210852(n)]/7^n`
-/

namespace A212155.P994405709634078631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210852 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167499 (A151878 n).toNat : ℚ) - (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A212155.P994405709634078631

/-! ## A212155.P14848294291464952905

`A167499(A151933(n))-A212152(n)`
-/

namespace A212155.P14848294291464952905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (A151933 n).toNat - A212152 n

end

end A212155.P14848294291464952905

/-!
# A212156: a(n) = ((6*A023000(n))^3 + 1)/7^n, n >= 0.

The programs for A212156, the canonical program `A212156.P13956114168249349899` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212156 has offset 0).

The definition of A212156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212156.P13956114168249349899

`((6*A023000(n))^3+1)/7^n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212156

/-- `((6*A023000(n))^3+1)/7^n` -/
def P13956114168249349899.Spec : Prop :=
  ∀ n, P13956114168249349899.a n = (A212156 n : ℚ)

end A212156

/-! ## A212156.P7819038409705793030

`2*C(7^n-1, 2)+1`
-/

namespace A212156.P7819038409705793030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ((7 ^ n : ℤ) - 1).toNat 2 + 1

end

end A212156.P7819038409705793030

namespace A212156

/-- `2*C(7^n-1, 2)+1` -/
def P7819038409705793030.Spec : Prop :=
  ∀ n, (P7819038409705793030.a n : ℤ) = A212156 n

end A212156

/-! ## A212156.P6561924947263816953

`(7^n-3)*7^n+3`
-/

namespace A212156.P6561924947263816953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) - 3) * (7 ^ n : ℤ) + 3

end

end A212156.P6561924947263816953

namespace A212156

/-- `(7^n-3)*7^n+3` -/
def P6561924947263816953.Spec : Prop :=
  ∀ n, P6561924947263816953.a n = A212156 n

end A212156

/-! ## A212156.P10987435122118825590

`or(1, 2*C(A024075(n), 2))`
-/

namespace A212156.P10987435122118825590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * Nat.choose (A024075 n).toNat 2)

end

end A212156.P10987435122118825590

namespace A212156

/-- `or(1, 2*C(A024075(n), 2))` -/
def P10987435122118825590.Spec : Prop :=
  ∀ n, (P10987435122118825590.a n : ℤ) = A212156 n

end A212156

/-!
# A212157: Array T(n,k) = k^((prime(n)-1)/2) (mod prime(n)), n >= 2, k=1, 2, ... , prime(n)-1; T(1,1) = +1.

The programs for A212157, there is no canonical definition to state claims against.
-/

/-! ## A212157.P13170898756554237066

`(-1)^A054503(n)`
-/

namespace A212157.P13170898756554237066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A054503 n : ℤ)

end

end A212157.P13170898756554237066

/-! ## A212157.P10193688900759243654

`p?[A226520(n+1)+4]-4`
-/

namespace A212157.P10193688900759243654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A212157.P10193688900759243654

/-! ## A212157.P6082252731993552611

`A015343(A054503(n))`
-/

namespace A212157.P6082252731993552611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A054503 n).toNat

end

end A212157.P6082252731993552611

/-! ## A212157.P17350423496875247413

`A033999(A054503(n)²)`
-/

namespace A212157.P17350423496875247413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A054503 n ^ 2).toNat

end

end A212157.P17350423496875247413

/-! ## A212157.P1089675336795273416

`A087960(A054503(n)²)`
-/

namespace A212157.P1089675336795273416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A054503 n ^ 2).toNat

end

end A212157.P1089675336795273416

/-! ## A212157.P913157864761210754

`A219977(A054503(n)²)`
-/

namespace A212157.P913157864761210754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A054503 n ^ 2).toNat

end

end A212157.P913157864761210754

/-! ## A212157.P5605919904885341342

`A062157(A054503(n)+1)`
-/

namespace A212157.P5605919904885341342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A054503 n + 1).toNat

end

end A212157.P5605919904885341342

/-! ## A212157.P210512275407455421

`A226520(A175969(n+1))`
-/

namespace A212157.P210512275407455421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A175969 (n + 1)).toNat

end

end A212157.P210512275407455421

/-! ## A212157.P4390041808915584458

`A033999(A054503(n)+2)`
-/

namespace A212157.P4390041808915584458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A054503 n + 2).toNat

end

end A212157.P4390041808915584458

/-! ## A212157.P16188721241071273542

`A009001(2*A054503(n))`
-/

namespace A212157.P16188721241071273542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * A054503 n).toNat

end

end A212157.P16188721241071273542

/-!
# A212158: a(n) = ((prime(n) - 1)/2)!, n >= 2.

The programs for A212158, the canonical program `A212158.P5158934300802852016` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212158 has offset 2).

The definition of A212158 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212158.P5158934300802852016

`A005097(n+1)!`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A212158

/-- `A005097(n+1)!` -/
def P5158934300802852016.Spec : Prop :=
  ∀ n, (P5158934300802852016.a n : ℤ) = A212158 (n + 2)

theorem P5158934300802852016.correct : P5158934300802852016.Spec := by
  intro n
  simp only [A212158, Nat.add_sub_cancel]

end A212158

/-! ## A212158.P8158609984274482430

`floor(p?[2*n+1]/2)!`
-/

namespace A212158.P8158609984274482430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋.toNat

end

end A212158.P8158609984274482430

namespace A212158

/-- `floor(p?[2*n+1]/2)!` -/
def P8158609984274482430.Spec : Prop :=
  ∀ n, (P8158609984274482430.a n : ℤ) = A212158 (n + 2)

end A212158

/-! ## A212158.P12180443579893106943

`eq[1, ∑{e}[2*n+1, #]]!`
-/

namespace A212158.P12180443579893106943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A212158.P12180443579893106943

namespace A212158

/-- `eq[1, ∑{e}[2*n+1, #]]!` -/
def P12180443579893106943.Spec : Prop :=
  ∀ n, (P12180443579893106943.a n : ℤ) = A212158 (n + 2)

end A212158

/-! ## A212158.P3245827176190411659

`floor(cosh(log(p?[2*n+1])))!`
-/

namespace A212158.P3245827176190411659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊Real.cosh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))⌋.toNat

end

end A212158.P3245827176190411659

namespace A212158

/-- `floor(cosh(log(p?[2*n+1])))!` -/
def P3245827176190411659.Spec : Prop :=
  ∀ n, (P3245827176190411659.a n : ℤ) = A212158 (n + 2)

end A212158

/-! ## A212158.P11794156164830031341

`floor(sinh(log(p?[2*n+1])))!`
-/

namespace A212158.P11794156164830031341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))⌋.toNat

end

end A212158.P11794156164830031341

namespace A212158

/-- `floor(sinh(log(p?[2*n+1])))!` -/
def P11794156164830031341.Spec : Prop :=
  ∀ n, (P11794156164830031341.a n : ℤ) = A212158 (n + 2)

end A212158

/-!
# A212159: a(n) = (-1)^((prime(n) + 1)/2).

The programs for A212159, the canonical program `A212159.P1250702774170849760` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212159 has offset 2).

The definition of A212159 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212159.P1250702774170849760

`(-1)^A006254(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A212159

/-- `(-1)^A006254(n+1)` -/
def P1250702774170849760.Spec : Prop :=
  ∀ n, P1250702774170849760.a n = (A212159 (n + 2) : ℚ)

end A212159

/-! ## A212159.P6588471547670810293

`A038698(n+2)-A038698(n+1)`
-/

namespace A212159.P6588471547670810293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 2) - A038698 (n + 1)

end

end A212159.P6588471547670810293

namespace A212159

/-- `A038698(n+2)-A038698(n+1)` -/
def P6588471547670810293.Spec : Prop :=
  ∀ n, P6588471547670810293.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P2824168370586262763

`p?[2*n+1]%4-2`
-/

namespace A212159.P2824168370586262763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % 4 : ℕ) : ℤ) - 2

end

end A212159.P2824168370586262763

namespace A212159

/-- `p?[2*n+1]%4-2` -/
def P2824168370586262763.Spec : Prop :=
  ∀ n, P2824168370586262763.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P1494029057562765114

`and(2, p?[2*n+1])-1`
-/

namespace A212159.P1494029057562765114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) - 1

end

end A212159.P1494029057562765114

namespace A212159

/-- `and(2, p?[2*n+1])-1` -/
def P1494029057562765114.Spec : Prop :=
  ∀ n, P1494029057562765114.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P17201173322449246248

`-A077008(n+2)`
-/

namespace A212159.P17201173322449246248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077008 (n + 2)

end

end A212159.P17201173322449246248

namespace A212159

/-- `-A077008(n+2)` -/
def P17201173322449246248.Spec : Prop :=
  ∀ n, P17201173322449246248.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P8542953220897469763

`Δ[A038698(n+1)]`
-/

namespace A212159.P8542953220897469763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212159.P8542953220897469763

namespace A212159

/-- `Δ[A038698(n+1)]` -/
def P8542953220897469763.Spec : Prop :=
  ∀ n, P8542953220897469763.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P6774411827809519538

`(-1)^A067076(n+1)`
-/

namespace A212159.P6774411827809519538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A067076 (n + 1) : ℤ)

end

end A212159.P6774411827809519538

namespace A212159

/-- `(-1)^A067076(n+1)` -/
def P6774411827809519538.Spec : Prop :=
  ∀ n, P6774411827809519538.a n = (A212159 (n + 2) : ℚ)

end A212159

/-! ## A212159.P7787256663810237936

`and(2, A045344(n+1))-1`
-/

namespace A212159.P7787256663810237936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A045344 (n + 1)) - 1

end

end A212159.P7787256663810237936

namespace A212159

/-- `and(2, A045344(n+1))-1` -/
def P7787256663810237936.Spec : Prop :=
  ∀ n, P7787256663810237936.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P12948423191236101966

`and(2, A065091(n+1))-1`
-/

namespace A212159.P12948423191236101966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A065091 (n + 1)) - 1

end

end A212159.P12948423191236101966

namespace A212159

/-- `and(2, A065091(n+1))-1` -/
def P12948423191236101966.Spec : Prop :=
  ∀ n, P12948423191236101966.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P1093420671559787457

`1-and(2, A154115(n+1))`
-/

namespace A212159.P1093420671559787457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A154115 (n + 1))

end

end A212159.P1093420671559787457

namespace A212159

/-- `1-and(2, A154115(n+1))` -/
def P1093420671559787457.Spec : Prop :=
  ∀ n, P1093420671559787457.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P4090505129038885720

`1-and(2, A001748(n+2))`
-/

namespace A212159.P4090505129038885720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A001748 (n + 2))

end

end A212159.P4090505129038885720

namespace A212159

/-- `1-and(2, A001748(n+2))` -/
def P4090505129038885720.Spec : Prop :=
  ∀ n, P4090505129038885720.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P6799847987902814723

`A008683(and(3, -p?[2*n+1]))`
-/

namespace A212159.P6799847987902814723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.land 3 (-(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ))).toNat

end

end A212159.P6799847987902814723

namespace A212159

/-- `A008683(and(3, -p?[2*n+1]))` -/
def P6799847987902814723.Spec : Prop :=
  ∀ n, P6799847987902814723.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P6707124211671732438

`A332805(A267100(n+2))-A332805(n+2)`
-/

namespace A212159.P6707124211671732438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332805 (A267100 (n + 2)).toNat - A332805 (n + 2)

end

end A212159.P6707124211671732438

namespace A212159

/-- `A332805(A267100(n+2))-A332805(n+2)` -/
def P6707124211671732438.Spec : Prop :=
  ∀ n, P6707124211671732438.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P9316143168269647678

`-A070750(n+2)`
-/

namespace A212159.P9316143168269647678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A070750 (n + 2)

end

end A212159.P9316143168269647678

namespace A212159

/-- `-A070750(n+2)` -/
def P9316143168269647678.Spec : Prop :=
  ∀ n, P9316143168269647678.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P5122944904683405178

`A039702(n+2)-2`
-/

namespace A212159.P5122944904683405178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 2) - 2

end

end A212159.P5122944904683405178

namespace A212159

/-- `A039702(n+2)-2` -/
def P5122944904683405178.Spec : Prop :=
  ∀ n, P5122944904683405178.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P12053818907958115108

`Δ[abs(A308567(n+1))]`
-/

namespace A212159.P12053818907958115108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308567 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212159.P12053818907958115108

namespace A212159

/-- `Δ[abs(A308567(n+1))]` -/
def P12053818907958115108.Spec : Prop :=
  ∀ n, P12053818907958115108.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P2617153442209523940

`A000040(n+2)%4-2`
-/

namespace A212159.P2617153442209523940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 4 - 2

end

end A212159.P2617153442209523940

namespace A212159

/-- `A000040(n+2)%4-2` -/
def P2617153442209523940.Spec : Prop :=
  ∀ n, P2617153442209523940.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P16084772477600961628

`and(2, A000040(C(n+2, n+1)))-1`
-/

namespace A212159.P16084772477600961628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000040 (Nat.choose (n + 2) (n + 1))) - 1

end

end A212159.P16084772477600961628

namespace A212159

/-- `and(2, A000040(C(n+2, n+1)))-1` -/
def P16084772477600961628.Spec : Prop :=
  ∀ n, P16084772477600961628.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P15727890373617244338

`A009531(A074972(n+2))`
-/

namespace A212159.P15727890373617244338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A074972 (n + 2)).toNat

end

end A212159.P15727890373617244338

namespace A212159

/-- `A009531(A074972(n+2))` -/
def P15727890373617244338.Spec : Prop :=
  ∀ n, P15727890373617244338.a n = A212159 (n + 2)

end A212159

/-! ## A212159.P14888790188468379586

`A070238(A058384(n+2))`
-/

namespace A212159.P14888790188468379586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070238 (A058384 (n + 2)).toNat

end

end A212159.P14888790188468379586

namespace A212159

/-- `A070238(A058384(n+2))` -/
def P14888790188468379586.Spec : Prop :=
  ∀ n, P14888790188468379586.a n = A212159 (n + 2)

end A212159

/-!
# A212160: Numbers that are congruent to {2, 10} mod 13.

The programs for A212160, the canonical program `A212160.P9978407080382417283` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212160 has offset 0).

The definition of A212160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212160.P9978407080382417283

`(26*n-3*(-1)^n+11)/4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212160

/-- `(26*n-3*(-1)^n+11)/4` -/
def P9978407080382417283.Spec : Prop :=
  ∀ n, P9978407080382417283.a n = (A212160 n : ℚ)

end A212160

/-! ## A212160.P15751970663627504851

`a(n-2)+13` with `a(0)=2, a(1)=10`
-/

namespace A212160.P15751970663627504851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n a =>
  a (n - 2) + 13

end

end A212160.P15751970663627504851

namespace A212160

/-- `a(n-2)+13` -/
def P15751970663627504851.Spec : Prop :=
  ∀ n, (P15751970663627504851.a n : ℤ) = A212160 n

end A212160

/-! ## A212160.P5750419510446370259

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=8, a(2)=5`
-/

namespace A212160.P5750419510446370259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8, 5] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212160.P5750419510446370259

namespace A212160

/-- `∑[abs(a(n-2))]` -/
def P5750419510446370259.Spec : Prop :=
  ∀ n, (P5750419510446370259.a n : ℤ) = A212160 n

end A212160

/-! ## A212160.P16556042254835407367

`∑[13-a(n-1)]` with `a(0)=2, a(1)=8`
-/

namespace A212160.P16556042254835407367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  13 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212160.P16556042254835407367

namespace A212160

/-- `∑[13-a(n-1)]` -/
def P16556042254835407367.Spec : Prop :=
  ∀ n, P16556042254835407367.a n = A212160 n

end A212160

/-! ## A212160.P6829980292631468653

`∑[∑[ogf((2+8x+3x^2)/(1+x))]]`
-/

namespace A212160.P6829980292631468653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212160.P6829980292631468653

namespace A212160

/-- `∑[∑[ogf((2+8x+3x^2)/(1+x))]]` -/
def P6829980292631468653.Spec : Prop :=
  ∀ n, P6829980292631468653.a n = A212160 n

end A212160

/-! ## A212160.P17845911856582420693

`ogf((2+8x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A212160.P17845911856582420693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, 3] [1, -1, -1, 1] n

end

end A212160.P17845911856582420693

namespace A212160

/-- `ogf((2+8x+3x^2)/(1-x-x^2+x^3))` -/
def P17845911856582420693.Spec : Prop :=
  ∀ n, P17845911856582420693.a n = A212160 n

end A212160

/-! ## A212160.P2382468435501712201

`∑[3*n%2+5]-3`
-/

namespace A212160.P2382468435501712201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A212160.P2382468435501712201

namespace A212160

/-- `∑[3*n%2+5]-3` -/
def P2382468435501712201.Spec : Prop :=
  ∀ n, P2382468435501712201.a n = A212160 n

end A212160

/-! ## A212160.P5178283592761003097

`13*n-1-a(n-1)` with `a(0)=2`
-/

namespace A212160.P5178283592761003097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (13 * n : ℤ) - 1 - a (n - 1)

end

end A212160.P5178283592761003097

namespace A212160

/-- `13*n-1-a(n-1)` -/
def P5178283592761003097.Spec : Prop :=
  ∀ n, P5178283592761003097.a n = A212160 n

end A212160

/-! ## A212160.P18363866079554906619

`∑[gcd(2, n+1)²+4]-3`
-/

namespace A212160.P18363866079554906619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A212160.P18363866079554906619

namespace A212160

/-- `∑[gcd(2, n+1)²+4]-3` -/
def P18363866079554906619.Spec : Prop :=
  ∀ n, P18363866079554906619.a n = A212160 n

end A212160

/-! ## A212160.P4125883885235154809

`∑[gcd(4, (n+1)^3)+4]-3`
-/

namespace A212160.P4125883885235154809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 ((n + 1) ^ 3) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A212160.P4125883885235154809

namespace A212160

/-- `∑[gcd(4, (n+1)^3)+4]-3` -/
def P4125883885235154809.Spec : Prop :=
  ∀ n, P4125883885235154809.a n = A212160 n

end A212160

/-! ## A212160.P15910502574030406270

`2*n+record[lcm(3, n+2)]-4`
-/

namespace A212160.P15910502574030406270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 4)

end

end A212160.P15910502574030406270

namespace A212160

/-- `2*n+record[lcm(3, n+2)]-4` -/
def P15910502574030406270.Spec : Prop :=
  ∀ n, P15910502574030406270.a n = A212160 n

end A212160

/-! ## A212160.P15092952181009974502

`eq[1, val(2*n+1, 3)]+2*n+1`
-/

namespace A212160.P15092952181009974502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (2 * n + 1)

end

end A212160.P15092952181009974502

namespace A212160

/-- `eq[1, val(2*n+1, 3)]+2*n+1` -/
def P15092952181009974502.Spec : Prop :=
  ∀ n, (P15092952181009974502.a n : ℤ) = A212160 n

end A212160

/-! ## A212160.P2078125712398574472

`∑[A010719(n)]-3`
-/

namespace A212160.P2078125712398574472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A212160.P2078125712398574472

namespace A212160

/-- `∑[A010719(n)]-3` -/
def P2078125712398574472.Spec : Prop :=
  ∀ n, P2078125712398574472.a n = A212160 n

end A212160

/-! ## A212160.P16214884893347272794

`∑[A023413(a(n-1))]` with `a(0)=2`
-/

namespace A212160.P16214884893347272794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A023413 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212160.P16214884893347272794

namespace A212160

/-- `∑[A023413(a(n-1))]` -/
def P16214884893347272794.Spec : Prop :=
  ∀ n, P16214884893347272794.a n = A212160 n

end A212160

/-! ## A212160.P1917639533169414549

`∑[A070475(a(n-1))]` with `a(0)=2`
-/

namespace A212160.P1917639533169414549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A070475 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212160.P1917639533169414549

namespace A212160

/-- `∑[A070475(a(n-1))]` -/
def P1917639533169414549.Spec : Prop :=
  ∀ n, P1917639533169414549.a n = A212160 n

end A212160

/-! ## A212160.P6052835023677430017

`∑[A070501(a(n-1))]` with `a(0)=2`
-/

namespace A212160.P6052835023677430017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A070501 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212160.P6052835023677430017

namespace A212160

/-- `∑[A070501(a(n-1))]` -/
def P6052835023677430017.Spec : Prop :=
  ∀ n, P6052835023677430017.a n = A212160 n

end A212160

/-! ## A212160.P14322656861011107268

`∑[dr(A040093(n)²+1)]`
-/

namespace A212160.P14322656861011107268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040093 n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212160.P14322656861011107268

namespace A212160

/-- `∑[dr(A040093(n)²+1)]` -/
def P14322656861011107268.Spec : Prop :=
  ∀ n, (P14322656861011107268.a n : ℤ) = A212160 n

end A212160

/-! ## A212160.P10798117823761217231

`A168670(n+1)+1+n`
-/

namespace A212160.P10798117823761217231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168670 (n + 1) + 1 + (n : ℤ)

end

end A212160.P10798117823761217231

namespace A212160

/-- `A168670(n+1)+1+n` -/
def P10798117823761217231.Spec : Prop :=
  ∀ n, P10798117823761217231.a n = A212160 n

end A212160

/-! ## A212160.P6184018429696145851

`A168199(n+1)+5*n`
-/

namespace A212160.P6184018429696145851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (n + 1) + (5 * n : ℤ)

end

end A212160.P6184018429696145851

namespace A212160

/-- `A168199(n+1)+5*n` -/
def P6184018429696145851.Spec : Prop :=
  ∀ n, P6184018429696145851.a n = A212160 n

end A212160

/-! ## A212160.P10394777034195160705

`A301451(n+1)+Δ[n²]`
-/

namespace A212160.P10394777034195160705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A212160.P10394777034195160705

namespace A212160

/-- `A301451(n+1)+Δ[n²]` -/
def P10394777034195160705.Spec : Prop :=
  ∀ n, P10394777034195160705.a n = A212160 n

end A212160

/-!
# A212161: Numbers congruent to 6 or 10 mod 17.

The programs for A212161, the canonical program `A212161.P447942872998467445` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212161 has offset 0).

The definition of A212161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212161.P447942872998467445

`(34*n+9*(-1)^n+15)/4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A212161

/-- `(34*n+9*(-1)^n+15)/4` -/
def P447942872998467445.Spec : Prop :=
  ∀ n, P447942872998467445.a n = (A212161 n : ℚ)

end A212161

/-! ## A212161.P11631109387544692070

`a(n-2)+17` with `a(0)=6, a(1)=10`
-/

namespace A212161.P11631109387544692070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 10] fun n a =>
  a (n - 2) + 17

end

end A212161.P11631109387544692070

namespace A212161

/-- `a(n-2)+17` -/
def P11631109387544692070.Spec : Prop :=
  ∀ n, (P11631109387544692070.a n : ℤ) = A212161 n

end A212161

/-! ## A212161.P1384586587196999206

`∑[17-a(n-1)]` with `a(0)=6, a(1)=4`
-/

namespace A212161.P1384586587196999206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 4] fun n f1 =>
  17 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212161.P1384586587196999206

namespace A212161

/-- `∑[17-a(n-1)]` -/
def P1384586587196999206.Spec : Prop :=
  ∀ n, P1384586587196999206.a n = A212161 n

end A212161

/-! ## A212161.P18194276162327803638

`∑[∑[ogf((6+4x+7x^2)/(1+x))]]`
-/

namespace A212161.P18194276162327803638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 4, 7] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212161.P18194276162327803638

namespace A212161

/-- `∑[∑[ogf((6+4x+7x^2)/(1+x))]]` -/
def P18194276162327803638.Spec : Prop :=
  ∀ n, P18194276162327803638.a n = A212161 n

end A212161

/-! ## A212161.P14907903541338454195

`ogf((6+4x+7x^2)/(1-x-x^2+x^3))`
-/

namespace A212161.P14907903541338454195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 4, 7] [1, -1, -1, 1] n

end

end A212161.P14907903541338454195

namespace A212161

/-- `ogf((6+4x+7x^2)/(1-x-x^2+x^3))` -/
def P14907903541338454195.Spec : Prop :=
  ∀ n, P14907903541338454195.a n = A212161 n

end A212161

/-! ## A212161.P5602501675868054152

`3*comp[n+1-n²%5]+n`
-/

namespace A212161.P5602501675868054152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((n ^ 2 % 5 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A212161.P5602501675868054152

namespace A212161

/-- `3*comp[n+1-n²%5]+n` -/
def P5602501675868054152.Spec : Prop :=
  ∀ n, (P5602501675868054152.a n : ℤ) = A212161 n

end A212161

/-! ## A212161.P15202823029735268665

`abs(a(n-1)-16*n-n)-1` with `a(0)=6`
-/

namespace A212161.P15202823029735268665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  |a (n - 1) - (16 * n : ℤ) - (n : ℤ)| - 1

end

end A212161.P15202823029735268665

namespace A212161

/-- `abs(a(n-1)-16*n-n)-1` -/
def P15202823029735268665.Spec : Prop :=
  ∀ n, P15202823029735268665.a n = A212161 n

end A212161

/-! ## A212161.P2340794248172533471

`∑[A040033(n)]+n`
-/

namespace A212161.P2340794248172533471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A212161.P2340794248172533471

namespace A212161

/-- `∑[A040033(n)]+n` -/
def P2340794248172533471.Spec : Prop :=
  ∀ n, P2340794248172533471.a n = A212161 n

end A212161

/-! ## A212161.P12386145052021288328

`∑[3*A040005(n)]+n`
-/

namespace A212161.P12386145052021288328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A212161.P12386145052021288328

namespace A212161

/-- `∑[3*A040005(n)]+n` -/
def P12386145052021288328.Spec : Prop :=
  ∀ n, P12386145052021288328.a n = A212161 n

end A212161

/-! ## A212161.P17923577761021985144

`∑[A040135(n)/2]+n`
-/

namespace A212161.P17923577761021985144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040135 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A212161.P17923577761021985144

namespace A212161

/-- `∑[A040135(n)/2]+n` -/
def P17923577761021985144.Spec : Prop :=
  ∀ n, P17923577761021985144.a n = (A212161 n : ℚ)

end A212161

/-! ## A212161.P10701997029713843685

`3*A047221(n+1)+n`
-/

namespace A212161.P10701997029713843685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047221 (n + 1) + (n : ℤ)

end

end A212161.P10701997029713843685

namespace A212161

/-- `3*A047221(n+1)+n` -/
def P10701997029713843685.Spec : Prop :=
  ∀ n, P10701997029713843685.a n = A212161 n

end A212161

/-! ## A212161.P7143530341414394442

`A146510(n+1)+5+n`
-/

namespace A212161.P7143530341414394442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146510 (n + 1) + 5 + (n : ℤ)

end

end A212161.P7143530341414394442

namespace A212161

/-- `A146510(n+1)+5+n` -/
def P7143530341414394442.Spec : Prop :=
  ∀ n, P7143530341414394442.a n = A212161 n

end A212161

/-! ## A212161.P5503360159693142325

`A168414(n+1)+4*n`
-/

namespace A212161.P5503360159693142325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168414 (n + 1) + (4 * n : ℤ)

end

end A212161.P5503360159693142325

namespace A212161

/-- `A168414(n+1)+4*n` -/
def P5503360159693142325.Spec : Prop :=
  ∀ n, P5503360159693142325.a n = A212161 n

end A212161

/-! ## A212161.P9454294192374474099

`A072703(n+1)+xor(1, n)`
-/

namespace A212161.P9454294192374474099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072703 (n + 1) + (Nat.xor 1 n : ℤ)

end

end A212161.P9454294192374474099

namespace A212161

/-- `A072703(n+1)+xor(1, n)` -/
def P9454294192374474099.Spec : Prop :=
  ∀ n, P9454294192374474099.a n = A212161 n

end A212161

/-! ## A212161.P8258421627604098190

`∑[lcm(9, A280193(n))-5]+2`
-/

namespace A212161.P8258421627604098190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 9 (A280193 n) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A212161.P8258421627604098190

namespace A212161

/-- `∑[lcm(9, A280193(n))-5]+2` -/
def P8258421627604098190.Spec : Prop :=
  ∀ n, P8258421627604098190.a n = A212161 n

end A212161

/-! ## A212161.P16158081928432234277

`A112651(n+1)+3*(n+2)`
-/

namespace A212161.P16158081928432234277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (n + 1) + (3 * (n + 2) : ℤ)

end

end A212161.P16158081928432234277

namespace A212161

/-- `A112651(n+1)+3*(n+2)` -/
def P16158081928432234277.Spec : Prop :=
  ∀ n, P16158081928432234277.a n = A212161 n

end A212161

/-! ## A212161.P1128166901039934044

`3*A047216(n+1)+n+3`
-/

namespace A212161.P1128166901039934044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047216 (n + 1) + (n + 3 : ℤ)

end

end A212161.P1128166901039934044

namespace A212161

/-- `3*A047216(n+1)+n+3` -/
def P1128166901039934044.Spec : Prop :=
  ∀ n, P1128166901039934044.a n = A212161 n

end A212161

/-! ## A212161.P17279837281556796120

`A017209(n)-A152832(n)`
-/

namespace A212161.P17279837281556796120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n - A152832 n

end

end A212161.P17279837281556796120

namespace A212161

/-- `A017209(n)-A152832(n)` -/
def P17279837281556796120.Spec : Prop :=
  ∀ n, P17279837281556796120.a n = A212161 n

end A212161

/-! ## A212161.P17470738311171192507

`A072703(n+1)+A004442(n)`
-/

namespace A212161.P17470738311171192507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072703 (n + 1) + A004442 n

end

end A212161.P17470738311171192507

namespace A212161

/-- `A072703(n+1)+A004442(n)` -/
def P17470738311171192507.Spec : Prop :=
  ∀ n, P17470738311171192507.a n = A212161 n

end A212161

/-!
# A212162: Triangle T(n,k), n>=1, 0<=k<=n^2, read by rows: row n gives the coefficients of the chromatic polynomial of the rhombic hexagonal square grid graph RH_(n,n), highest powers first.

The programs for A212162, there is no canonical definition to state claims against.
-/

/-! ## A212162.P14305699059168907617

`A212194(n+1)%Δ[A006851(n)]`
-/

namespace A212162.P14305699059168907617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212194 (n + 1)) (f1 (n + 1) - f1 n)

end

end A212162.P14305699059168907617

/-! ## A212162.P3158286514484023954

`A322389(2*(n+1))+A212194(n+1)`
-/

namespace A212162.P3158286514484023954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (2 * (n + 1)) + A212194 (n + 1)

end

end A212162.P3158286514484023954

/-! ## A212162.P13418036261749805419

`A212194(n+1)*A322026((6*n+1)²)`
-/

namespace A212162.P13418036261749805419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212194 (n + 1) * A322026 ((6 * n + 1) ^ 2)

end

end A212162.P13418036261749805419

/-! ## A212162.P6715732596625685505

`A212194(n+1)+A045833(A022268(n))`
-/

namespace A212162.P6715732596625685505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212194 (n + 1) + A045833 (A022268 n).toNat

end

end A212162.P6715732596625685505

/-! ## A212162.P15538186005976715431

`A212194(n+1)+A007814(A115564(n+1))`
-/

namespace A212162.P15538186005976715431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212194 (n + 1) + A007814 (A115564 (n + 1)).toNat

end

end A212162.P15538186005976715431

/-!
# A212163: Square array A(n,k), n>=1, k>=1, read by antidiagonals: A(n,k) is the number of n-colorings of the rhombic hexagonal square grid graph RH_(k,k).

The programs for A212163, there is no canonical definition to state claims against.
-/

/-! ## A212163.P4094588441220413470

`A212195(A048266(n+1))`
-/

namespace A212163.P4094588441220413470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212195 (A048266 (n + 1)).toNat

end

end A212163.P4094588441220413470

/-! ## A212163.P8048578505868234511

`A014682(2*A212195(n+1))`
-/

namespace A212163.P8048578505868234511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A212195 (n + 1)).toNat

end

end A212163.P8048578505868234511

/-! ## A212163.P16158248130508236316

`A273943(2*A212195(n+1))`
-/

namespace A212163.P16158248130508236316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * A212195 (n + 1)).toNat

end

end A212163.P16158248130508236316

/-! ## A212163.P8851004265806232058

`∑{d}[A212195(n+1), A000010(#)]`
-/

namespace A212163.P8851004265806232058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A212163.P8851004265806232058

/-! ## A212163.P2824824812191196097

`A212195(n+1)%record[A213300(n)]`
-/

namespace A212163.P2824824812191196097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212195 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A212163.P2824824812191196097

/-!
# A212164: Numbers k such that the maximum exponent in its prime factorization is greater than the number of positive exponents (A051903(k) > A001221(k)).

The programs for A212164, the canonical program `A212164.P17151163733821615941` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212164 has offset 1).

The definition of A212164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212164.P17151163733821615941

`lt[A001221(n+1), A051903(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A212164

/-- `lt[A001221(n+1), A051903(n+1)]+1` -/
def P17151163733821615941.Spec : Prop :=
  ∀ n, (P17151163733821615941.a n : ℤ) = A212164 (n + 1)

theorem P17151163733821615941.correct : P17151163733821615941.Spec := by
  intro n
  simp only [A212164, Nat.add_sub_cancel]

end A212164

/-! ## A212164.P7722573321425173379

`lt[A001222(A007947(n+1)), A051903(n+1)]+1`
-/

namespace A212164.P7722573321425173379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212164.P7722573321425173379

namespace A212164

/-- `lt[A001222(A007947(n+1)), A051903(n+1)]+1` -/
def P7722573321425173379.Spec : Prop :=
  ∀ n, (P7722573321425173379.a n : ℤ) = A212164 (n + 1)

end A212164

/-! ## A212164.P4016764169390968975

`∩[A188654(n+1), A212165(n+1)]`
-/

namespace A212164.P4016764169390968975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212164.P4016764169390968975

namespace A212164

/-- `∩[A188654(n+1), A212165(n+1)]` -/
def P4016764169390968975.Spec : Prop :=
  ∀ n, (P4016764169390968975.a n : ℤ) = A212164 (n + 1)

end A212164

/-! ## A212164.P13991464936699392496

`lt[A225230(n+1), 0]+1`
-/

namespace A212164.P13991464936699392496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A212164.P13991464936699392496

namespace A212164

/-- `lt[A225230(n+1), 0]+1` -/
def P13991464936699392496.Spec : Prop :=
  ∀ n, (P13991464936699392496.a n : ℤ) = A212164 (n + 1)

end A212164

/-! ## A212164.P18335103187597118506

`lt[A051903(A034444(n+1)), A051903(n+1)]+1`
-/

namespace A212164.P18335103187597118506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A034444 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212164.P18335103187597118506

namespace A212164

/-- `lt[A051903(A034444(n+1)), A051903(n+1)]+1` -/
def P18335103187597118506.Spec : Prop :=
  ∀ n, (P18335103187597118506.a n : ℤ) = A212164 (n + 1)

end A212164

/-! ## A212164.P7665610474885567722

`lt[2*A225230(A028310(n)), A057428(n)]`
-/

namespace A212164.P7665610474885567722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225230 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212164.P7665610474885567722

namespace A212164

/-- `lt[2*A225230(A028310(n)), A057428(n)]` -/
def P7665610474885567722.Spec : Prop :=
  ∀ n, (P7665610474885567722.a n : ℤ) = A212164 (n + 1)

end A212164

/-!
# A212165: Numbers k such that the maximum exponent in its prime factorization is not less than the number of positive exponents (A051903(k) >= A001221(k)).

The programs for A212165, the canonical program `A212165.P325953888853094015` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212165 has offset 1).

The definition of A212165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212165.P325953888853094015

`lt[A001221(n+1)-A051903(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A212165

/-- `lt[A001221(n+1)-A051903(n+1), 1]+1` -/
def P325953888853094015.Spec : Prop :=
  ∀ n, (P325953888853094015.a n : ℤ) = A212165 (n + 1)

theorem P325953888853094015.correct : P325953888853094015.Spec := by
  intro n
  simp only [A212165, Nat.add_sub_cancel]

end A212165

/-! ## A212165.P15098096860866185199

`lt[A001222(A007947(n+1))-A051903(n+1), 1]+1`
-/

namespace A212165.P15098096860866185199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat - A051903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A212165.P15098096860866185199

namespace A212165

/-- `lt[A001222(A007947(n+1))-A051903(n+1), 1]+1` -/
def P15098096860866185199.Spec : Prop :=
  ∀ n, (P15098096860866185199.a n : ℤ) = A212165 (n + 1)

end A212165

/-! ## A212165.P6942863680249490139

`lt[A225230(n+1), 1]+1`
-/

namespace A212165.P6942863680249490139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A212165.P6942863680249490139

namespace A212165

/-- `lt[A225230(n+1), 1]+1` -/
def P6942863680249490139.Spec : Prop :=
  ∀ n, (P6942863680249490139.a n : ℤ) = A212165 (n + 1)

end A212165

/-! ## A212165.P3629931504435572858

`lt[n*A225230(A028310(n)), n]`
-/

namespace A212165.P3629931504435572858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A225230 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A212165.P3629931504435572858

namespace A212165

/-- `lt[n*A225230(A028310(n)), n]` -/
def P3629931504435572858.Spec : Prop :=
  ∀ n, (P3629931504435572858.a n : ℤ) = A212165 (n + 1)

end A212165

/-! ## A212165.P5695688225496402168

`record[gcd(n+1, A046523(n+1)%A034444(n+1))]`
-/

namespace A212165.P5695688225496402168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A046523 (n + 1)) (A034444 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212165.P5695688225496402168

namespace A212165

/-- `record[gcd(n+1, A046523(n+1)%A034444(n+1))]` -/
def P5695688225496402168.Spec : Prop :=
  ∀ n, (P5695688225496402168.a n : ℤ) = A212165 (n + 1)

end A212165

/-! ## A212165.P14899129645905149964

`lt[A051903(A034444(n+1))-A051903(n+1), 1]+1`
-/

namespace A212165.P14899129645905149964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A034444 (n + 1)).toNat - A051903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A212165.P14899129645905149964

namespace A212165

/-- `lt[A051903(A034444(n+1))-A051903(n+1), 1]+1` -/
def P14899129645905149964.Spec : Prop :=
  ∀ n, (P14899129645905149964.a n : ℤ) = A212165 (n + 1)

end A212165

/-! ## A212165.P151142686480352801

`lt[A225230(A028310(n)), A057428(n)²]`
-/

namespace A212165.P151142686480352801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212165.P151142686480352801

namespace A212165

/-- `lt[A225230(A028310(n)), A057428(n)²]` -/
def P151142686480352801.Spec : Prop :=
  ∀ n, (P151142686480352801.a n : ℤ) = A212165 (n + 1)

end A212165

/-! ## A212165.P3586931850145590249

`A344586(n+1)+A000038(A092976(n))`
-/

namespace A212165.P3586931850145590249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344586 (n + 1) + A000038 (A092976 n).toNat

end

end A212165.P3586931850145590249

namespace A212165

/-- `A344586(n+1)+A000038(A092976(n))` -/
def P3586931850145590249.Spec : Prop :=
  ∀ n, P3586931850145590249.a n = A212165 (n + 1)

end A212165

/-! ## A212165.P10709421724736341180

`A010122(A130321(n))*A344586(n+1)`
-/

namespace A212165.P10709421724736341180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 (A130321 n).toNat * A344586 (n + 1)

end

end A212165.P10709421724736341180

namespace A212165

/-- `A010122(A130321(n))*A344586(n+1)` -/
def P10709421724736341180.Spec : Prop :=
  ∀ n, P10709421724736341180.a n = A212165 (n + 1)

end A212165

/-! ## A212165.P2645015397806212799

`A344586(n+1)^A052409(A098498(n))`
-/

namespace A212165.P2645015397806212799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344586 (n + 1) : ℚ) ^ (A052409 (A098498 n).toNat : ℤ)

end

end A212165.P2645015397806212799

namespace A212165

/-- `A344586(n+1)^A052409(A098498(n))` -/
def P2645015397806212799.Spec : Prop :=
  ∀ n, P2645015397806212799.a n = (A212165 (n + 1) : ℚ)

end A212165

/-! ## A212165.P18136322063515480089

`A000164(A059268(n))*A344586(n+1)`
-/

namespace A212165.P18136322063515480089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A059268 n).toNat * A344586 (n + 1)

end

end A212165.P18136322063515480089

namespace A212165

/-- `A000164(A059268(n))*A344586(n+1)` -/
def P18136322063515480089.Spec : Prop :=
  ∀ n, P18136322063515480089.a n = A212165 (n + 1)

end A212165

/-! ## A212165.P6413642570516744315

`record[(n+1)/A080874(A050326(n+1)²)]`
-/

namespace A212165.P6413642570516744315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A080874 (A050326 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212165.P6413642570516744315

namespace A212165

/-- `record[(n+1)/A080874(A050326(n+1)²)]` -/
def P6413642570516744315.Spec : Prop :=
  ∀ n, P6413642570516744315.a n = (A212165 (n + 1) : ℚ)

end A212165

/-! ## A212165.P14850261806274597968

`record[(n+1)*A050326(2^A050326(n+1))]`
-/

namespace A212165.P14850261806274597968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050326 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A050326 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212165.P14850261806274597968

namespace A212165

/-- `record[(n+1)*A050326(2^A050326(n+1))]` -/
def P14850261806274597968.Spec : Prop :=
  ∀ n, P14850261806274597968.a n = A212165 (n + 1)

end A212165

/-! ## A212165.P12998634864181261819

`record[(n+1)*A010057(A050326(n+1)²²)]`
-/

namespace A212165.P12998634864181261819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010057 ((A050326 (n + 1) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212165.P12998634864181261819

namespace A212165

/-- `record[(n+1)*A010057(A050326(n+1)²²)]` -/
def P12998634864181261819.Spec : Prop :=
  ∀ n, P12998634864181261819.a n = A212165 (n + 1)

end A212165

/-! ## A212165.P1734448258924337675

`record[(n+1)^A050326(A050326(n+1)^A050326(n+1))]`
-/

namespace A212165.P1734448258924337675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A050326 (SequenceMachineLib.roundAway ((A050326 (n + 1) : ℚ) ^ (A050326 (n + 1) : ℤ))).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212165.P1734448258924337675

namespace A212165

/-- `record[(n+1)^A050326(A050326(n+1)^A050326(n+1))]` -/
def P1734448258924337675.Spec : Prop :=
  ∀ n, P1734448258924337675.a n = (A212165 (n + 1) : ℚ)

end A212165

/-! ## A212165.P14899720930808317861

`and(A086827(n+1), A344586(n+1))`
-/

namespace A212165.P14899720930808317861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A344586 (n + 1))

end

end A212165.P14899720930808317861

namespace A212165

/-- `and(A086827(n+1), A344586(n+1))` -/
def P14899720930808317861.Spec : Prop :=
  ∀ n, P14899720930808317861.a n = A212165 (n + 1)

end A212165

/-! ## A212165.P12289049664476648033

`A344586(and(1, A000096(n²))+n+1)`
-/

namespace A212165.P12289049664476648033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344586 (Int.land 1 (A000096 (n ^ 2)) + (n + 1 : ℤ)).toNat

end

end A212165.P12289049664476648033

namespace A212165

/-- `A344586(and(1, A000096(n²))+n+1)` -/
def P12289049664476648033.Spec : Prop :=
  ∀ n, P12289049664476648033.a n = A212165 (n + 1)

end A212165

/-!
# A212166: Numbers k such that the maximum exponent in its prime factorization equals the number of positive exponents (A051903(k) = A001221(k)).

The programs for A212166, the canonical program `A212166.P9615223934233399891` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212166 has offset 1).

The definition of A212166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212166.P9615223934233399891

`eq[A001221(n+1), A051903(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A212166

/-- `eq[A001221(n+1), A051903(n+1)]+1` -/
def P9615223934233399891.Spec : Prop :=
  ∀ n, (P9615223934233399891.a n : ℤ) = A212166 (n + 1)

theorem P9615223934233399891.correct : P9615223934233399891.Spec := by
  intro n
  simp only [A212166, Nat.add_sub_cancel]

end A212166

/-! ## A212166.P3060844683965239530

`eq[A001222(A007947(n+1)), A051903(n+1)]+1`
-/

namespace A212166.P3060844683965239530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A212166.P3060844683965239530

namespace A212166

/-- `eq[A001222(A007947(n+1)), A051903(n+1)]+1` -/
def P3060844683965239530.Spec : Prop :=
  ∀ n, (P3060844683965239530.a n : ℤ) = A212166 (n + 1)

end A212166

/-! ## A212166.P15039276679535289633

`∩[A212165(n+1), A212167(n+1)]`
-/

namespace A212166.P15039276679535289633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212166.P15039276679535289633

namespace A212166

/-- `∩[A212165(n+1), A212167(n+1)]` -/
def P15039276679535289633.Spec : Prop :=
  ∀ n, (P15039276679535289633.a n : ℤ) = A212166 (n + 1)

end A212166

/-! ## A212166.P1197780348141539721

`eq[0, A225230(n+1)]+1`
-/

namespace A212166.P1197780348141539721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212166.P1197780348141539721

namespace A212166

/-- `eq[0, A225230(n+1)]+1` -/
def P1197780348141539721.Spec : Prop :=
  ∀ n, (P1197780348141539721.a n : ℤ) = A212166 (n + 1)

end A212166

/-! ## A212166.P15669372015529921343

`eq[A066301(n+1), A297155(n+1)]+1`
-/

namespace A212166.P15669372015529921343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A212166.P15669372015529921343

namespace A212166

/-- `eq[A066301(n+1), A297155(n+1)]+1` -/
def P15669372015529921343.Spec : Prop :=
  ∀ n, (P15669372015529921343.a n : ℤ) = A212166 (n + 1)

end A212166

/-! ## A212166.P9810563332343681758

`lt[A225230(A028310(n))², A057428(n)²]`
-/

namespace A212166.P9810563332343681758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A028310 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212166.P9810563332343681758

namespace A212166

/-- `lt[A225230(A028310(n))², A057428(n)²]` -/
def P9810563332343681758.Spec : Prop :=
  ∀ n, (P9810563332343681758.a n : ℤ) = A212166 (n + 1)

end A212166

/-! ## A212166.P10400122279186491305

`record[gcd(A008619(2*n), A225230(n+1))]`
-/

namespace A212166.P10400122279186491305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (2 * n)) (A225230 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212166.P10400122279186491305

namespace A212166

/-- `record[gcd(A008619(2*n), A225230(n+1))]` -/
def P10400122279186491305.Spec : Prop :=
  ∀ n, (P10400122279186491305.a n : ℤ) = A212166 (n + 1)

end A212166

/-!
# A212167: Numbers k such that the maximum exponent in its prime factorization is not greater than the number of positive exponents (A051903(k) <= A001221(k)).

The programs for A212167, the canonical program `A212167.P5687651809221960298` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212167 has offset 1).

The definition of A212167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212167.P5687651809221960298

`comp[A212164(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A212167

/-- `comp[A212164(n+1)-1]+1` -/
def P5687651809221960298.Spec : Prop :=
  ∀ n, (P5687651809221960298.a n : ℤ) = A212167 (n + 1)

theorem P5687651809221960298.correct : P5687651809221960298.Spec := by
  intro n
  simp only [A212167, Nat.add_sub_cancel]

end A212167

/-! ## A212167.P17760816980704917560

`record[gcd(n+1, A062509(A007947(n+1)))]`
-/

namespace A212167.P17760816980704917560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A062509 (A007947 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212167.P17760816980704917560

namespace A212167

/-- `record[gcd(n+1, A062509(A007947(n+1)))]` -/
def P17760816980704917560.Spec : Prop :=
  ∀ n, (P17760816980704917560.a n : ℤ) = A212167 (n + 1)

end A212167

/-! ## A212167.P471515812733494450

`lt[A057428(n+1), A225230(n+1)]+1`
-/

namespace A212167.P471515812733494450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212167.P471515812733494450

namespace A212167

/-- `lt[A057428(n+1), A225230(n+1)]+1` -/
def P471515812733494450.Spec : Prop :=
  ∀ n, (P471515812733494450.a n : ℤ) = A212167 (n + 1)

end A212167

/-! ## A212167.P183221759110950424

`lt[A057428(n), A225230(A028310(n))]`
-/

namespace A212167.P183221759110950424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212167.P183221759110950424

namespace A212167

/-- `lt[A057428(n), A225230(A028310(n))]` -/
def P183221759110950424.Spec : Prop :=
  ∀ n, (P183221759110950424.a n : ℤ) = A212167 (n + 1)

end A212167

/-!
# A212168: Numbers n such that the maximal exponent in its prime factorization is less than the number of positive exponents (A051903(n) < A001221(n)).

The programs for A212168, the canonical program `A212168.P13428896127998377424` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212168 has offset 1).

The definition of A212168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212168.P13428896127998377424

`lt[A051903(n+1), A001221(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A212168

/-- `lt[A051903(n+1), A001221(n+1)]+1` -/
def P13428896127998377424.Spec : Prop :=
  ∀ n, (P13428896127998377424.a n : ℤ) = A212168 (n + 1)

theorem P13428896127998377424.correct : P13428896127998377424.Spec := by
  intro n
  simp only [A212168, Nat.add_sub_cancel]

end A212168

/-! ## A212168.P1894467656108120452

`lt[A051903(n+1), A001222(A007947(n+1))]+1`
-/

namespace A212168.P1894467656108120452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212168.P1894467656108120452

namespace A212168

/-- `lt[A051903(n+1), A001222(A007947(n+1))]+1` -/
def P1894467656108120452.Spec : Prop :=
  ∀ n, (P1894467656108120452.a n : ℤ) = A212168 (n + 1)

end A212168

/-! ## A212168.P6101887014595733376

`∩[A188654(n+1), A212167(n+1)]`
-/

namespace A212168.P6101887014595733376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212168.P6101887014595733376

namespace A212168

/-- `∩[A188654(n+1), A212167(n+1)]` -/
def P6101887014595733376.Spec : Prop :=
  ∀ n, (P6101887014595733376.a n : ℤ) = A212168 (n + 1)

end A212168

/-! ## A212168.P7951567998374076819

`lt[1/2, A225230(n+1)]+1`
-/

namespace A212168.P7951567998374076819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A212168.P7951567998374076819

namespace A212168

/-- `lt[1/2, A225230(n+1)]+1` -/
def P7951567998374076819.Spec : Prop :=
  ∀ n, (P7951567998374076819.a n : ℤ) = A212168 (n + 1)

end A212168

/-! ## A212168.P16768612644504011073

`A020725(lt[1, A225230(n+1)+1])`
-/

namespace A212168.P16768612644504011073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A212168.P16768612644504011073

namespace A212168

/-- `A020725(lt[1, A225230(n+1)+1])` -/
def P16768612644504011073.Spec : Prop :=
  ∀ n, P16768612644504011073.a n = A212168 (n + 1)

end A212168

/-! ## A212168.P16669492438073242586

`A113484(lt[A238745(n+1), A181819(n+1)])`
-/

namespace A212168.P16669492438073242586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A212168.P16669492438073242586

namespace A212168

/-- `A113484(lt[A238745(n+1), A181819(n+1)])` -/
def P16669492438073242586.Spec : Prop :=
  ∀ n, P16669492438073242586.a n = A212168 (n + 1)

end A212168

/-! ## A212168.P3330716971852985873

`lt[A000007(n), A225230(A233583(n+1))]`
-/

namespace A212168.P3330716971852985873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212168.P3330716971852985873

namespace A212168

/-- `lt[A000007(n), A225230(A233583(n+1))]` -/
def P3330716971852985873.Spec : Prop :=
  ∀ n, (P3330716971852985873.a n : ℤ) = A212168 (n + 1)

end A212168

/-! ## A212168.P4372818776683534902

`lt[A010057(n), A225230(A233583(n+1))]`
-/

namespace A212168.P4372818776683534902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212168.P4372818776683534902

namespace A212168

/-- `lt[A010057(n), A225230(A233583(n+1))]` -/
def P4372818776683534902.Spec : Prop :=
  ∀ n, (P4372818776683534902.a n : ℤ) = A212168 (n + 1)

end A212168

/-! ## A212168.P16094567242354009856

`lt[A055671(n), A225230(A233583(n+1))]`
-/

namespace A212168.P16094567242354009856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212168.P16094567242354009856

namespace A212168

/-- `lt[A055671(n), A225230(A233583(n+1))]` -/
def P16094567242354009856.Spec : Prop :=
  ∀ n, (P16094567242354009856.a n : ℤ) = A212168 (n + 1)

end A212168

/-! ## A212168.P14744010389601932884

`lt[A055672(n), A225230(A233583(n+1))]`
-/

namespace A212168.P14744010389601932884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212168.P14744010389601932884

namespace A212168

/-- `lt[A055672(n), A225230(A233583(n+1))]` -/
def P14744010389601932884.Spec : Prop :=
  ∀ n, (P14744010389601932884.a n : ℤ) = A212168 (n + 1)

end A212168

/-!
# A212169: List of highly composite numbers (A002182) with an exponent in its prime factorization that is at least as great as the number of positive exponents; intersection of A002182 and A212165.

The programs for A212169, there is no canonical definition to state claims against.
-/

/-! ## A212169.P2507736234861452217

`filter[A048166(n+1), A322586(#)]`
-/

namespace A212169.P2507736234861452217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A212169.P2507736234861452217

/-! ## A212169.P12584431341216232362

`∩[A002182(n+1), A048166(n+1)]`
-/

namespace A212169.P12584431341216232362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212169.P12584431341216232362

/-! ## A212169.P5714984219554049460

`∩[A048166(n+1), A097212(n+1)]`
-/

namespace A212169.P5714984219554049460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212169.P5714984219554049460

/-! ## A212169.P22221936232120551

`A083259(∩[A002182(n+1), A181824(n+1)])`
-/

namespace A212169.P22221936232120551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A212169.P22221936232120551

/-!
# A212170: a(n) = first counting number with n distinct positive square exponents in its prime factorization.

The programs for A212170, there is no canonical definition to state claims against.
-/

/-! ## A212170.P9551402911108605510

`∏[∏[A181821(A025192(n))]]`
-/

namespace A212170.P9551402911108605510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A025192 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A212170.P9551402911108605510

/-! ## A212170.P2575694238969791312

`∏[∏[A002110(n)²]/A002110(n)]`
-/

namespace A212170.P2575694238969791312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A002110 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A212170.P2575694238969791312

/-! ## A212170.P3522184787779147586

`A066120(n)/A006939(n)*A066120(n)`
-/

namespace A212170.P3522184787779147586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066120 n : ℚ) / (A006939 n : ℚ) * (A066120 n : ℚ)

end

end A212170.P3522184787779147586

/-!
# A212171: Prime signature of n (nonincreasing version): row n of table lists positive exponents in canonical prime factorization of n, in nonincreasing order.

The programs for A212171, there is no canonical definition to state claims against.
-/

/-! ## A212171.P15030071547457362983

`A124010(p?[A001842(∑[n])]+n)`
-/

namespace A212171.P15030071547457362983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat

end

end A212171.P15030071547457362983

/-! ## A212171.P15063608926999410310

`A124010(A124010(A209723(n+1))+n+1)`
-/

namespace A212171.P15063608926999410310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A124010 (A209723 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A212171.P15063608926999410310

/-! ## A212171.P8377269284488815545

`A124010(lt[A379200(n+1), n²])`
-/

namespace A212171.P8377269284488815545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379200 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A212171.P8377269284488815545

/-! ## A212171.P6407309690706640325

`gcd(A071681(n+3), A075929(n+1))`
-/

namespace A212171.P6407309690706640325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071681 (n + 3)) (A075929 (n + 1))

end

end A212171.P6407309690706640325

/-!
# A212172: Row n of table represents second signature of n: list of exponents >= 2 in canonical prime factorization of n, in nonincreasing order, or 0 if no such exponent exists.

The programs for A212172, there is no canonical definition to state claims against.
-/

/-! ## A212172.P14841661594203770437

`A001222(or(A185284(n), A274006(n+1)))`
-/

namespace A212172.P14841661594203770437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A185284 n) (A274006 (n + 1))).toNat

end

end A212172.P14841661594203770437

/-! ## A212172.P9536566509316731039

`A076526(or(A185284(n), A274006(n+1)))`
-/

namespace A212172.P9536566509316731039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (Int.lor (A185284 n) (A274006 (n + 1))).toNat

end

end A212172.P9536566509316731039

/-! ## A212172.P1723368060359847051

`A076558(or(A185284(n), A274006(n+1)))`
-/

namespace A212172.P1723368060359847051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076558 (Int.lor (A185284 n) (A274006 (n + 1))).toNat

end

end A212172.P1723368060359847051

/-! ## A212172.P12440517041106169086

`and(A346378(n), A372603(n+1))`
-/

namespace A212172.P12440517041106169086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A346378 n) (A372603 (n + 1))

end

end A212172.P12440517041106169086

/-! ## A212172.P11572264800445105409

`and(A372603(n+1), A397262(n))`
-/

namespace A212172.P11572264800445105409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A372603 (n + 1)) (A397262 n)

end

end A212172.P11572264800445105409

/-!
# A212173: First integer with same second signature as n (cf. A212172).

The programs for A212173, the canonical program `A212173.P4404807149425802269` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212173 has offset 1).

The definition of A212173 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212173.P4404807149425802269

`A057521(A046523(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A212173

/-- `A057521(A046523(n+1))` -/
def P4404807149425802269.Spec : Prop :=
  ∀ n, P4404807149425802269.a n = A212173 (n + 1)

theorem P4404807149425802269.correct : P4404807149425802269.Spec := by
  intro n
  simp only [A212173, Nat.add_sub_cancel]

end A212173

/-! ## A212173.P7091471095276563533

`A046523(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))`
-/

namespace A212173.P7091471095276563533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A212173.P7091471095276563533

namespace A212173

/-- `A046523(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))` -/
def P7091471095276563533.Spec : Prop :=
  ∀ n, P7091471095276563533.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P11863186448300254930

`A064549(A292589(n+1))`
-/

namespace A212173.P11863186448300254930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A292589 (n + 1)).toNat

end

end A212173.P11863186448300254930

namespace A212173

/-- `A064549(A292589(n+1))` -/
def P11863186448300254930.Spec : Prop :=
  ∀ n, P11863186448300254930.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P10487873827449232748

`A046523((n+1)/A055231(n+1))`
-/

namespace A212173.P10487873827449232748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A212173.P10487873827449232748

namespace A212173

/-- `A046523((n+1)/A055231(n+1))` -/
def P10487873827449232748.Spec : Prop :=
  ∀ n, P10487873827449232748.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P12185741596262013260

`A046523(gcd(n+1, A003557(n+1)²))`
-/

namespace A212173.P12185741596262013260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.gcd (n + 1 : ℤ) (A003557 (n + 1) ^ 2))

end

end A212173.P12185741596262013260

namespace A212173

/-- `A046523(gcd(n+1, A003557(n+1)²))` -/
def P12185741596262013260.Spec : Prop :=
  ∀ n, P12185741596262013260.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P6088052506854182285

`A046523(A003557(n+1)*A071773(n+1))`
-/

namespace A212173.P6088052506854182285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A003557 (n + 1) * A071773 (n + 1)).toNat

end

end A212173.P6088052506854182285

namespace A212173

/-- `A046523(A003557(n+1)*A071773(n+1))` -/
def P6088052506854182285.Spec : Prop :=
  ∀ n, P6088052506854182285.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P8376196027692842056

`A292589(A007948(n+1))*A292589(n+1)`
-/

namespace A212173.P8376196027692842056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292589 (A007948 (n + 1)).toNat * A292589 (n + 1)

end

end A212173.P8376196027692842056

namespace A212173

/-- `A292589(A007948(n+1))*A292589(n+1)` -/
def P8376196027692842056.Spec : Prop :=
  ∀ n, P8376196027692842056.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P17927487286938640369

`A292589(n+1)²/A292589(A003557(n+1))`
-/

namespace A212173.P17927487286938640369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292589 (n + 1) ^ 2 : ℚ) / (A292589 (A003557 (n + 1)).toNat : ℚ)

end

end A212173.P17927487286938640369

namespace A212173

/-- `A292589(n+1)²/A292589(A003557(n+1))` -/
def P17927487286938640369.Spec : Prop :=
  ∀ n, P17927487286938640369.a n = (A212173 (n + 1) : ℚ)

end A212173

/-! ## A212173.P12277633404100737339

`A007947(A292589(n+1)²)*A292589(n+1)`
-/

namespace A212173.P12277633404100737339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A292589 (n + 1) ^ 2).toNat * A292589 (n + 1)

end

end A212173.P12277633404100737339

namespace A212173

/-- `A007947(A292589(n+1)²)*A292589(n+1)` -/
def P12277633404100737339.Spec : Prop :=
  ∀ n, P12277633404100737339.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P6362082352420764246

`A292586(A292589(n+1)²)*A292589(n+1)`
-/

namespace A212173.P6362082352420764246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292586 (A292589 (n + 1) ^ 2).toNat * A292589 (n + 1)

end

end A212173.P6362082352420764246

namespace A212173

/-- `A292586(A292589(n+1)²)*A292589(n+1)` -/
def P6362082352420764246.Spec : Prop :=
  ∀ n, P6362082352420764246.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P8710328987708697479

`A292589((n+1)*A007947(A003557(n+1)))`
-/

namespace A212173.P8710328987708697479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292589 ((n + 1 : ℤ) * A007947 (A003557 (n + 1)).toNat).toNat

end

end A212173.P8710328987708697479

namespace A212173

/-- `A292589((n+1)*A007947(A003557(n+1)))` -/
def P8710328987708697479.Spec : Prop :=
  ∀ n, P8710328987708697479.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P8104403404631736364

`A046523(A000189((n+1)*A000189(n+1)))`
-/

namespace A212173.P8104403404631736364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000189 ((n + 1 : ℤ) * A000189 (n + 1)).toNat).toNat

end

end A212173.P8104403404631736364

namespace A212173

/-- `A046523(A000189((n+1)*A000189(n+1)))` -/
def P8104403404631736364.Spec : Prop :=
  ∀ n, P8104403404631736364.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P11147587419684051649

`A046056(A000688(n+1)-gcd(3, A000079(n))+1)`
-/

namespace A212173.P11147587419684051649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (A000688 (n + 1) - (Int.gcd 3 (A000079 n) : ℤ) + 1).toNat

end

end A212173.P11147587419684051649

namespace A212173

/-- `A046056(A000688(n+1)-gcd(3, A000079(n))+1)` -/
def P11147587419684051649.Spec : Prop :=
  ∀ n, P11147587419684051649.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P1505171654022821559

`A106614(A292589(n+1)²)/A292589(A292589(n+1))`
-/

namespace A212173.P1505171654022821559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106614 (A292589 (n + 1) ^ 2).toNat : ℚ) / (A292589 (A292589 (n + 1)).toNat : ℚ)

end

end A212173.P1505171654022821559

namespace A212173

/-- `A106614(A292589(n+1)²)/A292589(A292589(n+1))` -/
def P1505171654022821559.Spec : Prop :=
  ∀ n, P1505171654022821559.a n = (A212173 (n + 1) : ℚ)

end A212173

/-! ## A212173.P8972726533995750872

`A046523(A000190(A000190((n+1)²)))`
-/

namespace A212173.P8972726533995750872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000190 (A000190 ((n + 1) ^ 2)).toNat).toNat

end

end A212173.P8972726533995750872

namespace A212173

/-- `A046523(A000190(A000190((n+1)²)))` -/
def P8972726533995750872.Spec : Prop :=
  ∀ n, P8972726533995750872.a n = A212173 (n + 1)

end A212173

/-! ## A212173.P2728014986374018635

`A292589((n+1)*A007947(A076332(n+1)))`
-/

namespace A212173.P2728014986374018635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292589 ((n + 1 : ℤ) * A007947 (A076332 (n + 1)).toNat).toNat

end

end A212173.P2728014986374018635

namespace A212173

/-- `A292589((n+1)*A007947(A076332(n+1)))` -/
def P2728014986374018635.Spec : Prop :=
  ∀ n, P2728014986374018635.a n = A212173 (n + 1)

end A212173

/-!
# A212174: Row n of table represents second signature of A013929(n): list of exponents >= 2 in canonical prime factorization of A013929(n), in nonincreasing order.

The programs for A212174, there is no canonical definition to state claims against.
-/

/-! ## A212174.P926852595639468632

`A212172(lt[0, A212172(n+1)]+1)`
-/

namespace A212174.P926852595639468632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A212174.P926852595639468632

/-! ## A212174.P8801137828832976352

`A317765(p?[A000041(A124010(n+1))]²)`
-/

namespace A212174.P8801137828832976352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A124010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317765 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A212174.P8801137828832976352

/-! ## A212174.P2190094583726188303

`A332294(p?[A000041(A124010(n+1))]²)`
-/

namespace A212174.P2190094583726188303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A124010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A212174.P2190094583726188303

/-! ## A212174.P4630211801908382020

`A332741(p?[A000041(A124010(n+1))]²)`
-/

namespace A212174.P4630211801908382020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A124010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332741 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A212174.P4630211801908382020

/-! ## A212174.P15430844379127510889

`A332294(p?[A332280(A124010(n+1))]²)`
-/

namespace A212174.P15430844379127510889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 (A124010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A212174.P15430844379127510889

/-!
# A212176: Row n of table lists exponents in canonical prime factorization of A181800(n) (n-th powerful number that is the first integer of its prime signature), in nonincreasing order.

The programs for A212176, there is no canonical definition to state claims against.
-/

/-! ## A212176.P14818678767809462083

`(A176210(n+3)-1)%A212010(3*n+5)`
-/

namespace A212176.P14818678767809462083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176210 (n + 3) - 1) (A212010 (3 * n + 5))

end

end A212176.P14818678767809462083

/-! ## A212176.P16505825224729080985

`A176210(n+3)+A057428(A001371(n))`
-/

namespace A212176.P16505825224729080985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176210 (n + 3) + A057428 (A001371 n).toNat

end

end A212176.P16505825224729080985

/-! ## A212176.P12921105991753711254

`A176210(n+3)+A057428(A036615(n))`
-/

namespace A212176.P12921105991753711254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176210 (n + 3) + A057428 (A036615 n).toNat

end

end A212176.P12921105991753711254

/-! ## A212176.P4736341064312242578

`A176210(n+3)-A060576(A022086(n))`
-/

namespace A212176.P4736341064312242578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176210 (n + 3) - A060576 (A022086 n).toNat

end

end A212176.P4736341064312242578

/-! ## A212176.P792077482574542042

`A176210(n+3)-A168185(A214825(n))`
-/

namespace A212176.P792077482574542042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176210 (n + 3) - A168185 (A214825 n).toNat

end

end A212176.P792077482574542042

/-!
# A212177: Number of exponents >= 2 in the canonical prime factorization of the n-th nonsquarefree number (A013929(n)).

The programs for A212177, the canonical program `A212177.P15343509916105935241` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212177 has offset 1).

The definition of A212177 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212177.P15343509916105935241

`A056170(A013929(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A212177

/-- `A056170(A013929(n+1))` -/
def P15343509916105935241.Spec : Prop :=
  ∀ n, P15343509916105935241.a n = A212177 (n + 1)

theorem P15343509916105935241.correct : P15343509916105935241.Spec := by
  intro n
  simp only [A212177, Nat.add_sub_cancel]

end A212177

/-! ## A212177.P3563866381432259569

`A001221(A084936(n+1))`
-/

namespace A212177.P3563866381432259569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A084936 (n + 1)).toNat

end

end A212177.P3563866381432259569

namespace A212177

/-- `A001221(A084936(n+1))` -/
def P3563866381432259569.Spec : Prop :=
  ∀ n, P3563866381432259569.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P14791671577852064843

`A001221(A087050(n+1))`
-/

namespace A212177.P14791671577852064843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A087050 (n + 1)).toNat

end

end A212177.P14791671577852064843

namespace A212177

/-- `A001221(A087050(n+1))` -/
def P14791671577852064843.Spec : Prop :=
  ∀ n, P14791671577852064843.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P1926286725974606479

`A001221(A368040(n+1))`
-/

namespace A212177.P1926286725974606479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A368040 (n + 1)).toNat

end

end A212177.P1926286725974606479

namespace A212177

/-- `A001221(A368040(n+1))` -/
def P1926286725974606479.Spec : Prop :=
  ∀ n, P1926286725974606479.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P10351632397866593408

`∑{p}[A084936(n+1), A001222(#)]`
-/

namespace A212177.P10351632397866593408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A212177.P10351632397866593408

namespace A212177

/-- `∑{p}[A084936(n+1), A001222(#)]` -/
def P10351632397866593408.Spec : Prop :=
  ∀ n, P10351632397866593408.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P15093406526180654144

`A001222(∏{p}[A084936(n+1), #])`
-/

namespace A212177.P15093406526180654144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A212177.P15093406526180654144

namespace A212177

/-- `A001222(∏{p}[A084936(n+1), #])` -/
def P15093406526180654144.Spec : Prop :=
  ∀ n, P15093406526180654144.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P14520920191436742652

`A001222(A368040(n+1))-A275699(n+1)`
-/

namespace A212177.P14520920191436742652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A368040 (n + 1)).toNat - A275699 (n + 1)

end

end A212177.P14520920191436742652

namespace A212177

/-- `A001222(A368040(n+1))-A275699(n+1)` -/
def P14520920191436742652.Spec : Prop :=
  ∀ n, P14520920191436742652.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P6452992945508880001

`A001221(A013929(n+1)/A015049(n+1))`
-/

namespace A212177.P6452992945508880001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) / (A015049 (n + 1) : ℚ))).toNat

end

end A212177.P6452992945508880001

namespace A212177

/-- `A001221(A013929(n+1)/A015049(n+1))` -/
def P6452992945508880001.Spec : Prop :=
  ∀ n, P6452992945508880001.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P9224284113739657740

`A001221(A013929(n+1)/A015051(n+1))`
-/

namespace A212177.P9224284113739657740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) / (A015051 (n + 1) : ℚ))).toNat

end

end A212177.P9224284113739657740

namespace A212177

/-- `A001221(A013929(n+1)/A015051(n+1))` -/
def P9224284113739657740.Spec : Prop :=
  ∀ n, P9224284113739657740.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P4210462631050270470

`A001221(A013929(n+1)/A076333(n+1))`
-/

namespace A212177.P4210462631050270470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) / (A076333 (n + 1) : ℚ))).toNat

end

end A212177.P4210462631050270470

namespace A212177

/-- `A001221(A013929(n+1)/A076333(n+1))` -/
def P4210462631050270470.Spec : Prop :=
  ∀ n, P4210462631050270470.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P17725524444091464259

`A056170(A162966(n+2))`
-/

namespace A212177.P17725524444091464259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A162966 (n + 2)).toNat

end

end A212177.P17725524444091464259

namespace A212177

/-- `A056170(A162966(n+2))` -/
def P17725524444091464259.Spec : Prop :=
  ∀ n, P17725524444091464259.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P3953862918555918314

`A322811(A071773(A013929(n+1))²)`
-/

namespace A212177.P3953862918555918314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A071773 (A013929 (n + 1)).toNat ^ 2).toNat

end

end A212177.P3953862918555918314

namespace A212177

/-- `A322811(A071773(A013929(n+1))²)` -/
def P3953862918555918314.Spec : Prop :=
  ∀ n, P3953862918555918314.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P6724065273295844285

`A056170(A046027(n+1)*A384064(n+1))`
-/

namespace A212177.P6724065273295844285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A046027 (n + 1) * A384064 (n + 1)).toNat

end

end A212177.P6724065273295844285

namespace A212177

/-- `A056170(A046027(n+1)*A384064(n+1))` -/
def P6724065273295844285.Spec : Prop :=
  ∀ n, P6724065273295844285.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P18428638481578120043

`A001221(A003557(A013929(n+1))²)`
-/

namespace A212177.P18428638481578120043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003557 (A013929 (n + 1)).toNat ^ 2).toNat

end

end A212177.P18428638481578120043

namespace A212177

/-- `A001221(A003557(A013929(n+1))²)` -/
def P18428638481578120043.Spec : Prop :=
  ∀ n, P18428638481578120043.a n = A212177 (n + 1)

end A212177

/-! ## A212177.P12503658071917471209

`A001222(A007947(A084936(n+1)²))`
-/

namespace A212177.P12503658071917471209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (A084936 (n + 1) ^ 2).toNat).toNat

end

end A212177.P12503658071917471209

namespace A212177

/-- `A001222(A007947(A084936(n+1)²))` -/
def P12503658071917471209.Spec : Prop :=
  ∀ n, P12503658071917471209.a n = A212177 (n + 1)

end A212177

/-!
# A212178: Number of exponents >= 2 in canonical prime factorization of A025487(n) (first integer of each prime signature).

The programs for A212178, there is no canonical definition to state claims against.
-/

/-! ## A212178.P14615842291524731098

`A056170(A025487(n+1))`
-/

namespace A212178.P14615842291524731098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A025487 (n + 1)).toNat

end

end A212178.P14615842291524731098

/-! ## A212178.P1959541457820819778

`val(A181822(n+1), 3)`
-/

namespace A212178.P1959541457820819778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181822 (n + 1)).toNat 3

end

end A212178.P1959541457820819778

/-! ## A212178.P13998027557971185486

`A087436(A181820(n+1))`
-/

namespace A212178.P13998027557971185486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A181820 (n + 1)).toNat

end

end A212178.P13998027557971185486

/-! ## A212178.P913765198613435992

`A001221(gcd(A247451(n+1), A307107(n+1)))`
-/

namespace A212178.P913765198613435992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A247451 (n + 1)) (A307107 (n + 1)))

end

end A212178.P913765198613435992

/-! ## A212178.P1137155335865476497

`A061394(n+1)-A007814(A181820(n+1))`
-/

namespace A212178.P1137155335865476497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (n + 1) - A007814 (A181820 (n + 1)).toNat

end

end A212178.P1137155335865476497

/-! ## A212178.P4325001768615622348

`A001222(∏{p}[A307107(n+1), #])`
-/

namespace A212178.P4325001768615622348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A212178.P4325001768615622348

/-! ## A212178.P11344662550236400510

`A000005(∏{p}[A307107(n+1), A000005(#)])-1`
-/

namespace A212178.P11344662550236400510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p).toNat - 1

end

end A212178.P11344662550236400510

/-! ## A212178.P14490757614426055104

`A001222(∏{e}[A307107(n+1), 3-A330986(#+1)])`
-/

namespace A212178.P14490757614426055104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (3 - A330986 (Nat.factorization (f1 n).natAbs p + 1))).toNat

end

end A212178.P14490757614426055104

/-! ## A212178.P7704947466343483727

`∑{e}[A025487(n+1), A057427(#-1)]`
-/

namespace A212178.P7704947466343483727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057427 (Nat.factorization (f1 n).natAbs p - 1)

end

end A212178.P7704947466343483727

/-! ## A212178.P13076065110623619409

`∑{e}[A025487(n+1), A001222(A008578(#))]`
-/

namespace A212178.P13076065110623619409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (A008578 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A212178.P13076065110623619409

/-! ## A212178.P18141467295958588677

`∑{e}[A025487(n+1), A070288(A008578(#)²)]`
-/

namespace A212178.P18141467295958588677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A070288 (A008578 (Nat.factorization (f1 n).natAbs p) ^ 2).toNat

end

end A212178.P18141467295958588677

/-! ## A212178.P2551839815983149070

`∑{e}[A025487(n+1), A318366(A008578(#)²)]`
-/

namespace A212178.P2551839815983149070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A318366 (A008578 (Nat.factorization (f1 n).natAbs p) ^ 2).toNat

end

end A212178.P2551839815983149070

/-! ## A212178.P8822238442854139186

`A001221(A307107(n+1))`
-/

namespace A212178.P8822238442854139186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A307107 (n + 1)).toNat

end

end A212178.P8822238442854139186

/-! ## A212178.P18017237463476401980

`A001221(A025487(n+1)/A247451(n+1))`
-/

namespace A212178.P18017237463476401980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A025487 (n + 1) : ℚ) / (A247451 (n + 1) : ℚ))).toNat

end

end A212178.P18017237463476401980

/-! ## A212178.P13139004891221295299

`A061395(A025487(n+1)/A247451(n+1))`
-/

namespace A212178.P13139004891221295299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A025487 (n + 1) : ℚ) / (A247451 (n + 1) : ℚ))).toNat

end

end A212178.P13139004891221295299

/-! ## A212178.P18092605697784092076

`A001221(A025487(n+1)/∏{p}[A025487(n+1), #])`
-/

namespace A212178.P18092605697784092076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A025487 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ))).toNat

end

end A212178.P18092605697784092076

/-! ## A212178.P7404434938466135150

`A001221(A331188(A181815(n+1)))`
-/

namespace A212178.P7404434938466135150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A331188 (A181815 (n + 1)).toNat).toNat

end

end A212178.P7404434938466135150

/-!
# A212179: Number of distinct prime factors of A181800(n) (n-th powerful number that is the first integer of its prime signature).

The programs for A212179, there is no canonical definition to state claims against.
-/

/-! ## A212179.P1863450568281600646

`A001221(A181800(n+1))`
-/

namespace A212179.P1863450568281600646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181800 (n + 1)).toNat

end

end A212179.P1863450568281600646

/-! ## A212179.P12166344961146078793

`A212639(n+1)-A212645(n+1)`
-/

namespace A212179.P12166344961146078793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212639 (n + 1) - A212645 (n + 1)

end

end A212179.P12166344961146078793

/-! ## A212179.P16216467730639030704

`A001222(A181800(n+1)/A212638(n+1))`
-/

namespace A212179.P16216467730639030704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A181800 (n + 1) : ℚ) / (A212638 (n + 1) : ℚ))).toNat

end

end A212179.P16216467730639030704

/-! ## A212179.P11964564814372341197

`A076558(A181800(n+1)/A212638(n+1))`
-/

namespace A212179.P11964564814372341197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076558 (SequenceMachineLib.roundAway ((A181800 (n + 1) : ℚ) / (A212638 (n + 1) : ℚ))).toNat

end

end A212179.P11964564814372341197

/-! ## A212179.P15600568624985762892

`A085082(A181800(n+1)/A212638(n+1))-1`
-/

namespace A212179.P15600568624985762892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (SequenceMachineLib.roundAway ((A181800 (n + 1) : ℚ) / (A212638 (n + 1) : ℚ))).toNat - 1

end

end A212179.P15600568624985762892

/-! ## A212179.P13951159503923254330

`∑{p}[A212638(n+1), A001222(#)]`
-/

namespace A212179.P13951159503923254330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A212179.P13951159503923254330

/-! ## A212179.P16395897647618141230

`∑{p}[A212638(n+1), A027195(#)!]`
-/

namespace A212179.P16395897647618141230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (A027195 p).toNat

end

end A212179.P16395897647618141230

/-! ## A212179.P13185915425412137139

`A322584(∏{p}[A212638(n+1), #])-1`
-/

namespace A212179.P13185915425412137139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) - 1

end

end A212179.P13185915425412137139

/-! ## A212179.P14103609955575588632

`∑{p}[A212638(n+1), A067402(A004526(#))]`
-/

namespace A212179.P14103609955575588632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A067402 (A004526 p).toNat

end

end A212179.P14103609955575588632

/-! ## A212179.P16649249418962013098

`∑{p}[A181800(n+1), A001222(#)]`
-/

namespace A212179.P16649249418962013098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A212179.P16649249418962013098

/-! ## A212179.P11329297385899880659

`A001222(∏{p}[A181800(n+1), #])`
-/

namespace A212179.P11329297385899880659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A212179.P11329297385899880659

/-! ## A212179.P5185523053757235318

`∑{p}[A181800(n+1), A053616(#+2)]`
-/

namespace A212179.P5185523053757235318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A053616 (p + 2)

end

end A212179.P5185523053757235318

/-! ## A212179.P13199619745521384892

`A322584(∏{p}[A181800(n+1), #])-1`
-/

namespace A212179.P13199619745521384892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) - 1

end

end A212179.P13199619745521384892

/-! ## A212179.P4178589810981564814

`∑{p}[A181800(n+1), and(1, A071149(#))]`
-/

namespace A212179.P4178589810981564814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.land 1 (A071149 p)

end

end A212179.P4178589810981564814

/-! ## A212179.P1567643233939285248

`∑{p}[A181800(n+1), and(1, A082453(#))]`
-/

namespace A212179.P1567643233939285248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.land 1 (A082453 p)

end

end A212179.P1567643233939285248

/-! ## A212179.P7178526316241667756

`∑{p}[A181800(n+1), and(1, A237109(#))]`
-/

namespace A212179.P7178526316241667756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.land 1 (A237109 p)

end

end A212179.P7178526316241667756

/-! ## A212179.P8119619087478577637

`A001222(∏{e}[A181800(n+1), A210186(#)])`
-/

namespace A212179.P8119619087478577637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A210186 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A212179.P8119619087478577637

/-!
# A212180: Number of distinct second signatures (cf. A212172) represented among divisors of n.

The programs for A212180, the canonical program `A212180.P3894303250427634049` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212180 has offset 1).

The definition of A212180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212180.P3894303250427634049

`A085082(A003557(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A212180

/-- `A085082(A003557(n+1))` -/
def P3894303250427634049.Spec : Prop :=
  ∀ n, P3894303250427634049.a n = A212180 (n + 1)

theorem P3894303250427634049.correct : P3894303250427634049.Spec := by
  intro n
  simp only [A212180, Nat.add_sub_cancel]

end A212180

/-! ## A212180.P13270613083171549562

`A238690(A295879(n+1))`
-/

namespace A212180.P13270613083171549562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A295879 (n + 1)).toNat

end

end A212180.P13270613083171549562

namespace A212180

/-- `A238690(A295879(n+1))` -/
def P13270613083171549562.Spec : Prop :=
  ∀ n, P13270613083171549562.a n = A212180 (n + 1)

end A212180

/-! ## A212180.P2070599344461056861

`A322584(A292589(n+1))`
-/

namespace A212180.P2070599344461056861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (A292589 (n + 1)).toNat

end

end A212180.P2070599344461056861

namespace A212180

/-- `A322584(A292589(n+1))` -/
def P2070599344461056861.Spec : Prop :=
  ∀ n, P2070599344461056861.a n = A212180 (n + 1)

end A212180

/-! ## A212180.P14073944114630739464

`A085082(A336551(n+1)+1)`
-/

namespace A212180.P14073944114630739464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A336551 (n + 1) + 1).toNat

end

end A212180.P14073944114630739464

namespace A212180

/-- `A085082(A336551(n+1)+1)` -/
def P14073944114630739464.Spec : Prop :=
  ∀ n, P14073944114630739464.a n = A212180 (n + 1)

end A212180

/-! ## A212180.P4535217526574823280

`∑{d}[A292589(n+1), A322585(#)]`
-/

namespace A212180.P4535217526574823280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A212180.P4535217526574823280

namespace A212180

/-- `∑{d}[A292589(n+1), A322585(#)]` -/
def P4535217526574823280.Spec : Prop :=
  ∀ n, P4535217526574823280.a n = A212180 (n + 1)

end A212180

/-! ## A212180.P1262823325925651536

`A085082((n+1)/A007947(n+1))`
-/

namespace A212180.P1262823325925651536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A212180.P1262823325925651536

namespace A212180

/-- `A085082((n+1)/A007947(n+1))` -/
def P1262823325925651536.Spec : Prop :=
  ∀ n, P1262823325925651536.a n = A212180 (n + 1)

end A212180

/-! ## A212180.P16375572185240511655

`A000120(∏{e}[n+1, A007583(#)-2])`
-/

namespace A212180.P16375572185240511655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∏ p ∈ Nat.primeFactors (f1 n), (A007583 (Nat.factorization (f1 n) p) - 2)).toNat

end

end A212180.P16375572185240511655

namespace A212180

/-- `A000120(∏{e}[n+1, A007583(#)-2])` -/
def P16375572185240511655.Spec : Prop :=
  ∀ n, P16375572185240511655.a n = A212180 (n + 1)

end A212180

/-! ## A212180.P2598790975263770287

`A001222(A046523(A069626(n+1)+A046523(n+1)))`
-/

namespace A212180.P2598790975263770287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046523 (A069626 (n + 1) + A046523 (n + 1)).toNat).toNat

end

end A212180.P2598790975263770287

namespace A212180

/-- `A001222(A046523(A069626(n+1)+A046523(n+1)))` -/
def P2598790975263770287.Spec : Prop :=
  ∀ n, P2598790975263770287.a n = A212180 (n + 1)

end A212180

/-! ## A212180.P7317422488723907340

`A000194(∏{e}[A000196((n+1)*(n+1)), A002061(#)])`
-/

namespace A212180.P7317422488723907340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1) * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002061 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A212180.P7317422488723907340

namespace A212180

/-- `A000194(∏{e}[A000196((n+1)*(n+1)), A002061(#)])` -/
def P7317422488723907340.Spec : Prop :=
  ∀ n, P7317422488723907340.a n = A212180 (n + 1)

end A212180

/-! ## A212180.P15140821487660156634

`A003056(∏{e}[A000196((n+1)*(n+1)), A000217(#)])`
-/

namespace A212180.P15140821487660156634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1) * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000217 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A212180.P15140821487660156634

namespace A212180

/-- `A003056(∏{e}[A000196((n+1)*(n+1)), A000217(#)])` -/
def P15140821487660156634.Spec : Prop :=
  ∀ n, P15140821487660156634.a n = A212180 (n + 1)

end A212180

/-!
# A212181: Largest odd divisor of tau(n): a(n) = A000265(A000005(n)).

The programs for A212181, the canonical program `A212181.P2436523797786551846` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212181 has offset 1).

The definition of A212181 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212181.P2436523797786551846

`A000265(A000005(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A212181

/-- `A000265(A000005(n+1))` -/
def P2436523797786551846.Spec : Prop :=
  ∀ n, P2436523797786551846.a n = A212181 (n + 1)

theorem P2436523797786551846.correct : P2436523797786551846.Spec := by
  intro n
  simp only [A212181, Nat.add_sub_cancel]

end A212181

/-! ## A212181.P14133733360167425525

`A000265(∏{e}[n+1, #+1])`
-/

namespace A212181.P14133733360167425525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A212181.P14133733360167425525

namespace A212181

/-- `A000265(∏{e}[n+1, #+1])` -/
def P14133733360167425525.Spec : Prop :=
  ∀ n, P14133733360167425525.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P6727255827226036034

`A028234(2*∏{e}[n+1, #+1])`
-/

namespace A212181.P6727255827226036034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A212181.P6727255827226036034

namespace A212181

/-- `A028234(2*∏{e}[n+1, #+1])` -/
def P6727255827226036034.Spec : Prop :=
  ∀ n, P6727255827226036034.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P8269687366704204523

`A000265(Δ[A006218(n)])`
-/

namespace A212181.P8269687366704204523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A212181.P8269687366704204523

namespace A212181

/-- `A000265(Δ[A006218(n)])` -/
def P8269687366704204523.Spec : Prop :=
  ∀ n, P8269687366704204523.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P7800656758663187800

`A000265(Δ[A054519(n)])`
-/

namespace A212181.P7800656758663187800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A212181.P7800656758663187800

namespace A212181

/-- `A000265(Δ[A054519(n)])` -/
def P7800656758663187800.Spec : Prop :=
  ∀ n, P7800656758663187800.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P5191048785194868859

`A000265(A062011(n+1))`
-/

namespace A212181.P5191048785194868859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062011 (n + 1)).toNat

end

end A212181.P5191048785194868859

namespace A212181

/-- `A000265(A062011(n+1))` -/
def P5191048785194868859.Spec : Prop :=
  ∀ n, P5191048785194868859.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P14578160248755313203

`A000265(A131089(n+1))`
-/

namespace A212181.P14578160248755313203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A131089 (n + 1)).toNat

end

end A212181.P14578160248755313203

namespace A212181

/-- `A000265(A131089(n+1))` -/
def P14578160248755313203.Spec : Prop :=
  ∀ n, P14578160248755313203.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P1553391855982804767

`A000265(A145154(n+1))`
-/

namespace A212181.P1553391855982804767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A145154 (n + 1)).toNat

end

end A212181.P1553391855982804767

namespace A212181

/-- `A000265(A145154(n+1))` -/
def P1553391855982804767.Spec : Prop :=
  ∀ n, P1553391855982804767.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P4840090189660331265

`A086767(A114003(n+1))`
-/

namespace A212181.P4840090189660331265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 (A114003 (n + 1)).toNat

end

end A212181.P4840090189660331265

namespace A212181

/-- `A086767(A114003(n+1))` -/
def P4840090189660331265.Spec : Prop :=
  ∀ n, P4840090189660331265.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P5073335919059169096

`A127197(A105555(n+1))`
-/

namespace A212181.P5073335919059169096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127197 (A105555 (n + 1)).toNat

end

end A212181.P5073335919059169096

namespace A212181

/-- `A127197(A105555(n+1))` -/
def P5073335919059169096.Spec : Prop :=
  ∀ n, P5073335919059169096.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P4110828484633585458

`A091043(A184389(n+1))`
-/

namespace A212181.P4110828484633585458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091043 (A184389 (n + 1)).toNat

end

end A212181.P4110828484633585458

namespace A212181

/-- `A091043(A184389(n+1))` -/
def P4110828484633585458.Spec : Prop :=
  ∀ n, P4110828484633585458.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P1979178438560497964

`A000265(A032741(n+1)+1)`
-/

namespace A212181.P1979178438560497964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A032741 (n + 1) + 1).toNat

end

end A212181.P1979178438560497964

namespace A212181

/-- `A000265(A032741(n+1)+1)` -/
def P1979178438560497964.Spec : Prop :=
  ∀ n, P1979178438560497964.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P8919998894988179577

`A028234(2*A000005(n+1))`
-/

namespace A212181.P8919998894988179577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A000005 (n + 1)).toNat

end

end A212181.P8919998894988179577

namespace A212181

/-- `A028234(2*A000005(n+1))` -/
def P8919998894988179577.Spec : Prop :=
  ∀ n, P8919998894988179577.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P13407234759220979493

`A072963(2*A000005(n+1))`
-/

namespace A212181.P13407234759220979493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (2 * A000005 (n + 1)).toNat

end

end A212181.P13407234759220979493

namespace A212181

/-- `A072963(2*A000005(n+1))` -/
def P13407234759220979493.Spec : Prop :=
  ∀ n, P13407234759220979493.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P14607471097277441348

`A093803(2*A000005(n+1))`
-/

namespace A212181.P14607471097277441348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (2 * A000005 (n + 1)).toNat

end

end A212181.P14607471097277441348

namespace A212181

/-- `A093803(2*A000005(n+1))` -/
def P14607471097277441348.Spec : Prop :=
  ∀ n, P14607471097277441348.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P8363516423395709133

`A139391(2*A000005(n+1))`
-/

namespace A212181.P8363516423395709133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (2 * A000005 (n + 1)).toNat

end

end A212181.P8363516423395709133

namespace A212181

/-- `A139391(2*A000005(n+1))` -/
def P8363516423395709133.Spec : Prop :=
  ∀ n, P8363516423395709133.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P14892237010276576907

`A163575(2*A000005(n+1))`
-/

namespace A212181.P14892237010276576907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (2 * A000005 (n + 1)).toNat

end

end A212181.P14892237010276576907

namespace A212181

/-- `A163575(2*A000005(n+1))` -/
def P14892237010276576907.Spec : Prop :=
  ∀ n, P14892237010276576907.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P8310184886757971037

`A171435(2*A000005(n+1))`
-/

namespace A212181.P8310184886757971037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A000005 (n + 1)).toNat

end

end A212181.P8310184886757971037

namespace A212181

/-- `A171435(2*A000005(n+1))` -/
def P8310184886757971037.Spec : Prop :=
  ∀ n, P8310184886757971037.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P6086863149393348766

`A302044(2*A000005(n+1))`
-/

namespace A212181.P6086863149393348766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * A000005 (n + 1)).toNat

end

end A212181.P6086863149393348766

namespace A212181

/-- `A302044(2*A000005(n+1))` -/
def P6086863149393348766.Spec : Prop :=
  ∀ n, P6086863149393348766.a n = A212181 (n + 1)

end A212181

/-! ## A212181.P16989657874543148472

`A306546(2*A000005(n+1))`
-/

namespace A212181.P16989657874543148472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306546 (2 * A000005 (n + 1)).toNat

end

end A212181.P16989657874543148472

namespace A212181

/-- `A306546(2*A000005(n+1))` -/
def P16989657874543148472.Spec : Prop :=
  ∀ n, P16989657874543148472.a n = A212181 (n + 1)

end A212181

/-!
# A212182: Irregular triangle read by rows T(n,k): T(1,1) = 0; for n > 1, row n lists exponents of distinct prime factors of the n-th highly composite number (A002182(n)), where column k = 1, 2, 3, ..., omega(A002182(n)) = A108602(n).

The programs for A212182, there is no canonical definition to state claims against.
-/

/-! ## A212182.P11747062336898952676

`A336570(A365314(n+2))-char[4*n]`
-/

namespace A212182.P11747062336898952676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336570 (A365314 (n + 2)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A212182.P11747062336898952676

/-! ## A212182.P13282393050632066666

`A001222(gcd(A100367(n+1), A147909(n+1)))`
-/

namespace A212182.P13282393050632066666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A100367 (n + 1)) (A147909 (n + 1)))

end

end A212182.P13282393050632066666

/-! ## A212182.P2351112809745599191

`gcd(A117172(n+1), A117194(A229469(n+1)))`
-/

namespace A212182.P2351112809745599191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117172 (n + 1)) (A117194 (A229469 (n + 1)).toNat)

end

end A212182.P2351112809745599191

/-! ## A212182.P229266236211649134

`A275849(A100113(n+1)^(val(n+1, 2)+1))`
-/

namespace A212182.P229266236211649134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A100113 (n + 1) ^ (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

end

end A212182.P229266236211649134

/-! ## A212182.P1952733371076623052

`A334029(round(C(n, 2)+n/2)-A088526(n+1))`
-/

namespace A212182.P1952733371076623052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) + (n : ℚ) / 2) - A088526 (n + 1)).toNat

end

end A212182.P1952733371076623052

/-!
# A212183: Largest odd divisor of A002183(n) (number of divisors of n-th highly composite number).

The programs for A212183, there is no canonical definition to state claims against.
-/

/-! ## A212183.P431121918168470764

`A000265(A002183(n+1))`
-/

namespace A212183.P431121918168470764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002183 (n + 1)).toNat

end

end A212183.P431121918168470764

/-! ## A212183.P973421803843087081

`A212181(A002182(n+1))`
-/

namespace A212183.P973421803843087081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (A002182 (n + 1)).toNat

end

end A212183.P973421803843087081

/-! ## A212183.P1189886066564662492

`A002183(n+1)/gcd(A000079(n), A002183(n+1))`
-/

namespace A212183.P1189886066564662492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002183 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A002183 (n + 1)) : ℚ)

end

end A212183.P1189886066564662492

/-! ## A212183.P13550861330773567095

`∑{d}[A002183(n+1), #%2*A000010(#)]`
-/

namespace A212183.P13550861330773567095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d % 2 : ℕ) : ℤ) * A000010 d

end

end A212183.P13550861330773567095

/-! ## A212183.P6799944427417420361

`A331286(A329902(n+1))`
-/

namespace A212183.P6799944427417420361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331286 (A329902 (n + 1)).toNat

end

end A212183.P6799944427417420361

/-! ## A212183.P16314197993604503153

`gcd(A002183(n+1), A260326(n))`
-/

namespace A212183.P16314197993604503153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002183 (n + 1)) (A260326 n)

end

end A212183.P16314197993604503153

/-!
# A212184: Row n of table gives exponents >= 2 in canonical prime factorization of n-th highly composite number (A002182(n)), in nonincreasing order, or 0 if no such exponent exists.

The programs for A212184, there is no canonical definition to state claims against.
-/

/-! ## A212184.P18311364555390796336

`A199968(A192232(n+1)+A176794(n+2))`
-/

namespace A212184.P18311364555390796336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A192232 (n + 1) + A176794 (n + 2)).toNat

end

end A212184.P18311364555390796336

/-! ## A212184.P11574462792510160930

`A218831(lcm(A027750(3*n+2), A116406(n)))`
-/

namespace A212184.P11574462792510160930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218831 (Int.lcm (A027750 (3 * n + 2)) (A116406 n))

end

end A212184.P11574462792510160930

/-! ## A212184.P14887308007890254161

`val(A264443(A026902(n+1)), 2)`
-/

namespace A212184.P14887308007890254161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A264443 (A026902 (n + 1)).toNat).toNat 2

end

end A212184.P14887308007890254161

/-!
# A212185: Number of exponents >= 2 in canonical prime factorization of n-th highly composite number (A002182(n)).

The programs for A212185, there is no canonical definition to state claims against.
-/

/-! ## A212185.P90431216651495832

`A061395(A329902(n+1)/A272605(n+1))`
-/

namespace A212185.P90431216651495832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A329902 (n + 1) : ℚ) / (A272605 (n + 1) : ℚ))).toNat

end

end A212185.P90431216651495832

/-! ## A212185.P5089373015939115804

`A061395(gcd(A301413(n+1), A329902(n+1)))`
-/

namespace A212185.P5089373015939115804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.gcd (A301413 (n + 1)) (A329902 (n + 1)))

end

end A212185.P5089373015939115804

/-! ## A212185.P6522789561869843059

`A001222(gcd(A301413(n+1)², A319865(n+1)))`
-/

namespace A212185.P6522789561869843059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A301413 (n + 1) ^ 2) (A319865 (n + 1)))

end

end A212185.P6522789561869843059

/-! ## A212185.P1250656285199988204

`A001222(gcd(A034386(n), A301413(n+1)))`
-/

namespace A212185.P1250656285199988204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A034386 n) (A301413 (n + 1)))

end

end A212185.P1250656285199988204

/-! ## A212185.P3957710585777693513

`A000194(∑{p}[A301413(n+1), #])`
-/

namespace A212185.P3957710585777693513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A212185.P3957710585777693513

/-! ## A212185.P13455917476690390227

`∑{p}[A301413(n+1), A000188(#)]`
-/

namespace A212185.P13455917476690390227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000188 p

end

end A212185.P13455917476690390227

/-! ## A212185.P12368618655245630508

`A000196(∑{p}[A301413(n+1), #])`
-/

namespace A212185.P12368618655245630508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A212185.P12368618655245630508

/-! ## A212185.P11611357957424128157

`∑{p}[A301413(n+1), A001221(#)]`
-/

namespace A212185.P11611357957424128157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A212185.P11611357957424128157

/-! ## A212185.P11512020534754514497

`∑{p}[A301413(n+1), A001222(#)]`
-/

namespace A212185.P11512020534754514497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A212185.P11512020534754514497

/-! ## A212185.P4023683054824563444

`∑{p}[A301413(n+1), A032564(#)]`
-/

namespace A212185.P4023683054824563444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032564 p

end

end A212185.P4023683054824563444

/-! ## A212185.P2007675018220499156

`∑{p}[A301413(n+1), A048671(#)]`
-/

namespace A212185.P2007675018220499156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048671 p

end

end A212185.P2007675018220499156

/-! ## A212185.P17227811684003255845

`∑{p}[A301413(n+1), A061901(#)]`
-/

namespace A212185.P17227811684003255845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061901 p

end

end A212185.P17227811684003255845

/-! ## A212185.P17155125704939969723

`∑{p}[A301413(n+1), A085392(#)]`
-/

namespace A212185.P17155125704939969723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A085392 p

end

end A212185.P17155125704939969723

/-! ## A212185.P5925106767527684640

`∑{p}[A301413(n+1), A186028(#)]`
-/

namespace A212185.P5925106767527684640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A186028 p

end

end A212185.P5925106767527684640

/-! ## A212185.P7520093759441156116

`∑{p}[A301413(n+1), A304717(#)]`
-/

namespace A212185.P7520093759441156116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A304717 p

end

end A212185.P7520093759441156116

/-! ## A212185.P10424392462192918879

`A001221(∏{p}[A301413(n+1), #])`
-/

namespace A212185.P10424392462192918879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A212185.P10424392462192918879

/-! ## A212185.P1445180006697957551

`A001222(∏{p}[A301413(n+1), #])`
-/

namespace A212185.P1445180006697957551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A212185.P1445180006697957551

/-! ## A212185.P3710427492065605216

`∑{e}[A301413(n+1), A299521(#)]`
-/

namespace A212185.P3710427492065605216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A299521 (Nat.factorization (f1 n).natAbs p)

end

end A212185.P3710427492065605216

/-! ## A212185.P13299363643869180087

`A001221(A301413(n+1)%A058198(n+1))`
-/

namespace A212185.P13299363643869180087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A301413 (n + 1)) (A058198 (n + 1))).toNat

end

end A212185.P13299363643869180087

/-!
# A212187: Number of distinct sums of reciprocals of parts of partitions of n.

The programs for A212187, there is no canonical definition to state claims against.
-/

/-! ## A212187.P15181858848387958498

`A332280(n)-A309785(A008459(n))`
-/

namespace A212187.P15181858848387958498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n - A309785 (A008459 n).toNat

end

end A212187.P15181858848387958498

/-! ## A212187.P6886440227064992770

`A332280(n)-A168014(A246720(n+1)%A164862(3*n+2))`
-/

namespace A212187.P6886440227064992770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n - A168014 (Int.tmod (A246720 (n + 1)) (A164862 (3 * n + 2))).toNat

end

end A212187.P6886440227064992770

/-!
# A212190: Squares that are the sum of exactly three distinct powers of 2.

The programs for A212190, there is no canonical definition to state claims against.
-/

/-! ## A212190.P16783402129264173815

`A212191(n+1)²`
-/

namespace A212190.P16783402129264173815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1) ^ 2

end

end A212190.P16783402129264173815

/-! ## A212190.P1023306552470942385

`A212191(-xor(n, -1))^2`
-/

namespace A212190.P1023306552470942385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

end

end A212190.P1023306552470942385

/-! ## A212190.P11817029390422752688

`A212191(xor(1, xor(1, n+1)))^2`
-/

namespace A212190.P11817029390422752688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (Nat.xor 1 (Nat.xor 1 (n + 1))) ^ 2

end

end A212190.P11817029390422752688

/-! ## A212190.P12836567925427545392

`A212191((n+1)^2/(n+1))^2`
-/

namespace A212190.P12836567925427545392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat ^ 2

end

end A212190.P12836567925427545392

/-! ## A212190.P7466996984014291180

`A212191(A000027(n+1))*A212191(n+1)`
-/

namespace A212190.P7466996984014291180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (A000027 (n + 1)).toNat * A212191 (n + 1)

end

end A212190.P7466996984014291180

/-! ## A212190.P11845188625816329128

`∩[A014311(n+1), n²]`
-/

namespace A212190.P11845188625816329128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A212190.P11845188625816329128

/-! ## A212190.P4289385726948400660

`eq[3, A159918(n)]²`
-/

namespace A212190.P4289385726948400660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A212190.P4289385726948400660

/-! ## A212190.P7069456991493011057

`∩[A000290(n), A014311(n+1)]`
-/

namespace A212190.P7069456991493011057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212190.P7069456991493011057

/-! ## A212190.P11800854316995505915

`∩[A001597(n+1), A014311(n+1)]`
-/

namespace A212190.P11800854316995505915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212190.P11800854316995505915

/-! ## A212190.P9103504879802422336

`∩[A002760(n+1), A014311(n+1)]`
-/

namespace A212190.P9103504879802422336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212190.P9103504879802422336

/-!
# A212191: Numbers whose squares are the sum of exactly three distinct powers of 2.

The programs for A212191, there is no canonical definition to state claims against.
-/

/-! ## A212191.P11510628604382269841

`sqrt(A212190(n+1))`
-/

namespace A212191.P11510628604382269841
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212190 (n + 1) : ℝ)

end

end A212191.P11510628604382269841

/-! ## A212191.P8909275914505375988

`root(A212190(n+1), 2%A222465(n))`
-/

namespace A212191.P8909275914505375988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A212190 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A222465 n) : ℝ))

end

end A212191.P8909275914505375988

/-! ## A212191.P16942427282955135359

`root(A212190(n+1), gcd(2, A334606(n+1)))`
-/

namespace A212191.P16942427282955135359
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A212190 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A334606 (n + 1)) : ℝ))

end

end A212191.P16942427282955135359

/-! ## A212191.P6769887044460750108

`root(A212190(n+1), A001316(A001316(n)))`
-/

namespace A212191.P6769887044460750108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A212190 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A212191.P6769887044460750108

/-! ## A212191.P7927434084329632340

`root(A212190(n+1), ratio[A005009(n)])`
-/

namespace A212191.P7927434084329632340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A212190 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A212191.P7927434084329632340

/-! ## A212191.P9926778196377030826

`A212190(n+1)^((n+1)/A000267(A000290(n+1)))`
-/

namespace A212191.P9926778196377030826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A212190 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (A000267 (A000290 (n + 1)).toNat : ℚ) : ℝ)

end

end A212191.P9926778196377030826

/-! ## A212191.P7166765194197676285

`eq[3, A159918(n)]`
-/

namespace A212191.P7166765194197676285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212191.P7166765194197676285

/-! ## A212191.P15260343327248857988

`lt[A006530((A159918(n)+1)²+16), 3]`
-/

namespace A212191.P15260343327248857988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A159918 n + 1) ^ 2 + 16).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A212191.P15260343327248857988

/-!
# A212193: In ternary representation of n: a(n) = if n is pandigital then 3 else least digit not used.

The programs for A212193, there is no canonical definition to state claims against.
-/

/-! ## A212193.P4852142729276448597

`A067898(∪[A321870(n+5), A007089(n)])`
-/

namespace A212193.P4852142729276448597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321870 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A212193.P4852142729276448597

/-! ## A212193.P11831180572674049932

`A067898(A007089(n))`
-/

namespace A212193.P11831180572674049932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A007089 n).toNat

end

end A212193.P11831180572674049932

/-! ## A212193.P15920381504750217783

`A067898(A343810(n)/4)`
-/

namespace A212193.P15920381504750217783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (SequenceMachineLib.roundAway ((A343810 n : ℚ) / 4)).toNat

end

end A212193.P15920381504750217783

/-! ## A212193.P1466030793504385657

`A067898(eq[1, A181061(n)])`
-/

namespace A212193.P1466030793504385657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212193.P1466030793504385657

/-! ## A212193.P5291217371801862969

`A067898(lt[A054055(n), 3])`
-/

namespace A212193.P5291217371801862969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A212193.P5291217371801862969

/-! ## A212193.P2702099331850608052

`A067898(A024635(2*n)/2)`
-/

namespace A212193.P2702099331850608052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (SequenceMachineLib.roundAway ((A024635 (2 * n) : ℚ) / 2)).toNat

end

end A212193.P2702099331850608052

/-! ## A212193.P6662324463532583137

`A067898(A024651(3*n)/3)`
-/

namespace A212193.P6662324463532583137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (SequenceMachineLib.roundAway ((A024651 (3 * n) : ℚ) / 3)).toNat

end

end A212193.P6662324463532583137

/-! ## A212193.P16178743487917404360

`A067898(eq[A106747(n), A235049(n)])`
-/

namespace A212193.P16178743487917404360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A212193.P16178743487917404360

/-! ## A212193.P1740661496788677513

`A067898(eq[0, A176407(n)])`
-/

namespace A212193.P1740661496788677513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212193.P1740661496788677513

/-! ## A212193.P14751110208846913336

`A067898(eq[A107128(n), A136400(n)])`
-/

namespace A212193.P14751110208846913336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A212193.P14751110208846913336

/-!
# A212196: Numerators of the Bernoulli median numbers.

The programs for A212196, there is no canonical definition to state claims against.
-/

/-! ## A212196.P16487616106293563496

`A230069(∑[n])`
-/

namespace A212196.P16487616106293563496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230069 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212196.P16487616106293563496

/-! ## A212196.P5156327466803852781

`A201453(∑[n]+n)`
-/

namespace A212196.P5156327466803852781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201453 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A212196.P5156327466803852781

/-! ## A212196.P5085876140414370488

`(-1)^n*A181130(A028310(n))`
-/

namespace A212196.P5085876140414370488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A181130 (A028310 n).toNat

end

end A212196.P5085876140414370488

/-! ## A212196.P14753888360413864586

`A006530(ceil(2^(n-1)))*A191972(n)`
-/

namespace A212196.P14753888360413864586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat * A191972 n

end

end A212196.P14753888360413864586

/-! ## A212196.P8181108007425041243

`A020639(A075526(n))*A191972(n)`
-/

namespace A212196.P8181108007425041243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A075526 n).toNat * A191972 n

end

end A212196.P8181108007425041243

/-!
# A212197: Numbers k that divide the 3k-th Clausen number.

The programs for A212197, there is no canonical definition to state claims against.
-/

/-! ## A212197.P17313847647155623435

`record[gcd(A027762(2*n+1), A332057(2*n+1))]`
-/

namespace A212197.P17313847647155623435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027762 (2 * n + 1)) (A332057 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212197.P17313847647155623435

/-! ## A212197.P12852041325381784937

`eq[n, gcd(n, A027642(3*n))]`
-/

namespace A212197.P12852041325381784937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A027642 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212197.P12852041325381784937

/-!
# A212198: Leading diagonal of triangle in A211321.

The programs for A212198, there is no canonical definition to state claims against.
-/

/-! ## A212198.P5856922638313344784

`A211321(or(A069531(n+1), A270890(n+1)))`
-/

namespace A212198.P5856922638313344784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211321 (Int.lor (A069531 (n + 1)) (A270890 (n + 1))).toNat

end

end A212198.P5856922638313344784

/-! ## A212198.P6863586237227322980

`A008611(A090365(n)+A000142(n))`
-/

namespace A212198.P6863586237227322980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A090365 n + A000142 n).toNat

end

end A212198.P6863586237227322980

/-! ## A212198.P14126465745375475203

`A182216(n)-A318950(A089407(n))`
-/

namespace A212198.P14126465745375475203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182216 n - A318950 (A089407 n).toNat

end

end A212198.P14126465745375475203

