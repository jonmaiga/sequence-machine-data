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
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A210400: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210400, there is no canonical definition to state claims against.
-/

/-! ## A210400.P7530148156459211501

`A210404(A055999(n)+10)`
-/

namespace A210400.P7530148156459211501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 (A055999 n + 10).toNat

end

end A210400.P7530148156459211501

/-! ## A210400.P13995260663512884970

`A210404(A167614(n+2)+1)`
-/

namespace A210400.P13995260663512884970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 (A167614 (n + 2) + 1).toNat

end

end A210400.P13995260663512884970

/-!
# A210401: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210401, there is no canonical definition to state claims against.
-/

/-! ## A210401.P2509930270225051718

`A210404(A374005(n+1))`
-/

namespace A210401.P2509930270225051718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 (A374005 (n + 1)).toNat

end

end A210401.P2509930270225051718

/-! ## A210401.P7778073061233397627

`A210404(A046691(n+3))`
-/

namespace A210401.P7778073061233397627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 (A046691 (n + 3)).toNat

end

end A210401.P7778073061233397627

/-!
# A210404: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210404, there is no canonical definition to state claims against.
-/

/-! ## A210404.P12001941706376866886

`A210309(n+1)+A210107(n+1)`
-/

namespace A210404.P12001941706376866886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210309 (n + 1) + A210107 (n + 1)

end

end A210404.P12001941706376866886

/-! ## A210404.P7823940118654265089

`A210134(n+1)+A210309(n+1)-A210086(n+1)`
-/

namespace A210404.P7823940118654265089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (n + 1) + (A210309 (n + 1) - A210086 (n + 1))

end

end A210404.P7823940118654265089

/-!
# A210405: 

The programs for A210405, there is no canonical definition to state claims against.
-/

/-! ## A210405.P9172587262667311477

`A210413(∑[4*n]+1)`
-/

namespace A210405.P9172587262667311477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210405.P9172587262667311477

/-!
# A210406: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210406, there is no canonical definition to state claims against.
-/

/-! ## A210406.P13409148368978254707

`ogf((7+8x)/(1-10x-12x^2))`
-/

namespace A210406.P13409148368978254707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 8] [1, -10, -12] n

end

end A210406.P13409148368978254707

/-! ## A210406.P2571327218247306470

`10*a(n-1)+12*a(n-2)` with `a(0)=7, a(1)=78`
-/

namespace A210406.P2571327218247306470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 78] fun n a =>
  10 * a (n - 1) + 12 * a (n - 2)

end

end A210406.P2571327218247306470

/-! ## A210406.P12806039951368814445

`A210176(n+1)+A183603(A000124(n))`
-/

namespace A210406.P12806039951368814445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210176 (n + 1) + A183603 (A000124 n).toNat

end

end A210406.P12806039951368814445

/-! ## A210406.P10875908495325369050

`A210413(∑[n]+1)`
-/

namespace A210406.P10875908495325369050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210406.P10875908495325369050

/-! ## A210406.P2068805581972757513

`record[A010054(n)*A210413(n+1)]`
-/

namespace A210406.P2068805581972757513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210406.P2068805581972757513

/-!
# A210407: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210407, there is no canonical definition to state claims against.
-/

/-! ## A210407.P11530764076317428380

`A210413(∑[n+1]+2)`
-/

namespace A210407.P11530764076317428380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210407.P11530764076317428380

/-! ## A210407.P7412615568593183217

`lcm(2, A210413(A133263(n+1)))`
-/

namespace A210407.P7412615568593183217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A210413 (A133263 (n + 1)).toNat)

end

end A210407.P7412615568593183217

/-! ## A210407.P16736052166659387084

`record[A010054(n)*A210413(n+2)]`
-/

namespace A210407.P16736052166659387084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210413 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210407.P16736052166659387084

/-! ## A210407.P16286028073197494690

`record[A210413(Δ[A003453(n+5)])]`
-/

namespace A210407.P16286028073197494690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210407.P16286028073197494690

/-! ## A210407.P13875140970536395951

`record[gcd(A210413(n+2), A274490(n+2))]`
-/

namespace A210407.P13875140970536395951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210413 (n + 2)) (A274490 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210407.P13875140970536395951

/-!
# A210408: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210408, there is no canonical definition to state claims against.
-/

/-! ## A210408.P12525143138097486279

`A210413(∑[n+2]+4)`
-/

namespace A210408.P12525143138097486279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210408.P12525143138097486279

/-! ## A210408.P7906728092047325127

`lcm(2, A210413(A167614(n+1)))`
-/

namespace A210408.P7906728092047325127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A210413 (A167614 (n + 1)).toNat)

end

end A210408.P7906728092047325127

/-! ## A210408.P7064751068804932694

`A057427(n+1)*A210413(A167614(n+1))`
-/

namespace A210408.P7064751068804932694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A210413 (A167614 (n + 1)).toNat

end

end A210408.P7064751068804932694

/-! ## A210408.P1316645635831013006

`A210413(A167614(n+1))+A000035(2*n)`
-/

namespace A210408.P1316645635831013006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A210408.P1316645635831013006

/-! ## A210408.P18227221611913513507

`A210413(A167614(n+1))%A210400(n+1)`
-/

namespace A210408.P18227221611913513507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210413 (A167614 (n + 1)).toNat) (A210400 (n + 1))

end

end A210408.P18227221611913513507

/-!
# A210409: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210409, there is no canonical definition to state claims against.
-/

/-! ## A210409.P14387965440543965965

`A210413(A141214(n)+7)`
-/

namespace A210409.P14387965440543965965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (A141214 n + 7).toNat

end

end A210409.P14387965440543965965

/-! ## A210409.P6193802212491182340

`A210413(A055998(n+2))`
-/

namespace A210409.P6193802212491182340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (A055998 (n + 2)).toNat

end

end A210409.P6193802212491182340

/-! ## A210409.P6290236916506337145

`A210413(eq[3, A193592(n)])`
-/

namespace A210409.P6290236916506337145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210409.P6290236916506337145

/-!
# A210410: 

The programs for A210410, there is no canonical definition to state claims against.
-/

/-! ## A210410.P4801031674556518923

`A210413(A167614(n+3)+2)`
-/

namespace A210410.P4801031674556518923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (A167614 (n + 3) + 2).toNat

end

end A210410.P4801031674556518923

/-!
# A210411: 

The programs for A210411, there is no canonical definition to state claims against.
-/

/-! ## A210411.P16554588983792949368

`A210413(A246172(n+1)+20)`
-/

namespace A210411.P16554588983792949368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (A246172 (n + 1) + 20).toNat

end

end A210411.P16554588983792949368

/-! ## A210411.P14190472985097733150

`A210413(A167499(n+4)+1)/gcd(n, n+1)`
-/

namespace A210411.P14190472985097733150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210413 (A167499 (n + 4) + 1).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A210411.P14190472985097733150

/-!
# A210412: 

The programs for A210412, there is no canonical definition to state claims against.
-/

/-! ## A210412.P3776991498520863083

`A210413(A000096(n+6)-(n-1))`
-/

namespace A210412.P3776991498520863083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A210412.P3776991498520863083

/-! ## A210412.P8779097067150229441

`A210413(eq[7, A004736(n+1)]+1)`
-/

namespace A210412.P8779097067150229441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A210412.P8779097067150229441

/-!
# A210413: T(n,k) = Number of (n+1) X (k+1) 0..3 arrays with every 2 X 2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210413, there is no canonical definition to state claims against.
-/

/-! ## A210413.P15471631604803003261

`A210183(n+1)+A183603(n+1)`
-/

namespace A210413.P15471631604803003261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (n + 1) + A183603 (n + 1)

end

end A210413.P15471631604803003261

/-! ## A210413.P11612336369808682676

`A183594(n+1)+A210183(n+1)-A210267(n+1)`
-/

namespace A210413.P11612336369808682676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (n + 1) + (A210183 (n + 1) - A210267 (n + 1))

end

end A210413.P11612336369808682676

/-!
# A210421: List the positions of all digits 7 in the concatenation of all terms, not necessarily in order. This is the lexicographically earliest such sequence.

The programs for A210421, there is no canonical definition to state claims against.
-/

/-! ## A210421.P4275565398927670444

`A222252(A210422(n+1)%A157745(n+1))`
-/

namespace A210421.P4275565398927670444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (Int.tmod (A210422 (n + 1)) (A157745 (n + 1))).toNat

end

end A210421.P4275565398927670444

/-!
# A210422: List the positions of all digits 8 in the concatenation of all terms, not necessarily in order. This is the lexicographically earliest such sequence.

The programs for A210422, there is no canonical definition to state claims against.
-/

/-! ## A210422.P3205345285749242338

`A222252(A210421(n+1)%A157745(n+1))`
-/

namespace A210422.P3205345285749242338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (Int.tmod (A210421 (n + 1)) (A157745 (n + 1))).toNat

end

end A210422.P3205345285749242338

/-!
# A210424: Number of 2-divided words of length n over a 4-letter alphabet.

The programs for A210424, there is no canonical definition to state claims against.
-/

/-! ## A210424.P4035194901757300746

`4^n-A001868(n)`
-/

namespace A210424.P4035194901757300746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A001868 n

end

end A210424.P4035194901757300746

/-! ## A210424.P9661877228224225476

`abs(A000302(n)-A001868(n))`
-/

namespace A210424.P9661877228224225476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n - A001868 n|

end

end A210424.P9661877228224225476

/-! ## A210424.P6722311413652275712

`A052539(n)-(A001868(n)+1)`
-/

namespace A210424.P6722311413652275712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 n - (A001868 n + 1)

end

end A210424.P6722311413652275712

/-! ## A210424.P30191458589508555

`abs(A000079(n)²-A001868(n))`
-/

namespace A210424.P30191458589508555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n ^ 2 - A001868 n|

end

end A210424.P30191458589508555

/-! ## A210424.P13641612735591361283

`abs(A000079(2*n)-A001868(n))`
-/

namespace A210424.P13641612735591361283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (2 * n) - A001868 n|

end

end A210424.P13641612735591361283

/-!
# A210425: Number of 3-divided words of length n over a 4-letter alphabet.

The programs for A210425, there is no canonical definition to state claims against.
-/

/-! ## A210425.P9050546358655338404

`A194280(A229258(n))-1`
-/

namespace A210425.P9050546358655338404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (A229258 n).toNat - 1

end

end A210425.P9050546358655338404

/-!
# A210426: Number of 4-divided words of length n over a 4-letter alphabet.

The programs for A210426, there is no canonical definition to state claims against.
-/

/-! ## A210426.P7634904268743018471

`Δ[C(A067029(4^n), 8)]`
-/

namespace A210426.P7634904268743018471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067029 (4 ^ n)).toNat 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A210426.P7634904268743018471

/-!
# A210427: Number of semistandard Young tableaux over all partitions of 5 with maximal element <= n.

The programs for A210427, the canonical program `A210427.P16511398056643221962` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210427 has offset 0).

The definition of A210427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210427.P16511398056643221962

`n*(12+(35+13*n²)*n²)/60`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210427

/-- `n*(12+(35+13*n²)*n²)/60` -/
def P16511398056643221962.Spec : Prop :=
  ∀ n, P16511398056643221962.a n = (A210427 n : ℚ)

end A210427

/-! ## A210427.P218389814821040906

`A179096(n)-(∑[3*(n-1)*C(n, 2)]+C(n, 4))`
-/

namespace A210427.P218389814821040906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((n : ℤ) - 1) * (Nat.choose n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179096 n - (∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 4 : ℤ))

end

end A210427.P218389814821040906

namespace A210427

/-- `A179096(n)-(∑[3*(n-1)*C(n, 2)]+C(n, 4))` -/
def P218389814821040906.Spec : Prop :=
  ∀ n, P218389814821040906.a n = A210427 n

end A210427

/-! ## A210427.P14202279240465174190

`A069038(n)+n*A002415(n)`
-/

namespace A210427.P14202279240465174190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 n + (n : ℤ) * A002415 n

end

end A210427.P14202279240465174190

namespace A210427

/-- `A069038(n)+n*A002415(n)` -/
def P14202279240465174190.Spec : Prop :=
  ∀ n, P14202279240465174190.a n = A210427 n

end A210427

/-! ## A210427.P12141279153974395009

`A210391(A167499(n+4))`
-/

namespace A210427.P12141279153974395009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A167499 (n + 4)).toNat

end

end A210427.P12141279153974395009

namespace A210427

/-- `A210391(A167499(n+4))` -/
def P12141279153974395009.Spec : Prop :=
  ∀ n, P12141279153974395009.a n = A210427 n

end A210427

/-! ## A210427.P5020408612442900091

`A210391(A166136(n+4)-1)`
-/

namespace A210427.P5020408612442900091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A166136 (n + 4) - 1).toNat

end

end A210427.P5020408612442900091

namespace A210427

/-- `A210391(A166136(n+4)-1)` -/
def P5020408612442900091.Spec : Prop :=
  ∀ n, P5020408612442900091.a n = A210427 n

end A210427

/-! ## A210427.P7363117767474716401

`A210391(A046691(n+3)+9)`
-/

namespace A210427.P7363117767474716401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A046691 (n + 3) + 9).toNat

end

end A210427.P7363117767474716401

namespace A210427

/-- `A210391(A046691(n+3)+9)` -/
def P7363117767474716401.Spec : Prop :=
  ∀ n, P7363117767474716401.a n = A210427 n

end A210427

/-! ## A210427.P754422167276865774

`A210391(A000217(n+6)-(n+1))`
-/

namespace A210427.P754422167276865774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A210427.P754422167276865774

namespace A210427

/-- `A210391(A000217(n+6)-(n+1))` -/
def P754422167276865774.Spec : Prop :=
  ∀ n, P754422167276865774.a n = A210427 n

end A210427

/-!
# A210428: Number of semistandard Young tableaux over all partitions of 6 with maximal element <= n.

The programs for A210428, the canonical program `A210428.P12526241686865496367` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210428 has offset 0).

The definition of A210428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210428.P12526241686865496367

`n²*(76+(85+19*n²)*n²)/180`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210428

/-- `n²*(76+(85+19*n²)*n²)/180` -/
def P12526241686865496367.Spec : Prop :=
  ∀ n, P12526241686865496367.a n = (A210428 n : ℚ)

end A210428

/-! ## A210428.P15869012816466970633

`A210391(A133263(n+6)+4)`
-/

namespace A210428.P15869012816466970633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A133263 (n + 6) + 4).toNat

end

end A210428.P15869012816466970633

namespace A210428

/-- `A210391(A133263(n+6)+4)` -/
def P15869012816466970633.Spec : Prop :=
  ∀ n, P15869012816466970633.a n = A210428 n

end A210428

/-! ## A210428.P13901901934524200957

`A210391(A000096(n+5)+7)`
-/

namespace A210428.P13901901934524200957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000096 (n + 5) + 7).toNat

end

end A210428.P13901901934524200957

namespace A210428

/-- `A210391(A000096(n+5)+7)` -/
def P13901901934524200957.Spec : Prop :=
  ∀ n, P13901901934524200957.a n = A210428 n

end A210428

/-! ## A210428.P9763198972557674124

`A210391(A000217(n+6)+6)`
-/

namespace A210428.P9763198972557674124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000217 (n + 6) + 6).toNat

end

end A210428.P9763198972557674124

namespace A210428

/-- `A210391(A000217(n+6)+6)` -/
def P9763198972557674124.Spec : Prop :=
  ∀ n, P9763198972557674124.a n = A210428 n

end A210428

/-! ## A210428.P6376081182885409173

`A210391(eq[7, A002260(n+1)])`
-/

namespace A210428.P6376081182885409173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210428.P6376081182885409173

namespace A210428

/-- `A210391(eq[7, A002260(n+1)])` -/
def P6376081182885409173.Spec : Prop :=
  ∀ n, P6376081182885409173.a n = A210428 n

end A210428

/-! ## A210428.P4277828215497646679

`A210391(A055999(n+5)-(2*n+3))`
-/

namespace A210428.P4277828215497646679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A055999 (n + 5) - (2 * n + 3 : ℤ)).toNat

end

end A210428.P4277828215497646679

namespace A210428

/-- `A210391(A055999(n+5)-(2*n+3))` -/
def P4277828215497646679.Spec : Prop :=
  ∀ n, P4277828215497646679.a n = A210428 n

end A210428

/-!
# A210429: Number of semistandard Young tableaux over all partitions of 7 with maximal element <= n.

The programs for A210429, there is no canonical definition to state claims against.
-/

/-! ## A210429.P17449197436681033951

`A210391(A167614(n+6)+4)`
-/

namespace A210429.P17449197436681033951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A167614 (n + 6) + 4).toNat

end

end A210429.P17449197436681033951

/-! ## A210429.P1949071908563729587

`A210391(A000124(n+7)+6)`
-/

namespace A210429.P1949071908563729587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000124 (n + 7) + 6).toNat

end

end A210429.P1949071908563729587

/-! ## A210429.P10582741821748148466

`A210391(A000096(n+6)+8)`
-/

namespace A210429.P10582741821748148466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000096 (n + 6) + 8).toNat

end

end A210429.P10582741821748148466

/-! ## A210429.P6276202023814618877

`A210391(A000217(n+7)+7)`
-/

namespace A210429.P6276202023814618877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000217 (n + 7) + 7).toNat

end

end A210429.P6276202023814618877

/-! ## A210429.P1878307919581357730

`A210391(A133263(n+8)-(n+3))`
-/

namespace A210429.P1878307919581357730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A133263 (n + 8) - (n + 3 : ℤ)).toNat

end

end A210429.P1878307919581357730

/-!
# A210430: Number of semistandard Young tableaux over all partitions of 8 with maximal element <= n.

The programs for A210430, there is no canonical definition to state claims against.
-/

/-! ## A210430.P8831187001791067963

`A210391(A000124(n+8)+7)`
-/

namespace A210430.P8831187001791067963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000124 (n + 8) + 7).toNat

end

end A210430.P8831187001791067963

/-! ## A210430.P14972538676982350223

`A210391(A000096(n+7)+9)`
-/

namespace A210430.P14972538676982350223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000096 (n + 7) + 9).toNat

end

end A210430.P14972538676982350223

/-! ## A210430.P12770496499015217894

`A210391(A000217(n+8)+8)`
-/

namespace A210430.P12770496499015217894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000217 (n + 8) + 8).toNat

end

end A210430.P12770496499015217894

/-! ## A210430.P14209568538274457508

`A210391(A133263(n+9)-(n+3))`
-/

namespace A210430.P14209568538274457508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A133263 (n + 9) - (n + 3 : ℤ)).toNat

end

end A210430.P14209568538274457508

/-! ## A210430.P1305116811855668812

`A210391(A055999(n+7)-(2*n+5))`
-/

namespace A210430.P1305116811855668812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A055999 (n + 7) - (2 * n + 5 : ℤ)).toNat

end

end A210430.P1305116811855668812

/-!
# A210431: Number of semistandard Young tableaux over all partitions of 9 with maximal element <= n.

The programs for A210431, there is no canonical definition to state claims against.
-/

/-! ## A210431.P7476116453490336427

`A210391(A167614(n+8)+6)`
-/

namespace A210431.P7476116453490336427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A167614 (n + 8) + 6).toNat

end

end A210431.P7476116453490336427

/-! ## A210431.P3842739229596326383

`A210391(A000096(n+8)+10)`
-/

namespace A210431.P3842739229596326383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000096 (n + 8) + 10).toNat

end

end A210431.P3842739229596326383

/-! ## A210431.P14546677448913330171

`A210391(A000217(n+9)+9)`
-/

namespace A210431.P14546677448913330171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000217 (n + 9) + 9).toNat

end

end A210431.P14546677448913330171

/-! ## A210431.P15407949409275745474

`A210391(A046691(n+7)+13)`
-/

namespace A210431.P15407949409275745474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A046691 (n + 7) + 13).toNat

end

end A210431.P15407949409275745474

/-! ## A210431.P7784367162629666517

`A210391(A179865(n+11)-(n+1))`
-/

namespace A210431.P7784367162629666517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A179865 (n + 11) - (n + 1 : ℤ)).toNat

end

end A210431.P7784367162629666517

/-!
# A210432: Number of semistandard Young tableaux over all partitions of 10 with maximal element <= n.

The programs for A210432, there is no canonical definition to state claims against.
-/

/-! ## A210432.P18277374233574852362

`A210391(A000096(n+9)+11)`
-/

namespace A210432.P18277374233574852362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000096 (n + 9) + 11).toNat

end

end A210432.P18277374233574852362

/-! ## A210432.P13371063167315472250

`A210391(A179865(n+11)+10)`
-/

namespace A210432.P13371063167315472250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A179865 (n + 11) + 10).toNat

end

end A210432.P13371063167315472250

/-! ## A210432.P7089277187556811087

`A210391(A046691(n+8)+14)`
-/

namespace A210432.P7089277187556811087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A046691 (n + 8) + 14).toNat

end

end A210432.P7089277187556811087

/-! ## A210432.P13666439200522110142

`A210391(A000124(n+11)-(n+2))`
-/

namespace A210432.P13666439200522110142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A000124 (n + 11) - (n + 2 : ℤ)).toNat

end

end A210432.P13666439200522110142

/-! ## A210432.P3110142862632280285

`A210391(A055999(n+9)-(2*n+7))`
-/

namespace A210432.P3110142862632280285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A055999 (n + 9) - (2 * n + 7 : ℤ)).toNat

end

end A210432.P3110142862632280285

/-!
# A210433: Natural numbers k such that floor(v) * ceiling(v)^2 = k, where v = k^(1/3).

The programs for A210433, the canonical program `A210433.P4652289166271489884` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210433 has offset 1).

The definition of A210433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210433.P7869263726844600643

`∪[n^3, n*(n+1)²]`
-/

namespace A210433.P7869263726844600643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A210433.P7869263726844600643

namespace A210433

/-- `∪[n^3, n*(n+1)²]` -/
def P7869263726844600643.Spec : Prop :=
  ∀ n, (P7869263726844600643.a n : ℤ) = A210433 (n + 1)

