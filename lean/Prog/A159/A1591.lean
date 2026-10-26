import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C007
import Seq.B009.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
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

/-!
# A159100: Number of permutations of 1..n containing the relative rank sequence { 135462 } at any spacing.

The programs for A159100, there is no canonical definition to state claims against.
-/

/-! ## A159100.P5384375529284531164

`or(A123731(A212100(n)), A159108(n+6))`
-/

namespace A159100.P5384375529284531164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123731 (A212100 n).toNat) (A159108 (n + 6))

end

end A159100.P5384375529284531164

/-!
# A159102: Number of permutations of 1..n containing the relative rank sequence { 135642 } at any spacing.

The programs for A159102, there is no canonical definition to state claims against.
-/

/-! ## A159102.P13269429518887172557

`A185284(8*n)+A159106(n+6)`
-/

namespace A159102.P13269429518887172557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (8 * n) + A159106 (n + 6)

end

end A159102.P13269429518887172557

/-!
# A159106: Number of permutations of 1..n containing the relative rank sequence { 136452 } at any spacing.

The programs for A159106, there is no canonical definition to state claims against.
-/

/-! ## A159106.P16606686057352377403

`A159102(n+6)-A184955(3*(n+1))%3`
-/

namespace A159106.P16606686057352377403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159102 (n + 6) - Int.tmod (A184955 (3 * (n + 1))) 3

end

end A159106.P16606686057352377403

/-!
# A159108: Number of permutations of 1..n containing the relative rank sequence { 136542 } at any spacing.

The programs for A159108, there is no canonical definition to state claims against.
-/

/-! ## A159108.P1944305175707253002

`A159130(n+6)-A335446(A000142(n))`
-/

namespace A159108.P1944305175707253002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159130 (n + 6) - A335446 (A000142 n).toNat

end

end A159108.P1944305175707253002

/-!
# A159109: Number of permutations of 1..n containing the relative rank sequence { 143265 } at any spacing.

The programs for A159109, there is no canonical definition to state claims against.
-/

/-! ## A159109.P10657852024343266348

`A159127(n+6)-and(n, A159153(2*n+7))`
-/

namespace A159109.P10657852024343266348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159127 (n + 6) - Int.land (n : ℤ) (A159153 (2 * n + 7))

end

end A159109.P10657852024343266348

/-!
# A159110: Number of permutations of 1..n containing the relative rank sequence { 143562 } at any spacing.

The programs for A159110, there is no canonical definition to state claims against.
-/

/-! ## A159110.P15556071145368141311

`A185284(A008000(n))+A159122(n+6)`
-/

namespace A159110.P15556071145368141311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A008000 n).toNat + A159122 (n + 6)

end

end A159110.P15556071145368141311

/-!
# A159112: Number of permutations of 1..n containing the relative rank sequence { 143652 } at any spacing.

The programs for A159112, there is no canonical definition to state claims against.
-/

/-! ## A159112.P17460640026873097715

`or(A159096(n+6), A192050(n!))`
-/

namespace A159112.P17460640026873097715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A159096 (n + 6)) (A192050 (Nat.factorial n))

end

end A159112.P17460640026873097715

/-!
# A159113: Number of permutations of 1..n containing the relative rank sequence { 145236 } at any spacing.

The programs for A159113, there is no canonical definition to state claims against.
-/

/-! ## A159113.P13194127492943921102

`A336016(A137478(C(n, 2)+1))+A159130(n+6)`
-/

namespace A159113.P13194127492943921102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336016 (A137478 (Nat.choose n 2 + 1)).toNat + A159130 (n + 6)

end

end A159113.P13194127492943921102

/-!
# A159116: Number of permutations of 1..n containing the relative rank sequence { 145623 } at any spacing.

The programs for A159116, there is no canonical definition to state claims against.
-/

/-! ## A159116.P9304142246827500077

`A159117(n+6)-A185284(ceil((n+4)*2^(n-2)))`
-/