end A210433

/-! ## A210433.P4652289166271489884

`ceil(n/2)*∑[C(xor(1, n), n)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210433

/-- `ceil(n/2)*∑[C(xor(1, n), n)]` -/
def P4652289166271489884.Spec : Prop :=
  ∀ n, P4652289166271489884.a n = A210433 (n + 1)

theorem P4652289166271489884.correct : P4652289166271489884.Spec := by
  intro n
  simp only [A210433, Nat.add_sub_cancel]

end A210433

/-! ## A210433.P12328101671615665887

`∑[char[2*n]]²*ceil(n/2)`
-/

namespace A210433.P12328101671615665887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * ⌈(n : ℚ) / 2⌉

end

end A210433.P12328101671615665887

namespace A210433

/-- `∑[char[2*n]]²*ceil(n/2)` -/
def P12328101671615665887.Spec : Prop :=
  ∀ n, P12328101671615665887.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P1750478625820321592

`∑[gcd(n+1, ∑[n])*ceil(n/2)]`
-/

namespace A210433.P1750478625820321592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) * ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210433.P1750478625820321592

namespace A210433

/-- `∑[gcd(n+1, ∑[n])*ceil(n/2)]` -/
def P1750478625820321592.Spec : Prop :=
  ∀ n, P1750478625820321592.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P8891176205746782460

`∑[A359366(n)]`
-/

namespace A210433.P8891176205746782460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210433.P8891176205746782460

namespace A210433

/-- `∑[A359366(n)]` -/
def P8891176205746782460.Spec : Prop :=
  ∀ n, P8891176205746782460.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P8974645017097249373

`A212761(n)/(n+1)`
-/

namespace A210433.P8974645017097249373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212761 n : ℚ) / (n + 1 : ℚ)

end

end A210433.P8974645017097249373

namespace A210433

/-- `A212761(n)/(n+1)` -/
def P8974645017097249373.Spec : Prop :=
  ∀ n, P8974645017097249373.a n = (A210433 (n + 1) : ℚ)

end A210433

/-! ## A210433.P7770491291265964353

`A212764(n)/A008619(n)`
-/

namespace A210433.P7770491291265964353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212764 n : ℚ) / (A008619 n : ℚ)

end

end A210433.P7770491291265964353

namespace A210433

/-- `A212764(n)/A008619(n)` -/
def P7770491291265964353.Spec : Prop :=
  ∀ n, P7770491291265964353.a n = (A210433 (n + 1) : ℚ)

end A210433

/-! ## A210433.P18329970556862961542

`A227327(n+1)-A350050(n)`
-/

namespace A210433.P18329970556862961542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227327 (n + 1) - A350050 n

end

end A210433.P18329970556862961542

namespace A210433

/-- `A227327(n+1)-A350050(n)` -/
def P18329970556862961542.Spec : Prop :=
  ∀ n, P18329970556862961542.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P17866074767623088214

`A211068(n+1)/A114119(n)`
-/

namespace A210433.P17866074767623088214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211068 (n + 1) : ℚ) / (A114119 n : ℚ)

end

end A210433.P17866074767623088214

namespace A210433

/-- `A211068(n+1)/A114119(n)` -/
def P17866074767623088214.Spec : Prop :=
  ∀ n, P17866074767623088214.a n = (A210433 (n + 1) : ℚ)

end A210433

/-! ## A210433.P11100133499209049051

`A109900(n)+C(A027656(n), 2)`
-/

namespace A210433.P11100133499209049051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n + (Nat.choose (A027656 n).toNat 2 : ℤ)

end

end A210433.P11100133499209049051

namespace A210433

/-- `A109900(n)+C(A027656(n), 2)` -/
def P11100133499209049051.Spec : Prop :=
  ∀ n, P11100133499209049051.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P10962106763635256116

`abs(A008619(n)²*A130472(n))`
-/

namespace A210433.P10962106763635256116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008619 n ^ 2 * A130472 n|

end

end A210433.P10962106763635256116

namespace A210433

/-- `abs(A008619(n)²*A130472(n))` -/
def P10962106763635256116.Spec : Prop :=
  ∀ n, P10962106763635256116.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P6759879883587140501

`A000217(n)+A002620(n)*A004526(n)`
-/

namespace A210433.P6759879883587140501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A002620 n * A004526 n

end

end A210433.P6759879883587140501

namespace A210433

/-- `A000217(n)+A002620(n)*A004526(n)` -/
def P6759879883587140501.Spec : Prop :=
  ∀ n, P6759879883587140501.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P14948406152940177512

`A008619(n)*A033638(n+1)-A008619(n)`
-/

namespace A210433.P14948406152940177512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A033638 (n + 1) - A008619 n

end

end A210433.P14948406152940177512

namespace A210433

/-- `A008619(n)*A033638(n+1)-A008619(n)` -/
def P14948406152940177512.Spec : Prop :=
  ∀ n, P14948406152940177512.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P10782692217849952584

`A302647(n+2)-A317714(n+2)`
-/

namespace A210433.P10782692217849952584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302647 (n + 2) - A317714 (n + 2)

end

end A210433.P10782692217849952584

namespace A210433

/-- `A302647(n+2)-A317714(n+2)` -/
def P10782692217849952584.Spec : Prop :=
  ∀ n, P10782692217849952584.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P14003692284641345883

`A330520(n+1)-A002620(n+1)²`
-/

namespace A210433.P14003692284641345883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330520 (n + 1) - A002620 (n + 1) ^ 2

end

end A210433.P14003692284641345883

namespace A210433

/-- `A330520(n+1)-A002620(n+1)²` -/
def P14003692284641345883.Spec : Prop :=
  ∀ n, P14003692284641345883.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P4956737269985512822

`A004526(n+1)+A004526(n)*A035106(n+1)`
-/

namespace A210433.P4956737269985512822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + A004526 n * A035106 (n + 1)

end

end A210433.P4956737269985512822

namespace A210433

/-- `A004526(n+1)+A004526(n)*A035106(n+1)` -/
def P4956737269985512822.Spec : Prop :=
  ∀ n, P4956737269985512822.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P3596122711033559124

`A024206(n+1)+A004526(n)*A078126(n+1)`
-/

namespace A210433.P3596122711033559124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1) + A004526 n * A078126 (n + 1)

end

end A210433.P3596122711033559124

namespace A210433

/-- `A024206(n+1)+A004526(n)*A078126(n+1)` -/
def P3596122711033559124.Spec : Prop :=
  ∀ n, P3596122711033559124.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P4867580538425759588

`A008218(2*n)+∑[n]`
-/

namespace A210433.P4867580538425759588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A210433.P4867580538425759588

namespace A210433

/-- `A008218(2*n)+∑[n]` -/
def P4867580538425759588.Spec : Prop :=
  ∀ n, P4867580538425759588.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P5333189488105793852

`record[Δ[A008642(n)]*A008642(n)]`
-/

namespace A210433.P5333189488105793852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A008642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210433.P5333189488105793852

namespace A210433

/-- `record[Δ[A008642(n)]*A008642(n)]` -/
def P5333189488105793852.Spec : Prop :=
  ∀ n, P5333189488105793852.a n = A210433 (n + 1)

end A210433

/-! ## A210433.P12220573230880795175

`A008218(2*n+3)`
-/

namespace A210433.P12220573230880795175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 (2 * n + 3)

end

end A210433.P12220573230880795175

namespace A210433

/-- `A008218(2*n+3)` -/
def P12220573230880795175.Spec : Prop :=
  ∀ n, P12220573230880795175.a n = A210433 (n + 1)

end A210433

/-!
# A210434: Number of digits in 4^n.

The programs for A210434, the canonical program `A210434.P2865302785751446395` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210434 has offset 0).

The definition of A210434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210434.P2865302785751446395

`∑[char[floor((A067497(n)+1)/2)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A210434

/-- `∑[char[floor((A067497(n)+1)/2)]]` -/
def P2865302785751446395.Spec : Prop :=
  ∀ n, (P2865302785751446395.a n : ℤ) = A210434 n

theorem P2865302785751446395.correct : P2865302785751446395.Spec := by
  intro n
  simp only [A210434]

end A210434

/-! ## A210434.P12003027941473905734

`A034887(2*n)`
-/

namespace A210434.P12003027941473905734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (2 * n)

end

end A210434.P12003027941473905734

namespace A210434

/-- `A034887(2*n)` -/
def P12003027941473905734.Spec : Prop :=
  ∀ n, P12003027941473905734.a n = A210434 n

end A210434

/-! ## A210434.P8351955114813672175

`or(char[1], A034887(n+n))`
-/

namespace A210434.P8351955114813672175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A034887 (n + n))

end

end A210434.P8351955114813672175

namespace A210434

/-- `or(char[1], A034887(n+n))` -/
def P8351955114813672175.Spec : Prop :=
  ∀ n, P8351955114813672175.a n = A210434 n

end A210434

/-! ## A210434.P4149110744156277882

`A000027(A034887(Δ[n²]-1))`
-/

namespace A210434.P4149110744156277882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A034887 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat).toNat

end

end A210434.P4149110744156277882

namespace A210434

/-- `A000027(A034887(Δ[n²]-1))` -/
def P4149110744156277882.Spec : Prop :=
  ∀ n, P4149110744156277882.a n = A210434 n

end A210434

/-! ## A210434.P10162436278072593903

`A055254(2*n)+A055253(2*n)`
-/

namespace A210434.P10162436278072593903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055254 (2 * n) + A055253 (2 * n)

end

end A210434.P10162436278072593903

namespace A210434

/-- `A055254(2*n)+A055253(2*n)` -/
def P10162436278072593903.Spec : Prop :=
  ∀ n, P10162436278072593903.a n = A210434 n

end A210434

/-! ## A210434.P8827620169742734351

`A034887(A005843(n))%A016945(n)`
-/

namespace A210434.P8827620169742734351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034887 (A005843 n).toNat) (A016945 n)

end

end A210434.P8827620169742734351

namespace A210434

/-- `A034887(A005843(n))%A016945(n)` -/
def P8827620169742734351.Spec : Prop :=
  ∀ n, P8827620169742734351.a n = A210434 n

end A210434

/-! ## A210434.P15370104447485889004

`A034887(A004277(n))%A181739(n)`
-/

namespace A210434.P15370104447485889004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034887 (A004277 n).toNat) (A181739 n)

end

end A210434.P15370104447485889004

namespace A210434

/-- `A034887(A004277(n))%A181739(n)` -/
def P15370104447485889004.Spec : Prop :=
  ∀ n, P15370104447485889004.a n = A210434 n

end A210434

/-! ## A210434.P9112860805892703318

`A055672(A055672(n))+A034887(n+n)`
-/

namespace A210434.P9112860805892703318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A055672 n).toNat + A034887 (n + n)

end

end A210434.P9112860805892703318

namespace A210434

/-- `A055672(A055672(n))+A034887(n+n)` -/
def P9112860805892703318.Spec : Prop :=
  ∀ n, P9112860805892703318.a n = A210434 n

end A210434

/-! ## A210434.P948429729502436209

`A034887(n+n)%A055468(A034887(n))`
-/

namespace A210434.P948429729502436209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034887 (n + n)) (A055468 (A034887 n).toNat)

end

end A210434.P948429729502436209

namespace A210434

/-- `A034887(n+n)%A055468(A034887(n))` -/
def P948429729502436209.Spec : Prop :=
  ∀ n, P948429729502436209.a n = A210434 n

end A210434

/-! ## A210434.P11689265120514182845

`A192543(2*n+1)+A000007(n)`
-/

namespace A210434.P11689265120514182845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (2 * n + 1) + A000007 n

end

end A210434.P11689265120514182845

namespace A210434

/-- `A192543(2*n+1)+A000007(n)` -/
def P11689265120514182845.Spec : Prop :=
  ∀ n, P11689265120514182845.a n = A210434 n

end A210434

/-! ## A210434.P7522170344145434630

`gcd(A025543(2*n), A192543(2*n+1))`
-/

namespace A210434.P7522170344145434630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025543 (2 * n)) (A192543 (2 * n + 1))

end

end A210434.P7522170344145434630

namespace A210434

/-- `gcd(A025543(2*n), A192543(2*n+1))` -/
def P7522170344145434630.Spec : Prop :=
  ∀ n, (P7522170344145434630.a n : ℤ) = A210434 n

end A210434

/-! ## A210434.P7623508606996875852

`∑{digits}[4^n, and(1, #)!]`
-/

namespace A210434.P7623508606996875852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A210434.P7623508606996875852

namespace A210434

/-- `∑{digits}[4^n, and(1, #)!]` -/
def P7623508606996875852.Spec : Prop :=
  ∀ n, (P7623508606996875852.a n : ℤ) = A210434 n

end A210434

/-! ## A210434.P8568635549071949672

`∑{digits}[A000079(n)², A015280(#)]`
-/

namespace A210434.P8568635549071949672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015280 x).sum

end

end A210434.P8568635549071949672

namespace A210434

/-- `∑{digits}[A000079(n)², A015280(#)]` -/
def P8568635549071949672.Spec : Prop :=
  ∀ n, P8568635549071949672.a n = A210434 n

end A210434

/-! ## A210434.P16965226877236667806

`∑{digits}[A000079(n)², A015282(#)]`
-/

namespace A210434.P16965226877236667806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015282 x).sum

end

end A210434.P16965226877236667806

namespace A210434

/-- `∑{digits}[A000079(n)², A015282(#)]` -/
def P16965226877236667806.Spec : Prop :=
  ∀ n, P16965226877236667806.a n = A210434 n

end A210434

/-! ## A210434.P14986073914657729686

`∑{digits}[A000079(n)², A015322(#)]`
-/

namespace A210434.P14986073914657729686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015322 x).sum

end

end A210434.P14986073914657729686

namespace A210434

/-- `∑{digits}[A000079(n)², A015322(#)]` -/
def P14986073914657729686.Spec : Prop :=
  ∀ n, P14986073914657729686.a n = A210434 n

end A210434

/-! ## A210434.P6590302661240690688

`∑{digits}[A000079(2*n), A015280(#)]`
-/

namespace A210434.P6590302661240690688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015280 x).sum

end

end A210434.P6590302661240690688

namespace A210434

/-- `∑{digits}[A000079(2*n), A015280(#)]` -/
def P6590302661240690688.Spec : Prop :=
  ∀ n, P6590302661240690688.a n = A210434 n

end A210434

/-! ## A210434.P15747520956096959030

`∑{digits}[A000079(2*n), A015282(#)]`
-/

namespace A210434.P15747520956096959030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015282 x).sum

end

end A210434.P15747520956096959030

namespace A210434

/-- `∑{digits}[A000079(2*n), A015282(#)]` -/
def P15747520956096959030.Spec : Prop :=
  ∀ n, P15747520956096959030.a n = A210434 n

end A210434

/-! ## A210434.P14879312061373319403

`∑{digits}[A000079(2*n), A015322(#)]`
-/

namespace A210434.P14879312061373319403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015322 x).sum

end

end A210434.P14879312061373319403

namespace A210434

/-- `∑{digits}[A000079(2*n), A015322(#)]` -/
def P14879312061373319403.Spec : Prop :=
  ∀ n, P14879312061373319403.a n = A210434 n

end A210434

/-! ## A210434.P1611302368046373795

`∑{digits}[A000225(2*n), A015280(#)]`
-/

namespace A210434.P1611302368046373795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015280 x).sum

end

end A210434.P1611302368046373795

namespace A210434

/-- `∑{digits}[A000225(2*n), A015280(#)]` -/
def P1611302368046373795.Spec : Prop :=
  ∀ n, P1611302368046373795.a n = A210434 n

end A210434

/-! ## A210434.P16908289696924931330

`∑{digits}[A000225(2*n), A015282(#)]`
-/

namespace A210434.P16908289696924931330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015282 x).sum

end

end A210434.P16908289696924931330

namespace A210434

/-- `∑{digits}[A000225(2*n), A015282(#)]` -/
def P16908289696924931330.Spec : Prop :=
  ∀ n, P16908289696924931330.a n = A210434 n

end A210434

/-!
# A210435: Number of digits in 5^n.

The programs for A210435, the canonical program `A210435.P7595724009279329966` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210435 has offset 0).

The definition of A210435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210435.P6948156555712575240

`floor(n+1-n/log2(10))`
-/

namespace A210435.P6948156555712575240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) - (n : ℝ) / Real.logb 2 (10 : ℝ)⌋

end

end A210435.P6948156555712575240

namespace A210435

/-- `floor(n+1-n/log2(10))` -/
def P6948156555712575240.Spec : Prop :=
  ∀ n, P6948156555712575240.a n = A210435 n

end A210435

/-! ## A210435.P13423985627490819477

`∑[char[comp[A123384(n)]]]`
-/

namespace A210435.P13423985627490819477
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210435.P13423985627490819477

namespace A210435

/-- `∑[char[comp[A123384(n)]]]` -/
def P13423985627490819477.Spec : Prop :=
  ∀ n, (P13423985627490819477.a n : ℤ) = A210435 n

end A210435

/-! ## A210435.P7595724009279329966

`1-A192543(n+1)+n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A210435

/-- `1-A192543(n+1)+n` -/
def P7595724009279329966.Spec : Prop :=
  ∀ n, P7595724009279329966.a n = A210435 n

theorem P7595724009279329966.correct : P7595724009279329966.Spec := by
  intro n
  simp only [A210435]

end A210435

/-! ## A210435.P10577703085272413931

`∑[char[A226721(n+1)]]+1`
-/

namespace A210435.P10577703085272413931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226721 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A210435.P10577703085272413931

namespace A210435

/-- `∑[char[A226721(n+1)]]+1` -/
def P10577703085272413931.Spec : Prop :=
  ∀ n, (P10577703085272413931.a n : ℤ) = A210435 n

end A210435

/-! ## A210435.P15287518452298840399

`A000027(n+1)-ceil(n/log2(10))`
-/

namespace A210435.P15287518452298840399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - ⌈(n : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A210435.P15287518452298840399

namespace A210435

/-- `A000027(n+1)-ceil(n/log2(10))` -/
def P15287518452298840399.Spec : Prop :=
  ∀ n, P15287518452298840399.a n = A210435 n

end A210435

/-! ## A210435.P11280448954709062359

`a(n-1)-A066344(a(n-1))+n` with `a(0)=1`
-/

namespace A210435.P11280448954709062359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A066344 (a (n - 1)).toNat + (n : ℤ)

end

end A210435.P11280448954709062359

namespace A210435

/-- `a(n-1)-A066344(a(n-1))+n` -/
def P11280448954709062359.Spec : Prop :=
  ∀ n, P11280448954709062359.a n = A210435 n

end A210435

/-! ## A210435.P17108924971074718112

`A028310(1-A034887(n)+n)`
-/

namespace A210435.P17108924971074718112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (1 - A034887 n + (n : ℤ)).toNat

end

end A210435.P17108924971074718112

namespace A210435

/-- `A028310(1-A034887(n)+n)` -/
def P17108924971074718112.Spec : Prop :=
  ∀ n, P17108924971074718112.a n = A210435 n

end A210435

/-! ## A210435.P12920775699140197517

`A028310(1-(A034887(n)-n))`
-/

namespace A210435.P12920775699140197517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (1 - (A034887 n - (n : ℤ))).toNat

end

end A210435.P12920775699140197517

namespace A210435

/-- `A028310(1-(A034887(n)-n))` -/
def P12920775699140197517.Spec : Prop :=
  ∀ n, P12920775699140197517.a n = A210435 n

end A210435

/-! ## A210435.P5844992835422727785

`A054977(n)+n-A034887(n)`
-/

namespace A210435.P5844992835422727785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + ((n : ℤ) - A034887 n)

end

end A210435.P5844992835422727785

namespace A210435

/-- `A054977(n)+n-A034887(n)` -/
def P5844992835422727785.Spec : Prop :=
  ∀ n, P5844992835422727785.a n = A210435 n

end A210435

/-! ## A210435.P15556314692476714964

`A008619(A004277(n)-A210434(n))`
-/

namespace A210435.P15556314692476714964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004277 n - A210434 n).toNat

end

end A210435.P15556314692476714964

namespace A210435

/-- `A008619(A004277(n)-A210434(n))` -/
def P15556314692476714964.Spec : Prop :=
  ∀ n, P15556314692476714964.a n = A210435 n

end A210435

/-! ## A210435.P1231438037142973733

`A065033(2*n+1-A210434(n))`
-/

namespace A210435.P1231438037142973733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((2 * n + 1 : ℤ) - A210434 n).toNat

end

end A210435.P1231438037142973733

namespace A210435

/-- `A065033(2*n+1-A210434(n))` -/
def P1231438037142973733.Spec : Prop :=
  ∀ n, P1231438037142973733.a n = A210435 n

end A210435

/-! ## A210435.P9338570666346308220

`ceil(A065033(2*n)-n/log2(10))`
-/

namespace A210435.P9338570666346308220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065033 (2 * n) : ℝ) - (n : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A210435.P9338570666346308220

namespace A210435

/-- `ceil(A065033(2*n)-n/log2(10))` -/
def P9338570666346308220.Spec : Prop :=
  ∀ n, P9338570666346308220.a n = A210435 n

end A210435

/-! ## A210435.P16757150756874922727

`A123108(A005843(n))+1-A034887(n)`
-/

namespace A210435.P16757150756874922727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A005843 n).toNat + (1 - A034887 n)

end

end A210435.P16757150756874922727

namespace A210435

/-- `A123108(A005843(n))+1-A034887(n)` -/
def P16757150756874922727.Spec : Prop :=
  ∀ n, P16757150756874922727.a n = A210435 n

end A210435

/-! ## A210435.P2103391791253210518

`∑{digits}[5^n, and(1, #)!]`
-/

namespace A210435.P2103391791253210518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A210435.P2103391791253210518

namespace A210435

/-- `∑{digits}[5^n, and(1, #)!]` -/
def P2103391791253210518.Spec : Prop :=
  ∀ n, (P2103391791253210518.a n : ℤ) = A210435 n

end A210435

/-! ## A210435.P11281674684659224072

`∑{digits}[5^n, A036370(#)]`
-/

namespace A210435.P11281674684659224072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum

end

end A210435.P11281674684659224072

namespace A210435

/-- `∑{digits}[5^n, A036370(#)]` -/
def P11281674684659224072.Spec : Prop :=
  ∀ n, P11281674684659224072.a n = A210435 n

end A210435

/-! ## A210435.P14465256271313179078

`∑{digits}[A000351(n), A033909(#)+1]`
-/

namespace A210435.P14465256271313179078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033909 x + 1).sum

end

end A210435.P14465256271313179078

namespace A210435

/-- `∑{digits}[A000351(n), A033909(#)+1]` -/
def P14465256271313179078.Spec : Prop :=
  ∀ n, P14465256271313179078.a n = A210435 n

end A210435

/-! ## A210435.P4535981095312078014

`∑{digits}[A000351(n), A266303(2*#)]`
-/

namespace A210435.P4535981095312078014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A266303 (2 * x)).sum

end

end A210435.P4535981095312078014

namespace A210435

/-- `∑{digits}[A000351(n), A266303(2*#)]` -/
def P4535981095312078014.Spec : Prop :=
  ∀ n, P4535981095312078014.a n = A210435 n

end A210435

/-! ## A210435.P5703161923955717642

`∑{digits}[5^n, A007318(A007318(#))]`
-/

namespace A210435.P5703161923955717642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A210435.P5703161923955717642

namespace A210435

/-- `∑{digits}[5^n, A007318(A007318(#))]` -/
def P5703161923955717642.Spec : Prop :=
  ∀ n, P5703161923955717642.a n = A210435 n

end A210435

/-! ## A210435.P442018227826564236

`∑{digits}[A000351(n), A000351(A033909(#))]`
-/

namespace A210435.P442018227826564236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000351 (A033909 x).toNat).sum

end

end A210435.P442018227826564236

namespace A210435

/-- `∑{digits}[A000351(n), A000351(A033909(#))]` -/
def P442018227826564236.Spec : Prop :=
  ∀ n, P442018227826564236.a n = A210435 n

end A210435

/-! ## A210435.P10020767121754573337

`∑{digits}[A000351(n), A001221(A140513(#))]`
-/

namespace A210435.P10020767121754573337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001221 (A140513 x).toNat).sum

end

end A210435.P10020767121754573337

namespace A210435

/-- `∑{digits}[A000351(n), A001221(A140513(#))]` -/
def P10020767121754573337.Spec : Prop :=
  ∀ n, P10020767121754573337.a n = A210435 n

end A210435

/-!
# A210436: Number of digits in 6^n.

The programs for A210436, the canonical program `A210436.P6534242684051334087` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210436 has offset 0).

The definition of A210436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210436.P6534242684051334087

`∑[2-A131534(∑[ceil(n/3)])]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A210436

/-- `∑[2-A131534(∑[ceil(n/3)])]` -/
def P6534242684051334087.Spec : Prop :=
  ∀ n, P6534242684051334087.a n = A210436 n

theorem P6534242684051334087.correct : P6534242684051334087.Spec := by
  intro n
  simp only [A210436]

end A210436

/-! ## A210436.P760942847288839548

`∑[A204418(A001840(n))]`
-/

namespace A210436.P760942847288839548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (A001840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210436.P760942847288839548

namespace A210436

/-- `∑[A204418(A001840(n))]` -/
def P760942847288839548.Spec : Prop :=
  ∀ n, P760942847288839548.a n = A210436 n

end A210436

/-! ## A210436.P3550802711431895514

`A002264(∑[A020639(A000969(2*n+1))])`
-/

namespace A210436.P3550802711431895514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000969 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210436.P3550802711431895514

namespace A210436

/-- `A002264(∑[A020639(A000969(2*n+1))])` -/
def P3550802711431895514.Spec : Prop :=
  ∀ n, P3550802711431895514.a n = A210436 n

end A210436

/-! ## A210436.P332546714079297564

`A002264(∑[A020639(A001840(4*n+3))])`
-/

namespace A210436.P332546714079297564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001840 (4 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210436.P332546714079297564

namespace A210436

/-- `A002264(∑[A020639(A001840(4*n+3))])` -/
def P332546714079297564.Spec : Prop :=
  ∀ n, P332546714079297564.a n = A210436 n

end A210436

/-! ## A210436.P13226105580928968837

`∑[A204418(n*∑[A079978(n)])]`
-/

namespace A210436.P13226105580928968837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210436.P13226105580928968837

namespace A210436

/-- `∑[A204418(n*∑[A079978(n)])]` -/
def P13226105580928968837.Spec : Prop :=
  ∀ n, P13226105580928968837.a n = A210436 n

end A210436

/-! ## A210436.P16311828265510283925

`∑[A011655(A096777(n+2))]`
-/

namespace A210436.P16311828265510283925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A096777 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210436.P16311828265510283925

namespace A210436

/-- `∑[A011655(A096777(n+2))]` -/
def P16311828265510283925.Spec : Prop :=
  ∀ n, P16311828265510283925.a n = A210436 n

end A210436

/-! ## A210436.P17014336111956993703

`∑[A002061(A007980(n))%3]`
-/

namespace A210436.P17014336111956993703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 (A007980 n).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210436.P17014336111956993703

namespace A210436

/-- `∑[A002061(A007980(n))%3]` -/
def P17014336111956993703.Spec : Prop :=
  ∀ n, P17014336111956993703.a n = A210436 n

end A210436

/-! ## A210436.P18027819119629356394

`∑[A010892(A001399(2*n))²]`
-/

namespace A210436.P18027819119629356394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A001399 (2 * n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210436.P18027819119629356394

namespace A210436

/-- `∑[A010892(A001399(2*n))²]` -/
def P18027819119629356394.Spec : Prop :=
  ∀ n, P18027819119629356394.a n = A210436 n

end A210436

/-! ## A210436.P1032598723371960827

`∑[A004396(∑[A004396(n+1)]+1)%2]`
-/

namespace A210436.P1032598723371960827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210436.P1032598723371960827

namespace A210436

/-- `∑[A004396(∑[A004396(n+1)]+1)%2]` -/
def P1032598723371960827.Spec : Prop :=
  ∀ n, P1032598723371960827.a n = A210436 n

end A210436

/-! ## A210436.P8945932379304224533

`Δ[A008615(A007980(n))+A000212(n)]`
-/

namespace A210436.P8945932379304224533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A007980 n).toNat + A000212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210436.P8945932379304224533

namespace A210436

/-- `Δ[A008615(A007980(n))+A000212(n)]` -/
def P8945932379304224533.Spec : Prop :=
  ∀ n, P8945932379304224533.a n = A210436 n

end A210436

/-! ## A210436.P4773892930214478140

`A033183(A174312(2*n))-n`
-/

namespace A210436.P4773892930214478140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A174312 (2 * n)).toNat - (n : ℤ)

end

end A210436.P4773892930214478140

namespace A210436

/-- `A033183(A174312(2*n))-n` -/
def P4773892930214478140.Spec : Prop :=
  ∀ n, P4773892930214478140.a n = A210436 n

end A210436

/-! ## A210436.P10605470239063157617

`A033183(A005843(A174312(n)))-n`
-/

namespace A210436.P10605470239063157617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A005843 (A174312 n).toNat).toNat - (n : ℤ)

end

end A210436.P10605470239063157617

namespace A210436

/-- `A033183(A005843(A174312(n)))-n` -/
def P10605470239063157617.Spec : Prop :=
  ∀ n, P10605470239063157617.a n = A210436 n

end A210436

/-! ## A210436.P6845253471651002579

`∑[dr(A008619(∑[n+1])²)%2]`
-/

namespace A210436.P6845253471651002579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008619 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210436.P6845253471651002579

namespace A210436

/-- `∑[dr(A008619(∑[n+1])²)%2]` -/
def P6845253471651002579.Spec : Prop :=
  ∀ n, (P6845253471651002579.a n : ℤ) = A210436 n

end A210436

/-! ## A210436.P11280546600364286189

`∑{digits}[6^n, A036370(#)]`
-/

namespace A210436.P11280546600364286189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum

end

end A210436.P11280546600364286189

namespace A210436

/-- `∑{digits}[6^n, A036370(#)]` -/
def P11280546600364286189.Spec : Prop :=
  ∀ n, P11280546600364286189.a n = A210436 n

end A210436

/-! ## A210436.P1981132610119020816

`∑{digits}[A248216(n), A055642(#)]`
-/

namespace A210436.P1981132610119020816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A210436.P1981132610119020816

namespace A210436

/-- `∑{digits}[A248216(n), A055642(#)]` -/
def P1981132610119020816.Spec : Prop :=
  ∀ n, P1981132610119020816.a n = A210436 n

end A210436

/-! ## A210436.P10384820716742181037

`∑[A049347(A194275(n+1))²]`
-/

namespace A210436.P10384820716742181037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A194275 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210436.P10384820716742181037

namespace A210436

/-- `∑[A049347(A194275(n+1))²]` -/
def P10384820716742181037.Spec : Prop :=
  ∀ n, P10384820716742181037.a n = A210436 n

end A210436

/-!
# A210437: Greatest prime factor of reversal of digits of n.

The programs for A210437, there is no canonical definition to state claims against.
-/

/-! ## A210437.P5972274550635030666

`A006530(A004086(n+1))`
-/

namespace A210437.P5972274550635030666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004086 (n + 1)).toNat

end

end A210437.P5972274550635030666

/-! ## A210437.P14698063891884915478

`A006530(1-A056965(n+1)+n)`
-/

namespace A210437.P14698063891884915478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - A056965 (n + 1) + (n : ℤ)).toNat

end

end A210437.P14698063891884915478

/-! ## A210437.P12049063955260383098

`A006530(A056964(n+1)-(n+1))`
-/

namespace A210437.P12049063955260383098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056964 (n + 1) - (n + 1 : ℤ)).toNat

end

end A210437.P12049063955260383098

/-! ## A210437.P14684345168829578178

`A006530(A061205(n+1)/(n+1))`
-/

namespace A210437.P14684345168829578178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A061205 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A210437.P14684345168829578178

/-! ## A210437.P8559836589203261558

`A006530(A135020(2*(n+1)))`
-/

namespace A210437.P8559836589203261558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A135020 (2 * (n + 1))).toNat

end

end A210437.P8559836589203261558

/-! ## A210437.P9631953018228910916

`A249740(A004086(n+1)²)`
-/

namespace A210437.P9631953018228910916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A004086 (n + 1) ^ 2).toNat

end

end A210437.P9631953018228910916

/-! ## A210437.P14709500430206072212

`A006530(A167542(A014681(n+1)))`
-/

namespace A210437.P14709500430206072212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167542 (A014681 (n + 1)).toNat).toNat

end

end A210437.P14709500430206072212

/-! ## A210437.P10841363664195452160

`A006530(A167542(A103889(n+1)))`
-/

namespace A210437.P10841363664195452160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167542 (A103889 (n + 1)).toNat).toNat

end

end A210437.P10841363664195452160

/-! ## A210437.P8588041486236974226

`A006530(ratio[A062919(n)])`
-/

namespace A210437.P8588041486236974226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A210437.P8588041486236974226

/-! ## A210437.P9423557788358890797

`A006530(A062919(n+1)/A062919(n))`
-/

namespace A210437.P9423557788358890797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A062919 (n + 1) : ℚ) / (A062919 n : ℚ))).toNat

end

end A210437.P9423557788358890797

/-!
# A210438: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (k^2 + x) / (1 + k^2*x + x^2).

The programs for A210438, there is no canonical definition to state claims against.
-/

/-! ## A210438.P13468616463489572920

`∑[A255574(A332238(n+1))]+1`
-/

namespace A210438.P13468616463489572920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255574 (A332238 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A210438.P13468616463489572920

/-! ## A210438.P16921987011920165353

`A339660(A289678(n+1))+A289683(n)`
-/

namespace A210438.P16921987011920165353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339660 (A289678 (n + 1)).toNat + A289683 n

end

end A210438.P16921987011920165353

/-!
# A210440: a(n) = 2*n*(n+1)*(n+2)/3.

The programs for A210440, the canonical program `A210440.P8137923540614351576` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210440 has offset 0).

The definition of A210440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(n+1)*(n+2)/3` (program `A210440.P10025118694381691089`, by `A210440.P10025118694381691089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210440.P10025118694381691089

`2*n*(n+1)*(n+2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A210440.P10025118694381691089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n * (n + 1) * (n + 2) : ℚ) / 3

end

end A210440.P10025118694381691089

namespace A210440

/-- `2*n*(n+1)*(n+2)/3` -/
def P10025118694381691089.Spec : Prop :=
  ∀ n, P10025118694381691089.a n = (A210440 n : ℚ)

theorem P10025118694381691089.correct : P10025118694381691089.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A210440, Nat.add_sub_cancel, A210440.P10025118694381691089.a, A210440.P8137923540614351576.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A210440, Nat.add_sub_cancel, A210440.P10025118694381691089.a, A210440.P8137923540614351576.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A210440

/-! ## A210440.P8137923540614351576

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=16, a(3)=40`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210440

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8137923540614351576.Spec : Prop :=
  ∀ n, P8137923540614351576.a n = A210440 n

theorem P8137923540614351576.correct : P8137923540614351576.Spec := by
  intro n
  simp only [A210440]

end A210440

/-! ## A210440.P2513388733842370956

`4*A000292(n)`
-/

namespace A210440.P2513388733842370956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000292 n

end

end A210440.P2513388733842370956

namespace A210440

/-- `4*A000292(n)` -/
def P2513388733842370956.Spec : Prop :=
  ∀ n, P2513388733842370956.a n = A210440 n

end A210440

/-! ## A210440.P4109402612637920141

`4*C(n+2, 3)`
-/

namespace A210440.P4109402612637920141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (n + 2) 3

end

end A210440.P4109402612637920141

namespace A210440

/-- `4*C(n+2, 3)` -/
def P4109402612637920141.Spec : Prop :=
  ∀ n, (P4109402612637920141.a n : ℤ) = A210440 n

end A210440

/-! ## A210440.P4412467053858179831

`∑[C(Δ[n²], 2)]+∑[n]`
-/

namespace A210440.P4412467053858179831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A210440.P4412467053858179831

namespace A210440

/-- `∑[C(Δ[n²], 2)]+∑[n]` -/
def P4412467053858179831.Spec : Prop :=
  ∀ n, (P4412467053858179831.a n : ℤ) = A210440 n

end A210440

/-! ## A210440.P12749032462588694771

`∑[∑[ogf(4x/(1-2x+x^2))]]`
-/

namespace A210440.P12749032462588694771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210440.P12749032462588694771

namespace A210440

/-- `∑[∑[ogf(4x/(1-2x+x^2))]]` -/
def P12749032462588694771.Spec : Prop :=
  ∀ n, P12749032462588694771.a n = A210440 n

end A210440

/-! ## A210440.P16757861005678564826

`ogf(4x/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A210440.P16757861005678564826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -4, 6, -4, 1] n

end

end A210440.P16757861005678564826

namespace A210440

/-- `ogf(4x/(1-4x+6x^2-4x^3+x^4))` -/
def P16757861005678564826.Spec : Prop :=
  ∀ n, P16757861005678564826.a n = A210440 n

end A210440

/-! ## A210440.P1955149229687939052

`abs(∑[∑[a(n-1)+4]])` with `a(0)=0`
-/

namespace A210440.P1955149229687939052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210440.P1955149229687939052

namespace A210440

/-- `abs(∑[∑[a(n-1)+4]])` -/
def P1955149229687939052.Spec : Prop :=
  ∀ n, (P1955149229687939052.a n : ℤ) = A210440 n

end A210440

/-! ## A210440.P11247624614467732195

`floor(∑[∑[a(n-1)+4]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A210440.P11247624614467732195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210440.P11247624614467732195

namespace A210440

/-- `floor(∑[∑[a(n-1)+4]])` -/
def P11247624614467732195.Spec : Prop :=
  ∀ n, (P11247624614467732195.a n : ℤ) = A210440 n

end A210440

/-! ## A210440.P9593034612343045963

`a(n-2)+(2*n)²` with `a(0)=0, a(1)=4`
-/

namespace A210440.P9593034612343045963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + (2 * n) ^ 2

end

end A210440.P9593034612343045963

namespace A210440

/-- `a(n-2)+(2*n)²` -/
def P9593034612343045963.Spec : Prop :=
  ∀ n, (P9593034612343045963.a n : ℤ) = A210440 n

end A210440

/-! ## A210440.P12092229345136831421

`round(∑[∑[a(n-1)+4]])` with `a(0)=0, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A210440.P12092229345136831421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210440.P12092229345136831421

namespace A210440

/-- `round(∑[∑[a(n-1)+4]])` -/
def P12092229345136831421.Spec : Prop :=
  ∀ n, (P12092229345136831421.a n : ℤ) = A210440 n

end A210440

/-! ## A210440.P10240031711645154411

`∑[n]+∑[C(n+1+n, 2)]`
-/

namespace A210440.P10240031711645154411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1 + n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A210440.P10240031711645154411

namespace A210440

/-- `∑[n]+∑[C(n+1+n, 2)]` -/
def P10240031711645154411.Spec : Prop :=
  ∀ n, (P10240031711645154411.a n : ℤ) = A210440 n

end A210440

/-! ## A210440.P15628278063047884122

`∑[lcm(n, n+1+n)]+∑[n]`
-/

namespace A210440.P15628278063047884122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A210440.P15628278063047884122

namespace A210440

/-- `∑[lcm(n, n+1+n)]+∑[n]` -/
def P15628278063047884122.Spec : Prop :=
  ∀ n, (P15628278063047884122.a n : ℤ) = A210440 n

end A210440

/-! ## A210440.P8098738446529028505

`lcm(2, 2*n/Δ[3/(n+1)])`
-/

namespace A210440.P8098738446529028505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((2 * n : ℚ) / (f1 (n + 1) - f1 n)))

end

end A210440.P8098738446529028505

namespace A210440

/-- `lcm(2, 2*n/Δ[3/(n+1)])` -/
def P8098738446529028505.Spec : Prop :=
  ∀ n, (P8098738446529028505.a n : ℤ) = A210440 n

end A210440

/-! ## A210440.P18365625878428959600

`∑[∑[a(n-1)+4]]-4` with `a(0)=4, a(1)=0, a(2)=8`
-/

namespace A210440.P18365625878428959600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 0, 8] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A210440.P18365625878428959600

namespace A210440

/-- `∑[∑[a(n-1)+4]]-4` -/
def P18365625878428959600.Spec : Prop :=
  ∀ n, P18365625878428959600.a n = A210440 n

end A210440

/-! ## A210440.P2784924288226386731

`C(n+2+n, 3)-a(n-1)` with `a(0)=0`
-/

namespace A210440.P2784924288226386731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose (n + 2 + n) 3 : ℤ) - a (n - 1)

end

end A210440.P2784924288226386731

namespace A210440

/-- `C(n+2+n, 3)-a(n-1)` -/
def P2784924288226386731.Spec : Prop :=
  ∀ n, P2784924288226386731.a n = A210440 n

end A210440

/-! ## A210440.P7440491715581542656

`floor(a(n-2)+4*n*n)` with `a(0)=0, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A210440.P7440491715581542656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + 4 * (n * n)

end

end A210440.P7440491715581542656

namespace A210440

/-- `floor(a(n-2)+4*n*n)` -/
def P7440491715581542656.Spec : Prop :=
  ∀ n, (P7440491715581542656.a n : ℤ) = A210440 n

end A210440

/-! ## A210440.P14937615595927211084

`(2*n)²-floor(-a(n-2))` with `a(0)=0, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A210440.P14937615595927211084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  ((2 * n) ^ 2 : ℤ) - (-a (n - 2))

end

end A210440.P14937615595927211084

namespace A210440

/-- `(2*n)²-floor(-a(n-2))` -/
def P14937615595927211084.Spec : Prop :=
  ∀ n, P14937615595927211084.a n = A210440 n

end A210440

/-! ## A210440.P11984475080326686941

`(2*n)²-ceil(-a(n-2))` with `a(0)=0, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A210440.P11984475080326686941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  ((2 * n) ^ 2 : ℤ) - (-a (n - 2))

end

end A210440.P11984475080326686941

namespace A210440

/-- `(2*n)²-ceil(-a(n-2))` -/
def P11984475080326686941.Spec : Prop :=
  ∀ n, P11984475080326686941.a n = A210440 n

end A210440

/-! ## A210440.P11977611939951774379

`(2*n)²-round(-a(n-2))` with `a(0)=0, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A210440.P11977611939951774379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  ((2 * n) ^ 2 : ℤ) - (-a (n - 2))

end

end A210440.P11977611939951774379

namespace A210440

/-- `(2*n)²-round(-a(n-2))` -/
def P11977611939951774379.Spec : Prop :=
  ∀ n, P11977611939951774379.a n = A210440 n

end A210440

/-!
# A210441: Nonprime numbers with distinct decimal digits.

The programs for A210441, the canonical program `A210441.P7469224644423689987` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210441 has offset 1).

The definition of A210441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8913 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210441.P7469224644423689987

`filter[A010784(n+2), A005171(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A210441

/-- `filter[A010784(n+2), A005171(#)]` -/
def P7469224644423689987.Spec : Prop :=
  ∀ n, P7469224644423689987.a n = A210441 (n + 1)

theorem P7469224644423689987.correct : P7469224644423689987.Spec := by
  intro n
  simp only [A210441, Nat.add_sub_cancel]

end A210441

/-! ## A210441.P5287098677259259948

`∩[A010784(n+1), A018252(n+1)]`
-/

namespace A210441.P5287098677259259948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210441.P5287098677259259948

namespace A210441

/-- `∩[A010784(n+1), A018252(n+1)]` -/
def P5287098677259259948.Spec : Prop :=
  ∀ n, (P5287098677259259948.a n : ℤ) = A210441 (n + 1)

end A210441

/-! ## A210441.P3117402485163279198

`record[A137564(A018252(n+1))]`
-/

namespace A210441.P3117402485163279198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210441.P3117402485163279198

namespace A210441

/-- `record[A137564(A018252(n+1))]` -/
def P3117402485163279198.Spec : Prop :=
  ∀ n, P3117402485163279198.a n = A210441 (n + 1)

end A210441

/-! ## A210441.P3326037632848268240

`record[A191558(A137564(n+1))]`
-/

namespace A210441.P3326037632848268240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A137564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210441.P3326037632848268240

namespace A210441

/-- `record[A191558(A137564(n+1))]` -/
def P3326037632848268240.Spec : Prop :=
  ∀ n, P3326037632848268240.a n = A210441 (n + 1)

end A210441

/-! ## A210441.P7157320699583464288

`filter[A018252(n+1), A178788(#)]`
-/

namespace A210441.P7157320699583464288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A210441.P7157320699583464288

namespace A210441

/-- `filter[A018252(n+1), A178788(#)]` -/
def P7157320699583464288.Spec : Prop :=
  ∀ n, P7157320699583464288.a n = A210441 (n + 1)

end A210441

/-! ## A210441.P1496851372916811384

`filter[A135684(n+1), A178788(#)]`
-/

namespace A210441.P1496851372916811384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A210441.P1496851372916811384

namespace A210441

/-- `filter[A135684(n+1), A178788(#)]` -/
def P1496851372916811384.Spec : Prop :=
  ∀ n, P1496851372916811384.a n = A210441 (n + 1)

end A210441

/-! ## A210441.P2940168544200857134

`filter[A141468(n+2), A178788(#)]`
-/

namespace A210441.P2940168544200857134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A210441.P2940168544200857134

namespace A210441

/-- `filter[A141468(n+2), A178788(#)]` -/
def P2940168544200857134.Spec : Prop :=
  ∀ n, P2940168544200857134.a n = A210441 (n + 1)

end A210441

/-! ## A210441.P2981692758664407898

`filter[A222307(2*n+1), A178788(#)]`
-/

namespace A210441.P2981692758664407898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A210441.P2981692758664407898

namespace A210441

/-- `filter[A222307(2*n+1), A178788(#)]` -/
def P2981692758664407898.Spec : Prop :=
  ∀ n, P2981692758664407898.a n = A210441 (n + 1)

end A210441

/-! ## A210441.P7848816442393286584

`filter[A073846(2*n+1), A178788(#)]`
-/

namespace A210441.P7848816442393286584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A210441.P7848816442393286584

namespace A210441

/-- `filter[A073846(2*n+1), A178788(#)]` -/
def P7848816442393286584.Spec : Prop :=
  ∀ n, P7848816442393286584.a n = A210441 (n + 1)

end A210441

/-! ## A210441.P9671586091022020054

`record[A137564(A063928(n+1))]`
-/

namespace A210441.P9671586091022020054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A063928 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210441.P9671586091022020054

namespace A210441

/-- `record[A137564(A063928(n+1))]` -/
def P9671586091022020054.Spec : Prop :=
  ∀ n, P9671586091022020054.a n = A210441 (n + 1)

end A210441

/-! ## A210441.P5058221161859442727

`record[A320486(A018252(A003963(n+1)))]`
-/

namespace A210441.P5058221161859442727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A018252 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210441.P5058221161859442727

namespace A210441

/-- `record[A320486(A018252(A003963(n+1)))]` -/
def P5058221161859442727.Spec : Prop :=
  ∀ n, P5058221161859442727.a n = A210441 (n + 1)

end A210441

/-!
# A210442: Number of partitions of n into proper divisors of n, cf. A027751.

The programs for A210442, there is no canonical definition to state claims against.
-/

/-! ## A210442.P14151467592414252942

`A018818(abs(1-n)+1)-1`
-/

namespace A210442.P14151467592414252942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A210442.P14151467592414252942

/-! ## A210442.P15098533623189394215

`A057428(n)+A018818(A028310(n))`
-/

namespace A210442.P15098533623189394215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A018818 (A028310 n).toNat

end

end A210442.P15098533623189394215

/-! ## A210442.P13795820632753646279

`A057428(n)+A018818(A000007(n)+n)`
-/

namespace A210442.P13795820632753646279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A018818 (A000007 n + (n : ℤ)).toNat

end

end A210442.P13795820632753646279

/-! ## A210442.P8038216124667090502

`A057428(n)+A018818(A123108(2*n))`
-/

namespace A210442.P8038216124667090502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A018818 (A123108 (2 * n)).toNat

end

end A210442.P8038216124667090502

/-! ## A210442.P12836114090596782681

`A018818(A123108(2*n))-1-A008683(2*(n+1)²)`
-/

namespace A210442.P12836114090596782681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (A123108 (2 * n)).toNat - 1 - A008683 (2 * (n + 1) ^ 2)

end

end A210442.P12836114090596782681

/-! ## A210442.P12201008693683249552

`C(2, n+2)-(1-A018818(n^A178334(n)))`
-/

namespace A210442.P12201008693683249552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - (1 - A018818 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat)

end

end A210442.P12201008693683249552

/-! ## A210442.P3368073239616752001

`A057428(n)+A018818(n^A178334(n))`
-/

namespace A210442.P3368073239616752001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A018818 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A210442.P3368073239616752001

/-!
# A210443: G.f.: Sum_{n>=0} x^n * (1 + n^2*x)^n / (1 + x + n^2*x^2)^n.

The programs for A210443, there is no canonical definition to state claims against.
-/

/-! ## A210443.P17890174794247429816

`A066839(∏[a(n-1)+3])` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A210443.P17890174794247429816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 6] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A210443.P17890174794247429816

/-! ## A210443.P17032978502428938814

`A089239(A261788(n))`
-/

namespace A210443.P17032978502428938814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089239 (A261788 n).toNat

end

end A210443.P17032978502428938814

/-!
# A210444: a(n) = |{0

The programs for A210444, there is no canonical definition to state claims against.
-/

/-! ## A210444.P10005962012869401815

`A226949(n+1)%A226948(A271125(n))`
-/

namespace A210444.P10005962012869401815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226949 (n + 1)) (A226948 (A271125 n).toNat)

end

end A210444.P10005962012869401815

/-! ## A210444.P5021266024286429553

`and(A226934(A024781(n+1)), A226949(n+1))`
-/

namespace A210444.P5021266024286429553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A226934 (A024781 (n + 1)).toNat) (A226949 (n + 1))

end

end A210444.P5021266024286429553

/-! ## A210444.P4583193621000839736

`A226949(n+1)-A010051(A220051(n))`
-/

namespace A210444.P4583193621000839736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226949 (n + 1) - A010051 (A220051 n).toNat

end

end A210444.P4583193621000839736

/-! ## A210444.P9233085832324033031

`A226949(n+1)%A008933(n)`
-/

namespace A210444.P9233085832324033031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226949 (n + 1)) (A008933 n)