namespace A159116.P9304142246827500077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159117 (n + 6) - A185284 ⌈(n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉.toNat

end

end A159116.P9304142246827500077

/-!
# A159117: Number of permutations of 1..n containing the relative rank sequence { 145632 } at any spacing.

The programs for A159117, there is no canonical definition to state claims against.
-/

/-! ## A159117.P5012996420764815446

`A185284(8*n)+A159116(n+6)`
-/

namespace A159117.P5012996420764815446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (8 * n) + A159116 (n + 6)

end

end A159117.P5012996420764815446

/-!
# A159121: Number of permutations of 1..n containing the relative rank sequence { 146523 } at any spacing.

The programs for A159121, there is no canonical definition to state claims against.
-/

/-! ## A159121.P16842370712471137674

`A159129(n+6)-A335460(n!)`
-/

namespace A159121.P16842370712471137674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159129 (n + 6) - A335460 (Nat.factorial n)

end

end A159121.P16842370712471137674

/-!
# A159122: Number of permutations of 1..n containing the relative rank sequence { 146532 } at any spacing.

The programs for A159122, there is no canonical definition to state claims against.
-/

/-! ## A159122.P7530211702772511735

`A159110(n+6)-A185284(A008000(n))`
-/

namespace A159122.P7530211702772511735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159110 (n + 6) - A185284 (A008000 n).toNat

end

end A159122.P7530211702772511735

/-!
# A159127: Number of permutations of 1..n containing the relative rank sequence { 154326 } at any spacing.

The programs for A159127, there is no canonical definition to state claims against.
-/

/-! ## A159127.P13600937748213936089

`A159089(n+6)-A279413(A126498(n))`
-/

namespace A159127.P13600937748213936089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159089 (n + 6) - A279413 (A126498 n).toNat

end

end A159127.P13600937748213936089

/-!
# A159128: Number of permutations of 1..n containing the relative rank sequence { 154362 } at any spacing.

The programs for A159128, there is no canonical definition to state claims against.
-/

/-! ## A159128.P1760567557136577080

`or(A144285(A217988(n)), A159100(n+6))`
-/

namespace A159128.P1760567557136577080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144285 (A217988 n).toNat) (A159100 (n + 6))

end

end A159128.P1760567557136577080

/-!
# A159129: Number of permutations of 1..n containing the relative rank sequence { 154623 } at any spacing.

The programs for A159129, there is no canonical definition to state claims against.
-/

/-! ## A159129.P14006956825780870406

`A335460(n!)+A159121(n+6)`
-/

namespace A159129.P14006956825780870406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (Nat.factorial n) + A159121 (n + 6)

end

end A159129.P14006956825780870406

/-!
# A159130: Number of permutations of 1..n containing the relative rank sequence { 154632 } at any spacing.

The programs for A159130, there is no canonical definition to state claims against.
-/

/-! ## A159130.P14649230677575548593

`or(dr(A159116(2*(n+3))), A159108(n+6))`
-/

namespace A159130.P14649230677575548593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.digitalRoot (A159116 (2 * (n + 3))) : ℤ) (A159108 (n + 6))

end

end A159130.P14649230677575548593

/-!
# A159133: Number of permutations of 1..n containing the relative rank sequence { 163452 } at any spacing.

The programs for A159133, there is no canonical definition to state claims against.
-/

/-! ## A159133.P15987129869712434274

`A335460(n!)+A159084(n+6)`
-/

namespace A159133.P15987129869712434274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (Nat.factorial n) + A159084 (n + 6)

end

end A159133.P15987129869712434274

/-!
# A159137: Number of permutations of 1..n containing the relative rank sequence { 164523 } at any spacing.

The programs for A159137, there is no canonical definition to state claims against.
-/

/-! ## A159137.P12260200171683609693

`A342376(A286592(n+1))+A159088(n+6)`
-/

namespace A159137.P12260200171683609693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A286592 (n + 1)).toNat + A159088 (n + 6)

end

end A159137.P12260200171683609693

/-!
# A159139: Number of permutations of 1..n containing the relative rank sequence { 213465 } at any spacing.

The programs for A159139, there is no canonical definition to state claims against.
-/

/-! ## A159139.P13195666644927099011

`A000142(n+6)-A047890(n+6)`
-/

namespace A159139.P13195666644927099011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 6) - A047890 (n + 6)

end

end A159139.P13195666644927099011

/-! ## A159139.P6702552027808975543

`A214152(A166136(n+4))`
-/

namespace A159139.P6702552027808975543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A166136 (n + 4)).toNat

end

end A159139.P6702552027808975543

/-! ## A159139.P6597177177052483069

`A214152(A167614(n+4)+3)`
-/

namespace A159139.P6597177177052483069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A167614 (n + 4) + 3).toNat

end

end A159139.P6597177177052483069

/-! ## A159139.P9892072518953026776

`A214152(A034856(n+4)+8)`
-/

namespace A159139.P9892072518953026776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A034856 (n + 4) + 8).toNat

end

end A159139.P9892072518953026776