end

end A210444.P9233085832324033031

/-! ## A210444.P16862918654418590454

`A226949(n+1)-A226949(A257771(n+1))`
-/

namespace A210444.P16862918654418590454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226949 (n + 1) - A226949 (A257771 (n + 1)).toNat

end

end A210444.P16862918654418590454

/-!
# A210445: Least positive integer k with k*n practical.

The programs for A210445, there is no canonical definition to state claims against.
-/

/-! ## A210445.P18383173160776818981

`A275121(n+1)/(n+1)`
-/

namespace A210445.P18383173160776818981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275121 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A210445.P18383173160776818981

/-! ## A210445.P8032254318540877681

`(3*A275121(n+1))%A016789(n)`
-/

namespace A210445.P8032254318540877681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A275121 (n + 1)) (A016789 n)

end

end A210445.P8032254318540877681

/-! ## A210445.P16889095939642327841

`round(acot(A000027(n+1))*A275121(n+1))`
-/

namespace A210445.P16889095939642327841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A000027 (n + 1) : ℝ) * (A275121 (n + 1) : ℝ))

end

end A210445.P16889095939642327841

/-! ## A210445.P7803390551222814220

`A028310(A275121(n+1)%A257088(n))`
-/

namespace A210445.P7803390551222814220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A275121 (n + 1)) (A257088 n)).toNat

end

end A210445.P7803390551222814220

/-! ## A210445.P5560852836258479781

`(n+1)^(A280560(A093178(n))+1)*A275121(n+1)`
-/

namespace A210445.P5560852836258479781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A280560 (A093178 n).toNat + 1 : ℤ) * (A275121 (n + 1) : ℚ)

end

end A210445.P5560852836258479781

/-! ## A210445.P3595750623592776811

`gcd(A064451(n+1), A377311(n+1))`
-/

namespace A210445.P3595750623592776811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064451 (n + 1)) (A377311 (n + 1))

end

end A210445.P3595750623592776811

/-! ## A210445.P4656113444154220279

`gcd(A341107(n), A377311(n+1))`
-/

namespace A210445.P4656113444154220279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341107 n) (A377311 (n + 1))

end

end A210445.P4656113444154220279

/-! ## A210445.P9490152639361983308

`A008486(A275121(n+1))%A016789(n)`
-/

namespace A210445.P9490152639361983308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A275121 (n + 1)).toNat) (A016789 n)

end

end A210445.P9490152639361983308

/-! ## A210445.P16820978365003131316

`A008458(A275121(n+1))%A016969(n)`
-/

namespace A210445.P16820978365003131316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A275121 (n + 1)).toNat) (A016969 n)

end

end A210445.P16820978365003131316

/-! ## A210445.P18028831447167157417

`A008706(A275121(n+1))%A016897(n)`
-/

namespace A210445.P18028831447167157417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A275121 (n + 1)).toNat) (A016897 n)

end

end A210445.P18028831447167157417

/-! ## A210445.P17542617603061152112

`A008593(A275121(n+1))%A017509(n)`
-/

namespace A210445.P17542617603061152112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008593 (A275121 (n + 1)).toNat) (A017509 n)

end

end A210445.P17542617603061152112

/-!
# A210447: Number of primes <= Im(rho_n), where rho_n is the n-th nontrivial zero of Riemann zeta function.

The programs for A210447, there is no canonical definition to state claims against.
-/

/-! ## A210447.P10736884738987771102

`A000720(A023533(n)+A013629(n+1))`
-/

namespace A210447.P10736884738987771102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A023533 n + A013629 (n + 1)).toNat

end

end A210447.P10736884738987771102

/-! ## A210447.P1224396587131559613

`A000720(A055641(n)+A013629(n+1))`
-/

namespace A210447.P1224396587131559613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A055641 n + A013629 (n + 1)).toNat

end

end A210447.P1224396587131559613

/-! ## A210447.P4379663689617684124

`A000720(A092783(n+1)-A168046(n))`
-/

namespace A210447.P4379663689617684124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A092783 (n + 1) - A168046 n).toNat

end

end A210447.P4379663689617684124

/-! ## A210447.P8142868665239899125

`A000720(A123740(n+1)+A013629(n+1))`
-/

namespace A210447.P8142868665239899125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A123740 (n + 1) + A013629 (n + 1)).toNat

end

end A210447.P8142868665239899125

/-! ## A210447.P10821046550343505457

`A000720(A353680(n+5)+A013629(n+1))`
-/

namespace A210447.P10821046550343505457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A353680 (n + 5) + A013629 (n + 1)).toNat

end

end A210447.P10821046550343505457

/-!
# A210448: Total number of different letters summed over all ternary words of length n.

The programs for A210448, the canonical program `A210448.P2221736625944417874` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210448 has offset 0).

The definition of A210448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210448.P2221736625944417874

`3*(3^n-2^n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210448

/-- `3*(3^n-2^n)` -/
def P2221736625944417874.Spec : Prop :=
  ∀ n, P2221736625944417874.a n = A210448 n

theorem P2221736625944417874.correct : P2221736625944417874.Spec := by
  intro n
  simp only [A210448]

end A210448

/-! ## A210448.P8106318893111064404

`ogf(3x/(1-5x+6x^2))`
-/

namespace A210448.P8106318893111064404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -5, 6] n

end

end A210448.P8106318893111064404

namespace A210448

/-- `ogf(3x/(1-5x+6x^2))` -/
def P8106318893111064404.Spec : Prop :=
  ∀ n, P8106318893111064404.a n = A210448 n

end A210448

/-! ## A210448.P15945241094852230481

`lcm(3, 2^n-3^n)`
-/

namespace A210448.P15945241094852230481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ((2 ^ n : ℤ) - (3 ^ n : ℤ))

end

end A210448.P15945241094852230481

namespace A210448

/-- `lcm(3, 2^n-3^n)` -/
def P15945241094852230481.Spec : Prop :=
  ∀ n, (P15945241094852230481.a n : ℤ) = A210448 n

end A210448

/-! ## A210448.P9972271019466894630

`3^n+a(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A210448.P9972271019466894630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 ^ n + (a (n - 1) + a (n - 1))

end

end A210448.P9972271019466894630

namespace A210448

/-- `3^n+a(n-1)+a(n-1)` -/
def P9972271019466894630.Spec : Prop :=
  ∀ n, (P9972271019466894630.a n : ℤ) = A210448 n

theorem P9972271019466894630.correct : P9972271019466894630.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A210448, Nat.add_sub_cancel, A210448.P9972271019466894630.a, A210448.P2221736625944417874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A210448, Nat.add_sub_cancel, A210448.P9972271019466894630.a, A210448.P2221736625944417874.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A210448

/-! ## A210448.P8539433930973242874

`3^n-a(n-1)/(1/2-1)` with `a(0)=0`
-/

namespace A210448.P8539433930973242874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 ^ n : ℚ) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A210448.P8539433930973242874

namespace A210448

/-- `3^n-a(n-1)/(1/2-1)` -/
def P8539433930973242874.Spec : Prop :=
  ∀ n, P8539433930973242874.a n = (A210448 n : ℚ)

theorem P8539433930973242874.correct : P8539433930973242874.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A210448, Nat.add_sub_cancel, A210448.P8539433930973242874.a, A210448.P2221736625944417874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A210448, Nat.add_sub_cancel, A210448.P8539433930973242874.a, A210448.P2221736625944417874.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A210448

/-! ## A210448.P5853296591921600372

`5*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A210448.P5853296591921600372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2)

end

end A210448.P5853296591921600372

namespace A210448

/-- `5*a(n-1)-6*a(n-2)` -/
def P5853296591921600372.Spec : Prop :=
  ∀ n, P5853296591921600372.a n = A210448 n

theorem P5853296591921600372.correct : P5853296591921600372.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A210448, Nat.add_sub_cancel, A210448.P5853296591921600372.a, A210448.P2221736625944417874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A210448, Nat.add_sub_cancel, A210448.P5853296591921600372.a, A210448.P2221736625944417874.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A210448

/-! ## A210448.P17552112116343793828

`Δ[A094033(n+1)]`
-/

namespace A210448.P17552112116343793828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210448.P17552112116343793828

namespace A210448

/-- `Δ[A094033(n+1)]` -/
def P17552112116343793828.Spec : Prop :=
  ∀ n, P17552112116343793828.a n = A210448 n

end A210448

/-! ## A210448.P3485040845611615194

`Δ[A094734(n+1)]`
-/

namespace A210448.P3485040845611615194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210448.P3485040845611615194

namespace A210448

/-- `Δ[A094734(n+1)]` -/
def P3485040845611615194.Spec : Prop :=
  ∀ n, P3485040845611615194.a n = A210448 n

end A210448

/-! ## A210448.P5710518453954804022

`Δ[3*A134063(n)]`
-/

namespace A210448.P5710518453954804022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A134063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210448.P5710518453954804022

namespace A210448

/-- `Δ[3*A134063(n)]` -/
def P5710518453954804022.Spec : Prop :=
  ∀ n, P5710518453954804022.a n = A210448 n

end A210448

/-! ## A210448.P12230812115621685153

`A168583(n+3)-1`
-/

namespace A210448.P12230812115621685153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168583 (n + 3) - 1

end

end A210448.P12230812115621685153

namespace A210448

/-- `A168583(n+3)-1` -/
def P12230812115621685153.Spec : Prop :=
  ∀ n, P12230812115621685153.a n = A210448 n

end A210448

/-! ## A210448.P8710117086916129652

`A245804(n)+3^n`
-/

namespace A210448.P8710117086916129652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245804 n + (3 ^ n : ℤ)

end

end A210448.P8710117086916129652

namespace A210448

/-- `A245804(n)+3^n` -/
def P8710117086916129652.Spec : Prop :=
  ∀ n, P8710117086916129652.a n = A210448 n

end A210448

/-! ## A210448.P10108856784215333249

`A166060(n)-3^n`
-/

namespace A210448.P10108856784215333249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166060 n - (3 ^ n : ℤ)

end

end A210448.P10108856784215333249

namespace A210448

/-- `A166060(n)-3^n` -/
def P10108856784215333249.Spec : Prop :=
  ∀ n, P10108856784215333249.a n = A210448 n

end A210448

/-! ## A210448.P2221649550083492708

`Δ[3*A000392(n+1)]`
-/

namespace A210448.P2221649550083492708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210448.P2221649550083492708

namespace A210448

/-- `Δ[3*A000392(n+1)]` -/
def P2221649550083492708.Spec : Prop :=
  ∀ n, P2221649550083492708.a n = A210448 n

end A210448

/-! ## A210448.P3137693056647549197

`A001047(n+1)-2^n`
-/

namespace A210448.P3137693056647549197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1) - (2 ^ n : ℤ)

end

end A210448.P3137693056647549197

namespace A210448

/-- `A001047(n+1)-2^n` -/
def P3137693056647549197.Spec : Prop :=
  ∀ n, P3137693056647549197.a n = A210448 n

end A210448

/-! ## A210448.P7565252945216475751

`A003063(n+2)+2^n`
-/

namespace A210448.P7565252945216475751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (n + 2) + (2 ^ n : ℤ)

end

end A210448.P7565252945216475751

namespace A210448

/-- `A003063(n+2)+2^n` -/
def P7565252945216475751.Spec : Prop :=
  ∀ n, P7565252945216475751.a n = A210448 n

end A210448

/-! ## A210448.P9474730219393734172

`3^(n+1)-A007283(n)`
-/

namespace A210448.P9474730219393734172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A007283 n

end

end A210448.P9474730219393734172

namespace A210448

/-- `3^(n+1)-A007283(n)` -/
def P9474730219393734172.Spec : Prop :=
  ∀ n, P9474730219393734172.a n = A210448 n

end A210448

/-! ## A210448.P5840879524797408715

`A083313(n+1)-2^(n+1)`
-/

namespace A210448.P5840879524797408715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A210448.P5840879524797408715

namespace A210448

/-- `A083313(n+1)-2^(n+1)` -/
def P5840879524797408715.Spec : Prop :=
  ∀ n, P5840879524797408715.a n = A210448 n

end A210448

/-! ## A210448.P6332848726865262470

`3^(n+1)-A003945(n+1)`
-/

namespace A210448.P6332848726865262470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A003945 (n + 1)

end

end A210448.P6332848726865262470

namespace A210448

/-- `3^(n+1)-A003945(n+1)` -/
def P6332848726865262470.Spec : Prop :=
  ∀ n, P6332848726865262470.a n = A210448 n

end A210448

/-! ## A210448.P4866376080738796862

`3^(n+1)-A042950(n+1)`
-/

namespace A210448.P4866376080738796862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A042950 (n + 1)

end

end A210448.P4866376080738796862

namespace A210448

/-- `3^(n+1)-A042950(n+1)` -/
def P4866376080738796862.Spec : Prop :=
  ∀ n, P4866376080738796862.a n = A210448 n

end A210448

/-! ## A210448.P17370312701785923659

`A064686(n+2)-2^(n+1)`
-/

namespace A210448.P17370312701785923659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064686 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A210448.P17370312701785923659

namespace A210448

/-- `A064686(n+2)-2^(n+1)` -/
def P17370312701785923659.Spec : Prop :=
  ∀ n, P17370312701785923659.a n = A210448 n

end A210448

/-!
# A210449: Numbers that are the sum of three triangular numbers an odd number of ways.

The programs for A210449, there is no canonical definition to state claims against.
-/

/-! ## A210449.P17166200050430629780

`lt[∏{e}[∏{e}[8*n+3, #+1], #], 2]`
-/

namespace A210449.P17166200050430629780
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A210449.P17166200050430629780

/-! ## A210449.P13545565566127248348

`lt[0, A008443(n)%2]`
-/

namespace A210449.P13545565566127248348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008443 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A210449.P13545565566127248348

/-! ## A210449.P13126975550738278866

`lt[0, A033761(n)%2]`
-/

namespace A210449.P13126975550738278866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033761 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A210449.P13126975550738278866

/-! ## A210449.P5738494413952547989

`eq[1, A246832(n)%2]`
-/

namespace A210449.P5738494413952547989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246832 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210449.P5738494413952547989

/-! ## A210449.P6129960754366454610

`eq[1, gcd(2, A010817(n))]`
-/

namespace A210449.P6129960754366454610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A010817 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210449.P6129960754366454610

/-! ## A210449.P1504762090987037553

`eq[2, A005869(n)%4]`
-/

namespace A210449.P1504762090987037553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005869 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210449.P1504762090987037553

/-! ## A210449.P11899611402565304773

`eq[1, and(1, A275372(n))]`
-/

namespace A210449.P11899611402565304773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A275372 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210449.P11899611402565304773

/-! ## A210449.P11623868066630915749

`eq[4, A005886(n)%8]`
-/

namespace A210449.P11623868066630915749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005886 n) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210449.P11623868066630915749

/-! ## A210449.P13458153766052631177

`eq[1, val(A000005(8*n+3), 2)]`
-/

namespace A210449.P13458153766052631177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (8 * n + 3)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210449.P13458153766052631177

/-! ## A210449.P11664192344313520871

`lt[val(A000005(9*n+3-n), 4)², 1]`
-/

namespace A210449.P11664192344313520871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (9 * n + 3 - n)).toNat 4 ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210449.P11664192344313520871

/-!
# A210450: Numbers n such that 16n + 7 is in A192628.

The programs for A210450, there is no canonical definition to state claims against.
-/

/-! ## A210450.P8983329882048666294

`lt[0, A036015(n)%2]`
-/

namespace A210450.P8983329882048666294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036015 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A210450.P8983329882048666294

/-! ## A210450.P4665664843555722273

`eq[1, gcd(2, A153149(n))]`
-/

namespace A210450.P4665664843555722273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A153149 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210450.P4665664843555722273

/-! ## A210450.P12835137142688485631

`eq[1, gcd(4, A259774(n))]`
-/

namespace A210450.P12835137142688485631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A259774 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210450.P12835137142688485631

/-! ## A210450.P14024209512464724068

`eq[1, A233759(n+1)%2]`
-/

namespace A210450.P14024209512464724068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233759 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210450.P14024209512464724068

/-! ## A210450.P4875033062571307532

`eq[1, A006950(2*n+1)%2]`
-/

namespace A210450.P4875033062571307532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006950 (2 * n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210450.P4875033062571307532

/-! ## A210450.P12690710757090532979

`eq[1, and(1, A002513(2*n+1))]`
-/

namespace A210450.P12690710757090532979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002513 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210450.P12690710757090532979

/-! ## A210450.P11695555105353425336

`eq[2, A000034(abs(A153149(n)))]`
-/

namespace A210450.P11695555105353425336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 |A153149 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210450.P11695555105353425336

/-! ## A210450.P11741498049219973753

`eq[1, A000032(and(1, A153149(n)))]`
-/

namespace A210450.P11741498049219973753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land 1 (A153149 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210450.P11741498049219973753

/-! ## A210450.P9481867005062431406

`eq[1, A000045(and(1, A153149(n)))]`
-/

namespace A210450.P9481867005062431406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (A153149 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210450.P9481867005062431406

/-! ## A210450.P14333168468424695724

`eq[1, gcd(A036015(n), A059867(n+1))]`
-/

namespace A210450.P14333168468424695724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036015 n) (A059867 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210450.P14333168468424695724

/-!
# A210451: n minus the number of parts in the n-th region of the set of partitions of j, if 1<=n<=A000041(j), with a(0) = 0.

The programs for A210451, there is no canonical definition to state claims against.
-/

/-! ## A210451.P9414045622158479843

`n-A194446(ceil(abs(γ-n)))%(n+1)`
-/

namespace A210451.P9414045622158479843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A194446 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat) (n + 1 : ℤ)

end

end A210451.P9414045622158479843

/-! ## A210451.P17092363143755566015

`round(acot(n)+n)-A194446(round(acot(n)+n))`
-/

namespace A210451.P17092363143755566015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - A194446 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A210451.P17092363143755566015

/-! ## A210451.P849681371125117263

`abs(1-n)-A194446(abs(1-n)+1)+1`
-/

namespace A210451.P849681371125117263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| - A194446 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A210451.P849681371125117263

/-! ## A210451.P1915833505846427348

`C(2, n²)+n-A194446(C(2, n²)+n)`
-/

namespace A210451.P1915833505846427348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n ^ 2) + n : ℤ) - A194446 (Nat.choose 2 (n ^ 2) + n)

end

end A210451.P1915833505846427348

/-! ## A210451.P7168651036180062352

`round(1/acot(n))-A194446(A028310(n))`
-/

namespace A210451.P7168651036180062352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) - A194446 (A028310 n).toNat

end

end A210451.P7168651036180062352

/-! ## A210451.P9709795873323320562

`(n-A194446(A137734(n²)))%(n+1)`
-/

namespace A210451.P9709795873323320562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A194446 (A137734 (n ^ 2)).toNat) (n + 1 : ℤ)

end

end A210451.P9709795873323320562

/-! ## A210451.P12727347379880579813

`A028310(n)-A194446(round(sqrt(n²+1)))`
-/

namespace A210451.P12727347379880579813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A194446 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A210451.P12727347379880579813

/-! ## A210451.P7667710668829118749

`(n-A194446(A065033(2*n)))%(n+1)`
-/

namespace A210451.P7667710668829118749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A194446 (A065033 (2 * n)).toNat) (n + 1 : ℤ)

end

end A210451.P7667710668829118749

/-! ## A210451.P3680983280694680770

`A233583(n+1)-A194446(round(acot(n)+n))`
-/

namespace A210451.P3680983280694680770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A194446 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A210451.P3680983280694680770

/-! ## A210451.P13960769360418136143

`C(2, n+2)+n-A194446(A123108(2*n))`
-/

namespace A210451.P13960769360418136143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) + n : ℤ) - A194446 (A123108 (2 * n)).toNat

end

end A210451.P13960769360418136143

/-!
# A210454: Cipolla pseudoprimes to base 2: (4^p-1)/3 for any prime p greater than 3.

The programs for A210454, there is no canonical definition to state claims against.
-/

/-! ## A210454.P13174250829520230810

`A301797(n+3)`
-/

namespace A210454.P13174250829520230810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301797 (n + 3)

end

end A210454.P13174250829520230810

/-! ## A210454.P2940995063453960548

`record[A019322(n+5)]`
-/

namespace A210454.P2940995063453960548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019322 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210454.P2940995063453960548

/-! ## A210454.P15256474374811548240

`A152099(n+3)/3`
-/

namespace A210454.P15256474374811548240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152099 (n + 3) : ℚ) / 3

end

end A210454.P15256474374811548240

/-! ## A210454.P16457807541382312895

`floor(4^A000040(n+3)/3)`
-/

namespace A210454.P16457807541382312895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) ^ (A000040 (n + 3) : ℤ) / 3⌋

end

end A210454.P16457807541382312895

/-! ## A210454.P362464019018169913

`A002450(A066047(n+1))`
-/

namespace A210454.P362464019018169913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (A066047 (n + 1)).toNat

end

end A210454.P362464019018169913

/-!
# A210455: Characteristic function of pseudoperfect (or semiperfect) numbers.

The programs for A210455, there is no canonical definition to state claims against.
-/

/-! ## A210455.P7578862614803683121

`char[A005835(n+1)-1]`
-/

namespace A210455.P7578862614803683121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A210455.P7578862614803683121

/-! ## A210455.P6783806704609950938

`char[lt[0, A065205(n+1)]]`
-/

namespace A210455.P6783806704609950938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A210455.P6783806704609950938

/-! ## A210455.P7498235558318434668

`char[lt[1, A074971(n+1)]]`
-/

namespace A210455.P7498235558318434668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074971 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A210455.P7498235558318434668

/-! ## A210455.P11641541695959606970

`A000700(C(2, A033630(n+1)))`
-/

namespace A210455.P11641541695959606970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Nat.choose 2 (A033630 (n + 1)).toNat)

end

end A210455.P11641541695959606970

/-! ## A210455.P13921783923700727084

`A002968(C(2, A074971(n+1)))`
-/

namespace A210455.P13921783923700727084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002968 (Nat.choose 2 (A074971 (n + 1)).toNat)

end

end A210455.P13921783923700727084

/-! ## A210455.P6491300010726845660

`A010052(C(2, A074971(n+1)))`
-/

namespace A210455.P6491300010726845660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Nat.choose 2 (A074971 (n + 1)).toNat)

end

end A210455.P6491300010726845660

/-! ## A210455.P6947945629399238114

`A010054(C(2, A074971(n+1)))`
-/

namespace A210455.P6947945629399238114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Nat.choose 2 (A074971 (n + 1)).toNat)

end

end A210455.P6947945629399238114

/-! ## A210455.P10706032513279060943

`A169975(C(2, A074971(n+1)))`
-/

namespace A210455.P10706032513279060943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 (Nat.choose 2 (A074971 (n + 1)).toNat)

end

end A210455.P10706032513279060943

/-! ## A210455.P8543806664549440084

`A286934(floor(1/A074971(n+1)))`
-/

namespace A210455.P8543806664549440084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286934 ⌊1 / (A074971 (n + 1) : ℚ)⌋.toNat

end

end A210455.P8543806664549440084

/-! ## A210455.P5185776544071673250

`A307968(floor(2/A074971(n+1)))`
-/

namespace A210455.P5185776544071673250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307968 ⌊2 / (A074971 (n + 1) : ℚ)⌋.toNat

end

end A210455.P5185776544071673250

/-! ## A210455.P9447883155754135797

`A054024(A151800(n+2))%A074971(n+1)`
-/

namespace A210455.P9447883155754135797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054024 (A151800 (n + 2)).toNat) (A074971 (n + 1))

end

end A210455.P9447883155754135797

/-! ## A210455.P621408835009349910

`A057427(A065205(n+1))`
-/

namespace A210455.P621408835009349910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A065205 (n + 1)).toNat

end

end A210455.P621408835009349910

/-! ## A210455.P17840022859967659020

`A057427(A033630(n+1)-1)`
-/

namespace A210455.P17840022859967659020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A033630 (n + 1) - 1).toNat

end

end A210455.P17840022859967659020

/-! ## A210455.P8607426242480220919

`A040976(A074971(n+1))%A102457(n+2)`
-/

namespace A210455.P8607426242480220919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (A074971 (n + 1)).toNat) (A102457 (n + 2))

end

end A210455.P8607426242480220919

/-! ## A210455.P16959034320251992746

`and(A000337(n), A259111(n+1))`
-/

namespace A210455.P16959034320251992746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A259111 (n + 1))

end

end A210455.P16959034320251992746

/-! ## A210455.P17501340045406324465

`and(A048478(n), A259111(n+1))`
-/

namespace A210455.P17501340045406324465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048478 n) (A259111 (n + 1))

end

end A210455.P17501340045406324465

/-! ## A210455.P4233636211827252040

`and(A048479(n), A259111(n+1))`
-/

namespace A210455.P4233636211827252040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A259111 (n + 1))

end

end A210455.P4233636211827252040

/-! ## A210455.P9752725409788089955

`and(A048482(n), A259111(n+1))`
-/

namespace A210455.P9752725409788089955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048482 n) (A259111 (n + 1))

end

end A210455.P9752725409788089955

/-! ## A210455.P5995591237957718035

`and(A027608(n), A259111(n+1))`
-/

namespace A210455.P5995591237957718035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A259111 (n + 1))

end

end A210455.P5995591237957718035

/-! ## A210455.P10575191179256822569

`and(A042068(n), A294936(n+1))`
-/

namespace A210455.P10575191179256822569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042068 n) (A294936 (n + 1))

end

end A210455.P10575191179256822569

/-!
# A210456: Period of the sequence of the digital roots of Fibonacci n-step numbers.

The programs for A210456, there is no canonical definition to state claims against.
-/

/-! ## A210456.P13708659699533375276

`A122553(n)*A337212(n+1)`
-/

namespace A210456.P13708659699533375276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A337212 (n + 1)

end

end A210456.P13708659699533375276

/-! ## A210456.P3316188795897719319

`dr(A032308(n))*A337212(n+1)`
-/

namespace A210456.P3316188795897719319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A032308 n) : ℤ) * A337212 (n + 1)

end

end A210456.P3316188795897719319

/-! ## A210456.P3670067543840667650

`(A158388(n)+2)*A337212(n+1)`
-/

namespace A210456.P3670067543840667650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158388 n + 2) * A337212 (n + 1)

end

end A210456.P3670067543840667650

/-! ## A210456.P12816999590054821409

`A131294(3*n+1)*A337212(n+1)`
-/

namespace A210456.P12816999590054821409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131294 (3 * n + 1) * A337212 (n + 1)

end

end A210456.P12816999590054821409

/-! ## A210456.P13770188540096903846

`lcm(A122553(A004273(n)), A337212(n+1))`
-/

namespace A210456.P13770188540096903846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122553 (A004273 n).toNat) (A337212 (n + 1))

end

end A210456.P13770188540096903846

/-!
# A210457: Triangular array read by rows: T(n,k) is the number of elements x in {1,2,...,n} such that |(f^-1)(x)| = k over all functions f:{1,2,...,n}->{1,2,...,n}; n>=0, 0<=k<=n.

The programs for A210457, there is no canonical definition to state claims against.
-/

/-! ## A210457.P3721212169612120135

`A003056(n)*A055134(n)`
-/

namespace A210457.P3721212169612120135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A055134 n

end

end A210457.P3721212169612120135

/-! ## A210457.P7622175976433964087

`∑[A073424(n)]*A055134(n)`
-/

namespace A210457.P7622175976433964087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A055134 n

end

end A210457.P7622175976433964087

/-! ## A210457.P5095412315132606036

`A055134(n)*A259361(2*n)`
-/

namespace A210457.P5095412315132606036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055134 n * A259361 (2 * n)

end

end A210457.P5095412315132606036

/-! ## A210457.P3826302444551371727

`(A002024(n+1)-1)*A055134(n)`
-/

namespace A210457.P3826302444551371727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - 1) * A055134 n

end

end A210457.P3826302444551371727

/-! ## A210457.P17671484969635011728

`A055134(n)*A123578(A057944(n))`
-/

namespace A210457.P17671484969635011728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055134 n * A123578 (A057944 n).toNat

end

end A210457.P17671484969635011728

/-! ## A210457.P12099650140064739231

`abs(A137370(n+1))*A003056(n)`
-/

namespace A210457.P12099650140064739231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137370 (n + 1)| * A003056 n

end

end A210457.P12099650140064739231

/-! ## A210457.P17781325045651750307

`lcm(A083291(n)*A137370(n+1), A083291(n))`
-/

namespace A210457.P17781325045651750307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083291 n * A137370 (n + 1)) (A083291 n)

end

end A210457.P17781325045651750307

/-!
# A210458: Expansion of q * (psi(-q^5) / psi(-q))^2 in powers of q where psi() is a Ramanujan theta function.

The programs for A210458, there is no canonical definition to state claims against.
-/

/-! ## A210458.P17258265957974476744

`A228864(n+1)`
-/

namespace A210458.P17258265957974476744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228864 (n + 1)

end

end A210458.P17258265957974476744

/-! ## A210458.P15335548459810948793

`A225701(n+1)/5`
-/

namespace A210458.P15335548459810948793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225701 (n + 1) : ℚ) / 5

end

end A210458.P15335548459810948793

/-! ## A210458.P16939141153906203540

`abs(A138519(n+1))`
-/

namespace A210458.P16939141153906203540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138519 (n + 1)|

end

end A210458.P16939141153906203540

/-! ## A210458.P12684354523506602924

`A033999(n)*A138519(n+1)`
-/

namespace A210458.P12684354523506602924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138519 (n + 1)

end

end A210458.P12684354523506602924

/-! ## A210458.P13061742006731132759

`gcd(A000038(n), A138519(n+1))`
-/

namespace A210458.P13061742006731132759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138519 (n + 1))

end

end A210458.P13061742006731132759

/-! ## A210458.P9214324102233348995

`lcm(A000034(n), A138519(n+1))`
-/

namespace A210458.P9214324102233348995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A138519 (n + 1))

end

end A210458.P9214324102233348995

/-! ## A210458.P10309864635365790200

`∏[A138519(n+1)/A138520(n)]`
-/

namespace A210458.P10309864635365790200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138519 (n + 1) : ℚ) / (A138520 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A210458.P10309864635365790200

/-! ## A210458.P10747856882274565569

`abs(A138520(n+1))`
-/

namespace A210458.P10747856882274565569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138520 (n + 1)|

end

end A210458.P10747856882274565569

/-! ## A210458.P898285308100326176

`A033999(n+1)*A138520(n+1)`
-/

namespace A210458.P898285308100326176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A138520 (n + 1)

end

end A210458.P898285308100326176

/-! ## A210458.P12060226521905685401

`gcd(A138520(3*n)*A138520(n+1), A138520(n+1))`
-/

namespace A210458.P12060226521905685401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138520 (3 * n) * A138520 (n + 1)) (A138520 (n + 1))

end

end A210458.P12060226521905685401

/-!
# A210460: Expansion of x*(1+x)/(1-x-2*x^2-2*x^3-x^4).

The programs for A210460, the canonical program `A210460.P13248828150686110899` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210460 has offset 1).

The definition of A210460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x-2x^2-2x^3-x^4))` (program `A210460.P13248828150686110899`, by `A210460.P13248828150686110899.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210460.P13248828150686110899

`ogf((1+x)/(1-x-2x^2-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210460

/-- `ogf((1+x)/(1-x-2x^2-2x^3-x^4))` -/
def P13248828150686110899.Spec : Prop :=
  ∀ n, P13248828150686110899.a n = A210460 (n + 1)

theorem P13248828150686110899.correct : P13248828150686110899.Spec := by
  intro n
  simp only [A210460, Nat.add_sub_cancel]

end A210460

/-! ## A210460.P11875127772923358992

`round(ϕ*(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A210460.P11875127772923358992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + a (n - 2) : ℝ))

end

end A210460.P11875127772923358992

namespace A210460

/-- `round(ϕ*(a(n-1)+a(n-2)))` -/
def P11875127772923358992.Spec : Prop :=
  ∀ n, P11875127772923358992.a n = A210460 (n + 1)

end A210460

/-! ## A210460.P2253434950895115909

`A363958(Δ[n²])`
-/

namespace A210460.P2253434950895115909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363958 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A210460.P2253434950895115909

namespace A210460

/-- `A363958(Δ[n²])` -/
def P2253434950895115909.Spec : Prop :=
  ∀ n, P2253434950895115909.a n = A210460 (n + 1)

end A210460

/-! ## A210460.P1226560068835256733

`A005913(n)-A005908(n)`
-/

namespace A210460.P1226560068835256733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005913 n - A005908 n

end

end A210460.P1226560068835256733

namespace A210460

/-- `A005913(n)-A005908(n)` -/
def P1226560068835256733.Spec : Prop :=
  ∀ n, P1226560068835256733.a n = A210460 (n + 1)

end A210460

/-!
# A210461: Cipolla pseudoprimes to base 3: (9^p-1)/8 for any odd prime p.

The programs for A210461, there is no canonical definition to state claims against.
-/

/-! ## A210461.P3426557491577681419

`record[A019327(n+3)]`
-/

namespace A210461.P3426557491577681419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019327 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210461.P3426557491577681419

/-! ## A210461.P4019458015023037110

`A002452(p?[comp[2*n]])`
-/

namespace A210461.P4019458015023037110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A210461.P4019458015023037110

/-! ## A210461.P12600363914404365844

`floor(9^A000040(n+2)/8)`
-/

namespace A210461.P12600363914404365844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) ^ (A000040 (n + 2) : ℤ) / 8⌋

end

end A210461.P12600363914404365844

/-! ## A210461.P14678433488889679611

`A002452(A065091(n+1))`
-/

namespace A210461.P14678433488889679611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 (A065091 (n + 1)).toNat

end

end A210461.P14678433488889679611

/-! ## A210461.P6131082748698872035

`A002452(A000040(n+2))`
-/

namespace A210461.P6131082748698872035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 (A000040 (n + 2)).toNat

end

end A210461.P6131082748698872035

/-!
# A210464: Number of bracelets with 2 blue, 2 red, and n black beads.

The programs for A210464, the canonical program `A210464.P14298535841484327217` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210464 has offset 1).

The definition of A210464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210464.P14298535841484327217

`(25+7*(-1)^(n+1)+3*(11+(-1)^(n+1))*(n+1)+14*(n+1)²+2*(n+1)^3)/16`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210464

/-- `(25+7*(-1)^(n+1)+3*(11+(-1)^(n+1))*(n+1)+14*(n+1)²+2*(n+1)^3)/16` -/
def P14298535841484327217.Spec : Prop :=
  ∀ n, P14298535841484327217.a n = (A210464 (n + 1) : ℚ)

end A210464

/-! ## A210464.P2055672040674918542

`Δ[A005994(n)+A002624(n)]`
-/

namespace A210464.P2055672040674918542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 n + A002624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210464.P2055672040674918542

namespace A210464

/-- `Δ[A005994(n)+A002624(n)]` -/
def P2055672040674918542.Spec : Prop :=
  ∀ n, P2055672040674918542.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P9432782915484153486

`A168380(n+2)-A006918(n)`
-/

namespace A210464.P9432782915484153486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 2) - A006918 n

end

end A210464.P9432782915484153486

namespace A210464

/-- `A168380(n+2)-A006918(n)` -/
def P9432782915484153486.Spec : Prop :=
  ∀ n, P9432782915484153486.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P4346963579687428004

`Δ[A002624(n)+∑[A005993(n)]]`
-/

namespace A210464.P4346963579687428004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210464.P4346963579687428004

namespace A210464

/-- `Δ[A002624(n)+∑[A005993(n)]]` -/
def P4346963579687428004.Spec : Prop :=
  ∀ n, P4346963579687428004.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P6520424514768626736

`A005993(n+1)+Δ[A002624(n)]`
-/

namespace A210464.P6520424514768626736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 (n + 1) + (f1 (n + 1) - f1 n)

end

end A210464.P6520424514768626736

namespace A210464

/-- `A005993(n+1)+Δ[A002624(n)]` -/
def P6520424514768626736.Spec : Prop :=
  ∀ n, P6520424514768626736.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P6953402180150063091

`A006918(n)+Δ[A032091(n+6)]`
-/

namespace A210464.P6953402180150063091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032091 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + (f1 (n + 1) - f1 n)

end

end A210464.P6953402180150063091

namespace A210464

/-- `A006918(n)+Δ[A032091(n+6)]` -/
def P6953402180150063091.Spec : Prop :=
  ∀ n, P6953402180150063091.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P11108659078011594788

`A053307(n+1)+A002623(n+1)`
-/

namespace A210464.P11108659078011594788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053307 (n + 1) + A002623 (n + 1)

end

end A210464.P11108659078011594788

namespace A210464

/-- `A053307(n+1)+A002623(n+1)` -/
def P11108659078011594788.Spec : Prop :=
  ∀ n, P11108659078011594788.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P7765798068309752785