/-! ## A159139.P15686489561800095837

`A214152(eq[7, A131818(n+1)])`
-/

namespace A159139.P15686489561800095837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159139.P15686489561800095837

/-! ## A159139.P14243957808261200733

`A214152(Δ[A023545(n+1)]+10)`
-/

namespace A159139.P14243957808261200733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (f1 (n + 1) - f1 n + 10).toNat

end

end A159139.P14243957808261200733

/-! ## A159139.P6437295099451028068

`A214152(A033999(n)²+A046691(n+3)+9)`
-/

namespace A159139.P6437295099451028068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A033999 n ^ 2 + (A046691 (n + 3) + 9)).toNat

end

end A159139.P6437295099451028068

/-! ## A159139.P6197134063837781454

`A214152(A000108(C(2, n+2))+A046691(n+3)+9)`
-/

namespace A159139.P6197134063837781454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A000108 (Nat.choose 2 (n + 2)) + (A046691 (n + 3) + 9)).toNat

end

end A159139.P6197134063837781454

/-!
# A159140: Number of permutations of 1..n containing the relative rank sequence { 213564 } at any spacing.

The programs for A159140, there is no canonical definition to state claims against.
-/

/-! ## A159140.P16454279151995775127

`A241320(A243241(n+1))+A159091(n+6)`
-/

namespace A159140.P16454279151995775127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241320 (A243241 (n + 1)).toNat + A159091 (n + 6)

end

end A159140.P16454279151995775127

/-!
# A159141: Number of permutations of 1..n containing the relative rank sequence { 214365 } at any spacing.

The programs for A159141, there is no canonical definition to state claims against.
-/

/-! ## A159141.P15447304087426420445

`A159127(n+6)+A076282(A033995(n))`
-/

namespace A159141.P15447304087426420445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159127 (n + 6) + A076282 (A033995 n).toNat

end

end A159141.P15447304087426420445

/-!
# A159147: Number of permutations of 1..n containing the relative rank sequence { 235614 } at any spacing.

The programs for A159147, there is no canonical definition to state claims against.
-/

/-! ## A159147.P8201972135149517670

`A342376(A286592(n+1))+A159168(n+6)`
-/

namespace A159147.P8201972135149517670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A286592 (n + 1)).toNat + A159168 (n + 6)

end

end A159147.P8201972135149517670

/-!
# A159152: Number of permutations of 1..n containing the relative rank sequence { 241635 } at any spacing.

The programs for A159152, there is no canonical definition to state claims against.
-/

/-! ## A159152.P10663738856208285483

`A159157(n+6)-A326460(A335515(n))`
-/

namespace A159152.P10663738856208285483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159157 (n + 6) - A326460 (A335515 n).toNat

end

end A159152.P10663738856208285483

/-!
# A159159: Number of permutations of 1..n containing the relative rank sequence { 246513 } at any spacing.

The programs for A159159, there is no canonical definition to state claims against.
-/

/-! ## A159159.P7826041872034300546

`A159147(n+6)-A241745(A014137(n))`
-/

namespace A159159.P7826041872034300546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159147 (n + 6) - A241745 (A014137 n).toNat

end

end A159159.P7826041872034300546

/-!
# A159162: Number of permutations of 1..n containing the relative rank sequence { 251634 } at any spacing.

The programs for A159162, there is no canonical definition to state claims against.
-/

/-! ## A159162.P5964912453556050383

`A159146(n+6)+A033105(A126333(n))`
-/

namespace A159162.P5964912453556050383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159146 (n + 6) + A033105 (A126333 n).toNat

end

end A159162.P5964912453556050383

/-!
# A159165: Number of permutations of 1..n containing the relative rank sequence { 254613 } at any spacing.

The programs for A159165, there is no canonical definition to state claims against.
-/

/-! ## A159165.P17846000535298218110

`A159172(n+6)+A002262(A305999(n))`
-/

namespace A159165.P17846000535298218110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159172 (n + 6) + A002262 (A305999 n).toNat

end

end A159165.P17846000535298218110

/-!
# A159168: Number of permutations of 1..n containing the relative rank sequence { 256413 } at any spacing.

The programs for A159168, there is no canonical definition to state claims against.
-/

/-! ## A159168.P10357119840681869791

`A159147(n+6)-A342376(A286592(n+1))`
-/

namespace A159168.P10357119840681869791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159147 (n + 6) - A342376 (A286592 (n + 1)).toNat

end

end A159168.P10357119840681869791