`A002624(n+1)+A005993(n+1)-A002624(n)`
-/

namespace A210464.P7765798068309752785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 (n + 1) + (A005993 (n + 1) - A002624 n)

end

end A210464.P7765798068309752785

namespace A210464

/-- `A002624(n+1)+A005993(n+1)-A002624(n)` -/
def P7765798068309752785.Spec : Prop :=
  ∀ n, P7765798068309752785.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P10929042864392638991

`A005996(n+2)-(A006918(n+1)+A002623(n))`
-/

namespace A210464.P10929042864392638991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005996 (n + 2) - (A006918 (n + 1) + A002623 n)

end

end A210464.P10929042864392638991

namespace A210464

/-- `A005996(n+2)-(A006918(n+1)+A002623(n))` -/
def P10929042864392638991.Spec : Prop :=
  ∀ n, P10929042864392638991.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P8631235569865820924

`A053307(n+1)+A054974(n+3)+A053307(n)`
-/

namespace A210464.P8631235569865820924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053307 (n + 1) + (A054974 (n + 3) + A053307 n)

end

end A210464.P8631235569865820924

namespace A210464

/-- `A053307(n+1)+A054974(n+3)+A053307(n)` -/
def P8631235569865820924.Spec : Prop :=
  ∀ n, P8631235569865820924.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P14862770999745497873

`A027656(n+1)+A006918(n)+A003451(n+6)`
-/

namespace A210464.P14862770999745497873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (n + 1) + (A006918 n + A003451 (n + 6))

end

end A210464.P14862770999745497873

namespace A210464

/-- `A027656(n+1)+A006918(n)+A003451(n+6)` -/
def P14862770999745497873.Spec : Prop :=
  ∀ n, P14862770999745497873.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P5936408072850949236

`A032091(n+7)+A006918(n)-A032091(n+6)`
-/

namespace A210464.P5936408072850949236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032091 (n + 7) + (A006918 n - A032091 (n + 6))

end

end A210464.P5936408072850949236

namespace A210464

/-- `A032091(n+7)+A006918(n)-A032091(n+6)` -/
def P5936408072850949236.Spec : Prop :=
  ∀ n, P5936408072850949236.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P7576489389113973243

`A023856(n+1)+A058187(n+1)+A058187(n+1)`
-/

namespace A210464.P7576489389113973243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + (A058187 (n + 1) + A058187 (n + 1))

end

end A210464.P7576489389113973243

namespace A210464

/-- `A023856(n+1)+A058187(n+1)+A058187(n+1)` -/
def P7576489389113973243.Spec : Prop :=
  ∀ n, P7576489389113973243.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P10656194474772050322

`A006918(n+2)+A005993(n+1)`
-/

namespace A210464.P10656194474772050322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 2) + A005993 (n + 1)

end

end A210464.P10656194474772050322

namespace A210464

/-- `A006918(n+2)+A005993(n+1)` -/
def P10656194474772050322.Spec : Prop :=
  ∀ n, P10656194474772050322.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P13243786217434034773

`A034828(n+3)+A008805(n+1)`
-/

namespace A210464.P13243786217434034773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 3) + A008805 (n + 1)

end

end A210464.P13243786217434034773

namespace A210464

/-- `A034828(n+3)+A008805(n+1)` -/
def P13243786217434034773.Spec : Prop :=
  ∀ n, P13243786217434034773.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P6110854646193461950

`A007988(2*n+3)+A007988(n+3)`
-/

namespace A210464.P6110854646193461950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007988 (2 * n + 3) + A007988 (n + 3)

end

end A210464.P6110854646193461950

namespace A210464

/-- `A007988(2*n+3)+A007988(n+3)` -/
def P6110854646193461950.Spec : Prop :=
  ∀ n, P6110854646193461950.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P8960355777444558226

`A144678(2*n+3)+A006918(n)`
-/

namespace A210464.P8960355777444558226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 (2 * n + 3) + A006918 n

end

end A210464.P8960355777444558226

namespace A210464

/-- `A144678(2*n+3)+A006918(n)` -/
def P8960355777444558226.Spec : Prop :=
  ∀ n, P8960355777444558226.a n = A210464 (n + 1)

end A210464

/-! ## A210464.P2060449413396861270

`A213042(3*(n+1)+2)`
-/

namespace A210464.P2060449413396861270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213042 (3 * (n + 1) + 2)

end

end A210464.P2060449413396861270

namespace A210464

/-- `A213042(3*(n+1)+2)` -/
def P2060449413396861270.Spec : Prop :=
  ∀ n, P2060449413396861270.a n = A210464 (n + 1)

end A210464

/-!
# A210467: Let p_(3,2)(m) be the m-th prime == 2(mod 3). Then a(n) is the smallest p_(3,2)(m) such that the interval(p_(3,2)(m)*n, p_(3,2)(m+1)*n) contains exactly one prime == 2 (mod 3).

The programs for A210467, there is no canonical definition to state claims against.
-/

/-! ## A210467.P1805083061988927403

`p?[A008619(A240035(n+1)-A008619(n))]`
-/

namespace A210467.P1805083061988927403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A240035 (n + 1) - A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210467.P1805083061988927403

/-!
# A210468: Collatz (3x+1) problem with rational numbers: number of steps to reach the end of the cycle starting with 1/(2n+1).

The programs for A210468, there is no canonical definition to state claims against.
-/

/-! ## A210468.P3731850004718162008

`A210516(∑[n+1])`
-/

namespace A210468.P3731850004718162008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210516 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210468.P3731850004718162008

/-! ## A210468.P232873445245609072

`A210688(∑[n+1])-1`
-/

namespace A210468.P232873445245609072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210688 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A210468.P232873445245609072

/-! ## A210468.P12094105395748072705

`abs(1-A210688(C(n+2, 2)))`
-/

namespace A210468.P12094105395748072705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A210688 (Nat.choose (n + 2) 2)|

end

end A210468.P12094105395748072705

/-! ## A210468.P652267551528354345

`A023443(A210688(∑[n+1]))`
-/

namespace A210468.P652267551528354345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A210688 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A210468.P652267551528354345

/-! ## A210468.P9450920797801100830

`abs(1-A210688(A000217(n+1)))`
-/

namespace A210468.P9450920797801100830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A210688 (A000217 (n + 1)).toNat|

end

end A210468.P9450920797801100830

/-! ## A210468.P6698236946394809922

`A023444(A210688(∑[n+1])+1)`
-/

namespace A210468.P6698236946394809922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A210688 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A210468.P6698236946394809922

/-! ## A210468.P12019481630337165646

`A057427(n)*A210516(A000217(n+1))`
-/

namespace A210468.P12019481630337165646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A210516 (A000217 (n + 1)).toNat

end

end A210468.P12019481630337165646

/-! ## A210468.P5142377562963967600

`∑{d}[A210516(A000217(n+1)), A000010(#)]`
-/

namespace A210468.P5142377562963967600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210516 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A210468.P5142377562963967600

/-! ## A210468.P17784479922470255102

`A210516(A000217(n+1))%A000096(n+1)`
-/

namespace A210468.P17784479922470255102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210516 (A000217 (n + 1)).toNat) (A000096 (n + 1))

end

end A210468.P17784479922470255102

/-! ## A210468.P9874392728770928024

`and(1, A000040(n+1))*A210516(A000217(n+1))`
-/

namespace A210468.P9874392728770928024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A210516 (A000217 (n + 1)).toNat

end

end A210468.P9874392728770928024

/-! ## A210468.P10234780292327049251

`A210483((1-n)²+n)%A331133(n+1)`
-/

namespace A210468.P10234780292327049251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210483 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat) (A331133 (n + 1))

end

end A210468.P10234780292327049251

/-! ## A210468.P17328660871786854884

`A210483(∑[A033627(n+1)]-A000124(n))`
-/

namespace A210468.P17328660871786854884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210483 (∑ j ∈ Finset.range (n + 1), f1 j - A000124 n).toNat

end

end A210468.P17328660871786854884

/-!
# A210469: a(n) = n - primepi(2n).

The programs for A210469, the canonical program `A210469.P11714448020491112813` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210469 has offset 1).

The definition of A210469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210469.P10345669340654490564

`∑[floor(atan(∑{e}[2*n+1, #]))]`
-/

namespace A210469.P10345669340654490564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P10345669340654490564

namespace A210469

/-- `∑[floor(atan(∑{e}[2*n+1, #]))]` -/
def P10345669340654490564.Spec : Prop :=
  ∀ n, P10345669340654490564.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P11714448020491112813

`∑[(∑{e}[2*n+1, #]!+1)%2]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210469

/-- `∑[(∑{e}[2*n+1, #]!+1)%2]` -/
def P11714448020491112813.Spec : Prop :=
  ∀ n, (P11714448020491112813.a n : ℤ) = A210469 (n + 1)

theorem P11714448020491112813.correct : P11714448020491112813.Spec := by
  intro n
  simp only [A210469, Nat.add_sub_cancel]

end A210469

/-! ## A210469.P3016795874645776684

`n-∑[A101264(n)]`
-/

namespace A210469.P3016795874645776684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P3016795874645776684

namespace A210469

/-- `n-∑[A101264(n)]` -/
def P3016795874645776684.Spec : Prop :=
  ∀ n, P3016795874645776684.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P8551383550000252653

`∑[A066247(Δ[n²])]`
-/

namespace A210469.P8551383550000252653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P8551383550000252653

namespace A210469

/-- `∑[A066247(Δ[n²])]` -/
def P8551383550000252653.Spec : Prop :=
  ∀ n, P8551383550000252653.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P17075846033196799206

`∑[A323162(Δ[n²])]`
-/

namespace A210469.P17075846033196799206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P17075846033196799206

namespace A210469

/-- `∑[A323162(Δ[n²])]` -/
def P17075846033196799206.Spec : Prop :=
  ∀ n, P17075846033196799206.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P4154308736290412889

`A065896(n+1)-n`
-/

namespace A210469.P4154308736290412889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1) - (n : ℤ)

end

end A210469.P4154308736290412889

namespace A210469

/-- `A065896(n+1)-n` -/
def P4154308736290412889.Spec : Prop :=
  ∀ n, P4154308736290412889.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P17877790621411684956

`∑[char[A047845(n+2)]]`
-/

namespace A210469.P17877790621411684956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P17877790621411684956

namespace A210469

/-- `∑[char[A047845(n+2)]]` -/
def P17877790621411684956.Spec : Prop :=
  ∀ n, (P17877790621411684956.a n : ℤ) = A210469 (n + 1)

end A210469

/-! ## A210469.P15090427454147026570

`n-∑[abs(A112448(n))]`
-/

namespace A210469.P15090427454147026570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112448 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P15090427454147026570

namespace A210469

/-- `n-∑[abs(A112448(n))]` -/
def P15090427454147026570.Spec : Prop :=
  ∀ n, P15090427454147026570.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P1274876822217445201

`∑[A202238(2*n+1)]`
-/

namespace A210469.P1274876822217445201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202238 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P1274876822217445201

namespace A210469

/-- `∑[A202238(2*n+1)]` -/
def P1274876822217445201.Spec : Prop :=
  ∀ n, P1274876822217445201.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P2993615338777381576

`n-∑[A010051(Δ[n²])]`
-/

namespace A210469.P2993615338777381576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P2993615338777381576

namespace A210469

/-- `n-∑[A010051(Δ[n²])]` -/
def P2993615338777381576.Spec : Prop :=
  ∀ n, P2993615338777381576.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P1293980668541175937

`1-A099802(n+1)+n`
-/

namespace A210469.P1293980668541175937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A099802 (n + 1) + (n : ℤ)

end

end A210469.P1293980668541175937

namespace A210469

/-- `1-A099802(n+1)+n` -/
def P1293980668541175937.Spec : Prop :=
  ∀ n, P1293980668541175937.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P229794197088581556

`A065855(2*(n+1))-n`
-/

namespace A210469.P229794197088581556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * (n + 1)) - (n : ℤ)

end

end A210469.P229794197088581556

namespace A210469

/-- `A065855(2*(n+1))-n` -/
def P229794197088581556.Spec : Prop :=
  ∀ n, P229794197088581556.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P9197453658123449790

`(A383037(n+1)+n)/2`
-/

namespace A210469.P9197453658123449790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383037 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A210469.P9197453658123449790

namespace A210469

/-- `(A383037(n+1)+n)/2` -/
def P9197453658123449790.Spec : Prop :=
  ∀ n, P9197453658123449790.a n = (A210469 (n + 1) : ℚ)

end A210469

/-! ## A210469.P16076321726667822328

`∑[log2(A380528(2*n+1))]`
-/

namespace A210469.P16076321726667822328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A380528 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P16076321726667822328

namespace A210469

/-- `∑[log2(A380528(2*n+1))]` -/
def P16076321726667822328.Spec : Prop :=
  ∀ n, P16076321726667822328.a n = (A210469 (n + 1) : ℝ)

end A210469

/-! ## A210469.P15266712774764484682

`∑[1-char[A102781(n+1)]]`
-/

namespace A210469.P15266712774764484682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P15266712774764484682

namespace A210469

/-- `∑[1-char[A102781(n+1)]]` -/
def P15266712774764484682.Spec : Prop :=
  ∀ n, P15266712774764484682.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P7666427691039642612

`n-∑[char[A005097(n+1)]]`
-/

namespace A210469.P7666427691039642612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A210469.P7666427691039642612

namespace A210469

/-- `n-∑[char[A005097(n+1)]]` -/
def P7666427691039642612.Spec : Prop :=
  ∀ n, P7666427691039642612.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P2595642547381335486

`∑[floor(atan(A001222(comp[2*n])))]`
-/

namespace A210469.P2595642547381335486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A001222 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P2595642547381335486

namespace A210469

/-- `∑[floor(atan(A001222(comp[2*n])))]` -/
def P2595642547381335486.Spec : Prop :=
  ∀ n, P2595642547381335486.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P14645383942117599785

`∑[A005171(2*n+1)]-1`
-/

namespace A210469.P14645383942117599785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A210469.P14645383942117599785

namespace A210469

/-- `∑[A005171(2*n+1)]-1` -/
def P14645383942117599785.Spec : Prop :=
  ∀ n, P14645383942117599785.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P5188979352257746080

`n+1-A000720(2*(n+1))`
-/

namespace A210469.P5188979352257746080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000720 (2 * (n + 1))

end

end A210469.P5188979352257746080

namespace A210469

/-- `n+1-A000720(2*(n+1))` -/
def P5188979352257746080.Spec : Prop :=
  ∀ n, P5188979352257746080.a n = A210469 (n + 1)

end A210469

/-! ## A210469.P14670645250755074854

`∑[char[lt[1, A001222(2*n+1)]]]`
-/

namespace A210469.P14670645250755074854
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P14670645250755074854

namespace A210469

/-- `∑[char[lt[1, A001222(2*n+1)]]]` -/
def P14670645250755074854.Spec : Prop :=
  ∀ n, (P14670645250755074854.a n : ℤ) = A210469 (n + 1)

end A210469

/-!
# A210471: Collatz (3x+1) problem with rational numbers: number of steps to reach the end of the cycle starting with 1/(2n+1).

The programs for A210471, there is no canonical definition to state claims against.
-/

/-! ## A210471.P8620812778036801267

`A210468(n)+1`
-/

namespace A210471.P8620812778036801267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210468 n + 1

end

end A210471.P8620812778036801267

/-! ## A210471.P6618512149992578556

`A210688(∑[n+1])`
-/

namespace A210471.P6618512149992578556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210688 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210471.P6618512149992578556

/-! ## A210471.P4457396306766178702

`A210516(∑[n+1])+1`
-/

namespace A210471.P4457396306766178702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210516 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A210471.P4457396306766178702

/-! ## A210471.P2573935533129972314

`abs(1-A210688(C(n+2, 2)))+1`
-/

namespace A210471.P2573935533129972314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A210688 (Nat.choose (n + 2) 2)| + 1

end

end A210471.P2573935533129972314

/-! ## A210471.P3158296564959029786

`A008619(2*A210468(n))`
-/

namespace A210471.P3158296564959029786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A210468 n).toNat

end

end A210471.P3158296564959029786

/-! ## A210471.P1142348747201132436

`A028242(2*A210468(n))`
-/

namespace A210471.P1142348747201132436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A210468 n).toNat

end

end A210471.P1142348747201132436

/-! ## A210471.P6041475754424327405

`A029579(2*A210468(n))`
-/

namespace A210471.P6041475754424327405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A210468 n).toNat

end

end A210471.P6041475754424327405

/-! ## A210471.P13235668430893949467

`A052938(2*A210468(n))`
-/

namespace A210471.P13235668430893949467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A210468 n).toNat

end

end A210471.P13235668430893949467

/-! ## A210471.P2581301283841590689

`A080513(2*A210468(n))`
-/

namespace A210471.P2581301283841590689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A210468 n).toNat

end

end A210471.P2581301283841590689

/-! ## A210471.P1399305063218987459

`A008611(3*A210468(n))`
-/

namespace A210471.P1399305063218987459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A210468 n).toNat

end

end A210471.P1399305063218987459

/-!
# A210472: Number A(n,k) of paths starting at {n}^k to a border position where one component equals 0 using steps that decrement one component by 1; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A210472, there is no canonical definition to state claims against.
-/

/-! ## A210472.P2512266871074130673

`A102705(A343097(n)%A100531(n))`
-/

namespace A210472.P2512266871074130673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (Int.tmod (A343097 n) (A100531 n)).toNat

end

end A210472.P2512266871074130673

/-! ## A210472.P14325883860176185919

`A265351(A183135(n)%A103086(n+1))`
-/

namespace A210472.P14325883860176185919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (Int.tmod (A183135 n) (A103086 (n + 1))).toNat

end

end A210472.P14325883860176185919

/-! ## A210472.P4555599638625579446

`A265351(A287316(n)%A103086(n+1))`
-/

namespace A210472.P4555599638625579446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (Int.tmod (A287316 n) (A103086 (n + 1))).toNat

end

end A210472.P4555599638625579446

/-! ## A210472.P10649305827799933121

`A265351(A294042(n)%A103086(n+1))`
-/

namespace A210472.P10649305827799933121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (Int.tmod (A294042 n) (A103086 (n + 1))).toNat

end

end A210472.P10649305827799933121

/-! ## A210472.P915592229338018009

`A191228(A336575(n+1))`
-/

namespace A210472.P915592229338018009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A336575 (n + 1)).toNat

end

end A210472.P915592229338018009

/-!
# A210474: The number of different lattice paths from (0,0) to (2n,0) using steps of S={(i,i) or (i,-i): i=1,2,...,n} with j flaws(j=1,2,...,n-1), where the j flaws is the sum of lengths of down steps below the x-axis. (For down steps that are partly above and partly below the x-axis we just count the part below the x-axis.) This number is independent of the number of flaws.

The programs for A210474, the canonical program `A210474.P15121292608583873979` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210474 has offset 0).

The definition of A210474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210474.P15121292608583873979

`Δ[A127846(round(n*n/(n+1)))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A210474

/-- `Δ[A127846(round(n*n/(n+1)))]` -/
def P15121292608583873979.Spec : Prop :=
  ∀ n, P15121292608583873979.a n = A210474 n

theorem P15121292608583873979.correct : P15121292608583873979.Spec := by
  intro n
  simp only [A210474]

end A210474

/-! ## A210474.P2911871937813043280

`A000007(n)+Δ[A227578(A027379(n))]`
-/

namespace A210474.P2911871937813043280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A210474.P2911871937813043280

namespace A210474

/-- `A000007(n)+Δ[A227578(A027379(n))]` -/
def P2911871937813043280.Spec : Prop :=
  ∀ n, P2911871937813043280.a n = A210474 n

end A210474

/-! ## A210474.P12665965728327378737

`A151815(n)+Δ[A227578(A027379(n))]`
-/

namespace A210474.P12665965728327378737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151815 n + (f1 (n + 1) - f1 n)

end

end A210474.P12665965728327378737

namespace A210474

/-- `A151815(n)+Δ[A227578(A027379(n))]` -/
def P12665965728327378737.Spec : Prop :=
  ∀ n, P12665965728327378737.a n = A210474 n

end A210474

/-! ## A210474.P12464283135482668631

`Δ[A227578(A027379(n))+A178334(n)]`
-/

namespace A210474.P12464283135482668631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A027379 n).toNat + A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210474.P12464283135482668631

namespace A210474

/-- `Δ[A227578(A027379(n))+A178334(n)]` -/
def P12464283135482668631.Spec : Prop :=
  ∀ n, P12464283135482668631.a n = A210474 n

end A210474

/-! ## A210474.P10660505488269737836

`Δ[A227578(A027379(n))%A000165(n)]`
-/

namespace A210474.P10660505488269737836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227578 (A027379 n).toNat) (A000165 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210474.P10660505488269737836

namespace A210474

/-- `Δ[A227578(A027379(n))%A000165(n)]` -/
def P10660505488269737836.Spec : Prop :=
  ∀ n, P10660505488269737836.a n = A210474 n

end A210474

/-!
# A210475: Let p_(4,1)(m) be the m-th prime == 1 (mod 4). Then a(n) is the smallest p_(4,1)(m) such that the interval(p_(4,1)(m)*n, p_(4,1)(m+1)*n) contains exactly one prime == 1 (mod 4).

The programs for A210475, there is no canonical definition to state claims against.
-/

/-! ## A210475.P15638854677217869289

`p?[xor(12, A191788(3*n+1))]`
-/

namespace A210475.P15638854677217869289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 12 (A191788 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210475.P15638854677217869289

/-!
# A210477: Product of adjacent primes with a gap of 6.

The programs for A210477, the canonical program `A210477.P14670432192590346148` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210477 has offset 1).

The definition of A210477 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031924, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A210477.P14670432192590346148

`A031924(n+1)*(A031924(n+1)+6)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A210477

/-- `A031924(n+1)*(A031924(n+1)+6)` -/
def P14670432192590346148.Spec : Prop :=
  ∀ n, P14670432192590346148.a n = A210477 (n + 1)

theorem P14670432192590346148.correct : P14670432192590346148.Spec := by
  intro n
  simp only [A210477, Nat.add_sub_cancel]

end A210477

/-! ## A210477.P9580085090018270338

`A031924(n+1)*A031925(n+1)`
-/

namespace A210477.P9580085090018270338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1) * A031925 (n + 1)

end

end A210477.P9580085090018270338

namespace A210477

/-- `A031924(n+1)*A031925(n+1)` -/
def P9580085090018270338.Spec : Prop :=
  ∀ n, P9580085090018270338.a n = A210477 (n + 1)

end A210477

/-! ## A210477.P14560611900180310923

`A006094(A320701(n+1))`
-/

namespace A210477.P14560611900180310923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A320701 (n + 1)).toNat

end

end A210477.P14560611900180310923

namespace A210477

/-- `A006094(A320701(n+1))` -/
def P14560611900180310923.Spec : Prop :=
  ∀ n, P14560611900180310923.a n = A210477 (n + 1)

end A210477

/-! ## A210477.P10037520537073353875

`A006094(eq[7, A076368(n+1)])`
-/

namespace A210477.P10037520537073353875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210477.P10037520537073353875

namespace A210477

/-- `A006094(eq[7, A076368(n+1)])` -/
def P10037520537073353875.Spec : Prop :=
  ∀ n, P10037520537073353875.a n = A210477 (n + 1)

end A210477

/-! ## A210477.P135171038512052099

`∩[A006094(n+1), A111192(n+1)]`
-/

namespace A210477.P135171038512052099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P135171038512052099

namespace A210477

/-- `∩[A006094(n+1), A111192(n+1)]` -/
def P135171038512052099.Spec : Prop :=
  ∀ n, (P135171038512052099.a n : ℤ) = A210477 (n + 1)

end A210477

/-! ## A210477.P5391023359179547176

`A006094(eq[6, A000040(n+2)%A000040(n+1)]+1)`
-/

namespace A210477.P5391023359179547176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A210477.P5391023359179547176

namespace A210477

/-- `A006094(eq[6, A000040(n+2)%A000040(n+1)]+1)` -/
def P5391023359179547176.Spec : Prop :=
  ∀ n, P5391023359179547176.a n = A210477 (n + 1)

end A210477

/-! ## A210477.P6300526040611765102

`A020639(A031925(n+1)-6)*A031925(n+1)`
-/

namespace A210477.P6300526040611765102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A031925 (n + 1) - 6).toNat * A031925 (n + 1)

end

end A210477.P6300526040611765102

namespace A210477

/-- `A020639(A031925(n+1)-6)*A031925(n+1)` -/
def P6300526040611765102.Spec : Prop :=
  ∀ n, P6300526040611765102.a n = A210477 (n + 1)

end A210477

/-! ## A210477.P6337500846165165091

`∩[A097889(n+1), A111192(n+1)]`
-/

namespace A210477.P6337500846165165091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P6337500846165165091

namespace A210477

/-- `∩[A097889(n+1), A111192(n+1)]` -/
def P6337500846165165091.Spec : Prop :=
  ∀ n, (P6337500846165165091.a n : ℤ) = A210477 (n + 1)

end A210477

/-! ## A210477.P15386230810930811135

`∩[A111192(n+1), A256617(n+1)]`
-/

namespace A210477.P15386230810930811135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P15386230810930811135

namespace A210477

/-- `∩[A111192(n+1), A256617(n+1)]` -/
def P15386230810930811135.Spec : Prop :=
  ∀ n, (P15386230810930811135.a n : ℤ) = A210477 (n + 1)

end A210477

/-! ## A210477.P13555049399969963672

`∩[A111192(n+1), A033476(n)]`
-/

namespace A210477.P13555049399969963672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P13555049399969963672

namespace A210477

/-- `∩[A111192(n+1), A033476(n)]` -/
def P13555049399969963672.Spec : Prop :=
  ∀ n, (P13555049399969963672.a n : ℤ) = A210477 (n + 1)

end A210477

/-! ## A210477.P3286187412336112382

`∩[A057602(n+1), A111192(n+1)]`
-/

namespace A210477.P3286187412336112382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P3286187412336112382

namespace A210477

/-- `∩[A057602(n+1), A111192(n+1)]` -/
def P3286187412336112382.Spec : Prop :=
  ∀ n, (P3286187412336112382.a n : ℤ) = A210477 (n + 1)

end A210477

/-! ## A210477.P14370985362360840478

`∩[A006094(n+1), A276705(n+1)]`
-/

namespace A210477.P14370985362360840478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P14370985362360840478

namespace A210477

/-- `∩[A006094(n+1), A276705(n+1)]` -/
def P14370985362360840478.Spec : Prop :=
  ∀ n, (P14370985362360840478.a n : ℤ) = A210477 (n + 1)

end A210477

/-! ## A210477.P8291812810245266276

`∩[A097889(n+1), A276705(n+1)]`
-/

namespace A210477.P8291812810245266276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P8291812810245266276

namespace A210477

/-- `∩[A097889(n+1), A276705(n+1)]` -/
def P8291812810245266276.Spec : Prop :=
  ∀ n, (P8291812810245266276.a n : ℤ) = A210477 (n + 1)

end A210477

/-! ## A210477.P13863233276729459233

`∩[A256617(n+1), A276705(n+1)]`
-/

namespace A210477.P13863233276729459233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P13863233276729459233

namespace A210477

/-- `∩[A256617(n+1), A276705(n+1)]` -/
def P13863233276729459233.Spec : Prop :=
  ∀ n, (P13863233276729459233.a n : ℤ) = A210477 (n + 1)

end A210477

/-! ## A210477.P5693941946232880322

`∩[A333747(2*n+1), A276705(n+2)]`
-/

namespace A210477.P5693941946232880322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276705 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P5693941946232880322

namespace A210477

/-- `∩[A333747(2*n+1), A276705(n+2)]` -/
def P5693941946232880322.Spec : Prop :=
  ∀ n, (P5693941946232880322.a n : ℤ) = A210477 (n + 1)

end A210477

/-! ## A210477.P6714881570467627506

`A013636(A031924(n+1))`
-/

namespace A210477.P6714881570467627506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 (A031924 (n + 1)).toNat

end

end A210477.P6714881570467627506

namespace A210477

/-- `A013636(A031924(n+1))` -/
def P6714881570467627506.Spec : Prop :=
  ∀ n, P6714881570467627506.a n = A210477 (n + 1)

end A210477

/-! ## A210477.P3848671236664884800

`A013637(A031925(n+1))`
-/

namespace A210477.P3848671236664884800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013637 (A031925 (n + 1)).toNat

end

end A210477.P3848671236664884800

namespace A210477

/-- `A013637(A031925(n+1))` -/
def P3848671236664884800.Spec : Prop :=
  ∀ n, P3848671236664884800.a n = A210477 (n + 1)

end A210477

/-! ## A210477.P472201158526821851

`∩[A028560(n), A033476(n)]`
-/

namespace A210477.P472201158526821851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P472201158526821851

namespace A210477

/-- `∩[A028560(n), A033476(n)]` -/
def P472201158526821851.Spec : Prop :=
  ∀ n, (P472201158526821851.a n : ℤ) = A210477 (n + 1)

end A210477

/-! ## A210477.P7909030825217599800

`∩[A033476(n), A164007(n)]`
-/

namespace A210477.P7909030825217599800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P7909030825217599800

namespace A210477

/-- `∩[A033476(n), A164007(n)]` -/
def P7909030825217599800.Spec : Prop :=
  ∀ n, (P7909030825217599800.a n : ℤ) = A210477 (n + 1)

end A210477

/-! ## A210477.P9760931916383314386

`∩[A006094(n+1), A028560(n)]`
-/

namespace A210477.P9760931916383314386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210477.P9760931916383314386

namespace A210477

/-- `∩[A006094(n+1), A028560(n)]` -/
def P9760931916383314386.Spec : Prop :=
  ∀ n, (P9760931916383314386.a n : ℤ) = A210477 (n + 1)

end A210477

/-!
# A210478: Meandric numbers for a river crossing up to 17 parallel roads at n points.

The programs for A210478, there is no canonical definition to state claims against.
-/

/-! ## A210478.P10337028356665559159

`A206432(n)-A185284(2*n+1)`
-/

namespace A210478.P10337028356665559159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206432 n - A185284 (2 * n + 1)

end

end A210478.P10337028356665559159

/-! ## A210478.P17323746010221449748

`A210567(n)-A185284(2*n+1)`
-/

namespace A210478.P17323746010221449748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210567 n - A185284 (2 * n + 1)

end

end A210478.P17323746010221449748

/-! ## A210478.P4279974481608690230

`A210592(n)-A185284(A005408(n))`
-/

namespace A210478.P4279974481608690230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A185284 (A005408 n).toNat

end

end A210478.P4279974481608690230

/-! ## A210478.P746341569715082783

`A210592(n)-A335453(A108917(n))`
-/

namespace A210478.P746341569715082783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A335453 (A108917 n).toNat

end

end A210478.P746341569715082783

/-! ## A210478.P14307505324831432260

`A210592(n)-A184945(A179937(n+1))`
-/

namespace A210478.P14307505324831432260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A184945 (A179937 (n + 1)).toNat

end

end A210478.P14307505324831432260

/-!
# A210479: Primes p with p-1 and p+1 both practical: "Sandwich of the first kind".

The programs for A210479, there is no canonical definition to state claims against.
-/

/-! ## A210479.P14047808273519659925

`p?[A287681(n+1)+1]`
-/

namespace A210479.P14047808273519659925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287681 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210479.P14047808273519659925

/-! ## A210479.P4269566378250264525

`∩[A225223(n+1), A260698(n+1)+1]`
-/

namespace A210479.P4269566378250264525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210479.P4269566378250264525

/-! ## A210479.P9064846951543609929

`record[A006530(A287681(n+1)+1)]`
-/

namespace A210479.P9064846951543609929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A287681 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210479.P9064846951543609929

/-! ## A210479.P1443870427511220158

`record[A008475(A287681(n+1)+1)]`
-/

namespace A210479.P1443870427511220158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A287681 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210479.P1443870427511220158

/-! ## A210479.P16177542643415015543

`record[A020639(A287681(n+1)+1)]`
-/

namespace A210479.P16177542643415015543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A287681 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210479.P16177542643415015543

/-! ## A210479.P2421993138158923951

`∩[A225223(n+1), A151800(A260698(n+1))]`
-/

namespace A210479.P2421993138158923951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A260698 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210479.P2421993138158923951

/-! ## A210479.P5482957187459331456

`record[A287681(n+1)/A001221(A287681(n+1)+1)!]+1`
-/

namespace A210479.P5482957187459331456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287681 (n + 1) : ℚ) / (Nat.factorial (A001221 (A287681 (n + 1) + 1).toNat).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A210479.P5482957187459331456

/-! ## A210479.P15552207093973633235

`p?[A141310(A287681(n+1))]`
-/

namespace A210479.P15552207093973633235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A287681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210479.P15552207093973633235

/-! ## A210479.P7370624581079464750

`record[A014963(A287681(n+1)+1)]`
-/

namespace A210479.P7370624581079464750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A287681 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210479.P7370624581079464750

/-!
# A210481: Given n-th prime p, a(n) = number of primes of the form p * q - 2 where q is any prime < p.

The programs for A210481, there is no canonical definition to state claims against.
-/

/-! ## A210481.P415207798312279766

`A103960(n+1)-A010051(A049001(n+1))`
-/

namespace A210481.P415207798312279766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103960 (n + 1) - A010051 (A049001 (n + 1)).toNat

end

end A210481.P415207798312279766

/-! ## A210481.P11346963446269088207

`A103960(n+1)-A010051(A084920(n+1)-1)`
-/

namespace A210481.P11346963446269088207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103960 (n + 1) - A010051 (A084920 (n + 1) - 1).toNat

end

end A210481.P11346963446269088207

/-! ## A210481.P14816463450634392197

`A103960(n+1)-A010051(A166010(n+1)+2)`
-/

namespace A210481.P14816463450634392197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103960 (n + 1) - A010051 (A166010 (n + 1) + 2).toNat

end

end A210481.P14816463450634392197

/-! ## A210481.P10388932620140220421

`A103960(n+1)-A010051(Δ[A022837(n)]²-2)`
-/

namespace A210481.P10388932620140220421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103960 (n + 1) - A010051 ((f1 (n + 1) - f1 n) ^ 2 - 2).toNat

end

end A210481.P10388932620140220421

/-! ## A210481.P16542707569953226351

`A103960(n+1)-A010051(A000040(n+1)²-2)`
-/

namespace A210481.P16542707569953226351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103960 (n + 1) - A010051 (A000040 (n + 1) ^ 2 - 2).toNat

end

end A210481.P16542707569953226351

/-! ## A210481.P18161745575455886074

`A103960(n+1)-A010051(A079705(n+1)/3-2)`
-/

namespace A210481.P18161745575455886074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103960 (n + 1) - A010051 (SequenceMachineLib.roundAway ((A079705 (n + 1) : ℚ) / 3 - 2)).toNat

end

end A210481.P18161745575455886074

/-! ## A210481.P13077084369112098366

`A103960(n+1)-A010051(A000040(2*n+1-n)*A000040(n+1)-2)`
-/

namespace A210481.P13077084369112098366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103960 (n + 1) - A010051 (A000040 (2 * n + 1 - n) * A000040 (n + 1) - 2).toNat

end

end A210481.P13077084369112098366

/-!
# A210482: Prime numbers of the form (p#)^2 + 1, where p# is a primorial.

The programs for A210482, there is no canonical definition to state claims against.
-/

/-! ## A210482.P14076576077470223751

`A189409(A092061(n+1))`
-/

namespace A210482.P14076576077470223751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189409 (A092061 (n + 1)).toNat

end

end A210482.P14076576077470223751

/-!
# A210484: Ordered areas of primitive integer Soddyian triangles.

The programs for A210484, there is no canonical definition to state claims against.
-/

/-! ## A210484.P10533551917851385677

`A367737(A214916(n+1))`
-/

namespace A210484.P10533551917851385677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367737 (A214916 (n + 1)).toNat

end

end A210484.P10533551917851385677

/-!
# A210485: Number T(n,k) of parts in all partitions of n in which no part occurs more than k times; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A210485, there is no canonical definition to state claims against.
-/

/-! ## A210485.P2143937722998325382

`A102351(A121757(n)+1)`
-/

namespace A210485.P2143937722998325382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102351 (A121757 n + 1).toNat

end

end A210485.P2143937722998325382

/-! ## A210485.P8258329054823966037

`A102351(or(1, A121757(n)))`
-/

namespace A210485.P8258329054823966037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102351 (Int.lor 1 (A121757 n)).toNat

end

end A210485.P8258329054823966037

/-! ## A210485.P6314424863533639869

`A000120(A004086(n)*A267480(n))`
-/

namespace A210485.P6314424863533639869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004086 n * A267480 n).toNat

end

end A210485.P6314424863533639869

/-! ## A210485.P16578210013915466110

`A302242(A193592(n)*A283432(n))`
-/

namespace A210485.P16578210013915466110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A193592 n * A283432 n).toNat

end

end A210485.P16578210013915466110

/-! ## A210485.P6749126894764222012

`A098893(A196845(n))`
-/

namespace A210485.P6749126894764222012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098893 (A196845 n).toNat

end

end A210485.P6749126894764222012

/-!
# A210486: Number of paths starting at {3}^n to a border position where one component equals 0 using steps that decrement one component by 1.

The programs for A210486, there is no canonical definition to state claims against.
-/

/-! ## A210486.P12334887566751888215

`(n-1)*A003011(n)+1`
-/

namespace A210486.P12334887566751888215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A003011 n + 1

end

end A210486.P12334887566751888215

/-! ## A210486.P12841348121302845033

`A210472(A167614(n+2))`
-/

namespace A210486.P12841348121302845033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (A167614 (n + 2)).toNat

end

end A210486.P12841348121302845033

/-! ## A210486.P8461347642697357151

`A210472(A141214(n)+6)`
-/

namespace A210486.P8461347642697357151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (A141214 n + 6).toNat

end

end A210486.P8461347642697357151

/-! ## A210486.P7923679526282588756

`A210472(A052905(n)+8)`
-/

namespace A210486.P7923679526282588756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (A052905 n + 8).toNat

end

end A210486.P7923679526282588756

/-! ## A210486.P12664409222326501046

`A210472(A055999(n)+9)`
-/

namespace A210486.P12664409222326501046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (A055999 n + 9).toNat

end

end A210486.P12664409222326501046

/-!
# A210487: a(n) is the smallest possible greatest prime factor of prime(n)^2 - prime(k)^2 for 0 < k < n.

The programs for A210487, there is no canonical definition to state claims against.
-/

/-! ## A210487.P5642974452782107502

`A343785(A022381(n))-char[1]+4`
-/

namespace A210487.P5642974452782107502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A022381 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 4

end

end A210487.P5642974452782107502

/-! ## A210487.P12029911815007854267

`A343785(A022381(n))+4-A254667(n)+n`
-/

namespace A210487.P12029911815007854267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A022381 n).toNat + (4 - A254667 n + (n : ℤ))

end

end A210487.P12029911815007854267

/-! ## A210487.P11026766464109217673

`4-(A055672(n²)-(A343785(A022381(n))-char[1]))`
-/

namespace A210487.P11026766464109217673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (A055672 (n ^ 2) - (A343785 (A022381 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)))

end

end A210487.P11026766464109217673

/-! ## A210487.P6361973551843827712

`5-(A020985(n)²-(A343785(A022381(n))-char[1]))`
-/

namespace A210487.P6361973551843827712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A020985 n ^ 2 - (A343785 (A022381 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)))

end

end A210487.P6361973551843827712

/-!
# A210489: Array read by ascending antidiagonals where row n contains the second partial sums of row n of Pascal's triangle.

The programs for A210489, there is no canonical definition to state claims against.
-/

/-! ## A210489.P9790460190261496519

`A104732(A038722(n+1))`
-/

namespace A210489.P9790460190261496519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A038722 (n + 1)).toNat

end

end A210489.P9790460190261496519

/-! ## A210489.P10592055559831081072

`A104732(A061579(n)+1)`
-/

namespace A210489.P10592055559831081072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A061579 n + 1).toNat

end

end A210489.P10592055559831081072

/-! ## A210489.P7087163600305078535

`A104732(A093995(n+1)-n)`
-/

namespace A210489.P7087163600305078535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A210489.P7087163600305078535

/-! ## A210489.P4268957995623209783

`A104732(A002024(n+1)²-n)`
-/

namespace A210489.P4268957995623209783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A210489.P4268957995623209783

/-! ## A210489.P435857498490257101

`A104732(A002024(n+1)*A002024(n+1)-n)`
-/

namespace A210489.P435857498490257101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A002024 (n + 1) * A002024 (n + 1) - (n : ℤ)).toNat

end

end A210489.P435857498490257101

/-! ## A210489.P18136395903453341054

`A188553(∑[A035214(n)])-A188553(n+1)`
-/

namespace A210489.P18136395903453341054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188553 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A188553 (n + 1)

end

end A210489.P18136395903453341054

/-! ## A210489.P6148436416945264943

`A188553(A014132(n+1))-A188553(n+1)`
-/

namespace A210489.P6148436416945264943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188553 (A014132 (n + 1)).toNat - A188553 (n + 1)

end

end A210489.P6148436416945264943

/-! ## A210489.P476821854082639570

`A104734(A099375(n)+n)-A188553(n+1)`
-/

namespace A210489.P476821854082639570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104734 (A099375 n + (n : ℤ)).toNat - A188553 (n + 1)

end

end A210489.P476821854082639570

/-!
# A210490: Union of positive squares (A000290 \ {0}) and squarefree numbers (A005117).

The programs for A210490, the canonical program `A210490.P759080343209305434` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210490 has offset 1).

The definition of A210490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210490.P759080343209305434