/-!
# A159171: Number of permutations of 1..n containing the relative rank sequence { 326154 } at any spacing.

The programs for A159171, there is no canonical definition to state claims against.
-/

/-! ## A159171.P595732048359270028

`A243841(A005900(n))+A159129(n+6)`
-/

namespace A159171.P595732048359270028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243841 (A005900 n).toNat + A159129 (n + 6)

end

end A159171.P595732048359270028

/-!
# A159172: Number of permutations of 1..n containing the relative rank sequence { 326514 } at any spacing.

The programs for A159172, there is no canonical definition to state claims against.
-/

/-! ## A159172.P11581749398640821622

`A159165(n+6)-A002262(A305999(n))`
-/

namespace A159172.P11581749398640821622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159165 (n + 6) - A002262 (A305999 n).toNat

end

end A159172.P11581749398640821622

/-!
# A159175: Number of permutations of 1..n containing the relative rank sequence { 1234567 } at any spacing.

The programs for A159175, there is no canonical definition to state claims against.
-/

/-! ## A159175.P3180219312405054885

`A000142(n+7)-A052399(n+7)`
-/

namespace A159175.P3180219312405054885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 7) - A052399 (n + 7)

end

end A159175.P3180219312405054885

/-! ## A159175.P3001098859107188637

`A214152(A056119(n)+28)`
-/

namespace A159175.P3001098859107188637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A056119 n + 28).toNat

end

end A159175.P3001098859107188637

/-! ## A159175.P17861736680885487728

`A214152(eq[11, A066657(n)])`
-/

namespace A159175.P17861736680885487728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159175.P17861736680885487728

/-! ## A159175.P9157838251794439389

`A214152(A167499(n+5)+2)`
-/

namespace A159175.P9157838251794439389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A167499 (n + 5) + 2).toNat

end

end A159175.P9157838251794439389

/-! ## A159175.P2655206864846555455

`A214152(A167614(n+5)+4)`
-/

namespace A159175.P2655206864846555455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A167614 (n + 5) + 4).toNat

end

end A159175.P2655206864846555455

/-!
# A159181: Number of permutations of 1..n containing the relative rank sequence { 1654327 } at any spacing.

The programs for A159181, there is no canonical definition to state claims against.
-/

/-! ## A159181.P10584262724148795418

`A159176(n+7)+A120038(A335508(n))`
-/

namespace A159181.P10584262724148795418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159176 (n + 7) + A120038 (A335508 n).toNat

end

end A159181.P10584262724148795418

/-!
# A159189: Denominator of Bernoulli(n, 1/11).

The programs for A159189, there is no canonical definition to state claims against.
-/

/-! ## A159189.P6306612880231287923

`lcm(11^n, A027642(n))`
-/

namespace A159189.P6306612880231287923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (11 ^ n : ℤ) (A027642 n)

end

end A159189.P6306612880231287923

/-! ## A159189.P1100381193489161075

`lcm(A017937(2*n), A141056(n*A266591(n)))`
-/

namespace A159189.P1100381193489161075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A017937 (2 * n)) (A141056 ((n : ℤ) * A266591 n).toNat)

end

end A159189.P1100381193489161075

/-! ## A159189.P9220638151472745043

`lcm(lcm(A166333(n), A176289(n)), A017937(A005843(n)))`
-/

namespace A159189.P9220638151472745043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lcm (A166333 n) (A176289 n) : ℤ) (A017937 (A005843 n).toNat)

end

end A159189.P9220638151472745043

/-! ## A159189.P15138000131754225710

`A001020(n)*A106612(A027642(n))`
-/

namespace A159189.P15138000131754225710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n * A106612 (A027642 n).toNat

end

end A159189.P15138000131754225710

/-! ## A159189.P16283332340235345375

`lcm(A001020(n), A028310(A106458(n)))`
-/

namespace A159189.P16283332340235345375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001020 n) (A028310 (A106458 n).toNat)

end

end A159189.P16283332340235345375

/-!
# A159193: a(n) is the smallest positive integer not yet in the sequence with gcd(n,a(n)) > 1 but a(n) != n; a(1) = 1 by convention.

The programs for A159193, there is no canonical definition to state claims against.
-/

/-! ## A159193.P5834771282157628477

`A227113(xor(A057427(n), A227114(n+1)))`
-/

namespace A159193.P5834771282157628477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227113 (Int.xor (A057427 n) (A227114 (n + 1))).toNat

end

end A159193.P5834771282157628477

/-!
# A159194: a(n) = sqrt(A155985(n)).