`∪[(n+1)², A005117(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A210490

/-- `∪[(n+1)², A005117(n+1)]` -/
def P759080343209305434.Spec : Prop :=
  ∀ n, (P759080343209305434.a n : ℤ) = A210490 (n + 1)

theorem P759080343209305434.correct : P759080343209305434.Spec := by
  intro n
  simp only [A210490, Nat.add_sub_cancel]

end A210490

/-! ## A210490.P13645547436657852880

`record[A336642(n+1)+A007913(n+1)]`
-/

namespace A210490.P13645547436657852880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 1) + A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210490.P13645547436657852880

namespace A210490

/-- `record[A336642(n+1)+A007913(n+1)]` -/
def P13645547436657852880.Spec : Prop :=
  ∀ n, P13645547436657852880.a n = A210490 (n + 1)

end A210490

/-! ## A210490.P8792598543838705713

`∪[A005117(n+1), ∑[A000265(2*n+1)]]`
-/

namespace A210490.P8792598543838705713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210490.P8792598543838705713

namespace A210490

/-- `∪[A005117(n+1), ∑[A000265(2*n+1)]]` -/
def P8792598543838705713.Spec : Prop :=
  ∀ n, (P8792598543838705713.a n : ℤ) = A210490 (n + 1)

end A210490

/-! ## A210490.P10101000814392821974

`∪[A005117(n+1), ∑[A093178(2*n+1)]]`
-/

namespace A210490.P10101000814392821974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210490.P10101000814392821974

namespace A210490

/-- `∪[A005117(n+1), ∑[A093178(2*n+1)]]` -/
def P10101000814392821974.Spec : Prop :=
  ∀ n, (P10101000814392821974.a n : ℤ) = A210490 (n + 1)

end A210490

/-! ## A210490.P10010351100249226106

`record[A336642(n+1)+A071975(n+1)]`
-/

namespace A210490.P10010351100249226106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 1) + A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210490.P10010351100249226106

namespace A210490

/-- `record[A336642(n+1)+A071975(n+1)]` -/
def P10010351100249226106.Spec : Prop :=
  ∀ n, P10010351100249226106.a n = A210490 (n + 1)

end A210490

/-! ## A210490.P9916693596641828077

`lt[A000007(n), A010052(A105570(n))]`
-/

namespace A210490.P9916693596641828077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210490.P9916693596641828077

namespace A210490

/-- `lt[A000007(n), A010052(A105570(n))]` -/
def P9916693596641828077.Spec : Prop :=
  ∀ n, (P9916693596641828077.a n : ℤ) = A210490 (n + 1)

end A210490

/-! ## A210490.P9192983851472112869

`eq[A003285(n+1)*A087049(n), A087049(n)]`
-/

namespace A210490.P9192983851472112869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) * A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210490.P9192983851472112869

namespace A210490

/-- `eq[A003285(n+1)*A087049(n), A087049(n)]` -/
def P9192983851472112869.Spec : Prop :=
  ∀ n, (P9192983851472112869.a n : ℤ) = A210490 (n + 1)

end A210490

/-! ## A210490.P2674540024873812331

`∪[A000302(n), A340682(n+1)]`
-/

namespace A210490.P2674540024873812331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210490.P2674540024873812331

namespace A210490

/-- `∪[A000302(n), A340682(n+1)]` -/
def P2674540024873812331.Spec : Prop :=
  ∀ n, (P2674540024873812331.a n : ℤ) = A210490 (n + 1)

end A210490

/-! ## A210490.P203342902115105886

`∪[A000645(n), A340682(n+1)]`
-/

namespace A210490.P203342902115105886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210490.P203342902115105886

namespace A210490

/-- `∪[A000645(n), A340682(n+1)]` -/
def P203342902115105886.Spec : Prop :=
  ∀ n, (P203342902115105886.a n : ℤ) = A210490 (n + 1)

end A210490

/-! ## A210490.P17443735491825464660

`∪[A001115(n), A340682(n+1)]`
-/

namespace A210490.P17443735491825464660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210490.P17443735491825464660

namespace A210490

/-- `∪[A001115(n), A340682(n+1)]` -/
def P17443735491825464660.Spec : Prop :=
  ∀ n, (P17443735491825464660.a n : ℤ) = A210490 (n + 1)

end A210490

/-!
# A210494: Biharmonic numbers: numbers m such that ( Hd(m)+Cd(m) )/2 is an integer, where Hd(m) and Cd(m) are the harmonic mean and the contraharmonic (or antiharmonic) mean of the divisors of m.

The programs for A210494, there is no canonical definition to state claims against.
-/

/-! ## A210494.P10085524208888472605

`∪[A084171(n), A330225(n+1)]`
-/

namespace A210494.P10085524208888472605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084171 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210494.P10085524208888472605

/-! ## A210494.P5368976805572952584

`lt[A003415(n), A307409((n+1)²)]`
-/

namespace A210494.P5368976805572952584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210494.P5368976805572952584

/-! ## A210494.P10222667658808532741

`∩[A342144(n+1), A369093(n+1)]`
-/

namespace A210494.P10222667658808532741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210494.P10222667658808532741

/-! ## A210494.P13813527695002313311

`∩[A368100(n+1), A369093(n+1)]`
-/

namespace A210494.P13813527695002313311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210494.P13813527695002313311

/-! ## A210494.P10916900721014492507

`∩[A338316(n+1), A369093(n+1)]`
-/

namespace A210494.P10916900721014492507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210494.P10916900721014492507

/-!
# A210495: Numbers n such that d(n)*n + 1 is prime, d(n) = number of divisors of n.

The programs for A210495, the canonical program `A210495.P10774873703741117314` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210495 has offset 1).

The definition of A210495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 635 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210495.P10774873703741117314

`eq[1, A001222(n*∏{e}[n, #+1]+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A210495

/-- `eq[1, A001222(n*∏{e}[n, #+1]+1)]` -/
def P10774873703741117314.Spec : Prop :=
  ∀ n, (P10774873703741117314.a n : ℤ) = A210495 (n + 1)

theorem P10774873703741117314.correct : P10774873703741117314.Spec := by
  intro n
  simp only [A210495, Nat.add_sub_cancel]

end A210495

/-! ## A210495.P1067541512930501039

`eq[1, A001222(A038040(n+1)+1)]+1`
-/

namespace A210495.P1067541512930501039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038040 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A210495.P1067541512930501039

namespace A210495

/-- `eq[1, A001222(A038040(n+1)+1)]+1` -/
def P1067541512930501039.Spec : Prop :=
  ∀ n, (P1067541512930501039.a n : ℤ) = A210495 (n + 1)

end A210495

/-! ## A210495.P17170430088102968012

`eq[2, A000005(A038040(n+1)+1)]+1`
-/

namespace A210495.P17170430088102968012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A038040 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A210495.P17170430088102968012

namespace A210495

/-- `eq[2, A000005(A038040(n+1)+1)]+1` -/
def P17170430088102968012.Spec : Prop :=
  ∀ n, (P17170430088102968012.a n : ℤ) = A210495 (n + 1)

end A210495

/-! ## A210495.P17030745714525941397

`lt[A000005((n+1)*Δ[A006218(n)]+1), 3]+1`
-/

namespace A210495.P17030745714525941397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * (f2 (n + 1) - f2 n) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A210495.P17030745714525941397

namespace A210495

/-- `lt[A000005((n+1)*Δ[A006218(n)]+1), 3]+1` -/
def P17030745714525941397.Spec : Prop :=
  ∀ n, (P17030745714525941397.a n : ℤ) = A210495 (n + 1)

end A210495

/-! ## A210495.P11742896992546650537

`eq[1, A001222((n+1)*A000005(n+1)+1)]+1`
-/

namespace A210495.P11742896992546650537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A210495.P11742896992546650537

namespace A210495

/-- `eq[1, A001222((n+1)*A000005(n+1)+1)]+1` -/
def P11742896992546650537.Spec : Prop :=
  ∀ n, (P11742896992546650537.a n : ℤ) = A210495 (n + 1)

end A210495

/-! ## A210495.P12209239734229977451

`lt[A000005((n+1)*A000005(n+1)+1), 3]+1`
-/

namespace A210495.P12209239734229977451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A000005 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A210495.P12209239734229977451

namespace A210495

/-- `lt[A000005((n+1)*A000005(n+1)+1), 3]+1` -/
def P12209239734229977451.Spec : Prop :=
  ∀ n, (P12209239734229977451.a n : ℤ) = A210495 (n + 1)

end A210495

/-! ## A210495.P14909844546335978152

`record[(n+1)*A010051((n+1)*A000005(n+1)+1)]`
-/

namespace A210495.P14909844546335978152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 ((n + 1 : ℤ) * A000005 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210495.P14909844546335978152

namespace A210495

/-- `record[(n+1)*A010051((n+1)*A000005(n+1)+1)]` -/
def P14909844546335978152.Spec : Prop :=
  ∀ n, P14909844546335978152.a n = A210495 (n + 1)

end A210495

/-! ## A210495.P2084906453960005291

`record[A005843(n+1)/A000005(A038040(n+1)+1)]`
-/

namespace A210495.P2084906453960005291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A000005 (A038040 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210495.P2084906453960005291

namespace A210495

/-- `record[A005843(n+1)/A000005(A038040(n+1)+1)]` -/
def P2084906453960005291.Spec : Prop :=
  ∀ n, P2084906453960005291.a n = (A210495 (n + 1) : ℚ)

end A210495

/-! ## A210495.P6698129852187791144

`record[(n+1)/A300251((n+1)*A000005(n+1)+1)]`
-/

namespace A210495.P6698129852187791144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A300251 ((n + 1 : ℤ) * A000005 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210495.P6698129852187791144

namespace A210495

/-- `record[(n+1)/A300251((n+1)*A000005(n+1)+1)]` -/
def P6698129852187791144.Spec : Prop :=
  ∀ n, P6698129852187791144.a n = (A210495 (n + 1) : ℚ)

end A210495

/-! ## A210495.P9426307435432916467

`record[(n+1)/A002033(A038040(n+1))]`
-/

namespace A210495.P9426307435432916467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002033 (A038040 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210495.P9426307435432916467

namespace A210495

/-- `record[(n+1)/A002033(A038040(n+1))]` -/
def P9426307435432916467.Spec : Prop :=
  ∀ n, P9426307435432916467.a n = (A210495 (n + 1) : ℚ)

end A210495

/-!
# A210496: Number of set partitions of [n] avoiding the patterns {1123, 1211}.

The programs for A210496, there is no canonical definition to state claims against.
-/

/-! ## A210496.P15113910396219067500

`A081753(xor(8, A268938(n+1)))`
-/

namespace A210496.P15113910396219067500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (Int.xor 8 (A268938 (n + 1))).toNat

end

end A210496.P15113910396219067500

/-! ## A210496.P2167475124642868917

`A008618(A020705(n)*A045623(n))`
-/

namespace A210496.P2167475124642868917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A020705 n * A045623 n).toNat

end

end A210496.P2167475124642868917

/-! ## A210496.P12195854182985579965

`A081753(A268938(n+1)-A001951(n))`
-/

namespace A210496.P12195854182985579965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A268938 (n + 1) - A001951 n).toNat

end

end A210496.P12195854182985579965

/-! ## A210496.P258858586358235859

`A081753(A268938(n+1)-A275806(n))`
-/

namespace A210496.P258858586358235859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A268938 (n + 1) - A275806 n).toNat

end

end A210496.P258858586358235859

/-! ## A210496.P12530934714725226372

`A081753(A268938(n+1)-(A031111(n+1)+1))`
-/

namespace A210496.P12530934714725226372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A268938 (n + 1) - (A031111 (n + 1) + 1)).toNat

end

end A210496.P12530934714725226372

/-!
# A210497: a(n) = 2*prime(n+1) - prime(n).

The programs for A210497, the canonical program `A210497.P15561998313545519789` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210497 has offset 1).

The definition of A210497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210497.P10700398955198946255

`ceil(acot(n))*A211280(n+1)`
-/

namespace A210497.P10700398955198946255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A211280 (n + 1)

end

end A210497.P10700398955198946255

namespace A210497

/-- `ceil(acot(n))*A211280(n+1)` -/
def P10700398955198946255.Spec : Prop :=
  ∀ n, P10700398955198946255.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P3660179328003037666

`A211280(n+1)+A000038(n)`
-/

namespace A210497.P3660179328003037666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211280 (n + 1) + A000038 n

end

end A210497.P3660179328003037666

namespace A210497

/-- `A211280(n+1)+A000038(n)` -/
def P3660179328003037666.Spec : Prop :=
  ∀ n, P3660179328003037666.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P7138384932103461735

`A054977(n)*A211280(n+1)`
-/

namespace A210497.P7138384932103461735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A211280 (n + 1)

end

end A210497.P7138384932103461735

namespace A210497

/-- `A054977(n)*A211280(n+1)` -/
def P7138384932103461735.Spec : Prop :=
  ∀ n, P7138384932103461735.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P1944302066146279917

`A065091(n+1)+A001223(n+1)`
-/

namespace A210497.P1944302066146279917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A001223 (n + 1)

end

end A210497.P1944302066146279917

namespace A210497

/-- `A065091(n+1)+A001223(n+1)` -/
def P1944302066146279917.Spec : Prop :=
  ∀ n, P1944302066146279917.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P3557893296640915257

`A100803(n+1)+A008864(n+1)`
-/

namespace A210497.P3557893296640915257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100803 (n + 1) + A008864 (n + 1)

end

end A210497.P3557893296640915257

namespace A210497

/-- `A100803(n+1)+A008864(n+1)` -/
def P3557893296640915257.Spec : Prop :=
  ∀ n, P3557893296640915257.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P15561998313545519789

`A001043(n+1)-A062234(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A210497

/-- `A001043(n+1)-A062234(n+1)` -/
def P15561998313545519789.Spec : Prop :=
  ∀ n, P15561998313545519789.a n = A210497 (n + 1)

theorem P15561998313545519789.correct : P15561998313545519789.Spec := by
  intro n
  simp only [A210497, Nat.add_sub_cancel]

end A210497

/-! ## A210497.P6465649144558045926

`A055670(n+2)+A046933(n+1)`
-/

namespace A210497.P6465649144558045926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 2) + A046933 (n + 1)

end

end A210497.P6465649144558045926

namespace A210497

/-- `A055670(n+2)+A046933(n+1)` -/
def P6465649144558045926.Spec : Prop :=
  ∀ n, P6465649144558045926.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P17768567408603071406

`A100484(n+1)-A107471(n+1)`
-/

namespace A210497.P17768567408603071406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A107471 (n + 1)

end

end A210497.P17768567408603071406

namespace A210497

/-- `A100484(n+1)-A107471(n+1)` -/
def P17768567408603071406.Spec : Prop :=
  ∀ n, P17768567408603071406.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P8444019484508372688

`A215848(n+1)-A036263(n+1)`
-/

namespace A210497.P8444019484508372688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A036263 (n + 1)

end

end A210497.P8444019484508372688

namespace A210497

/-- `A215848(n+1)-A036263(n+1)` -/
def P8444019484508372688.Spec : Prop :=
  ∀ n, P8444019484508372688.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P16676767069864431201

`A376762(n+1)+A063124(n+2)`
-/

namespace A210497.P16676767069864431201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376762 (n + 1) + A063124 (n + 2)

end

end A210497.P16676767069864431201

namespace A210497

/-- `A376762(n+1)+A063124(n+2)` -/
def P16676767069864431201.Spec : Prop :=
  ∀ n, P16676767069864431201.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P18116351198497050463

`A364411(n+1)-A100484(n+1)`
-/

namespace A210497.P18116351198497050463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1) - A100484 (n + 1)

end

end A210497.P18116351198497050463

namespace A210497

/-- `A364411(n+1)-A100484(n+1)` -/
def P18116351198497050463.Spec : Prop :=
  ∀ n, P18116351198497050463.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P3473253709063620197

`A367335(n+1)-A349660(n+1)`
-/

namespace A210497.P3473253709063620197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367335 (n + 1) - A349660 (n + 1)

end

end A210497.P3473253709063620197

namespace A210497

/-- `A367335(n+1)-A349660(n+1)` -/
def P3473253709063620197.Spec : Prop :=
  ∀ n, P3473253709063620197.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P10043166489998070651

`A001748(n+2)-A001043(n+1)`
-/

namespace A210497.P10043166489998070651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 2) - A001043 (n + 1)

end

end A210497.P10043166489998070651

namespace A210497

/-- `A001748(n+2)-A001043(n+1)` -/
def P10043166489998070651.Spec : Prop :=
  ∀ n, P10043166489998070651.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P10295931449320950368

`A181428(n+1)-A001223(n+2)`
-/

namespace A210497.P10295931449320950368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) - A001223 (n + 2)

end

end A210497.P10295931449320950368

namespace A210497

/-- `A181428(n+1)-A001223(n+2)` -/
def P10295931449320950368.Spec : Prop :=
  ∀ n, P10295931449320950368.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P11233493801581684206

`A033287(n)-n*A001223(n+1)`
-/

namespace A210497.P11233493801581684206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n - (n : ℤ) * A001223 (n + 1)

end

end A210497.P11233493801581684206

namespace A210497

/-- `A033287(n)-n*A001223(n+1)` -/
def P11233493801581684206.Spec : Prop :=
  ∀ n, P11233493801581684206.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P3499891376632021215

`A065091(n+1)+log2(A218075(n+1))`
-/

namespace A210497.P3499891376632021215
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) : ℝ) + Real.logb 2 (A218075 (n + 1) : ℝ)

end

end A210497.P3499891376632021215

namespace A210497

/-- `A065091(n+1)+log2(A218075(n+1))` -/
def P3499891376632021215.Spec : Prop :=
  ∀ n, P3499891376632021215.a n = (A210497 (n + 1) : ℝ)

end A210497

/-! ## A210497.P11088948933130927647

`A000040(n+1)+A100803(n+1)+1`
-/

namespace A210497.P11088948933130927647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A100803 (n + 1) + 1)

end

end A210497.P11088948933130927647

namespace A210497

/-- `A000040(n+1)+A100803(n+1)+1` -/
def P11088948933130927647.Spec : Prop :=
  ∀ n, P11088948933130927647.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P4958401673031623761

`2*A065091(n+1)-A000040(n+1)`
-/

namespace A210497.P4958401673031623761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065091 (n + 1) - A000040 (n + 1)

end

end A210497.P4958401673031623761

namespace A210497

/-- `2*A065091(n+1)-A000040(n+1)` -/
def P4958401673031623761.Spec : Prop :=
  ∀ n, P4958401673031623761.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P18140170936082044854

`A001223(n+1)+A006254(n+1)+A005097(n+1)`
-/

namespace A210497.P18140170936082044854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A006254 (n + 1) + A005097 (n + 1))

end

end A210497.P18140170936082044854

namespace A210497

/-- `A001223(n+1)+A006254(n+1)+A005097(n+1)` -/
def P18140170936082044854.Spec : Prop :=
  ∀ n, P18140170936082044854.a n = A210497 (n + 1)

end A210497

/-! ## A210497.P10104827635486284375

`Δ[A037168(n+1)+A007504(n)]`
-/

namespace A210497.P10104827635486284375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) + A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210497.P10104827635486284375

namespace A210497

/-- `Δ[A037168(n+1)+A007504(n)]` -/
def P10104827635486284375.Spec : Prop :=
  ∀ n, P10104827635486284375.a n = A210497 (n + 1)

end A210497

/-!
# A210498: Prime numbers that become emirps when their least-significant-digit is deleted.

The programs for A210498, there is no canonical definition to state claims against.
-/

/-! ## A210498.P3351371969233158373

`A129621(A129645(n+1)+26)`
-/

namespace A210498.P3351371969233158373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129621 (A129645 (n + 1) + 26).toNat

end

end A210498.P3351371969233158373

/-!
# A210499: Primes p of the form 1 mod 4 such that p+1 has a prime factor of the form 1 mod 4.

The programs for A210499, the canonical program `A210499.P12495086160779493150` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210499 has offset 1).

The definition of A210499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 736 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210499.P12495086160779493150

`p?[gcd(4*n+1, A284059(2*n+1))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A210499

/-- `p?[gcd(4*n+1, A284059(2*n+1))]` -/
def P12495086160779493150.Spec : Prop :=
  ∀ n, (P12495086160779493150.a n : ℤ) = A210499 (n + 1)

theorem P12495086160779493150.correct : P12495086160779493150.Spec := by
  intro n
  simp only [A210499, Nat.add_sub_cancel]

end A210499

/-! ## A210499.P14150268079347553695

`p?[A042948(A009003(n+1))]`
-/

namespace A210499.P14150268079347553695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A009003 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210499.P14150268079347553695

namespace A210499

/-- `p?[A042948(A009003(n+1))]` -/
def P14150268079347553695.Spec : Prop :=
  ∀ n, P14150268079347553695.a n = A210499 (n + 1)

end A210499

/-! ## A210499.P6856385078446266992

`p?[A042948(A341329(n+1))]`
-/

namespace A210499.P6856385078446266992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A341329 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210499.P6856385078446266992

namespace A210499

/-- `p?[A042948(A341329(n+1))]` -/
def P6856385078446266992.Spec : Prop :=
  ∀ n, P6856385078446266992.a n = A210499 (n + 1)

end A210499

/-! ## A210499.P8266478119691196773

`p?[A042948(sqrt(A018820(n+1)))]`
-/

namespace A210499.P8266478119691196773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (SequenceMachineLib.roundAway (Real.sqrt (A018820 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210499.P8266478119691196773

namespace A210499

/-- `p?[A042948(sqrt(A018820(n+1)))]` -/
def P8266478119691196773.Spec : Prop :=
  ∀ n, P8266478119691196773.a n = A210499 (n + 1)

end A210499

/-! ## A210499.P5656446275088117924

`p?[A110185(sqrt(A018820(n+1)))]`
-/

namespace A210499.P5656446275088117924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110185 (SequenceMachineLib.roundAway (Real.sqrt (A018820 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210499.P5656446275088117924

namespace A210499

/-- `p?[A110185(sqrt(A018820(n+1)))]` -/
def P5656446275088117924.Spec : Prop :=
  ∀ n, P5656446275088117924.a n = A210499 (n + 1)

end A210499

/-! ## A210499.P8434788280971684283

`p?[gcd(A005408(2*n), A275966(2*n+1))]`
-/

namespace A210499.P8434788280971684283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005408 (2 * n)) (A275966 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A210499.P8434788280971684283

namespace A210499

/-- `p?[gcd(A005408(2*n), A275966(2*n+1))]` -/
def P8434788280971684283.Spec : Prop :=
  ∀ n, (P8434788280971684283.a n : ℤ) = A210499 (n + 1)

end A210499

/-! ## A210499.P11158072583732908577

`p?[A080412(A072592(n+1))]`
-/

namespace A210499.P11158072583732908577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A072592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210499.P11158072583732908577

namespace A210499

/-- `p?[A080412(A072592(n+1))]` -/
def P11158072583732908577.Spec : Prop :=
  ∀ n, P11158072583732908577.a n = A210499 (n + 1)

end A210499

/-! ## A210499.P7714000424847177753

`p?[gcd(A093178(4*n+1), A275966(4*n+2))]`
-/

namespace A210499.P7714000424847177753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093178 (4 * n + 1)) (A275966 (4 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A210499.P7714000424847177753

namespace A210499

/-- `p?[gcd(A093178(4*n+1), A275966(4*n+2))]` -/
def P7714000424847177753.Spec : Prop :=
  ∀ n, (P7714000424847177753.a n : ℤ) = A210499 (n + 1)

end A210499

/-! ## A210499.P10623541262828421424

`p?[A103832(A341329(n+1)-1)]`
-/

namespace A210499.P10623541262828421424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103832 (A341329 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210499.P10623541262828421424

namespace A210499

/-- `p?[A103832(A341329(n+1)-1)]` -/
def P10623541262828421424.Spec : Prop :=
  ∀ n, P10623541262828421424.a n = A210499 (n + 1)

end A210499