The programs for A159194, there is no canonical definition to state claims against.
-/

/-! ## A159194.P626010743239916666

`sqrt(A155985(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159194.P626010743239916666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A155985 (n + 1) : ℝ)

end

end A159194.P626010743239916666

/-! ## A159194.P8366157313380356312

`floor(sqrt(A155985(n-log2(1/2))))`
-/

namespace A159194.P8366157313380356312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A155985 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A159194.P8366157313380356312

/-! ## A159194.P14323506768809090666

`root(A155985(2*n-n+1), 2)`
-/

namespace A159194.P14323506768809090666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155985 ((2 * n : ℤ) - (n : ℤ) + 1).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A159194.P14323506768809090666

/-! ## A159194.P14023002387447610831

`ceil(sqrt(A155985(xor(1, 2*n)-n)))`
-/

namespace A159194.P14023002387447610831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A155985 (Nat.xor 1 (2 * n) - n) : ℝ)⌉

end

end A159194.P14023002387447610831

/-! ## A159194.P13591361363534700449

`A000027(root(A155985(n+1), 2))`
-/

namespace A159194.P13591361363534700449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A155985 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A159194.P13591361363534700449

/-! ## A159194.P9664358482935685496

`root(A155985(n+1), 2)%A000041(n+4)`
-/

namespace A159194.P9664358482935685496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A155985 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000041 (n + 4))

end

end A159194.P9664358482935685496

/-! ## A159194.P6251277926536695185

`A155985(n+1)^(A014963(6*(n+1))/2)`
-/

namespace A159194.P6251277926536695185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155985 (n + 1) : ℝ) ^ ((A014963 (6 * (n + 1)) : ℚ) / 2 : ℝ)

end

end A159194.P6251277926536695185

/-! ## A159194.P2682580678037515229

`root(A155985(n+1), 2)*A000040(n+2)%2`
-/

namespace A159194.P2682580678037515229
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155985 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (Int.tmod (A000040 (n + 2)) 2 : ℝ)

end

end A159194.P2682580678037515229

/-! ## A159194.P8042638702773671470

`root(A155985(n+1), 2)*A007318(C(2, n+2))`
-/

namespace A159194.P8042638702773671470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155985 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (Nat.choose 2 (n + 2)) : ℝ)

end

end A159194.P8042638702773671470

/-! ## A159194.P1382941028212046195

`root(A155985(n+1), 2)*A007318(gcd(n, n+1))`
-/

namespace A159194.P1382941028212046195
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155985 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (Nat.gcd n (n + 1)) : ℝ)

end

end A159194.P1382941028212046195

/-!
# A159195: Let S_0 = [1]; for n>0 let S_n be obtained from S_{n-1} by applying the morphism t -> |t-1|,t,t+1; sequence gives limiting value of S_{2n+1} as n -> oo.

The programs for A159195, there is no canonical definition to state claims against.
-/

/-! ## A159195.P1078262507208100308

`A053735(and(A053735(n), A329006(n+1)))`
-/

namespace A159195.P1078262507208100308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (Int.land (A053735 n) (A329006 (n + 1))).toNat

end

end A159195.P1078262507208100308

/-! ## A159195.P16241213329506599055

`A339975(C(n+2, A339969(n)))`
-/

namespace A159195.P16241213329506599055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 (Nat.choose (n + 2) (A339969 n).toNat)

end

end A159195.P16241213329506599055

/-! ## A159195.P4166724782880702373

`A051699(eq[A217657(n)!, A217657(n)])`
-/

namespace A159195.P4166724782880702373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A217657 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159195.P4166724782880702373

/-! ## A159195.P9280375177411398704

`and(A053735(A053735(n)), A265798(n+1))`
-/

namespace A159195.P9280375177411398704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053735 (A053735 n).toNat) (A265798 (n + 1))

end

end A159195.P9280375177411398704

/-! ## A159195.P8737525870424718680

`or(A000035(n), A101671(A261539(n+1)))`
-/

namespace A159195.P8737525870424718680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A101671 (A261539 (n + 1)).toNat)

end

end A159195.P8737525870424718680

/-!
# A159199: a(n) = k if the first occurrence of the digits of n is at the k-th place in n^(1/n).

The programs for A159199, there is no canonical definition to state claims against.
-/

/-! ## A159199.P8795342329014153225

`A337840(n+1)+1`
-/

namespace A159199.P8795342329014153225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337840 (n + 1) + 1

end

end A159199.P8795342329014153225

